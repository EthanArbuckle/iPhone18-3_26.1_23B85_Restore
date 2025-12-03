@interface PGEventLabelerE5Model
- (BOOL)_areFeaturesValidForFeatures:(id)features error:(id *)error;
- (PGEventLabelerE5Model)initWithFilePath:(id)path error:(id *)error;
- (id).cxx_construct;
- (id)computeWithFeatures:(id)features error:(id *)error;
- (id)inputNamesWithError:(id *)error;
- (id)inputSizeByNameWithError:(id *)error;
@end

@implementation PGEventLabelerE5Model

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  return self;
}

- (BOOL)_areFeaturesValidForFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = [(PGEventLabelerE5Model *)self inputSizeByNameWithError:error];
  if (v7)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__50873;
    v18 = __Block_byref_object_dispose__50874;
    v19 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__PGEventLabelerE5Model__areFeaturesValidForFeatures_error___block_invoke;
    v10[3] = &unk_2788855D0;
    v11 = featuresCopy;
    v12 = &v20;
    v13 = &v14;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];
    if (error)
    {
      *error = v15[5];
    }

    v8 = *(v21 + 24);

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __60__PGEventLabelerE5Model__areFeaturesValidForFeatures_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v16];
  v9 = [v8 count];

  v10 = [v7 unsignedIntValue];
  if (v9 != v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PGEventLabelerE5Model] Invalid feature count: %lu, input spec count: %lu, for feature: %@", v9, v10, v16];
    v13 = [v11 errorWithDescription:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a4 = 1;
  }
}

- (id)computeWithFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v42 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:self->_outputPortByName.__table_.__size_];
  if ([(PGEventLabelerE5Model *)self _areFeaturesValidForFeatures:featuresCopy error:error])
  {
    for (i = self->_inputPortByName.__table_.__first_node_.__next_; i; i = *i)
    {
      v6 = *(i + 5);
      v7 = *(i + 6);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::IOPort::GetMemoryObject(&__p, v6);
      v8 = E5RT::MemoryObject::TryAsBuffer(__p.__r_.__value_.__l.__data_);
      DataSpan = E5RT::BufferObject::GetDataSpan(v8);
      if (v10 >= 2)
      {
        v11 = DataSpan;
      }

      else
      {
        v11 = 0;
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      v12 = i + 16;
      if (i[39] < 0)
      {
        v12 = *v12;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      v14 = [featuresCopy objectForKeyedSubscript:v13];
      for (j = 0; j < [v14 count]; ++j)
      {
        v16 = [v14 objectAtIndexedSubscript:j];
        [v16 floatValue];
        if (v17 < -65504.0)
        {
          v17 = -65504.0;
        }

        if (v17 <= 65504.0)
        {
          _S10 = v17;
        }

        else
        {
          _S10 = 65504.0;
        }

        __asm { FCVT            H0, S10 }

        *(v11 + 2 * j) = _H0;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    E5RT::ExecutionStream::ExecuteStreamSync(self->_stream.__ptr_);
    for (k = self->_outputPortByName.__table_.__first_node_.__next_; k; k = *k)
    {
      std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>::pair[abi:ne200100](&__p, k + 1);
      v25 = v47;
      v26 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::IOPort::GetMemoryObject(&v44, v25);
      v27 = E5RT::MemoryObject::TryAsBuffer(v44);
      v28 = E5RT::BufferObject::GetDataSpan(v27);
      if (v29 >= 2)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      _H8 = *v30;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
      lowercaseString = [v33 lowercaseString];
      __asm { FCVT            S8, H8 }

      LODWORD(v36) = _S8;
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
      [v42 setValue:v37 forKey:lowercaseString];

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v48)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v38 = v42;
    v39 = v38;
  }

  else
  {
    v39 = 0;
    v38 = v42;
  }

  return v39;
}

- (id)inputSizeByNameWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:self->_inputPortByName.__table_.__size_];
  for (i = self->_inputPortByName.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = *(i + 5);
    v7 = *(i + 6);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::GetPortDescriptor(&v17, v6);
    v8 = E5RT::OperandDescriptor::TensorDescriptor(v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    TensorShape = E5RT::TensorDescriptor::GetTensorShape(v8);
    v10 = *TensorShape;
    v11 = 1;
    while (v10 != *(TensorShape + 8))
    {
      v12 = *v10++;
      v11 *= v12;
    }

    v13 = i + 16;
    if (i[39] < 0)
    {
      v13 = *v13;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    [v4 setObject:v15 forKeyedSubscript:v14];

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return v4;
}

- (id)inputNamesWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:self->_inputPortByName.__table_.__size_];
  for (i = self->_inputPortByName.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = i + 16;
    if (i[39] < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    [v4 addObject:v7];
  }

  return v4;
}

- (PGEventLabelerE5Model)initWithFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  v45.receiver = self;
  v45.super_class = PGEventLabelerE5Model;
  v6 = [(PGEventLabelerE5Model *)&v45 init];
  if (v6)
  {
    v35 = pathCopy;
    v36 = v6;
    std::string::basic_string[abi:ne200100]<0>(&v46, "op");
    std::string::basic_string[abi:ne200100]<0>(&v42, [pathCopy UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(&__p, "main");
    E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
    if (v44)
    {
      operator new();
    }

    v44 = 0;
    v8 = *(v6 + 2);
    *(v6 + 8) = 0u;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v9 = v44;
      v44 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    else
    {
      v44 = 0;
    }

    if (v41 < 0)
    {
      operator delete(__p);
    }

    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*(v6 + 1));
    if (v6 + 32 != InputPorts)
    {
      *(v6 + 16) = *(InputPorts + 32);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>(v6 + 4, *(InputPorts + 16));
    }

    v11 = *(v6 + 6);
    if (v11)
    {
      v12 = v6 + 72;
      do
      {
        v14 = v11[5];
        v13 = v11[6];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        E5RT::IOPort::GetPortDescriptor(&v46, v14);
        E5RT::OperandDescriptor::TensorDescriptor(v46);
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        E5RT::TensorDescriptor::AllocateMemory();
        if (v46)
        {
          operator new();
        }

        v37 = v13;
        E5RT::IOPort::BindMemoryObject();
        v15 = std::__string_hash<char>::operator()[abi:ne200100]((v11 + 2));
        v16 = v15;
        v17 = *(v6 + 80);
        if (!*&v17)
        {
          goto LABEL_41;
        }

        v18 = vcnt_s8(v17);
        v18.i16[0] = vaddlv_u8(v18);
        v19 = v18.u32[0];
        if (v18.u32[0] > 1uLL)
        {
          v20 = v15;
          if (v15 >= *&v17)
          {
            v20 = v15 % *&v17;
          }
        }

        else
        {
          v20 = (*&v17 - 1) & v15;
        }

        v21 = *(*v12 + 8 * v20);
        if (!v21 || (v22 = *v21) == 0)
        {
LABEL_41:
          operator new();
        }

        while (1)
        {
          v23 = v22[1];
          if (v23 == v16)
          {
            break;
          }

          if (v19 > 1)
          {
            if (v23 >= *&v17)
            {
              v23 %= *&v17;
            }
          }

          else
          {
            v23 &= *&v17 - 1;
          }

          if (v23 != v20)
          {
            goto LABEL_41;
          }

LABEL_40:
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_41;
          }
        }

        if (!std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, v11 + 2))
        {
          goto LABEL_40;
        }

        v6 = v36;
        v24 = v22[6];
        v22[5] = 0;
        v22[6] = 0;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        v11 = *v11;
      }

      while (v11);
    }

    OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(v6 + 1));
    if (v6 + 112 != OutputPorts)
    {
      *(v6 + 36) = *(OutputPorts + 32);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *> *>>(v6 + 14, *(OutputPorts + 16));
    }

    for (i = *(v6 + 16); i; i = *i)
    {
      v28 = i[5];
      v27 = i[6];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::IOPort::GetPortDescriptor(&v46, v28);
      E5RT::OperandDescriptor::TensorDescriptor(v46);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      E5RT::TensorDescriptor::AllocateMemory();
      if (v46)
      {
        operator new();
      }

      E5RT::IOPort::BindMemoryObject();
      OutputPorts = 0;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    E5RT::ExecutionStream::CreateExecutionStream(&v46, OutputPorts);
    v29 = v46;
    v46 = 0;
    pathCopy = v35;
    v7 = v36;
    ptr = v36->_stream.__ptr_;
    v36->_stream.__ptr_ = v29;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
      v31 = v46;
      v46 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }
    }

    cntrl = v36->_esop.__cntrl_;
    v32 = v36->_stream.__ptr_;
    v38 = v36->_esop.__ptr_;
    v39 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::EncodeOperation();
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end