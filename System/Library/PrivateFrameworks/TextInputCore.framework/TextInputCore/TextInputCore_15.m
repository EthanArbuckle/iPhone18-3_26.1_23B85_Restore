void std::vector<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::resize(void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      while (v4 != v11)
      {
        v4 -= 3;
        v13[0] = v4;
        std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](v13);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13[4] = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v10);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}

uint64_t std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TI::CP::Search::step_search(void *a1, unsigned int a2, int a3, void *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = 0;
  v66 = 0;
  *v59 = 0u;
  *__p = 0u;
  v61 = 1065353216;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(v59, 0x28uLL);
  TI::CP::Search::compute_keys_near_sample(a1, a2);
  v48 = a3;
  if (a3)
  {
    TI::Favonius::KeyboardLayout::key_for_char(a1[1], 0x20u, &v63);
    v46 = v63;
    v7 = a2;
    TI::Favonius::KeyboardLayout::find_nearest_key(a1[1], *(a1[7] + 48 * a2), &v63);
    v8 = v63;
    if (v63)
    {
      if (memchr(".,?!", *(v63 + 56), 5uLL))
      {
        atomic_fetch_add(v8, 1u);
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      WTF::RefCounted<TI::Favonius::Key>::deref(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v46 = 0;
    v7 = a2;
  }

  v10 = a1[41] + 24 * v7;
  v12 = *v10;
  v11 = *(v10 + 8);
  v51 = v9;
  if (*v10 != v11)
  {
    if (a2)
    {
      v13 = v48;
    }

    else
    {
      v13 = 1;
    }

    v52 = v13;
    v14 = v48 ^ 1;
    if (!a2)
    {
      v14 = 1;
    }

    v49 = v14;
    do
    {
      v15 = *v12;
      if (v9)
      {
        if ((*(**(v15 + 8) + 64))(*(v15 + 8)))
        {
          v16 = v12[1];
          v57 = *v12;
          v58 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          v56 = v9;
          atomic_fetch_add(v9, 1u);
          v55 = 0;
          *&v54 = a1;
          LODWORD(v62) = a2;
          std::allocate_shared[abi:nn200100]<TI::CP::SearchNodeKeyMatch,std::allocator<TI::CP::SearchNodeKeyMatch>,TI::CP::Search const*&,std::shared_ptr<TI::CP::SearchNode const>,unsigned int &,WTF::PassRefPtr<TI::Favonius::LayoutKey> &,WTF::PassRefPtr<TI::Favonius::TypingHypothesis> &,0>();
        }
      }

      else
      {
        if (TI::CP::SearchNode::has_extensions(v15))
        {
          if (v12[1])
          {
            atomic_fetch_add_explicit(((*(v12 + 1) >> 64) + 8), 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if ((v52 & 1) == 0)
        {
          v18 = *v12;
          v17 = v12[1];
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if ((v49 & 1) == 0)
        {
          if (((*(**v12 + 72))() & 1) == 0 && *(*v12 + 48))
          {
            v19 = v12[1];
            if (v19)
            {
              atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          v9 = v51;
        }
      }

      v12 += 2;
    }

    while (v12 != v11);
  }

  v20 = ((v65 - v64) >> 5) & 0x7FFFFFFF;
  v21 = a4;
  if (v20)
  {
    v22 = v20 - 1;
    do
    {
      TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_downheapify(&v64, v22--);
    }

    while (v22 != -1);
  }

  do
  {
    v24 = v64;
    v23 = v65;
    if (v64 == v65 || v21[1] - *v21 > 0x27FuLL)
    {
      break;
    }

    v53 = 0u;
    v54 = 0u;
    v25 = *v64;
    if ((COERCE_UNSIGNED_INT64((*(**v64 + 56))(*v64)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (*(*v25 + 56))(v25) < -INFINITY)
    {
      v26 = 1;
      goto LABEL_83;
    }

    (*(*v25 + 40))(&v63, v25);
    v54 = v63;
    v50 = v63;
    v53 = 0u;
    if (!v63)
    {
      (*(*v25 + 32))(&v63, v25);
      v53 = v63;
      if (!v63)
      {
        (*(*v25 + 48))(v25);
      }
    }

    if ((COERCE_UNSIGNED_INT64((*(*v25 + 56))(v25)) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
    {
      TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_downheapify(&v64, 0);
      if (v50)
      {
        std::vector<std::shared_ptr<TI::CP::SearchNodeSource>>::push_back[abi:nn200100](&v64, &v54);
        TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_upheapify(&v64, (v23 - v24) >> 4);
      }

      goto LABEL_59;
    }

    if (v50)
    {
      v54 = 0uLL;
      v27 = v24[1];
      *v24 = v50;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }
    }

    else
    {
      if (((v23 - v24) & 0xFFFFFFFE0) == 0)
      {
        v38 = *(v23 - 1);
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v38);
        }

        v65 = v23 - 16;
        goto LABEL_59;
      }

      v29 = *(v23 - 2);
      v28 = v23 - 16;
      v30 = *v24;
      *v24 = v29;
      *v28 = v30;
      v31 = v24[1];
      v24[1] = v28[1];
      v28[1] = v31;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      v65 = v28;
    }

    TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_downheapify(&v64, 0);
LABEL_59:
    if (v53 && (!v48 || *(v53 + 48) >= a2))
    {
      v32 = (*(**(v53 + 64) + 192))(*(v53 + 64));
      if (!v59[1])
      {
        goto LABEL_78;
      }

      v33 = vcnt_s8(v59[1]);
      v33.i16[0] = vaddlv_u8(v33);
      if (v33.u32[0] > 1uLL)
      {
        v34 = v32;
        if (v32 >= v59[1])
        {
          v34 = v32 % v59[1];
        }
      }

      else
      {
        v34 = (v59[1] - 1) & v32;
      }

      v35 = *(v59[0] + v34);
      if (!v35 || (v36 = *v35) == 0)
      {
LABEL_78:
        operator new();
      }

      while (1)
      {
        v37 = v36[1];
        if (v37 == v32)
        {
          if (v36[2] == v32)
          {
            v26 = 0;
            v21 = a4;
            goto LABEL_83;
          }
        }

        else
        {
          if (v33.u32[0] > 1uLL)
          {
            if (v37 >= v59[1])
            {
              v37 %= v59[1];
            }
          }

          else
          {
            v37 &= v59[1] - 1;
          }

          if (v37 != v34)
          {
            goto LABEL_78;
          }
        }

        v36 = *v36;
        if (!v36)
        {
          goto LABEL_78;
        }
      }
    }

    v26 = 0;
LABEL_83:
    if (*(&v53 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v53 + 1));
    }

    if (*(&v54 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v54 + 1));
    }
  }

  while (!v26);
  if (v9)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v9);
  }

  if (v46)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v46);
  }

  v39 = __p[0];
  if (__p[0])
  {
    do
    {
      v40 = *v39;
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v59[0];
  v59[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = v64;
  if (v64)
  {
    for (i = v65; i != v42; i -= 16)
    {
      v44 = *(i - 1);
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }
    }

    operator delete(v42);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void *TI::CP::Search::compute_keys_near_sample(void *this, unsigned int a2)
{
  v3 = this[47];
  v2 = this[48];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v4 <= a2)
  {
    v6 = this;
    v7 = this[49];
    if (v2 >= v7)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
      if (2 * v9 <= v4 + 1)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = 2 * v9;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      v29 = v6 + 47;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v11);
    }

    *v2 = 0;
    v2[1] = 0;
    v8 = v2 + 3;
    v2[2] = 0;
    this[48] = v2 + 3;
    v28 = *(this[7] + 48 * a2);
    v12 = this[1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v22 = ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke;
    v23 = &__block_descriptor_tmp_18831;
    v24 = this;
    v27 = a2;
    v25 = v28;
    v26 = v2;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    while (v13 != v14)
    {
      v22(v21, v13++);
    }

    v15 = *(v8 - 3);
    v16 = *(v8 - 2);
    v17 = 126 - 2 * __clz((v16 - v15) >> 3);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_2_18832;
    v19[4] = v6;
    v20 = a2;
    v30 = v19;
    if (v16 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    return std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(v15, v16, &v30, v18, 1);
  }

  return this;
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_downheapify(uint64_t *a1, unsigned int a2)
{
  v2 = (2 * a2) | 1;
  v3 = *a1;
  v4 = (a1[1] - *a1) >> 4;
  if (v2 < v4)
  {
    v6 = 2 * a2;
    while (1)
    {
      v7 = (v6 + 2);
      v8 = a2;
      v9 = 16 * a2;
      v10 = (*(**(v3 + 16 * v2) + 56))(*(v3 + 16 * v2));
      v11 = (*(**(v3 + v9) + 56))(*(v3 + v9));
      v12 = v11;
      if (v7 >= v4)
      {
        if (v10 <= v11)
        {
          return;
        }

        v20 = (*a1 + 16 * v8);
        v17 = (*a1 + 16 * v2);
        v21 = *v20;
        *v20 = *v17;
        v19 = v20 + 1;
        *v17 = v21;
        goto LABEL_13;
      }

      v13 = *a1;
      v14 = *(*a1 + 16 * v7);
      v15 = (*(*v14 + 56))(v14);
      if (v10 <= v12)
      {
        break;
      }

      v22 = (*(**(v13 + 16 * v2) + 56))(*(v13 + 16 * v2));
      v23 = *a1;
      v24 = (*a1 + 16 * v8);
      v19 = v24 + 1;
      v25 = *v24;
      if (v15 > v22)
      {
        v17 = (v23 + 16 * v7);
        *v24 = *v17;
        *v17 = v25;
LABEL_12:
        v2 = v7;
        goto LABEL_13;
      }

      v17 = (v23 + 16 * v2);
      *v24 = *v17;
      *v17 = v25;
LABEL_13:
      a2 = v2;
      v26 = *v19;
      *v19 = v17[1];
      v17[1] = v26;
      v6 = 2 * v2;
      v2 = (2 * v2) | 1;
      v3 = *a1;
      v4 = (a1[1] - *a1) >> 4;
      if (v2 >= v4)
      {
        return;
      }
    }

    if (v15 <= (*(**(v13 + 16 * v8) + 56))(*(v13 + 16 * v8)))
    {
      return;
    }

    v16 = (*a1 + 16 * v8);
    v17 = (*a1 + 16 * v7);
    v18 = *v16;
    *v16 = *v17;
    v19 = v16 + 1;
    *v17 = v18;
    goto LABEL_12;
  }
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::push<std::shared_ptr<TI::CP::SearchNodeKeyMatch>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  std::vector<std::shared_ptr<TI::CP::SearchNodeSource>>::push_back[abi:nn200100](a1, &v7);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v7 + 1));
  }

  if (a3)
  {

    TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_upheapify(a1, (v5 - v6) >> 4);
  }
}

uint64_t TI::CP::SearchNode::has_extensions(TI::CP::SearchNode *this)
{
  if ((*(*this + 128))(this) & 1) != 0 || ((*(*this + 88))(this))
  {
    return 0;
  }

  if ((*(*this + 104))(this))
  {
    if ((*(*(this + 7) + 60) & 0x30) != 0 && (*(*(this + 7) + 60) & 8) == 0)
    {
      return 0;
    }
  }

  if ((*(*this + 72))(this))
  {
    return 1;
  }

  v4 = *(**(this + 8) + 160);

  return v4();
}

void std::vector<std::shared_ptr<TI::CP::SearchNodeSource>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}

void TI::CP::Heap<std::shared_ptr<TI::CP::SearchNodeSource>,TI::CP::Search::step_search(unsigned int,BOOL,std::vector<std::shared_ptr<TI::CP::SearchNode const>> &)::SearchNodeCompare>::_upheapify(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = v2 - 1;
      v5 = (v2 - 1) >> 1;
      v6 = *a1;
      v7 = *(*a1 + 16 * v2);
      v8 = (*(*v7 + 56))(v7);
      if (v8 <= (*(**(v6 + 16 * v5) + 56))(*(v6 + 16 * v5)))
      {
        break;
      }

      v9 = *a1;
      v10 = *(*a1 + 16 * v5);
      *(*a1 + 16 * v5) = *(*a1 + 16 * v2);
      *(v9 + 16 * v2) = v10;
      v2 = v4 >> 1;
    }

    while (v4 > 1);
  }
}

long double TI::CP::Search::key_substitution_cost(TI::CP::Search *this, unsigned int a2)
{
  v3 = *(this + 62);
  v4 = *(this + 58);
  if (a2)
  {
    if (TI::CP::Path::inflection_point_count((this + 56), a2, a2))
    {
      v5 = 488;
    }

    else
    {
      v5 = 472;
    }
  }

  else
  {
    v5 = 480;
  }

  return -(pow(v3, v4) * *(this + v5)) * *(this + 54);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<TI::CP::SearchNode const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeLoop>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeKeyPredictionExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeOvershoot>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDF68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeSkippedKey>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeForward>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeGeometryExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeLanguageExtensions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDE88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::__split_buffer<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke(uint64_t a1, atomic_uint **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 30);
  if ((v2 & 0x20) == 0 && (v2 & 0x18) != 0x10)
  {
    v5 = *(a1 + 32);
    if ((((*a2)[15] & 0xB81) == 0 || ((*a2)[15] & 0x100) != 0 && !*(a1 + 64)) && hypot(*(*a2 + 12) - *(a1 + 40), *(*a2 + 13) - *(a1 + 48)) * *(v5 + 320) <= *(v5 + 496))
    {
      std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](*(a1 + 56), a2);
      if (TI::Favonius::KeyboardLayout::is_indic_alphabetic(*(v5 + 8)))
      {
        KB::String::String(v22, (*a2 + 2));
        KB::String::String(v20, v22);
        TI::IndicUtils::convertVowel(v19, v20);
        if (v21 && v20[6] == 1)
        {
          free(v21);
        }

        for (i = 0; i != 96; i += 32)
        {
          if (!*&v19[i + 4])
          {
            KB::String::compute_length(&v19[i]);
            if (!*&v19[i + 4])
            {
              continue;
            }
          }

          if (!KB::String::equal(&v19[i], v22, 1))
          {
            v7 = *a2;
            if (*(*a2 + 20) >= 0xFuLL)
            {
              v17 = *(*a2 + 20);
              operator new[]();
            }

            v18 = *(*a2 + 10);
            v8 = *(v7 + 8);
            v9 = *(v7 + 9);
            v10 = *(v7 + 10);
            v11 = *(v7 + 11);
            v12 = *(v7 + 31);
            operator new();
          }
        }

        for (j = 0; j != -96; j -= 32)
        {
          v14 = *&v19[j + 72];
          if (v14 && v19[j + 70] == 1)
          {
            free(v14);
          }
        }

        if (v23)
        {
          v15 = v22[6] == 1;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          free(v23);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

BOOL ___ZN2TI2CP6Search24compute_keys_near_sampleEj_block_invoke_2(uint64_t a1, CGRect **a2, CGRect **a3)
{
  v5 = *(a1 + 32);
  v6 = TI::CP::Search::key_deviation_cost(v5, *(a1 + 40), *a2);
  return v6 > TI::CP::Search::key_deviation_cost(v5, *(a1 + 40), *a3);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v121 = a2;
  v119 = a2 - 3;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = v121;
    v12 = v121 - v7;
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3:
        v68 = (*(*a3 + 16))();
        result = (*(*a3 + 16))();
        if (v68)
        {
          v67 = *v7;
          if (result)
          {
LABEL_116:
            *v7 = *v8;
          }

          else
          {
            *v7 = v7[1];
            v7[1] = v67;
            result = (*(*a3 + 16))();
            if (!result)
            {
              return result;
            }

            v67 = v7[1];
            v7[1] = *v8;
          }

          *v8 = v67;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v114 = v7[1];
        v7[1] = *v8;
        *v8 = v114;
LABEL_189:
        result = (*(*a3 + 16))();
        if (result)
        {
          *v7 = vextq_s8(*v7, *v7, 8uLL);
        }

        return result;
      case 4:

        return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v7, v7 + 1, v7 + 2, v8, a3);
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(v7, v7 + 1, v7 + 2, v7 + 3, a3);
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        v66 = v7[3];
        v7[3] = *v8;
        *v8 = v66;
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
        result = (*(*a3 + 16))();
        if (!result)
        {
          return result;
        }

        *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
        goto LABEL_189;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v69 = v7 + 1;
      v71 = v7 == v121 || v69 == v121;
      if (a5)
      {
        if (!v71)
        {
          v72 = 0;
          do
          {
            v73 = v69;
            result = (*(*a3 + 16))();
            if (result)
            {
              v74 = 0;
              v75 = *v73;
              *v73 = 0;
              v125 = v75;
              for (i = v72; ; i -= 8)
              {
                v77 = (v7 + i);
                v78 = *(v7 + i);
                *v77 = 0;
                v77[1] = v78;
                if (v74)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(v74);
                }

                if (!i)
                {
                  break;
                }

                v79 = (v7 + i);
                if (((*(*a3 + 16))() & 1) == 0)
                {
                  goto LABEL_138;
                }

                v74 = *v77;
              }

              v79 = v7;
LABEL_138:
              result = *v79;
              *v79 = v125;
              if (result)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(result);
                result = 0;
              }
            }

            v69 = v73 + 1;
            v72 += 8;
          }

          while (v73 + 1 != v121);
        }
      }

      else if (!v71)
      {
        do
        {
          v115 = v69;
          result = (*(*a3 + 16))();
          if (result)
          {
            v116 = 0;
            v117 = *v115;
            *v115 = 0;
            v128 = v117;
            while (1)
            {
              v118 = *v7;
              *v7 = 0;
              v7[1] = v118;
              if (v116)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(v116);
              }

              if (((*(*a3 + 16))() & 1) == 0)
              {
                break;
              }

              v116 = *v7--;
            }

            result = *v7;
            *v7 = v128;
            if (result)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(result);
              result = 0;
            }
          }

          v69 = v115 + 1;
          v7 = v115;
        }

        while (v115 + 1 != v121);
      }

      return result;
    }

    if (!a4)
    {
      if (v7 != v121)
      {
        v80 = v13 >> 1;
        v81 = v13 >> 1;
        do
        {
          v82 = v81;
          if (v80 >= v81)
          {
            v83 = (2 * v81) | 1;
            v84 = &v7[v83];
            if (2 * v81 + 2 < v12 && (*(*a3 + 16))())
            {
              ++v84;
              v83 = 2 * v82 + 2;
            }

            v85 = &v7[v82];
            if (((*(*a3 + 16))() & 1) == 0)
            {
              v86 = *v85;
              *v85 = 0;
              v126 = v86;
              do
              {
                v87 = v84;
                v88 = *v84;
                *v84 = 0;
                v89 = *v85;
                *v85 = v88;
                if (v89)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(v89);
                }

                if (v80 < v83)
                {
                  break;
                }

                v90 = (2 * v83) | 1;
                v84 = &v7[v90];
                v91 = 2 * v83 + 2;
                if (v91 < v12 && (*(*a3 + 16))())
                {
                  ++v84;
                  v90 = v91;
                }

                v85 = v87;
                v83 = v90;
              }

              while (!(*(*a3 + 16))());
              v92 = *v87;
              *v87 = v126;
              if (v92)
              {
                WTF::RefCounted<TI::Favonius::Key>::deref(v92);
              }

              v11 = v121;
            }
          }

          v81 = v82 - 1;
        }

        while (v82);
        do
        {
          v93 = v11;
          v94 = 0;
          v122 = *v7;
          *v7 = 0;
          v95 = v7;
          do
          {
            v96 = &v95[v94];
            v97 = v96 + 1;
            v98 = 2 * v94;
            v94 = (2 * v94) | 1;
            v99 = v98 + 2;
            if (v98 + 2 < v12)
            {
              v100 = v96 + 2;
              if ((*(*a3 + 16))())
              {
                v97 = v100;
                v94 = v99;
              }
            }

            v101 = *v97;
            *v97 = 0;
            v102 = *v95;
            *v95 = v101;
            if (v102)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v102);
            }

            v95 = v97;
          }

          while (v94 <= (v12 - 2) / 2);
          v11 = v93 - 1;
          if (v97 == v93 - 1)
          {
            result = *v97;
            *v97 = v122;
            if (result)
            {
              result = WTF::RefCounted<TI::Favonius::Key>::deref(result);
            }
          }

          else
          {
            v103 = *v11;
            *v11 = 0;
            v104 = *v97;
            *v97 = v103;
            if (v104)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v104);
            }

            result = *v11;
            *v11 = v122;
            if (result)
            {
              result = WTF::RefCounted<TI::Favonius::Key>::deref(result);
            }

            v105 = v97 + 1 - v7;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v7[v107 >> 1];
              result = (*(*a3 + 16))();
              if (result)
              {
                v110 = *v97;
                *v97 = 0;
                v127 = v110;
                do
                {
                  v111 = v109;
                  v112 = *v109;
                  *v109 = 0;
                  v113 = *v97;
                  *v97 = v112;
                  if (v113)
                  {
                    WTF::RefCounted<TI::Favonius::Key>::deref(v113);
                  }

                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v7[v108];
                  v97 = v111;
                }

                while (((*(*a3 + 16))() & 1) != 0);
                result = *v111;
                *v111 = v127;
                if (result)
                {
                  WTF::RefCounted<TI::Favonius::Key>::deref(result);
                  result = 0;
                }
              }
            }
          }

          v106 = v12-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v14 = &v7[v12 >> 1];
    v15 = *(*a3 + 16);
    if (v12 >= 0x81)
    {
      v16 = v15();
      v17 = (*(*a3 + 16))();
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_27;
        }

        *v7 = *v14;
        *v14 = v18;
        if ((*(*a3 + 16))())
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v14;
        *v14 = *v8;
        *v8 = v22;
        if ((*(*a3 + 16))())
        {
          v23 = *v7;
          *v7 = *v14;
          *v14 = v23;
        }
      }

      v26 = v14 - 1;
      v27 = (*(*a3 + 16))();
      v28 = (*(*a3 + 16))();
      if (v27)
      {
        v29 = v7[1];
        if (v28)
        {
          v7[1] = *v9;
          goto LABEL_39;
        }

        v7[1] = *v26;
        *v26 = v29;
        if ((*(*a3 + 16))())
        {
          v29 = *v26;
          *v26 = *v9;
LABEL_39:
          *v9 = v29;
        }
      }

      else if (v28)
      {
        v30 = *v26;
        *v26 = *v9;
        *v9 = v30;
        if ((*(*a3 + 16))())
        {
          v31 = v7[1];
          v7[1] = *v26;
          *v26 = v31;
        }
      }

      v32 = (*(*a3 + 16))();
      v33 = (*(*a3 + 16))();
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v35 = v119;
          v7[2] = *v119;
          goto LABEL_48;
        }

        v7[2] = v14[1];
        v14[1] = v34;
        if ((*(*a3 + 16))())
        {
          v34 = v14[1];
          v35 = v119;
          v14[1] = *v119;
LABEL_48:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v36 = v14[1];
        v14[1] = *v119;
        *v119 = v36;
        if ((*(*a3 + 16))())
        {
          v37 = v7[2];
          v7[2] = v14[1];
          v14[1] = v37;
        }
      }

      v38 = (*(*a3 + 16))();
      v39 = (*(*a3 + 16))();
      if (v38)
      {
        v40 = *v26;
        if (v39)
        {
          v41 = *v14;
          *v26 = v14[1];
          v14[1] = v40;
LABEL_58:
          v11 = v121;
          v45 = *v7;
          *v7 = v41;
          *v14 = v45;
          goto LABEL_59;
        }

        *v26 = *v14;
        *v14 = v40;
        v44 = (*(*a3 + 16))();
        v41 = *v14;
        if (!v44)
        {
          goto LABEL_58;
        }

        v43 = v14[1];
        *v14 = v43;
        v14[1] = v41;
      }

      else
      {
        v41 = *v14;
        if (!v39)
        {
          goto LABEL_58;
        }

        *v14 = v14[1];
        v14[1] = v41;
        v42 = (*(*a3 + 16))();
        v41 = *v14;
        if (!v42)
        {
          goto LABEL_58;
        }

        v43 = *v26;
        *v26 = v41;
        *v14 = v43;
      }

      v41 = v43;
      goto LABEL_58;
    }

    v19 = v15();
    v20 = (*(*a3 + 16))();
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v24 = *v7;
        *v7 = *v8;
        *v8 = v24;
        if ((*(*a3 + 16))())
        {
          v25 = *v14;
          *v14 = *v7;
          *v7 = v25;
        }
      }

      goto LABEL_59;
    }

    v21 = *v14;
    if (v20)
    {
      *v14 = *v8;
LABEL_36:
      *v8 = v21;
      goto LABEL_59;
    }

    *v14 = *v7;
    *v7 = v21;
    if ((*(*a3 + 16))())
    {
      v21 = *v7;
      *v7 = *v8;
      goto LABEL_36;
    }

LABEL_59:
    --a4;
    if (a5)
    {
      v46 = *v7;
LABEL_62:
      *v7 = 0;
      v123 = v46;
      v48 = v7;
      do
      {
        v49 = v48++;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v50 = v11;
      if (v49 == v7)
      {
        v50 = v11;
        do
        {
          if (v48 >= v50)
          {
            break;
          }

          --v50;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        do
        {
          --v50;
        }

        while (!(*(*a3 + 16))());
      }

      if (v48 < v50)
      {
        v51 = v48;
        v52 = v50;
        do
        {
          v53 = *v51;
          *v51 = *v52;
          *v52 = v53;
          do
          {
            v49 = v51++;
          }

          while (((*(*a3 + 16))() & 1) != 0);
          do
          {
            --v52;
          }

          while (!(*(*a3 + 16))());
        }

        while (v51 < v52);
      }

      if (v49 != v7)
      {
        v54 = *v49;
        *v49 = 0;
        v55 = *v7;
        *v7 = v54;
        if (v55)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v55);
        }
      }

      v56 = *v49;
      *v49 = v123;
      if (v56)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v56);
      }

      if (v48 < v50)
      {
        goto LABEL_84;
      }

      v57 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(v7, v49, a3);
      v10 = v49 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(v49 + 1, v121, a3);
      if (result)
      {
        a2 = v49;
        if (!v57)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v57)
      {
LABEL_84:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*,false>(v7, v49, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v49 + 1;
      }
    }

    else
    {
      v47 = (*(*a3 + 16))();
      v46 = *v7;
      if (v47)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      v124 = v46;
      if ((*(*a3 + 16))())
      {
        v10 = v7;
        do
        {
          ++v10;
        }

        while (((*(*a3 + 16))() & 1) == 0);
      }

      else
      {
        v58 = v7 + 1;
        do
        {
          v10 = v58;
          if (v58 >= v121)
          {
            break;
          }

          v59 = (*(*a3 + 16))();
          v58 = v10 + 1;
        }

        while (!v59);
      }

      v60 = v121;
      if (v10 < v121)
      {
        v60 = v121;
        do
        {
          --v60;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      while (v10 < v60)
      {
        v61 = *v10;
        *v10 = *v60;
        *v60 = v61;
        do
        {
          ++v10;
        }

        while (!(*(*a3 + 16))());
        do
        {
          --v60;
        }

        while (((*(*a3 + 16))() & 1) != 0);
      }

      v62 = v10 - 1;
      if (v10 - 1 != v7)
      {
        v63 = *v62;
        *v62 = 0;
        v64 = *v7;
        *v7 = v63;
        if (v64)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v64);
        }
      }

      v65 = *v62;
      *v62 = v124;
      if (v65)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v65);
      }

      result = 0;
      a5 = 0;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  result = (*(*a3 + 16))();
  if (result)
  {
    v67 = *v7;
    goto LABEL_116;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::LayoutKey> const&,WTF::RefPtr<TI::Favonius::LayoutKey> const&),WTF::RefPtr<TI::Favonius::LayoutKey>*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = a2 - 1;
        v12 = (*(*a3 + 16))();
        v13 = (*(*a3 + 16))();
        if (v12)
        {
          v14 = *a1;
          if (v13)
          {
            *a1 = *v11;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v14;
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v14 = a1[1];
            a1[1] = *v11;
          }

          *v11 = v14;
          return 1;
        }

        if (!v13)
        {
          return 1;
        }

        v18 = a1[1];
        a1[1] = *v11;
        *v11 = v18;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = a2 - 1;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_16;
    }

    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*(*a3 + 16))())
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_16:
  v15 = (*(*a3 + 16))();
  v16 = (*(*a3 + 16))();
  if (v15)
  {
    v17 = *a1;
    if (v16)
    {
      *a1 = a1[2];
      a1[2] = v17;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v17;
      if ((*(*a3 + 16))())
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v16)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*(*a3 + 16))())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v19 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v22 = 0;
      v23 = *v19;
      *v19 = 0;
      v30 = v23;
      for (i = v20; ; i -= 8)
      {
        v25 = a1 + i;
        v26 = *(a1 + i + 16);
        *(v25 + 16) = 0;
        *(v25 + 24) = v26;
        if (v22)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v22);
        }

        if (i == -16)
        {
          v27 = a1;
          goto LABEL_43;
        }

        if (((*(*a3 + 16))() & 1) == 0)
        {
          break;
        }

        v22 = *(v25 + 16);
      }

      v27 = (a1 + i + 16);
LABEL_43:
      v28 = *v27;
      *v27 = v30;
      if (v28)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v28);
      }

      if (++v21 == 8)
      {
        return v19 + 1 == a2;
      }
    }

    v20 += 8;
    if (++v19 == a2)
    {
      return 1;
    }
  }
}

long double TI::CP::Search::key_deviation_cost(uint64_t a1, unsigned int a2, CGRect *a3)
{
  v6 = (a1 + 56);
  v7 = (*(a1 + 56) + 48 * a2);
  v8 = *v7;
  v9 = v7[1];
  x = a3[3].origin.x;
  y = a3[3].origin.y;
  if (CGRectGetWidth(a3[2]) > *(a1 + 312) * 3.0)
  {
    v12 = CGRectGetMinX(a3[2]) + *(a1 + 312);
    v13 = CGRectGetMaxX(a3[2]) - *(a1 + 312);
    if (v8 <= v13)
    {
      v13 = v8;
    }

    if (v8 >= v12)
    {
      x = v13;
    }

    else
    {
      x = v12;
    }
  }

  v14 = *(a1 + 320);
  v15 = *(a1 + 496);
  v16 = *(a1 + 464);
  if (a2)
  {
    if (TI::CP::Path::inflection_point_count(v6, a2, a2))
    {
      v17 = 488;
    }

    else
    {
      v17 = 472;
    }
  }

  else
  {
    v17 = 480;
  }

  v18 = v14 * hypot(x - v8, y - v9);
  if (v15 < v18)
  {
    v18 = v15;
  }

  return *(a1 + 432) * -(pow(v18, v16) * *(a1 + v17));
}

void std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double TI::CP::Search::path_length(TI::CP::Search *this)
{
  v1 = *(this + 14);
  if (*(this + 13) == v1)
  {
    return 0.0;
  }

  else
  {
    return *(v1 - 16);
  }
}

unsigned int *TI::CP::Search::set_typing_model(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 176);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 176) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 40))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TI::CP::Search::reset_path(TI::CP::Search *this)
{
  *(this + 8) = *(this + 7);
  *(this + 11) = *(this + 10);
  *(this + 14) = *(this + 13);
  *(this + 17) = *(this + 16);
  *(this + 152) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v2 = *(this + 41);
  v3 = *(this + 42);
  while (v3 != v2)
  {
    v3 -= 3;
    v6 = v3;
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  *(this + 42) = v2;
  std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100](this + 44);
  v4 = *(this + 47);
  v5 = *(this + 48);
  while (v5 != v4)
  {
    v5 -= 3;
    v6 = v5;
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  *(this + 48) = v4;
  *(this + 42) = 7;
}

double TI::CP::Search::last_touch(TI::CP::Search *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  v3 = (v2 - 40);
  v4 = v1 == v2;
  if (v1 == v2)
  {
    v5 = MEMORY[0x277CBF348];
  }

  else
  {
    v5 = v2 - 48;
  }

  v6 = (MEMORY[0x277CBF348] + 8);
  if (!v4)
  {
    v6 = v3;
  }

  v7 = *v6;
  return *v5;
}

void TI::CP::Search::add_touch(TI::CP::Search *this, int a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  if (!a2 && *(this + 152) == 1)
  {
    (*(*this + 56))(this);
  }

  if (*(this + 41) == *(this + 42))
  {
    TI::CP::Search::initialize_search(this);
  }

  v31.x = a3;
  v31.y = a4;
  v12 = TI::CP::PathResampler::append_and_resample((this + 16), v31, a5, a6, 0.0);
  v29 = a2;
  if (a2 == 2)
  {
    v13 = TI::CP::PathResampler::finalize((this + 16));
    if (v13 < v12)
    {
      v12 = v13;
    }
  }

  v14 = v12 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 42) - *(this + 41)) >> 3) > v14)
  {
    std::vector<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::resize(this + 41, v14);
    std::vector<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::resize(this + 47, v12);
  }

  while (1)
  {
    v16 = *(this + 41);
    v15 = *(this + 42);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
    if (v17 >= 1 - 0x5555555555555555 * ((*(this + 8) - *(this + 7)) >> 4))
    {
      break;
    }

    v18 = *(this + 43);
    if (v15 >= v18)
    {
      v20 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v16) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      v30[4] = this + 328;
      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v22);
      }

      v23 = 24 * v17;
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v19 = 24 * v17 + 24;
      v24 = *(this + 41);
      v25 = *(this + 42) - v24;
      v26 = (24 * v17 - v25);
      memcpy(v26, v24, v25);
      v27 = *(this + 41);
      *(this + 41) = v26;
      *(this + 42) = v19;
      v28 = *(this + 43);
      *(this + 43) = 0;
      v30[2] = v27;
      v30[3] = v28;
      v30[0] = v27;
      v30[1] = v27;
      std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(v30);
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
      v19 = (v15 + 3);
      v15[2] = 0;
    }

    *(this + 42) = v19;
    TI::CP::Search::step_search(this, v17 - 1, 0, (v19 - 24));
  }

  *(this + 42) = v29;
}

void (***TI::CP::Search::initialize_search(TI::CP::Search *this))(void, uint64_t *, char *)
{
  v3 = *(this + 42);
  v2 = *(this + 43);
  if (v3 >= v2)
  {
    v5 = *(this + 41);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v21[4] = this + 328;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v4 = 24 * v6 + 24;
    v11 = *(this + 41);
    v12 = *(this + 42) - v11;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), v11, v12);
    v14 = *(this + 41);
    *(this + 41) = v13;
    *(this + 42) = v4;
    v15 = *(this + 43);
    *(this + 43) = 0;
    v21[2] = v14;
    v21[3] = v15;
    v21[0] = v14;
    v21[1] = v14;
    std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(v21);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  *(this + 42) = v4;
  result = *(this + 22);
  if (result)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    (**result)(result, &v18, this + 400);
    if (v18)
    {
      v17 = *(this + 42);
      if (*v19)
      {
        atomic_fetch_add((*v19 + 8), 1u);
      }

      operator new();
    }

    return WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(&v18);
  }

  return result;
}

void std::__shared_ptr_emplace<TI::CP::SearchNodeRoot>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDDE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TI::CP::Search::~Search(TI::CP::Search *this)
{
  TI::CP::Search::~Search(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDDCB8;
  v2 = *(this + 51);
  if (v2 && *(this + 406) == 1)
  {
    free(v2);
  }

  v3 = *(this + 47);
  if (v3)
  {
    v4 = *(this + 48);
    v5 = *(this + 47);
    if (v4 != v3)
    {
      do
      {
        v4 -= 3;
        v21 = v4;
        std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v21);
      }

      while (v4 != v3);
      v5 = *(this + 47);
    }

    *(this + 48) = v3;
    operator delete(v5);
  }

  v21 = (this + 352);
  std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v21);
  v6 = *(this + 41);
  if (v6)
  {
    v7 = *(this + 42);
    v8 = *(this + 41);
    if (v7 != v6)
    {
      do
      {
        v7 -= 3;
        v21 = v7;
        std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](&v21);
      }

      while (v7 != v6);
      v8 = *(this + 41);
    }

    *(this + 42) = v6;
    operator delete(v8);
  }

  v21 = (this + 288);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v21);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 280));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 272));
  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 23);
  if (v12)
  {
    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }
  }

  v14 = *(this + 22);
  if (v14)
  {
    v15 = atomic_load(v14 + 2);
    if (v15 == 1)
    {
      (*(*v14 + 40))(v14);
    }

    else
    {
      atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    }
  }

  v16 = *(this + 16);
  if (v16)
  {
    *(this + 17) = v16;
    operator delete(v16);
  }

  v17 = *(this + 13);
  if (v17)
  {
    *(this + 14) = v17;
    operator delete(v17);
  }

  v18 = *(this + 10);
  if (v18)
  {
    *(this + 11) = v18;
    operator delete(v18);
  }

  v19 = *(this + 7);
  if (v19)
  {
    *(this + 8) = v19;
    operator delete(v19);
  }

  *this = &unk_283FDDD68;
  v20 = *(this + 1);
  if (v20)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v20);
  }
}

uint64_t TI::CP::Search::Search(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  *a1 = &unk_283FDDCB8;
  *(a1 + 8) = 0;
  v8 = *a4;
  v9 = a4[1];
  *(a1 + 48) = *(a4 + 4);
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  std::vector<TI::CP::PathSample>::vector[abi:nn200100]((a1 + 56), a4 + 5);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 80), a4 + 8);
  std::vector<TI::CP::PathSample>::vector[abi:nn200100]((a1 + 104), a4 + 11);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 128), a4 + 14);
  v10 = *(a4 + 17);
  *(a1 + 160) = *(a4 + 36);
  *(a1 + 152) = v10;
  *(a1 + 168) = 7;
  v11 = *a2;
  *a2 = 0;
  v12 = *a3;
  *a3 = 0;
  *(a1 + 176) = v11;
  *(a1 + 184) = v12;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 272));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 280));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 386) = 0u;
  *(a1 + 402) = 16;
  *(a1 + 406) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = xmmword_22CC88C00;
  *(a1 + 448) = xmmword_22CC88C10;
  *(a1 + 464) = xmmword_22CC88C20;
  *(a1 + 480) = xmmword_22CC88C30;
  *(a1 + 496) = xmmword_22CC88C40;
  *(a1 + 512) = xmmword_22CC88C50;
  *(a1 + 528) = xmmword_22CC88C60;
  *(a1 + 544) = xmmword_22CC88B70;
  *(a1 + 560) = 0x403E000000000000;
  *(a1 + 568) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 576) = _Q0;
  return a1;
}

uint64_t TI::CP::Search::extend_typing@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, unsigned int **a5@<X8>)
{
  v8 = result;
  if (*(a2 + 82) == 1)
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 96);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v34 = ___ZNK2TI2CP6Search13extend_typingEPKNS0_10SearchNodeERKN3WTF6RefPtrINS_8Favonius9LayoutKeyEEEj_block_invoke;
    v35 = &__block_descriptor_tmp_5_18847;
    v36 = a3;
    if (v10)
    {
      v12 = 8 * v10;
      v13 = &v11[v10];
      while (1)
      {
        result = (v34)(v33, v11);
        if (result)
        {
          break;
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          v11 = v13;
          break;
        }
      }

      v14 = v11;
      v11 = *(a2 + 96);
    }

    else
    {
      v14 = v11;
    }

    if (v14 == &v11[*(a2 + 88)])
    {
      if (*(*a3 + 40))
      {
        *a5 = 0;
        return result;
      }
    }

    else
    {
      v15 = *v14;
      *a5 = v15;
      if (v15)
      {
        atomic_fetch_add((v15 + 8), 1u);
        v16 = *a5;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(*a3 + 40);
      if (v17 == *(*(*(*v16 + 16))(v16) + 40))
      {
        result = (*(*v16 + 16))(v16);
        if (*result != *a3)
        {
          result = KB::String::equal((*result + 8), (*a3 + 8), 1);
          if ((result & 1) == 0)
          {
            v18 = *a3;
            v32 = v18;
            v19 = v16;
            if (v18)
            {
              atomic_fetch_add(v18, 1u);
              v19 = *a5;
            }

            (*(*v16 + 216))(&v29, v16, &v32);
            v20 = v29;
            v29 = 0;
            *a5 = v20;
            if (v19)
            {
              v21 = atomic_load(v19 + 2);
              if (v21 == 1)
              {
                (*(*v19 + 248))(v19);
              }

              else
              {
                atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
              }

              if (v29)
              {
                v27 = atomic_load(v29 + 2);
                if (v27 == 1)
                {
                  (*(*v29 + 248))();
                }

                else
                {
                  atomic_fetch_add(v29 + 2, 0xFFFFFFFF);
                }
              }
            }

            result = v32;
            if (v32)
            {
              return WTF::RefCounted<TI::Favonius::Key>::deref(v32);
            }
          }
        }

        return result;
      }

      v22 = atomic_load(v16 + 2);
      if (v22 == 1)
      {
        (*(*v16 + 248))(v16);
      }

      else
      {
        atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
      }
    }
  }

  result = TI::CP::Search::find_clone_in_prev_beam(v8, *(a2 + 64), *a3, a4);
  if (result)
  {
    v23 = *(result + 64);
    *a5 = v23;
    if (v23)
    {
      atomic_fetch_add((v23 + 8), 1u);
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v24 = *(a2 + 64);
    v25 = *a3;
    v28 = v25;
    if (v25)
    {
      atomic_fetch_add(v25, 1u);
    }

    (*(*v24 + 40))(v24, &v29, &v28);
    if (v28)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v28);
    }

    if ((*(**v30 + 160))())
    {
      v26 = *v30;
      *a5 = *v30;
      if (v26)
      {
        atomic_fetch_add(v26 + 2, 1u);
      }
    }

    else
    {
      *a5 = 0;
    }

    return WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(&v29);
  }

  return result;
}

BOOL ___ZNK2TI2CP6Search13extend_typingEPKNS0_10SearchNodeERKN3WTF6RefPtrINS_8Favonius9LayoutKeyEEEj_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 32);
  v3 = *(*(**a2 + 16))();

  return KB::ByteString::starts_with((v2 + 40), (v3 + 40));
}

uint64_t TI::CP::Search::find_clone_in_prev_beam(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 328) + 24 * a4;
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(*v5 + 32);
    if (v9)
    {
      if (*(v9 + 64) == a2)
      {
        if ((*(**v5 + 104))(*v5))
        {
          result = *v5;
          if (*(*v5 + 56) == a3)
          {
            break;
          }
        }
      }
    }

    v5 += 2;
    if (v5 == v6)
    {
      return 0;
    }
  }

  return result;
}

double TI::CP::Search::top_score(TI::CP::Search *this)
{
  v1 = *(this + 42);
  if (*(this + 41) == v1)
  {
    return -INFINITY;
  }

  else
  {
    return *(**(v1 - 24) + 72);
  }
}

double TI::CP::Search::path_deviation_cost(TI::CP::Search *this, unsigned int a2, unsigned int a3, int a4)
{
  v8 = *(this + 7);
  v9 = (v8 + 48 * a2);
  v10 = (v8 + 48 * a3);
  v11 = v10[4] - v9[4];
  v12 = hypot(*v10 - *v9, v10[1] - v9[1]);
  v13 = pow((v11 - v12) * *(this + 40), *(this + 56));
  v14 = *(this + 57);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, a4)) - v13 * v14);
}

unint64_t TI::CP::Search::skipped_inflection_point_count(TI::CP::Search *this, int a2, unsigned int a3, int a4)
{
  if (a2 + 2 > a3)
  {
    v7 = 0;
    if (!a4)
    {
      return v7;
    }

    return TI::CP::Path::inflection_point_count((this + 56), a3, a3) + v7;
  }

  v7 = TI::CP::Path::inflection_point_count((this + 56), a2 + 1, a3 - 1);
  if (a4)
  {
    return TI::CP::Path::inflection_point_count((this + 56), a3, a3) + v7;
  }

  return v7;
}

double TI::CP::Search::extended_path_deviation_cost(TI::CP::Search *this, unsigned int a2, unsigned int a3, CGPoint a4)
{
  y = a4.y;
  x = a4.x;
  v9 = *(this + 7);
  v10 = (v9 + 48 * a3);
  v11 = (v9 + 48 * a2);
  v12 = v10[4] - v11[4];
  v13 = v12 + hypot(a4.x - *v10, a4.y - v10[1]);
  v14 = hypot(x - *v11, y - v11[1]);
  v15 = pow((v13 - v14) * *(this + 40), *(this + 56));
  v16 = *(this + 57);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, 1)) - v15 * v16);
}

double TI::CP::Search::key_deviation_weight(TI::CP::Search *this, unsigned int a2)
{
  if (a2)
  {
    v3 = TI::CP::Path::inflection_point_count((this + 56), a2, a2);
    v4 = 488;
    if (!v3)
    {
      v4 = 472;
    }
  }

  else
  {
    v4 = 480;
  }

  return *(this + v4);
}

double TI::CP::Search::skipped_key_cost(TI::CP::Search *this, unsigned int a2)
{
  v3 = *(this + 63);
  if (a2)
  {
    v4 = TI::CP::Path::inflection_point_count((this + 56), a2, a2);
    v5 = 488;
    if (!v4)
    {
      v5 = 472;
    }
  }

  else
  {
    v5 = 480;
  }

  return -(v3 * *(this + v5)) * *(this + 54);
}

double TI::CP::Search::overshoot_cost(TI::CP::Search *this, unsigned int a2, unsigned int a3)
{
  v6 = pow((*(*(this + 7) + 48 * a3 + 32) - *(*(this + 7) + 48 * a2 + 32)) * *(this + 40), *(this + 64));
  v7 = *(this + 65);
  return *(this + 54) * (-(*(this + 66) * TI::CP::Search::skipped_inflection_point_count(this, a2, a3, 1)) - v6 * v7);
}

void TI::CP::Search::loop_cost(TI::CP::Search *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 39);
  v4 = *(this + 67) * v3;
  v5 = *(this + 7);
  v6 = *(v5 + 48 * a3 + 32) - *(v5 + 48 * a2 + 32);
  v7 = v3 * *(this + 68);
  if (v6 >= v4 && v6 <= v7)
  {
    hypot(*(v5 + 48 * a3) - *(v5 + 48 * a2), *(v5 + 48 * a3 + 8) - *(v5 + 48 * a2 + 8));
    *(v9 + 552);
  }
}

double TI::CP::Search::key_prediction_cost(TI::CP::Search *this, int a2)
{
  v2 = 584;
  if (!a2)
  {
    v2 = 576;
  }

  return -(*(this + v2) * *(this + 54));
}

void TI::CP::Search::append_debug_data_for_sample(uint64_t a1, __CFString *a2, uint64_t a3, TI::CP::SearchNode ***a4, int a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = (v9 + 48 * a3);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2] - *(v9 + 16);
  v35.x = *v11;
  v35.y = v13;
  TI::Favonius::KeyboardLayout::find_nearest_key(*(a1 + 8), v35, &__p);
  v15 = __p;
  v16 = TI::CP::Path::inflection_point_count(v10, a3, a3);
  v17 = v12 - v15[12];
  v18 = v13 - v15[13];
  LODWORD(__p) = 0x100000;
  WORD2(__p) = 0;
  BYTE6(__p) = 0;
  v31 = 0;
  v32 = 0;
  TI::Favonius::Key::append_debug_data(v15, &__p);
  v20 = v31;
  if (!v31)
  {
    v20 = &v32;
  }

  if (__p)
  {
    v21 = v20;
  }

  else
  {
    v21 = "";
  }

  v22 = "true";
  if (v16)
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (!a5)
  {
    v22 = "false";
  }

  KB::append_format(a2, "search %u @ (%.2f, %.2f) = '%s' + (%.2f, %.2f), t = %.2f, inflection_point = %s, final = %s:\n", v19, a3, *&v12, *&v13, v21, *&v17, *&v18, *&v14, v23, v22);
  if (v31 && BYTE6(__p) == 1)
  {
    free(v31);
  }

  v24 = *a4;
  v25 = a4[1];
  if (*a4 == v25)
  {
    goto LABEL_22;
  }

  do
  {
    (*(**v24 + 64))(&__p);
    if (v33 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v27 = TI::CP::SearchNode::score_at_sample_index(*v24, a3);
    KB::append_format(a2, "    %s (s=%g here)\n", v28, p_p, *&v27);
    if (v33 < 0)
    {
      operator delete(__p);
    }

    v24 += 2;
  }

  while (v24 != v25);
  if (v15)
  {
LABEL_22:
    WTF::RefCounted<TI::Favonius::Key>::deref(v15);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void TI::CP::Search::append_debug_data(TI::CP::Search *this, __CFString *a2, const char *a3)
{
  KB::append_format(a2, "CONTINUOUS PATH SEARCH STATE:\n", a3);
  v5 = *(this + 8) - *(this + 7);
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
    do
    {
      v8 = (v6 + 1);
      if (v7 <= v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(this + 152);
      }

      TI::CP::Search::append_debug_data_for_sample(this, a2, v6, (*(this + 41) + 24 * v8), v9 & 1);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 4);
      v6 = v8;
    }

    while (v7 > v8);
  }
}

void KB::TypologyLogger::log_candidates(CFMutableStringRef *a1, uint64_t a2, unsigned int a3, uint64_t a4, KB::Candidate **a5, const __CFString *a6, KB::Candidate **a7, CFStringRef *a8)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0x100000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v13 = *(a2 + 8);
  if (!v13)
  {
    v13 = (a2 + 16);
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = "";
  }

  if (a3 > 5)
  {
    v15 = "Unknown";
  }

  else
  {
    v15 = off_278732D10[a3];
  }

  v16 = *(a4 + 8);
  if (!v16)
  {
    v16 = (a4 + 16);
  }

  if (*a4)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  KB::String::append_format(&v29, "Typed String: %s  Lookup Type: %s  State Description: %s\n", v14, v15, v17);
  v18 = v32;
  if (!v32)
  {
    v18 = &v33;
  }

  if (v29)
  {
    v19 = v18;
  }

  else
  {
    v19 = "";
  }

  CFStringAppendCString(a1[1], v19, 0x8000100u);
  KB::TypologyLogger::build_debug_candidate(a1, a5, "Raw Candidates", 1);
  if (a6)
  {
    CFStringAppend(a1[1], @"\n");
    CFStringAppend(a1[1], a6);
  }

  KB::TypologyLogger::build_debug_candidate(a1, a7, "Candidates", 0);
  if (*a8)
  {
    CFStringAppend(a1[1], @"\n");
    CFStringAppend(a1[1], *a8);
  }

  v20 = *a5;
  v21 = a5[1];
  if (*a5 != v21)
  {
    do
    {
      if (*(v20 + 943) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *(v20 + 115), *(v20 + 116));
      }

      else
      {
        v28 = *(v20 + 920);
      }

      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      v23 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        CFStringAppend(a1[1], @"-------------------------------\n");
        CFStringAppend(a1[1], @"Raw candidate tracelogs from LM\n");
        CFStringAppend(a1[1], @"\n");
        v24 = a1[1];
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v28;
        }

        else
        {
          v25 = v28.__r_.__value_.__r.__words[0];
        }

        v26 = CFStringCreateWithCString(0, v25, 0x8000100u);
        CFStringAppend(v24, v26);
        CFStringAppend(a1[1], @"\n");
        CFStringAppend(a1[1], @"-------------------------------\n");
        v23 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      if (v23 < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v20 = (v20 + 1000);
    }

    while (v20 != v21);
  }

  if (v32 && v31 == 1)
  {
    free(v32);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void KB::TypologyLogger::build_debug_candidate(CFMutableStringRef *this, KB::Candidate **a2, const char *a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    CFStringAppendFormat(this[1], 0, @"\n%s\n", a3);
    v7 = *a2;
    for (i = a2[1]; v7 != i; v7 = (v7 + 1000))
    {
      v9 = this[1];
      v12 = 0x100000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      KB::Candidate::append_debug_data(v7, v9, a4, &v12);
      if (v15)
      {
        v10 = v14 == 1;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        free(v15);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void KB::TypologyLogger::log_autocorrection_engine_state(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 256))(a2, *(a1 + 8));
  v3 = *(a1 + 8);

  CFStringAppend(v3, @"------------------------------\n");
}

void KB::TypologyLogger::~TypologyLogger(KB::TypologyLogger *this)
{
  *this = &unk_283FDE048;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE048;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
}

void *__getSBSSetTypingActiveSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_19045)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke_19046;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278732D80;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_19045 = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary_19045;
    if (SpringBoardServicesLibraryCore_frameworkLibrary_19045)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary_19045;
LABEL_5:
  result = dlsym(v2, "SBSSetTypingActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSSetTypingActiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_19046(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_19045 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPSPointerClientControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PointerUIServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PointerUIServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278732D68;
    v7 = 0;
    PointerUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PointerUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSPointerClientController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getPSPointerClientControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PointerUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PointerUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __TIGetKeyboardCompletionsShouldSharePrefixValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardCompletionsShouldSharePrefix" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardMaxWordsPerPredictionValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardMaxWordsPerPrediction" domain:@"com.apple.keyboard" defaultValue:&unk_28400BEF8];
}

void __TIGetKeyboardWordNgramModelAdaptationValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardWordNgramModelAdaptation" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardWordNgramModelValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardWordNgramModel" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void __TIGetKeyboardRetrocorrectionDisabledValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardRetrocorrectionDisabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

uint64_t __Block_byref_object_copy__19501(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TILanguageModelScheduleMaintenance()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    return +[TILanguageModelMaintainer sharedLanguageModelMaintainer];
  }

  return TIDispatchAsync();
}

void KB::CompositeCandidateFilter::filter_candidates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); v4 != i; v4 += 2)
  {
    v9 = *v4;
    v10 = v4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9 && (*a2 != a2[1] || a2[6] != a2[7] || a2[9] != a2[10]))
    {
      (*(*v9 + 24))(v9, a2, a3, a4);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

void KB::CompositeCandidateFilter::~CompositeCandidateFilter(KB::CompositeCandidateFilter *this)
{
  *this = &unk_283FDE1D8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE1D8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

__n128 KB::CompositeCandidateFilter::CompositeCandidateFilter(void *a1, __n128 *a2)
{
  *a1 = &unk_283FDE1D8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_283FDE1D8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

id getSRKeyboardProbabilityMetricClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSRKeyboardProbabilityMetricClass_softClass;
  v7 = getSRKeyboardProbabilityMetricClass_softClass;
  if (!getSRKeyboardProbabilityMetricClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSRKeyboardProbabilityMetricClass_block_invoke;
    v3[3] = &unk_278733760;
    v3[4] = &v4;
    __getSRKeyboardProbabilityMetricClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

Class __getSRKeyboardProbabilityMetricClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary_19737();
  result = objc_getClass("SRKeyboardProbabilityMetric");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRKeyboardProbabilityMetricClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return SensorKitLibrary_19737();
  }

  return result;
}

uint64_t SensorKitLibrary_19737()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SensorKitLibraryCore_frameworkLibrary_19740)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SensorKitLibraryCore_block_invoke_19741;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278732F20;
    v6 = 0;
    SensorKitLibraryCore_frameworkLibrary_19740 = _sl_dlopen();
    v1 = v4[0];
    v0 = SensorKitLibraryCore_frameworkLibrary_19740;
    if (SensorKitLibraryCore_frameworkLibrary_19740)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = SensorKitLibraryCore_frameworkLibrary_19740;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SensorKitLibraryCore_block_invoke_19741(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SensorKitLibraryCore_frameworkLibrary_19740 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSRKeyboardMetaInformationIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationVersionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationVersionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationVersionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationWidthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationWidthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationWidthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationHeightKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationHeightKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationHeightKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationInputModesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationInputModesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationInputModesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary_19737();
  result = dlsym(v2, "SRKeyboardMetaInformationSessionIdentifiersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetaInformationSessionIdentifiersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSRKeyboardMetricsClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary_19737();
  result = objc_getClass("SRKeyboardMetrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRKeyboardMetricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(TISKSessionStats *)v3 _roundedSessionInterval];
  }

  return result;
}

KB::StaticDictionaryCursor *KB::StaticDictionaryCursor::StaticDictionaryCursor(KB::StaticDictionaryCursor *this, const KB::StaticDictionary *a2)
{
  *(this + 12) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  v3 = *(a2 + 1) - *a2;
  *(this + 5) = v3 >> 3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = *(*a2 + 8 * v5);
      RootCursor = LXLexiconCreateRootCursor();
      v8 = *(this + v5);
      if (v8)
      {
        CFRelease(v8);
      }

      *(this + v5) = RootCursor;
      *(this + v5 + 6) = *(*(a2 + 3) + 4 * v5);
      ++v5;
    }

    while (v5 < *(this + 5));
  }

  *(this + 12) = 0;
  return this;
}

float KB::StaticDictionaryCursor::conditional_probability(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if (*(this + v3))
    {
      LXCursorConditionalProbability();
      *&v5 = v5;
      v4 = v4 + (*(this + v3 + 6) * __exp10f(*&v5));
      v1 = *(this + 5);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

float KB::StaticDictionaryCursor::termination_probability(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if (*(this + v3))
    {
      LXCursorTerminationProbability();
      *&v5 = v5;
      v6 = __exp10f(*&v5);
      v4 = v4 + (KB::StaticDictionaryCursor::probability_of_lexicon(this, v3) * v6);
      v1 = *(this + 5);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

float KB::StaticDictionaryCursor::probability_of_lexicon(KB::StaticDictionaryCursor *this, uint64_t a2)
{
  v5 = this + 24;
  v4 = *this;
  v6 = *&v5[4 * a2];
  if (!LXCursorIsRoot())
  {
    v7 = KB::StaticDictionaryCursor::conditional_probability(this);
    if (v7 > 0.0)
    {
      v8 = v7;
      v9 = *(this + a2);
      LXCursorConditionalProbability();
      *&v10 = v10;
      return (*&v5[4 * a2] * __exp10f(*&v10)) / v8;
    }
  }

  return v6;
}

float KB::StaticDictionaryCursor::advance(KB::StaticDictionaryCursor *this, const KB::String *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  MEMORY[0x28223BE20]();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v8 = 0;
    do
    {
      *&v6[4 * v8] = KB::StaticDictionaryCursor::probability_of_lexicon(this, v8);
      ++v8;
      v9 = *(this + 5);
    }

    while (v8 < v9);
    if (v9)
    {
      memcpy(this + 24, v6, 4 * v9);
      if (*(this + 5))
      {
        v10 = 0;
        do
        {
          if (*(this + v10))
          {
            *(a2 + 1);
            *a2;
            v11 = LXCursorCreateByAdvancingWithUTF8();
            v12 = *(this + v10);
            if (v12)
            {
              CFRelease(v12);
            }
          }

          else
          {
            v11 = 0;
          }

          *(this + v10++) = v11;
        }

        while (v10 < *(this + 5));
      }
    }
  }

  *(this + 12) = KB::String::last(a2);
  v13 = *MEMORY[0x277D85DE8];

  return KB::StaticDictionaryCursor::conditional_probability(this);
}

float KB::StaticDictionaryCursor::advance(KB::StaticDictionaryCursor *this, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  KB::String::String(v7, a2);
  v3 = KB::StaticDictionaryCursor::advance(this, v7);
  if (v8)
  {
    v4 = v7[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

__n128 __Block_byref_object_copy__20014(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

const void **___ZNK2KB22StaticDictionaryCursor8childrenEv_block_invoke(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  TraversedCharacter = LXCursorLastTraversedCharacter();
  v6 = *(*(a1 + 32) + 8);
  v7 = v6[5];
  v8 = v6[6];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 0x40000000;
  v56 = ___ZNK2KB22StaticDictionaryCursor8childrenEv_block_invoke_2;
  v57 = &__block_descriptor_tmp_20018;
  v58 = TraversedCharacter;
  if (v7 != v8)
  {
    while (((v56)(v55, v7) & 1) == 0)
    {
      v7 += 56;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v6 = *(*(a1 + 32) + 8);
    v8 = v6[6];
  }

  v9 = v6 + 5;
  if (v7 != v8)
  {
    if (TraversedCharacter >= *(v7 + 48))
    {
      return KB::retain_ptr<__CFDictionary const*>::operator=((v7 + 8 * *(a1 + 48)), a2);
    }

    v12 = v6[7];
    v11 = v6 + 7;
    v10 = v12;
    v51 = v11 - 1;
    v52 = v4 + 10;
    v53 = TraversedCharacter;
    if (v8 < v12)
    {
      v54 = a2;
      v64 = v9;
      v13 = v4[10];
      memset(v63, 0, 36);
      *&v63[40] = v13;
      *&v63[48] = 0;
      v14 = v8 - 56;
      v15 = v8;
      if (v8 >= 0x38)
      {
        v16 = v8 - 56;
        v15 = v8;
        do
        {
          for (i = 0; i != 24; i += 8)
          {
            v18 = *(v16 + i);
            *(v15 + i) = v18;
            if (v18)
            {
              CFRetain(v18);
              *(v15 + i) = v18;
            }
          }

          v19 = *(v16 + 24);
          *(v15 + 36) = *(v16 + 36);
          *(v15 + 24) = v19;
          v16 += 56;
          v15 += 56;
        }

        while (v16 < v8);
      }

      *v51 = v15;
      if (v14 != v7)
      {
        v20 = (v8 - 112);
        do
        {
          v21 = v14 - 56;
          v22 = -56;
          v23 = v20;
          do
          {
            v24 = *v23++;
            KB::retain_ptr<__CFDictionary const*>::operator=((v8 + v22), v24);
            v22 += 8;
          }

          while (v22 != -32);
          v25 = *(v14 - 32);
          *(v8 - 20) = *(v14 - 20);
          *(v8 - 32) = v25;
          v20 -= 7;
          v8 -= 56;
          v14 -= 56;
        }

        while (v21 != v7);
      }

      v26 = 0;
      v27 = v7;
      do
      {
        v28 = KB::retain_ptr<__CFDictionary const*>::operator=(v27, *&v63[8 * v26++]);
        v27 = v28 + 1;
      }

      while (v26 != 3);
      *(v7 + 24) = *&v63[24];
      *(v7 + 36) = *&v63[36];
      v29 = 16;
      a2 = v54;
      do
      {
        v30 = *&v63[v29];
        if (v30)
        {
          CFRelease(v30);
        }

        *&v63[v29] = 0;
        v29 -= 8;
      }

      while (v29 != -8);
      TraversedCharacter = v53;
      v31 = v4 + 10;
      goto LABEL_44;
    }

LABEL_31:
    v34 = *(v11 - 2);
    v35 = v7 - v34;
    v36 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v34) >> 3) + 1;
    if (v36 > 0x492492492492492)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v37 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v34) >> 3);
    if (2 * v37 > v36)
    {
      v36 = 2 * v37;
    }

    if (v37 >= 0x249249249249249)
    {
      v38 = 0x492492492492492;
    }

    else
    {
      v38 = v36;
    }

    v62 = v9;
    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(v38);
    }

    v39 = 8 * (v35 >> 3);
    v59 = 0;
    v60 = v39;
    v61 = v39;
    v40 = v39;
    if (!(0x6DB6DB6DB6DB6DB7 * (v35 >> 3)))
    {
      if (v35 < 1)
      {
        *&v63[32] = v9;
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(v7 == v34);
      }

      v39 -= 56 * ((0x6DB6DB6DB6DB6DB7 * (v35 >> 3) + 1) >> 1);
      v60 = v39;
      v40 = v39;
    }

    v41 = *v52;
    *(v40 + 32) = 0;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 40) = v41;
    *(v40 + 48) = 0;
    *&v61 = v40 + 56;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(v7, *v51, v40 + 56);
    v42 = v60;
    v43 = v61 + *v51 - v7;
    *v51 = v7;
    v44 = v42 + *v9 - v7;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(*v9, v7, v44);
    v45 = *v9;
    *v9 = v44;
    *v51 = v43;
    v31 = v52;
    v46 = *v11;
    *v11 = *(&v61 + 1);
    *&v61 = v45;
    *(&v61 + 1) = v46;
    v59 = v45;
    v60 = v45;
    std::__split_buffer<KB::StaticDictionaryCursor>::~__split_buffer(&v59);
    v7 = v39;
    TraversedCharacter = v53;
    goto LABEL_44;
  }

  v31 = v4 + 10;
  v32 = v6[7];
  v11 = v6 + 7;
  v10 = v32;
  if (v8 >= v32)
  {
    v51 = v11 - 1;
    v52 = v4 + 10;
    v53 = TraversedCharacter;
    goto LABEL_31;
  }

  v33 = *v31;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 40) = v33;
  *(v8 + 48) = 0;
  *(v11 - 1) = v8 + 56;
LABEL_44:
  *(v7 + 48) = TraversedCharacter;
  if (*v31)
  {
    v47 = 0;
    v48 = 1;
    do
    {
      *(v7 + 24 + 4 * v47) = KB::StaticDictionaryCursor::probability_of_lexicon(v4, v47);
      v47 = v48;
    }

    while (*(v4 + 5) > v48++);
  }

  return KB::retain_ptr<__CFDictionary const*>::operator=((v7 + 8 * *(a1 + 48)), a2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<KB::StaticDictionaryCursor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = 0;
    *(a1 + 16) = i - 56;
    v5 = i - 40;
    do
    {
      v6 = *(v5 + v4);
      if (v6)
      {
        CFRelease(v6);
      }

      *(v5 + v4) = 0;
      v4 -= 8;
    }

    while (v4 != -24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::StaticDictionaryCursor>,KB::StaticDictionaryCursor*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        v8 = *(v6 + i);
        *(a3 + i) = v8;
        if (v8)
        {
          CFRetain(v8);
          *(a3 + i) = v8;
        }
      }

      v9 = *(v6 + 24);
      *(a3 + 36) = *(v6 + 36);
      *(a3 + 24) = v9;
      v6 += 56;
      a3 += 56;
    }

    while (v6 != a2);
    do
    {
      for (j = 16; j != -8; j -= 8)
      {
        v11 = *(v5 + j);
        if (v11)
        {
          CFRelease(v11);
        }

        *(v5 + j) = 0;
      }

      v5 += 56;
    }

    while (v5 != a2);
  }
}

void KB::StaticDictionaryCursor::derive_words(KB::StaticDictionaryCursor *this, uint64_t a2, uint64_t a3)
{
  if (*a3 != *(a3 + 8))
  {
    v5 = **(a3 + 48);
  }

  if (*(this + 5))
  {
    v6 = 0;
    do
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x4002000000;
      v16 = __Block_byref_object_copy__5;
      v17 = __Block_byref_object_dispose__6;
      memset(v18, 0, sizeof(v18));
      v7 = *(*(a3 + 48) + 4 * v6);
      v8 = KB::StaticDictionaryCursor::termination_probability(this);
      KB::StaticDictionaryCursor::probability_of_lexicon(this, v6);
      if (v8 > 0.0)
      {
        v9 = *(this + v6);
        LXCursorTerminationProbability();
        *&v10 = v10;
        __exp10f(*&v10);
      }

      v11 = *(this + v6);
      LXCursorEnumerateEntries();
      KB::StaticDictionary::merge_words(a2, v14 + 5);
      _Block_object_dispose(&v13, 8);
      v19 = v18;
      std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v19);
      ++v6;
    }

    while (v6 < *(this + 5));
  }
}

__n128 __Block_byref_object_copy__5(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t ___ZNK2KB22StaticDictionaryCursor12derive_wordsERNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = v3[6];
  v5 = v3[7];
  if (v4 >= v5)
  {
    v8 = v3[5];
    v9 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v8) >> 4);
    if (v9 + 1 > 0x111111111111111)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - v8) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x88888888888888)
    {
      v12 = 0x111111111111111;
    }

    else
    {
      v12 = v11;
    }

    v21[4] = v3 + 5;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v12);
    }

    v13 = 240 * v9;
    KB::Word::Word(v13, a2, *(a1 + 40));
    v7 = v13 + 240;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v13 + v14 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Word>,KB::Word*>(v14, v15, v16);
    v17 = v3[5];
    v3[5] = v16;
    v3[6] = v13 + 240;
    v18 = v3[7];
    v3[7] = 0;
    v21[2] = v17;
    v21[3] = v18;
    v21[0] = v17;
    v21[1] = v17;
    result = std::__split_buffer<KB::Word>::~__split_buffer(v21);
  }

  else
  {
    result = KB::Word::Word(v4, a2, *(a1 + 40));
    v7 = result + 240;
  }

  v3[6] = v7;
  v19 = *(*(*(a1 + 32) + 8) + 48);
  *(v19 - 192) = *(v19 - 192) * *(a1 + 44);
  *(v19 - 136) |= 0x40000u;
  v20 = *(a1 + 40);
  if ((v20 + 1) >= 2 && v20 != *(a1 + 48))
  {
    *(v19 - 48) = 1;
  }

  return result;
}

void ___ZNK2KB22StaticDictionaryCursor15derive_word_idsERNSt3__16vectorI9TITokenIDNS1_9allocatorIS3_EEEERKNS_16StaticDictionaryE_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 48) + 4 * a1[6]);
  if (a2)
  {
    TokenID = LXEntryGetTokenID();
    if (TokenID)
    {
      v5 = TokenID;
    }

    else
    {
      v5 = 500;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v7 >= v6)
  {
    v9 = *v2;
    v10 = v7 - *v2;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
    }

    v15 = (8 * v11);
    *v15 = v3;
    v15[1] = v5;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    v16 = *v2;
    *v2 = 0;
    *(v2 + 8) = v8;
    *(v2 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = v3;
    v7[1] = v5;
    v8 = (v7 + 2);
  }

  *(v2 + 8) = v8;
}

uint64_t KB::StaticDictionaryCursor::valid(KB::StaticDictionaryCursor *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * v1;
  while (1)
  {
    v3 = *this;
    if (*this)
    {
      break;
    }

    this = (this + 8);
    v2 -= 8;
    if (!v2)
    {
      return 0;
    }
  }

  CFRetain(*this);
  CFRelease(v3);
  return 1;
}

uint64_t TI::Favonius::SearchNodeTranspositionGeometryExtensions::branch_at_current_bound@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = this;
    v5 = *(this + 48);
    v6 = *(v5 + 8 * v3 - 8);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      v3 = *(this + 40);
      v5 = *(this + 48);
    }

    v7 = v3 - 1;
    v8 = *(v5 + 8 * (v3 - 1));
    if (v8)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v8);
    }

    *(v4 + 40) = v7;
    TI::Favonius::SearchNodeTranspositionGeometryExtensions::pop_nonletter_keys(v4);
    v9 = *(v4 + 40);
    if (v9)
    {
      v10 = *(v4 + 72) + *(*(*(v4 + 48) + 8 * v9 - 8) + 32);
    }

    else
    {
      v10 = -INFINITY;
    }

    *(v4 + 24) = v10;
    v11 = *(v4 + 32);
    v12 = *(v4 + 88);
    if (v12)
    {
      v13 = *(v4 + 80);
      if (!v13 || (atomic_fetch_add((v13 + 8), 1u), (v12 = *(v4 + 88)) != 0))
      {
        atomic_fetch_add(v12, 1u);
      }

      v14 = *(v4 + 16);
      if (v14)
      {
        atomic_fetch_add((v14 + 8), 1u);
      }

      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        v15 = *(v4 + 64);
        TI::Favonius::SearchNodeTransposition::create();
      }

      v19 = *(v4 + 64);
      TI::Favonius::SearchNodeTransposition::create();
    }

    v16 = *(v4 + 80);
    if (v16)
    {
      atomic_fetch_add((v16 + 8), 1u);
    }

    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v17 = *(v4 + 16);
    if (v17)
    {
      atomic_fetch_add((v17 + 8), 1u);
    }

    v18 = *(v4 + 64);
    operator new();
  }

  *a2 = 0;
  return this;
}

uint64_t TI::Favonius::SearchNodeTranspositionGeometryExtensions::pop_nonletter_keys(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = this;
    v3 = v1 - 1;
    do
    {
      this = *(*(v2 + 48) + 8 * v3);
      v4 = *(*(this + 8) + 60);
      if (v4 & 2) != 0 || (v4 & 0x20) != 0 && (*(v2 + 68))
      {
        break;
      }

      this = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(this);
      *(v2 + 40) = v3--;
    }

    while (v3 != -1);
  }

  return this;
}

void TI::Favonius::SearchNodeTranspositionGeometryExtensions::~SearchNodeTranspositionGeometryExtensions(TI::Favonius::SearchNodeTranspositionGeometryExtensions *this)
{
  TI::Favonius::SearchNodeTranspositionGeometryExtensions::~SearchNodeTranspositionGeometryExtensions(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE208;
  v2 = *(this + 11);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    v4 = atomic_load(v3 + 2);
    if (v4 == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
    }
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(this + 5);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = atomic_load(v5 + 2);
    if (v6 == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

void ___ZN2KB20UserDictionaryLoader14dispatch_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.textInput.userDictionaryLoader", attr);
  v2 = KB::UserDictionaryLoader::dispatch_queue(void)::queue;
  KB::UserDictionaryLoader::dispatch_queue(void)::queue = v1;
}

__n128 __Block_byref_object_copy__20073(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__20074(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_a8_40c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 46) == 1)
    {
      free(v2);
    }
  }
}

void __destroy_helper_block_a8_48c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 54) == 1)
    {
      free(v2);
    }
  }
}

void ___ZN2KB20UserDictionaryLoader15create_and_loadERKNS_6StringE_block_invoke_14(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = TIUserDictionaryOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Done loading UserDictionary trie installing on main thread.", "create_and_load_block_invoke"];;
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v4 = *(a1[4] + 8);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(v4 + 48);
      if (v8)
      {
        v10 = a1[5];
        v9 = a1[6];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v8[1];
        *v8 = v10;
        v8[1] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_40c47_ZTSNSt3__110shared_ptrIN2KB14UserDictionaryEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_a8_40c47_ZTSNSt3__110shared_ptrIN2KB14UserDictionaryEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<KB::UserDictionary *,std::shared_ptr<KB::UserDictionary>::__shared_ptr_default_delete<KB::UserDictionary,KB::UserDictionary>,std::allocator<KB::UserDictionary>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<KB::String,KB::String>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::String>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::String>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::String>>>::~__hash_table(v1 + 48);
    v2 = *(v1 + 24);
    while (v2)
    {
      v3 = v2;
      v2 = *v2;
      v6 = (v3 + 6);
      std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v6);
      v4 = v3[3];
      if (v4 && *(v3 + 22) == 1)
      {
        free(v4);
      }

      operator delete(v3);
    }

    v5 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<KB::UserDictionary *,std::shared_ptr<KB::UserDictionary>::__shared_ptr_default_delete<KB::UserDictionary,KB::UserDictionary>,std::allocator<KB::UserDictionary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::__shared_ptr_pointer<KB::UserDictionaryLoader *,std::shared_ptr<KB::UserDictionaryLoader>::__shared_ptr_default_delete<KB::UserDictionaryLoader,KB::UserDictionaryLoader>,std::allocator<KB::UserDictionaryLoader>>::__on_zero_shared(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(result + 24);
  if (v1)
  {
    v2 = TIUserDictionaryOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Destructing UserDictionaryLoader", "~UserDictionaryLoader"];
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(v4);
      if (WeakRetained)
      {
        v6 = +[TIUserDictionaryServer sharedInstance];
        [v6 removeObserver:WeakRetained];
      }
    }

    v7 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    std::unique_ptr<KB::WeakHolder>::reset[abi:nn200100]((v1 + 16), 0);
    v8 = *(v1 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x2318BE270);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__shared_ptr_pointer<KB::UserDictionaryLoader *,std::shared_ptr<KB::UserDictionaryLoader>::__shared_ptr_default_delete<KB::UserDictionaryLoader,KB::UserDictionaryLoader>,std::allocator<KB::UserDictionaryLoader>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

__n128 __Block_byref_object_copy__20156(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

BOOL KB::character_is_letter_modifier(UChar32 c)
{
  result = 1;
  if (c <= 729)
  {
    if ((c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0)
    {
      return result;
    }

    return u_charType(c) == 4;
  }

  if (c != 730 && c != 732 && c != 901)
  {
    return u_charType(c) == 4;
  }

  return result;
}

void KB::MutableLexiconWrapper::~MutableLexiconWrapper(KB::MutableLexiconWrapper *this)
{
  KB::MutableLexiconWrapper::~MutableLexiconWrapper(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE3A8;
  v2 = *(this + 18);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 20);
  if (v3 && *(this + 158) == 1)
  {
    free(v3);
  }

  *this = &unk_283FDF030;
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](this + 112);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](this + 80);
  v4 = *(this + 7);
  if (v4 && *(this + 54) == 1)
  {
    free(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    if (*(this + 14) == 1)
    {
      free(v6);
    }
  }
}

KB::MutableLexiconWrapper *KB::MutableLexiconWrapper::MutableLexiconWrapper(KB::MutableLexiconWrapper *this, const KB::String *a2, const KB::String *a3)
{
  v15[4] = *MEMORY[0x277D85DE8];
  *this = &unk_283FDF030;
  KB::String::String((this + 8), a2);
  *(this + 5) = 0;
  KB::String::String((this + 48), a2);
  *(this + 10) = &unk_283FDEFA0;
  *(this + 11) = 0;
  *(this + 13) = this + 80;
  *(this + 14) = &unk_283FDEFE8;
  *(this + 15) = 0;
  *(this + 17) = this + 112;
  *this = &unk_283FDE3A8;
  *(this + 18) = KB::MutableLexiconWrapper::create_mutable_lexicon(a2, a3, v6);
  KB::String::String((this + 152), a3);
  KB::CollatorWrapper::CollatorWrapper(&cf, *(this + 18), a2);
  v7 = *(this + 5);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = cf;
  cf = 0;
  *(this + 5) = v8;
  KB::String::operator=(this + 48, v12);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100](this + 80, v14);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100](this + 112, v15);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v15);
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v14);
  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t KB::MutableLexiconWrapper::create_mutable_lexicon(KB::MutableLexiconWrapper *this, const KB::String *a2, const KB::String *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*this)
  {
    v6 = *MEMORY[0x277D23168];
    KB::cf_string_impl<KB::String>(&value, this);
    v7 = value;
    CFDictionarySetValue(Mutable, v6, value);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (*a2)
  {
    v8 = *MEMORY[0x277D23148];
    KB::cf_string_impl<KB::String>(&value, a2);
    v9 = value;
    CFDictionarySetValue(Mutable, v8, value);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  KB::String::String(&value, "TextInput-Dynamic.");
  KB::String::append(&value, this);
  v10 = *MEMORY[0x277D23178];
  KB::cf_string_impl<KB::String>(&v21, &value);
  v11 = v21;
  CFDictionarySetValue(Mutable, v10, v21);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = LXLexiconCreateMutable();
  if (!v12)
  {
    LODWORD(v21) = 0x100000;
    WORD2(v21) = 0;
    BYTE6(v21) = 0;
    v22 = 0;
    v23 = 0;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v13 = TIOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = &v23;
      if (v22)
      {
        v16 = v22;
      }

      if (!v21)
      {
        v16 = "";
      }

      *buf = 136315394;
      v18 = "create_mutable_lexicon";
      v19 = 2080;
      v20 = v16;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%s Unable to create LXMutableLexicon: %s", buf, 0x16u);
    }

    if (v22 && BYTE6(v21) == 1)
    {
      free(v22);
    }
  }

  LXLexiconRepositoryAddOrUpdate();
  if (v25 && BYTE6(value) == 1)
  {
    free(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

unsigned __int16 *KB::MutableLexiconWrapper::default_lexicon_name@<X0>(KB::MutableLexiconWrapper *this@<X0>, KB::String *a2@<X8>)
{
  v4 = KB::String::String(a2, "TextInput-Dynamic.");

  return KB::String::append(v4, this);
}

uint64_t KB::MutableLexiconWrapper::store(KB::MutableLexiconWrapper *this)
{
  if ((*(*this + 16))(this))
  {
    v2 = *(this + 18);
    LXLexiconWrite();
  }

  return 1;
}

uint64_t KB::MutableLexiconWrapper::clear(KB::MutableLexiconWrapper *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    v3 = *(this + 18);

    return MEMORY[0x282181F68](v3);
  }

  return result;
}

void KB::MutableLexiconWrapper::increment_usage_count(KB::MutableLexiconWrapper *this, const KB::String *a2)
{
  if ((*(*this + 16))(this))
  {
    v4 = *(this + 18);
    KB::cf_string_impl<KB::String>(&v6, a2);
    v5 = v6;
    LXLexiconIncrementUsageCount();
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t KB::MutableLexiconWrapper::add_entry(KB::MutableLexiconWrapper *this, const KB::String *a2)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  v4 = *(this + 18);
  KB::cf_string_impl<KB::String>(&v8, a2);
  v5 = v8;
  v6 = LXLexiconAdd();
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t KB::MutableLexiconWrapper::add_entry_with_token_id(KB::MutableLexiconWrapper *this, const KB::String *a2, double a3)
{
  if (!(*(*this + 16))(this))
  {
    return 0;
  }

  KB::cf_string_impl<KB::String>(&v10, a2);
  v5 = v10;
  Mutable = LXEntryCreateMutable();
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *(this + 18);
  v8 = LXLexiconAddEntryWithTokenID();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

void KB::MutableLexiconWrapper::write_debug_dump(KB::MutableLexiconWrapper *this, const KB::String *a2)
{
  if ((*(*this + 16))(this))
  {
    KB::cf_string_impl<KB::String>(&filePath, a2);
    v4 = filePath;
    v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 18);
      LXLexiconWriteDebugDump();
      CFRelease(v6);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(AddressBookTrieLoaderImpl *this)
{
  AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(this);

  JUMPOUT(0x2318BE270);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Removing contact observer", "~AddressBookTrieLoaderImpl"];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v4 = +[TITransientLexiconManager sharedInstance];
  [v4 removeContactObserver:*(this + 6)];

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void ___ZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 32))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v8 = *MEMORY[0x277D23168];
        KB::cf_string_impl<KB::String>(value, (a1 + 48));
        v9 = *value;
        CFDictionaryAddValue(Mutable, v8, *value);
        if (v9)
        {
          CFRelease(v9);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], @"TextInput-AddressBook");
        Transient = LXLexiconCreateTransient();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (Transient)
        {
          v10 = TIPersonalizationContactOSLogFacility();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding %ld contacts to lexicon", "register_as_contact_observer_block_invoke", objc_msgSend(v3, "count")];
            *value = 138412290;
            *&value[4] = v11;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "%@", value, 0xCu);
          }

          KB::StaticDictionary::create(v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c50_ZTSNSt3__18weak_ptrI25AddressBookTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 && *(a1 + 118) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 88);
  if (v3 && *(a1 + 86) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 54) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

KB::String *__copy_helper_block_a8_32c50_ZTSNSt3__18weak_ptrI25AddressBookTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  KB::String::String((a1 + 6), (a2 + 6));
  KB::String::String((a1 + 10), (a2 + 10));

  return KB::String::String((a1 + 14), (a2 + 14));
}

uint64_t __Block_byref_object_copy__20778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void addName(void *a1, long double a2, uint64_t a3, uint64_t a4, uint64_t a5, KB::StaticDictionary *a6, int a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = v12;
  if (v12 && [(__CFString *)v12 length]<= 0x100)
  {
    v40 = a7;
    v55 = 0;
    v56 = 0;
    v57 = " ,:;";
    v54 = 1048580;
    v58 = 0;
    KB::utf8_string(v13, &v52);
    KB::sbs_string_tokenize(&v52, &v54, &v43);
    v15 = v43;
    v14 = v44;
    if (v43 != v44)
    {
      v16 = (a8 + 8);
      if (a4)
      {
        v17 = (v44 - v43) > 0x20;
      }

      else
      {
        v17 = 1;
      }

      v18 = v17;
      v41 = v18;
      log10(a2);
      do
      {
        KB::String::String(&v50, v15);
        v47 = 0.0;
        KB::StaticDictionary::candidates_for_string(a6, &v50, &v47, &v45);
        v19 = v47;
        if ((KB::StaticDictionary::contains_surfaceform_insertion_with_candidates(&v45, 0, v47) & 1) == 0)
        {
          v21 = KB::count_letters_if_word(&v50, v20);
          if (v21 == 2)
          {
            v23 = v45;
            v24 = v46;
            if (v19 > 0.002 && v46 != v45)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v21 < 2)
            {
              goto LABEL_12;
            }

            v23 = v45;
            v24 = v46;
          }

          v26 = v47;
          if (v24 == v23)
          {
            v33 = v47 > 0.0;
          }

          else
          {
            v27 = TILocaleIdentifierForLexiconID(v23[4].info);
            std::string::basic_string[abi:nn200100]<0>(__p, v27);
            v28 = *v16;
            v29 = 0.003;
            if (*v16)
            {
              v30 = v16;
              do
              {
                v31 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v28 + 4, __p);
                if ((v31 & 0x80u) == 0)
                {
                  v30 = v28;
                }

                v28 = *(v28 + ((v31 >> 4) & 8));
              }

              while (v28);
              v29 = 0.003;
              if (v30 != v16)
              {
                v29 = 0.003;
                if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v30 + 4) & 0x80) == 0)
                {
                  v29 = 0.003;
                  if (v30[14] != 0.0)
                  {
                    v29 = v30[14];
                  }
                }
              }
            }

            if (v49 < 0)
            {
              operator delete(__p[0]);
            }

            if (v26 > v29 && v46 != v45)
            {
              goto LABEL_12;
            }

            v33 = v26 > 0.0;
            if (v26 > 0.0 && v46 != v45)
            {
              v34 = WORD2(v50);
              if (!WORD2(v50))
              {
                KB::String::compute_length(&v50);
                v34 = WORD2(v50);
              }

              if (v34 < 3)
              {
                goto LABEL_12;
              }
            }
          }

          if (_unacceptable_confusable_characters(void)::once_token != -1)
          {
            dispatch_once(&_unacceptable_confusable_characters(void)::once_token, &__block_literal_global_20793);
          }

          if (!KB::any_of_string_characters_in_set(&v50, _unacceptable_confusable_characters(void)::excluded_set, v22))
          {
            goto LABEL_57;
          }

          v35 = !v33;
          if (v46 == v45)
          {
            v35 = 1;
          }

          if (v35)
          {
LABEL_57:
            __p[0] = &v45;
            std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__p);
            KB::cf_string_impl<KB::String>(__p, &v50);
            v36 = __p[0];
            if (LXLexiconAdd())
            {
              LXLexiconIncrementUsageCount();
            }

            if ((v41 & 1) == 0)
            {
              KB::cf_string_impl<KB::String>(&v45, &v50);
              v37 = v45;
              v38 = LMVocabularyAddLemma();
              if (v37)
              {
                CFRelease(v37);
              }

              if (v38 && v40)
              {
                LMVocabularyEnumerateInflectionsOfLemma();
              }
            }

            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_13;
          }
        }

LABEL_12:
        __p[0] = &v45;
        std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__p);
LABEL_13:
        if (v51 && BYTE6(v50) == 1)
        {
          free(v51);
        }

        v15 = (v15 + 32);
      }

      while (v15 != v14);
    }

    v50 = &v43;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v50);
    if (v53 && BYTE6(v52) == 1)
    {
      free(v53);
    }

    if (v57 && v56 == 1)
    {
      free(v57);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = a2;
  [v5 score];
  addName(v7, v6, v4, 0, 0, v3, *(a1 + 80), a1 + 56);
}

uint64_t std::map<std::string,float>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v17[9] = v3;
    v17[10] = v4;
    v6 = a2;
    v7 = result;
    v8 = (result + 8);
    do
    {
      v9 = v7[1];
      v10 = v8;
      if (*v7 == v8)
      {
        goto LABEL_10;
      }

      v11 = v7[1];
      v12 = v8;
      if (v9)
      {
        do
        {
          v10 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v10 = v12[2];
          v13 = *v10 == v12;
          v12 = v10;
        }

        while (v13);
      }

      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 4, v6 + 4);
      if ((result & 0x80) != 0)
      {
LABEL_10:
        if (!v9)
        {
          v17[0] = v8;
LABEL_15:
          operator new();
        }

        v17[0] = v10;
        v14 = v10 + 1;
      }

      else
      {
        result = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(v7, v17, v6 + 4);
        v14 = result;
      }

      if (!*v14)
      {
        goto LABEL_15;
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v13 = *v16 == v6;
          v6 = v16;
        }

        while (!v13);
      }

      v6 = v16;
    }

    while (v16 != a3);
  }

  return result;
}

void ___ZL28background_load_address_bookN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryEP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke_41(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = a2;
  [v5 score];
  addName(v7, v6, v4, 0, 0, v3, *(a1 + 80), a1 + 56);
}

void ___ZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke_20(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = a1[6];
        if (v6)
        {
          CFRetain(v6);
          LXLexiconRepositoryAddOrUpdate();
          KB::retain_ptr<_LXLexicon *>::operator=((v5 + 40), v6);
          CFRelease(v6);
        }

        else
        {
          LXLexiconRepositoryAddOrUpdate();
          v7 = *(v5 + 40);
          if (v7)
          {
            CFRelease(v7);
            *(v5 + 40) = 0;
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void __destroy_helper_block_a8_32c93_ZTSKZZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_a8_32c93_ZTSKZZN25AddressBookTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(void *result, void *a2)
{
  v2 = result;
  v3 = a2[5];
  result[4] = a2[4];
  result[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[6];
  result[6] = v4;
  if (v4)
  {
    result = CFRetain(v4);
    v2[6] = v4;
  }

  return result;
}

void __destroy_helper_block_a8_40c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE56c114_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEfNS_4lessIS6_EENS4_INS_4pairIKS6_fEEEEEE(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(*(a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

uint64_t __copy_helper_block_a8_40c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE56c114_ZTSNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEfNS_4lessIS6_EENS4_INS_4pairIKS6_fEEEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    CFRetain(v4);
    a1[5] = v4;
  }

  a1[8] = 0;
  a1[7] = a1 + 8;
  v5 = (a1 + 7);
  *(v5 + 16) = 0;
  v6 = a2[7];

  return std::map<std::string,float>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(v5, v6, a2 + 8);
}

void ___ZL7addNameP8NSStringP10_LXLexiconPvjRKN2KB16StaticDictionaryEdbRKNSt3__13mapINS8_12basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEfNS8_4lessISF_EENSD_INS8_4pairIKSF_fEEEEEE_block_invoke(uint64_t a1, id a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  KB::String::String(v10, [a2 UTF8String]);
  KB::cf_string_impl<KB::String>(&v9, v10);
  v5 = *(a1 + 32);
  v6 = v9;
  if (LXLexiconAdd())
  {
    v7 = *(a1 + 32);
    LXLexiconIncrementUsageCount();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v12 && v11 == 1)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL35_unacceptable_confusable_charactersv_block_invoke()
{
  result = uset_openEmpty();
  _unacceptable_confusable_characters(void)::excluded_set = result;
  if (result)
  {
    MEMORY[0x2318BF270](result, 119808, 120831);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 688, 696);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 736, 739);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 7468, 7615);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 8305, 8348);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 11388, 11389);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 8448, 8527);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 127232, 127405);
    MEMORY[0x2318BF270](_unacceptable_confusable_characters(void)::excluded_set, 127462, 127487);

    JUMPOUT(0x2318BF2A0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AddressBookTrieLoaderStub *,std::shared_ptr<AddressBookTrieLoaderStub>::__shared_ptr_default_delete<AddressBookTrieLoaderStub,AddressBookTrieLoaderStub>,std::allocator<AddressBookTrieLoaderStub>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AddressBookTrieLoaderStub *,std::shared_ptr<AddressBookTrieLoaderStub>::__shared_ptr_default_delete<AddressBookTrieLoaderStub,AddressBookTrieLoaderStub>,std::allocator<AddressBookTrieLoaderStub>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t AddressBookTrieLoaderStub::handle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AddressBookTrieLoaderStub::~AddressBookTrieLoaderStub(AddressBookTrieLoaderStub *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

AddressBookTrieLoaderImpl *std::__shared_ptr_pointer<AddressBookTrieLoaderImpl *,std::shared_ptr<AddressBookTrieLoaderImpl>::__shared_ptr_default_delete<AddressBookTrieLoaderImpl,AddressBookTrieLoaderImpl>,std::allocator<AddressBookTrieLoaderImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AddressBookTrieLoaderImpl::~AddressBookTrieLoaderImpl(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AddressBookTrieLoaderImpl *,std::shared_ptr<AddressBookTrieLoaderImpl>::__shared_ptr_default_delete<AddressBookTrieLoaderImpl,AddressBookTrieLoaderImpl>,std::allocator<AddressBookTrieLoaderImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t UnicodeCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  *a4 = 2;
  if (a3 >= 0x10000)
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  return (*(*a2 + 24))(a2, a3);
}

uint64_t UnicodeCharset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v11 = 0;
  result = (*(*a2 + 40))(a2, &v11);
  if (result)
  {
    *a4 = 2;
    __key = v11;
    v8 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
    if (v8)
    {
      v9 = v8[1] | 0x10000;
    }

    else
    {
      v9 = v11;
    }

    *a3 = v9;
    return 1;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t wideCharCompare(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 > v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t UnicodeCompCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a3 < 0x10000)
  {
    *a4 = 2;
  }

  else
  {
    v6 = *(*(a1 + 3416) + 4 * (a3 - 0x10000));
    *a4 = 2;
    result = (*(*a2 + 24))(a2, v6);
    if (v6 < 0x10000)
    {
      return result;
    }

    a3 = HIWORD(v6);
    *a4 += 2;
  }

  v8 = *(*a2 + 24);

  return v8(a2, a3);
}

uint64_t UnicodeCompCharset::nextInput(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v11 = 0;
  result = (*(*a2 + 40))(a2, &v11);
  if (result)
  {
    __key = v11;
    *a4 = 2;
    v9 = bsearch(&__key, (a1 + 8), *(a1 + 3424), 8uLL, uniCompInfoCompare);
    if (v9)
    {
      *a3 = v9[1] + 0x10000;
      if ((*(*a2 + 48))(a2, &v11) && v11)
      {
        __key += v11 << 16;
        v10 = bsearch(&__key, (a1 + 8), *(a1 + 3424), 8uLL, uniCompInfoCompare);
        if (v10)
        {
          *a3 = v10[1] + 0x10000;
          *a4 += 2;
          (*(*a2 + 40))(a2, &v11);
        }
      }
    }

    else
    {
      *a3 = __key;
    }

    return 1;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t uniCompInfoCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t VnInternalCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v5 = HIWORD(a3);
  *a4 = 4;
  (*(*a2 + 24))(a2, a3);
  v6 = *(*a2 + 24);

  return v6(a2, v5);
}

BOOL VnInternalCharset::nextInput(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = (*(*a2 + 56))(a2, a3) != 0;
  *a4 = 4 * result;
  return result;
}

uint64_t UnicodeUTF8Charset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v4 = a3;
  if (HIWORD(a3))
  {
    v4 = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  if (v4 > 0x7Fu)
  {
    if (v4 > 0x7FFu)
    {
      *a4 = 3;
      (*(*a2 + 16))(a2, (v4 >> 12) | 0xE0u);
      (*(*a2 + 16))(a2, (v4 >> 6) & 0x3F | 0x80);
    }

    else
    {
      *a4 = 2;
      (*(*a2 + 16))(a2, (v4 >> 6) | 0xC0u);
    }

    LOBYTE(v4) = v4 & 0x3F | 0x80;
  }

  else
  {
    *a4 = 1;
  }

  v6 = *(*a2 + 16);

  return v6(a2, v4);
}

uint64_t UnicodeUTF8Charset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v14 = 0;
  v13 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v14 + 1);
  if (result)
  {
    *a4 = 1;
    v9 = HIBYTE(v14);
    if ((v14 & 0x8000u) == 0)
    {
LABEL_3:
      v10 = v9;
      __key = v9;
      v11 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
      if (v11)
      {
        v10 = v11[1] | 0x10000;
      }

      *a3 = v10;
      return 1;
    }

    if ((HIBYTE(v14) & 0xE0) == 0xC0)
    {
      result = (*(*a2 + 24))(a2, &v14);
      if (!result)
      {
        return result;
      }

      if ((v14 & 0xC0) == 0x80)
      {
        (*(*a2 + 16))(a2, &v14);
        *a4 = 2;
        v9 = v14 & 0x3F | ((HIBYTE(v14) & 0x1F) << 6);
        goto LABEL_3;
      }
    }

    else if ((HIBYTE(v14) & 0xF0) == 0xE0)
    {
      result = (*(*a2 + 24))(a2, &v14);
      if (!result)
      {
        return result;
      }

      if ((v14 & 0xC0) == 0x80)
      {
        (*(*a2 + 16))(a2, &v14);
        *a4 = 2;
        result = (*(*a2 + 24))(a2, &v13);
        if (!result)
        {
          return result;
        }

        if ((v13 & 0xC0) == 0x80)
        {
          (*(*a2 + 16))(a2, &v13);
          *a4 = 3;
          v9 = (HIBYTE(v14) << 12) | ((v14 & 0x3F) << 6) | v13 & 0x3F;
          goto LABEL_3;
        }
      }
    }

    *a3 = -1;
    return 1;
  }

  return result;
}

uint64_t UnicodeRefCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  v5 = a3;
  if (HIWORD(a3))
  {
    v5 = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  if (v5 > 0x7Fu)
  {
    *a4 = 2;
    (*(*a2 + 16))(a2, 38);
    (*(*a2 + 16))(a2, 35);
    v9 = 0;
    v10 = 10000;
    v11 = 5;
    do
    {
      v12 = v5 / v10;
      v9 |= v12;
      if (v9)
      {
        ++*a4;
        (*(*a2 + 16))(a2, (v12 + 48));
        v9 = 1;
      }

      v5 %= v10;
      v10 /= 10;
      --v11;
    }

    while (v11);
    result = (*(*a2 + 16))(a2, 59);
    ++*a4;
  }

  else
  {
    *a4 = 1;
    v7 = *(*a2 + 16);

    return v7(a2, v5);
  }

  return result;
}

uint64_t UnicodeRefCharset::nextInput(uint64_t a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v24 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v24);
  if (!result)
  {
    return result;
  }

  *a4 = 1;
  v9 = v24;
  if (v24 != 38)
  {
LABEL_31:
    v11 = v9;
    goto LABEL_32;
  }

  v10 = (*(*a2 + 24))(a2, &v24);
  v11 = 38;
  if (v10 && v24 == 35)
  {
    (*(*a2 + 16))(a2, &v24);
    ++*a4;
    if ((*(*a2 + 80))(a2))
    {
      v11 = 38;
      goto LABEL_32;
    }

    (*(*a2 + 24))(a2, &v24);
    v12 = *a2;
    if ((v24 & 0xDF) == 0x58)
    {
      (*(v12 + 16))(a2, &v24);
      ++*a4;
      if ((*(*a2 + 24))(a2, &v24))
      {
        v13 = 0;
        v14 = 0;
        v15 = MEMORY[0x277D85DE0];
        do
        {
          if ((*(v15 + 4 * v24 + 60) & 0x10000) == 0 || v13 > 3)
          {
            break;
          }

          (*(*a2 + 16))(a2, &v24);
          ++*a4;
          v16 = v24 - 48;
          if (v16 >= 0xA)
          {
            LOWORD(v16) = 0;
          }

          if (v24 - 65 <= 5)
          {
            v17 = v24 - 55;
          }

          else
          {
            v17 = v16;
          }

          v18 = v24 - 87;
          if (v24 - 97 > 5)
          {
            v18 = v17;
          }

          v14 = v18 + 16 * v14;
          ++v13;
        }

        while ((*(*a2 + 24))(a2, &v24));
LABEL_28:
        if ((*(*a2 + 24))(a2, &v24))
        {
          v11 = v9;
          if (v24 == 59)
          {
            (*(*a2 + 16))(a2, &v24);
            ++*a4;
            v11 = v14;
          }

          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if ((*(v12 + 24))(a2, &v24))
    {
      v19 = 0;
      v14 = 0;
      v20 = MEMORY[0x277D85DE0];
      do
      {
        if ((*(v20 + 4 * v24 + 60) & 0x400) == 0)
        {
          break;
        }

        if (v19 > 4)
        {
          break;
        }

        (*(*a2 + 16))(a2, &v24);
        ++*a4;
        v14 = v24 + 10 * v14 - 48;
        ++v19;
      }

      while ((*(*a2 + 24))(a2, &v24));
      goto LABEL_28;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_32:
  v21 = v11;
  __key = v11;
  v22 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
  if (v22)
  {
    v21 = v22[1] | 0x10000;
  }

  *a3 = v21;
  return 1;
}

uint64_t UnicodeHexCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (HIWORD(a3))
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  v6 = a3;
  if (a3 > 0xFFu)
  {
    *a4 = 3;
    (*(*a2 + 16))(a2, 38);
    (*(*a2 + 16))(a2, 35);
    (*(*a2 + 16))(a2, 120);
    v9 = 0;
    for (i = 12; i != -4; i -= 4)
    {
      v11 = (v6 >> i) & 0xF;
      v9 |= v11;
      if (v9)
      {
        ++*a4;
        if (v11 >= 0xA)
        {
          v12 = v11 + 55;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        (*(*a2 + 16))(a2, v12);
        v9 = 1;
      }
    }

    result = (*(*a2 + 16))(a2, 59);
    ++*a4;
  }

  else
  {
    *a4 = 1;
    v7 = *(*a2 + 16);

    return v7(a2, v6);
  }

  return result;
}

uint64_t UnicodeCStringCharset::putChar(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (HIWORD(a3))
  {
    LOWORD(a3) = *(*(a1 + 864) + 2 * (a3 - 0x10000));
  }

  v7 = a3;
  if (a3 <= 0x7Fu && ((a3 & 0x5F) != 0x58 ? (v8 = (*(MEMORY[0x277D85DE0] + 4 * a3 + 60) & 0x10000) == 0) : (v8 = 0), v8))
  {
    *a4 = 1;
    v14 = *(*a2 + 16);

    return v14(a2, v7);
  }

  else
  {
    *a4 = 2;
    (*(*a2 + 16))(a2, 92);
    (*(*a2 + 16))(a2, 120);
    v9 = 0;
    for (i = 12; i != -4; i -= 4)
    {
      v11 = (v7 >> i) & 0xF;
      v9 |= v11;
      if (v9)
      {
        ++*a4;
        if (v11 >= 0xA)
        {
          v12 = v11 + 55;
        }

        else
        {
          v12 = v11 | 0x30;
        }

        (*(*a2 + 16))(a2, v12);
        v9 = 1;
      }
    }

    result = (*(*a2 + 40))(a2);
    *(a1 + 872) = 1;
  }

  return result;
}

uint64_t UnicodeCStringCharset::nextInput(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v18 = 0;
  *a4 = 0;
  result = (*(*a2 + 16))(a2, &v18);
  if (result)
  {
    *a4 = 1;
    v9 = v18;
    if (v18 == 92)
    {
      if ((*(*a2 + 24))(a2, &v18) && (v18 & 0xDF) == 0x58)
      {
        (*(*a2 + 16))(a2, &v18);
        ++*a4;
        if ((*(*a2 + 24))(a2, &v18))
        {
          v10 = 0;
          v9 = 0;
          v11 = MEMORY[0x277D85DE0];
          do
          {
            if ((*(v11 + 4 * v18 + 60) & 0x10000) == 0 || v10 > 3)
            {
              break;
            }

            (*(*a2 + 16))(a2, &v18);
            ++*a4;
            v12 = v18 - 48;
            if (v12 >= 0xA)
            {
              LOWORD(v12) = 0;
            }

            if (v18 - 65 <= 5)
            {
              v13 = v18 - 55;
            }

            else
            {
              v13 = v12;
            }

            v14 = v18 - 87;
            if (v18 - 97 > 5)
            {
              v14 = v13;
            }

            v9 = v14 + 16 * v9;
            ++v10;
          }

          while ((*(*a2 + 24))(a2, &v18));
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 92;
      }
    }

    v15 = v9;
    __key = v9;
    v16 = bsearch(&__key, (a1 + 8), 0xD5uLL, 4uLL, wideCharCompare);
    if (v16)
    {
      v15 = v16[1] | 0x10000;
    }

    *a3 = v15;
    return 1;
  }

  return result;
}

void _createGlobalVnCharsetIfNeeded(void)
{
  if (!VnCharsetLibObj)
  {
    operator new();
  }
}

void UnicodeCharset::UnicodeCharset(UnicodeCharset *this, const unsigned __int16 *a2)
{
  v2 = 0;
  *this = &unk_283FDE580;
  v3 = &UnicodeTable;
  *(this + 108) = &UnicodeTable;
  for (i = 8; i != 860; i += 4)
  {
    v5 = *v3++;
    *(this + i) = v2 + v5;
    v2 += 0x10000;
  }

  qsort(this + 8, 0xD5uLL, 4uLL, wideCharCompare);
}

uint64_t CVnCharsetLib::getVnCharset(CVnCharsetLib *this, int a2)
{
  _createGlobalVnCharsetIfNeeded();
  if (a2 > 3)
  {
    if (a2 <= 6)
    {
      if (a2 == 4)
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }
      }

      else
      {
        if (a2 != 6)
        {
          goto LABEL_17;
        }

        v4 = *(this + 5);
        if (!v4)
        {
          operator new();
        }
      }

      return v4;
    }

    if (a2 == 7)
    {
      v4 = *(this + 6);
      if (!v4)
      {
        operator new();
      }

      return v4;
    }

    if (a2 != 12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = *(this + 3);
        if (!v4)
        {
          operator new();
        }
      }

      else
      {
        v4 = *(this + 4);
        if (!v4)
        {
          operator new();
        }
      }

      return v4;
    }

    if (!a2)
    {
      v4 = *this;
      if (!*this)
      {
        operator new();
      }

      return v4;
    }

    if (a2 != 1)
    {
LABEL_17:
      operator new();
    }
  }

  v4 = *(this + 2);
  if (!v4)
  {
    goto LABEL_17;
  }

  return v4;
}

id createAutoshiftRegularExpression(NSString *a1, NSString *a2, NSString *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = character_set_pattern_from_string(&stru_283FEF4D8.isa);
  v9 = MEMORY[0x277CCACA8];
  v10 = character_set_pattern_from_string(v7);

  v11 = character_set_pattern_from_string(v6);

  v12 = [v9 stringWithFormat:@"\\A|\\n|(?:%@){3}|((?:\\b\\w++(?:\\.\\w++)*)?(?:%@))(?:%@)*(?:%@)", v8, v10, v11, v8];

  v13 = MEMORY[0x277CCACA8];
  v14 = character_set_pattern_from_string(v5);

  v15 = [v13 stringWithFormat:@"(?:%@)(?:%@)*(?:%@)*\\Z", v12, v8, v14];

  v22 = 0;
  v16 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v15 options:16 error:&v22];
  v17 = v22;
  if (!v16)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v18 = TIOSLogFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed: %@", "createAutoshiftRegularExpression", v17];
      *buf = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

id character_set_pattern_from_string(NSString *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCAC68] escapedPatternForString:a1];
  v3 = [v1 stringWithFormat:@"[%@]", v2];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];

  return v4;
}

uint64_t __Block_byref_object_copy__21237(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *KB::NgramCandidateRefinery::clean_favonius_generated_candidates(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while ((*(**(a1 + 32) + 200))(*(a1 + 32), v3))
    {
      v3 += 125;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 125; i != v4; i += 125)
      {
        if ((*(**(a1 + 32) + 200))(*(a1 + 32), i))
        {
          KB::Candidate::operator=(v3, i);
          v3 += 125;
        }
      }
    }
  }

LABEL_11:
  v7 = a2[1];

  return std::vector<KB::Candidate>::erase(a2, v3, v7);
}

uint64_t KB::NgramCandidateRefinery::get_num_candidates@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2 == 5 && (v4 = result, (result = *(result + 32)) != 0) && (result = (*(*result + 16))(result), (result & 1) != 0))
  {
    v5 = *(**(v4 + 32) + 224);

    return v5();
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  return result;
}

void KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v6 = a1[2];
  if (v6)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = v9;
      v14[4] = v8;
      v15 = v9;
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v16, a5);
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      v12[9] = v8;
      v13 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v14, v16);
      v11 = a1[4];
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v12, v14);
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
}

void KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_1::operator()(uint64_t a1, const KB::LanguageModel::PredictionInfo **a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4, KB::CandidateCollection *a5, char a6)
{
  v24[125] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  if (v11 && (v13 = std::__shared_weak_count::lock(v11)) != 0)
  {
    v14 = v13;
    v15 = *a1;
    if (*a1)
    {
      v16 = *a2;
      for (i = a2[1]; v16 != i; v16 = (v16 + 160))
      {
        KB::Candidate::Candidate(v24, a3);
        while (v24[0])
        {
          v18 = v24[1] + 240 * v24[0];
          if ((*(v18 - 105) & 4) != 0)
          {
            break;
          }

          v19 = *(v18 - 232);
          v20 = (v18 - 224);
          if (v19)
          {
            v20 = v19;
          }

          if (*v20 == 32)
          {
            if (!v20[1])
            {
              break;
            }
          }

          else if (!*v20)
          {
            break;
          }

          KB::Candidate::pop_last_word(v24);
        }

        KB::NgramCandidateRefinery::post_processing_predictions(v15, v16, v24, a4, a5);
        KB::Candidate::~Candidate(v24);
      }
    }

    std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a1 + 40), a5, a3, a4, a6);
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = *MEMORY[0x277D85DE8];

    std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v22, a5, a3, a4, a6);
  }
}

uint64_t KB::NgramCandidateRefinery::post_processing_predictions(KB::NgramCandidateRefinery *this, const KB::LanguageModel::PredictionInfo *a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4, KB::CandidateCollection *a5)
{
  v65 = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(&v62, a3);
  KB::LanguageModelContext::LanguageModelContext(v42, a4);
  if (*(a2 + 148) == 1)
  {
    v64 = 1;
  }

  if (*(a2 + 13) != *(a2 + 12))
  {
    v8 = 0;
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3) > i; ++i)
    {
      v10 = (*(*this + 120))(this);
      v11 = (*(a2 + 12) + v8);
      if (v11[23] < 0)
      {
        v11 = *v11;
      }

      KB::String::String(&v52, v11);
      if (*(a2 + 148))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a2 + 36);
      }

      KB::DictionaryContainer::word_with_string_exhaustive(v10, &v52, v12, v56);
      if (v53)
      {
        v13 = BYTE6(v52) == 1;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        free(v53);
      }

      if (v61.lexicon_id == -2)
      {
        v61.lexicon_id = *(a2 + 36);
      }

      if (!LOWORD(v56[0]) && *(a2 + 150) != 1)
      {
        KB::Word::~Word(v56);
LABEL_69:
        v33 = 0;
        goto LABEL_72;
      }

      if (*(a2 + 149) == 1)
      {
        v59 = v59 & 0xFFFBFE7B | 0x100;
      }

      if (*(a2 + 150) == 1)
      {
        v59 |= 0x200u;
      }

      v14 = (*(a2 + 15) + v8);
      if (v14[23] < 0)
      {
        v14 = *v14;
      }

      KB::String::String(&v52, v14);
      KB::String::operator=(v56, &v52);
      if (v53 && BYTE6(v52) == 1)
      {
        free(v53);
      }

      v59 = v59 & 0xFAFFFFFF | ((*(a2 + 10) & 1) << 24) & 0xFBFFFFFF | (((*(a2 + 10) >> 1) & 1) << 26);
      if (*(a2 + 95) >= 0)
      {
        v15 = a2 + 72;
      }

      else
      {
        v15 = *(a2 + 9);
      }

      KB::String::String(&v52, v15);
      KB::String::operator=(v58, &v52);
      if (v53 && BYTE6(v52) == 1)
      {
        free(v53);
      }

      v58[8] = (*(**(this + 4) + 456))(*(this + 4), v61.lexicon_id, v42);
      v16 = *(this + 4);
      KB::Word::capitalized_string(v56, &v52);
      v17 = (*(*v16 + 496))(v16, &v52, 0xFFFFFFFFLL, v42, this + 24, 1);
      if (v53 && BYTE6(v52) == 1)
      {
        free(v53);
      }

      if (v17)
      {
        v59 |= 0x40000000u;
      }

      v18 = (*(*this + 120))(this);
      WORD2(v52) = 0;
      BYTE6(v52) = 0;
      v53 = ".,;:!?";
      LODWORD(v52) = 1048582;
      v54 = 0;
      if (v62)
      {
        v19 = v63 + 240 * v62;
        if ((*(v19 - 105) & 4) != 0)
        {
          if ((v60 & 0x4000000) != 0)
          {
            goto LABEL_53;
          }

          v20 = *(v19 - 232);
          if (!v20)
          {
            v20 = v19 - 224;
          }

          v49 = v20;
          v21 = *(v19 - 240);
          LODWORD(v50) = 0;
          HIDWORD(v50) = v21;
          v51 = 0;
          KB::String::iterator::initialize(&v49);
          if (!KB::String::contains(&v52, v51))
          {
            goto LABEL_53;
          }

LABEL_49:
          WORD2(v49) = 0;
          BYTE6(v49) = 0;
          v50 = " ";
          LODWORD(v49) = 1048577;
          BYTE1(v51) = 0;
          KB::Word::Word(&v52, &v49, &kTITokenIDUNK, 0);
          if (v50 && BYTE6(v49) == 1)
          {
            free(v50);
          }

          v55 |= 0x4000000u;
          KB::Candidate::append(&v62, &v52);
          KB::Word::~Word(&v52);
          goto LABEL_53;
        }

        if ((v60 & 0x4000000) == 0 && (*(v18 + 64) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

LABEL_53:
      v57 = 1065353216;
      KB::Candidate::append(&v62, v56);
      v22 = v61;
      KB::Word::capitalized_string(v56, &v52);
      v23 = v22;
      KB::LanguageModelContext::append(v42, v23, &v52, (v59 >> 1) & 1);
      if (v53 && BYTE6(v52) == 1)
      {
        free(v53);
      }

      KB::Word::~Word(v56);
      v8 += 24;
    }
  }

  if (!v62)
  {
    goto LABEL_69;
  }

  v24 = v63 + 240 * v62;
  v25 = *(a2 + 6);
  *(v24 - 188) = v25;
  *(v24 - 184) = v25;
  v26 = *(a5 + 1);
  v27 = *(a5 + 2);
  if (v26 >= v27)
  {
    v29 = 0x1CAC083126E978D5 * ((v26 - *a5) >> 3);
    if ((v29 + 1) > 0x4189374BC6A7EFLL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v30 = 0x1CAC083126E978D5 * ((v27 - *a5) >> 3);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x20C49BA5E353F7)
    {
      v32 = 0x4189374BC6A7EFLL;
    }

    else
    {
      v32 = v31;
    }

    v56[4] = a5;
    if (v32)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v32);
    }

    v34 = 1000 * v29;
    KB::Candidate::Candidate(1000 * v29, &v62);
    v28 = 1000 * v29 + 1000;
    v35 = *(a5 + 1);
    v36 = v34 + *a5 - v35;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a5, v35, v36);
    v37 = *a5;
    *a5 = v36;
    *(a5 + 1) = v28;
    v38 = *(a5 + 2);
    *(a5 + 2) = 0;
    v56[2] = v37;
    v56[3] = v38;
    v56[0] = v37;
    v56[1] = v37;
    std::__split_buffer<KB::Candidate>::~__split_buffer(v56);
  }

  else
  {
    v28 = KB::Candidate::Candidate(v26, &v62) + 1000;
  }

  *(a5 + 1) = v28;
  v33 = 1;
LABEL_72:
  v56[0] = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v56);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v47);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v46);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  KB::Candidate::~Candidate(&v62);
  v39 = *MEMORY[0x277D85DE8];
  return v33;
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(uint64_t a1, const KB::LanguageModel::PredictionInfo **a2, const KB::Candidate *a3, const KB::LanguageModelContext *a4)
{
  v6 = 0;
  memset(v4, 0, sizeof(v4));
  memset(v5, 0, sizeof(v5));
  KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_1::operator()(a1 + 8, a2, a3, a4, v4, 1);
  v7 = &v5[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v5;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = &v4[1] + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = v4;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_283FDE910;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100]((a2 + 3), a1 + 24);
}

void std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDE910;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<KB::NgramCandidateRefinery::inline_predictions_for_completion_stems(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(std::vector<KB::LanguageModel::PredictionInfo> const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDE910;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void KB::NgramCandidateRefinery::predictions_for_prediction_stems(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 16))(a1))
  {
    if (a2[1] != *a2)
    {
      KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(a1, a2, a3, a4);
    }

    v10 = *a4;
    v11 = *(a4 + 8);
    if (*a4 != v11)
    {
      do
      {
        if (*v10)
        {
          v12 = 240 * *v10;
          v13 = (v10[1] + 52);
          v14 = 1.0;
          do
          {
            v15 = *v13;
            v13 += 60;
            v14 = v14 * v15;
            v12 -= 240;
          }

          while (v12);
        }

        else
        {
          v14 = 1.0;
        }

        std::function<void ()(KB::Candidate &,float)>::operator()(*(a5 + 24), v10, v14);
        v10 += 125;
      }

      while (v10 != v11);
      v10 = *a4;
      v11 = *(a4 + 8);
    }

    v16 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v11 - v10) >> 3));
    if (v11 == v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v10, v11, v17, 1);
  }
}

uint64_t KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v7[0] = &unk_283FDE958;
  v7[1] = a1;
  v7[2] = a4;
  v7[3] = v7;
  (*(*v4 + 512))(v4, a2, a3, v7, 1);
  result = std::__function::__value_func<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::function<void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::operator()(v4);
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0,std::allocator<KB::NgramCandidateRefinery::predictions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &)::$_0>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void KB::NgramCandidateRefinery::completions_for_completion_stems(KB::NgramCandidateRefinery *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, float a5)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(&v19, *a2, a2[1], 0x1CAC083126E978D5 * ((a2[1] - *a2) >> 3));
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    KB::NgramCandidateRefinery::add_context_weights_batched(a1, &v19);
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = &v10[-*a4];
  if (v20 != v19)
  {
    KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(a1, a5, &v19, a3, a4);
    v9 = *a4;
    v10 = a4[1];
  }

  v12 = &v11[v9];
  v13 = v10 - v12;
  if (v10 != v12)
  {
    v14 = 0;
    v15 = vdupq_n_s64((v13 - 1000) / 0x3E8uLL);
    v16 = ((v13 - 1000) / 0x3E8uLL + 4) & 0xFFFFFFFFFFFFFCLL;
    do
    {
      v17 = vdupq_n_s64(v14);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_22CC88AA0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v12 + 248) = 7;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v12 + 498) = 7;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_22CC88A90)))).i32[1])
      {
        *(v12 + 748) = 7;
        *(v12 + 998) = 7;
      }

      v14 += 4;
      v12 += 4000;
    }

    while (v16 != v14);
  }

  v22 = &v19;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v22);
}

void KB::NgramCandidateRefinery::add_context_weights_batched(KB::NgramCandidateRefinery *a1, unsigned int **a2)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v31 = a2[1];
  if (*a2 == v31)
  {
    goto LABEL_63;
  }

  v3 = a1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    if (*v2)
    {
      v4 = *(v2 + 1);
      v5 = 240 * *v2;
      if (v2[248] == 7)
      {
        v2[248] = 1;
      }

      else if ((KB::NgramCandidateRefinery::should_not_score_token(v3, v4) & 1) == 0)
      {
        v6 = *(v3 + 4);
        KB::Word::capitalized_string(v4, &v39);
        v37 = *(v4 + 136);
        (*(*v6 + 408))(v6, &v39, &v37);
        if (v40)
        {
          if (BYTE6(v39) == 1)
          {
            free(v40);
          }
        }
      }

      if ((*(v4 + 135) & 4) == 0)
      {
        v7 = (v4 + 16);
        if (*(v4 + 8))
        {
          v7 = *(v4 + 8);
        }

        v8 = *v7;
        if (v8 == 32)
        {
          v7[1];
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(1);
    }

    v9 = v35;
    if (v35 >= v36)
    {
      v11 = v34;
      v12 = v35 - v34;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3) + 1;
      if (v13 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v36 - v34) >> 3) > v13)
      {
        v13 = 0x5555555555555556 * ((v36 - v34) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v14);
      }

      v15 = (8 * (v12 >> 3));
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v10 = v15 + 3;
      memcpy(v15 - v12, v11, v12);
      v34 = v15 - v12;
      v35 = v15 + 3;
      v36 = 0;
      if (v11)
      {
        operator delete(v11);
      }

      v3 = a1;
    }

    else
    {
      *v35 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v10 = v9 + 3;
    }

    v35 = v10;
    v2 += 250;
  }

  while (v2 != v31);
  if (a2[1] == *a2)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  KB::LanguageModelContext::LanguageModelContext(&v39, (*a2 + 196));
  if (s_trace_logging_enabled)
  {
    Mutable = CFStringCreateMutable(0, 0);
  }

  else
  {
    Mutable = 0;
  }

  KB::NgramCandidateRefinery::context_probability_of_batched_word(v3, a2, v33);
  v18 = *a2;
  v17 = a2[1];
  if (v17 == *a2)
  {
    goto LABEL_56;
  }

  v19 = 0;
  do
  {
    v20 = &v18[250 * v19];
    if (!*v20)
    {
      goto LABEL_55;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(*&v34[24 * v19] + v22) != 1)
      {
        goto LABEL_53;
      }

      v25 = *(v20 + 1);
      v26 = *(v33[0] + 24 * v19) + v23;
      *(v25 + v21 + 52) = *v26;
      v27 = (v26 + 16);
      if (*(v26 + 39) < 0)
      {
        v27 = *v27;
      }

      KB::String::String(&v37, v27);
      KB::String::operator=((v25 + v21 + 64), &v37);
      if (v38 && BYTE6(v37) == 1)
      {
        free(v38);
      }

      v28 = *(*(v33[0] + 24 * v19) + v23 + 8);
      if (v28)
      {
        *(v25 + v21 + 104) |= 0x1000000u;
        if ((v28 & 2) == 0)
        {
LABEL_46:
          if (!Mutable)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }
      }

      else if ((v28 & 2) == 0)
      {
        goto LABEL_46;
      }

      *(v25 + v21 + 104) |= 0x4000000u;
      if (!Mutable)
      {
        goto LABEL_53;
      }

LABEL_50:
      KB::utf8_string(Mutable, &v37);
      KB::String::operator=((v25 + v21 + 160), &v37);
      if (v38 && BYTE6(v37) == 1)
      {
        free(v38);
      }

LABEL_53:
      ++v24;
      v23 += 40;
      v21 += 240;
      v22 += 2;
    }

    while (v24 < *v20);
    v18 = *a2;
    v17 = a2[1];
LABEL_55:
    ++v19;
  }

  while (v19 < 0x1CAC083126E978D5 * ((v17 - v18) >> 3));
LABEL_56:
  v37 = v33;
  std::vector<std::vector<KB::LikelihoodInfo>>::__destroy_vector::operator()[abi:nn200100](&v37);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v37 = v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v37);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v44);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v43);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v39 = &v34;
  std::vector<std::vector<language_modeling::v1::TokenMetadata>>::__destroy_vector::operator()[abi:nn200100](&v39);
LABEL_63:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(void *a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    v11 = 0x1CAC083126E978D5 * ((a5[1] - *a5) >> 3);
    v8 = *((*(*a1 + 120))(a1) + 8) + 112;
    v9 = a1[4];
    v13[0] = &unk_283FDE9A0;
    v13[1] = a1;
    v13[2] = a5;
    v13[3] = v13;
    operator new();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0>,BOOL ()(KB::Candidate const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v43 = *a2;
  v4 = *(a1 + 8);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    (*(*v5 + 48))(&v41);
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = v6[1];
    v9 = (*v6 + 1000 * **(a1 + 24));
    v37 = a2;
    v38 = v7;
    v39 = &v41;
    v40 = &v43;
    while (1)
    {
      if (v9 == v8)
      {
        v9 = v8;
        goto LABEL_9;
      }

      if (KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(&v37, v9))
      {
        break;
      }

      v9 = (v9 + 1000);
    }

    if (v9 != v8)
    {
      for (i = (v9 + 1000); i != v8; i += 125)
      {
        if ((KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(&v37, i) & 1) == 0)
        {
          KB::Candidate::operator=(v9, i);
          v9 = (v9 + 1000);
        }
      }
    }

LABEL_9:
    std::vector<KB::Candidate>::erase(v6, v9, *(*(a1 + 16) + 8));
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *v10;
    v13 = v10[1];
    v14 = *v11;
    v15 = *v11 + 10;
    if (0x1CAC083126E978D5 * ((v13 - *v10) >> 3) > v15)
    {
      std::vector<KB::Candidate>::resize(v10, v15);
      v16 = *(a1 + 16);
      v11 = *(a1 + 24);
      v14 = *v11;
      v12 = *v16;
      v13 = v16[1];
    }

    if (v13 != v12 + 1000 * v14)
    {
      v13 = v12 + 1000 * v14;
      while (1)
      {
        if (!*(v13 + 888))
        {
          KB::Candidate::compute_string(v13);
        }

        v17 = *(v13 + 892);
        if (!*(v13 + 892))
        {
          KB::String::compute_length((v13 + 888));
          v17 = *(v13 + 892);
        }

        if (!*(a2 + 888))
        {
          KB::Candidate::compute_string(a2);
        }

        v18 = *(a2 + 892);
        if (!*(a2 + 892))
        {
          KB::String::compute_length((a2 + 888));
          v18 = *(a2 + 892);
        }

        v19 = v17 - v18;
        *(*(v13 + 8) + 240 * *v13 - 96) = v19;
        *(v13 + 960) = 1;
        v20 = *(a2 + 748);
        v21 = *(a2 + 756);
        v22 = *(a2 + 760);
        v37 = *(a2 + 764);
        LODWORD(v38) = *(a2 + 772);
        if (*(a2 + 888))
        {
          if (!v18)
          {
            goto LABEL_29;
          }
        }

        else
        {
          KB::Candidate::compute_string(a2);
          v18 = *(a2 + 892);
          if (!*(a2 + 892))
          {
LABEL_29:
            KB::String::compute_length((a2 + 888));
            v18 = *(a2 + 892);
          }
        }

        v23 = **(a1 + 40);
        if (v19 < 1)
        {
          v24 = 0.0;
        }

        else
        {
          if (v18 >= 5)
          {
            v18 = 5;
          }

          v24 = logf(TI::Favonius::SearchParameters::k_prediction_costs[v18]) + 0.0;
          if (v19 != 1)
          {
            v24 = v24 + ((v19 - 1) * -0.22314);
          }
        }

        v25 = 1.0;
        if (*v13)
        {
          v26 = 240 * *v13;
          v27 = (*(v13 + 8) + 52);
          do
          {
            v28 = *v27;
            v27 += 60;
            v25 = v25 * v28;
            v26 -= 240;
          }

          while (v26);
        }

        v29 = v20 + ((1.0 - v23) * (v24 * v22));
        v30 = logf(v25);
        *(v13 + 748) = v29;
        *(v13 + 752) = v30;
        *(v13 + 756) = v21;
        *(v13 + 760) = v22;
        *(v13 + 772) = v38;
        *(v13 + 764) = v37;
        *(v13 + 744) = v29 + (v22 * (v21 + v30));
        v13 += 1000;
        v31 = *(a1 + 16);
        if (v13 == v31[1])
        {
          v11 = *(a1 + 24);
          v14 = *v11;
          v12 = *v31;
          break;
        }
      }
    }

    v32 = 0x1CAC083126E978D5 * ((v13 - v12) >> 3);
    *v11 = v32;
    if (v41 >= 0xFu && v42)
    {
      MEMORY[0x2318BE250](v42, 0x1000C8077774924);
    }

    return v14 < v32;
  }

  else
  {
    v35 = std::__throw_bad_function_call[abi:nn200100]();
    return KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(v35, v36);
  }
}

uint64_t KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0::operator() const(KB::Candidate const&)::{lambda(KB::Candidate const&)#1}::operator()(uint64_t a1, KB::Candidate *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = **(a1 + 24);
  if (!*(a2 + 444))
  {
    KB::Candidate::compute_string(a2);
    if (!*(a2 + 444))
    {
      goto LABEL_23;
    }
  }

  KB::Candidate::capitalized_string(a2, v20);
  KB::Candidate::capitalized_string(v4, &v18);
  v7 = KB::string_preserves_surface_form_features_of_prefix(v20, &v18, v5, v3);
  if (v19 && BYTE6(v18) == 1)
  {
    free(v19);
  }

  if (v22 && v21 == 1)
  {
    free(v22);
  }

  if (!v7)
  {
LABEL_23:
    v10 = 1;
LABEL_24:
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  KB::Candidate::capitalized_string(a2, v20);
  v8 = *(v3 + 24);
  if (v8)
  {
    (*(*v8 + 48))(&v18);
    if (v22 && v21 == 1)
    {
      free(v22);
    }

    v10 = v18 <= v5->var0.var0.var0 && (v6 + 1) >= *a2;
    if (v18 >= 0xFu)
    {
      if (v19)
      {
        MEMORY[0x2318BE250](v19, 0x1000C8077774924);
      }
    }

    goto LABEL_24;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
  return KB::NgramCandidateRefinery::long_prediction_geometric_log_likelihood(v13, v14, v15, v16, v17);
}

float KB::NgramCandidateRefinery::long_prediction_geometric_log_likelihood(KB::NgramCandidateRefinery *this, unsigned int a2, int a3, float a4, float a5)
{
  if (a3 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    if (a2 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = a2;
    }

    v9 = logf(TI::Favonius::SearchParameters::k_prediction_costs[v8]) + 0.0;
    if (a3 != 1)
    {
      v9 = v9 + ((a3 - 1) * -0.22314);
    }
  }

  return (1.0 - a5) * (v9 * a4);
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_0>,BOOL ()(KB::Candidate const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE9E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_1,std::allocator<KB::NgramCandidateRefinery::completions_from_candidate_string_based_lm(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,KB::CandidateCollection &,float,KB::LookupType)::$_1>,BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDE9A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t KB::NgramCandidateRefinery::should_not_score_token(KB::NgramCandidateRefinery *this, const KB::Word *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  result = (*(*this + 16))(this);
  if (result)
  {
    v5 = *(this + 4);
    KB::Word::capitalized_string(a2, v12);
    v11 = *(a2 + 17);
    v6 = (*(*v5 + 408))(v5, v12, &v11);
    if (v13 && v12[6] == 1)
    {
      free(v13);
    }

    v7 = *(a2 + 26);
    if (v6)
    {
      if ((v7 & 0x80022100) != 0x2000 || *(a2 + 28) != 0)
      {
        result = 0;
        goto LABEL_16;
      }

      v9 = *(a2 + 31) == 0;
    }

    else
    {
      v9 = (v7 & 0x2040000) == 0x2000000;
    }

    result = v9;
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void KB::NgramCandidateRefinery::context_probability_of_batched_word(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    v8 = 0;
    do
    {
      v9 = &v7[250 * v8];
      if (*v9)
      {
        v10 = 0;
        do
        {
          (*(**(a1 + 32) + 24))(*(a1 + 32));
          ++v10;
        }

        while (v10 < *v9);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v8;
    }

    while (v8 < 0x1CAC083126E978D5 * ((v6 - v7) >> 3));
  }

  if ((*(**(a1 + 32) + 16))(*(a1 + 32)))
  {
    v11 = *(**(a1 + 32) + 432);

    v11();
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](&v26, *v12);
        v14 = *(a3 + 8);
        v15 = *(a3 + 16);
        if (v14 >= v15)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          v28[4] = a3;
          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v20);
          }

          v21 = 24 * v17;
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v26;
          *(v21 + 16) = v27;
          v26 = 0uLL;
          v27 = 0;
          v16 = 24 * v17 + 24;
          v22 = *(a3 + 8) - *a3;
          v23 = 24 * v17 - v22;
          memcpy((v21 - v22), *a3, v22);
          v24 = *a3;
          *a3 = v23;
          *(a3 + 8) = v16;
          v25 = *(a3 + 16);
          *(a3 + 16) = 0;
          v28[2] = v24;
          v28[3] = v25;
          v28[0] = v24;
          v28[1] = v24;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(v28);
        }

        else
        {
          *v14 = 0;
          v14[1] = 0;
          v14[2] = 0;
          *v14 = v26;
          v14[2] = v27;
          v26 = 0uLL;
          v27 = 0;
          v16 = (v14 + 3);
        }

        *(a3 + 8) = v16;
        v28[0] = &v26;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](v28);
        v12 += 250;
      }

      while (v12 != v13);
    }
  }
}

void KB::NgramCandidateRefinery::set_text_blocklisted_flag(void *a1, uint64_t a2, uint64_t a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 16))(a1))
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 != v7)
    {
      do
      {
        if (*v6)
        {
          v8 = v6[1];
          v9 = 240 * *v6;
          do
          {
            if ((*(v8 + 135) & 4) == 0)
            {
              goto LABEL_14;
            }

            v10 = v8[2];
            if (!v8[2])
            {
              KB::String::compute_length(v8);
              v10 = v8[2];
            }

            if (v10 != 1)
            {
              goto LABEL_14;
            }

            v11 = *(v8 + 1);
            if (!v11)
            {
              v11 = v8 + 8;
            }

            if (*v11 != 32 || v11[1])
            {
              v12 = a1[4];
              v33 = v11;
              LODWORD(v34) = 0;
              HIDWORD(v34) = *v8;
              LODWORD(__p) = 0;
              KB::String::iterator::initialize(&v33);
              *(v8 + 17) = (*(*v12 + 304))(v12, __p);
            }

            else
            {
LABEL_14:
              v13 = *(v8 + 26);
              if ((v13 & 0x40000) == 0 && (*(v8 + 135) & 4) == 0 && (v13 & 0x800000) == 0 && *v8 && ((*(*a1[4] + 24))(a1[4]) & 1) == 0)
              {
                v14 = a1[4];
                KB::Word::capitalized_string(v8, &v33);
                v15 = KB::LanguageModel::id_for_dynamic_engine_word(v14, &v33, (a1 + 3));
                if (v34 && BYTE6(v33) == 1)
                {
                  free(v34);
                }

                *(v8 + 17) = v15;
                if (!HIDWORD(v15))
                {
                  v16 = *(v8 + 26);
                  if ((v16 & 0x80020100) == 0 && !*(v8 + 28))
                  {
                    *(v8 + 26) = v16 | 4;
                  }
                }
              }
            }

            v8 += 120;
            v9 -= 240;
          }

          while (v9);
        }

        KB::LanguageModelContext::LanguageModelContext(&v33, (v6 + 98));
        if (*v6)
        {
          v17 = 0;
          v18 = -240;
          do
          {
            if (v18 != -240)
            {
              v19 = v6[1];
              v20 = (v19 + v18);
              v21 = (*(*a1[4] + 144))(a1[4]);
              if (v21)
              {
                if ((*(v20 + 135) & 4) == 0)
                {
                  v22 = (v19 + v18 + 16);
                  if (*(v19 + v18 + 8))
                  {
                    v22 = *(v19 + v18 + 8);
                  }

                  if (*v22 && (*v22 != 32 || v22[1]))
                  {
                    v23 = v19 + v18;
                    v24 = *(v19 + v18 + 136);
                    KB::Word::capitalized_string(v20, &v31);
                    v25 = v24;
                    KB::LanguageModelContext::append(&v33, v25, &v31, (*(v23 + 104) >> 1) & 1);
                    if (v32)
                    {
                      if (BYTE6(v31) == 1)
                      {
                        free(v32);
                      }
                    }
                  }
                }
              }

              else
              {
                KB::NgramCandidateRefinery::update_context(v21, &v33, (v19 + v18));
              }
            }

            v26 = v6[1];
            v27 = a1[4];
            KB::Word::capitalized_string((v26 + v18 + 240), &v31);
            v28 = (*(*v27 + 488))(v27, &v31, *(v26 + v18 + 376), &v33, a3);
            if (v32)
            {
              v29 = BYTE6(v31) == 1;
            }

            else
            {
              v29 = 0;
            }

            if (v29)
            {
              free(v32);
            }

            if (v28)
            {
              *(v26 + v18 + 344) |= 0x40000000u;
            }

            ++v17;
            v18 += 240;
          }

          while (v17 < *v6);
        }

        v31 = v39;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v31);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v38);
        language_modeling::v1::LinguisticContext::~LinguisticContext(&v37);
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v34);
        }

        v6 += 125;
      }

      while (v6 != v7);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void KB::NgramCandidateRefinery::update_context(KB::NgramCandidateRefinery *this, KB::LanguageModelContext *a2, const KB::Word *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 135) & 4) == 0)
  {
    v4 = *(a3 + 1);
    if (!v4)
    {
      v4 = a3 + 16;
    }

    if (*v4 && (*v4 != 32 || v4[1]))
    {
      v6 = *(a3 + 17);
      KB::Word::capitalized_string(a3, v9);
      v7 = v6;
      KB::LanguageModelContext::append(a2, v7, v9, (*(a3 + 26) >> 1) & 1);
      if (v10 && v9[6] == 1)
      {
        free(v10);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void KB::NgramCandidateRefinery::refine_candidates(KB::NgramCandidateRefinery *a1, uint64_t a2, uint64_t a3)
{
  KB::NgramCandidateRefinery::add_context_weights_batched(a1, a2);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      if (*v5)
      {
        v7 = 240 * *v5;
        v8 = (*(v5 + 1) + 52);
        v9 = 1.0;
        do
        {
          v10 = *v8;
          v8 += 60;
          v9 = v9 * v10;
          v7 -= 240;
        }

        while (v7);
      }

      else
      {
        v9 = 1.0;
      }

      std::function<void ()(KB::Candidate &,float)>::operator()(*(a3 + 24), v5, v9);
      v5 += 250;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = *(a2 + 8);
  }

  v11 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v6 - v5) >> 3));
  if (v6 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v5, v6, v12, 1);
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_completions(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 144);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_fragment_conditional_prob(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 192);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_support_multilingual(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 184);

  return v3();
}

uint64_t KB::NgramCandidateRefinery::does_language_model_provide_inline_completions(KB::NgramCandidateRefinery *this)
{
  v2 = *(this + 4);
  if (!v2 || !(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = *(**(this + 4) + 160);

  return v3();
}

void KB::NgramCandidateRefinery::~NgramCandidateRefinery(KB::NgramCandidateRefinery *this)
{
  KB::NgramCandidateRefinery::~NgramCandidateRefinery(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE798;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void KB::UnigramCandidateRefinery::lexicon_id_vector(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void KB::UnigramCandidateRefinery::predictions_for_prediction_stems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v4 - *a4) >> 3));
  if (v4 == *a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a4, v4, v6, 1);
}

void KB::UnigramCandidateRefinery::completions_for_completion_stems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v4 - *a4) >> 3));
  if (v4 == *a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a4, v4, v6, 1);
}

void KB::UnigramCandidateRefinery::refine_candidates(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v2, v3, v5, 1);
}

void KB::UnigramCandidateRefinery::~UnigramCandidateRefinery(KB::UnigramCandidateRefinery *this)
{
  *this = &unk_283FDE838;
  v1 = *(this + 1);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDE838;
  v1 = *(this + 1);
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }
}

uint64_t KB::NgramCandidateRefinery::NgramCandidateRefinery(uint64_t a1, atomic_uint **a2, void *a3, int a4, int a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_283FDE798;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a4;
  if (a5)
  {
    (*(**(a1 + 32) + 96))(*(a1 + 32));
  }

  return a1;
}

void std::__shared_ptr_emplace<KB::NgramCandidateRefinery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDE8D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::NgramCandidateRefinery::context_probability_of_word(KB::NgramCandidateRefinery *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  (*(**(this + 4) + 24))(*(this + 4));
  if ((*(**(this + 4) + 16))(*(this + 4)))
  {
    v11 = *(**(this + 4) + 424);
    v10.n128_f32[0] = a2;

    v11(v10);
  }

  else
  {
    *a3 = KB::k_invalid_likelihood_value;
    *(a3 + 8) = dword_27D9EBB28;
    if (byte_27D9EBB47 < 0)
    {
      v12 = *aInvalidLikelih_2;
      v13 = *&aInvalidLikelih_2[8];

      std::string::__init_copy_ctor_external((a3 + 16), v12, v13);
    }

    else
    {
      *(a3 + 16) = *aInvalidLikelih_2;
      *(a3 + 32) = *&aInvalidLikelih_2[16];
    }
  }
}

void KB::NgramCandidateRefinery::add_context_weight(KB::NgramCandidateRefinery *this, KB::Word *a2, const KB::LanguageModelContext *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (KB::NgramCandidateRefinery::should_not_score_token(this, a2))
  {
    *(a2 + 12) = 0;
    goto LABEL_37;
  }

  v6 = *(this + 4);
  KB::Word::capitalized_string(a2, &v18);
  v16 = *(a2 + 17);
  v7 = (*(*v6 + 408))(v6, &v18, &v16);
  if (v19)
  {
    v8 = BYTE6(v18) == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    free(v19);
  }

  if (v7)
  {
    if (s_trace_logging_enabled == 1)
    {
      Mutable = CFStringCreateMutable(0, 0);
    }

    else
    {
      Mutable = 0;
    }

    KB::Word::capitalized_string(a2, &v16);
    v15 = *(a2 + 17);
    KB::NgramCandidateRefinery::context_probability_of_word(this, *(a2 + 13), &v18);
    if (v17 && BYTE6(v16) == 1)
    {
      free(v17);
    }

    *(a2 + 52) = v18;
    v10 = (*(**(this + 4) + 16))(*(this + 4));
    v11 = 1.0;
    if (v10)
    {
      v11 = (*(**(this + 4) + 456))(*(this + 4), *(a2 + 34), a3, 1.0);
    }

    *(a2 + 24) = v11;
    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    KB::String::String(&v16, p_p);
    KB::String::operator=((a2 + 64), &v16);
    if (v17 && BYTE6(v16) == 1)
    {
      free(v17);
    }

    v13 = v19;
    if (v19)
    {
      *(a2 + 26) |= 0x1000000u;
      if ((v13 & 2) == 0)
      {
LABEL_26:
        if (!Mutable)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_26;
    }

    *(a2 + 26) |= 0x4000000u;
    if (!Mutable)
    {
LABEL_33:
      if (v21 < 0)
      {
        operator delete(__p);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_37;
    }

LABEL_30:
    KB::utf8_string(Mutable, &v16);
    KB::String::operator=((a2 + 160), &v16);
    if (v17 && BYTE6(v16) == 1)
    {
      free(v17);
    }

    goto LABEL_33;
  }

LABEL_37:
  v14 = *MEMORY[0x277D85DE8];
}

void KB::ChooseTopQualityAutocorrection::filter_candidates(KB::ChooseTopQualityAutocorrection *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  if (*a2 != *(a2 + 1))
  {
    v25[2] = v7;
    v25[3] = v6;
    v25[14] = v4;
    v25[15] = v5;
    KB::CandidateCollection::CandidateCollection(v21, a2);
    v12 = expf(*(*a2 + 744));
    KB::ChooseTopQualityAutocorrection::filter_candidates_subset(this, a2, a3, a4, v12);
    if (*a2 != *(a2 + 1))
    {
      v13 = 0;
      v14 = 125;
      while (1)
      {
        v15 = v13;
        KB::CandidateCollection::CandidateCollection(&v16, v21);
        std::vector<KB::Candidate>::erase(&v16, v16, &v16[v14]);
        if (v16 == v17)
        {
          break;
        }

        KB::ChooseTopQualityAutocorrection::filter_candidates_subset(this, &v16, a3, a4, v12);
        if (v16 == v17)
        {
          break;
        }

        std::vector<KB::Candidate>::push_back[abi:nn200100](a2 + 24, v16);
        v25[0] = v20;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = v19;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = v18;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v25[0] = &v16;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
        v13 = 1;
        v14 = 250;
        if (v15)
        {
          goto LABEL_9;
        }
      }

      v25[0] = v20;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v19;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = v18;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      v25[0] = &v16;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
    }

LABEL_9:
    v16 = &v24;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = &v23;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = &v22;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
    v16 = v21;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v16);
  }
}

void KB::ChooseTopQualityAutocorrection::filter_candidates_subset(KB::ChooseTopQualityAutocorrection *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4, float a5)
{
  v196[2] = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    KB::Candidate::capitalized_string(*a2, v180);
    KB::Candidate::capitalized_string(a3, v178);
    v10 = KB::String::equal(v178, v180, 1);
    if (v178[1] && BYTE6(v178[0]) == 1)
    {
      free(v178[1]);
    }

    KB::Candidate::capitalized_string((a3 + 2168), v178);
    v11 = KB::String::equal(v178, v180, 1);
    if (v178[1] && BYTE6(v178[0]) == 1)
    {
      free(v178[1]);
    }

    v167 = 0;
    memset(v165, 0, sizeof(v165));
    memset(v166, 0, sizeof(v166));
    std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(v166, 0, a2[6], a2[7], 0x1CAC083126E978D5 * ((a2[7] - a2[6]) >> 3));
    std::vector<KB::Candidate>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Candidate const*>,std::__wrap_iter<KB::Candidate const*>>(&v165[1] + 1, 0, a2[3], a2[4], 0x1CAC083126E978D5 * ((a2[4] - a2[3]) >> 3));
    KB::Candidate::capitalized_string(a3, v178);
    v13 = KB::String::equal(v178, v180, 0);
    if (v178[1] && BYTE6(v178[0]) == 1)
    {
      free(v178[1]);
    }

    if ((*(a2 + 100) & 1) == 0 || v13)
    {
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v167 |= 1u;
      if (!v13)
      {
LABEL_13:
        if (v10)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }

    std::vector<KB::Candidate>::push_back[abi:nn200100](&v166[1] + 8, *a2);
    if (v10)
    {
LABEL_14:
      v14 = *(a4 + 7);
      if (v14)
      {
        v15 = v182;
        if (!v182)
        {
          v15 = v183;
        }

        if (v180[0])
        {
          v16 = v15;
        }

        else
        {
          v16 = "";
        }

        KB::append_format(v14, "[%s] matches the input string - ignoring\n", v12, v16);
      }

LABEL_248:
      KB::CandidateCollection::operator=(a2, v165);
      v178[0] = &v166[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v178);
      v178[0] = v166;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v178);
      v178[0] = &v165[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v178);
      v178[0] = v165;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v178);
      if (v182)
      {
        if (v181 == 1)
        {
          free(v182);
        }
      }

      goto LABEL_251;
    }

LABEL_23:
    v158 = v11;
    v161 = this;
    v17 = *a2;
    KB::Candidate::capitalized_string(a3, v192);
    KB::Candidate::capitalized_string(v17, v187);
    v18 = v193;
    if (!v193)
    {
      KB::String::compute_length(v192);
      v18 = v193;
    }

    v19 = v188;
    if (!v188)
    {
      KB::String::compute_length(v187);
      v19 = v188;
    }

    if (v19 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = v195;
    if (!v195)
    {
      v21 = v196;
    }

    v178[0] = v21;
    LODWORD(v178[1]) = 0;
    HIDWORD(v178[1]) = v192[0];
    LODWORD(v179[0]) = 0;
    KB::String::iterator::initialize(v178);
    v170 = *v178;
    v171 = v179[0];
    v22 = v190;
    if (!v190)
    {
      v22 = v191;
    }

    *&v172 = v22;
    DWORD2(v172) = 0;
    HIDWORD(v172) = v187[0];
    LODWORD(v173) = 0;
    KB::String::iterator::initialize(&v172);
    v178[0] = 0;
    v178[1] = v178;
    v179[0] = 0x3002000000;
    v179[1] = __Block_byref_object_copy__21274;
    v23 = *(a3 + 251);
    v179[2] = __Block_byref_object_dispose__21275;
    v179[3] = v23;
    *&v176[0].lexicon_id = v170;
    v177[0] = v171;
    std::__advance[abi:nn200100]<KB::String::iterator>(v176, v20);
    v24 = 0;
    lexicon_id = v176[1].lexicon_id;
    v184 = v170;
    v185 = v171;
    v186 = 0;
    v174 = v172;
    v175 = v173;
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 0x40000000;
    v177[0] = ___ZN2KB30ChooseTopQualityAutocorrection38case_sens_position_of_first_differenceERKNS_6StringERKNSt3__16vectorIjNS4_9allocatorIjEEEES3__block_invoke;
    v177[1] = &unk_278733168;
    v177[2] = v178;
    v177[3] = a3 + 2008;
    if (DWORD2(v170) != lexicon_id)
    {
      do
      {
        v168 = v175;
        v169 = v185;
        if (!(v177[0])(v176, &v169, &v168))
        {
          break;
        }

        ++v186;
        KB::String::iterator::operator++(&v184);
        KB::String::iterator::operator++(&v174);
      }

      while (DWORD2(v184) != lexicon_id);
      v24 = v186;
    }

    _Block_object_dispose(v178, 8);
    v26 = KB::Candidate::length(a3);
    v27 = KB::Candidate::index_of_word_containing_position(a3, v24);
    if (KB::Candidate::does_word_begin_at_position(a3, v24))
    {
      v27 -= !KB::Candidate::does_word_begin_at_position(v17, v24);
    }

    v156 = KB::Candidate::length_to_word(a3, v27);
    v160 = KB::Candidate::length(v17);
    v159 = KB::Candidate::length(a3);
    if (v190)
    {
      v28 = v190;
    }

    else
    {
      v28 = v191;
    }

    v176[0] = v28;
    v29 = v187[0];
    v176[1].lexicon_id = 0;
    v176[1].word_id = v187[0];
    LODWORD(v177[0]) = 0;
    KB::String::iterator::initialize(v176);
    *v178 = *&v176[0].lexicon_id;
    v179[0] = v177[0];
    std::__advance[abi:nn200100]<KB::String::iterator>(v178, v24);
    *&v174 = v28;
    DWORD2(v174) = v29;
    HIDWORD(v174) = v29;
    LODWORD(v175) = 0;
    KB::String::iterator::initialize(&v174);
    v30 = KB::String::String(&v184, v178, &v174);
    v164 = v24;
    v157 = v26;
    if (KB::string_has_precomposed_diacritic_letters(v30, v31) || KB::string_has_separated_diacritics(&v184, v32))
    {
      v33 = 1;
    }

    else
    {
      v34 = *(a4 + 5);
      v35 = &v185;
      if (v34)
      {
        if (*(&v184 + 1))
        {
          v36 = *(&v184 + 1);
        }

        else
        {
          v36 = &v185;
        }

        v178[0] = v36;
        v37 = v184;
        LODWORD(v178[1]) = 0;
        HIDWORD(v178[1]) = v184;
        LODWORD(v179[0]) = 0;
        KB::String::iterator::initialize(v178);
        v176[0] = v36;
        v176[1].lexicon_id = v37;
        v176[1].word_id = v37;
        LODWORD(v177[0]) = 0;
        KB::String::iterator::initialize(v176);
        v38 = v178[1];
        v39 = v176[1].lexicon_id;
        if (LODWORD(v178[1]) != v176[1].lexicon_id)
        {
          while (!(*(v34 + 16))(v34, LODWORD(v179[0])))
          {
            KB::String::iterator::operator++(v178);
            if (LODWORD(v178[1]) == v39)
            {
              v38 = v39;
              goto LABEL_66;
            }
          }

          v38 = v178[1];
        }

LABEL_66:
        v43 = *(&v184 + 1);
        if (!*(&v184 + 1))
        {
          v43 = &v185;
        }

        v178[0] = v43;
        LODWORD(v178[1]) = v184;
        HIDWORD(v178[1]) = v184;
      }

      else
      {
        if (*(&v184 + 1))
        {
          v35 = *(&v184 + 1);
        }

        v178[0] = v35;
        v40 = v184;
        LODWORD(v178[1]) = 0;
        HIDWORD(v178[1]) = v184;
        LODWORD(v179[0]) = 0;
        KB::String::iterator::initialize(v178);
        v176[0] = v35;
        v176[1].lexicon_id = v40;
        v176[1].word_id = v40;
        LODWORD(v177[0]) = 0;
        KB::String::iterator::initialize(v176);
        v38 = v178[1];
        v41 = v176[1].lexicon_id;
        if (LODWORD(v178[1]) != v176[1].lexicon_id)
        {
          while ((LODWORD(v179[0]) - 38) >= 2)
          {
            if ((LODWORD(v179[0]) - 1523) < 2 || LODWORD(v179[0]) == 8217)
            {
              break;
            }

            KB::String::iterator::operator++(v178);
            v38 = v178[1];
            if (LODWORD(v178[1]) == v41)
            {
              v38 = v41;
              break;
            }
          }
        }

        v178[0] = v35;
        LODWORD(v178[1]) = v40;
        HIDWORD(v178[1]) = v40;
      }

      LODWORD(v179[0]) = 0;
      KB::String::iterator::initialize(v178);
      v33 = v38 != LODWORD(v178[1]);
    }

    v162 = v33;
    v44 = KB::Candidate::length(v17);
    v46 = KB::Candidate::length(a3);
    if (*v17)
    {
      v47 = 0;
      v48 = *(v17 + 1);
      v49 = 240 * *v17;
      do
      {
        if ((*(v48 + 135) & 4) == 0)
        {
          v50 = *(v48 + 4);
          if (!*(v48 + 4))
          {
            KB::String::compute_length(v48);
            v50 = *(v48 + 4);
          }

          if (v50 == 1)
          {
            ++v47;
          }
        }

        v48 += 240;
        v49 -= 240;
      }

      while (v49);
    }

    else
    {
      v47 = 0;
    }

    if (*a3)
    {
      v51 = *(a3 + 1);
      v52 = 240 * *a3;
      do
      {
        if ((*(v51 + 135) & 4) == 0)
        {
          v53 = *(v51 + 4);
          if (!*(v51 + 4))
          {
            KB::String::compute_length(v51);
            v53 = *(v51 + 4);
          }

          v47 -= v53 == 1;
        }

        v51 += 240;
        v52 -= 240;
      }

      while (v52);
    }

    if (v44 > v46 && v47 < 0 && (*(a3 + 3175) & 1) == 0)
    {
      v75 = *(a4 + 7);
      if (v75)
      {
        KB::Candidate::capitalized_string(*a2, v178);
        v77 = v178[1];
        if (!v178[1])
        {
          v77 = v179;
        }

        if (LOWORD(v178[0]))
        {
          v78 = v77;
        }

        else
        {
          v78 = "";
        }

        KB::append_format(v75, "[%s] prediction skipped for single-character input\n", v76, v78);
        goto LABEL_226;
      }

      goto LABEL_229;
    }

    v54 = *(v161 + 2);
    KB::Candidate::capitalized_string(a3, v178);
    LOWORD(v176[0].word_id) = 0;
    BYTE2(v176[0].word_id) = 0;
    v176[1] = " \t\n";
    v176[0].lexicon_id = 1048579;
    BYTE1(v177[0]) = 0;
    KB::string_split_after(v178, v176, &v174);
    if (*&v176[1] && BYTE2(v176[0].word_id) == 1)
    {
      free(*&v176[1]);
    }

    if (v178[1] && BYTE6(v178[0]) == 1)
    {
      free(v178[1]);
    }

    KB::Candidate::capitalized_string(v17, v178);
    LOWORD(v176[0].word_id) = 0;
    BYTE2(v176[0].word_id) = 0;
    v176[1] = " \t\n";
    v176[0].lexicon_id = 1048579;
    BYTE1(v177[0]) = 0;
    KB::string_split_after(v178, v176, &v172);
    if (*&v176[1] && BYTE2(v176[0].word_id) == 1)
    {
      free(*&v176[1]);
    }

    if (v178[1] && BYTE6(v178[0]) == 1)
    {
      free(v178[1]);
    }

    v55 = *(a4 + 2);
    if (v55)
    {
      atomic_fetch_add(v55, 1u);
    }

    v163 = a4;
    v56 = *(v55 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v55);
    LOBYTE(v178[0]) = 0;
    std::vector<BOOL>::vector(&v170, (*(&v174 + 1) - v174) >> 5);
    v57 = *(&v174 + 1);
    v58 = v174;
    if (*(&v174 + 1) == v174)
    {
      v58 = *(&v174 + 1);
    }

    else
    {
      v59 = 0;
      v60 = 0;
      do
      {
        v61 = v172;
        if (v60 >= (*(&v172 + 1) - v172) >> 5)
        {
          break;
        }

        if (v58 == v172 || KB::String::equal((v58 + v59), (v172 + v59), 1))
        {
          goto LABEL_112;
        }

        v62 = *(v56 + 168);
        if (!v62)
        {
          v154 = std::__throw_bad_function_call[abi:nn200100]();
          __Block_byref_object_copy__21274(v154, v155);
          return;
        }

        if ((*(*v62 + 48))(v62, v61 + v59, v58 + v59))
        {
          v178[0] = &unk_283FDCF10;
          v178[1] = 1;
          if (KB::InputSegmentFilter::string_preserves_surface_form_features(v178, (v61 + v59), (v58 + v59), 0, 0))
          {
LABEL_112:
            *(v170 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
          }
        }

        ++v60;
        v57 = *(&v174 + 1);
        v58 = v174;
        v59 += 32;
      }

      while (v60 < (*(&v174 + 1) - v174) >> 5);
    }

    v64 = *(&v170 + 1);
    v63 = v170;
    if (*(&v170 + 1) < 0x40uLL)
    {
      v65 = 0;
      v66 = v170;
      v67 = v164;
      if (*(&v170 + 1))
      {
LABEL_120:
        v70 = vcnt_s8((*v66 & (0xFFFFFFFFFFFFFFFFLL >> -v64)));
        v70.i16[0] = vaddlv_u8(v70);
        v65 += v70.u32[0];
      }
    }

    else
    {
      v65 = 0;
      v66 = v170;
      v67 = v164;
      do
      {
        v68 = *v66++;
        v69 = vcnt_s8(v68);
        v69.i16[0] = vaddlv_u8(v69);
        v65 += v69.u32[0];
        v64 -= 64;
      }

      while (v64 > 0x3F);
      if (v64)
      {
        goto LABEL_120;
      }
    }

    a4 = v163;
    v71 = v57 - v58;
    if (v65 == v71 >> 5)
    {
LABEL_122:
      v72 = 0;
      goto LABEL_144;
    }

    if (v65 + 1 == v71 >> 5)
    {
      if (v71 >= *(&v172 + 1) - v172)
      {
        goto LABEL_122;
      }

      v73 = KB::Candidate::length(a3);
      v176[0].lexicon_id = 0x100000;
      LOWORD(v176[0].word_id) = 0;
      BYTE2(v176[0].word_id) = 0;
      v176[1] = 0;
      LOBYTE(v177[0]) = 0;
      KB::string_join(v172, (*(&v174 + 1) + v172 - v174), v176, v178);
      if (*&v176[1] && BYTE2(v176[0].word_id) == 1)
      {
        free(*&v176[1]);
      }

      v74 = WORD2(v178[0]);
      if (!WORD2(v178[0]))
      {
        KB::String::compute_length(v178);
        v74 = WORD2(v178[0]);
      }

      v72 = v73 >= v74;
      if (v178[1] && BYTE6(v178[0]) == 1)
      {
        free(v178[1]);
      }

      v63 = v170;
      v67 = v164;
    }

    else
    {
      v72 = 1;
    }

LABEL_144:
    if (v63)
    {
      operator delete(v63);
    }

    v178[0] = &v172;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v178);
    v178[0] = &v174;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](v178);
    if (!v72)
    {
      goto LABEL_161;
    }

    v79 = *(v163 + 2);
    if (!v79)
    {
      goto LABEL_161;
    }

    atomic_fetch_add(v79, 1u);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v79);
    if (*v17 < 2uLL)
    {
      goto LABEL_161;
    }

    v80 = *(v163 + 2);
    if (v80)
    {
      atomic_fetch_add(v80, 1u);
    }

    v81 = *(v80 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v80);
    v82 = KB::Candidate::num_words_preserving_input(v17, a3, v81 + 144);
    if (*v17 > v82)
    {
      v83 = v82;
      v84 = 240 * v82;
      do
      {
        v85 = *(v17 + 1);
        v86 = (v85 + v84);
        if ((*(v85 + v84 + 135) & 4) == 0 && (*(v86 + 106) & 4) != 0)
        {
          v87 = *(v163 + 2);
          if (v87)
          {
            atomic_fetch_add(v87, 1u);
          }

          KB::Word::capitalized_string(v86, v178);
          v176[0] = *(v85 + v84 + 136);
          KB::DictionaryContainer::_probability_of_word_with_string_and_id(v87, v178, v176);
        }

        ++v83;
        v84 += 240;
      }

      while (v83 < *v17);
      v67 = v164;
      if (1.0 <= 0.0)
      {
        goto LABEL_161;
      }
    }

    if ((1.0 / 1.0) < v54)
    {
      v116 = *(v163 + 7);
      if (v116)
      {
        KB::Candidate::capitalized_string(v17, v178);
        v118 = v178[1];
        if (!v178[1])
        {
          v118 = v179;
        }

        if (LOWORD(v178[0]))
        {
          v119 = v118;
        }

        else
        {
          v119 = "";
        }

        KB::append_format(v116, "[%s] skipped complex candidate with insufficient linguistic support\n", v117, v119);
        goto LABEL_226;
      }
    }

    else
    {
LABEL_161:
      v45 = v192[0];
      if (v192[0] <= v187[0])
      {
        if (v190)
        {
          v89 = v190;
        }

        else
        {
          v89 = v191;
        }

        if (v195)
        {
          v90 = v195;
        }

        else
        {
          v90 = v196;
        }

        v88 = strncasecmp(v89, v90, v192[0]) == 0;
      }

      else
      {
        v88 = 0;
      }

      v91 = v193;
      if (!v193)
      {
        KB::String::compute_length(v192);
        v91 = v193;
      }

      v92 = v160 - v159;
      v93 = v67 != v91;
      if (v162)
      {
        goto LABEL_187;
      }

      if (*v17)
      {
        v94 = 240 * *v17 - 240;
        v95 = (*(v17 + 1) + 224);
        do
        {
          v97 = *v95;
          v95 += 30;
          v96 = v97;
          if (v97)
          {
            v98 = 1;
          }

          else
          {
            v98 = v94 == 0;
          }

          v94 -= 240;
        }

        while (!v98);
        if (v96)
        {
          v99 = 0;
        }

        else
        {
          v99 = v67 == v91;
        }

        v93 = !v99;
      }

      if (v93 || v158)
      {
LABEL_187:
        v100 = 0;
      }

      else
      {
        v101 = 24;
        if (v92 == 2)
        {
          v101 = 20;
        }

        if (v92 < 2)
        {
          v101 = 16;
        }

        v100 = (v157 - v156) < *(v161 + v101);
      }

      v102 = *a2;
      v103 = a2[1] - *a2;
      v104 = 0x1CAC083126E978D5 * (v103 >> 3);
      v105 = 0.0;
      if (v104 >= 2)
      {
        v105 = expf(v102[436]);
      }

      if (v103 == 1000 && !v100 || !v88 || v164 != v91 && (v92 < 1 || v162))
      {
        a4 = v163;
        v106 = *(v163 + 7);
        if (v106)
        {
          KB::Candidate::capitalized_string(v102, v178);
          v108 = v178[1];
          if (!v178[1])
          {
            v108 = v179;
          }

          if (LOWORD(v178[0]))
          {
            v109 = v108;
          }

          else
          {
            v109 = "";
          }

          KB::append_format(v106, "[%s] dominant due to mismatch with typed string\n", v107, v109);
LABEL_205:
          if (v178[1] && BYTE6(v178[0]) == 1)
          {
            free(v178[1]);
          }
        }

LABEL_208:
        v110 = 1;
        goto LABEL_230;
      }

      a4 = v163;
      if (v104 >= 2 && !v100)
      {
        if (*(v102 + 444))
        {
          v115 = v102;
        }

        else
        {
          KB::Candidate::compute_string(v102);
          v115 = *a2;
        }

        if (!*(v115 + 944))
        {
          KB::Candidate::compute_string((v115 + 1000));
        }

        if (KB::String::equal((v102 + 222), (v115 + 1888), 0))
        {
          v124 = *(v163 + 7);
          if (!v124)
          {
            goto LABEL_208;
          }

          KB::Candidate::capitalized_string(*a2, v178);
          v125 = v178[1];
          if (!v178[1])
          {
            v125 = v179;
          }

          if (LOWORD(v178[0]))
          {
            v126 = v125;
          }

          else
          {
            v126 = "";
          }

          KB::Candidate::capitalized_string((*a2 + 1000), v176);
          v128 = v176[1];
          if (!*&v176[1])
          {
            v128 = v177;
          }

          if (LOWORD(v176[0].lexicon_id))
          {
            v129 = v128;
          }

          else
          {
            v129 = "";
          }

          KB::append_format(v124, "[%s] candidate is dominant as second candidate [%s] is a duplicate as well\n", v127, v126, v129);
        }

        else
        {
          v130 = *a2;
          v131 = *a2;
          if (!*(*a2 + 944))
          {
            KB::Candidate::compute_string((v130 + 1000));
            v131 = *a2;
          }

          v132 = *(v131 + 444);
          if (!*(v131 + 444))
          {
            KB::Candidate::compute_string(v131);
            v132 = *(v131 + 444);
          }

          if (v132 > *(v130 + 944) || (*(v130 + 237) ? (v133 = *(v130 + 237)) : (v133 = v130 + 1904), *(v131 + 112) ? (v134 = *(v131 + 112)) : (v134 = v131 + 904), strncasecmp(v133, v134, v132)))
          {
            if (v162 && *(a3 + 3172) == 1 && (v135 = *(*a2 + 125)) != 0)
            {
              v136 = 240 * v135 - 240;
              v137 = (*(*a2 + 126) + 120);
              do
              {
                v138 = *v137;
                v137 += 60;
                v139 = v138 != 0;
                if (v138)
                {
                  v140 = 1;
                }

                else
                {
                  v140 = v136 == 0;
                }

                v136 -= 240;
              }

              while (!v140);
            }

            else
            {
              v139 = 0;
            }

            v141 = v105 * *(v161 + 3);
            v142 = *(v163 + 7);
            if (v142)
            {
              KB::Candidate::capitalized_string(*a2, v178);
              v144 = v178[1];
              if (!v178[1])
              {
                v144 = v179;
              }

              if (LOWORD(v178[0]))
              {
                v145 = v144;
              }

              else
              {
                v145 = "";
              }

              v146 = "false";
              if (v141 >= a5)
              {
                v147 = "false";
              }

              else
              {
                v147 = "true";
              }

              if (v139)
              {
                v146 = "true";
              }

              KB::append_format(v142, "[%s] dominant=%s (p0=%g,p1=%g) (competing_variants=%s)\n", v143, v145, v147, a5, v105, v146);
              if (v178[1] && BYTE6(v178[0]) == 1)
              {
                free(v178[1]);
              }
            }

            v110 = v141 < a5 && !v139;
            goto LABEL_230;
          }

          v148 = *(v163 + 7);
          if (!v148)
          {
            goto LABEL_208;
          }

          KB::Candidate::capitalized_string(*a2, v178);
          v149 = v178[1];
          if (!v178[1])
          {
            v149 = v179;
          }

          if (LOWORD(v178[0]))
          {
            v150 = v149;
          }

          else
          {
            v150 = "";
          }

          KB::Candidate::capitalized_string((*a2 + 1000), v176);
          v152 = v176[1];
          if (!*&v176[1])
          {
            v152 = v177;
          }

          if (LOWORD(v176[0].lexicon_id))
          {
            v153 = v152;
          }

          else
          {
            v153 = "";
          }

          KB::append_format(v148, "[%s] candidate is dominant as it is a subset (prefix) of the second candidate [%s]\n", v151, v150, v153);
        }

        if (*&v176[1] && BYTE2(v176[0].word_id) == 1)
        {
          free(*&v176[1]);
        }

        goto LABEL_205;
      }

      v111 = *(v163 + 7);
      if (v111)
      {
        KB::Candidate::capitalized_string(v102, v178);
        v113 = v178[1];
        if (!v178[1])
        {
          v113 = v179;
        }

        if (LOWORD(v178[0]))
        {
          v114 = v113;
        }

        else
        {
          v114 = "";
        }

        KB::append_format(v111, "[%s] skipped as length gain from autocorrection does not produce a viable candidate\n", v112, v114);
LABEL_226:
        if (v178[1] && BYTE6(v178[0]) == 1)
        {
          free(v178[1]);
        }
      }
    }

LABEL_229:
    v110 = 0;
LABEL_230:
    if (*(&v184 + 1) && BYTE6(v184) == 1)
    {
      free(*(&v184 + 1));
    }

    if (v190 && v189 == 1)
    {
      free(v190);
    }

    if (v195 && v194 == 1)
    {
      free(v195);
    }

    if (v110)
    {
      KB::Candidate::Candidate(v178, *a2);
      operator new();
    }

    v120 = *(a4 + 7);
    if (v120)
    {
      v121 = v182;
      if (!v182)
      {
        v121 = v183;
      }

      if (v180[0])
      {
        v122 = v121;
      }

      else
      {
        v122 = "";
      }

      KB::append_format(v120, "[%s] not significantly better than input - rejecting\n", v45, v122);
    }

    goto LABEL_248;
  }

LABEL_251:
  v123 = *MEMORY[0x277D85DE8];
}