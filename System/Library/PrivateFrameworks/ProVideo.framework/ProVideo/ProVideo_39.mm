void *HGStats::ProfilerScopeGuard::ProfilerScopeGuard(void *result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*(*a2 + 120))
  {
    *result = v5;
    v6 = *(*v5 + 40 * a3 + 8);
    if (!v6)
    {
      operator new();
    }

    result[1] = v6;
    v7 = result;
    v8 = *v5 + 40 * a3;
    *(v8 + 16) += a4;
    v9 = vdupq_n_s64(1uLL);
    v9.i64[0] = a5;
    *(v8 + 24) = vaddq_s64(*(v8 + 24), v9);
    v13 = v6;
    v11 = v5[12];
    v10 = v5[13];
    v12 = (v5 + 12);
    if (v11 != v10)
    {
      HGProfiler::stop(*(v10 - 8));
    }

    HGProfiler::start(v6);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](v12, &v13);
    return v7;
  }

  else
  {
    *result = 0;
  }

  return result;
}

void HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(HGStats::ProfilerScopeGuard *this)
{
  v1 = *this;
  if (*this && *(v1 + 120) == 1)
  {
    HGProfiler::stop(*(*(v1 + 104) - 8));
    v3 = *(v1 + 96);
    v2 = *(v1 + 104);
    *(v1 + 104) = v2 - 8;
    if (v3 != v2 - 8)
    {
      HGProfiler::start(*(v2 - 16));
    }
  }
}

void sub_25FCC3E68(_Unwind_Exception *a1)
{
  v4 = std::vector<__HGStats_private::StatsTimer>::~vector[abi:ne200100](v1);
  MEMORY[0x2666E9F00](v4, v2);
  _Unwind_Resume(a1);
}

void HGStats::UnitStats::~UnitStats(HGStats::UnitStats *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      *(v1 + 104) = v2;
      operator delete(v2);
    }

    v3 = HGStats::CoreStats<HGNode,__HGStats_private::StatsTimer>::~CoreStats(v1);
    MEMORY[0x2666E9F00](v3, 0x10A0C40A0517958);
  }
}

void HGStats::UnitStats::start(void *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *(**a1 + 40 * a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v7 = *(**a1 + 40 * a2 + 8);
  if (*(v2 + 120) == 1)
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = (v2 + 12);
    if (v5 != v4)
    {
      HGProfiler::stop(*(v4 - 8));
    }

    HGProfiler::start(v3);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](v6, &v7);
  }
}

void *HGStats::UnitStats::stop(void *result, unsigned int a2)
{
  v2 = *result;
  if (!*(**result + 40 * a2 + 8))
  {
    operator new();
  }

  if (*(v2 + 120) == 1)
  {
    result = HGProfiler::stop(*(v2[13] - 8));
    v4 = v2[12];
    v3 = v2[13];
    v2[13] = v3 - 8;
    if (v4 != v3 - 8)
    {
      v5 = *(v3 - 16);

      return HGProfiler::start(v5);
    }
  }

  return result;
}

uint64_t HGStats::UnitStats::readTile(uint64_t this, HGNode *a2, uint64_t a3, uint64_t a4)
{
  if (*(*this + 120) == 1)
  {
    v4 = *(*this + 32);
    if (!v4)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = v4[4];
        if (v6 <= a2)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v6 >= a2)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v5[8] += a4 - 16 * a3;
  }

  return this;
}

uint64_t HGStats::UnitStats::in_n_out(uint64_t this, HGNode *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (*(*this + 120) == 1)
  {
    v5 = *(*this + 56);
    if (!v5)
    {
LABEL_12:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v6 = v5;
        v7 = v5[4];
        v8 = *(v6 + 10);
        v9 = v8 > a3;
        if (v7 != a2)
        {
          v9 = v7 > a2;
        }

        if (!v9)
        {
          break;
        }

        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_12;
        }
      }

      v10 = v8 < a3;
      v11 = v7 == a2;
      v12 = v7 < a2;
      if (v11)
      {
        v12 = v10;
      }

      if (!v12)
      {
        break;
      }

      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v13 = v6[7] + a5;
    v6[6] += a4;
    v6[7] = v13;
  }

  return this;
}

void HGStats::GraphStats::~GraphStats(HGStats::GraphStats *this)
{
  v1 = *this;
  if (*this)
  {
    if (*v1)
    {
      MEMORY[0x2666E9F00](*v1, 0x1000C40451B5BE8);
    }

    std::__tree<HGNode *>::destroy(v1 + 80, *(v1 + 88));
    *(v1 + 80) = v1 + 88;
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
    std::__tree<HGNode *>::destroy(v1 + 56, *(v1 + 64));
    *(v1 + 56) = v1 + 64;
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
    std::__tree<HGNode *>::destroy(v1 + 32, *(v1 + 40));
    *(v1 + 32) = v1 + 40;
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
    __HGStats_private::OpStats<__HGStats_private::StatsProfile>::~OpStats((v1 + 8));
    MEMORY[0x2666E9F00](v1, 0x1020C409ABEAE11);
  }
}

uint64_t HGStats::GraphStats::roiPixels(uint64_t this, HGNode *a2, uint64_t a3)
{
  v3 = *(*this + 88);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[5] = a3;
  v4[6] = 1;
  return this;
}

void HGStats::GraphStats::clear(uint64_t **this)
{
  v1 = (*this + 1);
  HGProfiler::init(**this);

  HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::clear(v1);
}

uint64_t HGStats::GraphStats::getNodeTime(HGStats::GraphStats *this, HGNode *a2)
{
  v2 = *(*this + 40);
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
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *(v3[5] + 24);

  return v5(v3 + 5);
}

void sub_25FCC4760(_Unwind_Exception *a1)
{
  std::vector<__HGStats_private::StatsTimer>::~vector[abi:ne200100](v3);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void HGStats::RendererStats::~RendererStats(HGStats::RendererStats *this)
{
  v1 = *this;
  if (*this)
  {
    std::__tree<HGNode *>::destroy(v1 + 88, *(v1 + 96));
    *(v1 + 88) = v1 + 96;
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
    std::__tree<HGNode *>::destroy(v1 + 64, *(v1 + 72));
    *(v1 + 64) = v1 + 72;
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
    std::__tree<HGNode *>::destroy(v1 + 40, *(v1 + 48));
    *(v1 + 40) = v1 + 48;
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
    __HGStats_private::OpStats<__HGStats_private::StatsProfile>::~OpStats((v1 + 16));
    MEMORY[0x2666E9F00](v1, 0x1020C405955F7A7);
  }
}

uint64_t HGStats::RendererStats::merge(HGStats::RendererStats *this, const HGStats::GraphStats *a2)
{
  v2 = *this;
  v3 = *a2;
  ++**this;
  *(v2 + 1) = HGProfiler::getTime(*v3) + *(v2 + 1);
  __HGStats_private::OpStats<__HGStats_private::StatsProfile>::merge<__HGStats_private::StatsTimer>(v2 + 2, (v3 + 8));
  std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::MergeNodeStats<HGNode,__HGStats_private::StatsProfile,std::type_info const,__HGStats_private::StatsProfile>>(*(v3 + 32), (v3 + 40), (v2 + 5));
  std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__HGStats_private::RoiStatsID<HGNode>,__HGStats_private::RoiStats>,std::__tree_node<std::__value_type<__HGStats_private::RoiStatsID<HGNode>,__HGStats_private::RoiStats>,void *> *,long>>,__HGStats_private::MergeRoiStats<HGNode,std::type_info const>>(*(v3 + 56), (v3 + 64), (v2 + 8));
  v4 = *(v3 + 80);

  return std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<HGNode *,__HGStats_private::NodePixelsStats>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::NodePixelsStats>,void *> *,long>>,__HGStats_private::MergeNodePixels<HGNode,std::type_info const>>(v4, (v3 + 88), (v2 + 11));
}

void std::vector<__HGStats_private::StatsTimer>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = a1[1];
      do
      {
        *v3 = &unk_28721EB00;
        *(v3 + 8) = 0uLL;
        *(v3 + 24) = 0uLL;
        v3 += 40;
        v10 += 40;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 40 * v5 + 40 * a2;
    v12 = 40 * v5;
    v13 = 40 * v5;
    do
    {
      *v13 = &unk_28721EB00;
      *(v13 + 8) = 0uLL;
      *(v13 + 24) = 0uLL;
      v13 += 40;
      v12 += 40;
    }

    while (v13 != v11);
    v14 = *a1;
    v15 = a1[1];
    v16 = 40 * v5 - (v15 - *a1);
    if (v15 != *a1)
    {
      v17 = 40 * v5 - 8 * ((v15 - *a1) >> 3);
      v18 = *a1;
      v19 = 40 * v5 - (v15 - *a1);
      do
      {
        *v19 = &unk_28721EB00;
        v20 = *(v18 + 1);
        *(v19 + 24) = *(v18 + 3);
        *(v19 + 8) = v20;
        v18 += 5;
        v19 += 40;
        v17 += 40;
      }

      while (v18 != v15);
      v21 = v14;
      v22 = v14;
      do
      {
        v23 = *v22;
        v22 += 5;
        (*v23)();
        v21 += 5;
      }

      while (v22 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v11;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void **std::vector<__HGStats_private::StatsTimer>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 40;
      v6 = v3 - 40;
      v7 = v3 - 40;
      do
      {
        v8 = *v7;
        v7 -= 40;
        (*v8)(v6);
        v5 -= 40;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t HGStats::CoreStats<HGNode,__HGStats_private::StatsTimer>::~CoreStats(uint64_t a1)
{
  v2 = (a1 + 80);
  std::__tree<HGNode *>::destroy(a1 + 72, *(a1 + 80));
  *(a1 + 72) = v2;
  *(a1 + 88) = 0;
  *v2 = 0;
  std::__tree<HGNode *>::destroy(a1 + 48, *(a1 + 56));
  *(a1 + 48) = a1 + 56;
  *(a1 + 56) = 0;
  v3 = *(a1 + 24);
  *(a1 + 64) = 0;
  v4 = (a1 + 32);
  if (v3 != (a1 + 32))
  {
    do
    {
      v5 = v3[6];
      if (v5)
      {
        MEMORY[0x2666E9F00](v5, 0x1000C40451B5BE8);
      }

      v3[6] = 0;
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<HGNode *>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v4;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (*a1 != v10)
  {
    v11 = *a1;
    do
    {
      (*(*v9 + 16))(v9);
      v9 += 40;
      v11 += 40;
    }

    while (v9 != v10);
    v9 = *a1;
    v10 = *(a1 + 8);
  }

  v12 = v9;
  if (v10 != v9)
  {
    v13 = (v10 - 40);
    v14 = v13;
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 -= 5;
      (*v16)(v14);
      v13 -= 5;
      v8 = v14 == v9;
      v14 = v15;
    }

    while (!v8);
    v12 = *a1;
  }

  *(a1 + 8) = v9;
  v17 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v12) >> 3);
  if (v17 > 4)
  {
    if (v9 - v12 != 200)
    {
      v18 = (v12 + 200);
      if (v9 != v12 + 200)
      {
        v19 = (v9 - 40);
        v20 = v19;
        v21 = v19;
        do
        {
          v22 = *v21;
          v21 -= 5;
          (*v22)(v20);
          v19 -= 5;
          v8 = v20 == v18;
          v20 = v21;
        }

        while (!v8);
      }

      *(a1 + 8) = v18;
    }
  }

  else
  {
    std::vector<__HGStats_private::StatsTimer>::__append(a1, 5 - v17);
  }

  v23 = *a1;
  if (*a1)
  {
    v24 = *(a1 + 8);
    v25 = *a1;
    if (v24 != v23)
    {
      v26 = v24 - 40;
      v27 = (v24 - 40);
      v28 = (v24 - 40);
      do
      {
        v29 = *v28;
        v28 -= 5;
        (*v29)(v27);
        v26 -= 40;
        v8 = v27 == v23;
        v27 = v28;
      }

      while (!v8);
      v25 = *a1;
    }

    *(a1 + 8) = v23;
    operator delete(v25);
  }

  return a1;
}

__n128 std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::StatsProfile,__HGStats_private::TotalAccumulator<HGNode,__HGStats_private::StatsTimer>>@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v21 = &unk_28721EB48;
      v23 = *(a3 + 24);
      v22 = *(a3 + 8);
      v18 = &unk_28721EB00;
      v9 = *(v8 + 4);
      v19 = *(v8 + 3);
      v20 = v9;
      if (v19)
      {
        Time = HGProfiler::getTime(v19);
        v11 = v18;
      }

      else
      {
        Time = 0.0;
        v11 = &unk_28721EB00;
      }

      *&v22 = Time + *&v22;
      v12 = v11[4](&v18);
      *(&v22 + 1) += v12;
      v13 = v18[5](&v18);
      *&v23 = v23 + v13;
      v14 = v18[6](&v18);
      *(&v23 + 1) += v14;
      *(a3 + 8) = v22;
      *(a3 + 24) = v23;
      v15 = v8[1];
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
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != a2);
  }

  *a4 = &unk_28721EB48;
  *(a4 + 8) = *(a3 + 8);
  result = *(a3 + 24);
  *(a4 + 24) = result;
  return result;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsTimer,(__HGStats_private::NodeStatsType)1>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v9 = v8[4];
      v19 = &unk_28721EB00;
      v10 = *(v8 + 4);
      v20 = *(v8 + 3);
      v21 = v10;
      if (!v9)
      {
        __cxa_bad_typeid();
      }

      v11 = *(*(*v9 - 8) + 8);
      if (v11 == off_2872215A0 || ((off_2872215A0 & v11 & 0x8000000000000000) != 0) != __OFSUB__(v11, off_2872215A0) && (v12 = v9, v13 = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), v9 = v12, !v13) || v11 == off_287215D60 || ((off_287215D60 & v11 & 0x8000000000000000) != 0) != __OFSUB__(v11, off_287215D60) && (v17 = v9, v18 = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), v9 = v17, !v18))
      {
        __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(a3, v9, &v19, a4);
      }

      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != a2);
  }

  return a3;
}

BOOL __HGStats_private::isReading(__HGStats_private *this, const HGNode *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v2 = *(*(*this - 8) + 8);
  if (v2 == off_2872215A0 || ((off_2872215A0 & v2 & 0x8000000000000000) != 0) != __OFSUB__(v2, off_2872215A0) && !strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)) || v2 == off_287215D60)
  {
    return 1;
  }

  if (((off_287215D60 & v2 & 0x8000000000000000) != 0) != __OFSUB__(v2, off_287215D60))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *__HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a3 + 32))(a3);
  if (result)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "|    ", 5);
    v10 = MEMORY[0x2666E9B10](v9, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    v11 = (*(*a4 + 24))(a4);
    v12 = (*(*a3 + 24))(a3) * 100.0 / v11;
    v13 = *v9;
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v9 + *(v13 - 24) + 24) = 7;
    *(v9 + *(v13 - 24) + 16) = 2;
    v14 = MEMORY[0x2666E9B30](v9);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ms (", 5);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v15 + *(v16 - 24) + 24) = 4;
    *(v15 + *(v16 - 24) + 16) = 1;
    v17 = MEMORY[0x2666E9B30](v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "%)", 2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
    v19 = (*(*a4 + 32))(a4);
    v20 = (*(*a3 + 32))(a3);
    v21 = v20 * 100.0 / v19;
    *(v18 + *(*v18 - 24) + 24) = 10;
    v22 = MEMORY[0x2666E9B90](v18, v20);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " pixels (", 9);
    v24 = *v23;
    *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v23 + *(v24 - 24) + 24) = 4;
    *(v23 + *(v24 - 24) + 16) = 1;
    v25 = MEMORY[0x2666E9B30](v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "%)", 2);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
    v27 = (*(*a3 + 24))(a3) * 1000000.0;
    v28.n128_f64[0] = v27 / (*(*a3 + 32))(a3);
    v29 = *v26;
    *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v26 + *(v29 - 24) + 24) = 7;
    *(v26 + *(v29 - 24) + 16) = 2;
    v30 = MEMORY[0x2666E9B30](v26, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ms / MP", 8);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (", 2);
    *(v31 + *(*v31 - 24) + 24) = 4;
    v32 = (*(*a3 + 48))(a3);
    v33 = MEMORY[0x2666E9B90](v31, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " tiles", 6);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " (", 2);
    v36 = (*(*a2 + 48))(a2);
    v37 = strlen(v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ")\n", 2);
  }

  return result;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsTimer>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsTimer,(__HGStats_private::NodeStatsType)0>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v9 = v8[4];
      v15 = &unk_28721EB00;
      v10 = *(v8 + 4);
      v16 = *(v8 + 3);
      v17 = v10;
      if (!v9)
      {
        __cxa_bad_typeid();
      }

      v11 = *(*(*v9 - 8) + 8);
      if (v11 != off_2872215A0 && (((off_2872215A0 & v11 & 0x8000000000000000) != 0) == __OFSUB__(v11, off_2872215A0) || strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL))) && v11 != off_287215D60 && (((off_287215D60 & v11 & 0x8000000000000000) != 0) == __OFSUB__(v11, off_287215D60) || strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL))))
      {
        __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(a3, v9, &v15, a4);
      }

      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != a2);
  }

  return a3;
}

void *__HGStats_private::InOutRoiStatsPrinter<HGNode>::operator()(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*result, "|    ", 5);
    if (v2)
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "         ", 9);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "in #", 4);
      v9 = MEMORY[0x2666E9B60](v8, *(a2 + 2));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ROI ratio : ", 13);
      v11 = *v10;
      *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v10 + *(v11 - 24) + 24) = 4;
      *(v10 + *(v11 - 24) + 16) = 2;
      MEMORY[0x2666E9B30](a2[2] / a2[3]);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
      *(v13 + *(*v13 - 24) + 24) = 10;
      v14 = MEMORY[0x2666E9BA0]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")", 1);
      v15 = "\n";
      v16 = v12;
      v17 = 1;
    }

    else
    {
      v18 = v6;
      v19 = MEMORY[0x2666E9B10](v6, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": ", 2);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "in #", 4);
      v21 = MEMORY[0x2666E9B60](v20, *(a2 + 2));
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " :  ", 4);
      v23 = *v22;
      *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v22 + *(v23 - 24) + 24) = 4;
      *(v22 + *(v23 - 24) + 16) = 2;
      MEMORY[0x2666E9B30](a2[2] / a2[3]);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "  ", 2);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "(input: ", 8);
      *(v25 + *(*v25 - 24) + 24) = 10;
      v26 = MEMORY[0x2666E9BA0]();
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ouput: ", 9);
      *(v27 + *(*v27 - 24) + 24) = 10;
      v28 = MEMORY[0x2666E9BA0]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ")", 1);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "  (", 3);
      v30 = (*(*v3 + 48))(v3);
      v31 = strlen(v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
      v15 = ")\n";
      v16 = v29;
      v17 = 2;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15, v17);
  }

  return result;
}

uint64_t *__HGStats_private::OpStats<__HGStats_private::StatsProfile>::~OpStats(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = *a1;
    do
    {
      (*(*v2 + 16))(v2);
      v2 += 40;
      v4 += 40;
    }

    while (v2 != v3);
    v2 = *a1;
    v3 = a1[1];
  }

  v5 = v2;
  if (v3 != v2)
  {
    v6 = (v3 - 40);
    v7 = v6;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 -= 5;
      (*v9)(v7);
      v6 -= 5;
      v10 = v7 == v2;
      v7 = v8;
    }

    while (!v10);
    v5 = *a1;
  }

  a1[1] = v2;
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v5) >> 3);
  if (v11 > 4)
  {
    if (v2 - v5 != 200)
    {
      v12 = v5 + 200;
      if (v2 != v5 + 200)
      {
        v13 = (v2 - 40);
        v14 = v13;
        v15 = v13;
        do
        {
          v16 = *v15;
          v15 -= 5;
          (*v16)(v14);
          v13 -= 5;
          v10 = v14 == v12;
          v14 = v15;
        }

        while (!v10);
      }

      a1[1] = v12;
    }
  }

  else
  {
    std::vector<__HGStats_private::StatsProfile>::__append(a1, 5 - v11);
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = a1[1];
    v19 = *a1;
    if (v18 != v17)
    {
      v20 = v18 - 40;
      v21 = (v18 - 40);
      v22 = (v18 - 40);
      do
      {
        v23 = *v22;
        v22 -= 5;
        (*v23)(v21);
        v20 -= 40;
        v10 = v21 == v17;
        v21 = v22;
      }

      while (!v10);
      v19 = *a1;
    }

    a1[1] = v17;
    operator delete(v19);
  }

  return a1;
}

void std::vector<__HGStats_private::StatsProfile>::__append(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = a1[1];
      do
      {
        *v3 = &unk_28721EB48;
        *(v3 + 8) = 0uLL;
        *(v3 + 24) = 0uLL;
        v3 += 40;
        v10 += 40;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 40 * v5 + 40 * a2;
    v12 = 40 * v5;
    v13 = 40 * v5;
    do
    {
      *v13 = &unk_28721EB48;
      *(v13 + 8) = 0uLL;
      *(v13 + 24) = 0uLL;
      v13 += 40;
      v12 += 40;
    }

    while (v13 != v11);
    v14 = *a1;
    v15 = a1[1];
    v16 = 40 * v5 - (v15 - *a1);
    if (v15 != *a1)
    {
      v17 = 40 * v5 - 8 * ((v15 - *a1) >> 3);
      v18 = *a1;
      v19 = 40 * v5 - (v15 - *a1);
      do
      {
        *v19 = &unk_28721EB48;
        v20 = *(v18 + 1);
        *(v19 + 24) = *(v18 + 3);
        *(v19 + 8) = v20;
        v18 += 5;
        v19 += 40;
        v17 += 40;
      }

      while (v18 != v15);
      v21 = v14;
      v22 = v14;
      do
      {
        v23 = *v22;
        v22 += 5;
        (*v23)();
        v21 += 5;
      }

      while (v22 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v11;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t *HGStats::CoreStats<HGNode,__HGStats_private::StatsProfile>::~CoreStats(uint64_t a1)
{
  v2 = (a1 + 80);
  std::__tree<HGNode *>::destroy(a1 + 72, *(a1 + 80));
  *(a1 + 72) = v2;
  *(a1 + 88) = 0;
  *v2 = 0;
  std::__tree<HGNode *>::destroy(a1 + 48, *(a1 + 56));
  *(a1 + 48) = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  std::__tree<HGNode *>::destroy(a1 + 24, *(a1 + 32));
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;

  return __HGStats_private::OpStats<__HGStats_private::StatsProfile>::~OpStats(a1);
}

uint64_t __HGStats_private::MergeNodeStats<HGNode,__HGStats_private::StatsTimer,HGNode,__HGStats_private::StatsProfile>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 4);
      if (v2 >= v5)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v2)
    {
      break;
    }

    v3 = *(v4 + 1);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = a2 + 1;
  v4[6] = (*(a2[1] + 24))(a2 + 1) + v4[6];
  *(v4 + 7) += (*(*v6 + 32))(v6);
  *(v4 + 8) += (*(*v6 + 40))(v6);
  result = (*(*v6 + 48))(v6);
  *(v4 + 9) += result;
  return result;
}

__n128 std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<HGNode,__HGStats_private::StatsProfile>>@<Q0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v22[0] = &unk_28721EBD0;
      v22[1] = &unk_28721EB48;
      v10 = a3[2];
      v23 = a3[1];
      v24 = v10;
      v27 = *(a3 + 72);
      v26 = *(a3 + 56);
      v25 = &unk_28721EB48;
      v28 = &unk_28721EB48;
      v11 = a3[7];
      v29 = a3[6];
      v30 = v11;
      v19[0] = v9[4];
      v19[1] = &unk_28721EB48;
      v12 = *(v9 + 4);
      v20 = *(v9 + 3);
      v21 = v12;
      __HGStats_private::ReadRenderAccumulator<HGNode,__HGStats_private::StatsProfile>::operator()(v22, v19, v31);
      v13 = v33;
      a3[1] = v32;
      a3[2] = v13;
      *(a3 + 56) = v34;
      *(a3 + 72) = v35;
      v14 = v37;
      a3[6] = v36;
      a3[7] = v14;
      v15 = v9[1];
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
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != a2);
  }

  *a4 = &unk_28721EBD0;
  *(a4 + 8) = &unk_28721EB48;
  v5 = a3[2];
  *(a4 + 16) = a3[1];
  *(a4 + 32) = v5;
  *(a4 + 48) = &unk_28721EB48;
  *(a4 + 56) = *(a3 + 56);
  *(a4 + 72) = *(a3 + 72);
  *(a4 + 88) = &unk_28721EB48;
  result = *(a3 + 6);
  v7 = a3[7];
  *(a4 + 96) = result;
  *(a4 + 112) = v7;
  return result;
}

__n128 __HGStats_private::ReadRenderAccumulator<HGNode,__HGStats_private::StatsProfile>::operator()@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  isReading = __HGStats_private::isReading(*a2, a1);
  v8 = *(a2 + 8);
  v7 = a2 + 8;
  (*(v8 + 24))(v7);
  v10 = !isReading;
  v11 = 16;
  if (isReading)
  {
    v11 = 56;
    v12 = 64;
  }

  else
  {
    v12 = 24;
  }

  if (v10)
  {
    v13 = 32;
  }

  else
  {
    v13 = 72;
  }

  if (v10)
  {
    v14 = 40;
  }

  else
  {
    v14 = 80;
  }

  *(a1 + v11) = v9 + *(a1 + v11);
  *(a1 + v12) += (*(*v7 + 32))(v7);
  *(a1 + v13) += (*(*v7 + 40))(v7);
  *(a1 + v14) += (*(*v7 + 48))(v7);
  *(a1 + 96) = (*(*v7 + 24))(v7) + *(a1 + 96);
  *(a1 + 104) += (*(*v7 + 32))(v7);
  *(a1 + 112) += (*(*v7 + 40))(v7);
  *(a1 + 120) += (*(*v7 + 48))(v7);
  *a3 = &unk_28721EBD0;
  *(a3 + 8) = &unk_28721EB48;
  v15 = *(a1 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v15;
  *(a3 + 48) = &unk_28721EB48;
  *(a3 + 56) = *(a1 + 56);
  *(a3 + 72) = *(a1 + 72);
  *(a3 + 88) = &unk_28721EB48;
  result = *(a1 + 96);
  v17 = *(a1 + 112);
  *(a3 + 96) = result;
  *(a3 + 112) = v17;
  return result;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v9 = v8[4];
      v19 = &unk_28721EB48;
      v10 = *(v8 + 4);
      v20 = *(v8 + 3);
      v21 = v10;
      if (!v9)
      {
        __cxa_bad_typeid();
      }

      v11 = *(*(*v9 - 8) + 8);
      if (v11 == off_2872215A0 || ((off_2872215A0 & v11 & 0x8000000000000000) != 0) != __OFSUB__(v11, off_2872215A0) && (v12 = v9, v13 = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), v9 = v12, !v13) || v11 == off_287215D60 || ((off_287215D60 & v11 & 0x8000000000000000) != 0) != __OFSUB__(v11, off_287215D60) && (v17 = v9, v18 = strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), v9 = v17, !v18))
      {
        __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(a3, v9, &v19, a4);
      }

      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != a2);
  }

  return a3;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      v9 = v8[4];
      v15 = &unk_28721EB48;
      v10 = *(v8 + 4);
      v16 = *(v8 + 3);
      v17 = v10;
      if (!v9)
      {
        __cxa_bad_typeid();
      }

      v11 = *(*(*v9 - 8) + 8);
      if (v11 != off_2872215A0 && (((off_2872215A0 & v11 & 0x8000000000000000) != 0) == __OFSUB__(v11, off_2872215A0) || strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL))) && v11 != off_287215D60 && (((off_287215D60 & v11 & 0x8000000000000000) != 0) == __OFSUB__(v11, off_287215D60) || strcmp((v11 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL))))
      {
        __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(a3, v9, &v15, a4);
      }

      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != a2);
  }

  return a3;
}

void *__HGStats_private::NodePixelsPrinter<HGNode>::operator()(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "|    ", 5);
  v4 = MEMORY[0x2666E9B10](v3, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ROI: ", 5);
  *(v5 + *(*v5 - 24) + 24) = 10;
  v6 = MEMORY[0x2666E9BA0]();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " pixels", 7);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  *(v8 + *(*v8 - 24) + 24) = 4;
  v9 = MEMORY[0x2666E9BA0]();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " nodes", 6);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (", 2);
  v12 = (*(*v2 + 48))(v2);
  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")\n", 2);
}

void *__HGStats_private::NodeStatsVerbosePrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>::operator()(void *result, unint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    __cxa_bad_typeid();
  }

  v4 = result;
  v5 = *(*(*v2 - 8) + 8);
  if (v5 == off_2872215A0 || ((off_2872215A0 & v5 & 0x8000000000000000) != 0) != __OFSUB__(v5, off_2872215A0) && (result = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), !result) || v5 == off_287215D60 || ((off_287215D60 & v5 & 0x8000000000000000) != 0) != __OFSUB__(v5, off_287215D60) && (result = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    v6 = a2[3];
    if (v6)
    {
      __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(*v4, v2, (a2 + 1), v4[1]);
      result = __HGStats_private::NodePixels<HGNode>::outputComputeRatio(v4[2], *v4, *a2, v6);
      v7 = v4[3];
      v8 = *v4;
      v9 = *a2;
      v12 = *v7;
      v11 = v7 + 1;
      v10 = v12;
      v18[0] = v8;
      v18[1] = v9;
      if (v12 != v11)
      {
        do
        {
          v13 = *(v10 + 3);
          v17[0] = *(v10 + 2);
          v17[1] = v13;
          result = __HGStats_private::InOutRoiStatsPrinter<HGNode>::operator()(v18, v17);
          v14 = v10[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v10[2];
              v16 = *v15 == v10;
              v10 = v15;
            }

            while (!v16);
          }

          v10 = v15;
        }

        while (v15 != v11);
      }
    }
  }

  return result;
}

void *__HGStats_private::NodePixels<HGNode>::outputComputeRatio(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = v5[4];
      if (v7 <= a3)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 >= a3)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = v6[5];
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "|               out ROI ratio : ", 32);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v9 + *(v10 - 24) + 24) = 4;
  *(v9 + *(v10 - 24) + 16) = 2;
  v11 = MEMORY[0x2666E9B30](a4 / v8);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (", 2);
  *(v12 + *(*v12 - 24) + 24) = 10;
  v13 = MEMORY[0x2666E9BA0]();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " (", 2);
  *(v15 + *(*v15 - 24) + 24) = 4;
  v16 = MEMORY[0x2666E9BA0]();

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " nodes)\n", 8);
}

void *__HGStats_private::NodeStatsVerbosePrinter<HGNode,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>::operator()(void *result, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*(*v2 - 8) + 8);
  if (v3 != off_2872215A0)
  {
    if (((off_2872215A0 & v3 & 0x8000000000000000) != 0) == __OFSUB__(v3, off_2872215A0) || (v4 = result, v5 = a2, v6 = strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v5, v7 = v6, result = v4, v7))
    {
      if (v3 != off_287215D60)
      {
        if (((off_287215D60 & v3 & 0x8000000000000000) != 0) == __OFSUB__(v3, off_287215D60) || (v8 = result, v9 = (v3 & 0x7FFFFFFFFFFFFFFFLL), v10 = a2, v11 = strcmp(v9, (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v10, v12 = v11, result = v8, v12))
        {
          v13 = *(a2 + 24);
          if (v13)
          {
            v14 = result;
            v15 = a2;
            __HGStats_private::printNodeStats<HGNode,__HGStats_private::StatsTimer const>(*result, v2, a2 + 8, result[1]);
            result = __HGStats_private::NodePixels<HGNode>::outputComputeRatio(v14[2], *v14, *v15, v13);
            v16 = v14[3];
            v17 = *v14;
            v18 = *v15;
            v21 = *v16;
            v19 = v16 + 1;
            v20 = v21;
            v27[0] = v17;
            v27[1] = v18;
            if (v21 != v19)
            {
              do
              {
                v22 = *(v20 + 3);
                v26[0] = *(v20 + 2);
                v26[1] = v22;
                result = __HGStats_private::InOutRoiStatsPrinter<HGNode>::operator()(v27, v26);
                v23 = v20[1];
                if (v23)
                {
                  do
                  {
                    v24 = v23;
                    v23 = *v23;
                  }

                  while (v23);
                }

                else
                {
                  do
                  {
                    v24 = v20[2];
                    v25 = *v24 == v20;
                    v20 = v24;
                  }

                  while (!v25);
                }

                v20 = v24;
              }

              while (v24 != v19);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::MergeNodeStats<HGNode,__HGStats_private::StatsProfile,std::type_info const,__HGStats_private::StatsProfile>>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = (a3 + 8);
    do
    {
      v16 = v6[4];
      v17 = &unk_28721EB48;
      v8 = *(v6 + 4);
      v18 = *(v6 + 3);
      v19 = v8;
      if (!v16)
      {
        __cxa_bad_typeid();
      }

      v9 = *(*v16 - 8);
      v10 = *v7;
      if (!*v7)
      {
LABEL_12:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v10;
          v12 = v10[4];
          if (v9 >= v12)
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_12;
          }
        }

        if (v12 >= v9)
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      __HGStats_private::StatsProfile::operator+=((v11 + 5), &v17);
      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != a2);
  }

  return a3;
}

uint64_t std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__HGStats_private::RoiStatsID<HGNode>,__HGStats_private::RoiStats>,std::__tree_node<std::__value_type<__HGStats_private::RoiStatsID<HGNode>,__HGStats_private::RoiStats>,void *> *,long>>,__HGStats_private::MergeRoiStats<HGNode,std::type_info const>>(int64x2_t *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 8);
    do
    {
      v6 = v4[2].i64[0];
      if (!v6)
      {
        __cxa_bad_typeid();
      }

      v7 = v4[2].u32[2];
      v8 = *(*v6 - 8);
      v9 = *v5;
      if (!*v5)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = v9[2].u64[0];
          v12 = v10[2].u32[2];
          v13 = v12 > v7;
          if (v8 != v11)
          {
            v13 = v8 < v11;
          }

          if (!v13)
          {
            break;
          }

          v9 = v10->i64[0];
          if (!v10->i64[0])
          {
            goto LABEL_17;
          }
        }

        v14 = v12 < v7;
        v15 = v8 == v11 ? v14 : v11 < v8;
        if (v15 != 1)
        {
          break;
        }

        v9 = v10->i64[1];
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v10[3] = vaddq_s64(v10[3], v4[3]);
      v16 = v4->i64[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = v16->i64[0];
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v4[1].i64[0];
          v18 = *v17 == v4;
          v4 = v17;
        }

        while (!v18);
      }

      v4 = v17;
    }

    while (v17 != a2);
  }

  return a3;
}

uint64_t std::for_each[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<HGNode *,__HGStats_private::NodePixelsStats>,std::__tree_node<std::__value_type<HGNode *,__HGStats_private::NodePixelsStats>,void *> *,long>>,__HGStats_private::MergeNodePixels<HGNode,std::type_info const>>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 8);
    do
    {
      v6 = v4[4];
      if (!v6)
      {
        __cxa_bad_typeid();
      }

      v7 = *(*v6 - 8);
      v8 = *v5;
      if (!*v5)
      {
LABEL_12:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = v8[4];
          if (v7 >= v10)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_12;
          }
        }

        if (v10 >= v7)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      *(v9 + 5) = vaddq_s64(*(v9 + 5), *(v4 + 5));
      v11 = v4[1];
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
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != a2);
  }

  return a3;
}

__n128 std::accumulate[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::RRStatsProfile,__HGStats_private::ReadRenderAccumulator<std::type_info const,__HGStats_private::StatsProfile>>@<Q0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v22[0] = &unk_28721EBD0;
      v22[1] = &unk_28721EB48;
      v10 = a3[2];
      v23 = a3[1];
      v24 = v10;
      v27 = *(a3 + 72);
      v26 = *(a3 + 56);
      v25 = &unk_28721EB48;
      v28 = &unk_28721EB48;
      v11 = a3[7];
      v29 = a3[6];
      v30 = v11;
      v19[0] = v9[4];
      v19[1] = &unk_28721EB48;
      v12 = *(v9 + 4);
      v20 = *(v9 + 3);
      v21 = v12;
      __HGStats_private::ReadRenderAccumulator<std::type_info const,__HGStats_private::StatsProfile>::operator()(v22, v19, v31);
      v13 = v33;
      a3[1] = v32;
      a3[2] = v13;
      *(a3 + 56) = v34;
      *(a3 + 72) = v35;
      v14 = v37;
      a3[6] = v36;
      a3[7] = v14;
      v15 = v9[1];
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
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != a2);
  }

  *a4 = &unk_28721EBD0;
  *(a4 + 8) = &unk_28721EB48;
  v5 = a3[2];
  *(a4 + 16) = a3[1];
  *(a4 + 32) = v5;
  *(a4 + 48) = &unk_28721EB48;
  *(a4 + 56) = *(a3 + 56);
  *(a4 + 72) = *(a3 + 72);
  *(a4 + 88) = &unk_28721EB48;
  result = *(a3 + 6);
  v7 = a3[7];
  *(a4 + 96) = result;
  *(a4 + 112) = v7;
  return result;
}

__n128 __HGStats_private::ReadRenderAccumulator<std::type_info const,__HGStats_private::StatsProfile>::operator()@<Q0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 8);
  if (off_2872215A0 == v6 || ((off_2872215A0 & v6 & 0x8000000000000000) != 0) != __OFSUB__(off_2872215A0, v6) && !strcmp((v6 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)) || off_287215D60 == v6 || ((off_287215D60 & v6 & 0x8000000000000000) != 0) != __OFSUB__(off_287215D60, v6) && !strcmp((v6 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    v7 = 80;
    v8 = 72;
    v9 = 64;
    v10 = 56;
  }

  else
  {
    v7 = 40;
    v8 = 32;
    v9 = 24;
    v10 = 16;
  }

  v12 = a2[1];
  v11 = a2 + 1;
  *(a1 + v10) = (*(v12 + 24))(v11) + *(a1 + v10);
  *(a1 + v9) += (*(*v11 + 32))(v11);
  *(a1 + v8) += (*(*v11 + 40))(v11);
  *(a1 + v7) += (*(*v11 + 48))(v11);
  *(a1 + 96) = (*(*v11 + 24))(v11) + *(a1 + 96);
  *(a1 + 104) += (*(*v11 + 32))(v11);
  *(a1 + 112) += (*(*v11 + 40))(v11);
  *(a1 + 120) += (*(*v11 + 48))(v11);
  *a3 = &unk_28721EBD0;
  *(a3 + 8) = &unk_28721EB48;
  v13 = *(a1 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v13;
  *(a3 + 48) = &unk_28721EB48;
  *(a3 + 56) = *(a1 + 56);
  *(a3 + 72) = *(a1 + 72);
  *(a3 + 88) = &unk_28721EB48;
  result = *(a1 + 96);
  v15 = *(a1 + 112);
  *(a3 + 96) = result;
  *(a3 + 112) = v15;
  return result;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    v9 = off_2872215A0;
    do
    {
      v10 = v8[4];
      v20 = &unk_28721EB48;
      v11 = *(v8 + 4);
      v21 = *(v8 + 3);
      v22 = v11;
      v12 = *(v10 + 8);
      if (v9 == v12 || ((v9 & v12 & 0x8000000000000000) != 0) != __OFSUB__(v9, v12) && (v13 = v10, v14 = strcmp((v12 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)), v10 = v13, !v14) || off_287215D60 == v12 || ((off_287215D60 & v12 & 0x8000000000000000) != 0) != __OFSUB__(off_287215D60, v12) && (v18 = v10, v19 = strcmp((v12 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), v10 = v18, !v19))
      {
        __HGStats_private::printNodeStats<std::type_info,__HGStats_private::StatsProfile const>(a3, v10, &v20, a4);
      }

      v15 = v8[1];
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
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != a2);
  }

  return a3;
}

void *__HGStats_private::printNodeStats<std::type_info,__HGStats_private::StatsProfile const>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a3 + 32))(a3);
  if (result)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "|    ", 5);
    v10 = (*(*a4 + 24))(a4);
    v11 = (*(*a3 + 24))(a3) * 100.0 / v10;
    v12 = *v9;
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v9 + *(v12 - 24) + 24) = 7;
    *(v9 + *(v12 - 24) + 16) = 2;
    v13 = MEMORY[0x2666E9B30](v9);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ms (", 5);
    v15 = *v14;
    *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v14 + *(v15 - 24) + 24) = 4;
    *(v14 + *(v15 - 24) + 16) = 1;
    v16 = MEMORY[0x2666E9B30](v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "%)", 2);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
    v18 = (*(*a4 + 32))(a4);
    v19 = (*(*a3 + 32))(a3);
    v20 = v19 * 100.0 / v18;
    *(v17 + *(*v17 - 24) + 24) = 10;
    v21 = MEMORY[0x2666E9B90](v17, v19);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " pixels (", 9);
    v23 = *v22;
    *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v22 + *(v23 - 24) + 24) = 4;
    *(v22 + *(v23 - 24) + 16) = 1;
    v24 = MEMORY[0x2666E9B30](v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "%)", 2);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", ", 2);
    v26 = (*(*a3 + 24))(a3) * 1000000.0;
    v27.n128_f64[0] = v26 / (*(*a3 + 32))(a3);
    v28 = *v25;
    *(v25 + *(*v25 - 24) + 8) = *(v25 + *(*v25 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v25 + *(v28 - 24) + 24) = 7;
    *(v25 + *(v28 - 24) + 16) = 2;
    v29 = MEMORY[0x2666E9B30](v25, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ms / MP", 8);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " (", 2);
    *(v30 + *(*v30 - 24) + 24) = 4;
    v31 = (*(*a3 + 48))(a3);
    v32 = MEMORY[0x2666E9B90](v30, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " tiles", 6);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " (", 2);
    v35 = *(a2 + 8);
    v36 = strlen((v35 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35 & 0x7FFFFFFFFFFFFFFFLL, v36);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ")\n", 2);
  }

  return result;
}

void *std::for_each[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,std::__tree_node<std::__value_type<std::type_info const*,__HGStats_private::StatsProfile>,void *> *,long>>,__HGStats_private::NodeStatsPrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    v9 = off_2872215A0;
    do
    {
      v10 = v8[4];
      v16 = &unk_28721EB48;
      v11 = *(v8 + 4);
      v17 = *(v8 + 3);
      v18 = v11;
      v12 = *(v10 + 8);
      if (v9 != v12 && (((v9 & v12 & 0x8000000000000000) != 0) == __OFSUB__(v9, v12) || strcmp((v12 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL))) && off_287215D60 != v12 && (((off_287215D60 & v12 & 0x8000000000000000) != 0) == __OFSUB__(off_287215D60, v12) || strcmp((v12 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL))))
      {
        __HGStats_private::printNodeStats<std::type_info,__HGStats_private::StatsProfile const>(a3, v10, &v16, a4);
      }

      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
    }

    while (v14 != a2);
  }

  return a3;
}

void *__HGStats_private::NodePixelsPrinter<std::type_info const>::operator()(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "|    ", 5);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ROI: ", 5);
  *(v4 + *(*v4 - 24) + 24) = 10;
  v5 = MEMORY[0x2666E9BA0]();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " pixels", 7);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  *(v7 + *(*v7 - 24) + 24) = 4;
  v8 = MEMORY[0x2666E9BA0]();
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " nodes", 6);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (", 2);
  v11 = *(v2 + 8);
  v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11 & 0x7FFFFFFFFFFFFFFFLL, v12);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")\n", 2);
}

void *__HGStats_private::InOutRoiStatsPrinter<std::type_info const>::operator()(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*result, "|    ", 5);
    if (v2)
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "         ", 9);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "in #", 4);
      v9 = MEMORY[0x2666E9B60](v8, *(a2 + 2));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ROI ratio : ", 13);
      v11 = *v10;
      *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v10 + *(v11 - 24) + 24) = 4;
      *(v10 + *(v11 - 24) + 16) = 2;
      MEMORY[0x2666E9B30](a2[2] / a2[3]);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(", 1);
      *(v13 + *(*v13 - 24) + 24) = 10;
      v14 = MEMORY[0x2666E9BA0]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ")", 1);
      v15 = "\n";
      v16 = v12;
      v17 = 1;
    }

    else
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "in #", 4);
      v19 = MEMORY[0x2666E9B60](v18, *(a2 + 2));
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " :  ", 4);
      v21 = *v20;
      *(v20 + *(*v20 - 24) + 8) = *(v20 + *(*v20 - 24) + 8) & 0xFFFFFEFB | 4;
      *(v20 + *(v21 - 24) + 24) = 4;
      *(v20 + *(v21 - 24) + 16) = 2;
      MEMORY[0x2666E9B30](a2[2] / a2[3]);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "  ", 2);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "(input: ", 8);
      *(v23 + *(*v23 - 24) + 24) = 10;
      v24 = MEMORY[0x2666E9BA0]();
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ouput: ", 9);
      *(v25 + *(*v25 - 24) + 24) = 10;
      v26 = MEMORY[0x2666E9BA0]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ")", 1);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "  (", 3);
      v28 = *(v3 + 8);
      v29 = strlen((v28 & 0x7FFFFFFFFFFFFFFFLL));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28 & 0x7FFFFFFFFFFFFFFFLL, v29);
      v15 = ")\n";
      v16 = v27;
      v17 = 2;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v15, v17);
  }

  return result;
}

void *__HGStats_private::NodeStatsVerbosePrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)1>::operator()(void *result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(*a2 + 8);
  if (off_2872215A0 == v5 || ((off_2872215A0 & v5 & 0x8000000000000000) != 0) != __OFSUB__(off_2872215A0, v5) && (result = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), !result) || off_287215D60 == v5 || ((off_287215D60 & v5 & 0x8000000000000000) != 0) != __OFSUB__(off_287215D60, v5) && (result = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    v6 = a2[3];
    if (v6)
    {
      __HGStats_private::printNodeStats<std::type_info,__HGStats_private::StatsProfile const>(*v3, v4, (a2 + 1), v3[1]);
      result = __HGStats_private::NodePixels<HGNode>::outputComputeRatio(v3[2], *v3, *a2, v6);
      v7 = v3[3];
      v8 = *v3;
      v9 = *a2;
      v12 = *v7;
      v11 = v7 + 1;
      v10 = v12;
      v18[0] = v8;
      v18[1] = v9;
      if (v12 != v11)
      {
        do
        {
          v13 = *(v10 + 3);
          v17[0] = *(v10 + 2);
          v17[1] = v13;
          result = __HGStats_private::InOutRoiStatsPrinter<std::type_info const>::operator()(v18, v17);
          v14 = v10[1];
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = v10[2];
              v16 = *v15 == v10;
              v10 = v15;
            }

            while (!v16);
          }

          v10 = v15;
        }

        while (v15 != v11);
      }
    }
  }

  return result;
}

void *__HGStats_private::NodeStatsVerbosePrinter<std::type_info const,__HGStats_private::StatsProfile,(__HGStats_private::NodeStatsType)0>::operator()(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 8);
  if (off_2872215A0 != v3)
  {
    if (((off_2872215A0 & v3 & 0x8000000000000000) != 0) == __OFSUB__(off_2872215A0, v3) || (v4 = result, v5 = a2, v6 = strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (off_2872215A0 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v5, v7 = v6, result = v4, v7))
    {
      if (off_287215D60 != v3)
      {
        if (((off_287215D60 & v3 & 0x8000000000000000) != 0) == __OFSUB__(off_287215D60, v3) || (v8 = result, v9 = (v3 & 0x7FFFFFFFFFFFFFFFLL), v10 = a2, v11 = strcmp(v9, (off_287215D60 & 0x7FFFFFFFFFFFFFFFLL)), a2 = v10, v12 = v11, result = v8, v12))
        {
          v13 = a2[3];
          if (v13)
          {
            v14 = result;
            v15 = a2;
            __HGStats_private::printNodeStats<std::type_info,__HGStats_private::StatsProfile const>(*result, v2, (a2 + 1), result[1]);
            result = __HGStats_private::NodePixels<HGNode>::outputComputeRatio(v14[2], *v14, *v15, v13);
            v16 = v14[3];
            v17 = *v14;
            v18 = *v15;
            v21 = *v16;
            v19 = v16 + 1;
            v20 = v21;
            v27[0] = v17;
            v27[1] = v18;
            if (v21 != v19)
            {
              do
              {
                v22 = *(v20 + 3);
                v26[0] = *(v20 + 2);
                v26[1] = v22;
                result = __HGStats_private::InOutRoiStatsPrinter<std::type_info const>::operator()(v27, v26);
                v23 = v20[1];
                if (v23)
                {
                  do
                  {
                    v24 = v23;
                    v23 = *v23;
                  }

                  while (v23);
                }

                else
                {
                  do
                  {
                    v24 = v20[2];
                    v25 = *v24 == v20;
                    v20 = v24;
                  }

                  while (!v25);
                }

                v20 = v24;
              }

              while (v24 != v19);
            }
          }
        }
      }
    }
  }

  return result;
}

void *HGTexture::HGTexture(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = HGBitmap::HGBitmap(a1, a2, a3, a4, a5);
  *result = &unk_28721EC30;
  return result;
}

void HGTexture::~HGTexture(HGBitmap *this, void *a2)
{
  HGBitmap::~HGBitmap(this, a2);

  HGObject::operator delete(v2);
}

BOOL TextureDeleteQueue::DeleteRequest::test(TextureDeleteQueue::DeleteRequest *this)
{
  v2 = (HGGetTBC() - *(this + 15)) * 1000000000.0;
  if ((v2 / HGGetTBCFrequency()) < 0xF4241)
  {
    return 0;
  }

  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    HGLogger::log("texManager", 2, "DeleteRequest::test(%d)\n", v3, v4, *(this + 18));
  }

  v8 = glClientWaitSyncAPPLE();
  if (v8 == 37149)
  {
    HGLogger::warning("gl sync error -- WAIT_FAILED_APPLE", v6, v7);
  }

  return v8 == 37146;
}

void TextureDeleteQueue::DeleteRequest::execute(TextureDeleteQueue::DeleteRequest *this)
{
  v2 = glClientWaitSyncAPPLE();
  glDeleteSyncAPPLE();
  if (v2 == 37147)
  {
    v7 = "gl sync error -- TIMEOUT_EXPIRED_APPLE";
  }

  else
  {
    if (v2 != 37149)
    {
      goto LABEL_6;
    }

    v7 = "gl sync error -- WAIT_FAILED_APPLE";
  }

  HGLogger::warning(v7, v3, v4);
LABEL_6:
  if (*(this + 112))
  {
    v8 = *(this + 113);
    v9 = atomic_load(HGLogger::_enabled);
    if (v8 == 1)
    {
      if (v9)
      {
        HGLogger::log("texManager", 2, "DeleteRequest::execute() -- adding texture %d to free texture pool\n", v5, v6, *(this + 18));
      }

      v10 = *(*this + 16);
      {
        operator new();
      }

      if (!v11)
      {
        goto LABEL_26;
      }

      do
      {
        v13 = *(v11 + 32);
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      {
LABEL_26:
      }

      v17 = *(v12 + 40);
      pthread_mutex_lock((v17 + 16));
      *(this + 22) = 1;
      v18 = HGGetTBC();
      v19 = *(v17 + 96);
      v20 = *(v17 + 88);
      v21 = 42 * ((v19 - v20) >> 3) - 1;
      *(this + 12) = v18;
      if (v19 == v20)
      {
        v21 = 0;
      }

      v22 = *(v17 + 120) + *(v17 + 112);
      if (v21 == v22)
      {
        std::deque<HGTextureManager::TextureEntry>::__add_back_capacity((v17 + 80));
        v20 = *(v17 + 88);
        v22 = *(v17 + 120) + *(v17 + 112);
      }

      v23 = (*(v20 + 8 * (v22 / 0x2A)) + 96 * (v22 % 0x2A));
      v24 = *(this + 24);
      *v23 = *(this + 8);
      v23[1] = v24;
      v25 = *(this + 40);
      v26 = *(this + 56);
      v27 = *(this + 88);
      v23[4] = *(this + 72);
      v23[5] = v27;
      v23[2] = v25;
      v23[3] = v26;
      ++*(v17 + 120);
      v28 = (v17 + 128);
      if (*(this + 64) == 2)
      {
        v29 = *(this + 21);
        v30 = 3;
      }

      else
      {
        v29 = *(this + 21);
        if (*(this + 77) == 1)
        {
          *v28 = vaddq_s64(*v28, vdupq_n_s64(v29));
          if (*(this + 76) < 0)
          {
LABEL_38:
            pthread_mutex_unlock((v17 + 16));
            goto LABEL_39;
          }

          v30 = 2;
        }

        else
        {
          v30 = 4;
        }
      }

      v28->i64[v30] += v29;
      goto LABEL_38;
    }

    if (v9)
    {
      HGLogger::log("texManager", 2, "DeleteRequest::execute() -- deleting texture %d\n", v5, v6, *(this + 18));
    }

    v32 = *(this + 18);
    HGTextureManager::deleteTexture(*this, &v32);
  }

  else
  {
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      HGLogger::log("texManager", 2, "DeleteRequest::execute() -- finished unowned texture %d\n", v5, v6, *(this + 18));
    }
  }

LABEL_39:
  HGTextureManager::_dumpTextures(*this, *(*this + 16));
  if (*(this + 13))
  {
    pthread_mutex_lock(*(*this + 112));
    v31 = *(*this + 112);
    v33 = *(this + 13);
    std::vector<HGMTLFunctionType>::push_back[abi:ne200100](v31 + 64, &v33);
    pthread_mutex_unlock(*(*this + 112));
  }
}

void HGTextureManager::deleteTexture(HGTextureManager *this, const unsigned int *a2)
{
  pthread_mutex_lock((this + 48));
  HGGLContext::context(&v4, *(this + 5));
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v5, &v4.var0);
  PCSharedCount::PCSharedCount(&v4);
  glDeleteTextures(1, a2);
  pthread_mutex_unlock((this + 48));
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v5);
}

void sub_25FCC9148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void TextureDeleteQueue::TextureDeleteQueue(TextureDeleteQueue *this)
{
  HGObject::HGObject(this);
  *v2 = &unk_28721ECB0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 400) = 1;
  *(v2 + 404) = 257;
  *(v2 + 406) = 1;
  pthread_mutex_init((v2 + 128), 0);
  pthread_cond_init(this + 4, 0);
  pthread_cond_init(this + 5, 0);
  pthread_cond_init(this + 6, 0);
  pthread_mutex_init((this + 336), 0);
  *(this + 405) = 0;
  if (pthread_create(this + 9, 0, textureFinishThread, this))
  {
    HGLogger::warning("ERROR - couldn't create texture finish thread\n", v3, v4);
  }

  else
  {
    v7 = atomic_load(HGLogger::_enabled);
    if (v7)
    {
      HGLogger::log("init", 1, "texture finish thread created succesfully\n", v5, v6);
    }
  }

  pthread_mutex_lock(this + 2);
  while ((*(this + 405) & 1) == 0)
  {
    pthread_cond_wait(this + 5, this + 2);
  }

  pthread_mutex_unlock(this + 2);
}

void sub_25FCC9294(_Unwind_Exception *a1)
{
  std::deque<TextureDeleteQueue::DeleteRequest>::~deque[abi:ne200100](v1 + 80);
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

uint64_t textureFinishThread(TextureDeleteQueue *a1)
{
  pthread_setname_np("com.apple.helium-texture-finish");
  TextureDeleteQueue::threadLoop(a1);
  return 0;
}

void TextureDeleteQueue::~TextureDeleteQueue(TextureDeleteQueue *this)
{
  *this = &unk_28721ECB0;
  TextureDeleteQueue::finishQueue(this);
  pthread_mutex_lock(this + 2);
  *(this + 406) = 0;
  pthread_cond_signal(this + 4);
  pthread_mutex_unlock(this + 2);
  pthread_join(*(this + 9), 0);
  pthread_mutex_destroy(this + 2);
  pthread_cond_destroy(this + 4);
  pthread_cond_destroy(this + 5);
  pthread_cond_destroy(this + 6);
  pthread_mutex_destroy((this + 336));
  std::deque<TextureDeleteQueue::DeleteRequest>::~deque[abi:ne200100](this + 80);

  HGObject::~HGObject(this);
}

{
  TextureDeleteQueue::~TextureDeleteQueue(this);

  HGObject::operator delete(v1);
}

void TextureDeleteQueue::finishQueue(TextureDeleteQueue *this)
{
  HGTraceGuard::HGTraceGuard(v2, "texManager", 2, "TextureDeleteQueue::finishQueue()");
  if (*(this + 404) == 1)
  {
    pthread_mutex_lock(this + 2);
    while (*(this + 15))
    {
      TextureDeleteQueue::_popFrontRequest(this, v3);
      pthread_mutex_unlock(this + 2);
      TextureDeleteQueue::DeleteRequest::execute(v3);
      pthread_mutex_lock(this + 2);
    }
  }

  else
  {
    pthread_mutex_lock(this + 2);
    *(this + 404) = 1;
    if ((*(this + 405) & 1) == 0)
    {
      do
      {
        pthread_cond_wait(this + 5, this + 2);
      }

      while (*(this + 405) != 1);
    }

    while (*(this + 15))
    {
      TextureDeleteQueue::_popFrontRequest(this, v3);
      TextureDeleteQueue::DeleteRequest::execute(v3);
    }

    *(this + 404) = 0;
    pthread_cond_signal(this + 4);
  }

  pthread_mutex_unlock(this + 2);
  HGTraceGuard::~HGTraceGuard(v2);
}

void sub_25FCC9490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCC94A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCC94B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCC94CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void TextureDeleteQueue::threadLoop(TextureDeleteQueue *this)
{
  if (*(this + 406) == 1)
  {
    v2 = 0;
    v3 = (this + 16);
    while ((v2 & 1) != 0)
    {
      gettimeofday(&v22, 0);
      v23.tv_sec = v22.tv_sec;
      v23.tv_nsec = 1000 * v22.tv_usec + 40000000;
      if (v23.tv_nsec >= 0x3B9ACA00uLL)
      {
        v23.tv_sec = v22.tv_sec + 1;
        v23.tv_nsec = 1000 * v22.tv_usec - 960000000;
      }

      pthread_mutex_lock(this + 2);
      if ((*(this + 406) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (v2)
      {
        *(this + 405) = 1;
        pthread_cond_signal(this + 5);
        pthread_cond_timedwait(this + 4, this + 2, &v23);
        if ((*(this + 406) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      while ((*(this + 404) & 1) != 0 || !*(this + 15))
      {
        *(this + 405) = 1;
        pthread_cond_signal(this + 5);
        pthread_cond_wait(this + 4, this + 2);
        if ((*(this + 406) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      *(this + 405) = 0;
LABEL_17:
      if (TextureDeleteQueue::DeleteRequest::test((*(*(this + 11) + 8 * (*(this + 14) / 0x1EuLL)) + 136 * (*(this + 14) % 0x1EuLL))))
      {
        v5 = *(this + 11);
        v6 = *(this + 14);
        v7 = v5[v6 / 0x1E] + 136 * (v6 % 0x1E);
        v8 = *(v7 + 112);
        v19 = *(v7 + 96);
        v20 = v8;
        v21 = *(v7 + 128);
        v9 = *(v7 + 48);
        v16[2] = *(v7 + 32);
        v16[3] = v9;
        v10 = *(v7 + 80);
        v17 = *(v7 + 64);
        v18 = v10;
        v11 = *(v7 + 16);
        v16[0] = *v7;
        v16[1] = v11;
        if (v17 == 2)
        {
          v12 = SDWORD1(v18);
          v13 = 3;
LABEL_26:
          v3->i64[v13] -= v12;
          goto LABEL_27;
        }

        v12 = SDWORD1(v18);
        if (BYTE13(v17) != 1)
        {
          v13 = 4;
          goto LABEL_26;
        }

        *v3 = vsubq_s64(*v3, vdupq_n_s64(SDWORD1(v18)));
        if ((SBYTE12(v17) & 0x80000000) == 0)
        {
          v13 = 2;
          goto LABEL_26;
        }

LABEL_27:
        v14 = *(this + 15) - 1;
        v15 = v6 + 1;
        *(this + 14) = v15;
        *(this + 15) = v14;
        if (v15 >= 0x3C)
        {
          operator delete(*v5);
          *(this + 11) += 8;
          *(this + 14) -= 30;
        }

        pthread_cond_broadcast(this + 6);
        pthread_mutex_unlock(this + 2);
        TextureDeleteQueue::DeleteRequest::execute(v16);
        v2 = 0;
        if ((*(this + 406) & 1) == 0)
        {
          return;
        }
      }

      else
      {
LABEL_3:
        pthread_mutex_unlock(this + 2);
        v2 = 1;
        if ((*(this + 406) & 1) == 0)
        {
          return;
        }
      }
    }

    pthread_mutex_lock(this + 2);
    if (*(this + 406))
    {
      goto LABEL_14;
    }

LABEL_12:
    v4 = *(this + 15);
    *(this + 405) = 0;
    if (!v4)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }
}

uint64_t TextureDeleteQueue::enqueueDelete(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, char *a5, char a6, char a7)
{
  v9 = a5;
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("texManager", 2, "TextureDeleteQueue::enqueueDelete(%d)\n", a4, a5, *(a3 + 64));
  }

  v15 = *(a3 + 48);
  *&v32[40] = *(a3 + 32);
  *&v32[56] = v15;
  v16 = *(a3 + 80);
  *&v32[72] = *(a3 + 64);
  *&v32[88] = v16;
  v17 = *(a3 + 16);
  *&v32[8] = *a3;
  *&v32[24] = v17;
  *v32 = a2;
  *&v32[104] = a4;
  LOBYTE(v33) = a6;
  BYTE1(v33) = a7;
  *(&v33 + 1) = HGGetTBC();
  v34 = glFenceSyncAPPLE();
  glFlush();
  if (!v9)
  {
    TextureDeleteQueue::DeleteRequest::execute(v32);
    return *(a3 + 64);
  }

  pthread_mutex_lock((a1 + 128));
  v18 = *(a1 + 96);
  v19 = *(a1 + 88);
  v20 = 30 * ((v18 - v19) >> 3) - 1;
  if (v18 == v19)
  {
    v20 = 0;
  }

  v21 = *(a1 + 120) + *(a1 + 112);
  if (v20 == v21)
  {
    std::deque<TextureDeleteQueue::DeleteRequest>::__add_back_capacity((a1 + 80));
    v19 = *(a1 + 88);
    v21 = *(a1 + 120) + *(a1 + 112);
  }

  v22 = *(v19 + 8 * (v21 / 0x1E)) + 136 * (v21 % 0x1E);
  v23 = *&v32[48];
  *(v22 + 32) = *&v32[32];
  *(v22 + 48) = v23;
  v24 = v33;
  v25 = *&v32[80];
  *(v22 + 96) = *&v32[96];
  *(v22 + 112) = v24;
  v26 = *&v32[64];
  *(v22 + 128) = v34;
  *(v22 + 64) = v26;
  *(v22 + 80) = v25;
  v27 = *&v32[16];
  *v22 = *v32;
  *(v22 + 16) = v27;
  ++*(a1 + 120);
  v28 = (a1 + 16);
  if (v32[64] == 2)
  {
    v29 = *&v32[84];
    v30 = 3;
LABEL_15:
    v28->i64[v30] += v29;
    goto LABEL_16;
  }

  v29 = *&v32[84];
  if (v32[77] != 1)
  {
    v30 = 4;
    goto LABEL_15;
  }

  *v28 = vaddq_s64(*v28, vdupq_n_s64(*&v32[84]));
  if ((v32[76] & 0x80000000) == 0)
  {
    v30 = 2;
    goto LABEL_15;
  }

LABEL_16:
  if ((*(a1 + 404) & 1) == 0)
  {
    pthread_cond_signal((a1 + 192));
  }

  pthread_mutex_unlock((a1 + 128));
  return *(a3 + 64);
}

uint64_t TextureDeleteQueue::_popFrontRequest@<X0>(pthread_cond_t *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *&this[1].__opaque[32];
  v4 = *&this[2].__opaque[8];
  v5 = v3[v4 / 0x1E] + 136 * (v4 % 0x1E);
  v6 = *(v5 + 112);
  *(a2 + 96) = *(v5 + 96);
  *(a2 + 112) = v6;
  *(a2 + 128) = *(v5 + 128);
  v7 = *(v5 + 48);
  *(a2 + 32) = *(v5 + 32);
  *(a2 + 48) = v7;
  v8 = *(v5 + 80);
  *(a2 + 64) = *(v5 + 64);
  *(a2 + 80) = v8;
  v9 = *(v5 + 16);
  *a2 = *v5;
  *(a2 + 16) = v9;
  v10 = &this->__opaque[8];
  if (*(a2 + 64) == 2)
  {
    v11 = *(a2 + 84);
    v12 = 3;
  }

  else
  {
    v11 = *(a2 + 84);
    if (*(a2 + 77) == 1)
    {
      *v10 = vsubq_s64(*v10, vdupq_n_s64(v11));
      if (*(a2 + 76) < 0)
      {
        goto LABEL_8;
      }

      v12 = 2;
    }

    else
    {
      v12 = 4;
    }
  }

  v10->i64[v12] -= v11;
LABEL_8:
  v13 = *&this[2].__opaque[16] - 1;
  v14 = v4 + 1;
  *&this[2].__opaque[8] = v14;
  *&this[2].__opaque[16] = v13;
  if (v14 >= 0x3C)
  {
    operator delete(*v3);
    *&this[1].__opaque[32] += 8;
    *&this[2].__opaque[8] -= 30;
  }

  pthread_cond_broadcast(this + 6);
  return *&this[2].__opaque[16];
}

uint64_t TextureDeleteQueue::executeFinishedRequests(TextureDeleteQueue *this, int a2)
{
  if (!a2)
  {
    if (!*(this + 15))
    {
      return 0;
    }

    v4 = 0;
    do
    {
      if (!TextureDeleteQueue::DeleteRequest::test((*(*(this + 11) + 8 * (*(this + 14) / 0x1EuLL)) + 136 * (*(this + 14) % 0x1EuLL))))
      {
        break;
      }

      TextureDeleteQueue::_popFrontRequest(this, v6);
      TextureDeleteQueue::DeleteRequest::execute(v6);
      v4 = (v4 + 1);
    }

    while (*(this + 15));
    goto LABEL_11;
  }

  pthread_mutex_lock(this + 2);
  if (*(this + 15))
  {
    v4 = 0;
    do
    {
      if (!TextureDeleteQueue::DeleteRequest::test((*(*(this + 11) + 8 * (*(this + 14) / 0x1EuLL)) + 136 * (*(this + 14) % 0x1EuLL))))
      {
        break;
      }

      TextureDeleteQueue::_popFrontRequest(this, v6);
      pthread_mutex_unlock(this + 2);
      TextureDeleteQueue::DeleteRequest::execute(v6);
      v4 = (v4 + 1);
      pthread_mutex_lock(this + 2);
    }

    while (*(this + 15));
LABEL_11:
    if (!a2)
    {
      return v4;
    }

    goto LABEL_14;
  }

  v4 = 0;
LABEL_14:
  pthread_mutex_unlock(this + 2);
  return v4;
}

void HGTexturePoolHandleImpl::HGTexturePoolHandleImpl(HGTexturePoolHandleImpl *this, HGTextureManager *a2)
{
  HGObject::HGObject(this);
  *v4 = &unk_28721ECE8;
  v4[2] = a2;
  v5 = *(a2 + 2);
  {
    operator new();
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  {
LABEL_12:
  }

  v11 = *(v7 + 40);
  *(this + 3) = v11;
  pthread_mutex_lock((v11 + 16));
}

void HGTexturePoolHandleImpl::~HGTexturePoolHandleImpl(HGTexturePoolHandleImpl *this)
{
  *this = &unk_28721ECE8;
  pthread_mutex_unlock((*(this + 3) + 16));

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721ECE8;
  pthread_mutex_unlock((*(this + 3) + 16));
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

void **HGTexturePoolHandleImpl::remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return HGTextureManager::releaseFromPool(*(a1 + 16), v4);
}

void **HGTextureManager::releaseFromPool(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  {
    operator new();
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v4;
    v9 = v7 < v4;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  {
LABEL_12:
  }

  v10 = *(v6 + 40);
  GLState = HGGPURenderer::GetGLState(*(a1 + 8));
  HGGPURenderer::GetCurrentContext(*(a1 + 8), &v18);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v19, GLState, &v18);
  PCSharedCount::PCSharedCount(&v18);
  glDeleteTextures(1, (*(a2 + 8) + 64));
  v12 = *(a2 + 8);
  v13 = v10 + 8;
  if (*(v12 + 56) == 2)
  {
    v14 = *(v12 + 76);
    v15 = 3;
LABEL_19:
    v13->i64[v15] -= v14;
    goto LABEL_20;
  }

  v14 = *(v12 + 76);
  if (*(v12 + 69) != 1)
  {
    v15 = 4;
    goto LABEL_19;
  }

  *v13 = vsubq_s64(*v13, vdupq_n_s64(v14));
  if ((*(v12 + 68) & 0x80000000) == 0)
  {
    v15 = 2;
    goto LABEL_19;
  }

LABEL_20:
  v16 = std::deque<HGTextureManager::TextureEntry>::erase(v10 + 5, *a2, v12);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v19);
  return v16;
}

void sub_25FCCA098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::emptyTexturePool_NoLock(HGTextureManager *this)
{
  HGTraceGuard::HGTraceGuard(v33, "texManager", 2, "emptyTexturePool()");
  v2 = *(this + 2);
  {
    operator new();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  {
LABEL_12:
  }

  v8 = *(v4 + 40);
  v9 = v8[7].i64[1];
  if (v9)
  {
    v10 = v8 + 8;
    while (1)
    {
      v11 = v8[7].i64[0];
      v12 = v8[5].i64[1];
      v13 = (*(v12 + 8 * ((v9 - 1 + v11) / 0x2AuLL)) + 96 * ((v9 - 1 + v11) % 0x2AuLL));
      v14 = v13[4];
      v15 = v13[5];
      v16 = v13[2];
      v31 = v13[3];
      v17 = v13[1];
      v28 = *v13;
      v29 = v17;
      v32[0] = v14;
      v32[1] = v15;
      v30 = v16;
      if (BYTE8(v31) == 2)
      {
        break;
      }

      v18 = SHIDWORD(v32[0]);
      if (BYTE5(v32[0]) != 1)
      {
        v19 = 4;
        goto LABEL_21;
      }

      *v10 = vsubq_s64(*v10, vdupq_n_s64(SHIDWORD(v32[0])));
      if ((SBYTE4(v32[0]) & 0x80000000) == 0)
      {
        v19 = 2;
        goto LABEL_21;
      }

LABEL_22:
      v20 = v8[6].i64[0];
      v22 = v20 - v12;
      v21 = v22 == 0;
      v23 = 42 * (v22 >> 3) - 1;
      v8[7].i64[1] = v9 - 1;
      if (v21)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if ((v24 - (v9 + v11) + 1) >= 0x54)
      {
        operator delete(*(v20 - 8));
        v8[6].i64[0] -= 8;
      }

      GLState = HGGPURenderer::GetGLState(*(this + 1));
      HGGPURenderer::GetCurrentContext(*(this + 1), &v26);
      HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v27, GLState, &v26);
      PCSharedCount::PCSharedCount(&v26);
      glDeleteTextures(1, v32);
      HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v27);
      v9 = v8[7].i64[1];
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    v18 = SHIDWORD(v32[0]);
    v19 = 3;
LABEL_21:
    v10->i64[v19] -= v18;
    goto LABEL_22;
  }

LABEL_28:
  HGTraceGuard::~HGTraceGuard(v33);
}

void sub_25FCCA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCSharedCount a9)
{
  PCSharedCount::PCSharedCount(&a9);
  HGTraceGuard::~HGTraceGuard((v9 - 96));
  _Unwind_Resume(a1);
}

void sub_25FCCA390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard((v2 - 96));
  _Unwind_Resume(a1);
}

void HGTextureManagerHandleImpl::~HGTextureManagerHandleImpl(HGTextureManagerHandleImpl *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

void HGTextureManagerHandleImpl::lockFreePool(HGTextureManager **this@<X0>, HGTexturePoolHandleImpl **a2@<X8>)
{
  v4 = HGObject::operator new(0x20uLL);
  HGTexturePoolHandleImpl::HGTexturePoolHandleImpl(v4, this[2]);
  *a2 = v4;
}

HGTextureManager *HGTextureManager::getNumTextures(unint64_t *a1, int a2, int a3)
{
  v3 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return v3;
      }

      if (a3 == 2)
      {
        return HGTextureManager::_getFreeTotalTextureCount(a1);
      }

      if (a3 == 1)
      {
        return HGTextureManager::_getFreeTotalTextureCount(a1, a1[2]);
      }

      return 0;
    }

    switch(a3)
    {
      case 2:
        pthread_mutex_lock(&stru_280C5C440);
        if (!qword_27FE4B568)
        {
          operator new();
        }

        v18 = *qword_27FE4B568;
        v17 = *(qword_27FE4B568 + 8);
        if (*qword_27FE4B568 != v17)
        {
          if (v17 - 1 == v18)
          {
            v20 = 0;
            v21 = *qword_27FE4B568;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = (((v17 - 1) - v18) >> 3) + 1;
            v21 = &v18[8 * (v24 & 0x3FFFFFFFFFFFFFFELL)];
            v25 = v18 + 8;
            v26 = v24 & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              v22 += *(*(*(v25 - 1) + 32) + 120);
              v23 += *(*(*v25 + 32) + 120);
              v25 += 2;
              v26 -= 2;
            }

            while (v26);
            v20 = v23 + v22;
            if (v24 == (v24 & 0x3FFFFFFFFFFFFFFELL))
            {
              goto LABEL_51;
            }
          }

          do
          {
            v27 = *v21++;
            v20 += *(*(v27 + 32) + 120);
          }

          while (v21 != v17);
LABEL_51:
          pthread_mutex_unlock(&stru_280C5C440);
          return v20;
        }

        break;
      case 1:
        v14 = a1[2];
        pthread_mutex_lock(&stru_280C5C440);
        if (!qword_27FE4B568)
        {
          operator new();
        }

        v15 = *qword_27FE4B568;
        v16 = *(qword_27FE4B568 + 8);
        if (*qword_27FE4B568 != v16)
        {
          v19 = 0;
          do
          {
            if (*(*v15 + 16) == v14)
            {
              v19 += *(*(*v15 + 32) + 120);
            }

            v15 += 8;
          }

          while (v15 != v16);
          v20 = v19;
          goto LABEL_51;
        }

        break;
      case 0:
        return *(a1[4] + 120);
      default:
        return 0;
    }

    v20 = 0;
    goto LABEL_51;
  }

  if (a2 == 2)
  {
    if (a3 == 2)
    {
      return HGTextureManager::_getQueuedTotalTextureCount(a1);
    }

    if (a3 == 1)
    {
      return HGTextureManager::_getQueuedTotalTextureCount(a1, a1[2]);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      result = HGTextureManager::getNumTextures(a1, 0);
      v7 = a3;
      v8 = result;
      if (v7 == 2)
      {
        FreeTotalTextureCount = HGTextureManager::_getFreeTotalTextureCount(result);
        return (HGTextureManager::_getQueuedTotalTextureCount(FreeTotalTextureCount) + v8 + FreeTotalTextureCount);
      }

      else if (v7 == 1)
      {
        v9 = HGTextureManager::_getFreeTotalTextureCount(result, a1[2]);
        return (HGTextureManager::_getQueuedTotalTextureCount(v9, a1[2]) + v8 + v9);
      }

      else
      {
        return result;
      }
    }

    return v3;
  }

  if (a3 == 2)
  {
    v12 = HGTextureManager::_getFreeTotalTextureCount(a1);
    return (HGTextureManager::_getQueuedTotalTextureCount(v12) + v12);
  }

  else if (a3 == 1)
  {
    v11 = HGTextureManager::_getFreeTotalTextureCount(a1, a1[2]);
    return (HGTextureManager::_getQueuedTotalTextureCount(v11, a1[2]) + v11);
  }

  else
  {
    return 0;
  }
}

uint64_t HGTextureManager::getNumBytes(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        if (a3 != 2)
        {
          if (a3 == 1)
          {
            v4 = a1;
            HGTextureManager::_getFreeTotalTextureUsage(*(a1 + 16), v24);
            v9 = v24[0].i64[1];
            goto LABEL_20;
          }

          return 0;
        }

        HGTextureManager::_getFreeTotalTextureUsage(v24);
        v9 = v24[0].i64[1];
LABEL_29:
        HGTextureManager::_getQueuedTotalTextureUsage(v24);
        return v24[0].i64[1] + v9;
      }

      if (a2 == 4)
      {
        v4 = a1;
        NumBytes = HGTextureManager::getNumBytes(a1, 0);
        v7 = a3;
        v8 = NumBytes;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            HGTextureManager::_getFreeTotalTextureUsage(*(v4 + 16), v24);
            v9 = v24[0].i64[1] + v8;
LABEL_20:
            HGTextureManager::_getQueuedTotalTextureUsage(*(v4 + 16), v24);
            return v24[0].i64[1] + v9;
          }

          return v8;
        }

        HGTextureManager::_getFreeTotalTextureUsage(v24);
        v9 = v24[0].i64[1] + v8;
        goto LABEL_29;
      }

      return v3;
    }

    if (a3 == 2)
    {
      HGTextureManager::_getQueuedTotalTextureUsage(v24);
      return v24[0].i64[1];
    }

    if (a3 == 1)
    {
      HGTextureManager::_getQueuedTotalTextureUsage(*(a1 + 16), v24);
      return v24[0].i64[1];
    }

    return 0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return v3;
    }

    if (a3 == 2)
    {
      HGTextureManager::_getFreeTotalTextureUsage(v24);
      return v24[0].i64[1];
    }

    if (a3 == 1)
    {
      HGTextureManager::_getFreeTotalTextureUsage(*(a1 + 16), v24);
      return v24[0].i64[1];
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
        return *(*(a1 + 32) + 136);
      }

      return 0;
    }

    v11 = *(a1 + 16);
    pthread_mutex_lock(&stru_280C5C440);
    if (!qword_27FE4B568)
    {
      operator new();
    }

    v12 = *qword_27FE4B568;
    v13 = *(qword_27FE4B568 + 8);
    if (*qword_27FE4B568 != v13)
    {
      v16 = 0;
      do
      {
        if (*(*v12 + 16) == v11)
        {
          v16 += *(*(*v12 + 32) + 136);
        }

        v12 += 8;
      }

      while (v12 != v13);
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  pthread_mutex_lock(&stru_280C5C440);
  if (!qword_27FE4B568)
  {
    operator new();
  }

  v15 = *qword_27FE4B568;
  v14 = *(qword_27FE4B568 + 8);
  if (*qword_27FE4B568 == v14)
  {
LABEL_48:
    v16 = 0;
    goto LABEL_53;
  }

  v16 = 0;
  if (v14 - 1 == v15)
  {
    v17 = *qword_27FE4B568;
  }

  else
  {
    v18 = 0;
    v19 = (((v14 - 1) - v15) >> 3) + 1;
    v17 = &v15[8 * (v19 & 0x3FFFFFFFFFFFFFFELL)];
    v20 = v15 + 8;
    v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v16 += *(*(*(v20 - 1) + 32) + 136);
      v18 += *(*(*v20 + 32) + 136);
      v20 += 2;
      v21 -= 2;
    }

    while (v21);
    v16 += v18;
    if (v19 == (v19 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_53;
    }
  }

  do
  {
    v22 = *v17++;
    v16 += *(*(v22 + 32) + 136);
  }

  while (v17 != v14);
LABEL_53:
  v23 = v16;
  pthread_mutex_unlock(&stru_280C5C440);
  return v23;
}

void NoPaddingPolicy::~NoPaddingPolicy(NoPaddingPolicy *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

void NoPoolingPolicy::~NoPoolingPolicy(NoPoolingPolicy *this)
{
  *this = &unk_28721EDA8;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 2));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721EDA8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t NoPoolingPolicy::preAllocateTexture(NoPoolingPolicy *this)
{
  (*(**(this + 2) + 40))(&v2);
  (*(*v2 + 80))(v2);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_25FCCAD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void POTPaddingPolicy::~POTPaddingPolicy(POTPaddingPolicy *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

uint64_t POTPaddingPolicy::adjustRect(POTPaddingPolicy *this, HGRect a2)
{
  v2 = *&a2.var0;
  var1 = a2.var1;
  var3 = a2.var3;
  log2f((a2.var2 - a2.var0));
  log2f((var3 - var1));
  return v2;
}

void BorderPaddingPolicy::BorderPaddingPolicy(BorderPaddingPolicy *this, int a2)
{
  HGObject::HGObject(this);
  *v3 = &unk_28721EEC8;
  *(v3 + 12) = a2;
}

void BorderPaddingPolicy::~BorderPaddingPolicy(BorderPaddingPolicy *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

void ClusteredPaddingPolicy::ClusteredPaddingPolicy(ClusteredPaddingPolicy *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_28721EF08;
  *(v1 + 16) = v1 + 16;
  *(v1 + 24) = v1 + 16;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0x100000002;
  *(v1 + 48) = 4;
  if (HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE != -1)
  {
    *(v1 + 40) = HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE;
  }

  if (HG_RENDERER_ENV::TEX_PADDING_CUSHIONING != -1)
  {
    *(v1 + 44) = HG_RENDERER_ENV::TEX_PADDING_CUSHIONING;
  }

  if (HG_RENDERER_ENV::TEX_PADDING_CLUMPING != -1)
  {
    *(v1 + 48) = HG_RENDERER_ENV::TEX_PADDING_CLUMPING;
  }
}

void ClusteredPaddingPolicy::~ClusteredPaddingPolicy(ClusteredPaddingPolicy *this)
{
  *this = &unk_28721EF08;
  if (*(this + 4))
  {
    v2 = this + 16;
    v3 = *(this + 3);
    v4 = *(*(this + 2) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 4) = 0;
    if (v3 != this + 16)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721EF08;
  if (*(this + 4))
  {
    v2 = this + 16;
    v3 = *(this + 3);
    v4 = *(*(this + 2) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 4) = 0;
    if (v3 != this + 16)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v7);
}

uint64_t ClusteredPaddingPolicy::adjustRect(ClusteredPaddingPolicy *this, HGRect a2)
{
  var3 = a2.var3;
  v4 = *(this + 11);
  if (v4 >= 2)
  {
    a2.var2 = v4 + v4 * ((~a2.var0 + a2.var2) / v4) + a2.var0;
    var3 = v4 + v4 * ((~a2.var1 + a2.var3) / v4) + a2.var1;
  }

  v5 = *(this + 12);
  if (v5 >= 2)
  {
    v6 = (this + 16);
    v7 = (a2.var2 - a2.var0);
    v8 = (var3 - a2.var1);
    v9 = *(this + 3);
    v10 = v9;
    if (v9 == (this + 16))
    {
LABEL_15:
      if (v10 == v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      while (1)
      {
        v11 = *(v10 + 2);
        v12 = *(v10 + 3);
        v13 = v7 - v11;
        if (v11 >= v7)
        {
          v13 = v11 - v7;
        }

        v14 = v8 - v12;
        if (v12 >= v8)
        {
          v14 = v12 - v8;
        }

        if (v13 < v5 && v14 < v5)
        {
          break;
        }

        v10 = *(v10 + 1);
        if (v10 == v6)
        {
          goto LABEL_15;
        }
      }

      if (v11 > v7)
      {
        v7 = *(v10 + 2);
      }

      if (v12 > v8)
      {
        v8 = *(v10 + 3);
      }

      if (v10 == v6)
      {
LABEL_23:
        operator new();
      }
    }

    if (v10 != v9)
    {
      v17 = *v10;
      v16 = *(v10 + 1);
      *(v17 + 8) = v16;
      *v16 = v17;
      --*(this + 4);
      operator delete(v10);
      operator new();
    }

    *(v10 + 2) = v7;
    *(v10 + 3) = v8;
  }

  return *&a2.var0;
}

void *std::list<ClusteredPaddingPolicy::Size>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2];
  v4 = v3 - a2;
  if (v3 <= a2)
  {
    if (v3 < a2)
    {
      operator new();
    }
  }

  else
  {
    if (a2 <= v3 >> 1)
    {
      result = result[1];
      if (a2)
      {
        v5 = a2 + 1;
        do
        {
          result = result[1];
          --v5;
        }

        while (v5 > 1);
      }
    }

    else if (v4 < 1)
    {
      v6 = a2 - v3 + 1;
      do
      {
        result = result[1];
        --v6;
      }

      while (v6 > 1);
    }

    else
    {
      do
      {
        result = *result;
        --v4;
      }

      while (v4);
    }

    if (result != v2)
    {
      v7 = *(*v2 + 8);
      v8 = *result;
      *(v8 + 8) = v7;
      *v7 = v8;
      do
      {
        v9 = result[1];
        --v2[2];
        operator delete(result);
        result = v9;
      }

      while (v9 != v2);
    }
  }

  return result;
}

void sub_25FCCB490(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void SimplePoolingPolicy::~SimplePoolingPolicy(SimplePoolingPolicy *this)
{
  *this = &unk_28721EDA8;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 2));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721EDA8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t SimplePoolingPolicy::preAllocateTexture(SimplePoolingPolicy *this)
{
  (*(**(this + 2) + 40))(&v9);
  while (((*(*v9 + 40))(v9) & 1) == 0 && (*(**(this + 2) + 56))(*(this + 2), 3, 1) > *(this + 3))
  {
    v5 = (*(*v9 + 56))(v9);
    v6 = v2;
    v7 = atomic_load(HGLogger::_enabled);
    if (v7)
    {
      HGLogger::log("texManager", 2, "pool too large! deleting old texture %d\n", v3, v4, *(v2 + 64));
    }

    (*(*v9 + 72))(v9, v5, v6);
  }

  result = v9;
  if (v9)
  {
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_25FCCB768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void MultiGPUPoolingPolicy::MultiGPUPoolingPolicy(MultiGPUPoolingPolicy *this)
{
  HGObject::HGObject(this);
  *(v1 + 16) = 0;
  *v1 = &unk_28721EF98;
  *(v1 + 24) = xmmword_260816A20;
  *(v1 + 40) = 1056964608;
  if (HG_RENDERER_ENV::MAX_TEXTURE_AGE_MS != -1)
  {
    if (HG_RENDERER_ENV::MAX_TEXTURE_AGE_MS)
    {
      v2 = HG_RENDERER_ENV::MAX_TEXTURE_AGE_MS;
    }

    else
    {
      v2 = 3.4028e38;
    }

    *(v1 + 24) = v2;
  }

  if (HG_RENDERER_ENV::MAX_TEXTURE_POOL_SIZE_PERCENT != -1)
  {
    *(v1 + 28) = HG_RENDERER_ENV::MAX_TEXTURE_POOL_SIZE_PERCENT * 0.01;
  }

  if (HG_RENDERER_ENV::MAX_TEXTURE_QUEUE_SIZE_PERCENT != -1)
  {
    *(v1 + 32) = HG_RENDERER_ENV::MAX_TEXTURE_QUEUE_SIZE_PERCENT * 0.01;
  }

  if (HG_RENDERER_ENV::MAX_TEXTURE_UNUSED_SIZE_PERCENT != -1)
  {
    *(v1 + 36) = HG_RENDERER_ENV::MAX_TEXTURE_UNUSED_SIZE_PERCENT * 0.01;
  }

  if (HG_RENDERER_ENV::MAX_TEXTURE_TOTAL_SIZE_PERCENT != -1)
  {
    *(v1 + 40) = HG_RENDERER_ENV::MAX_TEXTURE_TOTAL_SIZE_PERCENT * 0.01;
  }

  if (HG_RENDERER_ENV::TEXTURE_POOL_STRATEGY != -1)
  {
    *(v1 + 44) = HG_RENDERER_ENV::TEXTURE_POOL_STRATEGY;
  }
}

void MultiGPUPoolingPolicy::~MultiGPUPoolingPolicy(MultiGPUPoolingPolicy *this)
{
  *this = &unk_28721EDA8;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 2));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721EDA8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t MultiGPUPoolingPolicy::setMaxPoolSizeRatio(uint64_t this, float a2)
{
  if (HG_RENDERER_ENV::MAX_TEXTURE_POOL_SIZE_PERCENT == -1)
  {
    *(this + 28) = a2;
  }

  return this;
}

uint64_t MultiGPUPoolingPolicy::setMaxQueueSizeRatio(uint64_t this, float a2)
{
  if (HG_RENDERER_ENV::MAX_TEXTURE_QUEUE_SIZE_PERCENT == -1)
  {
    *(this + 32) = a2;
  }

  return this;
}

uint64_t MultiGPUPoolingPolicy::setMaxUnusedSizeRatio(uint64_t this, float a2)
{
  if (HG_RENDERER_ENV::MAX_TEXTURE_UNUSED_SIZE_PERCENT == -1)
  {
    *(this + 36) = a2;
  }

  return this;
}

uint64_t MultiGPUPoolingPolicy::setMaxTotalSizeRatio(uint64_t this, float a2)
{
  if (HG_RENDERER_ENV::MAX_TEXTURE_TOTAL_SIZE_PERCENT == -1)
  {
    *(this + 40) = a2;
  }

  return this;
}

void MultiGPUPoolingPolicy::preAllocateTexture(MultiGPUPoolingPolicy *this)
{
  HGTraceGuard::HGTraceGuard(v25, "poolPerf", 1, "preAllocateTexture()");
  v2 = (*(**(this + 2) + 40))(&v24);
  v6 = *(this + 11);
  if ((v6 - 3) <= 1)
  {
    v7 = v24;
    v23 = v24;
    if (v24)
    {
      v2 = (*(*v24 + 16))(v24);
      v6 = *(this + 11);
    }

    v2 = MultiGPUPoolingPolicy::_removeAllIf(v2, &v23, v6 == 3, v6 == 4);
    if (v7)
    {
      v2 = (*(*v7 + 24))(v7);
    }
  }

  v8 = v24;
  v22 = v24;
  if (v24)
  {
    v2 = (*(*v24 + 16))(v24);
  }

  MultiGPUPoolingPolicy::_removeOldestByAge(*(this + 6), v2, &v22, v3, v4, v5);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  if ((*(this + 11) - 1) <= 1)
  {
    do
    {
      v13 = v24;
      v21 = v24;
      if (v24)
      {
        (*(*v24 + 16))(v24);
      }

      v14 = MultiGPUPoolingPolicy::_needsCleaning(this, &v21);
      v15 = v14;
      if (v13)
      {
        v14 = (*(*v13 + 24))(v13);
      }

      if (!v15)
      {
        break;
      }

      v16 = v24;
      v20 = v24;
      if (v24)
      {
        v14 = (*(*v24 + 16))(v24);
      }

      v17 = MultiGPUPoolingPolicy::_removeOldestIf(v14, &v20, *(this + 11) == 1, *(this + 11) == 2);
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }
    }

    while (v17);
  }

  while (1)
  {
    v9 = v24;
    v19 = v24;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

    v10 = MultiGPUPoolingPolicy::_needsCleaning(this, &v19);
    v11 = v10;
    if (v9)
    {
      v10 = (*(*v9 + 24))(v9);
    }

    v12 = v24;
    if (!v11)
    {
      break;
    }

    v18 = v24;
    if (v24)
    {
      v10 = (*(*v24 + 16))(v24);
    }

    MultiGPUPoolingPolicy::_removeOldestIf(v10, &v18, 1, 1);
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }
  }

  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  HGTraceGuard::~HGTraceGuard(v25);
}

void sub_25FCCBE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  HGTraceGuard::~HGTraceGuard((v17 - 48));
  _Unwind_Resume(a1);
}

uint64_t MultiGPUPoolingPolicy::_removeAllIf(uint64_t a1, void *a2, int a3, char a4)
{
  HGTraceGuard::HGTraceGuard(v34, "poolPerf", 1, "_removeAllIf()");
  v8 = (*(**a2 + 56))();
  v9 = v7;
  if (a3)
  {
    if (a4)
    {
      for (i = 0; ; i = (i + 1))
      {
        (*(**a2 + 64))();
        if (v9 == v13)
        {
          break;
        }

        v14 = atomic_load(HGLogger::_enabled);
        if (v14)
        {
          HGLogger::log("texManager", 2, "deleting texture %d (all)\n", v11, v12, *(v9 + 64));
        }

        v8 = (*(**a2 + 72))(*a2, v8, v9);
        v9 = v15;
      }
    }

    else
    {
      i = 0;
      v26 = v7;
      while (1)
      {
        (*(**a2 + 64))();
        if (v26 == v29)
        {
          break;
        }

        if (*(v26 + 57))
        {
          v31 = atomic_load(HGLogger::_enabled);
          if (v31)
          {
            HGLogger::log("texManager", 2, "deleting texture %d (all)\n", v27, v28, *(v26 + 64));
          }

          v8 = (*(**a2 + 72))(*a2, v8, v9);
          v9 = v32;
          i = (i + 1);
          v26 = v32;
        }

        else
        {
          v9 += 96;
          v26 += 96;
          if (*v8 + 4032 == v9)
          {
            v30 = v8[1];
            ++v8;
            v9 = v30;
            v26 = v30;
          }
        }
      }
    }
  }

  else if (a4)
  {
    i = 0;
LABEL_10:
    v16 = v9;
    while (1)
    {
      (*(**a2 + 64))();
      if (v16 == v19)
      {
        break;
      }

      if (*(v16 + 57) != 1)
      {
        v21 = atomic_load(HGLogger::_enabled);
        if (v21)
        {
          HGLogger::log("texManager", 2, "deleting texture %d (all)\n", v17, v18, *(v16 + 64));
        }

        v8 = (*(**a2 + 72))(*a2, v8, v9);
        v9 = v22;
        i = (i + 1);
        goto LABEL_10;
      }

      v9 += 96;
      v16 += 96;
      if (*v8 + 4032 == v9)
      {
        v20 = v8[1];
        ++v8;
        v9 = v20;
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_18:
    v23 = v9 - 4032;
    while (1)
    {
      (*(**a2 + 64))();
      if (v9 == v24)
      {
        break;
      }

      v9 += 96;
      v23 += 96;
      if (*v8 == v23)
      {
        v25 = v8[1];
        ++v8;
        v9 = v25;
        goto LABEL_18;
      }
    }

    i = 0;
  }

  HGTraceGuard::~HGTraceGuard(v34);
  return i;
}

void sub_25FCCC3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t MultiGPUPoolingPolicy::_removeOldestByAge(float a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, char *a6)
{
  if (a1 >= 3.4028e38)
  {
    v19 = atomic_load(HGLogger::_enabled);
    if (v19)
    {
      HGLogger::log("texManager", 2, "no limits. return.\n", a5, a6);
    }

    return 0;
  }

  else
  {
    HGTraceGuard::HGTraceGuard(v21, "poolPerf", 1, "_removeOldestByAge()");
    v8 = HGGetTBC();
    v9 = HGGetTBCFrequency();
    v10 = (*(**a3 + 56))();
    v12 = v11;
    for (i = 0; ; i = (i + 1))
    {
      (*(**a3 + 64))();
      if (v12 == v16 || *(v12 + 88) >= (v8 + ((v9 * a1) / -1000.0)))
      {
        break;
      }

      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("texManager", 2, "deleting texture %d (for age)\n", v14, v15, *(v12 + 64));
      }

      v10 = (*(**a3 + 72))(*a3, v10, v12);
      v12 = v18;
    }

    HGTraceGuard::~HGTraceGuard(v21);
  }

  return i;
}

void sub_25FCCC654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCC6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

BOOL MultiGPUPoolingPolicy::_needsCleaning(uint64_t a1, uint64_t a2)
{
  if ((*(**a2 + 40))())
  {
    return 0;
  }

  v3 = 1;
  v4 = (*(**(a1 + 16) + 64))(*(a1 + 16), 1);
  v5 = (*(a1 + 28) * v4);
  v7 = *(a1 + 36);
  v6 = *(a1 + 40);
  if ((*(**(a1 + 16) + 56))(*(a1 + 16), 1, 1) <= v5 && (*(**(a1 + 16) + 56))(*(a1 + 16), 3, 1) <= (v7 * v4))
  {
    return (*(**(a1 + 16) + 56))(*(a1 + 16), 4, 1) > (v6 * v4);
  }

  return v3;
}

uint64_t MultiGPUPoolingPolicy::_removeOldestIf(uint64_t a1, void *a2, int a3, char a4)
{
  HGTraceGuard::HGTraceGuard(v25, "poolPerf", 1, "_removeOldestIf()");
  v7 = (*(**a2 + 56))();
  v9 = v8;
  if (!a3)
  {
    if (a4)
    {
LABEL_6:
      v14 = v9 - 4032;
      while (1)
      {
        (*(**a2 + 64))();
        if (v9 == v15)
        {
          break;
        }

        if (*(v9 + 57) != 1)
        {
          goto LABEL_20;
        }

        v9 += 96;
        v14 += 96;
        if (*v7 == v14)
        {
          v16 = v7[1];
          ++v7;
          v9 = v16;
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_11:
      v17 = v9 - 4032;
      while (1)
      {
        (*(**a2 + 64))();
        if (v9 == v18)
        {
          break;
        }

        v9 += 96;
        v17 += 96;
        if (*v7 == v17)
        {
          v19 = v7[1];
          ++v7;
          v9 = v19;
          goto LABEL_11;
        }
      }
    }

    goto LABEL_4;
  }

  if ((a4 & 1) == 0)
  {
LABEL_15:
    v20 = v9 - 4032;
    while (1)
    {
      (*(**a2 + 64))();
      if (v9 == v21)
      {
        goto LABEL_4;
      }

      if (*(v9 + 57))
      {
        goto LABEL_20;
      }

      v9 += 96;
      v20 += 96;
      if (*v7 == v20)
      {
        v22 = v7[1];
        ++v7;
        v9 = v22;
        goto LABEL_15;
      }
    }
  }

  (*(**a2 + 64))();
  if (v9 == v12)
  {
LABEL_4:
    v13 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v23 = atomic_load(HGLogger::_enabled);
  if (v23)
  {
    HGLogger::log("texManager", 2, "deleting texture %d (for reason)\n", v10, v11, *(v9 + 64));
  }

  (*(**a2 + 72))(*a2, v7, v9);
  v13 = 1;
LABEL_23:
  HGTraceGuard::~HGTraceGuard(v25);
  return v13;
}

void sub_25FCCCA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCCA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCCA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCCAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCCAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t MultiGPUPoolingPolicy::renderEnd(MultiGPUPoolingPolicy *this)
{
  v2 = (*(**(this + 2) + 40))(&v13);
  v6 = v13;
  v12 = v13;
  if (v13)
  {
    v2 = (*(*v13 + 16))(v13);
  }

  v7 = MultiGPUPoolingPolicy::_removeOldestByAge(*(this + 6), v2, &v12, v3, v4, v5);
  if (v6)
  {
    v7 = (*(*v6 + 24))(v6);
  }

  v8 = *(this + 11);
  if ((v8 - 3) <= 1)
  {
    v9 = v13;
    v11 = v13;
    if (v13)
    {
      v7 = (*(*v13 + 16))(v13);
      v8 = *(this + 11);
    }

    MultiGPUPoolingPolicy::_removeAllIf(v7, &v11, v8 == 3, v8 == 4);
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }
  }

  result = v13;
  if (v13)
  {
    return (*(*v13 + 24))(v13);
  }

  return result;
}

void sub_25FCCCC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

double HGTextureManager::TextureInfo::TextureInfo(HGTextureManager::TextureInfo *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 28) = 0;
  return result;
}

void HGTextureManager::TextureEntry::log(HGTextureManager::TextureEntry *this, const char *a2, char *a3)
{
  v3 = atomic_load(HGLogger::_enabled);
  if (v3)
  {
    v4 = atomic_load(HGLogger::_enabled);
    if (v4)
    {
      v5 = "?";
      if (*this == 3553)
      {
        v5 = "2";
      }

      v33 = *(this + 1);
      v34 = v5;
      v6 = *(this + 20);
      v7 = "Q";
      if (v6 == 1)
      {
        v7 = "F";
      }

      if (v6)
      {
        v8 = v7;
      }

      else
      {
        v8 = "U";
      }

      v29 = *(this + 68);
      v30 = v8;
      v32 = *(this + 16);
      v9 = *(this + 2);
      v31 = a2;
      v11 = HGFormatUtils::GLPixelFormatToString(*(this + 4), a2, a3);
      v14 = HGFormatUtils::GLPixelTypeToString(*(this + 5), v12, v13);
      v15 = (*(this + 19) * 0.00000095367);
      if (*(this + 69))
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      if (*(this + 57))
      {
        v17 = "Y";
      }

      else
      {
        v17 = "N";
      }

      v18 = *(this + 56);
      v19 = "P";
      if (v18 == 2)
      {
        v19 = "S";
      }

      if (v18 == 1)
      {
        v20 = "C";
      }

      else
      {
        v20 = v19;
      }

      v28 = *(this + 24);
      v21 = *(this + 5);
      v22 = *(this + 6);
      v23 = *(this + 18);
      v24 = (HGGetTBC() - *(this + 11)) * 1000.0;
      v25 = HGGetTBCFrequency();
      HGLogger::log("texManager", v31, "id %3d [%s] (%s) unit %2d : %4d x %4d x (%20s, %20s), (%4.1f mb), owned: %s, used: %2d, cs: %s, hint: %s, ptr: %p, %zu, range: %p, %zu, age: %6.1f ms\n", v26, v27, v32, v34, v30, v29, v33, v9, v11, v14, *&v15, v16, v23, v17, v20, v28, v21, v22, (v24 / v25));
    }
  }
}

void HGTextureManager::TextureUsage::logSummary(HGTextureManager::TextureUsage *this, char *a2, int a3, const char *a4, char *a5)
{
  v7 = atomic_load(HGLogger::_enabled);
  if (a3)
  {
    if (v7)
    {
      HGLogger::log("texManager", a2, "\n", a4, a5);
      v16 = atomic_load(HGLogger::_enabled);
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v9 = atomic_load(HGLogger::_enabled);
        if ((v9 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = atomic_load(HGLogger::_enabled);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    HGLogger::log("texManager", a2, "  total   : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*this, 0x14uLL));
    v17 = atomic_load(HGLogger::_enabled);
    if ((v17 & 1) == 0)
    {
LABEL_5:
      v10 = atomic_load(HGLogger::_enabled);
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    HGLogger::log("texManager", a2, "  used    : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 1), 0x14uLL));
    v18 = atomic_load(HGLogger::_enabled);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      v11 = atomic_load(HGLogger::_enabled);
      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    HGLogger::log("texManager", a2, "  active  : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 2), 0x14uLL));
    v19 = atomic_load(HGLogger::_enabled);
    if ((v19 & 1) == 0)
    {
LABEL_7:
      v12 = atomic_load(HGLogger::_enabled);
      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    HGLogger::log("texManager", a2, "  shared  : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 3), 0x14uLL));
    v20 = atomic_load(HGLogger::_enabled);
    if ((v20 & 1) == 0)
    {
LABEL_8:
      v13 = atomic_load(HGLogger::_enabled);
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    HGLogger::log("texManager", a2, "  unowned : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 4), 0x14uLL));
    v21 = atomic_load(HGLogger::_enabled);
    if ((v21 & 1) == 0)
    {
LABEL_9:
      v14 = atomic_load(HGLogger::_enabled);
      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    HGLogger::log("texManager", a2, "  free    : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 5), 0x14uLL));
    v22 = atomic_load(HGLogger::_enabled);
    if ((v22 & 1) == 0)
    {
LABEL_10:
      v15 = atomic_load(HGLogger::_enabled);
      if ((v15 & 1) == 0)
      {
        return;
      }

LABEL_22:

      HGLogger::log("texManager", a2, "\n", a4, a5);
      return;
    }

LABEL_21:
    HGLogger::log("texManager", a2, "  queued  : %3.1f mb\n", a4, a5, vcvts_n_f32_u64(*(this + 6), 0x14uLL));
    v23 = atomic_load(HGLogger::_enabled);
    if ((v23 & 1) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v7)
  {
    HGLogger::log("texManager", a2, "total : %4.1f mb  |  used : %4.1f mb  |  active : %4.1f mb  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  free : %4.1f mb  |  queued : %4.1f mb\n", a4, a5, vcvts_n_f32_u64(*this, 0x14uLL), vcvts_n_f32_u64(*(this + 1), 0x14uLL), vcvts_n_f32_u64(*(this + 2), 0x14uLL), vcvts_n_f32_u64(*(this + 3), 0x14uLL), vcvts_n_f32_u64(*(this + 4), 0x14uLL), vcvts_n_f32_u64(*(this + 5), 0x14uLL), vcvts_n_f32_u64(*(this + 6), 0x14uLL));
  }
}

void HGTextureManager::TexturePool::~TexturePool(HGTextureManager::TexturePool *this)
{
  *this = &unk_28721EFE8;
  pthread_mutex_destroy((this + 16));
  std::deque<HGTextureManager::TextureEntry>::~deque[abi:ne200100](this + 80);

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721EFE8;
  pthread_mutex_destroy((this + 16));
  std::deque<HGTextureManager::TextureEntry>::~deque[abi:ne200100](this + 80);
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

uint64_t HGTextureManager::PostTextureDeleteEventList::popEvent(HGTextureManager::PostTextureDeleteEventList *this)
{
  v1 = *(this + 9);
  v2 = *(v1 - 8);
  *(this + 9) = v1 - 8;
  return v2;
}

void RenderbufferCache::~RenderbufferCache(RenderbufferCache *this)
{
  v1 = *this;
  if (*this)
  {
    *(this + 1) = v1;
    operator delete(v1);
  }
}

uint64_t RenderbufferCache::createRenderbuffer(RenderbufferCache *this, unsigned int a2, uint64_t a3)
{
  HGTraceGuard::HGTraceGuard(v18, "renderbuffer", 1, "createRenderbuffer()");
  v7 = *this;
  v8 = *(this + 1);
  if (*this != v8)
  {
    while (*v7 || *(v7 + 4) != a3 || *(v7 + 8) || *(v7 + 12) || *(v7 + 20))
    {
      v7 += 24;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_12:
    renderbuffers[0] = 0;
    glGenRenderbuffers(1, renderbuffers);
    v11 = renderbuffers[0];
    *renderbuffers = a3 << 32;
    *&renderbuffers[2] = 0;
    renderbuffers[4] = v11;
    v17 = 1;
    std::vector<RenderbufferCache::RenderbufferEntry>::push_back[abi:ne200100](this, renderbuffers);
    v14 = atomic_load(HGLogger::_enabled);
    if (v14)
    {
      HGLogger::log("renderbuffer", 1, "allocating new renderbuffer (%d)\n", v12, v13, v11);
    }

    v9 = v11;
  }

  else
  {
    v9 = *(v7 + 16);
    *(v7 + 20) = 1;
    v10 = atomic_load(HGLogger::_enabled);
    if (v10)
    {
      HGLogger::log("renderbuffer", 1, "found unused renderbuffer (%d)\n", v5, v6, v9);
    }
  }

  HGTraceGuard::~HGTraceGuard(v18);
  return v9;
}

void sub_25FCCD4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCCD4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void std::vector<RenderbufferCache::RenderbufferEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void HGTextureManager::HGTextureManager(HGTextureManager *this, HGGPURenderer *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  v3 = (this + 32);
  *(this + 19) = 0;
  v4 = (this + 152);
  *(this + 5) = 0;
  *(this + 20) = 0;
  *(this + 42) = 3;
  *(this + 172) = 1;
  v5 = HGObject::operator new(0xB8uLL);
  HGObject::HGObject(v5);
  *v5 = &unk_28721EFE8;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 22) = 0;
  pthread_mutex_init((v5 + 16), 0);
  v6 = *v3;
  if (*v3 == v5)
  {
    (*(*v5 + 24))(v5);
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    *v3 = v5;
  }

  v7 = HGObject::operator new(0x10uLL);
  HGObject::HGObject(v7);
  v8 = &unk_28721EDF8;
  *v7 = &unk_28721EDF8;
  if (HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING != 1)
  {
    v9 = *v4;
    if (*v4 != v7)
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
        v8 = *v7;
      }

      *v4 = v7;
      v8[2](v7);
      v8 = *v7;
    }
  }

  v8[3](v7);
  v10 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v10);
  *(v10 + 2) = 0;
  *v10 = &unk_28721EE38;
  v11 = v10;
  HGTextureManager::setTexturePoolingPolicy(this, &v11);
  (*(*v10 + 24))(v10);
  operator new();
}

void sub_25FCCD9E4(_Unwind_Exception *a1)
{
  (*(*v2 + 24))(v2);
  v6 = *(v1 + 160);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  if (*v4)
  {
    (*(**v4 + 24))(*v4);
  }

  v7 = *(v1 + 40);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  if (*v3)
  {
    (*(**v3 + 24))(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::setTexturePaddingPolicy(uint64_t result, uint64_t *a2)
{
  if (HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING != 1)
  {
    v2 = *(result + 152);
    v3 = *a2;
    if (v2 != *a2)
    {
      if (v2)
      {
        v4 = result;
        (*(*v2 + 24))(*(result + 152));
        result = v4;
        v3 = *a2;
      }

      *(result + 152) = v3;
      if (v3)
      {
        v6 = *(*v3 + 16);

        return v6(v3);
      }
    }
  }

  return result;
}

uint64_t HGTextureManager::setTexturePoolingPolicy(uint64_t result, void *a2)
{
  if (HG_RENDERER_ENV::FORCE_LEGACY_TEXTURE_POOLING != 1)
  {
    v2 = result;
    v3 = *(result + 160);
    v4 = *a2;
    if (v3 != *a2)
    {
      if (v3)
      {
        (*(*v3 + 24))(v3);
        v4 = *a2;
      }

      *(v2 + 160) = v4;
      if (v4)
      {
        (*(*v4 + 16))(v4);
        v3 = *(v2 + 160);
      }

      else
      {
        v3 = 0;
      }
    }

    v6 = HGObject::operator new(0x18uLL);
    HGObject::HGObject(v6);
    v7 = &unk_28721ED50;
    *v6 = &unk_28721ED50;
    *(v6 + 2) = v2;
    v8 = v3[2];
    if (v8 != v6)
    {
      if (v8)
      {
        (*(*v8 + 24))(v8);
        v7 = *v6;
      }

      v3[2] = v6;
      (v7)[2](v6);
      v7 = *v6;
    }

    return (v7[3])(v6);
  }

  return result;
}

uint64_t HGTextureManager::_initTexturePool(HGTextureManager *this)
{
  {
    operator new();
  }

  v3 = (this + 16);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v3;
  do
  {
    v6 = *(v2 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  {
LABEL_12:
    v9 = HGObject::operator new(0xB8uLL);
    HGObject::HGObject(v9);
    *v9 = &unk_28721EFE8;
    *(v9 + 5) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 22) = 0;
    pthread_mutex_init((v9 + 16), 0);
    {
      operator new();
    }

    if (!v10)
    {
LABEL_21:
      operator new();
    }

    v11 = *v3;
    while (1)
    {
      while (1)
      {
        v12 = v10;
        v13 = v10[4];
        if (v11 >= v13)
        {
          break;
        }

        v10 = *v12;
        if (!*v12)
        {
          goto LABEL_21;
        }
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = v12[1];
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    v15 = v12[5];
    if (v15 != v9)
    {
      if (v15)
      {
        (*(*v15 + 24))(v15);
      }

      v12[5] = v9;
      (*(*v9 + 16))(v9);
    }

    (*(*v9 + 24))(v9);
  }

  else
  {
    (*(**(v5 + 40) + 16))(*(v5 + 40));
  }
}

void sub_25FCCE120(_Unwind_Exception *a1)
{
  std::deque<HGTextureManager::TextureEntry>::~deque[abi:ne200100](v2);
  HGObject::~HGObject(v1);
  HGObject::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::_initDeleteQueue(HGTextureManager *this)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v2 = *(qword_27FE4B570 + 8);
  v3 = (this + 16);
  if (v2)
  {
    v4 = *v3;
    v5 = qword_27FE4B570 + 8;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != qword_27FE4B570 + 8 && v4 >= *(v5 + 32))
    {
      (*(**(v5 + 40) + 16))(*(v5 + 40));
      goto LABEL_30;
    }
  }

  v9 = HGObject::operator new(0x198uLL);
  TextureDeleteQueue::TextureDeleteQueue(v9);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v10 = *(qword_27FE4B570 + 8);
  if (!v10)
  {
LABEL_21:
    operator new();
  }

  v11 = *v3;
  while (1)
  {
    while (1)
    {
      v12 = v10;
      v13 = v10[4];
      if (v11 >= v13)
      {
        break;
      }

      v10 = *v12;
      if (!*v12)
      {
        goto LABEL_21;
      }
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = v12[1];
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v14 = v12[5];
  if (v14 == v9)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v12[5] = v9;
  if (v9)
  {
    (*(*v9 + 16))(v9);
LABEL_29:
    (*(*v9 + 24))(v9);
  }

LABEL_30:

  return pthread_mutex_unlock(&stru_280C5C480);
}

uint64_t HGTextureManager::_initMaxUsageStats(HGTextureManager *this)
{
  pthread_mutex_lock(&stru_280C5C4C0);
  if (!qword_27FE4B578)
  {
    operator new();
  }

  v2 = *(qword_27FE4B578 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(this + 2);
  v4 = qword_27FE4B578 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == qword_27FE4B578 + 8 || v3 < *(v4 + 32))
  {
LABEL_12:
    operator new();
  }

  return pthread_mutex_unlock(&stru_280C5C4C0);
}

void HGTextureManager::HGTextureManager(HGTextureManager *this, HGGPURenderer *a2, void *a3)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 4) = 0;
  v4 = (this + 32);
  *(this + 19) = 0;
  v5 = (this + 152);
  *(this + 5) = 0;
  *(this + 20) = 0;
  *(this + 42) = 3;
  *(this + 172) = 1;
  v6 = HGObject::operator new(0xB8uLL);
  HGObject::HGObject(v6);
  *v6 = &unk_28721EFE8;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 22) = 0;
  pthread_mutex_init((v6 + 16), 0);
  v7 = *v4;
  if (*v4 == v6)
  {
    (*(*v6 + 24))(v6);
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    *v4 = v6;
  }

  v8 = HGObject::operator new(0x10uLL);
  HGObject::HGObject(v8);
  v9 = &unk_28721EDF8;
  *v8 = &unk_28721EDF8;
  if (HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING != 1)
  {
    v10 = *v5;
    if (*v5 != v8)
    {
      if (v10)
      {
        (*(*v10 + 24))(v10);
        v9 = *v8;
      }

      *v5 = v8;
      v9[2](v8);
      v9 = *v8;
    }
  }

  v9[3](v8);
  v11 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v11);
  *(v11 + 2) = 0;
  *v11 = &unk_28721EE38;
  v12 = v11;
  HGTextureManager::setTexturePoolingPolicy(this, &v12);
  (*(*v11 + 24))(v11);
  operator new();
}

void sub_25FCCEA14(_Unwind_Exception *a1)
{
  (*(*v2 + 24))(v2);
  v6 = *(v1 + 160);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  if (*v4)
  {
    (*(**v4 + 24))(*v4);
  }

  v7 = *(v1 + 40);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  if (*v3)
  {
    (*(**v3 + 24))(*v3);
  }

  _Unwind_Resume(a1);
}

void HGTextureManager::~HGTextureManager(HGTextureManager *this)
{
  HGTextureManager::_uninitDeleteQueue(this);
  HGTextureManager::_uninitTexturePool(this);
  if (*(*(this + 4) + 120))
  {
    HGLogger::warning("texture manager pool is NOT empty! Textures are still in used.", v2, v3);
  }

  pthread_mutex_lock(&stru_280C5C440);
  v4 = qword_27FE4B568;
  if (!qword_27FE4B568)
  {
    operator new();
  }

  v6 = *qword_27FE4B568;
  v5 = *(qword_27FE4B568 + 8);
  if (*qword_27FE4B568 != v5)
  {
    while (*v6 != this)
    {
      if (++v6 == v5)
      {
        v6 = *(qword_27FE4B568 + 8);
        break;
      }
    }
  }

  v7 = v5 - (v6 + 1);
  if (v5 != v6 + 1)
  {
    memmove(v6, v6 + 1, v5 - (v6 + 1));
  }

  *(v4 + 8) = v6 + v7;
  pthread_mutex_unlock(&stru_280C5C440);
  if (*(this + 5))
  {
    v10 = atomic_load(HGLogger::_enabled);
    if (v10)
    {
      HGLogger::log("init", 1, "deleting auxiliary context\n", v8, v9);
    }

    v11 = *(this + 5);
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    *(this + 5) = 0;
    pthread_mutex_destroy((this + 48));
  }

  v12 = *(this + 14);
  if (v12)
  {
    pthread_mutex_destroy(*(this + 14));
    v13 = *(v12 + 64);
    if (v13)
    {
      *(v12 + 72) = v13;
      operator delete(v13);
    }

    MEMORY[0x2666E9F00](v12, 0x1080C40D9CAA561);
  }

  *(this + 14) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v14 = *(this + 20);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(this + 19);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = *(this + 5);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(this + 4);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }
}

uint64_t HGTextureManager::_uninitDeleteQueue(HGTextureManager *this)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v2 = *(qword_27FE4B570 + 8);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = *(this + 2);
  v4 = (qword_27FE4B570 + 8);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (qword_27FE4B570 + 8) || v3 < v4[4])
  {
LABEL_17:
  }

  else
  {
    v8 = atomic_load((v4[5] + 8));
    if (v8 == 1)
    {
      v9 = qword_27FE4B570;
      if (!qword_27FE4B570)
      {
        operator new();
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v13 = v4;
        do
        {
          v11 = v13[2];
          v14 = *v11 == v13;
          v13 = v11;
        }

        while (!v14);
      }

      if (*qword_27FE4B570 == v4)
      {
        *qword_27FE4B570 = v11;
      }

      v15 = *(v9 + 8);
      --*(v9 + 16);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v15, v4);
      v16 = v4[5];
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      operator delete(v4);
    }

    else
    {
      (*(*v4[5] + 24))(v4[5]);
    }
  }

  return pthread_mutex_unlock(&stru_280C5C480);
}

uint64_t HGTextureManager::_uninitTexturePool(HGTextureManager *this)
{
  {
    operator new();
  }

  v3 = (this + 16);
  if (!v2)
  {
    goto LABEL_28;
  }

  v4 = *v3;
  do
  {
    v6 = *(v2 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  {
LABEL_28:
    {
      goto LABEL_13;
    }

LABEL_29:
    operator new();
  }

  v9 = atomic_load((*(v5 + 40) + 8));
  if (v9 == 1)
  {
    HGTextureManager::emptyTexturePool(this);
  }

  {
    goto LABEL_29;
  }

LABEL_13:
  v13 = *(v10 + 8);
  v11 = (v10 + 8);
  v12 = v13;
  if (v13)
  {
    v14 = *v3;
    v15 = v11;
    do
    {
      v16 = v12[4];
      v7 = v16 >= v14;
      v17 = v16 < v14;
      if (v7)
      {
        v15 = v12;
      }

      v12 = v12[v17];
    }

    while (v12);
    if (v15 != v11 && v14 >= v15[4])
    {
      v18 = atomic_load((v15[5] + 8));
      if (v18 == 1)
      {
        {
          operator new();
        }

        v20 = v15[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          v23 = v15;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (!v24);
        }

        {
        }

        v25 = *(v19 + 8);
        --*(v19 + 16);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v25, v15);
        v26 = v15[5];
        if (v26)
        {
          (*(*v26 + 24))(v26);
        }

        operator delete(v15);
      }

      else
      {
        (*(*v15[5] + 24))(v15[5]);
      }
    }
  }
}

void HGTextureManager::finishDeleteTextureQueue(HGTextureManager *this)
{
  v1 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v2 = *(qword_27FE4B570 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = qword_27FE4B570 + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= v1;
    v6 = v4 < v1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == qword_27FE4B570 + 8 || *(v3 + 32) > v1)
  {
LABEL_12:
    v3 = qword_27FE4B570 + 8;
  }

  v7 = *(v3 + 40);
  pthread_mutex_unlock(&stru_280C5C480);

  TextureDeleteQueue::finishQueue(v7);
}

BOOL HGTextureManager::init(HGTextureManager *this)
{
  v30 = *MEMORY[0x277D85DE8];
  HGTraceGuard::HGTraceGuard(v26, "init", 1, "HGTextureManager::init()");
  GLState = HGGPURenderer::GetGLState(*(this + 1));
  HGGPURenderer::GetContext(*(this + 1), 24, &v24);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v25, GLState, &v24);
  PCSharedCount::PCSharedCount(&v24);
  v27 = 8;
  v28.var0 = 0;
  *v29 = 0x1800000006;
  sysctl(v29, 2u, &v28, &v27, 0, 0);
  var0 = v28.var0;
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("init", 1, "getAvailableVideoMemory() : %zu\n", v3, v4, v28.var0);
  }

  *(this + 18) = var0;
  LODWORD(v27) = 0;
  glGetIntegerv(0xD33u, &v27);
  v7 = v27;
  *(this + 30) = v27;
  *(this + 124) = vdupq_n_s32((v7 * 0.95));
  HGTextureManager::_createAuxiliaryGLContext(this, v8, v9, v10, v11);
  if (HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING == 1)
  {
    v12 = HGObject::operator new(0x38uLL);
    HGObject::HGObject(v12);
    *v12 = &unk_28721EF08;
    *(v12 + 2) = v12 + 16;
    *(v12 + 3) = v12 + 16;
    *(v12 + 4) = 0;
    *(v12 + 5) = 0x100000002;
    *(v12 + 12) = 4;
    if (HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE != -1)
    {
      *(v12 + 10) = HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE;
    }

    if (HG_RENDERER_ENV::TEX_PADDING_CUSHIONING != -1)
    {
      *(v12 + 11) = HG_RENDERER_ENV::TEX_PADDING_CUSHIONING;
    }

    if (HG_RENDERER_ENV::TEX_PADDING_CLUMPING != -1)
    {
      *(v12 + 12) = HG_RENDERER_ENV::TEX_PADDING_CLUMPING;
    }

    v13 = *(this + 19);
    if (v13 == v12)
    {
      HGObject::Release(v12);
    }

    else
    {
      if (v13)
      {
        (*(*v13 + 24))(v13);
      }

      *(this + 19) = v12;
    }
  }

  if (HG_RENDERER_ENV::FORCE_LEGACY_TEXTURE_POOLING == 1)
  {
    v14 = HGObject::operator new(0x28uLL);
    HGObject::HGObject(v14);
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    v15 = &unk_28721EF48;
    *v14 = &unk_28721EF48;
    *(v14 + 8) = 1056964608;
    v16 = *(this + 18);
    v17 = v16;
    if (v16 >> 31)
    {
      *(v14 + 8) = 1062836634;
      *(v14 + 3) = (v17 * 0.5);
      v18 = *(this + 20);
      if (v18 == v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v14 + 3) = (v17 * 0.25);
      v18 = *(this + 20);
      if (v18 == v14)
      {
LABEL_23:
        v19 = HGObject::operator new(0x18uLL);
        HGObject::HGObject(v19);
        v20 = &unk_28721ED50;
        *v19 = &unk_28721ED50;
        *(v19 + 2) = this;
        v21 = *(v18 + 2);
        if (v21 != v19)
        {
          if (v21)
          {
            (*(*v21 + 24))(v21);
            v20 = *v19;
          }

          *(v18 + 2) = v19;
          (v20)[2](v19);
          v20 = *v19;
        }

        (v20)[3](v19);
        (*(*v14 + 24))(v14);
        goto LABEL_28;
      }
    }

    if (v18)
    {
      (*(*v18 + 24))(v18);
      v15 = *v14;
    }

    *(this + 20) = v14;
    v15[2](v14);
    v18 = *(this + 20);
    goto LABEL_23;
  }

LABEL_28:
  HGGLContext::context(&v28, *(this + 5));
  v22 = PCColorSpaceHandle::getCGColorSpace(&v28) != 0;
  PCSharedCount::PCSharedCount(&v28);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v25);
  HGTraceGuard::~HGTraceGuard(v26);
  return v22;
}

void sub_25FCCF810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FCCF994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::_createAuxiliaryGLContext(uint64_t this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  if (!*(this + 40))
  {
    v5 = this;
    v6 = atomic_load(HGLogger::_enabled);
    if (v6)
    {
      HGLogger::log("init", 1, "creating auxiliary context for texture delete thread\n", a4, a5);
    }

    HGGPURenderer::GetContext(*(v5 + 8), 24, &v7);
    HGGLContext::Create();
  }

  return this;
}

void sub_25FCCFAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  PCSharedCount::PCSharedCount(&a9);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::maxTextureSizeGL(uint64_t a1, int a2)
{
  v2 = 132;
  if (a2 == 28)
  {
    v2 = 136;
  }

  return *(a1 + v2);
}

uint64_t HGTextureManager::renderBgn(HGTextureManager *this)
{
  v2 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v3 = *(qword_27FE4B570 + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = qword_27FE4B570 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == qword_27FE4B570 + 8 || *(v4 + 32) > v2)
  {
LABEL_12:
    v4 = qword_27FE4B570 + 8;
  }

  v8 = *(v4 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  pthread_mutex_lock((v8 + 336));
  v9 = *(v8 + 400);
  *(v8 + 400) = v9 + 1;
  if (!v9)
  {
    pthread_mutex_lock((v8 + 128));
    *(v8 + 404) = 1;
    if ((*(v8 + 405) & 1) == 0)
    {
      do
      {
        pthread_cond_wait((v8 + 240), (v8 + 128));
      }

      while (*(v8 + 405) != 1);
    }

    pthread_mutex_unlock((v8 + 128));
  }

  pthread_mutex_unlock((v8 + 336));
  *this = 0;
  pthread_mutex_lock(&stru_280C5C4C0);
  if (!qword_27FE4B578)
  {
    operator new();
  }

  v10 = *(qword_27FE4B578 + 8);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = *(this + 2);
  v12 = qword_27FE4B578 + 8;
  do
  {
    v13 = *(v10 + 32);
    v6 = v13 >= v11;
    v14 = v13 < v11;
    if (v6)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v12 == qword_27FE4B578 + 8 || v11 < *(v12 + 32))
  {
LABEL_28:
    v12 = qword_27FE4B578 + 8;
  }

  v15 = *(v12 + 40);
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;

  return pthread_mutex_unlock(&stru_280C5C4C0);
}

uint64_t HGTextureManager::renderEnd(HGTextureManager *this)
{
  (*(**(this + 20) + 48))(*(this + 20));
  HGTextureManager::_dumpMaxUsage(this);
  HGTextureManager::_dumpTextures(this, 0);
  v2 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v3 = *(qword_27FE4B570 + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = qword_27FE4B570 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == qword_27FE4B570 + 8 || *(v4 + 32) > v2)
  {
LABEL_12:
    v4 = qword_27FE4B570 + 8;
  }

  v8 = *(v4 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  pthread_mutex_lock((v8 + 336));
  v9 = *(v8 + 400) - 1;
  *(v8 + 400) = v9;
  if (v9)
  {
    v10 = (v8 + 336);
  }

  else
  {
    pthread_mutex_lock((v8 + 128));
    *(v8 + 404) = 0;
    pthread_cond_signal((v8 + 192));
    pthread_mutex_unlock((v8 + 128));
    v10 = (v8 + 336);
  }

  return pthread_mutex_unlock(v10);
}

void HGTextureManager::_dumpMaxUsage(HGTextureManager *this)
{
  HGTraceGuard::HGTraceGuard(v16, "texManager", 1, "HGTextureManager::_dumpMaxUsage()");
  HGTextureManager::_dumpMaxUsage(this, *(this + 2));
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) != 0 && HGLogger::getLevel("texManager", v2) >= 1)
  {
    v6 = atomic_load(HGLogger::_enabled);
    if (v6)
    {
      HGLogger::log("texManager", 1, "  max usage, per share group :\n", v4, v5);
    }

    pthread_mutex_lock(&stru_280C5C4C0);
    v9 = qword_27FE4B578;
    if (!qword_27FE4B578)
    {
      operator new();
    }

    for (i = *qword_27FE4B578; ; i = v14)
    {
      if (!v9)
      {
        operator new();
      }

      if (i == (v9 + 8))
      {
        break;
      }

      v12 = atomic_load(HGLogger::_enabled);
      if (v12)
      {
        v11 = i[5];
        HGLogger::log("texManager", 1, "total : %4.1f mb  |  used : %4.1f mb  |  active : %4.1f mb  |  shared : %4.1f mb  |  unowned : %4.1f mb  |  free : %4.1f mb  |  queued : %4.1f mb\n", v7, v8, vcvts_n_f32_u64(*v11, 0x14uLL), vcvts_n_f32_u64(v11[1], 0x14uLL), vcvts_n_f32_u64(v11[2], 0x14uLL), vcvts_n_f32_u64(v11[3], 0x14uLL), vcvts_n_f32_u64(v11[4], 0x14uLL), vcvts_n_f32_u64(v11[5], 0x14uLL), vcvts_n_f32_u64(v11[6], 0x14uLL));
      }

      v13 = i[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = i[2];
          v15 = *v14 == i;
          i = v14;
        }

        while (!v15);
      }

      v9 = qword_27FE4B578;
    }

    pthread_mutex_unlock(&stru_280C5C4C0);
  }

  HGTraceGuard::~HGTraceGuard(v16);
}

void sub_25FCD006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD0080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD0094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD00A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::_dumpTextures(HGTextureManager *this, char *a2)
{
  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    v4 = atomic_load(HGLogger::_enabled);
    if (v4)
    {
      Level = HGLogger::getLevel("texManager", a2);
      if (Level > 0)
      {
        v6 = HGTraceGuard::HGTraceGuard(v23, "texManager", 3, "HGTextureManager::_dumpTextures()");
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        if (Level < 4)
        {
          v9 = atomic_load(HGLogger::_enabled);
          if (v9)
          {
            HGLogger::log("texManager", 3, "usage summary :\n", v7, v8);
          }

          HGTextureManager::_printUsageSummary(v6, 3, a2, &v19);
        }

        else
        {
          HGTextureManager::_printTextureList(this, 4, a2, &v19);
        }

        if (a2)
        {
          pthread_mutex_lock(&stru_280C5C4C0);
          if (!qword_27FE4B578)
          {
            operator new();
          }

          v10 = *(qword_27FE4B578 + 8);
          if (!v10)
          {
            goto LABEL_23;
          }

          v11 = qword_27FE4B578 + 8;
          do
          {
            v12 = *(v10 + 32);
            v13 = v12 >= a2;
            v14 = v12 < a2;
            if (v13)
            {
              v11 = v10;
            }

            v10 = *(v10 + 8 * v14);
          }

          while (v10);
          if (v11 == qword_27FE4B578 + 8 || *(v11 + 32) > a2)
          {
LABEL_23:
            v11 = qword_27FE4B578 + 8;
          }

          v15 = *(v11 + 40);
          v16 = vbslq_s8(vcgtq_u64(v15[1], v20), v15[1], v20);
          *v15 = vbslq_s8(vcgtq_u64(*v15, v19), *v15, v19);
          v15[1] = v16;
          v15[2] = vbslq_s8(vcgtq_u64(v15[2], v21), v15[2], v21);
          v17 = v15[3].u64[0];
          if (v17 <= v22)
          {
            v17 = v22;
          }

          v15[3].i64[0] = v17;
          pthread_mutex_unlock(&stru_280C5C4C0);
        }

        HGTraceGuard::~HGTraceGuard(v23);
      }
    }
  }
}

uint64_t HGTextureManager::createRenderbuffer(HGTextureManager *this, unsigned int a2, uint64_t a3)
{
  if ((atomic_load_explicit(&_MergedGlobals_174, memory_order_acquire) & 1) == 0)
  {
    HGTextureManager::createRenderbuffer();
  }

  if ((atomic_load_explicit(&qword_27FE4B558, memory_order_acquire) & 1) == 0)
  {
    HGTextureManager::createRenderbuffer();
  }

  Renderbuffer = RenderbufferCache::createRenderbuffer(&qword_27FE4B580, v4, a3);
  return Renderbuffer;
}

void HGTextureManager::deleteRenderbuffer(HGTextureManager *this, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_174, memory_order_acquire) & 1) == 0)
  {
    HGTextureManager::createRenderbuffer();
  }

  if ((atomic_load_explicit(&qword_27FE4B558, memory_order_acquire) & 1) == 0)
  {
    HGTextureManager::createRenderbuffer();
  }

  HGTraceGuard::HGTraceGuard(v9, "renderbuffer", 1, "deleteRenderbuffer()");
  v5 = qword_27FE4B580;
  if (qword_27FE4B580 != qword_27FE4B588)
  {
    while (*(v5 + 16) != a2)
    {
      v5 += 24;
      if (v5 == qword_27FE4B588)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 == qword_27FE4B588)
  {
LABEL_12:
    v8 = atomic_load(HGLogger::_enabled);
    if (v8)
    {
      v7 = "uh oh! unknown renderbuffer (%d)\n";
      goto LABEL_14;
    }
  }

  else
  {
    *(v5 + 20) = 0;
    v6 = atomic_load(HGLogger::_enabled);
    if (v6)
    {
      v7 = "done with renderbuffer (%d) - marking unused\n";
LABEL_14:
      HGLogger::log("renderbuffer", 1, v7, v3, v4, a2);
    }
  }

  HGTraceGuard::~HGTraceGuard(v9);
}

void sub_25FCD0530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::createTexture(HGTextureManager *this, unsigned int *a2, int a3)
{
  HGTraceGuard::HGTraceGuard(v13, "texManager", 2, "createTexture()");
  ++*this;
  v6 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v7 = *(qword_27FE4B570 + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = qword_27FE4B570 + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == qword_27FE4B570 + 8 || *(v8 + 32) > v6)
  {
LABEL_12:
    v8 = qword_27FE4B570 + 8;
  }

  v12 = *(v8 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  if (*(v12 + 404) == 1)
  {
    TextureDeleteQueue::executeFinishedRequests(v12, 1);
  }

  if (HGTextureManager::_waitForOneQueuedTexture(this))
  {
      ;
    }
  }

  HGTraceGuard::HGTraceGuard(v14, "texManager", 2, "_poolPreAllocateTexture()");
  (*(**(this + 20) + 40))(*(this + 20), 0, 0, 0, 0, 0);
  HGTraceGuard::~HGTraceGuard(v14);
  HGTextureManager::_allocateTexture(this, a2, a3, 0, 0, 0, 0, 0);
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGTraceGuard::~HGTraceGuard(v13);
}

void sub_25FCD07D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  HGTraceGuard::~HGTraceGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a9);
  _Unwind_Resume(a1);
}

void HGTextureManager::_poolPreAllocateTexture(HGTextureManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  HGTraceGuard::HGTraceGuard(v12, "texManager", 2, "_poolPreAllocateTexture()");
  (*(**(this + 20) + 40))(*(this + 20), a2, a3, a4, a5, a6);
  HGTraceGuard::~HGTraceGuard(v12);
}

void HGTextureManager::_allocateTexture(HGGPURenderer **this, unsigned int *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  HGTraceGuard::HGTraceGuard(v29, "texManager", 2, "_allocateTexture()");
  GLState = HGGPURenderer::GetGLState(this[1]);
  HGGPURenderer::GetCurrentContext(this[1], &v27);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v28, GLState, &v27);
  PCSharedCount::PCSharedCount(&v27);
  glGenTextures(1, a2);
  v17 = *a2;
  v20 = HGGetTBC();
  v21 = this[4];
  v22 = *(v21 + 12);
  v23 = *(v21 + 11);
  v24 = 42 * ((v22 - v23) >> 3) - 1;
  if (v22 == v23)
  {
    v24 = 0;
  }

  v25 = *(v21 + 15) + *(v21 + 14);
  if (v24 == v25)
  {
    std::deque<HGTextureManager::TextureEntry>::__add_back_capacity(v21 + 10);
    v23 = *(v21 + 11);
    v25 = *(v21 + 15) + *(v21 + 14);
  }

  v26 = *(v23 + 8 * (v25 / 0x2A)) + 96 * (v25 % 0x2A);
  *v26 = a3;
  *(v26 + 4) = a4;
  *(v26 + 8) = a5;
  *(v26 + 12) = a6;
  *(v26 + 16) = a7;
  *(v26 + 20) = a8;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 0u;
  *(v26 + 56) = 0;
  *(v26 + 64) = v17;
  *(v26 + 68) = 511;
  *(v26 + 72) = 1;
  *(v26 + 80) = 0;
  *(v26 + 88) = v20;
  ++*(v21 + 15);
  LOBYTE(v26) = atomic_load(HGLogger::_enabled);
  if (v26)
  {
    HGLogger::log("texManager", 2, "allocating texture %d\n", v18, v19, *a2);
  }

  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v28);
  HGTraceGuard::~HGTraceGuard(v29);
}

void sub_25FCD0AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, PCSharedCount a12, uint64_t a13, uint64_t a14, char a15)
{
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(&a12);
  HGTraceGuard::~HGTraceGuard(&a15);
  _Unwind_Resume(a1);
}

void HGTextureManager::createTexture(HGTextureManager *this, unsigned int *a2, const HGTextureManager::TextureInfo *a3)
{
  HGTraceGuard::HGTraceGuard(v18, "texManager", 2, "createTexture( with size)");
  ++*this;
  v6 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v7 = *(qword_27FE4B570 + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = qword_27FE4B570 + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == qword_27FE4B570 + 8 || *(v8 + 32) > v6)
  {
LABEL_12:
    v8 = qword_27FE4B570 + 8;
  }

  v12 = *(v8 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  if (*(v12 + 404) == 1)
  {
    TextureDeleteQueue::executeFinishedRequests(v12, 1);
  }

  if ((HGTextureManager::_findTexture(this, a2, a3) & 1) == 0)
  {
    if (HG_RENDERER_ENV::WAIT_FOR_QUEUED_TEXTURE_ONE_BY_ONE)
    {
      while (HGTextureManager::_waitForOneQueuedTexture(this))
      {
        if (HGTextureManager::_findTexture(this, a2, a3))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_24;
    }

    if (!HGTextureManager::_waitForOneQueuedTexture(this))
    {
      goto LABEL_24;
    }

      ;
    }

    if ((HGTextureManager::_findTexture(this, a2, a3) & 1) == 0)
    {
LABEL_24:
      v13 = *(a3 + 1);
      v14 = *(a3 + 2);
      v15 = *(a3 + 3);
      v16 = *(a3 + 4);
      v17 = *(a3 + 5);
      HGTraceGuard::HGTraceGuard(v19, "texManager", 2, "_poolPreAllocateTexture()");
      (*(**(this + 20) + 40))(*(this + 20), v13, v14, v15, v16, v17);
      HGTraceGuard::~HGTraceGuard(v19);
      HGTextureManager::_allocateTexture(this, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5));
      goto LABEL_25;
    }
  }

LABEL_23:
  ++*(this + 1);
LABEL_25:
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGTraceGuard::~HGTraceGuard(v18);
}

void sub_25FCD0D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  HGTraceGuard::~HGTraceGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a9);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::_findTexture(HGTextureManager *this, unsigned int *a2, const HGTextureManager::TextureInfo *a3)
{
  HGTraceGuard::HGTraceGuard(v74, "texManager", 2, "_findTexture()");
  v6 = *(this + 2);
  {
    operator new();
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  {
LABEL_12:
  }

  v12 = *(v8 + 40);
  pthread_mutex_lock((v12 + 16));
  v13 = *(v12 + 120);
  if (!v13)
  {
    goto LABEL_97;
  }

  v14 = *(this + 42);
  if (v14 >= 2)
  {
    v15 = *(v12 + 112);
    v16 = v15 + v13;
    v17 = (v15 + v13) / 0x2A;
    v18 = *(v12 + 88);
    v19 = *(v12 + 96);
    v20 = (v18 + 8 * v17);
    if (v14 == 2)
    {
      v21 = *(a3 + 5);
      if (v21)
      {
        if (v19 != v18)
        {
          v22 = *v20;
          v23 = *v20 + 96 * (v16 - 42 * v17);
          v24 = *(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A);
          if (v23 == v24)
          {
            goto LABEL_95;
          }

          v25 = *a3;
          while (1)
          {
            v26 = v23;
            if (v23 == v22)
            {
              v26 = *(v20 - 1) + 4032;
              if (v25 == *(*(v20 - 1) + 3936))
              {
LABEL_26:
                if (*(a3 + 1) == *(v26 - 92) && *(a3 + 2) == *(v26 - 88) && *(a3 + 4) == *(v26 - 80) && *(a3 + 5) == *(v26 - 76) && (*(a3 + 3) != 0) != (*(v26 - 72) == 0) && *(a3 + 57) == *(v26 - 39) && *(a3 + 56) == *(v26 - 40) && v21 == *(v26 - 56) && *(a3 + 6) == *(v26 - 48))
                {
                  goto LABEL_95;
                }
              }
            }

            else if (v25 == *(v23 - 96))
            {
              goto LABEL_26;
            }

            if (v23 == v22)
            {
              v27 = *--v20;
              v22 = v27;
              v23 = v27 + 3936;
              if (v24 == v27 + 3936)
              {
LABEL_37:
                v23 = *(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A);
                goto LABEL_95;
              }
            }

            else
            {
              v23 -= 96;
              if (v24 == v23)
              {
                goto LABEL_37;
              }
            }
          }
        }

LABEL_97:
        v45 = 0;
        goto LABEL_124;
      }
    }

    if (v19 == v18)
    {
      goto LABEL_97;
    }

    v35 = *(v18 + 8 * v17);
    v23 = v35 + 96 * (v16 - 42 * v17);
    v31 = *(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A);
    if (v23 == v31)
    {
      goto LABEL_95;
    }

    v36 = *a3;
    v37 = *(a3 + 3);
    while (1)
    {
      v38 = v23;
      if (v23 == v35)
      {
        v38 = *(v20 - 1) + 4032;
        if (v36 != *(*(v20 - 1) + 3936))
        {
          goto LABEL_61;
        }
      }

      else if (v36 != *(v23 - 96))
      {
        goto LABEL_61;
      }

      if (*(a3 + 1) == *(v38 - 92) && *(a3 + 2) == *(v38 - 88) && *(a3 + 4) == *(v38 - 80) && *(a3 + 5) == *(v38 - 76))
      {
        v39 = *(v38 - 72);
        if ((v37 != 0) != (v39 == 0) && *(a3 + 57) == *(v38 - 39) && v37 == v39 && *(a3 + 56) == *(v38 - 40) && *(a3 + 4) == *(v38 - 64))
        {
          goto LABEL_95;
        }
      }

LABEL_61:
      if (v23 == v35)
      {
        v40 = *--v20;
        v35 = v40;
        v23 = v40 + 3936;
        if (v31 == v40 + 3936)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v23 -= 96;
        if (v31 == v23)
        {
          goto LABEL_94;
        }
      }
    }
  }

  v15 = *(v12 + 112);
  v28 = v15 + v13;
  v29 = (v15 + v13) / 0x2A;
  v18 = *(v12 + 88);
  v19 = *(v12 + 96);
  v20 = (v18 + 8 * v29);
  if (v14 == 1)
  {
    if (v19 == v18)
    {
      goto LABEL_97;
    }

    v30 = *v20;
    v23 = *v20 + 96 * (v28 - 42 * v29);
    v31 = *(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A);
    if (v23 == v31)
    {
      goto LABEL_95;
    }

    v32 = *a3;
    while (1)
    {
      v33 = v23;
      if (v23 == v30)
      {
        v33 = *(v20 - 1) + 4032;
        if (v32 != *(*(v20 - 1) + 3936))
        {
          goto LABEL_42;
        }
      }

      else if (v32 != *(v23 - 96))
      {
        goto LABEL_42;
      }

      if (*(a3 + 1) == *(v33 - 92) && *(a3 + 2) == *(v33 - 88) && *(a3 + 4) == *(v33 - 80) && *(a3 + 5) == *(v33 - 76) && (*(a3 + 3) != 0) != (*(v33 - 72) == 0) && *(a3 + 57) == *(v33 - 39) && *(a3 + 56) == *(v33 - 40))
      {
        goto LABEL_95;
      }

LABEL_42:
      if (v23 == v30)
      {
        v34 = *--v20;
        v30 = v34;
        v23 = v34 + 3936;
        if (v31 == v34 + 3936)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v23 -= 96;
        if (v31 == v23)
        {
          goto LABEL_94;
        }
      }
    }
  }

  if (v19 == v18)
  {
    goto LABEL_97;
  }

  v41 = *(v18 + 8 * v29);
  v23 = v41 + 96 * (v28 - 42 * v29);
  v31 = *(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A);
  if (v23 == v31)
  {
    goto LABEL_95;
  }

  v42 = *a3;
  do
  {
    while (1)
    {
      v43 = v23;
      if (v23 == v41)
      {
        v43 = *(v20 - 1) + 4032;
        if (v42 != *(*(v20 - 1) + 3936))
        {
          goto LABEL_82;
        }
      }

      else if (v42 != *(v23 - 96))
      {
        goto LABEL_82;
      }

      if (*(a3 + 1) == *(v43 - 92) && *(a3 + 2) == *(v43 - 88) && *(a3 + 4) == *(v43 - 80) && *(a3 + 5) == *(v43 - 76))
      {
        goto LABEL_95;
      }

LABEL_82:
      if (v23 == v41)
      {
        break;
      }

      v23 -= 96;
      if (v31 == v23)
      {
        goto LABEL_94;
      }
    }

    v44 = *--v20;
    v41 = v44;
    v23 = v44 + 3936;
  }

  while (v31 != v44 + 3936);
LABEL_94:
  v23 = v31;
LABEL_95:
  if (v19 == v18)
  {
    if (v23)
    {
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  if (*(v18 + 8 * (v15 / 0x2A)) + 96 * (v15 % 0x2A) == v23)
  {
    goto LABEL_97;
  }

LABEL_99:
  v46 = v23 - *v20;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 5);
  if (v46 < 97)
  {
    v54 = 42 - v47;
    v49 = &v20[-(v54 / 0x2A)];
    v50 = *v49 + 96 * (42 * (v54 / 0x2A) - v54) + 3936;
    *a2 = *(*v49 + 96 * (42 * (v54 / 0x2A) - v54) + 4000);
    v51 = (v12 + 128);
    if (*(v50 + 56) == 2)
    {
      goto LABEL_105;
    }

LABEL_101:
    v52 = *(v50 + 76);
    if (*(v50 + 69) != 1)
    {
      v53 = 4;
      goto LABEL_109;
    }

    *v51 = vsubq_s64(*v51, vdupq_n_s64(v52));
    if ((*(v50 + 68) & 0x80000000) == 0)
    {
      v53 = 2;
      goto LABEL_109;
    }
  }

  else
  {
    v48 = v47 - 1;
    v49 = &v20[v48 / 0x2A];
    v50 = *v49 + 96 * (v48 % 0x2A);
    *a2 = *(v50 + 64);
    v51 = (v12 + 128);
    if (*(v50 + 56) != 2)
    {
      goto LABEL_101;
    }

LABEL_105:
    v52 = *(v50 + 76);
    v53 = 3;
LABEL_109:
    v51->i64[v53] -= v52;
  }

  *(v50 + 68) = -1;
  ++*(v50 + 72);
  *(v50 + 80) = 0;
  v55 = HGGetTBC();
  v57 = *(this + 4);
  v58 = v57[12];
  v59 = v57[11];
  v60 = 42 * ((v58 - v59) >> 3) - 1;
  *(v50 + 88) = v55;
  if (v58 == v59)
  {
    v60 = 0;
  }

  v61 = v57[15] + v57[14];
  if (v60 == v61)
  {
    std::deque<HGTextureManager::TextureEntry>::__add_back_capacity(v57 + 10);
    v59 = v57[11];
    v61 = v57[15] + v57[14];
  }

  v62 = (*(v59 + 8 * (v61 / 0x2A)) + 96 * (v61 % 0x2A));
  v63 = *(v50 + 16);
  *v62 = *v50;
  v62[1] = v63;
  v64 = *(v50 + 32);
  v65 = *(v50 + 48);
  v66 = *(v50 + 80);
  v62[4] = *(v50 + 64);
  v62[5] = v66;
  v62[2] = v64;
  v62[3] = v65;
  ++v57[15];
  v67 = (*(this + 4) + 128);
  if (*(v50 + 56) == 2)
  {
    v68 = *(v50 + 76);
    v69 = 3;
    goto LABEL_120;
  }

  v68 = *(v50 + 76);
  if (*(v50 + 69) == 1)
  {
    *v67 = vaddq_s64(*v67, vdupq_n_s64(v68));
    if ((*(v50 + 68) & 0x80000000) == 0)
    {
      v69 = 2;
      goto LABEL_120;
    }
  }

  else
  {
    v69 = 4;
LABEL_120:
    v67->i64[v69] += v68;
  }

  HGTextureManager::TextureEntry::log(v50, 2, v56);
  std::deque<HGTextureManager::TextureEntry>::erase((v12 + 80), v49, v50);
  v72 = atomic_load(HGLogger::_enabled);
  if (v72)
  {
    HGLogger::log("texManager", 2, "re-using texture %d.  GREAT!!\n", v70, v71, *a2);
  }

  v45 = 1;
LABEL_124:
  pthread_mutex_unlock((v12 + 16));
  HGTraceGuard::~HGTraceGuard(v74);
  return v45;
}

void sub_25FCD16C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock((v3 + 16));
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::_waitForOneQueuedTexture(HGTextureManager *this)
{
  v2 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v3 = *(qword_27FE4B570 + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = qword_27FE4B570 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == qword_27FE4B570 + 8 || *(v4 + 32) > v2)
  {
LABEL_12:
    v4 = qword_27FE4B570 + 8;
  }

  v8 = *(v4 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  v9 = *(v8 + 404);
  pthread_mutex_lock((v8 + 128));
  v10 = *(v8 + 120);
  pthread_mutex_unlock((v8 + 128));
  if (v9 == 1)
  {
    if (v10)
    {
      HGTextureManager::_getQueuedTotalTextureUsage(*(this + 2), v12);
      if ((*(this + 18) * 0.8) < v13 || (*(**(this + 20) + 56))(*(this + 20)))
      {
        pthread_mutex_lock((v8 + 128));
        if (*(v8 + 120))
        {
          TextureDeleteQueue::_popFrontRequest(v8, v12);
          pthread_mutex_unlock((v8 + 128));
          TextureDeleteQueue::DeleteRequest::execute(v12);
          return 1;
        }

        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    HGTextureManager::_getQueuedTotalTextureUsage(*(this + 2), v12);
    if ((*(this + 18) * 0.8) < v13 || (*(**(this + 20) + 56))(*(this + 20)))
    {
      pthread_mutex_lock((v8 + 128));
      if (*(v8 + 120))
      {
        pthread_cond_wait((v8 + 288), (v8 + 128));
      }

LABEL_24:
      pthread_mutex_unlock((v8 + 128));
      return 1;
    }
  }

  return 0;
}

void HGTextureManager::deleteTexture(HGTextureManager *this, const unsigned int *a2, char *a3, const char *a4)
{
  HGTraceGuard::HGTraceGuard(v62, "texManager", 2, "deleteTexture()");
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("texManager", 2, "deleting texture %d\n", v8, v9, *a2);
  }

  v11 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v12 = *(qword_27FE4B570 + 8);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = qword_27FE4B570 + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= v11;
    v16 = v14 < v11;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == qword_27FE4B570 + 8 || *(v13 + 32) > v11)
  {
LABEL_14:
    v13 = qword_27FE4B570 + 8;
  }

  v17 = *(v13 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  if (*(v17 + 404) == 1)
  {
    TextureDeleteQueue::executeFinishedRequests(v17, 1);
  }

  v20 = *(this + 4);
  v21 = v20[5].i64[1];
  if (v20[6].i64[0] == v21)
  {
    goto LABEL_27;
  }

  v22 = v20[7].u64[0];
  v23 = (v21 + 8 * (v22 / 0x2A));
  v24 = *v23;
  v25 = *v23 + 96 * (v22 % 0x2A);
  v26 = *(v21 + 8 * ((v20[7].i64[1] + v22) / 0x2A)) + 96 * ((v20[7].i64[1] + v22) % 0x2A);
  if (v25 != v26)
  {
    while (*(v25 + 64) != *a2)
    {
      v25 += 96;
      if (v25 - v24 == 4032)
      {
        v27 = v23[1];
        ++v23;
        v24 = v27;
        v25 = v27;
      }

      if (v25 == v26)
      {
        goto LABEL_27;
      }
    }
  }

  if (v25 == v26)
  {
LABEL_27:
    v31 = atomic_load(HGLogger::_enabled);
    if (v31)
    {
      HGLogger::log("texManager", 1, "ERROR deleting texture ID %d, texture not found!\n", v18, v19, *a2);
    }

    goto LABEL_69;
  }

  v28 = v20 + 8;
  if (*(v25 + 56) == 2)
  {
    v29 = *(v25 + 76);
    v30 = 3;
  }

  else
  {
    v29 = *(v25 + 76);
    if (*(v25 + 69) == 1)
    {
      *v28 = vsubq_s64(*v28, vdupq_n_s64(v29));
      if (*(v25 + 68) < 0)
      {
        goto LABEL_34;
      }

      v30 = 2;
    }

    else
    {
      v30 = 4;
    }
  }

  v28->i64[v30] -= v29;
LABEL_34:
  *(v25 + 68) = -1;
  *(v25 + 80) = 2;
  *(v25 + 88) = HGGetTBC();
  if (*(v25 + 4) && *(v25 + 8) && *(v25 + 16) && *(v25 + 20) && *(v25 + 12) && (*(v25 + 57) != 1 || (*(this + 172) & 1) != 0))
  {
    v34 = atomic_load(HGLogger::_enabled);
    if (v34)
    {
      HGLogger::log("texManager", 2, "queueing add to free textures pool: %d\n", v32, v33, *(v25 + 64));
    }

    v35 = *(this + 2);
    pthread_mutex_lock(&stru_280C5C480);
    if (!qword_27FE4B570)
    {
      operator new();
    }

    v36 = *(qword_27FE4B570 + 8);
    if (!v36)
    {
      goto LABEL_71;
    }

    v37 = qword_27FE4B570 + 8;
    do
    {
      v38 = *(v36 + 32);
      v15 = v38 >= v35;
      v39 = v38 < v35;
      if (v15)
      {
        v37 = v36;
      }

      v36 = *(v36 + 8 * v39);
    }

    while (v36);
    if (v37 == qword_27FE4B570 + 8 || *(v37 + 32) > v35)
    {
LABEL_71:
      v37 = qword_27FE4B570 + 8;
    }

    v51 = *(v37 + 40);
    pthread_mutex_unlock(&stru_280C5C480);
    v52 = *(v25 + 16);
    v56 = *v25;
    v57 = v52;
    v53 = *(v25 + 32);
    v54 = *(v25 + 48);
    v55 = *(v25 + 80);
    v60 = *(v25 + 64);
    v61 = v55;
    v58 = v53;
    v59 = v54;
    TextureDeleteQueue::enqueueDelete(v51, this, &v56, a4, a3, 1, 1);
  }

  else
  {
    v40 = atomic_load(HGLogger::_enabled);
    if (v40)
    {
      HGLogger::log("texManager", 2, "null size, queueing delete %d\n", v32, v33, *(v25 + 64));
    }

    v41 = *(this + 2);
    pthread_mutex_lock(&stru_280C5C480);
    if (!qword_27FE4B570)
    {
      operator new();
    }

    v42 = *(qword_27FE4B570 + 8);
    if (!v42)
    {
      goto LABEL_66;
    }

    v43 = qword_27FE4B570 + 8;
    do
    {
      v44 = *(v42 + 32);
      v15 = v44 >= v41;
      v45 = v44 < v41;
      if (v15)
      {
        v43 = v42;
      }

      v42 = *(v42 + 8 * v45);
    }

    while (v42);
    if (v43 == qword_27FE4B570 + 8 || *(v43 + 32) > v41)
    {
LABEL_66:
      v43 = qword_27FE4B570 + 8;
    }

    v46 = *(v43 + 40);
    pthread_mutex_unlock(&stru_280C5C480);
    v47 = *(v25 + 16);
    v56 = *v25;
    v57 = v47;
    v48 = *(v25 + 32);
    v49 = *(v25 + 48);
    v50 = *(v25 + 80);
    v60 = *(v25 + 64);
    v61 = v50;
    v58 = v48;
    v59 = v49;
    TextureDeleteQueue::enqueueDelete(v46, this, &v56, a4, a3, 1, 0);
  }

  std::deque<HGTextureManager::TextureEntry>::erase(v20 + 5, v23, v25);
LABEL_69:
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGTraceGuard::~HGTraceGuard(v62);
}

void **std::deque<HGTextureManager::TextureEntry>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 / 0x2A));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v9 + 96 * (v6 % 0x2A);
    if (a3 == v10)
    {
LABEL_3:
      v11 = 0;
      v12 = *v9;
      v13 = 1;
      v14 = (v7 + 8 * (v6 / 0x2A));
LABEL_13:
      v22 = a3 - v12;
      v23 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v12) >> 5);
      if (v22 < -95)
      {
        v27 = 40 - v23;
        v25 = &v14[-(v27 / 0x2A)];
        v26 = *v25 + 96 * (42 * (v27 / 0x2A) - v27) + 3936;
      }

      else
      {
        v24 = v23 + 1;
        v25 = &v14[v24 / 0x2A];
        v26 = *v25 + 96 * (v24 % 0x2A);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,0>(v9, v10, v14, a3, v25, v26, v42);
      v28 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v28;
      v29 = v28.i64[0];
      v30 = a1->i64[1];
      if (v28.i64[0] >= 0x54uLL)
      {
        operator delete(*v30);
        v30 = (a1->i64[1] + 8);
        a1->i64[1] = v30;
        v29 = a1[2].i64[0] - 42;
        a1[2].i64[0] = v29;
      }

      goto LABEL_18;
    }
  }

  v15 = 42 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 5);
  v12 = *v9;
  v11 = v15 + 0x5555555555555555 * ((v10 - *v9) >> 5);
  v13 = v11 == 0;
  if (!v11)
  {
    a3 = v10;
    v14 = (v7 + 8 * (v6 / 0x2A));
    goto LABEL_13;
  }

  if (v15 < 1)
  {
    v14 = &v9[-((41 - v15) / 0x2AuLL)];
    v12 = *v14;
    a3 = *v14 + 96 * (42 * ((41 - v15) / 0x2AuLL) - (41 - v15)) + 3936;
    v16 = a1[2].i64[1];
    if (v11 <= (v16 - 1) >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = &v9[v15 / 0x2AuLL];
    v12 = *v14;
    a3 = *v14 + 96 * (v15 % 0x2AuLL);
    v16 = a1[2].i64[1];
    if (v11 <= (v16 - 1) >> 1)
    {
      goto LABEL_13;
    }
  }

  v17 = a3 - v12;
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v12) >> 5);
  if (v17 < -95)
  {
    v34 = 40 - v18;
    v20 = &v14[-(v34 / 0x2A)];
    v21 = *v20 + 96 * (42 * (v34 / 0x2A) - v34) + 3936;
  }

  else
  {
    v19 = v18 + 1;
    v20 = &v14[v19 / 0x2A];
    v21 = *v20 + 96 * (v19 % 0x2A);
  }

  v35 = v16 + v6;
  v36 = (v16 + v6) / 0x2A;
  v37 = (v7 + 8 * v36);
  if (v8 == v7)
  {
    v38 = 0;
  }

  else
  {
    v38 = *v37 + 96 * (v35 - 42 * v36);
  }

  v42[0] = v14;
  v42[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>,std::__deque_iterator<HGTextureManager::TextureEntry,HGTextureManager::TextureEntry*,HGTextureManager::TextureEntry&,HGTextureManager::TextureEntry**,long,42l>>>(v20, v21, v37, v38, v42);
  v30 = a1->i64[1];
  v39 = a1[1].i64[0];
  v40 = 42 * (v39 - v30) - 1;
  v29 = a1[2].u64[0];
  v41 = a1[2].i64[1];
  a1[2].i64[1] = v41 - 1;
  if (v39 == v30)
  {
    v40 = 0;
  }

  if (v40 - (v41 + v29) + 1 >= 0x54)
  {
    operator delete(*(v39 - 1));
    v13 = 0;
    v30 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v29 = a1[2].u64[0];
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  result = &v30[v29 / 0x2A];
  if (a1[1].i64[0] == v30)
  {
    v32 = 0;
    if (v13)
    {
      return result;
    }
  }

  else
  {
    v32 = *result + 96 * (v29 % 0x2A);
    if (v13)
    {
      return result;
    }
  }

  v33 = v11 - 0x5555555555555555 * ((v32 - *result) >> 5);
  if (v33 < 1)
  {
    result -= (41 - v33) / 0x2AuLL;
  }

  else
  {
    result += v33 / 0x2AuLL;
  }

  return result;
}

void HGTextureManager::dismissTexture(HGTextureManager *this, const unsigned int *a2, char *a3, const char *a4)
{
  HGTraceGuard::HGTraceGuard(v31, "texManager", 2, "dismissTexture()");
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("texManager", 2, "dismiss texture %d\n", v8, v9, *a2);
  }

  v11 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v12 = *(qword_27FE4B570 + 8);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = qword_27FE4B570 + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= v11;
    v16 = v14 < v11;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == qword_27FE4B570 + 8 || *(v13 + 32) > v11)
  {
LABEL_14:
    v13 = qword_27FE4B570 + 8;
  }

  v17 = *(v13 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  if (*(v17 + 404) == 1)
  {
    TextureDeleteQueue::executeFinishedRequests(v17, 1);
  }

  v18 = *a2;
  v19 = *(this + 2);
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v20 = *(qword_27FE4B570 + 8);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = qword_27FE4B570 + 8;
  do
  {
    v22 = *(v20 + 32);
    v15 = v22 >= v19;
    v23 = v22 < v19;
    if (v15)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * v23);
  }

  while (v20);
  if (v21 == qword_27FE4B570 + 8 || *(v21 + 32) > v19)
  {
LABEL_28:
    v21 = qword_27FE4B570 + 8;
  }

  v24 = *(v21 + 40);
  pthread_mutex_unlock(&stru_280C5C480);
  memset(v25, 0, 58);
  v26 = v18;
  v27 = 511;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  TextureDeleteQueue::enqueueDelete(v24, this, v25, a4, a3, 0, 0);
  HGTraceGuard::~HGTraceGuard(v31);
}

void HGTextureManager::removeTexture(HGTextureManager *this, uint64_t a2)
{
  HGTraceGuard::HGTraceGuard(v18, "texManager", 2, "removeTexture()");
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("texManager", 2, "remove texture %d (delegate ownership)\n", v4, v5, a2);
  }

  v7 = *(this + 4);
  v8 = v7[5].i64[1];
  if (v7[6].i64[0] != v8)
  {
    v9 = v7[7].u64[0];
    v10 = (v8 + 8 * (v9 / 0x2A));
    v11 = *v10;
    v12 = *v10 + 96 * (v9 % 0x2A);
    v13 = *(v8 + 8 * ((v7[7].i64[1] + v9) / 0x2A)) + 96 * ((v7[7].i64[1] + v9) % 0x2A);
    if (v12 != v13)
    {
      while (*(v12 + 64) != a2)
      {
        v12 += 96;
        if (v12 - v11 == 4032)
        {
          v17 = v10[1];
          ++v10;
          v11 = v17;
          v12 = v17;
        }

        if (v12 == v13)
        {
          goto LABEL_18;
        }
      }
    }

    if (v12 != v13)
    {
      v14 = (*(this + 4) + 128);
      if (*(v12 + 56) == 2)
      {
        v15 = *(v12 + 76);
        v16 = 3;
      }

      else
      {
        v15 = *(v12 + 76);
        if (*(v12 + 69) == 1)
        {
          *v14 = vsubq_s64(*v14, vdupq_n_s64(v15));
          if (*(v12 + 68) < 0)
          {
LABEL_17:
            std::deque<HGTextureManager::TextureEntry>::erase(v7 + 5, v10, v12);
            goto LABEL_18;
          }

          v16 = 2;
        }

        else
        {
          v16 = 4;
        }
      }

      v14->i64[v16] -= v15;
      goto LABEL_17;
    }
  }

LABEL_18:
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGTraceGuard::~HGTraceGuard(v18);
}

void sub_25FCD26D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD26EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGTextureManager::emptyTexturePool(HGTextureManager *this)
{
  v2 = *(this + 2);
  {
    operator new();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  {
LABEL_12:
  }

  v8 = *(v4 + 40);
  pthread_mutex_lock((v8 + 16));
  HGTextureManager::emptyTexturePool_NoLock(this);
  return pthread_mutex_unlock((v8 + 16));
}

uint64_t HGTextureManager::activeTexture(HGTextureManager *this, GLenum a2, uint64_t a3, const char *a4, char *a5)
{
  v7 = *(this + 6);
  *(this + 6) = a2 - 33984;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("texManager", 2, "active texture %d\n", a4, a5, *(this + 6));
  }

  GLState = HGGPURenderer::GetGLState(*(this + 1));
  HGGPURenderer::GetCurrentContext(*(this + 1), &v11);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v12, GLState, &v11);
  PCSharedCount::PCSharedCount(&v11);
  glActiveTexture(a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v12);
  return v7;
}

void sub_25FCD28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::bindTexture(HGTextureManager *this, GLenum a2, uint64_t a3)
{
  HGTraceGuard::HGTraceGuard(v52, "texManager", 2, "bindTexture()");
  v9 = atomic_load(HGLogger::_enabled);
  if (v9)
  {
    HGLogger::log("texManager", 2, "binding texture %d in unit %d\n", v7, v8, a3, *(this + 6));
  }

  v10 = *(this + 4);
  v11 = v10[5].i64[1];
  if (v10[6].i64[0] == v11)
  {
    v12 = &v10[7].i64[1];
    v18 = (this + 24);
    if (!a3)
    {
      goto LABEL_58;
    }

    goto LABEL_24;
  }

  v12 = &v10[7].i64[1];
  v13 = v10[7].u64[0];
  v14 = (v11 + 8 * (v13 / 0x2A));
  v15 = *v14;
  v16 = *v14 + 96 * (v13 % 0x2A);
  v17 = *(v11 + 8 * ((v10[7].i64[1] + v13) / 0x2A)) + 96 * ((v10[7].i64[1] + v13) % 0x2A);
  v18 = (this + 24);
  if (v16 != v17)
  {
    while (*(this + 6) != *(v16 + 68))
    {
      v16 += 96;
      if (v16 - v15 == 4032)
      {
        v22 = v14[1];
        ++v14;
        v15 = v22;
        v16 = v22;
      }

      if (v16 == v17)
      {
        goto LABEL_23;
      }
    }
  }

  if (v16 == v17)
  {
    goto LABEL_23;
  }

  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    HGLogger::log("texManager", 2, "  (...unbinding tex %d from unit %d)\n", v7, v8, *(v16 + 64), *v18);
  }

  v20 = *(this + 4);
  if (*(v16 + 56) == 2)
  {
    v21 = v20[9].i64[1];
    v20[9].i64[1] = v21 - *(v16 + 76);
    *(v16 + 68) = -1;
    if (*(v16 + 69))
    {
      v20[9].i64[1] = v21;
      if (!a3)
      {
        goto LABEL_58;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v23 = *(v16 + 76);
  if (*(v16 + 69) != 1)
  {
    v20[10].i64[0] -= v23;
    *(v16 + 68) = -1;
LABEL_22:
    std::deque<HGTextureManager::TextureEntry>::erase(v10 + 5, v14, v16);
LABEL_23:
    if (!a3)
    {
      goto LABEL_58;
    }

    goto LABEL_24;
  }

  v24 = vdupq_n_s64(v23);
  v25 = vsubq_s64(v20[8], v24);
  v20[8] = v25;
  if (*(v16 + 68) < 0)
  {
    *(v16 + 68) = -1;
  }

  else
  {
    v20[9].i64[0] -= v23;
    *(v16 + 68) = -1;
    v25 = v20[8];
  }

  v20[8] = vaddq_s64(v25, v24);
  if (!a3)
  {
    goto LABEL_58;
  }

LABEL_24:
  v26 = v10[7].u64[0];
  v27 = v10[5].i64[1];
  v28 = v10[6].i64[0];
  if (v28 == v27)
  {
    v33 = 0;
    v32 = *v12 + v26;
  }

  else
  {
    v29 = (v27 + 8 * (v26 / 0x2A));
    v30 = *v29;
    v31 = *v29 + 96 * (v26 % 0x2A);
    v32 = *v12 + v26;
    v33 = *(v27 + 8 * (v32 / 0x2A)) + 96 * (v32 % 0x2A);
    if (v31 != v33)
    {
      while (*(v31 + 64) != a3)
      {
        v31 += 96;
        if (v31 - v30 == 4032)
        {
          v39 = v29[1];
          ++v29;
          v30 = v39;
          v31 = v39;
        }

        if (v31 == v33)
        {
          goto LABEL_35;
        }
      }
    }

    if (v31 != v33)
    {
      v34 = *(this + 4);
      v35 = v34 + 8;
      if (*(v31 + 56) == 2)
      {
        v36 = *(v31 + 76);
        v37 = 3;
        v38 = 19;
      }

      else
      {
        v36 = *(v31 + 76);
        if (*(v31 + 69) == 1)
        {
          v47 = vdupq_n_s64(v36);
          *v35 = vsubq_s64(*v35, v47);
          if ((*(v31 + 68) & 0x80000000) == 0)
          {
            v34[9].i64[0] -= v36;
          }

          v48 = *v18;
          *(v31 + 68) = *v18;
          *v35 = vaddq_s64(*v35, v47);
          if (v48 < 0)
          {
            goto LABEL_57;
          }

          v37 = 2;
LABEL_56:
          v35->i64[v37] += v36;
LABEL_57:
          HGTextureManager::TextureEntry::log(v31, 2, v6);
          goto LABEL_58;
        }

        v37 = 4;
        v38 = 20;
      }

      v34->i64[v38] -= v36;
      *(v31 + 68) = *v18;
      goto LABEL_56;
    }

    v33 = v31;
  }

LABEL_35:
  v40 = *v18;
  if (v28 == v27)
  {
    v41 = 0;
  }

  else
  {
    v41 = 42 * ((v28 - v27) >> 3) - 1;
  }

  if (v41 == v32)
  {
    std::deque<HGTextureManager::TextureEntry>::__add_back_capacity(v10[5].i64);
    v27 = v10[5].i64[1];
    v32 = v10[7].i64[1] + v10[7].i64[0];
  }

  v42 = *(v27 + 8 * (v32 / 0x2A)) + 96 * (v32 % 0x2A);
  *v42 = a2;
  *(v42 + 4) = 0u;
  *(v42 + 20) = 0u;
  *(v42 + 36) = 0u;
  *(v42 + 50) = 0;
  *(v42 + 64) = a3;
  *(v42 + 68) = v40;
  *(v42 + 69) = 0;
  *(v42 + 72) = 0xFFFFFFFFLL;
  *(v42 + 80) = 0;
  *(v42 + 88) = 0;
  ++*v12;
  v43 = (*(this + 4) + 128);
  if (*(v33 + 56) == 2)
  {
    v44 = *(v33 + 76);
    v45 = 3;
  }

  else
  {
    v44 = *(v33 + 76);
    if (*(v33 + 69) == 1)
    {
      *v43 = vaddq_s64(*v43, vdupq_n_s64(v44));
      if (*(v33 + 68) < 0)
      {
        goto LABEL_47;
      }

      v45 = 2;
    }

    else
    {
      v45 = 4;
    }
  }

  v43->i64[v45] += v44;
LABEL_47:
  v46 = atomic_load(HGLogger::_enabled);
  if (v46)
  {
    HGLogger::log("texManager", 2, "id %d in unit %d (app-managed texture)\n", v7, v8, a3, *v18);
  }

LABEL_58:
  GLState = HGGPURenderer::GetGLState(*(this + 1));
  HGGPURenderer::GetCurrentContext(*(this + 1), &v50);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v51, GLState, &v50);
  PCSharedCount::PCSharedCount(&v50);
  glBindTexture(a2, a3);
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v51);
  HGTraceGuard::~HGTraceGuard(v52);
}

void sub_25FCD2DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD2E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD2E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD2E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  PCSharedCount::PCSharedCount(&a11);
  HGTraceGuard::~HGTraceGuard(&a15);
  _Unwind_Resume(a1);
}

void sub_25FCD2E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.var0 = va_arg(va1, PC_Sp_counted_base *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FCD2E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::framebufferTexture2D(HGTextureManager *this, GLenum a2, uint64_t a3)
{
  HGTraceGuard::HGTraceGuard(v39, "texManager", 2, "framebufferTexture2D()");
  v9 = atomic_load(HGLogger::_enabled);
  if (v9)
  {
    HGLogger::log("texManager", 2, "binding buffer %d\n", v7, v8, a3);
  }

  v10 = *(this + 4);
  v11 = v10[5].i64[1];
  v12 = v10;
  if (v10[6].i64[0] != v11)
  {
    v13 = v10[7].u64[0];
    v14 = (v11 + 8 * (v13 / 0x2A));
    v15 = *v14;
    v16 = *v14 + 96 * (v13 % 0x2A);
    v17 = *(v11 + 8 * ((v10[7].i64[1] + v13) / 0x2A)) + 96 * ((v10[7].i64[1] + v13) % 0x2A);
    if (v16 != v17)
    {
      while (*(v16 + 68) != 99)
      {
        v16 += 96;
        if (v16 - v15 == 4032)
        {
          v23 = v14[1];
          ++v14;
          v15 = v23;
          v16 = v23;
        }

        if (v16 == v17)
        {
          v12 = *(this + 4);
          goto LABEL_21;
        }
      }
    }

    v12 = *(this + 4);
    if (v16 != v17)
    {
      v18 = atomic_load(HGLogger::_enabled);
      if (v18)
      {
        HGLogger::log("texManager", 2, "  (...unbinding buffer %d from unit %d)\n", v7, v8, *(v16 + 64), 99);
      }

      v12 = *(this + 4);
      v19 = v12 + 8;
      if (*(v16 + 56) == 2)
      {
        v20 = *(v16 + 76);
        v21 = 3;
        v22 = 19;
LABEL_20:
        v12->i64[v22] -= v20;
        *(v16 + 68) = -1;
        v19->i64[v21] += v20;
        goto LABEL_21;
      }

      v20 = *(v16 + 76);
      if (*(v16 + 69) != 1)
      {
        v21 = 4;
        v22 = 20;
        goto LABEL_20;
      }

      v24 = vdupq_n_s64(v20);
      *v19 = vsubq_s64(*v19, v24);
      if ((*(v16 + 68) & 0x80000000) == 0)
      {
        v12[9].i64[0] -= v20;
      }

      *(v16 + 68) = -1;
      *v19 = vaddq_s64(*v19, v24);
    }
  }

LABEL_21:
  if (a3)
  {
    v25 = v10[5].i64[1];
    if (v10[6].i64[0] != v25)
    {
      v26 = v10[7].u64[0];
      v27 = (v25 + 8 * (v26 / 0x2A));
      v28 = *v27;
      v29 = *v27 + 96 * (v26 % 0x2A);
      v30 = *(v25 + 8 * ((v10[7].i64[1] + v26) / 0x2A)) + 96 * ((v10[7].i64[1] + v26) % 0x2A);
      if (v29 != v30)
      {
        while (*(v29 + 64) != a3)
        {
          v29 += 96;
          if (v29 - v28 == 4032)
          {
            v34 = v27[1];
            ++v27;
            v28 = v34;
            v29 = v34;
          }

          if (v29 == v30)
          {
            goto LABEL_37;
          }
        }
      }

      if (v29 != v30)
      {
        a2 = *v29;
        v31 = v12 + 8;
        if (*(v29 + 56) == 2)
        {
          v32 = *(v29 + 76);
          v12[9].i64[1] -= v32;
          *(v29 + 68) = 99;
          v33 = 3;
        }

        else
        {
          v32 = *(v29 + 76);
          if (*(v29 + 69) == 1)
          {
            v35 = vdupq_n_s64(v32);
            *v31 = vsubq_s64(*v31, v35);
            if ((*(v29 + 68) & 0x80000000) == 0)
            {
              v12[9].i64[0] -= v32;
            }

            *(v29 + 68) = 99;
            *v31 = vaddq_s64(*v31, v35);
            v33 = 2;
          }

          else
          {
            v12[10].i64[0] -= v32;
            *(v29 + 68) = 99;
            v33 = 4;
          }
        }

        v31->i64[v33] += v32;
        HGTextureManager::TextureEntry::log(v29, 2, v6);
      }
    }
  }

LABEL_37:
  GLState = HGGPURenderer::GetGLState(*(this + 1));
  HGGPURenderer::GetCurrentContext(*(this + 1), &v37);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v38, GLState, &v37);
  PCSharedCount::PCSharedCount(&v37);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, a2, a3, 0);
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v38);
  HGTraceGuard::~HGTraceGuard(v39);
}

void sub_25FCD3228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD3264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  PCSharedCount::PCSharedCount(&a11);
  HGTraceGuard::~HGTraceGuard(&a15);
  _Unwind_Resume(a1);
}

void sub_25FCD3280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5.var0 = va_arg(va1, PC_Sp_counted_base *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FCD329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::texImage2D(HGTextureManager *this, const HGTextureManager::TextureInfo *a2)
{
  HGTraceGuard::HGTraceGuard(v35, "texManager", 2, "texImage2D()");
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("texManager", 2, "creating texture (%dx%d) in unit %d\n", v5, v6, *(a2 + 1), *(a2 + 2), *(this + 6));
  }

  v8 = *(this + 4);
  v9 = v8[5].i64[1];
  if (v8[6].i64[0] != v9)
  {
    v10 = v8[7].u64[0];
    v11 = (v9 + 8 * (v10 / 0x2A));
    v12 = *v11;
    v13 = *v11 + 96 * (v10 % 0x2A);
    v14 = *(v9 + 8 * ((v8[7].i64[1] + v10) / 0x2A)) + 96 * ((v8[7].i64[1] + v10) % 0x2A);
    if (v13 != v14)
    {
      while (*(this + 6) != *(v13 + 68))
      {
        v13 += 96;
        if (v13 - v12 == 4032)
        {
          v15 = v11[1];
          ++v11;
          v12 = v15;
          v13 = v15;
        }

        if (v13 == v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (v13 != v14)
    {
      v16 = v8 + 8;
      if (*(v13 + 56) == 2)
      {
        v17 = *(v13 + 76);
        v18 = 3;
      }

      else
      {
        v17 = *(v13 + 76);
        if (*(v13 + 69) == 1)
        {
          *v16 = vsubq_s64(*v16, vdupq_n_s64(v17));
          if (*(v13 + 68) < 0)
          {
            goto LABEL_18;
          }

          v18 = 2;
        }

        else
        {
          v18 = 4;
        }
      }

      v16->i64[v18] -= v17;
LABEL_18:
      v20 = *(a2 + 1);
      v19 = *(a2 + 2);
      v21 = *(a2 + 42);
      *v13 = *a2;
      *(v13 + 16) = v20;
      *(v13 + 42) = v21;
      *(v13 + 32) = v19;
      v23 = *(v13 + 4);
      v22 = *(v13 + 8);
      v24 = HGFormatUtils::GLFormatToByteSize(*(v13 + 16), *(v13 + 20), v4);
      v26 = v23 + 127;
      if (v23 < -127)
      {
        v26 = v23 + 254;
      }

      v27 = v26 >> 7;
      if (v22 <= 128)
      {
        v28 = 128;
      }

      else
      {
        v28 = v22;
      }

      LODWORD(v29) = (v27 * v28 * v24) << 7;
      *(v13 + 76) = v29;
      v30 = (*(this + 4) + 128);
      if (*(v13 + 56) == 2)
      {
        v29 = v29;
        v31 = 3;
      }

      else
      {
        v29 = v29;
        if (*(v13 + 69) == 1)
        {
          *v30 = vaddq_s64(*v30, vdupq_n_s64(v29));
          if (*(v13 + 68) < 0)
          {
LABEL_30:
            HGTextureManager::TextureEntry::log(v13, 2, v25);
            goto LABEL_31;
          }

          v31 = 2;
        }

        else
        {
          v31 = 4;
        }
      }

      v30->i64[v31] += v29;
      goto LABEL_30;
    }
  }

LABEL_31:
  GLState = HGGPURenderer::GetGLState(*(this + 1));
  HGGPURenderer::GetCurrentContext(*(this + 1), &v33);
  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v34, GLState, &v33);
  PCSharedCount::PCSharedCount(&v33);
  glTexImage2D(*a2, 0, *(a2 + 3), *(a2 + 1), *(a2 + 2), 0, *(a2 + 4), *(a2 + 5), *(a2 + 3));
  HGTextureManager::_dumpTextures(this, *(this + 2));
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v34);
  HGTraceGuard::~HGTraceGuard(v35);
}

void sub_25FCD3570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCD3598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  PCSharedCount::PCSharedCount(&a13);
  HGTraceGuard::~HGTraceGuard(&a17);
  _Unwind_Resume(a1);
}

void sub_25FCD35B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7.var0 = va_arg(va1, PC_Sp_counted_base *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FCD35D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGTextureManager::texImage2D(HGTextureManager *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, const void *a10)
{
  v10[0] = a2;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a4;
  v10[4] = a8;
  v10[5] = a9;
  v13 = 0;
  v14 = 0;
  v11 = a10;
  v12 = 0;
  v15 = 0;
  HGTextureManager::texImage2D(this, v10);
}

void HGTextureManager::sizeHint(HGTextureManager *this, HGGLTexture *a2, BOOL a3, const char *a4, char *a5)
{
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("texManager", 2, "size hint: texture %lu\n", a4, a5, *(a2 + 21));
  }

  v8 = *(this + 4);
  v9 = v8[11];
  if (v8[12] != v9)
  {
    v10 = v8[14];
    v11 = (v9 + 8 * (v10 / 0x2A));
    v12 = *v11;
    v13 = *v11 + 96 * (v10 % 0x2A);
    v14 = *(v9 + 8 * ((v8[15] + v10) / 0x2A)) + 96 * ((v8[15] + v10) % 0x2A);
    if (v13 != v14)
    {
      while (*(v13 + 64) != *(a2 + 42))
      {
        v13 += 96;
        if (v13 - v12 == 4032)
        {
          v15 = v11[1];
          ++v11;
          v12 = v15;
          v13 = v15;
        }

        if (v13 == v14)
        {
          goto LABEL_26;
        }
      }
    }

    if (v13 != v14 && (*(v13 + 69) & 1) == 0)
    {
      v16 = 4;
      if (*(v13 + 56) == 2)
      {
        v16 = 3;
      }

      v8[v16 + 16] -= *(v13 + 76);
      *(v13 + 4) = vsub_s32(*(a2 + 28), *(a2 + 20));
      *(v13 + 16) = HGFormatUtils::toGLFormat(*(a2 + 4));
      *(v13 + 20) = HGFormatUtils::toGLType(*(a2 + 4));
      *(v13 + 12) = HGFormatUtils::toGLInternalFormat(*(a2 + 4));
      v18 = *(v13 + 4);
      v19 = *(v13 + 8);
      v21 = v18 + 127;
      v20 = v18 < -127;
      v22 = v18 + 254;
      if (!v20)
      {
        v22 = v21;
      }

      v23 = v22 >> 7;
      if (v19 <= 128)
      {
        v19 = 128;
      }

      LODWORD(v25) = (v23 * v19 * HGFormatUtils::GLFormatToByteSize(*(v13 + 16), *(v13 + 20), v17)) << 7;
      *(v13 + 76) = v25;
      v26 = (*(this + 4) + 128);
      if (*(v13 + 56) == 2)
      {
        v25 = v25;
        v27 = 3;
      }

      else
      {
        v25 = v25;
        if (*(v13 + 69) == 1)
        {
          *v26 = vaddq_s64(*v26, vdupq_n_s64(v25));
          if (*(v13 + 68) < 0)
          {
LABEL_25:
            HGTextureManager::TextureEntry::log(v13, 2, v24);
            goto LABEL_26;
          }

          v27 = 2;
        }

        else
        {
          v27 = 4;
        }
      }

      v26->i64[v27] += v25;
      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = *(this + 2);

  HGTextureManager::_dumpTextures(this, v28);
}

uint64_t HGTextureManager::_getFreeTotalTextureCount(HGTextureManager *this, unint64_t a2)
{
  {
    operator new();
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  {
LABEL_13:
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v8 = *(v4 + 40);
  if (v8)
  {
LABEL_11:
    (*(*v8 + 16))(v8);
  }

LABEL_14:
  v9 = v8[15];
  (*(*v8 + 24))(v8);
  return v9;
}

uint64_t HGTextureManager::_getFreeTotalTextureCount(HGTextureManager *this)
{
  {
    operator new();
  }

  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v1[5];
      if (v4)
      {
        (*(*v4 + 16))(v1[5]);
      }

      v5 = v4[15];
      (*(*v4 + 24))(v4);
      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v3 += v5;
      v1 = v7;
    }

    while (v7 != v2);
  }

  return v3;
}

uint64_t HGTextureManager::_getQueuedTotalTextureCount(HGTextureManager *this, unint64_t a2)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v3 = *(qword_27FE4B570 + 8);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = qword_27FE4B570 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == qword_27FE4B570 + 8 || *(v4 + 32) > a2)
  {
LABEL_13:
    v8 = *(qword_27FE4B570 + 48);
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v8 = *(v4 + 40);
  if (v8)
  {
LABEL_11:
    (*(*v8 + 16))(v8);
  }

LABEL_14:
  v9 = v8[15];
  (*(*v8 + 24))(v8);
  pthread_mutex_unlock(&stru_280C5C480);
  return v9;
}

uint64_t HGTextureManager::_getQueuedTotalTextureCount(HGTextureManager *this)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v1 = *qword_27FE4B570;
  v2 = qword_27FE4B570 + 8;
  if (*qword_27FE4B570 == qword_27FE4B570 + 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v1[5];
      if (v4)
      {
        (*(*v4 + 16))(v1[5]);
      }

      v5 = v4[15];
      (*(*v4 + 24))(v4);
      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v3 += v5;
      v1 = v7;
    }

    while (v7 != v2);
  }

  pthread_mutex_unlock(&stru_280C5C480);
  return v3;
}

__n128 HGTextureManager::_getFreeTotalTextureUsage@<Q0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  {
    operator new();
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  {
LABEL_13:
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *(v6 + 40);
  if (v10)
  {
LABEL_11:
    (*(*v10 + 16))(v10);
  }

LABEL_14:
  v15 = *(v10 + 144);
  v16 = *(v10 + 128);
  v11 = *(v10 + 160);
  v12 = *(v10 + 168);
  v13 = *(v10 + 176);
  (*(*v10 + 24))(v10);
  result = v16;
  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

__n128 HGTextureManager::_getFreeTotalTextureUsage@<Q0>(int64x2_t *a1@<X8>)
{
  {
    operator new();
  }

  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v18 = 0u;
    v19 = 0u;
    do
    {
      v7 = v2[5];
      if (v7)
      {
        (*(v7->i64[0] + 16))(v2[5]);
      }

      v16 = v7[9];
      v17 = v7[8];
      v9 = v7[10].i64[0];
      v8 = v7[10].i64[1];
      v10 = v7[11].i64[0];
      (*(v7->i64[0] + 24))(v7);
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v6 += v9;
      v18 = vaddq_s64(v16, v18);
      v19 = vaddq_s64(v17, v19);
      v5 += v8;
      v4 += v10;
      v2 = v12;
    }

    while (v12 != v3);
  }

  result = v19;
  *a1 = v19;
  a1[1] = v18;
  a1[2].i64[0] = v6;
  a1[2].i64[1] = v5;
  a1[3].i64[0] = v4;
  return result;
}

__n128 HGTextureManager::_getQueuedTotalTextureUsage@<Q0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  pthread_mutex_lock(&stru_280C5C480);
  if (!qword_27FE4B570)
  {
    operator new();
  }

  v5 = *(qword_27FE4B570 + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = qword_27FE4B570 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == qword_27FE4B570 + 8 || *(v6 + 32) > a1)
  {
LABEL_13:
    v10 = *(qword_27FE4B570 + 48);
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *(v6 + 40);
  if (v10)
  {
LABEL_11:
    (*(*v10 + 16))(v10);
  }

LABEL_14:
  v15 = *(v10 + 32);
  v16 = *(v10 + 16);
  v11 = *(v10 + 48);
  v12 = *(v10 + 56);
  v13 = *(v10 + 64);
  (*(*v10 + 24))(v10);
  pthread_mutex_unlock(&stru_280C5C480);
  result = v16;
  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}