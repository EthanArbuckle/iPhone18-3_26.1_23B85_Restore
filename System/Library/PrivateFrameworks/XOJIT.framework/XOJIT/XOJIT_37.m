uint64_t llvm::AtomicRMWInst::AtomicRMWInst(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5, __int16 a6, char a7, uint64_t *a8)
{
  v15 = llvm::Instruction::Instruction(a1, *a4, 37, a1 - 64, 2, a8);
  llvm::AtomicRMWInst::Init(v15, a2, a3, a4, a5, a6, a7);
  return a1;
}

void llvm::GetElementPtrInst::init(llvm::Value *a1, uint64_t a2, uint64_t *a3, uint64_t a4, const llvm::Twine *a5)
{
  v7 = (a1 - 32 * (*(a1 + 5) & 0x7FFFFFF));
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
    v11 = *(a2 + 8);
    v9 = (a2 + 8);
    v10 = v11;
    *(v7 + 1) = v11;
    if (v11)
    {
      *(v10 + 16) = v7 + 2;
    }

    *(v7 + 2) = v9;
    *v9 = v7;
  }

  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(&v12, a3, &a3[a4], a1 - 32 * (*(a1 + 5) & 0x7FFFFFF) + 32);
  llvm::Value::setName(a1, a5);
}

uint64_t llvm::GetElementPtrInst::getTypeAtIndex(llvm::GetElementPtrInst *this, llvm::Type *a2, llvm::Value *a3)
{
  v5 = *(this + 8);
  if (this && v5 == 16)
  {
    if (llvm::StructType::indexValid(this, a2))
    {
      UniqueInteger = llvm::Constant::getUniqueInteger(a2);
      if (*(UniqueInteger + 8) >= 0x41u)
      {
        v7 = *UniqueInteger;
      }

      else
      {
        v7 = UniqueInteger;
      }

      v8 = (*(this + 2) + 8 * *v7);
      return *v8;
    }

    return 0;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v9 = *(*a2 + 8);
  }

  if (v9 != 13)
  {
    return 0;
  }

  if (this && v5 == 17 || (result = 0, this) && (v5 & 0xFE) == 0x12)
  {
    v8 = this + 24;
    return *v8;
  }

  return result;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::ExtractElementInst(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v9 = this - 64;
  if (*(llvm::Instruction::Instruction(this, *(*a2 + 24), 61, this - 64, 2, a5) - 64))
  {
    v10 = *(this - 7);
    **(this - 6) = v10;
    if (v10)
    {
      *(v10 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v13 = *(a2 + 1);
  v12 = (a2 + 8);
  v11 = v13;
  *(this - 7) = v13;
  if (v13)
  {
    *(v11 + 16) = this - 56;
  }

  *(this - 6) = v12;
  *v12 = v9;
  v14 = (this - 32);
  if (*(this - 4))
  {
    v15 = *(this - 3);
    **(this - 2) = v15;
    if (v15)
    {
      *(v15 + 16) = *(this - 2);
    }
  }

  *v14 = a3;
  if (a3)
  {
    v18 = *(a3 + 1);
    v17 = (a3 + 8);
    v16 = v18;
    *(this - 3) = v18;
    if (v18)
    {
      *(v16 + 16) = this - 24;
    }

    *(this - 2) = v17;
    *v17 = v14;
  }

  llvm::Value::setName(this, a4);
  return this;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::ExtractElementInst(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::BasicBlock *a5)
{
  *this = *(*a2 + 24);
  *(this + 1) = 0;
  *(this + 16) = 89;
  *(this + 17) = 0;
  *(this + 9) = 0;
  *(this + 5) = *(this + 5) & 0xC0000000 | 2;
  v10 = a5 + 40;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  v11 = (this + 24);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a5 + 40, this);
  v12 = *(this - 8);
  v13 = *(a5 + 5);
  *(this + 4) = v10;
  *v11 = v13;
  *(v13 + 8) = v11;
  *(a5 + 5) = v11;
  if (v12)
  {
    v14 = *(this - 7);
    **(this - 6) = v14;
    if (v14)
    {
      *(v14 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v17 = *(a2 + 1);
  v16 = (a2 + 8);
  v15 = v17;
  *(this - 7) = v17;
  if (v17)
  {
    *(v15 + 16) = this - 56;
  }

  *(this - 6) = v16;
  *v16 = this - 64;
  v18 = (this - 32);
  if (*(this - 4))
  {
    v19 = *(this - 3);
    **(this - 2) = v19;
    if (v19)
    {
      *(v19 + 16) = *(this - 2);
    }
  }

  *v18 = a3;
  if (a3)
  {
    v22 = *(a3 + 1);
    v21 = (a3 + 8);
    v20 = v22;
    *(this - 3) = v22;
    if (v22)
    {
      *(v20 + 16) = this - 24;
    }

    *(this - 2) = v21;
    *v21 = v18;
  }

  llvm::Value::setName(this, a4);
  return this;
}

llvm::InsertElementInst *llvm::InsertElementInst::InsertElementInst(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = this - 96;
  if (*(llvm::Instruction::Instruction(this, *a2, 62, this - 96, 3, a6) - 96))
  {
    v12 = *(this - 11);
    **(this - 10) = v12;
    if (v12)
    {
      *(v12 + 16) = *(this - 10);
    }
  }

  *(this - 12) = a2;
  v15 = *(a2 + 1);
  v14 = (a2 + 8);
  v13 = v15;
  *(this - 11) = v15;
  if (v15)
  {
    *(v13 + 16) = this - 88;
  }

  *(this - 10) = v14;
  *v14 = v11;
  v16 = (this - 64);
  if (*(this - 8))
  {
    v17 = *(this - 7);
    **(this - 6) = v17;
    if (v17)
    {
      *(v17 + 16) = *(this - 6);
    }
  }

  *v16 = a3;
  if (a3)
  {
    v20 = *(a3 + 1);
    v19 = (a3 + 8);
    v18 = v20;
    *(this - 7) = v20;
    if (v20)
    {
      *(v18 + 16) = this - 56;
    }

    *(this - 6) = v19;
    *v19 = v16;
  }

  v21 = (this - 32);
  if (*(this - 4))
  {
    v22 = *(this - 3);
    **(this - 2) = v22;
    if (v22)
    {
      *(v22 + 16) = *(this - 2);
    }
  }

  *v21 = a4;
  if (a4)
  {
    v25 = *(a4 + 1);
    v24 = (a4 + 8);
    v23 = v25;
    *(this - 3) = v25;
    if (v25)
    {
      *(v23 + 16) = this - 24;
    }

    *(this - 2) = v24;
    *v24 = v21;
  }

  llvm::Value::setName(this, a5);
  return this;
}

llvm::InsertElementInst *llvm::InsertElementInst::InsertElementInst(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
  *this = *a2;
  *(this + 1) = 0;
  v12 = *(this + 5) & 0xC0000000 | 3;
  *(this + 4) = 90;
  *(this + 5) = v12;
  v13 = a6 + 40;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  v14 = (this + 24);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a6 + 40, this);
  v15 = *(this - 12);
  v16 = *(a6 + 5);
  *(this + 4) = v13;
  *v14 = v16;
  *(v16 + 8) = v14;
  *(a6 + 5) = v14;
  if (v15)
  {
    v17 = *(this - 11);
    **(this - 10) = v17;
    if (v17)
    {
      *(v17 + 16) = *(this - 10);
    }
  }

  *(this - 12) = a2;
  v20 = *(a2 + 1);
  v19 = (a2 + 8);
  v18 = v20;
  *(this - 11) = v20;
  if (v20)
  {
    *(v18 + 16) = this - 88;
  }

  *(this - 10) = v19;
  *v19 = this - 96;
  v21 = (this - 64);
  if (*(this - 8))
  {
    v22 = *(this - 7);
    **(this - 6) = v22;
    if (v22)
    {
      *(v22 + 16) = *(this - 6);
    }
  }

  *v21 = a3;
  if (a3)
  {
    v25 = *(a3 + 1);
    v24 = (a3 + 8);
    v23 = v25;
    *(this - 7) = v25;
    if (v25)
    {
      *(v23 + 16) = this - 56;
    }

    *(this - 6) = v24;
    *v24 = v21;
  }

  v26 = (this - 32);
  if (*(this - 4))
  {
    v27 = *(this - 3);
    **(this - 2) = v27;
    if (v27)
    {
      *(v27 + 16) = *(this - 2);
    }
  }

  *v26 = a4;
  if (a4)
  {
    v30 = *(a4 + 1);
    v29 = (a4 + 8);
    v28 = v30;
    *(this - 3) = v30;
    if (v30)
    {
      *(v28 + 16) = this - 24;
    }

    *(this - 2) = v29;
    *v29 = v26;
  }

  llvm::Value::setName(this, a5);
  return this;
}

llvm::ShuffleVectorInst *llvm::ShuffleVectorInst::ShuffleVectorInst(llvm::ShuffleVectorInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v30[8] = *MEMORY[0x277D85DE8];
  llvm::VectorType::get(*(*a2 + 24), (*(*a4 + 32) | ((*(*a4 + 8) == 19) << 32)));
  llvm::Instruction::Instruction(this, v12, 63, this - 64, 2, a6);
  *(this + 8) = this + 80;
  *(this + 9) = 0x400000000;
  if (*(this - 8))
  {
    v13 = *(this - 7);
    **(this - 6) = v13;
    if (v13)
    {
      *(v13 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v16 = *(a2 + 1);
  v15 = (a2 + 8);
  v14 = v16;
  *(this - 7) = v16;
  if (v16)
  {
    *(v14 + 16) = this - 56;
  }

  *(this - 6) = v15;
  *v15 = this - 64;
  v17 = (this - 32);
  if (*(this - 4))
  {
    v18 = *(this - 3);
    **(this - 2) = v18;
    if (v18)
    {
      *(v18 + 16) = *(this - 2);
    }
  }

  *v17 = a3;
  if (a3)
  {
    v21 = *(a3 + 1);
    v20 = (a3 + 8);
    v19 = v21;
    *(this - 3) = v21;
    if (v21)
    {
      *(v19 + 16) = this - 24;
    }

    *(this - 2) = v20;
    *v20 = v17;
  }

  __src = v30;
  v29 = 0x1000000000;
  llvm::ShuffleVectorInst::getShuffleMask(a4, &__src);
  v22 = __src;
  v23 = v29;
  v24 = __src + 4 * v29;
  *(this + 18) = 0;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(this + 16, v22, v24);
  *(this + 12) = llvm::ShuffleVectorInst::convertShuffleMaskForBitcode(v22, v23, *this, v25);
  llvm::Value::setName(this, a5);
  if (__src != v30)
  {
    free(__src);
  }

  v26 = *MEMORY[0x277D85DE8];
  return this;
}

llvm::ShuffleVectorInst *llvm::ShuffleVectorInst::ShuffleVectorInst(llvm::ShuffleVectorInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
  v33[8] = *MEMORY[0x277D85DE8];
  llvm::VectorType::get(*(*a2 + 24), (*(*a4 + 32) | ((*(*a4 + 8) == 19) << 32)));
  *this = v12;
  *(this + 1) = 0;
  v13 = *(this + 5) & 0xC0000000 | 2;
  *(this + 4) = 91;
  *(this + 5) = v13;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a6 + 40, this);
  v14 = *(this - 8);
  v15 = *(a6 + 5);
  *(this + 4) = a6 + 40;
  *(this + 3) = v15;
  *(v15 + 8) = this + 24;
  *(a6 + 5) = this + 24;
  *(this + 8) = this + 80;
  *(this + 9) = 0x400000000;
  if (v14)
  {
    v16 = *(this - 7);
    **(this - 6) = v16;
    if (v16)
    {
      *(v16 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v19 = *(a2 + 1);
  v18 = (a2 + 8);
  v17 = v19;
  *(this - 7) = v19;
  if (v19)
  {
    *(v17 + 16) = this - 56;
  }

  *(this - 6) = v18;
  *v18 = this - 64;
  v20 = (this - 32);
  if (*(this - 4))
  {
    v21 = *(this - 3);
    **(this - 2) = v21;
    if (v21)
    {
      *(v21 + 16) = *(this - 2);
    }
  }

  *v20 = a3;
  if (a3)
  {
    v24 = *(a3 + 1);
    v23 = (a3 + 8);
    v22 = v24;
    *(this - 3) = v24;
    if (v24)
    {
      *(v22 + 16) = this - 24;
    }

    *(this - 2) = v23;
    *v23 = v20;
  }

  __src = v33;
  v32 = 0x1000000000;
  llvm::ShuffleVectorInst::getShuffleMask(a4, &__src);
  v25 = __src;
  v26 = v32;
  v27 = __src + 4 * v32;
  *(this + 18) = 0;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(this + 16, v25, v27);
  *(this + 12) = llvm::ShuffleVectorInst::convertShuffleMaskForBitcode(v25, v26, *this, v28);
  llvm::Value::setName(this, a5);
  if (__src != v33)
  {
    free(__src);
  }

  v29 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t llvm::ShuffleVectorInst::ShuffleVectorInst(uint64_t a1, void *a2, uint64_t a3, int *a4, llvm::Type *a5, const llvm::Twine *a6, uint64_t *a7)
{
  llvm::VectorType::get(*(*a2 + 24), (a5 | ((*(*a2 + 8) == 19) << 32)));
  v15 = llvm::Instruction::Instruction(a1, v14, 63, a1 - 64, 2, a7);
  *(v15 + 64) = a1 + 80;
  v16 = v15 + 64;
  *(v16 + 8) = 0x400000000;
  if (*(a1 - 64))
  {
    v17 = *(a1 - 56);
    **(a1 - 48) = v17;
    if (v17)
    {
      *(v17 + 16) = *(a1 - 48);
    }
  }

  *(a1 - 64) = a2;
  v20 = a2[1];
  v19 = a2 + 1;
  v18 = v20;
  *(a1 - 56) = v20;
  if (v20)
  {
    *(v18 + 16) = a1 - 56;
  }

  *(a1 - 48) = v19;
  *v19 = a1 - 64;
  v21 = (a1 - 32);
  if (*(a1 - 32))
  {
    v22 = *(a1 - 24);
    **(a1 - 16) = v22;
    if (v22)
    {
      *(v22 + 16) = *(a1 - 16);
    }
  }

  *v21 = a3;
  if (a3)
  {
    v25 = *(a3 + 8);
    v24 = (a3 + 8);
    v23 = v25;
    *(a1 - 24) = v25;
    if (v25)
    {
      *(v23 + 16) = a1 - 24;
    }

    *(a1 - 16) = v24;
    *v24 = v21;
  }

  *(a1 + 72) = 0;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(v16, a4, &a4[a5]);
  *(a1 + 96) = llvm::ShuffleVectorInst::convertShuffleMaskForBitcode(a4, a5, *a1, v26);
  llvm::Value::setName(a1, a6);
  return a1;
}

unsigned int *llvm::ShuffleVectorInst::getShuffleMask(unsigned int *this, unsigned int *a2)
{
  v3 = *(*this + 32);
  if (*(this + 16) == 13)
  {
    v4 = a2[2];
    if (v4 != v3)
    {
      if (v4 <= v3)
      {

        return llvm::SmallVectorImpl<int>::append(a2, v3 - v4, 0);
      }

      else
      {
        a2[2] = v3;
      }
    }
  }

  else
  {
    v5 = this;
    v6 = *(*this + 8);
    if (a2[3] < v3)
    {
      this = llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v3, 4);
    }

    if (v6 == 19)
    {
      if (v5[16] - 11 >= 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = -1;
      }

      for (i = v7; v3; LODWORD(v3) = v3 - 1)
      {
        this = llvm::SmallVectorImpl<int>::emplace_back<int &>(a2, &i);
      }
    }

    else if ((v5[16] & 0xFE) == 0xE)
    {
      if (v3)
      {
        v8 = 0;
        do
        {
          ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(v5, v8);
          this = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, ElementAsInteger);
          ++v8;
        }

        while (v3 != v8);
      }
    }

    else if (v3)
    {
      v10 = 0;
      do
      {
        AggregateElement = llvm::Constant::getAggregateElement(v5, v10);
        if (*(AggregateElement + 16) - 11 >= 2)
        {
          v13 = (AggregateElement + 24);
          if (*(AggregateElement + 32) >= 0x41u)
          {
            v13 = *v13;
          }

          v12 = *v13;
        }

        else
        {
          v12 = -1;
        }

        this = llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a2, v12);
        v10 = (v10 + 1);
      }

      while (v3 != v10);
    }
  }

  return this;
}

BOOL llvm::ShuffleVectorInst::isValidOperands(uint64_t *a1, void *a2, int *__s2, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  if ((v5 & 0xFE) != 0x12 || v4 != *a2)
  {
    return 0;
  }

  if (a4)
  {
    v7 = 2 * *(v4 + 32);
    v8 = 4 * a4;
    for (i = __s2; *i == -1 || *i < v7; ++i)
    {
      v8 -= 4;
      if (!v8)
      {
        return (v5 & 0x13) != 0x13 || (*__s2 + 1) <= 1 && (!a4 || !memcmp(__s2 + 1, __s2, 4 * a4 - 4));
      }
    }

    return 0;
  }

  return (v5 & 0x13) != 0x13 || (*__s2 + 1) <= 1 && (!a4 || !memcmp(__s2 + 1, __s2, 4 * a4 - 4));
}

uint64_t llvm::SmallVectorImpl<int>::emplace_back<int &>(unsigned int *a1, int *a2)
{
  v3 = a1[2];
  if (v3 >= a1[3])
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = a1[2];
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = a1[2] + 1;
    a1[2] = v5;
  }

  return v4 + 4 * v5 - 4;
}

uint64_t llvm::ShuffleVectorInst::convertShuffleMaskForBitcode(int *a1, llvm::Type *a2, uint64_t **a3, BOOL a4)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v5 = **a3;
  if (*(a3 + 8) == 19)
  {
    llvm::VectorType::get((v5 + 1992), (a2 | 0x100000000));
    if (*a1)
    {
      v8 = *MEMORY[0x277D85DE8];

      return llvm::UndefValue::get(v6, v7);
    }

    else
    {
      v15 = *MEMORY[0x277D85DE8];

      return llvm::Constant::getNullValue(v6, v7);
    }
  }

  else
  {
    v18 = v20;
    v19 = 0x1000000000;
    if (a2)
    {
      v10 = 4 * a2;
      do
      {
        v11 = *a1;
        v12 = (v5 + 1992);
        if (v11 == -1)
        {
          v13 = llvm::UndefValue::get(v12, v11);
        }

        else
        {
          v13 = llvm::ConstantInt::get(v12, v11, 0, a4);
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v18, v13);
        ++a1;
        v10 -= 4;
      }

      while (v10);
      v14 = v18;
      a2 = v19;
    }

    else
    {
      v14 = v20;
    }

    v16 = llvm::ConstantVector::get(v14, a2);
    if (v18 != v20)
    {
      free(v18);
    }

    v17 = *MEMORY[0x277D85DE8];
    return v16;
  }
}

void llvm::InsertValueInst::init(unsigned int *a1, uint64_t a2, uint64_t a3, _BYTE *__src, uint64_t a5, const llvm::Twine *a6)
{
  v8 = a1 - 16;
  if (*(a1 - 8))
  {
    v9 = *(a1 - 7);
    **(a1 - 6) = v9;
    if (v9)
    {
      *(v9 + 16) = *(a1 - 6);
    }
  }

  *v8 = a2;
  if (a2)
  {
    v12 = *(a2 + 8);
    v10 = (a2 + 8);
    v11 = v12;
    *(a1 - 7) = v12;
    if (v12)
    {
      *(v11 + 16) = a1 - 14;
    }

    *(a1 - 6) = v10;
    *v10 = v8;
  }

  v13 = a1 - 8;
  if (*(a1 - 4))
  {
    v14 = *(a1 - 3);
    **(a1 - 2) = v14;
    if (v14)
    {
      *(v14 + 16) = *(a1 - 2);
    }
  }

  *v13 = a3;
  if (a3)
  {
    v17 = *(a3 + 8);
    v15 = (a3 + 8);
    v16 = v17;
    *(a1 - 3) = v17;
    if (v17)
    {
      *(v16 + 16) = a1 - 6;
    }

    *(a1 - 2) = v15;
    *v15 = v13;
  }

  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(a1 + 16, __src, &__src[4 * a5]);

  llvm::Value::setName(a1, a6);
}

uint64_t llvm::ExtractValueInst::getIndexedType(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 4 * a3;
    while (1)
    {
      v4 = *a2;
      v5 = *(a1 + 8);
      if (a1 && v5 == 17)
      {
        if (*(a1 + 32) <= v4)
        {
          return 0;
        }

        v6 = (a1 + 24);
      }

      else
      {
        v7 = 0;
        if (!a1 || v5 != 16)
        {
          return v7;
        }

        if (v4 >= *(a1 + 12))
        {
          return 0;
        }

        v6 = (*(a1 + 16) + 8 * v4);
      }

      a1 = *v6;
      ++a2;
      v7 = *v6;
      v3 -= 4;
      if (!v3)
      {
        return v7;
      }
    }
  }

  return a1;
}

llvm::UnaryInstruction *llvm::UnaryOperator::UnaryOperator(llvm::UnaryInstruction *a1, char a2, llvm::Value *a3, llvm::Type *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v9 = (llvm::UnaryInstruction::UnaryInstruction(a1, a4, a2, a3, a6) - 32);
  if (*v9)
  {
    v10 = *(a1 - 3);
    **(a1 - 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(a1 - 2);
    }
  }

  *v9 = a3;
  if (a3)
  {
    v13 = *(a3 + 1);
    v12 = (a3 + 8);
    v11 = v13;
    *(a1 - 3) = v13;
    if (v13)
    {
      *(v11 + 16) = a1 - 24;
    }

    *(a1 - 2) = v12;
    *v12 = v9;
  }

  llvm::Value::setName(a1, a5);
  return a1;
}

llvm::UnaryInstruction *llvm::UnaryOperator::Create(char a1, llvm::Value *a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  v8 = operator new(0x60uLL);
  v8[13] = v8[13] & 0x38000000 | 1;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 8;
  v9 = *a2;
  v10 = (v8 + 8);

  return llvm::UnaryOperator::UnaryOperator(v10, a1, a2, v9, a3, a4);
}

char *llvm::UnaryOperator::Create(char a1, llvm::Value *a2, const llvm::Twine *a3, uint64_t a4)
{
  v8 = operator new(0x60uLL);
  v9 = (v8 + 8);
  v8[13] = v8[13] & 0x38000000 | 1;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 8;
  llvm::UnaryOperator::UnaryOperator((v8 + 8), a1, a2, *a2, a3, 0);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a4 + 40, (v8 + 8));
  v10 = *(a4 + 40);
  *(v8 + 7) = v10;
  *(v8 + 8) = a4 + 40;
  v8 += 14;
  *(v10 + 8) = v8;
  *(a4 + 40) = v8;
  return v9;
}

llvm::Value *llvm::BinaryOperator::BinaryOperator(llvm::Value *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, const llvm::Twine *a6, uint64_t *a7)
{
  v11 = (a1 - 64);
  if (*(llvm::Instruction::Instruction(a1, a5, a2, a1 - 64, 2, a7) - 64))
  {
    v12 = *(a1 - 7);
    **(a1 - 6) = v12;
    if (v12)
    {
      *(v12 + 16) = *(a1 - 6);
    }
  }

  *v11 = a3;
  if (a3)
  {
    v15 = *(a3 + 8);
    v14 = (a3 + 8);
    v13 = v15;
    *(a1 - 7) = v15;
    if (v15)
    {
      *(v13 + 16) = a1 - 56;
    }

    *(a1 - 6) = v14;
    *v14 = v11;
  }

  v16 = (a1 - 32);
  if (*(a1 - 4))
  {
    v17 = *(a1 - 3);
    **(a1 - 2) = v17;
    if (v17)
    {
      *(v17 + 16) = *(a1 - 2);
    }
  }

  *v16 = a4;
  if (a4)
  {
    v20 = *(a4 + 8);
    v19 = (a4 + 8);
    v18 = v20;
    *(a1 - 3) = v20;
    if (v20)
    {
      *(v18 + 16) = a1 - 24;
    }

    *(a1 - 2) = v19;
    *v19 = v16;
  }

  llvm::Value::setName(a1, a6);
  return a1;
}

llvm::Value *llvm::BinaryOperator::Create(char a1, uint64_t *a2, uint64_t a3, const llvm::Twine *a4, uint64_t *a5)
{
  v10 = operator new(0x80uLL);
  v10[21] = v10[21] & 0x38000000 | 2;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 16;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = v10 + 16;
  v11 = *a2;
  v12 = (v10 + 16);

  return llvm::BinaryOperator::BinaryOperator(v12, a1, a2, a3, v11, a4, a5);
}

char *llvm::BinaryOperator::Create(char a1, uint64_t *a2, uint64_t a3, const llvm::Twine *a4, uint64_t a5)
{
  v10 = operator new(0x80uLL);
  v10[21] = v10[21] & 0x38000000 | 2;
  v11 = (v10 + 16);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 16;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = v10 + 16;
  llvm::BinaryOperator::BinaryOperator((v10 + 16), a1, a2, a3, *a2, a4, 0);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a5 + 40, (v10 + 16));
  v12 = *(a5 + 40);
  *(v10 + 11) = v12;
  *(v10 + 12) = a5 + 40;
  v10 += 22;
  *(v12 + 8) = v10;
  *(a5 + 40) = v10;
  return v11;
}

uint64_t llvm::CastInst::isEliminableCastPair(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type *this, uint64_t a5, uint64_t a6, llvm::Type *a7, uint64_t a8)
{
  v10 = a5;
  v11 = a3;
  v12 = a2;
  v14 = a1 == 49;
  if (a2 != 49)
  {
    v14 = 0;
  }

  if (a1 == 49 && ((*(a3 + 8) & 0xFE) == 18) != ((*(this + 2) & 0xFE) == 18))
  {
    if (!v14)
    {
      return 0;
    }
  }

  else if (a2 == 49 && !(v14 | ((*(this + 2) & 0xFE) == 18) ^ ((*(a5 + 8) & 0xFE) != 18)))
  {
    return 0;
  }

  v15 = &llvm::CastInst::isEliminableCastPair(llvm::Instruction::CastOps,llvm::Instruction::CastOps,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *)::CastResults + 13 * a1 + a2 - 532;
  result = *v15;
  switch(*v15)
  {
    case 1:
    case 0xD:
    case 0xF:
      result = a1;
      break;
    case 2:
    case 0x10:
      result = a2;
      break;
    case 3:
      if ((*(a3 + 8) & 0xFE) == 0x12)
      {
        return 0;
      }

      result = a1;
      if (*(a5 + 8) != 13)
      {
        return 0;
      }

      break;
    case 4:
      v25 = *(a5 + 8);
      if ((*(a5 + 8) & 0xFD) == 4)
      {
        v26 = a1;
      }

      else
      {
        v26 = 0;
      }

      if (v25 < 4 || v25 == 5)
      {
        result = a1;
      }

      else
      {
        result = v26;
      }

      break;
    case 5:
      if (*(a3 + 8) == 13)
      {
        result = a2;
      }

      else
      {
        result = 0;
      }

      break;
    case 6:
      v22 = *(a3 + 8);
      if ((*(a3 + 8) & 0xFD) == 4)
      {
        v23 = a2;
      }

      else
      {
        v23 = 0;
      }

      if (v22 < 4 || v22 == 5)
      {
        result = a2;
      }

      else
      {
        result = v23;
      }

      break;
    case 7:
      if (byte_2815A50C0)
      {
        return 0;
      }

      v30 = *(a3 + 8);
      if ((v30 & 0xFE) == 0x12)
      {
        v30 = *(**(a3 + 16) + 8);
      }

      v31 = *(a5 + 8);
      if ((v31 & 0xFE) == 0x12)
      {
        v31 = *(**(a5 + 16) + 8);
      }

      if ((v31 ^ v30) > 0xFF)
      {
        return 0;
      }

      if ((*(this + 2) & 0xFE) == 0x12)
      {
        this = **(this + 2);
      }

      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
      if (PrimitiveSizeInBits == 64)
      {
        goto LABEL_72;
      }

      result = 0;
      if (a6 && a8 == a6)
      {
        if ((*(a6 + 8) & 0xFE) == 0x12)
        {
          a6 = **(a6 + 16);
        }

        if (PrimitiveSizeInBits >= llvm::Type::getPrimitiveSizeInBits(a6))
        {
          result = 49;
        }

        else
        {
          result = 0;
        }
      }

      break;
    case 8:
      v17 = a3;
      if ((*(a3 + 8) & 0xFE) == 0x12)
      {
        v17 = **(a3 + 16);
      }

      v18 = llvm::Type::getPrimitiveSizeInBits(v17);
      v19 = v10;
      if ((*(v10 + 8) & 0xFE) == 0x12)
      {
        v19 = **(v10 + 16);
      }

      v20 = llvm::Type::getPrimitiveSizeInBits(v19);
      if (v18 <= v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v12;
      }

      if (v18 < v20)
      {
        v21 = a1;
      }

      if (v11 == v10)
      {
        result = 49;
      }

      else
      {
        result = v21;
      }

      break;
    case 9:
      result = 39;
      break;
    case 0xA:
      __break(1u);
      break;
    case 0xB:
      if (!a7)
      {
        return 0;
      }

      if ((*(a7 + 2) & 0xFE) == 0x12)
      {
        a7 = **(a7 + 2);
      }

      v28 = llvm::Type::getPrimitiveSizeInBits(a7);
      if ((*(v11 + 8) & 0xFE) == 0x12)
      {
        v11 = **(v11 + 16);
      }

      v29 = llvm::Type::getPrimitiveSizeInBits(v11);
      if (v29 > v28)
      {
        return 0;
      }

      if ((*(v10 + 8) & 0xFE) == 0x12)
      {
        v10 = **(v10 + 16);
      }

      if (v29 != llvm::Type::getPrimitiveSizeInBits(v10))
      {
        return 0;
      }

LABEL_72:
      result = 49;
      break;
    case 0xC:
      v33 = *(a3 + 8);
      if ((v33 & 0xFE) == 0x12)
      {
        v33 = *(**(a3 + 16) + 8);
      }

      v34 = *(a5 + 8);
      if ((v34 & 0xFE) == 0x12)
      {
        v34 = *(**(a5 + 16) + 8);
      }

      if ((v34 ^ v33) < 0x100)
      {
        result = 49;
      }

      else
      {
        result = 50;
      }

      break;
    case 0xE:
      if ((*(a3 + 8) & 0xFE) == 0x12)
      {
        v11 = **(a3 + 16);
      }

      if ((*(a5 + 8) & 0xFE) == 0x12)
      {
        v10 = **(a5 + 16);
      }

      if (*(v11 + 24) == *(v10 + 24))
      {
        result = 50;
      }

      else
      {
        result = 0;
      }

      break;
    case 0x11:
      result = 43;
      break;
    default:
      return result;
  }

  return result;
}

char *llvm::CastInst::Create(char a1, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v10 = operator new(0x60uLL);
  v10[13] = v10[13] & 0x38000000 | 1;
  v11 = (v10 + 8);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 8;
  v12 = llvm::UnaryInstruction::UnaryInstruction((v10 + 8), a3, a1, a2, a5);
  llvm::Value::setName(v12, a4);
  return v11;
}

char *llvm::CastInst::Create(char a1, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::BasicBlock *a5)
{
  v10 = operator new(0x60uLL);
  v10[13] = v10[13] & 0x38000000 | 1;
  v11 = (v10 + 8);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v10 + 8;
  v12 = llvm::UnaryInstruction::UnaryInstruction((v10 + 8), a3, a1, a2, a5);
  llvm::Value::setName(v12, a4);
  return v11;
}

char *llvm::CastInst::CreatePointerCast(llvm::CastInst *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if ((*(a2 + 2) & 0xFE) == 0x12)
  {
    v5 = *(**(a2 + 2) + 8);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  if (v5 == 13)
  {
    return llvm::CastInst::Create(47, this, a2, a3, a4);
  }

  else
  {
    return llvm::CastInst::CreatePointerBitCastOrAddrSpaceCast(this, a2, a3, a4, a4);
  }
}

char *llvm::CastInst::CreatePointerBitCastOrAddrSpaceCast(llvm::CastInst *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v9 = *(*this + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    v9 = *(**(*this + 16) + 8);
  }

  v10 = *(a2 + 2);
  if ((v10 & 0xFE) == 0x12)
  {
    v10 = *(**(a2 + 2) + 8);
  }

  if ((v10 ^ v9) < 0x100)
  {
    v11 = 49;
  }

  else
  {
    v11 = 50;
  }

  return llvm::CastInst::Create(v11, this, a2, a3, a4);
}

char *llvm::CastInst::CreateIntegerCast(llvm::CastInst *this, llvm::Type ***a2, llvm::Type *a3, const llvm::Twine *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v8 = a3;
  v11 = *this;
  if ((*(v11 + 8) & 0xFE) == 0x12)
  {
    v11 = **(v11 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v11);
  v13 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v13 = *a2[2];
  }

  v14 = llvm::Type::getPrimitiveSizeInBits(v13);
  if (v8)
  {
    v15 = 40;
  }

  else
  {
    v15 = 39;
  }

  if (PrimitiveSizeInBits > v14)
  {
    v15 = 38;
  }

  if (PrimitiveSizeInBits == v14)
  {
    v16 = 49;
  }

  else
  {
    v16 = v15;
  }

  return llvm::CastInst::Create(v16, this, a2, a4, a5);
}

uint64_t llvm::CastInst::castIsValid(int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = v3;
  if (v3 == 7 || v3 == 14)
  {
    return 0;
  }

  v7 = *(a3 + 8);
  v8 = v7;
  if (v7 == 7 || v7 == 14)
  {
    return 0;
  }

  v12 = v3 & 0xFE;
  if (v12 == 16)
  {
    return 0;
  }

  v13 = v7 & 0xFE;
  if (v13 == 16)
  {
    return 0;
  }

  v16 = a2;
  if (v12 == 18)
  {
    v16 = **(a2 + 16);
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v16);
  v18 = a3;
  if (v13 == 18)
  {
    v18 = **(a3 + 16);
  }

  v19 = llvm::Type::getPrimitiveSizeInBits(v18);
  if (v12 == 18)
  {
    v20 = *(a2 + 32) | ((v3 == 19) << 32);
  }

  else
  {
    v20 = 0;
  }

  if (v13 == 18)
  {
    v21 = *(a3 + 32) | ((v7 == 19) << 32);
  }

  else
  {
    v21 = 0;
  }

  v10 = 0;
  if (a1 > 44)
  {
    if (a1 > 47)
    {
      if (a1 == 48)
      {
        if (v20 == v21)
        {
          if (v12 == 18)
          {
            LOBYTE(v3) = *(**(a2 + 16) + 8);
          }

          if (v3 == 13)
          {
            if (v13 == 18)
            {
              v8 = *(**(a3 + 16) + 8);
            }

            return v8 == 15;
          }
        }

        return 0;
      }

      if (a1 == 49)
      {
        v25 = a2;
        if (v12 == 18)
        {
          v25 = **(a2 + 16);
          v4 = *(v25 + 8);
        }

        if (v4 != 15)
        {
          v25 = 0;
        }

        v26 = a3;
        if (v13 == 18)
        {
          v26 = **(a3 + 16);
          v8 = *(v26 + 8);
        }

        if (v8 != 15)
        {
          v26 = 0;
        }

        if ((v25 == 0) == (v26 != 0))
        {
          return 0;
        }

        if (v25)
        {
          if ((*(v26 + 8) ^ *(v25 + 8)) > 0xFF)
          {
            return 0;
          }

          if (v12 == 18 && v13 == 18)
          {
            goto LABEL_137;
          }

          if (v12 == 18)
          {
            if (v20 != 1)
            {
              return 0;
            }

            return (v20 & 0x100000000) == 0;
          }

          else
          {
            if (v13 != 18)
            {
              return 1;
            }

            if (v21 != 1)
            {
              return 0;
            }

            return (v21 & 0x100000000) == 0;
          }
        }

        else
        {
          v27 = llvm::Type::getPrimitiveSizeInBits(a2);
          v29 = v28;
          if (v27 != llvm::Type::getPrimitiveSizeInBits(a3))
          {
            return 0;
          }

          return v29 == v30;
        }
      }

      if (a1 != 50)
      {
        return v10;
      }

      if (v12 == 18)
      {
        v3 = *(**(a2 + 16) + 8);
      }

      if (v3 != 15)
      {
        return 0;
      }

      if (v13 == 18)
      {
        v7 = *(**(a3 + 16) + 8);
      }

      if (v7 != 15)
      {
        return 0;
      }

      v10 = 0;
      if ((v7 ^ v3) < 0x100)
      {
        return v10;
      }

LABEL_76:
      if (v20 != v21)
      {
        return v10;
      }

      return (v21 ^ v20) >> 32 == 0;
    }

    if (a1 != 45)
    {
      if (a1 != 46)
      {
        if (v20 == v21)
        {
          if (v12 == 18)
          {
            LOBYTE(v3) = *(**(a2 + 16) + 8);
          }

          if (v3 == 15)
          {
            if (v13 == 18)
            {
              v8 = *(**(a3 + 16) + 8);
            }

            return v8 == 13;
          }
        }

        return 0;
      }

      if (v12 == 18)
      {
        v3 = *(**(a2 + 16) + 8);
      }

      if (v3 >= 4u && v3 != 5 && (v3 & 0xFD) != 4)
      {
        return 0;
      }

      if (v13 == 18)
      {
        v7 = *(**(a3 + 16) + 8);
      }

      if (v7 >= 4u && v7 != 5 && (v7 & 0xFD) != 4)
      {
        return 0;
      }

      return v20 == v21 && PrimitiveSizeInBits < v19;
    }

    if (v12 == 18)
    {
      v3 = *(**(a2 + 16) + 8);
    }

    if (v3 >= 4u && v3 != 5 && (v3 & 0xFD) != 4)
    {
      return 0;
    }

    if (v13 == 18)
    {
      v7 = *(**(a3 + 16) + 8);
    }

    if (v7 >= 4u && v7 != 5 && (v7 & 0xFD) != 4)
    {
      return 0;
    }

    return v20 == v21 && PrimitiveSizeInBits > v19;
  }

  if (a1 <= 40)
  {
    if (a1 != 38)
    {
      if (a1 != 39 && a1 != 40)
      {
        return v10;
      }

      if (v12 == 18)
      {
        LOBYTE(v3) = *(**(a2 + 16) + 8);
      }

      if (v3 != 13)
      {
        return 0;
      }

      if (v13 == 18)
      {
        LOBYTE(v7) = *(**(a3 + 16) + 8);
      }

      if (v7 != 13)
      {
        return 0;
      }

      return v20 == v21 && PrimitiveSizeInBits < v19;
    }

    if (v12 == 18)
    {
      LOBYTE(v3) = *(**(a2 + 16) + 8);
    }

    if (v3 != 13)
    {
      return 0;
    }

    if (v13 == 18)
    {
      LOBYTE(v7) = *(**(a3 + 16) + 8);
    }

    if (v7 != 13)
    {
      return 0;
    }

    return v20 == v21 && PrimitiveSizeInBits > v19;
  }

  if ((a1 - 41) >= 2)
  {
    if ((a1 - 43) >= 2)
    {
      return v10;
    }

    if (v12 == 18)
    {
      LOBYTE(v3) = *(**(a2 + 16) + 8);
    }

    if (v3 != 13)
    {
      return 0;
    }

    if (v13 == 18)
    {
      v7 = *(**(a3 + 16) + 8);
    }

    if (v7 >= 4u && v7 != 5)
    {
      v10 = 0;
      if ((v7 & 0xFD) != 4)
      {
        return v10;
      }

      goto LABEL_76;
    }

LABEL_137:
    if (v20 == v21)
    {
      return (v21 ^ v20) >> 32 == 0;
    }

    return 0;
  }

  if (v12 == 18)
  {
    v3 = *(**(a2 + 16) + 8);
  }

  if (v3 >= 4u && v3 != 5 && (v3 & 0xFD) != 4)
  {
    return 0;
  }

  if (v13 == 18)
  {
    LOBYTE(v7) = *(**(a3 + 16) + 8);
  }

  v10 = 0;
  if (v7 == 13)
  {
    goto LABEL_76;
  }

  return v10;
}

_WORD *llvm::CmpInst::CmpInst(_WORD *a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6, const llvm::Twine *a7, uint64_t *a8, uint64_t a9)
{
  v14 = a1 - 32;
  if (*(llvm::Instruction::Instruction(a1, a2, a3, (a1 - 32), 2, a8) - 64))
  {
    v15 = *(a1 - 7);
    **(a1 - 6) = v15;
    if (v15)
    {
      *(v15 + 16) = *(a1 - 6);
    }
  }

  *v14 = a5;
  if (a5)
  {
    v18 = *(a5 + 8);
    v17 = (a5 + 8);
    v16 = v18;
    *(a1 - 7) = v18;
    if (v18)
    {
      *(v16 + 16) = a1 - 28;
    }

    *(a1 - 6) = v17;
    *v17 = v14;
  }

  v19 = a1 - 16;
  if (*(a1 - 4))
  {
    v20 = *(a1 - 3);
    **(a1 - 2) = v20;
    if (v20)
    {
      *(v20 + 16) = *(a1 - 2);
    }
  }

  *v19 = a6;
  if (a6)
  {
    v23 = *(a6 + 8);
    v22 = (a6 + 8);
    v21 = v23;
    *(a1 - 3) = v23;
    if (v23)
    {
      *(v21 + 16) = a1 - 12;
    }

    *(a1 - 2) = v22;
    *v22 = v19;
  }

  a1[9] = a1[9] & 0xFFC0 | a4;
  llvm::Value::setName(a1, a7);
  if (a9)
  {
    llvm::Instruction::copyIRFlags(a1, a9, 1);
  }

  return a1;
}

uint64_t llvm::CmpInst::CmpInst(uint64_t a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6, const llvm::Twine *a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3 + 28;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = *(a1 + 20) & 0xC0000000 | 2;
  v14 = a8 + 40;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  v15 = (a1 + 24);
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a8 + 40, a1);
  v16 = (a1 - 64);
  v17 = *(a1 - 64);
  v18 = *(a8 + 40);
  *(a1 + 32) = v14;
  *v15 = v18;
  *(v18 + 8) = v15;
  *(a8 + 40) = v15;
  if (v17)
  {
    v19 = *(a1 - 56);
    **(a1 - 48) = v19;
    if (v19)
    {
      *(v19 + 16) = *(a1 - 48);
    }
  }

  *v16 = a5;
  if (a5)
  {
    v22 = *(a5 + 8);
    v21 = (a5 + 8);
    v20 = v22;
    *(a1 - 56) = v22;
    if (v22)
    {
      *(v20 + 16) = a1 - 56;
    }

    *(a1 - 48) = v21;
    *v21 = v16;
  }

  v23 = (a1 - 32);
  if (*(a1 - 32))
  {
    v24 = *(a1 - 24);
    **(a1 - 16) = v24;
    if (v24)
    {
      *(v24 + 16) = *(a1 - 16);
    }
  }

  *v23 = a6;
  if (a6)
  {
    v27 = *(a6 + 8);
    v26 = (a6 + 8);
    v25 = v27;
    *(a1 - 24) = v27;
    if (v27)
    {
      *(v25 + 16) = a1 - 24;
    }

    *(a1 - 16) = v26;
    *v26 = v23;
  }

  *(a1 + 18) = *(a1 + 18) & 0xFFC0 | a4;
  llvm::Value::setName(a1, a7);
  return a1;
}

uint64_t llvm::CmpInst::Create(int a1, __int16 a2, llvm::CmpInst **a3, uint64_t a4, const llvm::Twine *a5, uint64_t a6)
{
  v12 = operator new(0x80uLL);
  v12[21] = v12[21] & 0x38000000 | 2;
  v13 = (v12 + 16);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = v12 + 16;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 7) = v12 + 16;
  llvm::CmpInst::makeCmpResultType(*a3, v14);
  if (a1 == 53)
  {
    v16 = 53;
  }

  else
  {
    v16 = 54;
  }

  return llvm::CmpInst::CmpInst(v13, v15, v16, a2, a3, a4, a5, a6);
}

const char *llvm::CmpInst::getPredicateName(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "unknown";
  }

  v1 = qword_2750DDD58[a1];
  return off_279F17588[a1];
}

uint64_t llvm::ICmpInst::compare(unsigned int *a1, const llvm::APInt *a2, int a3)
{
  if (a3 > 36)
  {
    if (a3 <= 38)
    {
      if (a3 != 37)
      {
        v8 = llvm::APInt::compareSigned(a1, a2);
        return v8 > 0;
      }

      v7 = llvm::APInt::compare(a1, a2);
    }

    else
    {
      if (a3 == 39)
      {
        v3 = llvm::APInt::compareSigned(a1, a2);
        return v3 >= 0;
      }

      if (a3 == 40)
      {
        v4 = llvm::APInt::compareSigned(a1, a2);
        return v4 >> 31;
      }

      v7 = llvm::APInt::compareSigned(a1, a2);
    }

    return v7 < 1;
  }

  if (a3 > 33)
  {
    if (a3 != 34)
    {
      if (a3 == 35)
      {
        v3 = llvm::APInt::compare(a1, a2);
        return v3 >= 0;
      }

      v4 = llvm::APInt::compare(a1, a2);
      return v4 >> 31;
    }

    v8 = llvm::APInt::compare(a1, a2);
    return v8 > 0;
  }

  if (a3 == 32)
  {
    v5 = a1[2];
    if (v5 > 0x40)
    {
      return memcmp(*a1, *a2, ((v5 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      return *a1 == *a2;
    }
  }

  else
  {
    v10 = a1[2];
    if (v10 > 0x40)
    {
      v11 = memcmp(*a1, *a2, ((v10 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      v11 = *a1 == *a2;
    }

    v12 = v11;
    return v12 ^ 1u;
  }
}

uint64_t llvm::FCmpInst::compare(llvm::APFloat *a1, const llvm::APFloat *a2, int a3)
{
  v4 = llvm::APFloat::compare(a1, a2);
  result = 0;
  switch(a3)
  {
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
    case 3:
      return --v4 < 2;
    case 4:
      return v4 == 0;
    case 5:
      return v4 < 2;
    case 6:
      return (v4 & 0xFFFFFFFD) == 0;
    case 7:
      v6 = v4 == 3;
      goto LABEL_15;
    case 8:
      return v4 == 3;
    case 9:
      v4 &= ~2u;
      return v4 == 1;
    case 10:
      v4 &= ~1u;
      return v4 == 2;
    case 11:
      v6 = v4 == 0;
      goto LABEL_15;
    case 12:
      return v4 == 3 || v4 == 0;
    case 13:
      v6 = v4 == 2;
      goto LABEL_15;
    case 14:
      v6 = v4 == 1;
LABEL_15:
      result = !v6;
      break;
    case 15:
      result = 1;
      break;
    default:
      return result;
  }

  return result;
}

void *llvm::SwitchInst::init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 60) = a4;
  *(a1 + 20) = *(a1 + 20) & 0xF8000000 | 2;
  result = operator new(32 * a4);
  *(a1 - 8) = result;
  if (a4)
  {
    v9 = result;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = a1;
      v9 += 4;
    }

    while (v9 != &result[4 * a4]);
  }

  v10 = *(a1 + 20);
  if ((v10 & 0x40000000) != 0)
  {
    v11 = result;
  }

  else
  {
    v11 = (a1 - 32 * (v10 & 0x7FFFFFF));
  }

  if (*v11)
  {
    v12 = v11[1];
    *v11[2] = v12;
    if (v12)
    {
      *(v12 + 16) = v11[2];
    }
  }

  *v11 = a2;
  if (a2)
  {
    v15 = *(a2 + 8);
    v14 = (a2 + 8);
    v13 = v15;
    v11[1] = v15;
    if (v15)
    {
      *(v13 + 16) = v11 + 1;
    }

    v11[2] = v14;
    *v14 = v11;
  }

  v16 = *(a1 + 20);
  if ((v16 & 0x40000000) != 0)
  {
    v17 = *(a1 - 8);
  }

  else
  {
    v17 = a1 - 32 * (v16 & 0x7FFFFFF);
  }

  v18 = (v17 + 32);
  if (*(v17 + 32))
  {
    v19 = *(v17 + 40);
    **(v17 + 48) = v19;
    if (v19)
    {
      *(v19 + 16) = *(v17 + 48);
    }
  }

  *v18 = a3;
  if (a3)
  {
    v22 = *(a3 + 8);
    v21 = (a3 + 8);
    v20 = v22;
    *(v17 + 40) = v22;
    if (v22)
    {
      *(v20 + 16) = v17 + 40;
    }

    *(v17 + 48) = v21;
    *v21 = v18;
  }

  return result;
}

llvm::SwitchInst *llvm::SwitchInst::SwitchInst(llvm::SwitchInst *this, llvm::Value *a2, llvm::BasicBlock *a3, int a4, llvm::Instruction *a5)
{
  v9 = llvm::Instruction::Instruction(this, ***a2 + 1608, 3, 0, 0, a5);
  llvm::SwitchInst::init(v9, a2, a3, 2 * a4 + 2);
  return this;
}

void llvm::SwitchInst::addCase(llvm::User *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 5);
  v7 = v6 & 0x7FFFFFF;
  v8 = (v6 & 0x7FFFFFF) + 2;
  v9 = v6;
  if (v8 > *(this + 15))
  {
    *(this + 15) = 3 * v7;
    llvm::User::growHungoffUses(this, 3 * v7, 0);
    v9 = *(this + 5);
  }

  v10 = v6 & 0x7FFFFFE;
  *(this + 5) = v9 & 0xF8000000 | v8 & 0x7FFFFFF;
  if ((v9 & 0x40000000) != 0)
  {
    v11 = *(this - 1);
  }

  else
  {
    v11 = this - 32 * (v8 & 0x7FFFFFF);
  }

  v12 = &v11[32 * v10];
  if (*v12)
  {
    v13 = *(v12 + 1);
    **(v12 + 2) = v13;
    if (v13)
    {
      *(v13 + 16) = *(v12 + 2);
    }
  }

  *v12 = a2;
  if (a2)
  {
    v16 = *(a2 + 8);
    v15 = (a2 + 8);
    v14 = v16;
    *(v12 + 1) = v16;
    if (v16)
    {
      *(v14 + 16) = v12 + 8;
    }

    *(v12 + 2) = v15;
    *v15 = v12;
  }

  v17 = v10 | 1;
  v18 = *(this + 5);
  if ((v18 & 0x40000000) != 0)
  {
    v19 = *(this - 1);
  }

  else
  {
    v19 = this - 32 * (v18 & 0x7FFFFFF);
  }

  v20 = &v19[32 * v17];
  if (*v20)
  {
    v21 = *(v20 + 1);
    **(v20 + 2) = v21;
    if (v21)
    {
      *(v21 + 16) = *(v20 + 2);
    }
  }

  *v20 = a3;
  if (a3)
  {
    v24 = *(a3 + 8);
    v23 = (a3 + 8);
    v22 = v24;
    *(v20 + 1) = v24;
    if (v24)
    {
      *(v22 + 16) = v20 + 8;
    }

    *(v20 + 2) = v23;
    *v23 = v20;
  }
}

void *llvm::IndirectBrInst::init(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a3 + 1);
  v6 = a3 == -1;
  *(a1 + 60) = v5;
  *(a1 + 20) = *(a1 + 20) & 0xF8000000 | 1;
  result = operator new(32 * v5);
  *(a1 - 8) = result;
  if (!v6)
  {
    v8 = result;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = a1;
      v8 += 4;
    }

    while (v8 != &result[4 * v5]);
  }

  v9 = *(a1 + 20);
  if ((v9 & 0x40000000) != 0)
  {
    v10 = result;
  }

  else
  {
    v10 = (a1 - 32 * (v9 & 0x7FFFFFF));
  }

  if (*v10)
  {
    v11 = v10[1];
    *v10[2] = v11;
    if (v11)
    {
      *(v11 + 16) = v10[2];
    }
  }

  *v10 = a2;
  if (a2)
  {
    v14 = *(a2 + 8);
    v13 = (a2 + 8);
    v12 = v14;
    v10[1] = v14;
    if (v14)
    {
      *(v12 + 16) = v10 + 1;
    }

    v10[2] = v13;
    *v13 = v10;
  }

  return result;
}

llvm::IndirectBrInst *llvm::IndirectBrInst::IndirectBrInst(llvm::IndirectBrInst *this, llvm::Value *a2, int a3, llvm::Instruction *a4)
{
  v7 = llvm::Instruction::Instruction(this, ***a2 + 1608, 4, 0, 0, a4);
  llvm::IndirectBrInst::init(v7, a2, a3);
  return this;
}

void llvm::IndirectBrInst::addDestination(llvm::IndirectBrInst *this, llvm::BasicBlock *a2)
{
  v4 = *(this + 5);
  v5 = v4 & 0x7FFFFFF;
  v6 = v4 + 1;
  if ((v4 & 0x7FFFFFFu) >= *(this + 15))
  {
    v7 = 2 * (v4 & 0x7FFFFFF);
    *(this + 15) = v7;
    llvm::User::growHungoffUses(this, v7, 0);
    v4 = *(this + 5);
  }

  *(this + 5) = v4 & 0xF8000000 | v6 & 0x7FFFFFF;
  if ((v4 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
  }

  else
  {
    v8 = this - 32 * (v6 & 0x7FFFFFF);
  }

  v9 = &v8[32 * v5];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 8;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }
}

llvm::FreezeInst *llvm::FreezeInst::FreezeInst(llvm::FreezeInst *this, llvm::Type **a2, const llvm::Twine *a3, llvm::Instruction *a4)
{
  v6 = llvm::UnaryInstruction::UnaryInstruction(this, *a2, 67, a2, a4);
  llvm::Value::setName(v6, a3);
  return this;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<llvm::Use *,llvm::Use *,llvm::Use *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  result = a3;
  v5 = (a4 + 8);
  do
  {
    v6 = v5 - 1;
    v7 = *a2;
    if (*(v5 - 1))
    {
      v8 = *v5;
      *v5[1] = *v5;
      if (v8)
      {
        *(v8 + 16) = v5[1];
      }
    }

    *v6 = v7;
    if (v7)
    {
      v11 = *(v7 + 8);
      v9 = (v7 + 8);
      v10 = v11;
      *v5 = v11;
      if (v11)
      {
        *(v10 + 16) = v5;
      }

      v5[1] = v9;
      *v9 = v6;
    }

    a2 += 4;
    v5 += 4;
  }

  while (a2 != a3);
  return result;
}

unsigned int *llvm::SmallVectorImpl<int>::append(unsigned int *result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = result[2];
  if (v6 + a2 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v6 + a2, 4);
    v6 = v5[2];
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else if (!a2)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*v5 + 4 * v6 + 8);
  do
  {
    v10 = vdupq_n_s64(v7);
    v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_2750C1210)));
    if (vuzp1_s16(v11, *v8.i8).u8[0])
    {
      *(v9 - 2) = a3;
    }

    if (vuzp1_s16(v11, *&v8).i8[2])
    {
      *(v9 - 1) = a3;
    }

    if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_2750C1830)))).i32[1])
    {
      *v9 = a3;
      v9[1] = a3;
    }

    v7 += 4;
    v9 += 4;
  }

  while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v7);
  LODWORD(v6) = v5[2];
LABEL_12:
  v5[2] = v6 + a2;
  return result;
}

uint64_t _GLOBAL__sub_I_Instructions_cpp()
{
  v0 = llvm::cl::Option::Option(&DisableI2pP2iOpt, 0, 0);
  byte_2815A50C0 = 0;
  qword_2815A50C8 = &unk_2883EAB68;
  *&word_2815A50D0 = 0;
  DisableI2pP2iOpt = &unk_2883EAB00;
  qword_2815A50D8 = &unk_2883EA848;
  qword_2815A50E0 = &unk_2883EAB88;
  qword_2815A50F8 = &qword_2815A50E0;
  llvm::cl::Option::setArgStr(v0, "disable-i2p-p2i-opt", 0x13uLL);
  byte_2815A50C0 = 0;
  word_2815A50D0 = 256;
  qword_2815A5060 = "Disables inttoptr/ptrtoint roundtrip optimization";
  unk_2815A5068 = 49;
  llvm::cl::Option::addArgument(&DisableI2pP2iOpt);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &DisableI2pP2iOpt, &dword_274E5C000);
}

uint64_t llvm::DbgVariableIntrinsic::getVariableLocationOp(llvm::DbgVariableIntrinsic *this, unsigned int a2)
{
  v2 = *(*(this - 4 * (*(this + 5) & 0x7FFFFFF)) + 24);
  if (*v2 == 33)
  {
    v2 = *(*(v2 + 16) + 8 * a2);
  }

  else if (llvm::MDNode::classof(*(*(this - 4 * (*(this + 5) & 0x7FFFFFF)) + 24)))
  {
    return 0;
  }

  return *(v2 + 128);
}

uint64_t llvm::Intrinsic::lookupLLVMIntrinsicByName(const char **a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v4 = a4;
  v6 = a1;
  v7 = &a1[a2];
  v31 = v7;
  if (a4 < 5)
  {
    v33 = a1;
    goto LABEL_36;
  }

  v8 = 8 * a2;
  v33 = a1;
  if (8 * a2 < 1)
  {
    goto LABEL_36;
  }

  v9 = 4;
  v6 = a1;
  v7 = &a1[a2];
  do
  {
    if (v4 <= v9 + 1 || (v10 = memchr(&a3[v9 + 1], 46, v4 - (v9 + 1))) == 0 || (v11 = v10 - a3, v10 - a3 == -1))
    {
      v11 = v4;
    }

    v33 = v6;
    if (v7 == v6)
    {
      v6 = v7;
      goto LABEL_32;
    }

    v12 = v8 >> 3;
    v13 = v11 - v9;
    v14 = v7;
    while (1)
    {
      v15 = v12 >> 1;
      v16 = &v6[v12 >> 1];
      v17 = *v16;
      if ((strncmp(&(*v16)[v9], &a3[v9], v11 - v9) & 0x80000000) == 0)
      {
        break;
      }

      v6 = v16 + 1;
      v15 = v12 + ~v15;
LABEL_14:
      v12 = v15;
      v7 = v6;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    if (strncmp(&a3[v9], &v17[v9], v11 - v9) < 0)
    {
      v14 = &v6[v12 >> 1];
      goto LABEL_14;
    }

    if (v12 != 1)
    {
      do
      {
        v18 = &v6[v15 >> 1];
        v20 = *v18;
        v19 = v18 + 1;
        v21 = strncmp(&v20[v9], &a3[v9], v13);
        if (v21 >= 0)
        {
          v15 >>= 1;
        }

        else
        {
          v15 += ~(v15 >> 1);
        }

        if (v21 < 0)
        {
          v6 = v19;
        }
      }

      while (v15);
    }

    v7 = v16 + 1;
    if (v14 == v7)
    {
      v7 = v14;
    }

    else
    {
      v22 = v14 - v7;
      do
      {
        v23 = &v7[v22 >> 1];
        v25 = *v23;
        v24 = v23 + 1;
        if (strncmp(&a3[v9], &v25[v9], v13) < 0)
        {
          v22 >>= 1;
        }

        else
        {
          v7 = v24;
          v22 += ~(v22 >> 1);
        }
      }

      while (v22);
    }

LABEL_32:
    v4 = a4;
    if (v11 >= a4)
    {
      break;
    }

    v8 = v7 - v6;
    v9 = v11;
  }

  while (v7 - v6 > 0);
LABEL_36:
  if (v7 - v6 <= 0)
  {
    v26 = v33;
  }

  else
  {
    v26 = v6;
  }

  if (v26 != v31 && ((v27 = *v26) == 0 ? (v28 = 0) : (v28 = strlen(*v26)), v4 == v28 && (!v4 || !memcmp(a3, v27, v4)) || v4 >= v28 && (!v28 || !memcmp(a3, v27, v28)) && a3[v28] == 46))
  {
    return (v26 - a1) >> 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t llvm::ConstrainedFPIntrinsic::getRoundingMode(llvm::ConstrainedFPIntrinsic *this)
{
  v2 = llvm::CallBase::arg_end(this);
  v3 = this - 32 * (*(this + 5) & 0x7FFFFFF);
  v4 = *&v3[32 * ((v2 - v3) >> 5) - 64];
  if (v4)
  {
    v5 = *(v4 + 16) == 23;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_8:
    LODWORD(v6) = 0;
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    if (!*v6)
    {
      v7 = llvm::convertStrToRoundingMode((*(v6 + 8) + 24), **(v6 + 8));
      LODWORD(v6) = HIBYTE(v7);
      return v7 | (v6 << 8);
    }

    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v7) = 0;
  return v7 | (v6 << 8);
}

uint64_t llvm::ConstrainedFPIntrinsic::getExceptionBehavior(llvm::ConstrainedFPIntrinsic *this)
{
  v2 = llvm::CallBase::arg_end(this);
  v3 = this - 32 * (*(this + 5) & 0x7FFFFFF);
  v4 = *&v3[32 * ((v2 - v3) >> 5) - 32];
  if (v4)
  {
    v5 = *(v4 + 16) == 23;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_8:
    LODWORD(v6) = 0;
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    if (!*v6)
    {
      v7 = llvm::convertStrToExceptionBehavior((*(v6 + 8) + 24), **(v6 + 8));
      LODWORD(v6) = HIBYTE(v7);
      return v7 | (v6 << 8);
    }

    goto LABEL_8;
  }

LABEL_9:
  LOBYTE(v7) = 0;
  return v7 | (v6 << 8);
}

uint64_t getFPPredicateFromMD(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 16;
  }

  if (*v1)
  {
    return 16;
  }

  v2 = *(v1 + 8);
  if (*v2 != 3)
  {
    return 16;
  }

  if (*(v2 + 24) == 25967 && *(v2 + 26) == 113)
  {
    return 1;
  }

  if (*(v2 + 24) == 26479 && *(v2 + 26) == 116)
  {
    return 2;
  }

  if (*(v2 + 24) == 26479 && *(v2 + 26) == 101)
  {
    return 3;
  }

  if (*(v2 + 24) == 27759 && *(v2 + 26) == 116)
  {
    return 4;
  }

  if (*(v2 + 24) == 27759 && *(v2 + 26) == 101)
  {
    return 5;
  }

  if (*(v2 + 24) == 28271 && *(v2 + 26) == 101)
  {
    return 6;
  }

  if (*(v2 + 24) == 29295 && *(v2 + 26) == 100)
  {
    return 7;
  }

  if (*(v2 + 24) == 28277 && *(v2 + 26) == 111)
  {
    return 8;
  }

  if (*(v2 + 24) == 25973 && *(v2 + 26) == 113)
  {
    return 9;
  }

  if (*(v2 + 24) == 26485 && *(v2 + 26) == 116)
  {
    return 10;
  }

  if (*(v2 + 24) == 26485 && *(v2 + 26) == 101)
  {
    return 11;
  }

  if (*(v2 + 24) == 27765 && *(v2 + 26) == 116)
  {
    return 12;
  }

  if (*(v2 + 24) == 27765 && *(v2 + 26) == 101)
  {
    return 13;
  }

  if (*(v2 + 24) ^ 0x6E75 | *(v2 + 26) ^ 0x65)
  {
    return 16;
  }

  return 14;
}

uint64_t llvm::VPCmpIntrinsic::getPredicate(llvm::VPCmpIntrinsic *this)
{
  v1 = *(*(this - 4) + 36);
  if (v1 != 364)
  {
    v6 = v1 == 348;
    v2 = 2;
    if (!v6)
    {
      v2 = 0;
    }

    return getFPPredicateFromMD(*(this + 4 * v2 + -4 * (*(this + 5) & 0x7FFFFFF)));
  }

  v4 = *((this - 4 * (*(this + 5) & 0x7FFFFFF))[8] + 24);
  if (!v4 || *v4)
  {
    return 42;
  }

  v5 = *(v4 + 8);
  if (*v5 != 3)
  {
    if (*v5 == 2)
    {
      if (*(v5 + 24) == 29029)
      {
        return 32;
      }

      if (*(v5 + 24) == 25966)
      {
        return 33;
      }
    }

    return 42;
  }

  v6 = *(v5 + 24) == 26485 && *(v5 + 26) == 116;
  if (v6)
  {
    return 34;
  }

  if (*(v5 + 24) == 26485 && *(v5 + 26) == 101)
  {
    return 35;
  }

  if (*(v5 + 24) == 27765 && *(v5 + 26) == 116)
  {
    return 36;
  }

  if (*(v5 + 24) == 27765 && *(v5 + 26) == 101)
  {
    return 37;
  }

  if (*(v5 + 24) == 26483 && *(v5 + 26) == 116)
  {
    return 38;
  }

  if (*(v5 + 24) == 26483 && *(v5 + 26) == 101)
  {
    return 39;
  }

  if (*(v5 + 24) == 27763 && *(v5 + 26) == 116)
  {
    return 40;
  }

  if (*(v5 + 24) ^ 0x6C73 | *(v5 + 26) ^ 0x65)
  {
    return 42;
  }

  return 41;
}

uint64_t llvm::GCProjectionInst::getStatepoint(llvm::GCProjectionInst *this)
{
  result = *(this - 4 * (*(this + 5) & 0x7FFFFFF));
  if (*(result + 16) == 94)
  {
    UniquePredecessor = llvm::BasicBlock::getUniquePredecessor(*(result + 40));
    v3 = *(UniquePredecessor + 40);
    if (v3 == UniquePredecessor + 40)
    {
      return 0;
    }

    else
    {
      v4 = v3 - 24;
      if (v3)
      {
        v5 = v3 - 24;
      }

      else
      {
        v5 = 0;
      }

      if (*(v5 + 16) - 29 >= 0xB)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return result;
}

llvm::Value *llvm::GCRelocateInst::getBasePtr(llvm::GCRelocateInst *this)
{
  Statepoint = llvm::GCProjectionInst::getStatepoint(this);
  v4 = Statepoint;
  if (*(Statepoint + 16) - 11 > 1)
  {
    llvm::CallBase::getOperandBundle(Statepoint, 5, v10);
    if (v11 == 1)
    {
      v7 = v10[0];
    }

    else
    {
      v7 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
    }

    v8 = (this - 4 * (*(this + 5) & 0x7FFFFFF))[4];
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    return *(v7 + 32 * *v9);
  }

  else
  {
    v5 = *Statepoint;

    return llvm::UndefValue::get(v5, v3);
  }
}

llvm::Value *llvm::GCRelocateInst::getDerivedPtr(llvm::GCRelocateInst *this)
{
  Statepoint = llvm::GCProjectionInst::getStatepoint(this);
  v4 = Statepoint;
  if (*(Statepoint + 16) - 11 > 1)
  {
    llvm::CallBase::getOperandBundle(Statepoint, 5, v10);
    if (v11 == 1)
    {
      v7 = v10[0];
    }

    else
    {
      v7 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
    }

    v8 = (this - 4 * (*(this + 5) & 0x7FFFFFF))[8];
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    return *(v7 + 32 * *v9);
  }

  else
  {
    v5 = *Statepoint;

    return llvm::UndefValue::get(v5, v3);
  }
}

uint64_t *llvm::LLVMContext::diagnose(uint64_t *this, const llvm::DiagnosticInfo *a2)
{
  v3 = this;
  v4 = *this;
  if ((*(a2 + 2) - 18) >= 0xFFFFFFF7)
  {
    this = *(v4 + 120);
    if (this)
    {
      llvm::LLVMRemarkStreamer::emit(this, a2);
      v4 = *v3;
    }
  }

  if (!*(v4 + 72) || *(v4 + 80) == 1 && (*(a2 + 2) - 18) >= 0xFFFFFFF7 && ((this = (*(*a2 + 32))(a2), !this) || *(a2 + 352) == 1 && (*(a2 + 18) & 1) == 0) || (this = (*(**(*v3 + 72) + 16))(*(*v3 + 72), a2), (this & 1) == 0))
  {
    if (*(a2 + 2) - 18) < 0xFFFFFFF7 || (this = (*(*a2 + 32))(a2), this) && (*(a2 + 352) != 1 || (*(a2 + 18)))
    {
      v11 = &unk_2883F12F8;
      v12 = llvm::errs(this);
      v5 = llvm::errs(v12);
      v6 = strlen(off_279F176D8[*(a2 + 12)]);
      v7 = llvm::raw_ostream::operator<<(v5, off_279F176D8[*(a2 + 12)], v6);
      v8 = *(v7 + 4);
      if (*(v7 + 3) - v8 > 1uLL)
      {
        *v8 = 8250;
        *(v7 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v7, ": ", 2uLL);
      }

      v9 = (*(*a2 + 24))(a2, &v11);
      this = llvm::errs(v9);
      v10 = this[4];
      if (this[3] == v10)
      {
        this = llvm::raw_ostream::write(this, "\n", 1uLL);
      }

      else
      {
        *v10 = 10;
        ++this[4];
      }

      if (!*(a2 + 12))
      {
        exit(1);
      }
    }
  }

  return this;
}

void llvm::LLVMContext::getMDKindNames(uint64_t a1, void *a2)
{
  llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(a2, *(*a1 + 2492));
  v4 = *(*a1 + 2488);
  if (v4)
  {
      ;
    }
  }

  else
  {
    i = *(*a1 + 2480);
  }

  v7 = *(*a1 + 2480) + 8 * v4;
  if (i != v7)
  {
    v8 = *i;
    do
    {
      v9 = v8 + 2;
      v10 = *v8;
      v11 = (*a2 + 16 * *(v8 + 2));
      *v11 = v9;
      v11[1] = v10;
      do
      {
        v12 = i[1];
        ++i;
        v8 = v12;
        if (v12)
        {
          v13 = v8 + 1 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (i != v7);
  }
}

void llvm::LLVMContext::setGC(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v6 = *a1;
  v10[0] = a2;
  v11 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>((v6 + 2696), v10, &v11))
  {
    v7 = v11;
  }

  else
  {
    v7 = *(v6 + 2696) + 32 * *(v6 + 2712);
  }

  v8 = *a1;
  if (v7 == *(*a1 + 2696) + 32 * *(*a1 + 2712))
  {
    v11 = a2;
    *__p = *a3;
    v13 = *(a3 + 2);
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::try_emplace<std::string>(v8 + 2696, &v11, __p, v10);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    v9 = *a3;
    *(v7 + 24) = *(a3 + 2);
    *(v7 + 8) = v9;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::erase(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    if (*(v6 + 31) < 0)
    {
      operator delete(*(v6 + 8));
    }

    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

void llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 16 * v2), 16 * a2 - 16 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::try_emplace<std::string>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v13);
  v9 = v13;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::InsertIntoBucketImpl<llvm::Function const*>(a1, a2, a2, v13);
    v9 = result;
    *result = *a2;
    v11 = *a3;
    *(result + 24) = *(a3 + 2);
    *(result + 8) = v11;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    v10 = 1;
  }

  v12 = *a1 + 32 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v12;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::InsertIntoBucketImpl<llvm::Function const*>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::grow(uint64_t a1, int a2)
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
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, v19, &v30);
          v20 = v30;
          *v30 = *v19;
          v21 = *(v19 + 8);
          v20[3] = *(v19 + 24);
          *(v20 + 1) = v21;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v19 + 8) = 0;
          ++*(a1 + 8);
          if (*(v19 + 31) < 0)
          {
            operator delete(*(v19 + 8));
          }
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::InsertIntoBucketImpl<llvm::Function const*>(a1, a2, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
  }

  return v5;
}

unint64_t llvm::MDNodeOpsKey::calculateHash(llvm::MDNodeOpsKey *this, llvm::MDNode *a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(this - 2);
  if ((v4 & 2) != 0)
  {
    v5 = *(this - 4);
    v6 = &v5[8 * a2];
    v7 = *(this - 6);
  }

  else
  {
    v5 = this - 8 * ((v4 >> 2) & 0xF) - 16;
    v6 = &v5[8 * a2];
    v7 = (v4 >> 6) & 0xF;
  }

  return llvm::hashing::detail::hash_combine_range_impl<llvm::MDOperand const*>(v6, &v5[8 * v7], a3, a4);
}

void llvm::LLVMContextImpl::getSyncScopeNames(uint64_t a1, void *a2)
{
  llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(a2, *(a1 + 2684));
  v4 = *(a1 + 2680);
  if (v4)
  {
      ;
    }
  }

  else
  {
    i = *(a1 + 2672);
  }

  v7 = *(a1 + 2672) + 8 * v4;
  if (i != v7)
  {
    v8 = *i;
    do
    {
      v9 = v8 + 2;
      v10 = *v8;
      v11 = (*a2 + 16 * *(v8 + 8));
      *v11 = v9;
      v11[1] = v10;
      do
      {
        v12 = i[1];
        ++i;
        v8 = v12;
        if (v12)
        {
          v13 = v8 + 1 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (i != v7);
  }
}

void llvm::ContextAndReplaceableUses::~ContextAndReplaceableUses(llvm::ContextAndReplaceableUses *this)
{
  v1 = *this;
  if ((*this & 4) != 0)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFF8;
    if ((v1 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      if ((*(v2 + 16) & 1) == 0)
      {
        MEMORY[0x277C69E30](*(v2 + 24), 8);
      }

      MEMORY[0x277C69E40](v2, 0x1020C408B843D01);
    }
  }
}

void llvm::DIExpression::~DIExpression(llvm::DIExpression *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  llvm::ContextAndReplaceableUses::~ContextAndReplaceableUses((this + 8));
}

void llvm::DIEnumerator::~DIEnumerator(llvm::DIEnumerator *this)
{
  if (*(this + 6) >= 0x41u)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x277C69E10](v2, 0x1000C8000313F17);
    }
  }

  llvm::ContextAndReplaceableUses::~ContextAndReplaceableUses((this + 8));
}

void llvm::DIArgList::~DIArgList(llvm::DIArgList *this)
{
  llvm::DIArgList::untrack(this);
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }

  llvm::ContextAndReplaceableUses::~ContextAndReplaceableUses((this + 8));
}

char **llvm::SmallVector<llvm::MDAttachments::Attachment,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[16 * v3 - 8];
    v5 = -16 * v3;
    do
    {
      if (*v4)
      {
        llvm::MetadataTracking::untrack(v4, *v4);
      }

      v4 -= 2;
      v5 += 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::MDOperand const*>(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  {
    v19 = llvm::hashing::detail::fixed_seed_override;
    if (!llvm::hashing::detail::fixed_seed_override)
    {
      v19 = 0xFF51AFD7ED558CCDLL;
    }

    llvm::hashing::detail::get_execution_seed(void)::seed = v19;
  }

  v6 = llvm::hashing::detail::get_execution_seed(void)::seed;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_8:
    result = llvm::hashing::detail::hash_short(__src, v8, v6);
  }

  else
  {
    v7 = 0;
    while (v7 <= 0x38)
    {
      v8 = v7 + 8;
      v9 = *a1++;
      *&__src[v7] = v9;
      v7 += 8;
      if (a1 == a2)
      {
        goto LABEL_8;
      }
    }

    llvm::hashing::detail::hash_state::create(__src, v6, v6, a4, v20);
    v11 = 64;
    while (a1 != a2)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 8;
        v14 = *a1++;
        *&__src[v12] = v14;
        if (a1 == a2)
        {
          break;
        }

        v15 = v12 >= 0x31;
        v12 += 8;
      }

      while (!v15);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v22);
      llvm::hashing::detail::hash_state::mix(v20, __src, v16, v17);
      v11 += v13;
    }

    result = llvm::hashing::detail::hash_state::finalize(v20, v11);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::StringMap<unsigned char,llvm::MallocAllocator>::try_emplace<unsigned char>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, char *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
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

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = v12 + 16;
  if (a3)
  {
    memcpy(v12 + 16, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  v13[8] = *a4;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t _GLOBAL__sub_I_LLVMContextImpl_cpp()
{
  v0 = llvm::cl::Option::Option(OpaquePointersCL, 0, 0);
  byte_2815AC708 = 0;
  qword_2815AC710 = &unk_2883EAB68;
  *&word_2815AC718 = 0;
  OpaquePointersCL[0] = &unk_2883EAB00;
  qword_2815AC720 = &unk_2883EA848;
  qword_2815AC728 = &unk_2883EAB88;
  qword_2815AC740 = &qword_2815AC728;
  llvm::cl::Option::setArgStr(v0, "opaque-pointers", 0xFuLL);
  qword_2815AC6A8 = "Use opaque pointers";
  unk_2815AC6B0 = 19;
  byte_2815AC708 = 1;
  word_2815AC718 = 257;
  llvm::cl::Option::addArgument(OpaquePointersCL);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, OpaquePointersCL, &dword_274E5C000);
}

uint64_t llvm::LLVMRemarkStreamer::toRemark@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = 0;
  *(a2 + 104) = a2 + 120;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 112) = 0x500000000;
  v9 = *(a1 + 8) - 9;
  if (v9 <= 8)
  {
    v8 = dword_2750DDF50[v9];
  }

  *a2 = v8;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = strlen(*(a1 + 40));
  }

  else
  {
    v11 = 0;
  }

  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = *(a1 + 48);
  result = *(a1 + 16);
  if ((*(result + 23) & 0x10) != 0)
  {
    result = llvm::Value::getValueName(result);
    v14 = result + 16;
    v13 = *result;
    if (*result)
    {
      v2 = *v14;
      LODWORD(v3) = v13 - 1;
      if (v2 == 1)
      {
        v13 = (v13 - 1);
        v14 = result + 17;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = &str_3_24;
  }

  *(a2 + 40) = v14;
  *(a2 + 48) = v13;
  v15 = *(a1 + 24);
  if (v15)
  {
    v14 = *(a1 + 32);
    v16 = *(v15 - 2);
    if ((v16 & 2) != 0)
    {
      v17 = *(v15 - 4);
    }

    else
    {
      v17 = &v15[-((v16 >> 2) & 0xF) - 2];
    }

    v15 = *v17;
    if (v15)
    {
      v19 = v15[1];
      v20 = *v19;
      v15 = v19 + 3;
      v2 = v20;
    }

    else
    {
      v2 = 0;
    }

    v3 = HIDWORD(v14);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 56) = v15;
  *(a2 + 64) = v2;
  *(a2 + 72) = v14;
  *(a2 + 76) = v3;
  *(a2 + 80) = v18;
  v21 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 64);
  *(a2 + 96) = v21;
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 80);
    v26 = v22 << 6;
    do
    {
      v27 = v25 + v23;
      result = llvm::SmallVectorImpl<llvm::remarks::Argument>::emplace_back<>(a2 + 104);
      v28 = *(v25 + v23 + 23);
      v29 = *(v25 + v23);
      v30 = *(v25 + v23 + 8);
      if (v28 >= 0)
      {
        v29 = v25 + v23;
      }

      if (v28 >= 0)
      {
        v30 = *(v27 + 23);
      }

      v31 = *(a2 + 112);
      v32 = *(a2 + 104) + (v31 << 6);
      *(v32 - 64) = v29;
      *(v32 - 56) = v30;
      v35 = *(v27 + 24);
      v34 = v27 + 24;
      v33 = v35;
      v36 = *(v34 + 23);
      if (v36 >= 0)
      {
        v33 = v34;
      }

      if (v36 < 0)
      {
        v36 = *(v34 + 8);
      }

      v37 = *(a2 + 104) + (v31 << 6);
      *(v37 - 48) = v33;
      *(v37 - 40) = v36;
      v38 = *(v34 + 24);
      if (v38)
      {
        v39 = *(v38 - 16);
        if ((v39 & 2) != 0)
        {
          v40 = *(v38 - 32);
        }

        else
        {
          v40 = (v38 - 16 - 8 * ((v39 >> 2) & 0xF));
        }

        v38 = *v40;
        if (v38)
        {
          v42 = *(v38 + 8);
          v43 = *v42;
          v38 = (v42 + 3);
          v4 = v43;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v25 + v23 + 56);
        v24 = v38 >> 8;
        v41 = v38;
        LOBYTE(v38) = 1;
      }

      else
      {
        v41 = 0;
      }

      v44 = *(a2 + 104) + (v31 << 6);
      *(v44 - 32) = v41 | (v24 << 8);
      *(v44 - 24) = v4;
      *(v44 - 16) = v5;
      *(v44 - 8) = v38;
      v23 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::remarks::Argument>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::remarks::Argument,true>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + (v1 << 6));
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (*(a1 + 8) + 1);
  *(a1 + 8) = v3;
  return *a1 + (v3 << 6) - 64;
}

void llvm::LLVMRemarkStreamer::emit(uint64_t *a1, uint64_t a2)
{
  v10[40] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a2 + 40);
  if (v5)
  {
    v6 = strlen(*(a2 + 40));
  }

  else
  {
    v6 = 0;
  }

  if (*(v4 + 16) != 1 || llvm::Regex::match(v4, v5, v6, 0, 0))
  {
    llvm::LLVMRemarkStreamer::toRemark(a2, v8);
    (*(**(*a1 + 24) + 16))(*(*a1 + 24), v8);
    if (v9 != v10)
    {
      free(v9);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorTemplateBase<llvm::remarks::Argument,true>::growAndEmplaceBack<>(uint64_t a1)
{
  memset(v9, 0, sizeof(v9));
  v2 = llvm::SmallVectorTemplateCommon<llvm::ReplacementItem,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::ReplacementItem,true>>(a1, v9, 1);
  v3 = (*a1 + (*(a1 + 8) << 6));
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v3[2] = v2[2];
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + (v7 << 6) - 64;
}

void llvm::cl::opt<anonymous namespace::PassDebugLevel,false,llvm::cl::parser<anonymous namespace::PassDebugLevel>>::~opt(llvm::cl::Option *this)
{
  *this = &unk_2883F14C0;
  v2 = this + 568;
  v3 = *(this + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 19) = &unk_2883F1528;
  v4 = *(this + 21);
  if (v4 != this + 184)
  {
    free(v4);
  }

  llvm::cl::Option::~Option(this);
}

{
  *this = &unk_2883F14C0;
  v2 = this + 568;
  v3 = *(this + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 19) = &unk_2883F1528;
  v4 = *(this + 21);
  if (v4 != this + 184)
  {
    free(v4);
  }

  llvm::cl::Option::~Option(this);

  JUMPOUT(0x277C69E40);
}

void *llvm::cl::parser<anonymous namespace::PassDebugLevel>::~parser(void *a1)
{
  *a1 = &unk_2883F1528;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<anonymous namespace::PassDebugLevel,false,llvm::cl::parser<anonymous namespace::PassDebugLevel>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
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
  }
}

uint64_t llvm::cl::opt<anonymous namespace::PassDebugLevel,false,llvm::cl::parser<anonymous namespace::PassDebugLevel>>::getValueExpectedFlagDefault(uint64_t a1)
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

llvm::raw_ostream *llvm::cl::opt<anonymous namespace::PassDebugLevel,false,llvm::cl::parser<anonymous namespace::PassDebugLevel>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 32);
LABEL_3:
    v4 = &unk_2883F1578;
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

uint64_t llvm::cl::opt<anonymous namespace::PassDebugLevel,false,llvm::cl::parser<anonymous namespace::PassDebugLevel>>::setDefault(uint64_t result)
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

void llvm::cl::parser<anonymous namespace::PassDebugLevel>::~parser(void *a1)
{
  *a1 = &unk_2883F1528;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::parser<anonymous namespace::PassDebugLevel>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<anonymous namespace::PassDebugLevel>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<anonymous namespace::PassDebugLevel>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815A54C0, &unk_2815A54D0, a1, 48, &v9);
  v2 = qword_2815A54C0;
  if (qword_2815A54C8)
  {
    v3 = qword_2815A54C0 + 48 * qword_2815A54C8;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883F1598;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883F1578;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815A54C0;
  }

  v8 = v9;
  if (v2 != &unk_2815A54D0)
  {
    free(v2);
  }

  qword_2815A54C0 = v1;
  HIDWORD(qword_2815A54C8) = v8;
}

uint64_t _GLOBAL__sub_I_LegacyPassManager_cpp()
{
  v42 = *MEMORY[0x277D85DE8];
  __src = "Disabled";
  v19 = 8;
  LODWORD(v20) = 0;
  *(&v20 + 1) = "disable debug output";
  v21 = 20;
  v22 = "Arguments";
  v23 = 9;
  v24 = 1;
  v25 = "print pass arguments to pass to 'opt'";
  v26 = 37;
  v27 = "Structure";
  v28 = 9;
  v29 = 2;
  v30 = "print pass structure before run()";
  v31 = 33;
  v32 = "Executions";
  v33 = 10;
  v34 = 3;
  v35 = "print pass name before it is executed";
  v36 = 37;
  v37 = "Details";
  v38 = 7;
  v39 = 4;
  v40 = "print pass details when it is executed";
  v41 = 38;
  v15 = v17;
  v16 = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v15, &__src, &v42);
  v0 = llvm::cl::Option::Option(&PassDebugging, 0, 0);
  dword_2815A5498 = 0;
  qword_2815A54A0 = &unk_2883F1578;
  unk_2815A54A8 = 0;
  PassDebugging = &unk_2883F14C0;
  qword_2815A54B0 = &unk_2883F1528;
  qword_2815A54B8 = &PassDebugging;
  qword_2815A54C0 = &unk_2815A54D0;
  qword_2815A54C8 = 0x800000000;
  qword_2815A5650 = &unk_2883F15B8;
  qword_2815A5668 = &qword_2815A5650;
  llvm::cl::Option::setArgStr(v0, "debug-pass", 0xAuLL);
  word_2815A5422 = word_2815A5422 & 0xFF9F | 0x20;
  qword_2815A5438 = "Print legacy PassManager debugging information";
  unk_2815A5440 = 46;
  if (v16)
  {
    v1 = v15;
    v2 = v15 + 40 * v16;
    do
    {
      v3 = *v1;
      v4 = *(v1 + 1);
      v5 = *(v1 + 24);
      v6 = *(v1 + 4);
      __src = *v1;
      v19 = v4;
      v20 = v5;
      v21 = &unk_2883F1578;
      BYTE4(v22) = 1;
      LODWORD(v22) = v6;
      v7 = qword_2815A54C0;
      if (qword_2815A54C8 >= HIDWORD(qword_2815A54C8))
      {
        if (qword_2815A54C0 <= &__src && qword_2815A54C0 + 48 * qword_2815A54C8 > &__src)
        {
          v14 = &__src - qword_2815A54C0;
          v7 = qword_2815A54C0;
          p_src = &v14[qword_2815A54C0];
          goto LABEL_5;
        }

        v7 = qword_2815A54C0;
      }

      p_src = &__src;
LABEL_5:
      v9 = v7 + 48 * qword_2815A54C8;
      v10 = *(p_src + 1);
      *v9 = *p_src;
      *(v9 + 16) = v10;
      *(v9 + 32) = &unk_2883F1598;
      v11 = *(p_src + 10);
      *(v9 + 44) = *(p_src + 44);
      *(v9 + 40) = v11;
      *(v9 + 32) = &unk_2883F1578;
      LODWORD(qword_2815A54C8) = qword_2815A54C8 + 1;
      llvm::cl::AddLiteralOption(qword_2815A54B8, v3, v4);
      v1 += 40;
    }

    while (v1 != v2);
  }

  llvm::cl::Option::addArgument(&PassDebugging);
  if (v15 != v17)
  {
    free(v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void getNameWithPrefixImpl(llvm::raw_ostream *a1, unsigned __int8 *a2, int a3, llvm::DataLayout *a4, char a5)
{
  v23[32] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = xmmword_2750C12F0;
  v9 = llvm::Twine::toStringRef(a2, &v21);
  v11 = v9;
  v12 = v10;
  v13 = *v9;
  if (v13 == 1)
  {
    if (v10)
    {
      v11 = v9 + 1;
    }

    v12 = v10 - (v10 != 0);
    goto LABEL_20;
  }

  v14 = *(a4 + 7);
  v15 = (v14 - 3) < 2 && v13 == 63;
  if (v15)
  {
    a5 = 0;
  }

  if (a3 == 2)
  {
    v15 = v14 == 2;
    v18 = v14 == 2;
    PrivateGlobalPrefix = &str_10_13;
    if (v15)
    {
      PrivateGlobalPrefix = "l";
    }
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    PrivateGlobalPrefix = llvm::DataLayout::getPrivateGlobalPrefix(a4);
    v18 = v17;
  }

  llvm::raw_ostream::operator<<(a1, PrivateGlobalPrefix, v18);
LABEL_16:
  if (a5)
  {
    v19 = *(a1 + 4);
    if (v19 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, a5);
    }

    else
    {
      *(a1 + 4) = v19 + 1;
      *v19 = a5;
    }
  }

LABEL_20:
  llvm::raw_ostream::operator<<(a1, v11, v12);
  if (v21 != v23)
  {
    free(v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void llvm::Mangler::getNameWithPrefix(llvm::Mangler *this, llvm::raw_ostream *a2, const llvm::GlobalValue *a3, int a4)
{
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ((*(a3 + 8) & 0xF) == 8)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 5);
  if ((*(a3 + 23) & 0x10) == 0)
  {
    v39 = 0;
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*this, *(this + 4), a3, &v39);
    v11 = v39;
    if (v10)
    {
      v12 = *(v39 + 2);
      if (v12)
      {
LABEL_26:
        v39 = "__unnamed_";
        v41 = v12;
        v42 = 2051;
        v23 = (v8 + 256);
        v24 = 0x5F005F0000uLL >> (8 * *(v8 + 284));
LABEL_31:
        getNameWithPrefixImpl(a2, &v39, v7, v23, v24);
        return;
      }

LABEL_25:
      v12 = *(this + 2);
      *(v11 + 2) = v12;
      goto LABEL_26;
    }

    v21 = *(this + 2);
    v22 = *(this + 4);
    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
    }

    else if (v22 + ~v21 - *(this + 3) > v22 >> 3)
    {
LABEL_22:
      ++*(this + 2);
      if (*v11 != -4096)
      {
        --*(this + 3);
      }

      *v11 = a3;
      *(v11 + 2) = 0;
      goto LABEL_25;
    }

    llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(this, v22);
    v39 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*this, *(this + 4), a3, &v39);
    v11 = v39;
    goto LABEL_22;
  }

  ValueName = llvm::Value::getValueName(a3);
  v14 = (ValueName + 2);
  v15 = *ValueName;
  v16 = 0x5F005F0000uLL >> (8 * *(v8 + 284));
  v39 = 0;
  v40 = 0;
  LODWORD(v41) = 0;
  v17 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(a3, &v39);
  MEMORY[0x277C69E30](v39, 8);
  if (v17 && *(v17 + 16))
  {
    v17 = 0;
  }

  v18 = v16;
  if (v15)
  {
    v19 = *v14;
    if (v19 == 1)
    {
      goto LABEL_30;
    }

    v20 = *(v8 + 284);
    if ((v20 - 5) >= 0xFFFFFFFE && v19 == 63)
    {
      goto LABEL_30;
    }

    if (!v17)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v20 = *(v8 + 284);
    if (!v17)
    {
LABEL_30:
      v42 = 261;
      v39 = v14;
      v40 = v15;
      v24 = v18;
      v23 = (v8 + 256);
      goto LABEL_31;
    }
  }

  v25 = (*(v17 + 18) >> 4) & 0x3FF;
  if (v20 != 4 && v25 != 80)
  {
    goto LABEL_30;
  }

  if (v25 == 65)
  {
    v18 = 64;
  }

  else if (v25 == 80)
  {
    v18 = 0;
  }

  v42 = 261;
  v39 = v14;
  v40 = v15;
  getNameWithPrefixImpl(a2, &v39, v7, (v8 + 256), v18);
  if (v25 == 80)
  {
    v26 = *(a2 + 4);
    if (v26 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 64);
    }

    else
    {
      *(a2 + 4) = v26 + 1;
      *v26 = 64;
    }
  }

  else if ((v25 - 64) > 0x10 || ((1 << (v25 - 64)) & 0x10003) == 0)
  {
    return;
  }

  v27 = *(v17 + 24);
  if (*(v27 + 8) < 0x100u || (v28 = *(v27 + 12), v28 == 1) || v28 == 2 && llvm::Function::hasStructRetAttr(v17))
  {
    v29 = *(*(v8 + 496) + 4);
    v30 = llvm::Function::args(v17);
    if (v30 == v31)
    {
      v32 = 0;
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = 0;
      do
      {
        if ((llvm::Argument::hasStructRetAttr(v33) & 1) == 0)
        {
          if (llvm::Argument::hasPassPointeeByValueCopyAttr(v33))
          {
            PassPointeeByValueCopySize = llvm::Argument::getPassPointeeByValueCopySize(v33, (v8 + 256));
          }

          else
          {
            PassPointeeByValueCopySize = llvm::DataLayout::getTypeAllocSize((v8 + 256), *v33);
            if (v37)
            {
            }
          }

          v35 += (((v29 + 7) >> 3) - 1 + PassPointeeByValueCopySize) / ((v29 + 7) >> 3) * ((v29 + 7) >> 3);
        }

        v33 = (v33 + 40);
      }

      while (v33 != v34);
      v32 = v35;
    }

    v38 = *(a2 + 4);
    if (v38 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 64);
    }

    else
    {
      *(a2 + 4) = v38 + 1;
      *v38 = 64;
    }

    write_unsigned<unsigned long>(a2, v32, 0, 0, 0);
  }
}

uint64_t llvm::Function::hasStructRetAttr(llvm::Function *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 < 3)
  {
    return 0;
  }

  v3 = *(v1 + 56);
  if (!v3 || (*(v3 + 21) & 4) == 0)
  {
    if (v2 != 3)
    {
      v4 = *(v1 + 64);
      if (v4)
      {
        return (*(v4 + 21) >> 2) & 1;
      }
    }

    return 0;
  }

  return 1;
}

void llvm::Mangler::getNameWithPrefix(llvm::Mangler *a1, uint64_t a2, const llvm::GlobalValue *a3, int a4)
{
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_2883EB968;
  v15 = a2;
  llvm::raw_ostream::SetUnbuffered(&v7);
  llvm::Mangler::getNameWithPrefix(a1, &v7, a3, a4);
  llvm::raw_ostream::~raw_ostream(&v7);
}

uint64_t llvm::DataLayout::getPrivateGlobalPrefix(llvm::DataLayout *this)
{
  v1 = *(this + 7);
  v2 = qword_2750DDF78[v1];
  return *(&off_279F176F8 + v1);
}

uint64_t llvm::MetadataAsValue::MetadataAsValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = *(a1 + 20) & 0xC0000000;
  *(a1 + 16) = 23;
  *(a1 + 20) = v4;
  *(a1 + 24) = a3;
  v5 = a1 + 24;
  if (a3)
  {
    llvm::MetadataTracking::track(v5, a3, a1);
  }

  return a1;
}

void llvm::MetadataAsValue::~MetadataAsValue(llvm::MetadataAsValue *this)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(***this + 456, this + 3);
  v2 = *(this + 3);
  if (v2)
  {
    llvm::MetadataTracking::untrack(this + 24, v2);
  }

  llvm::Value::~Value(this);
}

uint64_t llvm::MetadataAsValue::get(void *a1, _BYTE *a2)
{
  v4 = canonicalizeMetadataForValue(a1, a2);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((*a1 + 456), &v4)[1];
  if (!result)
  {
    operator new();
  }

  return result;
}

llvm::MDNode *canonicalizeMetadataForValue(void *a1, _BYTE *a2)
{
  v2 = a1;
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = a2;
  if (!llvm::MDNode::classof(a2))
  {
    return v3;
  }

  v4 = *(v3 - 2);
  if ((v4 & 2) != 0)
  {
    if (*(v3 - 6) == 1)
    {
      v5 = *(v3 - 4);
      goto LABEL_11;
    }

    return v3;
  }

  if ((*(v3 - 2) & 0x3C0) != 0x40)
  {
    return v3;
  }

  v5 = &v3[-8 * ((v4 >> 2) & 0xF) - 16];
LABEL_11:
  v7 = *v5;
  if (v7)
  {
    if (*v7 == 1)
    {
      return v7;
    }

    return v3;
  }

  a1 = v2;
LABEL_6:

  return llvm::MDTuple::getImpl(a1, 0, 0, 0, 1);
}

uint64_t llvm::MetadataAsValue::getIfExists(uint64_t *a1, _BYTE *a2)
{
  v3 = canonicalizeMetadataForValue(a1, a2);
  v4 = *a1;
  v7 = 0;
  v8 = v3;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v4 + 456), &v8, &v7);
  result = 0;
  if (v5)
  {
    return *(v7 + 8);
  }

  return result;
}

uint64_t llvm::MetadataTracking::track(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = llvm::ReplaceableMetadataImpl::getOrCreate(a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 8);
    v12 = a1;
    *&v13 = a3;
    *(&v13 + 1) = v8;
    llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::try_emplace<std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>(v6 + 16, &v12, &v13, v11);
    ++*(v7 + 8);
  }

  else
  {
    if (*a2 != 3)
    {
      result = 0;
      goto LABEL_6;
    }

    *(a2 + 8) = a1;
  }

  result = 1;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::ReplaceableMetadataImpl::getOrCreate(unsigned __int8 *a1)
{
  if (llvm::MDNode::classof(a1))
  {
    if ((a1[1] & 0x7F) == 2 || *(a1 - 2))
    {

      return llvm::ContextAndReplaceableUses::getOrCreateReplaceableUses((a1 + 8));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = *a1 - 3;
    v4 = __CFADD__(v3, 2);
    if (v3 >= 0xFFFFFFFE)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 + 8;
    if (v4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t llvm::MetadataTracking::untrack(uint64_t a1, uint64_t a2)
{
  result = llvm::ReplaceableMetadataImpl::getIfExists(a2);
  if (result)
  {
    v5 = a1;
    return llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::erase((result + 16), &v5);
  }

  else if (*a2 == 3)
  {
    *(a2 + 8) = 0;
  }

  return result;
}

unint64_t llvm::ReplaceableMetadataImpl::getIfExists(unsigned __int8 *a1)
{
  if (llvm::MDNode::classof(a1))
  {
    if ((a1[1] & 0x7F) == 2 || *(a1 - 2))
    {
      return *(a1 + 1) & ((*(a1 + 1) << 61) >> 63) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = *a1 - 3;
    v4 = __CFADD__(v3, 2);
    if (v3 >= 0xFFFFFFFE)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 + 8;
    if (v4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

BOOL llvm::MetadataTracking::retrack(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  IfExists = llvm::ReplaceableMetadataImpl::getIfExists(a2);
  v6 = IfExists;
  if (IfExists)
  {
    llvm::ReplaceableMetadataImpl::moveRef(IfExists, a1, a3);
  }

  return v6 != 0;
}

uint64_t llvm::ReplaceableMetadataImpl::moveRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::find(a1 + 16, a2);
  v6 = *(v5 + 8);
  *v5 = -8192;
  v7 = *(a1 + 20) + 1;
  *(a1 + 16) -= 2;
  *(a1 + 20) = v7;
  v11 = a3;
  v12[0] = v6;
  v12[1] = v6;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::try_emplace<std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>(a1 + 16, &v11, v12, &v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::erase(_DWORD *a1, void *a2)
{
  v5 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(a1, a2, &v5);
  if (result)
  {
    *v5 = -8192;
    v4 = a1[1] + 1;
    *a1 -= 2;
    a1[1] = v4;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::find(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v9 = 0;
  v3 = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(a1, &v8, &v9);
  v4 = *a1;
  if (v3)
  {
    result = v9;
    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
    }
  }

  else if (v4)
  {
    return a1 + 104;
  }

  else
  {
    return *(a1 + 8) + 24 * *(a1 + 16);
  }

  return result;
}

void llvm::ReplaceableMetadataImpl::SalvageDebugInfo(uint64_t ***this, const llvm::Constant *a2)
{
  v38[24] = *MEMORY[0x277D85DE8];
  if ((*(this + 23) & 8) == 0)
  {
    goto LABEL_43;
  }

  v3 = ***this;
  v35 = this;
  v36 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v3 + 432), &v35, &v36);
  v5 = v36;
  if (!v4)
  {
    v5 = (*(v3 + 432) + 16 * *(v3 + 448));
  }

  v6 = v5[1];
  v7 = *(v6 + 24);
  if (v7 > 1)
  {
    v11 = (v6 + 32);
    if (v7)
    {
      v13 = (v6 + 128);
      v9 = (v6 + 32);
    }

    else
    {
      v9 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = &v9[3 * v12];
      if (!v12)
      {
        v14 = 0;
LABEL_20:
        v15 = (*v11 + 24 * v14);
        goto LABEL_21;
      }
    }

    v7 = *(v6 + 24) & 1;
    while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v9 += 3;
      if (v9 == v13)
      {
        v9 = v13;
        break;
      }
    }
  }

  else
  {
    if (v7)
    {
      v8 = v6 + 32;
      v9 = (v6 + 128);
      v10 = 4;
    }

    else
    {
      v8 = *(v6 + 32);
      v10 = *(v6 + 40);
      v9 = (v8 + 24 * v10);
    }

    v13 = (v8 + 24 * v10);
  }

  v11 = (v6 + 32);
  if (!v7)
  {
    v14 = *(v6 + 40);
    goto LABEL_20;
  }

  v15 = (v6 + 128);
LABEL_21:
  v36 = v38;
  v37 = 0x800000000;
  llvm::SmallVectorImpl<std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::append<llvm::DenseMapIterator<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>,false>,void>(&v36, v9, v13, v15);
  v16 = v36;
  if (v37)
  {
    v17 = 24 * v37;
    v18 = (v36 + 8);
    do
    {
      v19 = *v18;
      if (*v18 >= 4)
      {
        v20 = (*v18 & 2) == 0;
        *v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        v22 = llvm::MDNode::classof((v19 & 0xFFFFFFFFFFFFFFFCLL));
        if (v21 && v22 != 0)
        {
          v25 = v21->n128_u8[0];
          if (v25 - 8 < 0x16 || ((v31 = v25 > 0x23, v32 = (1 << v25) & 0xD00000000, !v31) ? (v33 = v32 == 0) : (v33 = 1), !v33))
          {
            v26 = *(v18 - 1);
            v27 = llvm::UndefValue::get(*this, v23);
            v29 = llvm::ValueAsMetadata::get(v27, v28);
            llvm::MDNode::handleChangedOperand(v21, v26, v29, v30);
          }
        }
      }

      v18 += 3;
      v17 -= 24;
    }

    while (v17);
    v16 = v36;
  }

  if (v16 != v38)
  {
    free(v16);
  }

LABEL_43:
  v34 = *MEMORY[0x277D85DE8];
}

void llvm::MDNode::handleChangedOperand(__n128 *this, uint64_t a2, __n128 *a3, unint64_t *a4)
{
  v7 = this - 1;
  v6 = this[-1].n128_u64[0];
  if ((v6 & 2) != 0)
  {
    v8 = this[-2].n128_u64[0];
  }

  else
  {
    v8 = &v7->n128_u64[-((v6 >> 2) & 0xF)];
  }

  v9 = a2 - v8;
  v10 = (a2 - v8) >> 3;
  if ((this->n128_u8[1] & 0x7F) != 0)
  {

    llvm::MDNode::setOperand(this, v10, a3);
    return;
  }

  llvm::MDNode::eraseFromStore(this, a2, a3, a4);
  v11 = this[-1].n128_u64[0];
  if ((v11 & 2) != 0)
  {
    v12 = this[-2].n128_u64[0];
  }

  else
  {
    v12 = &v7->n128_u64[-((v11 >> 2) & 0xF)];
  }

  v13 = *(v12 + (v9 & 0x7FFFFFFF8));
  llvm::MDNode::setOperand(this, v10, a3);
  if (a3 == this || !a3 && v13 && *v13 == 1)
  {
    if ((this->n128_u8[1] & 0x7F) == 2 || this[-1].n128_u32[2])
    {
      this[-1].n128_u32[2] = 0;
      llvm::MDNode::dropReplaceableUses(this);
    }

    goto LABEL_18;
  }

  v17 = llvm::MDNode::uniquify(this, v14, v15, v16);
  v18 = this->n128_u8[1] & 0x7F;
  if (v17 == this)
  {
    if (v18 == 2 || this[-1].n128_u32[2])
    {
      if (v13 && llvm::MDNode::classof(v13) && ((v13[1] & 0x7F) == 2 || *(v13 - 2)))
      {
        if ((!a3 || !llvm::MDNode::classof(a3) || (a3->n128_u8[1] & 0x7F) != 2 && !a3[-1].n128_u32[2]) && (this->n128_u8[1] & 0x7F) != 2)
        {
          v21 = this[-1].n128_u32[2] - 1;
          this[-1].n128_u32[2] = v21;
          if (!v21)
          {

            llvm::MDNode::dropReplaceableUses(this);
          }
        }
      }

      else if (a3 && llvm::MDNode::classof(a3) && ((a3->n128_u8[1] & 0x7F) == 2 || a3[-1].n128_u32[2]))
      {
        ++this[-1].n128_u32[2];
      }
    }
  }

  else
  {
    v19 = v17;
    if (v18 != 2 && !this[-1].n128_u32[2])
    {
LABEL_18:

      llvm::MDNode::storeDistinctInContext(this);
      return;
    }

    if ((v7->n128_u64[0] & 2) != 0)
    {
      v20 = this[-2].n128_u32[2];
    }

    else
    {
      v20 = (v7->n128_u64[0] >> 6) & 0xF;
    }

    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        llvm::MDNode::setOperand(this, i, 0);
      }
    }

    v23 = this->n128_u64[1];
    if ((v23 & 4) != 0)
    {
      llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v23 & 0xFFFFFFFFFFFFFFF8, v19);
    }

    llvm::MDNode::deleteAsSubclass(this);
  }
}

uint64_t llvm::ValueAsMetadata::get(llvm::ValueAsMetadata *this, llvm::Value *a2)
{
  v5 = this;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 432), &v5)[1];
  if (!result)
  {
    v3 = v5;
    *(v5 + 5) |= 0x8000000u;
    v4 = *(v3 + 16);
    operator new();
  }

  return result;
}

void llvm::ReplaceableMetadataImpl::replaceAllUsesWith(uint64_t a1, __n128 *a2)
{
  v34[24] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    goto LABEL_39;
  }

  if (v2)
  {
    v7 = (a1 + 120);
    v5 = (a1 + 24);
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = &v5[3 * v6];
    if (!v6)
    {
      v8 = 0;
      v9 = *(a1 + 24);
      goto LABEL_12;
    }
  }

  v9 = v5;
  while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v9 += 3;
    if (v9 == v7)
    {
      v9 = v7;
      break;
    }
  }

  if (v2)
  {
    v10 = (a1 + 120);
    goto LABEL_14;
  }

  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
LABEL_12:
  v10 = &v5[3 * v8];
LABEL_14:
  v32 = v34;
  v33 = 0x800000000;
  llvm::SmallVectorImpl<std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::append<llvm::DenseMapIterator<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>,false>,void>(&v32, v9, v7, v10);
  v11 = 126 - 2 * __clz(v33);
  if (v33)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(v32, v32 + 3 * v33, v12, 1);
  v13 = v32;
  if (v33)
  {
    v14 = 24 * v33;
    do
    {
      v15 = *v13;
      v30 = 0;
      v31 = v15;
      if (llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(v3, &v31, &v30))
      {
        v17 = v13[1];
        if (v17 <= 3)
        {
          v25 = *v13;
          **v13 = a2;
          if (a2)
          {
            llvm::MetadataTracking::track(v25, a2, 2);
          }

          llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::erase(v3, v13);
        }

        else
        {
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v17 & 2) != 0)
          {
            v26 = *v13;
            if (v18->n128_u8[0] == 33)
            {
              llvm::DIArgList::handleChangedOperand(v18, v26, a2);
            }

            else
            {
              llvm::MDNode::handleChangedOperand(v18, v26, a2, v16);
            }
          }

          else
          {
            v19 = *v18->n128_u64[0];
            v31 = canonicalizeMetadataForValue(v19, a2);
            v20 = *v19;
            llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(v20 + 456, &v18[1].n128_u64[1]);
            v21 = v18[1].n128_i64[1];
            if (v21)
            {
              llvm::MetadataTracking::untrack(&v18[1].n128_i64[1], v21);
            }

            v18[1].n128_u64[1] = 0;
            v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v20 + 456), &v31);
            v24 = v22[1];
            if (v24)
            {
              llvm::Value::doRAUW(v18, v24, 1, v23);
              llvm::MetadataAsValue::~MetadataAsValue(v18);
              MEMORY[0x277C69E40]();
            }

            else
            {
              v27 = v22;
              v28 = v31;
              v18[1].n128_u64[1] = v31;
              if (v28)
              {
                llvm::MetadataTracking::track(&v18[1].n128_i64[1], v28, v18);
              }

              v27[1] = v18;
            }
          }
        }
      }

      v13 += 3;
      v14 -= 24;
    }

    while (v14);
    v13 = v32;
  }

  if (v13 != v34)
  {
    free(v13);
  }

LABEL_39:
  v29 = *MEMORY[0x277D85DE8];
}

void llvm::ReplaceableMetadataImpl::resolveAllUses(llvm::ReplaceableMetadataImpl *this, char a2)
{
  v29[24] = *MEMORY[0x277D85DE8];
  v3 = (this + 16);
  v2 = *(this + 4);
  if (v2 < 2)
  {
LABEL_39:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2)
  {
    if (v2)
    {
      v6 = this + 120;
      v4 = this + 24;
    }

    else
    {
      v4 = *(this + 3);
      v5 = *(this + 8);
      v6 = &v4[24 * v5];
      if (!v5)
      {
        v7 = 0;
        v8 = *(this + 3);
        goto LABEL_16;
      }
    }

    v8 = v4;
    while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v8 += 24;
      if (v8 == v6)
      {
        v8 = v6;
        break;
      }
    }

    if (v2)
    {
      v11 = this + 120;
      goto LABEL_18;
    }

    v4 = *(this + 3);
    v7 = *(this + 8);
LABEL_16:
    v11 = &v4[24 * v7];
LABEL_18:
    v27 = v29;
    v28 = 0x800000000;
    llvm::SmallVectorImpl<std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::append<llvm::DenseMapIterator<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>,false>,void>(&v27, v8, v6, v11);
    v12 = 126 - 2 * __clz(v28);
    if (v28)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::ReplaceableMetadataImpl::resolveAllUses(BOOL)::$_0 &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(v27, v27 + 3 * v28, v13, 1);
    llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::clear(v3);
    v14 = v27;
    if (v28)
    {
      v15 = 24 * v28;
      v16 = (v27 + 8);
      do
      {
        v18 = *v16;
        v16 += 3;
        v17 = v18;
        v19 = v18 & 2;
        if (v18 >= 4 && v19 != 0)
        {
          v21 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          v22 = llvm::MDNode::classof((v17 & 0xFFFFFFFFFFFFFFFCLL));
          if (v21)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23 && (v21[1] & 0x7F) != 2)
          {
            v24 = *(v21 - 2);
            if (v24)
            {
              v25 = v24 - 1;
              *(v21 - 2) = v25;
              if (!v25)
              {
                llvm::MDNode::dropReplaceableUses(v21);
              }
            }
          }
        }

        v15 -= 24;
      }

      while (v15);
      v14 = v27;
    }

    if (v14 != v29)
    {
      free(v14);
    }

    goto LABEL_39;
  }

  v9 = *MEMORY[0x277D85DE8];
  v10 = (this + 16);

  llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::clear(v10);
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::clear(void *result)
{
  v1 = *result;
  if (*result > 1u || *(result + 1))
  {
    if (v1)
    {
      v3 = (result + 1);
      v4 = (result + 13);
    }

    else
    {
      v2 = *(result + 4);
      if (v2 > 2 * v1 && v2 >= 0x41)
      {
        return llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::shrink_and_clear(result);
      }

      if (!v2)
      {
        v9 = 0;
LABEL_17:
        *result = v9;
        *(result + 1) = 0;
        return result;
      }

      v3 = result[1];
      v4 = &v3[24 * v2];
    }

    v5 = 0;
    v6 = v4 - v3 - 24;
    v7 = vdupq_n_s64(v6 / 0x18);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_2750C1210)));
      if (v8.i8[0])
      {
        *v3 = -4096;
      }

      if (v8.i8[4])
      {
        *(v3 + 3) = -4096;
      }

      v5 += 2;
      v3 += 48;
    }

    while (((v6 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v5);
    v9 = *result & 1;
    goto LABEL_17;
  }

  return result;
}

unint64_t llvm::ContextAndReplaceableUses::getOrCreateReplaceableUses(llvm::ContextAndReplaceableUses *this)
{
  if ((*this & 4) == 0)
  {
    operator new();
  }

  return *this & 0xFFFFFFFFFFFFFFF8;
}

void llvm::ValueAsMetadata::handleDeletion(llvm::ValueAsMetadata *this, llvm::Value *a2)
{
  v2 = ***this;
  v5 = this;
  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v2 + 432), &v5, &v6))
  {
    v3 = v6 == (*(v2 + 432) + 16 * *(v2 + 448));
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v6[1];
    *v6 = -8192;
    *(v2 + 440) = vadd_s32(*(v2 + 440), 0x1FFFFFFFFLL);
    llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v4 + 8, 0);
    if (v4)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        MEMORY[0x277C69E30](*(v4 + 32), 8);
      }

      MEMORY[0x277C69E40](v4, 0x1020C4072C728BCLL);
    }
  }
}

uint64_t llvm::ValueAsMetadata::handleRAUW(llvm::ValueAsMetadata *this, llvm::Value *a2, llvm::Value *a3)
{
  v16 = a2;
  v5 = ***this;
  v17 = this;
  v18 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v5 + 432), &v17, &v18);
  v8 = v18;
  if (result)
  {
    v9 = v18 == (*(v5 + 432) + 16 * *(v5 + 448));
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return result;
  }

  *(this + 5) &= ~0x8000000u;
  v10 = v8[1];
  *v8 = -8192;
  *(v5 + 440) = vadd_s32(*(v5 + 440), 0x1FFFFFFFFLL);
  v11 = *(a2 + 16);
  if (*v10 == 2)
  {
    if (v11 <= 0x14)
    {
      v14 = llvm::ValueAsMetadata::get(a2, v7);
LABEL_15:
      v13 = v10 + 8;
      goto LABEL_16;
    }

    if (getLocalFunctionMetadata(this))
    {
      if (getLocalFunctionMetadata(a2))
      {
        LocalFunctionMetadata = getLocalFunctionMetadata(this);
        if (LocalFunctionMetadata != getLocalFunctionMetadata(a2))
        {
          goto LABEL_10;
        }
      }
    }

LABEL_12:
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((v5 + 432), &v16);
    v14 = *(result + 8);
    if (!v14)
    {
      v15 = v16;
      *(v16 + 5) |= 0x8000000u;
      *(v10 + 128) = v15;
      *(result + 8) = v10;
      return result;
    }

    goto LABEL_15;
  }

  if (v11 < 0x15)
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = v10 + 8;
  v14 = 0;
LABEL_16:
  llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v13, v14);
  if ((*(v10 + 24) & 1) == 0)
  {
    MEMORY[0x277C69E30](*(v10 + 32), 8);
  }

  return MEMORY[0x277C69E40](v10, 0x1020C4072C728BCLL);
}

uint64_t getLocalFunctionMetadata(llvm::Value *a1)
{
  if (!a1 || *(a1 + 16) != 21)
  {
    v2 = *(a1 + 5);
    if (!v2)
    {
      return 0;
    }

    v1 = *(v2 + 56);
    if (!v1)
    {
      return 0;
    }

    return llvm::Value::getMetadata(v1, 0);
  }

  v1 = *(a1 + 3);
  if (v1)
  {
    return llvm::Value::getMetadata(v1, 0);
  }

  return 0;
}

uint64_t *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
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

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1 + 24, a3 + 25, 3);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  v11[1] = 0;
  v11[2] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

char *llvm::MDNode::operator new(uint64_t a1, unint64_t a2, int a3)
{
  v5 = 2 * (a3 != 0);
  if (v5 <= a2)
  {
    LODWORD(v5) = a2;
  }

  v6 = 8 * v5 + 16;
  if (a2 >= 0x10)
  {
    v7 = 32;
  }

  else
  {
    v7 = v6;
  }

  v8 = operator new(v7 + a1) + v7;
  llvm::MDNode::Header::Header((v8 - 16), a2, a3);
  return v8;
}

uint64_t llvm::MDNode::MDNode(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  *a1 = a3;
  *(a1 + 1) = a4 & 0x7F;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = a2;
  if (!a6)
  {
    LODWORD(v12) = 0;
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v13 = 8 * a6;
  do
  {
    llvm::MDNode::setOperand(a1, v12, *(a5 + 8 * v12));
    ++v12;
    v13 -= 8;
  }

  while (v13);
  if (a8)
  {
LABEL_7:
    v14 = 8 * a8;
    do
    {
      v15 = *a7++;
      llvm::MDNode::setOperand(a1, v12, v15);
      LODWORD(v12) = v12 + 1;
      v14 -= 8;
    }

    while (v14);
  }

LABEL_9:
  if ((*(a1 + 1) & 0x7F) == 0)
  {
    llvm::MDNode::countUnresolvedOperands(a1);
  }

  return a1;
}

uint64_t *llvm::MDNode::setOperand(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 - 16);
  if ((v4 & 2) != 0)
  {
    v5 = *(a1 - 32);
  }

  else
  {
    v5 = a1 - 16 - 8 * ((v4 >> 2) & 0xF);
  }

  v6 = (v5 + 8 * a2);
  if ((*(a1 + 1) & 0x7F) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  return llvm::MDOperand::reset(v6, a3, v7);
}

uint64_t llvm::MDNode::countUnresolvedOperands(uint64_t this)
{
  v1 = this;
  v2 = *(this - 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(this - 32);
    v4 = *(this - 24);
  }

  else
  {
    v3 = (this - 16 - 8 * ((v2 >> 2) & 0xF));
    v4 = (v2 >> 6) & 0xF;
  }

  v5 = 0;
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      v7 = *v3;
      if (*v3 && (this = llvm::MDNode::classof(*v3), this))
      {
        v8 = (*(v7 + 1) & 0x7F) == 2 || *(v7 - 8) != 0;
      }

      else
      {
        v8 = 0;
      }

      v5 += v8;
      ++v3;
      v6 -= 8;
    }

    while (v6);
  }

  *(v1 - 8) = v5;
  return this;
}

uint64_t llvm::MDNode::Header::Header(uint64_t a1, unint64_t a2, int a3)
{
  v4 = 2 * (a3 != 0);
  if (v4 <= a2)
  {
    v4 = a2;
  }

  v5 = 4 * (v4 & 0xF);
  if (a2 >= 0x10)
  {
    v5 = 8;
  }

  if (a3)
  {
    ++v5;
  }

  *(a1 + 8) = 0;
  v6 = v5 | *a1 & 0xFFFFFFFFFFFFFFC0;
  if (a2 >= 0x10)
  {
    *(a1 - 8) = 0;
    *a1 = v6 & 0xFFFFFFFFFFFFFC3DLL | 2;
    *(a1 - 16) = a1;
    llvm::SmallVectorImpl<llvm::MDOperand>::resizeImpl<false>(a1 - 16, a2);
  }

  else
  {
    *a1 = v6 & 0xFFFFFFFFFFFFFC3DLL | (a2 << 6);
    if (v4)
    {
      bzero((a1 - 8 * v4), 8 * v4);
    }
  }

  return a1;
}

void llvm::MDNode::Header::~Header(char **this)
{
  if ((*this & 2) != 0)
  {
    llvm::SmallVector<llvm::MDOperand,0u>::~SmallVector(this - 2);
  }

  else
  {
    v1 = (*this >> 2) & 0xF;
    if (v1)
    {
      v2 = -8 * v1;
      v3 = (this - 1);
      do
      {
        if (*v3)
        {
          llvm::MetadataTracking::untrack(v3, *v3);
        }

        --v3;
        v2 += 8;
      }

      while (v2);
    }
  }
}

uint64_t *llvm::MDOperand::reset(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*result)
  {
    result = llvm::MetadataTracking::untrack(result, *result);
  }

  *v5 = a2;
  if (a2)
  {

    return llvm::MetadataTracking::track(v5, a2, a3 | 2);
  }

  return result;
}

uint64_t *llvm::MDNode::dropReplaceableUses(uint64_t *this)
{
  v1 = this[1];
  if ((v1 & 4) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
    v3 = v2;
    this[1] = *v2 & 0xFFFFFFFFFFFFFFFBLL;
    llvm::ReplaceableMetadataImpl::resolveAllUses(v2, 1);
    return std::unique_ptr<llvm::ReplaceableMetadataImpl>::~unique_ptr[abi:nn200100](&v3);
  }

  return this;
}

void llvm::MDNode::storeDistinctInContext(llvm::MDNode *this)
{
  *(this + 1) = *(this + 1) & 0x80 | 1;
  v1 = *this;
  if ((v1 - 9) >= 0x1B && (v1 - 5) >= 3)
  {
    *(this + 1) = 0;
  }

  v2 = *(this + 1);
  v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 4) != 0)
  {
    v3 = *v3;
  }

  v4 = *v3;
  v5 = *(*v3 + 1240);
  v6 = *(*v3 + 1248);
  if (v5 >= v6)
  {
    v8 = v4[154];
    v9 = (v5 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v6 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>((v4 + 154), v12);
    }

    v13 = (8 * v9);
    *v13 = this;
    v7 = 8 * v9 + 8;
    v14 = v4[154];
    v15 = v4[155] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v4[154];
    v4[154] = v16;
    v4[155] = v7;
    v4[156] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = this;
    v7 = (v5 + 1);
  }

  v4[155] = v7;
}

uint64_t *std::unique_ptr<llvm::ReplaceableMetadataImpl>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(v2 + 16) & 1) == 0)
    {
      MEMORY[0x277C69E30](*(v2 + 24), 8);
    }

    MEMORY[0x277C69E40](v2, 0x1020C408B843D01);
  }

  return a1;
}

uint64_t llvm::MDNode::resolveCycles(uint64_t this)
{
  v1 = this;
  if ((*(this + 1) & 0x7F) == 2 || *(this - 8))
  {
    *(this - 8) = 0;
    this = llvm::MDNode::dropReplaceableUses(this);
    v2 = *(v1 - 16);
    if ((v2 & 2) != 0)
    {
      v3 = *(v1 - 32);
      v4 = *(v1 - 24);
      if (!*(v1 - 24))
      {
        return this;
      }
    }

    else
    {
      v3 = (v1 - 16 - 8 * ((v2 >> 2) & 0xF));
      v4 = (v2 >> 6) & 0xF;
      if (!v4)
      {
        return this;
      }
    }

    v5 = 8 * v4;
    do
    {
      v6 = *v3;
      if (*v3)
      {
        this = llvm::MDNode::classof(*v3);
        if (this)
        {
          if ((*(v6 + 1) & 0x7F) == 2 || *(v6 - 2))
          {
            this = llvm::MDNode::resolveCycles(v6);
          }
        }
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

__n128 *llvm::MDNode::uniquify(__n128 *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  switch(this->n128_u8[0])
  {
    case 5u:
      v71 = this->n128_u64[1];
      v72 = (v71 & 0xFFFFFFFFFFFFFFF8);
      if ((v71 & 4) != 0)
      {
        v72 = *v72;
      }

      v73 = *v72;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DILocation>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocation>>(v73 + 63, &v140, &v145))
      {
        v74 = v145 == (v73[63] + 8 * *(v73 + 130));
      }

      else
      {
        v74 = 1;
      }

      if (!v74)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v73 + 63), &v144, &v140);
      return v144;
    case 6u:
      v47 = this->n128_u64[1];
      v48 = (v47 & 0xFFFFFFFFFFFFFFF8);
      if ((v47 & 4) != 0)
      {
        v48 = *v48;
      }

      v49 = *v48;
      v144 = this;
      v145 = 0;
      v50 = (this[1].n128_u64[1] - this[1].n128_u64[0]) >> 3;
      v140.n128_u64[0] = this[1].n128_u64[0];
      v140.n128_u64[1] = v50;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIExpression>>(v49 + 66, &v140, &v145, a4))
      {
        v52 = v145 == (v49[66] + 8 * *(v49 + 136));
      }

      else
      {
        v52 = 1;
      }

      if (!v52)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v49 + 66), &v144, v51, &v140);
      break;
    case 7u:
      v57 = this->n128_u64[1];
      v58 = (v57 & 0xFFFFFFFFFFFFFFF8);
      if ((v57 & 4) != 0)
      {
        v58 = *v58;
      }

      v59 = *v58;
      v144 = this;
      v60 = this[-1].n128_u64[0];
      if ((v60 & 2) != 0)
      {
        v61 = this[-2].n128_u64[0];
      }

      else
      {
        v61 = (this - 8 * ((v60 >> 2) & 0xF) - 16);
      }

      v140 = *v61;
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariableExpression>>(v59 + 69, &v140, &v145))
      {
        v136 = v145 == (v59[69] + 8 * *(v59 + 142));
      }

      else
      {
        v136 = 1;
      }

      if (!v136)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v59 + 69), &v144, &v140);
      break;
    case 8u:
      this->n128_u32[1] = llvm::MDNodeOpsKey::calculateHash(this, 1, a3, a4);
      v27 = v4->n128_u64[1];
      v28 = (v27 & 0xFFFFFFFFFFFFFFF8);
      if ((v27 & 4) != 0)
      {
        v28 = *v28;
      }

      v29 = *v28;
      v144 = v4;
      llvm::MDNodeKeyImpl<llvm::GenericDINode>::MDNodeKeyImpl(&v140, v4);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::GenericDINode>>(v29 + 72, &v140, &v145))
      {
        v30 = v145 == (v29[72] + 8 * *(v29 + 148));
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v29 + 72), &v144, &v140);
      break;
    case 9u:
      v87 = this->n128_u64[1];
      v88 = (v87 & 0xFFFFFFFFFFFFFFF8);
      if ((v87 & 4) != 0)
      {
        v88 = *v88;
      }

      v89 = *v88;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DISubrange>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubrange>>(v89 + 75, &v140, &v145))
      {
        v90 = v145 == (v89[75] + 8 * *(v89 + 154));
      }

      else
      {
        v90 = 1;
      }

      if (!v90)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v89 + 75), &v144, &v140);
      break;
    case 0xAu:
      v91 = this->n128_u64[1];
      v92 = (v91 & 0xFFFFFFFFFFFFFFF8);
      if ((v91 & 4) != 0)
      {
        v92 = *v92;
      }

      v93 = *v92;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIEnumerator>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      v18 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIEnumerator>>(v93 + 78, &v140, &v145))
      {
        v94 = v145 == (v93[78] + 8 * *(v93 + 160));
      }

      else
      {
        v94 = 1;
      }

      if (!v94)
      {
        v18 = v145->n128_u64[0];
      }

      if (v140.n128_u32[2] >= 0x41 && v140.n128_u64[0])
      {
        MEMORY[0x277C69E10](v140.n128_u64[0], 0x1000C8000313F17);
      }

      if (v18)
      {
        return v18;
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v93 + 78), &v144, &v140);
      break;
    case 0xBu:
      v62 = this->n128_u64[1];
      v63 = (v62 & 0xFFFFFFFFFFFFFFF8);
      if ((v62 & 4) != 0)
      {
        v63 = *v63;
      }

      v64 = *v63;
      v144 = this;
      v65 = this[-1].n128_u64[0];
      v140.n128_u32[0] = this->n128_u16[1];
      if ((v65 & 2) != 0)
      {
        v66 = this[-2].n128_i64[0];
      }

      else
      {
        v66 = &this[-1] - 8 * ((v65 >> 2) & 0xF);
      }

      v137 = this[1].n128_u64[1];
      v140.n128_u64[1] = *(v66 + 16);
      v141 = v137;
      v142 = this[2].n128_i64[1];
      v143 = this[1].n128_u32[1];
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIBasicType>>(v64 + 81, &v140, &v145))
      {
        v138 = v145 == (v64[81] + 8 * *(v64 + 166));
      }

      else
      {
        v138 = 1;
      }

      if (!v138)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v64 + 81), &v144, &v140);
      break;
    case 0xCu:
      v100 = this->n128_u64[1];
      v101 = (v100 & 0xFFFFFFFFFFFFFFF8);
      if ((v100 & 4) != 0)
      {
        v101 = *v101;
      }

      v102 = *v101;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIDerivedType>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIDerivedType>>(v102 + 84, &v140, &v145))
      {
        v103 = v145 == (v102[84] + 8 * *(v102 + 172));
      }

      else
      {
        v103 = 1;
      }

      if (!v103)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v102 + 84), &v144, &v140);
      break;
    case 0xDu:
      v43 = this->n128_u64[1];
      v44 = (v43 & 0xFFFFFFFFFFFFFFF8);
      if ((v43 & 4) != 0)
      {
        v44 = *v44;
      }

      v45 = *v44;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DICompositeType>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICompositeType>>(v45 + 87, &v140, &v145))
      {
        v46 = v145 == (v45[87] + 8 * *(v45 + 178));
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v45 + 87), &v144, &v140);
      break;
    case 0xEu:
      v95 = this->n128_u64[1];
      v96 = (v95 & 0xFFFFFFFFFFFFFFF8);
      if ((v95 & 4) != 0)
      {
        v96 = *v96;
      }

      v97 = *v96;
      v144 = this;
      v98 = this[-1].n128_u64[0];
      v140.n128_u32[0] = this[1].n128_u32[1];
      v140.n128_u8[4] = this[2].n128_u8[12];
      if ((v98 & 2) != 0)
      {
        v99 = this[-2].n128_i64[0];
      }

      else
      {
        v99 = &this[-1] - 8 * ((v98 >> 2) & 0xF);
      }

      v140.n128_u64[1] = *(v99 + 24);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubroutineType>>(v97 + 90, &v140, &v145))
      {
        v139 = v145 == (v97[90] + 8 * *(v97 + 184));
      }

      else
      {
        v139 = 1;
      }

      if (!v139)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v97 + 90), &v144, &v140);
      break;
    case 0xFu:
      v23 = this->n128_u64[1];
      v24 = (v23 & 0xFFFFFFFFFFFFFFF8);
      if ((v23 & 4) != 0)
      {
        v24 = *v24;
      }

      v25 = *v24;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIFile>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIFile>>(v25 + 93, &v140, &v145))
      {
        v26 = v145 == (v25[93] + 8 * *(v25 + 190));
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v25 + 93), &v144, &v140);
      break;
    case 0x10u:
    case 0x1Du:
      __break(1u);
      return this;
    case 0x11u:
      v19 = this->n128_u64[1];
      v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
      if ((v19 & 4) != 0)
      {
        v20 = *v20;
      }

      v21 = *v20;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DISubprogram>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DISubprogram>>(v21 + 96, &v140, &v145))
      {
        v22 = v145 == (v21[96] + 8 * *(v21 + 196));
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v21 + 96), &v144, &v140);
      break;
    case 0x12u:
      v53 = this->n128_u64[1];
      v54 = (v53 & 0xFFFFFFFFFFFFFFF8);
      if ((v53 & 4) != 0)
      {
        v54 = *v54;
      }

      v55 = *v54;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DILexicalBlock>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlock>>(v55 + 99, &v140, &v145))
      {
        v56 = v145 == (v55[99] + 8 * *(v55 + 202));
      }

      else
      {
        v56 = 1;
      }

      if (!v56)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v55 + 99), &v144, &v140);
      break;
    case 0x13u:
      v108 = this->n128_u64[1];
      v109 = (v108 & 0xFFFFFFFFFFFFFFF8);
      if ((v108 & 4) != 0)
      {
        v109 = *v109;
      }

      v110 = *v109;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILexicalBlockFile>>(v110 + 102, &v140, &v145))
      {
        v111 = v145 == (v110[102] + 8 * *(v110 + 208));
      }

      else
      {
        v111 = 1;
      }

      if (!v111)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v110 + 102), &v144, &v140);
      break;
    case 0x14u:
      v35 = this->n128_u64[1];
      v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
      if ((v35 & 4) != 0)
      {
        v36 = *v36;
      }

      v37 = *v36;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DINamespace>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DINamespace>>(v37 + 105, &v140, &v145))
      {
        v38 = v145 == (v37[105] + 8 * *(v37 + 214));
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v37 + 105), &v144, &v140);
      break;
    case 0x15u:
      v116 = this->n128_u64[1];
      v117 = (v116 & 0xFFFFFFFFFFFFFFF8);
      if ((v116 & 4) != 0)
      {
        v117 = *v117;
      }

      v118 = *v117;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIModule>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIModule>>(v118 + 108, &v140, &v145))
      {
        v119 = v145 == (v118[108] + 8 * *(v118 + 220));
      }

      else
      {
        v119 = 1;
      }

      if (!v119)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v118 + 108), &v144, &v140);
      break;
    case 0x16u:
      v67 = this->n128_u64[1];
      v68 = (v67 & 0xFFFFFFFFFFFFFFF8);
      if ((v67 & 4) != 0)
      {
        v68 = *v68;
      }

      v69 = *v68;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateTypeParameter>>(v69 + 111, &v140, &v145))
      {
        v70 = v145 == (v69[111] + 8 * *(v69 + 226));
      }

      else
      {
        v70 = 1;
      }

      if (!v70)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v69 + 111), &v144, &v140);
      break;
    case 0x17u:
      v83 = this->n128_u64[1];
      v84 = (v83 & 0xFFFFFFFFFFFFFFF8);
      if ((v83 & 4) != 0)
      {
        v84 = *v84;
      }

      v85 = *v84;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DITemplateValueParameter>>(v85 + 114, &v140, &v145))
      {
        v86 = v145 == (v85[114] + 8 * *(v85 + 232));
      }

      else
      {
        v86 = 1;
      }

      if (!v86)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v85 + 114), &v144, &v140);
      break;
    case 0x18u:
      v112 = this->n128_u64[1];
      v113 = (v112 & 0xFFFFFFFFFFFFFFF8);
      if ((v112 & 4) != 0)
      {
        v113 = *v113;
      }

      v114 = *v113;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGlobalVariable>>(v114 + 117, &v140, &v145))
      {
        v115 = v145 == (v114[117] + 8 * *(v114 + 238));
      }

      else
      {
        v115 = 1;
      }

      if (!v115)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v114 + 117), &v144, &v140);
      break;
    case 0x19u:
      v75 = this->n128_u64[1];
      v76 = (v75 & 0xFFFFFFFFFFFFFFF8);
      if ((v75 & 4) != 0)
      {
        v76 = *v76;
      }

      v77 = *v76;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DILocalVariable>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILocalVariable>>(v77 + 120, &v140, &v145))
      {
        v78 = v145 == (v77[120] + 8 * *(v77 + 244));
      }

      else
      {
        v78 = 1;
      }

      if (!v78)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v77 + 120), &v144, &v140);
      break;
    case 0x1Au:
      v79 = this->n128_u64[1];
      v80 = (v79 & 0xFFFFFFFFFFFFFFF8);
      if ((v79 & 4) != 0)
      {
        v80 = *v80;
      }

      v81 = *v80;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DILabel>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DILabel>>(v81 + 123, &v140, &v145))
      {
        v82 = v145 == (v81[123] + 8 * *(v81 + 250));
      }

      else
      {
        v82 = 1;
      }

      if (!v82)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v81 + 123), &v144, &v140);
      break;
    case 0x1Bu:
      v104 = this->n128_u64[1];
      v105 = (v104 & 0xFFFFFFFFFFFFFFF8);
      if ((v104 & 4) != 0)
      {
        v105 = *v105;
      }

      v106 = *v105;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIObjCProperty>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIObjCProperty>>(v106 + 126, &v140, &v145))
      {
        v107 = v145 == (v106[126] + 8 * *(v106 + 256));
      }

      else
      {
        v107 = 1;
      }

      if (!v107)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v106 + 126), &v144, &v140);
      break;
    case 0x1Cu:
      v120 = this->n128_u64[1];
      v121 = (v120 & 0xFFFFFFFFFFFFFFF8);
      if ((v120 & 4) != 0)
      {
        v121 = *v121;
      }

      v122 = *v121;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIImportedEntity>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIImportedEntity>>(v122 + 129, &v140, &v145))
      {
        v123 = v145 == (v122[129] + 8 * *(v122 + 262));
      }

      else
      {
        v123 = 1;
      }

      if (!v123)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v122 + 129), &v144, &v140);
      break;
    case 0x1Eu:
      v39 = this->n128_u64[1];
      v40 = (v39 & 0xFFFFFFFFFFFFFFF8);
      if ((v39 & 4) != 0)
      {
        v40 = *v40;
      }

      v41 = *v40;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIMacro>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIMacro>>(v41 + 132, &v140, &v145))
      {
        v42 = v145 == (v41[132] + 8 * *(v41 + 268));
      }

      else
      {
        v42 = 1;
      }

      if (!v42)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v41 + 132), &v144, &v140);
      break;
    case 0x1Fu:
      v31 = this->n128_u64[1];
      v32 = (v31 & 0xFFFFFFFFFFFFFFF8);
      if ((v31 & 4) != 0)
      {
        v32 = *v32;
      }

      v33 = *v32;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIMacro>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIMacro>>(v33 + 135, &v140, &v145))
      {
        v34 = v145 == (v33[135] + 8 * *(v33 + 274));
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v33 + 135), &v144, &v140);
      break;
    case 0x20u:
      v132 = this->n128_u64[1];
      v133 = (v132 & 0xFFFFFFFFFFFFFFF8);
      if ((v132 & 4) != 0)
      {
        v133 = *v133;
      }

      v134 = *v133;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DICommonBlock>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DICommonBlock>>(v134 + 138, &v140, &v145))
      {
        v135 = v145 == (v134[138] + 8 * *(v134 + 280));
      }

      else
      {
        v135 = 1;
      }

      if (!v135)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v134 + 138), &v144, &v140);
      break;
    case 0x21u:
      v12 = this->n128_u64[1];
      v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 4) != 0)
      {
        v13 = *v13;
      }

      v14 = *v13;
      v144 = this;
      v145 = 0;
      v15 = this[1].n128_u32[2];
      v140.n128_u64[0] = this[1].n128_u64[0];
      v140.n128_u64[1] = v15;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIArgList>>(v14 + 141, &v140, &v145, a4))
      {
        v17 = v145 == (v14[141] + 8 * *(v14 + 286));
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v14 + 141), &v144, v16, &v140);
      break;
    case 0x22u:
      v124 = this->n128_u64[1];
      v125 = (v124 & 0xFFFFFFFFFFFFFFF8);
      if ((v124 & 4) != 0)
      {
        v125 = *v125;
      }

      v126 = *v125;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DIStringType>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIStringType>>(v126 + 144, &v140, &v145))
      {
        v127 = v145 == (v126[144] + 8 * *(v126 + 292));
      }

      else
      {
        v127 = 1;
      }

      if (!v127)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v126 + 144), &v144, &v140);
      break;
    case 0x23u:
      v128 = this->n128_u64[1];
      v129 = (v128 & 0xFFFFFFFFFFFFFFF8);
      if ((v128 & 4) != 0)
      {
        v129 = *v129;
      }

      v130 = *v129;
      v144 = this;
      llvm::MDNodeKeyImpl<llvm::DISubrange>::MDNodeKeyImpl(&v140, this);
      v145 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>,llvm::DIGenericSubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGenericSubrange>,llvm::detail::DenseSetPair<llvm::DIGenericSubrange *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::DIGenericSubrange>>(v130 + 147, &v140, &v145))
      {
        v131 = v145 == (v130[147] + 8 * *(v130 + 298));
      }

      else
      {
        v131 = 1;
      }

      if (!v131)
      {
        v18 = v145->n128_u64[0];
        if (v145->n128_u64[0])
        {
          return v18;
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v130 + 147), &v144, &v140);
      break;
    default:
      v5 = llvm::MDNodeOpsKey::calculateHash(this, 0, a3, a4);
      v4->n128_u32[1] = v5;
      v6 = v4->n128_u64[1];
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 4) != 0)
      {
        v7 = *v7;
      }

      v8 = *v7;
      v145 = v4;
      v140 = 0uLL;
      v9 = v4[-1].n128_u64[0];
      if ((v9 & 2) != 0)
      {
        v10 = v4[-2].n128_i64[0];
        v11 = v4[-2].n128_u32[2];
      }

      else
      {
        v10 = &v4[-1] - 8 * ((v9 >> 2) & 0xF);
        v11 = (v9 >> 6) & 0xF;
      }

      v141 = v10;
      v142 = v11;
      v143 = v5;
      v18 = llvm::getUniqued<llvm::MDTuple,llvm::MDNodeInfo<llvm::MDTuple>>((v8 + 60), &v140);
      if (!v18)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v8 + 60), &v145, &v140);
        return v145;
      }

      return v18;
  }

  return v144;
}

void llvm::MDNode::deleteAsSubclass(llvm::MDNode *this)
{
  switch(*this)
  {
    case 6:
      llvm::DIExpression::~DIExpression(this);
      break;
    case 7:
    case 9:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x22:
    case 0x23:
      goto LABEL_2;
    case 0xA:
      llvm::DIEnumerator::~DIEnumerator(this);
      break;
    case 0x21:
      llvm::DIArgList::~DIArgList(this);
      break;
    default:
      llvm::MDNode::dropAllReferences(this);
LABEL_2:
      llvm::ContextAndReplaceableUses::~ContextAndReplaceableUses((this + 8));
      break;
  }

  v2 = (this - 16);
  v3 = this - ((2 * *(this - 2)) & 0x78) - 16;
  llvm::MDNode::Header::~Header(v2);

  operator delete(v3);
}

uint64_t *llvm::MDNode::dropAllReferences(uint64_t *this)
{
  v1 = this;
  v2 = *(this - 2);
  if ((v2 & 2) != 0)
  {
    v3 = *(this - 6);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = (v2 >> 6) & 0xF;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  for (i = 0; i != v3; ++i)
  {
    this = llvm::MDNode::setOperand(v1, i, 0);
  }

LABEL_7:
  v5 = *(v1 + 8);
  if ((v5 & 4) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if (*(v6 + 4) >= 2u)
    {
      llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::clear(v6 + 2);
      v6 = (*(v1 + 8) & ((*(v1 + 8) << 61) >> 63) & 0xFFFFFFFFFFFFFFF8);
    }

    v7 = v6;
    *(v1 + 8) = *v6 & 0xFFFFFFFFFFFFFFFBLL;
    return std::unique_ptr<llvm::ReplaceableMetadataImpl>::~unique_ptr[abi:nn200100](&v7);
  }

  return this;
}

__n128 *llvm::MDNode::eraseFromStore(__n128 *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this->n128_u64[1];
  v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
  switch(this->n128_u8[0])
  {
    case 5u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v20 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>,llvm::DILocation *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocation>,llvm::detail::DenseSetPair<llvm::DILocation *>>::LookupBucketFor<llvm::DILocation *>(v20 + 63, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v20[64] = vadd_s32(v20[64], 0x1FFFFFFFFLL);
      }

      break;
    case 6u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v15 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>,llvm::DIExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIExpression>,llvm::detail::DenseSetPair<llvm::DIExpression *>>::LookupBucketFor<llvm::DIExpression *>(v15 + 66, &v36, &v37, a4);
      if (this)
      {
        *v37 = -8192;
        v15[67] = vadd_s32(v15[67], 0x1FFFFFFFFLL);
      }

      break;
    case 7u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v17 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>,llvm::DIGlobalVariableExpression *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariableExpression>,llvm::detail::DenseSetPair<llvm::DIGlobalVariableExpression *>>::LookupBucketFor<llvm::DIGlobalVariableExpression *>(v17 + 69, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v17[70] = vadd_s32(v17[70], 0x1FFFFFFFFLL);
      }

      break;
    case 8u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v10 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>,llvm::GenericDINode *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::GenericDINode>,llvm::detail::DenseSetPair<llvm::GenericDINode *>>::LookupBucketFor<llvm::GenericDINode *>(v10 + 72, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v10[73] = vadd_s32(v10[73], 0x1FFFFFFFFLL);
      }

      break;
    case 9u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v24 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(v24 + 75, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v24[76] = vadd_s32(v24[76], 0x1FFFFFFFFLL);
      }

      break;
    case 0xAu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v25 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>,llvm::DIEnumerator *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIEnumerator>,llvm::detail::DenseSetPair<llvm::DIEnumerator *>>::LookupBucketFor<llvm::DIEnumerator *>(v25 + 78, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v25[79] = vadd_s32(v25[79], 0x1FFFFFFFFLL);
      }

      break;
    case 0xBu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v18 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>,llvm::DIBasicType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIBasicType>,llvm::detail::DenseSetPair<llvm::DIBasicType *>>::LookupBucketFor<llvm::DIBasicType *>(v18 + 81, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v18[82] = vadd_s32(v18[82], 0x1FFFFFFFFLL);
      }

      break;
    case 0xCu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v27 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>,llvm::DIDerivedType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIDerivedType>,llvm::detail::DenseSetPair<llvm::DIDerivedType *>>::LookupBucketFor<llvm::DIDerivedType *>(v27 + 84, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v27[85] = vadd_s32(v27[85], 0x1FFFFFFFFLL);
      }

      break;
    case 0xDu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v14 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>,llvm::DICompositeType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICompositeType>,llvm::detail::DenseSetPair<llvm::DICompositeType *>>::LookupBucketFor<llvm::DICompositeType *>(v14 + 87, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v14[88] = vadd_s32(v14[88], 0x1FFFFFFFFLL);
      }

      break;
    case 0xEu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v26 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>,llvm::DISubroutineType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubroutineType>,llvm::detail::DenseSetPair<llvm::DISubroutineType *>>::LookupBucketFor<llvm::DISubroutineType *>(v26 + 90, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v26[91] = vadd_s32(v26[91], 0x1FFFFFFFFLL);
      }

      break;
    case 0xFu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v9 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>,llvm::DIFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIFile>,llvm::detail::DenseSetPair<llvm::DIFile *>>::LookupBucketFor<llvm::DIFile *>(v9 + 93, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v9[94] = vadd_s32(v9[94], 0x1FFFFFFFFLL);
      }

      break;
    case 0x10u:
    case 0x1Du:
      __break(1u);
      break;
    case 0x11u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v8 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>,llvm::DISubprogram *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubprogram>,llvm::detail::DenseSetPair<llvm::DISubprogram *>>::LookupBucketFor<llvm::DISubprogram *>(v8 + 96, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v8[97] = vadd_s32(v8[97], 0x1FFFFFFFFLL);
      }

      break;
    case 0x12u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v16 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>,llvm::DILexicalBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlock>,llvm::detail::DenseSetPair<llvm::DILexicalBlock *>>::LookupBucketFor<llvm::DILexicalBlock *>(v16 + 99, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v16[100] = vadd_s32(v16[100], 0x1FFFFFFFFLL);
      }

      break;
    case 0x13u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v29 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>,llvm::DILexicalBlockFile *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILexicalBlockFile>,llvm::detail::DenseSetPair<llvm::DILexicalBlockFile *>>::LookupBucketFor<llvm::DILexicalBlockFile *>(v29 + 102, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v29[103] = vadd_s32(v29[103], 0x1FFFFFFFFLL);
      }

      break;
    case 0x14u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v12 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>,llvm::DINamespace *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DINamespace>,llvm::detail::DenseSetPair<llvm::DINamespace *>>::LookupBucketFor<llvm::DINamespace *>(v12 + 105, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v12[106] = vadd_s32(v12[106], 0x1FFFFFFFFLL);
      }

      break;
    case 0x15u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v31 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>,llvm::DIModule *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIModule>,llvm::detail::DenseSetPair<llvm::DIModule *>>::LookupBucketFor<llvm::DIModule *>(v31 + 108, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v31[109] = vadd_s32(v31[109], 0x1FFFFFFFFLL);
      }

      break;
    case 0x16u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v19 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>,llvm::DITemplateTypeParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateTypeParameter>,llvm::detail::DenseSetPair<llvm::DITemplateTypeParameter *>>::LookupBucketFor<llvm::DITemplateTypeParameter *>(v19 + 111, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v19[112] = vadd_s32(v19[112], 0x1FFFFFFFFLL);
      }

      break;
    case 0x17u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v23 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>,llvm::DITemplateValueParameter *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DITemplateValueParameter>,llvm::detail::DenseSetPair<llvm::DITemplateValueParameter *>>::LookupBucketFor<llvm::DITemplateValueParameter *>(v23 + 114, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v23[115] = vadd_s32(v23[115], 0x1FFFFFFFFLL);
      }

      break;
    case 0x18u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v30 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>,llvm::DIGlobalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIGlobalVariable>,llvm::detail::DenseSetPair<llvm::DIGlobalVariable *>>::LookupBucketFor<llvm::DIGlobalVariable *>(v30 + 117, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v30[118] = vadd_s32(v30[118], 0x1FFFFFFFFLL);
      }

      break;
    case 0x19u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v21 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>,llvm::DILocalVariable *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILocalVariable>,llvm::detail::DenseSetPair<llvm::DILocalVariable *>>::LookupBucketFor<llvm::DILocalVariable *>(v21 + 120, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v21[121] = vadd_s32(v21[121], 0x1FFFFFFFFLL);
      }

      break;
    case 0x1Au:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v22 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>,llvm::DILabel *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DILabel>,llvm::detail::DenseSetPair<llvm::DILabel *>>::LookupBucketFor<llvm::DILabel *>(v22 + 123, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v22[124] = vadd_s32(v22[124], 0x1FFFFFFFFLL);
      }

      break;
    case 0x1Bu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v28 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>,llvm::DIObjCProperty *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIObjCProperty>,llvm::detail::DenseSetPair<llvm::DIObjCProperty *>>::LookupBucketFor<llvm::DIObjCProperty *>(v28 + 126, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v28[127] = vadd_s32(v28[127], 0x1FFFFFFFFLL);
      }

      break;
    case 0x1Cu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v32 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>,llvm::DIImportedEntity *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIImportedEntity>,llvm::detail::DenseSetPair<llvm::DIImportedEntity *>>::LookupBucketFor<llvm::DIImportedEntity *>(v32 + 129, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v32[130] = vadd_s32(v32[130], 0x1FFFFFFFFLL);
      }

      break;
    case 0x1Eu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v13 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(v13 + 132, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v13[133] = vadd_s32(v13[133], 0x1FFFFFFFFLL);
      }

      break;
    case 0x1Fu:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v11 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>,llvm::DIMacro *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIMacro>,llvm::detail::DenseSetPair<llvm::DIMacro *>>::LookupBucketFor<llvm::DIMacro *>(v11 + 135, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v11[136] = vadd_s32(v11[136], 0x1FFFFFFFFLL);
      }

      break;
    case 0x20u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v35 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>,llvm::DICommonBlock *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DICommonBlock>,llvm::detail::DenseSetPair<llvm::DICommonBlock *>>::LookupBucketFor<llvm::DICommonBlock *>(v35 + 138, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v35[139] = vadd_s32(v35[139], 0x1FFFFFFFFLL);
      }

      break;
    case 0x21u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v7 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>,llvm::DIArgList *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIArgList>,llvm::detail::DenseSetPair<llvm::DIArgList *>>::LookupBucketFor<llvm::DIArgList *>(v7 + 141, &v36, &v37, a4);
      if (this)
      {
        *v37 = -8192;
        v7[142] = vadd_s32(v7[142], 0x1FFFFFFFFLL);
      }

      break;
    case 0x22u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v33 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>,llvm::DIStringType *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DIStringType>,llvm::detail::DenseSetPair<llvm::DIStringType *>>::LookupBucketFor<llvm::DIStringType *>(v33 + 144, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v33[145] = vadd_s32(v33[145], 0x1FFFFFFFFLL);
      }

      break;
    case 0x23u:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v34 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>,llvm::DISubrange *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::DISubrange>,llvm::detail::DenseSetPair<llvm::DISubrange *>>::LookupBucketFor<llvm::DISubrange *>(v34 + 147, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v34[148] = vadd_s32(v34[148], 0x1FFFFFFFFLL);
      }

      break;
    default:
      if ((v4 & 4) != 0)
      {
        v5 = *v5;
      }

      v6 = *v5;
      v36 = this;
      v37 = 0;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDTuple *>(v6 + 60, &v36, &v37);
      if (this)
      {
        *v37 = -8192;
        v6[61] = vadd_s32(v6[61], 0x1FFFFFFFFLL);
      }

      break;
  }

  return this;
}

llvm::MDNode *llvm::MDTuple::getImpl(void *a1, llvm::hashing::detail::hash_state *this, unint64_t a3, unint64_t *a4, int a5)
{
  v5 = a4;
  if (a4)
  {
    v9 = 0;
LABEL_8:
    v13 = llvm::MDNode::operator new(16, a3, v5);
    v14 = llvm::MDNode::MDNode(v13, a1, 4, v5, this, a3, 0, 0);
    *(v14 + 1) = v9;
    return llvm::MDNode::storeImpl<llvm::MDTuple,llvm::DenseSet<llvm::MDTuple*,llvm::MDNodeInfo<llvm::MDTuple>>>(v14, v5, *a1 + 480);
  }

  v15[0] = this;
  v15[1] = a3;
  v15[2] = 0;
  v15[3] = 0;
  v16 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(this, this + 8 * a3, a3, a4);
  result = llvm::getUniqued<llvm::MDTuple,llvm::MDNodeInfo<llvm::MDTuple>>(*a1 + 480, v15);
  if (result)
  {
    v12 = 1;
  }

  else
  {
    v12 = a5 == 0;
  }

  if (!v12)
  {
    v9 = v16;
    goto LABEL_8;
  }

  return result;
}

uint64_t llvm::getUniqued<llvm::MDTuple,llvm::MDNodeInfo<llvm::MDTuple>>(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::LookupBucketFor<llvm::MDNodeKeyImpl<llvm::MDTuple>>(a1, a2, &v5);
  result = 0;
  if (v3)
  {
    if (v5 != (*a1 + 8 * *(a1 + 16)))
    {
      return *v5;
    }
  }

  return result;
}

llvm::MDNode *llvm::MDNode::storeImpl<llvm::MDTuple,llvm::DenseSet<llvm::MDTuple*,llvm::MDNodeInfo<llvm::MDTuple>>>(llvm::MDNode *this, int a2, uint64_t a3)
{
  v3 = this;
  v5 = this;
  if (a2 == 1)
  {
    llvm::MDNode::storeDistinctInContext(this);
  }

  else if (!a2)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>,llvm::MDTuple *,llvm::detail::DenseSetEmpty,llvm::MDNodeInfo<llvm::MDTuple>,llvm::detail::DenseSetPair<llvm::MDTuple *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v5, v6);
    return v5;
  }

  return v3;
}

void llvm::MDNode::deleteTemporary(llvm::MDNode *this, llvm::MDNode *a2)
{
  v3 = *(this + 1);
  if ((v3 & 4) != 0)
  {
    llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v3 & 0xFFFFFFFFFFFFFFF8, 0);
  }

  llvm::MDNode::deleteAsSubclass(this);
}

void llvm::MDNode::replaceOperandWith(__n128 *a1, unsigned int a2, __n128 *a3, unint64_t *a4)
{
  v4 = a1 - 1;
  v5 = a1[-1].n128_u64[0];
  if ((v5 & 2) != 0)
  {
    v6 = a1[-2].n128_u64[0];
  }

  else
  {
    v6 = &v4->n128_u64[-((v5 >> 2) & 0xF)];
  }

  if (*(v6 + 8 * a2) != a3)
  {
    if ((a1->n128_u8[1] & 0x7F) != 0)
    {
      llvm::MDNode::setOperand(a1, a2, a3);
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v7 = a1[-2].n128_u64[0];
      }

      else
      {
        v7 = &v4->n128_u64[-((v5 >> 2) & 0xF)];
      }

      llvm::MDNode::handleChangedOperand(a1, v7 + 8 * a2, a3, a4);
    }
  }
}

void llvm::NamedMDNode::~NamedMDNode(llvm::NamedMDNode *this)
{
  llvm::SmallVectorImpl<llvm::TrackingMDRef>::clear(*(this + 6));
  v2 = llvm::SmallVector<llvm::MDOperand,0u>::~SmallVector(*(this + 6));
  MEMORY[0x277C69E40](v2, 0x1080C40ED926357);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(unint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::TrackingMDRef,false>::growAndEmplaceBack<llvm::MDNode *&>(a1, a2);
  }

  else
  {
    v4 = *a1;
    v5 = (*a1 + 8 * v3);
    v6 = *a2;
    *v5 = v6;
    if (v6)
    {
      llvm::MetadataTracking::track(v5, v6, 2);
      LODWORD(v3) = *(a1 + 8);
      v4 = *a1;
    }

    v7 = v3 + 1;
    *(a1 + 8) = v7;
    return v4 + 8 * v7 - 8;
  }
}

unint64_t llvm::SmallVectorImpl<llvm::TrackingMDRef>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = -8 * v2;
    v4 = (*result + 8 * v2 - 8);
    do
    {
      if (*v4)
      {
        result = llvm::MetadataTracking::untrack(v4, *v4);
      }

      --v4;
      v3 += 8;
    }

    while (v3);
  }

  *(v1 + 8) = 0;
  return result;
}

void llvm::MDAttachments::getAll(uint64_t *a1, unsigned int *a2, __n128 a3)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *a1;
    v6 = *a1 + 16 * v4;
    do
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(a2, v5, (v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
  }

  v7 = a2[2];
  if (v7 > 1)
  {
    std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,llvm::MDNode *> *,llvm::less_first>(*a2, (*a2 + 16 * v7), &v8, a3);
  }
}

BOOL llvm::MDAttachments::erase(llvm::MDAttachments *this, int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = *this;
  v6 = (v5 + 16 * v2);
  if (v2 == 1 && *(v6 - 4) == a2)
  {
    *(this + 2) = 0;
    v9 = *(v5 + 8);
    v7 = v5 + 8;
    v8 = v9;
    if (v9)
    {
      llvm::MetadataTracking::untrack(v7, v8);
    }

    return 1;
  }

  else
  {
    v11 = 0;
    v12 = 16 * v2;
    while (*(v5 + v11) != a2)
    {
      v11 += 16;
      if (v12 == v11)
      {
        goto LABEL_19;
      }
    }

    v6 = (v5 + v11);
    if (v12 == v11 || v12 - 16 == v11)
    {
LABEL_19:
      v17 = v2;
      goto LABEL_20;
    }

    v13 = v12 - v11 - 16;
    v14 = v6 + 3;
    do
    {
      v15 = *(v14 - 2);
      if (v15 != a2)
      {
        *v6 = v15;
        v16 = v6 + 2;
        llvm::TrackingMDRef::operator=(v6 + 1, v14);
        v6 = v16;
      }

      v14 += 2;
      v13 -= 16;
    }

    while (v13);
    v5 = *this;
    v17 = *(this + 2);
LABEL_20:
    llvm::SmallVectorImpl<llvm::MDAttachments::Attachment>::erase(this, v6, (v5 + 16 * v17));
    return v2 != *(this + 2);
  }
}

uint64_t llvm::MDAttachments::insert(llvm::MDAttachments *this, int a2, llvm::MDNode *a3)
{
  v5 = a2;
  v6 = a3;
  llvm::MetadataTracking::track(&v6, a3, 2);
  result = llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::push_back(this, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack(&v6, v6);
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>::push_back(uint64_t a1, unint64_t a2)
{
  result = llvm::SmallVectorTemplateCommon<llvm::MDAttachments::Attachment,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MDAttachments::Attachment,false>>(a1, a2, 1);
  v4 = *(a1 + 8);
  v5 = *a1 + 16 * v4;
  *v5 = *result;
  v7 = (result + 8);
  v6 = *(result + 8);
  *(v5 + 8) = v6;
  v8 = v5 + 8;
  if (v6)
  {
    result = llvm::MetadataTracking::retrack(result + 8, v6, v8);
    *v7 = 0;
    LODWORD(v4) = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  return result;
}

uint64_t llvm::Value::getMetadata(uint64_t ***this, int a2)
{
  if ((*(this + 23) & 0x20) == 0)
  {
    return 0;
  }

  v11[3] = v2;
  v11[4] = v3;
  v6 = ***this;
  v11[0] = this;
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v6 + 2504), v11);
  v8 = *(v7 + 4);
  if (!v8)
  {
    return 0;
  }

  v9 = v7[1] + 8;
  v10 = 16 * v8;
  while (*(v9 - 8) != a2)
  {
    v9 += 16;
    v10 -= 16;
    if (!v10)
    {
      return 0;
    }
  }

  return *v9;
}

uint64_t ***llvm::Value::getMetadata(uint64_t ***result, int a2, unsigned int *a3)
{
  if ((*(result + 23) & 0x20) != 0)
  {
    v5 = ***result;
    v9 = result;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v5 + 2504), &v9);
    v6 = *(result + 4);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = (result[1] + 1);
      do
      {
        if (*(v8 - 2) == a2)
        {
          result = llvm::SmallVectorTemplateBase<void *,true>::push_back(a3, *v8);
        }

        v8 += 2;
        v7 -= 16;
      }

      while (v7);
    }
  }

  return result;
}

void llvm::Value::getAllMetadata(uint64_t ***a1, unsigned int *a2)
{
  if ((*(a1 + 23) & 0x20) != 0)
  {
    v3 = ***a1;
    v7 = a1;
    v8 = 0;
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>((v3 + 2504), &v7, &v8);
    v6 = v8;
    if (!v4)
    {
      v6 = *(v3 + 2504) + 40 * *(v3 + 2520);
    }

    llvm::MDAttachments::getAll((v6 + 8), a2, v5);
  }
}

uint64_t llvm::Value::setMetadata(uint64_t this, int a2, llvm::MDNode *a3)
{
  v4 = this;
  if (a3)
  {
    v6 = ***this;
    v12 = this;
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v6 + 2504), &v12);
    v8 = v7;
    if (!*(v7 + 4))
    {
      *(v4 + 20) |= 0x20000000u;
    }

    llvm::MDAttachments::erase((v7 + 1), a2);
    return llvm::MDAttachments::insert((v8 + 1), a2, a3);
  }

  else if ((*(this + 23) & 0x20) != 0)
  {
    v9 = ***this;
    v12 = this;
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v9 + 2504), &v12);
    this = llvm::MDAttachments::erase((v10 + 1), a2);
    if (!*(v10 + 4))
    {
      v11 = ***v4;
      v12 = v4;
      this = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::erase(v11 + 2504, &v12);
      *(v4 + 20) &= ~0x20000000u;
    }
  }

  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::erase(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::LookupBucketFor<llvm::Value const*>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    llvm::SmallVector<llvm::MDAttachments::Attachment,1u>::~SmallVector((v6 + 8));
    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

uint64_t llvm::Value::addMetadata(uint64_t ***this, int a2, llvm::MDNode *a3)
{
  v5 = *(this + 5);
  if ((v5 & 0x20000000) == 0)
  {
    *(this + 5) = v5 | 0x20000000;
  }

  v6 = ***this;
  v9 = this;
  v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v6 + 2504), &v9);
  return llvm::MDAttachments::insert((v7 + 1), a2, a3);
}

BOOL llvm::Value::eraseMetadata(uint64_t ***this, int a2)
{
  if ((*(this + 23) & 0x20) == 0)
  {
    return 0;
  }

  v5 = ***this;
  v8 = this;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::FindAndConstruct((v5 + 2504), &v8);
  v2 = llvm::MDAttachments::erase((v6 + 1), a2);
  if (!*(v6 + 4))
  {
    llvm::Value::clearMetadata(this);
  }

  return v2;
}

uint64_t ***llvm::Value::clearMetadata(uint64_t ***this)
{
  if ((*(this + 23) & 0x20) != 0)
  {
    v1 = this;
    v2 = ***this;
    v3 = this;
    this = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>,llvm::Value const*,llvm::MDAttachments,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,llvm::MDAttachments>>::erase(v2 + 2504, &v3);
    *(v1 + 20) &= ~0x20000000u;
  }

  return this;
}

uint64_t *llvm::Instruction::setMetadata(uint64_t *result, uint64_t *a2, unint64_t a3, llvm::MDNode *a4)
{
  v5 = result;
  if (a4 || result[6] || (*(result + 23) & 0x20) != 0)
  {
    v6 = ***result;
    v8 = *(v6 + 2492);
    v7 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int>((v6 + 2480), a2, a3, &v8) + 8);

    return llvm::Instruction::setMetadata(v5, v7, a4);
  }

  return result;
}

uint64_t *llvm::Instruction::setMetadata(uint64_t *this, int a2, llvm::MDNode *a3)
{
  v5 = this;
  if (!a3 && !this[6] && (*(this + 23) & 0x20) == 0)
  {
    return this;
  }

  if (a2 == 38)
  {
    llvm::Instruction::updateDIAssignIDMapping(this, a3);
  }

  else if (!a2)
  {
    v6 = a3;
    if (a3)
    {
      llvm::MetadataTracking::track(&v6, a3, 2);
    }

    this = llvm::TrackingMDRef::operator=((v5 + 48), &v6);
    if (v6)
    {
      return llvm::MetadataTracking::untrack(&v6, v6);
    }

    return this;
  }

  return llvm::Value::setMetadata(v5, a2, a3);
}

void llvm::Instruction::updateDIAssignIDMapping(llvm::Value *this, uint64_t a2)
{
  v4 = ***this;
  if (!*(this + 6) && (*(this + 23) & 0x20) == 0)
  {
    goto LABEL_21;
  }

  Metadata = llvm::Value::getMetadata(this, 38);
  if (!Metadata)
  {
    goto LABEL_21;
  }

  if (Metadata == a2)
  {
    return;
  }

  v16 = Metadata;
  v17 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>((v4 + 2528), &v16, &v17))
  {
    v6 = v17;
  }

  else
  {
    v6 = *(v4 + 2528) + 32 * *(v4 + 2544);
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = &v7[8 * v8];
  if (v8)
  {
    v10 = 8 * v8;
    v11 = *(v6 + 8);
    while (*v11 != this)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        v11 = &v7[8 * v8];
        break;
      }
    }

    if (v8 == 1)
    {
      if (v7 != (v6 + 24))
      {
        free(v7);
      }

      *v6 = -8192;
      *(v4 + 2536) = vadd_s32(*(v4 + 2536), 0x1FFFFFFFFLL);
      goto LABEL_21;
    }
  }

  else
  {
    v11 = *(v6 + 8);
  }

  if (v9 != v11 + 1)
  {
    memmove(v11, v11 + 1, v9 - (v11 + 1));
    LODWORD(v8) = *(v6 + 16);
  }

  *(v6 + 16) = v8 - 1;
LABEL_21:
  if (!a2)
  {
    return;
  }

  v17 = 0;
  v13 = v17;
  if ((v12 & 1) == 0)
  {
    v14 = *(v4 + 2536);
    v15 = *(v4 + 2544);
    if (4 * v14 + 4 >= 3 * v15)
    {
      v15 *= 2;
    }

    else if (v15 + ~v14 - *(v4 + 2540) > v15 >> 3)
    {
LABEL_25:
      ++*(v4 + 2536);
      if (*v13 != -4096)
      {
        --*(v4 + 2540);
      }

      *v13 = a2;
      *(v13 + 8) = v13 + 24;
      *(v13 + 16) = 0x100000000;
      goto LABEL_28;
    }

    llvm::DenseMap<llvm::DIAssignID *,llvm::SmallVector<llvm::Instruction *,1u>,llvm::DenseMapInfo<llvm::DIAssignID *,void>,llvm::detail::DenseMapPair<llvm::DIAssignID *,llvm::SmallVector<llvm::Instruction *,1u>>>::grow(v4 + 2528, v15);
    v17 = 0;
    v13 = v17;
    goto LABEL_25;
  }

LABEL_28:
  llvm::SmallVectorTemplateBase<void *,true>::push_back((v13 + 8), this);
}

void llvm::Instruction::getAllMetadataImpl(uint64_t a1, unsigned int *a2)
{
  a2[2] = 0;
  v4 = *(a1 + 48);
  if (v4)
  {
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a2, 0, v4);
  }

  llvm::Value::getAllMetadata(a1, a2);
}

uint64_t *llvm::ContextAndReplaceableUses::makeReplaceable(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = *result;
  if ((*result & 4) != 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFF8;
    if ((v4 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      if ((*(v5 + 16) & 1) == 0)
      {
        MEMORY[0x277C69E30](*(v5 + 24), 8);
      }

      result = MEMORY[0x277C69E40](v5, 0x1020C408B843D01);
    }
  }

  v6 = *a2;
  *a2 = 0;
  *v3 = v6 | 4;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
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
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 24 * v6);
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
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 24 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::InsertIntoBucketImpl<void *>(_DWORD *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(a1, a3, &v9);
  a4 = v9;
LABEL_6:
  *a1 += 2;
  if (*a4 != -4096)
  {
    --a1[1];
  }

  return a4;
}

uint64_t llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
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
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = operator new(24 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::moveFromOldBuckets(a1, v6, v6 + 24 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 8) = *(a1 + v8 + 16);
      v9 += 24;
    }

    v8 += 24;
  }

  while (v8 != 96);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(24 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 8);
    v9 = (result + 104);
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = &v8[24 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 24;
  v12 = vdupq_n_s64(v11 / 0x18);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 3) = -4096;
    }

    v10 += 2;
    v8 += 48;
  }

  while (((v11 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      *(v14 + 1) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 24;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::try_emplace<std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::LookupBucketFor<void *>(a1, a2, &v16);
  v9 = v16;
  if (result)
  {
    v10 = a1 + 8;
    if (*a1)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
    }

    v14 = 0;
    v15 = v10 + 24 * v11;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,4u,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>,void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::InsertIntoBucketImpl<void *>(a1, a2, a2, v16);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v12 = a1 + 8;
    if (*a1)
    {
      v13 = 4;
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
    }

    v15 = v12 + 24 * v13;
    v14 = 1;
  }

  *a4 = v9;
  *(a4 + 8) = v15;
  *(a4 + 16) = v14;
  return result;
}

unsigned int *llvm::SmallVectorImpl<std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>>::append<llvm::DenseMapIterator<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>>,false>,void>(unsigned int *result, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2;
    do
    {
      do
      {
        v9 += 3;
      }

      while (v9 != a3 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      ++v8;
    }

    while (v9 != a4);
  }

  v10 = result[2];
  if (v8 + v10 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8 + v10, 24);
    LODWORD(v10) = v7[2];
  }

  if (v6 != a4)
  {
    v11 = *v7 + 24 * v10;
    do
    {
      v12 = *v6;
      *(v11 + 16) = v6[2];
      *v11 = v12;
      do
      {
        v6 += 3;
      }

      while (v6 != a3 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000);
      v11 += 24;
    }

    while (v6 != a4);
    LODWORD(v10) = v7[2];
  }

  v7[2] = v10 + v8;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  i = v7;
  while (1)
  {
    v7 = i;
    v9 = a2 - i;
    v10 = 0xAAAAAAAAAAAAAAABLL * (a2 - i);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(i, i + 3, a2 - 3);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(i, i + 3, i + 6, a2 - 3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(i, i + 3, i + 6, i + 9, a2 - 3);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v55 = *(a2 - 2);
        v56 = i[1];
        if (v55 < v56 || v56 >= v55 && *(a2 - 1) < i[2])
        {
          v57 = *i;
          *i = *(a2 - 3);
          *(a2 - 3) = v57;
          v58 = i[1];
          i[1] = *(a2 - 2);
          *(a2 - 2) = v58;
          v59 = i[2];
          i[2] = *(a2 - 1);
          *(a2 - 1) = v59;
        }

        return result;
      }
    }

    if (v9 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v76 = (v10 - 2) >> 1;
      v77 = v76;
      while (1)
      {
        v78 = v77;
        if (v76 >= v77)
        {
          v79 = (2 * v77) | 1;
          v80 = &i[3 * v79];
          if (2 * v78 + 2 < v10)
          {
            v81 = v80[1];
            v82 = v80[4];
            if (v81 < v82 || v82 >= v81 && v80[2] < v80[5])
            {
              v80 += 3;
              v79 = 2 * v78 + 2;
            }
          }

          v83 = &i[3 * v78];
          v84 = v80[1];
          v85 = v83[1];
          if (v84 >= v85)
          {
            if (v85 < v84)
            {
              v86 = v83[2];
LABEL_153:
              v87 = *v83;
              *v83 = *v80;
              v83[1] = v80[1];
              v83[2] = v80[2];
              if (v76 >= v79)
              {
                while (1)
                {
                  v89 = 2 * v79;
                  v79 = (2 * v79) | 1;
                  v88 = &i[3 * v79];
                  v90 = v89 + 2;
                  if (v90 < v10)
                  {
                    v91 = v88[1];
                    v92 = v88[4];
                    if (v91 < v92 || v92 >= v91 && v88[2] < v88[5])
                    {
                      v88 += 3;
                      v79 = v90;
                    }
                  }

                  v93 = v88[1];
                  if (v93 < v85 || v85 >= v93 && v88[2] < v86)
                  {
                    break;
                  }

                  *v80 = *v88;
                  v80[1] = v88[1];
                  v80[2] = v88[2];
                  v80 = v88;
                  if (v76 < v79)
                  {
                    goto LABEL_155;
                  }
                }
              }

              v88 = v80;
LABEL_155:
              *v88 = v87;
              v88[1] = v85;
              v88[2] = v86;
              goto LABEL_156;
            }

            v86 = v83[2];
            if (v80[2] >= v86)
            {
              goto LABEL_153;
            }
          }
        }

LABEL_156:
        v77 = v78 - 1;
        if (!v78)
        {
          v94 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
          while (1)
          {
            v95 = 0;
            v96 = *i;
            v97 = i[1];
            v98 = i[2];
            v99 = i;
            do
            {
              v100 = v99;
              v101 = &v99[3 * v95];
              v99 = v101 + 3;
              v102 = 2 * v95;
              v95 = (2 * v95) | 1;
              v103 = v102 + 2;
              if (v103 < v94)
              {
                v104 = v101[4];
                v105 = v101[7];
                if (v104 < v105 || v105 >= v104 && v101[5] < v101[8])
                {
                  v99 = v101 + 6;
                  v95 = v103;
                }
              }

              *v100 = *v99;
              v100[1] = v99[1];
              result = v99[2];
              v100[2] = result;
            }

            while (v95 <= (v94 - 2) / 2);
            if (v99 == a2 - 3)
            {
              *v99 = v96;
              v99[1] = v97;
              v99[2] = v98;
            }

            else
            {
              *v99 = *(a2 - 3);
              v99[1] = *(a2 - 2);
              v99[2] = *(a2 - 1);
              *(a2 - 3) = v96;
              *(a2 - 2) = v97;
              *(a2 - 1) = v98;
              v106 = v99 - i + 24;
              if (v106 >= 25)
              {
                result = 0xAAAAAAAAAAAAAAABLL * (v106 >> 3) - 2;
                v107 = result >> 1;
                v108 = &i[3 * (result >> 1)];
                v109 = v108[1];
                v110 = v99[1];
                if (v109 < v110)
                {
                  v111 = v99[2];
LABEL_179:
                  v112 = *v99;
                  *v99 = *v108;
                  v99[1] = v108[1];
                  v99[2] = v108[2];
                  if (result >= 2)
                  {
                    while (1)
                    {
                      result = v107 - 1;
                      v107 = (v107 - 1) >> 1;
                      v113 = &i[3 * v107];
                      v114 = v113[1];
                      if (v114 >= v110 && (v110 < v114 || v113[2] >= v111))
                      {
                        break;
                      }

                      *v108 = *v113;
                      v108[1] = v114;
                      v108[2] = v113[2];
                      v108 = &i[3 * v107];
                      if (result <= 1)
                      {
                        goto LABEL_185;
                      }
                    }
                  }

                  v113 = v108;
LABEL_185:
                  *v113 = v112;
                  v113[1] = v110;
                  v113[2] = v111;
                  goto LABEL_187;
                }

                if (v110 >= v109)
                {
                  v111 = v99[2];
                  if (v108[2] < v111)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_187:
            a2 -= 3;
            if (v94-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &i[3 * (v10 >> 1)];
    if (v9 < 0xC01)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>((v7 + 24 * v11), v7, a2 - 3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(v7, (v7 + 24 * v11), a2 - 3);
      v13 = 3 * v11;
      v14 = (v7 + 24 * v11 - 24);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>((v7 + 24), v14, a2 - 6);
      v15 = (v7 + 24 + 8 * v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>((v7 + 48), v15, a2 - 9);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,0>(v14, v12, v15);
      v16 = *v7;
      *v7 = *v12;
      *v12 = v16;
      v17 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 1);
      *(v12 + 1) = v17;
    }

    --a3;
    if (a4)
    {
      v18 = *(v7 + 8);
LABEL_20:
      v21 = 0;
      v22 = *v7;
      v23 = *(v7 + 16);
      while (1)
      {
        v24 = *(v7 + v21 + 32);
        if (v24 >= v18 && (v18 < v24 || *(v7 + v21 + 40) >= v23))
        {
          break;
        }

        v21 += 24;
      }

      v25 = v7 + v21 + 24;
      if (v21)
      {
        v26 = *(a2 - 2);
        v27 = a2 - 1;
        v28 = a2 - 3;
        if (v26 >= v18)
        {
          do
          {
            if (v18 >= v26 && *v27 < v23)
            {
              break;
            }

            v26 = *(v27 - 4);
            v27 -= 3;
          }

          while (v26 >= v18);
LABEL_30:
          v28 = v27 - 2;
        }
      }

      else
      {
        v28 = a2;
        if (v25 < a2)
        {
          v29 = *(a2 - 2);
          v28 = a2 - 3;
          if (v29 >= v18)
          {
            v27 = a2 - 1;
            v28 = a2 - 3;
            while (1)
            {
              v30 = v27 - 2;
              if (v18 >= v29)
              {
                if (*v27 < v23 || v25 >= v30)
                {
                  v28 = v27 - 2;
                  break;
                }
              }

              else if (v25 >= v30)
              {
                break;
              }

              v28 -= 3;
              v29 = *(v27 - 4);
              v27 -= 3;
              if (v29 < v18)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }

      i = v25;
      if (v25 < v28)
      {
        v32 = v28;
        do
        {
          v33 = *i;
          *i = *v32;
          *v32 = v33;
          v34 = i[1];
          i[1] = v32[1];
          v32[1] = v34;
          v35 = i[2];
          i[2] = v32[2];
          v32[2] = v35;
          do
          {
            do
            {
              i += 3;
              v36 = i[1];
            }

            while (v36 < v18);
          }

          while (v18 >= v36 && i[2] < v23);
          v37 = *(v32 - 2);
          if (v37 >= v18)
          {
            v38 = (v32 - 1);
            do
            {
              if (v18 >= v37 && *v38 < v23)
              {
                break;
              }

              v37 = *(v38 - 4);
              v38 -= 3;
            }

            while (v37 >= v18);
            v32 = (v38 - 2);
          }

          else
          {
            v32 -= 3;
          }
        }

        while (i < v32);
      }

      if (i - 3 != v7)
      {
        *v7 = *(i - 3);
        *(v7 + 8) = *(i - 2);
        *(v7 + 16) = *(i - 1);
      }

      *(i - 3) = v22;
      *(i - 2) = v18;
      *(i - 1) = v23;
      if (v25 < v28)
      {
LABEL_63:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *,false>(v7, i - 3, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v39 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(v7, i - 3);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::less_second &,std::pair<void *,std::pair<llvm::PointerUnion<llvm::MetadataAsValue *,llvm::Metadata *>,unsigned long long>> *>(i, a2);
        if (result)
        {
          a2 = i - 3;
          if (v39)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v39)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v19 = *(v7 - 16);
      v18 = *(v7 + 8);
      if (v19 < v18)
      {
        goto LABEL_20;
      }

      if (v18 < v19)
      {
        v20 = *(v7 + 16);
      }

      else
      {
        v20 = *(v7 + 16);
        if (*(v7 - 8) < v20)
        {
          goto LABEL_20;
        }
      }

      v40 = *(a2 - 2);
      if (v18 < v40 || v40 >= v18 && v20 < *(a2 - 1))
      {
        v41 = *(v7 + 32);
        if (v18 >= v41)
        {
          v43 = (v7 + 56);
          do
          {
            if (v41 >= v18 && v20 < *(v43 - 2))
            {
              break;
            }

            v44 = *v43;
            v43 += 3;
            v41 = v44;
          }

          while (v18 >= v44);
          i = (v43 - 4);
        }

        else
        {
          i = (v7 + 24);
        }
      }

      else
      {
        for (i = (v7 + 24); i < a2; i += 3)
        {
          v42 = i[1];
          if (v18 < v42 || v42 >= v18 && v20 < i[2])
          {
            break;
          }
        }
      }

      v45 = *v7;
      v46 = a2;
      if (i < a2)
      {
        for (j = a2 - 1; v18 < v40 || v40 >= v18 && v20 < *j; j -= 3)
        {
          v40 = *(j - 4);
        }

        v46 = j - 2;
      }

      while (i < v46)
      {
        v48 = *i;
        *i = *v46;
        *v46 = v48;
        v49 = i[1];
        i[1] = v46[1];
        v46[1] = v49;
        v50 = i[2];
        i[2] = v46[2];
        v46[2] = v50;
        v51 = i[4];
        if (v18 >= v51)
        {
          v52 = (i + 7);
          do
          {
            if (v51 >= v18 && v20 < *(v52 - 2))
            {
              break;
            }

            v53 = *v52;
            v52 += 3;
            v51 = v53;
          }

          while (v18 >= v53);
          i = (v52 - 4);
        }

        else
        {
          i += 3;
        }

        do
        {
          do
          {
            v46 -= 3;
            v54 = v46[1];
          }

          while (v18 < v54);
        }

        while (v54 >= v18 && v20 < v46[2]);
      }

      if (i - 3 != v7)
      {
        *v7 = *(i - 3);
        *(v7 + 8) = *(i - 2);
        *(v7 + 16) = *(i - 1);
      }

      a4 = 0;
      *(i - 3) = v45;
      *(i - 2) = v18;
      *(i - 1) = v20;
    }
  }

  v60 = i + 3;
  v62 = i == a2 || v60 == a2;
  if ((a4 & 1) == 0)
  {
    if (v62)
    {
      return result;
    }

    for (k = i + 2; ; k += 3)
    {
      v117 = v7;
      v7 = v60;
      v118 = v117[4];
      v119 = v117[1];
      if (v118 < v119)
      {
        break;
      }

      if (v119 >= v118)
      {
        v120 = v117[5];
        if (v120 < v117[2])
        {
          goto LABEL_200;
        }
      }

LABEL_208:
      v60 = (v7 + 24);
      if ((v7 + 24) == a2)
      {
        return result;
      }
    }

    v120 = v117[5];
LABEL_200:
    v121 = *v7;
    for (m = k; ; m -= 3)
    {
      *(m + 1) = *(m - 1);
      m[3] = *m;
      v123 = *(m - 4);
      if (v118 >= v123 && (v123 < v118 || v120 >= *(m - 3)))
      {
        break;
      }
    }

    *(m - 2) = v121;
    *(m - 1) = v118;
    *m = v120;
    goto LABEL_208;
  }

  if (v62)
  {
    return result;
  }

  v63 = 0;
  v64 = i;
  while (2)
  {
    v65 = v64;
    v64 = v60;
    v66 = v65[4];
    v67 = v65[1];
    if (v66 >= v67)
    {
      if (v67 < v66)
      {
        goto LABEL_139;
      }

      v68 = v65[5];
      if (v68 >= v65[2])
      {
        goto LABEL_139;
      }
    }

    else
    {
      v68 = v65[5];
    }

    v69 = v65[3];
    v70 = v65[1];
    v65[3] = *v65;
    v64[1] = v70;
    v64[2] = v65[2];
    v71 = i;
    if (v65 == i)
    {
      goto LABEL_138;
    }

    v72 = v63;
    while (2)
    {
      v73 = i + v72;
      v74 = *(i + v72 - 16);
      if (v66 < v74)
      {
        result = *(v73 - 1);
        goto LABEL_132;
      }

      if (v74 >= v66)
      {
        v71 = (i + v72);
        result = *(i + v72 - 8);
        if (v68 >= result)
        {
          goto LABEL_138;
        }

LABEL_132:
        v65 -= 3;
        v75 = (i + v72);
        *v75 = *(v73 - 3);
        v75[1] = v74;
        v75[2] = result;
        v72 -= 24;
        if (!v72)
        {
          v71 = i;
          goto LABEL_138;
        }

        continue;
      }

      break;
    }

    v71 = v65;
LABEL_138:
    *v71 = v69;
    v71[1] = v66;
    v71[2] = v68;
LABEL_139:
    v60 = v64 + 3;
    v63 += 24;
    if (v64 + 3 != a2)
    {
      continue;
    }

    return result;
  }
}