uint64_t PartRenderer.Instruction.init(op:params:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  if (!result)
  {
LABEL_23:
    if (a2)
    {
      if (result)
      {
        v5 = 5;
      }

      else
      {
        v5 = 0;
      }

      a4.n128_u64[0] = *a2;
      v6 = 0uLL;
      v4 = 0uLL;
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_33;
  }

  v4 = 0uLL;
  if (result <= 4)
  {
    if (result > 2)
    {
      if (result != 3)
      {
        if (!a2)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        a4 = *a2;
        v6 = *(a2 + 16);
        v5 = 3;
        goto LABEL_31;
      }

      if (!a2)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      a4 = *a2;
      v5 = 2;
    }

    else if (result == 1)
    {
      v5 = 6;
      a4 = 0uLL;
    }

    else
    {
      if (result != 2)
      {
        goto LABEL_37;
      }

      if (!a2)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      a4 = *a2;
      v5 = 1;
    }

LABEL_30:
    v6 = 0uLL;
    goto LABEL_31;
  }

  if (result <= 6)
  {
    if (result != 5)
    {
      a4 = xmmword_298AD1960;
      goto LABEL_29;
    }

    if (!a2)
    {
      goto LABEL_34;
    }

    a4 = *a2;
    v6 = *(a2 + 16);
    v5 = 4;
    v4 = *(a2 + 32);
LABEL_31:
    *a3 = a4;
    *(a3 + 16) = v6;
    *(a3 + 32) = v4;
    *(a3 + 48) = v5;
    return result;
  }

  switch(result)
  {
    case 7:
      a4 = xmmword_298AD1950;
      goto LABEL_29;
    case 9:
      a4 = xmmword_298AD1940;
LABEL_29:
      v5 = 6;
      goto LABEL_30;
    case 8:
      goto LABEL_23;
  }

LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RenderContextTrampoline.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C73398](v0, 32, 7);
}

HVF::PartTransformRenderer *initializeWithTake for HVF.PartTransformRenderer(HVF::PartTransformRenderer *a1, const HVF::PartTransformRenderer *a2)
{
  HVF::PartTransformRenderer::PartTransformRenderer(a1, a2);
  HVF::PartTransformRenderer::~PartTransformRenderer(a2);
  return a1;
}

HVF::PartTransformRenderer *assignWithTake for HVF.PartTransformRenderer(HVF::PartTransformRenderer *a1, const HVF::PartTransformRenderer *a2)
{
  HVF::PartTransformRenderer::~PartTransformRenderer(a1);
  HVF::PartTransformRenderer::PartTransformRenderer(v4, a2);
  HVF::PartTransformRenderer::~PartTransformRenderer(a2);
  return a1;
}

uint64_t getEnumTagSinglePayload for HVF.PartTransformRenderer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 232))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HVF.PartTransformRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t _sSo3HVFO21PartTransformRendererVwCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

HVF::LoaderHVGL *HVF::LoaderHVGL::LoaderHVGL(HVF::LoaderHVGL *this, const HVF::LoaderHVGL *a2)
{
  *this = &unk_2A1F1A0A0;
  v3 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(this + 11) = *(a2 + 11);
  *(this + 72) = v6;
  *(this + 56) = v5;
  *(this + 40) = v4;
  std::unordered_set<unsigned long>::unordered_set(this + 96, a2 + 96);
  return this;
}

HVF::LoaderHVGL *initializeWithTake for HVF.LoaderHVGL(HVF::LoaderHVGL *a1, const HVF::LoaderHVGL *a2)
{
  HVF::LoaderHVGL::LoaderHVGL(a1, a2);
  HVF::LoaderHVGL::~LoaderHVGL(a2);
  return a1;
}

HVF::LoaderHVGL *assignWithTake for HVF.LoaderHVGL(HVF::LoaderHVGL *a1, const HVF::LoaderHVGL *a2)
{
  HVF::LoaderHVGL::~LoaderHVGL(a1);
  HVF::LoaderHVGL::LoaderHVGL(v4, a2);
  HVF::LoaderHVGL::~LoaderHVGL(a2);
  return a1;
}

uint64_t getEnumTagSinglePayload for HVF.LoaderHVGL(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HVF.LoaderHVGL(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

void type metadata accessor for HVF.PartTransformRenderer(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

HVF::PartTransformRenderer *HVF::PartTransformRenderer::PartTransformRenderer(HVF::PartTransformRenderer *this, const HVF::PartTransformRenderer *a2)
{
  *this = &unk_2A1F19EF0;
  std::__function::__value_func<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::__value_func[abi:ne200100](this + 8, a2 + 8);
  std::map<unsigned long,std::variant<HVF::Shape,HVF::Composite>>::map[abi:ne200100](this + 5, a2 + 40);
  v4 = *(a2 + 4);
  v5 = *(a2 + 10);
  *(this + 11) = 0;
  *(this + 10) = v5;
  *(this + 4) = v4;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__init_with_size[abi:ne200100]<double *,double *>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<simd::double3x3>::__init_with_size[abi:ne200100]<simd::double3x3*,simd::double3x3*>(this + 112, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 5));
  HVF::BlendContext::BlendContext(this + 17, a2 + 17);
  return this;
}

void sub_298ABD41C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  HVF::FlatPartCache::~FlatPartCache(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::map<unsigned long,std::variant<HVF::Shape,HVF::Composite>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned long,std::variant<HVF::Shape,HVF::Composite>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned long,std::variant<HVF::Shape,HVF::Composite>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::variant<HVF::Shape,HVF::Composite>> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_hint_unique_key_args<unsigned long,std::pair<unsigned long const,std::variant<HVF::Shape,HVF::Composite>> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__construct_node<std::pair<unsigned long const,std::variant<HVF::Shape,HVF::Composite>> const&>();
  }

  return v3;
}

void *std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__find_equal<unsigned long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 10);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

unsigned int *std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](unsigned int *a1, uint64_t a2)
{
  *a1 = 0;
  a1[70] = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

unsigned int *std::__variant_detail::__ctor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1> const&>(unsigned int *a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 280);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_2A1F19490 + v5))(&v6, a2);
    a1[70] = v5;
  }

  return result;
}

unsigned int *std::__variant_detail::__dtor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](unsigned int *result)
{
  v1 = result;
  v2 = result[70];
  if (v2 != -1)
  {
    result = off_2A1F19480[v2](&v3, result);
  }

  v1[70] = -1;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3HVF5ShapeENS8_9CompositeEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = &unk_2A1F1A180;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  std::vector<std::any>::__init_with_size[abi:ne200100]<std::any*,std::any*>(v3 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 5);
  *v3 = &unk_2A1F1A1F0;
  *(v3 + 32) = *(a2 + 32);
  result = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  *(v3 + 80) = *(a2 + 80);
  *(v3 + 96) = v6;
  *(v3 + 48) = result;
  *(v3 + 64) = v5;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJN3HVF5ShapeENS8_9CompositeEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = &unk_2A1F1A180;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  std::vector<std::any>::__init_with_size[abi:ne200100]<std::any*,std::any*>(v3 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 5);
  *v3 = &unk_2A1F1A278;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v6;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 144);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 144) = v9;
  *(v3 + 96) = v7;
  *(v3 + 112) = v8;
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  v12 = *(a2 + 208);
  *(v3 + 192) = *(a2 + 192);
  *(v3 + 208) = v12;
  *(v3 + 160) = v10;
  *(v3 + 176) = v11;
  result = *(a2 + 224);
  v14 = *(a2 + 240);
  v15 = *(a2 + 256);
  *(v3 + 272) = *(a2 + 272);
  *(v3 + 240) = v14;
  *(v3 + 256) = v15;
  *(v3 + 224) = result;
  return result;
}

void std::vector<std::any>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::any>>(a1, a2);
  }

  std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::any>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EEB4890, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::any>,std::any*,std::any*,std::any*>(uint64_t a1, void (**a2)(uint64_t, void, void *, void, void), void (**a3)(uint64_t, void, void *, void, void), void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      if (*v6)
      {
        (*v6)(1, v6, a4, 0, 0);
      }

      v6 += 4;
      a4 += 4;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_298ABDDB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 32);
    do
    {
      std::any::reset[abi:ne200100](v4);
      v4 -= 4;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void std::vector<std::any>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 4;
        std::any::reset[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy(uint64_t a1, unsigned int *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy(a1, *(a2 + 1));
    std::__variant_detail::__dtor<std::__variant_detail::__traits<HVF::Shape,HVF::Composite>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a2 + 10);

    operator delete(a2);
  }
}

uint64_t std::__function::__value_func<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<double,default_init_allocator<double,std::allocator<double>>>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_298ABE164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double,default_init_allocator<double,std::allocator<double>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(a1, a2);
  }

  std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<simd::double3x3>::__init_with_size[abi:ne200100]<simd::double3x3*,simd::double3x3*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<simd::double3x3>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_298ABE264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<simd::double3x3>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<simd::double3x3>>(a1, a2);
  }

  std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<simd::double3x3>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *HVF::BlendContext::BlendContext(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<simd::double3x3>::__init_with_size[abi:ne200100]<simd::double3x3*,simd::double3x3*>((a1 + 3), a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 5));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__init_with_size[abi:ne200100]<double *,double *>((a1 + 9), a2[9], a2[10], (a2[10] - a2[9]) >> 3);
  return a1;
}

void sub_298ABE3D8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<unsigned long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

hvf::AxisExtremum_optional __swiftcall AxisExtremum.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type AxisExtremum and conformance AxisExtremum()
{
  result = lazy protocol witness table cache variable for type AxisExtremum and conformance AxisExtremum;
  if (!lazy protocol witness table cache variable for type AxisExtremum and conformance AxisExtremum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AxisExtremum and conformance AxisExtremum);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AxisExtremum()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C293C10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AxisExtremum()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C293C10](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AxisExtremum@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisExtremum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisExtremum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

hvf::SegmentBlendType_optional __swiftcall SegmentBlendType.init(rawValue:)(hvf::SegmentBlendType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= hvf_SegmentBlendType_unknownDefault)
  {
    value = hvf_SegmentBlendType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SegmentBlendType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SegmentBlendType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

hvf::SegmentPoint_optional __swiftcall SegmentPoint.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type SegmentBlendType and conformance SegmentBlendType()
{
  result = lazy protocol witness table cache variable for type SegmentBlendType and conformance SegmentBlendType;
  if (!lazy protocol witness table cache variable for type SegmentBlendType and conformance SegmentBlendType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentBlendType and conformance SegmentBlendType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SegmentPoint and conformance SegmentPoint()
{
  result = lazy protocol witness table cache variable for type SegmentPoint and conformance SegmentPoint;
  if (!lazy protocol witness table cache variable for type SegmentPoint and conformance SegmentPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SegmentPoint and conformance SegmentPoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PointCoordinate and conformance PointCoordinate()
{
  result = lazy protocol witness table cache variable for type PointCoordinate and conformance PointCoordinate;
  if (!lazy protocol witness table cache variable for type PointCoordinate and conformance PointCoordinate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PointCoordinate and conformance PointCoordinate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentBlendType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentBlendType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Bool __swiftcall LoadShapeWriter.finalize()()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(*(v0 + 16) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1, v2);
  swift_endAccess();
  swift_beginAccess();
  v3 = *(*(v0 + 24) + 16);
  swift_beginAccess();
  std::vector<HVF::Shape::BlendType>::reserve(v1 + 3, v3);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(*(v0 + 32) + 16);
  swift_beginAccess();
  std::vector<double>::reserve(v1 + 6, v4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(*(v0 + 40) + 16);
  swift_beginAccess();
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::reserve(v1 + 9, v5);
  swift_endAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    swift_beginAccess();

    v8 = 32;
    do
    {
      LOWORD(v19) = *(v6 + v8);
      std::vector<unsigned short>::push_back[abi:ne200100](v1, &v19);
      v8 += 2;
      --v7;
    }

    while (v7);
    swift_endAccess();
  }

  v9 = *(v0 + 24);
  v10 = *(v9 + 16);
  if (v10)
  {
    swift_beginAccess();

    v11 = 32;
    do
    {
      LOBYTE(v19) = *(v9 + v11);
      std::vector<HVF::Shape::BlendType>::push_back[abi:ne200100]((v1 + 3), &v19);
      ++v11;
      --v10;
    }

    while (v10);
    swift_endAccess();
  }

  v12 = *(v0 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {
    swift_beginAccess();

    v14 = 32;
    do
    {
      v19 = *(v12 + v14);
      std::vector<double>::push_back[abi:ne200100](v1 + 6, &v19);
      v14 += 8;
      --v13;
    }

    while (v13);
    swift_endAccess();
  }

  v15 = *(v0 + 40);
  v16 = *(v15 + 16);
  if (v16)
  {
    swift_beginAccess();

    v17 = 32;
    do
    {
      v19 = *(v15 + v17);
      std::vector<double,default_init_allocator<double,std::allocator<double>>>::push_back[abi:ne200100]((v1 + 9), &v19);
      v17 += 8;
      --v16;
    }

    while (v16);
    swift_endAccess();
  }

  return HVF::Shape::finalizeShim(*(v0 + 48));
}

uint64_t LoadShapeWriter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t protocol witness for ShapeWriter.axisCount.getter in conformance LoadShapeWriter()
{
  v1 = *(*v0 + 48);
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t protocol witness for ShapeWriter.axisCount.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *(*v1 + 48);
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

void (*protocol witness for ShapeWriter.axisCount.modify in conformance LoadShapeWriter(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 48);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 32);
  return protocol witness for ShapeWriter.axisCount.modify in conformance LoadShapeWriter;
}

void protocol witness for ShapeWriter.axisCount.modify in conformance LoadShapeWriter(void **a1)
{
  v1 = *a1;
  *(v1[4] + 32) = v1[3];
  free(v1);
}

uint64_t protocol witness for ShapeWriter.totalSegmentCount.getter in conformance LoadShapeWriter()
{
  v1 = *(*v0 + 48);
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t protocol witness for ShapeWriter.totalSegmentCount.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *(*v1 + 48);
  result = swift_beginAccess();
  *(v3 + 40) = a1;
  return result;
}

void (*protocol witness for ShapeWriter.totalSegmentCount.modify in conformance LoadShapeWriter(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 48);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 40);
  return protocol witness for ShapeWriter.totalSegmentCount.modify in conformance LoadShapeWriter;
}

void protocol witness for ShapeWriter.totalSegmentCount.modify in conformance LoadShapeWriter(void **a1)
{
  v1 = *a1;
  *(v1[4] + 40) = v1[3];
  free(v1);
}

uint64_t protocol witness for ShapeWriter.pathSizes.getter in conformance LoadShapeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t protocol witness for ShapeWriter.pathSizes.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for ShapeWriter.blendTypes.getter in conformance LoadShapeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t protocol witness for ShapeWriter.blendTypes.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;
}

uint64_t (*protocol witness for ShapeWriter.blendTypes.modify in conformance LoadShapeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.blendTypes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for ShapeWriter.masterVector.getter in conformance LoadShapeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t protocol witness for ShapeWriter.masterVector.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = a1;
}

uint64_t (*protocol witness for ShapeWriter.masterVector.modify in conformance LoadShapeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for ShapeWriter.denseDeltaMatrix.getter in conformance LoadShapeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t protocol witness for ShapeWriter.denseDeltaMatrix.setter in conformance LoadShapeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

uint64_t (*protocol witness for ShapeWriter.denseDeltaMatrix.modify in conformance LoadShapeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result, a2);
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<HVF::Shape::BlendType>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(result, a2);
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<double,default_init_allocator<double,std::allocator<double>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(result, a2);
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_298ABFB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<HVF::Shape::BlendType>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(a1, v12);
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

uint64_t std::vector<double,default_init_allocator<double,std::allocator<double>>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<double,default_init_allocator<double,std::allocator<double>>>::__emplace_back_slow_path<double const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    result = (v3 + 1);
  }

  *(a1 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t **std::vector<double,default_init_allocator<double,std::allocator<double>>>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<double,default_init_allocator<double,std::allocator<double>>>::__emplace_back_slow_path<double const&>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  v13 = 0;
  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_298ABFFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CompositeSubpart.init(partIndex:treePartOffset:treeAxisOffset:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 6) = a3;
  return result;
}

void CompositeSubpart.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int CompositeSubpart.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompositeSubpart()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CompositeSubpart()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompositeSubpart()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

hvf::CompositeSubpartTranslation __swiftcall CompositeSubpartTranslation.init(dx:dy:)(Swift::Float dx, Swift::Float dy)
{
  *v2 = dx;
  v2[1] = dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

void CompositeSubpartTranslation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

Swift::Int CompositeSubpartTranslation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  Hasher._combine(_:)(LODWORD(v3));
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompositeSubpartTranslation()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  CompositeSubpartTranslation.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompositeSubpartTranslation()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  CompositeSubpartTranslation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CompositeExtremumIndex.init(row:column:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, _WORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void CompositeExtremumIndex.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int CompositeExtremumIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompositeExtremumIndex()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CompositeExtremumIndex()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompositeExtremumIndex()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CompositeSubpart and conformance CompositeSubpart()
{
  result = lazy protocol witness table cache variable for type CompositeSubpart and conformance CompositeSubpart;
  if (!lazy protocol witness table cache variable for type CompositeSubpart and conformance CompositeSubpart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompositeSubpart and conformance CompositeSubpart);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompositeSubpartTranslation and conformance CompositeSubpartTranslation()
{
  result = lazy protocol witness table cache variable for type CompositeSubpartTranslation and conformance CompositeSubpartTranslation;
  if (!lazy protocol witness table cache variable for type CompositeSubpartTranslation and conformance CompositeSubpartTranslation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompositeSubpartTranslation and conformance CompositeSubpartTranslation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompositeExtremumIndex and conformance CompositeExtremumIndex()
{
  result = lazy protocol witness table cache variable for type CompositeExtremumIndex and conformance CompositeExtremumIndex;
  if (!lazy protocol witness table cache variable for type CompositeExtremumIndex and conformance CompositeExtremumIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompositeExtremumIndex and conformance CompositeExtremumIndex);
  }

  return result;
}

uint64_t _s3hvf27CompositeSubpartTranslationVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s3hvf27CompositeSubpartTranslationVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CompositeExtremumIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompositeExtremumIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

Swift::Bool __swiftcall LoadCompositeWriter.finalize()()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  v2 = *(*(v0 + 16) + 16);
  swift_beginAccess();
  std::vector<double>::reserve(v1, v2);
  swift_endAccess();
  swift_beginAccess();
  v3 = *(*(v0 + 24) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1 + 3, v3);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(*(v0 + 32) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1 + 6, v4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(*(v0 + 40) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1 + 9, v5);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(*(v0 + 48) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 12, v6);
  swift_endAccess();
  swift_beginAccess();
  v7 = *(*(v0 + 56) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 15, v7);
  swift_endAccess();
  swift_beginAccess();
  v8 = *(*(v0 + 64) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1 + 18, v8);
  swift_endAccess();
  swift_beginAccess();
  v9 = *(*(v0 + 72) + 16);
  swift_beginAccess();
  std::vector<double>::reserve(v1 + 21, v9);
  swift_endAccess();
  swift_beginAccess();
  v10 = *(*(v0 + 80) + 16);
  swift_beginAccess();
  std::vector<unsigned short>::reserve(v1 + 24, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = *(*(v0 + 88) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 27, v11);
  swift_endAccess();
  swift_beginAccess();
  v12 = *(*(v0 + 96) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 30, v12);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(*(v0 + 104) + 16);
  swift_beginAccess();
  std::vector<double>::reserve(v1 + 33, v13);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(*(v0 + 112) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 36, v14);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(*(v0 + 120) + 16);
  swift_beginAccess();
  std::vector<float>::reserve(v1 + 39, v15);
  swift_endAccess();
  v16 = *(v0 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    swift_beginAccess();

    v18 = v16 + 38;
    do
    {
      v19 = *(v18 - 2);
      LODWORD(v60) = *(v18 - 6);
      HIDWORD(v60) = v19;
      std::vector<HVF::Composite::Subpart>::push_back[abi:ne200100](v1, &v60);
      v18 += 8;
      --v17;
    }

    while (v17);
    swift_endAccess();
  }

  v20 = *(v0 + 24);
  v21 = *(v20 + 16);
  if (v21)
  {
    swift_beginAccess();

    v22 = 32;
    do
    {
      LOWORD(v60) = *(v20 + v22);
      std::vector<unsigned short>::push_back[abi:ne200100](v1 + 3, &v60);
      v22 += 2;
      --v21;
    }

    while (v21);
    swift_endAccess();
  }

  v23 = *(v0 + 32);
  v24 = *(v23 + 16);
  if (v24)
  {
    swift_beginAccess();

    v25 = 32;
    do
    {
      LOWORD(v60) = *(v23 + v25);
      std::vector<unsigned short>::push_back[abi:ne200100](v1 + 6, &v60);
      v25 += 2;
      --v24;
    }

    while (v24);
    swift_endAccess();
  }

  v26 = *(v0 + 40);
  v27 = *(v26 + 16);
  if (v27)
  {
    swift_beginAccess();

    v28 = 32;
    do
    {
      LOWORD(v60) = *(v26 + v28);
      std::vector<unsigned short>::push_back[abi:ne200100](v1 + 9, &v60);
      v28 += 2;
      --v27;
    }

    while (v27);
    swift_endAccess();
  }

  v29 = *(v0 + 48);
  v30 = *(v29 + 16);
  if (v30)
  {
    swift_beginAccess();

    v31 = 32;
    do
    {
      LODWORD(v60) = *(v29 + v31);
      std::vector<float>::push_back[abi:ne200100](v1 + 12, &v60);
      v31 += 4;
      --v30;
    }

    while (v30);
    swift_endAccess();
  }

  v32 = *(v0 + 56);
  v33 = *(v32 + 16);
  if (v33)
  {
    swift_beginAccess();

    v34 = 32;
    do
    {
      LODWORD(v60) = *(v32 + v34);
      std::vector<float>::push_back[abi:ne200100](v1 + 15, &v60);
      v34 += 4;
      --v33;
    }

    while (v33);
    swift_endAccess();
  }

  v35 = *(v0 + 64);
  v36 = *(v35 + 16);
  if (v36)
  {
    swift_beginAccess();

    v37 = 32;
    do
    {
      LOWORD(v60) = *(v35 + v37);
      std::vector<unsigned short>::push_back[abi:ne200100](v1 + 18, &v60);
      v37 += 2;
      --v36;
    }

    while (v36);
    swift_endAccess();
  }

  v38 = *(v0 + 72);
  v39 = *(v38 + 16);
  if (v39)
  {
    swift_beginAccess();

    v40 = 32;
    do
    {
      v60 = *(v38 + v40);
      std::vector<HVF::Composite::Subpart>::push_back[abi:ne200100]((v1 + 21), &v60);
      v40 += 8;
      --v39;
    }

    while (v39);
    swift_endAccess();
  }

  v41 = *(v0 + 80);
  v42 = *(v41 + 16);
  if (v42)
  {
    swift_beginAccess();

    v43 = 32;
    do
    {
      LOWORD(v60) = *(v41 + v43);
      std::vector<unsigned short>::push_back[abi:ne200100](v1 + 24, &v60);
      v43 += 2;
      --v42;
    }

    while (v42);
    swift_endAccess();
  }

  v44 = *(v0 + 88);
  v45 = *(v44 + 16);
  if (v45)
  {
    swift_beginAccess();

    v46 = 32;
    do
    {
      LODWORD(v60) = *(v44 + v46);
      std::vector<float>::push_back[abi:ne200100](v1 + 27, &v60);
      v46 += 4;
      --v45;
    }

    while (v45);
    swift_endAccess();
  }

  v47 = *(v0 + 96);
  v48 = *(v47 + 16);
  if (v48)
  {
    swift_beginAccess();

    v49 = v47 + 34;
    do
    {
      LODWORD(v60) = *(v49 - 2);
      std::vector<HVF::Composite::ExtremumIndex>::push_back[abi:ne200100]((v1 + 30), &v60);
      v49 += 4;
      --v48;
    }

    while (v48);
    swift_endAccess();
  }

  v50 = *(v0 + 104);
  v51 = *(v50 + 16);
  if (v51)
  {
    swift_beginAccess();

    v52 = 32;
    do
    {
      v60 = *(v50 + v52);
      std::vector<HVF::Composite::Subpart>::push_back[abi:ne200100]((v1 + 33), &v60);
      v52 += 8;
      --v51;
    }

    while (v51);
    swift_endAccess();
  }

  v53 = *(v0 + 112);
  v54 = *(v53 + 16);
  if (v54)
  {
    swift_beginAccess();

    v55 = v53 + 34;
    do
    {
      LODWORD(v60) = *(v55 - 2);
      std::vector<HVF::Composite::ExtremumIndex>::push_back[abi:ne200100]((v1 + 36), &v60);
      v55 += 4;
      --v54;
    }

    while (v54);
    swift_endAccess();
  }

  v56 = *(v0 + 120);
  v57 = *(v56 + 16);
  if (v57)
  {
    swift_beginAccess();

    v58 = 32;
    do
    {
      LODWORD(v60) = *(v56 + v58);
      std::vector<float>::push_back[abi:ne200100](v1 + 39, &v60);
      v58 += 4;
      --v57;
    }

    while (v57);
    swift_endAccess();
  }

  return HVF::Composite::finalizeShim(*(v0 + 128));
}

void *LoadCompositeWriter.init(composite:)(HVF::Composite *a1)
{
  v1[16] = a1;
  v1[17] = HVF::Composite::shim(a1);
  v2 = MEMORY[0x29EDCA190];
  v1[2] = MEMORY[0x29EDCA190];
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = v2;
  v1[6] = v2;
  v1[7] = v2;
  v1[8] = v2;
  v1[9] = v2;
  v1[10] = v2;
  v1[11] = v2;
  v1[12] = v2;
  v1[13] = v2;
  v1[14] = v2;
  v1[15] = v2;
  return v1;
}

void *LoadCompositeWriter.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return v0;
}

uint64_t LoadCompositeWriter.__deallocating_deinit()
{
  LoadCompositeWriter.deinit();

  return MEMORY[0x2A1C73398](v0, 144, 7);
}

uint64_t protocol witness for CompositeWriter.axisCount.getter in conformance LoadCompositeWriter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v1 + 32);
}

unint64_t protocol witness for CompositeWriter.axisCount.setter in conformance LoadCompositeWriter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!HIDWORD(result))
    {
      v3 = *(*v1 + 128);
      result = swift_beginAccess();
      *(v3 + 32) = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*protocol witness for CompositeWriter.axisCount.modify in conformance LoadCompositeWriter(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 32);
  return protocol witness for CompositeWriter.axisCount.modify in conformance LoadCompositeWriter;
}

void protocol witness for CompositeWriter.axisCount.modify in conformance LoadCompositeWriter(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      *(v2[4] + 32) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CompositeWriter.subpartCount.getter in conformance LoadCompositeWriter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v1 + 36);
}

unint64_t protocol witness for CompositeWriter.subpartCount.setter in conformance LoadCompositeWriter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!HIDWORD(result))
    {
      v3 = *(*v1 + 128);
      result = swift_beginAccess();
      *(v3 + 36) = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*protocol witness for CompositeWriter.subpartCount.modify in conformance LoadCompositeWriter(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 36);
  return protocol witness for CompositeWriter.subpartCount.modify in conformance LoadCompositeWriter;
}

void protocol witness for CompositeWriter.subpartCount.modify in conformance LoadCompositeWriter(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      *(v2[4] + 36) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CompositeWriter.totalPartCount.getter in conformance LoadCompositeWriter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v1 + 40);
}

unint64_t protocol witness for CompositeWriter.totalPartCount.setter in conformance LoadCompositeWriter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!HIDWORD(result))
    {
      v3 = *(*v1 + 128);
      result = swift_beginAccess();
      *(v3 + 40) = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*protocol witness for CompositeWriter.totalPartCount.modify in conformance LoadCompositeWriter(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 40);
  return protocol witness for CompositeWriter.totalPartCount.modify in conformance LoadCompositeWriter;
}

void protocol witness for CompositeWriter.totalPartCount.modify in conformance LoadCompositeWriter(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      *(v2[4] + 40) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CompositeWriter.totalAxisCount.getter in conformance LoadCompositeWriter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v1 + 44);
}

unint64_t protocol witness for CompositeWriter.totalAxisCount.setter in conformance LoadCompositeWriter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!HIDWORD(result))
    {
      v3 = *(*v1 + 128);
      result = swift_beginAccess();
      *(v3 + 44) = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*protocol witness for CompositeWriter.totalAxisCount.modify in conformance LoadCompositeWriter(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 44);
  return protocol witness for CompositeWriter.totalAxisCount.modify in conformance LoadCompositeWriter;
}

void protocol witness for CompositeWriter.totalAxisCount.modify in conformance LoadCompositeWriter(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      *(v2[4] + 44) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t protocol witness for CompositeWriter.maximumExtremumCount.getter in conformance LoadCompositeWriter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v1 + 48);
}

unint64_t protocol witness for CompositeWriter.maximumExtremumCount.setter in conformance LoadCompositeWriter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!HIDWORD(result))
    {
      v3 = *(*v1 + 128);
      result = swift_beginAccess();
      *(v3 + 48) = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*protocol witness for CompositeWriter.maximumExtremumCount.modify in conformance LoadCompositeWriter(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 48);
  return protocol witness for CompositeWriter.maximumExtremumCount.modify in conformance LoadCompositeWriter;
}

void protocol witness for CompositeWriter.maximumExtremumCount.modify in conformance LoadCompositeWriter(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      *(v2[4] + 48) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t (*protocol witness for CompositeWriter.extremumCSCColumnStarts.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.masterCSCAxisValues.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t protocol witness for CompositeWriter.masterCSCAxisValues.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = a1;
}

uint64_t (*protocol witness for CompositeWriter.masterCSCAxisValues.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.extremumCSCAxisValues.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);
}

uint64_t protocol witness for CompositeWriter.extremumCSCAxisValues.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = a1;
}

uint64_t (*protocol witness for CompositeWriter.extremumCSCAxisValues.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.masterTranslationIndices.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
}

uint64_t protocol witness for CompositeWriter.masterTranslationIndices.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = a1;
}

uint64_t (*protocol witness for CompositeWriter.masterTranslationIndices.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.masterTranslations.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t protocol witness for CompositeWriter.masterTranslations.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = a1;
}

uint64_t (*protocol witness for CompositeWriter.masterTranslations.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.masterRotationIndices.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
}

uint64_t protocol witness for CompositeWriter.masterRotationIndices.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = a1;
}

uint64_t (*protocol witness for CompositeWriter.masterRotationIndices.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.masterRotations.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 88);
}

uint64_t protocol witness for CompositeWriter.masterRotations.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = a1;
}

uint64_t (*protocol witness for CompositeWriter.masterRotations.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.blendTypes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.extremumTranslationIndices.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
}

uint64_t protocol witness for CompositeWriter.extremumTranslationIndices.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = a1;
}

uint64_t (*protocol witness for CompositeWriter.extremumTranslationIndices.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.extremumTranslations.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 104);
}

uint64_t protocol witness for CompositeWriter.extremumTranslations.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t (*protocol witness for CompositeWriter.extremumTranslations.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.extremumRotationIndices.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 112);
}

uint64_t protocol witness for CompositeWriter.extremumRotationIndices.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = a1;
}

uint64_t (*protocol witness for CompositeWriter.extremumRotationIndices.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

uint64_t protocol witness for CompositeWriter.extremumRotations.getter in conformance LoadCompositeWriter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 120);
}

uint64_t protocol witness for CompositeWriter.extremumRotations.setter in conformance LoadCompositeWriter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = a1;
}

uint64_t (*protocol witness for CompositeWriter.extremumRotations.modify in conformance LoadCompositeWriter())()
{
  v1 = *v0;
  swift_beginAccess();
  return protocol witness for ShapeWriter.pathSizes.modify in conformance LoadShapeWriter;
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<HVF::Composite::Subpart>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<default_init_allocator<double,std::allocator<double>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void std::vector<HVF::Composite::ExtremumIndex>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t protocol witness for PartGenerator.makeShape(_:) in conformance PartCacheTrampoline@<X0>(void *a1@<X8>)
{
  v3 = HVF::PartCache::__synthesizedVirtualCall_newShape(*v1);
  ShapeWriter = type metadata accessor for LoadShapeWriter();
  v5 = swift_allocObject();
  v5[6] = v3;
  result = HVF::Shape::shim(v3);
  v5[7] = result;
  v7 = MEMORY[0x29EDCA190];
  v5[2] = MEMORY[0x29EDCA190];
  v5[3] = v7;
  v5[4] = v7;
  v5[5] = v7;
  a1[3] = ShapeWriter;
  a1[4] = &protocol witness table for LoadShapeWriter;
  *a1 = v5;
  return result;
}

void *protocol witness for PartGenerator.makeComposite(_:) in conformance PartCacheTrampoline@<X0>(void *a1@<X8>)
{
  v3 = HVF::PartCache::__synthesizedVirtualCall_newComposite(*v1);
  CompositeWriter = type metadata accessor for LoadCompositeWriter();
  swift_allocObject();
  result = LoadCompositeWriter.init(composite:)(v3);
  a1[3] = CompositeWriter;
  a1[4] = &protocol witness table for LoadCompositeWriter;
  *a1 = result;
  return result;
}

uint64_t CustomLoaderTrampoline.loadPartAtIndex(partIndex:cache:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v12[3] = &type metadata for PartCacheTrampoline;
  v12[4] = &protocol witness table for PartCacheTrampoline;
  v12[0] = a2;
  v3(v13, a1, v12);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v14)
  {
    if (v14 != 1)
    {
      outlined destroy of PartResult(v13);
      return 0;
    }

    _s3hvf15CompositeWriter_pWOb_0(v13, v12);
    outlined init with copy of CompositeWriter(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3hvf15CompositeWriter_pMd, &_s3hvf15CompositeWriter_pMR);
    type metadata accessor for LoadCompositeWriter();
    swift_dynamicCast();
    v5 = *(v10 + 128);

    v6 = destructiveProjectEnumData for AxisExtremum(v5);
  }

  else
  {
    _s3hvf15CompositeWriter_pWOb_0(v13, v12);
    outlined init with copy of CompositeWriter(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3hvf11ShapeWriter_pMd, &_s3hvf11ShapeWriter_pMR);
    type metadata accessor for LoadShapeWriter();
    swift_dynamicCast();
    v7 = *(v10 + 48);

    v6 = destructiveProjectEnumData for AxisExtremum(v7);
  }

  v8 = v6;
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t HVGLPartLoader.tableVersion.getter()
{
  swift_beginAccess();
  HVF::LoaderHVGL::LoaderHVGL(v3, (v0 + 16));
  v1 = HVF::LoaderHVGL::version(v3);
  HVF::LoaderHVGL::~LoaderHVGL(v3);
  return HIWORD(v1);
}

uint64_t HVGLPartLoader.glyphCount.getter()
{
  swift_beginAccess();
  HVF::LoaderHVGL::LoaderHVGL(v3, (v0 + 16));
  v1 = HVF::LoaderHVGL::glyphCount(v3);
  HVF::LoaderHVGL::~LoaderHVGL(v3);
  return v1;
}

uint64_t HVGLPartLoader.partCount.getter()
{
  swift_beginAccess();
  HVF::LoaderHVGL::LoaderHVGL(v3, (v0 + 16));
  v1 = HVF::LoaderHVGL::countParts(v3);
  HVF::LoaderHVGL::~LoaderHVGL(v3);
  return v1;
}

uint64_t HVGLPartLoader.init(hvglTable:hvpmTable:)(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, char a5)
{
  if (!result)
  {
    goto LABEL_7;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_7;
  }

  v7 = a2 - result;
  if (a2 - result < 25)
  {
    goto LABEL_7;
  }

  if (*result != 3)
  {
    goto LABEL_7;
  }

  if (!*(result + 2))
  {
    goto LABEL_7;
  }

  v8 = *(result + 8);
  if (v8 < *(result + 16))
  {
    goto LABEL_7;
  }

  v9 = *(result + 12);
  if ((v9 & 3) != 0 || v7 < v9 + 4 * v8 + 4)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = 0;
  if ((a5 & 1) != 0 || !a3)
  {
LABEL_32:
    HVF::LoaderHVGL::LoaderHVGL(v29, result, v7, v12, v11);
    HVF::LoaderHVGL::LoaderHVGL((v5 + 16), v29);
    HVF::LoaderHVGL::~LoaderHVGL(v29);
    return v5;
  }

  if ((a3 & 3) != 0)
  {
    goto LABEL_7;
  }

  v11 = a4 - a3;
  if (a4 - a3 < 9)
  {
    goto LABEL_7;
  }

  v13 = a3[1];
  v14 = v13 + 4;
  if (v13 >= 0xFFFFFFFC)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 < v14)
  {
LABEL_7:
    type metadata accessor for HVGLPartLoader();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = a3 + v13;
  v16 = *(a3 + v13);
  v17 = 12 * v16;
  if (((12 * v16) & 0xFFFFFFFF00000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = __CFADD__(v14, v17);
  v18 = v14 + v17;
  if (!v25)
  {
    if (v11 >= v18)
    {
      if (v16)
      {
        v19 = 0;
        v20 = &v15[12 * v16 + 4];
        v21 = (v15 + 4);
        while (1)
        {
          v22 = v21[1];
          v23 = v22 + 1;
          if (v22 == -1)
          {
            break;
          }

          v24 = *v21;
          v25 = *v21 < v19 || v24 >= v23;
          if (v25)
          {
            goto LABEL_7;
          }

          v26 = v22 - v24;
          if (v22 < v24)
          {
            goto LABEL_34;
          }

          v27 = v21[2];
          v25 = __CFADD__(v27, v26);
          v28 = v27 + v26;
          if (v25)
          {
            goto LABEL_35;
          }

          if (v28 >= v8)
          {
            goto LABEL_7;
          }

          v21 += 3;
          v19 = v23;
          if (v21 == v20)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_31:
      v12 = a3;
      goto LABEL_32;
    }

    goto LABEL_7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t HVGLPartLoader.__deallocating_deinit()
{
  HVF::LoaderHVGL::~LoaderHVGL((v0 + 16));

  return MEMORY[0x2A1C73398](v0, 152, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for PartResult(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *destroy for PartResult(uint64_t *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 <= 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 initializeWithCopy for PartResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))();
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

__n128 assignWithCopy for PartResult(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 <= 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v9 = *(a2 + 24);
      *(a1 + 24) = v9;
      *(a1 + 32) = *(a2 + 32);
      v10 = a1;
      (**(v9 - 8))();
      *(v10 + 40) = 1;
    }

    else if (v5)
    {
      result = *a2;
      v11 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v11;
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      v7 = a1;
      (**(v6 - 8))();
      *(v7 + 40) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for PartResult(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 <= 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      result = *a2;
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PartResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PartResult(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PartResult(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t outlined destroy of PartResult(uint64_t result)
{
  if (*(result + 40) < 2u || (*result + 2) <= 1)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s3hvf15CompositeWriter_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of CompositeWriter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for PartCacheTrampoline(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PartCacheTrampoline(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

hvf::PartRenderer::Translation __swiftcall PartRenderer.Translation.init(dx:dy:)(Swift::Double dx, Swift::Double dy)
{
  *v2 = dx;
  v2[1] = dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

Swift::Int PartRenderer.Action.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x29C293C10](v1);
  return Hasher._finalize()();
}

uint64_t PartRenderer.Translation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x29C293C50](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x29C293C50](*&v3);
}

Swift::Int PartRenderer.Translation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x29C293C50](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x29C293C50](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PartRenderer.Translation()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x29C293C50](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x29C293C50](*&v4);
  return Hasher._finalize()();
}

Swift::Int __swiftcall PartRenderer.AxisValues.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void PartRenderer.AxisValues.subscript.getter(unint64_t a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  if (*(v3 + 264) == *(v1 + 24))
  {
    swift_beginAccess();
    if (*(v1 + 48) == 1)
    {
      swift_beginAccess();
      HVF::PartTransformRenderer::PartTransformRenderer(v4, (v3 + 16));
      HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v4, *(v1 + 32), a1);
    }

    else
    {
      swift_beginAccess();
      HVF::PartTransformRenderer::PartTransformRenderer(v4, (v3 + 16));
      HVF::PartTransformRenderer::getPartAxisValueAtIndex(v4, a1);
    }

    HVF::PartTransformRenderer::~PartTransformRenderer(v4);
  }
}

uint64_t PartRenderer.AxisValues.subscript.setter(unint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  result = swift_beginAccess();
  if (*(v5 + 264) == *(v2 + 24))
  {
    swift_beginAccess();
    if (*(v2 + 48) == 1)
    {
      v7 = *(v2 + 32);
      v8 = a2;
      swift_beginAccess();
      HVF::PartTransformRenderer::setSubpartAxisValueAtIndex((v5 + 16), v7, a1, &v8);
    }

    else
    {
      v8 = a2;
      swift_beginAccess();
      HVF::PartTransformRenderer::setPartAxisValueAtIndex((v5 + 16), a1, &v8);
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t (*PartRenderer.AxisValues.subscript.modify(void *a1, unint64_t a2))(uint64_t a1)
{
  a1[1] = a2;
  a1[2] = v2;
  PartRenderer.AxisValues.subscript.getter(a2);
  *a1 = v4;
  return PartRenderer.AxisValues.subscript.modify;
}

Swift::Double __swiftcall PartRenderer.AxisValues.blendedValue(axis:)(Swift::Int axis)
{
  v3 = v1[2];
  swift_beginAccess();
  result = 0.0;
  if (*(v3 + 264) == v1[3])
  {
    swift_beginAccess();
    HVF::PartTransformRenderer::PartTransformRenderer(v6, (v3 + 16));
    BlendedAxisValueAtIndex = HVF::PartTransformRenderer::getBlendedAxisValueAtIndex(v6, v1[4], axis);
    HVF::PartTransformRenderer::~PartTransformRenderer(v6);
    return BlendedAxisValueAtIndex;
  }

  return result;
}

uint64_t PartRenderer.AxisValues.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance PartRenderer.AxisValues(void *a1, unint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  v5 = *v2;
  a1[1] = *a2;
  a1[2] = v5;
  PartRenderer.AxisValues.subscript.getter(v4);
  *a1 = v6;
  return PartRenderer.AxisValues.subscript.modify;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance PartRenderer.AxisValues(int64_t *a1, uint64_t a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, *(a2 + 8), *a1, a1[1], a1[2]);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance PartRenderer.AxisValues(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance PartRenderer.AxisValues;
}

void protocol witness for MutableCollection.subscript.modify in conformance PartRenderer.AxisValues(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(int64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  result = *v3;
  v10 = *(*v3 + 5);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = result;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_10:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (int64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[2];

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v6, v8, v5, v3, v4, v7);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[5], v8, v5, v3, v4, v7);
  }

  v10 = v2[2];

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance PartRenderer.AxisValues@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance PartRenderer.AxisValues(unint64_t *result, unint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    PartRenderer.AxisValues.subscript.getter(*result);
    v7 = v6;
    PartRenderer.AxisValues.subscript.getter(v4);
    PartRenderer.AxisValues.subscript.setter(v3, v8);
    return PartRenderer.AxisValues.subscript.setter(v4, v7);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance PartRenderer.AxisValues(void *a1, unint64_t *a2))(void)
{
  v4 = *v2;
  PartRenderer.AxisValues.subscript.getter(*a2);
  *a1 = v5;
  return destructiveProjectEnumData for AxisExtremum;
}

uint64_t protocol witness for Collection.subscript.getter in conformance PartRenderer.AxisValues@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 40);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[1];
  if (v5 >= v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance PartRenderer.AxisValues@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *protocol witness for Collection.index(_:offsetBy:) in conformance PartRenderer.AxisValues@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance PartRenderer.AxisValues@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance PartRenderer.AxisValues(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance PartRenderer.AxisValues(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance PartRenderer.AxisValues(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance PartRenderer.AxisValues@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance PartRenderer.AxisValues(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance PartRenderer.AxisValues(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C72918](a1, WitnessTable);
}

void specialized Collection._copyToContiguousArray()()
{
  v1 = *(v0 + 40);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(*(v0 + 40), 0);
    swift_beginAccess();
    v3 = 0;
    while (1)
    {
      v4 = *(v0 + 16);
      swift_beginAccess();
      v5 = 0.0;
      if (*(v4 + 264) == *(v0 + 24))
      {
        if (*(v0 + 48) == 1)
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v7, (v4 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v7, *(v0 + 32), v3);
        }

        else
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v7, (v4 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v7, v3);
        }

        v5 = SubpartAxisValueAtIndex;
        HVF::PartTransformRenderer::~PartTransformRenderer(v7);
      }

      *&v2[v3 + 4] = v5;
      if (v1 - 1 == v3)
      {
        break;
      }

      if (v1 == ++v3)
      {

        __break(1u);
        break;
      }
    }
  }

  else
  {
  }
}

void specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_16:
    v7 = a3;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (*(v3 + 40))
    {
      swift_beginAccess();
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + 16);
        swift_beginAccess();
        v9 = 0.0;
        if (*(v8 + 264) == *(v3 + 24))
        {
          if (*(v3 + 48) == 1)
          {
            swift_beginAccess();
            HVF::PartTransformRenderer::PartTransformRenderer(v11, (v8 + 16));
            SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v11, *(v3 + 32), v7);
          }

          else
          {
            swift_beginAccess();
            HVF::PartTransformRenderer::PartTransformRenderer(v11, (v8 + 16));
            SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v11, v7);
          }

          v9 = SubpartAxisValueAtIndex;
          HVF::PartTransformRenderer::~PartTransformRenderer(v11);
        }

        *(a2 + 8 * v7) = v9;
        if (a3 - 1 == v7)
        {
          goto LABEL_16;
        }

        if (v7 == 0x7FFFFFFFFFFFFFFELL)
        {
          __break(1u);
          goto LABEL_19;
        }

        if (++v7 == *(v3 + 40))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_15:
    v7 = 0;
LABEL_17:
    *a1 = v3;
    a1[1] = v7;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t PartRenderer.PartParameters.axisValues.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v4 = v0[4];
  swift_beginAccess();

  v5 = HVF::PartTransformRenderer::axisCountForPart((v1 + 16), v4);
  swift_endAccess();
  v6 = v0[5] > 0;
  type metadata accessor for PartRenderer.AxisValues();
  result = swift_allocObject();
  *(result + 56) = 0;
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = v3;
  *(result + 40) = v5;
  *(result + 48) = v6;
  return result;
}

void PartRenderer.PartParameters.translation.getter(double *a1@<X8>)
{
  v3 = v1[2];
  swift_beginAccess();
  if (*(v3 + 264) == v1[3])
  {
    v4 = v1[5];
    swift_beginAccess();
    HVF::PartTransformRenderer::PartTransformRenderer(v9, (v3 + 16));
    if (v4 < 1)
    {
      PartTranslation = HVF::PartTransformRenderer::getPartTranslation(v9);
    }

    else
    {
      PartTranslation = HVF::PartTransformRenderer::getSubpartTranslationAtIndex(v9, v4);
    }

    v7 = PartTranslation;
    v8 = v6;
    HVF::PartTransformRenderer::~PartTransformRenderer(v9);
    *a1 = v7;
    *(a1 + 1) = v8;
  }

  else
  {
    *a1 = 0.0;
    a1[1] = 0.0;
  }
}

uint64_t PartRenderer.PartParameters.translation.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v1[2];
  result = swift_beginAccess();
  if (*(v4 + 264) == v1[3])
  {
    v6 = v1[5];
    v7[0] = v3;
    v7[1] = v2;
    swift_beginAccess();
    if (v6 < 1)
    {
      HVF::PartTransformRenderer::setPartTranslation(v4 + 16, v7);
    }

    else
    {
      HVF::PartTransformRenderer::setSubpartTranslationAtIndex(v4 + 16, v6, v7);
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t (*PartRenderer.PartParameters.translation.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  PartRenderer.PartParameters.translation.getter(a1);
  return PartRenderer.PartParameters.translation.modify;
}

uint64_t PartRenderer.PartParameters.translation.modify(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  return PartRenderer.PartParameters.translation.setter(v4);
}

void PartRenderer.PartParameters.rotation.getter()
{
  v1 = v0[2];
  swift_beginAccess();
  if (*(v1 + 264) == v0[3])
  {
    v2 = v0[5];
    swift_beginAccess();
    HVF::PartTransformRenderer::PartTransformRenderer(v3, (v1 + 16));
    if (v2 < 1)
    {
      HVF::PartTransformRenderer::getPartRotation(v3);
    }

    else
    {
      HVF::PartTransformRenderer::getSubpartRotationAtIndex(v3, v2);
    }

    HVF::PartTransformRenderer::~PartTransformRenderer(v3);
  }
}

uint64_t PartRenderer.PartParameters.rotation.setter(double a1)
{
  v3 = v1[2];
  result = swift_beginAccess();
  if (*(v3 + 264) == v1[3])
  {
    v5 = v1[5];
    v6 = a1;
    swift_beginAccess();
    if (v5 < 1)
    {
      HVF::PartTransformRenderer::setPartRotation((v3 + 16), &v6);
    }

    else
    {
      HVF::PartTransformRenderer::setSubpartRotationAtIndex((v3 + 16), v5, &v6);
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t (*PartRenderer.PartParameters.rotation.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  PartRenderer.PartParameters.rotation.getter();
  *a1 = v3;
  return PartRenderer.PartParameters.rotation.modify;
}

void PartRenderer.PartParameters.blendedTranslation.getter(double *a1@<X8>)
{
  v3 = v1[2];
  swift_beginAccess();
  if (*(v3 + 264) == v1[3])
  {
    swift_beginAccess();
    HVF::PartTransformRenderer::PartTransformRenderer(v7, (v3 + 16));
    BlendedTranslationAtIndex = HVF::PartTransformRenderer::getBlendedTranslationAtIndex(v7, v1[5]);
    v6 = v5;
    HVF::PartTransformRenderer::~PartTransformRenderer(v7);
    *a1 = BlendedTranslationAtIndex;
    *(a1 + 1) = v6;
  }

  else
  {
    *a1 = 0.0;
    a1[1] = 0.0;
  }
}

void PartRenderer.PartParameters.blendedRotation.getter()
{
  v1 = v0[2];
  swift_beginAccess();
  if (*(v1 + 264) == v0[3])
  {
    swift_beginAccess();
    HVF::PartTransformRenderer::PartTransformRenderer(v2, (v1 + 16));
    HVF::PartTransformRenderer::getBlendedRotationAtIndex(v2, v0[5]);
    HVF::PartTransformRenderer::~PartTransformRenderer(v2);
  }
}

uint64_t PartRenderer.PartParameters.subparts.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 48);
  *(a1 + 48) = 0;
  *a1 = v4;
  *(a1 + 8) = v3;
  v8 = *(v1 + 32);
  *(a1 + 16) = v8;
  *(a1 + 32) = v5;
  swift_beginAccess();

  v6 = HVF::PartTransformRenderer::subpartCountForPart((v4 + 16), v8);
  result = swift_endAccess();
  *(a1 + 40) = v6;
  return result;
}

uint64_t PartRenderer.PartParameters.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PartRenderer.PartParameters.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 56, 7);
}

Swift::Int __swiftcall PartRenderer.Subparts.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *PartRenderer.Subparts.subscript.getter(unint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  swift_beginAccess();

  v8 = HVF::PartTransformRenderer::partIndexAtSubpartIndex((v3 + 16), v5, a1);
  result = HVF::PartTransformRenderer::nestixAtSubpartIndex((v3 + 16), v5, a1);
  v10 = __OFADD__(v6, result);
  v11 = result + v6;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = HVF::PartTransformRenderer::treeAxixAtSubpartIndex((v3 + 16), v5, a1);
    result = swift_endAccess();
    v10 = __OFADD__(v7, v12);
    v13 = v7 + v12;
    if (!v10)
    {
      type metadata accessor for PartRenderer.PartParameters();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v4;
      result[4] = v8;
      result[5] = v11;
      result[6] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4 < a3 || v5 > a3 || v5 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_19:
  v10 = __OFADD__(result, a2);
  result += a2;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (result < v5 || v4 < result)
  {
    goto LABEL_26;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance PartRenderer.Subparts@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 >= *(v2 + 48) && v3 < *(v2 + 40))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PartRenderer.Subparts(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *(v1 + 48) && v2 < *(v1 + 40))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance PartRenderer.Subparts(void *a1, unint64_t *a2))(uint64_t a1)
{
  v3 = PartRenderer.Subparts.subscript.getter(*a2);
  *a1 = v3;
  a1[1] = v3;
  return protocol witness for Collection.subscript.read in conformance PartRenderer.Subparts;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance PartRenderer.Subparts@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[6];
  if (v3 < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *result;
  if (*result < v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result[1];
  if (v3 >= v6)
  {
    v7 = *v2;
    v8 = *(v2 + 1);
    v9 = *(v2 + 3);
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *a2 = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance PartRenderer.Subparts(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2 < v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance PartRenderer.Subparts@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *(v3 + 48) && *(v3 + 40) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance PartRenderer.Subparts@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = *(v4 + 6);
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance PartRenderer.Subparts(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v5 < *a2 || v4 < v6 || v5 < v3 || v3 < v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance PartRenderer.Subparts@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance PartRenderer.Subparts()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  result = v1 - v2;
  if (v1 < v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v1, v2))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance PartRenderer.Subparts()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);
  outlined destroy of PartRenderer.Subparts(v4);
  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance PartRenderer.Subparts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 6);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

void *PartRenderer.__allocating_init(hvglLoader:reusable:)(uint64_t a1, char a2)
{
  swift_allocObject();
  v4 = specialized PartRenderer.init(hvglLoader:reusable:)(a1, a2);

  return v4;
}

void *PartRenderer.init(hvglLoader:reusable:)(uint64_t a1, char a2)
{
  v2 = specialized PartRenderer.init(hvglLoader:reusable:)(a1, a2);

  return v2;
}

void *PartRenderer.__allocating_init(custom:reusable:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_allocObject();
  v6 = specialized PartRenderer.init(custom:reusable:)(a1, a2, a3);

  return v6;
}

void *PartRenderer.init(custom:reusable:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = specialized PartRenderer.init(custom:reusable:)(a1, a2, a3);

  return v3;
}

uint64_t @objc closure #1 in PartRenderer.init(custom:reusable:)(uint64_t a1, uint64_t a2)
{

  v4 = CustomLoaderTrampoline.loadPartAtIndex(partIndex:cache:)(a1, a2);

  return v4;
}

uint64_t key path setter for PartRenderer.partIndex : PartRenderer(char **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 264) = v2;
  swift_beginAccess();
  HVF::PartTransformRenderer::setRenderPart((v3 + 16), v2);
  return swift_endAccess();
}

uint64_t PartRenderer.partIndex.setter(char *a1)
{
  swift_beginAccess();
  *(v1 + 264) = a1;
  swift_beginAccess();
  HVF::PartTransformRenderer::setRenderPart((v1 + 16), a1);
  return swift_endAccess();
}

uint64_t (*PartRenderer.partIndex.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PartRenderer.partIndex.modify;
}

uint64_t PartRenderer.partIndex.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 264);
    swift_beginAccess();
    HVF::PartTransformRenderer::setRenderPart((v5 + 16), v6);

    return swift_endAccess();
  }

  return result;
}

HVF::Part *PartRenderer.partAxisCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  if (result)
  {
    return HVF::Part::__synthesizedVirtualCall_countAxes(result);
  }

  return result;
}

void *PartRenderer.parameters.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
  type metadata accessor for PartRenderer.PartParameters();
  v2 = swift_allocObject();
  v2[2] = v0;
  v2[3] = v1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v1;

  return v2;
}

void PartRenderer.blendedAxisValueBounds.getter()
{
  swift_beginAccess();
  HVF::PartTransformRenderer::PartTransformRenderer(v5, (v0 + 16));
  HVF::PartTransformRenderer::blendedAxisValueBounds(v5);
  v2 = v1;
  v4 = v3;
  HVF::PartTransformRenderer::~PartTransformRenderer(v5);
  if (v2 > v4)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PartRenderer.clearPartCache()()
{
  swift_beginAccess();
  HVF::PartTransformRenderer::clearCache((v0 + 16));
  swift_endAccess();
}

uint64_t PartRenderer.render(to:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RenderContextTrampoline();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  HVF::wrapContext(@objc closure #1 in closure #1 in PartRenderer.render(to:), v5, v10);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::function(v9, v10);
  swift_beginAccess();
  v7 = HVF::PartTransformRenderer::renderToContext(v2 + 16, v9, v6);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(v9);
  swift_endAccess();
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(v10);

  return v7;
}

uint64_t closure #1 in closure #1 in PartRenderer.render(to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;

    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    if (a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    PartRenderer.Instruction.init(op:params:)(v5, v9, v14, v6);
    v10 = v14[0];
    v11 = v14[1];
    v12 = v14[2];
    v13 = v15;
    v8(&v16, &v10);
    outlined consume of PartRenderer.Instruction(v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PartRenderer.deinit()
{
  HVF::PartTransformRenderer::~PartTransformRenderer((v0 + 2));
  v1 = v0[31];

  v2 = v0[32];

  return v0;
}

uint64_t PartRenderer.__deallocating_deinit()
{
  HVF::PartTransformRenderer::~PartTransformRenderer((v0 + 2));
  v1 = v0[31];

  v2 = v0[32];

  return MEMORY[0x2A1C73398](v0, 272, 7);
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, unint64_t a2, uint64_t a3, int64_t a4, int64_t a5, uint64_t a6)
{
  v6 = *result;
  v7 = *(*result + 40);
  if (v7 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 < a3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = swift_beginAccess();
  v13 = a4 == a5;
  v14 = v8 == a3;
  if (v8 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(a6 + 16);
      swift_beginAccess();
      v17 = 0.0;
      if (*(v16 + 264) == *(a6 + 24))
      {
        swift_beginAccess();
        if (*(a6 + 48) == 1)
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v23, (v16 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v23, *(a6 + 32), a4);
        }

        else
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v23, (v16 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v23, a4);
        }

        v17 = SubpartAxisValueAtIndex;
        HVF::PartTransformRenderer::~PartTransformRenderer(v23);
      }

      v19 = *(v6 + 16);
      result = swift_beginAccess();
      if (*(v19 + 264) == *(v6 + 24))
      {
        if (*(v6 + 48) == 1)
        {
          v20 = *(v6 + 32);
          v24 = v17;
          swift_beginAccess();
          HVF::PartTransformRenderer::setSubpartAxisValueAtIndex((v19 + 16), v20, v8, &v24);
        }

        else
        {
          v24 = v17;
          swift_beginAccess();
          HVF::PartTransformRenderer::setPartAxisValueAtIndex((v19 + 16), v8, &v24);
        }

        result = swift_endAccess();
      }

      v21 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      v13 = v15 == a4;
      v22 = v21 == a3;
      v14 = v21 == a3;
      if (!v22)
      {
        ++v8;
        v22 = v15 == a4++;
        if (!v22)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_22:
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v13)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(void *))
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  if (v4)
  {
    swift_beginAccess();
    for (i = 1; ; ++i)
    {
      v7 = i - 1;
      v8 = *(v3 + 16);
      swift_beginAccess();
      v9 = 0.0;
      if (*(v8 + 264) == *(v3 + 24))
      {
        if (*(v3 + 48) == 1)
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v29, (v8 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v29, *(v3 + 32), i - 1);
        }

        else
        {
          swift_beginAccess();
          HVF::PartTransformRenderer::PartTransformRenderer(v29, (v8 + 16));
          SubpartAxisValueAtIndex = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v29, i - 1);
        }

        v9 = SubpartAxisValueAtIndex;
        HVF::PartTransformRenderer::~PartTransformRenderer(v29);
      }

      *v29 = v9;
      result = a1(v29);
      if (v2)
      {
        return v7;
      }

      v12 = i;
      v13 = __OFADD__(v7, 1);
      if (result)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 == v4)
      {
        return *(v3 + 40);
      }
    }

    if (!v13)
    {
      if (i == *(v3 + 40))
      {
        return v7;
      }

      while (1)
      {
        v14 = *(v3 + 16);
        swift_beginAccess();
        v15 = 0.0;
        if (*(v14 + 264) == *(v3 + 24))
        {
          if (*(v3 + 48) == 1)
          {
            swift_beginAccess();
            HVF::PartTransformRenderer::PartTransformRenderer(v29, (v14 + 16));
            PartAxisValueAtIndex = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v29, *(v3 + 32), i);
          }

          else
          {
            swift_beginAccess();
            HVF::PartTransformRenderer::PartTransformRenderer(v29, (v14 + 16));
            PartAxisValueAtIndex = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v29, i);
          }

          v15 = PartAxisValueAtIndex;
          HVF::PartTransformRenderer::~PartTransformRenderer(v29);
        }

        *v29 = v15;
        result = a1(v29);
        if ((result & 1) == 0)
        {
          if (i != v7)
          {
            v17 = *(v3 + 16);
            swift_beginAccess();
            v18 = 0.0;
            v19 = 0.0;
            if (*(v17 + 264) == *(v3 + 24))
            {
              if (*(v3 + 48) == 1)
              {
                swift_beginAccess();
                HVF::PartTransformRenderer::PartTransformRenderer(v29, (v17 + 16));
                v20 = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v29, *(v3 + 32), v7);
              }

              else
              {
                swift_beginAccess();
                HVF::PartTransformRenderer::PartTransformRenderer(v29, (v17 + 16));
                v20 = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v29, v7);
              }

              v19 = v20;
              HVF::PartTransformRenderer::~PartTransformRenderer(v29);
            }

            v21 = *(v3 + 16);
            swift_beginAccess();
            if (*(v21 + 264) == *(v3 + 24))
            {
              if (*(v3 + 48) == 1)
              {
                swift_beginAccess();
                HVF::PartTransformRenderer::PartTransformRenderer(v29, (v21 + 16));
                v22 = HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(v29, *(v3 + 32), i);
              }

              else
              {
                swift_beginAccess();
                HVF::PartTransformRenderer::PartTransformRenderer(v29, (v21 + 16));
                v22 = HVF::PartTransformRenderer::getPartAxisValueAtIndex(v29, i);
              }

              v18 = v22;
              HVF::PartTransformRenderer::~PartTransformRenderer(v29);
            }

            v23 = *(v3 + 16);
            swift_beginAccess();
            if (*(v23 + 264) == *(v3 + 24))
            {
              if (*(v3 + 48) == 1)
              {
                v24 = *(v3 + 32);
                v30 = v18;
                swift_beginAccess();
                HVF::PartTransformRenderer::setSubpartAxisValueAtIndex((v23 + 16), v24, v7, &v30);
              }

              else
              {
                v30 = v18;
                swift_beginAccess();
                HVF::PartTransformRenderer::setPartAxisValueAtIndex((v23 + 16), v7, &v30);
              }

              swift_endAccess();
            }

            v25 = *(v3 + 16);
            result = swift_beginAccess();
            if (*(v25 + 264) == *(v3 + 24))
            {
              if (*(v3 + 48) == 1)
              {
                v26 = *(v3 + 32);
                v30 = v19;
                swift_beginAccess();
                HVF::PartTransformRenderer::setSubpartAxisValueAtIndex((v25 + 16), v26, i, &v30);
              }

              else
              {
                v30 = v19;
                swift_beginAccess();
                HVF::PartTransformRenderer::setPartAxisValueAtIndex((v25 + 16), i, &v30);
              }

              result = swift_endAccess();
            }
          }

          if (__OFADD__(v7++, 1))
          {
            break;
          }
        }

        v28 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_52;
        }

        ++i;
        if (v28 == *(v3 + 40))
        {
          return v7;
        }
      }

LABEL_53:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  return 0;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result)
{
  v2 = result[5];
  v1 = result[6];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    if (v3)
    {
      v4 = result;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC3hvf12PartRendererC0I10ParametersC_Tt1g5(v2 - v1, 0);
      outlined init with copy of PartRenderer.Subparts(v4, v7);
      v6 = specialized Sequence._copySequenceContents(initializing:)(v7, (v5 + 4), v3);
      outlined destroy of IndexingIterator<PartRenderer.Subparts>(v7);
      if (v6 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x29EDCA190];
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 3);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC3hvf12PartRendererC0I10ParametersC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = a1;
  v4[3] = (2 * (v6 >> 3)) | 1;
  return v4;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 16);
  v28[0] = *v3;
  v28[1] = v5;
  v28[2] = *(v3 + 32);
  v6 = *(v3 + 48);
  v29 = v6;
  if (!a2)
  {
LABEL_13:
    v7 = 0;
LABEL_17:
    v17 = v4[1];
    *result = *v4;
    *(result + 16) = v17;
    *(result + 32) = v4[2];
    *(result + 48) = *(v4 + 6);
    *(result + 56) = v6;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    v4 = v28;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = result;
    v8 = *(v4 + 2);
    v9 = *(v4 + 5);
    v24 = *(v4 + 4);
    v25 = *(v4 + 3);
    v10 = *v4;
    v23 = *(v4 + 1);
    swift_beginAccess();
    v11 = 0;
    v18 = v7;
    v19 = v9 - v6;
    v22 = v7 - 1;
    v20 = v9;
    v12 = v6 - v9;
    while (1)
    {
      if (!(v12 + v11))
      {
        swift_endAccess();
        v4 = v28;
        v7 = v19;
        v6 = v20;
        result = v21;
        goto LABEL_17;
      }

      v13 = v6 + v11;
      outlined init with copy of PartRenderer.Subparts(v4, v27);
      v14 = HVF::PartTransformRenderer::partIndexAtSubpartIndex((v10 + 16), v8, v6 + v11);
      result = HVF::PartTransformRenderer::nestixAtSubpartIndex((v10 + 16), v8, v6 + v11);
      v15 = v25 + result;
      if (__OFADD__(v25, result))
      {
        break;
      }

      result = HVF::PartTransformRenderer::treeAxixAtSubpartIndex((v10 + 16), v8, v6 + v11);
      v16 = v24 + result;
      if (__OFADD__(v24, result))
      {
        goto LABEL_19;
      }

      type metadata accessor for PartRenderer.PartParameters();
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = v23;
      *(result + 32) = v14;
      *(result + 40) = v15;
      *(result + 48) = v16;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

      *(a2 + 8 * v11) = result;
      if (v22 == v11)
      {
        swift_endAccess();
        v4 = v28;
        v6 = v13 + 1;
        result = v21;
        v7 = v18;
        goto LABEL_17;
      }

      if (__OFADD__(++v11, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void *specialized PartRenderer.init(hvglLoader:reusable:)(uint64_t a1, char a2)
{
  v2[32] = a1;
  v2[33] = 0;
  v2[31] = 0;
  swift_beginAccess();

  HVF::LoaderHVGL::asPartLoader(a1 + 16, v6);
  swift_endAccess();
  HVF::PartTransformRenderer::PartTransformRenderer(v7, v6, a2 & 1);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(v6);
  HVF::PartTransformRenderer::PartTransformRenderer((v2 + 2), v7);
  HVF::PartTransformRenderer::~PartTransformRenderer(v7);
  return v2;
}

void *specialized PartRenderer.init(custom:reusable:)(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for CustomLoaderTrampoline();
  v3[32] = 0;
  v3[33] = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v3[31] = v7;

  HVF::wrapCustomLoader(@objc closure #1 in PartRenderer.init(custom:reusable:), v7, v9);
  HVF::PartTransformRenderer::PartTransformRenderer(v10, v9, a3 & 1);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(v9);
  HVF::PartTransformRenderer::PartTransformRenderer((v3 + 2), v10);
  HVF::PartTransformRenderer::~PartTransformRenderer(v10);
  return v3;
}

unint64_t lazy protocol witness table accessor for type PartRenderer.Translation and conformance PartRenderer.Translation()
{
  result = lazy protocol witness table cache variable for type PartRenderer.Translation and conformance PartRenderer.Translation;
  if (!lazy protocol witness table cache variable for type PartRenderer.Translation and conformance PartRenderer.Translation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Translation and conformance PartRenderer.Translation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartRenderer.Action and conformance PartRenderer.Action()
{
  result = lazy protocol witness table cache variable for type PartRenderer.Action and conformance PartRenderer.Action;
  if (!lazy protocol witness table cache variable for type PartRenderer.Action and conformance PartRenderer.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Action and conformance PartRenderer.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartRenderer.Point and conformance PartRenderer.Point()
{
  result = lazy protocol witness table cache variable for type PartRenderer.Point and conformance PartRenderer.Point;
  if (!lazy protocol witness table cache variable for type PartRenderer.Point and conformance PartRenderer.Point)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Point and conformance PartRenderer.Point);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<PartRenderer.AxisValues> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<PartRenderer.AxisValues> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<PartRenderer.AxisValues> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy3hvf12PartRendererC10AxisValuesCGMd, &_ss5SliceVy3hvf12PartRendererC10AxisValuesCGMR);
    lazy protocol witness table accessor for type PartRenderer.AxisValues and conformance PartRenderer.AxisValues(&lazy protocol witness table cache variable for type PartRenderer.AxisValues and conformance PartRenderer.AxisValues);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<PartRenderer.AxisValues> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PartRenderer.AxisValues and conformance PartRenderer.AxisValues(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartRenderer.AxisValues();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartRenderer.Subparts and conformance PartRenderer.Subparts()
{
  result = lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts;
  if (!lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts;
  if (!lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts;
  if (!lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts;
  if (!lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartRenderer.Subparts and conformance PartRenderer.Subparts);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PartRenderer.Subparts> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy3hvf12PartRendererC8SubpartsVGMd, &_ss5SliceVy3hvf12PartRendererC8SubpartsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<PartRenderer.AxisValues> and conformance DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_298AC73E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_298AC7428(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

void sub_298AC746C(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  PartRenderer.AxisValues.subscript.getter(*a2);
  *a3 = v5;
}

double sub_298AC74DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  PartRenderer.PartParameters.translation.getter(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_298AC7518(__int128 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return PartRenderer.PartParameters.translation.setter(&v4);
}

void sub_298AC7550(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  PartRenderer.PartParameters.rotation.getter();
  *a2 = v4;
}

uint64_t sub_298AC75A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 264);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s3hvf12PartRendererC5PointVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s3hvf12PartRendererC5PointVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t outlined copy of PartRenderer.Instruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 5 || a7 == 0)
  {
  }

  return result;
}

uint64_t outlined consume of PartRenderer.Instruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 5 || a7 == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PartRenderer.Instruction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of PartRenderer.Instruction(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for PartRenderer.Instruction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  outlined copy of PartRenderer.Instruction(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  outlined consume of PartRenderer.Instruction(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for PartRenderer.Instruction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  outlined consume of PartRenderer.Instruction(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for PartRenderer.Instruction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartRenderer.Instruction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PartRenderer.Instruction(uint64_t a1)
{
  if (*(a1 + 48) <= 5u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t destructiveInjectEnumTag for PartRenderer.Instruction(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PartRenderer.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PartRenderer.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeWithCopy for PartRenderer.Subparts(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for PartRenderer.Subparts(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for PartRenderer.Subparts(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t getEnumTagSinglePayload for PartRenderer.Subparts(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PartRenderer.Subparts(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of PartRenderer.Subparts(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);

  return a2;
}

uint64_t *outlined destroy of PartRenderer.Subparts(uint64_t *a1)
{
  v2 = *a1;

  return a1;
}

uint64_t outlined destroy of IndexingIterator<PartRenderer.Subparts>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy3hvf12PartRendererC8SubpartsVGMd, &_ss16IndexingIteratorVy3hvf12PartRendererC8SubpartsVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t std::__function::__value_func<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t HVF::wrapCustomLoader@<X0>(uint64_t this@<X0>, const HVF::Part *(*a2)(unint64_t, HVF::PartCache *, void *)@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F1A010;
  a3[1] = a2;
  a3[2] = this;
  a3[3] = a3;
  return this;
}

void *HVF::FlatPartCache::FlatPartCache(void *result, uint64_t a2)
{
  *result = &unk_2A1F19EF0;
  v3 = result + 1;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      result[4] = v3;
      v7 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24));
      result = v7;
    }

    else
    {
      v5 = result;
      v6 = (*(*v4 + 16))(v4, v3);
      result = v5;
      v5[4] = v6;
    }

    result[7] = 0;
    result[6] = 0;
    result[5] = result + 6;
  }

  else
  {
    result[7] = 0;
    result[6] = 0;
    result[4] = 0;
    result[5] = result + 6;
  }

  return result;
}

void *HVF::FlatPartCache::newShape(HVF::FlatPartCache *this, unint64_t a2)
{
  v12 = a2;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = &unk_2A1F1A1F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,HVF::Shape>(this + 40, &v12);
  if (*(v2 + 80))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  HVF::Shape::~Shape(&v4);
  return v2 + 5;
}

void sub_298AC8474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HVF::Shape::~Shape(va);
  _Unwind_Resume(a1);
}

void *HVF::FlatPartCache::newComposite(HVF::FlatPartCache *this, unint64_t a2)
{
  v22 = a2;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = &unk_2A1F1A278;
  v21 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,HVF::Composite>(this + 40, &v22);
  if (*(v2 + 80) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  HVF::Composite::~Composite(&v4);
  return v2 + 5;
}

uint64_t HVF::FlatPartCache::partAtIndex(HVF::FlatPartCache *this, char *a2)
{
  v3 = *(this + 6);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 48;
  do
  {
    v5 = *(v3 + 4);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 != this + 48 && *(v4 + 4) <= a2)
  {
    v10 = *(v4 + 80);
    if (v10 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v12 = &v11;
    return (off_2A1F19FE0[v10])(&v12, v4 + 40, this);
  }

  else
  {
LABEL_9:
    v12 = a2;
    v8 = *(this + 4);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    return (*(*v8 + 48))(v8, &v12, this);
  }
}

void HVF::FlatPartCache::clear(unsigned int **this)
{
  v1 = this + 6;
  std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy((this + 5), this[6]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void HVF::FlatPartCache::~FlatPartCache(unsigned int **this)
{
  *this = &unk_2A1F19EF0;
  std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy((this + 5), this[6]);
  v2 = this[4];
  if (v2 == (this + 1))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

{
  *this = &unk_2A1F19EF0;
  std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy((this + 5), this[6]);
  v2 = this[4];
  if (v2 == (this + 1))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x29C293CF0);
}

{
  *this = &unk_2A1F19EF0;
  std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy((this + 5), this[6]);
  v2 = this[4];
  if (v2 == (this + 1))
  {
    (*(*v2 + 32))(v2);
    v3 = this;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = this;
  }

  destructiveProjectEnumData for AxisExtremum(v3);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC95F8] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9478], std::bad_variant_access::~bad_variant_access);
}

__n128 std::__function::__func<HVF::wrapCustomLoader(HVF::Part const* (*)(unsigned long,HVF::PartCache &,void *),void *)::$_0,std::allocator<HVF::wrapCustomLoader(HVF::Part const* (*)(unsigned long,HVF::PartCache &,void *),void *)::$_0>,HVF::Part const* ()(unsigned long,HVF::PartCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1A010;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<HVF::wrapCustomLoader(HVF::Part const* (*)(unsigned long,HVF::PartCache &,void *),void *)::$_0,std::allocator<HVF::wrapCustomLoader(HVF::Part const* (*)(unsigned long,HVF::PartCache &,void *),void *)::$_0>,HVF::Part const* ()(unsigned long,HVF::PartCache &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3HVF16wrapCustomLoaderEPFPKNS_4PartEmRNS_9PartCacheEPvES5_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3HVF16wrapCustomLoaderEPFPKNS_4PartEmRNS_9PartCacheEPvES5_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3HVF16wrapCustomLoaderEPFPKNS_4PartEmRNS_9PartCacheEPvES5_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3HVF16wrapCustomLoaderEPFPKNS_4PartEmRNS_9PartCacheEPvES5_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,HVF::Shape>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_298AC8AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::any>::__init_with_size[abi:ne200100]<std::any*,std::any*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_298AC8C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::any>,std::any*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::any>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::any>,std::any*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 4;
      do
      {
        if (*v4)
        {
          (*v4)(0, v4, 0, 0, 0);
        }

        v5 = v4 == v3;
        v4 -= 4;
      }

      while (!v5);
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<std::any>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v4 - 4;
        do
        {
          if (*v6)
          {
            (*v6)(0, v6, 0, 0, 0);
          }

          v7 = v6 == v3;
          v6 -= 4;
        }

        while (!v7);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,HVF::Composite>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_298AC8F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void HVF::Loader::withTableData(HVF::Loader *this, const void *a2)
{
  if (this && a2)
  {
    if ((this & 7) == 0)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](exception, "hvgl table is not properly aligned");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](exception, "HVF font not loaded");
  }

  __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

void sub_298AC90D8(void *a1, int a2)
{
  MEMORY[0x29C293CF0](v2, 0x10F1C401A003EECLL);
  __cxa_begin_catch(a1);
  exception = __cxa_allocate_exception(0x10uLL);
  v6 = exception;
  if (a2 == 2)
  {
    MEMORY[0x29C293C90](exception, "HVF font not loaded");
    __cxa_throw(v6, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  MEMORY[0x29C293C90](exception, "HVF font not loaded");
  __cxa_throw(v6, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
}

uint64_t HVF::LoaderHVGL::LoaderHVGL(uint64_t this, unsigned __int16 *a2, unint64_t a3, unsigned int *a4, unint64_t a5)
{
  *this = &unk_2A1F1A0A0;
  *(this + 8) = a2;
  *(this + 16) = a3;
  *(this + 24) = a4;
  *(this + 80) = 0u;
  *(this + 32) = a5;
  *(this + 64) = 0u;
  *(this + 96) = 0u;
  *(this + 112) = 0u;
  *(this + 128) = 1065353216;
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](exception, "Assertion failure: hvglData && hvglLen > 0");
    goto LABEL_31;
  }

  if ((a2 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](exception, "Assertion failure: ((uintptr_t)hvglData) % alignof(ShapeFloatType) == 0", v30);
    goto LABEL_31;
  }

  if (a3 <= 0x18)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](exception, "hvgl table header too small");
LABEL_31:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = *a2;
  *(this + 40) = v5;
  v6 = a2[1];
  *(this + 42) = v6;
  if (v5 != 3 || !v6)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v25, "hvgl table is wrong version");
    __cxa_throw(v25, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(this + 44) = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  *(this + 48) = v7;
  v9 = *(a2 + 4);
  *(this + 56) = v9;
  v10 = a2 + v8;
  *(this + 64) = v10;
  *(this + 72) = v7 + 1;
  if (&v10[4 * v7 + 4] > a2 + a3 || v7 < v9)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v26, "hvgl part table malformed");
    goto LABEL_36;
  }

  if (!a4 || !a5)
  {
    *(this + 80) = 0;
    *(this + 88) = 0;
    return this;
  }

  if ((a4 & 3) != 0)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v26, "Assertion failure: ((uintptr_t)hvpmData) % alignof(uint32_t) == 0", v30);
    goto LABEL_36;
  }

  if (a5 <= 8)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v26, "hvpm table header too small");
LABEL_36:
    __cxa_throw(v26, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (*a4 != 1)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v27, "hvpm table is wrong version");
    __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v11 = a4[1];
  if (v11 + 4 > a5)
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v28, "hvpm map subtable malformed");
    __cxa_throw(v28, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v12 = a4 + v11;
  v13 = (a4 + v11);
  v16 = *v13;
  v14 = v13 + 1;
  v15 = v16;
  *(this + 80) = v14;
  *(this + 88) = v16;
  v17 = 3 * v16;
  if (&v14[v17] > (a4 + a5))
  {
    v29 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C293C90](v29, "hvpm map subtable malformed");
    __cxa_throw(v29, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v15)
  {
    v18 = 0;
    v19 = &v12[v17 * 4 + 4];
    do
    {
      v20 = *v14;
      v21 = v14[1];
      v22 = *v14 >= v18 && v21 + 1 > v20;
      if (!v22 || v7 <= v21 - v20 + v14[2])
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C293C90](v23, "hvpm map subtable malformed");
        __cxa_throw(v23, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v14 += 3;
      v18 = v21 + 1;
    }

    while (v14 != v19);
  }

  return this;
}

void sub_298AC95A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(a10 + 96);
  destructiveProjectEnumData for AxisExtremum(a10);
  _Unwind_Resume(a1);
}

uint64_t HVF::LoaderHVGL::asPartLoader@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2A1F1A100;
  a2[1] = this;
  a2[3] = a2;
  return this;
}

void HVF::LoaderHVGL::~LoaderHVGL(HVF::LoaderHVGL *this)
{
  *this = &unk_2A1F1A0A0;
  v2 = *(this + 14);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  destructiveProjectEnumData for AxisExtremum(this);
}

{
  *this = &unk_2A1F1A0A0;
  v2 = *(this + 14);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  destructiveProjectEnumData for AxisExtremum(this);
}

{
  *this = &unk_2A1F1A0A0;
  v2 = *(this + 14);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  destructiveProjectEnumData for AxisExtremum(this);

  JUMPOUT(0x29C293CF0);
}

void *HVF::LoaderHVGL::loadPartAtIndex(HVF::LoaderHVGL *this, unint64_t a2, HVF::PartCache *a3)
{
  v70 = a2;
  v5 = *(this + 104);
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a2;
      if (*&v5 <= a2)
      {
        v7 = a2 % *&v5;
      }
    }

    else
    {
      v7 = (*&v5 - 1) & a2;
    }

    v8 = *(*(this + 12) + 8 * v7);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        if (v6.u32[0] < 2uLL)
        {
          v10 = *&v5 - 1;
          while (1)
          {
            v12 = v9[1];
            if (v12 == a2)
            {
              if (v9[2] == a2)
              {
                return 0;
              }
            }

            else if ((v12 & v10) != v7)
            {
              goto LABEL_22;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              return 0;
            }
          }

          else
          {
            if (v11 >= *&v5)
            {
              v11 %= *&v5;
            }

            if (v11 != v7)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

LABEL_22:
  v13 = HVF::LoaderHVGL::partDataAtIndex(this, a2);
  v69[0] = v13;
  v69[1] = v14;
  if (v14 < 3)
  {
    return 0;
  }

  v15 = v13;
  v16 = v14;
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(this + 12, &v70);
  if ((v15->i16[0] & 1) == 0)
  {
    result = 0;
    if (v16 < 8 || (v15 & 7) != 0)
    {
      goto LABEL_52;
    }

    v18 = v16;
    v19 = v15->u16[2];
    v20 = v15->u16[3];
    v21 = 2 * v19;
    v22 = 2 * v19 + 8;
    if (((v22 + v20) & 7) != 0)
    {
      v23 = ((v22 + v20) & 0x7FFF8) + 8;
    }

    else
    {
      v23 = v22 + v20;
    }

    v24 = v23 + 32 * v20;
    v25 = v15->u16[3] * v15->u16[1];
    if (v24 + (v25 << 6) != v18)
    {
      goto LABEL_51;
    }

    v26 = v15 + 1;
    if (!v15->i16[2])
    {
      v28 = 0;
      goto LABEL_49;
    }

    v27 = v21 - 2;
    if ((v21 - 2) < 6)
    {
      v28 = 0;
      v29 = &v15[1];
      goto LABEL_47;
    }

    v30 = (v27 >> 1) + 1;
    if (v27 >= 0x1E)
    {
      v32 = 0uLL;
      v31 = v30 & 0xFFFFFFFFFFFFFFF0;
      v33 = 0uLL;
      v34 = v15 + 3;
      v35 = v30 & 0xFFFFFFFFFFFFFFF0;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      do
      {
        v42 = *v34[-2].i8;
        v43 = vmovl_u16(*v42.i8);
        v44 = vmovl_high_u16(v42);
        v45 = vmovl_u16(*v34);
        v46 = vmovl_high_u16(*v34->i8);
        v37 = vaddw_high_u32(v37, v44);
        v36 = vaddw_u32(v36, *v44.i8);
        v33 = vaddw_high_u32(v33, v43);
        v32 = vaddw_u32(v32, *v43.i8);
        v41 = vaddw_high_u32(v41, v46);
        v40 = vaddw_u32(v40, *v46.i8);
        v39 = vaddw_high_u32(v39, v45);
        v38 = vaddw_u32(v38, *v45.i8);
        v34 += 4;
        v35 -= 16;
      }

      while (v35);
      v28 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v38, v32), vaddq_s64(v40, v36)), vaddq_s64(vaddq_s64(v39, v33), vaddq_s64(v41, v37))));
      if (v30 == v31)
      {
        goto LABEL_49;
      }

      if ((v30 & 0xC) == 0)
      {
        v29 = v26 + v31;
LABEL_47:
        v53 = (v26 + v21);
        do
        {
          v54 = *v29++;
          v28 += v54;
        }

        while (v29 != v53);
        goto LABEL_49;
      }
    }

    else
    {
      v28 = 0;
      v31 = 0;
    }

    v29 = v26 + (v30 & 0xFFFFFFFFFFFFFFFCLL);
    v47 = 0uLL;
    v48 = v28;
    v49 = (v15 + 2 * v31 + 8);
    v50 = v31 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v51 = *v49++;
      v52 = vmovl_u16(v51);
      v47 = vaddw_high_u32(v47, v52);
      v48 = vaddw_u32(v48, *v52.i8);
      v50 += 4;
    }

    while (v50);
    v28 = vaddvq_s64(vaddq_s64(v48, v47));
    if (v30 != (v30 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_47;
    }

LABEL_49:
    if (v28 == v20)
    {
      v68 = 8 * v25;
      v55 = *(*a3 + 16);
      v56 = a3;
      v57 = v15->u16[1];
      result = v55(v56, v70);
      result[4] = v57;
      result[5] = v20;
      result[6] = v26;
      result[7] = v19;
      result[8] = v15 + v22;
      result[9] = v20;
      result[10] = v15 + v23;
      result[11] = 4 * v20;
      result[12] = v15 + v24;
      result[13] = v68;
      goto LABEL_52;
    }

LABEL_51:
    result = 0;
    goto LABEL_52;
  }

  result = HVF::LoaderHVGL::loadComposite(this, v69, v70, a3);
LABEL_52:
  v58 = *(this + 104);
  if (v58)
  {
    v59 = vcnt_s8(v58);
    v59.i16[0] = vaddlv_u8(v59);
    if (v59.u32[0] > 1uLL)
    {
      v60 = v70;
      if (v70 >= *&v58)
      {
        v60 = v70 % *&v58;
      }
    }

    else
    {
      v60 = (*&v58 - 1) & v70;
    }

    v61 = *(*(this + 12) + 8 * v60);
    if (v61)
    {
      v62 = *v61;
      if (*v61)
      {
        if (v59.u32[0] < 2uLL)
        {
          v63 = *&v58 - 1;
          while (1)
          {
            v65 = v62[1];
            if (v65 == v70)
            {
              if (v62[2] == v70)
              {
                goto LABEL_72;
              }
            }

            else if ((v65 & v63) != v60)
            {
              return result;
            }

            v62 = *v62;
            if (!v62)
            {
              return result;
            }
          }
        }

        do
        {
          v64 = v62[1];
          if (v64 == v70)
          {
            if (v62[2] == v70)
            {
LABEL_72:
              v66 = result;
              std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::remove(this + 12, v62, &__p);
              v67 = __p;
              __p = 0;
              if (v67)
              {
                operator delete(v67);
              }

              return v66;
            }
          }

          else
          {
            if (v64 >= *&v58)
            {
              v64 %= *&v58;
            }

            if (v64 != v60)
            {
              return result;
            }
          }

          v62 = *v62;
        }

        while (v62);
      }
    }
  }

  return result;
}

unint64_t HVF::LoaderHVGL::partDataAtIndex(HVF::LoaderHVGL *this, unint64_t a2)
{
  v2 = a2;
  v4 = *(this + 11);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = v4 - 1;
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = (v6 + v7 + 1) >> 1;
        if (*(v5 + 12 * v8) <= a2)
        {
          v7 = (v6 + v7 + 1) >> 1;
        }

        else
        {
          v6 = v8 - 1;
        }
      }

      while (v7 != v6);
    }

    v9 = (v5 + 12 * v6);
    v10 = *v9;
    v11 = v9[1] >= a2 && a2 >= v10;
    v12 = a2 - v10 + v9[2];
    if (v11)
    {
      v2 = v12;
    }
  }

  if (v2 >= (*(*this + 32))(this))
  {
    return 0;
  }

  v13 = *(this + 8);
  v14 = (v13 + 4 * v2);
  v15 = *v14;
  if (v15)
  {
    return 0;
  }

  v16 = v14[1] - v15;
  if (v16 < 3 || v15 < 4 * *(this + 9))
  {
    return 0;
  }

  v18 = v13 + v15;
  if (*(this + 1) <= v18 && v16 + v18 <= *(this + 2) + *(this + 1))
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t HVF::LoaderHVGL::loadComposite(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if ((*a2 & 3) != 0)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 0x24)
  {
    return 0;
  }

  result = 0;
  v8 = v4[1];
  v9 = v4[4];
  if (v8 <= v9)
  {
    v10 = v4[2];
    v11 = v4[3];
    if (v10 < v11)
    {
      v12 = v4[7];
      v13 = v4[8];
      v14 = v4[9];
      v15 = 2 * v4[1];
      v16 = v4[11];
      v17 = v4[10];
      v18 = v4[6];
      v19 = v11 - 1;
      v20 = v9 - v8;
      v21 = (2 * v8) * v19;
      if (v18 > v9 - v8 || (v9 - v8) * (2 * v8) < v12 || v19 < v13 || v19 < v14 || v21 < v17 || v21 < v16 || 2 * v9 < v4[5])
      {
        return 0;
      }

      v28 = 8 * v10;
      v29 = v4 + v5;
      if (&v4[4 * v10 + 2 * v4[12]] > v29)
      {
        return 0;
      }

      if (v4[2])
      {
        v30 = *(a1 + 48);
        v31 = &v4[2 * v4[12]];
        do
        {
          v32 = *v31;
          if (v30 <= *v31)
          {
            return 0;
          }

          if (v20 <= HIWORD(v32) || WORD2(v32) >= v19)
          {
            return 0;
          }

          v31 += 4;
          v28 -= 8;
        }

        while (v28);
      }

      v34 = &v4[2 * v4[13]];
      v35 = &v34[v15 | 1];
      if (v35 > v29)
      {
        return 0;
      }

      result = 0;
      if (v4 <= v35)
      {
        v36 = 2 * v18;
        if (2 * v18 + v35 <= v29)
        {
          result = 0;
          if (v4 <= v35 + 2 * v18)
          {
            v94 = v15 | 1;
            v37 = v4[14];
            v38 = v4[15];
            v39 = v4[16];
            v40 = 2 * v12;
            v95 = v35 + 2 * v18;
            if (2 * v12 + v95 <= v29)
            {
              if (v4[6])
              {
                v41 = &v34[v15 | 1];
                while (*v41 < v20)
                {
                  ++v41;
                  v36 -= 2;
                  if (!v36)
                  {
                    goto LABEL_46;
                  }
                }

                return 0;
              }

LABEL_46:
              if (v4[7])
              {
                v42 = (v35 + 2 * v18);
                while (*v42 < v20)
                {
                  ++v42;
                  v40 -= 2;
                  if (!v40)
                  {
                    goto LABEL_50;
                  }
                }

                return 0;
              }

LABEL_50:
              if (v4[1])
              {
                v43 = 0;
                v44 = 4 * v8;
                v45 = &v4[2 * v4[13]];
                do
                {
                  v46 = *v45;
                  if (v46 > v12 || v46 < v43)
                  {
                    return 0;
                  }

                  ++v45;
                  v43 = v46;
                  v44 -= 2;
                }

                while (v44);
              }

              if (*(v35 - 2) != v12)
              {
                return 0;
              }

              if (&v4[2 * v37 + 2 * v18] > v29)
              {
                return 0;
              }

              if (&v4[2 * v38 + 2 * v12] > v29)
              {
                return 0;
              }

              v88 = &v4[2 * v38];
              v89 = &v4[2 * v37];
              v86 = &v4[2 * v4[13]];
              v87 = &v34[v15 | 1];
              v83 = &v4[2 * v4[12]];
              v84 = v4[7];
              v81 = v4[3];
              v82 = v4[5];
              v85 = v4[6];
              v78 = v4[1];
              v79 = v4[2];
              v80 = v4[4];
              v92 = v4[8];
              v93 = v4[10];
              v90 = v4[11];
              v91 = v4[9];
              v48 = &v4[2 * v4[16]];
              v49 = &v48[4 * v13];
              if (v49 > v29)
              {
                return 0;
              }

              result = 0;
              v50 = v49 + 8 * v17;
              if (v4 > v50)
              {
                return result;
              }

              v51 = (v50 + 4 * v17);
              if (v51 > v29)
              {
                return result;
              }

              if (v4[10])
              {
                v52 = 0;
                v53 = -1;
                v54 = (v49 + 8 * v17);
                do
                {
                  v55 = *v54;
                  if (v55 >= v19)
                  {
                    return 0;
                  }

                  v56 = v54[1];
                  if (v56 >= v15)
                  {
                    return 0;
                  }

                  if (v53 >= v55 && (v53 != v55 || v52 >= v56))
                  {
                    return 0;
                  }

                  v54 += 2;
                  v53 = v55;
                  v52 = v56;
                }

                while (v54 != v51);
              }

              result = 0;
              if (v4 > v51)
              {
                return result;
              }

              v58 = 2 * v92;
              if (&v51[v92] > v29)
              {
                return result;
              }

              if (v4[8])
              {
                v59 = -1;
                v60 = (v50 + 4 * v17);
                do
                {
                  v61 = v59;
                  v59 = *v60;
                  if (v59 >= v19 || v61 >= v59)
                  {
                    return 0;
                  }

                  ++v60;
                  v58 -= 2;
                }

                while (v58);
              }

              v63 = &v4[2 * v4[17]];
              v64 = &v63[2 * v14];
              if (v64 > v29)
              {
                return 0;
              }

              result = 0;
              if (v4 <= v64 && 4 * v16 + v64 <= v29)
              {
                result = 0;
                v65 = v64 + 4 * v16;
                if (v4 <= v65 && 4 * v16 + v65 <= v29)
                {
                  v66 = (v65 + 4 * v16);
                  if (v4[11])
                  {
                    v67 = 0;
                    v68 = -1;
                    v69 = (v64 + 4 * v16);
                    do
                    {
                      v70 = *v69;
                      if (v70 >= v19)
                      {
                        return 0;
                      }

                      v71 = v69[1];
                      if (v71 >= v15)
                      {
                        return 0;
                      }

                      if (v68 >= v70 && (v68 != v70 || v67 >= v71))
                      {
                        return 0;
                      }

                      v69 += 2;
                      v68 = v70;
                      v67 = v71;
                    }

                    while (v69 != v66);
                  }

                  result = 0;
                  if (v4 <= v66)
                  {
                    v73 = 2 * v14;
                    if (&v66[v14] <= v29)
                    {
                      if (!v14)
                      {
LABEL_113:
                        result = (*(*a4 + 24))(a4, a3);
                        *(result + 32) = v78;
                        *(result + 36) = v79;
                        *(result + 40) = v81;
                        *(result + 44) = v80;
                        *(result + 48) = v82;
                        *(result + 56) = v83;
                        *(result + 64) = v79;
                        *(result + 72) = v86;
                        *(result + 80) = v94;
                        *(result + 88) = v87;
                        *(result + 96) = v85;
                        *(result + 104) = v95;
                        *(result + 112) = v84;
                        *(result + 120) = v89;
                        *(result + 128) = v85;
                        *(result + 136) = v88;
                        *(result + 144) = v84;
                        *(result + 152) = v51;
                        *(result + 160) = v92;
                        *(result + 168) = v48;
                        *(result + 176) = v92;
                        *(result + 184) = v66;
                        *(result + 192) = v91;
                        *(result + 200) = v63;
                        *(result + 208) = v91;
                        *(result + 216) = v50;
                        *(result + 224) = v93;
                        *(result + 232) = v49;
                        *(result + 240) = v93;
                        *(result + 248) = v65;
                        *(result + 256) = v90;
                        *(result + 264) = v64;
                        *(result + 272) = v90;
                        return result;
                      }

                      v74 = -1;
                      v75 = (v65 + 4 * v16);
                      while (1)
                      {
                        v76 = v74;
                        v74 = *v75;
                        if (v74 >= v19 || v76 >= v74)
                        {
                          return 0;
                        }

                        ++v75;
                        v73 -= 2;
                        if (!v73)
                        {
                          goto LABEL_113;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *HVF::LoaderHVGL::loadShape(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if ((*a2 & 7) != 0)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 8)
  {
    return 0;
  }

  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = 2 * v7;
  v10 = 2 * v7 + 8;
  if (((v10 + v8) & 7) != 0)
  {
    v11 = ((v10 + v8) & 0x7FFF8) + 8;
  }

  else
  {
    v11 = v10 + v8;
  }

  v12 = v11 + 32 * v8;
  v13 = v4[3] * v4[1];
  if (v12 + (v13 << 6) != v5)
  {
    return 0;
  }

  v14 = v4 + 4;
  if (!v4[2])
  {
    v16 = 0;
    goto LABEL_25;
  }

  v15 = v9 - 2;
  if ((v9 - 2) < 6)
  {
    v16 = 0;
    v17 = v4 + 4;
    goto LABEL_23;
  }

  v19 = (v15 >> 1) + 1;
  if (v15 >= 0x1E)
  {
    v21 = 0uLL;
    v20 = v19 & 0xFFFFFFFFFFFFFFF0;
    v22 = 0uLL;
    v23 = (v4 + 12);
    v24 = v19 & 0xFFFFFFFFFFFFFFF0;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v31 = *v23[-2].i8;
      v32 = vmovl_u16(*v31.i8);
      v33 = vmovl_high_u16(v31);
      v34 = vmovl_u16(*v23);
      v35 = vmovl_high_u16(*v23->i8);
      v26 = vaddw_high_u32(v26, v33);
      v25 = vaddw_u32(v25, *v33.i8);
      v22 = vaddw_high_u32(v22, v32);
      v21 = vaddw_u32(v21, *v32.i8);
      v30 = vaddw_high_u32(v30, v35);
      v29 = vaddw_u32(v29, *v35.i8);
      v28 = vaddw_high_u32(v28, v34);
      v27 = vaddw_u32(v27, *v34.i8);
      v23 += 4;
      v24 -= 16;
    }

    while (v24);
    v16 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v27, v21), vaddq_s64(v29, v25)), vaddq_s64(vaddq_s64(v28, v22), vaddq_s64(v30, v26))));
    if (v19 == v20)
    {
      goto LABEL_25;
    }

    if ((v19 & 0xC) == 0)
    {
      v17 = &v14[v20];
LABEL_23:
      v42 = &v14[v9 / 2];
      do
      {
        v43 = *v17++;
        v16 += v43;
      }

      while (v17 != v42);
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    v20 = 0;
  }

  v17 = &v14[v19 & 0xFFFFFFFFFFFFFFFCLL];
  v36 = 0uLL;
  v37 = v16;
  v38 = &v4[v20 + 4];
  v39 = v20 - (v19 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v40 = *v38++;
    v41 = vmovl_u16(v40);
    v36 = vaddw_high_u32(v36, v41);
    v37 = vaddw_u32(v37, *v41.i8);
    v39 += 4;
  }

  while (v39);
  v16 = vaddvq_s64(vaddq_s64(v37, v36));
  if (v19 != (v19 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v16 == v8)
  {
    v44 = 8 * v13;
    result = (*(*a4 + 16))(a4, a3);
    result[4] = v6;
    result[5] = v8;
    result[6] = v14;
    result[7] = v7;
    result[8] = *a2 + v10;
    result[9] = v8;
    v46 = *a2;
    result[10] = *a2 + v11;
    result[11] = 4 * v8;
    result[12] = v46 + v12;
    result[13] = v44;
    return result;
  }

  return 0;
}

uint64_t HVF::LoaderHVGL::countParts(HVF::LoaderHVGL *this)
{
  if ((*(*this + 16))(this))
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HVF::Loader::operator std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>(void)::{lambda(unsigned long,HVF::PartCache &)#1},std::allocator<HVF::Loader::operator std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>(void)::{lambda(unsigned long,HVF::PartCache &)#1}>,HVF::Part const* ()(unsigned long,HVF::PartCache &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1A100;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<HVF::Loader::operator std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>(void)::{lambda(unsigned long,HVF::PartCache &)#1},std::allocator<HVF::Loader::operator std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>(void)::{lambda(unsigned long,HVF::PartCache &)#1}>,HVF::Part const* ()(unsigned long,HVF::PartCache &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3HVF6LoadercvNSt3__18functionIFPKNS_4PartEmRNS_9PartCacheEEEEEvEUlmS7_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3HVF6LoadercvNSt3__18functionIFPKNS_4PartEmRNS_9PartCacheEEEEEvEUlmS7_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3HVF6LoadercvNSt3__18functionIFPKNS_4PartEmRNS_9PartCacheEEEEEvEUlmS7_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3HVF6LoadercvNSt3__18functionIFPKNS_4PartEmRNS_9PartCacheEEEEEvEUlmS7_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::remove@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void HVF::Part::~Part(HVF::Part *this)
{
  *this = &unk_2A1F1A180;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      v5 = v3 - 4;
      do
      {
        if (*v5)
        {
          (*v5)(0, v5, 0, 0, 0);
        }

        v6 = v5 == v2;
        v5 -= 4;
      }

      while (!v6);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

void HVF::Shape::~Shape(HVF::Shape *this)
{
  HVF::Part::~Part(this);

  JUMPOUT(0x29C293CF0);
}

uint64_t HVF::Shape::shim(HVF::Shape *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    if (v1 < *(this + 3))
    {
      *v2 = 0;
      v2[1] = 0;
      operator new();
    }

    std::vector<std::any>::__emplace_back_slow_path<HVF::SwiftShapeShim>(this + 1);
  }

  return (*v1)(3);
}

void sub_298ACAF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = v10;
  HVF::SwiftShapeShim::~SwiftShapeShim(&a9);
  _Unwind_Resume(a1);
}

uint64_t HVF::Shape::finalizeShim(double **this)
{
  v2 = HVF::Shape::shim(this);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v5 = v4 - v3 - 2;
  if (v5 < 6)
  {
    v6 = 0;
    v7 = *v2;
    goto LABEL_16;
  }

  v8 = (v5 >> 1) + 1;
  if (v5 >= 0x1E)
  {
    v10 = 0uLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFF0;
    v11 = 0uLL;
    v12 = v3 + 2;
    v13 = v8 & 0xFFFFFFFFFFFFFFF0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = *v12[-2].i8;
      v21 = vmovl_u16(*v20.i8);
      v22 = vmovl_high_u16(v20);
      v23 = vmovl_u16(*v12);
      v24 = vmovl_high_u16(*v12->i8);
      v15 = vaddw_high_u32(v15, v22);
      v14 = vaddw_u32(v14, *v22.i8);
      v11 = vaddw_high_u32(v11, v21);
      v10 = vaddw_u32(v10, *v21.i8);
      v19 = vaddw_high_u32(v19, v24);
      v18 = vaddw_u32(v18, *v24.i8);
      v17 = vaddw_high_u32(v17, v23);
      v16 = vaddw_u32(v16, *v23.i8);
      v12 += 4;
      v13 -= 16;
    }

    while (v13);
    v6 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v16, v10), vaddq_s64(v18, v14)), vaddq_s64(vaddq_s64(v17, v11), vaddq_s64(v19, v15))));
    if (v8 == v9)
    {
      goto LABEL_17;
    }

    if ((v8 & 0xC) == 0)
    {
      v7 = v3 + v9;
      do
      {
LABEL_16:
        v31 = *v7++;
        v6 += v31;
      }

      while (v7 != v4);
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  v7 = v3 + (v8 & 0xFFFFFFFFFFFFFFFCLL);
  v25 = 0uLL;
  v26 = v6;
  v27 = (v3 + 2 * v9);
  v28 = v9 - (v8 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v29 = *v27++;
    v30 = vmovl_u16(v29);
    v25 = vaddw_high_u32(v25, v30);
    v26 = vaddw_u32(v26, *v30.i8);
    v28 += 4;
  }

  while (v28);
  v6 = vaddvq_s64(vaddq_s64(v26, v25));
  if (v8 != (v8 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v6 != this[5])
  {
    return 0;
  }

  v32 = v2[3];
  if (v2[4] - v32 != v6 || v2[7] - v2[6] != 4 * v6 || v2[10] - v2[9] != 8 * v6 * this[4])
  {
    return 0;
  }

  v33 = this[11];
  if (v33)
  {
    v34 = this[10];
    v35 = &v34[v33];
    while (1)
    {
      while (*v34 == 0.0)
      {
        if (++v34 == v35)
        {
          goto LABEL_32;
        }
      }

      v36 = fabs(*v34);
      if (v36 == INFINITY)
      {
        return 0;
      }

      ++v34;
      if (v36 < 2.22507386e-308 || v34 == v35)
      {
        if (v36 < 2.22507386e-308)
        {
          return 0;
        }

        break;
      }
    }
  }

LABEL_32:
  v38 = this[13];
  if (v38)
  {
    v39 = this[12];
    v40 = &v39[v38];
    while (1)
    {
      while (*v39 == 0.0)
      {
        if (++v39 == v40)
        {
          goto LABEL_44;
        }
      }

      v41 = fabs(*v39);
      if (v41 == INFINITY)
      {
        return 0;
      }

      ++v39;
      if (v41 < 2.22507386e-308 || v39 == v40)
      {
        if (v41 >= 2.22507386e-308)
        {
          break;
        }

        return 0;
      }
    }
  }

LABEL_44:
  this[6] = v3;
  this[7] = ((v4 - v3) >> 1);
  this[8] = v32;
  this[9] = v6;
  v44 = v2[6];
  v45 = (v2[7] - v44) >> 3;
  this[10] = v44;
  this[11] = v45;
  v46 = v2[9];
  v47 = (v2[10] - v46) >> 3;
  this[12] = v46;
  this[13] = v47;
  return 1;
}

void HVF::SwiftShapeShim::zeroDenseDeltas(HVF::SwiftShapeShim *this, unint64_t a2)
{
  v3 = *(this + 9);
  v2 = *(this + 10);
  if (a2 < (v2 - v3) >> 3)
  {
    bzero((v3 + 8 * a2), v2 - (v3 + 8 * a2));
  }
}

void std::vector<std::any>::__emplace_back_slow_path<HVF::SwiftShapeShim>(void *a1)
{
  v1 = (a1[1] - *a1) >> 5;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 59))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 4 > v2)
    {
      v2 = v3 >> 4;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFE0)
    {
      v4 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v5 = (32 * v1);
    *v5 = 0;
    v5[1] = 0;
    operator new();
  }

  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
}

void sub_298ACB4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::any>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_LargeHandler<HVF::SwiftShapeShim>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v14 = a2[1];
      operator new();
    }

    v7 = a2;
    v8 = a2[1];
    v9 = v8[9];
    if (v9)
    {
      v8[10] = v9;
      operator delete(v9);
    }

    v10 = v8[6];
    if (v10)
    {
      v8[7] = v10;
      operator delete(v10);
    }

    v11 = v8[3];
    if (v11)
    {
      v8[4] = v11;
      operator delete(v11);
    }

    v12 = *v8;
    if (*v8)
    {
      v8[1] = v12;
      operator delete(v12);
    }

    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v13 = a2[1];
      *a3 = std::__any_imp::_LargeHandler<HVF::SwiftShapeShim>::__handle[abi:ne200100];
      a3[1] = v13;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N3HVF14SwiftShapeShimE")
      {
        if (((v5 & "N3HVF14SwiftShapeShimE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N3HVF14SwiftShapeShimE"))
        {
          return 0;
        }

        v15 = a2;
        v16 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N3HVF14SwiftShapeShimE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v15;
        if (v16)
        {
          return 0;
        }
      }
    }

    else if (a5 != &std::__any_imp::__unique_typeinfo<HVF::SwiftShapeShim>::__id)
    {
      return 0;
    }

    return a2[1];
  }

  return result;
}