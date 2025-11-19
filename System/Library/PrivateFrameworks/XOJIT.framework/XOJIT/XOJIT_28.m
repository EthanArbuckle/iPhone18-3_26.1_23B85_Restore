uint64_t llvm::yaml::IO::mapOptionalWithContext<std::vector<anonymous namespace::MetadataSection>,anonymous namespace::MetadataSection::Option>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = (*(*a1 + 56))(a1);
  if (!result || *a3 != *(a3 + 8))
  {
    v26 = 0;
    v25 = 0;
    result = (*(*a1 + 120))(a1, a2, 0, 0, &v25, &v26);
    if (result)
    {
      v9 = (*(*a1 + 24))(a1);
      if ((*(*a1 + 16))(a1))
      {
        v9 = -1431655765 * ((*(a3 + 8) - *a3) >> 4);
      }

      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = v9;
        v13 = 24;
        v24 = v9;
        do
        {
          v27 = 0;
          if ((*(*a1 + 32))(a1, v11, &v27))
          {
            v14 = *(a3 + 8);
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 4);
            if (v15 <= v11)
            {
              v16 = v11 + 1;
              v17 = *(a3 + 16);
              if (0xAAAAAAAAAAAAAAABLL * ((v17 - v14) >> 4) >= v11 + 1 - v15)
              {
                v21 = 48 - -48 * ((v10 - 16 * ((v14 - *a3) >> 4)) / 0x30uLL);
                bzero(*(a3 + 8), v21);
                *(a3 + 8) = v14 + v21;
              }

              else
              {
                if (0x5555555555555556 * ((v17 - *a3) >> 4) > v16)
                {
                  v16 = 0x5555555555555556 * ((v17 - *a3) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v18 = 0x555555555555555;
                }

                else
                {
                  v18 = v16;
                }

                v19 = v29;
                v20 = 48 * ((v10 - 48 * v15) / 0x30) + 48;
                bzero(v29, v20);
                v29 = &v19[v20];
              }

              v12 = v24;
            }

            v22 = (*a3 + v13);
            (*(*a1 + 104))(a1);
            llvm::yaml::IO::processKey<std::vector<llvm::MachO::Target>,llvm::yaml::EmptyContext>(a1, v22 - 3);
            if (*a4)
            {
              v23 = "libraries";
            }

            else
            {
              v23 = "clients";
            }

            llvm::yaml::IO::processKey<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, v23, v22, 1);
            (*(*a1 + 112))(a1);
            (*(*a1 + 40))(a1, v27);
          }

          ++v11;
          v13 += 48;
          v10 += 48;
        }

        while (v12 != v11);
      }

      (*(*a1 + 48))(a1);
      return (*(*a1 + 128))(a1, v26);
    }
  }

  return result;
}

uint64_t llvm::yaml::IO::mapOptional<std::vector<anonymous namespace::SymbolSection>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*a1 + 56))(a1);
  if (!result || *a3 != a3[1])
  {
    v27 = 0;
    v26 = 0;
    result = (*(*a1 + 120))(a1, a2, 0, 0, &v26, &v27);
    if (result)
    {
      v7 = (*(*a1 + 24))(a1);
      if ((*(*a1 + 16))(a1))
      {
        v7 = -1963413621 * ((a3[1] - *a3) >> 3);
      }

      if (v7)
      {
        v8 = 0;
        v9 = "symbols";
        v10 = "objc-classes";
        v11 = 280;
        do
        {
          v28 = 0;
          if ((*(*a1 + 32))(a1, v8, &v28))
          {
            v12 = a3[1];
            v13 = 0xAF8AF8AF8AF8AF8BLL * ((v12 - *a3) >> 3);
            if (v13 <= v8)
            {
              v14 = v10;
              v15 = v9;
              v16 = v8 + 1 - v13;
              v17 = a3[2];
              if (0xAF8AF8AF8AF8AF8BLL * ((v17 - v12) >> 3) >= v16)
              {
                v23 = v12 + 280 * v16;
                v24 = v11 - 8 * ((v12 - *a3) >> 3);
                do
                {
                  *(v12 + 128) = 0;
                  *(v12 + 96) = 0uLL;
                  *(v12 + 112) = 0uLL;
                  *(v12 + 64) = 0uLL;
                  *(v12 + 80) = 0uLL;
                  *(v12 + 32) = 0uLL;
                  *(v12 + 48) = 0uLL;
                  *(v12 + 16) = 0uLL;
                  *v12 = v12 + 16;
                  *(v12 + 8) = 0x500000000;
                  *(v12 + 152) = 0uLL;
                  *(v12 + 168) = 0uLL;
                  *(v12 + 184) = 0uLL;
                  *(v12 + 200) = 0uLL;
                  *(v12 + 216) = 0uLL;
                  *(v12 + 232) = 0uLL;
                  *(v12 + 248) = 0uLL;
                  *(v12 + 136) = 0uLL;
                  *(v12 + 264) = 0uLL;
                  v12 += 280;
                  v24 -= 280;
                }

                while (v24);
                a3[1] = v23;
              }

              else
              {
                v18 = 0x5F15F15F15F15F16 * ((v17 - *a3) >> 3);
                if (v18 <= v8 + 1)
                {
                  v18 = v8 + 1;
                }

                if (0xAF8AF8AF8AF8AF8BLL * ((v17 - *a3) >> 3) >= 0x75075075075075)
                {
                  v19 = 0xEA0EA0EA0EA0EALL;
                }

                else
                {
                  v19 = v18;
                }

                v20 = v30;
                v21 = v30 + 280 * v16;
                v22 = v11 - 280 * v13;
                do
                {
                  *(v20 + 128) = 0;
                  *(v20 + 96) = 0uLL;
                  *(v20 + 112) = 0uLL;
                  *(v20 + 64) = 0uLL;
                  *(v20 + 80) = 0uLL;
                  *(v20 + 32) = 0uLL;
                  *(v20 + 48) = 0uLL;
                  *(v20 + 16) = 0uLL;
                  *v20 = v20 + 16;
                  *(v20 + 8) = 0x500000000;
                  *(v20 + 152) = 0uLL;
                  *(v20 + 168) = 0uLL;
                  *(v20 + 184) = 0uLL;
                  *(v20 + 200) = 0uLL;
                  *(v20 + 216) = 0uLL;
                  *(v20 + 232) = 0uLL;
                  *(v20 + 248) = 0uLL;
                  *(v20 + 136) = 0uLL;
                  *(v20 + 264) = 0uLL;
                  v20 += 280;
                  v22 -= 280;
                }

                while (v22);
                v30 = v21;
              }

              v9 = v15;
              v10 = v14;
            }

            v25 = (*a3 + 280 * v8);
            (*(*a1 + 104))(a1);
            llvm::yaml::IO::processKey<llvm::SmallVector<llvm::MachO::Target,5u>,llvm::yaml::EmptyContext>(a1, v25);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, v9, v25 + 17);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, v10, v25 + 20);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "objc-eh-types", v25 + 23);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "objc-ivars", v25 + 26);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "weak-symbols", v25 + 29);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "thread-local-symbols", v25 + 32);
            (*(*a1 + 112))(a1);
            (*(*a1 + 40))(a1, v28);
          }

          ++v8;
          v11 += 280;
        }

        while (v8 != v7);
      }

      (*(*a1 + 48))(a1);
      return (*(*a1 + 128))(a1, v27);
    }
  }

  return result;
}

void **std::vector<anonymous namespace::UUIDv4>::~vector[abi:nn200100](void **a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unsigned int *llvm::SmallVectorImpl<llvm::MachO::Target>::insert<llvm::MachO::Target const*,void>(unsigned int *result, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v5 = __src;
  v6 = result;
  v7 = *result;
  v8 = result[2];
  if (*result + 24 * v8 == a2)
  {

    return llvm::SmallVectorImpl<llvm::MachO::Target>::append<llvm::MachO::Target const*,void>(result, __src, a4);
  }

  else
  {
    v9 = a2 - v7;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a4 - __src) >> 3);
    if (v10 + v8 > result[3])
    {
      result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v10 + v8, 24);
      v7 = *v6;
      v8 = v6[2];
    }

    v11 = (v7 + v9);
    v12 = 24 * v8;
    v13 = (v7 + 24 * v8);
    v14 = 24 * v8 - v9;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3);
    if (v15 >= v10)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((8 * ((a4 - v5) >> 3)) >> 3) + v8;
      if (v18 > v6[3])
      {
        result = llvm::SmallVectorBase<unsigned int>::grow_pod(v6, v6 + 4, v18, 24);
        LODWORD(v8) = v6[2];
      }

      if (a4 != v5)
      {
        v19 = *v6 + 24 * v8;
        v20 = -8 * ((a4 - v5) >> 3);
        do
        {
          v21 = *&v13[v20];
          *(v19 + 16) = *&v13[v20 + 16];
          *v19 = v21;
          v19 += 24;
          v20 += 24;
        }

        while (v20);
        LODWORD(v8) = v6[2];
      }

      v6[2] = v8 - 1431655765 * ((8 * ((a4 - v5) >> 3)) >> 3);
      if (&v13[-8 * ((a4 - v5) >> 3)] != v11)
      {
        result = memmove(&v11[8 * ((a4 - v5) >> 3)], v11, &v13[-8 * ((a4 - v5) >> 3)] - v11);
      }

      if (a4 != v5)
      {

        return memmove(v11, v5, a4 - v5);
      }
    }

    else
    {
      v16 = v8 + v10;
      v6[2] = v16;
      if (v12 != v9)
      {
        result = memcpy((v7 + 24 * v16 - 8 * (v14 >> 3)), v11, v14);
        do
        {
          v17 = *v5;
          *(v11 + 2) = v5[2];
          *v11 = v17;
          v11 += 24;
          v5 += 3;
          --v15;
        }

        while (v15);
      }

      if (v5 != a4)
      {

        return memcpy(v13, v5, a4 - v5);
      }
    }
  }

  return result;
}

void llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD_V4::assignTargetsToLibrary(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  if (a1 != a2)
  {
    v2 = *(a1 + 24);
    v3 = &v2[24 * *(a1 + 32)];
    v7[0] = &v8;
    v7[1] = 0x500000000;
    llvm::SmallVectorImpl<llvm::MachO::Target>::append<llvm::MachO::Target const*,void>(v7, v2, v3);
    operator new();
  }

  std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::destroy(0);
  std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::destroy(v6[0]);
  v4 = *MEMORY[0x277D85DE8];
}

void llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD_V4::NormalizedTBD_V4(llvm::yaml::IO &,llvm::MachO::InterfaceFile const*&)::{lambda(std::vector<anonymous namespace::SymbolSection> &,llvm::iterator_range<llvm::filter_iterator_impl<llvm::MachO::SymbolSet::const_symbol_iterator,std::function<BOOL ()(llvm::MachO::Symbol const*)>,std::forward_iterator_tag>>)#1}::operator()(uint64_t a1, __int128 *a2)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v3 = a2[1];
  v16 = *a2;
  v17 = v3;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v18, (a2 + 2));
  v4 = a2[5];
  v13 = a2[4];
  v14 = v4;
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::__value_func[abi:nn200100](v15, (a2 + 6));
  if (v16 != v13)
  {
    v5 = *(v16 + 24);
    v6 = *(v5 + 16);
    v7 = &v6[24 * *(v5 + 24)];
    v11[0] = &v12;
    v11[1] = 0x500000000;
    llvm::SmallVectorImpl<llvm::MachO::Target>::append<llvm::MachO::Target const*,void>(v11, v6, v7);
    operator new();
  }

  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v15);
  std::__function::__value_func<BOOL ()(llvm::MachO::Symbol const*)>::~__value_func[abi:nn200100](v18);
  std::__tree<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::__map_value_compare<llvm::CmpInst::Predicate,std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>,std::less<llvm::CmpInst::Predicate>,true>,std::allocator<std::__value_type<llvm::CmpInst::Predicate,llvm::SmallVector<llvm::BranchProbability,12u>>>>::destroy(0);
  std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::destroy(v9);
  v8 = *MEMORY[0x277D85DE8];
}

__n128 llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>::growAndEmplaceBack<llvm::MachO::Target const&>(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v3 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(a1, &v6, 1);
  v4 = (*a1 + 24 * *(a1 + 8));
  result = *v3;
  v4[1].n128_u64[0] = v3[1].n128_u64[0];
  *v4 = result;
  ++*(a1 + 8);
  return result;
}

void std::vector<llvm::MachO::Target>::__insert_with_size[abi:nn200100]<llvm::MachO::Target const*,llvm::MachO::Target const*>(uint64_t *a1, char *__src, char *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = __src;
    v7 = a1[1];
    v6 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3)) >= a4)
    {
      if ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3)) >= a4)
      {
        v16 = 24 * a4;
        if (v7 - 24 * a4 >= v7)
        {
          v18 = a1[1];
        }

        else
        {
          v17 = v7 - 24 * a4;
          v18 = a1[1];
          do
          {
            v19 = *v17;
            *(v18 + 16) = *(v17 + 16);
            *v18 = v19;
            v18 += 24;
            v17 += 24;
          }

          while (v17 < v7);
        }

        a1[1] = v18;
        if (v7 != v16)
        {
          memmove((24 * a4), 0, v7 - 24 * a4);
        }

        v33 = v4;
        v34 = v16;
      }

      else
      {
        v12 = &__src[v7];
        v13 = a1[1];
        v14 = v13;
        while (v12 != a3)
        {
          v15 = *v12;
          *(v14 + 16) = *(v12 + 2);
          *v14 = v15;
          v14 += 24;
          v12 += 24;
          v13 += 24;
        }

        a1[1] = v13;
        if (v7 < 1)
        {
          return;
        }

        v20 = v13 - 24 * a4;
        if (v20 >= v7)
        {
          v22 = v13;
        }

        else
        {
          v21 = v13 - 24 * a4;
          v22 = v13;
          do
          {
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            v22 += 24;
            v21 += 24;
          }

          while (v21 < v7);
        }

        a1[1] = v22;
        if (v14 != 24 * a4)
        {
          memmove((24 * a4), 0, v20);
        }

        v33 = v4;
        v34 = v7;
      }

      memmove(0, v33, v34);
    }

    else
    {
      v8 = *a1;
      v9 = a4 - 0x5555555555555555 * ((v7 - *a1) >> 3);
      if (v9 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v11);
      }

      v24 = 8 * (-v8 >> 3);
      v25 = (v24 + 24 * a4);
      v26 = 24 * a4;
      v27 = v24;
      do
      {
        v28 = *v4;
        *(v27 + 16) = *(v4 + 2);
        *v27 = v28;
        v27 += 24;
        v4 += 24;
        v26 -= 24;
      }

      while (v26);
      memcpy(v25, 0, a1[1]);
      v29 = *a1;
      v30 = &v25[a1[1]];
      a1[1] = 0;
      v31 = (v24 + v29);
      memcpy((v24 + v29), v29, -v29);
      v32 = *a1;
      *a1 = v31;
      a1[1] = v30;
      a1[2] = 0;
      if (v32)
      {

        operator delete(v32);
      }
    }
  }
}

void *std::__split_buffer<anonymous namespace::UmbrellaSection>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 48 * a3;
  result[2] = 48 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::UmbrellaSection>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      v4 += 48;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v10 = a1[1];
  a1[1] = a2[2];
  a2[2] = v10;
  v11 = a1[2];
  a1[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::UmbrellaSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<anonymous namespace::UmbrellaSection>>::destroy[abi:nn200100]<anonymous namespace::UmbrellaSection,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

uint64_t std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::__emplace_unique_key_args<llvm::SmallVector<llvm::MachO::Target,5u>,llvm::SmallVector<llvm::MachO::Target,5u>>(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      if (!llvm::SmallVectorImpl<llvm::MachO::Target>::operator<(a2, a3, v7, v8))
      {
        break;
      }

      v3 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = llvm::SmallVectorImpl<llvm::MachO::Target>::operator<(v7, v8, a2, a3);
    if (!result)
    {
      return result;
    }

    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t llvm::SmallVectorImpl<llvm::MachO::Target>::operator<(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = &a3[24 * a4];
  v5 = 24 * a2;
  while (v5)
  {
    v6 = *a1;
    v7 = *a3;
    if (v6 < v7)
    {
      break;
    }

    if (v7 < v6)
    {
      return 0;
    }

    v8 = *(a1 + 1);
    v9 = *(a3 + 1);
    if (v8 < v9)
    {
      break;
    }

    v10 = 0;
    if (v9 >= v8)
    {
      a1 += 24;
      a3 += 24;
      v5 -= 24;
      if (a3 != v4)
      {
        continue;
      }
    }

    return v10;
  }

  return 1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v111 = (a2 - 16);
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 4;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16), v111);
                return;
              case 4:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, a1 + 16, (a1 + 32), v111);
                return;
              case 5:
                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), v111);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v44 = *(a2 - 16);
              v43 = (a2 - 16);
              v45 = *a1;
              v46 = *(a1 + 8);
              v114 = v44;
              v47 = llvm::StringRef::compare(&v114, v45, v46);
              if (v47 < 0)
              {
                v114 = *a1;
                *a1 = *v43;
                *v43 = v114;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v48 = (a1 + 16);
                if (a1 + 16 != a2)
                {
                  v49 = 0;
                  v50 = a1;
                  do
                  {
                    v51 = v48;
                    v52 = *v50;
                    v53 = v50[1];
                    v114 = *(v50 + 1);
                    if ((llvm::StringRef::compare(&v114, v52, v53) & 0x80000000) != 0)
                    {
                      v54 = *v51;
                      v55 = v50[3];
                      v56 = v49;
                      while (1)
                      {
                        v57 = a1 + v56;
                        *(a1 + v56 + 16) = *(a1 + v56);
                        if (!v56)
                        {
                          break;
                        }

                        v58 = *(v57 - 16);
                        v59 = *(v57 - 8);
                        *&v114 = v54;
                        *(&v114 + 1) = v55;
                        v56 -= 16;
                        if ((llvm::StringRef::compare(&v114, v58, v59) & 0x80000000) == 0)
                        {
                          v60 = (a1 + v56 + 16);
                          goto LABEL_71;
                        }
                      }

                      v60 = a1;
LABEL_71:
                      *v60 = v54;
                      v60[1] = v55;
                    }

                    v48 = v51 + 2;
                    v49 += 16;
                    v50 = v51;
                  }

                  while (v51 + 2 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v99 = (a1 + 16);
              while (v99 != a2)
              {
                v100 = v99;
                v101 = *a1;
                v102 = *(a1 + 8);
                v114 = *(a1 + 16);
                if ((llvm::StringRef::compare(&v114, v101, v102) & 0x80000000) != 0)
                {
                  v103 = *v100;
                  v104 = *(a1 + 24);
                  v105 = v100;
                  do
                  {
                    v106 = v105 - 1;
                    *v105 = *(v105 - 1);
                    v107 = *(v105 - 4);
                    v108 = *(v105 - 3);
                    *&v114 = v103;
                    *(&v114 + 1) = v104;
                    v109 = llvm::StringRef::compare(&v114, v107, v108);
                    v105 = v106;
                  }

                  while (v109 < 0);
                  *v106 = v103;
                  v106[1] = v104;
                }

                v99 = v100 + 2;
                a1 = v100;
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v110 = a2;
              v61 = v10 >> 1;
              v62 = v10 >> 1;
              do
              {
                v63 = v62;
                if (v61 >= v62)
                {
                  v64 = (2 * v62) | 1;
                  v65 = a1 + 16 * v64;
                  if (2 * v62 + 2 < v9)
                  {
                    v66 = *(v65 + 16);
                    v67 = *(v65 + 24);
                    v114 = *v65;
                    if (llvm::StringRef::compare(&v114, v66, v67) < 0)
                    {
                      v65 += 16;
                      v64 = 2 * v63 + 2;
                    }
                  }

                  v68 = a1 + 16 * v63;
                  v69 = *v68;
                  v70 = *(v68 + 8);
                  v114 = *v65;
                  if ((llvm::StringRef::compare(&v114, v69, v70) & 0x80000000) == 0)
                  {
                    v112 = v63;
                    v71 = *v68;
                    v72 = *(v68 + 8);
                    do
                    {
                      v73 = v68;
                      v68 = v65;
                      *v73 = *v65;
                      if (v61 < v64)
                      {
                        break;
                      }

                      v74 = (2 * v64) | 1;
                      v65 = a1 + 16 * v74;
                      v75 = 2 * v64 + 2;
                      if (v75 < v9)
                      {
                        v76 = *(v65 + 16);
                        v77 = *(v65 + 24);
                        v114 = *v65;
                        if (llvm::StringRef::compare(&v114, v76, v77) < 0)
                        {
                          v65 += 16;
                          v74 = v75;
                        }
                      }

                      v114 = *v65;
                      v64 = v74;
                    }

                    while ((llvm::StringRef::compare(&v114, v71, v72) & 0x80000000) == 0);
                    *v68 = v71;
                    *(v68 + 8) = v72;
                    v63 = v112;
                  }
                }

                v62 = v63 - 1;
              }

              while (v63);
              v78 = v110;
              do
              {
                v79 = v78;
                v80 = 0;
                v113 = *a1;
                v81 = a1;
                do
                {
                  v82 = &v81[v80];
                  v83 = v82 + 1;
                  v84 = (2 * v80) | 1;
                  v85 = 2 * v80 + 2;
                  if (v85 >= v9)
                  {
                    v80 = (2 * v80) | 1;
                  }

                  else
                  {
                    v86 = *(v82 + 4);
                    v87 = *(v82 + 5);
                    v88 = v82 + 2;
                    v114 = *(v88 - 1);
                    if (llvm::StringRef::compare(&v114, v86, v87) >= 0)
                    {
                      v80 = v84;
                    }

                    else
                    {
                      v83 = v88;
                      v80 = v85;
                    }
                  }

                  *v81 = *v83;
                  v81 = v83;
                }

                while (v80 <= ((v9 - 2) >> 1));
                v78 = v79 - 1;
                if (v83 == v79 - 1)
                {
                  *v83 = v113;
                }

                else
                {
                  *v83 = *v78;
                  *v78 = v113;
                  v89 = (v83 - a1 + 16) >> 4;
                  v90 = v89 < 2;
                  v91 = v89 - 2;
                  if (!v90)
                  {
                    v92 = v91 >> 1;
                    v93 = (a1 + 16 * (v91 >> 1));
                    v94 = *v83;
                    v95 = *(v83 + 1);
                    v114 = *v93;
                    if ((llvm::StringRef::compare(&v114, v94, v95) & 0x80000000) != 0)
                    {
                      v96 = *v83;
                      v97 = *(v83 + 1);
                      do
                      {
                        v98 = v83;
                        v83 = v93;
                        *v98 = *v93;
                        if (!v92)
                        {
                          break;
                        }

                        v92 = (v92 - 1) >> 1;
                        v93 = (a1 + 16 * v92);
                        v114 = *v93;
                      }

                      while ((llvm::StringRef::compare(&v114, v96, v97) & 0x80000000) != 0);
                      *v83 = v96;
                      *(v83 + 1) = v97;
                    }
                  }
                }

                v90 = v9-- <= 2;
              }

              while (!v90);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = (a1 + 16 * (v9 >> 1));
          if (v9 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>((a1 + 16 * (v9 >> 1)), a1, v111);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16 * (v9 >> 1)), v111);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>((a1 + 16), v12 - 1, (a2 - 32));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>((a1 + 32), (a1 + 16 + 16 * v11), (a2 - 48));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(v12 - 1, (a1 + 16 * (v9 >> 1)), (a1 + 16 + 16 * v11));
            v114 = *a1;
            *a1 = *v12;
            *v12 = v114;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v13 = *a1;
          v14 = *(a1 + 8);
          v114 = *(a1 - 16);
          if ((llvm::StringRef::compare(&v114, v13, v14) & 0x80000000) != 0)
          {
            break;
          }

          v26 = *a1;
          v27 = *(a1 + 8);
          v28 = *(a2 - 16);
          v29 = *(a2 - 8);
          *&v114 = *a1;
          *(&v114 + 1) = v27;
          if ((llvm::StringRef::compare(&v114, v28, v29) & 0x80000000) != 0)
          {
            v8 = a1;
            do
            {
              v34 = *(v8 + 16);
              v35 = *(v8 + 24);
              v8 += 16;
              *&v114 = v26;
              *(&v114 + 1) = v27;
            }

            while ((llvm::StringRef::compare(&v114, v34, v35) & 0x80000000) == 0);
          }

          else
          {
            v30 = a1 + 16;
            do
            {
              v8 = v30;
              if (v30 >= a2)
              {
                break;
              }

              v31 = *v30;
              v32 = *(v30 + 8);
              *&v114 = v26;
              *(&v114 + 1) = v27;
              v33 = llvm::StringRef::compare(&v114, v31, v32);
              v30 = v8 + 16;
            }

            while ((v33 & 0x80000000) == 0);
          }

          v36 = a2;
          if (v8 < a2)
          {
            v36 = a2;
            do
            {
              v37 = *(v36 - 2);
              v38 = *(v36-- - 1);
              *&v114 = v26;
              *(&v114 + 1) = v27;
            }

            while ((llvm::StringRef::compare(&v114, v37, v38) & 0x80000000) != 0);
          }

          while (v8 < v36)
          {
            v114 = *v8;
            *v8 = *v36;
            *v36 = v114;
            do
            {
              v39 = *(v8 + 16);
              v40 = *(v8 + 24);
              v8 += 16;
              *&v114 = v26;
              *(&v114 + 1) = v27;
            }

            while ((llvm::StringRef::compare(&v114, v39, v40) & 0x80000000) == 0);
            do
            {
              v41 = *(v36 - 2);
              v42 = *(v36-- - 1);
              *&v114 = v26;
              *(&v114 + 1) = v27;
            }

            while ((llvm::StringRef::compare(&v114, v41, v42) & 0x80000000) != 0);
          }

          if (v8 - 16 != a1)
          {
            *a1 = *(v8 - 16);
          }

          a4 = 0;
          *(v8 - 16) = v26;
          *(v8 - 8) = v27;
        }

        v15 = 0;
        v16 = *a1;
        v17 = *(a1 + 8);
        do
        {
          v114 = *(a1 + v15 + 16);
          v15 += 16;
        }

        while ((llvm::StringRef::compare(&v114, v16, v17) & 0x80000000) != 0);
        v18 = a1 + v15;
        v19 = a2;
        if (v15 == 16)
        {
          v19 = a2;
          do
          {
            if (v18 >= v19)
            {
              break;
            }

            v21 = *--v19;
            v114 = v21;
          }

          while ((llvm::StringRef::compare(&v114, v16, v17) & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v20 = *--v19;
            v114 = v20;
          }

          while ((llvm::StringRef::compare(&v114, v16, v17) & 0x80000000) == 0);
        }

        v8 = a1 + v15;
        if (v18 < v19)
        {
          v22 = v19;
          do
          {
            v114 = *v8;
            *v8 = *v22;
            *v22 = v114;
            do
            {
              v23 = *(v8 + 16);
              v8 += 16;
              v114 = v23;
            }

            while ((llvm::StringRef::compare(&v114, v16, v17) & 0x80000000) != 0);
            do
            {
              v24 = *--v22;
              v114 = v24;
            }

            while ((llvm::StringRef::compare(&v114, v16, v17) & 0x80000000) == 0);
          }

          while (v8 < v22);
        }

        if (v8 - 16 != a1)
        {
          *a1 = *(v8 - 16);
        }

        *(v8 - 16) = v16;
        *(v8 - 8) = v17;
        if (v18 >= v19)
        {
          break;
        }

LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,false>(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }

      v25 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *>(a1, v8 - 16);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *>(v8, a2))
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_35;
      }
    }

    a2 = v8 - 16;
    if (!v25)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(__int128 *a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v22[0] = *a2;
  v8 = llvm::StringRef::compare(v22, v6, v7);
  v10 = *a3;
  v9 = a3[1];
  v11 = *a2;
  v12 = *(a2 + 1);
  if (v8 < 0)
  {
    *&v22[0] = *a3;
    *(&v22[0] + 1) = v9;
    result = llvm::StringRef::compare(v22, v11, v12);
    if ((result & 0x80000000) != 0)
    {
      v21 = *a1;
      *a1 = *a3;
    }

    else
    {
      v18 = *a1;
      *a1 = *a2;
      *a2 = v18;
      v19 = *a2;
      v20 = *(a2 + 1);
      v22[0] = *a3;
      result = llvm::StringRef::compare(v22, v19, v20);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v21 = *a2;
      *a2 = *a3;
    }

    *a3 = v21;
  }

  else
  {
    *&v22[0] = *a3;
    *(&v22[0] + 1) = v9;
    result = llvm::StringRef::compare(v22, v11, v12);
    if ((result & 0x80000000) != 0)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *a1;
      v16 = *(a1 + 1);
      v22[0] = *a2;
      result = llvm::StringRef::compare(v22, v15, v16);
      if ((result & 0x80000000) != 0)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, a2, a3);
  v8 = *a3;
  v9 = a3[1];
  v17[0] = *a4;
  if ((llvm::StringRef::compare(v17, v8, v9) & 0x80000000) != 0)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *a2;
    v13 = *(a2 + 8);
    v17[0] = *a3;
    if ((llvm::StringRef::compare(v17, v12, v13) & 0x80000000) != 0)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *a1;
      v16 = *(a1 + 8);
      v17[0] = *a2;
      if ((llvm::StringRef::compare(v17, v15, v16) & 0x80000000) != 0)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(const void **a1, const void **a2, uint64_t *a3, __int128 *a4, _OWORD *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, a2, a3, a4);
  v10 = *a4;
  v11 = *(a4 + 1);
  v22[0] = *a5;
  if ((llvm::StringRef::compare(v22, v10, v11) & 0x80000000) != 0)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    v15 = a3[1];
    v22[0] = *a4;
    if ((llvm::StringRef::compare(v22, v14, v15) & 0x80000000) != 0)
    {
      v16 = *a3;
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      v18 = a2[1];
      v22[0] = *a3;
      if ((llvm::StringRef::compare(v22, v17, v18) & 0x80000000) != 0)
      {
        v19 = *a2;
        *a2 = *a3;
        *a3 = v19;
        v20 = *a1;
        v21 = a1[1];
        v22[0] = *a2;
        if ((llvm::StringRef::compare(v22, v20, v21) & 0x80000000) != 0)
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = *(a1 + 8);
        v8 = *(a2 - 16);
        v7 = (a2 - 16);
        v24 = v8;
        if ((llvm::StringRef::compare(&v24, v5, v6) & 0x80000000) != 0)
        {
          v9 = *a1;
          *a1 = *v7;
          *v7 = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16), (a2 - 16));
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, a1 + 16, (a1 + 32), (a2 - 16));
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
      return 1;
  }

LABEL_11:
  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,FlowStringRef *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *(v10 + 8);
    v24 = *v11;
    if ((llvm::StringRef::compare(&v24, v14, v15) & 0x80000000) != 0)
    {
      v16 = *v11;
      v17 = *(v11 + 8);
      v18 = v12;
      while (1)
      {
        v19 = a1 + v18;
        *(a1 + v18 + 48) = *(a1 + v18 + 32);
        if (v18 == -32)
        {
          break;
        }

        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        *&v24 = v16;
        *(&v24 + 1) = v17;
        v18 -= 16;
        if ((llvm::StringRef::compare(&v24, v20, v21) & 0x80000000) == 0)
        {
          v22 = (a1 + v18 + 48);
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      *v22 = v16;
      v22[1] = v17;
      if (++v13 == 8)
      {
        return v11 + 16 == a2;
      }
    }

    v10 = v11;
    v12 += 16;
    v11 += 16;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void *std::__split_buffer<anonymous namespace::MetadataSection>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 48 * a3;
  result[2] = 48 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::MetadataSection>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *(v7 + 24);
      v8[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      v8 += 6;
    }

    while (v7 != v5);
    do
    {
      v4 += 48;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::MetadataSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<anonymous namespace::MetadataSection>>::destroy[abi:nn200100]<anonymous namespace::MetadataSection,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::destroy(*a1);
    std::__tree<llvm::SmallVector<llvm::MachO::Target,5u>>::destroy(a1[1]);
    v2 = a1[4];
    if (v2 != a1 + 6)
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void anonymous namespace::SymbolSection::~SymbolSection(_anonymous_namespace_::SymbolSection *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    *(this + 21) = v6;
    operator delete(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    *(this + 18) = v7;
    operator delete(v7);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

__n128 std::allocator_traits<std::allocator<anonymous namespace::SymbolSection>>::construct[abi:nn200100]<anonymous namespace::SymbolSection,anonymous namespace::SymbolSection,0>(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::MachO::Target>::operator=(a1, a2);
  }

  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  *(a1 + 17) = *(a2 + 136);
  a1[19] = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = 0;
  *(a1 + 10) = *(a2 + 160);
  a1[22] = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  a1[23] = 0;
  a1[24] = 0;
  a1[25] = 0;
  *(a1 + 23) = *(a2 + 184);
  a1[25] = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = 0;
  *(a1 + 13) = *(a2 + 208);
  a1[28] = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  a1[29] = 0;
  a1[30] = 0;
  a1[31] = 0;
  *(a1 + 29) = *(a2 + 232);
  a1[31] = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[34] = 0;
  result = *(a2 + 256);
  *(a1 + 16) = result;
  a1[34] = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  return result;
}

void *std::__split_buffer<anonymous namespace::SymbolSection>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0xEA0EA0EA0EA0EBLL)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 280 * a3;
  result[2] = 280 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::SymbolSection>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = (v4 + *a1 - v6);
    do
    {
      v8 += 280;
      v9 += 35;
    }

    while (v8 != v6);
    do
    {
      v5 = (v5 + 280);
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = v5;
  a2[1] = v5;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::SymbolSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 280;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::yaml::IO::processKey<unsigned int,llvm::yaml::EmptyContext>(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    llvm::yaml::yamlize<unsigned int>(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

void llvm::yaml::yamlize<unsigned int>(uint64_t *a1, unint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v17 = &v18;
    v18 = v20;
    v19 = xmmword_2750C1290;
    LODWORD(v10) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_2883EB968;
    llvm::raw_ostream::SetUnbuffered(&v9);
    write_unsigned<unsigned long>(&v9, *a2, 0, 0, 0);
    v4 = v17[1];
    v8[0] = *v17;
    v8[1] = v4;
    (*(*a1 + 216))(a1, v8, 0);
    llvm::raw_ostream::~raw_ostream(&v9);
    if (v18 != v20)
    {
      free(v18);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    (*(*a1 + 216))(a1, &v9, 0);
    v5 = llvm::yaml::ScalarTraits<unsigned int,void>::input(v9, v10, a1[1], a2);
    if (v6)
    {
      v20[4] = 261;
      v18 = v5;
      *&v19 = v6;
      (*(*a1 + 248))(a1, &v18);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::yaml::IO::processKey<llvm::SmallVector<llvm::MachO::Target,5u>,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = 0;
  result = (*(*a1 + 120))(a1, "targets", 1, 0, &v11, &v12);
  if (result)
  {
    v5 = (*(*a1 + 64))(a1);
    if ((*(*a1 + 16))(a1))
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 24;
      do
      {
        v13 = 0;
        if ((*(*a1 + 72))(a1, v8, &v13))
        {
          v10 = *(a2 + 8);
          if (v8 >= v10)
          {
            if (v8 >= *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v8 + 1, 24);
              v10 = *(a2 + 8);
            }

            if (v8 + 1 != v10)
            {
              bzero((*a2 + 24 * v10), 24 - -24 * ((v7 - 24 * v10) / 0x18));
            }

            *(a2 + 8) = v8 + 1;
          }

          llvm::yaml::yamlize<llvm::MachO::Target>(a1, (*a2 + v9 - 24));
          (*(*a1 + 80))(a1, v13);
        }

        ++v8;
        v9 += 24;
        v7 += 24;
      }

      while (v6 != v8);
    }

    (*(*a1 + 88))(a1);
    return (*(*a1 + 128))(a1, v12);
  }

  return result;
}

void llvm::yaml::yamlize<llvm::MachO::Target>(uint64_t a1, unsigned __int8 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 16))(a1))
  {
    v15 = 0;
    v16 = 0;
    (*(*a1 + 216))(a1, &v15, 0);
    llvm::MachO::Target::create(v15, v16, v24);
    if (v25)
    {
      v6 = *v24;
      *v24 = 0;
      v14[0] = v6;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v14);
      if (v14[0])
      {
        (*(*v14[0] + 8))(v14[0]);
      }

      if (v25)
      {
        v7 = *v24;
        *v24 = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      v8 = "unparsable target";
      v9 = 17;
    }

    else
    {
      *a2 = *v24;
      *(a2 + 2) = *&v24[16];
      if (*a2 == 16)
      {
        v8 = "unknown architecture";
        v9 = 20;
      }

      else
      {
        if (*(a2 + 1))
        {
          goto LABEL_36;
        }

        v8 = "unknown platform";
        v9 = 16;
      }
    }

    v26 = 261;
    *v24 = v8;
    *&v24[8] = v9;
    (*(*a1 + 248))(a1, v24);
    goto LABEL_36;
  }

  *v24 = &v25;
  *&v24[8] = xmmword_2750C1290;
  LODWORD(v16) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_2883EB968;
  v23 = v24;
  llvm::raw_ostream::SetUnbuffered(&v15);
  ArchitectureName = llvm::MachO::getArchitectureName(*a2);
  llvm::raw_ostream::operator<<(&v15, ArchitectureName, v5);
  if (v18 == v19)
  {
    llvm::raw_ostream::write(&v15, "-", 1uLL);
  }

  else
  {
    *v19++ = 45;
  }

  v10 = "unknown";
  v11 = 7;
  switch(*(a2 + 1))
  {
    case 1:
      v10 = "macos";
      goto LABEL_22;
    case 2:
      v10 = "ios";
      v11 = 3;
      break;
    case 3:
      v10 = "tvos";
      goto LABEL_27;
    case 4:
      v10 = "watchos";
      v11 = 7;
      break;
    case 5:
      v10 = "bridgeos";
      v11 = 8;
      break;
    case 6:
      v10 = "maccatalyst";
      v11 = 11;
      break;
    case 7:
      v10 = "ios-simulator";
      v11 = 13;
      break;
    case 8:
      v10 = "tvos-simulator";
      goto LABEL_31;
    case 9:
      v10 = "watchos-simulator";
      v11 = 17;
      break;
    case 0xA:
      v10 = "driverkit";
      v11 = 9;
      break;
    case 0xB:
      v10 = "xros";
LABEL_27:
      v11 = 4;
      break;
    case 0xC:
      v10 = "xros-simulator";
LABEL_31:
      v11 = 14;
      break;
    case 0xE:
      v10 = "sepos";
LABEL_22:
      v11 = 5;
      break;
    default:
      break;
  }

  llvm::raw_ostream::operator<<(&v15, v10, v11);
  v12 = v23[1];
  v14[0] = *v23;
  v14[1] = v12;
  (*(*a1 + 216))(a1, v14, 0);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (*v24 != &v25)
  {
    free(*v24);
  }

LABEL_36:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::yaml::IO::processKey<std::string,llvm::yaml::EmptyContext>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    llvm::yaml::yamlize<std::string>(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

void llvm::yaml::yamlize<std::string>(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v21 = &v22;
    v22 = v24;
    v23 = xmmword_2750C1290;
    LODWORD(v14) = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = &unk_2883EB968;
    llvm::raw_ostream::SetUnbuffered(&v13);
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v4 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    llvm::raw_ostream::write(&v13, v5, v6);
    v7 = v21[1];
    v12[0] = *v21;
    v12[1] = v7;
    v8 = llvm::yaml::needsQuotes(v12[0], v7);
    (*(*a1 + 216))(a1, v12, v8);
    llvm::raw_ostream::~raw_ostream(&v13);
    if (v22 != v24)
    {
      free(v22);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    (*(*a1 + 216))(a1, &v13, 1);
    v9 = llvm::yaml::ScalarTraits<std::string,void>::input(v13, v14, a1[1], a2);
    if (v10)
    {
      v24[4] = 261;
      v22 = v9;
      *&v23 = v10;
      (*(*a1 + 248))(a1, &v22);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::yaml::needsQuotes(char *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1;
    v4 = *a1;
    v5 = 1;
    if ((v4 - 9) >= 5 && v4 != 32)
    {
      v13 = a1[a2 - 1];
      if ((v13 - 9) >= 5)
      {
        v5 = v13 == 32;
      }
    }

    switch(a2)
    {
      case 1uLL:
        if (v4 == 126)
        {
          v5 = 1;
        }

        goto LABEL_39;
      case 5uLL:
        if ((*a1 != 1936482662 || a1[4] != 101) && (*a1 != 1936482630 || a1[4] != 101))
        {
          v16 = bswap64(*a1 | (a1[4] << 32));
          v10 = v16 >= 0x46414C5345000000;
          v11 = v16 > 0x46414C5345000000;
LABEL_29:
          v17 = v11;
          v18 = !v10;
          if (v17 != v18)
          {
            goto LABEL_39;
          }
        }

        break;
      case 4uLL:
        if (*a1 == 1819047278 || *a1 == 1819047246 || ((v6 = bswap32(*a1), v10 = v6 >= 0x4E554C4C, v7 = v6 > 0x4E554C4C, v10) ? (v8 = 0) : (v8 = 1), v7 == v8))
        {
          v5 = 1;
        }

        if (*a1 != 1702195828 && *a1 != 1702195796)
        {
          v9 = bswap32(*a1);
          v10 = v9 >= 0x54525545;
          v11 = v9 > 0x54525545;
          goto LABEL_29;
        }

        break;
      default:
LABEL_39:
        isNumeric = llvm::yaml::isNumeric(a1, a2);
        v21 = isNumeric || v5;
        if (v20)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        while (1)
        {
          v23 = *v3;
          if (v23 - 48 < 0xA || (v23 & 0xFFFFFFDF) - 65 < 0x1A)
          {
            goto LABEL_57;
          }

          result = 2;
          if (v23 <= 0x2E)
          {
            if (((1 << v23) & 0x700100000200) != 0)
            {
              goto LABEL_57;
            }

            if (((1 << v23) & 0x2400) != 0)
            {
              return result;
            }
          }

          if (v23 - 94 >= 2)
          {
            if (v23 == 127 || v23 < 32)
            {
              return result;
            }

            v22 = 1;
          }

LABEL_57:
          ++v3;
          result = v22;
          if (!--v2)
          {
            return result;
          }
        }
    }

    v5 = 1;
    goto LABEL_39;
  }

  return 1;
}

BOOL llvm::yaml::isNumeric(char *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 4)
  {
    if (*a1 == 1851878958 || *a1 == 1314999854 || *a1 == 1312902702)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
LABEL_10:
    v3 = *a1;
    goto LABEL_11;
  }

  v2 = 0;
  v3 = *a1;
  if (v3 == 43 || v3 == 45)
  {
    return v2;
  }

LABEL_11:
  if (v3 == 45 || v3 == 43)
  {
    v4 = a1 + 1;
    v5 = a2 - 1;
  }

  else
  {
    v4 = a1;
    v5 = a2;
  }

  if (v5 == 4 && (*v4 == 1718511918 || *v4 == 1718503726 || *v4 == 1179535662))
  {
    return 1;
  }

  if (a2 == 1)
  {
    goto LABEL_23;
  }

  if (*a1 == 28464)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v21 = a1 + 2;
    v22 = a2 - 2;
    v19 = "01234567";
    v20 = 8;
    return llvm::StringRef::find_first_not_of(&v21, v19, v20, 0) == -1;
  }

  if (*a1 == 30768)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v21 = a1 + 2;
    v22 = a2 - 2;
    v19 = "0123456789abcdefABCDEF";
    v20 = 22;
    return llvm::StringRef::find_first_not_of(&v21, v19, v20, 0) == -1;
  }

LABEL_23:
  if (!v5)
  {
    goto LABEL_29;
  }

  v2 = 0;
  v6 = *v4;
  if (v6 != 101 && v6 != 69)
  {
    if (v6 == 46 && (v5 == 1 || !memchr("0123456789", v4[1], 0xBuLL)))
    {
      return 0;
    }

LABEL_29:
    v21 = v4;
    v22 = v5;
    first_not_of = llvm::StringRef::find_first_not_of(&v21, "0123456789", 10, 0);
    if (first_not_of >= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = first_not_of;
    }

    v9 = v5 - v8;
    if (v5 != v8)
    {
      v10 = &v4[v8];
      v11 = *v10;
      if (v11 == 101 || v11 == 69)
      {
LABEL_38:
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v14 = (v10 + 1);
          v15 = v10[1];
          if (v15 != 45 && v15 != 43)
          {
            goto LABEL_43;
          }

          v13 = v9 - 2;
          if (v9 != 2)
          {
            v14 = (v10 + 2);
LABEL_43:
            llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(&v21, v14, v13);
            return v16 == 0;
          }
        }

        return 0;
      }

      if (v11 != 46)
      {
        return 0;
      }

      v12 = llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(&v21, (v10 + 1), v9 - 1);
      if (v9)
      {
        v10 = v12;
        if ((*v12 | 0x20) != 0x65)
        {
          return 0;
        }

        goto LABEL_38;
      }
    }

    return 1;
  }

  return v2;
}

uint64_t llvm::yaml::isNumeric(llvm::StringRef)::{lambda(llvm::StringRef)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  first_not_of = llvm::StringRef::find_first_not_of(v8, "0123456789", 10, 0);
  if (first_not_of >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = first_not_of;
  }

  return v6 + a2;
}

uint64_t llvm::yaml::IO::processKeyWithDefault<TBDFlags,llvm::yaml::EmptyContext>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v10 = 0;
  v9 = 0;
  v6 = (*(*a1 + 16))(a1);
  if (*a2 == *a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result = (*(*a1 + 120))(a1, "flags", 0, v7, &v9, &v10);
  if (result)
  {
    v11 = 0;
    if ((*(*a1 + 192))(a1, &v11))
    {
      if (v11 == 1)
      {
        *a2 = 0;
      }

      llvm::yaml::IO::bitSetCase<TBDFlags>(a1, a2, "flat_namespace", 1);
      llvm::yaml::IO::bitSetCase<TBDFlags>(a1, a2, "not_app_extension_safe", 2);
      llvm::yaml::IO::bitSetCase<TBDFlags>(a1, a2, "installapi", 4);
      (*(*a1 + 208))(a1);
    }

    return (*(*a1 + 128))(a1, v10);
  }

  else if (v9 == 1)
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t llvm::yaml::IO::bitSetCase<TBDFlags>(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  v8 = (*(*a1 + 16))(a1);
  if ((a4 & ~*a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  result = (*(*a1 + 200))(a1, a3, v9);
  if (result)
  {
    *a2 |= a4;
  }

  return result;
}

uint64_t llvm::yaml::IO::processKey<llvm::StringRef,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v7, &v8);
  if (result)
  {
    llvm::yaml::yamlize<llvm::StringRef>(a1, a3);
    return (*(*a1 + 128))(a1, v8);
  }

  return result;
}

void llvm::yaml::yamlize<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v16 = v17;
    *v17 = v18;
    *&v17[8] = xmmword_2750C1290;
    v9 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v8 = &unk_2883EB968;
    llvm::raw_ostream::SetUnbuffered(&v8);
    llvm::raw_ostream::operator<<(&v8, *a2, *(a2 + 8));
    v4 = *(v16 + 1);
    v7[0] = *v16;
    v7[1] = v4;
    v5 = llvm::yaml::needsQuotes(v7[0], v4);
    (*(*a1 + 216))(a1, v7, v5);
    llvm::raw_ostream::~raw_ostream(&v8);
    if (*v17 != v18)
    {
      free(*v17);
    }
  }

  else
  {
    *v17 = 0;
    *&v17[8] = 0;
    (*(*a1 + 216))(a1, v17, 1);
    *a2 = *v17;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::yaml::IO::processKeyWithDefault<llvm::MachO::PackedVersion,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t a2, llvm::MachO::PackedVersion *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v8 = (*(*a1 + 16))(a1);
  if (*a3 == *a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = (*(*a1 + 120))(a1, a2, 0, v9, &v13, &v14);
  if (result)
  {
    if ((*(*a1 + 16))(a1))
    {
      v24 = &v25;
      v25 = v27;
      v26 = xmmword_2750C1290;
      LODWORD(v17) = 0;
      v21 = 0;
      v22 = 0;
      v23 = 1;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v16 = &unk_2883EB968;
      llvm::raw_ostream::SetUnbuffered(&v16);
      llvm::MachO::PackedVersion::print(a3, &v16);
      v11 = v24[1];
      v15[0] = *v24;
      v15[1] = v11;
      (*(*a1 + 216))(a1, v15, 0);
      llvm::raw_ostream::~raw_ostream(&v16);
      if (v25 != v27)
      {
        free(v25);
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      (*(*a1 + 216))(a1, &v16, 0);
      if ((llvm::MachO::PackedVersion::parse32(a3, v16, v17) & 1) == 0)
      {
        v27[4] = 261;
        v25 = "invalid packed version string.";
        *&v26 = 30;
        (*(*a1 + 248))(a1, &v25);
      }
    }

    result = (*(*a1 + 128))(a1, v14);
  }

  else if (v13 == 1)
  {
    *a3 = *a4;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::yaml::IO::processKeyWithDefault<SwiftVersion,llvm::yaml::EmptyContext>(uint64_t *a1, uint64_t a2, llvm::raw_ostream *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  v8 = (*(*a1 + 16))(a1);
  if (*a3 == *a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = (*(*a1 + 120))(a1, a2, 0, v9, &v15, &v16);
  if (result)
  {
    if ((*(*a1 + 16))(a1))
    {
      v26 = &v27;
      v27 = v29;
      v28 = xmmword_2750C1290;
      LODWORD(v19) = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v18 = &unk_2883EB968;
      llvm::raw_ostream::SetUnbuffered(&v18);
      llvm::yaml::ScalarTraits<SwiftVersion,void>::output(a3, a1[1], &v18);
      v11 = v26[1];
      v17[0] = *v26;
      v17[1] = v11;
      (*(*a1 + 216))(a1, v17, 0);
      llvm::raw_ostream::~raw_ostream(&v18);
      if (v27 != v29)
      {
        free(v27);
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
      (*(*a1 + 216))(a1, &v18, 0);
      v12 = llvm::yaml::ScalarTraits<SwiftVersion,void>::input(v18, v19, a1[1], a3);
      if (v13)
      {
        v29[4] = 261;
        v27 = v12;
        *&v28 = v13;
        (*(*a1 + 248))(a1, &v27);
      }
    }

    result = (*(*a1 + 128))(a1, v16);
  }

  else if (v15 == 1)
  {
    *a3 = *a4;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::yaml::IO::processKey<std::vector<llvm::MachO::Target>,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t *a2)
{
  v17 = 0;
  v16 = 0;
  result = (*(*a1 + 120))(a1, "targets", 1, 0, &v16, &v17);
  if (result)
  {
    v5 = (*(*a1 + 64))(a1);
    if ((*(*a1 + 16))(a1))
    {
      v5 = -1431655765 * ((a2[1] - *a2) >> 3);
    }

    if (v5)
    {
      v6 = 0;
      v7 = v5;
      do
      {
        v18 = 0;
        if ((*(*a1 + 72))(a1, v6, &v18))
        {
          v8 = *a2;
          v9 = a2[1];
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
          if (v10 <= v6)
          {
            v11 = v6 + 1;
            v12 = v6 + 1 - v10;
            v13 = a2[2];
            if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) < v12)
            {
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3);
              if (2 * v14 > v11)
              {
                v11 = 2 * v14;
              }

              if (v14 >= 0x555555555555555)
              {
                v15 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v15 = v11;
              }

              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmRelocation>>(v15);
            }

            bzero(a2[1], 24 * ((24 * v12 - 24) / 0x18) + 24);
            a2[1] = v9 + 24 * ((24 * v12 - 24) / 0x18) + 24;
            v8 = *a2;
          }

          llvm::yaml::yamlize<llvm::MachO::Target>(a1, (v8 + 24 * v6));
          (*(*a1 + 80))(a1, v18);
        }

        ++v6;
      }

      while (v6 != v7);
    }

    (*(*a1 + 88))(a1);
    return (*(*a1 + 128))(a1, v17);
  }

  return result;
}

uint64_t llvm::yaml::IO::processKey<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v36[17] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v22 = 0;
  result = (*(*a1 + 120))(a1, a2, a4, 0, &v22, &v23);
  if (result)
  {
    v7 = (*(*a1 + 64))(a1);
    if ((*(*a1 + 16))(a1))
    {
      v8 = ((a3[1] - *a3) >> 4);
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v24 = 0;
        if ((*(*a1 + 72))(a1, v9, &v24))
        {
          v12 = *a3;
          v11 = a3[1];
          v13 = (v11 - *a3) >> 4;
          if (v13 <= v9)
          {
            v14 = v9 + 1;
            v15 = a3[2];
            if (v9 + 1 - v13 > (v15 - v11) >> 4)
            {
              v16 = v15 - v12;
              if (v16 >> 3 > v14)
              {
                v14 = v16 >> 3;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFF0)
              {
                v17 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v14;
              }

              std::__allocate_at_least[abi:nn200100]<std::allocator<FlowStringRef>>(v17);
            }

            bzero(a3[1], v10 - 16 * v13 + 8);
            a3[1] = v11 - 16 * v13 + v10 + 8;
            v12 = *a3;
          }

          v18 = v12 + v10;
          if ((*(*a1 + 16))(a1))
          {
            v34 = v35;
            *v35 = v36;
            *&v35[8] = xmmword_2750C1290;
            v27 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 1;
            v29 = 0;
            v30 = 0;
            v28 = 0;
            v26 = &unk_2883EB968;
            llvm::raw_ostream::SetUnbuffered(&v26);
            llvm::raw_ostream::operator<<(&v26, *(v18 - 8), *(v12 + v10));
            v19 = *(v34 + 1);
            v25[0] = *v34;
            v25[1] = v19;
            v20 = llvm::yaml::needsQuotes(v25[0], v19);
            (*(*a1 + 216))(a1, v25, v20);
            llvm::raw_ostream::~raw_ostream(&v26);
            if (*v35 != v36)
            {
              free(*v35);
            }
          }

          else
          {
            *v35 = 0;
            *&v35[8] = 0;
            (*(*a1 + 216))(a1, v35, 1);
            *(v18 - 8) = *v35;
          }

          (*(*a1 + 80))(a1, v24);
        }

        ++v9;
        v10 += 16;
      }

      while (v8 != v9);
    }

    (*(*a1 + 88))(a1);
    result = (*(*a1 + 128))(a1, v23);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = (*(*a1 + 56))(a1);
  if (!result || *a3 != a3[1])
  {

    return llvm::yaml::IO::processKey<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, a2, a3, 0);
  }

  return result;
}

uint64_t llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD_V4::denormalize(llvm::yaml::IO &)::{lambda(std::vector<anonymous namespace::SymbolSection> const&,llvm::MachO::SymbolFlags)#1}::operator()(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    if (a4 == 8)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    do
    {
      v9 = v6[17];
      v10 = v6[18];
      while (v9 != v10)
      {
        v11 = *v9;
        v12 = *(v9 + 8);
        v9 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 0, v11, v12, a4, v6);
      }

      v13 = v6[20];
      v14 = v6[21];
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = *(v13 + 8);
        v13 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 1, v15, v16, a4, v6);
      }

      v17 = v6[23];
      v18 = v6[24];
      while (v17 != v18)
      {
        v19 = *v17;
        v20 = *(v17 + 8);
        v17 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 2, v19, v20, a4, v6);
      }

      v21 = v6[26];
      v22 = v6[27];
      while (v21 != v22)
      {
        v23 = *v21;
        v24 = *(v21 + 8);
        v21 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 3, v23, v24, a4, v6);
      }

      v25 = v6[29];
      v26 = v6[30];
      while (v25 != v26)
      {
        v27 = *v25;
        v28 = *(v25 + 8);
        v25 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 0, v27, v28, v8 | a4, v6);
      }

      v29 = v6[32];
      v30 = v6[33];
      while (v29 != v30)
      {
        v31 = *v29;
        v32 = *(v29 + 8);
        v29 += 16;
        result = llvm::MachO::SymbolSet::addGlobal<llvm::SmallVector<llvm::MachO::Target,5u> &,llvm::MachO::Target>(*(*v7 + 448), 0, v31, v32, a4 | 1, v6);
      }

      v6 += 35;
    }

    while (v6 != a3);
  }

  return result;
}

void **std::vector<anonymous namespace::SymbolSection>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **std::vector<anonymous namespace::MetadataSection>::~vector[abi:nn200100](void **a1)
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
        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::yaml::IO::mapOptional<std::vector<anonymous namespace::ExportSection>>(void *a1, uint64_t a2)
{
  result = (*(*a1 + 56))(a1);
  if (!result || *a2 != *(a2 + 8))
  {
    v21 = 0;
    v20 = 0;
    result = (*(*a1 + 120))(a1, "exports", 0, 0, &v20, &v21);
    if (result)
    {
      v5 = (*(*a1 + 24))(a1);
      if ((*(*a1 + 16))(a1))
      {
        v5 = 1749801491 * ((*(a2 + 8) - *a2) >> 3);
      }

      if (v5)
      {
        v6 = 0;
        v7 = 216 * v5;
        v8 = 1;
        v19 = v7;
        do
        {
          v22 = 0;
          if ((*(*a1 + 32))(a1, v8 - 1, &v22))
          {
            v9 = *(a2 + 8);
            v10 = 0x84BDA12F684BDA13 * ((v9 - *a2) >> 3);
            if (v10 <= v8 - 1)
            {
              v11 = *(a2 + 16);
              if (0x84BDA12F684BDA13 * ((v11 - v9) >> 3) >= v8 - v10)
              {
                bzero(*(a2 + 8), 216 - -216 * ((v6 - 8 * ((v9 - *a2) >> 3)) / 0xD8uLL));
                *(a2 + 8) = v9 + 216 - -216 * ((v6 - 216 * v10) / 0xD8);
              }

              else
              {
                v12 = 0x84BDA12F684BDA13 * ((v11 - *a2) >> 3);
                v13 = 2 * v12;
                if (2 * v12 <= v8)
                {
                  v13 = v8;
                }

                if (v12 >= 0x97B425ED097B42)
                {
                  v14 = 0x12F684BDA12F684;
                }

                else
                {
                  v14 = v13;
                }

                v15 = v24;
                bzero(v24, 216 - -216 * ((v6 - 216 * v10) / 0xD8));
                v24 = &v15[216 - -216 * ((v6 - 216 * v10) / 0xD8)];
              }

              v7 = v19;
            }

            v16 = (*a2 + v6);
            (*(*a1 + 104))(a1);
            v17 = a1[1];
            llvm::yaml::IO::processKey<std::vector<llvm::MachO::Architecture>,llvm::yaml::EmptyContext>(a1, v16);
            if (*(v17 + 48) == 8)
            {
              v18 = "allowed-clients";
            }

            else
            {
              v18 = "allowable-clients";
            }

            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, v18, v16 + 3);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "re-exports", v16 + 6);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "symbols", v16 + 9);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "objc-classes", v16 + 12);
            if (*(v17 + 48) == 32)
            {
              llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "objc-eh-types", v16 + 15);
            }

            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "objc-ivars", v16 + 18);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "weak-def-symbols", v16 + 21);
            llvm::yaml::IO::mapOptionalWithContext<std::vector<FlowStringRef>,llvm::yaml::EmptyContext>(a1, "thread-local-symbols", v16 + 24);
            (*(*a1 + 112))(a1);
            (*(*a1 + 40))(a1, v22);
          }

          ++v8;
          v6 += 216;
        }

        while (v7 != v6);
      }

      (*(*a1 + 48))(a1);
      return (*(*a1 + 128))(a1, v21);
    }
  }

  return result;
}

void anonymous namespace::ExportSection::~ExportSection(_anonymous_namespace_::ExportSection *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

uint64_t std::__tree<llvm::MachO::ArchitectureSet>::__emplace_unique_key_args<llvm::MachO::ArchitectureSet,llvm::MachO::ArchitectureSet>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__tree<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::__map_value_compare<llvm::MachO::Symbol const*,std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>,std::less<llvm::MachO::Symbol const*>,true>,std::allocator<std::__value_type<llvm::MachO::Symbol const*,llvm::MachO::ArchitectureSet>>>::__emplace_unique_key_args<llvm::MachO::Symbol const*,std::piecewise_construct_t const&,std::tuple<llvm::MachO::Symbol const* const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

__n128 std::allocator_traits<std::allocator<anonymous namespace::ExportSection>>::construct[abi:nn200100]<anonymous namespace::ExportSection,anonymous namespace::ExportSection,0>(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  *(a1 + 9) = *(a2 + 144);
  a1[20] = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  result = *(a2 + 192);
  *(a1 + 12) = result;
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return result;
}

void *std::__split_buffer<anonymous namespace::ExportSection>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 216 * a3;
  result[2] = 216 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::ExportSection>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = (v4 + *a1 - v6);
    do
    {
      v8 += 216;
      v9 += 27;
    }

    while (v8 != v6);
    do
    {
      v5 = (v5 + 216);
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = v5;
  a2[1] = v5;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::ExportSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::allocator_traits<std::allocator<anonymous namespace::UndefinedSection>>::construct[abi:nn200100]<anonymous namespace::UndefinedSection,anonymous namespace::UndefinedSection,0>(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  result = *(a2 + 120);
  *(a1 + 15) = result;
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return result;
}

void *std::__split_buffer<anonymous namespace::UndefinedSection>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *result = 0;
  result[1] = 144 * a3;
  result[2] = 144 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::UndefinedSection>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = (v4 + *a1 - v6);
    do
    {
      v8 += 144;
      v9 += 18;
    }

    while (v8 != v6);
    do
    {
      v5 += 144;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v10 = a1[1];
  a1[1] = a2[2];
  a2[2] = v10;
  v11 = a1[2];
  a1[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<anonymous namespace::UndefinedSection>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<anonymous namespace::UndefinedSection>>::destroy[abi:nn200100]<anonymous namespace::UndefinedSection,0>(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;

    operator delete(v7);
  }
}

uint64_t llvm::yaml::IO::processKey<std::vector<llvm::MachO::Architecture>,llvm::yaml::EmptyContext>(uint64_t a1, uint64_t *a2)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  result = (*(*a1 + 120))(a1, "archs", 1, 0, &v14, &v15);
  if (result)
  {
    v5 = (*(*a1 + 64))(a1);
    if ((*(*a1 + 16))(a1))
    {
      v6 = (*(a2 + 2) - *a2);
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v16 = 0;
        if ((*(*a1 + 72))(a1, i, &v16))
        {
          v9 = *a2;
          v8 = a2[1];
          if (&v8[-*a2] <= i)
          {
            if (a2[2] - v8 < &i[v9 - v8 + 1])
            {
              operator new();
            }

            bzero(v8, &i[v9 - v8 + 1]);
            a2[1] = &i[v9 + 1];
          }

          if ((*(*a1 + 16))(a1))
          {
            v26 = &v27;
            v27 = v29;
            v28 = xmmword_2750C1290;
            v19 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 1;
            v21 = 0;
            v22 = 0;
            v20 = 0;
            v18 = &unk_2883EB968;
            llvm::raw_ostream::SetUnbuffered(&v18);
            ArchitectureName = llvm::MachO::getArchitectureName(i[v9]);
            llvm::raw_ostream::operator<<(&v18, ArchitectureName, v11);
            v12 = v26[1];
            v17[0] = *v26;
            v17[1] = v12;
            (*(*a1 + 216))(a1, v17, 0);
            llvm::raw_ostream::~raw_ostream(&v18);
            if (v27 != v29)
            {
              free(v27);
            }
          }

          else
          {
            v27 = 0;
            *&v28 = 0;
            (*(*a1 + 216))(a1, &v27, 0);
            i[v9] = llvm::MachO::getArchitectureFromName(v27, v28);
          }

          (*(*a1 + 80))(a1, v16);
        }
      }
    }

    (*(*a1 + 88))(a1);
    result = (*(*a1 + 128))(a1, v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::yaml::IO::processKey<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,llvm::yaml::EmptyContext>(uint64_t *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  result = (*(*a1 + 120))(a1, "platform", 1, 0, &v9, &v10);
  if (result)
  {
    if ((*(*a1 + 16))(a1))
    {
      v20 = &v21;
      v21 = v23;
      v22 = xmmword_2750C1290;
      LODWORD(v13) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 1;
      v15 = 0;
      v16 = 0;
      v14 = 0;
      v12 = &unk_2883EB968;
      llvm::raw_ostream::SetUnbuffered(&v12);
      llvm::yaml::ScalarTraits<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,void>::output(a2, a1[1], &v12);
      v5 = v20[1];
      v11[0] = *v20;
      v11[1] = v5;
      (*(*a1 + 216))(a1, v11, 0);
      llvm::raw_ostream::~raw_ostream(&v12);
      if (v21 != v23)
      {
        free(v21);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      (*(*a1 + 216))(a1, &v12, 0);
      v6 = llvm::yaml::ScalarTraits<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,void>::input(v12, v13, a1[1], a2);
      if (v7)
      {
        v23[4] = 261;
        v21 = v6;
        *&v22 = v7;
        (*(*a1 + 248))(a1, &v21);
      }
    }

    result = (*(*a1 + 128))(a1, v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::yaml::MappingTraits<llvm::MachO::InterfaceFile const*>::NormalizedTBD::synthesizeTargets(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x500000000;
  v3 = *(a3 + 48);
  v4 = *(a3 + 32 * (v3 != 0));
  if (v3)
  {
    v5 = a3 + 40;
  }

  else
  {
    v5 = *a3 + 4 * *(a3 + 8);
  }

  if (v4 != v5)
  {
    if (v3)
    {
      v8 = 28;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 7) != 0)
    {
      v9 = 9;
    }

    else
    {
      v9 = 4;
    }

    if ((a2 & 7) != 0)
    {
      v10 = 8;
    }

    else
    {
      v10 = 3;
    }

    if ((a2 & 7) != 0)
    {
      v11 = 7;
    }

    else
    {
      v11 = 2;
    }

    do
    {
      v12 = *(v4 + v8);
      if (v12 == 4)
      {
        v14 = v9;
        if ((a2 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = v11;
        }

        else
        {
          v13 = *(v4 + v8);
        }

        if (v12 == 3)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        if ((a2 & 1) == 0)
        {
LABEL_25:
          v15 = 0;
          while (v15 != 31)
          {
            v16 = v15 + 1;
            v17 = a2 >> v15++;
            if ((v17 & 2) != 0)
            {
              if (v16 != 0xFFFFFFFFLL)
              {
                goto LABEL_41;
              }

              goto LABEL_29;
            }
          }

          goto LABEL_29;
        }
      }

      LODWORD(v16) = 0;
LABEL_41:
      if (v16 || v14 != 6)
      {
        v21 = *(a1 + 8);
        if (v21 >= *(a1 + 12))
        {
          v26 = v10;
          v27 = v9;
          llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>::growAndEmplaceBack<llvm::MachO::Architecture const&,llvm::MachO::PlatformType &>(a1, v16, v14);
          v10 = v26;
          v9 = v27;
        }

        else
        {
          v22 = *a1 + 24 * v21;
          *v22 = v16;
          *(v22 + 4) = v14;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          ++*(a1 + 8);
        }
      }

      v23 = v16;
      if ((v16 & 0xFFFFFFE0) != 0)
      {
        v24 = v16;
      }

      else
      {
        v24 = 31;
      }

      while (v24 != v23)
      {
        LODWORD(v16) = v23 + 1;
        v25 = a2 >> v23++;
        if ((v25 & 2) != 0)
        {
          if (v16 != -1)
          {
            goto LABEL_41;
          }

          break;
        }
      }

LABEL_29:
      if (v3)
      {
        v18 = v4[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v4[2];
            v20 = *v19 == v4;
            v4 = v19;
          }

          while (!v20);
        }
      }

      else
      {
        v19 = (v4 + 4);
      }

      v4 = v19;
    }

    while (v19 != v5);
  }
}

__n128 llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>::growAndEmplaceBack<llvm::MachO::Architecture const&,llvm::MachO::PlatformType &>(uint64_t a1, char a2, int a3)
{
  v7[0] = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v4 = llvm::SmallVectorTemplateCommon<llvm::MachO::Target,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::MachO::Target,true>>(a1, v7, 1);
  v5 = (*a1 + 24 * *(a1 + 8));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 8);
  return result;
}

void std::__shared_ptr_pointer<llvm::MachO::InterfaceFile *,std::shared_ptr<llvm::MachO::InterfaceFile>::__shared_ptr_default_delete<llvm::MachO::InterfaceFile,llvm::MachO::InterfaceFile>,std::allocator<llvm::MachO::InterfaceFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

llvm::MachO::InterfaceFile *std::__shared_ptr_pointer<llvm::MachO::InterfaceFile *,std::shared_ptr<llvm::MachO::InterfaceFile>::__shared_ptr_default_delete<llvm::MachO::InterfaceFile,llvm::MachO::InterfaceFile>,std::allocator<llvm::MachO::InterfaceFile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::yaml::ScalarEnumerationTraits<llvm::MachO::ObjCConstraintType,void>::enumeration(uint64_t a1, _DWORD *a2)
{
  llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(a1, a2, "none", 0);
  llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(a1, a2, "retain_release", 1);
  llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(a1, a2, "retain_release_for_simulator", 2);
  llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(a1, a2, "retain_release_or_gc", 3);

  return llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(a1, a2, "gc", 4);
}

uint64_t llvm::yaml::IO::enumCase<llvm::MachO::ObjCConstraintType>(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  v8 = (*(*a1 + 16))(a1);
  if (*a2 == a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = (*(*a1 + 168))(a1, a3, v9);
  if (result)
  {
    *a2 = a4;
  }

  return result;
}

llvm::raw_ostream *llvm::yaml::ScalarTraits<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,void>::output(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3)
{
  if (!a2 || *(a2 + 48) != 32 || (v14 = 1, !llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::count(a1, &v14)) || (v13 = 6, !llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::count(a1, &v13)))
  {
    v6 = *(a1 + 48);
    v7 = v6 == 0;
    v8 = *(a1 + 32 * (v6 != 0));
    v9 = 28;
    if (v7)
    {
      v9 = 0;
    }

    v10 = *(v8 + v9);
    if (v10 > 5)
    {
      if (v10 > 7)
      {
        if (v10 != 8)
        {
          if (v10 != 9)
          {
            v5 = "driverkit";
            v11 = 9;
            return llvm::raw_ostream::operator<<(a3, v5, v11);
          }

          goto LABEL_17;
        }

LABEL_18:
        v5 = "tvos";
        v11 = 4;
        return llvm::raw_ostream::operator<<(a3, v5, v11);
      }

      if (v10 == 6)
      {
        v5 = "maccatalyst";
        v11 = 11;
        return llvm::raw_ostream::operator<<(a3, v5, v11);
      }
    }

    else
    {
      if (v10 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            v5 = "bridgeos";
            goto LABEL_13;
          }

LABEL_17:
          v5 = "watchos";
          v11 = 7;
          return llvm::raw_ostream::operator<<(a3, v5, v11);
        }

        goto LABEL_18;
      }

      if (v10 == 1)
      {
        v5 = "macosx";
        v11 = 6;
        return llvm::raw_ostream::operator<<(a3, v5, v11);
      }
    }

    v5 = "ios";
    v11 = 3;
    return llvm::raw_ostream::operator<<(a3, v5, v11);
  }

  v5 = "zippered";
LABEL_13:
  v11 = 8;
  return llvm::raw_ostream::operator<<(a3, v5, v11);
}

const char *llvm::yaml::ScalarTraits<llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>,void>::input(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 8)
  {
    if (*a1 != 0x646572657070697ALL)
    {
      if (*a1 != 0x736F656764697262)
      {
        return "unknown platform";
      }

      v15 = 5;
      goto LABEL_35;
    }

    if (a3 && *(a3 + 48) == 32)
    {
      v27 = 1;
      llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::insert(a4, &v27, v28);
      v27 = 6;
      v14 = &v26;
LABEL_37:
      llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::insert(a4, &v27, v14);
      return 0;
    }

    return "invalid platform";
  }

  result = "unknown platform";
  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        v19 = *a1;
        v20 = *(a1 + 3);
        if (v19 == 1668571511 && v20 == 1936681059)
        {
          v15 = 4;
          goto LABEL_35;
        }

        break;
      case 9:
        v22 = *a1;
        v23 = *(a1 + 8);
        if (v22 == 0x696B726576697264 && v23 == 116)
        {
          v15 = 10;
          goto LABEL_35;
        }

        break;
      case 11:
        v11 = *a1;
        v12 = *(a1 + 3);
        if (v11 == 0x6C6174616363616DLL && v12 == 0x7473796C61746163)
        {
          goto LABEL_27;
        }

        break;
    }
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        if (*a1 != 1936684660)
        {
          return result;
        }

        v15 = 3;
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        if (*a1 != 1868783981 || a1[2] != 30835)
        {
          v8 = *a1;
          v9 = a1[2];
          if (v8 != 1836281705 || v9 != 25441)
          {
            return result;
          }

LABEL_27:
          v27 = 6;
          if (!a3 || *(a3 + 48) == 32)
          {
            goto LABEL_36;
          }

          return "invalid platform";
        }

        v15 = 1;
      }

LABEL_35:
      v27 = v15;
LABEL_36:
      v14 = &v25;
      goto LABEL_37;
    }

    v16 = *a1;
    v17 = *(a1 + 2);
    if (v16 == 28521 && v17 == 115)
    {
      v15 = 2;
      goto LABEL_35;
    }
  }

  return result;
}

llvm::raw_ostream *llvm::yaml::ScalarTraits<SwiftVersion,void>::output(llvm::raw_ostream *result, int a2, llvm::raw_ostream *this)
{
  v3 = *result;
  if (*result <= 2u)
  {
    if (v3 == 1)
    {
      v4 = *(this + 4);
      if ((*(this + 3) - v4) <= 2)
      {
        v5 = "1.0";
        return llvm::raw_ostream::write(this, v5, 3uLL);
      }

      v6 = 48;
LABEL_19:
      *(v4 + 2) = v6;
      v7 = 11825;
      goto LABEL_21;
    }

    if (v3 == 2)
    {
      v4 = *(this + 4);
      if ((*(this + 3) - v4) <= 2)
      {
        v5 = "1.1";
        return llvm::raw_ostream::write(this, v5, 3uLL);
      }

      v6 = 49;
      goto LABEL_19;
    }

    return write_unsigned<unsigned long>(this, v3, 0, 0, 0);
  }

  if (v3 == 3)
  {
    v4 = *(this + 4);
    if ((*(this + 3) - v4) <= 2)
    {
      v5 = "2.0";
      return llvm::raw_ostream::write(this, v5, 3uLL);
    }

    *(v4 + 2) = 48;
    v7 = 11826;
  }

  else
  {
    if (v3 != 4)
    {
      return write_unsigned<unsigned long>(this, v3, 0, 0, 0);
    }

    v4 = *(this + 4);
    if ((*(this + 3) - v4) <= 2)
    {
      v5 = "3.0";
      return llvm::raw_ostream::write(this, v5, 3uLL);
    }

    *(v4 + 2) = 48;
    v7 = 11827;
  }

LABEL_21:
  *v4 = v7;
  *(this + 4) += 3;
  return result;
}

const char *llvm::yaml::ScalarTraits<SwiftVersion,void>::input(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(a3 + 48) != 64)
  {
    if (a2 == 3)
    {
      if (*a1 == 11825 && *(a1 + 2) == 48)
      {
        v10 = 1;
      }

      else if (*a1 == 11825 && *(a1 + 2) == 49)
      {
        v10 = 2;
      }

      else if (*a1 == 11826 && *(a1 + 2) == 48)
      {
        v10 = 3;
      }

      else
      {
        if (*a1 != 11827 || *(a1 + 2) != 48)
        {
          goto LABEL_19;
        }

        v10 = 4;
      }

      result = 0;
      *a4 = v10;
      return result;
    }

LABEL_19:
    *a4 = 0;
  }

  v11 = 0;
  v12 = a1;
  v13 = a2;
  if ((llvm::consumeUnsignedInteger(&v12, 0xA, &v11, a4) & 1) != 0 || v13 || v11 >= 0x100)
  {
    return "invalid Swift ABI version.";
  }

  result = 0;
  *a4 = v11;
  return result;
}

uint64_t _GLOBAL__sub_I_InstrProf_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_39, 0, 0);
  byte_2815AA4E0 = 0;
  qword_2815AA4E8 = &unk_2883EAB68;
  *&word_2815AA4F0 = 0;
  _MergedGlobals_39 = &unk_2883EAB00;
  qword_2815AA4F8 = &unk_2883EA848;
  qword_2815AA500 = &unk_2883EAB88;
  qword_2815AA518 = &qword_2815AA500;
  llvm::cl::Option::setArgStr(v0, "static-func-full-module-prefix", 0x1EuLL);
  byte_2815AA4E0 = 1;
  word_2815AA4F0 = 257;
  word_2815AA46A = word_2815AA46A & 0xFF9F | 0x20;
  qword_2815AA480 = "Use full module build paths in the profile counter names for static functions.";
  unk_2815AA488 = 78;
  llvm::cl::Option::addArgument(&_MergedGlobals_39);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_39, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&qword_2815AA520, 0, 0);
  dword_2815AA5A0 = 0;
  qword_2815AA5A8 = &unk_2883EABF0;
  *&dword_2815AA5B0 = 0;
  qword_2815AA520 = &unk_2883EA9C8;
  qword_2815AA5B8 = &unk_2883EA8D8;
  qword_2815AA5C0 = &unk_2883EE1B8;
  qword_2815AA5D8 = &qword_2815AA5C0;
  llvm::cl::Option::setArgStr(v1, "static-func-strip-dirname-prefix", 0x20uLL);
  dword_2815AA5A0 = 0;
  byte_2815AA5B4 = 1;
  dword_2815AA5B0 = 0;
  word_2815AA52A = word_2815AA52A & 0xFF9F | 0x20;
  qword_2815AA540 = "Strip specified level of directory name from source path in the profile counter name for static functions.";
  unk_2815AA548 = 106;
  llvm::cl::Option::addArgument(&qword_2815AA520);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815AA520, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815AA5E0, 0, 0);
  byte_2815AA660 = 0;
  qword_2815AA670 = 0;
  qword_2815AA668 = &unk_2883EAB68;
  qword_2815AA5E0 = &unk_2883EAB00;
  qword_2815AA678 = &unk_2883EA848;
  qword_2815AA680 = &unk_2883EAB88;
  qword_2815AA698 = &qword_2815AA680;
  llvm::cl::Option::setArgStr(v2, "enable-name-compression", 0x17uLL);
  qword_2815AA600 = "Enable name/filename string compression";
  unk_2815AA608 = 39;
  byte_2815AA660 = 1;
  LOWORD(qword_2815AA670) = 257;
  llvm::cl::Option::addArgument(&qword_2815AA5E0);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AA5E0, &dword_274E5C000);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

uint64_t _GLOBAL__sub_I_ProfileSummaryBuilder_cpp()
{
  v8 = 1;
  v7.n128_u64[0] = "Merge context profiles before calculating thresholds.";
  v7.n128_u64[1] = 53;
  llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::OptionHidden,llvm::cl::desc>(&llvm::UseContextLessSummary, "profile-summary-contextless", &v8, &v7);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &llvm::UseContextLessSummary, &dword_274E5C000);
  v0 = llvm::cl::Option::Option(&llvm::ProfileSummaryCutoffHot, 0, 0);
  dword_2815ABEE8 = 0;
  qword_2815ABEF0 = &unk_2883EAC10;
  *&dword_2815ABEF8 = 0;
  llvm::ProfileSummaryCutoffHot = &unk_2883EAA30;
  qword_2815ABF00 = &unk_2883EA8A8;
  qword_2815ABF08 = &unk_2883EE200;
  qword_2815ABF20 = &qword_2815ABF08;
  llvm::cl::Option::setArgStr(v0, "profile-summary-cutoff-hot", 0x1AuLL);
  word_2815ABE72 = word_2815ABE72 & 0xFF9F | 0x20;
  dword_2815ABEE8 = 990000;
  byte_2815ABEFC = 1;
  dword_2815ABEF8 = 990000;
  qword_2815ABE88 = "A count is hot if it exceeds the minimum count to reach this percentile of total counts.";
  unk_2815ABE90 = 88;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryCutoffHot);
  __cxa_atexit(llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt, &llvm::ProfileSummaryCutoffHot, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&llvm::ProfileSummaryCutoffCold, 0, 0);
  dword_2815ABE28 = 0;
  qword_2815ABE30 = &unk_2883EAC10;
  *&dword_2815ABE38 = 0;
  llvm::ProfileSummaryCutoffCold = &unk_2883EAA30;
  qword_2815ABE40 = &unk_2883EA8A8;
  qword_2815ABE48 = &unk_2883EE200;
  qword_2815ABE60 = &qword_2815ABE48;
  llvm::cl::Option::setArgStr(v1, "profile-summary-cutoff-cold", 0x1BuLL);
  word_2815ABDB2 = word_2815ABDB2 & 0xFF9F | 0x20;
  dword_2815ABE28 = 999999;
  byte_2815ABE3C = 1;
  dword_2815ABE38 = 999999;
  qword_2815ABDC8 = "A count is cold if it is below the minimum count to reach this percentile of total counts.";
  unk_2815ABDD0 = 90;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryCutoffCold);
  __cxa_atexit(llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt, &llvm::ProfileSummaryCutoffCold, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&llvm::ProfileSummaryHugeWorkingSetSizeThreshold, 0, 0);
  dword_2815AB908 = 0;
  qword_2815AB910 = &unk_2883EABF0;
  *&dword_2815AB918 = 0;
  llvm::ProfileSummaryHugeWorkingSetSizeThreshold = &unk_2883EA9C8;
  qword_2815AB920 = &unk_2883EA8D8;
  qword_2815AB928 = &unk_2883EE1B8;
  qword_2815AB940 = &qword_2815AB928;
  llvm::cl::Option::setArgStr(v2, "profile-summary-huge-working-set-size-threshold", 0x2FuLL);
  word_2815AB892 = word_2815AB892 & 0xFF9F | 0x20;
  dword_2815AB908 = 15000;
  byte_2815AB91C = 1;
  dword_2815AB918 = 15000;
  qword_2815AB8A8 = "The code working set size is considered huge if the number of blocks required to reach the -profile-summary-cutoff-hot percentile exceeds this count.";
  unk_2815AB8B0 = 149;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryHugeWorkingSetSizeThreshold);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &llvm::ProfileSummaryHugeWorkingSetSizeThreshold, &dword_274E5C000);
  v3 = llvm::cl::Option::Option(&llvm::ProfileSummaryLargeWorkingSetSizeThreshold, 0, 0);
  dword_2815AB848 = 0;
  qword_2815AB850 = &unk_2883EABF0;
  *&dword_2815AB858 = 0;
  llvm::ProfileSummaryLargeWorkingSetSizeThreshold = &unk_2883EA9C8;
  qword_2815AB860 = &unk_2883EA8D8;
  qword_2815AB868 = &unk_2883EE1B8;
  qword_2815AB880 = &qword_2815AB868;
  llvm::cl::Option::setArgStr(v3, "profile-summary-large-working-set-size-threshold", 0x30uLL);
  word_2815AB7D2 = word_2815AB7D2 & 0xFF9F | 0x20;
  dword_2815AB848 = 12500;
  byte_2815AB85C = 1;
  dword_2815AB858 = 12500;
  qword_2815AB7E8 = "The code working set size is considered large if the number of blocks required to reach the -profile-summary-cutoff-hot percentile exceeds this count.";
  unk_2815AB7F0 = 150;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryLargeWorkingSetSizeThreshold);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &llvm::ProfileSummaryLargeWorkingSetSizeThreshold, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&llvm::ProfileSummaryHotCount, 0, 0);
  xmmword_2815AC130 = 0u;
  unk_2815AC140 = 0u;
  *(&xmmword_2815AC130 + 1) = &unk_2883EB1A8;
  llvm::ProfileSummaryHotCount = &unk_2883EB140;
  qword_2815AC150 = &unk_2883EA908;
  qword_2815AC158 = &unk_2883EB1C8;
  qword_2815AC170 = &qword_2815AC158;
  llvm::cl::Option::setArgStr(v4, "profile-summary-hot-count", 0x19uLL);
  word_2815AC0BA = word_2815AC0BA & 0xFF9F | 0x40;
  qword_2815AC0D0 = "A fixed hot count that overrides the count derived from profile-summary-cutoff-hot";
  unk_2815AC0D8 = 82;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryHotCount);
  __cxa_atexit(llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt, &llvm::ProfileSummaryHotCount, &dword_274E5C000);
  v5 = llvm::cl::Option::Option(&llvm::ProfileSummaryColdCount, 0, 0);
  xmmword_2815ABFA8 = 0u;
  unk_2815ABFB8 = 0u;
  *(&xmmword_2815ABFA8 + 1) = &unk_2883EB1A8;
  llvm::ProfileSummaryColdCount = &unk_2883EB140;
  qword_2815ABFC8 = &unk_2883EA908;
  qword_2815ABFD0 = &unk_2883EB1C8;
  qword_2815ABFE8 = &qword_2815ABFD0;
  llvm::cl::Option::setArgStr(v5, "profile-summary-cold-count", 0x1AuLL);
  word_2815ABF32 = word_2815ABF32 & 0xFF9F | 0x40;
  qword_2815ABF48 = "A fixed cold count that overrides the count derived from profile-summary-cutoff-cold";
  unk_2815ABF50 = 84;
  llvm::cl::Option::addArgument(&llvm::ProfileSummaryColdCount);
  return __cxa_atexit(llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt, &llvm::ProfileSummaryColdCount, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_SampleProf_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815AA760, 0, 0);
  xmmword_2815AA7E0 = 0u;
  *&qword_2815AA7F0 = 0u;
  *(&xmmword_2815AA7E0 + 1) = &unk_2883EB1A8;
  qword_2815AA760 = &unk_2883EB140;
  qword_2815AA800 = &unk_2883EA908;
  qword_2815AA808 = &unk_2883EB1C8;
  qword_2815AA820 = &qword_2815AA808;
  llvm::cl::Option::setArgStr(v0, "profile-symbol-list-cutoff", 0x1AuLL);
  word_2815AA76A = word_2815AA76A & 0xFF9F | 0x20;
  *&xmmword_2815AA7E0 = -1;
  byte_2815AA7F8 = 1;
  qword_2815AA7F0 = -1;
  qword_2815AA780 = "Cutoff value about how many symbols in profile symbol list will be used. This is very useful for performance debugging";
  unk_2815AA788 = 118;
  llvm::cl::Option::addArgument(&qword_2815AA760);
  __cxa_atexit(llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt, &qword_2815AA760, &dword_274E5C000);
  v1 = llvm::cl::Option::Option(&_MergedGlobals_40, 0, 0);
  byte_2815AA720 = 0;
  qword_2815AA728 = &unk_2883EAB68;
  unk_2815AA730 = 0;
  _MergedGlobals_40 = &unk_2883EAB00;
  qword_2815AA738 = &unk_2883EA848;
  qword_2815AA740 = &unk_2883EAB88;
  qword_2815AA758 = &qword_2815AA740;
  llvm::cl::Option::setArgStr(v1, "generate-merged-base-profiles", 0x1DuLL);
  qword_2815AA6C0 = "When generating nested context-sensitive profiles, always generate extra base profile for function with all its context profiles merged into it.";
  unk_2815AA6C8 = 144;
  llvm::cl::Option::addArgument(&_MergedGlobals_40);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_40, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_SampleProfReader_cpp()
{
  v0 = llvm::cl::Option::Option(&ProfileIsFSDisciminator, 0, 0);
  byte_2815A4AB8 = 0;
  qword_2815A4AC0 = &unk_2883EAB68;
  *&word_2815A4AC8 = 0;
  ProfileIsFSDisciminator = &unk_2883EAB00;
  qword_2815A4AD0 = &unk_2883EA848;
  qword_2815A4AD8 = &unk_2883EAB88;
  qword_2815A4AF0 = &qword_2815A4AD8;
  llvm::cl::Option::setArgStr(v0, "profile-isfs", 0xCuLL);
  word_2815A4A42 = word_2815A4A42 & 0xFF9F | 0x20;
  byte_2815A4AB8 = 0;
  word_2815A4AC8 = 256;
  qword_2815A4A58 = "Profile uses flow sensitive discriminators";
  unk_2815A4A60 = 42;
  llvm::cl::Option::addArgument(&ProfileIsFSDisciminator);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &ProfileIsFSDisciminator, &dword_274E5C000);
}

llvm::CallBase **llvm::AbstractCallSite::AbstractCallSite(llvm::CallBase **a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 16);
  if (v4 < 0x1C)
  {
    *a1 = 0;
    a1[1] = (a1 + 3);
    v10 = (a1 + 1);
    a1[2] = 0;
    if (v4 != 5)
    {
      return a1;
    }

    v9 = *(v3 + 8);
    if (!v9)
    {
      return a1;
    }

    if (*(v9 + 8))
    {
      return a1;
    }

    if (*(v3 + 18) - 38 > 0xC)
    {
      return a1;
    }

    v3 = *(v9 + 24);
    v13 = *(v3 + 16);
    if (v13 < 0x1C)
    {
      return a1;
    }

    v14 = v13 - 33;
    v6 = v14 > 0x33;
    v15 = (1 << v14) & 0x8000000000041;
    if (v6 || v15 == 0)
    {
      return a1;
    }

    *a1 = v3;
  }

  else
  {
    v5 = v4 - 33;
    v6 = v5 > 0x33;
    v7 = (1 << v5) & 0x8000000000041;
    if (v6 || v7 == 0)
    {
      *a1 = 0;
      a1[1] = (a1 + 3);
      a1[2] = 0;
      return a1;
    }

    v9 = a2;
    *a1 = v3;
    a1[1] = (a1 + 3);
    v10 = (a1 + 1);
    a1[2] = 0;
  }

  v11 = (v3 - 32);
  if (v3 - 32 != v9)
  {
    v12 = *v11;
    if (*v11 && !*(v12 + 16) && *(v12 + 24) == *(v3 + 72) && (Metadata = llvm::Value::getMetadata(v12, 26)) != 0 && ((v19 = *(Metadata - 16), (v19 & 2) != 0) ? (v20 = *(Metadata - 32), v21 = *(Metadata - 24)) : (v20 = (Metadata - 16 - 8 * ((v19 >> 2) & 0xF)), v21 = (v19 >> 6) & 0xF), v21))
    {
      v22 = *a1;
      v23 = 8 * v21;
      while (1)
      {
        v24 = *v20;
        v25 = (*v20 - 16);
        if ((*v25 & 2) != 0)
        {
          v26 = *(v24 - 32);
        }

        else
        {
          v26 = &v25[-((*v25 >> 2) & 0xF)];
        }

        v27 = *(*v26 + 128);
        v28 = (v27 + 24);
        if (*(v27 + 32) >= 0x41u)
        {
          v28 = *v28;
        }

        if (*v28 == ((v9 - *a1 + 32 * (*(*a1 + 5) & 0x7FFFFFF)) >> 5))
        {
          break;
        }

        ++v20;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v29 = llvm::CallBase::arg_end(*a1);
      if ((*v25 & 2) != 0)
      {
        v30 = *(v24 - 24);
      }

      else
      {
        v30 = (*v25 >> 6) & 0xF;
      }

      v31 = *(v22 + 5);
      v32 = v30 - 1;
      if (v32)
      {
        v33 = 0;
        v34 = 8 * v32;
        do
        {
          if ((*v25 & 2) != 0)
          {
            v35 = *(v24 - 32);
          }

          else
          {
            v35 = &v25[-((*v25 >> 2) & 0xF)];
          }

          v36 = *(v35[v33 / 8] + 128);
          v37 = *(v36 + 32);
          if (v37 > 0x40)
          {
            v38 = **(v36 + 24);
          }

          else
          {
            v38 = (*(v36 + 24) << -v37) >> -v37;
          }

          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v10, v38);
          v33 += 8;
        }

        while (v34 != v33);
      }

      if (*(*(v12 + 24) + 8) > 0xFFu)
      {
        v39 = *v25;
        if ((*v25 & 2) != 0)
        {
          v40 = *(v24 - 24);
          v41 = *(v24 - 32);
        }

        else
        {
          v40 = (v39 >> 6) & 0xF;
          v41 = &v25[-((v39 >> 2) & 0xF)];
        }

        if ((llvm::Constant::isNullValue(*(v41[v40 - 1] + 128)) & 1) == 0)
        {
          v42 = (v29 - (v22 - 32 * (v31 & 0x7FFFFFF))) >> 5;
          v43 = *(v12 + 96);
          if (v43 < v42)
          {
            do
            {
              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v10, v43++);
            }

            while (v42 != v43);
          }
        }
      }
    }

    else
    {
LABEL_11:
      *a1 = 0;
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::printLLVMNameWithoutPrefix(llvm::raw_ostream *a1, llvm::raw_ostream *a2, size_t a3)
{
  v3 = a3;
  v6 = MEMORY[0x277D85DE0];
  if ((*(MEMORY[0x277D85DE0] + 4 * *a2 + 60) & 0x400) != 0)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = a3;
  v9 = a2;
  while (1)
  {
    v10 = *v9;
    if (v10 < 0)
    {
      break;
    }

    if ((*(v6 + 4 * v10 + 60) & 0x500) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = (v9 + 1);
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (__maskrune(*v9, 0x500uLL))
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v10 - 45 > 0x32 || ((1 << (v10 - 45)) & 0x4000000000003) == 0)
  {
    v7 = 1;
  }

  if (v10 - 45 <= 0x32 && ((1 << (v10 - 45)) & 0x4000000000003) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v3 = a3;
  if (v7)
  {
LABEL_18:
    v12 = *(a1 + 4);
    if (v12 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 34);
    }

    else
    {
      *(a1 + 4) = v12 + 1;
      *v12 = 34;
    }

    result = llvm::printEscapedString(a2, v3, a1);
    v14 = *(a1 + 4);
    if (v14 >= *(a1 + 3))
    {

      return llvm::raw_ostream::write(a1, 34);
    }

    else
    {
      *(a1 + 4) = v14 + 1;
      *v14 = 34;
    }

    return result;
  }

LABEL_20:

  return llvm::raw_ostream::operator<<(a1, a2, v3);
}

void llvm::ModuleSlotTracker::~ModuleSlotTracker(llvm::ModuleSlotTracker *this)
{
  *this = &unk_2883F0F70;
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](this + 80);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](this + 48);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  llvm::ModuleSlotTracker::~ModuleSlotTracker(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::ModuleSlotTracker::getMachine(llvm::ModuleSlotTracker *this)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(this + 16))
  {
    *(this + 16) = 0;
    operator new();
  }

  result = *(this + 5);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *llvm::ModuleSlotTracker::incorporateFunction(const llvm::Function **this, const llvm::Function *a2)
{
  result = llvm::ModuleSlotTracker::getMachine(this);
  if (result)
  {
    v5 = this[4];
    if (v5 != a2)
    {
      if (v5)
      {
        v6 = this[5];
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::clear(v6 + 34);
        *(v6 + 2) = 0;
        *(v6 + 24) = 0;
      }

      v7 = this[5];
      *(v7 + 2) = a2;
      *(v7 + 24) = 0;
      this[4] = a2;
    }
  }

  return result;
}

uint64_t llvm::SlotTracker::getLocalSlot(llvm::SlotTracker *this, const llvm::Value *a2)
{
  if (*(this + 1))
  {
    llvm::SlotTracker::processModule(this);
    *(this + 1) = 0;
  }

  if (*(this + 2) && (*(this + 24) & 1) == 0)
  {
    llvm::SlotTracker::processFunction(this);
  }

  v6 = a2;
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(this + 17, &v6, &v7);
  result = 0xFFFFFFFFLL;
  if (v4)
  {
    if (v7 != *(this + 17) + 16 * *(this + 38))
    {
      return *(v7 + 8);
    }
  }

  return result;
}

void *std::function<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Module const*,BOOL)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *std::function<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(llvm::AbstractSlotTrackerStorage *,llvm::Function const*,BOOL)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

double llvm::SlotTracker::SlotTracker(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = &unk_2883F0F90;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 25) = a3;
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *&result = 16;
  *(a1 + 252) = 16;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 316) = 16;
  return result;
}

double llvm::SlotTracker::SlotTracker(llvm::SlotTracker *this, const Function *a2, char a3)
{
  *this = &unk_2883F0F90;
  if (a2)
  {
    v3 = *(a2 + 5);
  }

  else
  {
    v3 = 0;
  }

  *(this + 1) = v3;
  *(this + 2) = a2;
  *(this + 24) = 0;
  *(this + 25) = a3;
  *(this + 7) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 62) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *&result = 16;
  *(this + 252) = 16;
  *(this + 70) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 72) = 0;
  *(this + 78) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 316) = 16;
  return result;
}

uint64_t llvm::SlotTracker::processModule(llvm::SlotTracker *this)
{
  v2 = *(this + 1);
  v3 = v2 + 1;
  v4 = v2[2];
  if (v4 != v2 + 1)
  {
    do
    {
      if (v4)
      {
        v5 = (v4 - 7);
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 23) & 0x10) == 0)
      {
        v6 = *(this + 32);
        *(this + 32) = v6 + 1;
        v31 = v5;
        *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 13, &v31) + 2) = v6;
      }

      llvm::SlotTracker::processGlobalObjectMetadata(this, v5);
      v7 = *(v5 + 9);
      if (v7)
      {
        llvm::SlotTracker::CreateAttributeSetSlot(this, v7);
      }

      v4 = v4[1];
    }

    while (v4 != v3);
    v2 = *(this + 1);
  }

  v8 = v2 + 5;
  v9 = v2[6];
  if (v9 != v2 + 5)
  {
    do
    {
      v10 = (v9 - 6);
      if (!v9)
      {
        v10 = 0;
      }

      if ((*(v10 + 23) & 0x10) == 0)
      {
        v11 = *(this + 32);
        *(this + 32) = v11 + 1;
        v31 = v10;
        *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 13, &v31) + 2) = v11;
      }

      v9 = v9[1];
    }

    while (v9 != v8);
    v2 = *(this + 1);
  }

  v12 = v2 + 7;
  v13 = v2[8];
  if (v13 != v2 + 7)
  {
    do
    {
      v14 = (v13 - 7);
      if (!v13)
      {
        v14 = 0;
      }

      if ((*(v14 + 23) & 0x10) == 0)
      {
        v15 = *(this + 32);
        *(this + 32) = v15 + 1;
        v31 = v14;
        *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 13, &v31) + 2) = v15;
      }

      v13 = v13[1];
    }

    while (v13 != v12);
    v2 = *(this + 1);
  }

  v16 = v2 + 9;
  v17 = v2[10];
  if (v17 != v2 + 9)
  {
    do
    {
      v18 = *(v17[6] + 8);
      if (v18)
      {
        v19 = 0;
        v20 = 8 * v18;
        do
        {
          llvm::SlotTracker::CreateMetadataSlot(this, *(*v17[6] + v19));
          v19 += 8;
        }

        while (v20 != v19);
      }

      v17 = v17[1];
    }

    while (v17 != v16);
    v2 = *(this + 1);
  }

  v21 = v2 + 3;
  for (i = v2[4]; i != v21; i = i[1])
  {
    if (i)
    {
      v23 = (i - 7);
    }

    else
    {
      v23 = 0;
    }

    if ((*(v23 + 23) & 0x10) == 0)
    {
      v24 = *(this + 32);
      *(this + 32) = v24 + 1;
      v31 = v23;
      *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 13, &v31) + 2) = v24;
    }

    if (*(this + 25) == 1)
    {
      llvm::SlotTracker::processFunctionMetadata(this, v23);
    }

    v25 = *(v23 + 14);
    if (v25 && *(v25 + 8))
    {
      v26 = *(v25 + 40);
      if (v26)
      {
        llvm::SlotTracker::CreateAttributeSetSlot(this, v26);
      }
    }
  }

  result = *(this + 7);
  if (result)
  {
    v28 = *(this + 25);
    v30 = *(this + 1);
    v31 = this;
    v29 = v28;
    return (*(*result + 48))(result, &v31, &v30, &v29);
  }

  return result;
}

void llvm::SlotTracker::processGlobalObjectMetadata(uint64_t a1, uint64_t ***a2)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = 0x400000000;
  llvm::Value::getAllMetadata(a2, &v8);
  v3 = v8;
  if (v9)
  {
    v4 = 16 * v9;
    v5 = (v8 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      llvm::SlotTracker::CreateMetadataSlot(a1, v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v8;
  }

  if (v3 != v10)
  {
    free(v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SlotTracker::CreateAttributeSetSlot(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 200;
  v4 = *(a1 + 200);
  v14 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(v4, *(v5 + 16), a2, &v14);
  result = *v5;
  v8 = *(v5 + 16);
  if (v6)
  {
    v9 = v14 == *v5 + 16 * v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *(a1 + 224);
    *(a1 + 224) = v10 + 1;
    v14 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(result, v8, a2, &v14);
    v11 = v14;
    if (result)
    {
LABEL_12:
      *(v11 + 8) = v10;
      return result;
    }

    v12 = *(a1 + 208);
    v13 = *(a1 + 216);
    if (4 * v12 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v12 - *(a1 + 212) > v13 >> 3)
    {
LABEL_9:
      ++*(a1 + 208);
      if (*v11 != -4)
      {
        --*(a1 + 212);
      }

      *v11 = a2;
      *(v11 + 8) = 0;
      goto LABEL_12;
    }

    llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::grow(v5, v13);
    v14 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(*(a1 + 200), *(a1 + 216), a2, &v14);
    v11 = v14;
    goto LABEL_9;
  }

  return result;
}

uint64_t llvm::SlotTracker::CreateMetadataSlot(uint64_t result, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 6)
  {
    return result;
  }

  if (v4 == 33)
  {
    return result;
  }

  v20[7] = v2;
  v20[8] = v3;
  v6 = result;
  v7 = *(result + 192);
  v9 = result + 168;
  v8 = *(result + 168);
  v20[0] = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v8, *(v9 + 16), a2, v20);
  if (result)
  {
    return result;
  }

  v10 = *(v6 + 176);
  v11 = *(v6 + 184);
  if (4 * v10 + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_22;
  }

  if (v11 + ~v10 - *(v6 + 180) <= v11 >> 3)
  {
LABEL_22:
    llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(v9, v11);
    v20[0] = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(v6 + 168), *(v6 + 184), a2, v20);
  }

  v12 = v20[0];
  ++*(v6 + 176);
  if (*v12 != -4096)
  {
    --*(v6 + 180);
  }

  *v12 = a2;
  *(v12 + 8) = v7;
  ++*(v6 + 192);
  v14 = a2 - 16;
  v13 = *(a2 - 2);
  if ((v13 & 2) != 0)
  {
    v15 = *(a2 - 6);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = (v13 >> 6) & 0xF;
    if (!v15)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = 8 * v15;
  do
  {
    if ((*v14 & 2) != 0)
    {
      v18 = *(a2 - 4);
    }

    else
    {
      v18 = &v14[-8 * ((*v14 >> 2) & 0xFLL)];
    }

    v19 = *&v18[v16];
    if (v19)
    {
      result = llvm::MDNode::classof(*&v18[v16]);
      if (result)
      {
        result = llvm::SlotTracker::CreateMetadataSlot(v6, v19);
      }
    }

    v16 += 8;
  }

  while (v17 != v16);
  return result;
}

void llvm::SlotTracker::processFunctionMetadata(llvm::SlotTracker *this, uint64_t ***a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  llvm::SlotTracker::processGlobalObjectMetadata(this, a2);
  v4 = a2 + 9;
  v5 = a2[10];
  if (v5 != a2 + 9)
  {
    do
    {
      v6 = v5 - 3;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = (v6 + 5);
      for (i = v6[6]; i != v7; i = i[1])
      {
        if (i)
        {
          v9 = (i - 3);
        }

        else
        {
          v9 = 0;
        }

        if (*(v9 + 16) == 84)
        {
          v10 = *(v9 - 32);
          if (v10)
          {
            if (!*(v10 + 16) && *(v10 + 24) == *(v9 + 72) && (*(v10 + 33) & 0x20) != 0)
            {
              v11 = *(v9 + 20);
              if ((v11 & 0x40000000) != 0)
              {
                v13 = *(v9 - 8);
                v12 = v11 & 0x7FFFFFF;
                if (!v12)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                v12 = v11 & 0x7FFFFFF;
                v13 = (v9 - 32 * v12);
                if (!v12)
                {
                  goto LABEL_27;
                }
              }

              v14 = 32 * v12;
              do
              {
                v15 = *v13;
                if (*v13 && *(v15 + 16) == 23)
                {
                  v16 = *(v15 + 24);
                  v17 = llvm::MDNode::classof(v16);
                  if (v16 && v17 != 0)
                  {
                    llvm::SlotTracker::CreateMetadataSlot(this, v16);
                  }
                }

                v13 += 4;
                v14 -= 32;
              }

              while (v14);
            }
          }
        }

LABEL_27:
        v24 = v26;
        v25 = 0x400000000;
        if (*(v9 + 48) || (*(v9 + 23) & 0x20) != 0)
        {
          llvm::Instruction::getAllMetadataImpl(v9, &v24);
          v19 = v24;
          if (v25)
          {
            v20 = 16 * v25;
            v21 = (v24 + 8);
            do
            {
              v22 = *v21;
              v21 += 2;
              llvm::SlotTracker::CreateMetadataSlot(this, v22);
              v20 -= 16;
            }

            while (v20);
            v19 = v24;
          }

          if (v19 != v26)
          {
            free(v19);
          }
        }
      }

      v5 = v5[1];
    }

    while (v5 != v4);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SlotTracker::processFunction(llvm::SlotTracker *this)
{
  *(this + 40) = 0;
  if ((*(this + 25) & 1) == 0)
  {
    llvm::SlotTracker::processFunctionMetadata(this, *(this + 2));
  }

  v2 = *(this + 2);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 2));
    v4 = *(this + 2);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 2));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  while (v3 != v5)
  {
    if ((*(v3 + 23) & 0x10) == 0)
    {
      v26 = v3;
      v6 = *(this + 40);
      *(this + 40) = v6 + 1;
      *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 17, &v26) + 2) = v6;
    }

    v3 = (v3 + 40);
  }

  v7 = *(this + 2);
  v8 = v7 + 72;
  v9 = *(v7 + 80);
  if (v9 != v7 + 72)
  {
    do
    {
      if (v9)
      {
        v10 = v9 - 24;
      }

      else
      {
        v10 = 0;
      }

      if ((*(v10 + 23) & 0x10) == 0)
      {
        v26 = v10;
        v11 = *(this + 40);
        *(this + 40) = v11 + 1;
        *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 17, &v26) + 2) = v11;
      }

      v12 = v10 + 40;
      for (i = *(v10 + 48); i != v12; i = *(i + 8))
      {
        if (i)
        {
          v14 = i - 24;
        }

        else
        {
          v14 = 0;
        }

        if (*(*v14 + 8) != 7 && (*(v14 + 23) & 0x10) == 0)
        {
          v26 = v14;
          v15 = *(this + 40);
          *(this + 40) = v15 + 1;
          *(llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::FindAndConstruct(this + 17, &v26) + 2) = v15;
        }

        v16 = *(v14 + 16) - 33;
        v17 = v16 > 0x33;
        v18 = (1 << v16) & 0x8000000000041;
        if (!v17 && v18 != 0)
        {
          v20 = *(v14 + 64);
          if (v20)
          {
            if (*(v20 + 8))
            {
              v21 = *(v20 + 40);
              if (v21)
              {
                llvm::SlotTracker::CreateAttributeSetSlot(this, v21);
              }
            }
          }
        }
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }

  result = *(this + 11);
  if (result)
  {
    v23 = *(this + 25);
    v25 = *(this + 2);
    v26 = this;
    v24 = v23;
    result = (*(*result + 48))(result, &v26, &v25, &v24);
  }

  *(this + 24) = 1;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::clear(_DWORD *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    v3 = result[4];
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v4;
      }

LABEL_10:
      if (v5 == v3)
      {
        v6 = 0;
        *(result + 1) = 0;
        v7 = v3 + 0xFFFFFFFFFFFFFFFLL;
        v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
        v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
        v10 = vdupq_n_s64(v8);
        v11 = (*result + 16);
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

      else
      {
        result = MEMORY[0x277C69E30](*result, 8);
        if (v5)
        {
          v20 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
          v21 = v20 | (v20 >> 2) | ((v20 | (v20 >> 2)) >> 4);
          LODWORD(v21) = (((v21 | (v21 >> 8)) >> 16) | v21 | (v21 >> 8)) + 1;
          v1[4] = v21;
          result = operator new(16 * v21, 8uLL);
          *v1 = result;
          *(v1 + 1) = 0;
          v22 = v1[4];
          if (v22)
          {
            v23 = 0;
            v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
            v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
            v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
            v27 = vdupq_n_s64(v25);
            v28 = result + 4;
            do
            {
              v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
              if (v29.i8[0])
              {
                *(v28 - 2) = -4096;
              }

              if (v29.i8[4])
              {
                *v28 = -4096;
              }

              v23 += 2;
              v28 += 4;
            }

            while (v26 != v23);
          }
        }

        else
        {
          *v1 = 0;
          *(v1 + 1) = 0;
          v1[4] = 0;
        }
      }

      return result;
    }
  }

  else
  {
    if (!result[3])
    {
      return result;
    }

    v3 = result[4];
    if (v3 > 0x40)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v13 = 0;
    v14 = v3 + 0xFFFFFFFFFFFFFFFLL;
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    v16 = (v14 & 0xFFFFFFFFFFFFFFFLL) - (v14 & 1) + 2;
    v17 = vdupq_n_s64(v15);
    v18 = (*result + 16);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_2750C1210)));
      if (v19.i8[0])
      {
        *(v18 - 2) = -4096;
      }

      if (v19.i8[4])
      {
        *v18 = -4096;
      }

      v13 += 2;
      v18 += 4;
    }

    while (v16 != v13);
  }

  *(result + 1) = 0;
  return result;
}

uint64_t llvm::SlotTracker::getGlobalSlot(llvm::SlotTracker *this, const llvm::GlobalValue *a2)
{
  if (*(this + 1))
  {
    llvm::SlotTracker::processModule(this);
    *(this + 1) = 0;
  }

  if (*(this + 2) && (*(this + 24) & 1) == 0)
  {
    llvm::SlotTracker::processFunction(this);
  }

  v6 = a2;
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(this + 13, &v6, &v7);
  result = 0xFFFFFFFFLL;
  if (v4)
  {
    if (v7 != *(this + 13) + 16 * *(this + 30))
    {
      return *(v7 + 8);
    }
  }

  return result;
}

uint64_t llvm::SlotTracker::getMetadataSlot(llvm::SlotTracker *this, const llvm::MDNode *a2)
{
  if (*(this + 1))
  {
    llvm::SlotTracker::processModule(this);
    *(this + 1) = 0;
  }

  if (*(this + 2) && (*(this + 24) & 1) == 0)
  {
    llvm::SlotTracker::processFunction(this);
  }

  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(this + 21), *(this + 46), a2, &v6))
  {
    v4 = v6 == *(this + 21) + 16 * *(this + 46);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v6 + 8);
  }
}

uint64_t llvm::SlotTracker::getAttributeGroupSlot(llvm::SlotTracker *this, uint64_t a2)
{
  if (*(this + 1))
  {
    llvm::SlotTracker::processModule(this);
    *(this + 1) = 0;
  }

  if (*(this + 2) && (*(this + 24) & 1) == 0)
  {
    llvm::SlotTracker::processFunction(this);
  }

  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>,llvm::AttributeSet,unsigned int,llvm::DenseMapInfo<llvm::AttributeSet,void>,llvm::detail::DenseMapPair<llvm::AttributeSet,unsigned int>>::LookupBucketFor<llvm::AttributeSet>(*(this + 25), *(this + 54), a2, &v6))
  {
    v4 = v6 == *(this + 25) + 16 * *(this + 54);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v6 + 8);
  }
}

uint64_t anonymous namespace::AssemblyWriter::AssemblyWriter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 232) = 0u;
  v8 = a1 + 232;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a5;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = a6;
  *(a1 + 281) = a7;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 328;
  *(a1 + 320) = 0x800000000;
  *(a1 + 456) = a1 + 472;
  *(a1 + 464) = 0x800000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  if (a4)
  {
    v9 = *(a4 + 32);
    v10 = a4 + 24;
    v11 = *(a4 + 16);
    v12 = a4 + 8;
    v41 = v9;
    v42 = v11;
    v43 = a4 + 24;
    v44 = a4 + 8;
    while (1)
    {
      if (v9 == v10 && v11 == v12 && v43 == v10 && v44 == v12)
      {
        return a1;
      }

      v14 = &unk_2883F0FC0;
      do
      {
        v15 = *(v14 - 1);
        v16 = (&v41 + (*v14 >> 1));
        if (*v14)
        {
          v15 = *(*v16 + v15);
        }

        v14 += 2;
        v17 = v15(v16);
      }

      while (!v17);
      v18 = *(v17 + 48);
      if (v18)
      {
        v45 = 0;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*(a1 + 232), *(a1 + 248), v18, &v45) & 1) == 0)
        {
          break;
        }
      }

LABEL_32:
      v35 = &unk_2883F0FE0;
      v36 = 16;
      do
      {
        v37 = v36;
        v38 = *(v35 - 1);
        v39 = (&v41 + (*v35 >> 1));
        if (*v35)
        {
          v38 = *(*v39 + v38);
        }

        if (v38(v39))
        {
          break;
        }

        v35 += 2;
        v36 = v37 - 16;
      }

      while (v37);
      v9 = v41;
      v11 = v42;
    }

    v19 = *(a1 + 248);
    v20 = *(a1 + 240);
    if (4 * v20 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v20 - *(a1 + 244) > v19 >> 3)
    {
LABEL_17:
      v21 = v45;
      ++*(a1 + 240);
      if (*v21 != -4096)
      {
        --*(a1 + 244);
      }

      *v21 = v18;
      v23 = *(a1 + 264);
      v22 = *(a1 + 272);
      if (v23 >= v22)
      {
        v25 = *(v8 + 24);
        v26 = (v23 - v25) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v27 = v22 - v25;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::Comdat const*>>(v8 + 24, v29);
        }

        v30 = (8 * v26);
        *v30 = v18;
        v24 = 8 * v26 + 8;
        v31 = *(a1 + 256);
        v32 = *(a1 + 264) - v31;
        v33 = v30 - v32;
        memcpy(v30 - v32, v31, v32);
        v34 = *(a1 + 256);
        *(a1 + 256) = v33;
        *(a1 + 264) = v24;
        *(a1 + 272) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v23 = v18;
        v24 = (v23 + 1);
      }

      *(a1 + 264) = v24;
      goto LABEL_32;
    }

    llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(v8, v19);
    v45 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*(a1 + 232), *(a1 + 248), v18, &v45);
    goto LABEL_17;
  }

  return a1;
}

_DWORD *anonymous namespace::AssemblyWriter::printFunction(_anonymous_namespace_::AssemblyWriter *this, uint64_t ***a2)
{
  v156 = *MEMORY[0x277D85DE8];
  v4 = *(this + 28);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2, *this);
  }

  if (*(a2 + 35))
  {
    v5 = *this;
    v6 = *(*this + 32);
    if ((*(*this + 24) - v6) > 0x10)
    {
      *(v6 + 16) = 10;
      *v6 = *"; Materializable\n";
      *(v5 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v5, "; Materializable\n", 0x11uLL);
    }
  }

  v7 = a2[14];
  if (v7)
  {
    if (*(v7 + 2))
    {
      v8 = v7[5];
      if (v8)
      {
        memset(&v155, 0, sizeof(v155));
        v9 = *(v8 + 2);
        if (v9)
        {
          v10 = 8 * v9;
          v11 = (v8 + 6);
          do
          {
            if (!*v11 || *(*v11 + 8) != 2)
            {
              size = HIBYTE(v155.__r_.__value_.__r.__words[2]);
              if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v155.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                std::string::push_back(&v155, 32);
              }

              llvm::Attribute::getAsString(v11, 0, &__p);
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
                v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v14 = __p.__r_.__value_.__l.__size_;
              }

              std::string::append(&v155, p_p, v14);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v11 = (v11 + 8);
            v10 -= 8;
          }

          while (v10);
          v15 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
          if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v15 = v155.__r_.__value_.__l.__size_;
          }

          if (v15)
          {
            v16 = *this;
            v17 = *(*this + 32);
            if ((*(*this + 24) - v17) > 0x11)
            {
              *(v17 + 16) = 8250;
              *v17 = *"; Function Attrs: ";
              *(v16 + 4) += 18;
            }

            else
            {
              v16 = llvm::raw_ostream::write(v16, "; Function Attrs: ", 0x12uLL);
            }

            if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v155;
            }

            else
            {
              v18 = v155.__r_.__value_.__r.__words[0];
            }

            if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v19 = v155.__r_.__value_.__l.__size_;
            }

            v20 = llvm::raw_ostream::write(v16, v18, v19);
            v21 = *(v20 + 4);
            if (v21 >= *(v20 + 3))
            {
              llvm::raw_ostream::write(v20, 10);
            }

            else
            {
              *(v20 + 4) = v21 + 1;
              *v21 = 10;
            }
          }
        }

        if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v155.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v22 = *(this + 4);
  *(v22 + 16) = a2;
  *(v22 + 24) = 0;
  if (a2 && *(a2 + 16) == 3)
  {
    v23 = *this;
    if ((*(a2 + 5) & 0x7FFFFFF) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  if (*(a2 + 16) || a2[9] != (a2 + 9))
  {
    v23 = *this;
    goto LABEL_52;
  }

  v23 = *this;
  if (*(a2 + 35))
  {
LABEL_52:
    v25 = *(v23 + 4);
    if (*(v23 + 3) - v25 > 6uLL)
    {
      *(v25 + 3) = 543518313;
      *v25 = 1768318308;
      *(v23 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v23, "define ", 7uLL);
    }

    goto LABEL_61;
  }

LABEL_47:
  v24 = *(v23 + 4);
  if (*(v23 + 3) - v24 > 6uLL)
  {
    *(v24 + 3) = 1701994860;
    *v24 = 1818453348;
    *(v23 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v23, "declare", 7uLL);
  }

  v155.__r_.__value_.__r.__words[0] = &v155.__r_.__value_.__r.__words[2];
  v155.__r_.__value_.__l.__size_ = 0x400000000;
  llvm::Value::getAllMetadata(a2, &v155);
  v26 = *this;
  v27 = *(*this + 32);
  if (v27 >= *(*this + 24))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  if (v155.__r_.__value_.__l.__data_ != &v155.__r_.__value_.__r.__words[2])
  {
    free(v155.__r_.__value_.__l.__data_);
  }

LABEL_61:
  v28 = *this;
  getLinkageNameWithSpace(&v155, a2[4] & 0xF);
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v155;
  }

  else
  {
    v29 = v155.__r_.__value_.__r.__words[0];
  }

  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v155.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(v28, v29, v30);
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  PrintDSOLocation(a2, *this);
  v31 = *(a2 + 8);
  v32 = (v31 >> 4) & 3;
  v33 = *this;
  if (v32 == 1)
  {
    v34 = "hidden ";
    v35 = 7;
  }

  else
  {
    if (v32 != 2)
    {
      goto LABEL_74;
    }

    v34 = "protected ";
    v35 = 10;
  }

  llvm::raw_ostream::operator<<(v33, v34, v35);
  v31 = *(a2 + 8);
  v33 = *this;
LABEL_74:
  v36 = (v31 >> 8) & 3;
  if (v36 == 1)
  {
    v37 = "dllimport ";
  }

  else
  {
    if (v36 != 2)
    {
      goto LABEL_79;
    }

    v37 = "dllexport ";
  }

  llvm::raw_ostream::operator<<(v33, v37, 0xAuLL);
LABEL_79:
  v38 = ((*(a2 + 9) >> 4) & 0x3FF);
  if (v38)
  {
    PrintCallingConv(v38, *this);
    v39 = *this;
    v40 = *(*this + 32);
    if (*(*this + 24) == v40)
    {
      llvm::raw_ostream::write(v39, " ", 1uLL);
    }

    else
    {
      *v40 = 32;
      ++*(v39 + 4);
    }
  }

  v41 = a2[3];
  v42 = v41;
  if (v7)
  {
    v42 = a2[3];
    if (*(v7 + 2) >= 2u)
    {
      v42 = a2[3];
      if (v7[6])
      {
        v43 = *this;
        __p.__r_.__value_.__r.__words[0] = v7[6];
        llvm::AttributeSet::getAsString(&__p, 0, &v155);
        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v155;
        }

        else
        {
          v44 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v45 = v155.__r_.__value_.__l.__size_;
        }

        llvm::raw_ostream::write(v43, v44, v45);
        v46 = *(v43 + 4);
        if (v46 >= *(v43 + 3))
        {
          llvm::raw_ostream::write(v43, 32);
        }

        else
        {
          *(v43 + 4) = v46 + 1;
          *v46 = 32;
        }

        if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v155.__r_.__value_.__l.__data_);
        }

        v42 = a2[3];
      }
    }
  }

  v47 = *(this + 4);
  v48 = a2[5];
  __p.__r_.__value_.__r.__words[0] = &unk_2883F1008;
  __p.__r_.__value_.__l.__size_ = this + 40;
  __p.__r_.__value_.__r.__words[2] = v47;
  v154 = v48;
  v49 = *this;
  v50 = *(*this + 32);
  if (v50 >= *(*this + 24))
  {
    llvm::raw_ostream::write(v49, 32);
  }

  else
  {
    *(v49 + 4) = v50 + 1;
    *v50 = 32;
  }

  WriteAsOperandInternal(*this, a2, &__p);
  v51 = *this;
  v52 = *(*this + 32);
  if (v52 >= *(*this + 24))
  {
    llvm::raw_ostream::write(v51, 40);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 40;
  }

  v152 = v41;
  if (a2 && *(a2 + 16) == 3)
  {
    if ((*(a2 + 5) & 0x7FFFFFF) != 0)
    {
LABEL_126:
      v61 = llvm::Function::args(a2);
      if (v61 == v62)
      {
        goto LABEL_159;
      }

      v63 = v61;
      v64 = v62;
      while (1)
      {
        if (*(v63 + 32))
        {
          v65 = *this;
          v66 = *(*this + 32);
          if (*(*this + 24) - v66 > 1uLL)
          {
            *v66 = 8236;
            *(v65 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v65, ", ", 2uLL);
          }

          v67 = *(v63 + 32) + 2;
          if (!v7)
          {
LABEL_137:
            v68 = 0;
            goto LABEL_138;
          }
        }

        else
        {
          v67 = 2;
          if (!v7)
          {
            goto LABEL_137;
          }
        }

        if (v67 >= *(v7 + 2))
        {
          goto LABEL_137;
        }

        v68 = v7[v67 + 5];
LABEL_138:
        if (v68)
        {
          v69 = *this;
          v70 = *(*this + 32);
          if (v70 >= *(*this + 24))
          {
            llvm::raw_ostream::write(v69, 32);
          }

          else
          {
            *(v69 + 4) = v70 + 1;
            *v70 = 32;
          }
        }

        if ((*(v63 + 23) & 0x10) != 0)
        {
          v74 = *this;
          v75 = *(*this + 32);
          if (v75 >= *(*this + 24))
          {
            llvm::raw_ostream::write(v74, 32);
          }

          else
          {
            *(v74 + 4) = v75 + 1;
            *v75 = 32;
          }

          v76 = *this;
          if ((*(v63 + 23) & 0x10) != 0)
          {
            ValueName = llvm::Value::getValueName(v63);
            v78 = (ValueName + 2);
            v77 = *ValueName;
          }

          else
          {
            v77 = 0;
            v78 = &str_3_24;
          }

          if (*(v63 + 16) >= 4u)
          {
            v80 = 3;
          }

          else
          {
            v80 = 0;
          }

          PrintLLVMName(v76, v78, v77, v80);
        }

        else
        {
          LocalSlot = llvm::SlotTracker::getLocalSlot(*(this + 4), v63);
          v72 = *this;
          v73 = *(*this + 32);
          if (*(*this + 24) - v73 > 1uLL)
          {
            *v73 = 9504;
            *(v72 + 4) += 2;
          }

          else
          {
            v72 = llvm::raw_ostream::write(v72, " %", 2uLL);
          }

          llvm::write_integer(v72, LocalSlot, 0, 0);
        }

        v63 += 40;
        if (v63 == v64)
        {
          goto LABEL_159;
        }
      }
    }
  }

  else if (*(a2 + 16) || a2[9] != (a2 + 9) || (*(a2 + 35) & 1) != 0)
  {
    goto LABEL_126;
  }

  if (*(this + 280))
  {
    goto LABEL_126;
  }

  v53 = *(v41 + 3);
  v54 = (v53 - 1);
  if (v53 != 1)
  {
    v55 = 0;
    do
    {
      if (v55)
      {
        v56 = *this;
        v57 = *(*this + 32);
        if (*(*this + 24) - v57 > 1uLL)
        {
          *v57 = 8236;
          *(v56 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v56, ", ", 2uLL);
        }
      }

      if (v7)
      {
        if ((v55 + 2) < *(v7 + 2))
        {
          v58 = v7[(v55 + 2) + 5];
          if (v58)
          {
            v59 = *this;
            v60 = *(*this + 32);
            if (v60 >= *(*this + 24))
            {
              llvm::raw_ostream::write(v59, 32);
            }

            else
            {
              *(v59 + 4) = v60 + 1;
              *v60 = 32;
            }
          }
        }
      }

      ++v55;
    }

    while (v54 != v55);
  }

LABEL_159:
  if (*(v152 + 2) >= 0x100u)
  {
    if (*(v152 + 3) != 1)
    {
      v81 = *this;
      v82 = *(*this + 32);
      if (*(*this + 24) - v82 > 1uLL)
      {
        *v82 = 8236;
        *(v81 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v81, ", ", 2uLL);
      }
    }

    v83 = *this;
    v84 = *(*this + 32);
    if ((*(*this + 24) - v84) > 2)
    {
      *(v84 + 2) = 46;
      *v84 = 11822;
      *(v83 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v83, "...", 3uLL);
    }
  }

  v85 = *this;
  v86 = *(*this + 32);
  if (v86 >= *(*this + 24))
  {
    llvm::raw_ostream::write(v85, 41);
  }

  else
  {
    *(v85 + 4) = v86 + 1;
    *v86 = 41;
  }

  if (*(a2 + 8) >> 6)
  {
    if (*(a2 + 8) >> 6 == 1)
    {
      v87 = "local_unnamed_addr";
      v88 = 18;
    }

    else
    {
      v87 = "unnamed_addr";
      v88 = 12;
    }

    v89 = *this;
    v90 = *(*this + 32);
    if (v90 >= *(*this + 24))
    {
      v89 = llvm::raw_ostream::write(v89, 32);
    }

    else
    {
      *(v89 + 4) = v90 + 1;
      *v90 = 32;
    }

    llvm::raw_ostream::operator<<(v89, v87, v88);
  }

  if (*(*a2 + 2) <= 0xFFu)
  {
    v91 = a2[5];
    if (v91)
    {
      if (!*(v91 + 67))
      {
LABEL_186:
        if (!v7)
        {
          goto LABEL_198;
        }

        goto LABEL_189;
      }
    }
  }

  v92 = *this;
  v93 = *(*this + 32);
  if ((*(*this + 24) - v93) > 0xA)
  {
    *(v93 + 7) = 677733217;
    *v93 = *" addrspace(";
    *(v92 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(*this, " addrspace(", 0xBuLL);
  }

  write_unsigned<unsigned long>(v92, *(*a2 + 2) >> 8, 0, 0, 0);
  v94 = *(v92 + 4);
  if (*(v92 + 3) != v94)
  {
    *v94 = 41;
    ++*(v92 + 4);
    goto LABEL_186;
  }

  llvm::raw_ostream::write(v92, ")", 1uLL);
  if (!v7)
  {
    goto LABEL_198;
  }

LABEL_189:
  if (*(v7 + 2) && v7[5])
  {
    v95 = *this;
    v96 = *(*this + 32);
    if (*(*this + 24) - v96 > 1uLL)
    {
      *v96 = 8992;
      *(v95 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(*this, " #", 2uLL);
    }

    if (*(v7 + 2))
    {
      v97 = v7[5];
    }

    else
    {
      v97 = 0;
    }

    AttributeGroupSlot = llvm::SlotTracker::getAttributeGroupSlot(*(this + 4), v97);
    llvm::write_integer(v95, AttributeGroupSlot, 0, 0);
  }

LABEL_198:
  if ((*(a2 + 34) & 0x80) != 0)
  {
    v99 = *this;
    v100 = *(*this + 32);
    if ((*(*this + 24) - v100) > 9)
    {
      *(v100 + 8) = 8736;
      *v100 = *" section ";
      *(v99 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v99, " section ", 0xAuLL);
    }

    if ((*(a2 + 34) & 0x80) != 0)
    {
      v103 = ***a2;
      v155.__r_.__value_.__r.__words[0] = a2;
      v104 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v103 + 2552), &v155);
      v101 = v104[1];
      v102 = v104[2];
    }

    else
    {
      v101 = 0;
      v102 = 0;
    }

    llvm::printEscapedString(v101, v102, *this);
    v105 = *this;
    v106 = *(*this + 32);
    if (v106 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v105, 34);
    }

    else
    {
      *(v105 + 4) = v106 + 1;
      *v106 = 34;
    }
  }

  if ((*(a2 + 33) & 0x80) != 0)
  {
    v107 = *this;
    v108 = *(*this + 32);
    if ((*(*this + 24) - v108) > 0xB)
    {
      *(v108 + 8) = 572550767;
      *v108 = *" partition ";
      *(v107 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v107, " partition ", 0xCuLL);
    }

    Partition = llvm::GlobalValue::getPartition(a2);
    llvm::printEscapedString(Partition, v110, *this);
    v111 = *this;
    v112 = *(*this + 32);
    if (v112 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v111, 34);
    }

    else
    {
      *(v111 + 4) = v112 + 1;
      *v112 = 34;
    }
  }

  maybePrintComdat(*this, a2);
  v113 = (*(a2 + 8) >> 17) & 0x3F;
  if (v113)
  {
    v114 = v113 - 1;
    v115 = *this;
    v116 = *(*this + 32);
    if (*(*this + 24) - v116 > 6uLL)
    {
      *(v116 + 3) = 544106345;
      *v116 = 1768710432;
      *(v115 + 4) += 7;
    }

    else
    {
      v115 = llvm::raw_ostream::write(v115, " align ", 7uLL);
    }

    write_unsigned<unsigned long>(v115, 1 << v114, 0, 0, 0);
  }

  if ((*(a2 + 9) & 0x4000) != 0)
  {
    v117 = *this;
    v118 = *(*this + 32);
    if ((*(*this + 24) - v118) > 4)
    {
      *(v118 + 4) = 34;
      *v118 = 543385376;
      *(v117 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(*this, " gc ", 5uLL);
    }

    v119 = ***a2;
    v155.__r_.__value_.__r.__words[0] = a2;
    v120 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>,llvm::Function const*,std::string,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,std::string>>::FindAndConstruct((v119 + 2696), &v155);
    v123 = v120[1];
    v121 = (v120 + 1);
    v122 = v123;
    v124 = v121[23];
    if (v124 >= 0)
    {
      v125 = v121;
    }

    else
    {
      v125 = v122;
    }

    if (v124 >= 0)
    {
      v126 = *(v121 + 23);
    }

    else
    {
      v126 = *(v121 + 1);
    }

    llvm::raw_ostream::write(v117, v125, v126);
    v127 = *(v117 + 4);
    if (v127 >= *(v117 + 3))
    {
      llvm::raw_ostream::write(v117, 34);
    }

    else
    {
      *(v117 + 4) = v127 + 1;
      *v127 = 34;
    }
  }

  v128 = *(a2 + 9);
  if ((v128 & 2) != 0)
  {
    v129 = *this;
    v130 = *(*this + 32);
    if (*(*this + 24) - v130 > 7uLL)
    {
      *v130 = 0x2078696665727020;
      *(v129 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v129, " prefix ", 8uLL);
    }

    v131 = *(a2 + 5);
    if ((v131 & 0x40000000) != 0)
    {
      v132 = *(a2 - 1);
    }

    else
    {
      v132 = &a2[-4 * (v131 & 0x7FFFFFF)];
    }

    v128 = *(a2 + 9);
    if ((v128 & 4) == 0)
    {
LABEL_235:
      if ((v128 & 8) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_251;
    }
  }

  else if ((v128 & 4) == 0)
  {
    goto LABEL_235;
  }

  v133 = *this;
  v134 = *(*this + 32);
  if ((*(*this + 24) - v134) > 9)
  {
    *(v134 + 8) = 8293;
    *v134 = *" prologue ";
    *(v133 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v133, " prologue ", 0xAuLL);
  }

  v135 = *(a2 + 5);
  if ((v135 & 0x40000000) != 0)
  {
    v136 = *(a2 - 1);
  }

  else
  {
    v136 = &a2[-4 * (v135 & 0x7FFFFFF)];
  }

  if ((*(a2 + 9) & 8) != 0)
  {
LABEL_251:
    v137 = *this;
    v138 = *(*this + 32);
    if (*(*this + 24) - v138 > 0xCuLL)
    {
      qmemcpy(v138, " personality ", 13);
      *(v137 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v137, " personality ", 0xDuLL);
    }

    v139 = *(a2 + 5);
    if ((v139 & 0x40000000) != 0)
    {
      v140 = *(a2 - 1);
    }

    else
    {
      v140 = &a2[-4 * (v139 & 0x7FFFFFF)];
    }
  }

LABEL_258:
  if (a2 && *(a2 + 16) == 3)
  {
    if ((*(a2 + 5) & 0x7FFFFFF) == 0)
    {
LABEL_261:
      v141 = *this;
      v142 = *(*this + 32);
      if (v142 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v141, 10);
      }

      else
      {
        *(v141 + 4) = v142 + 1;
        *v142 = 10;
      }

      goto LABEL_280;
    }
  }

  else if (!*(a2 + 16) && a2[9] == (a2 + 9) && (*(a2 + 35) & 1) == 0)
  {
    goto LABEL_261;
  }

  v155.__r_.__value_.__r.__words[0] = &v155.__r_.__value_.__r.__words[2];
  v155.__r_.__value_.__l.__size_ = 0x400000000;
  llvm::Value::getAllMetadata(a2, &v155);
  v143 = *this;
  v144 = *(*this + 32);
  if (*(*this + 24) - v144 > 1uLL)
  {
    *v144 = 31520;
    *(v143 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v143, " {", 2uLL);
  }

  for (i = a2[10]; i != a2 + 9; i = i[1])
  {
    if (i)
    {
      v146 = (i - 3);
    }

    else
    {
      v146 = 0;
    }
  }

  v147 = *this;
  v148 = *(*this + 32);
  if (*(*this + 24) - v148 > 1uLL)
  {
    *v148 = 2685;
    *(v147 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v147, "}\n", 2uLL);
  }

  if (v155.__r_.__value_.__l.__data_ != &v155.__r_.__value_.__r.__words[2])
  {
    free(v155.__r_.__value_.__l.__data_);
  }

LABEL_280:
  v149 = *(this + 4);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>::clear((v149 + 136));
  *(v149 + 16) = 0;
  *(v149 + 24) = 0;
  v151 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::AssemblyWriter::~AssemblyWriter(_anonymous_namespace_::AssemblyWriter *this)
{
  MEMORY[0x277C69E30](*(this + 75), 8);
  v2 = *(this + 57);
  if (v2 != this + 472)
  {
    free(v2);
  }

  v3 = *(this + 39);
  if (v3 != this + 328)
  {
    free(v3);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>,llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::MapVector<llvm::Value const*,std::vector<unsigned int>,llvm::DenseMap<llvm::Value const*,unsigned int,llvm::DenseMapInfo<llvm::Value const*,void>,llvm::detail::DenseMapPair<llvm::Value const*,unsigned int>>,std::vector<std::pair<llvm::Value const*,std::vector<unsigned int>>>>>>::destroyAll(this + 288);
  MEMORY[0x277C69E30](*(this + 36), 8);
  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  MEMORY[0x277C69E30](*(this + 29), 8);
  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  MEMORY[0x277C69E30](*(this + 22), 8);
  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  MEMORY[0x277C69E30](*(this + 15), 8);
  MEMORY[0x277C69E30](*(this + 12), 8);
  MEMORY[0x277C69E30](*(this + 9), 8);
  MEMORY[0x277C69E30](*(this + 6), 8);
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

llvm::SlotTracker *anonymous namespace::AssemblyWriter::printBasicBlock(llvm::SlotTracker **this, const llvm::BasicBlock *a2)
{
  v4 = *(a2 + 7);
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      v6 = (v5 - 24);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 == a2;
    if ((*(a2 + 23) & 0x10) == 0)
    {
      if (v6 == a2)
      {
        goto LABEL_62;
      }

LABEL_9:
      v8 = *this;
      v9 = *(*this + 4);
      if (*(*this + 3) == v9)
      {
        llvm::raw_ostream::write(v8, "\n", 1uLL);
      }

      else
      {
        *v9 = 10;
        ++*(v8 + 4);
      }

      LocalSlot = llvm::SlotTracker::getLocalSlot(this[4], a2);
      v19 = *this;
      if (LocalSlot == -1)
      {
        v22 = *(v19 + 4);
        if ((*(v19 + 3) - v22) > 8)
        {
          *(v22 + 8) = 58;
          *v22 = *"<badref>:";
          v21 = *(v19 + 4) + 9;
          goto LABEL_32;
        }

        v23 = "<badref>:";
        v24 = *this;
        v25 = 9;
      }

      else
      {
        llvm::write_integer(*this, LocalSlot, 0, 0);
        v20 = *(v19 + 4);
        if (*(v19 + 3) != v20)
        {
          *v20 = 58;
          v21 = *(v19 + 4) + 1;
LABEL_32:
          *(v19 + 4) = v21;
          goto LABEL_33;
        }

        v23 = ":";
        v24 = v19;
        v25 = 1;
      }

      llvm::raw_ostream::write(v24, v23, v25);
      goto LABEL_33;
    }
  }

  else
  {
    if ((*(a2 + 23) & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  v10 = *this;
  v11 = *(*this + 4);
  if (*(*this + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "\n", 1uLL);
  }

  else
  {
    *v11 = 10;
    ++*(v10 + 4);
  }

  v12 = *this;
  if ((*(a2 + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(a2);
    v14 = (ValueName + 2);
    v13 = *ValueName;
  }

  else
  {
    v13 = 0;
    v14 = &str_3_24;
  }

  llvm::printLLVMNameWithoutPrefix(v12, v14, v13);
  v16 = *this;
  v17 = *(*this + 4);
  if (v17 >= *(*this + 3))
  {
    llvm::raw_ostream::write(v16, 58);
    if (v7)
    {
      goto LABEL_62;
    }
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 58;
    if (v7)
    {
      goto LABEL_62;
    }
  }

LABEL_33:
  llvm::formatted_raw_ostream::PadToColumn(*this, 50);
  v26 = *this;
  v27 = *(*this + 4);
  if (*(*this + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ";", 1uLL);
  }

  else
  {
    *v27 = 59;
    ++*(v26 + 4);
  }

  v28 = *(a2 + 1);
  if (v28)
  {
    while (1)
    {
      v29 = *(v28 + 24);
      v30 = *(v29 + 16);
      v31 = v29 && v30 >= 0x1C;
      if (v31 && v30 - 29 < 0xB)
      {
        break;
      }

      v28 = *(v28 + 8);
      if (!v28)
      {
        goto LABEL_46;
      }
    }

    v35 = *this;
    v36 = *(*this + 4);
    if ((*(*this + 3) - v36) > 8)
    {
      *(v36 + 8) = 32;
      *v36 = *" preds = ";
      *(v35 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v35, " preds = ", 9uLL);
    }

    v37 = *(v28 + 8);
    if (v37)
    {
      while (1)
      {
        v38 = *(v37 + 24);
        v39 = *(v38 + 16);
        v40 = v38 && v39 >= 0x1C;
        if (v40 && v39 - 29 <= 0xA)
        {
          break;
        }

        v37 = *(v37 + 8);
        if (!v37)
        {
          goto LABEL_62;
        }
      }

LABEL_80:
      v52 = *this;
      v53 = *(*this + 4);
      if (*(*this + 3) - v53 > 1uLL)
      {
        *v53 = 8236;
        *(v52 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v52, ", ", 2uLL);
      }

      while (1)
      {
        v37 = *(v37 + 8);
        if (!v37)
        {
          break;
        }

        v54 = *(v37 + 24);
        v55 = *(v54 + 16);
        if (v54)
        {
          v56 = v55 >= 0x1C;
        }

        else
        {
          v56 = 0;
        }

        if (v56 && v55 - 29 < 0xB)
        {
          goto LABEL_80;
        }
      }
    }
  }

  else
  {
LABEL_46:
    v33 = *this;
    v34 = *(*this + 4);
    if ((*(*this + 3) - v34) > 0x10)
    {
      *(v34 + 16) = 33;
      *v34 = *" No predecessors!";
      *(v33 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v33, " No predecessors!", 0x11uLL);
    }
  }

LABEL_62:
  v42 = *this;
  v43 = *(*this + 4);
  if (*(*this + 3) == v43)
  {
    llvm::raw_ostream::write(v42, "\n", 1uLL);
  }

  else
  {
    *v43 = 10;
    ++*(v42 + 4);
  }

  v44 = this[28];
  if (v44)
  {
    (*(*v44 + 24))(v44, a2, *this);
  }

  for (i = *(a2 + 6); i != (a2 + 40); i = i[1])
  {
    if (i)
    {
      v46 = (i - 3);
    }

    else
    {
      v46 = 0;
    }

    v47 = *this;
    v48 = *(*this + 4);
    if (v48 >= *(*this + 3))
    {
      llvm::raw_ostream::write(v47, 10);
    }

    else
    {
      *(v47 + 4) = v48 + 1;
      *v48 = 10;
    }
  }

  result = this[28];
  if (result)
  {
    v50 = *this;
    v51 = *(*result + 32);

    return v51();
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::AssemblyWriter::printNamedMDNode(llvm::raw_ostream **this, const llvm::NamedMDNode *a2)
{
  v4 = *this;
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 33);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 33;
  }

  v6 = *(a2 + 39);
  if (v6 >= 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 2);
  }

  v8 = *(a2 + 3);
  if (v6 >= 0)
  {
    v9 = *(a2 + 39);
  }

  else
  {
    v9 = *(a2 + 3);
  }

  printMetadataIdentifier(v7, v9, *this);
  v10 = *this;
  v11 = *(*this + 4);
  if ((*(*this + 3) - v11) > 4)
  {
    *(v11 + 4) = 123;
    *v11 = 555760928;
    *(v10 + 4) += 5;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, " = !{", 5uLL);
  }

  v12 = *(*(a2 + 6) + 8);
  if (v12)
  {
    v13 = 0;
    v14 = 8 * v12;
    do
    {
      if (v13)
      {
        v10 = *this;
        v15 = *(*this + 4);
        if (*(*this + 3) - v15 > 1uLL)
        {
          *v15 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          v10 = llvm::raw_ostream::write(v10, ", ", 2uLL);
        }
      }

      v16 = *(**(a2 + 6) + v13);
      if (*v16 == 6)
      {
        v17 = *this;
        v10 = writeDIExpression(v17, v16, v18);
      }

      else
      {
        v19 = (*(*this[4] + 32))(this[4], *(**(a2 + 6) + v13));
        v10 = *this;
        if (v19 == -1)
        {
          v21 = *(v10 + 4);
          if (*(v10 + 3) - v21 > 7uLL)
          {
            *v21 = 0x3E6665726461623CLL;
            *(v10 + 4) += 8;
          }

          else
          {
            v10 = llvm::raw_ostream::write(v10, "<badref>", 8uLL);
          }
        }

        else
        {
          v20 = *(v10 + 4);
          if (v20 >= *(v10 + 3))
          {
            v10 = llvm::raw_ostream::write(v10, 33);
          }

          else
          {
            *(v10 + 4) = v20 + 1;
            *v20 = 33;
          }

          v10 = llvm::write_integer(v10, v19, 0, 0);
        }
      }

      v13 += 8;
    }

    while (v14 != v13);
  }

  result = *this;
  v23 = *(*this + 4);
  if (*(*this + 3) - v23 > 1uLL)
  {
    *v23 = 2685;
    *(result + 4) += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "}\n", 2uLL);
  }

  return result;
}

void llvm::NamedMDNode::print(llvm::NamedMDNode *this, llvm::raw_ostream *a2, llvm::ModuleSlotTracker *a3, char a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v24 = 0;
  Machine = llvm::ModuleSlotTracker::getMachine(a3);
  if (!Machine)
  {
    v22[0] = *(this + 5);
    Machine = v23;
    std::optional<llvm::SlotTracker>::emplace[abi:nn200100]<llvm::Module const*,void>(v23, v22);
  }

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
  llvm::formatted_raw_ostream::setStream(&v9, a2);
  llvm::formatted_raw_ostream::~formatted_raw_ostream(&v9);
  if (v24 == 1)
  {
    llvm::SlotTracker::~SlotTracker(v23);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void std::optional<llvm::SlotTracker>::emplace[abi:nn200100]<llvm::Module const*,void>(llvm::SlotTracker *a1, uint64_t *a2)
{
  if (*(a1 + 328) == 1)
  {
    llvm::SlotTracker::~SlotTracker(a1);
  }

  llvm::SlotTracker::SlotTracker(a1, *a2, 0);
  *(v3 + 328) = 1;
}

llvm::raw_ostream *PrintLLVMName(llvm::raw_ostream *a1, llvm::raw_ostream *a2, size_t a3, int a4)
{
  if (a4 == 3)
  {
    v6 = *(a1 + 4);
    if (v6 < *(a1 + 3))
    {
      *(a1 + 4) = v6 + 1;
      v7 = 37;
      goto LABEL_10;
    }

    v8 = 37;
  }

  else if (a4 == 1)
  {
    v6 = *(a1 + 4);
    if (v6 < *(a1 + 3))
    {
      *(a1 + 4) = v6 + 1;
      v7 = 36;
      goto LABEL_10;
    }

    v8 = 36;
  }

  else
  {
    if (a4)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 4);
    if (v6 < *(a1 + 3))
    {
      *(a1 + 4) = v6 + 1;
      v7 = 64;
LABEL_10:
      *v6 = v7;
      goto LABEL_15;
    }

    v8 = 64;
  }

  a1 = llvm::raw_ostream::write(a1, v8);
LABEL_15:

  return llvm::printLLVMNameWithoutPrefix(a1, a2, a3);
}

uint64_t llvm::Type::print(llvm::Type *this, llvm::raw_ostream *a2, BOOL a3, char a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  if ((a4 & 1) == 0 && this && (*(this + 2) & 0x4FF) == 0x10)
  {
    v7 = *(a2 + 4);
    if (*(a2 + 3) - v7 > 7uLL)
    {
      *v7 = 0x2065707974203D20;
      *(a2 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(a2, " = type ", 8uLL);
    }
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  MEMORY[0x277C69E30](v26, 8);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  MEMORY[0x277C69E30](v19, 8);
  MEMORY[0x277C69E30](v16, 8);
  MEMORY[0x277C69E30](v13, 8);
  return MEMORY[0x277C69E30](v10, 8);
}

llvm::raw_ostream *anonymous namespace::TypePrinting::print(llvm::raw_ostream *this, llvm::Type *a2, uint64_t **a3)
{
  v3 = *(a2 + 2);
  v4 = a3;
  v6 = this;
  switch(v3)
  {
    case 1:
      v23 = a3[4];
      if ((a3[3] - v23) <= 5)
      {
        v14 = "bfloat";
        goto LABEL_36;
      }

      *(v23 + 2) = 29793;
      v52 = 1869375074;
      goto LABEL_100;
    case 2:
      v16 = a3[4];
      if ((a3[3] - v16) <= 4)
      {
        v14 = "float";
        goto LABEL_54;
      }

      *(v16 + 4) = 116;
      v50 = 1634692198;
      goto LABEL_126;
    case 3:
      v23 = a3[4];
      if ((a3[3] - v23) <= 5)
      {
        v14 = "double";
LABEL_36:
        v17 = a3;
        v18 = 6;
        goto LABEL_146;
      }

      *(v23 + 2) = 25964;
      v52 = 1651863396;
LABEL_100:
      *v23 = v52;
      v51 = a3[4] + 6;
      goto LABEL_144;
    case 4:
      v15 = a3[4];
      if ((a3[3] - v15) <= 7)
      {
        v14 = "x86_fp80";
        goto LABEL_20;
      }

      v49 = 0x303870665F363878;
      goto LABEL_93;
    case 5:
      v16 = a3[4];
      if ((a3[3] - v16) <= 4)
      {
        v14 = "fp128";
        goto LABEL_54;
      }

      *(v16 + 4) = 56;
      v50 = 842100838;
      goto LABEL_126;
    case 6:
      v29 = a3[4];
      if ((a3[3] - v29) <= 8)
      {
        v14 = "ppc_fp128";
        v17 = a3;
        v18 = 9;
        goto LABEL_146;
      }

      *(v29 + 8) = 56;
      *v29 = *"ppc_fp128";
      v51 = a3[4] + 9;
      goto LABEL_144;
    case 7:
      v24 = a3[4];
      if ((a3[3] - v24) <= 3)
      {
        v14 = "void";
        goto LABEL_33;
      }

      v53 = 1684631414;
      goto LABEL_98;
    case 8:
      v16 = a3[4];
      if ((a3[3] - v16) <= 4)
      {
        v14 = "label";
        goto LABEL_54;
      }

      *(v16 + 4) = 108;
      v50 = 1700946284;
      goto LABEL_126;
    case 9:
      v15 = a3[4];
      if ((a3[3] - v15) <= 7)
      {
        v14 = "metadata";
LABEL_20:
        v17 = a3;
        v18 = 8;
        goto LABEL_146;
      }

      v49 = 0x617461646174656DLL;
LABEL_93:
      *v15 = v49;
      v51 = (a3[4] + 1);
      goto LABEL_144;
    case 10:
      v13 = a3[4];
      if ((a3[3] - v13) <= 6)
      {
        v14 = "x86_mmx";
        goto LABEL_51;
      }

      v43 = 27999;
      goto LABEL_124;
    case 11:
      v13 = a3[4];
      if ((a3[3] - v13) <= 6)
      {
        v14 = "x86_amx";
LABEL_51:
        v17 = a3;
        v18 = 7;
        goto LABEL_146;
      }

      v43 = 24927;
LABEL_124:
      *(v13 + 3) = v43 | 0x786D0000;
      *v13 = 1597388920;
      v51 = a3[4] + 7;
      goto LABEL_144;
    case 12:
      v16 = a3[4];
      if ((a3[3] - v16) <= 4)
      {
        v14 = "token";
LABEL_54:
        v17 = a3;
        v18 = 5;
        goto LABEL_146;
      }

      *(v16 + 4) = 110;
      v50 = 1701539700;
LABEL_126:
      *v16 = v50;
      v51 = a3[4] + 5;
      goto LABEL_144;
    case 13:
      v28 = a3[4];
      if (v28 >= a3[3])
      {
        llvm::raw_ostream::write(a3, 105);
      }

      else
      {
        a3[4] = (v28 + 1);
        *v28 = 105;
      }

      v57 = *(a2 + 2) >> 8;
      goto LABEL_119;
    case 14:
      v12 = *(v4 + 4);
      if (*(v4 + 3) - v12 > 1uLL)
      {
        *v12 = 10272;
        *(v4 + 4) += 2;
      }

      else
      {
        this = llvm::raw_ostream::write(v4, " (", 2uLL);
      }

      v31 = *(a2 + 3);
      if (v31 == 1)
      {
        v32 = 1;
      }

      else
      {
        v33 = (*(a2 + 2) + 8);
        v34 = 8 * v31 - 8;
        v32 = 1;
        do
        {
          v36 = *v33++;
          v35 = v36;
          v37 = (v32 & 1) == 0;
          if (v32)
          {
            v32 = 0;
            v38 = 0;
          }

          else
          {
            v38 = ", ";
          }

          if (v37)
          {
            v39 = 2;
          }

          else
          {
            v39 = 0;
          }

          llvm::raw_ostream::operator<<(v4, v38, v39);
          v34 -= 8;
        }

        while (v34);
      }

      if (*(a2 + 2) > 0xFFu)
      {
        if (v32)
        {
          v40 = 0;
        }

        else
        {
          v40 = ", ";
        }

        if (v32)
        {
          v41 = 0;
        }

        else
        {
          v41 = 2;
        }

        this = llvm::raw_ostream::operator<<(v4, v40, v41);
        v42 = *(this + 4);
        if ((*(this + 3) - v42) > 2)
        {
          *(v42 + 2) = 46;
          *v42 = 11822;
          *(this + 4) += 3;
        }

        else
        {
          this = llvm::raw_ostream::write(this, "...", 3uLL);
        }
      }

      goto LABEL_153;
    case 15:
      if (*(a2 + 3))
      {
        v19 = *(a2 + 2);
        if (v19 >= 0x100)
        {
          v20 = v19 >> 8;
          v21 = llvm::raw_ostream::operator<<(v4, " addrspace(", 0xBuLL);
          this = write_unsigned<unsigned long>(v21, v20, 0, 0, 0);
          v22 = *(v21 + 4);
          if (v22 >= *(v21 + 3))
          {
            this = llvm::raw_ostream::write(v21, 41);
          }

          else
          {
            *(v21 + 4) = v22 + 1;
            *v22 = 41;
          }
        }

        v45 = *(v4 + 4);
        if (v45 < *(v4 + 3))
        {
          *(v4 + 4) = v45 + 1;
          v46 = 42;
          goto LABEL_159;
        }

        v47 = v4;
        v48 = 42;
      }

      else
      {
        this = llvm::raw_ostream::operator<<(a3, "ptr", 3uLL);
        v58 = *(a2 + 2);
        if (v58 < 0x100)
        {
          return this;
        }

        v59 = v58 >> 8;
        v4 = llvm::raw_ostream::operator<<(v4, " addrspace(", 0xBuLL);
        this = write_unsigned<unsigned long>(v4, v59, 0, 0, 0);
LABEL_153:
        v45 = *(v4 + 4);
        if (v45 < *(v4 + 3))
        {
          *(v4 + 4) = v45 + 1;
          v46 = 41;
          goto LABEL_159;
        }

        v47 = v4;
        v48 = 41;
      }

      goto LABEL_162;
    case 16:
      if ((v3 & 0x400) != 0)
      {
      }

      v10 = *(a2 + 3);
      if (v10)
      {
        v11 = *v10;
        if (*v10)
        {

          return PrintLLVMName(v4, (v10 + 2), v11, 3);
        }
      }

      v71 = *(v6 + 17);
      v72 = *(v6 + 38);
      v73 = llvm::DenseMapBase<llvm::DenseMap<llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>,llvm::StructType *,unsigned int,llvm::DenseMapInfo<llvm::StructType *,void>,llvm::detail::DenseMapPair<llvm::StructType *,unsigned int>>::find(v71, *(v6 + 38), a2);
      if ((v71 + 16 * v72) != v73)
      {
        v74 = v73;
        v75 = *(v4 + 4);
        if (v75 >= *(v4 + 3))
        {
          llvm::raw_ostream::write(v4, 37);
        }

        else
        {
          *(v4 + 4) = v75 + 1;
          *v75 = 37;
        }

        v57 = *(v74 + 2);
LABEL_119:

        return write_unsigned<unsigned long>(v4, v57, 0, 0, 0);
      }

      v76 = llvm::raw_ostream::operator<<(v4, "%type ", 7uLL);
      this = llvm::write_hex(v76, a2, 3, 0, 0);
      v45 = *(v76 + 4);
      if (v45 < *(v76 + 3))
      {
        *(v76 + 4) = v45 + 1;
        v46 = 34;
        goto LABEL_159;
      }

      v47 = v76;
      v48 = 34;
      goto LABEL_162;
    case 17:
      v27 = a3[4];
      if (v27 >= a3[3])
      {
        llvm::raw_ostream::write(a3, 91);
      }

      else
      {
        a3[4] = (v27 + 1);
        *v27 = 91;
      }

      write_unsigned<unsigned long>(v4, *(a2 + 4), 0, 0, 0);
      v56 = *(v4 + 4);
      if ((*(v4 + 3) - v56) > 2)
      {
        *(v56 + 2) = 32;
        *v56 = 30752;
        *(v4 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v4, " x ", 3uLL);
      }

      v45 = *(v4 + 4);
      if (v45 < *(v4 + 3))
      {
        *(v4 + 4) = v45 + 1;
        v46 = 93;
        goto LABEL_159;
      }

      v47 = v4;
      v48 = 93;
      goto LABEL_162;
    case 18:
    case 19:
      v7 = v3;
      v8 = *(a2 + 8);
      v9 = a3[4];
      if (a3[3] == v9)
      {
        llvm::raw_ostream::write(a3, "<", 1uLL);
      }

      else
      {
        *v9 = 60;
        a3[4] = (a3[4] + 1);
      }

      if (v7 == 19)
      {
        v30 = *(v4 + 4);
        if ((*(v4 + 3) - v30) > 8)
        {
          *(v30 + 8) = 32;
          *v30 = *"vscale x ";
          *(v4 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v4, "vscale x ", 9uLL);
        }
      }

      write_unsigned<unsigned long>(v4, v8, 0, 0, 0);
      v44 = *(v4 + 4);
      if ((*(v4 + 3) - v44) > 2)
      {
        *(v44 + 2) = 32;
        *v44 = 30752;
        *(v4 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v4, " x ", 3uLL);
      }

      v45 = *(v4 + 4);
      if (v45 >= *(v4 + 3))
      {
        v47 = v4;
        v48 = 62;
LABEL_162:

        return llvm::raw_ostream::write(v47, v48);
      }

      else
      {
        *(v4 + 4) = v45 + 1;
        v46 = 62;
LABEL_159:
        *v45 = v46;
      }

      return this;
    case 20:
      v25 = a3[4];
      if ((a3[3] - v25) > 8)
      {
        *(v25 + 8) = 40;
        *v25 = *"typedptr(";
        a3[4] = (a3[4] + 9);
      }

      else
      {
        llvm::raw_ostream::write(a3, "typedptr(", 9uLL);
      }

      llvm::Type::print(*(a2 + 3), v4, 0, 0);
      v54 = *(v4 + 4);
      if (*(v4 + 3) - v54 > 1uLL)
      {
        *v54 = 8236;
        *(v4 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v4, ", ", 2uLL);
      }

      this = write_unsigned<unsigned long>(v4, *(a2 + 2) >> 8, 0, 0, 0);
      goto LABEL_142;
    case 21:
      v26 = a3[4];
      if ((a3[3] - v26) > 7)
      {
        *v26 = 0x2228746567726174;
        ++a3[4];
      }

      else
      {
        llvm::raw_ostream::write(a3, "target(", 8uLL);
      }

      this = llvm::printEscapedString(*(a2 + 3), *(a2 + 4), v4);
      v55 = *(v4 + 4);
      if (*(v4 + 3) == v55)
      {
        this = llvm::raw_ostream::write(v4, "", 1uLL);
      }

      else
      {
        *v55 = 34;
        ++*(v4 + 4);
      }

      v60 = *(a2 + 3);
      if (v60)
      {
        v61 = *(a2 + 2);
        v62 = 8 * v60;
        do
        {
          v63 = *v61;
          v64 = *(v4 + 4);
          if (*(v4 + 3) - v64 > 1uLL)
          {
            *v64 = 8236;
            *(v4 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          this = llvm::Type::print(v63, v4, 0, 0);
          ++v61;
          v62 -= 8;
        }

        while (v62);
      }

      v65 = *(a2 + 2);
      if (v65 >= 0x100)
      {
        v66 = *(a2 + 5);
        v67 = 4 * (v65 >> 8);
        do
        {
          v68 = *v66;
          v69 = *(v4 + 4);
          if (*(v4 + 3) - v69 > 1uLL)
          {
            *v69 = 8236;
            *(v4 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          this = write_unsigned<unsigned long>(v4, v68, 0, 0, 0);
          ++v66;
          v67 -= 4;
        }

        while (v67);
      }

LABEL_142:
      v70 = *(v4 + 4);
      if (*(v4 + 3) != v70)
      {
        *v70 = 41;
        v51 = *(v4 + 4) + 1;
        goto LABEL_144;
      }

      v14 = ")";
      v17 = v4;
      v18 = 1;
      goto LABEL_146;
    default:
      v24 = a3[4];
      if ((a3[3] - v24) > 3)
      {
        v53 = 1718378856;
LABEL_98:
        *v24 = v53;
        v51 = a3[4] + 4;
LABEL_144:
        *(v4 + 4) = v51;
      }

      else
      {
        v14 = "half";
LABEL_33:
        v17 = a3;
        v18 = 4;
LABEL_146:

        return llvm::raw_ostream::write(v17, v14, v18);
      }

      return this;
  }
}

llvm::raw_ostream *anonymous namespace::TypePrinting::printStructBody(llvm::raw_ostream *this, llvm::StructType *a2, llvm::raw_ostream *a3)
{
  v4 = *(a2 + 2);
  if ((v4 & 0x100) != 0)
  {
    v7 = this;
    if ((v4 & 0x200) != 0)
    {
      v8 = *(a3 + 4);
      if (v8 >= *(a3 + 3))
      {
        llvm::raw_ostream::write(a3, 60);
      }

      else
      {
        *(a3 + 4) = v8 + 1;
        *v8 = 60;
      }
    }

    if (*(a2 + 3))
    {
      v9 = *(a3 + 4);
      if (*(a3 + 3) - v9 > 1uLL)
      {
        *v9 = 8315;
        *(a3 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(a3, "{ ", 2uLL);
      }

      v11 = *(a2 + 3);
      if (v11)
      {
        v12 = *(a2 + 2);
        v13 = 8 * v11;
        v14 = 1;
        v10 = " }";
        do
        {
          v16 = *v12++;
          v15 = v16;
          if (v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = ", ";
          }

          if (v14)
          {
            v18 = 0;
          }

          else
          {
            v18 = 2;
          }

          llvm::raw_ostream::operator<<(a3, v17, v18);
          v14 = 0;
          v13 -= 8;
        }

        while (v13);
      }

      else
      {
        v10 = " }";
      }
    }

    else
    {
      v10 = "{}";
    }

    this = llvm::raw_ostream::operator<<(a3, v10, 2uLL);
    if ((*(a2 + 9) & 2) != 0)
    {
      v19 = *(a3 + 4);
      if (v19 >= *(a3 + 3))
      {

        return llvm::raw_ostream::write(a3, 62);
      }

      else
      {
        *(a3 + 4) = v19 + 1;
        *v19 = 62;
      }
    }
  }

  else
  {
    v5 = *(a3 + 4);
    if ((*(a3 + 3) - v5) > 5)
    {
      *(v5 + 4) = 25973;
      *v5 = 1902211183;
      *(a3 + 4) += 6;
    }

    else
    {

      return llvm::raw_ostream::write(a3, "opaque", 6uLL);
    }
  }

  return this;
}

uint64_t getModuleFromVal(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 21)
  {
    a1 = *(a1 + 24);
    if (!a1)
    {
      return 0;
    }

    return *(a1 + 40);
  }

  if (a1 && v1 == 22)
  {
    a1 = *(a1 + 56);
    if (!a1)
    {
      return 0;
    }

    return *(a1 + 40);
  }

  if (a1 && v1 >= 0x1C)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      a1 = *(v2 + 56);
      if (!a1)
      {
        return 0;
      }

      return *(a1 + 40);
    }
  }

  else
  {
    if (a1 && v1 < 4)
    {
      return *(a1 + 40);
    }

    v2 = 0;
    if (a1 && v1 == 23)
    {
      v3 = *(a1 + 8);
      if (!v3)
      {
        return 0;
      }

      while (1)
      {
        v4 = *(v3 + 24);
        if (v4[16] >= 0x1Cu)
        {
          ModuleFromVal = getModuleFromVal(v4);
          if (ModuleFromVal)
          {
            break;
          }
        }

        v2 = 0;
        v3 = *(v3 + 8);
        if (!v3)
        {
          return v2;
        }
      }

      return ModuleFromVal;
    }
  }

  return v2;
}

void llvm::Value::print(llvm::Value *this, llvm::raw_ostream *a2, llvm::ModuleSlotTracker *a3, char a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = &unk_2883EAF50;
  v29 = 0;
  v30 = 0;
  v31 = &v33;
  v32 = xmmword_2750C3CD0;
  llvm::formatted_raw_ostream::setStream(&v21, a2);
  Machine = v57;
  llvm::SlotTracker::SlotTracker(v57, 0, 0);
  if (llvm::ModuleSlotTracker::getMachine(a3))
  {
    Machine = llvm::ModuleSlotTracker::getMachine(a3);
  }

  v9 = *(this + 16);
  if (this && v9 >= 0x1C)
  {
    v10 = *(this + 5);
    if (v10)
    {
      v11 = *(v10 + 56);
      if (v11)
      {
        llvm::ModuleSlotTracker::incorporateFunction(a3, v11);
      }
    }

    ModuleFromVal = getModuleFromVal(this);
    goto LABEL_14;
  }

  if (this && v9 == 22)
  {
    v13 = *(this + 7);
    if (v13)
    {
      llvm::ModuleSlotTracker::incorporateFunction(a3, v13);
    }

    v14 = getModuleFromVal(this);
    goto LABEL_14;
  }

  if (this && v9 <= 3)
  {
    v16 = *(this + 16);
    if (*(this + 16))
    {
      if (v16 == 1)
      {
      }

      else if (v16 == 3)
      {
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_14:
    goto LABEL_15;
  }

  if (this && v9 == 23)
  {
    v17 = *(this + 3);
    v18 = getModuleFromVal(this);
    printMetadataImpl(a2, v17, a3, v18, 0, 0);
  }

  if (this && v9 <= 0x14)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    __p = 0;
    v55 = 0;
    v56 = 0;
    v34 = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    v19 = v25;
    if (v25 >= v24)
    {
      llvm::raw_ostream::write(&v21, 32);
    }

    else
    {
      ++v25;
      *v19 = 32;
    }

    v20[0] = &unk_2883F1008;
    v20[1] = &v34;
    v20[2] = llvm::ModuleSlotTracker::getMachine(a3);
    v20[3] = 0;
    WriteConstantInternal(&v21, this, v20);
    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    MEMORY[0x277C69E30](v51, 8);
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    MEMORY[0x277C69E30](v44, 8);
    MEMORY[0x277C69E30](v41, 8);
    MEMORY[0x277C69E30](v38, 8);
    MEMORY[0x277C69E30](v35, 8);
  }

  else
  {
    printAsOperandImpl(this, &v21, 1, a3);
  }

LABEL_15:
  llvm::SlotTracker::~SlotTracker(v57);
  llvm::formatted_raw_ostream::~formatted_raw_ostream(&v21);
  v15 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::AssemblyWriter::printInstruction(_anonymous_namespace_::AssemblyWriter *this, uint64_t ***a2)
{
  v330 = *MEMORY[0x277D85DE8];
  v4 = *(this + 28);
  if (v4)
  {
    (*(*v4 + 40))(v4, a2, *this);
  }

  v5 = *this;
  v6 = *(*this + 32);
  if (*(*this + 24) - v6 > 1uLL)
  {
    *v6 = 8224;
    *(v5 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v5, "  ", 2uLL);
  }

  if ((*(a2 + 23) & 0x10) != 0)
  {
    v11 = *this;
    ValueName = llvm::Value::getValueName(a2);
    if (*(a2 + 16) >= 4u)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    PrintLLVMName(v11, (ValueName + 2), *ValueName, v13);
    v14 = *this;
    v15 = *(*this + 32);
    if ((*(*this + 24) - v15) > 2)
    {
      *(v15 + 2) = 32;
      *v15 = 15648;
      *(v14 + 4) += 3;
      goto LABEL_27;
    }

    v16 = " = ";
    goto LABEL_22;
  }

  if (*(*a2 + 8) == 7)
  {
    goto LABEL_27;
  }

  LocalSlot = llvm::SlotTracker::getLocalSlot(*(this + 4), a2);
  v8 = *this;
  if (LocalSlot == -1)
  {
    v17 = *(v8 + 4);
    if ((*(v8 + 3) - v17) <= 0xA)
    {
      v16 = "<badref> = ";
      v14 = *this;
      v18 = 11;
LABEL_23:
      llvm::raw_ostream::write(v14, v16, v18);
      goto LABEL_27;
    }

    *(v17 + 7) = 540876862;
    *v17 = *"<badref> = ";
    v20 = *(v8 + 4) + 11;
  }

  else
  {
    v9 = LocalSlot;
    v10 = *(v8 + 4);
    if (v10 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(*this, 37);
    }

    else
    {
      *(v8 + 4) = v10 + 1;
      *v10 = 37;
    }

    llvm::write_integer(v8, v9, 0, 0);
    v19 = *(v8 + 4);
    if ((*(v8 + 3) - v19) <= 2)
    {
      v16 = " = ";
      v14 = v8;
LABEL_22:
      v18 = 3;
      goto LABEL_23;
    }

    *(v19 + 2) = 32;
    *v19 = 15648;
    v20 = *(v8 + 4) + 3;
  }

  *(v8 + 4) = v20;
LABEL_27:
  v21 = *(a2 + 16);
  if (v21 != 84)
  {
    goto LABEL_35;
  }

  v22 = *(a2 + 9) & 3;
  if (v22 == 2)
  {
    v23 = "musttail ";
    v24 = 9;
LABEL_34:
    llvm::raw_ostream::operator<<(*this, v23, v24);
    v21 = *(a2 + 16);
    goto LABEL_35;
  }

  if ((v22 - 1) < 2)
  {
    v23 = "tail ";
    v24 = 5;
    goto LABEL_34;
  }

  if (v22 == 3)
  {
    v23 = "notail ";
    v24 = 7;
    goto LABEL_34;
  }

  v21 = 84;
LABEL_35:
  v25 = *this;
  OpcodeName = llvm::Instruction::getOpcodeName((v21 - 28));
  v27 = strlen(OpcodeName);
  llvm::raw_ostream::operator<<(v25, OpcodeName, v27);
  v28 = *(a2 + 16);
  if (v28 == 61)
  {
    if (!llvm::Instruction::isAtomic(a2))
    {
      goto LABEL_56;
    }

    goto LABEL_40;
  }

  if (v28 == 60)
  {
    if (!llvm::Instruction::isAtomic(a2))
    {
      goto LABEL_56;
    }

LABEL_40:
    v29 = *this;
    v30 = *(*this + 32);
    if (*(*this + 24) - v30 > 6uLL)
    {
      *(v30 + 3) = 1667853679;
      *v30 = 1869898016;
      *(v29 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v29, " atomic", 7uLL);
    }

    v28 = *(a2 + 16);
  }

  if (v28 == 64)
  {
    v31 = *(a2 + 9);
    if ((v31 & 2) == 0)
    {
      goto LABEL_57;
    }

    v32 = *this;
    v33 = *(*this + 32);
    if ((*(*this + 24) - v33) > 4)
    {
      *(v33 + 4) = 107;
      *v33 = 1634039584;
      *(v32 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v32, " weak", 5uLL);
    }

    v28 = *(a2 + 16);
  }

  if (v28 > 63)
  {
    if (v28 != 65 && v28 != 64)
    {
      goto LABEL_61;
    }
  }

  else if (v28 != 60 && v28 != 61)
  {
    goto LABEL_61;
  }

LABEL_56:
  v31 = *(a2 + 9);
LABEL_57:
  if (v31)
  {
    v34 = *this;
    v35 = *(*this + 32);
    if ((*(*this + 24) - v35) > 8)
    {
      *(v35 + 8) = 101;
      *v35 = *" volatile";
      *(v34 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v34, " volatile", 9uLL);
    }
  }

LABEL_61:
  WriteOptimizationInfo(*this, a2);
  v36 = *(a2 + 16);
  if ((v36 - 83) >= 0xFFFFFFFE)
  {
    v37 = *this;
    v38 = *(*this + 32);
    if (v38 >= *(*this + 24))
    {
      llvm::raw_ostream::write(*this, 32);
    }

    else
    {
      *(v37 + 4) = v38 + 1;
      *v38 = 32;
    }

    PredicateName = llvm::CmpInst::getPredicateName(*(a2 + 9) & 0x3F);
    llvm::raw_ostream::operator<<(v37, PredicateName, v40);
    v36 = *(a2 + 16);
  }

  if (v36 == 65)
  {
    v41 = *this;
    v42 = *(*this + 32);
    if (v42 >= *(*this + 24))
    {
      llvm::raw_ostream::write(*this, 32);
    }

    else
    {
      *(v41 + 4) = v42 + 1;
      *v42 = 32;
    }

    OperationName = llvm::AtomicRMWInst::getOperationName((*(a2 + 9) >> 4) & 0x1F);
    llvm::raw_ostream::operator<<(v41, OperationName, v44);
  }

  v45 = *(a2 + 5);
  v46 = v45 & 0x7FFFFFF;
  if ((v45 & 0x7FFFFFF) != 0)
  {
    if ((v45 & 0x40000000) != 0)
    {
      v47 = *(a2 - 1);
    }

    else
    {
      v47 = &a2[-4 * v46];
    }

    v49 = *v47;
    v48 = *(a2 + 16);
    if (v48 == 30)
    {
      if (v46 == 3)
      {
        v50 = *this;
        v51 = *(*this + 32);
        if (v51 >= *(*this + 24))
        {
          llvm::raw_ostream::write(v50, 32);
        }

        else
        {
          *(v50 + 4) = v51 + 1;
          *v51 = 32;
        }

        v100 = *this;
        v101 = *(*this + 32);
        if (*(*this + 24) - v101 > 1uLL)
        {
          *v101 = 8236;
          *(v100 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v100, ", ", 2uLL);
        }

        v102 = *this;
        v103 = *(*this + 32);
        if (*(*this + 24) - v103 > 1uLL)
        {
          *v103 = 8236;
          *(v102 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v102, ", ", 2uLL);
        }

        v104 = *(a2 - 8);
        goto LABEL_161;
      }

      if (!v49)
      {
        goto LABEL_326;
      }

      goto LABEL_94;
    }
  }

  else
  {
    v48 = *(a2 + 16);
    if (v48 == 30)
    {
      goto LABEL_357;
    }

    v49 = 0;
  }

  if (v48 == 32)
  {
    v54 = *this;
    v55 = *(*this + 32);
    if (v55 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v54, 32);
    }

    else
    {
      *(v54 + 4) = v55 + 1;
      *v55 = 32;
    }

    v85 = *this;
    v86 = *(*this + 32);
    if ((*(*this + 24) - v86) > 2)
    {
      *(v86 + 2) = 91;
      *v86 = 8236;
      *(v85 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v85, ", [", 3uLL);
    }

    v87 = *(a2 + 5) & 0x7FFFFFF;
    v88 = v87 - 1;
    if (v87 != 1)
    {
      v89 = 4;
      do
      {
        if (v89 != 4)
        {
          v90 = *this;
          v91 = *(*this + 32);
          if (*(*this + 24) - v91 > 1uLL)
          {
            *v91 = 8236;
            *(v90 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v90, ", ", 2uLL);
          }
        }

        v92 = *(a2 + 5);
        if ((v92 & 0x40000000) != 0)
        {
          v93 = *(a2 - 1);
        }

        else
        {
          v93 = &a2[-4 * (v92 & 0x7FFFFFF)];
        }

        v89 += 4;
        --v88;
      }

      while (v88);
    }

    goto LABEL_144;
  }

  if (v48 == 31)
  {
    v52 = *this;
    v53 = *(*this + 32);
    if (v53 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v52, 32);
    }

    else
    {
      *(v52 + 4) = v53 + 1;
      *v53 = 32;
    }

    v62 = *(a2 + 5);
    if ((v62 & 0x40000000) != 0)
    {
      v63 = *(a2 - 1);
    }

    else
    {
      v63 = &a2[-4 * (v62 & 0x7FFFFFF)];
    }

    v64 = *this;
    v65 = *(*this + 32);
    if (*(*this + 24) - v65 > 1uLL)
    {
      *v65 = 8236;
      *(v64 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v64, ", ", 2uLL);
    }

    v66 = *(a2 + 5);
    if ((v66 & 0x40000000) != 0)
    {
      v67 = *(a2 - 1);
    }

    else
    {
      v67 = &a2[-4 * (v66 & 0x7FFFFFF)];
    }

    v68 = *this;
    v69 = *(*this + 32);
    if (*(*this + 24) - v69 > 1uLL)
    {
      *v69 = 23328;
      *(v68 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v68, " [", 2uLL);
    }

    v70 = (*(a2 + 5) >> 1) & 0x3FFFFFF;
    v71 = (v70 - 1);
    if (v70 != 1)
    {
      v72 = 4294967294;
      v73 = 3;
      do
      {
        v74 = *this;
        v75 = *(*this + 32);
        if ((*(*this + 24) - v75) > 4)
        {
          *(v75 + 4) = 32;
          *v75 = 538976266;
          *(v74 + 4) += 5;
        }

        else
        {
          llvm::raw_ostream::write(v74, "\n    ", 5uLL);
        }

        v76 = *(a2 + 5);
        if ((v76 & 0x40000000) != 0)
        {
          v77 = *(a2 - 1);
        }

        else
        {
          v77 = &a2[-4 * (v76 & 0x7FFFFFF)];
        }

        v78 = *this;
        v79 = *(*this + 32);
        if (*(*this + 24) - v79 > 1uLL)
        {
          *v79 = 8236;
          *(v78 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v78, ", ", 2uLL);
        }

        v80 = *(a2 + 5);
        if ((v80 & 0x40000000) != 0)
        {
          v81 = *(a2 - 1);
        }

        else
        {
          v81 = &a2[-4 * (v80 & 0x7FFFFFF)];
        }

        v82 = v73;
        if (!v72)
        {
          v82 = 1;
        }

        --v72;
        v73 += 2;
        --v71;
      }

      while (v71);
    }

    v83 = *this;
    v84 = *(*this + 32);
    if (*(*this + 24) - v84 > 3uLL)
    {
      *v84 = 1562386442;
      *(v83 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v83, "\n  ]", 4uLL);
    }

    goto LABEL_326;
  }

  if (v48 == 83)
  {
    v56 = a2;
  }

  else
  {
    v56 = 0;
  }

  if (v48 == 83)
  {
    v57 = *this;
    v58 = *(*this + 32);
    if (v58 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v57, 32);
    }

    else
    {
      *(v57 + 4) = v58 + 1;
      *v58 = 32;
    }

    v112 = *this;
    v113 = *(*this + 32);
    if (v113 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v112, 32);
    }

    else
    {
      *(v112 + 4) = v113 + 1;
      *v113 = 32;
    }

    v114 = *(a2 + 5) & 0x7FFFFFF;
    if (v114)
    {
      v115 = 0;
      v116 = 0;
      v117 = 32 * v114;
      do
      {
        if (v115)
        {
          v118 = *this;
          v119 = *(*this + 32);
          if (*(*this + 24) - v119 > 1uLL)
          {
            *v119 = 8236;
            *(v118 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v118, ", ", 2uLL);
          }
        }

        v120 = *this;
        v121 = *(*this + 32);
        if (*(*this + 24) - v121 > 1uLL)
        {
          *v121 = 8283;
          *(v120 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v120, "[ ", 2uLL);
        }

        v122 = *(a2 + 5);
        if ((v122 & 0x40000000) != 0)
        {
          v123 = *(a2 - 1);
        }

        else
        {
          v123 = v56 - 32 * (v122 & 0x7FFFFFF);
        }

        v124 = *this;
        v125 = *(*this + 32);
        if (*(*this + 24) - v125 > 1uLL)
        {
          *v125 = 8236;
          *(v124 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v124, ", ", 2uLL);
        }

        v126 = *(a2 + 5);
        if ((v126 & 0x40000000) != 0)
        {
          v127 = *(a2 - 1);
        }

        else
        {
          v127 = v56 - 32 * (v126 & 0x7FFFFFF);
        }

        v128 = *this;
        v129 = *(*this + 32);
        if (*(*this + 24) - v129 > 1uLL)
        {
          *v129 = 23840;
          *(v128 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v128, " ]", 2uLL);
        }

        v116 += 32;
        v115 += 8;
      }

      while (v117 != v116);
    }

    goto LABEL_326;
  }

  if (v48 == 93)
  {
    v139 = *this;
    v140 = *(*this + 32);
    if (v140 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v139, 32);
    }

    else
    {
      *(v139 + 4) = v140 + 1;
      *v140 = 32;
    }

    v152 = *(a2 + 5);
    if ((v152 & 0x40000000) != 0)
    {
      v153 = *(a2 - 1);
    }

    else
    {
      v153 = &a2[-4 * (v152 & 0x7FFFFFF)];
    }

    v154 = *this;
    v155 = *(*this + 32);
    if (*(*this + 24) - v155 > 1uLL)
    {
      *v155 = 8236;
      *(v154 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v154, ", ", 2uLL);
    }

    v156 = *(a2 + 5);
    if ((v156 & 0x40000000) != 0)
    {
      v157 = *(a2 - 1);
    }

    else
    {
      v157 = &a2[-4 * (v156 & 0x7FFFFFF)];
    }

    v158 = *(a2 + 18);
    if (v158)
    {
      v159 = a2[8];
      v160 = 4 * v158;
      do
      {
        v161 = *v159;
        v162 = *this;
        v163 = *(*this + 32);
        if (*(*this + 24) - v163 > 1uLL)
        {
          *v163 = 8236;
          *(v162 + 4) += 2;
        }

        else
        {
          v162 = llvm::raw_ostream::write(v162, ", ", 2uLL);
        }

        write_unsigned<unsigned long>(v162, v161, 0, 0, 0);
        v159 = (v159 + 4);
        v160 -= 4;
      }

      while (v160);
    }
  }

  else
  {
    if (v48 == 92)
    {
      v98 = *this;
      v99 = *(*this + 32);
      if (v99 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v98, 32);
      }

      else
      {
        *(v98 + 4) = v99 + 1;
        *v99 = 32;
      }

      v144 = *(a2 + 5);
      if ((v144 & 0x40000000) != 0)
      {
        v145 = *(a2 - 1);
      }

      else
      {
        v145 = &a2[-4 * (v144 & 0x7FFFFFF)];
      }

      v146 = *(a2 + 18);
      if (v146)
      {
        v147 = a2[8];
        v148 = 4 * v146;
        do
        {
          v149 = *v147;
          v150 = *this;
          v151 = *(*this + 32);
          if (*(*this + 24) - v151 > 1uLL)
          {
            *v151 = 8236;
            *(v150 + 4) += 2;
          }

          else
          {
            v150 = llvm::raw_ostream::write(v150, ", ", 2uLL);
          }

          write_unsigned<unsigned long>(v150, v149, 0, 0, 0);
          v147 = (v147 + 4);
          v148 -= 4;
        }

        while (v148);
      }

      goto LABEL_326;
    }

    if (v48 == 94)
    {
      v141 = a2;
    }

    else
    {
      v141 = 0;
    }

    if (v48 == 94)
    {
      v142 = *this;
      v143 = *(*this + 32);
      if (v143 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v142, 32);
      }

      else
      {
        *(v142 + 4) = v143 + 1;
        *v143 = 32;
      }

      if ((*(a2 + 9) & 1) != 0 || (*(a2 + 5) & 0x7FFFFFF) != 0)
      {
        v167 = *this;
        v168 = *(*this + 32);
        if (v168 >= *(*this + 24))
        {
          llvm::raw_ostream::write(v167, 10);
        }

        else
        {
          *(v167 + 4) = v168 + 1;
          *v168 = 10;
        }
      }

      if (*(a2 + 9))
      {
        llvm::raw_ostream::operator<<(*this, "          cleanup", 0x11uLL);
      }

      v173 = *(a2 + 5) & 0x7FFFFFF;
      if (v173)
      {
        v174 = 0;
        v175 = 32 * v173;
        do
        {
          if (v174 || (*(a2 + 9) & 1) != 0)
          {
            v176 = *this;
            v177 = *(*this + 32);
            if (*(*this + 24) == v177)
            {
              llvm::raw_ostream::write(v176, "\n", 1uLL);
            }

            else
            {
              *v177 = 10;
              ++*(v176 + 4);
            }
          }

          v178 = *(a2 + 5);
          if ((v178 & 0x40000000) != 0)
          {
            v179 = *(a2 - 1);
          }

          else
          {
            v179 = v141 - 32 * (v178 & 0x7FFFFFF);
          }

          v180 = *(**&v179[v174] + 8);
          if (v180 == 17)
          {
            v181 = "          filter ";
          }

          else
          {
            v181 = "          catch ";
          }

          if (v180 == 17)
          {
            v182 = 17;
          }

          else
          {
            v182 = 16;
          }

          llvm::raw_ostream::operator<<(*this, v181, v182);
          v183 = *(a2 + 5);
          if ((v183 & 0x40000000) != 0)
          {
            v184 = *(a2 - 1);
          }

          else
          {
            v184 = v141 - 32 * (v183 & 0x7FFFFFF);
          }

          v174 += 32;
        }

        while (v175 != v174);
      }

      goto LABEL_326;
    }

    if (v48 == 38)
    {
      v164 = a2;
    }

    else
    {
      v164 = 0;
    }

    if (v48 == 38)
    {
      llvm::raw_ostream::operator<<(*this, " within ", 8uLL);
      v165 = *(a2 + 5);
      if ((v165 & 0x40000000) != 0)
      {
        v166 = *(a2 - 1);
      }

      else
      {
        v166 = &a2[-4 * (v165 & 0x7FFFFFF)];
      }

      llvm::raw_ostream::operator<<(*this, " [", 2uLL);
      v185 = *(a2 + 5);
      if ((v185 & 0x40000000) != 0)
      {
        v187 = *(a2 - 1);
        v195 = 8;
        if ((*(a2 + 9) & 1) == 0)
        {
          v195 = 4;
        }

        v189 = &v187[v195];
        v186 = v185 & 0x7FFFFFF;
      }

      else
      {
        v186 = v185 & 0x7FFFFFF;
        v187 = &a2[-4 * v186];
        v188 = 8;
        if ((*(a2 + 9) & 1) == 0)
        {
          v188 = 4;
        }

        v189 = &v187[v188];
      }

      v196 = &v187[4 * v186];
      if (v189 != v196)
      {
        v197 = 0;
        do
        {
          v198 = *v189;
          if (v197)
          {
            v199 = *this;
            v200 = *(*this + 32);
            if (*(*this + 24) - v200 > 1uLL)
            {
              *v200 = 8236;
              *(v199 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v199, ", ", 2uLL);
            }
          }

          v189 += 4;
          --v197;
        }

        while (v189 != v196);
      }

      llvm::raw_ostream::operator<<(*this, "] unwind ", 9uLL);
      if (*(v164 + 9))
      {
        v201 = *(a2 + 5);
        v202 = (v201 & 0x40000000) != 0 ? *(v164 - 1) : (v164 - 32 * (v201 & 0x7FFFFFF));
        v104 = *(v202 + 4);
        if (v104)
        {
          goto LABEL_161;
        }
      }

      goto LABEL_324;
    }

    if ((v48 - 81) >= 0xFFFFFFFE)
    {
      v169 = a2;
    }

    else
    {
      v169 = 0;
    }

    if ((v48 - 81) >= 0xFFFFFFFE)
    {
      llvm::raw_ostream::operator<<(*this, " within ", 8uLL);
      llvm::raw_ostream::operator<<(*this, " [", 2uLL);
      v190 = *(a2 + 5) & 0x7FFFFFF;
      v191 = (v190 - 1);
      if (v190 != 1)
      {
        v192 = 0;
        do
        {
          if (v192)
          {
            v193 = *this;
            v194 = *(*this + 32);
            if (*(*this + 24) - v194 > 1uLL)
            {
              *v194 = 8236;
              *(v193 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v193, ", ", 2uLL);
            }
          }

          ++v192;
          v169 = (v169 + 32);
        }

        while (v191 != v192);
      }

      goto LABEL_144;
    }

    if (v48 == 29 && !v49)
    {
      v170 = *this;
      v171 = " void";
      v172 = 5;
LABEL_325:
      llvm::raw_ostream::operator<<(v170, v171, v172);
      goto LABEL_326;
    }

    if (v48 == 36)
    {
      llvm::raw_ostream::operator<<(*this, " from ", 6uLL);
      llvm::raw_ostream::operator<<(*this, " unwind ", 8uLL);
      if ((*(a2 + 9) & 1) == 0)
      {
LABEL_324:
        v170 = *this;
        v171 = "to caller";
        v172 = 9;
        goto LABEL_325;
      }

      v104 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF) + 4];
LABEL_161:
      goto LABEL_326;
    }

    if (v48 == 37)
    {
      llvm::raw_ostream::operator<<(*this, " from ", 6uLL);
      llvm::raw_ostream::operator<<(*this, " to ", 4uLL);
      v104 = *(a2 - 4);
      goto LABEL_161;
    }

    if (v48 == 84)
    {
      v219 = a2;
    }

    else
    {
      v219 = 0;
    }

    if (v48 == 84)
    {
      if ((*(a2 + 9) & 0xFFC) != 0)
      {
        llvm::raw_ostream::operator<<(*this, " ", 1uLL);
        PrintCallingConv(((*(a2 + 9) >> 2) & 0x3FF), *this);
      }

      v220 = *(a2 - 4);
      v221 = a2[8];
      v222 = a2[9];
      v223 = *v222[2];
      if (v221 && *(v221 + 2) >= 2u && v221[6])
      {
        v224 = *this;
        v225 = *(*this + 32);
        if (v225 >= *(*this + 24))
        {
          llvm::raw_ostream::write(*this, 32);
        }

        else
        {
          *(v224 + 4) = v225 + 1;
          *v225 = 32;
        }

        v245 = *(v221 + 2) < 2u ? 0 : v221[6];
        v328 = v245;
        llvm::AttributeSet::getAsString(&v328, 0, __p);
        v246 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        v247 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p[0].__r_.__value_.__r.__words[2]) : __p[0].__r_.__value_.__l.__size_;
        llvm::raw_ostream::write(v224, v246, v247);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      maybePrintCallAddrSpace(v220, a2, *this);
      v248 = *this;
      v249 = *(*this + 32);
      if (v249 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v248, 32);
      }

      else
      {
        *(v248 + 4) = v249 + 1;
        *v249 = 32;
      }

      if (*(v222 + 2) <= 0xFFu)
      {
        v250 = v223;
      }

      else
      {
        v250 = v222;
      }

      v251 = *this;
      v252 = *(*this + 32);
      if (v252 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v251, 32);
      }

      else
      {
        *(v251 + 4) = v252 + 1;
        *v252 = 32;
      }

      v253 = *this;
      v254 = *(*this + 32);
      if (v254 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v253, 40);
      }

      else
      {
        *(v253 + 4) = v254 + 1;
        *v254 = 40;
      }

      v255 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
      if ((v255 & 0x1FFFFFFFE0) != 0)
      {
        v256 = 0;
        v257 = (v255 >> 5);
        v258 = v219;
        do
        {
          if (v256)
          {
            llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
          }

          if (v221 && (v256 + 2) < *(v221 + 2))
          {
            v259 = v221[(v256 + 2) + 5];
          }

          else
          {
            v259 = 0;
          }

          ++v256;
          v258 = (v258 + 32);
        }

        while (v257 != v256);
      }

      if ((*(a2 + 9) & 3) == 2)
      {
        v260 = *(v219 + 5);
        if (v260)
        {
          v261 = *(v260 + 56);
          if (v261)
          {
            if (*(*(v261 + 24) + 8) >= 0x100u)
            {
              if (((llvm::CallBase::arg_end(v219) - (v219 - 32 * (*(a2 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0)
              {
                llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
              }

              llvm::raw_ostream::operator<<(*this, "...", 3uLL);
            }
          }
        }
      }

      v262 = *this;
      v263 = *(*this + 32);
      if (v263 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v262, 41);
      }

      else
      {
        *(v262 + 4) = v263 + 1;
        *v263 = 41;
      }

      if (v221 && *(v221 + 2) && v221[5])
      {
        v264 = llvm::raw_ostream::operator<<(*this, " #", 2uLL);
        if (*(v221 + 2))
        {
          v265 = v221[5];
        }

        else
        {
          v265 = 0;
        }

        AttributeGroupSlot = llvm::SlotTracker::getAttributeGroupSlot(*(this + 4), v265);
        llvm::write_integer(v264, AttributeGroupSlot, 0, 0);
      }

      goto LABEL_326;
    }

    if (v48 == 33)
    {
      v226 = a2;
    }

    else
    {
      v226 = 0;
    }

    if (v48 == 33)
    {
      v227 = *(a2 - 4);
      v228 = a2[8];
      v229 = a2[9];
      v230 = *v229[2];
      if ((*(a2 + 9) & 0xFFC) != 0)
      {
        llvm::raw_ostream::operator<<(*this, " ", 1uLL);
        PrintCallingConv(((*(a2 + 9) >> 2) & 0x3FF), *this);
      }

      if (v228 && *(v228 + 2) >= 2u && v228[6])
      {
        v231 = *this;
        v232 = *(*this + 32);
        if (v232 >= *(*this + 24))
        {
          llvm::raw_ostream::write(*this, 32);
        }

        else
        {
          *(v231 + 4) = v232 + 1;
          *v232 = 32;
        }

        v276 = *(v228 + 2) < 2u ? 0 : v228[6];
        v328 = v276;
        llvm::AttributeSet::getAsString(&v328, 0, __p);
        v277 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        v278 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p[0].__r_.__value_.__r.__words[2]) : __p[0].__r_.__value_.__l.__size_;
        llvm::raw_ostream::write(v231, v277, v278);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      maybePrintCallAddrSpace(v227, a2, *this);
      v279 = *this;
      v280 = *(*this + 32);
      if (v280 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v279, 32);
      }

      else
      {
        *(v279 + 4) = v280 + 1;
        *v280 = 32;
      }

      if (*(v229 + 2) <= 0xFFu)
      {
        v281 = v230;
      }

      else
      {
        v281 = v229;
      }

      v282 = *this;
      v283 = *(*this + 32);
      if (v283 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v282, 32);
      }

      else
      {
        *(v282 + 4) = v283 + 1;
        *v283 = 32;
      }

      v284 = *this;
      v285 = *(*this + 32);
      if (v285 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v284, 40);
      }

      else
      {
        *(v284 + 4) = v285 + 1;
        *v285 = 40;
      }

      v286 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
      if ((v286 & 0x1FFFFFFFE0) != 0)
      {
        v287 = 0;
        v288 = (v286 >> 5);
        v289 = v226;
        do
        {
          if (v287)
          {
            llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
          }

          if (v228 && (v287 + 2) < *(v228 + 2))
          {
            v290 = v228[(v287 + 2) + 5];
          }

          else
          {
            v290 = 0;
          }

          ++v287;
          v289 = (v289 + 32);
        }

        while (v288 != v287);
      }

      v291 = *this;
      v292 = *(*this + 32);
      if (v292 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v291, 41);
      }

      else
      {
        *(v291 + 4) = v292 + 1;
        *v292 = 41;
      }

      if (v228 && *(v228 + 2) && v228[5])
      {
        v293 = llvm::raw_ostream::operator<<(*this, " #", 2uLL);
        if (*(v228 + 2))
        {
          v294 = v228[5];
        }

        else
        {
          v294 = 0;
        }

        v295 = llvm::SlotTracker::getAttributeGroupSlot(*(this + 4), v294);
        llvm::write_integer(v293, v295, 0, 0);
      }

      llvm::raw_ostream::operator<<(*this, "\n          to ", 0xEuLL);
      llvm::raw_ostream::operator<<(*this, " unwind ", 8uLL);
      v104 = *(v226 - 8);
      goto LABEL_161;
    }

    if (v48 == 39)
    {
      v233 = a2;
    }

    else
    {
      v233 = 0;
    }

    if (v48 == 39)
    {
      v234 = *(a2 - 4);
      v235 = a2[8];
      v236 = a2[9];
      v237 = *v236[2];
      v238 = a2 - 4;
      if ((*(a2 + 9) & 0xFFC) != 0)
      {
        llvm::raw_ostream::operator<<(*this, " ", 1uLL);
        PrintCallingConv(((*(a2 + 9) >> 2) & 0x3FF), *this);
      }

      if (v235 && *(v235 + 2) >= 2u && v235[6])
      {
        v239 = *this;
        v240 = *(*this + 32);
        if (v240 >= *(*this + 24))
        {
          llvm::raw_ostream::write(*this, 32);
        }

        else
        {
          *(v239 + 4) = v240 + 1;
          *v240 = 32;
        }

        v298 = *(v235 + 2) < 2u ? 0 : v235[6];
        v328 = v298;
        llvm::AttributeSet::getAsString(&v328, 0, __p);
        v299 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        v300 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p[0].__r_.__value_.__r.__words[2]) : __p[0].__r_.__value_.__l.__size_;
        llvm::raw_ostream::write(v239, v299, v300);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      v301 = *this;
      v302 = *(*this + 32);
      if (v302 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v301, 32);
      }

      else
      {
        *(v301 + 4) = v302 + 1;
        *v302 = 32;
      }

      if (*(v236 + 2) <= 0xFFu)
      {
        v303 = v237;
      }

      else
      {
        v303 = v236;
      }

      v304 = *this;
      v305 = *(*this + 32);
      if (v305 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v304, 32);
      }

      else
      {
        *(v304 + 4) = v305 + 1;
        *v305 = 32;
      }

      v306 = *this;
      v307 = *(*this + 32);
      if (v307 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v306, 40);
      }

      else
      {
        *(v306 + 4) = v307 + 1;
        *v307 = 40;
      }

      v308 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
      if ((v308 & 0x1FFFFFFFE0) != 0)
      {
        v309 = 0;
        v310 = (v308 >> 5);
        v311 = v233;
        do
        {
          if (v309)
          {
            llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
          }

          if (v235 && (v309 + 2) < *(v235 + 2))
          {
            v312 = v235[(v309 + 2) + 5];
          }

          else
          {
            v312 = 0;
          }

          ++v309;
          v311 += 8;
        }

        while (v310 != v309);
      }

      v313 = *this;
      v314 = *(*this + 32);
      if (v314 >= *(*this + 24))
      {
        llvm::raw_ostream::write(v313, 41);
      }

      else
      {
        *(v313 + 4) = v314 + 1;
        *v314 = 41;
      }

      if (v235 && *(v235 + 2) && v235[5])
      {
        v315 = llvm::raw_ostream::operator<<(*this, " #", 2uLL);
        if (*(v235 + 2))
        {
          v316 = v235[5];
        }

        else
        {
          v316 = 0;
        }

        v317 = llvm::SlotTracker::getAttributeGroupSlot(*(this + 4), v316);
        llvm::write_integer(v315, v317, 0, 0);
      }

      llvm::raw_ostream::operator<<(*this, "\n          to ", 0xEuLL);
      llvm::raw_ostream::operator<<(*this, " [", 2uLL);
      v318 = v233[20];
      if (v318)
      {
        for (i = 0; i != v318; ++i)
        {
          if (i)
          {
            llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
          }

          v238 += 4;
        }
      }

LABEL_144:
      v94 = *this;
      v95 = *(*this + 32);
      if (v95 < *(*this + 24))
      {
        *(v94 + 4) = v95 + 1;
        v96 = 93;
LABEL_146:
        *v95 = v96;
        goto LABEL_326;
      }

      v97 = 93;
      goto LABEL_148;
    }

    if (v48 != 59)
    {
      if ((v48 - 66) > 0xC)
      {
        if (v48 != 88)
        {
          if (!v49)
          {
            goto LABEL_326;
          }

          if (v48 == 60)
          {
            v323 = *this;
            v324 = *(*this + 32);
            if (v324 >= *(*this + 24))
            {
              llvm::raw_ostream::write(v323, 32);
            }

            else
            {
              *(v323 + 4) = v324 + 1;
              *v324 = 32;
            }

            v325 = *a2;
          }

          else
          {
            if (v48 != 62)
            {
              goto LABEL_94;
            }

            v296 = *this;
            v297 = *(*this + 32);
            if (v297 >= *(*this + 24))
            {
              llvm::raw_ostream::write(v296, 32);
            }

            else
            {
              *(v296 + 4) = v297 + 1;
              *v297 = 32;
            }

            v325 = a2[8];
          }

          v326 = *this;
          v327 = *(*this + 32);
          if (v327 >= *(*this + 24))
          {
            llvm::raw_ostream::write(v326, 44);
          }

          else
          {
            *(v326 + 4) = v327 + 1;
            *v327 = 44;
          }

LABEL_94:
          v59 = *v49;
          v60 = *(a2 + 16) - 29;
          if (v60 >= 0x3F || ((0x4100001900000001uLL >> v60) & 1) == 0)
          {
            v105 = *(a2 + 5);
            v106 = (v105 & 0x7FFFFFF) - 1;
            if ((v105 & 0x7FFFFFF) == 1)
            {
LABEL_169:
              v110 = *this;
              v111 = *(*this + 32);
              if (v111 >= *(*this + 24))
              {
                llvm::raw_ostream::write(v110, 32);
              }

              else
              {
                *(v110 + 4) = v111 + 1;
                *v111 = 32;
              }

              v61 = 0;
LABEL_201:
              v130 = *this;
              v131 = *(*this + 32);
              if (v131 >= *(*this + 24))
              {
                llvm::raw_ostream::write(v130, 32);
              }

              else
              {
                *(v130 + 4) = v131 + 1;
                *v131 = 32;
              }

              v132 = *(a2 + 5) & 0x7FFFFFF;
              if (v132)
              {
                v133 = 0;
                v134 = 32 * v132;
                do
                {
                  if (v133)
                  {
                    v135 = *this;
                    v136 = *(*this + 32);
                    if (*(*this + 24) - v136 > 1uLL)
                    {
                      *v136 = 8236;
                      *(v135 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v135, ", ", 2uLL);
                    }
                  }

                  v137 = *(a2 + 5);
                  if ((v137 & 0x40000000) != 0)
                  {
                    v138 = *(a2 - 1);
                  }

                  else
                  {
                    v138 = &a2[-4 * (v137 & 0x7FFFFFF)];
                  }

                  v133 += 32;
                }

                while (v134 != v133);
              }

              goto LABEL_326;
            }

            v107 = 4;
            while (1)
            {
              v108 = &a2[-4 * (v105 & 0x7FFFFFF)];
              if ((v105 & 0x40000000) != 0)
              {
                v108 = *(a2 - 1);
              }

              v109 = v108[v107];
              if (v109)
              {
                if (*v109 != v59)
                {
                  break;
                }
              }

              v107 += 4;
              if (!--v106)
              {
                goto LABEL_169;
              }
            }
          }

          v61 = 1;
          goto LABEL_201;
        }

        if (v49)
        {
          v274 = *this;
          v275 = *(*this + 32);
          if (v275 >= *(*this + 24))
          {
            llvm::raw_ostream::write(v274, 32);
          }

          else
          {
            *(v274 + 4) = v275 + 1;
            *v275 = 32;
          }
        }

        v320 = *this;
        v321 = ", ";
        v322 = 2;
      }

      else
      {
        if (v49)
        {
          v243 = *this;
          v244 = *(*this + 32);
          if (v244 >= *(*this + 24))
          {
            llvm::raw_ostream::write(v243, 32);
          }

          else
          {
            *(v243 + 4) = v244 + 1;
            *v244 = 32;
          }
        }

        v320 = *this;
        v321 = " to ";
        v322 = 4;
      }

      llvm::raw_ostream::operator<<(v320, v321, v322);
      goto LABEL_326;
    }

    v241 = *this;
    v242 = *(*this + 32);
    if (v242 >= *(*this + 24))
    {
      llvm::raw_ostream::write(v241, 32);
    }

    else
    {
      *(v241 + 4) = v242 + 1;
      *v242 = 32;
    }

    v267 = *(a2 + 9);
    if ((v267 & 0x40) != 0)
    {
      llvm::raw_ostream::operator<<(*this, "inalloca ", 9uLL);
      v267 = *(a2 + 9);
    }

    if ((v267 & 0x80) != 0)
    {
      llvm::raw_ostream::operator<<(*this, "swifterror ", 0xBuLL);
    }

    v268 = *(a2 - 4);
    if (!v268 || (llvm::AllocaInst::isArrayAllocation(a2) & 1) != 0 || *(*v268 + 8) != 8205)
    {
      llvm::raw_ostream::operator<<(*this, ", ", 2uLL);
    }

    v269 = *(a2 + 9);
    v270 = llvm::raw_ostream::operator<<(*this, ", align ", 8uLL);
    write_unsigned<unsigned long>(v270, 1 << v269, 0, 0, 0);
    v271 = *(*a2 + 2);
    if (v271 >= 0x100)
    {
      v272 = v271 >> 8;
      v273 = llvm::raw_ostream::operator<<(*this, ", addrspace(", 0xCuLL);
      write_unsigned<unsigned long>(v273, v272, 0, 0, 0);
      v95 = *(v273 + 4);
      if (v95 < *(v273 + 3))
      {
        *(v273 + 4) = v95 + 1;
        v96 = 41;
        goto LABEL_146;
      }

      v94 = v273;
      v97 = 41;
LABEL_148:
      llvm::raw_ostream::write(v94, v97);
    }
  }

LABEL_326:
  v203 = *(a2 + 16);
  if (v203 <= 0x3F)
  {
    if (v203 != 60 && v203 != 61)
    {
      if (v203 == 63)
      {
      }

      goto LABEL_357;
    }

    if (llvm::Instruction::isAtomic(a2))
    {
    }

    v204 = (*(a2 + 9) >> 1) & 0x3F;
    v205 = *this;
    v206 = *(*this + 32);
    if (*(*this + 24) - v206 > 7uLL)
    {
      *v206 = 0x206E67696C61202CLL;
      *(v205 + 4) += 8;
    }

    else
    {
      v205 = llvm::raw_ostream::write(v205, ", align ", 8uLL);
    }

    v211 = 1 << v204;
LABEL_356:
    write_unsigned<unsigned long>(v205, v211, 0, 0, 0);
    goto LABEL_357;
  }

  switch(v203)
  {
    case '@':
      v207 = *(a2 + 9);
      v208 = (v207 >> 2) & 7;
      v209 = *this;
      v210 = *(*this + 32);
      if (*(*this + 24) == v210)
      {
        v209 = llvm::raw_ostream::write(v209, " ", 1uLL);
      }

      else
      {
        *v210 = 32;
        ++*(v209 + 4);
      }

      v214 = v207 >> 5;
      llvm::raw_ostream::operator<<(v209, llvm::toIRString(llvm::AtomicOrdering)::names[v208]);
      v215 = *this;
      v216 = *(*this + 32);
      if (*(*this + 24) == v216)
      {
        v215 = llvm::raw_ostream::write(v215, " ", 1uLL);
      }

      else
      {
        *v216 = 32;
        ++*(v215 + 4);
      }

      llvm::raw_ostream::operator<<(v215, llvm::toIRString(llvm::AtomicOrdering)::names[v214]);
      v205 = *this;
      v217 = *(*this + 32);
      if (*(*this + 24) - v217 > 7uLL)
      {
        *v217 = 0x206E67696C61202CLL;
        *(v205 + 4) += 8;
      }

      else
      {
        v205 = llvm::raw_ostream::write(v205, ", align ", 8uLL);
      }

      LOBYTE(v213) = *(a2 + 19);
      goto LABEL_355;
    case 'A':
      v205 = *this;
      v212 = *(*this + 32);
      if (*(*this + 24) - v212 > 7uLL)
      {
        *v212 = 0x206E67696C61202CLL;
        *(v205 + 4) += 8;
      }

      else
      {
        v205 = llvm::raw_ostream::write(v205, ", align ", 8uLL);
      }

      v213 = *(a2 + 9) >> 9;
LABEL_355:
      v211 = 1 << v213;
      goto LABEL_356;
    case '[':
      PrintShuffleMask(*this, *a2, a2[8], *(a2 + 18));
      break;
  }

LABEL_357:
  __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
  __p[0].__r_.__value_.__l.__size_ = 0x400000000;
  if (a2[6] || (*(a2 + 23) & 0x20) != 0)
  {
    llvm::Instruction::getAllMetadataImpl(a2, __p);
  }

  if (__p[0].__r_.__value_.__l.__data_ != &__p[0].__r_.__value_.__r.__words[2])
  {
    free(__p[0].__r_.__value_.__l.__data_);
  }

  v218 = *MEMORY[0x277D85DE8];
}