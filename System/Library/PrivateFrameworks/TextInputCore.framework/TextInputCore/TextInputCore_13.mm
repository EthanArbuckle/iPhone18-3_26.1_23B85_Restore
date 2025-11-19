uint64_t *std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,KB::CandidateCollection>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType&&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *TI::CP::TIPathRecognizerEnsemble::can_use_preferred_source(TI::CP::TIPathRecognizerEnsemble *this)
{
  v2 = (this + 208);
  v3 = (this + 16);
  result = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, *(this + 52));
  if (result)
  {
    v5 = *(this + 60);
    result = 0;
    if (!v5 || !*(*(*v5 + 48))(v5) || *(*(*(**(this + 60) + 48))(*(this + 60)) + 66) != 1 || (*(*(*(**(this + 60) + 48))(*(this + 60)) + 65) & 1) == 0)
    {
      v6 = std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType const&>,std::tuple<>>(v3, *v2);
      if ((*(*v6[3] + 16))(v6[3]) == 1)
      {
        v7 = atomic_load(this + 632);
        if (v7)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::__unordered_map_hasher<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::hash<int>,std::equal_to<TI::CP::TIPathRecognizerType>,true>,std::__unordered_map_equal<TI::CP::TIPathRecognizerType,std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>,std::equal_to<TI::CP::TIPathRecognizerType>,std::hash<int>,true>,std::allocator<std::__hash_value_type<TI::CP::TIPathRecognizerType,std::shared_ptr<TI::CP::TIPathRecognizerInterface>>>>::__emplace_unique_key_args<TI::CP::TIPathRecognizerType,std::piecewise_construct_t const&,std::tuple<TI::CP::TIPathRecognizerType const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3[1])
  {
    v6 = a3[1];
  }

  else
  {
    v6 = (a3 + 2);
  }

  v7 = KB::String::hash(v6, *a3);
  if (!a2)
  {
    return 0;
  }

  v8 = v7;
  v9 = vcnt_s8(a2);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= a2)
    {
      v11 = v7 % a2;
    }
  }

  else
  {
    v11 = (a2 - 1) & v7;
  }

  v12 = *(a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    do
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (v13 + 2 == a3 || KB::String::equal((v13 + 2), a3, 1))
        {
          return v13;
        }
      }

      else
      {
        if (v10 > 1)
        {
          if (v14 >= a2)
          {
            v14 %= a2;
          }
        }

        else
        {
          v14 &= a2 - 1;
        }

        if (v14 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

void *std::__hash_table<std::__hash_value_type<KB::String,unsigned int>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned int>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned int>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 2 != a2 && !KB::String::equal((v12 + 2), a2, 1))
  {
    goto LABEL_21;
  }

  return v12;
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 2 != a2 && !KB::String::equal((v12 + 2), a2, 1))
  {
    goto LABEL_21;
  }

  return v12;
}

uint64_t std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    KB::Candidate::~Candidate((v3 + 6));
    v4 = v3[3];
    if (v4 && *(v3 + 22) == 1)
    {
      free(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void TI::CP::TIPathRecognizerEnsemble::dictionary_key_for_candidate(const KB::Candidate *a1@<X1>, uint64_t a2@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*a1)
  {
    v4 = *(a1 + 1);
    v5 = 240 * *a1;
    do
    {
      v6 = *(v4 + 17);
      KB::Word::capitalized_string(v4, v11);
      v7 = v13;
      if (!v13)
      {
        v7 = v14;
      }

      if (v11[0])
      {
        v8 = v7;
      }

      else
      {
        v8 = "";
      }

      KB::String::append_format(a2, "[%u]%s", v6, v8);
      if (v13)
      {
        v9 = v12 == 1;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        free(v13);
      }

      v4 = (v4 + 240);
      v5 -= 240;
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 2 != a2 && !KB::String::equal((v12 + 2), a2, 1))
  {
    goto LABEL_21;
  }

  return v12;
}

void *std::__hash_table<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::unordered_map<TI::CP::TIPathRecognizerType,std::pair<unsigned int,float>>>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String const&>,std::tuple<>>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = v5;
  v7 = a1[1];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v7 <= v5)
    {
      v10 = v5 % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (v12 + 2 != a2 && !KB::String::equal((v12 + 2), a2, 1))
  {
    goto LABEL_21;
  }

  return v12;
}

double TI::CP::TIPathRecognizerEnsemble::path_length(TI::CP::TIPathRecognizerEnsemble *this)
{
  v2 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<KB::String,std::unordered_set<KB::String>>>>>::find<int>(this + 2, *(this + 51));
  if (!v2)
  {
    v2 = *(this + 4);
    if (!v2)
    {
      return 0.0;
    }
  }

  v3 = *(*v2[3] + 72);

  v3();
  return result;
}

unsigned int *TI::CP::TIPathRecognizerEnsemble::set_typing_model(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 480);
  v4 = *a2;
  *a2 = 0;
  *(a1 + 480) = v4;
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

  for (i = *(a1 + 32); i; i = *i)
  {
    v7 = i[3];
    v8 = *(a1 + 480);
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add((v8 + 8), 1u);
    }

    (*(*v7 + 64))(v7, &v10);
    result = v10;
    if (v10)
    {
      v9 = atomic_load(v10 + 2);
      if (v9 == 1)
      {
        result = (*(*v10 + 40))();
      }

      else
      {
        atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      }
    }
  }

  return result;
}

double TI::CP::TIPathRecognizerEnsemble::reset_path(TI::CP::TIPathRecognizerEnsemble *this)
{
  for (i = *(this + 4); i; i = *i)
  {
    (*(*i[3] + 56))(i[3]);
  }

  *(this + 88) = *MEMORY[0x277CBF348];
  *&result = 0x7FFFFFFFFLL;
  *(this + 10) = 0x7FFFFFFFFLL;
  return result;
}

double TI::CP::TIPathRecognizerEnsemble::last_touch(TI::CP::TIPathRecognizerEnsemble *this)
{
  result = *(this + 11);
  v2 = *(this + 12);
  return result;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::add_touch(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = *(result + 80);
  if (v7 == -1)
  {
    v8 = a2 != 0;
  }

  else
  {
    v8 = v7 != a3;
  }

  if (v8)
  {
    return result;
  }

  v15 = a3;
  if (a2)
  {
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_9;
    }

    v15 = -1;
  }

  *(result + 80) = v15;
LABEL_9:
  *(result + 88) = a4;
  *(result + 96) = a5;
  *(result + 84) = a2;
  for (i = *(result + 32); i; i = *i)
  {
    result = (*(*i[3] + 32))(i[3], a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::recognitionSources(TI::CP::TIPathRecognizerEnsemble *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    result = 0;
    while (1)
    {
      v3 = *(v1 + 4);
      if (!v3)
      {
        goto LABEL_7;
      }

      if (v3 == 1)
      {
        goto LABEL_8;
      }

      if (v3 == 2)
      {
        break;
      }

LABEL_9:
      v1 = *v1;
      if (!v1)
      {
        return result;
      }
    }

    LODWORD(result) = result | 4;
LABEL_7:
    LODWORD(result) = result | 1;
LABEL_8:
    result = result | 2;
    goto LABEL_9;
  }

  return 0;
}

void TI::CP::TIPathRecognizerEnsemble::~TIPathRecognizerEnsemble(TI::CP::TIPathRecognizerEnsemble *this)
{
  TI::CP::TIPathRecognizerEnsemble::~TIPathRecognizerEnsemble(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBA90;
  if (preference_value_for_key(this) != *(this + 150))
  {
    valuePtr = *(this + 150);
    v2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    if (v2)
    {
      v3 = v2;
      CFPreferencesSetAppValue(@"kbUserDidPath", v2, @"com.apple.keyboard");
      CFPreferencesAppSynchronize(@"com.apple.keyboard");
      CFRelease(v3);
    }
  }

  v18 = (this + 576);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v18);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 568));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 560));
  v4 = *(this + 64);
  if (v4)
  {
    *(this + 65) = v4;
    operator delete(v4);
  }

  v5 = *(this + 63);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 61);
  if (v6)
  {
    v7 = atomic_load(v6 + 2);
    if (v7 == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  v8 = *(this + 60);
  if (v8)
  {
    v9 = atomic_load(v8 + 2);
    if (v9 == 1)
    {
      (*(*v8 + 40))(v8);
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  v10 = *(this + 36);
  if (v10 && *(this + 286) == 1)
  {
    free(v10);
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  v11 = *(this + 9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    do
    {
      v13 = *v12;
      v14 = v12[4];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  *this = &unk_283FDDD68;
  v16 = *(this + 1);
  if (v16)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v16);
  }
}

const __CFNumber *preference_value_for_key(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(@"kbUserDidPath", @"com.apple.keyboard");
  valuePtr = 0;
  if (result)
  {
    v2 = result;
    if (!CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      valuePtr = 0;
    }

    CFRelease(v2);
    return valuePtr;
  }

  return result;
}

uint64_t TI::CP::TIPathRecognizerEnsemble::TIPathRecognizerEnsemble(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  *a1 = &unk_283FDBA90;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = MEMORY[0x277CBF348];
  *(a1 + 80) = 0x7FFFFFFFFLL;
  *(a1 + 88) = *v8;
  v10 = *(a4 + 16);
  v9 = *(a4 + 32);
  *(a1 + 120) = *a4;
  *(a1 + 152) = v9;
  *(a1 + 136) = v10;
  v12 = *(a4 + 64);
  v11 = *(a4 + 80);
  v13 = *(a4 + 96);
  *(a1 + 168) = *(a4 + 48);
  *(a1 + 216) = v13;
  *(a1 + 200) = v11;
  *(a1 + 184) = v12;
  if (*(a4 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 224), *(a4 + 104), *(a4 + 112));
  }

  else
  {
    v14 = *(a4 + 104);
    *(a1 + 240) = *(a4 + 120);
    *(a1 + 224) = v14;
  }

  if (*(a4 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), *(a4 + 128), *(a4 + 136));
  }

  else
  {
    v15 = *(a4 + 128);
    *(a1 + 264) = *(a4 + 144);
    *(a1 + 248) = v15;
  }

  v16 = *(a4 + 152);
  *(a1 + 274) = *(a4 + 154);
  *(a1 + 272) = v16;
  KB::String::String((a1 + 280), (a4 + 160));
  v17 = *(a4 + 192);
  v18 = *(a4 + 224);
  *(a1 + 328) = *(a4 + 208);
  *(a1 + 344) = v18;
  *(a1 + 312) = v17;
  v19 = *(a4 + 240);
  v20 = *(a4 + 256);
  v21 = *(a4 + 288);
  *(a1 + 392) = *(a4 + 272);
  *(a1 + 408) = v21;
  *(a1 + 360) = v19;
  *(a1 + 376) = v20;
  v22 = *(a4 + 304);
  v23 = *(a4 + 320);
  v24 = *(a4 + 336);
  *(a1 + 472) = *(a4 + 352);
  *(a1 + 440) = v23;
  *(a1 + 456) = v24;
  *(a1 + 424) = v22;
  v25 = *a2;
  *a2 = 0;
  *(a1 + 480) = v25;
  v26 = *a3;
  *a3 = 0;
  *(a1 + 488) = v26;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 560));
  v27 = language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 568));
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 604) = xmmword_22CC88AB0;
  *(a1 + 620) = 1028443341;
  *(a1 + 624) = 0x300000000;
  *(a1 + 632) = 0;
  *(a1 + 204) = 0;
  atomic_store(0, (a1 + 632));
  atomic_store(0, (a1 + 633));
  v28 = *(a1 + 220);
  if (v28)
  {
    v29 = *(a1 + 384);
    filePath[5] = *(a1 + 400);
    v30 = *(a1 + 432);
    filePath[6] = *(a1 + 416);
    filePath[7] = v30;
    v57 = *(a1 + 448);
    v31 = *(a1 + 368);
    filePath[2] = *(a1 + 352);
    filePath[3] = v31;
    filePath[4] = v29;
    v32 = *(a1 + 336);
    filePath[0] = *(a1 + 320);
    filePath[1] = v32;
    *v58 = *(a1 + 457);
    *&v58[15] = *(a1 + 472);
    v33 = *(a1 + 273);
    if (*(a1 + 272))
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v35 = *(a1 + 274);
    v43 = 0x402E000000000000;
    v44 = __PAIR64__(v35, v34);
    LOBYTE(cf[0]) = 1;
    cf[1] = 0x3FD3333333333333;
    v46 = 0;
    v54 = 0;
    v55 = 0;
    *v47 = 0u;
    *v48 = 0u;
    v49 = 0u;
    *v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    operator new();
  }

  if ((v28 & 0xC) != 0)
  {
    CFRetain(@"shapestore.db");
    cf[0] = @"shapestore.db";
    if (*(a1 + 284) || (KB::String::compute_length((a1 + 280)), *(a1 + 284)))
    {
      v36 = *MEMORY[0x277CBECE8];
      KB::cf_string_impl<KB::String>(filePath, (a1 + 280));
      v37 = *&filePath[0];
      v44 = CFURLCreateWithFileSystemPath(v36, *&filePath[0], kCFURLPOSIXPathStyle, 1u);
      if (v37)
      {
        CFRelease(v37);
      }
    }

    else
    {
      v38 = *MEMORY[0x277CBECE8];
      v39 = TI_KB_USER_DIRECTORY();
      v44 = CFURLCreateWithFileSystemPath(v38, v39, kCFURLPOSIXPathStyle, 1u);
    }

    LODWORD(v43) = *(a1 + 312);
    KB::retain_ptr<__CFDictionary const*>::operator=(cf, @"shapestore.db");
    operator new();
  }

  v40 = preference_value_for_key(v27);
  *(a1 + 600) = v40;
  if (v40 == 0x7FFFFFFF)
  {
    v40 = *(a1 + 212) + 1;
    *(a1 + 600) = v40;
  }

  if (v40 < 0)
  {
    *(a1 + 600) = 0;
  }

  TI::CP::TIPathRecognizerEnsemble::load_ml_source_if_needed(a1);
  TI::CP::TIPathRecognizerEnsemble::normalize_weights(a1);
  v41 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::__shared_ptr_emplace<TI::CP::ContextualShapeRecognizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDBB78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::__shared_ptr_emplace<TI::CP::Search>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDBB40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::CP::TIPathRecognizerEnsemble::update_ml_supports_language_layout_if_needed(uint64_t result, uint64_t a2, const KB::String *a3)
{
  v3 = (result + 632);
  if (*(result + 216) != 1)
  {
    goto LABEL_5;
  }

  v4 = atomic_load(v3);
  if ((v4 & 1) == 0)
  {
    v5 = (result + 633);
    v6 = atomic_load((result + 633));
    if ((v6 & 1) == 0)
    {
      result = TI::TIInputRecognizer::is_language_and_layout_supported(a2, a3);
      atomic_store(result, v3);
      v3 = v5;
LABEL_5:
      atomic_store(1u, v3);
    }
  }

  return result;
}

void TI::CP::TIPathRecognizerEnsemble::append_debug_data(TI::CP::TIPathRecognizerEnsemble *this, __CFString *a2, const char *a3)
{
  v3 = *(this + 8);
  if (v3)
  {
    TI::CP::Search::append_debug_data(v3, a2, a3);
  }
}

double TI::CP::TIPathRecognizerEnsemble::set_lm_weight(TI::CP::TIPathRecognizerEnsemble *this, double result)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(v2 + 432) = 0x3FD60DC768DFBD6ALL;
    *(v2 + 440) = *&result;
    *(v2 + 448) = xmmword_22CC88B10;
    *(v2 + 464) = xmmword_22CC88B20;
    *(v2 + 480) = xmmword_22CC88B30;
    *(v2 + 496) = xmmword_22CC88B40;
    *(v2 + 512) = xmmword_22CC88B50;
    *(v2 + 528) = xmmword_22CC88B60;
    *(v2 + 544) = xmmword_22CC88B70;
    *(v2 + 560) = 0x401F404C05921038;
    *(v2 + 568) = 1;
    result = 54.3812;
    *(v2 + 576) = xmmword_22CC88B80;
  }

  return result;
}

float TI::Favonius::CMGeometryParameters::kb_points_per_mm(TI::Favonius::CMGeometryParameters *this)
{
  result = 6.3;
  if (s_interface_idiom_is_pad)
  {
    return 5.3;
  }

  return result;
}

float TI::Favonius::CMGeometryParameters::kb_mm_per_point(TI::Favonius::CMGeometryParameters *this)
{
  v1 = &unk_27D9ED000;
  {
    v1 = &unk_27D9ED000;
    if (v3)
    {
      v4 = 0.15873;
      if (s_interface_idiom_is_pad)
      {
        v4 = 0.18868;
      }

      TI::Favonius::CMGeometryParameters::kb_mm_per_point(void)::mm_per_point = LODWORD(v4);
      v1 = &unk_27D9ED000;
    }
  }

  return v1[410];
}

float TI::Favonius::CMGeometryParameters::kb_mm_to_points(TI::Favonius::CMGeometryParameters *this, float a2)
{
  v2 = 6.3;
  if (s_interface_idiom_is_pad)
  {
    v2 = 5.3;
  }

  return v2 * a2;
}

uint64_t TI::Favonius::CMGeometryParameters::CMGeometryParameters(uint64_t a1, TI::Favonius::KeyboardLayout **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(*a2 + 50);
  v7 = v5 > 0xB || v5 > ((*(*a2 + 2) - *(*a2 + 1)) >> 3) >> 1;
  *a1 = v7;
  *(a1 + 1) = TI::Favonius::KeyboardLayout::is_indic_alphabetic(v4);
  v8 = *a2;
  KB::String::String(v19, "Zhuyin-Grid");
  v9 = KB::String::equal((v8 + 208), v19, 1);
  if (v20 && v19[6] == 1)
  {
    free(v20);
  }

  *(a1 + 2) = v9;
  v10 = TI::Favonius::KeyboardLayout::median_key_half_width(*a2) / 15.0;
  v11.i32[0] = 1.0;
  if (v10 >= 1.0)
  {
    *v11.i32 = v10;
    if (v10 > 4.0)
    {
      v11.i32[0] = 4.0;
    }
  }

  v18 = v11;
  v12 = s_interface_idiom_is_pad;
  v13 = powf(*v11.i32, 0.66);
  v14 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL));
  v15 = v18;
  *&v15.i32[1] = v13;
  *(a1 + 4) = vmulq_f32(vzip1q_s32(v15, vdupq_lane_s32(*v15.i8, 1)), vbslq_s8(v14, xmmword_22CC88BD0, xmmword_22CC88BC0));
  *(a1 + 20) = vmulq_n_f32(vbslq_s8(v14, xmmword_22CC88BF0, xmmword_22CC88BE0), v13);
  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL TI::Favonius::KeyboardLayout::is_indic_alphabetic(TI::Favonius::KeyboardLayout *this)
{
  v7 = *MEMORY[0x277D85DE8];
  KB::String::String(v5, (this + 208));
  isAlphabeticLayout = TI::IndicUtils::isAlphabeticLayout(v5);
  if (v6)
  {
    v2 = v5[6] == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    free(v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return isAlphabeticLayout;
}

float TI::Favonius::CMGeometryParametersForTouch::CMGeometryParametersForTouch(float *a1, uint64_t a2, float a3, double a4)
{
  v4 = 1.0;
  v5 = 1.0;
  if (a3 <= 12.0)
  {
    v5 = 0.0;
    if (a3 > 6.5)
    {
      v5 = ((a3 + -6.5) / 5.5);
    }
  }

  if (a4 >= 0.15)
  {
    v4 = 0.0;
    if (a4 < 0.35)
    {
      v6 = (0.35 - a4) / 0.2;
      v4 = v6;
    }
  }

  v7 = v5 * 0.3 + v4 * (v5 * 0.7 + 1.0);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = *(a2 + 16) + ((*(a2 + 20) - *(a2 + 16)) * v7);
  *a1 = -1.0 / (v8 * (v8 * 4.0));
  if (*a2 == 1)
  {
    v9 = *(a2 + 24) + ((*(a2 + 28) - *(a2 + 24)) * v7);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  a1[1] = -1.0 / (v9 * (v9 * 4.0));
  v10 = 1.0;
  if (a4 >= 0.15)
  {
    v10 = 0.0;
    if (a4 < 0.35)
    {
      v10 = (0.35 - a4) / 0.2;
    }
  }

  result = *(a2 + 8) + ((*(a2 + 12) - *(a2 + 8)) * v10);
  a1[2] = result;
  return result;
}

__n128 __Block_byref_object_copy__12914(void *a1, uint64_t a2)
{
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = *(a2 + 48);
  *(a2 + 48) = 0;
  result = *(a1 + 7);
  *(a1 + 7) = *(a2 + 56);
  *(a2 + 56) = result;
  return result;
}

uint64_t KB::CandidateFilterLookupContext::CandidateFilterLookupContext(uint64_t a1, uint64_t a2, const KB::Candidate *a3, uint64_t a4, uint64_t a5, KB::String *a6, uint64_t a7, int a8)
{
  v15 = KB::Candidate::Candidate(a1, a2);
  *(v15 + 1000) = 0;
  *(v15 + 2000) = 0;
  if (*(a3 + 1000) == 1)
  {
    KB::Candidate::Candidate((a1 + 1000), a3);
    *(a1 + 2000) = 1;
  }

  *(a1 + 2024) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2008) = *a4;
  *(a1 + 2024) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  KB::LanguageModelContext::LanguageModelContext(a1 + 2032, a5);
  *(a1 + 2136) = 0x100000;
  *(a1 + 2140) = 0;
  *(a1 + 2142) = 0;
  *(a1 + 2144) = 0;
  KB::String::operator=(a1 + 2136, a6);
  KB::Candidate::Candidate(a1 + 2168, a7);
  *(a1 + 3168) = a8;
  *(a1 + 3172) = 0;
  *(a1 + 3176) = 0;
  return a1;
}

__n128 __Block_byref_object_copy__12949(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZN2KB41match_shortcut_conversion_case_with_inputERKNS_6StringES2__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 1;
  v7 = *(*(result + 32) + 8);
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  return result;
}

unsigned int *TI::Favonius::SearchNodeSourceQueue::add_clone_substituting_touch_to_strong_refs<std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> const*>>(unsigned int *result, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v19[9] = v4;
    v19[10] = v5;
    v8 = a2;
    v9 = result;
    while (1)
    {
      v10 = *v8;
      if (*v8)
      {
        atomic_fetch_add(v10 + 2, 1u);
      }

      v11 = *a4;
      v18 = v11;
      if (v11)
      {
        atomic_fetch_add((v11 + 8), 1u);
      }

      (*(*v10 + 24))(v19, v10, &v18);
      result = v18;
      v12 = v19[0];
      v19[0] = 0;
      if (!v18)
      {
        goto LABEL_10;
      }

      v13 = atomic_load(v18 + 2);
      if (v13 == 1)
      {
        break;
      }

      atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
      if (v12)
      {
LABEL_13:
        v19[0] = 0;
        std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::push_back[abi:nn200100]((v9 + 6), v19);
        if (v19[0])
        {
          v14 = atomic_load((v19[0] + 8));
          if (v14 == 1)
          {
            (*(*v19[0] + 8))();
          }

          else
          {
            atomic_fetch_add((v19[0] + 8), 0xFFFFFFFF);
          }
        }

        v15 = *(v9 + 4);
        result = *(v15 - 8);
        *(v15 - 8) = v12;
        if (result)
        {
          v16 = atomic_load(result + 2);
          if (v16 == 1)
          {
            result = (*(*result + 8))(result);
          }

          else
          {
            atomic_fetch_add(result + 2, 0xFFFFFFFF);
          }
        }
      }

LABEL_21:
      v17 = atomic_load(v10 + 2);
      if (v17 == 1)
      {
        result = (*(*v10 + 8))(v10);
      }

      else
      {
        atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      }

      if (++v8 == a3)
      {
        return result;
      }
    }

    result = (*(*v18 + 8))();
LABEL_10:
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  return result;
}

TI::Favonius::SearchNodeSource **TI::Favonius::SearchNodeSourceQueue::next_search_node(TI::Favonius::SearchNodeSourceQueue *this, float a2, unsigned int **a3)
{
  v5 = a3 + 3;
  while (1)
  {
    v6 = *a3;
    v7 = a3[1];
    result = *a3;
    if (*a3 == v7)
    {
      break;
    }

    v9 = *result;
    if (*(*result + 6) < a2 || (*(*result + 6) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      break;
    }

    v11 = (v7 - result) >> 3;
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = *a3;
      do
      {
        v14 = v13;
        v13 += v12 + 1;
        v15 = 2 * v12;
        v12 = (2 * v12) | 1;
        v16 = v15 + 2;
        if (v16 < v11 && *(*v13 + 6) < *(v13[1] + 6))
        {
          ++v13;
          v12 = v16;
        }

        *v14 = *v13;
      }

      while (v12 <= ((v11 - 2) >> 1));
      v17 = (v7 - 2);
      if (v17 == v13)
      {
        *v13 = v9;
      }

      else
      {
        *v13 = *v17;
        *v17 = v9;
        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeSourceQueue::BoundComparator &,std::__wrap_iter<TI::Favonius::SearchNodeSource **>>(result, (v13 + 1), v13 + 1 - result);
      }
    }

    a3[1] -= 2;
    (*(*v9 + 32))(v31, v9);
    v18 = v31[0];
    if (v31[0])
    {
      v19 = 0;
    }

    else
    {
      (*(*v9 + 40))(v31, v9);
      v19 = v31[0];
      if (!v31[0])
      {
        (*(*v9 + 48))(v9);
      }
    }

    if ((*(v9 + 6) & 0x7FFFFFFFu) < 0x7F800000 || (result = (*(*v9 + 16))(v9), result))
    {
      result = TI::Favonius::SearchNodeSourceQueue::push_heap(a3, v9);
    }

    if (v19)
    {
      result = TI::Favonius::SearchNodeSourceQueue::push_heap(a3, v19);
      v20 = a3[4];
      v21 = a3[5];
      if (v20 >= v21)
      {
        v23 = *v5;
        v24 = (v20 - *v5) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v26 = v21 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        v31[4] = v5;
        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v27);
        }

        *(8 * v24) = v19;
        v22 = 8 * v24 + 8;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v23, v20, 0);
        v28 = a3[3];
        a3[3] = 0;
        a3[4] = v22;
        v29 = a3[5];
        a3[5] = 0;
        v31[2] = v28;
        v31[3] = v29;
        v31[0] = v28;
        v31[1] = v28;
        result = std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(v31);
      }

      else
      {
        *v20 = v19;
        v22 = (v20 + 8);
      }

      a3[4] = v22;
    }

    if (v18)
    {
      goto LABEL_39;
    }
  }

  v18 = 0;
LABEL_39:
  *this = v18;
  return result;
}

uint64_t TI::Favonius::SearchNodeSourceQueue::push_heap(TI::Favonius::SearchNodeSourceQueue *this, TI::Favonius::SearchNodeSource *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = (v4 - *this) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *this;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v9);
    }

    v10 = (8 * v6);
    *v10 = a2;
    v5 = 8 * v6 + 8;
    v11 = *(this + 1) - *this;
    v12 = v10 - v11;
    memcpy(v10 - v11, *this, v11);
    v13 = *this;
    *this = v12;
    *(this + 1) = v5;
    *(this + 2) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 1) = v5;
  v14 = *this;
  v15 = (v5 - *this) >> 3;

  return std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeSourceQueue::BoundComparator &,std::__wrap_iter<TI::Favonius::SearchNodeSource **>>(v14, v5, v15);
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeSourceQueue::BoundComparator &,std::__wrap_iter<TI::Favonius::SearchNodeSource **>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 24);
    if (*(*v4 + 24) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 24) < v9);
      *v10 = v7;
    }
  }

  return result;
}

unsigned int *TI::Favonius::SearchNodeGeometryExtensions::branch_at_current_bound@<X0>(unsigned int *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = this;
    v5 = *(this + 6);
    v6 = *(v5 + 8 * v3 - 8);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
      v3 = *(this + 5);
      v5 = *(this + 6);
    }

    v7 = v3 - 1;
    v8 = *(v5 + 8 * (v3 - 1));
    if (v8)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v8);
    }

    *(v4 + 40) = v7;
    TI::Favonius::SearchNodeGeometryExtensions::set_bound_on_score(v4);
    v9 = *(v4 + 32);
    v10 = *(v4 + 16);
    v13 = v10;
    if (v10)
    {
      atomic_fetch_add((v10 + 8), 1u);
    }

    v12 = v6;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    (*(*v4 + 56))(v4, v9, &v13, &v12, *(v4 + 64));
    if (v12)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v12);
    }

    this = v13;
    if (v13)
    {
      v11 = atomic_load(v13 + 2);
      if (v11 == 1)
      {
        this = (*(*v13 + 8))();
      }

      else
      {
        atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
      }
    }

    if (v6)
    {
      return WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v6);
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t TI::Favonius::SearchNodeGeometryExtensions::set_bound_on_score(uint64_t this)
{
  v1 = this;
  if (*(this + 68) == 1)
  {
    v2 = *(this + 40);
    if (v2)
    {
      v3 = v2 - 1;
      while (1)
      {
        this = *(*(v1 + 48) + 8 * v3);
        if ((*(*(this + 8) + 60) & 0x22) != 0)
        {
          break;
        }

        this = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(this);
        *(v1 + 40) = v3--;
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }

      v4 = v3 + 1;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(this + 40);
    if (v4)
    {
LABEL_10:
      v5 = *(v1 + 72) + *(*(*(v1 + 48) + 8 * v4 - 8) + 32);
      goto LABEL_11;
    }
  }

LABEL_8:
  v5 = -INFINITY;
LABEL_11:
  *(v1 + 24) = v5;
  return this;
}

uint64_t TI::Favonius::SearchNodeGeometryExtensions::SearchNodeGeometryExtensions(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *a3 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = -8388608;
  *a1 = &unk_283FDBCB8;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add((v6 + 8), 1u);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  if ((v8 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v9 = (*(**(a1 + 16) + 64))(*(a1 + 16));
    WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity((a1 + 40), *v9);
    v10 = *v9;
    if (*v9)
    {
      v11 = 8 * v10 - 8;
      do
      {
        v12 = v9[1] + v11;
        if (!(*(**(a2 + 16) + 72))(*(a2 + 16), *(*(*v12 + 8) + 62)))
        {
          v13 = *(a1 + 40);
          if (v13 != *(a1 + 56))
          {
            v15 = *(a1 + 48);
            goto LABEL_11;
          }

          v14 = WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::expandCapacity((a1 + 40), v13 + 1, v12);
          v15 = *(a1 + 48);
          if (v15)
          {
            v12 = v14;
            v13 = *v7;
LABEL_11:
            v16 = *v12;
            *(v15 + 8 * v13) = *v12;
            if (v16)
            {
              atomic_fetch_add(v16, 1u);
              v13 = *v7;
            }

            *v7 = v13 + 1;
          }
        }

        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    if (*(a2 + 40))
    {
      for (i = *(a2 + 48); i != *(a2 + 48) + 8 * *(a2 + 40); i += 8)
      {
        v18 = (*(**(a1 + 16) + 72))(*(a1 + 16), *(*(*i + 8) + 62));
        if (v18)
        {
          v19 = v18;
          v20 = *(a1 + 40);
          if (v20 == *(a1 + 56))
          {
            v21 = v20 + (v20 >> 1);
            if (v20 < 0x100)
            {
              v21 = 2 * v20;
            }

            if (v21 <= v20 + 1)
            {
              v22 = v20 + 1;
            }

            else
            {
              v22 = v21;
            }

            WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity((a1 + 40), v22);
            v23 = *(a1 + 48);
            if (!v23)
            {
              continue;
            }

            v20 = *v7;
          }

          else
          {
            v23 = *(a1 + 48);
          }

          *(v23 + 8 * v20) = v19;
          atomic_fetch_add(v19, 1u);
          ++*v7;
        }
      }
    }

    v25 = *(a1 + 40);
    v24 = *(a1 + 48);
    v29 = &__block_literal_global_13371;
    v26 = 126 - 2 * __clz(v25);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*,false>(v24, (v24 + 8 * v25), &v29, v27, 1);
    TI::Favonius::SearchNodeGeometryExtensions::set_bound_on_score(a1);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
                  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v74);
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
                WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
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
                WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v116);
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
              WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
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
                  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v89);
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
                WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v92);
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
              WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v102);
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
              result = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
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
              WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v104);
            }

            result = *v11;
            *v11 = v122;
            if (result)
            {
              result = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
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
                    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v113);
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
                  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
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
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v55);
        }
      }

      v56 = *v49;
      *v49 = v123;
      if (v56)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v56);
      }

      if (v48 < v50)
      {
        goto LABEL_84;
      }

      v57 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*>(v7, v49, a3);
      v10 = v49 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*>(v49 + 1, v121, a3);
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
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*,false>(v7, v49, a3, a4, a5 & 1);
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
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v64);
        }
      }

      v65 = *v62;
      *v62 = v124;
      if (v65)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v65);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v22);
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
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v28);
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

void TI::Favonius::SearchNodeGeometryExtensions::~SearchNodeGeometryExtensions(TI::Favonius::SearchNodeGeometryExtensions *this)
{
  TI::Favonius::SearchNodeGeometryExtensions::~SearchNodeGeometryExtensions(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBCB8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(this + 5);
  v2 = *(this + 4);
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

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t TI::Favonius::SearchNodeGeometryExtensions::SearchNodeGeometryExtensions(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, float a5, float a6)
{
  v7 = *a3;
  *a3 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = -8388608;
  *a1 = &unk_283FDBCB8;
  *(a1 + 32) = a2;
  if (a2)
  {
    atomic_fetch_add((a2 + 8), 1u);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = a5;
  *(a1 + 68) = a4;
  v9 = (*(a2 + 144) + (a5 * *(a2 + 136))) + a6;
  *(a1 + 72) = v9;
  if ((LODWORD(v9) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v10 = (*(**(a1 + 16) + 64))(*(a1 + 16));
    WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::operator=((a1 + 40), v10);
    v11 = *(a1 + 40);
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = -8;
      do
      {
        v14 = *(a1 + 48);
        v15 = v14 + 8 * v11;
        v16 = *(v14 + 8 * v12);
        *(v14 + 8 * v12) = 0;
        v17 = *(v15 + v13);
        *(v15 + v13) = 0;
        v18 = *(v14 + 8 * v12);
        *(v14 + 8 * v12) = v17;
        if (v18)
        {
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v18);
        }

        v19 = *(v15 + v13);
        *(v15 + v13) = v16;
        if (v19)
        {
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v19);
        }

        ++v12;
        v11 = *v8;
        v13 -= 8;
      }

      while (v12 < *v8 >> 1);
    }

    TI::Favonius::SearchNodeGeometryExtensions::set_bound_on_score(a1);
  }

  return a1;
}

unint64_t *WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::operator=(unint64_t *a1, unint64_t *a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v4 = *a1;
  v5 = *a2;
  if (*a1 > *a2)
  {
    v6 = (a1[1] + 8 * v5);
    v7 = 8 * v4 - 8 * v5;
    do
    {
      if (*v6)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(*v6);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
    *a1 = v5;
    goto LABEL_20;
  }

  v8 = a1[2];
  if (v5 <= v8)
  {
    v5 = *a1;
    goto LABEL_20;
  }

  if (v8)
  {
    if (v4)
    {
      v9 = a1[1];
      v10 = 8 * v4;
      do
      {
        if (*v9)
        {
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(*v9);
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
      *a1 = 0;
    }

    v11 = a1[1];
    a1[1] = 0;
    a1[2] = 0;
    free(v11);
    v5 = *a2;
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a1, v5);
  if (a1[1])
  {
    v5 = *a1;
LABEL_20:
    v12 = a2[1];
    if (v5)
    {
      v13 = a1[1];
      v14 = 8 * v5;
      do
      {
        v15 = *v12;
        if (*v12)
        {
          atomic_fetch_add(v15, 1u);
        }

        v16 = *v13;
        *v13 = v15;
        if (v16)
        {
          WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
        }

        ++v12;
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v12 = a2[1];
      v17 = *a1;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != *a2)
    {
      v18 = (a1[1] + 8 * v17);
      v19 = &v12[v17];
      v20 = 8 * *a2 - 8 * v17;
      do
      {
        v21 = *v19;
        *v18 = *v19;
        if (v21)
        {
          atomic_fetch_add(v21, 1u);
        }

        ++v18;
        ++v19;
        v20 -= 8;
      }

      while (v20);
      v17 = *a2;
    }

    *a1 = v17;
  }

  return a1;
}

void KB::InputManagerSpecializationTransliteration::~InputManagerSpecializationTransliteration(KB::InputManagerSpecializationTransliteration *this)
{
  *this = &unk_283FD8FA0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FD8FA0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
}

void std::__shared_ptr_emplace<KB::InputManagerSpecializationTransliteration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDBDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void TI::Favonius::SearchNodeLanguageExtensions::decrease_bound_on_score(TI::Favonius::SearchNodeLanguageExtensions *this)
{
  if ((*(this + 52) & 1) == 0)
  {
    TI::Favonius::SearchNode::get_language_extensions(*(this + 4), this + 7);
    *(this + 52) = 1;
    v3 = *(this + 7);
    v4 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeLanguageExtensions::LetterExtensionComparator &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(*(this + 8), (*(this + 8) + 8 * v3), v5, 1);

    TI::Favonius::SearchNodeLanguageExtensions::set_bound_on_score(this);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeLanguageExtensions::LetterExtensionComparator &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 1;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v8, v8 + 1, v7);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v8, v8 + 1, v8 + 2, v7);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v7);
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
        v58 = (*(**v7 + 24))();
        if (v58 < (*(**v8 + 24))())
        {
          v59 = *v8;
          *v8 = *v7;
          *v7 = v59;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v77 = v10 >> 1;
      v78 = v10 >> 1;
      do
      {
        v79 = v78;
        if (v77 >= v78)
        {
          v80 = (2 * v78) | 1;
          v81 = &v8[v80];
          if (2 * v78 + 2 < v9)
          {
            v82 = (*(**v81 + 24))();
            if (v82 < (*(*v81[1] + 24))(v81[1]))
            {
              ++v81;
              v80 = 2 * v79 + 2;
            }
          }

          v83 = &v8[v79];
          v84 = (*(**v81 + 24))();
          if (v84 >= (*(**v83 + 24))())
          {
            v85 = *v83;
            *v83 = 0;
            do
            {
              v86 = v81;
              v87 = *v81;
              *v81 = 0;
              v88 = *v83;
              *v83 = v87;
              if (v88)
              {
                v89 = atomic_load(v88 + 2);
                if (v89 == 1)
                {
                  (*(*v88 + 248))(v88);
                }

                else
                {
                  atomic_fetch_add(v88 + 2, 0xFFFFFFFF);
                }
              }

              if (v77 < v80)
              {
                break;
              }

              v90 = 2 * v80;
              v80 = (2 * v80) | 1;
              v81 = &v8[v80];
              v91 = v90 + 2;
              if (v90 + 2 < v9)
              {
                v92 = (*(**v81 + 24))();
                if (v92 < (*(*v81[1] + 24))(v81[1]))
                {
                  ++v81;
                  v80 = v91;
                }
              }

              v93 = (*(**v81 + 24))();
              v83 = v86;
            }

            while (v93 >= (*(*v85 + 24))(v85));
            v94 = *v86;
            *v86 = v85;
            if (v94)
            {
              v95 = atomic_load(v94 + 2);
              if (v95 == 1)
              {
                (*(*v94 + 248))(v94);
              }

              else
              {
                atomic_fetch_add(v94 + 2, 0xFFFFFFFF);
              }
            }
          }
        }

        v78 = v79 - 1;
      }

      while (v79);
      while (1)
      {
        if (v9 < 2)
        {
          goto LABEL_163;
        }

        v96 = 0;
        v97 = *a1;
        *a1 = 0;
        v98 = a1;
        do
        {
          v99 = v98;
          v100 = &v98[v96];
          v98 = v100 + 1;
          v101 = 2 * v96;
          v96 = (2 * v96) | 1;
          v102 = v101 + 2;
          if (v101 + 2 < v9)
          {
            v103 = (*(*v100[1] + 24))(v100[1]);
            v105 = v100[2];
            v104 = v100 + 2;
            if (v103 < (*(*v105 + 24))(v105))
            {
              v98 = v104;
              v96 = v102;
            }
          }

          v106 = *v98;
          *v98 = 0;
          v107 = *v99;
          *v99 = v106;
          if (v107)
          {
            v108 = atomic_load(v107 + 2);
            if (v108 == 1)
            {
              (*(*v107 + 248))(v107);
            }

            else
            {
              atomic_fetch_add(v107 + 2, 0xFFFFFFFF);
            }
          }
        }

        while (v96 <= ((v9 - 2) >> 1));
        v109 = a2 - 1;
        if (v98 != (a2 - 1))
        {
          break;
        }

        v113 = *v98;
        *v98 = v97;
        if (v113)
        {
LABEL_160:
          v128 = atomic_load(v113 + 2);
          if (v128 == 1)
          {
            (*(*v113 + 248))(v113);
          }

          else
          {
            atomic_fetch_add(v113 + 2, 0xFFFFFFFF);
          }
        }

LABEL_163:
        --a2;
        v117 = v9-- > 2;
        if (!v117)
        {
          return;
        }
      }

      v110 = *v109;
      *v109 = 0;
      v111 = *v98;
      *v98 = v110;
      if (v111)
      {
        v112 = atomic_load(v111 + 2);
        if (v112 == 1)
        {
          (*(*v111 + 248))(v111);
        }

        else
        {
          atomic_fetch_add(v111 + 2, 0xFFFFFFFF);
        }
      }

      v114 = *v109;
      *v109 = v97;
      if (v114)
      {
        v115 = atomic_load(v114 + 2);
        if (v115 == 1)
        {
          (*(*v114 + 248))(v114);
        }

        else
        {
          atomic_fetch_add(v114 + 2, 0xFFFFFFFF);
        }
      }

      v116 = ((v98 + 1) - a1) >> 3;
      v117 = v116 < 2;
      v118 = v116 - 2;
      if (v117)
      {
        goto LABEL_163;
      }

      v119 = v118 >> 1;
      v120 = &a1[v118 >> 1];
      v121 = (*(**v120 + 24))();
      if (v121 >= (*(**v98 + 24))())
      {
        goto LABEL_163;
      }

      v122 = *v98;
      *v98 = 0;
      while (1)
      {
        v123 = v120;
        v124 = *v120;
        *v120 = 0;
        v125 = *v98;
        *v98 = v124;
        if (v125)
        {
          v126 = atomic_load(v125 + 2);
          if (v126 != 1)
          {
            atomic_fetch_add(v125 + 2, 0xFFFFFFFF);
            if (!v119)
            {
              goto LABEL_159;
            }

            goto LABEL_158;
          }

          (*(*v125 + 248))(v125);
        }

        if (!v119)
        {
          goto LABEL_159;
        }

LABEL_158:
        v119 = (v119 - 1) >> 1;
        v120 = &a1[v119];
        v127 = (*(**v120 + 24))();
        v98 = v123;
        if (v127 >= (*(*v122 + 24))(v122))
        {
LABEL_159:
          v113 = *v123;
          *v123 = v122;
          if (v113)
          {
            goto LABEL_160;
          }

          goto LABEL_163;
        }
      }
    }

    v11 = v9 >> 1;
    v12 = &v8[v9 >> 1];
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(&a1[v9 >> 1], a1, v7);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1, &a1[v9 >> 1], v7);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1 + 1, v12 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(a1 + 2, &a1[v11 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,0>(v12 - 1, &a1[v9 >> 1], &a1[v11 + 1]);
      v13 = *a1;
      *a1 = *v12;
      *v12 = v13;
    }

    --a3;
    if ((a4 & 1) != 0 || (v14 = (*(**(a1 - 1) + 24))(*(a1 - 1)), v14 < (*(**a1 + 24))()))
    {
      v15 = *a1;
      *a1 = 0;
      v16 = a1;
      do
      {
        v17 = v16;
        v18 = v16[1];
        ++v16;
        v19 = (*(*v18 + 24))(v18);
      }

      while (v19 < (*(*v15 + 24))(v15));
      v20 = a2;
      if (v17 == a1)
      {
        v20 = a2;
        do
        {
          if (v16 >= v20)
          {
            break;
          }

          v23 = *--v20;
          v24 = (*(*v23 + 24))(v23);
        }

        while (v24 >= (*(*v15 + 24))(v15));
      }

      else
      {
        do
        {
          v21 = *--v20;
          v22 = (*(*v21 + 24))(v21);
        }

        while (v22 >= (*(*v15 + 24))(v15));
      }

      if (v16 < v20)
      {
        v25 = v16;
        v26 = v20;
        do
        {
          v27 = *v25;
          *v25 = *v26;
          *v26 = v27;
          do
          {
            v17 = v25;
            v28 = v25[1];
            ++v25;
            v29 = (*(*v28 + 24))(v28);
          }

          while (v29 < (*(*v15 + 24))(v15));
          do
          {
            v30 = *--v26;
            v31 = (*(*v30 + 24))(v30);
          }

          while (v31 >= (*(*v15 + 24))(v15));
        }

        while (v25 < v26);
      }

      if (v17 != a1)
      {
        v32 = *v17;
        *v17 = 0;
        v33 = *a1;
        *a1 = v32;
        if (v33)
        {
          v34 = atomic_load(v33 + 2);
          if (v34 == 1)
          {
            (*(*v33 + 248))(v33);
          }

          else
          {
            atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
          }
        }
      }

      v35 = *v17;
      *v17 = v15;
      if (v35)
      {
        v36 = atomic_load(v35 + 2);
        if (v36 == 1)
        {
          (*(*v35 + 248))(v35);
        }

        else
        {
          atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
        }
      }

      if (v16 < v20)
      {
LABEL_42:
        std::__introsort<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeLanguageExtensions::LetterExtensionComparator &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(a1, v17, a3, a4 & 1);
        a4 = 0;
        v8 = v17 + 1;
      }

      else
      {
        v37 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *>(a1, v17);
        v8 = v17 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,TI::CP::SearchNodeLanguageExtensions::decrease_bound_on_score(void)::$_0 &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *>(v17 + 1, a2))
        {
          a2 = v17;
          if (v37)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v37)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v38 = *a1;
      *a1 = 0;
      v39 = (*(*v38 + 24))(v38);
      if (v39 >= (*(**v7 + 24))())
      {
        v42 = a1 + 1;
        do
        {
          v8 = v42;
          if (v42 >= a2)
          {
            break;
          }

          v43 = (*(*v38 + 24))(v38);
          ++v42;
        }

        while (v43 >= (*(**v8 + 24))());
      }

      else
      {
        v8 = a1;
        do
        {
          v40 = (*(*v38 + 24))(v38);
          v41 = v8[1];
          ++v8;
        }

        while (v40 >= (*(*v41 + 24))(v41));
      }

      v44 = a2;
      if (v8 < a2)
      {
        v44 = a2;
        do
        {
          v45 = (*(*v38 + 24))(v38);
          v46 = *--v44;
        }

        while (v45 < (*(*v46 + 24))(v46));
      }

      while (v8 < v44)
      {
        v47 = *v8;
        *v8 = *v44;
        *v44 = v47;
        do
        {
          v48 = (*(*v38 + 24))(v38);
          v49 = v8[1];
          ++v8;
        }

        while (v48 >= (*(*v49 + 24))(v49));
        do
        {
          v50 = (*(*v38 + 24))(v38);
          v51 = *--v44;
        }

        while (v50 < (*(*v51 + 24))(v51));
      }

      v52 = v8 - 1;
      if (v8 - 1 != a1)
      {
        v53 = *v52;
        *v52 = 0;
        v54 = *a1;
        *a1 = v53;
        if (v54)
        {
          v55 = atomic_load(v54 + 2);
          if (v55 == 1)
          {
            (*(*v54 + 248))(v54);
          }

          else
          {
            atomic_fetch_add(v54 + 2, 0xFFFFFFFF);
          }
        }
      }

      a4 = 0;
      v56 = *v52;
      *v52 = v38;
      if (v56)
      {
        v57 = atomic_load(v56 + 2);
        if (v57 == 1)
        {
          (*(*v56 + 248))(v56);
          a4 = 0;
        }

        else
        {
          a4 = 0;
          atomic_fetch_add(v56 + 2, 0xFFFFFFFF);
        }
      }
    }
  }

  v60 = v8 + 1;
  v62 = v8 == a2 || v60 == a2;
  if ((a4 & 1) == 0)
  {
    if (!v62)
    {
      do
      {
        v129 = a1;
        a1 = v60;
        v130 = (*(*v129[1] + 24))(v129[1]);
        if (v130 < (*(**v129 + 24))())
        {
          v131 = 0;
          v132 = *a1;
          *a1 = 0;
          v133 = a1;
          do
          {
            v134 = *(v133 - 1);
            *(v133 - 1) = 0;
            *v133 = v134;
            if (v131)
            {
              v135 = atomic_load(v131 + 2);
              if (v135 == 1)
              {
                (*(*v131 + 248))(v131);
              }

              else
              {
                atomic_fetch_add(v131 + 2, 0xFFFFFFFF);
              }
            }

            v136 = (*(*v132 + 24))(v132);
            v137 = (*(**(v133 - 2) + 24))(*(v133 - 2));
            v138 = *--v133;
            v131 = v138;
          }

          while (v136 < v137);
          *v133 = v132;
          if (v131)
          {
            v139 = atomic_load(v131 + 2);
            if (v139 == 1)
            {
              (*(*v131 + 248))(v131);
            }

            else
            {
              atomic_fetch_add(v131 + 2, 0xFFFFFFFF);
            }
          }
        }

        v60 = a1 + 1;
      }

      while (a1 + 1 != a2);
    }

    return;
  }

  if (v62)
  {
    return;
  }

  v63 = 0;
  v64 = v8;
  while (2)
  {
    v65 = v64;
    v64 = v60;
    v66 = (*(*v65[1] + 24))(v65[1]);
    if (v66 >= (*(**v65 + 24))())
    {
      goto LABEL_104;
    }

    v67 = 0;
    v68 = *v64;
    *v64 = 0;
    v69 = v63;
    while (2)
    {
      v70 = (a1 + v69);
      v71 = *(a1 + v69);
      *v70 = 0;
      v70[1] = v71;
      if (!v67)
      {
LABEL_94:
        if (!v69)
        {
          break;
        }

        goto LABEL_97;
      }

      v72 = atomic_load(v67 + 2);
      if (v72 == 1)
      {
        (*(*v67 + 248))(v67);
        goto LABEL_94;
      }

      atomic_fetch_add(v67 + 2, 0xFFFFFFFF);
      if (v69)
      {
LABEL_97:
        v73 = (a1 + v69);
        v74 = (*(*v68 + 24))(v68);
        if (v74 >= (*(**(v73 - 1) + 24))(*(v73 - 1)))
        {
          goto LABEL_100;
        }

        v67 = *v70;
        v69 -= 8;
        continue;
      }

      break;
    }

    v73 = a1;
LABEL_100:
    v75 = *v73;
    *v73 = v68;
    if (v75)
    {
      v76 = atomic_load(v75 + 2);
      if (v76 == 1)
      {
        (*(*v75 + 248))(v75);
      }

      else
      {
        atomic_fetch_add(v75 + 2, 0xFFFFFFFF);
      }
    }

LABEL_104:
    v60 = v64 + 1;
    v63 += 8;
    if (v64 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void TI::Favonius::SearchNodeLanguageExtensions::set_bound_on_score(TI::Favonius::SearchNodeLanguageExtensions *this)
{
  if (*(this + 52))
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = *(*(this + 8) + 8 * v2 - 8);
      v4 = (*(*v3 + 24))(v3);
      v5 = *(this + 12);
      v6 = *(this + 10);
      v7 = v5 + (v6 * logf(v4));
    }

    else
    {
      v7 = -INFINITY;
    }
  }

  else
  {
    v7 = *(this + 12);
  }

  *(this + 6) = v7;
}

TI::Favonius::SearchNodeLanguageExtensions *TI::Favonius::SearchNodeLanguageExtensions::branch_at_current_bound@<X0>(TI::Favonius::SearchNodeLanguageExtensions *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = this;
    v5 = *(this + 8);
    v6 = *(v5 + 8 * v3 - 8);
    if (v6)
    {
      atomic_fetch_add((v6 + 8), 1u);
      v3 = *(this + 7);
      v5 = *(this + 8);
    }

    v7 = v3 - 1;
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((v5 + 8 * (v3 - 1)), (v5 + 8 * v3));
    *(v4 + 7) = v7;
    TI::Favonius::SearchNodeLanguageExtensions::set_bound_on_score(v4);
    v8 = *(v4 + 4);
    operator new();
  }

  *a2 = 0;
  return this;
}

void TI::Favonius::SearchNodeLanguageExtensions::~SearchNodeLanguageExtensions(TI::Favonius::SearchNodeLanguageExtensions *this)
{
  TI::Favonius::SearchNodeLanguageExtensions::~SearchNodeLanguageExtensions(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBEB0;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 56);
  v2 = *(this + 4);
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

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

uint64_t __Block_byref_object_copy__13855(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___createFilterQueryForQueryString_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
  v0 = [v3 objectForKey:@"shouldUseTokenizedQuery"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  _createFilterQueryForQueryString___shouldUseTokenizedFilterQuery = v2;
}

void __TIGetShowStickersValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"ShowStickers" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

void _stickersAddedOrDeletedNotificationCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 _clearSpotlightCaches];
  }
}

void TI::Favonius::SearchNodeSource::~SearchNodeSource(TI::Favonius::SearchNodeSource *this)
{
  *this = &unk_283FDBF78;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = atomic_load(v1 + 2);
    if (v2 == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      atomic_fetch_add(v1 + 2, 0xFFFFFFFF);
    }
  }
}

TI::Favonius::SearchNodeTransposition *TI::Favonius::SearchNodeTransposition::SearchNodeTransposition(TI::Favonius::SearchNodeTransposition *a1, void *a2, uint64_t *a3, unsigned int **a4)
{
  v7 = *a4;
  *a4 = 0;
  v14 = v7;
  TI::Favonius::SearchNode::SearchNode(a1, a2, &v14);
  if (v14)
  {
    v8 = atomic_load(v14 + 2);
    if (v8 == 1)
    {
      (*(*v14 + 248))();
    }

    else
    {
      atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
    }
  }

  *a1 = &unk_283FDBFC0;
  v9 = a2[28];
  *(a1 + 28) = v9;
  if (v9)
  {
    atomic_fetch_add((v9 + 8), 1u);
  }

  v10 = a2[29];
  *(a1 + 29) = v10;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = a2[30];
  *(a1 + 30) = v11;
  if (v11)
  {
    atomic_fetch_add((v11 + 8), 1u);
  }

  v12 = *a3;
  *a3 = 0;
  *(a1 + 31) = v12;
  *(a1 + 32) = 0;
  *(a1 + 33) = 0;
  *(a1 + 34) = 0;
  if (!*(a1 + 7))
  {
    TI::Favonius::SearchNodeTransposition::set_bound_on_score(a1);
  }

  return a1;
}

float TI::Favonius::SearchNodeTransposition::set_bound_on_score(TI::Favonius::SearchNodeTransposition *this)
{
  v2 = *(*(this + 6) + 32);
  v3 = v2 + (*(**(this + 2) + 24))(*(this + 2));
  v4 = *(this + 30);
  if (!v4)
  {
    v3 = v3 + *(*(this + 29) + 32);
    v5 = *(this + 4);
    if (!*(v5 + 32))
    {
      goto LABEL_5;
    }

    v4 = *(v5 + 128);
  }

  v3 = v3 + (*(*v4 + 16))(v4);
  v5 = *(this + 4);
LABEL_5:
  v6 = *(v5 + 136);
  v7 = *(this + 31);
  if (v7)
  {
    v8 = (*(*v7 + 24))(v7);
    v6 = v6 + logf(v8);
  }

  result = v3 + (*(this + 38) * v6);
  *(this + 6) = result;
  return result;
}

void TI::Favonius::SearchNodeTransposition::set_language_scores_from_parent_and_typing_hypothesis(TI::Favonius::SearchNodeTransposition *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    v1 = *(this + 31);
  }

  TI::Favonius::SearchNode::set_language_scores_from_parent_and_typing_hypothesis(this, v1);
}

unsigned int *TI::Favonius::SearchNodeTransposition::compute_geometry_model_data(TI::Favonius::SearchNodeTransposition *this)
{
  if (!*(this + 30))
  {
    v2 = *(*(this + 4) + 128);
    v3 = *(this + 28);
    v18 = v3;
    if (v3)
    {
      atomic_fetch_add((v3 + 8), 1u);
    }

    v4 = *(this + 29);
    v17 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    (*(*v2 + 48))(&v19);
    v5 = *(this + 30);
    v6 = v19;
    v19 = 0;
    *(this + 30) = v6;
    if (v5)
    {
      v7 = atomic_load(v5 + 2);
      if (v7 == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
      }

      if (v19)
      {
        v8 = atomic_load(v19 + 2);
        if (v8 == 1)
        {
          (*(*v19 + 8))();
        }

        else
        {
          atomic_fetch_add(v19 + 2, 0xFFFFFFFF);
        }
      }
    }

    if (v17)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v17);
    }

    if (v18)
    {
      v9 = atomic_load(v18 + 2);
      if (v9 == 1)
      {
        (*(*v18 + 8))();
      }

      else
      {
        atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
      }
    }
  }

  v10 = *(this + 6);
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  v11 = *(this + 30);
  v12 = *(this + 2);
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add((v12 + 8), 1u);
  }

  v15 = v10;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  (*(*v11 + 56))(v11, &v16, &v15);
  if (v15)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v15);
  }

  result = v16;
  if (v16)
  {
    v14 = atomic_load(v16 + 2);
    if (v14 == 1)
    {
      result = (*(*v16 + 8))();
    }

    else
    {
      atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
    }
  }

  if (v10)
  {
    return WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v10);
  }

  return result;
}

uint64_t TI::Favonius::SearchNodeTransposition::compute_language_model_data(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 232) + 8);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  (*(**(a1 + 248) + 40))(*(a1 + 248), a2, &v4);
  result = v4;
  if (v4)
  {
    return WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  return result;
}

void TI::Favonius::SearchNodeTransposition::append_local_keys_for_debugging(TI::Favonius::SearchNodeTransposition *this, KB::String *a2)
{
  KB::String::append(a2, 0x7Bu);
  TI::Favonius::Key::append_debug_data(*(*(this + 29) + 8), a2);
  TI::Favonius::SearchNode::append_local_keys_for_debugging(this, a2);

  KB::String::append(a2, 0x7Du);
}

BOOL TI::Favonius::SearchNodeTransposition::clone_discarding_second_touch_with_parent@<W0>(TI::Favonius::SearchNodeTransposition *this@<X0>, TI::Favonius::SearchNode *a2@<X1>, void *a3@<X8>)
{
  v4 = (this + 88);
  v5 = (*(*(**(a2 + 7) + 16))(*(a2 + 7)) + 8);
  if (v4 == v5 || (result = KB::String::equal(v4, v5, 1)))
  {
    operator new();
  }

  *a3 = 0;
  return result;
}

float TI::Favonius::SearchNodeTransposition::decrease_bound_on_score(TI::Favonius::SearchNodeTransposition *this)
{
  v2 = *(this + 32);
  if (*(this + 31))
  {
    if (!v2)
    {

      return TI::Favonius::SearchNode::decrease_bound_on_score(this);
    }
  }

  else if (!v2)
  {
    v4 = *(*(this + 6) + 8);
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    TI::Favonius::SearchNode::get_language_extensions(*(this + 4), this + 32, &v15);
    if (v15)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v15);
    }

    v6 = *(this + 32);
    v5 = *(this + 33);
    v15 = &__block_literal_global_14010;
    v7 = 126 - 2 * __clz(v6);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::TypingHypothesis> const&,WTF::RefPtr<TI::Favonius::TypingHypothesis> const&),WTF::RefPtr<TI::Favonius::TypingHypothesis>*,false>(v5, (v5 + 8 * v6), &v15, v8, 1);
    v2 = *(this + 32);
  }

  v9 = *(this + 33) + 8 * v2;
  v10 = *(v9 - 8);
  *(v9 - 8) = 0;
  v11 = *(this + 31);
  *(this + 31) = v10;
  if (v11)
  {
    v12 = atomic_load(v11 + 2);
    if (v12 == 1)
    {
      (*(*v11 + 248))(v11);
    }

    else
    {
      atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
    }
  }

  v13 = *(this + 32);
  v14 = v13 - 1;
  WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((*(this + 33) + 8 * (v13 - 1)), (*(this + 33) + 8 * v13));
  *(this + 32) = v14;
  return TI::Favonius::SearchNodeTransposition::set_bound_on_score(this);
}

void *TI::Favonius::SearchNodeTransposition::branch_at_current_bound@<X0>(TI::Favonius::SearchNodeTransposition *this@<X0>, void *a2@<X8>)
{
  if (*(this + 32))
  {
    operator new();
  }

  return TI::Favonius::SearchNode::branch_at_current_bound(this, a2);
}

uint64_t TI::Favonius::SearchNodeTransposition::node_at_current_bound@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (!*(this + 64) && *(this + 148) == 1 && *(this + 149) == 1)
  {
    *(this + 149) = 0;
    *(this + 24) = -8388608;
    *a2 = this;
    atomic_fetch_add((this + 8), 1u);
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

atomic_uint *TI::Favonius::SearchNodeTransposition::clone_substituting_touch@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = (*(**a2 + 72))(*a2, *(*(*(a1 + 48) + 8) + 62));
  if (result)
  {
    atomic_fetch_add(result, 1u);
    operator new();
  }

  *a3 = 0;
  return result;
}

void TI::Favonius::SearchNodeTransposition::~SearchNodeTransposition(TI::Favonius::SearchNodeTransposition *this)
{
  TI::Favonius::SearchNodeTransposition::~SearchNodeTransposition(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBFC0;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 256);
  v2 = *(this + 31);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 248))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 30);
  if (v4)
  {
    v5 = atomic_load(v4 + 2);
    if (v5 == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    }
  }

  v6 = *(this + 29);
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v6);
  }

  v7 = *(this + 28);
  if (v7)
  {
    v8 = atomic_load(v7 + 2);
    if (v8 == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNode::~SearchNode(this);
}

unsigned int *TI::Favonius::SearchNodeSkippingTouch::compute_geometry_model_data(TI::Favonius::SearchNodeSkippingTouch *this)
{
  v2 = *(*(this + 4) + 128);
  v3 = *(this + 2);
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add((v3 + 8), 1u);
  }

  (*(*v2 + 80))(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = atomic_load(v6 + 2);
    if (v5 == 1)
    {
      return (*(*v6 + 8))();
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

void TI::Favonius::SearchNodeSkippingTouch::clone_with_parent(TI::Favonius::SearchNodeSkippingTouch *this, TI::Favonius::SearchNode *a2)
{
  v2 = *(a2 + 7);
  (*(**(this + 7) + 208))(&v3);
  operator new();
}

uint64_t TI::Favonius::SearchNodeSkippingTouch::SearchNodeSkippingTouch(uint64_t a1, uint64_t a2, unsigned int **a3, float a4)
{
  v5 = *a3;
  *a3 = 0;
  v11 = 0;
  v12 = v5;
  v6 = *(a2 + 56);
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add(v6 + 2, 1u);
  }

  TI::Favonius::SearchNode::SearchNode(a1, a2, &v12, &v11, &v10, 0, a4, NAN);
  if (v10)
  {
    v7 = atomic_load(v10 + 2);
    if (v7 == 1)
    {
      (*(*v10 + 248))();
    }

    else
    {
      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
    }
  }

  if (v11)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v11);
  }

  if (v12)
  {
    v8 = atomic_load(v12 + 2);
    if (v8 == 1)
    {
      (*(*v12 + 8))();
    }

    else
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }
  }

  *a1 = &unk_283FDC098;
  *(a1 + 24) = (*(**(a1 + 16) + 40))(*(a1 + 16)) + (*(*(a1 + 32) + 144) + (*(a1 + 152) * *(*(a1 + 32) + 136)));
  return a1;
}

float TI::Favonius::SearchNodeSkippingTouch::decrease_bound_on_score(TI::Favonius::SearchNodeSkippingTouch *this)
{
  if ((*(this + 148) & 1) == 0)
  {
    if (!*(this + 16))
    {
      (*(*this + 120))(&v10, this);
      v2 = *(this + 16);
      v3 = v10;
      v10 = 0;
      *(this + 16) = v3;
      if (v2)
      {
        v4 = atomic_load(v2 + 2);
        if (v4 == 1)
        {
          (*(*v2 + 8))(v2);
        }

        else
        {
          atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
        }

        if (v10)
        {
          v5 = atomic_load(v10 + 2);
          if (v5 == 1)
          {
            (*(*v10 + 8))();
          }

          else
          {
            atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
          }
        }
      }

      *(this + 36) = (*(**(this + 16) + 16))(*(this + 16));
      (*(*this + 136))(this);
    }

    *(this + 148) = (*(*this + 128))(this);
    result = *(this + 38);
    v7 = (this + 144);
    v8 = vld1_dup_f32(v7);
    v9 = vmla_n_f32(v8, *(this + 136), result);
    *(this + 156) = v9;
    *(this + 6) = v9.i32[0];
  }

  return result;
}

void TI::Favonius::SearchNodeSkippingTouch::~SearchNodeSkippingTouch(TI::Favonius::SearchNodeSkippingTouch *this)
{
  TI::Favonius::SearchNode::~SearchNode(this);

  JUMPOUT(0x2318BE270);
}

void TIInlineCompletion::TIInlineCompletion(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  this[2].__r_.__value_.__s.__data_[16] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = v7;
  this[2].__r_.__value_.__r.__words[0] = v6;
  this[3].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 72) == 1)
  {
    MEMORY[0x2318BDB20]();
    this[3].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t std::pair<TIInlineCompletion,unsigned long>::pair[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  *(a1 + 64) = 0;
  v8 = a1 + 64;
  *(v8 - 8) = v7;
  *(v8 - 16) = v6;
  *(v8 + 8) = 0;
  if (*(a2 + 72) == 1)
  {
    language_modeling::v1::InlineCompletion::InlineCompletion();
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = *(a2 + 10);
  return a1;
}

uint64_t std::pair<TIInlineCompletion,unsigned long>::~pair(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 64));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void TIInlineCompletionsCache::clear(TIInlineCompletionsCache *this)
{
  if (*(this + 192) == 1)
  {
    v6[3] = v1;
    v6[4] = v2;
    if (*(this + 184) == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion((this + 176));
    }

    if (*(this + 159) < 0)
    {
      operator delete(*(this + 17));
    }

    if (*(this + 135) < 0)
    {
      operator delete(*(this + 14));
    }

    v6[0] = (this + 88);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v6);
    language_modeling::v1::LinguisticContext::~LinguisticContext((this + 80));
    language_modeling::v1::LinguisticContext::~LinguisticContext((this + 72));
    v4 = *(this + 3);
    if (v4)
    {
      *(this + 4) = v4;
      operator delete(v4);
    }

    v5 = *(this + 2);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    *(this + 192) = 0;
  }
}

unsigned int *TI::Favonius::SearchNodeInsertingKey::compute_geometry_model_data(TI::Favonius::SearchNodeInsertingKey *this)
{
  *(this + 61) = 0;
  v2 = *(this + 29);
  v3 = *(this + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add((v3 + 8), 1u);
  }

  v4 = *(this + 6);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  (*(*v2 + 48))(v2, &v8, &v7);
  if (v7)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v7);
  }

  result = v8;
  if (v8)
  {
    v6 = atomic_load(v8 + 2);
    if (v6 == 1)
    {
      return (*(*v8 + 8))();
    }

    else
    {
      atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t TI::Favonius::SearchNodeInsertingKey::compute_language_model_data(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = 0;
  v2 = *(*(a1 + 48) + 8);
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  (*(**(a1 + 224) + 40))(*(a1 + 224), a2, &v4);
  result = v4;
  if (v4)
  {
    return WTF::RefCounted<TI::Favonius::Key>::deref(v4);
  }

  return result;
}

uint64_t *TI::Favonius::SearchNodeInsertingKey::append_local_keys_for_debugging(TI::Favonius::SearchNodeInsertingKey *this, KB::String *a2)
{
  KB::String::append(a2, 0x7Bu);
  v4 = (*(**(this + 28) + 16))(*(this + 28));
  TI::Favonius::Key::append_debug_data(*v4, a2);
  KB::String::append(a2, 0x7Du);

  return TI::Favonius::SearchNode::append_local_keys_for_debugging(this, a2);
}

void TI::Favonius::SearchNodeInsertingKey::clone_with_parent(TI::Favonius::SearchNodeInsertingKey *this, TI::Favonius::SearchNode *a2)
{
  if (*(a2 + 4) || (*(*(*(**(this + 28) + 16))(*(this + 28)) + 60) & 0x20) == 0)
  {
    v4 = *(a2 + 7);
    (*(**(this + 28) + 208))(&v10);
    v5 = v10;
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add(v6 + 2, 1u);
    }

    v7 = *(*(*v5 + 16))(v5);
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    (*(*v6 + 72))(&v10, v6, &v9, *(this + 2));
    v10 = 0;
    if (v9)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v9);
    }

    v8 = atomic_load(v6 + 2);
    if (v8 == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
    }

    (*(**(this + 7) + 208))(&v10);
    operator new();
  }

  TI::Favonius::SearchNode::clone_with_parent(this, a2);
}

uint64_t TI::Favonius::SearchNodeInsertingKey::SearchNodeInsertingKey(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int **a7, void *a8, float a9, float a10)
{
  v14 = *a3;
  *a3 = 0;
  v15 = *a6;
  *a6 = 0;
  v21 = v15;
  v22 = v14;
  v16 = *a7;
  *a7 = 0;
  v20 = v16;
  TI::Favonius::SearchNode::SearchNode(a1, a2, &v22, &v21, &v20, a8, a9, NAN);
  if (v20)
  {
    v17 = atomic_load(v20 + 2);
    if (v17 == 1)
    {
      (*(*v20 + 248))();
    }

    else
    {
      atomic_fetch_add(v20 + 2, 0xFFFFFFFF);
    }
  }

  if (v21)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v21);
  }

  if (v22)
  {
    v18 = atomic_load(v22 + 2);
    if (v18 == 1)
    {
      (*(*v22 + 8))();
    }

    else
    {
      atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
    }
  }

  *a1 = &unk_283FDC150;
  *(a1 + 224) = a4;
  if (a4)
  {
    atomic_fetch_add((a4 + 8), 1u);
  }

  *(a1 + 232) = a5;
  if (a5)
  {
    atomic_fetch_add((a5 + 8), 1u);
  }

  *(a1 + 240) = a10;
  *(a1 + 244) = (*(**(a1 + 16) + 32))(*(a1 + 16));
  if (*(a1 + 32) && (*(*(*(**(a1 + 224) + 16))(*(a1 + 224)) + 60) & 0x20) != 0)
  {
    ++*(a1 + 168);
  }

  *(a1 + 24) = (*(a1 + 24) + *(a1 + 240)) + *(a1 + 244);
  return a1;
}

float TI::Favonius::SearchNodeInsertingKey::decrease_bound_on_score(TI::Favonius::SearchNodeInsertingKey *this)
{
  TI::Favonius::SearchNode::decrease_bound_on_score(this);
  result = (*(this + 6) + *(this + 60)) + *(this + 61);
  *(this + 6) = result;
  return result;
}

atomic_uint *TI::Favonius::SearchNodeInsertingKey::clone_substituting_touch@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = (*(**a2 + 72))(*a2, *(*(*(a1 + 48) + 8) + 62));
  if (result)
  {
    atomic_fetch_add(result, 1u);
    v6 = *(a1 + 152);
    v7 = (*(**(a1 + 224) + 24))(*(a1 + 224));
    logf(v7);
    operator new();
  }

  *a3 = 0;
  return result;
}

void TI::Favonius::SearchNodeInsertingKey::~SearchNodeInsertingKey(TI::Favonius::SearchNodeInsertingKey *this)
{
  TI::Favonius::SearchNodeInsertingKey::~SearchNodeInsertingKey(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDC150;
  v2 = *(this + 29);
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

  v4 = *(this + 28);
  if (v4)
  {
    v5 = atomic_load(v4 + 2);
    if (v5 == 1)
    {
      (*(*v4 + 248))(v4);
    }

    else
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNode::~SearchNode(this);
}

void TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(TIFitAffineMLLMatrix *this, uint64_t a2)
{
  *this = a2;
  *(this + 1) = a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
}

{
  *this = a2;
  *(this + 1) = a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
}

void TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(TIFitAffineMLLMatrix *this, uint64_t a2, uint64_t a3)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
}

{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
}

void *TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(void *a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  a1[3] = 0;
  a1[2] = a1 + 3;
  v6 = (a1 + 2);
  *a1 = a3;
  a1[1] = a2;
  a1[4] = 0;
  v16[0] = 0;
  v7 = a3 * a2;
  if (a3 * a2)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = 0;
    v11 = 8 * a5 - 8;
    do
    {
      v12 = *a4++;
      v13 = v12;
      if (v12 != 0.0)
      {
        v16[1] = v16;
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v6, v10) + 5) = v13;
        v10 = v16[0];
      }

      v16[0] = ++v10;
      if (v10 == v7)
      {
        break;
      }

      v14 = v11;
      v11 -= 8;
    }

    while (v14);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
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

__n128 TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  a1[1].n128_u64[0] = &a1[1].n128_u64[1];
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a1[2].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  a1[1].n128_u64[0] = &a1[1].n128_u64[1];
  return result;
}

void TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(TIFitAffineMLLMatrix *this, const TIFitAffineMLLMatrix *a2)
{
  *this = *a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>(this + 2, *(a2 + 2), a2 + 3);
}

{
  *this = *a2;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>(this + 2, *(a2 + 2), a2 + 3);
}

void *std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = v3[4];
      if (v5[4] < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = v4[4];
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void *TIFitAffineMLLMatrix::operator=@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    goto LABEL_35;
  }

  v5 = *(a2 + 16);
  v6 = (a2 + 24);
  if (*(a1 + 32))
  {
    v8 = (a1 + 24);
    v7 = *(a1 + 24);
    v9 = *(a1 + 16);
    *(a1 + 16) = a1 + 24;
    *(v7 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if (*(v9 + 8))
    {
      v10 = *(v9 + 8);
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::_DetachedTreeCache::__detach_next(v10);
      if (v5 == v6)
      {
        v13 = v10;
      }

      else
      {
        v12 = v5;
        do
        {
          v13 = v11;
          v14 = v12[4];
          v10[4] = v14;
          v10[5] = v12[5];
          v15 = *v8;
          v16 = (a1 + 24);
          v17 = (a1 + 24);
          if (*v8)
          {
            do
            {
              while (1)
              {
                v16 = v15;
                if (v14 >= v15[4])
                {
                  break;
                }

                v15 = *v15;
                v17 = v16;
                if (!*v16)
                {
                  goto LABEL_15;
                }
              }

              v15 = v15[1];
            }

            while (v15);
            v17 = v16 + 1;
          }

LABEL_15:
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at((a1 + 16), v16, v17, v10);
          if (v11)
          {
            v11 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::_DetachedTreeCache::__detach_next(v11);
          }

          else
          {
            v11 = 0;
          }

          v18 = v12[1];
          if (v18)
          {
            do
            {
              v5 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v5 = v12[2];
              v19 = *v5 == v12;
              v12 = v5;
            }

            while (!v19);
          }

          if (!v13)
          {
            break;
          }

          v12 = v5;
          v10 = v13;
        }

        while (v5 != v6);
      }

      std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v13);
      if (!v11)
      {
        goto LABEL_33;
      }

      for (i = v11[2]; i; i = i[2])
      {
        v11 = i;
      }

      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v20);
  }

LABEL_33:
  if (v5 != v6)
  {
    operator new();
  }

LABEL_35:
  *a3 = *a1;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = a3 + 24;
  v22 = *(a1 + 16);

  return std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((a3 + 16), v22, (a1 + 24));
}

char *TIFitAffineMLLMatrix::identity@<X0>(char *this@<X0>, char **a2@<X8>)
{
  *a2 = this;
  a2[1] = this;
  a2[4] = 0;
  a2[3] = 0;
  a2[2] = (a2 + 3);
  if (this)
  {
    v3 = this;
    for (i = 0; i != v3; ++i)
    {
      this = TIFitAffineMLLMatrix::valueAt(a2, i, i);
      *this = 0x3FF0000000000000;
    }
  }

  return this;
}

char *TIFitAffineMLLMatrix::valueAt(TIFitAffineMLLMatrix *this, unint64_t a2, unint64_t a3)
{
  if (*this <= a3)
  {
    v3 = -1;
  }

  else if (*(this + 1) > a2)
  {
    v3 = a3 + *this * a2;
  }

  else
  {
    v3 = -1;
  }

  v14[0] = v3;
  v5 = this + 24;
  v4 = *(this + 3);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = this + 24;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= v3;
    v9 = v7 < v3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 == v5 || v3 < *(v6 + 4))
  {
LABEL_14:
    v14[1] = v14;
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 16, v3)[5] = 0;
    v10 = *v5;
    if (!*v5)
    {
      goto LABEL_22;
    }

    v6 = v5;
    do
    {
      v11 = *(v10 + 4);
      v8 = v11 >= v14[0];
      v12 = v11 < v14[0];
      if (v8)
      {
        v6 = v10;
      }

      v10 = *&v10[8 * v12];
    }

    while (v10);
    if (v6 == v5 || v14[0] < *(v6 + 4))
    {
LABEL_22:
      v6 = v5;
    }
  }

  return v6 + 40;
}

char *TIFitAffineMLLMatrix::diag@<X0>(char *this@<X0>, unint64_t *a2@<X8>)
{
  v4 = *this;
  *a2 = *this;
  a2[1] = v4;
  a2[4] = 0;
  a2[3] = 0;
  a2[2] = (a2 + 3);
  if (v4)
  {
    v5 = this;
    v6 = 0;
    do
    {
      v7 = TIFitAffineMLLMatrix::valueAt(v5, 0, v6);
      this = TIFitAffineMLLMatrix::valueAt(a2, v6, v6);
      *this = v7;
      ++v6;
    }

    while (v6 < *a2);
  }

  return this;
}

double TIFitAffineMLLMatrix::valueAt(TIFitAffineMLLMatrix *this, unint64_t a2, unint64_t a3)
{
  if (*this <= a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = a3 + *this * a2;
    if (*(this + 1) <= a2)
    {
      v3 = -1;
    }
  }

  v6 = *(this + 3);
  v4 = this + 24;
  v5 = v6;
  result = 0.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 4);
      v10 = v9 >= v3;
      v11 = v9 < v3;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[8 * v11];
    }

    while (v5);
    if (v8 != v4 && v3 >= *(v8 + 4))
    {
      return v8[5];
    }
  }

  return result;
}

char *TIFitAffineMLLMatrix::diag@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  *a4 = result;
  a4[1] = result;
  a4[4] = 0;
  a4[3] = 0;
  a4[2] = (a4 + 3);
  if (result && a3)
  {
    v6 = 0;
    v7 = result - 1;
    v8 = 8 * a3 - 8;
    do
    {
      v9 = *(a2 + 8 * v6);
      if (v9 != 0.0)
      {
        result = TIFitAffineMLLMatrix::valueAt(a4, v6, v6);
        *result = v9;
      }

      if (v7 == v6)
      {
        break;
      }

      ++v6;
      v10 = v8;
      v8 -= 8;
    }

    while (v10);
  }

  return result;
}

char *TIFitAffineMLLMatrix::ones@<X0>(char *this@<X0>, uint64_t a2@<X1>, TIFitAffineMLLMatrix *a3@<X8>)
{
  *a3 = a2;
  *(a3 + 1) = this;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *(a3 + 2) = a3 + 24;
  if (this)
  {
    v5 = this;
    for (i = 0; i != v5; ++i)
    {
      if (a2)
      {
        v7 = 0;
        do
        {
          this = TIFitAffineMLLMatrix::valueAt(a3, i, v7);
          *this = 0x3FF0000000000000;
          ++v7;
        }

        while (a2 != v7);
      }
    }
  }

  return this;
}

void TIFitAffineMLLMatrix::clear(TIFitAffineMLLMatrix *this)
{
  v1 = (this + 24);
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(this + 3));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

void TIFitAffineMLLMatrix::values(TIFitAffineMLLMatrix *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 1);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*this)
      {
        TIFitAffineMLLMatrix::valueAt(this, i, 0);
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
      }
    }
  }
}

void TIFitAffineMLLMatrix::setValues(void *a1, double *a2, uint64_t a3)
{
  v6 = a1 + 3;
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1[3]);
  a1[2] = v6;
  v7 = (a1 + 2);
  a1[4] = 0;
  *v6 = 0;
  v15[0] = 0;
  v8 = *a1 * a1[1];
  if (v8)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 8 * a3 - 8;
    do
    {
      v12 = *a2++;
      v13 = v12;
      if (v12 != 0.0)
      {
        v15[1] = v15;
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v7, v10) + 5) = v13;
        v10 = v15[0];
      }

      v15[0] = ++v10;
      if (v10 == v8)
      {
        break;
      }

      v14 = v11;
      v11 -= 8;
    }

    while (v14);
  }
}

void TIFitAffineMLLMatrix::setDiagValues(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 3;
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1[3]);
  a1[2] = v6;
  *v6 = 0;
  a1[4] = 0;
  v7 = a1[1];
  if (v7)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = v7 - 1;
    v11 = 8 * a3 - 8;
    do
    {
      v12 = *(a2 + 8 * v9);
      if (v12 != 0.0)
      {
        if (*a1 <= v9)
        {
          v13 = -1;
        }

        else if (a1[1] > v9)
        {
          v13 = v9 + v9 * *a1;
        }

        else
        {
          v13 = -1;
        }

        v15[0] = v13;
        v15[1] = v15;
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 2), v13) + 5) = v12;
      }

      if (v10 == v9)
      {
        break;
      }

      ++v9;
      v14 = v11;
      v11 -= 8;
    }

    while (v14);
  }
}

unint64_t TIFitAffineMLLMatrix::keyFromIndexes(TIFitAffineMLLMatrix *this, unint64_t a2, unint64_t a3)
{
  if (*this <= a3 || *(this + 1) <= a2)
  {
    return -1;
  }

  else
  {
    return a3 + *this * a2;
  }
}

void TIFitAffineMLLMatrix::setDiagValues(void *a1, uint64_t *a2)
{
  v4 = a1 + 3;
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1[3]);
  a1[2] = v4;
  *v4 = 0;
  a1[4] = 0;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v5)
  {
    v8 = v6 == v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v6 + 8;
    v10 = 1;
    do
    {
      v11 = *(v9 - 8);
      if (v11 != 0.0)
      {
        v12 = v10 - 1;
        if (*a1 <= (v10 - 1))
        {
          v15 = -1;
        }

        else
        {
          v13 = a1[1] > v12;
          v14 = v12 + v12 * *a1;
          if (v13)
          {
            v15 = v14;
          }

          else
          {
            v15 = -1;
          }
        }

        v16[0] = v15;
        v16[1] = v16;
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((a1 + 2), v15) + 5) = v11;
      }

      if (v5 == v10)
      {
        break;
      }

      ++v10;
      v8 = v9 == v7;
      v9 += 8;
    }

    while (!v8);
  }
}

double *TIFitAffineMLLMatrix::addRow@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, TIFitAffineMLLMatrix *a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  *(a4 + 2) = a4 + 24;
  v8 = a1[1];
  result = std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>(a4 + 2, a1[2], a1 + 3);
  ++*(a4 + 1);
  v10 = *a1;
  if (*a1 && a3)
  {
    v11 = 0;
    v12 = 8 * a3 - 8;
    do
    {
      v13 = *(a2 + 8 * v11);
      if (v13 != 0.0)
      {
        result = TIFitAffineMLLMatrix::valueAt(a4, v8, v11);
        *result = v13;
        v10 = *a1;
      }

      if (++v11 == v10)
      {
        break;
      }

      v14 = v12;
      v12 -= 8;
    }

    while (v14);
  }

  return result;
}

void TIFitAffineMLLMatrix::addRow(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  *(a3 + 24) = 0;
  *(a3 + 16) = a3 + 24;
  *a3 = *a1;
  *(a3 + 32) = 0;
  std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((a3 + 16), v5, (a1 + 24));
  ++*(a3 + 8);
  v7[0] = &unk_283FDC208;
  v7[1] = a3;
  v7[2] = &v6;
  v7[3] = v7;
  TIFitAffineMLLMatrix::do_for_each_valid_element(a2, v7);
}

void TIFitAffineMLLMatrix::do_for_each_valid_element(uint64_t a1, uint64_t a2)
{
  v2[8] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::__value_func[abi:nn200100](v2, a2);
  operator new();
}

uint64_t std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t TIFitAffineMLLMatrix::do_for_each_valid_element(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = (result + 24);
  if (v2 != (result + 24))
  {
    while (1)
    {
      v10 = v2[4];
      v5 = *(a2 + 24);
      if (!v5)
      {
        break;
      }

      result = (*(*v5 + 48))(v5, &v10, v2 + 5);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == v3)
      {
        return result;
      }
    }

    v9 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(unsigned long,double const&)>::~__value_func[abi:nn200100](v9);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long,double const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = **(a1 + 8);
  v4 = *a2 / v3;
  v8 = *a2 % v3;
  v9 = v4;
  v5 = *(a1 + 40);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v9, &v8, a3);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::destroy_deallocate(v7);
}

void std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::~__value_func[abi:nn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_283FDC370;
  a2[1] = v2;
  return std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::__value_func[abi:nn200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDC370;
  std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::~__value_func[abi:nn200100]((a1 + 2));

  JUMPOUT(0x2318BE270);
}

void *std::__function::__func<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0,std::allocator<TIFitAffineMLLMatrix::do_for_each_valid_element(std::function<void ()(unsigned long,unsigned long,double const&)>)::$_0>,void ()(unsigned long,double const&)>::~__func(void *a1)
{
  *a1 = &unk_283FDC370;
  std::__function::__value_func<void ()(unsigned long,unsigned long,double const&)>::~__value_func[abi:nn200100]((a1 + 2));
  return a1;
}

char *std::__function::__func<TIFitAffineMLLMatrix::addRow(TIFitAffineMLLMatrix)::$_0,std::allocator<TIFitAffineMLLMatrix::addRow(TIFitAffineMLLMatrix)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  result = TIFitAffineMLLMatrix::valueAt(*(a1 + 8), **(a1 + 16), *a3);
  *result = v4;
  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::addRow(TIFitAffineMLLMatrix)::$_0,std::allocator<TIFitAffineMLLMatrix::addRow(TIFitAffineMLLMatrix)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC208;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void TIFitAffineMLLMatrix::deleteRow(TIFitAffineMLLMatrix *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1) - 1;
  *a3 = *this;
  a3[1] = v3;
  a3[4] = 0;
  a3[3] = 0;
  a3[2] = a3 + 3;
  v4 = a2;
  v5[0] = &unk_283FDC250;
  v5[1] = &v4;
  v5[2] = a3;
  v5[3] = v5;
  TIFitAffineMLLMatrix::do_for_each_valid_element(this, v5);
}

char *std::__function::__func<TIFitAffineMLLMatrix::deleteRow(unsigned long)::$_0,std::allocator<TIFitAffineMLLMatrix::deleteRow(unsigned long)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(char *result, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **(result + 1);
  if (v6 <= v4)
  {
    if (v6 >= v4)
    {
      return result;
    }

    v7 = *a4;
    v8 = *(result + 2);
    --v4;
  }

  else
  {
    v7 = *a4;
    v8 = *(result + 2);
  }

  result = TIFitAffineMLLMatrix::valueAt(v8, v4, v5);
  *result = v7;
  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::deleteRow(unsigned long)::$_0,std::allocator<TIFitAffineMLLMatrix::deleteRow(unsigned long)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC250;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL TIFitAffineMLLMatrix::hasValue(TIFitAffineMLLMatrix *this, unint64_t a2, unint64_t a3)
{
  if (*this <= a3)
  {
    return 0;
  }

  if (*(this + 1) <= a2)
  {
    return 0;
  }

  v3 = a3 + *this * a2;
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *(this + 3);
  v4 = this + 24;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 4);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v4 || v3 < *(v7 + 4))
  {
LABEL_12:
    v7 = v4;
  }

  return v7 != v4;
}

void TIFitAffineMLLMatrix::operator+(__int128 *a1@<X0>, uint64_t a2@<X1>, TIFitAffineMLLMatrix *a3@<X8>)
{
  v4 = *a1;
  *(a3 + 3) = 0;
  *(a3 + 2) = a3 + 24;
  *a3 = v4;
  *(a3 + 4) = 0;
  v5 = *(a1 + 2);
  v6 = a1 + 3;
  v7 = *(a2 + 16);
  v8 = (a2 + 24);
  while (v5 != v6)
  {
    v9 = *(v5 + 4);
    if (v7 == v8)
    {
LABEL_18:
      v17 = *(v5 + 5);
      std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v9)[5] = v17;
      v18 = *(v5 + 1);
      if (v18)
      {
        do
        {
          v5 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v5;
          v5 = *(v5 + 2);
        }

        while (*v5 != v19);
      }
    }

    else
    {
      v10 = *(v7 + 4);
      if (v9 == v10)
      {
        v11 = v5[5] + v7[5];
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v9) + 5) = v11;
        v12 = *(v5 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v5 + 2);
            v14 = *v13 == v5;
            v5 = v13;
          }

          while (!v14);
        }

        v15 = *(v7 + 1);
        if (v15)
        {
          do
          {
            v7 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v7;
            v7 = *(v7 + 2);
          }

          while (*v7 != v16);
        }

        v5 = v13;
      }

      else
      {
        if (v9 < v10)
        {
          goto LABEL_18;
        }

LABEL_23:
        v20 = *(v7 + 5);
        std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v10)[5] = v20;
        v21 = *(v7 + 1);
        if (v21)
        {
          do
          {
            v7 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v7;
            v7 = *(v7 + 2);
          }

          while (*v7 != v22);
        }
      }
    }
  }

  if (v7 != v8)
  {
    v10 = *(v7 + 4);
    goto LABEL_23;
  }

  TIFitAffineMLLMatrix::removeDefaults(a3);
}

void TIFitAffineMLLMatrix::removeDefaults(TIFitAffineMLLMatrix *this)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20[0] = &unk_283FDC490;
  v20[1] = &v17;
  v20[3] = v20;
  TIFitAffineMLLMatrix::do_for_each_valid_element(this, v20);
  std::__function::__value_func<void ()(unsigned long,double const&)>::~__value_func[abi:nn200100](v20);
  v2 = v17;
  v3 = v18;
  if (v17 != v18)
  {
    v4 = (this + 24);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *v2;
        v7 = (this + 24);
        v8 = *v4;
        do
        {
          v9 = v8[4];
          v10 = v9 >= v6;
          v11 = v9 < v6;
          if (v10)
          {
            v7 = v8;
          }

          v8 = v8[v11];
        }

        while (v8);
        if (v7 != v4 && v6 >= v7[4])
        {
          v12 = v7[1];
          v13 = v7;
          if (v12)
          {
            do
            {
              v14 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v14 = v13[2];
              v15 = *v14 == v13;
              v13 = v14;
            }

            while (!v15);
          }

          if (*(this + 2) == v7)
          {
            *(this + 2) = v14;
          }

          --*(this + 4);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v5, v7);
          operator delete(v7);
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v17;
  }

  if (v2)
  {
    v18 = v2;
    operator delete(v2);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<TIFitAffineMLLMatrix::removeDefaults(void)::$_0,std::allocator<TIFitAffineMLLMatrix::removeDefaults(void)::$_0>,void ()(unsigned long,double const&)>::operator()(uint64_t a1, uint64_t *a2, double *a3)
{
  if (*a3 == 0.0)
  {
    v3 = *a2;
    v4 = *(a1 + 8);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    if (v6 >= v5)
    {
      v8 = *v4;
      v9 = v6 - *v4;
      v10 = v9 >> 3;
      v11 = (v9 >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v13);
      }

      *(8 * v10) = v3;
      v7 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      v14 = *v4;
      *v4 = 0;
      *(v4 + 8) = v7;
      *(v4 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v6 = v3;
      v7 = (v6 + 1);
    }

    *(v4 + 8) = v7;
  }
}

uint64_t std::__function::__func<TIFitAffineMLLMatrix::removeDefaults(void)::$_0,std::allocator<TIFitAffineMLLMatrix::removeDefaults(void)::$_0>,void ()(unsigned long,double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDC490;
  a2[1] = v2;
  return result;
}

void TIFitAffineMLLMatrix::operator+=(TIFitAffineMLLMatrix *this, uint64_t a2)
{
  v3 = this + 16;
  v4 = *(this + 2);
  v5 = (this + 24);
  v6 = *(a2 + 16);
  v7 = (a2 + 24);
  while (v4 != v5)
  {
    v8 = *(v4 + 4);
    if (v6 == v7)
    {
LABEL_18:
      v16 = *(v4 + 5);
      std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, v8)[5] = v16;
      v17 = *(v4 + 1);
      if (v17)
      {
        do
        {
          v4 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v4;
          v4 = *(v4 + 2);
        }

        while (*v4 != v18);
      }
    }

    else
    {
      v9 = *(v6 + 4);
      if (v8 == v9)
      {
        v10 = v4[5] + v6[5];
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, v8) + 5) = v10;
        v11 = *(v4 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v4 + 2);
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v14 = *(v6 + 1);
        if (v14)
        {
          do
          {
            v6 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v6;
            v6 = *(v6 + 2);
          }

          while (*v6 != v15);
        }

        v4 = v12;
      }

      else
      {
        if (v8 < v9)
        {
          goto LABEL_18;
        }

LABEL_23:
        v19 = *(v6 + 5);
        std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v3, v9)[5] = v19;
        v20 = *(v6 + 1);
        if (v20)
        {
          do
          {
            v6 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v6;
            v6 = *(v6 + 2);
          }

          while (*v6 != v21);
        }
      }
    }
  }

  if (v6 != v7)
  {
    v9 = *(v6 + 4);
    goto LABEL_23;
  }

  TIFitAffineMLLMatrix::removeDefaults(this);
}

void TIFitAffineMLLMatrix::operator-(__int128 *a1@<X0>, uint64_t a2@<X1>, TIFitAffineMLLMatrix *a3@<X8>)
{
  v4 = *a1;
  *(a3 + 3) = 0;
  *(a3 + 2) = a3 + 24;
  *a3 = v4;
  *(a3 + 4) = 0;
  v5 = *(a1 + 2);
  v6 = a1 + 3;
  v7 = *(a2 + 16);
  v8 = (a2 + 24);
  while (v5 != v6)
  {
    v9 = *(v5 + 4);
    if (v7 == v8)
    {
LABEL_18:
      v17 = *(v5 + 5);
      std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v9)[5] = v17;
      v18 = *(v5 + 1);
      if (v18)
      {
        do
        {
          v5 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v5;
          v5 = *(v5 + 2);
        }

        while (*v5 != v19);
      }
    }

    else
    {
      v10 = *(v7 + 4);
      if (v9 == v10)
      {
        v11 = v5[5] - v7[5];
        *(std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v9) + 5) = v11;
        v12 = *(v5 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v5 + 2);
            v14 = *v13 == v5;
            v5 = v13;
          }

          while (!v14);
        }

        v15 = *(v7 + 1);
        if (v15)
        {
          do
          {
            v7 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v7;
            v7 = *(v7 + 2);
          }

          while (*v7 != v16);
        }

        v5 = v13;
      }

      else
      {
        if (v9 < v10)
        {
          goto LABEL_18;
        }

LABEL_23:
        v20 = *(v7 + 5);
        std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3 + 16, v10)[5] = v20;
        v21 = *(v7 + 1);
        if (v21)
        {
          do
          {
            v7 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v7;
            v7 = *(v7 + 2);
          }

          while (*v7 != v22);
        }
      }
    }
  }

  if (v7 != v8)
  {
    v10 = *(v7 + 4);
    goto LABEL_23;
  }

  TIFitAffineMLLMatrix::removeDefaults(a3);
}

void TIFitAffineMLLMatrix::operator*=(TIFitAffineMLLMatrix *this, double a2)
{
  v2 = *(this + 2);
  if (v2 != (this + 24))
  {
    do
    {
      *(v2 + 5) = *(v2 + 5) * a2;
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 24));
  }

  TIFitAffineMLLMatrix::removeDefaults(this);
}

void TIFitAffineMLLMatrix::operator*(_OWORD *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  *a2 = *a1;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  v4[0] = &unk_283FDC298;
  v4[1] = a2;
  v4[2] = &v3;
  v4[3] = v4;
  TIFitAffineMLLMatrix::do_for_each_valid_element(a1, v4);
}

char *std::__function::__func<TIFitAffineMLLMatrix::operator*(double)::$_0,std::allocator<TIFitAffineMLLMatrix::operator*(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3, double *a4)
{
  v4 = *a4 * **(a1 + 16);
  result = TIFitAffineMLLMatrix::valueAt(*(a1 + 8), *a2, *a3);
  *result = v4;
  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::operator*(double)::$_0,std::allocator<TIFitAffineMLLMatrix::operator*(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC298;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void TIFitAffineMLLMatrix::operator*(TIFitAffineMLLMatrix *this@<X0>, TIFitAffineMLLMatrix *a2@<X1>, TIFitAffineMLLMatrix *a3@<X8>)
{
  v4 = *(this + 1);
  v5 = *a2;
  *a3 = *a2;
  *(a3 + 1) = v4;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *(a3 + 2) = a3 + 24;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = *(a3 + 1);
      if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          v11 = *this;
          if (*this)
          {
            v12 = 0;
            v13 = 0.0;
            do
            {
              v14 = TIFitAffineMLLMatrix::valueAt(this, j, v12);
              v13 = v13 + v14 * TIFitAffineMLLMatrix::valueAt(a2, v12++, i);
            }

            while (v11 != v12);
          }

          else
          {
            v13 = 0.0;
          }

          *TIFitAffineMLLMatrix::valueAt(a3, j, i) = v13;
        }
      }
    }
  }

  TIFitAffineMLLMatrix::removeDefaults(a3);
}

void TIFitAffineMLLMatrix::operator/(_OWORD *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  *a2 = *a1;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  v4[0] = &unk_283FDC2E0;
  v4[1] = a2;
  v4[2] = &v3;
  v4[3] = v4;
  TIFitAffineMLLMatrix::do_for_each_valid_element(a1, v4);
}

char *std::__function::__func<TIFitAffineMLLMatrix::operator/(double)::$_0,std::allocator<TIFitAffineMLLMatrix::operator/(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3, double *a4)
{
  v4 = *a4 / **(a1 + 16);
  result = TIFitAffineMLLMatrix::valueAt(*(a1 + 8), *a2, *a3);
  *result = v4;
  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::operator/(double)::$_0,std::allocator<TIFitAffineMLLMatrix::operator/(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC2E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void TIFitAffineMLLMatrix::operator/(TIFitAffineMLLMatrix *this@<X1>, TIFitAffineMLLMatrix *a2@<X0>, TIFitAffineMLLMatrix *a3@<X8>)
{
  TIFitAffineMLLMatrix::inverse(this, v5);
  TIFitAffineMLLMatrix::operator*(a2, v5, a3);
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v6);
}

void TIFitAffineMLLMatrix::inverse(TIFitAffineMLLMatrix *this@<X0>, TIFitAffineMLLMatrix *a2@<X8>)
{
  v4 = *(this + 1);
  *a2 = v4;
  *(a2 + 1) = v4;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *(a2 + 2) = a2 + 24;
  TIFitAffineMLLMatrix::determinant(this);
  v6 = v5;
  TIFitAffineMLLMatrix::coFactor(this, v12);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = 0;
    v9 = *this;
    do
    {
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = *TIFitAffineMLLMatrix::valueAt(v12, v8, v10) / v6;
          *TIFitAffineMLLMatrix::valueAt(a2, v10++, v8) = v11;
          v9 = *this;
        }

        while (v10 < *this);
        v7 = *(this + 1);
      }

      ++v8;
    }

    while (v8 < v7);
  }

  TIFitAffineMLLMatrix::removeDefaults(a2);
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v13);
}

void TIFitAffineMLLMatrix::determinant(TIFitAffineMLLMatrix *this)
{
  v2 = *(this + 1);
  if (v2 == 3)
  {
    TIFitAffineMLLMatrix::valueAt(this, 0, 0);
    TIFitAffineMLLMatrix::valueAt(this, 0, 1uLL);
    TIFitAffineMLLMatrix::valueAt(this, 0, 2uLL);
    TIFitAffineMLLMatrix::valueAt(this, 1uLL, 0);
    TIFitAffineMLLMatrix::valueAt(this, 1uLL, 1uLL);
    TIFitAffineMLLMatrix::valueAt(this, 1uLL, 2uLL);
    TIFitAffineMLLMatrix::valueAt(this, 2uLL, 0);
    TIFitAffineMLLMatrix::valueAt(this, 2uLL, 1uLL);
    TIFitAffineMLLMatrix::valueAt(this, 2uLL, 2uLL);
  }

  else if (v2 == 2)
  {
    TIFitAffineMLLMatrix::valueAt(this, 0, 0);
    TIFitAffineMLLMatrix::valueAt(this, 1uLL, 1uLL);
    TIFitAffineMLLMatrix::valueAt(this, 0, 1uLL);
    TIFitAffineMLLMatrix::valueAt(this, 1uLL, 0);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v15[0] = (v2 - 1);
        v15[1] = (v2 - 1);
        v16[0] = 0;
        v16[1] = 0;
        v15[2] = v16;
        std::vector<TIFitAffineMLLMatrix>::push_back[abi:nn200100](v17, v15);
        std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v16[0]);
        v2 = *(this + 1);
      }

      if (v2)
      {
        v4 = 0;
        while (v2 >= 2)
        {
          for (j = 1; j < v2; ++j)
          {
            v6 = 0;
            v7 = 0;
            do
            {
              if (v4 != v6)
              {
                v8 = TIFitAffineMLLMatrix::valueAt(this, j, v6);
                *TIFitAffineMLLMatrix::valueAt((v17[0] + 40 * v4), j - 1, v7) = v8;
                v2 = *(this + 1);
                ++v7;
              }

              ++v6;
            }

            while (v6 < v2);
          }

          if (++v4 >= v2)
          {
            if (!v2)
            {
              goto LABEL_23;
            }

            break;
          }
        }

        v9 = 0;
        v10 = 0.0;
        v11 = v17[0];
        do
        {
          v12 = TIFitAffineMLLMatrix::valueAt(this, 0, v9);
          TIFitAffineMLLMatrix::determinant(v11);
          v14 = -v12;
          if ((v9 & 1) == 0)
          {
            v14 = v12;
          }

          v10 = v10 + v14 * v13;
          ++v9;
          v11 = (v11 + 40);
        }

        while (*(this + 1) > v9);
      }
    }

LABEL_23:
    v15[0] = v17;
    std::vector<TIFitAffineMLLMatrix>::__destroy_vector::operator()[abi:nn200100](v15);
  }
}

void TIFitAffineMLLMatrix::coFactor(TIFitAffineMLLMatrix *this@<X0>, TIFitAffineMLLMatrix *a2@<X8>)
{
  v2 = a2;
  *a2 = *this;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *(a2 + 2) = a2 + 24;
  v3 = *(this + 1);
  if (v3)
  {
    if (v3 == 2)
    {
      v5 = TIFitAffineMLLMatrix::valueAt(this, 1uLL, 1uLL);
      *TIFitAffineMLLMatrix::valueAt(v2, 0, 0) = v5;
      v6 = -TIFitAffineMLLMatrix::valueAt(this, 1uLL, 0);
      *TIFitAffineMLLMatrix::valueAt(v2, 0, 1uLL) = v6;
      v7 = -TIFitAffineMLLMatrix::valueAt(this, 0, 1uLL);
      *TIFitAffineMLLMatrix::valueAt(v2, 1uLL, 0) = v7;
      v8 = TIFitAffineMLLMatrix::valueAt(this, 0, 0);
      *TIFitAffineMLLMatrix::valueAt(v2, 1uLL, 1uLL) = v8;
    }

    else
    {
      v38 = v2;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v40 = 0uLL;
        v41 = 0;
        v12 = v10 - v9;
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v15 = v9;
        if (0x5555555555555556 * (-v9 >> 3) > v14)
        {
          v14 = 0x5555555555555556 * (-v9 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v17 = 24 * v13;
        *v17 = 0u;
        *(v17 + 16) = 0;
        v41 = 0;
        v40 = 0uLL;
        v9 = 24 * v13 - v12;
        memcpy(v9, v15, v12);
        if (v15)
        {
          operator delete(v15);
        }

        v10 = 24 * v13 + 24;
        v43 = &v40;
        std::vector<TIFitAffineMLLMatrix>::__destroy_vector::operator()[abi:nn200100](&v43);
        v18 = *(this + 1);
        if (!v18)
        {
          break;
        }

        for (i = 0; i < v18; ++i)
        {
          *&v40 = v18 - 1;
          *(&v40 + 1) = v18 - 1;
          v42[0] = 0;
          v42[1] = 0;
          v41 = v42;
          std::vector<TIFitAffineMLLMatrix>::push_back[abi:nn200100]((v9 + 24 * v11), &v40);
          std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v42[0]);
          v18 = *(this + 1);
        }

        if (v18 <= ++v11)
        {
          if (v18)
          {
            v37 = v10;
            for (j = 0; j < v18; ++j)
            {
              v21 = 0;
              v39 = v9;
              v22 = (v9 + 24 * j);
              do
              {
                v23 = 0;
                v24 = 0;
                do
                {
                  v25 = 0;
                  v26 = 0;
                  v27 = v24;
                  do
                  {
                    if (j != v23 && v21 != v25)
                    {
                      v28 = TIFitAffineMLLMatrix::valueAt(this, v23, v25);
                      *TIFitAffineMLLMatrix::valueAt((*v22 + 40 * v21), v27, v26) = v28;
                      v18 = *(this + 1);
                      ++v26;
                    }

                    ++v25;
                  }

                  while (v18 > v25);
                  if (j == v23)
                  {
                    v24 = v27;
                  }

                  else
                  {
                    v24 = v27 + 1;
                  }

                  ++v23;
                }

                while (v18 > v23);
                ++v21;
              }

              while (v18 > v21);
              v9 = v39;
            }

            v10 = v37;
            if (v18)
            {
              for (k = 0; k < v36; ++k)
              {
                v30 = 0;
                v31 = 0;
                v32 = (v9 + 24 * k);
                v33 = k;
                do
                {
                  TIFitAffineMLLMatrix::determinant((*v32 + v30));
                  if (v33)
                  {
                    v35 = -v34;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  *TIFitAffineMLLMatrix::valueAt(v38, k, v31++) = v35;
                  v36 = *(this + 1);
                  v30 += 40;
                  v33 ^= 1u;
                }

                while (v36 > v31);
                v9 = v39;
                v10 = v37;
              }
            }
          }

          break;
        }
      }

      v2 = v38;
      if (v9)
      {
        while (v10 != v9)
        {
          v10 -= 24;
          *&v40 = v10;
          std::vector<TIFitAffineMLLMatrix>::__destroy_vector::operator()[abi:nn200100](&v40);
        }

        operator delete(v9);
      }
    }
  }

  TIFitAffineMLLMatrix::removeDefaults(v2);
}

void std::vector<TIFitAffineMLLMatrix>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<TIFitAffineMLLMatrix>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0x666666666666666)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 40 * v6;
    *v10 = *a2;
    *(v10 + 32) = 0;
    *(v10 + 24) = 0;
    *(v10 + 16) = v10 + 24;
    std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((40 * v6 + 16), *(a2 + 16), (a2 + 24));
    v5 = 40 * v6 + 40;
    v12 = *a1;
    v11 = a1[1];
    v13 = 40 * v6 + *a1 - v11;
    if (v11 != *a1)
    {
      v14 = v12 + 24;
      v15 = *a1;
      v16 = 40 * v6 + *a1 - v11;
      do
      {
        *v16 = *v15;
        *(v16 + 32) = 0;
        *(v16 + 24) = 0;
        *(v16 + 16) = v16 + 24;
        std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((v16 + 16), *(v15 + 16), v14);
        v15 += 40;
        v14 += 5;
        v16 += 40;
      }

      while (v15 != v11);
      do
      {
        std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v12 + 3));
        v12 += 40;
      }

      while (v12 != v11);
    }

    v17 = *a1;
    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v4 = *a2;
    *(v4 + 32) = 0;
    *(v4 + 24) = 0;
    *(v4 + 16) = v4 + 24;
    std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((v4 + 16), *(a2 + 16), (a2 + 24));
    v5 = v4 + 40;
  }

  a1[1] = v5;
}

unint64_t *TIFitAffineMLLMatrix::submatrix@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v16 = *a2;
  if (v6 == -1)
  {
    v7 = result[1];
  }

  else
  {
    v7 = v6 + v5;
  }

  v8 = *a3;
  v9 = a3[1];
  v14 = *a3;
  v15 = v7 - 1;
  if (v9 == -1)
  {
    v10 = *result;
  }

  else
  {
    v10 = v9 + v8;
  }

  v13 = v10 - 1;
  *a4 = v10 - v8;
  a4[1] = v7 - v5;
  a4[4] = 0;
  a4[3] = 0;
  a4[2] = a4 + 3;
  if (v5 <= v7 - 1 && v8 <= v10 - 1)
  {
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

char *std::__function::__func<TIFitAffineMLLMatrix::submatrix(TIFitAffineMLLMatrixDimRange const&,TIFitAffineMLLMatrixDimRange const&)::$_0,std::allocator<TIFitAffineMLLMatrix::submatrix(TIFitAffineMLLMatrixDimRange const&,TIFitAffineMLLMatrixDimRange const&)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(char *result, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = **(result + 1);
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6 && **(result + 2) >= v4)
  {
    v8 = *a3;
    v9 = **(result + 3);
    v6 = *a3 >= v9;
    v10 = *a3 - v9;
    if (v6 && **(result + 4) >= v8)
    {
      v11 = *a4;
      result = TIFitAffineMLLMatrix::valueAt(*(result + 5), v7, v10);
      *result = v11;
    }
  }

  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::submatrix(TIFitAffineMLLMatrixDimRange const&,TIFitAffineMLLMatrixDimRange const&)::$_0,std::allocator<TIFitAffineMLLMatrix::submatrix(TIFitAffineMLLMatrixDimRange const&,TIFitAffineMLLMatrixDimRange const&)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC328;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void TIFitAffineMLLMatrix::transform(int8x16_t *this@<X0>, int8x16_t *a2@<X8>)
{
  v2[4] = *MEMORY[0x277D85DE8];
  *a2 = vextq_s8(*this, *this, 8uLL);
  a2[2].i64[0] = 0;
  a2[1].i64[1] = 0;
  a2[1].i64[0] = &a2[1].i64[1];
  v2[0] = &unk_283FDC3B8;
  v2[1] = a2;
  v2[3] = v2;
  TIFitAffineMLLMatrix::do_for_each_valid_element(this, v2);
}

char *std::__function::__func<TIFitAffineMLLMatrix::transform(void)::$_0,std::allocator<TIFitAffineMLLMatrix::transform(void)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  result = TIFitAffineMLLMatrix::valueAt(*(a1 + 8), *a3, *a2);
  *result = v4;
  return result;
}

uint64_t std::__function::__func<TIFitAffineMLLMatrix::transform(void)::$_0,std::allocator<TIFitAffineMLLMatrix::transform(void)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDC3B8;
  a2[1] = v2;
  return result;
}

void TIFitAffineMLLMatrix::cholesky(TIFitAffineMLLMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v42 = *this;
  v44[0] = 0;
  v44[1] = 0;
  v43 = v44;
  std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>(&v43, *(this + 2), this + 3);
  if (!*(this + 1))
  {
    v18 = 0;
    v10 = *this;
LABEL_16:
    v40[0] = 1;
    v40[1] = v18;
    v41[0] = 0;
    v41[1] = 0;
    v40[2] = v41;
    v38[0] = 1;
    v38[1] = v18;
    v39[0] = 0;
    v39[1] = 0;
    v38[2] = v39;
    if (v10)
    {
      v19 = 0;
      do
      {
        if (*TIFitAffineMLLMatrix::valueAt(&v42, v19, v19) == 0.0)
        {
          goto LABEL_35;
        }

        v20 = *TIFitAffineMLLMatrix::valueAt(v40, v19, 0);
        *TIFitAffineMLLMatrix::valueAt(v38, v19, 0) = v20;
        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            v22 = *TIFitAffineMLLMatrix::valueAt(v38, i, 0);
            v23 = *TIFitAffineMLLMatrix::valueAt(&v42, i, v19);
            v24 = TIFitAffineMLLMatrix::valueAt(v38, v19, 0);
            *v24 = *v24 - v22 * v23;
          }

          v25 = TIFitAffineMLLMatrix::valueAt(&v42, v19, v19);
          v26 = v19;
        }

        else
        {
          v25 = TIFitAffineMLLMatrix::valueAt(&v42, 0, 0);
          v26 = 0;
        }

        v27 = *v25;
        v28 = TIFitAffineMLLMatrix::valueAt(v38, v26, 0);
        *v28 = *v28 / v27;
        ++v19;
      }

      while (v19 < *this);
      v18 = *(this + 1);
      v29 = *this - 1;
      if (v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v29 = -1;
      if (v18)
      {
LABEL_29:
        while (1)
        {
          v30 = v18 - 1;
          if (*TIFitAffineMLLMatrix::valueAt(&v42, v18 - 1, v29) == 0.0)
          {
            break;
          }

          v31 = *TIFitAffineMLLMatrix::valueAt(v40, v18 - 1, 0);
          *TIFitAffineMLLMatrix::valueAt(v38, v18 - 1, 0) = v31;
          while (v18 < *(this + 1))
          {
            v32 = *TIFitAffineMLLMatrix::valueAt(v38, v18, 0);
            v33 = *TIFitAffineMLLMatrix::valueAt(&v42, v18, v29);
            v34 = TIFitAffineMLLMatrix::valueAt(v38, v30, 0);
            *v34 = *v34 - v32 * v33;
            ++v18;
          }

          v35 = *TIFitAffineMLLMatrix::valueAt(&v42, v30, v29);
          v36 = TIFitAffineMLLMatrix::valueAt(v38, v30, 0);
          *v36 = *v36 / v35;
          if (!v30)
          {
            goto LABEL_36;
          }

          --v29;
          v18 = v30;
        }

LABEL_35:
        *a2 = *this;
        *(a2 + 32) = 0;
        *(a2 + 24) = 0;
        *(a2 + 16) = a2 + 24;
        std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v39[0]);
        std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v41[0]);
        goto LABEL_37;
      }
    }

LABEL_36:
    v45[0] = &unk_283FDC400;
    v45[1] = &v42;
    v45[3] = v45;
    TIFitAffineMLLMatrix::do_for_each_valid_element(&v42, v45);
  }

  v4 = 0;
  while (1)
  {
    v5 = v4;
    v6 = *TIFitAffineMLLMatrix::valueAt(&v42, v4, v4);
    if (v4)
    {
      for (j = 0; j != v4; ++j)
      {
        v8 = TIFitAffineMLLMatrix::valueAt(&v42, v4, j);
        v6 = v6 - *v8 * *v8;
      }
    }

    if (v6 <= 0.0)
    {
      break;
    }

    v9 = sqrt(v6);
    *TIFitAffineMLLMatrix::valueAt(&v42, v4, v4) = v9;
    ++v4;
    v10 = *this;
    if (v5 + 1 < *this)
    {
      v11 = v5 + 1;
      v12 = 1.0 / v9;
      do
      {
        v13 = 0;
        if (v5)
        {
          do
          {
            v14 = *TIFitAffineMLLMatrix::valueAt(&v42, v13, v11);
            v15 = *TIFitAffineMLLMatrix::valueAt(&v42, v13, v5);
            v16 = TIFitAffineMLLMatrix::valueAt(&v42, v5, v11);
            *v16 = *v16 - v14 * v15;
            ++v13;
          }

          while (v5 != v13);
          v13 = v5;
        }

        v17 = v12 * *TIFitAffineMLLMatrix::valueAt(&v42, v13, v11);
        *TIFitAffineMLLMatrix::valueAt(&v42, v13, v11) = v17;
        *TIFitAffineMLLMatrix::valueAt(&v42, v11++, v13) = v17;
        v10 = *this;
      }

      while (v11 < *this);
    }

    v18 = *(this + 1);
    if (v4 >= v18)
    {
      goto LABEL_16;
    }
  }

  *a2 = *this;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
LABEL_37:
  std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(v44[0]);
  v37 = *MEMORY[0x277D85DE8];
}

char *std::__function::__func<TIFitAffineMLLMatrix::cholesky(void)::$_0,std::allocator<TIFitAffineMLLMatrix::cholesky(void)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(char *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v4 < v3)
  {
    result = TIFitAffineMLLMatrix::valueAt(*(result + 1), v3, v4);
    *result = 0;
  }

  return result;
}

uint64_t std::__function::__func<TIFitAffineMLLMatrix::cholesky(void)::$_0,std::allocator<TIFitAffineMLLMatrix::cholesky(void)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDC400;
  a2[1] = v2;
  return result;
}

void TIFitAffineMLLMatrix::pow(TIFitAffineMLLMatrix *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4 = a2;
  *a3 = *this;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = a3 + 24;
  std::map<unsigned long,double>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned long,double>,std::__tree_node<std::__value_type<unsigned long,double>,void *> *,long>>>((a3 + 16), *(this + 2), this + 3);
  v5[0] = &unk_283FDC448;
  v5[1] = a3;
  v5[2] = &v4;
  v5[3] = v5;
  TIFitAffineMLLMatrix::do_for_each_valid_element(a3, v5);
}

char *std::__function::__func<TIFitAffineMLLMatrix::pow(double)::$_0,std::allocator<TIFitAffineMLLMatrix::pow(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3, long double *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = pow(*a4, **(a1 + 16));
  result = TIFitAffineMLLMatrix::valueAt(*(a1 + 8), v5, v6);
  *result = v7;
  return result;
}

__n128 std::__function::__func<TIFitAffineMLLMatrix::pow(double)::$_0,std::allocator<TIFitAffineMLLMatrix::pow(double)::$_0>,void ()(unsigned long,unsigned long,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDC448;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

char *TIFitAffineMLLMatrix::sumCols@<X0>(char *this@<X0>, TIFitAffineMLLMatrix *a2@<X8>)
{
  v3 = *this;
  *a2 = *this;
  *(a2 + 1) = 1;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *(a2 + 2) = a2 + 24;
  if (v3 != 0.0)
  {
    v4 = this;
    v5 = 0;
    v6 = *(this + 1);
    do
    {
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v8 = TIFitAffineMLLMatrix::valueAt(v4, i, v5);
          this = TIFitAffineMLLMatrix::valueAt(a2, 0, v5);
          *this = v8 + *this;
          v6 = *(v4 + 1);
        }

        v3 = *v4;
      }

      ++v5;
    }

    while (*&v3 > v5);
  }

  return this;
}

char *TIFitAffineMLLMatrix::sumRows@<X0>(char *this@<X0>, TIFitAffineMLLMatrix *a2@<X8>)
{
  v3 = *(this + 1);
  *a2 = 1;
  *(a2 + 1) = v3;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *(a2 + 2) = a2 + 24;
  if (v3)
  {
    v4 = this;
    v5 = 0;
    v6 = *this;
    do
    {
      if (v6 != 0.0)
      {
        v7 = 0;
        do
        {
          v8 = TIFitAffineMLLMatrix::valueAt(v4, v5, v7);
          this = TIFitAffineMLLMatrix::valueAt(a2, v5, 0);
          *this = v8 + *this;
          ++v7;
          v6 = *v4;
        }

        while (*v4 > v7);
        v3 = v4[1];
      }

      ++v5;
    }

    while (v3 > v5);
  }

  return this;
}

uint64_t TIFitAffineMLLMatrix::print(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = this;
    for (i = 0; i != v1; ++i)
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = 0;
        do
        {
          v6 = TIFitAffineMLLMatrix::valueAt(v2, i, v5);
          printf(" %5.4f", v6);
          ++v5;
        }

        while (v4 != v5);
      }

      this = putchar(10);
    }
  }

  return this;
}

id getSTKStickerUsageManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTKStickerUsageManagerClass_softClass;
  v7 = getSTKStickerUsageManagerClass_softClass;
  if (!getSTKStickerUsageManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSTKStickerUsageManagerClass_block_invoke;
    v3[3] = &unk_278733760;
    v3[4] = &v4;
    __getSTKStickerUsageManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

Class __getSTKStickerUsageManagerClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!StickersLibraryCore_frameworkLibrary)
  {
    StickersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("STKStickerUsageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerUsageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __StickersLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StickersLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FlagsForCandidate()
{
  IsExtensionCandidate = MecabraCandidateIsExtensionCandidate();
  IsEmojiCandidate = MecabraCandidateIsEmojiCandidate();
  if (IsExtensionCandidate)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (IsEmojiCandidate)
  {
    v3 = v2;
  }

  else
  {
    v3 = IsExtensionCandidate != 0;
  }

  if (MecabraCandidateIsUserWordCandidate())
  {
    v3 |= 4u;
  }

  if (MecabraCandidateIsAutocorrectionCandidate())
  {
    v3 |= 8u;
  }

  if (MecabraCandidateIsOTAWordlistCandidate())
  {
    v3 |= 0x10u;
  }

  if (MecabraCandidateIsRegionalCandidate())
  {
    v3 |= 0x20u;
  }

  v4 = v3 | 0x80;
  if (MecabraCandidateIsBilingualCandidate())
  {
    v3 |= 0x80u;
  }

  if (MecabraCandidateGetKind() != 83)
  {
    v4 = v3;
  }

  IsExtensionForCandidateBar = MecabraCandidateIsExtensionForCandidateBar();
  if (MecabraCandidateIsPartialCandidate() | IsExtensionForCandidateBar)
  {
    v6 = v4 | 0x200;
  }

  else
  {
    v6 = v4;
  }

  v7 = (MecabraCandidateGetWubixingType() << 9) & 0x400;
  v8 = v7 & 0xFFFFF7FF | (((MecabraCandidateGetWubixingType() >> 2) & 1) << 11) | v6;
  IsSinglePhraseCandidate = MecabraCandidateIsSinglePhraseCandidate();
  v10 = v8 | 0x1000;
  if (!IsSinglePhraseCandidate)
  {
    return v8;
  }

  return v10;
}

id _sbsOverrideLog()
{
  if (_sbsOverrideLog_onceToken != -1)
  {
    dispatch_once(&_sbsOverrideLog_onceToken, &__block_literal_global_31);
  }

  v1 = _sbsOverrideLog_logFacility;

  return v1;
}

uint64_t ___sbsOverrideLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "StatusBarStyleOverrides");
  v1 = _sbsOverrideLog_logFacility;
  _sbsOverrideLog_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TITypingSpeedAllowedValues()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = kFeatureStringTypingSpeedInsufficientData;
  v3[1] = kFeatureStringTypingSpeedVerySlow;
  v3[2] = kFeatureStringTypingSpeedSlow;
  v3[3] = kFeatureStringTypingSpeedMedium;
  v3[4] = kFeatureStringTypingSpeedFast;
  v3[5] = kFeatureStringTypingSpeedVeryFast;
  v3[6] = kFeatureStringTypingSpeedUnusual;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id TITypingEngineAllowedValues()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6F7F0];
  v6[0] = *MEMORY[0x277D6F810];
  v6[1] = v0;
  v1 = *MEMORY[0x277D6F7F8];
  v6[2] = *MEMORY[0x277D6F7E8];
  v6[3] = v1;
  v2 = *MEMORY[0x277D6F808];
  v6[4] = *MEMORY[0x277D6F800];
  v6[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id TIAssetAvailabilityStatusAllowedValues()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"Unavailable";
  v3[1] = @"Installed";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

Class __getMCProfileConnectionClass_block_invoke_15003(uint64_t a1)
{
  ManagedConfigurationLibrary_15006();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass_15002 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __50__TIUserDictionaryServer_loadPhraseShortcutPairs___block_invoke(v3);
  }

  return result;
}

uint64_t ManagedConfigurationLibrary_15006()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary_15009)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke_15010;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278732130;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary_15009 = _sl_dlopen();
    v1 = v4[0];
    v0 = ManagedConfigurationLibraryCore_frameworkLibrary_15009;
    if (ManagedConfigurationLibraryCore_frameworkLibrary_15009)
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

  v0 = ManagedConfigurationLibraryCore_frameworkLibrary_15009;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke_15010(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary_15009 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary_15006();
  result = dlsym(v2, "MCKeyboardSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getKSTextReplacementDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getKSTextReplacementDidChangeNotificationSymbolLoc_ptr;
  v8 = getKSTextReplacementDidChangeNotificationSymbolLoc_ptr;
  if (!getKSTextReplacementDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = KeyboardServicesLibrary_15017();
    v6[3] = dlsym(v1, "KSTextReplacementDidChangeNotification");
    getKSTextReplacementDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;

    return v2;
  }

  else
  {
    dlerror();
    v4 = abort_report_np();
    return ShortcutsDidChange(v4);
  }
}

void *__getKSTextReplacementDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeyboardServicesLibrary_15017();
  result = dlsym(v2, "KSTextReplacementDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getKSTextReplacementDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t KeyboardServicesLibrary_15017()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!KeyboardServicesLibraryCore_frameworkLibrary_15019)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __KeyboardServicesLibraryCore_block_invoke_15020;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278732118;
    v6 = 0;
    KeyboardServicesLibraryCore_frameworkLibrary_15019 = _sl_dlopen();
    v1 = v4[0];
    v0 = KeyboardServicesLibraryCore_frameworkLibrary_15019;
    if (KeyboardServicesLibraryCore_frameworkLibrary_15019)
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

  v0 = KeyboardServicesLibraryCore_frameworkLibrary_15019;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __KeyboardServicesLibraryCore_block_invoke_15020(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  KeyboardServicesLibraryCore_frameworkLibrary_15019 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TI::Favonius::SearchNodeGeometryExtensionsInsertingKey::create_extension@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a1 + 88);
  result = (*(**(a1 + 80) + 16))(*(a1 + 80));
  if ((*(*result + 60) & 0x20) == 0 || (*(*(*a3 + 8) + 60) & 0x20) == 0)
  {
    v10 = *a2;
    *a2 = 0;
    *a3 = 0;
    v11 = *(a1 + 96);
    TI::Favonius::SearchNodeInsertingKey::create();
  }

  *a4 = 0;
  return result;
}

void TI::Favonius::SearchNodeGeometryExtensionsInsertingKey::~SearchNodeGeometryExtensionsInsertingKey(TI::Favonius::SearchNodeGeometryExtensionsInsertingKey *this)
{
  TI::Favonius::SearchNodeGeometryExtensionsInsertingKey::~SearchNodeGeometryExtensionsInsertingKey(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDC598;
  v2 = *(this + 11);
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

  v4 = *(this + 10);
  if (v4)
  {
    v5 = atomic_load(v4 + 2);
    if (v5 == 1)
    {
      (*(*v4 + 248))(v4);
    }

    else
    {
      atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    }
  }

  TI::Favonius::SearchNodeGeometryExtensions::~SearchNodeGeometryExtensions(this);
}

void TI::Favonius::SearchNodeGeometryExtensionsInsertingKey::create(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a2 + 128);
  v7 = *(*(*a4 + 16))(a4);
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  (*(*v6 + 72))(&v10, v6, &v9, *a3);
  v10 = 0;
  if (v9)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v9);
  }

  v8 = (*(*a4 + 24))(a4);
  logf(v8);
  (*(**a3 + 32))();
  operator new();
}

void GetConsonantLettersSetAndArray(int a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = objc_opt_new();
    if (a3)
    {
LABEL_3:
      v7 = [MEMORY[0x277CBEB18] array];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___ZL30GetConsonantLettersSetAndArray11UScriptCodePU15__autoreleasingP14NSCharacterSetPU15__autoreleasingP7NSArray_block_invoke;
  v25[3] = &unk_278732170;
  v8 = v6;
  v26 = v8;
  v9 = v7;
  v27 = v9;
  v10 = _Block_copy(v25);
  v11 = v10;
  if (a1 <= 20)
  {
    if (a1 > 14)
    {
      if (a1 != 15)
      {
        if (a1 != 16)
        {
          goto LABEL_30;
        }

        v16 = (v10 + 16);
        (*(v10 + 2))(v10, 2581, 37);
        (*v16)(v11, 2620, 1);
        v12 = *v16;
        v13 = v11;
        v14 = 2649;
        goto LABEL_22;
      }

      v20 = (v10 + 16);
      (*(v10 + 2))(v10, 2709, 37);
      (*v20)(v11, 2748, 1);
      v12 = *v20;
      v13 = v11;
      v14 = 2809;
    }

    else
    {
      if (a1 == 4)
      {
        v19 = (v10 + 16);
        (*(v10 + 2))(v10, 2453, 37);
        (*v19)(v11, 2492, 1);
        (*v19)(v11, 2510, 1);
        (*v19)(v11, 2524, 4);
        v12 = *v19;
        v13 = v11;
        v14 = 2544;
        goto LABEL_28;
      }

      if (a1 != 10)
      {
        goto LABEL_30;
      }

      v15 = (v10 + 16);
      (*(v10 + 2))(v10, 2325, 37);
      (*v15)(v11, 2364, 1);
      (*v15)(v11, 2392, 8);
      v12 = *v15;
      v13 = v11;
      v14 = 2424;
    }

    v18 = 8;
    goto LABEL_29;
  }

  if (a1 <= 30)
  {
    if (a1 != 21)
    {
      if (a1 != 26)
      {
        goto LABEL_30;
      }

      v17 = (v10 + 16);
      (*(v10 + 2))(v10, 3349, 37);
      (*v17)(v11, 3386, 1);
      (*v17)(v11, 3412, 3);
      v12 = *v17;
      v13 = v11;
      v14 = 3450;
      goto LABEL_22;
    }

    v22 = (v10 + 16);
    (*(v10 + 2))(v10, 3221, 37);
    (*v22)(v11, 3260, 1);
    v12 = *v22;
    v13 = v11;
    v14 = 3293;
LABEL_28:
    v18 = 2;
    goto LABEL_29;
  }

  if (a1 == 31)
  {
    v21 = (v10 + 16);
    (*(v10 + 2))(v10, 2837, 37);
    (*v21)(v11, 2876, 1);
    (*v21)(v11, 2908, 4);
    (*v21)(v11, 2929, 1);
    goto LABEL_30;
  }

  if (a1 != 35)
  {
    if (a1 != 36)
    {
      goto LABEL_30;
    }

    (*(v10 + 2))(v10, 3093, 37);
    v12 = *(v11 + 2);
    v13 = v11;
    v14 = 3160;
LABEL_22:
    v18 = 6;
LABEL_29:
    v12(v13, v14, v18);
LABEL_30:
    if (!a2)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  (*(v10 + 2))(v10, 2965, 37);
  if (a2)
  {
LABEL_31:
    v23 = v8;
    *a2 = v8;
  }

LABEL_32:
  if (a3)
  {
    v24 = v9;
    *a3 = v9;
  }
}

void ___ZL30GetConsonantLettersSetAndArray11UScriptCodePU15__autoreleasingP14NSCharacterSetPU15__autoreleasingP7NSArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 addCharactersInRange:{a2, a3}];
  }

  if (*(a1 + 40))
  {
    v7 = a2 + a3;
    for (i = a2; v7 > i; ++i)
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&i length:1];
      [v8 addObject:v9];
    }
  }
}

uint64_t GetScriptCodeForLanguage(NSString *a1)
{
  v1 = [MEMORY[0x277CBEAF8] scriptCodeFromLanguage:a1];
  [v1 UTF8String];
  uscript_getCode();

  return 0;
}

uint64_t ___ZL16GetTallConjunctsv_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28400BAD8];
  v1 = GetTallConjuncts(void)::__tallConjuncts;
  GetTallConjuncts(void)::__tallConjuncts = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void ___ZL18GetAkhandConjunctsv_block_invoke()
{
  v0 = GetAkhandConjuncts(void)::__akhandConjuncts;
  GetAkhandConjuncts(void)::__akhandConjuncts = &unk_28400BAC0;
}

void TI::ConfidenceModel::compute_confidence2(TI::ConfidenceModel *this, CandidateCollection *a2)
{
  var0 = a2->var0.var0;
  if ((0x1CAC083126E978D5 * ((a2->var0.var1 - a2->var0.var0) >> 3)) > 1)
  {
    v3 = 1.0 - expf(*(var0 + 437) - *(var0 + 187));
    v4 = v3 * 0.1 + (1.0 - expf(*(var0 + 436) - *(var0 + 186))) * 0.9;
  }
}

double TI::ConfidenceModel::compute_confidence1(TI::ConfidenceModel *this, KB::CandidateCollection *a2, unsigned int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = 652835029 * ((*(a2 + 1) - *a2) >> 3);
  v37 = 0;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  v6 = 0uLL;
  *v34 = 0u;
  memset(v35, 0, sizeof(v35));
  memset(v36, 0, sizeof(v36));
  if (v5)
  {
    v8 = 0;
    do
    {
      std::vector<KB::Candidate>::push_back[abi:nn200100](v34, (*a2 + v8));
      v8 += 1000;
    }

    while (1000 * v5 != v8);
    v6 = *v34;
  }

  v9 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((*(&v6 + 1) - v6) >> 3));
  if (*(&v6 + 1) == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(v6, *(&v6 + 1), v10, 1);
  v11 = 0x1CAC083126E978D5 * ((v34[1] - v34[0]) >> 3);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 1.0;
    }

    else
    {
      memset(v32, 0, sizeof(v32));
      v33 = 1065353216;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(v32, a3);
      v41 = xmmword_22CC8A9D0;
      v42 = 0x3FF0000000000000;
      if (a3 == 2)
      {
        *&v41 = 0x3FF0000000000000;
      }

      v13 = v34[0];
      v14 = *(v34[0] + 186);
      KB::Candidate::capitalized_string(v34[0], &v39);
      v38 = &v39;
      v15 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v32, &v39);
      KB::Candidate::operator=((v15 + 6), v13);
      if (v40 && BYTE6(v39) == 1)
      {
        free(v40);
      }

      v16 = 0.0;
      v17 = 0.0;
      if (v5 >= 2)
      {
        v18 = 0;
        v19 = expf(v14);
        v20 = v5 - 1;
        v21 = 1000;
        do
        {
          v22 = v34[0];
          KB::Candidate::capitalized_string((v34[0] + v21), &v39);
          v23 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::find<KB::String>(*&v32[0], *(&v32[0] + 1), &v39);
          v25 = v19 > 0.0 && v23 == 0;
          if (v40)
          {
            v26 = BYTE6(v39) == 1;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            free(v40);
          }

          if (v25)
          {
            v27 = expf(*(v22 + v21 + 744));
            if (v18 >= 2)
            {
              v18 = 2;
            }

            v28 = *(&v41 + v18);
            KB::Candidate::capitalized_string((v22 + v21), &v39);
            v38 = &v39;
            v29 = std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v32, &v39);
            KB::Candidate::operator=((v29 + 6), v22 + v21);
            if (v40 && BYTE6(v39) == 1)
            {
              free(v40);
            }

            v16 = v16 + (1.0 - v27 / v19) * v28;
            v17 = v17 + v28;
            ++v18;
            v19 = v27;
          }

          v21 += 1000;
          --v20;
        }

        while (v20);
      }

      if (v17 == 0.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = v16 / v17;
      }

      std::__hash_table<std::__hash_value_type<KB::String,KB::Candidate>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Candidate>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Candidate>>>::~__hash_table(v32);
    }
  }

  else
  {
    v12 = 0.0;
  }

  *&v32[0] = &v36[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v32);
  *&v32[0] = v36;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v32);
  *&v32[0] = v35 + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v32);
  *&v32[0] = v34;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v32);
  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

void TI::ConfidenceModel::update_confidence_for_candidates(TI::ConfidenceModel *this, KB::CandidateCollection *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 1);
  v6 = KB::CandidateCollection::contains_secondary_language_candidates(a2, &v10, 3u);
  if (v6)
  {
    v4 = *(this + 4);
    v5 = *(this + 2);
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 0.0;
    if (v7 == 1)
    {
      TI::ConfidenceModel::compute_confidence2(v6, a2);
    }
  }

  else
  {
    v8 = TI::ConfidenceModel::compute_confidence1(v6, a2, *(this + 6));
  }

  if (v8 >= *this)
  {
    *(a2 + 24) = 0;
  }

  else
  {
    if (v8 >= v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *(a2 + 24) = v9;
    if (*a2 != *(a2 + 1) && expf(*(*a2 + 744)) < v4)
    {
      *(a2 + 24) = 2;
    }
  }
}

void TI::Favonius::SearchNodeLanguageThenGeometryExtensions::decrease_bound_on_score(TI::Favonius::SearchNodeLanguageThenGeometryExtensions *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    TI::Favonius::SearchNode::get_language_extensions(*(this + 4), this + 6);
    *(this + 72) = 1;
    if (*(this + 73) == 1)
    {
      v2 = *(*(this + 4) + 56);
      if ((*(*v2 + 64))(v2))
      {
        if ((*(*(this + 4) + 120) & 0x20) == 0)
        {
          v3 = (*(*v2 + 8))(v2);
          v4 = (*(*v3 + 16))(v3);
          TI::Favonius::KeyFactory::create_key(&v8, v4, 0x20u);
          (*(*v2 + 40))(v2, this + 48, &v8);
          if (v8)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v8);
          }
        }
      }
    }

    v5 = *(this + 6);
    v6 = 126 - 2 * __clz(v5);
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeLanguageExtensions::LetterExtensionComparator &,WTF::RefPtr<TI::Favonius::TypingHypothesis> *,false>(*(this + 7), (*(this + 7) + 8 * v5), v7, 1);
    TI::Favonius::SearchNodeLanguageThenGeometryExtensions::set_bound_on_score(this);
  }
}

void TI::Favonius::SearchNodeLanguageThenGeometryExtensions::set_bound_on_score(TI::Favonius::SearchNodeLanguageThenGeometryExtensions *this)
{
  if (*(this + 72))
  {
    v2 = *(this + 6);
    if (v2)
    {
      v3 = *(*(this + 7) + 8 * v2 - 8);
      v4 = (*(*v3 + 24))(v3);
      v6 = *(this + 10);
      v5 = *(this + 11);
      v7 = v5 + (v6 * logf(v4));
    }

    else
    {
      v7 = -INFINITY;
    }
  }

  else
  {
    v7 = *(this + 11);
  }

  *(this + 6) = v7;
}

uint64_t TI::Favonius::SearchNodeLanguageThenGeometryExtensions::branch_at_current_bound@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 48);
  if (v3)
  {
    v4 = this;
    v5 = *(this + 56);
    v6 = *(v5 + 8 * v3 - 8);
    if (v6)
    {
      atomic_fetch_add((v6 + 8), 1u);
      v3 = *(this + 48);
      v5 = *(this + 56);
    }

    v7 = v3 - 1;
    WTF::VectorDestructor<true,WTF::RefPtr<TI::Favonius::TypingHypothesis>>::destruct((v5 + 8 * (v3 - 1)), (v5 + 8 * v3));
    *(v4 + 48) = v7;
    TI::Favonius::SearchNodeLanguageThenGeometryExtensions::set_bound_on_score(v4);
    v8 = *(v4 + 32);
    v9 = *(v4 + 16);
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add((v9 + 8), 1u);
    }

    v10 = *(v4 + 40);
    TI::Favonius::SearchNodeGeometryExtensionsInsertingKey::create(a2, v8, &v11, v6);
  }

  *a2 = 0;
  return this;
}

void TI::Favonius::SearchNodeLanguageThenGeometryExtensions::~SearchNodeLanguageThenGeometryExtensions(TI::Favonius::SearchNodeLanguageThenGeometryExtensions *this)
{
  TI::Favonius::SearchNodeLanguageThenGeometryExtensions::~SearchNodeLanguageThenGeometryExtensions(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDC688;
  WTF::Vector<WTF::RefPtr<TI::Favonius::TypingHypothesis>,0ul>::~Vector(this + 48);
  v2 = *(this + 4);
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

  TI::Favonius::SearchNodeSource::~SearchNodeSource(this);
}

void TI::Favonius::DictionaryHypothesis::_words(uint64_t a1, uint64_t a2, int a3, char a4, char a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (KB::SetOnlySearchSupplementalLexiconForScope::s_shouldOnlySearchSupplementalLexicon == 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v8 = *(*(a1 + 72) + 40);
    v35 = v8;
    if (v8)
    {
      CFRetain(v8);
      v35 = v8;
      TI::Favonius::DictionaryHypothesis::merge_dynamic_words(a1, &v29, &v35, 5, 0, a3);
      CFRelease(v8);
    }

    else
    {
      TI::Favonius::DictionaryHypothesis::merge_dynamic_words(a1, &v29, &v35, 5, 0, a3);
    }

    std::vector<KB::Word>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Word*>,std::__wrap_iter<KB::Word*>>(a2, *(a2 + 8), v29, v30, 0xEEEEEEEEEEEEEEEFLL * ((v30 - v29) >> 4));
    v36 = &v29;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x4002000000;
    v32 = __Block_byref_object_copy__15581;
    v33 = __Block_byref_object_dispose__15582;
    memset(v34, 0, sizeof(v34));
    KB::StaticDictionaryCursor::derive_words((a1 + 16), v34, *(*(a1 + 8) + 8));
    KB::DictionaryCursors::probability_of_static_trie_given_termination((a1 + 16), *(a1 + 8));
    v12 = v30;
    v13 = v30[5];
    if (v30[6] != v13)
    {
      v14 = v11;
      v25 = a5;
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = (v13 + 240 * v15);
        v17[12] = v14 * v17[12];
        v18 = *(a1 + 8);
        if (*(v18 + 4) && (*(v17 + 135) & 0x10) != 0)
        {
          v19 = *(v17 + 17);
          KB::DictionaryContainer::affix_sentinel(v18, v19, 1, &v36);
          v20 = v36;
          if (v37 && BYTE6(v36) == 1)
          {
            free(v37);
          }

          if (v20)
          {
            v21 = *v17;
            if (v21 >= v20)
            {
              v22 = *(v17 + 1);
              if (!v22)
              {
                v22 = (v17 + 4);
              }

              KB::String::String(&v36, v22 + v20, (v21 - v20));
              KB::String::operator=(v17, &v36);
              if (v37 && BYTE6(v36) == 1)
              {
                free(v37);
              }
            }
          }
        }

        v15 = v16;
        v12 = v30;
        v13 = v30[5];
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((v30[6] - v13) >> 4) > v16++);
      a5 = v25;
    }

    if (a4)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK2TI8Favonius20DictionaryHypothesis6_wordsERNSt3__16vectorIN2KB4WordENS2_9allocatorIS5_EEEEbbb_block_invoke;
      v26[3] = &unk_278732198;
      v26[4] = &v29;
      v26[5] = a1;
      v27 = a3;
      v28 = a5;
      (*(**(a1 + 72) + 40))(*(a1 + 72), v26);
      v12 = v30;
    }

    std::vector<KB::Word>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Word*>,std::__wrap_iter<KB::Word*>>(a2, *(a2 + 8), v12[5], v12[6], 0xEEEEEEEEEEEEEEEFLL * ((v12[6] - v12[5]) >> 4));
    _Block_object_dispose(&v29, 8);
    v36 = v34;
  }

  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v36);
  v24 = *MEMORY[0x277D85DE8];
}

void TI::Favonius::DictionaryHypothesis::merge_dynamic_words(TI::Favonius::DictionaryHypothesis *a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, int a6)
{
  v118 = *MEMORY[0x277D85DE8];
  if (a4 != 5 || (+[TITransientLexiconManager sharedInstance](TITransientLexiconManager, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isSupplementalLexiconSearchEnabled], v10, v11))
  {
    if (*a3)
    {
      HasEntries = LXCursorHasEntries();
      if (*a3)
      {
        if (HasEntries)
        {
          if (a4 > 2)
          {
            v13 = 0;
          }

          else
          {
            v13 = *((*(**(*(a1 + 1) + 24) + 48))(*(*(a1 + 1) + 24), a5) + 160);
            v14 = *a3;
          }

          v98 = 0;
          v99 = &v98;
          v100 = 0x4002000000;
          v101 = __Block_byref_object_copy__4;
          v102 = __Block_byref_object_dispose__5;
          memset(v103, 0, sizeof(v103));
          LXCursorEnumerateEntries();
          v97 = *(*(*(a1 + 1) + 40) + 160);
          if (a4 <= 3)
          {
            if ((a4 - 1) < 3)
            {
              v15 = v99;
              TI::Favonius::DictionaryHypothesis::partial_probability_per_dynamic_usage(a1);
              v108 = 0;
              v109 = 0;
              v110 = 0;
              v16 = v15[5];
              v17 = v15[6];
              v18 = v17 - v16;
              if (v17 != v16)
              {
                if ((v18 >> 3) < 0x111111111111112)
                {
                  __n[4] = &v108;
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Word>>(v18 >> 3);
                }

                std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
              }

              std::vector<KB::Word>::__insert_with_size[abi:nn200100]<std::__wrap_iter<KB::Word*>,std::__wrap_iter<KB::Word*>>(a2, *(a2 + 8), v108, v109, 0xEEEEEEEEEEEEEEEFLL * ((v109 - v108) >> 4));
              __n[0] = &v108;
              std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](__n);
              goto LABEL_15;
            }

            if (a4)
            {
              goto LABEL_15;
            }

            v37 = v99;
            v38 = TI::Favonius::DictionaryHypothesis::partial_probability_per_dynamic_usage(a1);
            v39 = *a2;
            v40 = 0.0;
            while (v39 != *(a2 + 8))
            {
              if ((*(v39 + 106) & 4) != 0 && v13 == *(v39 + 136))
              {
                v40 = v40 + *(v39 + 48);
              }

              v39 += 240;
            }

            v60 = v40 == 0.0;
            v61 = v37[5];
            v62 = v37[6];
            if (v62 != v61)
            {
              v63 = 0;
              v64 = 1;
              do
              {
                v65 = *(v61 + 8 * v63);
                v60 |= LXEntryGetUsageCount() > 5;
                v63 = v64;
                v61 = v37[5];
                v62 = v37[6];
                ++v64;
              }

              while (v63 < (v62 - v61) >> 3);
            }

            if (v62 == v61)
            {
              goto LABEL_15;
            }

            v66 = 0;
            v67 = 0;
            v94 = v37;
            while (1)
            {
              v96 = v67;
              v68 = *(v61 + 8 * v66);
              UsageCount = LXEntryGetUsageCount();
              KB::Word::Word(__n, v68, v13);
              KB::Word::capitalized_string(__n, v111);
              v71 = *a2;
              v72 = *(a2 + 8);
              if (*a2 != v72)
              {
                v73 = *(a2 + 8);
                while (1)
                {
                  if ((*(v71 + 106) & 4) != 0 && (v13 == -2 || v13 == *(v71 + 136)) && KB::String::equal(v71, v111, 0))
                  {
                    KB::Word::capitalized_string(v71, &v104);
                    v74 = KB::String::equal(&v104, v111, 1);
                    if (v105 && BYTE6(v104) == 1)
                    {
                      free(v105);
                    }

                    if (v74)
                    {
                      v75 = *(a2 + 8);
                      goto LABEL_115;
                    }

                    if (!*(v71 + 120))
                    {
                      v73 = v71;
                    }
                  }

                  v71 += 240;
                  v75 = *(a2 + 8);
                  if (v71 == v75)
                  {
                    goto LABEL_114;
                  }
                }
              }

              v75 = *(a2 + 8);
              v73 = v75;
LABEL_114:
              v71 = v72;
LABEL_115:
              v76 = v38 * UsageCount;
              if (v71 == v75)
              {
                v77 = v73;
              }

              else
              {
                v77 = v71;
              }

              if (v75 != v77)
              {
                v78 = 0.0;
                if (KB::string_has_only_uppercase_characters(v111, v70))
                {
                  goto LABEL_159;
                }

                v79 = *(v77 + 104);
                if ((v79 & 0x84) == 0 || v71 != v75)
                {
                  if ((v79 & 0x80) != 0)
                  {
                    v81 = 2;
                  }

                  else
                  {
                    v81 = 1;
                  }

                  if (v60)
                  {
                    *(v77 + 48) = v76 + *(v77 + 48);
                  }

                  else
                  {
                    v90 = *a2;
                    v91 = *(a2 + 8);
                    while (v90 != v91)
                    {
                      if ((*(v90 + 106) & 4) != 0 && v13 == *(v90 + 136))
                      {
                        *(v90 + 48) = *(v90 + 48) + (v76 * (*(v90 + 48) / v40));
                      }

                      v90 += 240;
                    }
                  }

                  if (v71 == v75)
                  {
                    TI::Favonius::DictionaryHypothesis::word_from_dynamic_entry(&v104, v68, 0, v13, v97, 0.0);
                    std::vector<KB::Word>::push_back[abi:nn200100](a2, &v104);
                    KB::Word::~Word(&v104);
                  }

                  else
                  {
                    *(v77 + 124) = UsageCount;
                    *(v77 + 128) = LXEntryGetPenaltyCount();
                    MetaFlags = LXEntryGetMetaFlags();
                    v83 = *(v77 + 104);
                    v84 = v83 & 0xFBFFFFFF | (((MetaFlags >> 26) & 1) << 26);
                    *(v77 + 104) = v84;
                    if (!*(v77 + 140))
                    {
                      *(v77 + 136) = v117;
                    }

                    if (UsageCount > v81 && (v83 & 0x2000) == 0)
                    {
                      *(v77 + 104) = v84 | 0x2000;
                    }
                  }

LABEL_158:
                  v78 = v76;
                  goto LABEL_159;
                }
              }

              if (v40 != 0.0)
              {
                if (!(v60 & 1 | (LXEntryGetUsageCount() > 2)))
                {
                  goto LABEL_144;
                }

                v85 = LXEntryCopyStoredString();
                KB::utf8_string(v85, &v104);
                has_word_medial_punctuation = KB::string_has_word_medial_punctuation(&v104, v86);
                if (v105 && BYTE6(v104) == 1)
                {
                  free(v105);
                }

                if (v85)
                {
                  CFRelease(v85);
                }

                if (has_word_medial_punctuation)
                {
LABEL_144:
                  v88 = *a2;
                  v89 = *(a2 + 8);
                  while (v88 != v89)
                  {
                    if ((*(v88 + 106) & 4) != 0 && v13 == *(v88 + 136))
                    {
                      *(v88 + 48) = *(v88 + 48) + (v76 * (*(v88 + 48) / v40));
                    }

                    v88 += 240;
                  }

                  goto LABEL_158;
                }
              }

              TI::Favonius::DictionaryHypothesis::word_from_dynamic_entry(&v104, v68, 0, v13, v97, v76);
              std::vector<KB::Word>::push_back[abi:nn200100](a2, &v104);
              KB::Word::~Word(&v104);
              v78 = 0.0;
LABEL_159:
              if (v113)
              {
                v92 = v112 == 1;
              }

              else
              {
                v92 = 0;
              }

              if (v92)
              {
                free(v113);
              }

              KB::Word::~Word(__n);
              v40 = v40 + v78;
              v66 = (v96 + 1);
              v61 = v94[5];
              v67 = v96 + 1;
              if (v66 >= (v94[6] - v61) >> 3)
              {
                goto LABEL_15;
              }
            }
          }

          if (a4 != 4)
          {
            if (a4 == 5)
            {
              v20 = v99;
              v21 = TI::Favonius::DictionaryHypothesis::partial_probability_per_dynamic_usage(a1);
              v22 = v20[5];
              v23 = v20[6];
              if (v22 != v23)
              {
                v24 = v21;
                do
                {
                  v25 = *v22;
                  if (*v22)
                  {
                    v26 = *v22;
                    v27 = LXEntryGetUsageCount();
                    TI::Favonius::DictionaryHypothesis::word_from_dynamic_entry(__n, v25, 5, v13, v97, v24 * v27);
                    v29 = *a2;
                    v30 = *(a2 + 8);
                    if (*a2 != v30)
                    {
                      v31 = (v29 + 440);
                      while (KB::CollatorWrapper::sortkey_compare_strings((*(*(a1 + 1) + 8) + 72), v29, __n, v28))
                      {
                        v29 += 240;
                        v31 += 30;
                        if (v29 == v30)
                        {
                          v29 = v30;
                          goto LABEL_33;
                        }
                      }

                      if (v29 != v30)
                      {
                        v32 = (v29 + 240);
                        while (v32 != v30)
                        {
                          if (KB::CollatorWrapper::sortkey_compare_strings((*(*(a1 + 1) + 8) + 72), (v31 - 25), __n, v28))
                          {
                            KB::String::operator=(v29, (v31 - 25));
                            KB::ByteString::operator=((v29 + 32), v31 - 84);
                            v33 = *(v31 - 19);
                            *(v29 + 56) = *(v31 - 36);
                            *(v29 + 48) = v33;
                            KB::String::operator=(v29 + 64, (v31 - 17));
                            v34 = *(v31 - 13);
                            v35 = *(v31 - 11);
                            v36 = *(v31 - 7);
                            *(v29 + 128) = *(v31 - 9);
                            *(v29 + 144) = v36;
                            *(v29 + 96) = v34;
                            *(v29 + 112) = v35;
                            KB::String::operator=(v29 + 160, (v31 - 5));
                            *(v29 + 192) = *(v31 - 8);
                            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v29 + 200, v31);
                            v29 += 240;
                          }

                          v32 = v31 + 5;
                          v31 += 30;
                        }
                      }
                    }

LABEL_33:
                    std::vector<KB::Word>::erase(a2, v29, *(a2 + 8));
                    std::vector<KB::Word>::push_back[abi:nn200100](a2, __n);
                    KB::Word::~Word(__n);
                  }

                  ++v22;
                }

                while (v22 != v23);
              }
            }

            goto LABEL_15;
          }

          v41 = v99;
          v42 = TI::Favonius::DictionaryHypothesis::partial_probability_per_dynamic_usage(a1);
          v43 = v41[5];
          v44 = v41[6];
          if (v43 == v44)
          {
LABEL_15:
            _Block_object_dispose(&v98, 8);
            __n[0] = v103;
            std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](__n);
            goto LABEL_16;
          }

          v45 = v42;
          while (1)
          {
            v46 = *v43;
            if (*v43)
            {
              break;
            }

LABEL_92:
            if (++v43 == v44)
            {
              goto LABEL_15;
            }
          }

          v47 = *v43;
          v48 = v45 * LXEntryGetUsageCount();
          TI::Favonius::DictionaryHypothesis::word_from_dynamic_entry(__n, v46, 4, v13, v97, v48);
          v49 = _os_feature_enabled_impl();
          v51 = *a2;
          v50 = *(a2 + 8);
          if (v49)
          {
            while (v51 != v50)
            {
              if (KB::String::equal(v51, __n, 0))
              {
                goto LABEL_91;
              }

              v51 += 240;
            }

            goto LABEL_90;
          }

          if (v51 == v50)
          {
            v52 = 0;
            goto LABEL_73;
          }

          v52 = 0;
          while (1)
          {
            KB::Word::capitalized_string(v51, &v104);
            KB::Word::capitalized_string(__n, v111);
            v53 = *(v51 + 104);
            if ((v53 & 0x40000) != 0 || (((v53 & 0x2000000) == 0) & v52) == 0)
            {
              KB::Word::capitalized_string(v51, &v108);
              KB::Word::capitalized_string(__n, v106);
              v54 = KB::String::equal(&v108, v106, 1);
              if (v107 && v106[6] == 1)
              {
                free(v107);
              }

              if (v109 && BYTE6(v108) == 1)
              {
                free(v109);
              }

              if (!v54)
              {
                goto LABEL_63;
              }

              *(v51 + 48) = v48 + *(v51 + 48);
              *(v51 + 124) += v116;
              *(v51 + 104) = *(v51 + 104) & 0xFFFFDFFF | ((v116 != 0) << 13);
            }

            v52 = 1;
LABEL_63:
            if (v113 && v112 == 1)
            {
              free(v113);
            }

            if (v105 && BYTE6(v104) == 1)
            {
              free(v105);
            }

            v51 += 240;
            if (v51 == v50)
            {
              if (v52)
              {
                goto LABEL_89;
              }

LABEL_73:
              if (!a6 || !v115)
              {
LABEL_89:
                if (v52)
                {
LABEL_91:
                  KB::Word::~Word(__n);
                  goto LABEL_92;
                }

LABEL_90:
                std::vector<KB::Word>::push_back[abi:nn200100](a2, __n);
                goto LABEL_91;
              }

              v56 = *a2;
              v55 = *(a2 + 8);
              while (2)
              {
                if (v56 == v55)
                {
                  goto LABEL_89;
                }

                v57 = *(v56 + 104);
                if ((v57 & 0x40000) != 0 || (((v57 & 0x2000000) == 0) & v52) == 0)
                {
                  if (!KB::String::equal(v56, __n, 0))
                  {
                    goto LABEL_88;
                  }

                  v58 = *(v56 + 104);
                  if ((v58 & 0x84) != 0 || *(v56 + 120))
                  {
                    v59 = BYTE4(__n[0]);
                    if (!WORD2(__n[0]))
                    {
                      KB::String::compute_length(__n);
                      v59 = BYTE4(__n[0]);
                    }

                    if (((-1 << v59) | v115) == 0xFFFFFFFF)
                    {
                      v58 = *(v56 + 104);
                      goto LABEL_86;
                    }

LABEL_88:
                    v56 += 240;
                    continue;
                  }

LABEL_86:
                  *(v56 + 48) = v48 + *(v56 + 48);
                  *(v56 + 124) += v116;
                  *(v56 + 104) = v58 & 0xFFFFDFFF | ((v116 != 0) << 13);
                }

                break;
              }

              v52 = 1;
              goto LABEL_88;
            }
          }
        }
      }
    }
  }

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
}