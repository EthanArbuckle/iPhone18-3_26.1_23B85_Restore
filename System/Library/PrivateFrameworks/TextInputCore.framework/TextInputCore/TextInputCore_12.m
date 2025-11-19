uint64_t TI::Favonius::BeamSearch::choose_hit_test_node(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *a4;
  v6 = *(*a4 + 48);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = a4;
  if (a2)
  {
    if (v6 != a2)
    {
      goto LABEL_4;
    }
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = *(v6 + 32);
    v11 = *(v9 + 48);
    v12 = *(v11 + 32);
    if ((v10 * 4.0) > v12 || v10 <= v12)
    {
      if ((v10 * 4.0) > v12)
      {
        return *v7;
      }
    }

    else if ((*(v5 + 144) + (*(v5 + 136) * 0.18)) > (*(v9 + 144) + (*(v9 + 136) * 0.18)))
    {
      return *v7;
    }

    v14 = *(v5 + 32);
    v15 = v6 != v11 || v14 == 0;
    v16 = !v15 && v14 == a1;
    if (!v16 || (v17 = *(v5 + 56)) == 0 || (**v17)(v17) != *(*(v5 + 32) + 56))
    {
LABEL_4:
      v7 = a3;
    }
  }

  return *v7;
}

void TI::Favonius::BeamSearch::extend_with_backspace(atomic_uint **a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v7 = (a3[1] - *a3) >> 4;
  if (v7 >= 1)
  {
    v49 = &v44;
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>>(v7);
  }

  v8 = (*(*v6 + 64))(v6);
  v10 = *v8;
  v9 = v8[1];
  if (*v8)
  {
    v11 = 8 * v10;
    v12 = &v9[v10];
    while ((*(*(*v9 + 1) + 60) & 0x80) == 0)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        v9 = v12;
        break;
      }
    }
  }

  v13 = *v9;
  v43 = v13;
  if (v13)
  {
    atomic_fetch_add(v13, 1u);
    v47 = 0uLL;
    std::vector<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::push_back[abi:nn200100](&v44, &v47);
    if (*(&v47 + 1))
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(*(&v47 + 1));
    }

    if (v47)
    {
      v14 = atomic_load((v47 + 8));
      if (v14 == 1)
      {
        (*(*v47 + 8))();
      }

      else
      {
        atomic_fetch_add((v47 + 8), 0xFFFFFFFF);
      }
    }

    v16 = v45;
    atomic_fetch_add(v6 + 2, 1u);
    v17 = *(v16 - 16);
    *(v16 - 16) = v6;
    if (v17)
    {
      v18 = atomic_load(v17 + 2);
      if (v18 == 1)
      {
        (*(*v17 + 8))(v17);
      }

      else
      {
        atomic_fetch_add(v17 + 2, 0xFFFFFFFF);
      }
    }

    v19 = v45;
    if (v43)
    {
      atomic_fetch_add(v43, 1u);
    }

    v20 = *(v19 - 8);
    *(v19 - 8) = v43;
    if (v20)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v20);
    }

    v41 = 0;
    v42 = 0uLL;
    for (i = *(v5 + 200); i != *(v5 + 208); ++i)
    {
      v22 = *i;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      TI::Favonius::SearchNode::create_key_sequence_extensions(v22, &v38, &v44);
      v24 = v38;
      v23 = v39;
      v25 = v39 - v38;
      v26 = v39 - v38;
      if (v26 >= 1)
      {
        v27 = v42;
        if (*(&v42 + 1) - v42 >= v25)
        {
          while (v24 != v23)
          {
            v30 = *v24;
            *v24++ = 0;
            *v27 = v30;
            v27 += 2;
          }

          *&v42 = v27;
        }

        else
        {
          v28 = v26 + ((v42 - v41) >> 3);
          if (v28 >> 61)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          if ((*(&v42 + 1) - v41) >> 2 > v28)
          {
            v28 = (*(&v42 + 1) - v41) >> 2;
          }

          if (*(&v42 + 1) - v41 >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          v49 = &v41;
          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v29);
          }

          v31 = (8 * ((v42 - v41) >> 3));
          *&v47 = 0;
          *(&v47 + 1) = v31;
          *(&v48 + 1) = 0;
          v32 = (v31 + v25);
          do
          {
            v33 = *v24;
            *v24++ = 0;
            *v31++ = v33;
            v25 -= 8;
          }

          while (v25);
          *&v48 = v32;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v27, v42, v32);
          *&v48 = v48 + v42 - v27;
          *&v42 = v27;
          v34 = (*(&v47 + 1) + v41 - v27);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v41, v27, v34);
          v35 = v41;
          v36 = *(&v42 + 1);
          v41 = v34;
          v42 = v48;
          *&v48 = v35;
          *(&v48 + 1) = v36;
          *&v47 = v35;
          *(&v47 + 1) = v35;
          std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v47);
        }
      }

      *&v47 = &v38;
      std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v47);
    }

    operator new();
  }

  *a4 = 0;
  *&v47 = &v44;
  std::vector<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::__destroy_vector::operator()[abi:nn200100](&v47);
  v15 = atomic_load(v6 + 2);
  if (v15 == 1)
  {
    (*(*v6 + 8))(v6);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    if (!v5)
    {
      return;
    }
  }

  v37 = atomic_load((v5 + 8));
  if (v37 == 1)
  {
    (*(*v5 + 8))(v5);
  }

  else
  {
    atomic_fetch_add((v5 + 8), 0xFFFFFFFF);
  }
}

uint64_t *std::vector<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::push_back[abi:nn200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = *result;
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v21[4] = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::LanguageModel::PredictionEnumerator>>>(v11);
    }

    v12 = v8;
    v13 = (16 * v8);
    v14 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = &v13[-v12];
    *v13 = v14;
    v6 = v13 + 1;
    if (v7 != v4)
    {
      v16 = v7;
      v17 = v15;
      do
      {
        v18 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v16 += 16;
        *v17++ = v18;
      }

      while (v16 != v4);
      do
      {
        std::allocator_traits<std::allocator<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>>::destroy[abi:nn200100]<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>,void,0>(v7);
        v7 += 16;
      }

      while (v7 != v4);
    }

    v19 = *v2;
    *v2 = v15;
    v2[1] = v6;
    v20 = v2[2];
    v2[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    result = std::__split_buffer<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::~__split_buffer(v21);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  v2[1] = v6;
  return result;
}

uint64_t std::__split_buffer<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::allocator_traits<std::allocator<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>>>::destroy[abi:nn200100]<std::pair<WTF::RefPtr<TI::Favonius::TouchHistory>,WTF::RefPtr<TI::Favonius::KeyMatch>>,void,0>(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TI::Favonius::BeamSearch::extend(void *a1, atomic_uint **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *((*(*v3 + 56))(v3) + 56);
  v5 = *(v4 + 200);
  v6 = ((*(v4 + 16) - *(v4 + 8)) >> 3) >> 1;
  atomic_fetch_add(v3 + 2, 1u);
  v7 = a1[25];
  if (v7 == a1[26])
  {
LABEL_11:
    v9 = a1[2];
    if (v9)
    {
      atomic_fetch_add((v9 + 8), 1u);
      for (i = *(v9 + 200); i != *(v9 + 208); ++i)
      {
        if (TI::Favonius::BeamSearch::should_extend_for_hit_testing(v9, i, *(a1[3] + 12)))
        {
          v11 = *(a1[3] + 12);
          v12 = *i;
          v13 = a1[5];
          if (v13)
          {
            atomic_fetch_add((v13 + 8), 1u);
          }

          if (v3)
          {
            atomic_fetch_add(v3 + 2, 1u);
          }

          operator new();
        }
      }

      v14 = atomic_load((v9 + 8));
      if (v14 == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        atomic_fetch_add((v9 + 8), 0xFFFFFFFF);
      }
    }

    if (v3)
    {
      v15 = atomic_load(v3 + 2);
      if (v15 == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
      }
    }

    operator new();
  }

  while (!TI::Favonius::BeamSearch::should_extend_for_hit_testing(a1, v7, *(a1[3] + 12)))
  {
    v7 += 8;
    if (v7 == a1[26])
    {
      goto LABEL_11;
    }
  }

  if (a1[2] && (*(*v7 + 120) & 0x20) != 0)
  {
    v8 = (*(a1[35] + 120) & 0x20) == 0;
    if (!v3)
    {
LABEL_7:
      operator new();
    }
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  atomic_fetch_add(v3 + 2, 1u);
  goto LABEL_7;
}

uint64_t TI::Favonius::BeamSearch::should_extend_for_hit_testing(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 120);
  should_extend_for_hit_testing = 1;
  if (!KB::String::equal((*a2 + 88), (a1[35] + 88), 1) && (v6 & 0xE) == 0)
  {
    v8 = *a2;
    if ((v6 & 0x20) == 0 || !a3 || (v9 = v8[4], (*(v9 + 120) & 0x4E) == 0) || !*(v9 + 56) || (*(v9 + 140) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      if (!(*(*v8 + 64))(v8) && (*(*a1 + 24))(a1) && *(*a2 + 32))
      {
        v11 = (*(*a1 + 24))(a1);
        v12 = *(*a2 + 32);
        v15 = v12;
        if (v12)
        {
          atomic_fetch_add((v12 + 8), 1u);
          v13 = v15;
          should_extend_for_hit_testing = TI::Favonius::BeamSearch::should_extend_for_hit_testing(v11, &v15, a3);
          if (v13)
          {
            v14 = atomic_load(v13 + 2);
            if (v14 == 1)
            {
              (*(*v13 + 8))(v13);
            }

            else
            {
              atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
            }
          }
        }

        else
        {
          return TI::Favonius::BeamSearch::should_extend_for_hit_testing(v11, &v15, a3);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return should_extend_for_hit_testing;
}

uint64_t TI::Favonius::SearchNodeSourceQueue::insert(TI::Favonius::SearchNodeSourceQueue *this, uint64_t *a2)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 >= v5)
  {
    v7 = *(this + 3);
    v8 = (v4 - v7) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
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

    v19[4] = this + 24;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v12);
    }

    *(8 * v8) = 0;
    v6 = 8 * v8 + 8;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v7, v4, 0);
    v13 = *(this + 3);
    *(this + 3) = 0;
    *(this + 4) = v6;
    v14 = *(this + 5);
    *(this + 5) = 0;
    v19[2] = v13;
    v19[3] = v14;
    v19[0] = v13;
    v19[1] = v13;
    std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(v19);
  }

  else
  {
    *v4 = 0;
    v6 = (v4 + 8);
  }

  *(this + 4) = v6;
  v15 = *(v6 - 8);
  v16 = *a2;
  *a2 = 0;
  *(v6 - 8) = v16;
  if (v15)
  {
    v17 = atomic_load(v15 + 2);
    if (v17 == 1)
    {
      (*(*v15 + 8))(v15);
    }

    else
    {
      atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
    }
  }

  return TI::Favonius::SearchNodeSourceQueue::push_heap(this, *(v6 - 8));
}

uint64_t TI::Favonius::BeamSearch::most_likely_geometry_hypothesis@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(**(this + 200) + 128);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

uint64_t TI::Favonius::BeamSearch::input_geometry_hypothesis@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 280) + 128);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

void TI::Favonius::BeamSearch::alignment_for_accepted_text(TI::Favonius::BeamSearch *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, KB::String *a4@<X3>, void *a5@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *(this + 35);
  v11 = v10;
  do
  {
    v12 = v11;
    v11 = *(v11 + 32);
  }

  while (v11);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v13 = *(v10 + 128);
  if (v13)
  {
    atomic_fetch_add(v13 + 2, 1u);
  }

  (*(*v13 + 88))(v13, &v49, &v48);
  v14 = atomic_load(v13 + 2);
  if (v14 == 1)
  {
    (*(*v13 + 8))(v13);
  }

  else
  {
    atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
  }

  KB::String::String(v56, a4);
  memset(&v47, 0, sizeof(v47));
  v15 = *(a4 + 2);
  if (!*(a4 + 2))
  {
    KB::String::compute_length(a4);
    v15 = *(a4 + 2);
  }

  __x[0] = -1;
  v16.__i_ = 0;
  std::vector<unsigned int>::insert(&v47, v16, v15, __x);
  (*(**(*(this + 35) + 56) + 200))(*(*(this + 35) + 56), v56, &v47, *(v12 + 56));
  memset(&__p, 0, sizeof(__p));
  *__x = &unk_283FDCF10;
  v55 = 1;
  if ((KB::InputSegmentFilter::string_preserves_surface_form_features(__x, a2, v56, 0, &__p) & 1) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    goto LABEL_46;
  }

  if (*a4)
  {
    v17 = *(a3 + 2);
    if (!*(a3 + 2))
    {
      KB::String::compute_length(a3);
      v17 = *(a3 + 2);
    }

    v18 = *(a4 + 2);
    if (!*(a4 + 2))
    {
      KB::String::compute_length(a4);
      v18 = *(a4 + 2);
    }

    if (v17 <= v18)
    {
      v22 = *(a4 + 1);
      if (v22)
      {
        v23 = *(a4 + 1);
      }

      else
      {
        v23 = a4 + 16;
      }

      *&v42 = v23;
      v24 = *a4;
      DWORD2(v42) = 0;
      HIDWORD(v42) = v24;
      LODWORD(v43) = 0;
      KB::String::iterator::initialize(&v42);
      v25 = *(a3 + 2);
      if (!*(a3 + 2))
      {
        KB::String::compute_length(a3);
        v25 = *(a3 + 2);
        v24 = *a4;
        v22 = *(a4 + 1);
      }

      v44 = v42;
      v45 = v43;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v44, v25);
      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = a4 + 16;
      }

      v38 = v26;
      v39 = v24;
      v40 = v24;
      v41 = 0;
      KB::String::iterator::initialize(&v38);
      KB::String::String(&v52, &v44, &v38);
      v27 = KB::String::String(__x, a2);
      KB::String::append(v27, &v52);
      KB::String::operator=(a4, __x);
      if (v55 && BYTE2(__x[1]) == 1)
      {
        free(v55);
      }

      v28 = *v53;
      if (!*v53)
      {
        goto LABEL_44;
      }

      v29 = BYTE6(v52);
    }

    else
    {
      begin = __p.__begin_;
      end = __p.__end_;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v35 = ___ZNK2TI8Favonius10BeamSearch27alignment_for_accepted_textERKN2KB6StringES5_RS3__block_invoke;
      v36 = &__block_descriptor_tmp_32;
      v37 = a4;
      if (__p.__begin_ == __p.__end_)
      {
        v21 = __p.__begin_;
      }

      else
      {
        while (((v35)(v34, *begin) & 1) == 0)
        {
          if (++begin == end)
          {
            begin = end;
            break;
          }
        }

        v21 = begin;
        begin = __p.__begin_;
      }

      v30 = v21 - begin;
      if (*(a2 + 1))
      {
        v31 = *(a2 + 1);
      }

      else
      {
        v31 = a2 + 16;
      }

      v52 = v31;
      v32 = *a2;
      *v53 = 0;
      *&v53[4] = v32;
      KB::String::iterator::initialize(&v52);
      *&v42 = v31;
      DWORD2(v42) = 0;
      HIDWORD(v42) = v32;
      LODWORD(v43) = 0;
      KB::String::iterator::initialize(&v42);
      v44 = v42;
      v45 = v43;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v44, (v30 >> 2));
      KB::String::String(__x, &v52, &v44);
      KB::String::operator=(a4, __x);
      v28 = v55;
      if (!v55)
      {
        goto LABEL_44;
      }

      v29 = BYTE2(__x[1]);
    }

    if (v29 == 1)
    {
      free(v28);
    }
  }

LABEL_44:
  KB::Alignment::operator*(__x, &__p, &v47);
  KB::Alignment::operator*(a5, __x, &v49);
  if (*__x)
  {
    v55 = *__x;
    operator delete(*__x);
  }

LABEL_46:
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v47.__begin_)
  {
    v47.__end_ = v47.__begin_;
    operator delete(v47.__begin_);
  }

  if (v58 && v57 == 1)
  {
    free(v58);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v33 = *MEMORY[0x277D85DE8];
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  if (__n)
  {
    v4 = __x;
    v7 = this;
    end = this->__end_;
    value = this->__end_cap_.__value_;
    if (__n <= value - end)
    {
      v14 = end - __position.__i_;
      v15 = this->__end_;
      v16 = __n;
      if (__n <= end - __position.__i_)
      {
        goto LABEL_21;
      }

      v17 = 0;
      v16 = v14 >> 2;
      v18 = __n - (v14 >> 2);
      v19 = *__x;
      v20 = (4 * __n - v14 - 4) >> 2;
      v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vdupq_n_s64(v20);
      v23 = (end + 2);
      do
      {
        v24 = vdupq_n_s64(v17);
        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_22CC88AA0)));
        if (vuzp1_s16(v25, *v22.i8).u8[0])
        {
          *(v23 - 2) = v19;
        }

        if (vuzp1_s16(v25, *&v22).i8[2])
        {
          *(v23 - 1) = v19;
        }

        if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_22CC88A90)))).i32[1])
        {
          *v23 = v19;
          v23[1] = v19;
        }

        v17 += 4;
        v23 += 4;
      }

      while (v21 != v17);
      v15 = &end[v18];
      this->__end_ = v15;
      if (end != __position.__i_)
      {
LABEL_21:
        v26 = &__position.__i_[__n];
        v27 = &v15[-__n];
        v28 = v15;
        if (v27 < end)
        {
          v28 = v15;
          do
          {
            v29 = *v27++;
            *v28++ = v29;
          }

          while (v27 < end);
        }

        this->__end_ = v28;
        if (v15 != v26)
        {
          this = memmove(&__position.__i_[__n], __position.__i_, v15 - v26);
        }

        if (__position.__i_ <= v4)
        {
          if (v7->__end_ <= v4)
          {
            v30 = 0;
          }

          else
          {
            v30 = __n;
          }

          v4 += v30;
        }

        v31 = 0;
        v32 = *v4;
        v33 = vdupq_n_s64(v16 - 1);
        v34 = (__position.__i_ + 2);
        do
        {
          v35 = vdupq_n_s64(v31);
          v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_22CC88AA0)));
          if (vuzp1_s16(v36, *v33.i8).u8[0])
          {
            *(v34 - 2) = v32;
          }

          if (vuzp1_s16(v36, *&v33).i8[2])
          {
            *(v34 - 1) = v32;
          }

          if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_22CC88A90)))).i32[1])
          {
            *v34 = v32;
            v34[1] = v32;
          }

          v31 += 4;
          v34 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
      }
    }

    else
    {
      begin = this->__begin_;
      v11 = __n + end - this->__begin_;
      if (v11 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = value - begin;
      if (v12 >> 1 > v11)
      {
        v11 = v12 >> 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v13);
      }

      v37 = 0;
      v38 = 4 * (__position.__i_ - begin);
      v39 = *__x;
      v40 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v41 = vdupq_n_s64(v40);
      v42 = v40 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v43 = (v38 + 8);
      do
      {
        v44 = vdupq_n_s64(v37);
        v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_22CC88AA0)));
        if (vuzp1_s16(v45, *v41.i8).u8[0])
        {
          *(v43 - 2) = v39;
        }

        if (vuzp1_s16(v45, *&v41).i8[2])
        {
          *(v43 - 1) = v39;
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_22CC88A90)))).i32[1])
        {
          *v43 = v39;
          v43[1] = v39;
        }

        v37 += 4;
        v43 += 4;
      }

      while (v42 != v37);
      v46 = (v38 + 4 * __n);
      memcpy(v46, __position.__i_, v7->__end_ - __position.__i_);
      v47 = v7->__begin_;
      v48 = &v46[(v7->__end_ - __position.__i_)];
      v7->__end_ = __position.__i_;
      v49 = (__position.__i_ - v47);
      v50 = (v38 - (__position.__i_ - v47));
      memcpy(v50, v47, v49);
      this = v7->__begin_;
      v7->__begin_ = v50;
      v7->__end_ = v48;
      v7->__end_cap_.__value_ = 0;
      if (this)
      {

        operator delete(this);
      }
    }
  }

  return this;
}

BOOL ___ZNK2TI8Favonius10BeamSearch27alignment_for_accepted_textERKN2KB6StringES5_RS3__block_invoke(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 4);
  if (!*(v3 + 4))
  {
    KB::String::compute_length(*(a1 + 32));
    v4 = *(v3 + 4);
  }

  return v4 <= a2;
}

void TI::Favonius::BeamSearch::input_string(TI::Favonius::BeamSearch *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 35);
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  TI::Favonius::SearchNode::input_string_recursive(v2, a2, 0);
}

void TI::Favonius::BeamSearch::~BeamSearch(TI::Favonius::BeamSearch *this)
{
  TI::Favonius::BeamSearch::~BeamSearch(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB4C0;
  v2 = *(this + 35);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 34);
  if (v4)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v4);
  }

  v16 = (this + 248);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 224);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 200);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v16 = (this + 176);
  std::vector<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v16 = (this + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v16);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 120));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 112));
  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = atomic_load(v8 + 2);
    if (v9 == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  v10 = *(this + 4);
  if (v10)
  {
    v11 = atomic_load(v10 + 2);
    if (v11 == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }
  }

  v12 = *(this + 3);
  if (v12)
  {
    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 16))(v12);
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }
  }

  v14 = *(this + 2);
  if (v14)
  {
    v15 = atomic_load(v14 + 2);
    if (v15 == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    }
  }
}

void TI::Favonius::BeamSearchAlgorithm::create_search(uint64_t a1, uint64_t a2, uint64_t a3, void (****a4)(void, unint64_t *), uint64_t *a5, uint64_t *a6)
{
  v7 = *a4;
  *a4 = 0;
  v8 = *a5;
  *a5 = 0;
  v9 = *a6;
  *a6 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  (**v7)(v7, &v20);
  v19[0] = &__block_literal_global_39;
  v10 = 126 - 2 * __clz(v20);
  if (v20)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v21, (v21 + 8 * v20), v19, v11, 1);
  v12 = v20;
  v13 = v21;
  v18 = a1;
  if (v20 >= 4)
  {
    v14 = (v21 + 8 * v20);
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((v21 + 24), v14);
    v16 = v20;
    v15 = v21;
    memmove(v13 + 3, &v13[v12], v21 + 8 * v20 - v14);
    v12 = v16 - v12 + 3;
    v20 = v12;
    v13 = v15;
  }

  memset(v19, 0, sizeof(v19));
  if (v12)
  {
    if (v9)
    {
      atomic_fetch_add((v9 + 8), 1u);
    }

    v17 = *v13;
    *v13 = 0;
    operator new();
  }

  if (v18)
  {
    atomic_fetch_add((v18 + 8), 1u);
  }

  if (v8)
  {
    atomic_fetch_add((v8 + 8), 1u);
  }

  if (v9)
  {
    atomic_fetch_add((v9 + 8), 1u);
  }

  operator new();
}

uint64_t TI::Favonius::BeamSearchAlgorithm::BeamSearchAlgorithm(uint64_t this, char a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *(this + 8) = 1;
  *this = &unk_283FDB618;
  *(this + 12) = a2;
  *(this + 16) = a5;
  *(this + 24) = a6;
  *(this + 32) = a3;
  *(this + 40) = a4;
  return this;
}

{
  *(this + 8) = 1;
  *this = &unk_283FDB618;
  *(this + 12) = a2;
  *(this + 16) = a5;
  *(this + 24) = a6;
  *(this + 32) = a3;
  *(this + 40) = a4;
  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::get_it_recognizer_state(uint64_t a1@<X0>, int a2@<W1>, __CFString **a3@<X8>)
{
  v3 = *(a1 + 720);
  if (v3)
  {
    TI::TIInputRecognizer::state_for_typology_logging(v3, a2, a3);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::remove_shapes_older_than(TI::Favonius::FavoniusStrokeBuildManager *this, double a2)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 144))(a2);
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::continuous_path_usage_count(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 136))();
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_ensemble_source_scales(uint64_t this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this >= 1)
    {
      v4 = this;
      v5 = 0;
      v6 = v3 + 376;
      do
      {
        this = applesauce::CF::details::at_as<__CFNumber const*>(theArray, v5);
        if (v7)
        {
          this = applesauce::CF::convert_as<double,0>(this);
          if (v8)
          {
            *(v6 + 8 * v5) = this;
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  return this;
}

const void *applesauce::CF::details::at_as<__CFNumber const*>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(a1, a2);
  }
}

unint64_t applesauce::CF::convert_as<double,0>(unint64_t result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          v3 = v1;
          v4 = kCFNumberSInt8Type;
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v16 = v1;
          v17 = kCFNumberSInt16Type;
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v14 = v1;
          v15 = kCFNumberSInt32Type;
          goto LABEL_29;
        case kCFNumberSInt64Type:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberSInt64Type;
          goto LABEL_27;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = v1;
          v9 = kCFNumberFloat32Type;
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberFloat64Type;
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          v3 = v1;
          v4 = kCFNumberCharType;
LABEL_25:
          v10 = CFNumberGetValue(v3, v4, &valuePtr) == 0;
          v18 = valuePtr;
          goto LABEL_30;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v16 = v1;
          v17 = kCFNumberShortType;
LABEL_20:
          v10 = CFNumberGetValue(v16, v17, &valuePtr) == 0;
          v18 = valuePtr;
          goto LABEL_30;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v14 = v1;
          v15 = kCFNumberIntType;
LABEL_29:
          v10 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
          v18 = valuePtr;
LABEL_30:
          v11 = v18;
          goto LABEL_31;
        case kCFNumberLongType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberLongType;
          goto LABEL_27;
        case kCFNumberLongLongType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberLongLongType;
          goto LABEL_27;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = v1;
          v9 = kCFNumberFloatType;
LABEL_12:
          v10 = CFNumberGetValue(v8, v9, &valuePtr) == 0;
          v11 = *&valuePtr;
          goto LABEL_31;
        case kCFNumberDoubleType:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberDoubleType;
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberCFIndexType;
          goto LABEL_27;
        case kCFNumberNSIntegerType:
          valuePtr = 0;
          v6 = v1;
          v7 = kCFNumberNSIntegerType;
LABEL_27:
          v10 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
          v11 = valuePtr;
LABEL_31:
          v19 = v11;
          goto LABEL_32;
        case kCFNumberCGFloatType:
          valuePtr = 0;
          v12 = v1;
          v13 = kCFNumberCGFloatType;
LABEL_22:
          v10 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
          v19 = *&valuePtr;
LABEL_32:
          if (v10)
          {
            v19 = 0.0;
          }

          v20 = *&v19 & 0xFFFFFFFFFFFFFF00;
          break;
        default:
          v20 = 0;
          LOBYTE(v19) = 0;
          break;
      }

      return LOBYTE(v19) | v20;
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_ensemble_source_weights(uint64_t this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this >= 1)
    {
      v4 = this;
      v5 = 0;
      v6 = v3 + 352;
      do
      {
        this = applesauce::CF::details::at_as<__CFNumber const*>(theArray, v5);
        if (v7)
        {
          this = applesauce::CF::convert_as<double,0>(this);
          if (v8)
          {
            *(v6 + 8 * v5) = this;
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  return this;
}

double TI::Favonius::FavoniusStrokeBuildManager::set_continuous_path_language_weight(TI::Favonius::FavoniusStrokeBuildManager *this, double result)
{
  v2 = *(this + 88);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      *(v3 + 432) = 0x3FD60DC768DFBD6ALL;
      v4 = result;
      *(v3 + 440) = v4;
      *(v3 + 448) = xmmword_22CC88B10;
      *(v3 + 464) = xmmword_22CC88B20;
      *(v3 + 480) = xmmword_22CC88B30;
      *(v3 + 496) = xmmword_22CC88B40;
      *(v3 + 512) = xmmword_22CC88B50;
      *(v3 + 528) = xmmword_22CC88B60;
      *(v3 + 544) = xmmword_22CC88B70;
      *(v3 + 560) = 0x401F404C05921038;
      *(v3 + 568) = 1;
      result = 54.3812;
      *(v3 + 576) = xmmword_22CC88B80;
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::clear_continuous_path(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::is_hit_test_correction(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 209))
  {
    return 0;
  }

  v4 = *(this + 21);
  if (a2)
  {
    while (1)
    {
      v5 = a2;
      if (*(v4 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v5 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v6 = *(v4 + 4 * v5);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6 + 1;
  if (*(this + 9) <= (v6 + 1))
  {
    return 0;
  }

  v8 = *(*(*(this + 7) + 8 * v7) + 8);
  v9 = (*(*v8 + 64))(v8);
  v10 = *(*(this + 10) + 8 * v7);
  v11 = *((*(*v10 + 32))(v10) + 8);
  v12 = *(**(v9 + 8) + 8);
  return v11 != v12 && !KB::String::equal((v11 + 8), (v12 + 8), 1);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::set_skip_language_layout_check_cp_ml(uint64_t this, int a2)
{
  if (a2)
  {
    *(this + 440) = 0;
  }

  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::append_debug_data(TI::Favonius::FavoniusStrokeBuildManager *this, __CFString *a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a3 || !(*(*this + 288))(this) || (v6 = *(this + 88)) == 0)
  {
    v9 = *(this + 40);
    if (v9 && *(this + 9) > v9)
    {
      v28 = 0x100000;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v10 = *(*(*(this + 7) + 8 * v9) + 8);
      (*(*v10 + 104))(v10, &v28);
      v11 = v31;
      if (!v31)
      {
        v11 = &v32;
      }

      if (v28)
      {
        v12 = v11;
      }

      else
      {
        v12 = "";
      }

      CFStringAppendCString(a2, v12, 0x8000100u);
      v23 = 0x100000;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      KB::LanguageModelContext::description(this + 28, v19);
      v13 = v21;
      if (!v21)
      {
        v13 = &v22;
      }

      if (v19[0])
      {
        v14 = v13;
      }

      else
      {
        v14 = "";
      }

      KB::String::append_format(&v23, "CONTEXT: %s\n", v14);
      if (v21 && v20 == 1)
      {
        free(v21);
      }

      v15 = v26;
      if (!v26)
      {
        v15 = &v27;
      }

      if (v23)
      {
        v16 = v15;
      }

      else
      {
        v16 = "";
      }

      CFStringAppendCString(a2, v16, 0x8000100u);
      v17 = *(*(this + 10) + 8 * *(this + 40));
      (*(*v17 + 144))(v17, a2);
      if (v26 && v25 == 1)
      {
        free(v26);
      }

      if (v31 && v30 == 1)
      {
        free(v31);
      }
    }

    goto LABEL_34;
  }

  v7 = *(v6 + 64);
  if (!v7)
  {
LABEL_34:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *MEMORY[0x277D85DE8];

  TI::CP::Search::append_debug_data(v7, a2, v5);
}

void TI::Favonius::FavoniusStrokeBuildManager::initialize_search_if_necessary_from_last_touch(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(this + 209) == 1)
  {
    v2 = *(this + 40);
    if (v2)
    {
      *(this + 40) = v2 - 1;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v9);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v9 + 8));
    v10 = 0uLL;
    v11 = 0;
    LODWORD(v12) = 0x100000;
    WORD2(v12) = 0;
    BYTE6(v12) = 0;
    v13 = 0;
    v14 = 0;
    (*(*this + 144))(this, &v5, &v12, 0, 0);
    *(this + 40) = v3;
    if (v13 && BYTE6(v12) == 1)
    {
      free(v13);
    }

    v12 = &v10;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v12);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v9 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v9);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v5 + 1));
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::keys_for_input(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 21);
  if (((*(this + 22) - v2) >> 2) <= a2)
  {
    return 0;
  }

  if (a2)
  {
    while (1)
    {
      v3 = a2;
      if (*(v2 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v3 == 1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  v4 = *(v2 + 4 * v3);
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return (*(**(*(*(this + 7) + 8 * v4 + 8) + 8) + 64))();
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::touch_count(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 6);
  if (v2)
  {
    return (v2 - 1);
  }

  else
  {
    return 0;
  }
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_search_algorithm(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 40);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 40) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      return (*(*result + 16))();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::search_algorithm@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 40);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

void TI::Favonius::FavoniusStrokeBuildManager::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::candidate_refinery@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_candidate_generator(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 16);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  *(a1 + 210) = 1;
  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::candidate_generator@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 + 8), 1u);
  }

  return this;
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::set_typing_model(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 8) = v4;
  if (result)
  {
    v5 = atomic_load(result + 2);
    if (v5 == 1)
    {
      result = (*(*result + 40))(result);
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  *(a1 + 210) = 1;
  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::has_input_from_touch(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (*(this + 209))
  {
    return 0;
  }

  v2 = *(this + 21);
  v3 = *(this + 48);
  if (v3)
  {
    v4 = *(this + 21);
    while (*v4 == -1)
    {
      if (++v4 == (v2 + 4 * v3))
      {
        v4 = (v2 + 4 * v3);
        return v3 > ((v4 - v2) >> 2);
      }
    }
  }

  else
  {
    v4 = *(this + 21);
  }

  return v3 > ((v4 - v2) >> 2);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::language_model_uses_input_context(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::sync_with_input_from_UI(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::LanguageModelContext *a2, const KB::String *a3, unsigned int a4, unsigned int a5)
{
  v56[2] = *MEMORY[0x277D85DE8];
  if (*(this + 209) == 1)
  {
    __n = 0;
    v55 = 0;
    v56[0] = 0;
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(this, *(this + 40), &__n);
    v10 = *(this + 6);
    v11 = *(this + 7);
    v12 = (this + 48);
    v13 = &v11[v10];
    v14 = *v11;
    *v11 = *(v13 - 1);
    *(v13 - 1) = v14;
    if (v10)
    {
      if (v10 != 1)
      {
        v15 = (*(this + 7) + 8);
        v16 = 8 * v10 - 8;
        do
        {
          if (*v15)
          {
            WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v15);
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
      }
    }

    else
    {
      if (!*(this + 8))
      {
        WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(this + 6, 1uLL);
      }

      v20 = *(this + 7);
      if (v20)
      {
        bzero((v20 + 8 * *v12), 8 - 8 * *v12);
      }
    }

    *(this + 6) = 1;
    WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(this + 72);
    v21 = *(this + 21);
    *(this + 208) = 0;
    *(this + 22) = v21;
    *(this + 48) = 0;
    KB::String::operator=((this + 128), a3);
    __x[0] = -1;
    v22.__i_ = (*(this + 21) + 4 * *(this + 48));
    std::vector<unsigned int>::insert(this + 7, v22, a5, __x);
    *(this + 48) = a4;
    KB::LanguageModelContext::operator=(this + 224, a2);
    if (a4 > 0x7F)
    {
      goto LABEL_59;
    }

    v23 = *(this + 1);
    if (!v23)
    {
      goto LABEL_59;
    }

    v24 = *(this + 5);
    if (!v24)
    {
      goto LABEL_59;
    }

    v52 = *(this + 1);
    atomic_fetch_add((v23 + 8), 1u);
    v25 = *(this + 2);
    v51 = v25;
    if (v25)
    {
      atomic_fetch_add((v25 + 8), 1u);
    }

    v26 = *(*(*(this + 7) + 8 * *(this + 6) - 8) + 8);
    v50 = v26;
    if (v26)
    {
      atomic_fetch_add((v26 + 8), 1u);
    }

    (**v24)(__x);
    v27 = *(this + 9);
    if (v27 == *(this + 11))
    {
      v28 = v27 + (v27 >> 1);
      if (v27 < 0x100)
      {
        v28 = 2 * v27;
      }

      if (v28 <= v27 + 1)
      {
        v29 = v27 + 1;
      }

      else
      {
        v29 = v28;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(this + 9, v29);
      v30 = *(this + 10);
      if (!v30)
      {
        if (*__x)
        {
          v48 = atomic_load((*__x + 8));
          if (v48 == 1)
          {
            (*(**__x + 8))();
          }

          else
          {
            atomic_fetch_add((*__x + 8), 0xFFFFFFFF);
          }
        }

        goto LABEL_47;
      }

      v27 = *(this + 9);
    }

    else
    {
      v30 = *(this + 10);
    }

    v38 = *__x;
    *__x = 0;
    *(v30 + 8 * v27) = v38;
    *(this + 9) = v27 + 1;
LABEL_47:
    if (v50)
    {
      v39 = atomic_load(v50 + 2);
      if (v39 == 1)
      {
        (*(*v50 + 8))();
      }

      else
      {
        atomic_fetch_add(v50 + 2, 0xFFFFFFFF);
      }
    }

    if (v51)
    {
      v40 = atomic_load(v51 + 2);
      if (v40 == 1)
      {
        (*(*v51 + 8))();
      }

      else
      {
        atomic_fetch_add(v51 + 2, 0xFFFFFFFF);
      }
    }

    if (v52)
    {
      v41 = atomic_load(v52 + 2);
      if (v41 == 1)
      {
        (*(*v52 + 40))();
      }

      else
      {
        atomic_fetch_add(v52 + 2, 0xFFFFFFFF);
      }
    }

LABEL_59:
    *(this + 40) = 0;
    TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(this, &__n);
    if (*(this + 6) >= 2uLL)
    {
      v43 = 2;
      do
      {
        TI::Favonius::FavoniusStrokeBuildManager::perform_search(this, v43 - 1, &v49);
        if (v49)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v49);
        }
      }

      while (*v12 > v43++);
    }

    v45 = *(this + 90);
    if (v45)
    {
      TI::TIInputRecognizer::sync_with_input_from_UI(v45, v42, a2);
    }

    v46 = *(this + 88);
    if (v46)
    {
      (*(*v46 + 120))(v46, a2);
    }

    std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](this + 920);
    WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&__n);
    goto LABEL_69;
  }

  if (a4 && TI::Favonius::FavoniusStrokeBuildManager::last_touch_committed_and_hit_return_key(this))
  {
    KB::String::String(&__n, "\n");
    v17 = *a3;
    if (__n <= v17)
    {
      v31 = v17 - __n;
      v32 = *(a3 + 1);
      if (!v32)
      {
        v32 = a3 + 16;
      }

      v19 = v55;
      if (v55)
      {
        v33 = v55;
      }

      else
      {
        v33 = v56;
      }

      v18 = strncmp(&v32[v31], v33, __n) == 0;
    }

    else
    {
      v18 = 0;
      v19 = v55;
    }

    if (v19 && BYTE6(__n) == 1)
    {
      free(v19);
    }

    if (!v18)
    {
      --*(this + 40);
      v34 = *(this + 9);
      v35 = v34 - 1;
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * (v34 - 1)), (*(this + 10) + 8 * v34));
      *(this + 9) = v35;
      v36 = *(this + 6) - 1;
      v37 = *(*(this + 7) + 8 * v36);
      if (v37)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v37);
      }

      *(this + 6) = v36;
    }
  }

LABEL_69:
  *(this + 209) = 0;
  v47 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(uint64_t a1, int a2, void *a3)
{
  v4 = (a2 + 1);
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a3, *a3 - v4 + *(a1 + 48));
  v5 = *(a1 + 48);
  if (v5 > v4)
  {
    v6 = *(*(*(a1 + 56) + 8 * v5 - 8) + 8);
    v7 = (*(*v6 + 56))(v6);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    v8 = *(*(*(a1 + 56) + 8 * *(a1 + 48) - 8) + 16);
    operator new();
  }
}

uint64_t WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = atomic_load(v2 + 2);
      if (v3 == 1)
      {
        (*(*v2 + 8))(v2);
      }

      else
      {
        atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
      }
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*a1)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(*(a1 + 8), (*(a1 + 8) + 8 * *a1));
      *a1 = 0;
    }

    v2 = *(a1 + 8);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;

    free(v2);
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(uint64_t result, void *a2)
{
  if (*a2)
  {
    v2 = *(*(result + 56) + 8 * *(result + 48) - 8);
    v3 = *(a2[1] + 8 * *a2 - 8);
    v4 = *(v3 + 8);
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
      v3 = *(a2[1] + 8 * *a2 - 8);
    }

    v5 = *(v3 + 16);
    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(&v7, *(v2 + 8), &v6);
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::perform_search@<X0>(TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, unsigned int a2@<W1>, atomic_uint **a3@<X8>)
{
  v6 = a2;
  v7 = *(*(this + 7) + 8 * a2);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  if (v9)
  {
    atomic_fetch_add(v9 + 2, 1u);
    if (v8 < 0xFFFFFFFE)
    {
      v42 = v9;
      atomic_fetch_add(v9 + 2, 1u);
      v10 = v9;
      goto LABEL_6;
    }
  }

  else if (v8 < 0xFFFFFFFE)
  {
    v10 = 0;
    v42 = 0;
LABEL_6:
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 0x40000000;
    v40[2] = ___ZN2TI8Favonius26FavoniusStrokeBuildManager14perform_searchEj_block_invoke;
    v40[3] = &__block_descriptor_tmp_16;
    v41 = v8;
    TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v42, v40, &v43);
    v11 = v43;
    v43 = 0;
    if (v10)
    {
      v12 = atomic_load(v10 + 2);
      if (v12 == 1)
      {
        (*(*v10 + 8))(v10);
      }

      else
      {
        atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      }
    }

    if (TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(this, a2))
    {
      v13 = (*(this + 10) + 8 * v6);
      v14 = *v13;
      goto LABEL_18;
    }

    v15 = (this + 72);
    v16 = *(this + 9);
    if (v16 < v6)
    {
      goto LABEL_61;
    }

    goto LABEL_27;
  }

  if (TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(this, a2))
  {
    v11 = 0;
    v13 = (*(this + 10) + 8 * v6);
    v14 = *v13;
    if (v8 == -2)
    {
LABEL_76:
      v35 = (*(*v14 + 32))(v14);
      v36 = v35;
      if (v35)
      {
        atomic_fetch_add(v35, 1u);
      }

      if (v11)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
      }

      v11 = v36;
      goto LABEL_81;
    }

LABEL_18:
    if (v9)
    {
      atomic_fetch_add(v9 + 2, 1u);
    }

    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }

    v17 = *(this + 208);
    (*(*v14 + 88))(&v43);
    v18 = *v13;
    v19 = v43;
    v43 = 0;
    *v13 = v19;
    if (v18)
    {
      v20 = atomic_load(v18 + 2);
      if (v20 == 1)
      {
        (*(*v18 + 8))(v18);
      }

      else
      {
        atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
      }

      if (v43)
      {
        v21 = atomic_load(v43 + 2);
        if (v21 == 1)
        {
          (*(*v43 + 8))();
        }

        else
        {
          atomic_fetch_add(v43 + 2, 0xFFFFFFFF);
        }
      }
    }

    if (v11)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
    }

    if (v9)
    {
      v22 = atomic_load(v9 + 2);
      if (v22 == 1)
      {
        (*(*v9 + 8))();
      }

      else
      {
        atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
      }
    }

    v14 = *v13;
    goto LABEL_76;
  }

  v15 = (this + 72);
  v16 = *(this + 9);
  if (v16 >= v6)
  {
    v11 = 0;
LABEL_27:
    if (v16 == v6)
    {
      v16 = a2 + 1;
      if (a2 == -1)
      {
        WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * v16), (*(this + 10) + 8 * v6));
      }

      else
      {
        v23 = *(this + 11);
        if (v23 < v16)
        {
          if (v23 >= 0x100)
          {
            v24 = v23 + (v23 >> 1);
          }

          else
          {
            v24 = 2 * v23;
          }

          if (v24 <= v16)
          {
            v25 = a2 + 1;
          }

          else
          {
            v25 = v24;
          }

          WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(v15, v25);
        }

        v26 = *(this + 10);
        if (v26)
        {
          bzero((v26 + 8 * *v15), 8 * (v16 - *v15));
        }
      }

      *v15 = v16;
    }

    if (v16 > v6)
    {
      v27 = *(*(this + 10) + 8 * (a2 - 1));
      if (v9)
      {
        atomic_fetch_add(v9 + 2, 1u);
      }

      if (v11)
      {
        atomic_fetch_add(v11, 1u);
      }

      v28 = *(this + 208);
      (*(*v27 + 72))(&v43);
      v29 = *(this + 10);
      v30 = *(v29 + 8 * v6);
      v31 = v43;
      v43 = 0;
      *(v29 + 8 * v6) = v31;
      if (v30)
      {
        v32 = atomic_load(v30 + 2);
        if (v32 == 1)
        {
          (*(*v30 + 8))(v30);
        }

        else
        {
          atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
        }

        if (v43)
        {
          v33 = atomic_load(v43 + 2);
          if (v33 == 1)
          {
            (*(*v43 + 8))();
          }

          else
          {
            atomic_fetch_add(v43 + 2, 0xFFFFFFFF);
          }
        }
      }

      if (v11)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
      }

      if (v9)
      {
        v34 = atomic_load(v9 + 2);
        if (v34 == 1)
        {
          (*(*v9 + 8))();
        }

        else
        {
          atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
        }
      }

      v14 = *(*(this + 10) + 8 * v6);
      goto LABEL_76;
    }

LABEL_61:
    if (v11)
    {
      goto LABEL_81;
    }
  }

  v11 = **((*(*v9 + 64))(v9) + 8);
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

LABEL_81:
  v37 = *(v11 + 1);
  *a3 = v37;
  if (v37)
  {
    atomic_fetch_add(v37, 1u);
  }

  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
  if (v9)
  {
    v38 = atomic_load(v9 + 2);
    if (v38 == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
    }
  }

  return WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v7);
}

void std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 && *(a1 + 38) == 1)
    {
      free(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      if (*(a1 + 6) == 1)
      {
        free(v3);
      }
    }

    *(a1 + 64) = 0;
  }
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::last_touch_committed_and_hit_return_key(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v1 = *(this + 6);
  if (v1 != *(this + 40) + 1)
  {
    return 0;
  }

  if (*(this + 9) != v1)
  {
    return 0;
  }

  v2 = *(*(this + 10) + 8 * v1 - 8);
  v3 = (*(*v2 + 32))(v2);
  if (!v3)
  {
    return 0;
  }

  atomic_fetch_add(v3, 1u);
  v4 = *(*(v3 + 8) + 56) == 10;
  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v3);
  return v4;
}

unsigned int *WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(unsigned int *result, unsigned int **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      if (*v3)
      {
        v4 = atomic_load(result + 2);
        if (v4 == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          atomic_fetch_add(result + 2, 0xFFFFFFFF);
        }
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>::deref(uint64_t result)
{
  v1 = atomic_load(result);
  if (v1 == 1)
  {
    v2 = *(result + 8);
    if (v2)
    {
      WTF::RefCounted<TI::Favonius::Touch>::deref(v2);
    }

    JUMPOUT(0x2318BE270);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, atomic_uint **a3@<X8>)
{
  result = (*(**a1 + 64))();
  if (*result)
  {
    v6 = result;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = (v6[1] + 8 * v7);
      result = (*(a2 + 16))(a2, v9);
      if (result)
      {
        break;
      }

      v7 = v8;
      if (*v6 <= v8++)
      {
        goto LABEL_5;
      }
    }

    v11 = *v9;
    *a3 = *v9;
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
  }

  return result;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(TI::Favonius::FavoniusStrokeBuildManager *this, unsigned int a2)
{
  if (*(this + 9) <= a2)
  {
    return 0;
  }

  v4 = *(*(this + 10) + 8 * a2);
  v5 = (*(*v4 + 24))(v4);
  v6 = (*(*v5 + 16))(v5);
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  v8 = *(*(this + 10) + 8 * (a2 - 1));
  v9 = (*(*v8 + 16))(v8);
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add(v9 + 2, 1u);
    v11 = atomic_load(v9 + 2);
    if (v11 == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
    }
  }

  if (v7)
  {
    v12 = atomic_load(v7 + 2);
    if (v12 == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  if (v7 != v10)
  {
    return 0;
  }

  v15 = *(*(this + 10) + 8 * a2);
  v16 = (*(*v15 + 16))(v15);
  v17 = *((*(*v16 + 56))(v16) + 56);
  if (v17)
  {
    atomic_fetch_add(v17, 1u);
  }

  v18 = *(*(*(this + 7) + 8 * a2) + 8);
  v19 = *((*(*v18 + 56))(v18) + 56);
  if (v19)
  {
    atomic_fetch_add(v19, 1u);
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v19);
  }

  v13 = v17 == v19;
  if (v17)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v17);
  }

  return v13;
}

void TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  v4 = v3;
  (*(*a2 + 80))(&v5, a2, &v4);
  operator new();
}

uint64_t WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(uint64_t a1)
{
  if (*a1)
  {
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct(*(a1 + 8), (*(a1 + 8) + 8 * *a1));
    *a1 = 0;
  }

  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  free(v2);
  return a1;
}

uint64_t ___ZN2TI8Favonius26FavoniusStrokeBuildManager24input_disruption_from_UIEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::drop_input_prefix(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::LanguageModelContext *a2, unsigned int a3, const KB::String *a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v7 = (this + 48);
  v8 = *(this + 6) - 1;
  LOBYTE(v99) = 0;
  std::vector<BOOL>::vector(__p, v8);
  TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::drop_input_prefix((v7 + 15), a3, __p);
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v9 = *v7;
  if (*v7 <= 1)
  {
    v10 = 0;
    v24 = (*(this + 7) + 8 * v9 - 8);
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 2;
  v12 = 1;
  do
  {
    v13 = v11 - 2;
    if (((*(__p[0] + ((v13 >> 3) & 0x1FFFFFF8)) >> (v11 - 2)) & 1) == 0)
    {
      goto LABEL_22;
    }

    v14 = v95;
    if (!v95)
    {
      v15 = (*(this + 7) + 8 * v13);
      if (v97)
      {
        v14 = 0;
        v16 = v96;
      }

      else
      {
        v17 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v95, 1uLL, v15);
        v14 = v95;
        v16 = v96;
        if (!v96)
        {
          goto LABEL_12;
        }

        v15 = v17;
      }

      v18 = *v15;
      v16[v14] = *v15;
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
        v14 = v95;
      }

      v95 = ++v14;
    }

LABEL_12:
    v19 = (*(this + 7) + 8 * v12);
    if (v14 != v97)
    {
      v21 = v96;
      goto LABEL_16;
    }

    v20 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v95, v14 + 1, v19);
    v21 = v96;
    if (v96)
    {
      v19 = v20;
      v14 = v95;
LABEL_16:
      v22 = *v19;
      v21[v14] = *v19;
      if (v22)
      {
        atomic_fetch_add(v22, 1u);
        v14 = v95;
      }

      v95 = v14 + 1;
    }

    if (v13 < *(this + 40))
    {
      ++v10;
    }

    v9 = *(this + 6);
LABEL_22:
    v12 = v11;
  }

  while (v9 > v11++);
  if (!v95)
  {
    v24 = (*(this + 7) + 8 * v9 - 8);
    if (v97)
    {
      v25 = 0;
      v26 = v96;
      goto LABEL_29;
    }

LABEL_27:
    v27 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(&v95, 1uLL, v24);
    v26 = v96;
    if (v96)
    {
      v24 = v27;
      v25 = v95;
LABEL_29:
      v28 = *v24;
      v26[v25] = *v24;
      if (v28)
      {
        atomic_fetch_add(v28, 1u);
        v25 = v95;
      }

      v95 = v25 + 1;
    }
  }

  v29 = *(this + 66);
  if (!*(this + 66))
  {
    KB::String::compute_length(this + 64);
    v29 = *(this + 66);
  }

  if (v29 <= a3)
  {
    KB::String::clear((this + 128));
  }

  else
  {
    v30 = this + 144;
    if (*(this + 17))
    {
      v31 = *(this + 17);
    }

    else
    {
      v31 = this + 144;
    }

    *&v91 = v31;
    v32 = *(this + 64);
    DWORD2(v91) = 0;
    HIDWORD(v91) = v32;
    LODWORD(v92) = 0;
    KB::String::iterator::initialize(&v91);
    v93 = v91;
    v94 = v92;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v93, a3);
    *&v89 = v31;
    DWORD2(v89) = v32;
    HIDWORD(v89) = v32;
    LODWORD(v90) = 0;
    KB::String::iterator::initialize(&v89);
    KB::String::String(&v99, &v93, &v89);
    KB::String::operator=(this + 128, &v99);
    if (v100 && BYTE6(v99) == 1)
    {
      free(v100);
    }

    v33 = *(this + 21);
    v34 = *(this + 48);
    if (v34)
    {
      v35 = (v33 + 4 * v34);
      v36 = *(this + 21);
      while (*v36 == -1)
      {
        if (++v36 == v35)
        {
          v36 = v35;
          break;
        }
      }
    }

    else
    {
      v36 = *(this + 21);
    }

    v37 = v36 - v33;
    if (*(this + 17))
    {
      v30 = *(this + 17);
    }

    *&v93 = v30;
    v38 = *(this + 64);
    DWORD2(v93) = 0;
    HIDWORD(v93) = v38;
    LODWORD(v94) = 0;
    KB::String::iterator::initialize(&v93);
    *&v89 = v30;
    DWORD2(v89) = 0;
    HIDWORD(v89) = v38;
    LODWORD(v90) = 0;
    KB::String::iterator::initialize(&v89);
    v91 = v89;
    v92 = v90;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v91, (v37 >> 2));
    KB::String::String(&v99, &v93, &v91);
    KB::String::operator=(this + 128, &v99);
    if (v100 && BYTE6(v99) == 1)
    {
      free(v100);
    }
  }

  if (&v95 != v7)
  {
    v39 = *v7;
    v40 = v95;
    if (*v7 <= v95)
    {
      v43 = *(this + 8);
      if (v95 <= v43)
      {
        v40 = *v7;
        goto LABEL_72;
      }

      if (v43)
      {
        if (v39)
        {
          v44 = *(this + 7);
          v45 = 8 * v39;
          do
          {
            if (*v44)
            {
              WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v44);
            }

            ++v44;
            v45 -= 8;
          }

          while (v45);
          *v7 = 0;
        }

        v46 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = 0;
        free(v46);
        v40 = v95;
      }

      WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(v7, v40);
      if (*(this + 7))
      {
        v40 = *v7;
        goto LABEL_72;
      }
    }

    else
    {
      v41 = (*(this + 7) + 8 * v95);
      v42 = 8 * v39 - 8 * v95;
      do
      {
        if (*v41)
        {
          WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v41);
        }

        ++v41;
        v42 -= 8;
      }

      while (v42);
      *v7 = v40;
LABEL_72:
      v47 = v96;
      if (v40)
      {
        v48 = *(this + 7);
        v49 = 8 * v40;
        do
        {
          v50 = *v47;
          if (*v47)
          {
            atomic_fetch_add(v50, 1u);
          }

          v51 = *v48;
          *v48 = v50;
          if (v51)
          {
            WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v51);
          }

          ++v47;
          ++v48;
          v49 -= 8;
        }

        while (v49);
        v47 = v96;
        v52 = *v7;
      }

      else
      {
        v52 = 0;
      }

      if (v52 != v95)
      {
        v53 = (*(this + 7) + 8 * v52);
        v54 = &v47[v52];
        v55 = 8 * v95 - 8 * v52;
        do
        {
          v56 = *v54;
          *v53 = *v54;
          if (v56)
          {
            atomic_fetch_add(v56, 1u);
          }

          ++v53;
          ++v54;
          v55 -= 8;
        }

        while (v55);
        v52 = v95;
      }

      *v7 = v52;
    }
  }

  *(this + 40) = v10;
  KB::LanguageModelContext::operator=(this + 224, a2);
  v57 = *(this + 90);
  if (v57)
  {
    TI::TIInputRecognizer::drop_input_prefix(v57, (this + 224));
  }

  v58 = *(this + 88);
  if (v58)
  {
    (*(*v58 + 120))(v58, this + 224);
  }

  v59 = *(this + 66);
  if (!*(this + 66))
  {
    KB::String::compute_length(this + 64);
    v59 = *(this + 66);
  }

  if (v59 <= 0x7F)
  {
    v60 = *(this + 1);
    if (v60)
    {
      if (*(this + 5))
      {
        v99 = 0;
        v62 = (this + 72);
        v61 = *(this + 9);
        if (!v61)
        {
          goto LABEL_140;
        }

        v63 = *(*(this + 10) + 8 * v61 - 8);
        v88 = v60;
        atomic_fetch_add((v60 + 8), 1u);
        v64 = *(this + 2);
        v87 = v64;
        if (v64)
        {
          atomic_fetch_add((v64 + 8), 1u);
        }

        (*(*v63 + 112))(&v93);
        v65 = v99;
        v66 = v93;
        *&v93 = 0;
        v99 = v66;
        if (v65)
        {
          v67 = atomic_load(v65 + 2);
          if (v67 == 1)
          {
            (*(*v65 + 8))(v65);
          }

          else
          {
            atomic_fetch_add(v65 + 2, 0xFFFFFFFF);
          }

          if (v93)
          {
            v68 = atomic_load((v93 + 8));
            if (v68 == 1)
            {
              (*(*v93 + 8))();
            }

            else
            {
              atomic_fetch_add((v93 + 8), 0xFFFFFFFF);
            }
          }
        }

        if (v87)
        {
          v69 = atomic_load(v87 + 2);
          if (v69 == 1)
          {
            (*(*v87 + 8))();
          }

          else
          {
            atomic_fetch_add(v87 + 2, 0xFFFFFFFF);
          }
        }

        v70 = atomic_load(v88 + 2);
        if (v70 == 1)
        {
          (*(*v88 + 40))();
        }

        else
        {
          atomic_fetch_add(v88 + 2, 0xFFFFFFFF);
        }

        v71 = v99;
        if (!v99)
        {
LABEL_140:
          (*(*this + 136))(this);
          goto LABEL_141;
        }

        WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::shrinkCapacity(this + 72);
        while (1)
        {
          v72 = *(this + 9);
          if (v72 != *(this + 11))
          {
            break;
          }

          v73 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity(this + 9, v72 + 1, &v99);
          v74 = *(this + 10);
          if (v74)
          {
            v75 = *v62;
            v71 = *v73;
            *(v74 + 8 * *v62) = *v73;
            if (!v71)
            {
              goto LABEL_123;
            }

            goto LABEL_122;
          }

LABEL_124:
          v76 = (*(*v99 + 24))(v99);
          v71 = v76;
          if (v76)
          {
            atomic_fetch_add((v76 + 8), 1u);
          }

          v77 = v99;
          v99 = v71;
          if (v77)
          {
            v78 = atomic_load(v77 + 2);
            if (v78 == 1)
            {
              (*(*v77 + 8))(v77);
            }

            else
            {
              atomic_fetch_add(v77 + 2, 0xFFFFFFFF);
            }

            v71 = v99;
          }

          if (!v71)
          {
            v79 = *(this + 9);
            if (v79)
            {
              v80 = *(this + 10);
              v81 = (v80 + 8 * v79 - 8);
              if (v81 > v80)
              {
                v82 = v80 + 8;
                do
                {
                  v83 = *(v82 - 8);
                  *(v82 - 8) = *v81;
                  *v81-- = v83;
                  v84 = v82 >= v81;
                  v82 += 8;
                }

                while (!v84);
                if (v99)
                {
                  v85 = atomic_load(v99 + 2);
                  if (v85 == 1)
                  {
                    (*(*v99 + 8))();
                  }

                  else
                  {
                    atomic_fetch_add(v99 + 2, 0xFFFFFFFF);
                  }
                }
              }
            }

            goto LABEL_141;
          }
        }

        *(*(this + 10) + 8 * v72) = v71;
LABEL_122:
        atomic_fetch_add(v71 + 2, 1u);
        v75 = *v62;
LABEL_123:
        *v62 = v75 + 1;
        goto LABEL_124;
      }
    }
  }

LABEL_141:
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(&v95);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::drop_input_prefix(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = &v3[-*a1] >> 2;
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == v4)
  {
    return;
  }

  v9 = *(a3 + 8);
  if (v9 >= 1)
  {
    v43.__begin_ = *a3;
    LODWORD(v43.__end_) = 0;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v43, v9);
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = &v3[-*a1] >> 2;
  }

  v10 = &v4[4 * v6];
  if (v5 <= v6)
  {
    goto LABEL_27;
  }

  v11 = v10 + 4;
  v12 = v10 == v3 || v11 == v3;
  v13 = &v4[4 * v6];
  if (!v12)
  {
    v14 = *v10;
    v13 = &v4[4 * v6];
    v15 = (v10 + 4);
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 < v14)
      {
        v14 = v16;
        v13 = v11;
      }

      v11 = v15;
    }

    while (v15 != v3);
  }

  v18 = *v13;
  if (v18 == -1)
  {
LABEL_27:
    if (v4 == v10)
    {
      goto LABEL_31;
    }

    v19 = 0xFFFFFFFFLL;
    v20 = v4;
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v19 <= v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v19 == 0xFFFFFFFF)
      {
        v23 = v21;
      }

      if (v21 != -1)
      {
        v19 = v23;
      }
    }

    while (v20 != v10);
    if (v19 == 0xFFFFFFFF)
    {
      goto LABEL_31;
    }

    v18 = v19 + 1;
  }

  if (v18 >= 1)
  {
    v43.__begin_ = *a3;
    LODWORD(v43.__end_) = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v43, v18);
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = &v3[-*a1] >> 2;
  }

LABEL_31:
  if (v3 != v4)
  {
    v24 = 0;
    v25 = *a3;
    do
    {
      v26 = *&v4[4 * v24];
      if (v26 != -1)
      {
        if (*(a3 + 8) <= v26)
        {
          *&v4[4 * v24] = -1;
        }

        else
        {
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (v24 >= v6)
          {
            v29 = *&v25[2 * v27] | v28;
          }

          else
          {
            v29 = *&v25[2 * v27] & ~v28;
          }

          *&v25[2 * v27] = v29;
        }
      }

      ++v24;
    }

    while (v5 > v24);
  }

  if (v6)
  {
    v30 = &v4[4 * v6];
    v31 = v3 - v30;
    if (v3 != v30)
    {
      memmove(v4, v30, v3 - v30);
    }

    *(a1 + 8) = &v4[v31];
  }

  *(a1 + 24) -= v6;
  memset(&v43, 0, sizeof(v43));
  std::vector<unsigned int>::reserve(&v43, *(a3 + 8));
  if (*(a3 + 8))
  {
    v32 = 0;
    v33 = 0;
    v34 = 1;
    do
    {
      if ((*(*a3 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32))
      {
        v42 = v33;
        std::vector<unsigned int>::push_back[abi:nn200100](&v43, &v42);
        ++v33;
      }

      else
      {
        v42 = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](&v43, &v42);
      }

      v32 = v34;
      v35 = *(a3 + 8) > v34++;
    }

    while (v35);
  }

  v36 = *a1;
  begin = v43.__begin_;
  v38 = *(a1 + 8) - *a1;
  if (v38)
  {
    v39 = v38 >> 2;
    v40 = 1;
    do
    {
      v41 = *v36;
      if (v41 != -1)
      {
        *v36 = begin[v41];
      }

      v36 += 4;
      v35 = v39 > v40++;
    }

    while (v35);
  }

  if (begin)
  {
    operator delete(begin);
  }
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::keyboard_did_suspend(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::remove_text_usage(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::String *a2)
{
  result = *(this + 88);
  if (result)
  {
    return (*(*result + 96))(result, a2);
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::text_accepted_from_UI(TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X2>, const KB::String *a4@<X3>, const KB::String *a5@<X5>, uint64_t a6@<X4>, int a7@<W6>, void *a8@<X8>)
{
  v78[3] = *MEMORY[0x277D85DE8];
  if (*(this + 88))
  {
    v13 = a7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (*a3)
    {
      v16 = *a5 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      std::__optional_destruct_base<std::pair<KB::String,KB::String>,false>::reset[abi:nn200100](this + 920);
    }

    else
    {
      KB::String::String(__p, a3);
      KB::String::String(&v72, a5);
      if (*(this + 984) == 1)
      {
        KB::String::operator=(this + 920, __p);
        KB::String::operator=(this + 952, &v72);
      }

      else
      {
        *(this + 230) = 0x100000;
        *(this + 462) = 0;
        *(this + 926) = 0;
        *(this + 116) = 0;
        KB::String::operator=(this + 920, __p);
        *(this + 238) = 0x100000;
        *(this + 478) = 0;
        *(this + 958) = 0;
        *(this + 120) = 0;
        KB::String::operator=(this + 952, &v72);
        *(this + 984) = 1;
      }

      if (*(&v72 + 1) && BYTE6(v72) == 1)
      {
        free(*(&v72 + 1));
      }

      if (__p[1] && BYTE6(__p[0]) == 1)
      {
        free(__p[1]);
      }
    }

    v29 = *(this + 90);
    if (v29)
    {
      v30 = *(v29 + 40);
      if (v30)
      {
        v31 = (*(*v30 + 48))(v30);
        TI::TIInputRecognizer::load_lexicons_if_needed(v29, *(*v31 + 24));
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v71 = 0;
    v32 = *(this + 9);
    if (v32)
    {
      v33 = *(*(this + 10) + 8 * v32 - 8);
      if (v33)
      {
        atomic_fetch_add(v33 + 2, 1u);
      }

      if (a2 != a4 && !KB::String::equal(a2, a4, 1))
      {
        (*(*v33 + 104))(&v77, v33, a2, a6);
        v34 = v77;
        *&v77 = 0;
        v35 = atomic_load(v33 + 2);
        if (v35 == 1)
        {
          (*(*v33 + 8))(v33);
        }

        else
        {
          atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
        }

        if (v77)
        {
          v36 = atomic_load((v77 + 8));
          if (v36 == 1)
          {
            (*(*v77 + 8))();
          }

          else
          {
            atomic_fetch_add((v77 + 8), 0xFFFFFFFF);
          }
        }

        v33 = v34;
      }

      if (v33)
      {
        v37 = *(this + 9);
        if (v37 >= 1)
        {
          v38 = *(this + 9) & 0x7FFFFFFFLL;
          do
          {
            v39 = *(this + 10) + 8 * v38;
            atomic_fetch_add(v33 + 2, 1u);
            v40 = *(v39 - 8);
            *(v39 - 8) = v33;
            if (v40)
            {
              v41 = atomic_load(v40 + 2);
              if (v41 == 1)
              {
                (*(*v40 + 8))(v40);
              }

              else
              {
                atomic_fetch_add(v40 + 2, 0xFFFFFFFF);
              }
            }

            v42 = (*(*v33 + 24))(v33);
            v43 = v42;
            if (v42)
            {
              atomic_fetch_add((v42 + 8), 1u);
            }

            v44 = atomic_load(v33 + 2);
            if (v44 == 1)
            {
              (*(*v33 + 8))(v33);
            }

            else
            {
              atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
            }

            if (v43)
            {
              v45 = v38 > 1;
            }

            else
            {
              v45 = 0;
            }

            --v38;
            v33 = v43;
          }

          while (v45);
          v37 = *(this + 9);
          v33 = v43;
        }

        (*(**(*(this + 10) + 8 * v37 - 8) + 48))(&v77);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        *__p = v77;
        *&v71 = v78[0];
        (*(**(*(this + 10) + 8 * *(this + 9) - 8) + 56))(&v77);
      }

      else
      {
        (*(**(*(this + 10) + 8 * *(this + 9) - 8) + 64))(&v77);
      }

      v63 = v77;
      (*(**(*(*(this + 7) + 8 * *(this + 6) - 8) + 8) + 88))(&v77);
      v46 = *(*(this + 7) + 8 * *(this + 6) - 8);
      v47 = *(v46 + 8);
      v48 = v77;
      *&v77 = 0;
      *(v46 + 8) = v48;
      if (v47)
      {
        v49 = atomic_load(v47 + 2);
        if (v49 == 1)
        {
          (*(*v47 + 8))(v47);
        }

        else
        {
          atomic_fetch_add(v47 + 2, 0xFFFFFFFF);
        }

        if (v77)
        {
          v50 = atomic_load((v77 + 8));
          if (v50 == 1)
          {
            (*(*v77 + 8))();
          }

          else
          {
            atomic_fetch_add((v77 + 8), 0xFFFFFFFF);
          }
        }
      }

      if (v63)
      {
        v51 = atomic_load(v63 + 2);
        if (v51 == 1)
        {
          (*(*v63 + 8))();
        }

        else
        {
          atomic_fetch_add(v63 + 2, 0xFFFFFFFF);
        }
      }

      if (v33)
      {
        v52 = atomic_load(v33 + 2);
        if (v52 == 1)
        {
          (*(*v33 + 8))(v33);
        }

        else
        {
          atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
        }
      }
    }

    if (*a2 && __p[0] == __p[1])
    {
      goto LABEL_98;
    }

    v53 = *(a4 + 2);
    if (!*(a4 + 2))
    {
      KB::String::compute_length(a4);
      v53 = *(a4 + 2);
    }

    v54 = (*(this + 22) - *(this + 21)) >> 2;
    if (v54 < v53)
    {
LABEL_98:
      v55 = this + 209;
    }

    else
    {
      v55 = this + 209;
      if (*(this + 48) <= v54)
      {
        if ((*v55 & 1) == 0)
        {
          TI::Favonius::FavoniusStrokeBuildManager::align_candidate_to_input(this, a2, a4, __p, a8);
LABEL_102:
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          goto LABEL_104;
        }

LABEL_101:
        *a8 = 0;
        a8[1] = 0;
        a8[2] = 0;
        goto LABEL_102;
      }
    }

    *v55 = 1;
    goto LABEL_101;
  }

  if ((*(*this + 384))(this, a2, a3, a4, a6, a5))
  {
    if (*a2)
    {
      KB::word_ranges(a2, 0, &v68);
      v18 = v68;
      v19 = v69;
      if (v68 != v69)
      {
        v20 = *(a2 + 1);
        if (!v20)
        {
          v20 = a2 + 16;
        }

        __p[0] = v20;
        v21 = *a2;
        LODWORD(__p[1]) = 0;
        HIDWORD(__p[1]) = v21;
        LODWORD(v71) = 0;
        KB::String::iterator::initialize(__p);
        v22 = *(v19 - 2);
        v66 = *__p;
        v67 = v71;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v66, v22);
        v23 = *(v19 - 1);
        v64 = v66;
        v65 = v67;
        std::__advance[abi:nn200100]<KB::String::iterator>(&v64, v23);
        KB::String::String(__p, &v66, &v64);
        KB::lower_string(__p, 0, &v77);
        v24 = *(this + 98);
        if (!v24)
        {
LABEL_107:
          operator new();
        }

        if (*(&v77 + 1))
        {
          v25 = *(&v77 + 1);
        }

        else
        {
          v25 = v78;
        }

        while (1)
        {
          while (1)
          {
            v26 = v24;
            v27 = v24[5];
            v28 = v27 ? v27 : (v26 + 6);
            if ((strcmp(v25, v28) & 0x80000000) == 0)
            {
              break;
            }

            v24 = *v26;
            if (!*v26)
            {
              goto LABEL_107;
            }
          }

          if ((strcmp(v28, v25) & 0x80000000) == 0)
          {
            break;
          }

          v24 = v26[1];
          if (!v24)
          {
            goto LABEL_107;
          }
        }

        std::vector<KB::Candidate>::__vdeallocate(v26 + 8);
        *(v26 + 4) = *(this + 50);
        v26[10] = *(this + 102);
        *(this + 100) = 0;
        *(this + 101) = 0;
        *(this + 102) = 0;
        if (*(&v77 + 1) && BYTE6(v77) == 1)
        {
          free(*(&v77 + 1));
        }

        if (__p[1] && BYTE6(__p[0]) == 1)
        {
          free(__p[1]);
        }

        v18 = v68;
      }

      v76 = 0;
      *__p = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      KB::CandidateCollection::operator=(this + 800, __p);
      *&v77 = &v74 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = &v73;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = &v71 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = __p;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v76 = 0;
      *__p = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      KB::CandidateCollection::operator=(this + 800, __p);
      *&v77 = &v74 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = &v73;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = &v71 + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      *&v77 = __p;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v77);
      std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
      *(this + 97) = this + 784;
      *(this + 49) = 0u;
    }
  }

  v57 = *(this + 90);
  if (v57)
  {
    v58 = *(v57 + 40);
    if (v58)
    {
      v59 = (*(*v58 + 48))(v58);
      TI::TIInputRecognizer::load_lexicons_if_needed(v57, *(*v59 + 24));
    }
  }

  v60 = *(this + 88);
  if (v60)
  {
    (*(*v60 + 88))(v60, a2, a3, a6, 0);
  }

  v61 = 0;
  *(this + 209) = 1;
  a8[1] = 0;
  a8[2] = 0;
  *a8 = 0;
  while (1)
  {
    v62 = *(a2 + 2);
    if (!*(a2 + 2))
    {
      KB::String::compute_length(a2);
      v62 = *(a2 + 2);
    }

    if (v61 >= v62)
    {
      break;
    }

    LODWORD(__p[0]) = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a8, __p);
    ++v61;
  }

LABEL_104:
  v56 = *MEMORY[0x277D85DE8];
}

void std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*a1);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(a1 + 1));
    v3 = (a1 + 136);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 112);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 88);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (a1 + 64);
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v3);
    v2 = *(a1 + 5);
    if (v2 && a1[38] == 1)
    {
      free(v2);
    }

    operator delete(a1);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::align_candidate_to_input(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, unsigned __int16 *a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  std::vector<unsigned int>::vector[abi:nn200100](&__p, (a1 + 168));
  v10 = *(a1 + 192);
  v11 = v48;
  v12 = (v48 - __p) >> 2;
  if (v10 > v12)
  {
    v13 = v10 - v12;
    if (v10 - v12 > (v49 - v48) >> 2)
    {
      v14 = v49 - __p;
      if ((v49 - __p) >> 1 > v10)
      {
        v10 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v10;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
    }

    bzero(v48, 4 * v13);
    v16 = &v11[4 * v13];
    goto LABEL_12;
  }

  if (v10 < v12)
  {
    v16 = __p + 4 * v10;
LABEL_12:
    v48 = v16;
  }

  v17 = *(a1 + 48) - 1;
  memset(&v50, 0, sizeof(v50));
  __x[0] = -1;
  v18.__i_ = 0;
  std::vector<unsigned int>::insert(&v50, v18, v17, __x);
  v19 = __p;
  begin = v50.__begin_;
  if (v48 == __p)
  {
LABEL_20:
    *__x = begin;
    v46 = *&v50.__end_;
    if (begin == v50.__end_)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 0;
  v23 = (v48 - __p) >> 2;
  while (1)
  {
    v24 = v19[v21];
    if (v24 != -1)
    {
      break;
    }

LABEL_19:
    v21 = ++v22;
    if (v23 <= v22)
    {
      goto LABEL_20;
    }
  }

  if (v17 > v24)
  {
    if (begin[v24] == -1)
    {
      begin[v24] = v22;
    }

    goto LABEL_19;
  }

  *__x = 0;
  v46 = 0uLL;
  if (begin)
  {
    operator delete(begin);
  }

  begin = 0;
LABEL_25:
  if (*(a1 + 48) >= 2uLL)
  {
    *(a1 + 209) = 1;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if (!begin)
    {
      goto LABEL_61;
    }

LABEL_60:
    operator delete(begin);
    goto LABEL_61;
  }

LABEL_28:
  KB::Alignment::operator*(a5, a4, __x);
  v27 = a5;
  v25 = *a5;
  v26 = v27[1];
  v28 = a2[2];
  if (!a2[2])
  {
    KB::String::compute_length(a2);
    v28 = a2[2];
  }

  v29 = (v26 - v25) >> 2;
  v30 = a3[2];
  if (!a3[2])
  {
    KB::String::compute_length(a3);
    v30 = a3[2];
  }

  if (v30 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  if (v29 >= v31)
  {
    LODWORD(v32) = v31;
  }

  else
  {
    v32 = (v26 - v25) >> 2;
  }

  if (v26 != v25)
  {
    v33 = 0;
    do
    {
      v34 = *(v25 + 4 * v33);
      if (v33 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v33;
      }

      if (v34 < v35)
      {
        v35 = *(v25 + 4 * v33);
      }

      if (v34 != -1)
      {
        LODWORD(v32) = v35;
      }

      ++v33;
    }

    while (v29 > v33);
  }

  if (v32)
  {
    v36 = 0;
    v37 = v32;
    v38 = (v32 + 3) & 0xFFFFFFFC;
    v39 = vdupq_n_s64(v37 - 1);
    v40 = xmmword_22CC88A90;
    v41 = xmmword_22CC88AA0;
    v42 = (v25 + 8);
    v43 = vdupq_n_s64(4uLL);
    do
    {
      v44 = vmovn_s64(vcgeq_u64(v39, v41));
      if (vuzp1_s16(v44, *v39.i8).u8[0])
      {
        *(v42 - 2) = v36;
      }

      if (vuzp1_s16(v44, *&v39).i8[2])
      {
        *(v42 - 1) = v36 + 1;
      }

      if (vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
      {
        *v42 = v36 + 2;
        v42[1] = v36 + 3;
      }

      v36 += 4;
      v40 = vaddq_s64(v40, v43);
      v41 = vaddq_s64(v41, v43);
      v42 += 4;
    }

    while (v38 != v36);
  }

  if (!v30)
  {
    KB::String::compute_length(a3);
    v30 = a3[2];
  }

  TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::replace_alignment(a1 + 168, 0, v30, a4);
  if (begin)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::replace_alignment(uint64_t a1, unsigned int a2, int a3, int **a4)
{
  v8 = *a1;
  if (a3)
  {
    v9 = &v8[4 * a2];
    v10 = &v9[4 * a3];
    v11 = *(a1 + 8);
    v12 = v11 - v10;
    if (v11 != v10)
    {
      memmove(&v8[4 * a2], v10, v11 - v10);
      v8 = *a1;
    }

    *(a1 + 8) = &v9[v12];
  }

  v14 = *a4;
  v13 = a4[1];
  v15 = v13 - *a4;
  v16 = v15 >> 2;
  if (v15 >> 2 >= 1)
  {
    v17 = &v8[4 * a2];
    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v18 - v19 < v15)
    {
      v20 = v16 + ((v19 - v8) >> 2);
      if (v20 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v21 = v18 - v8;
      if (v21 >> 1 > v20)
      {
        v20 = v21 >> 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      v38 = 4 * a2;
      v39 = (v38 + v15);
      v40 = v38;
      do
      {
        v41 = *v14++;
        *v40++ = v41;
        v15 -= 4;
      }

      while (v15);
      memcpy(v39, v17, *(a1 + 8) - v17);
      v42 = *a1;
      v43 = &v39[*(a1 + 8) - v17];
      *(a1 + 8) = v17;
      v44 = v17 - v42;
      v45 = (v38 - (v17 - v42));
      memcpy(v45, v42, v44);
      v46 = *a1;
      *a1 = v45;
      *(a1 + 8) = v43;
      *(a1 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }

      goto LABEL_38;
    }

    v23 = (v19 - v17) >> 2;
    if (v23 >= v16)
    {
      v27 = &v17[v15];
      v28 = (v19 - v15);
      v29 = *(a1 + 8);
      while (v28 < v19)
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      *(a1 + 8) = v29;
      if (v19 != v27)
      {
        memmove(&v17[v15], v17, v19 - v27);
      }

      v35 = v17;
      v36 = v14;
      v37 = v15;
      goto LABEL_37;
    }

    v24 = (v14 + v19 - v17);
    v25 = *(a1 + 8);
    while (v24 != v13)
    {
      v26 = *v24++;
      *v25++ = v26;
    }

    *(a1 + 8) = v25;
    if (v23 >= 1)
    {
      v31 = &v17[v15];
      v32 = (v25 - v15);
      v33 = v25;
      while (v32 < v19)
      {
        v34 = *v32++;
        *v33++ = v34;
      }

      *(a1 + 8) = v33;
      if (v25 != v31)
      {
        memmove(&v17[v15], v17, v25 - v31);
      }

      if (v19 != v17)
      {
        v35 = v17;
        v36 = v14;
        v37 = v19 - v17;
LABEL_37:
        memmove(v35, v36, v37);
      }
    }
  }

LABEL_38:
  *(a1 + 24) = *(a1 + 24) - a3 + ((a4[1] - *a4) >> 2);
}

void *TI::Favonius::FavoniusStrokeBuildManager::delete_from_stroke_history_for_UI(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 160);
  memset(v10, 0, 24);
  TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v4, v10);
  TI::Favonius::KeyboardLayout::key_for_char(*a2, 8u, &v9);
  if (v9)
  {
    v5 = *(v9 + 96);
    v6 = *(v9 + 104);
    v7 = *(a1 + 200);
    operator new();
  }

  return WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v10);
}

void TI::Favonius::FavoniusStrokeBuildManager::lookup_inline_completions_for_UI(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 24) + 24))(*(a1 + 24)))
  {
    WORD2(v32) = 0;
    BYTE6(v32) = 0;
    v33 = " \t\n";
    LODWORD(v32) = 1048579;
    v34 = 0;
    KB::sbs_string_tokenize(a2, &v32, v18);
    v8 = v33;
    if (v33 && BYTE6(v32) == 1)
    {
      free(v33);
    }

    v10 = *v18;
    v9 = v19;
    if ((v19 - *v18) == 32 && **v18 < *a2)
    {
      KB::String::space(v8);
      KB::String::String(&v32, v10);
      KB::String::append(&v32, &KB::String::space(void)::space);
      KB::String::operator=(*v18, &v32);
      if (v33 && BYTE6(v32) == 1)
      {
        free(v33);
      }

      v10 = *v18;
      v9 = v19;
    }

    if (v9 == v10)
    {
      KB::String::String(v20, "");
    }

    else
    {
      KB::String::String(v20, (v9 - 32));
    }

    KB::Word::Word(&v27, v20, &kTITokenIDUNK, 0);
    KB::Candidate::Candidate(&v32, &v27);
    KB::Word::~Word(&v27);
    if (v20[1] && BYTE6(v20[0]) == 1)
    {
      free(v20[1]);
    }

    if ((*(*a1 + 152))(a1))
    {
      v14 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
      if (*(a1 + 336) == 1)
      {
        v15 = *(a1 + 332);
        if (v15 <= 1.0 && v15 >= 0.0)
        {
          v14 = (a1 + 332);
        }
      }
    }

    else
    {
      v14 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
    }

    v36 = *v14;
    v37 = -8388608;
    v35 = 0u;
    KB::Candidate::Candidate(&v27, &v32);
    v20[0] = 0;
    v20[1] = 0;
    __p[0] = 0;
    std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>();
  }

  HIDWORD(v31) = 0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  bzero(&v32, 0x3E8uLL);
  KB::Candidate::Candidate(&v32);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v24);
  language_modeling::v1::LinguisticContext::LinguisticContext((&v24 + 8));
  v25 = 0uLL;
  v26 = 0;
  std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a3 + 24), &v27, &v32, v20, 0);
  *v18 = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v18);
  language_modeling::v1::LinguisticContext::~LinguisticContext((&v24 + 8));
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v24);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20[1]);
  }

  KB::Candidate::~Candidate(&v32);
  *a4 = v27;
  v11 = v28[3];
  *(a4 + 16) = v28[0];
  v27 = 0uLL;
  *(a4 + 24) = *&v28[1];
  *(a4 + 40) = v11;
  memset(v28, 0, sizeof(v28));
  *(a4 + 48) = v29;
  v12 = v30[3];
  v13 = v31;
  *(a4 + 64) = v30[0];
  v29 = 0uLL;
  *(a4 + 72) = *&v30[1];
  memset(v30, 0, sizeof(v30));
  *(a4 + 88) = v12;
  *(a4 + 96) = v13;
  *(a4 + 104) = 1;
  v32 = &v30[1];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v32);
  v32 = &v29;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v32);
  v32 = &v28[1];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v32);
  v32 = &v27;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v32);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(uint64_t a1@<X0>, const KB::LanguageModelContext *a2@<X1>, const KB::String **a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v55[5] = *MEMORY[0x277D85DE8];
  KB::LanguageModelContext::LanguageModelContext(v26, a2);
  v9 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
LABEL_13:
    v14 = *(a1 + 24);
    std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::__value_func[abi:nn200100](v34, a4);
    operator new();
  }

  while (1)
  {
    v11 = (*(**(a1 + 24) + 120))(*(a1 + 24));
    KB::DictionaryContainer::word_with_string(v11, v9, 0, v47);
    if (!v47[0])
    {
      KB::string_to_lowercase(v9, 0, v42);
      v12 = (*(**(a1 + 24) + 120))(*(a1 + 24));
      KB::DictionaryContainer::word_with_string(v12, v42, 0, v35);
      KB::String::operator=(v47, v35);
      if (v48 >= 0xFu && *(&v48 + 1))
      {
        MEMORY[0x2318BE250](*(&v48 + 1), 0x1000C8077774924);
      }

      v48 = v36;
      if (v36 >= 0xFu)
      {
        LOWORD(v36) = 0;
      }

      v49 = v37;
      v50 = v38;
      KB::String::operator=(v51, v39);
      v51[2] = v39[2];
      v51[3] = v39[3];
      v52 = v39[4];
      v53 = v39[5];
      KB::String::operator=(v54, v40);
      v54[32] = v40[32];
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v55, v41);
      KB::Word::~Word(v35);
      if (v42[1] && BYTE6(v42[0]) == 1)
      {
        free(v42[1]);
      }

      if (!v47[0])
      {
        break;
      }
    }

    v13 = *(&v52 + 1);
    KB::LanguageModelContext::append(v26, v13, v9, 0);
    KB::Word::~Word(v47);
    v9 = (v9 + 32);
    if (v9 == v10)
    {
      goto LABEL_13;
    }
  }

  HIDWORD(v46) = 0;
  *v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  bzero(v35, 0x3E8uLL);
  KB::Candidate::Candidate(v35);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  *v20 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v23);
  language_modeling::v1::LinguisticContext::LinguisticContext((&v23 + 8));
  v24 = 0uLL;
  v25 = 0;
  std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(*(a4 + 24), v42, v35, &v19, 0);
  v33 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v33);
  language_modeling::v1::LinguisticContext::~LinguisticContext((&v23 + 8));
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v23);
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
  }

  KB::Candidate::~Candidate(v35);
  *a5 = *v42;
  v16 = *(&v43[1] + 1);
  *(a5 + 16) = *&v43[0];
  v42[0] = 0;
  v42[1] = 0;
  *(a5 + 24) = *(v43 + 8);
  *(a5 + 40) = v16;
  memset(v43, 0, sizeof(v43));
  *(a5 + 48) = v44;
  v17 = *(&v45[1] + 1);
  *(a5 + 64) = *&v45[0];
  v44 = 0uLL;
  *(a5 + 72) = *(v45 + 8);
  memset(v45, 0, sizeof(v45));
  v18 = v46;
  *(a5 + 88) = v17;
  *(a5 + 96) = v18;
  *(a5 + 104) = 1;
  v35[0] = v45 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = &v44;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = v43 + 1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  v35[0] = v42;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v35);
  KB::Word::~Word(v47);
  v35[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v35);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v31);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v30);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a5;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, a4, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v6);
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = *a5;
  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    v18[0] = *(v10 + 748);
    *(v18 + 12) = *(v10 + 760);
    if (*v10)
    {
      v12 = 240 * *v10;
      v13 = (*(v10 + 8) + 52);
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

    update_lookup_suggestions_omega_factors(v10, v18, 0, v14);
    v10 += 1000;
  }

  v16 = *(a1 + 32);

  return std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::operator()(v16, a2, a3, a4, v9);
}

void update_lookup_suggestions_omega_factors(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v9 = logf(a4);
  v10 = v6 + (v8 * (v9 + v7));
  if (a3)
  {
    if (*a1)
    {
      v11 = 240 * *a1;
      v12 = (*(a1 + 8) + 100);
      v13 = 1.0;
      do
      {
        v14 = *v12;
        v12 += 60;
        v13 = v13 * v14;
        v11 -= 240;
      }

      while (v11);
    }

    else
    {
      v13 = 1.0;
    }

    v10 = v10 + (v8 * logf(v13));
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 888))
    {
      v17 = *(a1 + 896);
      if (!v17)
      {
        v17 = (a1 + 904);
      }
    }

    else
    {
      KB::Candidate::compute_string(a1);
      v16 = *(a1 + 896);
      if (!v16)
      {
        v16 = (a1 + 904);
      }

      if (*(a1 + 888))
      {
        v17 = v16;
      }

      else
      {
        v17 = "";
      }
    }

    *buf = 136316162;
    v21 = "update_lookup_suggestions_omega_factors";
    v22 = 2080;
    v23 = v17;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  LM_SPI_changes candidate = %s, omega_factors.geometry = %f, omega_factors.word = %f recalculated log_omega = %f", buf, 0x34u);
  }

  *(a1 + 744) = v10;
  *(a1 + 748) = v6;
  *(a1 + 752) = v9;
  *(a1 + 756) = v7;
  *(a1 + 760) = v8;
  *(a1 + 772) = v19;
  *(a1 + 764) = v18;
  *(a1 + 992) = 1;
  v15 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_283FDBA00;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lm_inline_predictions_for_favonious(KB::LanguageModelContext const&,std::vector<KB::Candidate> const&,std::vector<KB::String> const&,BOOL,std::function<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>)::$_0>,void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_283FDBA00;
  std::__function::__value_func<void ()(KB::CandidateCollection &,KB::Candidate const&,KB::LanguageModelContext const&,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String *a1@<X1>, KB::String *this@<X4>, uint64_t a3@<X0>, uint64_t *a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v64 = a6;
  if (a6 == 5)
  {
    KB::String::String(v76, a1);
    v14 = *(a7 + 24);
    if (v14)
    {
      if (v14 == a7)
      {
        v75 = v74;
        (*(*v14 + 24))(v14, v74);
      }

      else
      {
        v75 = (*(*v14 + 16))(v14);
      }
    }

    else
    {
      v75 = 0;
    }

    TI::Favonius::FavoniusStrokeBuildManager::latham_conversions(a3, a5, v76, a4, a9);
    std::__function::__value_func<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>::~__value_func[abi:nn200100](v74);
    if (v77 && v76[6] == 1)
    {
      free(v77);
    }
  }

  else
  {
    v16 = a6;
    KB::String::operator=(this, (a3 + 128));
    *(a9 + 100) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 80) = 0u;
    v18 = *(a3 + 160);
    if (*(a3 + 72) > v18 && (*(a3 + 209) & 1) == 0)
    {
      v49 = a8;
      v50 = *(a3 + 80);
      v69 = 0x100000;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v19 = (*(*a3 + 432))(a3);
      v63 = v19;
      if (v16 < 2 || v16 == 4)
      {
        v26 = *(v50 + 8 * v18);
        if ((v16 & 0xFFFFFFFD) == 1)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        if ((*(*a3 + 152))(a3))
        {
          v28 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          if (*(a3 + 336) == 1)
          {
            v29 = *(a3 + 332);
            if (v29 <= 1.0 && v29 >= 0.0)
            {
              v28 = (a3 + 332);
            }
          }
        }

        else
        {
          v28 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
        }

        v48 = a5;
        (*(*v26 + 128))(&v57, v26, a5, &v69, v16, 1, *v28);
        v32 = v57;
        v31 = v58;
        if (v57 != v58)
        {
          while (*v32)
          {
            v33 = v32[1] + 240 * *v32;
            v34 = *(v33 - 232);
            v35 = (v33 - 224);
            if (v34)
            {
              v35 = v34;
            }

            if (*v35 == 32 && !v35[1])
            {
              break;
            }

            v32 += 125;
            if (v32 == v58)
            {
              v32 = v58;
              goto LABEL_55;
            }
          }

          if (v32 != v58)
          {
            v47 = a4;
            v36 = v32 + 125;
            if (v32 + 125 != v58)
            {
              do
              {
                if (*v36)
                {
                  v37 = v36[1] + 240 * *v36;
                  v38 = *(v37 - 232);
                  v39 = (v37 - 224);
                  if (v38)
                  {
                    v39 = v38;
                  }

                  if (*v39 != 32 || v39[1])
                  {
                    KB::Candidate::operator=(v32, v36);
                    v32 += 125;
                  }
                }

                v36 += 125;
              }

              while (v36 != v31);
              v31 = v58;
              v16 = v64;
            }

            a4 = v47;
          }
        }

LABEL_55:
        std::vector<KB::Candidate>::erase(&v57, v32, v31);
        if (v16 == 1 && ((*(**(a3 + 24) + 48))(*(a3 + 24)) & 1) != 0)
        {
          goto LABEL_70;
        }

        v40 = a4;
        v41 = *(v50 + 8 * v18);
        if ((*(*a3 + 152))(a3))
        {
          v42 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          v43 = v49;
          if (*(a3 + 336) == 1)
          {
            v44 = *(a3 + 332);
            if (v44 <= 1.0 && v44 >= 0.0)
            {
              v42 = (a3 + 332);
            }
          }
        }

        else
        {
          v42 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
          v43 = v49;
        }

        (*(*v41 + 120))(v53, v41, v48, &v69, v16, *v42);
        KB::CandidateCollection::operator=(a9, v53);
        v65 = &v56;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v65);
        v65 = &v55;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v65);
        v65 = &v54;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v65);
        v65 = v53;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v65);
        if ((v43 & 1) == 0 && (0x1CAC083126E978D5 * ((*(a9 + 8) - *a9) >> 3)) >= 0x1F)
        {
          std::vector<KB::Candidate>::resize(a9, 0x1EuLL);
        }

        a4 = v40;
        if (v16 == 1)
        {
LABEL_70:
          (*(**(a3 + 24) + 136))(*(a3 + 24), a9);
        }

        (*(**(a3 + 24) + 64))(*(a3 + 24), a9, 1);
        KB::String::append(this, &v69);
        (*(**(a3 + 24) + 72))(*(a3 + 24), &v57, a4, a9, v16, v27);
        LODWORD(v53[0]) = 0;
        std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v51, v53, 1uLL);
        KB::CandidateFilterFlags::CandidateFilterFlags(&__p);
      }

      if (v16 == 3)
      {
        v20 = v19;
        v21 = *(v50 + 8 * v18);
        if ((*(*a3 + 152))(a3))
        {
          v22 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
          if (*(a3 + 336) == 1)
          {
            v23 = *(a3 + 332);
            if (v23 <= 1.0 && v23 >= 0.0)
            {
              v22 = (a3 + 332);
            }
          }
        }

        else
        {
          v22 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
        }

        (*(*v21 + 136))(v53, v21, a5, &v69, 3, *v22);
        KB::String::append(this, &v69);
        v46 = *(a3 + 24);
        v66 = &unk_283FDB970;
        v67 = v20;
        v68 = &v66;
        (*(*v46 + 80))(v46, v53, a4, a9, &v66);
        std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](&v66);
        v59 = 0;
        v60 = 0;
        v61 = 0;
        KB::CandidateFilterFlags::CandidateFilterFlags(&v62);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::latham_conversions@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, KB *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 100) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  result = *(a1 + 704);
  if (result)
  {
    (*(*result + 80))(result, a5, 0);
    v11 = *(a1 + 8);
    if (v11 && *(*(*v11 + 48))(v11) && (*(*(*(**(a1 + 8) + 48))(*(a1 + 8)) + 65) & 1) == 0)
    {
      v28 = 0;
      memset(v26, 0, sizeof(v26));
      memset(v27, 0, sizeof(v27));
      v12 = *a5;
      v13 = *(a5 + 8);
      if (*a5 != v13)
      {
        do
        {
          v14 = *v12;
          if (*v12)
          {
            v15 = 240 * v14;
            v16 = *(v12 + 1);
            while ((*(v16 + 192) & 1) == 0)
            {
              v16 += 240;
              v15 -= 240;
              if (!v15)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v16 = *(v12 + 1);
          }

          if (v16 == *(v12 + 1) + 240 * v14)
          {
LABEL_13:
            std::vector<KB::Candidate>::push_back[abi:nn200100](v26, v12);
          }

          v12 = (v12 + 1000);
        }

        while (v12 != v13);
      }

      KB::CandidateCollection::operator=(a5, v26);
      v24[0] = &v27[1] + 1;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      v24[0] = v27;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      v24[0] = &v26[3];
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
      v24[0] = v26;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v24);
    }

    v17 = a2;
    v18 = *(a1 + 904);
    (*(**(a1 + 24) + 112))(v24);
    if (v25)
    {
      v18 = v24[1];
      v19 = v24[0];
    }

    else
    {
      v19 = v17;
    }

    if (0x1CAC083126E978D5 * ((*(a5 + 8) - *a5) >> 3) > v19)
    {
      std::vector<KB::Candidate>::resize(a5, v19);
    }

    if (a1 + 800 != a5)
    {
      std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a1 + 800, *a5, *(a5 + 8), 0x1CAC083126E978D5 * ((*(a5 + 8) - *a5) >> 3));
    }

    if ((*(*a1 + 384))(a1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(a3, a1, a5, a4, a1 + 776, v18, v26);
      LODWORD(v29) = 0;
      std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v22, &v29, 1uLL);
      KB::CandidateFilterFlags::CandidateFilterFlags(&__p);
    }

    LODWORD(v26[0]) = 0;
    std::vector<KB::FilterFlagType>::vector[abi:nn200100](&v20, v26, 1uLL);
    KB::CandidateFilterFlags::CandidateFilterFlags(&v21);
  }

  return result;
}

void std::vector<KB::Candidate>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0x1CAC083126E978D5 * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v11 = (v4 + 1000 * a2);
      while (v3 != v11)
      {
        v3 = (v3 - 1000);
        KB::Candidate::~Candidate(v3);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v8 = a1[2];
    if (0x1CAC083126E978D5 * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x4189374BC6A7EFLL)
      {
        v9 = 0x395810624DD2F1AALL * ((v8 - v4) >> 3);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if ((0x1CAC083126E978D5 * ((v8 - v4) >> 3)) >= 0x20C49BA5E353F7)
        {
          v10 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v10);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = v3 + 1000 * v7;
    v13 = 1000 * a2 - 8 * (v5 >> 3);
    do
    {
      bzero(v3, 0x3E8uLL);
      KB::Candidate::Candidate(v3);
      v3 = (v3 + 1000);
      v13 -= 1000;
    }

    while (v13);
    a1[1] = v12;
  }
}

void *std::vector<KB::FilterFlagType>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::update_autocorrection_candidates_with_ensemble(TI::Favonius::FavoniusStrokeBuildManager *this, KB::Candidate **a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  if (!TI::Favonius::FavoniusStrokeBuildManager::shouldSkipEnsembleForFavoniusCandidates(this, a2, a3, a4))
  {
    TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_ml_tap_typing(this, a2, a3, a4);

    TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(this, a2, a3, a4);
  }
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::shouldSkipEnsembleForFavoniusCandidates(TI::Favonius::FavoniusStrokeBuildManager *this, const KB::CandidateCollection *a2, const KB::String *a3, const KB::String *a4)
{
  v4 = *a2;
  if (*a2 == *(a2 + 1))
  {
    return 0;
  }

  if (!*(v4 + 888))
  {
    KB::Candidate::compute_string(*a2);
  }

  v7 = *(*(this + 2) + 16);
  v8 = 1;
  atomic_fetch_add(v7, 1u);
  v9 = KB::CollatorWrapper::sortkey_compare_strings((*(v7 + 8) + 72), (v4 + 888), a3, a4);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
  if (v9)
  {
    v10 = *(v4 + 8);
    v11 = v10 + 240 * *v4;
    if (*v4)
    {
      v12 = 240 * *v4;
      while ((*(v10 + 106) & 1) == 0)
      {
        v10 += 240;
        v12 -= 240;
        if (!v12)
        {
          v10 = v11;
          return v10 != v11;
        }
      }
    }

    return v10 != v11;
  }

  return v8;
}

void TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_ml_tap_typing(TI::Favonius::FavoniusStrokeBuildManager *this, KB::Candidate **a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  if (TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(this))
  {
    TI::Favonius::FavoniusStrokeBuildManager::ml_tap_typing_autocorrection_candidates(this, a3, a4, 1u, v13);
    v8 = v13[0];
    if (v13[0] != v13[1])
    {
      v9 = *a2;
      if (*a2 == a2[1])
      {
        std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v13[0]);
      }

      else
      {
        if (!*(v9 + 444))
        {
          KB::Candidate::compute_string(*a2);
        }

        if (!*(v8 + 444))
        {
          KB::Candidate::compute_string(v8);
        }

        if (v9 != v8 && !KB::String::equal((v9 + 888), (v8 + 222), 1) && *(v9 + 188) < v8[188])
        {
          std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v8);
          v10 = a2[1];
          v11 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v10 - *a2) >> 3));
          if (v10 == *a2)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
          }

          std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a2, v10, v12, 1);
        }
      }
    }

    v17 = &v16;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v17);
    v17 = &v15;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v17);
    v17 = &v14;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v17);
    v17 = v13;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v17);
  }
}

void TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(TI::Favonius::FavoniusStrokeBuildManager *this, KB::CandidateCollection *a2, const KB::String *a3, const KB::LanguageModelContext *a4)
{
  v29[27] = *MEMORY[0x277D85DE8];
  if (((TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(this) & 1) != 0 || (*(**(this + 3) + 40))(*(this + 3)) && *(this + 212) == 1) && *a2 != *(a2 + 1) && *a3 != 0)
  {
    (*(**(this + 3) + 128))(&__p);
    v9 = __p;
    if (__p != v22)
    {
      v10 = *a2;
      KB::Candidate::Candidate(v28, a3, 0);
      KB::LanguageModelContext::operator=(v29, a4);
      v20 = 0;
      memset(v18, 0, sizeof(v18));
      memset(v19, 0, sizeof(v19));
      v11 = __p;
      v12 = v22;
      while (v11 != v12)
      {
        KB::Candidate::Candidate(v25, v28);
        if (*&v25[0])
        {
          v13 = 240 * *&v25[0];
          v14 = (*(&v25[0] + 1) + 136);
          do
          {
            *v14 = *v11;
            v14 += 60;
            v13 -= 240;
          }

          while (v13);
        }

        std::vector<KB::Candidate>::push_back[abi:nn200100](v18, v25);
        KB::Candidate::~Candidate(v25);
        ++v11;
      }

      v17 = 0.0;
      v15 = *(this + 3);
      v24[0] = &unk_283FDB928;
      v24[1] = &v17;
      v24[3] = v24;
      (*(*v15 + 56))(v15, v18, v24);
      std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](v24);
      if (logf(v17) >= *(v10 + 752))
      {
        v27 = 0;
        memset(v25, 0, sizeof(v25));
        memset(v26, 0, sizeof(v26));
        KB::CandidateCollection::operator=(a2, v25);
        v23 = &v26[1] + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v23);
        v23 = v26;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v23);
        v23 = &v25[1] + 1;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v23);
        v23 = v25;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v23);
      }

      *&v25[0] = &v19[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      *&v25[0] = v19;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      *&v25[0] = &v18[1] + 8;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      *&v25[0] = v18;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v25);
      KB::Candidate::~Candidate(v28);
      v9 = __p;
    }

    if (v9)
    {
      v22 = v9;
      operator delete(v9);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::is_ml_tap_typing_enabled(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  result = (*(**(this + 3) + 40))(*(this + 3));
  if (result)
  {
    if (((*(**(this + 3) + 32))(*(this + 3)) & 1) == 0)
    {
      v3 = *(this + 90);
      if (v3)
      {
        v4 = *(v3 + 64);
        if (v4)
        {
          CFRetain(*(v3 + 64));
          CFRelease(v4);
          v5 = *(this + 9);
          if (!v5)
          {
            return 1;
          }

          v6 = *(this + 10);
          v7 = 8 * v5;
          while (1)
          {
            v8 = (*(**v6 + 32))();
            if (v8)
            {
              if ((*(*(v8 + 8) + 60) & 0x80) != 0)
              {
                break;
              }
            }

            v6 += 8;
            v7 -= 8;
            if (!v7)
            {
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t result, uint64_t a2, float *a3)
{
  v3 = *(result + 8);
  if (*v3 < *a3)
  {
    *v3 = *a3;
  }

  return result;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::update_candidates_with_exact_typed_string(KB::CandidateCollection &,KB::String const&,KB::LanguageModelContext const&)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB928;
  a2[1] = v2;
  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::ml_tap_typing_autocorrection_candidates(TI::Favonius::FavoniusStrokeBuildManager *this@<X0>, const KB::String *a2@<X2>, const KB::LanguageModelContext *a3@<X3>, unsigned int a4@<W1>, uint64_t a5@<X8>)
{
  v38[3] = *MEMORY[0x277D85DE8];
  TI::TIInputRecognizer::generate_mltt_autocorrection_candidates(*(this + 90), a2, this + 920, &__p);
  v10 = __p;
  v11 = v31;
  if (__p != v31)
  {
    v12 = __p;
    while (*(v12 + 4) != *(v12 + 5))
    {
      v12 += 136;
      if (v12 == v31)
      {
        goto LABEL_14;
      }
    }

    if (v12 != v31)
    {
      v13 = (v12 + 136);
      if (v12 + 136 != v31)
      {
        do
        {
          if (*(v13 + 4) != *(v13 + 5))
          {
            KB::String::operator=(v12, v13);
            KB::CandidateCollection::operator=((v12 + 32), v13 + 32);
            v12 += 136;
          }

          v13 = (v13 + 136);
        }

        while (v13 != v11);
        v10 = __p;
        v11 = v31;
      }
    }

    if (v12 != v11)
    {
      std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](&__p, v12);
      v10 = __p;
      v11 = v31;
    }
  }

LABEL_14:
  *(a5 + 100) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  if (v10 != v11)
  {
    do
    {
      v38[0] = 0;
      v38[1] = 0;
      v37 = v38;
      TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(v10, this, v10 + 4, a3, &v37, *(this + 113), &v32);
      std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(v38[0]);
      KB::CandidateCollection::add(a5, &v32);
      v37 = &v36;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
      v37 = &v35;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
      v37 = &v34;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
      v37 = &v32;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v37);
      v10 += 17;
    }

    while (v10 != v11);
    v14 = *a5;
    v15 = *(a5 + 8);
    if (*a5 != v15)
    {
      v16 = (v14 + 888);
      while (1)
      {
        if (!*v16)
        {
          KB::Candidate::compute_string((v16 - 888));
        }

        KB::lower_string(v16, 0, &v32);
        KB::lower_string(a2, 0, &v37);
        v17 = KB::String::equal(&v32, &v37, 1);
        if (v38[0] && BYTE6(v37) == 1)
        {
          free(v38[0]);
        }

        if (v33 && BYTE6(v32) == 1)
        {
          free(v33);
        }

        if (v17)
        {
          break;
        }

        v18 = (v16 + 112);
        v16 = (v16 + 1000);
        if (v18 == v15)
        {
          goto LABEL_31;
        }
      }

      v15 = (v16 - 888);
LABEL_31:
      v14 = v15;
      v15 = *(a5 + 8);
    }

    if (v14 != v15)
    {
      KB::Candidate::Candidate(&v32, v14);
      v19 = *a5;
      if (*(a5 + 16) == *a5)
      {
        std::vector<KB::Candidate>::__vdeallocate(a5);
        v24 = 0x395810624DD2F1AALL * ((*(a5 + 16) - *a5) >> 3);
        if (v24 <= 1)
        {
          v24 = 1;
        }

        if ((0x1CAC083126E978D5 * ((*(a5 + 16) - *a5) >> 3)) >= 0x20C49BA5E353F7)
        {
          v25 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v25 = v24;
        }

        std::vector<KB::Candidate>::__vallocate[abi:nn200100](a5, v25);
      }

      v20 = *(a5 + 8);
      v21 = v20 - v19;
      if (v20 == v19)
      {
        KB::Candidate::Candidate(*(a5 + 8), &v32);
        v22 = v21 + v20 + 1000;
      }

      else
      {
        v22 = v19 + 1000;
        KB::Candidate::operator=(v19, &v32);
          ;
        }
      }

      *(a5 + 8) = v22;
      KB::Candidate::~Candidate(&v32);
    }
  }

  TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(this, a5, 0);
  KB::CandidateCollection::normalize_scores(a5);
  v26 = *(a5 + 8);
  v27 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v26 - *a5) >> 3));
  if (v26 == *a5)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,false>(*a5, v26, v28, 1);
  if (0x1CAC083126E978D5 * ((*(a5 + 8) - *a5) >> 3) > a4)
  {
    std::vector<KB::Candidate>::resize(a5, a4);
  }

  if (__p)
  {
    std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](&__p, __p);
    operator delete(__p);
  }

  v29 = *MEMORY[0x277D85DE8];
}

unsigned int *TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions@<X0>(KB *this@<X2>, uint64_t a2@<X0>, const KB::Candidate **a3@<X1>, uint64_t *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v180 = *MEMORY[0x277D85DE8];
  *(a7 + 100) = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  v10 = *(*(a2 + 16) + 16);
  atomic_fetch_add(v10, 1u);
  v88 = v10;
  v89 = *(v10 + 8);
  KB::word_ranges(this, 1, &__p);
  LODWORD(v158[0]) = 0x100000;
  WORD2(v158[0]) = 0;
  BYTE6(v158[0]) = 0;
  v158[1] = 0;
  v159 = 0;
  v160[0] = 0;
  v161 = 0x3F80000000000000;
  v162 = 1065353216;
  v163 = 0x100000;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  __asm { FMOV            V9.2S, #1.0 }

  *&v168 = _D9;
  *(&v171 + 1) = 0;
  v169 = 0u;
  v170 = 0u;
  DWORD2(v168) = 0;
  LODWORD(v171) = 0;
  v172 = 0x100000;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  memset(v178, 0, sizeof(v178));
  v179 = 1065353216;
  v16 = __p;
  v17 = v104;
  if (__p == v104)
  {
    v19 = *this;
    if (*(this + 1))
    {
      v18 = *(this + 1);
    }

    else
    {
      v18 = this + 16;
    }

    *&v101 = v18;
    DWORD2(v101) = v19;
    HIDWORD(v101) = v19;
    LODWORD(v102) = 0;
    KB::String::iterator::initialize(&v101);
  }

  else
  {
    if (*(this + 1))
    {
      v18 = *(this + 1);
    }

    else
    {
      v18 = this + 16;
    }

    *&v118 = v18;
    v19 = *this;
    DWORD2(v118) = 0;
    HIDWORD(v118) = v19;
    LODWORD(v119) = 0;
    KB::String::iterator::initialize(&v118);
    v20 = *(v17 - 2);
    v101 = v118;
    v102 = v119;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v101, v20);
  }

  *&v118 = v18;
  DWORD2(v118) = 0;
  HIDWORD(v118) = v19;
  LODWORD(v119) = 0;
  KB::String::iterator::initialize(&v118);
  if (DWORD2(v118) != DWORD2(v101))
  {
    *&v118 = v18;
    DWORD2(v118) = 0;
    HIDWORD(v118) = v19;
    LODWORD(v119) = 0;
    KB::String::iterator::initialize(&v118);
    KB::String::String(&v113, &v118, &v101);
    v21 = KB::Word::Word(&v118, &v113, &kTITokenIDUNK, 0);
    KB::String::space(v21);
    if (KB::String::equal(&v113, &KB::String::space(void)::space, 1))
    {
      DWORD1(v126) |= 0x4000000u;
    }

    DWORD2(v124) |= 0x800000u;
    KB::String::operator=(v158, &v118);
    KB::ByteString::operator=(v160, v120);
    v161 = v121;
    v162 = v122;
    KB::String::operator=(&v163, v123);
    v168 = v124;
    v169 = v125;
    v170 = v126;
    v171 = v127;
    KB::String::operator=(&v172, v128);
    v177 = v129;
    v179 = v131;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v178, v130);
    KB::Word::~Word(&v118);
    if (*(&v113 + 1) && BYTE6(v113) == 1)
    {
      free(*(&v113 + 1));
    }
  }

  LODWORD(v136[0]) = 0x100000;
  WORD2(v136[0]) = 0;
  BYTE6(v136[0]) = 0;
  v136[1] = 0;
  v137 = 0;
  v138[0] = 0;
  v139 = 0x3F80000000000000;
  v140 = 1065353216;
  v141 = 0x100000;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  *&v146 = _D9;
  *(&v149 + 1) = 0;
  v147 = 0u;
  v148 = 0u;
  DWORD2(v146) = 0;
  LODWORD(v149) = 0;
  v150 = 0x100000;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  memset(v156, 0, sizeof(v156));
  v157 = 1065353216;
  v22 = a5;
  if (v16 == v17)
  {
    v99 = v101;
    v100 = v102;
    v25 = *this;
    v23 = *(this + 1);
  }

  else
  {
    v23 = *(this + 1);
    if (v23)
    {
      v24 = *(this + 1);
    }

    else
    {
      v24 = this + 16;
    }

    *&v113 = v24;
    v25 = *this;
    DWORD2(v113) = 0;
    HIDWORD(v113) = v25;
    LODWORD(v114) = 0;
    KB::String::iterator::initialize(&v113);
    v26 = *(v17 - 2);
    v118 = v113;
    v119 = v114;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v118, v26);
    v27 = *(v17 - 1);
    v99 = v118;
    v100 = v119;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v99, v27);
  }

  if (v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = this + 16;
  }

  *&v118 = v28;
  DWORD2(v118) = v25;
  HIDWORD(v118) = v25;
  LODWORD(v119) = 0;
  KB::String::iterator::initialize(&v118);
  if (DWORD2(v99) != DWORD2(v118))
  {
    *&v118 = v28;
    DWORD2(v118) = v25;
    HIDWORD(v118) = v25;
    LODWORD(v119) = 0;
    KB::String::iterator::initialize(&v118);
    KB::String::String(&v113, &v99, &v118);
    v29 = KB::Word::Word(&v118, &v113, &kTITokenIDUNK, 0);
    KB::String::space(v29);
    if (KB::String::equal(&v113, &KB::String::space(void)::space, 1))
    {
      DWORD1(v126) |= 0x4000000u;
    }

    else
    {
      DWORD2(v124) |= 0x800000u;
    }

    KB::String::operator=(v136, &v118);
    KB::ByteString::operator=(v138, v120);
    v139 = v121;
    v140 = v122;
    KB::String::operator=(&v141, v123);
    v146 = v124;
    v147 = v125;
    v148 = v126;
    v149 = v127;
    KB::String::operator=(&v150, v128);
    v155 = v129;
    v157 = v131;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v156, v130);
    KB::Word::~Word(&v118);
    if (*(&v113 + 1))
    {
      if (BYTE6(v113) == 1)
      {
        free(*(&v113 + 1));
      }
    }
  }

  v98 = a4;
  if (v16 == v17)
  {
    if (LOWORD(v158[0]) | LOWORD(v136[0]))
    {
      KB::Candidate::Candidate(&v118);
      v132 = 0u;
      v133 = 0xFF8000003F800000;
      v51 = *a3;
      v50 = a3[1];
      if (*a3 != v50)
      {
        do
        {
          KB::Candidate::Candidate(&v113, v51);
          TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(v110, &v98, v158, &v118, v136, &v113);
          v52 = *(a7 + 8);
          v53 = *(a7 + 16);
          if (v52 >= v53)
          {
            v55 = 0x1CAC083126E978D5 * ((v52 - *a7) >> 3);
            v56 = v55 + 1;
            if ((v55 + 1) > 0x4189374BC6A7EFLL)
            {
              goto LABEL_125;
            }

            v57 = 0x1CAC083126E978D5 * ((v53 - *a7) >> 3);
            if (2 * v57 > v56)
            {
              v56 = 2 * v57;
            }

            if (v57 >= 0x20C49BA5E353F7)
            {
              v58 = 0x4189374BC6A7EFLL;
            }

            else
            {
              v58 = v56;
            }

            v109 = a7;
            if (v58)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v58);
            }

            v59 = 1000 * v55;
            KB::Candidate::Candidate(v59, v110);
            v54 = v59 + 1000;
            v60 = *(a7 + 8);
            v61 = v59 + *a7 - v60;
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a7, v60, v61);
            v62 = *a7;
            *a7 = v61;
            *(a7 + 8) = v54;
            v63 = *(a7 + 16);
            *(a7 + 16) = 0;
            v107 = v62;
            v108 = v63;
            v105 = v62;
            v106 = v62;
            std::__split_buffer<KB::Candidate>::~__split_buffer(&v105);
          }

          else
          {
            v54 = KB::Candidate::Candidate(v52, v110) + 1000;
          }

          *(a7 + 8) = v54;
          KB::Candidate::~Candidate(v110);
          KB::Candidate::~Candidate(&v113);
          v51 = (v51 + 1000);
        }

        while (v51 != v50);
      }

      KB::Candidate::~Candidate(&v118);
    }

    else if (a7 != a3)
    {
      std::vector<KB::Candidate>::__assign_with_size[abi:nn200100]<KB::Candidate*,KB::Candidate*>(a7, *a3, a3[1], 0x1CAC083126E978D5 * ((a3[1] - *a3) >> 3));
    }
  }

  else
  {
    v30 = *(this + 1);
    if (!v30)
    {
      v30 = this + 16;
    }

    *&v118 = v30;
    v31 = *this;
    DWORD2(v118) = 0;
    HIDWORD(v118) = v31;
    LODWORD(v119) = 0;
    KB::String::iterator::initialize(&v118);
    v32 = *(v17 - 2);
    v96 = v118;
    v97 = v119;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v96, v32);
    v33 = *(v17 - 1);
    v94 = v96;
    v95 = v97;
    std::__advance[abi:nn200100]<KB::String::iterator>(&v94, v33);
    KB::String::String(v134, &v96, &v94);
    v112 = 0;
    memset(v110, 0, sizeof(v110));
    memset(v111, 0, sizeof(v111));
    KB::lower_string(v134, 0, &v118);
    v34 = v22 + 8;
    v35 = *(v22 + 8);
    v36 = *(&v118 + 1);
    if (!v35)
    {
      goto LABEL_51;
    }

    v37 = *(&v118 + 1) ? *(&v118 + 1) : &v119;
    v38 = v22 + 8;
    do
    {
      if (*(v35 + 40))
      {
        v39 = *(v35 + 40);
      }

      else
      {
        v39 = (v35 + 48);
      }

      v40 = strcmp(v39, v37);
      if (v40 >= 0)
      {
        v38 = v35;
      }

      v35 = *(v35 + ((v40 >> 28) & 8));
    }

    while (v35);
    if (v34 == v38 || (*(v38 + 40) ? (v41 = *(v38 + 40)) : (v41 = (v38 + 48)), strcmp(v37, v41) < 0))
    {
LABEL_51:
      v38 = v22 + 8;
    }

    if (v36 && BYTE6(v118) == 1)
    {
      free(v36);
    }

    if (v34 == v38 || (KB::CandidateCollection::operator=(v110, v38 + 64), v44 = *(&v110[0] + 1), v43 = *&v110[0], *&v110[0] == *(&v110[0] + 1)))
    {
      KB::Word::Word(&v113, v134, &kTITokenIDUNK, 0);
      v117 |= 0x800000u;
      KB::Candidate::Candidate(&v118, &v113);
      v132 = 0u;
      v133 = 0xFF8000003F800000;
      v45 = a3;
      if (*(&v110[0] + 1) >= *&v110[1])
      {
        v47 = 0x1CAC083126E978D5 * ((*(&v110[0] + 1) - *&v110[0]) >> 3);
        v48 = v47 + 1;
        if ((v47 + 1) > 0x4189374BC6A7EFLL)
        {
LABEL_125:
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x395810624DD2F1AALL * ((*&v110[1] - *&v110[0]) >> 3) > v48)
        {
          v48 = 0x395810624DD2F1AALL * ((*&v110[1] - *&v110[0]) >> 3);
        }

        if ((0x1CAC083126E978D5 * ((*&v110[1] - *&v110[0]) >> 3)) >= 0x20C49BA5E353F7)
        {
          v49 = 0x4189374BC6A7EFLL;
        }

        else
        {
          v49 = v48;
        }

        v109 = v110;
        if (v49)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v49);
        }

        v64 = 8 * ((*(&v110[0] + 1) - *&v110[0]) >> 3);
        KB::Candidate::Candidate(v64, &v118);
        v46 = 1000 * v47 + 1000;
        v65 = v64 + *&v110[0] - *(&v110[0] + 1);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*&v110[0], *(&v110[0] + 1), v65);
        v66 = *&v110[0];
        v67 = *&v110[1];
        *&v110[0] = v65;
        *(&v110[0] + 1) = v46;
        *&v110[1] = 0;
        v107 = v66;
        v108 = v67;
        v105 = v66;
        v106 = v66;
        std::__split_buffer<KB::Candidate>::~__split_buffer(&v105);
      }

      else
      {
        v46 = KB::Candidate::Candidate(*(&v110[0] + 1), &v118) + 1000;
      }

      *(&v110[0] + 1) = v46;
      KB::Candidate::~Candidate(&v118);
      KB::Word::~Word(&v113);
      v44 = *(&v110[0] + 1);
      v43 = *&v110[0];
    }

    else
    {
      v45 = a3;
    }

    v68 = 0x1CAC083126E978D5 * ((v44 - v43) >> 3);
    if (v68 >= a6)
    {
      v68 = a6;
    }

    v92 = v68;
    if (v44 != v43)
    {
      v69 = 0;
      do
      {
        v70 = v43 + 1000 * v69;
        if (v69 < v92)
        {
          goto LABEL_102;
        }

        if (!*(v70 + 888))
        {
          KB::Candidate::compute_string(v70);
        }

        if (!KB::CollatorWrapper::sortkey_compare_strings((v89 + 72), (v70 + 888), v134, v42))
        {
LABEL_102:
          if ((0x1CAC083126E978D5 * ((v45[1] - *v45) >> 3)) >= *(a2 + 912))
          {
            v71 = *(a2 + 912);
          }

          else
          {
            v71 = 0x1CAC083126E978D5 * ((v45[1] - *v45) >> 3);
          }

          if (!*(v70 + 888))
          {
            KB::Candidate::compute_string(v70);
          }

          if (KB::String::equal(v134, (v70 + 888), 0))
          {
            v71 = 0x1CAC083126E978D5 * ((v45[1] - *v45) >> 3);
          }

          if (v71)
          {
            v72 = 0;
            do
            {
              TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(&v118, &v98, v158, v70, v136, *v45 + v72);
              v73 = *(a7 + 8);
              v74 = *(a7 + 16);
              if (v73 >= v74)
              {
                v76 = 0x1CAC083126E978D5 * ((v73 - *a7) >> 3);
                v77 = v76 + 1;
                if ((v76 + 1) > 0x4189374BC6A7EFLL)
                {
                  goto LABEL_125;
                }

                v78 = 0x1CAC083126E978D5 * ((v74 - *a7) >> 3);
                if (2 * v78 > v77)
                {
                  v77 = 2 * v78;
                }

                if (v78 >= 0x20C49BA5E353F7)
                {
                  v79 = 0x4189374BC6A7EFLL;
                }

                else
                {
                  v79 = v77;
                }

                v116 = a7;
                if (v79)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v79);
                }

                v80 = 1000 * v76;
                KB::Candidate::Candidate(v80, &v118);
                v75 = v80 + 1000;
                v81 = *(a7 + 8);
                v82 = v80 + *a7 - v81;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a7, v81, v82);
                v83 = *a7;
                *a7 = v82;
                *(a7 + 8) = v75;
                v84 = *(a7 + 16);
                *(a7 + 16) = 0;
                v114 = v83;
                v115 = v84;
                *(&v113 + 1) = v83;
                *&v113 = v83;
                std::__split_buffer<KB::Candidate>::~__split_buffer(&v113);
                v45 = a3;
              }

              else
              {
                v75 = KB::Candidate::Candidate(v73, &v118) + 1000;
              }

              *(a7 + 8) = v75;
              KB::Candidate::~Candidate(&v118);
              v72 += 1000;
              --v71;
            }

            while (v71);
          }
        }

        ++v69;
        v43 = *&v110[0];
      }

      while (v69 < 0x1CAC083126E978D5 * ((*(&v110[0] + 1) - *&v110[0]) >> 3));
    }

    *&v118 = &v111[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v118);
    *&v118 = v111;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v118);
    *&v118 = &v110[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v118);
    *&v118 = v110;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v118);
    if (v135 && v134[6] == 1)
    {
      free(v135);
    }
  }

  KB::Word::~Word(v136);
  KB::Word::~Word(v158);
  if (__p)
  {
    operator delete(__p);
  }

  result = v88;
  if (v88)
  {
    result = WTF::RefCounted<KB::DictionaryContainer>::deref(v88);
  }

  v86 = *MEMORY[0x277D85DE8];
  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(void *this, KB::CandidateCollection *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[3])
  {
    v5 = this;
    v6 = (*(*this + 432))(this);
    (*(*v5[3] + 64))(v5[3], a2, a3 ^ 1u);
    v7 = v5[3];
    v9 = &unk_283FDBA48;
    v10 = v6;
    v11 = &v9;
    (*(*v7 + 56))(v7, a2, &v9);
    this = std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](&v9);
  }

  v8 = *MEMORY[0x277D85DE8];
  return this;
}

void std::vector<TI::MLTTAutocorrectionCandidateInfo>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 130;
    do
    {
      v8 = (v5 + 98);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 74);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 50);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v8 = (v5 + 26);
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v8);
      v6 = *(v5 + 2);
      if (v6 && *v5 == 1)
      {
        free(v6);
      }

      v7 = v5 - 6;
      v5 -= 136;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, float *a2, float *a3)
{
  v5 = *a3;
  v6 = a2[187];
  v7 = a2[189];
  v8 = a2[190];
  v10 = *a2;
  v9 = *(a2 + 1);
  if (*a2)
  {
    v11 = 240 * v10;
    v12 = *(a2 + 1);
    while ((*(v12 + 105) & 1) == 0)
    {
      v12 += 240;
      v11 -= 240;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (v12 != v9 + 240 * v10)
  {
LABEL_16:
    v5 = v5 * 0.8;
    goto LABEL_17;
  }

LABEL_8:
  if (!v10)
  {
    v18 = logf(v5);
    v19 = v6 + (v8 * (v7 + v18));
    v22 = 1.0;
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = 240 * v10 - 240;
  v14 = (v9 + 224);
  do
  {
    v16 = *v14;
    v14 += 30;
    v15 = v16;
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13 == 0;
    }

    v13 -= 240;
  }

  while (!v17);
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_17:
  v18 = logf(v5);
  v19 = v6 + (v8 * (v7 + v18));
  if (*(a1 + 8))
  {
    if (v10)
    {
      v20 = 240 * v10;
      v21 = (v9 + 100);
      v22 = 1.0;
      do
      {
        v23 = *v21;
        v21 += 60;
        v22 = v22 * v23;
        v20 -= 240;
      }

      while (v20);
    }

    else
    {
      v22 = 1.0;
    }

LABEL_25:
    v19 = v19 + (v8 * logf(v22));
  }

LABEL_26:
  a2[186] = v19;
  a2[187] = v6;
  a2[188] = v18;
  a2[189] = v7;
  a2[190] = v8;
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::refine_latham_conversions(KB::CandidateCollection &,BOOL)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_283FDBA48;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::extended_latham_conversions(KB::CandidateCollection const&,KB::String const&,KB::LanguageModelContext const&,std::map<KB::String,KB::CandidateCollection> const&,unsigned long)const::$_0::operator()(uint64_t a1, uint64_t **a2, size_t *a3, uint64_t a4, size_t *a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = KB::Candidate::Candidate(a1);
  KB::LanguageModelContext::operator=(v12 + 784, *a2);
  KB::Candidate::append(a1, a3);
  KB::Candidate::append(a1, a4);
  *(a1 + 744) = *(a4 + 744);
  v13 = (a1 + 748);
  *(a1 + 748) = *(a4 + 748);
  *(a1 + 760) = *(a4 + 760);
  v14 = KB::Candidate::append(a1, a5);
  if (*a1 && (*(*(a1 + 8) + 240 * *a1 - 105) & 4) == 0)
  {
    KB::String::space(v14);
    KB::Word::Word(v21, &KB::String::space(void)::space, &kTITokenIDUNK, 0);
    v22 |= 0x4000000u;
    KB::Candidate::append(a1, v21);
    KB::Word::~Word(v21);
  }

  KB::Candidate::append(a1, a6);
  v15 = *(a1 + 756) + *(a6 + 756);
  v16 = vadd_f32(*v13, *(a6 + 748));
  *(a1 + 744) = v16.f32[0] + (*(a1 + 760) * (v16.f32[1] + v15));
  *v13 = v16;
  *(a1 + 756) = v15;
  *(a1 + 960) = *(a6 + 960);
  *(a1 + 992) = *(a6 + 992);
  v17 = *(a4 + 780);
  v18 = *(a6 + 780);
  result = KB::Candidate::length(a4);
  *(a1 + 780) = (v18 << (result + 1)) | v17;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  v4[0] = *(a2 + 748);
  *(v4 + 12) = *(a2 + 760);
  update_lookup_suggestions_omega_factors(a2, v4, **(a1 + 8), v3);
}

__n128 std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_2>,void ()(KB::Candidate &,float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDB9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0>,void ()(KB::Candidate &,float)>::operator()(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  v4[0] = *(a2 + 748);
  *(v4 + 12) = *(a2 + 760);
  update_lookup_suggestions_omega_factors(a2, v4, *(a1 + 8), v3);
}

uint64_t std::__function::__func<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0,std::allocator<TI::Favonius::FavoniusStrokeBuildManager::lookup_suggestions_for_UI(KB::String const&,KB::LanguageModelContext const&,unsigned int,KB::String&,KB::LookupType,std::function<void ()(KB::CandidateCollection &,KB::CandidateFilterFlags,BOOL)>,BOOL)::$_0>,void ()(KB::Candidate &,float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_283FDB970;
  *(a2 + 8) = *(result + 8);
  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::set_input_index(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  if ((*(this + 209) & 1) == 0)
  {
    *(this + 48) = a2;
    v6 = 0;
    memset(v4, 0, sizeof(v4));
    memset(v5, 0, sizeof(v5));
    KB::CandidateCollection::operator=(this + 800, v4);
    v7 = &v5[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = v5;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = &v4[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    v7 = v4;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v7);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::delete_from_input(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(this + 209) & 1) == 0)
  {
    v3 = *(this + 21);
    v2 = *(this + 22);
    if (v3 != v2)
    {
      v4 = *(this + 48);
      if (v4)
      {
        v5 = v4 - 1;
        *(this + 48) = v5;
        v6 = v3 + 4 * v5;
        v7 = v2 - (v6 + 4);
        if (v2 != v6 + 4)
        {
          memmove((v3 + 4 * v5), (v6 + 4), v2 - (v6 + 4));
        }

        *(this + 22) = v6 + v7;
      }
    }

    *(this + 208) = 1;
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v10, 0, sizeof(v10));
    KB::CandidateCollection::operator=(this + 800, v9);
    v12 = &v10[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v10;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = &v9[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v9;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

double TI::Favonius::FavoniusStrokeBuildManager::add_input(TI::Favonius::FavoniusStrokeBuildManager *this, std::vector<unsigned int>::size_type __n, char a3)
{
  if ((*(this + 209) & 1) == 0)
  {
    v3 = __n;
    v5 = *(this + 40);
    if (!v5 || (a3 & 1) != 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = v5 - 1;
    }

    LODWORD(v9[0]) = v6;
    v7.__i_ = (*(this + 21) + 4 * *(this + 48));
    std::vector<unsigned int>::insert(this + 7, v7, v3, v9);
    *(this + 48) += v3;
    v11 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v10, 0, sizeof(v10));
    KB::CandidateCollection::operator=(this + 800, v9);
    v12 = &v10[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v10;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = &v9[1] + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    v12 = v9;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
    std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
    *(this + 97) = this + 784;
    result = 0.0;
    *(this + 49) = 0u;
  }

  return result;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_cancel(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  v4 = *(this + 88);
  if (v4 && v4[20] == a2)
  {
    (*(*v4 + 56))(v4);
  }

  v5 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(this, a2);
  v6 = *(this + 9);
  v7 = v5;
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 + ~v5;
  }

  memset(v17, 0, sizeof(v17));
  v9 = v5 + 1;
  if (*(this + 6) > v9)
  {
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(this, v5, v17);
    v10 = *(this + 9);
    if (v10 > v9)
    {
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * v9), (*(this + 10) + 8 * v10));
      *(this + 9) = v9;
    }
  }

  for (i = *(this + 6); i > v7; *(this + 6) = i)
  {
    v12 = *(this + 9);
    if (v12)
    {
      v13 = v12 - 1;
      WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(this + 10) + 8 * (v12 - 1)), (*(this + 10) + 8 * v12));
      *(this + 9) = v13;
      i = *(this + 6);
    }

    --i;
    v14 = *(*(this + 7) + 8 * i);
    if (v14)
    {
      WTF::RefCounted<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>::deref(v14);
    }
  }

  if (v17[0])
  {
    TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(this, v17);
    if (v8 + i > i)
    {
      do
      {
        TI::Favonius::FavoniusStrokeBuildManager::perform_search(this, i, &v16);
        if (v16)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v16);
        }

        LODWORD(i) = i + 1;
        --v8;
      }

      while (v8);
    }
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v17);
  return 0;
}

unint64_t TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(TI::Favonius::FavoniusStrokeBuildManager *this, int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 40);
  v4 = (v3 + 1);
  if (v2 > v4)
  {
    v7 = v3 + 2;
    do
    {
      v8 = *(*(*(this + 7) + 8 * v4) + 8);
      if (*((*(*v8 + 56))(v8) + 48) == a2)
      {
        v2 = v7 - 1;
      }

      else
      {
        v2 = v2;
      }

      v4 = v7;
    }

    while (*(this + 6) > v7++);
  }

  return v2;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_up(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(a1, *(v5 + 48));
  v7 = v6;
  v8 = v6;
  if (*(a1 + 48) == v6)
  {
    *(a1 + 200) = *(v5 + 32);
    v9 = *(*(a1 + 56) + 8 * v6 - 8);
    v41 = v5;
    atomic_fetch_add(v5, 1u);
    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(v40, *(v9 + 8), &v41);
  }

  if (*(a1 + 72) <= v6 || TI::Favonius::FavoniusStrokeBuildManager::can_update_existing_search(a1, v6))
  {
    if (v7 - 1 <= *(a1 + 160))
    {
      goto LABEL_25;
    }

    memset(v40, 0, sizeof(v40));
    if (*(a1 + 48) > (v7 + 1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v7, v40);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v7 - 1, &v37);
    memset(v36, 0, sizeof(v36));
    v10 = *(a1 + 160);
    if (*(a1 + 48) > (v10 + 1))
    {
      TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v10, v36);
    }

    v11 = v40[0];
    if (v40[0])
    {
      v12 = v40;
    }

    else
    {
      v11 = v36[0];
      if (!v36[0])
      {
LABEL_17:
        v13 = *(a1 + 72);
        v14 = (*(a1 + 160) + 1);
        if (v13 > v14)
        {
          WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::Search>>::destruct((*(a1 + 80) + 8 * v14), (*(a1 + 80) + 8 * v13));
          *(a1 + 72) = v14;
        }

        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, &v37);
        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, v36);
        TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, v40);
        v15 = *(a1 + 160) + 1;
        if (v15 <= v7)
        {
          do
          {
            TI::Favonius::FavoniusStrokeBuildManager::perform_search(a1, v15, &v35);
            if (v35)
            {
              WTF::RefCounted<TI::Favonius::Key>::deref(v35);
            }

            ++v15;
          }

          while (v15 <= v7);
          v15 = *(a1 + 160) + 1;
        }

        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v36);
        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&v37);
        WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(v40);
        v8 = v15;
        v7 = v15;
        goto LABEL_25;
      }

      v12 = v36;
    }

    *(*(*(v38 + 8 * v37 - 8) + 8) + 32) = *(*(*&v12[1][2 * v11 - 2] + 8) + 32);
    goto LABEL_17;
  }

  TI::Favonius::FavoniusStrokeBuildManager::perform_search(a1, v7, &v34);
  if (v34)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v34);
  }

LABEL_25:
  if (*(a1 + 72) <= v8)
  {
    v24 = 0;
  }

  else
  {
    TI::Favonius::FavoniusStrokeBuildManager::forced_hit_key(a1, *(v5 + 56), v7, a3, v40);
    v16 = v40[0];
    v17 = *(a1 + 80);
    v18 = *(v17 + 8 * v8);
    v19 = *(v17 + 8 * (v7 - 1));
    v33 = v19;
    if (v19)
    {
      atomic_fetch_add((v19 + 8), 1u);
    }

    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }

    (*(*v18 + 96))(v40);
    v20 = *(a1 + 80);
    v21 = *(v20 + 8 * v8);
    v22 = v40[0];
    v40[0] = 0;
    *(v20 + 8 * v8) = v22;
    if (v21)
    {
      v23 = atomic_load(v21 + 2);
      if (v23 == 1)
      {
        (*(*v21 + 8))(v21);
      }

      else
      {
        atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
      }

      if (v40[0])
      {
        v25 = atomic_load(v40[0] + 2);
        if (v25 == 1)
        {
          (*(*v40[0] + 8))();
        }

        else
        {
          atomic_fetch_add(v40[0] + 2, 0xFFFFFFFF);
        }
      }
    }

    if (v16)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
    }

    if (v33)
    {
      v26 = atomic_load(v33 + 2);
      if (v26 == 1)
      {
        (*(*v33 + 8))();
      }

      else
      {
        atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
      }
    }

    v27 = *(*(a1 + 80) + 8 * v8);
    v24 = *((*(*v27 + 32))(v27) + 8);
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
    }

    v28 = *(*(a1 + 80) + 8 * v8);
    a3 = *(*((*(*v28 + 32))(v28) + 8) + 62);
    if (v16)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
    }
  }

  if (*(a1 + 160) < v7)
  {
    *(a1 + 160) = v7;
  }

  v29 = *(a1 + 704);
  if (v29)
  {
    (*(*v29 + 32))(v29, 2, *(v5 + 48), *(v5 + 8), *(v5 + 16), *(v5 + 32), 0.0);
  }

  v30 = *(a1 + 720);
  if (v30)
  {
    v31 = *(v5 + 32);
    TI::TIInputRecognizer::add_touch(v30, 2, *(v5 + 8), *(v5 + 16));
  }

  if (v24)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v24);
  }

  if (v5)
  {
    WTF::RefCounted<TI::Favonius::Touch>::deref(v5);
  }

  return a3;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::forced_hit_key@<X0>(uint64_t this@<X0>, const TI::Favonius::KeyboardLayout *a2@<X2>, unsigned int a3@<W1>, int a4@<W3>, atomic_uint **a5@<X8>)
{
  if (a4 == -1)
  {
    v15 = 0;
  }

  else
  {
    v9 = *(this + 56);
    v10 = *(*(v9 + 8 * a3) + 8);
    if (*((*(*v10 + 56))(v10) + 56) == a2)
    {
      v17 = *(*(v9 + 8 * a3) + 8);
      v36 = v17;
      if (v17)
      {
        atomic_fetch_add((v17 + 8), 1u);
        v18 = v36;
      }

      else
      {
        v18 = 0;
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 0x40000000;
      v34[2] = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke;
      v34[3] = &__block_descriptor_tmp_11_12449;
      v35 = a4;
      this = TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v36, v34, &v28);
      v15 = v28;
      v28 = 0;
      if (v18)
      {
        v19 = atomic_load(v18 + 2);
        if (v19 == 1)
        {
          this = (*(*v18 + 8))(v18);
        }

        else
        {
          atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
        }
      }
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3002000000;
      v31 = __Block_byref_object_copy__12450;
      v32 = __Block_byref_object_dispose__12451;
      v33 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 0x40000000;
      v24 = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_12;
      v25 = &unk_278731BF8;
      v27 = a4;
      v26 = &v28;
      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v11 == v12)
      {
        goto LABEL_12;
      }

      do
      {
        v24(v23, v11++);
      }

      while (v11 != v12);
      if (!v29[5])
      {
LABEL_12:
        v15 = 0;
      }

      else
      {
        v13 = *(*(v9 + 8 * a3) + 8);
        v21 = v13;
        if (v13)
        {
          atomic_fetch_add((v13 + 8), 1u);
          v14 = v21;
        }

        else
        {
          v14 = 0;
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_2;
        v20[3] = &unk_278731C20;
        v20[4] = &v28;
        TI::Favonius::FavoniusStrokeBuildManager::key_near_touch_passing_test(&v21, v20, &v22);
        v15 = v22;
        v22 = 0;
        if (v14)
        {
          v16 = atomic_load(v14 + 2);
          if (v16 == 1)
          {
            (*(*v14 + 8))(v14);
          }

          else
          {
            atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
          }
        }
      }

      _Block_object_dispose(&v28, 8);
      this = v33;
      if (v33)
      {
        this = WTF::RefCounted<TI::Favonius::Key>::deref(v33);
      }
    }
  }

  *a5 = v15;
  return this;
}

uint64_t __Block_byref_object_copy__12450(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__12451(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return WTF::RefCounted<TI::Favonius::Key>::deref(result);
  }

  return result;
}

uint64_t ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_12(uint64_t result, atomic_uint **a2)
{
  v2 = *a2;
  if (*(result + 40) == *(*a2 + 31))
  {
    v3 = *(*(result + 32) + 8);
    atomic_fetch_add(v2, 1u);
    result = *(v3 + 40);
    *(v3 + 40) = v2;
    if (result)
    {
      return WTF::RefCounted<TI::Favonius::Key>::deref(result);
    }
  }

  return result;
}

BOOL ___ZNK2TI8Favonius26FavoniusStrokeBuildManager14forced_hit_keyEjPKNS0_14KeyboardLayoutEi_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 8);
  v3 = *(*(*(a1 + 32) + 8) + 40);
  return v2 == v3 || KB::String::equal((v2 + 8), (v3 + 8), 1);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::add_touch_down_or_drag(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  *(a1 + 200) = *(*a2 + 32);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 56);
  *(a1 + 216) = TI::Favonius::KeyboardLayout::median_key_half_width(v11);
  v12 = *(v8 + 48);
  v13 = *(v8 + 40);
  v35 = v11;
  if (v11)
  {
    atomic_fetch_add(v11, 1u);
  }

  v14 = TI::Favonius::FavoniusStrokeBuildManager::uncommitted_search_index_for_path_index(a1, v12);
  v15 = v14;
  if (*(a1 + 48) == v14)
  {
    v16 = *(*(a1 + 56) + 8 * v14 - 8);
    v17 = *a2;
    *a2 = 0;
    v34 = v17;
    TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode::history_by_appending_touch_keycode(&v45, *(v16 + 8), &v34);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  TI::Favonius::FavoniusStrokeBuildManager::pop_touches_from_history(a1, v14 - 1, &v45);
  v18 = v46[v45 - 1];
  v19 = *(v18 + 8);
  v20 = *a2;
  *a2 = 0;
  *(v18 + 8) = v20;
  if (v19)
  {
    WTF::RefCounted<TI::Favonius::Touch>::deref(v19);
  }

  TI::Favonius::FavoniusStrokeBuildManager::push_touches_to_history(a1, &v45);
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchRefWithKeycode>,0ul>::~Vector(&v45);
  *(*(*(a1 + 56) + 8 * v15) + 16) = a3;
  if ((a4 & 1) != 0 || v13 != 1)
  {
    TI::Favonius::FavoniusStrokeBuildManager::perform_search(a1, v15, &v45);
    v21 = v45;
    a3 = *(v45 + 31);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a1 + 704);
  if (v22)
  {
    if (v35)
    {
      atomic_fetch_add(v35, 1u);
      TI::CP::TIPathRecognizerInterface::set_key_layout(v22, v35);
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v35);
      if (v13)
      {
LABEL_15:
        (*(**(a1 + 704) + 32))(*(a1 + 704), v13, v12, v9, v10, *(a1 + 200), 0.0);
        if (v35)
        {
          v23 = atomic_load((*(a1 + 704) + 633));
          if ((v23 & 1) == 0)
          {
            v24 = *(a1 + 704);
            v25 = *(a1 + 712);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            KB::String::String(&v45, (v35 + 52));
            if (*(a1 + 471) < 0)
            {
              std::string::__init_copy_ctor_external(&v33, *(a1 + 448), *(a1 + 456));
            }

            else
            {
              v33 = *(a1 + 448);
            }

            if (TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken != -1)
            {
              dispatch_once(&TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken, &__block_literal_global_19_12454);
            }

            v36 = MEMORY[0x277D85DD0];
            v37 = 1174405120;
            v38 = ___ZN2TI8Favonius26FavoniusStrokeBuildManager22add_touch_down_or_dragEN3WTF10PassRefPtrINS0_5TouchEEEib_block_invoke;
            v39 = &__block_descriptor_tmp_3_12455;
            v40 = v24;
            v41 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v26 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v33;
            }

            KB::String::String(v43, &v45);
            TIDispatchAsync();
            if (v44 && v43[6] == 1)
            {
              free(v44);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v41)
            {
              std::__shared_weak_count::__release_weak(v41);
            }

            if (v26 < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }

            if (v46 && BYTE6(v45) == 1)
            {
              free(v46);
            }

            if (v25)
            {
              std::__shared_weak_count::__release_weak(v25);
            }
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
      TI::CP::TIPathRecognizerInterface::set_key_layout(v22, 0);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    (*(**(a1 + 704) + 120))(*(a1 + 704), a1 + 224);
    goto LABEL_15;
  }

LABEL_43:
  v27 = *(a1 + 720);
  if (v27)
  {
    KB::LanguageModelContext::operator=(v27 + 104, (a1 + 224));
    v28 = *(a1 + 720);
    v29 = v35;
    if (v35)
    {
      atomic_fetch_add(v35, 1u);
      TI::CP::TIPathRecognizerInterface::set_key_layout(v28, v29);
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v29);
    }

    else
    {
      TI::CP::TIPathRecognizerInterface::set_key_layout(v28, 0);
    }

    v30 = *(a1 + 200);
    TI::TIInputRecognizer::add_touch(*(a1 + 720), v13, v9, v10);
  }

  if (v21)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v21);
  }

  if (v35)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v35);
  }

  v31 = *MEMORY[0x277D85DE8];
  return a3;
}

void TI::Favonius::FavoniusStrokeBuildManager::initialize_it_recognizer(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 330) == 1 && !*(a1 + 720))
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(*(*v4 + 48))(v4);
      if (v5)
      {
        atomic_fetch_add(v5, 1u);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = (a1 + 448);
    if (*(a1 + 471) < 0)
    {
      v6 = *(a1 + 448);
    }

    KB::String::String(&buf, v6);
    v7 = *a2;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
      v8 = v11;
      v9 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(&buf, v7 + 208, &v11, a1 + 736);
      if (v8)
      {
        WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
      }
    }

    else
    {
      v9 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(&buf, v7 + 208, &v11, a1 + 736);
    }

    if (*&buf_4[4] && buf_4[2] == 1)
    {
      free(*&buf_4[4]);
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 136315138;
        *buf_4 = "initialize_it_recognizer";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Creating ml tap typing recognizer", &buf, 0xCu);
      }

      operator new();
    }

    if (v5)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::initialize_ensemble_path_recognizer(uint64_t this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 328) == 1)
  {
    v1 = this;
    if (*(this + 210) == 1)
    {
      v2 = *(this + 712);
      *(v1 + 704) = 0u;
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v2);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "initialize_ensemble_path_recognizer";
        _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Loading/reloading ensemble path recognizer", buf, 0xCu);
      }

      v3 = *(v1 + 728);
      if (v3)
      {
        Value = CFDictionaryGetValue(v3, @"CPSearch");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, TI::CP::SearchParameters::set_values_from_dictionary(__CFDictionary const*)::$_0::__invoke, (v1 + 544));
        }
      }

      operator new();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t TI::CP::TIPathRecognizerInterface::set_key_layout(void *a1, atomic_uint *a2)
{
  result = a1[1];
  if (result != a2)
  {
    if (a2)
    {
      atomic_fetch_add(a2, 1u);
      result = a1[1];
    }

    a1[1] = a2;
    if (result)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(result);
    }

    v4 = *(*a1 + 152);

    return v4(a1);
  }

  return result;
}

void ___ZN2TI8Favonius26FavoniusStrokeBuildManager22add_touch_down_or_dragEN3WTF10PassRefPtrINS0_5TouchEEEib_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!v2)
  {
    return;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1[4];
  if (v5)
  {
    v6 = v5 + 632;
    if (v5[216] != 1)
    {
LABEL_8:
      atomic_store(1u, v6);
      goto LABEL_9;
    }

    v7 = atomic_load(v6);
    if ((v7 & 1) == 0)
    {
      v8 = v5 + 633;
      v9 = atomic_load(v5 + 633);
      if ((v9 & 1) == 0)
      {
        atomic_store(TI::TIInputRecognizer::is_language_and_layout_supported((a1 + 6), (a1 + 9)), v6);
        v6 = v8;
        goto LABEL_8;
      }
    }
  }

LABEL_9:

  std::__shared_weak_count::__release_shared[abi:nn200100](v4);
}

void __destroy_helper_block_8_32c58_ZTSKNSt3__18weak_ptrIN2TI2CP24TIPathRecognizerEnsembleEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && *(a1 + 78) == 1)
  {
    free(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

KB::String *__copy_helper_block_8_32c58_ZTSKNSt3__18weak_ptrIN2TI2CP24TIPathRecognizerEnsembleEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c17_ZTSKN2KB6StringE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  return KB::String::String(&a1[3], (a2 + 72));
}

dispatch_queue_t ___ZN2TI8Favonius26FavoniusStrokeBuildManager21background_task_queueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  result = dispatch_queue_create("com.apple.TextInput.FSBM.backgroundTasks", v0);
  TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::__queue = result;
  return result;
}

void std::__shared_ptr_emplace<TI::CP::TIPathRecognizerEnsemble>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDB8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::engineType(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(this + 90))
  {
    goto LABEL_16;
  }

  v2 = this + 448;
  if (*(this + 471) < 0)
  {
    v2 = *v2;
  }

  KB::String::String(v11, v2);
  KB::String::String(v9, (*(*(this + 90) + 8) + 208));
  v3 = *(this + 1);
  if (v3 && (v4 = *(*(*v3 + 48))(v3)) != 0)
  {
    atomic_fetch_add(v4, 1u);
    v8 = v4;
    atomic_fetch_add(v4, 1u);
    v5 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(v11, v9, &v8, this + 736);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
  }

  else
  {
    v8 = 0;
    v5 = TI::TIInputRecognizer::ml_based_tap_typing_enabled(v11, v9, &v8, this + 736);
  }

  if (v10 && v9[6] == 1)
  {
    free(v10);
  }

  if (v13 && v12 == 1)
  {
    free(v13);
  }

  if (v5)
  {
    result = 2;
  }

  else
  {
LABEL_16:
    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void TI::Favonius::FavoniusStrokeBuildManager::~FavoniusStrokeBuildManager(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  TI::Favonius::FavoniusStrokeBuildManager::~FavoniusStrokeBuildManager(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDB660;
  if (*(this + 984) == 1)
  {
    v2 = *(this + 120);
    if (v2 && *(this + 958) == 1)
    {
      free(v2);
    }

    v3 = *(this + 116);
    if (v3 && *(this + 926) == 1)
    {
      free(v3);
    }
  }

  v20 = (this + 872);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 848);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 824);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  v20 = (this + 800);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v20);
  std::__tree<std::__value_type<KB::String,KB::CandidateCollection>,std::__map_value_compare<KB::String,std::__value_type<KB::String,KB::CandidateCollection>,std::less<KB::String>,true>,std::allocator<std::__value_type<KB::String,KB::CandidateCollection>>>::destroy(*(this + 98));
  if (*(this + 760) == 1 && *(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  v4 = *(this + 91);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 90);
  *(this + 45) = 0u;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 89);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 64);
  if (v7 && *(this + 510) == 1)
  {
    free(v7);
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  v20 = (this + 304);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v20);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 296));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 288));
  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  v9 = *(this + 29);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 21);
  if (v10)
  {
    *(this + 22) = v10;
    operator delete(v10);
  }

  v11 = *(this + 17);
  if (v11 && *(this + 134) == 1)
  {
    free(v11);
  }

  v12 = *(this + 13);
  if (v12 && *(this + 102) == 1)
  {
    free(v12);
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::Search>,0ul>::~Vector(this + 72);
  WTF::Vector<WTF::RefPtr<TI::Favonius::StrokeBuildManagerInternals::TouchHistoryRefWithKeycode>,0ul>::~Vector(this + 6);
  v13 = *(this + 5);
  if (v13)
  {
    v14 = atomic_load(v13 + 2);
    if (v14 == 1)
    {
      (*(*v13 + 16))(v13);
    }

    else
    {
      atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
    }
  }

  v15 = *(this + 4);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    v17 = atomic_load(v16 + 2);
    if (v17 == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
    }
  }

  v18 = *(this + 1);
  if (v18)
  {
    v19 = atomic_load(v18 + 2);
    if (v19 == 1)
    {
      (*(*v18 + 40))(v18);
    }

    else
    {
      atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
    }
  }
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::InputTouchAlignment(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::touch_index_for_input_index(TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment *this, unsigned int a2)
{
  v2 = *this;
  if (a2)
  {
    while (1)
    {
      v3 = a2;
      if (*(v2 + 4 * a2) != -1)
      {
        break;
      }

      --a2;
      if (v3 == 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
  }

  return *(v2 + 4 * v3);
}

std::__wrap_iter<unsigned int *>::iterator_type TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::add_input(std::vector<unsigned int> *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::size_type __n)
{
  v3 = __n;
  __x = a2;
  v5.__i_ = &this->__begin_[LODWORD(this[1].__begin_)];
  result = std::vector<unsigned int>::insert(this, v5, __n, &__x).__i_;
  LODWORD(this[1].__begin_) += v3;
  return result;
}

std::__wrap_iter<unsigned int *>::iterator_type TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::add_unmapped_inputs(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  v2 = __n;
  __x = -1;
  v4.__i_ = &this->__begin_[LODWORD(this[1].__begin_)];
  result = std::vector<unsigned int>::insert(this, v4, v2, &__x).__i_;
  LODWORD(this[1].__begin_) += v2;
  return result;
}

void *TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::delete_from_input(void *this)
{
  v2 = *this;
  v1 = this[1];
  if (*this != v1)
  {
    v3 = this;
    v4 = *(this + 6);
    if (v4)
    {
      v5 = v4 - 1;
      *(this + 6) = v5;
      v6 = v2 + 4 * v5;
      v7 = v1 - (v6 + 4);
      if (v1 != v6 + 4)
      {
        this = memmove((v2 + 4 * v5), (v6 + 4), v1 - (v6 + 4));
      }

      v3[1] = v6 + v7;
    }
  }

  return this;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::clear(uint64_t this)
{
  *(this + 8) = *this;
  *(this + 24) = 0;
  return this;
}

unint64_t TI::Favonius::FavoniusStrokeBuildManager::InputTouchAlignment::index_of_first_input_from_touch(char **this)
{
  v1 = *this;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = &v1[4 * v2];
    v4 = *this;
    while (*v4 == -1)
    {
      v4 += 4;
      if (v4 == v3)
      {
        v4 = v3;
        return (v4 - v1) >> 2;
      }
    }
  }

  else
  {
    v4 = *this;
  }

  return (v4 - v1) >> 2;
}

void TI::Favonius::FavoniusStrokeBuildManager::FavoniusStrokeBuildManager(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  *this = &unk_283FDB660;
  *(this + 8) = 0u;
  std::allocate_shared[abi:nn200100]<KB::UnigramCandidateRefinery,std::allocator<KB::UnigramCandidateRefinery>,WTF::RefPtr<KB::DictionaryContainer> const&,0>();
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if (TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken != -1)
  {
    dispatch_once(&TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::onceToken, &__block_literal_global_19_12454);
  }

  return TI::Favonius::FavoniusStrokeBuildManager::background_task_queue(void)::__queue;
}

uint64_t TI::Favonius::FavoniusStrokeBuildManager::is_exact_typed_string_lm_ranking_enabled(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(**(this + 3) + 40))(*(this + 3)))
  {
    v2 = *(this + 212);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL TI::Favonius::FavoniusStrokeBuildManager::areStringsSortKeyEquivalent(TI::Favonius::FavoniusStrokeBuildManager *this, _LXLexicon *a2, const KB::String *a3, const KB::String *a4)
{
  v4 = *(*(this + 2) + 16);
  atomic_fetch_add(v4, 1u);
  v5 = KB::CollatorWrapper::sortkey_compare_strings((*(v4 + 8) + 72), a2, a3, a4) == 0;
  WTF::RefCounted<KB::DictionaryContainer>::deref(v4);
  return v5;
}

float TI::Favonius::FavoniusStrokeBuildManager::language_power_for_lookup(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  if ((*(*this + 152))(this))
  {
    v2 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
    if (*(this + 336) == 1)
    {
      v3 = *(this + 83);
      if (v3 <= 1.0 && v3 >= 0.0)
      {
        v2 = (this + 332);
      }
    }
  }

  else
  {
    v2 = &TI::Favonius::SearchParameters::k_predictive_spell_power;
  }

  return *v2;
}

float TI::Favonius::FavoniusStrokeBuildManager::favonius_language_weight(TI::Favonius::FavoniusStrokeBuildManager *this)
{
  v1 = &TI::Favonius::SearchParameters::k_linguistic_context_power;
  if (*(this + 336) == 1)
  {
    v2 = *(this + 83);
    if (v2 <= 1.0 && v2 >= 0.0)
    {
      v1 = (this + 332);
    }
  }

  return *v1;
}

void TI::CP::TIPathRecognizerEnsemble::key_layout_did_update(TI::Favonius::KeyboardLayout **this)
{
  v2 = TI::Favonius::KeyboardLayout::median_key_half_width(this[1]);
  *(this + 13) = v2;
  *(this + 14) = v2 * 6.0;
  for (i = this[4]; i; i = *i)
  {
    v4 = *(i + 4);
    if (!v4 || v4 == 1 && *(this + 20) == -1)
    {
      v5 = *(i + 3);
      v6 = this[1];
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        TI::CP::TIPathRecognizerInterface::set_key_layout(v5, v6);
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v6);
      }

      else
      {
        TI::CP::TIPathRecognizerInterface::set_key_layout(v5, 0);
      }
    }
  }
}

uint64_t TI::CP::TIPathRecognizerEnsemble::remove_shapes_older_than(TI::CP::TIPathRecognizerEnsemble *this, double a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 1;
  }

  LODWORD(v4) = 1;
  do
  {
    v4 = v4 & (*(*v2[3] + 144))(v2[3], a2);
    v2 = *v2;
  }

  while (v2);
  return v4;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::set_input_stem(uint64_t this, const KB::String *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 128))(i[3], a2);
  }

  return this;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::set_context(uint64_t this, const KB::LanguageModelContext *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 120))(i[3], a2);
  }

  return this;
}

void TI::CP::TIPathRecognizerEnsemble::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  for (i = *(a1 + 32); i; i = *i)
  {
    v4 = i[3];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 112))(v4, &v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

uint64_t TI::CP::TIPathRecognizerEnsemble::store_shapes(uint64_t this)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 104))(i[3]);
  }

  return this;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::remove_text_usage(uint64_t this, const KB::String *a2)
{
  for (i = *(this + 32); i; i = *i)
  {
    this = (*(*i[3] + 96))(i[3], a2);
  }

  return this;
}

uint64_t *TI::CP::TIPathRecognizerEnsemble::text_accepted_from_UI(TI::CP::TIPathRecognizerEnsemble *this, const KB::String *a2, const KB::String *a3, uint64_t a4, uint64_t a5)
{
  for (i = *(this + 4); i; i = *i)
  {
    (*(*i[3] + 88))(i[3], a2, a3, a4, a5);
  }

  v11 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    KB::String::compute_length(a2);
    v11 = *(a2 + 2);
  }

  if (v11 > 2 || (v12 = *(this + 8)) != 0 && (*(*v12 + 72))(v12, a2, a3) > *(this + 14))
  {
    ++*(this + 150);
  }

  return TI::CP::TIPathRecognizerEnsemble::load_ml_source_if_needed(this);
}

uint64_t *TI::CP::TIPathRecognizerEnsemble::load_ml_source_if_needed(TI::CP::TIPathRecognizerEnsemble *this)
{
  result = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 1);
  if (result)
  {
    return result;
  }

  if ((*(this + 55) & 2) == 0)
  {
    return result;
  }

  v3 = *(this + 55) & 5;
  if (v3)
  {
    if (*(this + 150) < *(this + 53))
    {
      return result;
    }
  }

  if (*(this + 216) == 1)
  {
    if (v3 && *(this + 5))
    {
      goto LABEL_14;
    }

    v4 = *(this + 1);
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = atomic_load(this + 632);
    if (v5)
    {
      goto LABEL_14;
    }

    v6 = this + 633;
    v7 = atomic_load(this + 633);
    if (v7)
    {
      goto LABEL_14;
    }

    atomic_store(TI::TIInputRecognizer::is_language_and_layout_supported(this + 224, (v4 + 208)), this + 632);
  }

  else
  {
    v6 = this + 632;
  }

  atomic_store(1u, v6);
LABEL_14:
  v8 = atomic_load(this + 632);
  if ((v8 & 1) != 0 || (keyExistsAndHasValidFormat[0] = 0, result = CFPreferencesGetAppBooleanValue(@"kbForceCPMLLan", @"com.apple.keyboard", keyExistsAndHasValidFormat), keyExistsAndHasValidFormat[0]) && result)
  {
    operator new();
  }

  return result;
}

void TI::CP::TIPathRecognizerEnsemble::add_recognizer(void *a1, void *a2)
{
  v4 = (*(**a2 + 16))();
  v5 = a1[3];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v5 <= v4)
    {
      v7 = v4 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v4;
  }

  v8 = *(a1[2] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[4];
  v9[3] = v12;
  v9[4] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = *a2;
    atomic_fetch_add(v14, 1u);
    TI::CP::TIPathRecognizerInterface::set_key_layout(v15, v14);

    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }
}

uint64_t *TI::CP::TIPathRecognizerEnsemble::normalize_weights(TI::CP::TIPathRecognizerEnsemble *this)
{
  if (std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 0))
  {
    v2 = *(this + 16) + 0.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 1))
  {
    v2 = v2 + *(this + 17);
  }

  result = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, 2);
  if (result)
  {
    v2 = v2 + *(this + 18);
  }

  if (v2 > 0.0)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(this + i + 128) = *(this + i + 128) / v2;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<TI::TIInputRecognizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDBC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TI::CP::TIPathRecognizerEnsemble::generate_candidates(uint64_t a1, float32x2_t **a2, uint64_t a3)
{
  if (!TI::CP::TIPathRecognizerInterface::should_generate_candidates(a1))
  {
    return;
  }

  v39 = 0u;
  *__p = 0u;
  v40 = 1065353216;
  v6 = *(a1 + 120);
  if ((v6 & 0x10) != 0)
  {
    v9 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>((a1 + 16), *(a1 + 204));
    if (v9)
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = (*(*v9[3] + 80))(v9[3], &v31, a3);
      v11 = TI::ConfidenceModel::compute_confidence1(v10, &v31, 2u);
      v12 = *(a1 + 204);
      if (!__p[1])
      {
        goto LABEL_36;
      }

      v13 = vcnt_s8(__p[1]);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = *(a1 + 204);
        if (__p[1] <= v12)
        {
          v14 = v12 % __p[1];
        }
      }

      else
      {
        v14 = (__p[1] - 1) & v12;
      }

      v22 = *(__p[0] + v14);
      if (!v22 || (v23 = *v22) == 0)
      {
LABEL_36:
        operator new();
      }

      while (1)
      {
        v24 = v23[1];
        if (v24 == v12)
        {
          if (*(v23 + 4) == v12)
          {
            KB::CandidateCollection::operator=((v23 + 3), &v31);
            v41[0] = &v35 + 1;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v34;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v32 + 1;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            v41[0] = &v31;
            std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
            goto LABEL_37;
          }
        }

        else
        {
          if (v13.u32[0] > 1uLL)
          {
            if (v24 >= __p[1])
            {
              v24 %= __p[1];
            }
          }

          else
          {
            v24 &= __p[1] - 1;
          }

          if (v24 != v14)
          {
            goto LABEL_36;
          }
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_36;
        }
      }
    }

    v11 = -1.0;
LABEL_37:
    if (v11 >= *(a1 + 200))
    {
      goto LABEL_45;
    }

    v37 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    for (i = *(a1 + 32); i; i = *i)
    {
      if ((*(*i[3] + 16))(i[3]) != *(a1 + 204) && (*(i + 4) != 2 || *(a1 + 56) == 1))
      {
        (*(*i[3] + 80))(i[3], &v31, a3);
        v30 = (*(*i[3] + 16))(i[3]);
        v41[0] = &v30;
        v26 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType&&>,std::tuple<>>(__p, v30);
        KB::CandidateCollection::operator=((v26 + 3), &v31);
      }
    }

    TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(a1, __p, a2, *(a1 + 120), 0);
    v41[0] = &v35 + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v34;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v32 + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v31;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    goto LABEL_47;
  }

  if ((v6 & 0x20) != 0 && TI::CP::TIPathRecognizerEnsemble::can_use_preferred_source(a1))
  {
    v7 = *(a1 + 208);
    *&v31 = a1 + 208;
    v8 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType const&>,std::tuple<>>((a1 + 16), v7);
    (*(*v8[3] + 80))(v8[3], a2, a3);
    KB::CandidateCollection::normalize_scores(a2);
    goto LABEL_47;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    goto LABEL_45;
  }

  do
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = *(v15 + 4);
    if (v16 == 1)
    {
      v17 = atomic_load((a1 + 632));
      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v16 == 2 && (*(a1 + 56) & 1) == 0)
    {
      goto LABEL_18;
    }

    (*(*v15[3] + 80))(v15[3], &v31, a3);
    if (*(&v31 + 1) != v31)
    {
      v30 = (*(*v15[3] + 16))(v15[3]);
      v41[0] = &v30;
      v18 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType&&>,std::tuple<>>(__p, v30);
      KB::CandidateCollection::operator=((v18 + 3), &v31);
    }

LABEL_18:
    v41[0] = &v35 + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v34;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v32 + 1;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v41[0] = &v31;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v41);
    v15 = *v15;
  }

  while (v15);
  if (*(&v39 + 1) > 1uLL)
  {
    v19 = *(a1 + 120);
    v20 = a1;
    v21 = a2;
    goto LABEL_46;
  }

LABEL_45:
  v20 = a1;
  v21 = a2;
  v19 = 0;
LABEL_46:
  TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(v20, __p, v21, v19, 0);
LABEL_47:
  v27 = v39;
  if (v39)
  {
    do
    {
      v28 = *v27;
      *&v31 = v27 + 12;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 9;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 6;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      *&v31 = v27 + 3;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v31);
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p[0];
  __p[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }
}

void TI::CP::TIPathRecognizerEnsemble::combine_candidates_from_sources(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v169 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ((a4 & 2) == 0)
    {
      if ((a4 & 8) == 0)
      {
        v158 = 0uLL;
        v159 = 0uLL;
        v160 = 1065353216;
        *v155 = 0uLL;
        *v156 = 0uLL;
        v157 = 1065353216;
        v7 = *(a2 + 16);
        if (v7)
        {
          v147 = 0;
          v8 = a1 + 152;
          do
          {
            v9 = v7[3];
            v10 = v7[4];
            v11 = &v7[3];
            v12 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v10 - v9) >> 3));
            if (v10 == v9)
            {
              v13 = 0;
            }

            else
            {
              v13 = v12;
            }

            std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v9, v10, v13, 1);
            v14 = *v11;
            v15 = v7[4];
            if (*v11 != *&v15)
            {
              v16 = *(v8 + 8 * v7[2].u32[0]);
              do
              {
                *(v14 + 744) = vmulq_n_f32(*(v14 + 744), v16);
                v14 += 1000;
              }

              while (v14 != *&v15);
            }

            KB::CandidateCollection::normalize_scores(&v7[3]);
            LODWORD(v166) = 0x7FFFFFFF;
            if (KB::CandidateCollection::contains_secondary_language_candidates(&v7[3], &v166, 6u))
            {
              TI::ConfidenceModel::update_confidence_for_candidates((a1 + 604), &v7[3]);
              v147 |= v166 < 4;
            }

            v7 = *v7;
          }

          while (v7);
          v17 = *(a2 + 16);
          if (v17)
          {
            v146 = *(a2 + 24);
            v149 = 1;
            do
            {
              v18 = *(v17 + 4);
              v19 = *(a1 + 128 + 8 * v18);
              v20 = *(a1 + 480);
              if (v20)
              {
                v21 = *(a1 + 176 + 8 * v18);
                if (*(*(*v20 + 48))(v20))
                {
                  if (*(*(*(**(a1 + 480) + 48))(*(a1 + 480)) + 65) & v147)
                  {
                    v19 = v21;
                  }
                }
              }

              v166 = 0u;
              v167 = 0u;
              v168 = 1065353216;
              v22 = v17[3];
              if (v17[4] != v22)
              {
                if (v146 == 1)
                {
                  v23 = 1.0;
                }

                else
                {
                  v23 = v19;
                }

                v24 = v23;
                v25 = logf(v24);
                v26 = 0;
                v27 = 0;
                while (1)
                {
                  v28 = &v22[125 * v26];
                  TI::CP::TIPathRecognizerEnsemble::dictionary_key_for_candidate(v28, &v163);
                  if (!std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v166, *(&v166 + 1), &v163))
                  {
                    goto LABEL_34;
                  }

                  v29 = *v28;
                  if (!*v28)
                  {
                    break;
                  }

                  v30 = 240 * v29;
                  v31 = *(v28 + 8);
                  do
                  {
                    if (*(v31 + 106))
                    {
                      goto LABEL_33;
                    }

                    v31 += 240;
                    v30 -= 240;
                  }

                  while (v30);
LABEL_110:
                  if (v164)
                  {
                    v71 = BYTE6(v163) == 1;
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (v71)
                  {
                    free(v164);
                  }

                  v22 = v17[3];
                  v26 = ++v27;
                  if (0x1CAC083126E978D5 * (v17[4] - v22) <= v27)
                  {
                    goto LABEL_117;
                  }
                }

                v31 = *(v28 + 8);
LABEL_33:
                if (v31 == *(v28 + 8) + 240 * v29)
                {
                  goto LABEL_110;
                }

LABEL_34:
                if ((v149 & 1) == 0)
                {
                  v32 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v158, *(&v158 + 1), &v163);
                  if (v32)
                  {
                    v33 = v32[198];
                    v34 = v32[199];
                    if (*(v28 + 984))
                    {
                      Count = CFDictionaryGetCount(*(v28 + 984));
                      if (Count >= 1)
                      {
                        if (!(Count >> 61))
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(Count);
                        }

                        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                      }
                    }

                    v36 = v25 + *(v28 + 744);
                    if (v33 != -INFINITY)
                    {
                      if (v36 == -INFINITY)
                      {
                        v36 = v33;
                      }

                      else
                      {
                        if (v33 >= v36)
                        {
                          v49 = v33;
                        }

                        else
                        {
                          v49 = v25 + *(v28 + 744);
                        }

                        if (v33 >= v36)
                        {
                          v50 = v25 + *(v28 + 744);
                        }

                        else
                        {
                          v50 = v33;
                        }

                        v51 = expf(v50 - v49);
                        v36 = v49 + log1pf(v51);
                      }
                    }

                    v47 = (v28 + 744);
                    v48 = v25 + *(v28 + 748);
                    if (v34 != -INFINITY)
                    {
                      if (v48 == -INFINITY)
                      {
                        v48 = v34;
                      }

                      else
                      {
                        if (v34 >= v48)
                        {
                          v52 = v34;
                        }

                        else
                        {
                          v52 = v25 + *(v28 + 748);
                        }

                        if (v34 >= v48)
                        {
                          v53 = v25 + *(v28 + 748);
                        }

                        else
                        {
                          v53 = v34;
                        }

                        v54 = expf(v53 - v52);
                        v48 = v52 + log1pf(v54);
                      }
                    }

LABEL_82:
                    valuePtr = COERCE_DOUBLE(&v163);
                    v55 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v158, &v163);
                    *(v55 + 198) = v36;
                    v56 = v55[100];
                    v57 = *(v55 + 202);
                    v153 = *(v55 + 812);
                    v154 = *(v55 + 205);
                    if (v23 == 1.0)
                    {
                      v57 = *(v28 + 760);
                    }

                    v58 = *v28;
                    if (*v28)
                    {
                      v59 = 240 * v58;
                      v60 = *(v28 + 8);
                      while ((*(v60 + 106) & 1) == 0)
                      {
                        v60 += 240;
                        v59 -= 240;
                        if (!v59)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    else
                    {
                      v60 = *(v28 + 8);
                    }

                    if (v60 != *(v28 + 8) + 240 * v58)
                    {
                      *(v55[7] + 104) |= 0x10000u;
                    }

LABEL_92:
                    *(v55 + 199) = v48;
                    v55[100] = v56;
                    *(v55 + 202) = v57;
                    *(v55 + 812) = v153;
                    *(v55 + 205) = v154;
                    valuePtr = COERCE_DOUBLE(&v163);
                    v61 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(&v166, &v163);
                    KB::Candidate::operator=((v61 + 6), v28);
                    if (a5 < 1)
                    {
                      goto LABEL_110;
                    }

                    v62 = expf(*v47);
                    valuePtr = COERCE_DOUBLE(&v163);
                    v63 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(v155, &v163);
                    v64 = *(v17 + 4);
                    v65 = v63[7];
                    if (!*&v65)
                    {
                      goto LABEL_109;
                    }

                    v66 = vcnt_s8(v65);
                    v66.i16[0] = vaddlv_u8(v66);
                    if (v66.u32[0] > 1uLL)
                    {
                      v67 = *(v17 + 4);
                      if (*&v65 <= v64)
                      {
                        v67 = v64 % *&v65;
                      }
                    }

                    else
                    {
                      v67 = (*&v65 - 1) & v64;
                    }

                    v68 = *(v63[6] + 8 * v67);
                    if (!v68 || (v69 = *v68) == 0)
                    {
LABEL_109:
                      operator new();
                    }

                    while (1)
                    {
                      v70 = v69[1];
                      if (v70 == v64)
                      {
                        if (*(v69 + 4) == v64)
                        {
                          *(v69 + 5) = v27;
                          *(v69 + 6) = v62;
                          goto LABEL_110;
                        }
                      }

                      else
                      {
                        if (v66.u32[0] > 1uLL)
                        {
                          if (v70 >= *&v65)
                          {
                            v70 %= *&v65;
                          }
                        }

                        else
                        {
                          v70 &= *&v65 - 1;
                        }

                        if (v70 != v67)
                        {
                          goto LABEL_109;
                        }
                      }

                      v69 = *v69;
                      if (!v69)
                      {
                        goto LABEL_109;
                      }
                    }
                  }
                }

                if (v164)
                {
                  v37 = v164;
                }

                else
                {
                  v37 = v165;
                }

                v38 = KB::String::hash(v37, v163);
                v39 = v38;
                v40 = *(&v158 + 1);
                if (!*(&v158 + 1))
                {
                  goto LABEL_63;
                }

                v41 = vcnt_s8(*(&v158 + 8));
                v41.i16[0] = vaddlv_u8(v41);
                v42 = v41.u32[0];
                if (v41.u32[0] > 1uLL)
                {
                  v43 = v38;
                  if (*(&v158 + 1) <= v38)
                  {
                    v43 = v38 % DWORD2(v158);
                  }
                }

                else
                {
                  v43 = (DWORD2(v158) - 1) & v38;
                }

                v44 = *(v158 + 8 * v43);
                if (!v44 || (v45 = *v44) == 0)
                {
LABEL_63:
                  operator new();
                }

                while (1)
                {
                  v46 = v45[1];
                  if (v46 == v39)
                  {
                    if (v45 + 2 == &v163 || KB::String::equal((v45 + 2), &v163, 1))
                    {
                      v47 = (v28 + 744);
                      v36 = v25 + *(v28 + 744);
                      v48 = v25 + *(v28 + 748);
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    if (v42 > 1)
                    {
                      if (v46 >= v40)
                      {
                        v46 %= v40;
                      }
                    }

                    else
                    {
                      v46 &= v40 - 1;
                    }

                    if (v46 != v43)
                    {
                      goto LABEL_63;
                    }
                  }

                  v45 = *v45;
                  if (!v45)
                  {
                    goto LABEL_63;
                  }
                }
              }

LABEL_117:
              std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(&v166);
              v149 = 0;
              v17 = *v17;
            }

            while (v17);
            v72 = v159;
            if (v159)
            {
              v73 = *MEMORY[0x277CBECE8];
              v74 = MEMORY[0x277CBF150];
              while (1)
              {
                TI::CP::TIPathRecognizerEnsemble::dictionary_key_for_candidate((v72 + 12), &v163);
                v75 = v72[199];
                v76 = fabsf(v75) == INFINITY ? v72[200] : (v72[198] - v75) / v72[202];
                v72[200] = v76;
                v72[201] = 0.0;
                if (a5 >= 1)
                {
                  v77 = (v164 ? v164 : v165);
                  v78 = KB::String::hash(v77, v163);
                  v79 = v155[1];
                  if (v155[1])
                  {
                    v80 = v78;
                    v81 = vcnt_s8(v155[1]);
                    v81.i16[0] = vaddlv_u8(v81);
                    v82 = v81.u32[0];
                    if (v81.u32[0] > 1uLL)
                    {
                      v83 = v78;
                      if (v155[1] <= v78)
                      {
                        v83 = v78 % LODWORD(v155[1]);
                      }
                    }

                    else
                    {
                      v83 = (LODWORD(v155[1]) - 1) & v78;
                    }

                    v84 = *(v155[0] + v83);
                    if (v84)
                    {
                      v85 = *v84;
                      if (*v84)
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_188:
                std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v72 + 12));
                if (v164 && BYTE6(v163) == 1)
                {
                  free(v164);
                }

                v72 = *v72;
                if (!v72)
                {
                  goto LABEL_192;
                }
              }

              v86 = v155[1] - 1;
              while (1)
              {
                v87 = v85[1];
                if (v87 == v80)
                {
                  if (v85 + 2 == &v163 || KB::String::equal((v85 + 2), &v163, 1))
                  {
                    valuePtr = COERCE_DOUBLE(&v163);
                    v88 = std::__hash_table<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(v155, &v163);
                    v166 = 0u;
                    v167 = 0u;
                    v168 = *(v88 + 20);
                    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(&v166, v88[7]);
                    v89 = v88[8];
                    if (!v89)
                    {
                      goto LABEL_165;
                    }

                    while (1)
                    {
                      v90 = *(v89 + 4);
                      if (!*(&v166 + 1))
                      {
                        goto LABEL_163;
                      }

                      v91 = vcnt_s8(*(&v166 + 8));
                      v91.i16[0] = vaddlv_u8(v91);
                      if (v91.u32[0] > 1uLL)
                      {
                        v92 = *(v89 + 4);
                        if (*(&v166 + 1) <= v90)
                        {
                          v92 = v90 % *(&v166 + 1);
                        }
                      }

                      else
                      {
                        v92 = (*(&v166 + 1) - 1) & v90;
                      }

                      v93 = *(v166 + 8 * v92);
                      if (!v93 || (v94 = *v93) == 0)
                      {
LABEL_163:
                        operator new();
                      }

                      while (1)
                      {
                        v95 = v94[1];
                        if (v95 == v90)
                        {
                          break;
                        }

                        if (v91.u32[0] > 1uLL)
                        {
                          if (v95 >= *(&v166 + 1))
                          {
                            v95 %= *(&v166 + 1);
                          }
                        }

                        else
                        {
                          v95 &= *(&v166 + 1) - 1;
                        }

                        if (v95 != v92)
                        {
                          goto LABEL_163;
                        }

LABEL_162:
                        v94 = *v94;
                        if (!v94)
                        {
                          goto LABEL_163;
                        }
                      }

                      if (*(v94 + 4) != v90)
                      {
                        goto LABEL_162;
                      }

                      v89 = *v89;
                      if (!v89)
                      {
LABEL_165:
                        Mutable = CFDictionaryCreateMutable(v73, 0, MEMORY[0x277CBF138], v74);
                        for (i = v167; i; i = *i)
                        {
                          v98 = CFDictionaryCreateMutable(v73, 0, MEMORY[0x277CBF138], v74);
                          LODWORD(v99) = *(i + 5);
                          valuePtr = v99;
                          v100 = CFNumberCreate(v73, kCFNumberDoubleType, &valuePtr);
                          CFDictionarySetValue(v98, @"cand_index", v100);
                          if (v100)
                          {
                            CFRelease(v100);
                          }

                          valuePtr = *(i + 6);
                          v101 = CFNumberCreate(v73, kCFNumberDoubleType, &valuePtr);
                          CFDictionarySetValue(v98, @"cand_omega", v101);
                          if (v101)
                          {
                            CFRelease(v101);
                          }

                          std::string::basic_string[abi:nn200100]<0>(__p, off_278731CE0[*(i + 4)]);
                          if (v152 >= 0)
                          {
                            v102 = __p;
                          }

                          else
                          {
                            v102 = __p[0];
                          }

                          KB::String::String(&valuePtr, v102);
                          if (v152 < 0)
                          {
                            operator delete(__p[0]);
                          }

                          KB::cf_string_impl<KB::String>(__p, &valuePtr);
                          v103 = __p[0];
                          CFDictionarySetValue(Mutable, __p[0], v98);
                          if (v103)
                          {
                            CFRelease(v103);
                          }

                          if (v162 && BYTE6(valuePtr) == 1)
                          {
                            free(v162);
                          }

                          if (v98)
                          {
                            CFRelease(v98);
                          }
                        }

                        valuePtr = expf(v72[198]);
                        v104 = CFNumberCreate(v73, kCFNumberDoubleType, &valuePtr);
                        CFDictionarySetValue(Mutable, @"ensemble_omega", v104);
                        if (v104)
                        {
                          CFRelease(v104);
                        }

                        KB::Candidate::add_sources_info((v72 + 12), @"ensemble", Mutable);
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v166);
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  if (v82 > 1)
                  {
                    if (v87 >= v79)
                    {
                      v87 %= v79;
                    }
                  }

                  else
                  {
                    v87 &= v86;
                  }

                  if (v87 != v83)
                  {
                    goto LABEL_188;
                  }
                }

                v85 = *v85;
                if (!v85)
                {
                  goto LABEL_188;
                }
              }
            }
          }
        }

LABEL_192:
        v105 = v156[0];
        if (v156[0])
        {
          do
          {
            v106 = v105;
            v105 = *v105;
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v106 + 6));
            v107 = v106[3];
            if (v107 && *(v106 + 22) == 1)
            {
              free(v107);
            }

            operator delete(v106);
          }

          while (v105);
        }

        goto LABEL_260;
      }

      v158 = 0uLL;
      v159 = 0uLL;
      v160 = 1065353216;
      *v155 = 0uLL;
      *v156 = 0uLL;
      v157 = 1065353216;
      v118 = *(a2 + 16);
      if (!v118)
      {
        goto LABEL_255;
      }

      do
      {
        v119 = v118[3];
        if (v118[4] != v119)
        {
          v120 = 0;
          v121 = 1;
          do
          {
            v122 = (v119 + 1000 * v120);
            KB::Candidate::capitalized_string(v122, &v166);
            v123 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(v158, *(&v158 + 1), &v166);
            if (*(&v166 + 1))
            {
              v124 = BYTE6(v166) == 1;
            }

            else
            {
              v124 = 0;
            }

            if (v124)
            {
              free(*(&v166 + 1));
            }

            if (v123)
            {
              KB::Candidate::capitalized_string(v122, &v166);
              v163 = &v166;
              v125 = std::__hash_table<std::__hash_value_type<KB::String,unsigned int>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned int>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v155, &v166);
              ++*(v125 + 12);
            }

            else
            {
              KB::Candidate::capitalized_string(v122, &v166);
              v163 = &v166;
              *(std::__hash_table<std::__hash_value_type<KB::String,unsigned int>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned int>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v155, &v166) + 12) = 1;
              if (*(&v166 + 1) && BYTE6(v166) == 1)
              {
                free(*(&v166 + 1));
              }

              KB::Candidate::capitalized_string(v122, &v166);
              v163 = &v166;
              v126 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(&v158, &v166);
              KB::Candidate::operator=((v126 + 6), v122);
            }

            if (*(&v166 + 1) && BYTE6(v166) == 1)
            {
              free(*(&v166 + 1));
            }

            v120 = v121;
            v119 = v118[3];
            v112 = 0x1CAC083126E978D5 * ((v118[4] - v119) >> 3) > v121++;
          }

          while (v112);
        }

        v118 = *v118;
      }

      while (v118);
      v127 = v159;
      if (!v159)
      {
LABEL_255:
        v138 = v156[0];
        if (v156[0])
        {
          do
          {
            v139 = v138;
            v138 = *v138;
            v140 = v139[3];
            if (v140 && *(v139 + 22) == 1)
            {
              free(v140);
            }

            operator delete(v139);
          }

          while (v138);
        }

LABEL_260:
        v141 = v155[0];
        v155[0] = 0;
        if (v141)
        {
          operator delete(v141);
        }

        std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(&v158);
        goto LABEL_263;
      }

LABEL_231:
      if (*(v127 + 3))
      {
        v128 = *(v127 + 3);
      }

      else
      {
        v128 = (v127 + 8);
      }

      v129 = KB::String::hash(v128, *(v127 + 8));
      v130 = v129;
      v131 = v155[1];
      if (!v155[1])
      {
        goto LABEL_251;
      }

      v132 = vcnt_s8(v155[1]);
      v132.i16[0] = vaddlv_u8(v132);
      v133 = v132.u32[0];
      if (v132.u32[0] > 1uLL)
      {
        v134 = v129;
        if (v155[1] <= v129)
        {
          v134 = v129 % LODWORD(v155[1]);
        }
      }

      else
      {
        v134 = (LODWORD(v155[1]) - 1) & v129;
      }

      v135 = *(v155[0] + v134);
      if (!v135 || (v136 = *v135) == 0)
      {
LABEL_251:
        operator new();
      }

      while (1)
      {
        v137 = *(v136 + 1);
        if (v137 == v130)
        {
          if (v136 == v127 || KB::String::equal((v136 + 4), (v127 + 4), 1))
          {
            v127[198] = logf(v136[12]);
            std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v127 + 12));
            v127 = *v127;
            if (!v127)
            {
              goto LABEL_255;
            }

            goto LABEL_231;
          }
        }

        else
        {
          if (v133 > 1)
          {
            if (v137 >= v131)
            {
              v137 %= v131;
            }
          }

          else
          {
            v137 &= v131 - 1;
          }

          if (v137 != v134)
          {
            goto LABEL_251;
          }
        }

        v136 = *v136;
        if (!v136)
        {
          goto LABEL_251;
        }
      }
    }

    for (j = *(a2 + 16); j; j = *j)
    {
      v114 = j[3];
      if (j[4] != v114)
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = (v114 + 1000 * v115);
          *(v117 + 186) = 0;
          std::vector<KB::Candidate>::push_back[abi:nn200100](a3, v117);
          v115 = v116;
          v114 = j[3];
          v112 = 0x1CAC083126E978D5 * ((j[4] - v114) >> 3) > v116++;
        }

        while (v112);
      }
    }
  }

  else
  {
    for (k = *(a2 + 16); k; k = *k)
    {
      v109 = k[3];
      if (k[4] != v109)
      {
        v110 = 0;
        v111 = 1;
        do
        {
          std::vector<KB::Candidate>::push_back[abi:nn200100](a3, (v109 + 1000 * v110));
          v110 = v111;
          v109 = k[3];
          v112 = 0x1CAC083126E978D5 * ((k[4] - v109) >> 3) > v111++;
        }

        while (v112);
      }
    }
  }

LABEL_263:
  v142 = *(a3 + 8);
  v143 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v142 - *a3) >> 3));
  if (v142 == *a3)
  {
    v144 = 0;
  }

  else
  {
    v144 = v143;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a3, v142, v144, 1);
  v145 = *MEMORY[0x277D85DE8];
}