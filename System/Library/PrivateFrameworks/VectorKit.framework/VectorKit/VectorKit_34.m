void sub_1B29FFCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *md::LayoutContext::get<md::MeshRenderableContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xF014CCE28176CA44);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xF014CCE28176CA44)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(_DWORD *a1, _DWORD *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a1;
  v3 = a2;
  do
  {
    v6 = *(*v5 + 392);
    v7 = *(*v5 + 400);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(*v5 + 56);
      v9 = *a3;
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(*v5 + 56);
      v9 = *a3;
    }

    v10 = *(v9 + 8);
    if (!v10)
    {
LABEL_15:
      v16 = a3[1];
      FillRect = grl::IconMetricsRenderResult::getFillRect(v6);
      v18 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v16, FillRect) != 0;
      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    while (1)
    {
      v11 = *(v10 + 48);
      v12 = v11 > v8;
      v13 = v10[4];
      if (v8 == v11)
      {
        v12 = v6 < v13;
      }

      if (v12)
      {
        goto LABEL_14;
      }

      v14 = *(v10 + 48);
      v15 = v13 < v6;
      if (v8 != v14)
      {
        v15 = v14 < v8;
      }

      if (!v15)
      {
        break;
      }

      ++v10;
LABEL_14:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v18 = 1;
    if (!v7)
    {
      goto LABEL_17;
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
LABEL_17:
    if (v18)
    {
      goto LABEL_18;
    }

    while (2)
    {
      v20 = v3;
      v3 -= 4;
      if (v5 == v3)
      {
        return v5;
      }

      v21 = *(*v3 + 392);
      v22 = *(*v3 + 400);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = *(*v3 + 56);
        v24 = *a3;
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v23 = *(*v3 + 56);
        v24 = *a3;
      }

      v25 = *(v24 + 8);
      if (!v25)
      {
LABEL_37:
        v31 = a3[1];
        v32 = grl::IconMetricsRenderResult::getFillRect(v21);
        v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v31, v32) != 0;
        if (!v22)
        {
          goto LABEL_39;
        }

LABEL_38:
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        goto LABEL_39;
      }

      while (2)
      {
        v26 = *(v25 + 48);
        v27 = v26 > v23;
        v28 = v25[4];
        if (v23 == v26)
        {
          v27 = v21 < v28;
        }

        if (v27)
        {
LABEL_36:
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_37;
          }

          continue;
        }

        break;
      }

      v29 = *(v25 + 48);
      v30 = v28 < v21;
      if (v23 != v29)
      {
        v30 = v29 < v23;
      }

      if (v30)
      {
        ++v25;
        goto LABEL_36;
      }

      v19 = 1;
      if (v22)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (!v19)
      {
        continue;
      }

      break;
    }

    v33 = *v5;
    *v5 = *(v20 - 2);
    *(v20 - 2) = v33;
    LODWORD(v33) = v5[2];
    v5[2] = *(v20 - 2);
    *(v20 - 2) = v33;
LABEL_18:
    v5 += 4;
  }

  while (v5 != v3);
  return v3;
}

void std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>(void *a1, char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = a1[1];
    v10 = a1[2];
    if (a5 <= (v10 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        v19 = &a2[16 * a5];
        v20 = &v9[-16 * a5];
        if (v20 >= v9)
        {
          v22 = a1[1];
        }

        else
        {
          v21 = &v9[-16 * a5];
          v22 = a1[1];
          do
          {
            v23 = *v21;
            v21 += 16;
            *v22++ = v23;
          }

          while (v21 < v9);
        }

        a1[1] = v22;
        if (v9 != v19)
        {
          v42 = 0;
          v43 = v19 - v9;
          do
          {
            v44 = &v9[v42];
            *(v44 - 2) = *&v20[v42 - 16];
            *(v44 - 2) = *&v20[v42 - 8];
            v42 -= 16;
          }

          while (v43 != v42);
        }

        do
        {
          *v7 = *v6;
          *(v7 + 2) = *(v6++ + 2);
          v7 += 16;
        }

        while (v6 != &a3[a5]);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        if (v17 == a4)
        {
          v18 = a1[1];
        }

        else
        {
          v33 = (a3 + v9 - a2);
          v18 = a1[1];
          do
          {
            v34 = *v33++;
            *v18 = v34;
            v18 += 16;
          }

          while (v33 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          v35 = &a2[16 * a5];
          v36 = &v18[-16 * a5];
          v37 = v18;
          while (v36 < v9)
          {
            v38 = *v36;
            v36 += 16;
            *v37 = v38;
            v37 += 16;
          }

          a1[1] = v37;
          if (v18 != v35)
          {
            v39 = 0;
            v40 = -16 * a5;
            do
            {
              v41 = &v18[v39];
              *(v41 - 2) = *&v18[v40 - 16];
              *(v41 - 2) = *&v18[v40 - 8];
              v39 -= 16;
              v40 -= 16;
              v35 += 16;
            }

            while (v18 != v35);
          }

          if (v9 != a2)
          {
            do
            {
              *v7 = *v6;
              *(v7 + 2) = *(v6++ + 2);
              v7 += 16;
            }

            while (v6 != v17);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v9[-*a1] >> 4);
      if (v12 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v10 - v11;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (a2 - v11) >> 4;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(v14);
      }

      v24 = 16 * v15;
      v25 = 16 * a5;
      v26 = (16 * v15);
      do
      {
        v27 = *v6++;
        *v26++ = v27;
        v25 -= 16;
      }

      while (v25);
      memcpy((v24 + 16 * a5), a2, a1[1] - a2);
      v28 = *a1;
      v29 = v24 + 16 * a5 + a1[1] - v7;
      a1[1] = v7;
      v30 = v7 - v28;
      v31 = (v24 - (v7 - v28));
      memcpy(v31, v28, v30);
      v32 = *a1;
      *a1 = v31;
      a1[1] = v29;
      a1[2] = 0;
      if (v32)
      {

        operator delete(v32);
      }
    }
  }
}

int *std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(int *result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 4;
    v9 = a2 - 2;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = (a2 - v10) >> 4;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v110 = *(v10 + 2);
                v111 = *(*(v110 + 392) + 169);
                v112 = *v10;
                v113 = *v8;
                v114 = *(*(*v8 + 392) + 169);
                if (v111 <= *(*(*v10 + 392) + 169))
                {
                  if (v114 <= v111)
                  {
                    return result;
                  }

                  *(v10 + 2) = v113;
                  *v8 = v110;
                  v159 = v10[6];
                  v10[6] = *v9;
                  *v9 = v159;
                  v160 = *(v10 + 2);
                  v161 = *v10;
                  if (*(*(v160 + 392) + 169) <= *(*(*v10 + 392) + 169))
                  {
                    return result;
                  }

                  *v10 = v160;
                  *(v10 + 2) = v161;
                  v115 = v10 + 2;
                  v9 = v10 + 6;
                }

                else
                {
                  if (v114 <= v111)
                  {
                    *v10 = v110;
                    *(v10 + 2) = v112;
                    v115 = v10 + 6;
                    v170 = v10[2];
                    v10[2] = v10[6];
                    v10[6] = v170;
                    if (*(*(*v8 + 392) + 169) <= *(*(v112 + 392) + 169))
                    {
                      return result;
                    }

                    *(v10 + 2) = *v8;
                  }

                  else
                  {
                    v115 = v10 + 2;
                    *v10 = v113;
                  }

                  *v8 = v112;
                }

                v109 = *v115;
                *v115 = *v9;
LABEL_199:
                *v9 = v109;
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v10, v10 + 4, v10 + 8, a2 - 4);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v10, v10 + 4, v10 + 8, v10 + 12);
                v98 = *(v10 + 6);
                if (*(*(*v8 + 392) + 169) > *(*(v98 + 392) + 169))
                {
                  *(v10 + 6) = *v8;
                  *v8 = v98;
                  v99 = v10[14];
                  v10[14] = *v9;
                  *v9 = v99;
                  v100 = *(v10 + 6);
                  v101 = *(v10 + 4);
                  if (*(*(v100 + 392) + 169) > *(*(v101 + 392) + 169))
                  {
                    *(v10 + 4) = v100;
                    *(v10 + 6) = v101;
                    v102 = v10[10];
                    v103 = v10[14];
                    v10[10] = v103;
                    v10[14] = v102;
                    v104 = *(v10 + 2);
                    if (*(*(v100 + 392) + 169) > *(*(v104 + 392) + 169))
                    {
                      *(v10 + 2) = v100;
                      *(v10 + 4) = v104;
                      v105 = v10[6];
                      v10[6] = v103;
                      v10[10] = v105;
                      v106 = *v10;
                      if (*(*(v100 + 392) + 169) > *(*(*v10 + 392) + 169))
                      {
                        *v10 = v100;
                        *(v10 + 2) = v106;
                        v107 = v10[2];
                        v10[2] = v103;
                        v10[6] = v107;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v108 = *v10;
              if (*(*(*v8 + 392) + 169) <= *(*(*v10 + 392) + 169))
              {
                return result;
              }

              *v10 = *v8;
              *v8 = v108;
              v109 = v10[2];
              v10[2] = *v9;
              goto LABEL_199;
            }
          }

          if (v11 <= 23)
          {
            v116 = v10 + 4;
            v118 = v10 == a2 || v116 == a2;
            if (a4)
            {
              if (!v118)
              {
                v119 = 0;
                v120 = v10;
                do
                {
                  v121 = v116;
                  v122 = *(v120 + 2);
                  v123 = *v120;
                  if (*(*(v122 + 392) + 169) > *(*(*v120 + 392) + 169))
                  {
                    v124 = v120[6];
                    v125 = v119;
                    while (1)
                    {
                      v126 = v10 + v125;
                      *(v126 + 2) = v123;
                      *(v126 + 6) = *(v10 + v125 + 8);
                      if (!v125)
                      {
                        break;
                      }

                      v123 = *(v126 - 2);
                      v125 -= 16;
                      if (*(*(v122 + 392) + 169) <= *(*(v123 + 392) + 169))
                      {
                        v127 = v10 + v125 + 16;
                        goto LABEL_141;
                      }
                    }

                    v127 = v10;
LABEL_141:
                    *v127 = v122;
                    *(v127 + 8) = v124;
                  }

                  v116 = v121 + 4;
                  v119 += 16;
                  v120 = v121;
                }

                while (v121 + 4 != a2);
              }
            }

            else if (!v118)
            {
              v162 = v10 + 6;
              do
              {
                v163 = v116;
                v164 = *(v7 + 2);
                v165 = *v7;
                if (*(*(v164 + 392) + 169) > *(*(*v7 + 392) + 169))
                {
                  v166 = v7[6];
                  v167 = v162;
                  do
                  {
                    v168 = v167;
                    *(v167 - 1) = v165;
                    v169 = *(v167 - 4);
                    v167 -= 4;
                    *v168 = v169;
                    v165 = *(v168 - 5);
                  }

                  while (*(*(v164 + 392) + 169) > *(*(v165 + 392) + 169));
                  *(v167 - 1) = v164;
                  *v167 = v166;
                }

                v116 = v163 + 4;
                v162 += 4;
                v7 = v163;
              }

              while (v163 + 4 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v128 = (v11 - 2) >> 1;
              v129 = v128;
              do
              {
                v130 = v129;
                if (v128 >= v129)
                {
                  v131 = (2 * v129) | 1;
                  v132 = &v10[4 * v131];
                  if (2 * v130 + 2 >= v11)
                  {
                    v135 = *v132;
                  }

                  else
                  {
                    v133 = *(*(*v132 + 392) + 169);
                    result = *(*(*(v132 + 2) + 392) + 169);
                    v134 = v133 > result;
                    if (v133 <= result)
                    {
                      v135 = *v132;
                    }

                    else
                    {
                      v135 = *(v132 + 2);
                    }

                    if (v134)
                    {
                      v132 += 4;
                      v131 = 2 * v130 + 2;
                    }
                  }

                  v136 = &v10[4 * v130];
                  v137 = *v136;
                  if (*(*(v135 + 392) + 169) <= *(*(*v136 + 392) + 169))
                  {
                    v138 = v136[2];
                    do
                    {
                      v139 = v136;
                      v136 = v132;
                      *v139 = v135;
                      v139[2] = v132[2];
                      if (v128 < v131)
                      {
                        break;
                      }

                      v140 = (2 * v131) | 1;
                      v132 = &v10[4 * v140];
                      v131 = 2 * v131 + 2;
                      if (v131 >= v11)
                      {
                        v135 = *v132;
                        v131 = v140;
                      }

                      else
                      {
                        v135 = *v132;
                        if (*(*(*v132 + 392) + 169) <= *(*(*(v132 + 2) + 392) + 169))
                        {
                          v131 = v140;
                        }

                        else
                        {
                          v135 = *(v132 + 2);
                          v132 += 4;
                        }
                      }

                      result = *(*(v137 + 392) + 169);
                    }

                    while (*(*(v135 + 392) + 169) <= result);
                    *v136 = v137;
                    v136[2] = v138;
                  }
                }

                v129 = v130 - 1;
              }

              while (v130);
              do
              {
                v141 = 0;
                v142 = *v10;
                v143 = v10[2];
                v144 = v10;
                do
                {
                  v145 = &v144[4 * v141];
                  v146 = (v145 + 4);
                  v147 = (2 * v141) | 1;
                  v141 = 2 * v141 + 2;
                  if (v141 >= v11)
                  {
                    v149 = *v146;
                    v141 = v147;
                  }

                  else
                  {
                    v150 = *(v145 + 4);
                    v148 = v145 + 8;
                    v149 = v150;
                    result = *(v148 - 2);
                    if (*(*(result + 49) + 169) > *(*(v150 + 392) + 169))
                    {
                      v146 = v148;
                    }

                    else
                    {
                      v149 = *(v148 - 2);
                      v141 = v147;
                    }
                  }

                  *v144 = v149;
                  v144[2] = *(v146 + 2);
                  v144 = v146;
                }

                while (v141 <= (v11 - 2) / 2);
                if (v146 == (a2 - 4))
                {
                  *v146 = v142;
                  *(v146 + 2) = v143;
                }

                else
                {
                  *v146 = *(a2 - 2);
                  *(v146 + 2) = *(a2 - 2);
                  *(a2 - 2) = v142;
                  *(a2 - 2) = v143;
                  v151 = (v146 - v10 + 16) >> 4;
                  v134 = v151 < 2;
                  v152 = v151 - 2;
                  if (!v134)
                  {
                    v153 = v152 >> 1;
                    v154 = &v10[4 * v153];
                    v155 = *v154;
                    v156 = *v146;
                    if (*(*(*v154 + 392) + 169) > *(*(*v146 + 392) + 169))
                    {
                      v157 = *(v146 + 2);
                      do
                      {
                        v158 = v146;
                        v146 = v154;
                        *v158 = v155;
                        *(v158 + 2) = v154[2];
                        if (!v153)
                        {
                          break;
                        }

                        v153 = (v153 - 1) >> 1;
                        v154 = &v10[4 * v153];
                        v155 = *v154;
                      }

                      while (*(*(*v154 + 392) + 169) > *(*(v156 + 392) + 169));
                      *v146 = v156;
                      *(v146 + 2) = v157;
                    }
                  }
                }

                a2 -= 4;
                v134 = v11-- <= 2;
              }

              while (!v134);
            }

            return result;
          }

          v12 = &v10[4 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          v15 = *(*(*v8 + 392) + 169);
          if (v11 >= 0x81)
          {
            v16 = *v12;
            v17 = *(*(*v12 + 392) + 169);
            v18 = *v10;
            if (v17 <= *(*(*v10 + 392) + 169))
            {
              if (v15 <= v17 || (*v12 = v14, *v8 = v16, v25 = v12 + 2, v24 = v12[2], v12[2] = *v9, *v9 = v24, v26 = *v10, *(*(*v12 + 392) + 169) <= *(*(*v10 + 392) + 169)))
              {
LABEL_29:
                v32 = v12 - 4;
                v33 = *(v12 - 2);
                v34 = *(*(v33 + 392) + 169);
                v35 = *(v10 + 2);
                v36 = *(a2 - 4);
                v37 = *(*(v36 + 392) + 169);
                if (v34 <= *(*(v35 + 392) + 169))
                {
                  if (v37 <= v34 || (*v32 = v36, *(a2 - 4) = v33, v39 = v12 - 2, v40 = *(v12 - 2), *(v12 - 2) = *(a2 - 6), *(a2 - 6) = v40, v41 = *(v10 + 2), *(*(*v32 + 392) + 169) <= *(*(v41 + 392) + 169)))
                  {
LABEL_42:
                    v48 = *(v12 + 2);
                    v46 = v12 + 4;
                    v47 = v48;
                    v49 = *(*(v48 + 392) + 169);
                    v50 = *(v10 + 4);
                    v51 = *(a2 - 6);
                    v52 = *(*(v51 + 392) + 169);
                    if (v49 <= *(*(v50 + 392) + 169))
                    {
                      if (v52 > v49)
                      {
                        *v46 = v51;
                        *(a2 - 6) = v47;
                        v55 = v46 + 2;
                        v54 = v46[2];
                        v46[2] = *(a2 - 10);
                        *(a2 - 10) = v54;
                        v47 = *v46;
                        v49 = *(*(*v46 + 392) + 169);
                        v56 = *(v10 + 4);
                        if (v49 > *(*(v56 + 392) + 169))
                        {
                          *(v10 + 4) = v47;
                          *v46 = v56;
                          v53 = v10 + 10;
LABEL_51:
                          v59 = *v53;
                          *v53 = *v55;
                          *v55 = v59;
                          v47 = *v46;
                          v49 = *(*(*v46 + 392) + 169);
                        }
                      }
                    }

                    else
                    {
                      if (v52 > v49)
                      {
                        v53 = v10 + 10;
                        *(v10 + 4) = v51;
LABEL_50:
                        *(a2 - 6) = v50;
                        v55 = a2 - 10;
                        goto LABEL_51;
                      }

                      *(v10 + 4) = v47;
                      *v46 = v50;
                      v53 = v46 + 2;
                      v57 = v10[10];
                      v10[10] = v46[2];
                      v46[2] = v57;
                      v58 = *(a2 - 6);
                      v49 = *(*(v50 + 392) + 169);
                      if (*(*(v58 + 392) + 169) > v49)
                      {
                        *v46 = v58;
                        goto LABEL_50;
                      }

                      v47 = v50;
                    }

                    v60 = *v13;
                    v61 = *(*(*v13 + 392) + 169);
                    v62 = *v32;
                    if (v61 <= *(*(*v32 + 392) + 169))
                    {
                      if (v49 <= v61)
                      {
LABEL_62:
                        v69 = *v10;
                        *v10 = v60;
                        v23 = v10 + 2;
                        *v13 = v69;
                        v29 = v13 + 2;
                        goto LABEL_63;
                      }

                      *v13 = v47;
                      *v46 = v60;
                      v65 = v13 + 2;
                      v66 = v13[2];
                      v13[2] = v46[2];
                      v46[2] = v66;
                      if (*(*(v47 + 392) + 169) <= *(*(v62 + 392) + 169))
                      {
                        v60 = v47;
                        goto LABEL_62;
                      }

                      *v32 = v47;
                      v63 = v32 + 2;
                      *v13 = v62;
                    }

                    else
                    {
                      if (v49 <= v61)
                      {
                        *v32 = v60;
                        *v13 = v62;
                        v67 = v32[2];
                        v32[2] = v13[2];
                        v13[2] = v67;
                        if (*(*(v47 + 392) + 169) <= *(*(v62 + 392) + 169))
                        {
                          v60 = v62;
                          goto LABEL_62;
                        }

                        *v13 = v47;
                        *v46 = v62;
                        v64 = v46 + 2;
                        v63 = v13 + 2;
                      }

                      else
                      {
                        *v32 = v47;
                        v63 = v32 + 2;
                        *v46 = v62;
                        v64 = v46 + 2;
                      }

                      v65 = v64;
                    }

                    v68 = *v63;
                    *v63 = *v65;
                    *v65 = v68;
                    v60 = *v13;
                    goto LABEL_62;
                  }

                  *(v10 + 2) = *v32;
                  *v32 = v41;
                  v38 = v10 + 6;
                }

                else
                {
                  if (v37 <= v34)
                  {
                    *(v10 + 2) = v33;
                    *v32 = v35;
                    v38 = v12 - 2;
                    v43 = v10[6];
                    v10[6] = *(v12 - 2);
                    *(v12 - 2) = v43;
                    v44 = *(a2 - 4);
                    if (*(*(v44 + 392) + 169) <= *(*(v35 + 392) + 169))
                    {
                      goto LABEL_42;
                    }

                    *v32 = v44;
                  }

                  else
                  {
                    v38 = v10 + 6;
                    *(v10 + 2) = v36;
                  }

                  *(a2 - 4) = v35;
                  v39 = a2 - 6;
                }

                v45 = *v38;
                *v38 = *v39;
                *v39 = v45;
                goto LABEL_42;
              }

              *v10 = *v12;
              v19 = v10 + 2;
              *v12 = v26;
            }

            else
            {
              if (v15 <= v17)
              {
                *v10 = v16;
                *v12 = v18;
                v19 = v12 + 2;
                v30 = v10[2];
                v10[2] = v12[2];
                v12[2] = v30;
                if (*(*(*v8 + 392) + 169) <= *(*(v18 + 392) + 169))
                {
                  goto LABEL_29;
                }

                *v12 = *v8;
              }

              else
              {
                v19 = v10 + 2;
                *v10 = v14;
              }

              *v8 = v18;
              v25 = a2 - 2;
            }

            v31 = *v19;
            *v19 = *v25;
            *v25 = v31;
            goto LABEL_29;
          }

          v20 = *v10;
          v21 = *(*(*v10 + 392) + 169);
          v22 = *v12;
          if (v21 <= *(*(*v12 + 392) + 169))
          {
            if (v15 > v21)
            {
              *v10 = v14;
              *v8 = v20;
              v27 = v10[2];
              v10[2] = *v9;
              *v9 = v27;
              v20 = *v10;
              v28 = *v13;
              if (*(*(*v10 + 392) + 169) > *(*(*v13 + 392) + 169))
              {
                *v13 = v20;
                *v10 = v28;
                v23 = v13 + 2;
                v29 = v10 + 2;
LABEL_63:
                v70 = *v23;
                *v23 = *v29;
                *v29 = v70;
                v20 = *v10;
              }
            }
          }

          else
          {
            if (v15 > v21)
            {
              v23 = v12 + 2;
              *v13 = v14;
LABEL_37:
              *v8 = v22;
              v29 = a2 - 2;
              goto LABEL_63;
            }

            *v12 = v20;
            *v10 = v22;
            v23 = v10 + 2;
            v42 = v13[2];
            v13[2] = v10[2];
            v10[2] = v42;
            if (*(*(*v8 + 392) + 169) > *(*(v22 + 392) + 169))
            {
              *v10 = *v8;
              goto LABEL_37;
            }

            v20 = v22;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v71 = *(*(v20 + 392) + 169);
          if (*(*(*(v10 - 2) + 392) + 169) > v71)
          {
            goto LABEL_67;
          }

          if (v71 <= *(*(*v8 + 392) + 169))
          {
            v88 = v10 + 4;
            do
            {
              v10 = v88;
              if (v88 >= a2)
              {
                break;
              }

              v88 += 4;
            }

            while (v71 <= *(*(*v10 + 392) + 169));
          }

          else
          {
            do
            {
              v87 = *(v10 + 2);
              v10 += 4;
            }

            while (v71 <= *(*(v87 + 392) + 169));
          }

          v89 = a2;
          if (v10 < a2)
          {
            v89 = a2;
            do
            {
              v90 = *(v89 - 2);
              v89 -= 4;
            }

            while (v71 > *(*(v90 + 392) + 169));
          }

          v91 = v7[2];
          if (v10 < v89)
          {
            v92 = *v10;
            v93 = *v89;
            do
            {
              *v10 = v93;
              *v89 = v92;
              v94 = v10[2];
              v10[2] = v89[2];
              v89[2] = v94;
              v95 = *(*(v20 + 392) + 169);
              do
              {
                v96 = *(v10 + 2);
                v10 += 4;
                v92 = v96;
              }

              while (v95 <= *(*(v96 + 392) + 169));
              do
              {
                v97 = *(v89 - 2);
                v89 -= 4;
                v93 = v97;
              }

              while (v95 > *(*(v97 + 392) + 169));
            }

            while (v10 < v89);
          }

          if (v10 - 4 != v7)
          {
            *v7 = *(v10 - 2);
            v7[2] = *(v10 - 2);
          }

          a4 = 0;
          *(v10 - 2) = v20;
          *(v10 - 2) = v91;
        }

        v71 = *(*(v20 + 392) + 169);
LABEL_67:
        v72 = v10[2];
        v73 = v10;
        do
        {
          v74 = v73;
          v76 = *(v73 + 2);
          v73 += 4;
          v75 = v76;
        }

        while (*(*(v76 + 392) + 169) > v71);
        v77 = a2;
        if (v74 == v10)
        {
          v77 = a2;
          do
          {
            if (v73 >= v77)
            {
              break;
            }

            v79 = *(v77 - 2);
            v77 -= 4;
          }

          while (*(*(v79 + 392) + 169) <= v71);
        }

        else
        {
          do
          {
            v78 = *(v77 - 2);
            v77 -= 4;
          }

          while (*(*(v78 + 392) + 169) <= v71);
        }

        if (v73 >= v77)
        {
          v10 = v73;
        }

        else
        {
          v80 = *v77;
          v10 = v73;
          v81 = v77;
          do
          {
            *v10 = v80;
            *v81 = v75;
            v82 = v10[2];
            v10[2] = v81[2];
            v81[2] = v82;
            v83 = *(*(v20 + 392) + 169);
            do
            {
              v84 = *(v10 + 2);
              v10 += 4;
              v75 = v84;
            }

            while (*(*(v84 + 392) + 169) > v83);
            do
            {
              v85 = *(v81 - 2);
              v81 -= 4;
              v80 = v85;
            }

            while (*(*(v85 + 392) + 169) <= v83);
          }

          while (v10 < v81);
        }

        if (v10 - 4 != v7)
        {
          *v7 = *(v10 - 2);
          v7[2] = *(v10 - 2);
        }

        *(v10 - 2) = v20;
        *(v10 - 2) = v72;
        if (v73 >= v77)
        {
          break;
        }

LABEL_88:
        result = std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v7, v10 - 4, a3, a4 & 1);
        a4 = 0;
      }

      v86 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v7, v10 - 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v10, a2);
      if (result)
      {
        break;
      }

      if (!v86)
      {
        goto LABEL_88;
      }
    }

    a2 = v10 - 4;
    if (!v86)
    {
      continue;
    }

    return result;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
    *algn_1EB82DD88 = 0x2B8F0D3A6E65567BLL;
    qword_1EB82DD90 = "SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>]";
    qword_1EB82DD98 = 59;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void *a1)
{
  v2 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(a1);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v1 = v5;
      v6 = v5 >> 2;
      if ((v6 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v6 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v6 + 1);
      }

      v7 = (4 * v6);
      *v7 = *v3;
      v5 = (v7 + 1);
      memcpy(0, 0, v1);
      ++v3;
    }

    while (v3 != v4);
  }

  for (i = 0; i != v5; ++i)
  {
    v9 = *i;
    v1 = v1 & 0xFFFFFFFF00000000 | v9;
    ecs2::BasicRegistry<void>::destroy(a1, v1);
  }
}

void sub_1B2A0143C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[171];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents13WillLeaveViewIN2md23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29E4728;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
    unk_1EB82DDB0 = 0x4E187DDCBE232848;
    qword_1EB82DDB8 = "SceneComponents::WillEnterView<md::DaVinciGroundRenderable>]";
    qword_1EB82DDC0 = 59;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillLeaveViewIN2md23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4728;
  a2[1] = v2;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    __p[5] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[172];
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)62>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5010;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents13WillEnterViewIN2md23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29E47B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)54>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4FE8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)34>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4FC0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillEnterViewIN2md23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E47B0;
  a2[1] = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)34>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25768;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)62>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)62> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62> &)#1}::operator()(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = v4[9];
  v4 += 9;
  v4[1] = v5;
  std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::reserve(v4, a2[2]);
  result = gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(**(a1 + 8), *(*(a1 + 8) + 8));
  v7 = *a2;
  if (*a2 != a2 + 1)
  {
    v8 = *a1;
    v9 = v7[4];
    FillRect = grl::IconMetricsRenderResult::getFillRect(v9);
    v11 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v8 + 4, FillRect);
    if (v11)
    {
      v12 = v11;
      v13 = v8[1];
      v14 = v8[2];
      if (v13 != v14)
      {
        do
        {
          if (*v13 == *(v11 + 16) && *(v13 + 8) == *(v11 + 34))
          {
            goto LABEL_10;
          }

          v13 += 16;
        }

        while (v13 != v14);
        v13 = v8[2];
      }

LABEL_10:
      v16 = v13 + 16;
      if (v13 + 16 == v14)
      {
        v17 = v8;
      }

      else
      {
        do
        {
          v13 = v16;
          *(v16 - 16) = *v16;
          *(v16 - 8) = *(v16 + 8);
          v16 += 16;
        }

        while (v16 != v14);
        v17 = *a1;
      }

      v8[2] = v13;
      v18 = *(v11 + 16);
      if (v18)
      {
        v19 = *v17;
        if (*(*v17 + 16))
        {
          (**v18)(*(v11 + 16));
          *v18 = *(v19 + 40);
          *(v19 + 40) = v18;
          v17 = *a1;
        }
      }

      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(v17 + 4, v12);
      v9 = v7[4];
    }

    v20 = v7[5];
    v30 = v9;
    v31 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *(v9 + 172);
    *v26 = *(v9 + 168);
    v28 = *(v9 + 184);
    v29 = *(v9 + 192);
    v21 = *(v9 + 608);
    v22 = *(v9 + 616);
    v23 = **(a1 + 16);
    v25 = gdc::ToCoordinateSystem(v23);
    md::GeometryContext::transformConstantData(v21, v22, &v24, *(a1 + 24), v26, v23, -1);
  }

  return result;
}

void sub_1B2A02A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p)
{
  v52 = *(v50 - 168);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  v53 = *(v50 - 112);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  _Unwind_Resume(exception_object);
}

void gdc::ManagedObjectHolder<md::ElevatedOverlayContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A07260;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)33>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A252A0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void createEnterLeaveChangedComponents<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> const&)#1}::operator()(void *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 == v4)
  {
LABEL_40:
    v4 = v5;
    goto LABEL_41;
  }

  do
  {
    v7 = *(*v5 + 392);
    v8 = *(*v5 + 400);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(*v5 + 56);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = *(*v5 + 56);
    }

    v10 = *(a2 + 8);
    if (!v10)
    {
LABEL_14:
      FillRect = grl::IconMetricsRenderResult::getFillRect(v7);
      v17 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v3 + 32), FillRect) != 0;
      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    while (1)
    {
      v11 = *(v10 + 48);
      v12 = v11 > v9;
      v13 = v10[4];
      if (v9 == v11)
      {
        v12 = v7 < v13;
      }

      if (v12)
      {
        goto LABEL_13;
      }

      v14 = *(v10 + 48);
      v15 = v13 < v7;
      if (v9 != v14)
      {
        v15 = v14 < v9;
      }

      if (!v15)
      {
        break;
      }

      ++v10;
LABEL_13:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v17 = 1;
    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
LABEL_16:
    if (v17)
    {
      goto LABEL_17;
    }

    while (2)
    {
      v19 = v4;
      v4 -= 4;
      if (v5 == v4)
      {
        goto LABEL_40;
      }

      v20 = *(*v4 + 392);
      v21 = *(*v4 + 400);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = *(*v4 + 56);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v22 = *(*v4 + 56);
      }

      v23 = *(a2 + 8);
      if (!v23)
      {
LABEL_36:
        v29 = grl::IconMetricsRenderResult::getFillRect(v20);
        v18 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>((v3 + 32), v29) != 0;
        if (!v21)
        {
          goto LABEL_38;
        }

LABEL_37:
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        goto LABEL_38;
      }

      while (2)
      {
        v24 = *(v23 + 48);
        v25 = v24 > v22;
        v26 = v23[4];
        if (v22 == v24)
        {
          v25 = v20 < v26;
        }

        if (v25)
        {
LABEL_35:
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_36;
          }

          continue;
        }

        break;
      }

      v27 = *(v23 + 48);
      v28 = v26 < v20;
      if (v22 != v27)
      {
        v28 = v27 < v22;
      }

      if (v28)
      {
        ++v23;
        goto LABEL_35;
      }

      v18 = 1;
      if (v21)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (!v18)
      {
        continue;
      }

      break;
    }

    v30 = *v5;
    *v5 = *(v19 - 2);
    *(v19 - 2) = v30;
    LODWORD(v30) = v5[2];
    v5[2] = *(v19 - 2);
    *(v19 - 2) = v30;
LABEL_17:
    v5 += 4;
  }

  while (v5 != v4);
LABEL_41:
  v31 = a1[1];
  v32 = *(*a1 + 16);
  v33 = *(*a1 + 72);
  v34 = *(*a1 + 80);
  v35 = *v31;
  v36 = *(*v31 + 4112);
  v37 = *(*v31 + 4128);
  if (*(*v31 + 4104) == v36)
  {
    v41 = (v35 + 40960);
    WORD1(v55) = (*(v35 + 4136) - v37) >> 2;
    LOWORD(v55) = 1;
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v35 + 4128, &v55);
    v38 = v55;
    v42 = v41[8];
    v43 = v41[9];
    if (v42 >= v43)
    {
      v45 = v41[7];
      v46 = (v42 - v45) >> 6;
      v47 = v46 + 1;
      if ((v46 + 1) >> 58)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v48 = v43 - v45;
      if (v48 >> 5 > v47)
      {
        v47 = v48 >> 5;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFC0)
      {
        v49 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v49);
      }

      v50 = (v46 << 6);
      v50[2] = 0u;
      v50[3] = 0u;
      *v50 = 0u;
      v50[1] = 0u;
      v44 = (v46 << 6) + 64;
      v51 = v41[7];
      v52 = v41[8] - v51;
      v53 = (v46 << 6) - v52;
      memcpy(v50 - v52, v51, v52);
      v54 = v41[7];
      v41[7] = v53;
      v41[8] = v44;
      v41[9] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      v42[2] = 0u;
      v42[3] = 0u;
      *v42 = 0u;
      v42[1] = 0u;
      v44 = (v42 + 4);
    }

    v41[8] = v44;
    v31 = a1[1];
  }

  else
  {
    v38 = *(v37 + 4 * *(v36 - 8));
    *(v35 + 4112) = v36 - 8;
  }

  v39 = *v31;
  *&v55 = v4;
  *(&v55 + 1) = (v32 - v4) >> 4;
  ecs2::BasicRegistry<void>::add<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(v39, v38, &v55);
  v40 = *a1[1];
  *&v55 = v33;
  *(&v55 + 1) = (v34 - v33) >> 4;
  ecs2::BasicRegistry<void>::add<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(v40, v38, &v55);
}

void gdc::ManagedObjectHolder<md::HikingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0DCA0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C4096AF022DLL);
  }

  JUMPOUT(0x1B8C62190);
}

void gdc::ManagedObjectHolder<md::PolygonContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A205A0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C4004CED998);
  }

  JUMPOUT(0x1B8C62190);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v23 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
    *algn_1EB82DD88 = 0x2B8F0D3A6E65567BLL;
    qword_1EB82DD90 = "SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>]";
    qword_1EB82DD98 = 59;
  }

  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(a1);
  v7 = v6;
  v8 = HIWORD(v23) >> 6;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * (BYTE2(v23) & 0x3F));
  v13 = v12[1];
  if (*v12 == -1 && v13 == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>((v7 + 4), &v23);
    v15 = v7[7];
    v16 = ((v7[5] - v7[4]) >> 2) - 1;
    *v12 = v23;
    v12[1] = v16;
    v17 = v16 >> 6;
    v18 = v7[8] - v15;
    if (v16 >> 6 >= v18 >> 3)
    {
      v24 = 0;
      std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(v7 + 7, v17 + 1, &v24);
      std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(v7 + 10, v17 + 1);
      v15 = v7[7];
      if (v18 < (v7[8] - v15))
      {
        operator new();
      }
    }

    *(*(v15 + 8 * v17) + 16 * (v16 & 0x3F)) = *a3;
    v22 = v23;
    v20 = v7[19];
    v19 = v7[20];
    while (v20 != v19)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v20 + 24), v22);
      v20 += 32;
    }
  }

  else
  {
    *(*(v7[7] + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *a3;
    v22 = v23;
  }

  v21 = *(a1 + 41016) + (HIWORD(v22) << 6);
  *(v21 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
    *algn_1EB82DD88 = 0x2B8F0D3A6E65567BLL;
    qword_1EB82DD90 = "SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>]";
    qword_1EB82DD98 = 59;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void *gdc::ManagedObjectHolder<md::EntityDebugHighlightContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EB5E8;
  v2 = a1[4];
  if (v2)
  {
    v5 = (v2 + 104);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (v2 + 80);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40D55A27F3);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v23 = a2;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
    unk_1EB82DDB0 = 0x4E187DDCBE232848;
    qword_1EB82DDB8 = "SceneComponents::WillEnterView<md::DaVinciGroundRenderable>]";
    qword_1EB82DDC0 = 59;
  }

  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(a1);
  v7 = v6;
  v8 = HIWORD(v23) >> 6;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * (BYTE2(v23) & 0x3F));
  v13 = v12[1];
  if (*v12 == -1 && v13 == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>((v7 + 4), &v23);
    v15 = v7[7];
    v16 = ((v7[5] - v7[4]) >> 2) - 1;
    *v12 = v23;
    v12[1] = v16;
    v17 = v16 >> 6;
    v18 = v7[8] - v15;
    if (v16 >> 6 >= v18 >> 3)
    {
      v24 = 0;
      std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(v7 + 7, v17 + 1, &v24);
      std::vector<std::span<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>,18446744073709551615ul>>::resize(v7 + 10, v17 + 1);
      v15 = v7[7];
      if (v18 < (v7[8] - v15))
      {
        operator new();
      }
    }

    *(*(v15 + 8 * v17) + 16 * (v16 & 0x3F)) = *a3;
    v22 = v23;
    v20 = v7[19];
    v19 = v7[20];
    while (v20 != v19)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v20 + 24), v22);
      v20 += 32;
    }
  }

  else
  {
    *(*(v7[7] + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *a3;
    v22 = v23;
  }

  v21 = *(a1 + 41016) + (HIWORD(v22) << 6);
  *(v21 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
    unk_1EB82DDB0 = 0x4E187DDCBE232848;
    qword_1EB82DDB8 = "SceneComponents::WillEnterView<md::DaVinciGroundRenderable>]";
    qword_1EB82DDC0 = 59;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void gdc::ManagedObjectHolder<md::EntityDebugHighlightContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::EntityDebugHighlightContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>();
    *algn_1EB83D018 = 0xC0EF30C6D6B08313;
    qword_1EB83D020 = "md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>]";
    qword_1EB83D028 = 56;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = (v4 - 24);
        std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = (v4 - 24);
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[473];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS9_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40CA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40CA0;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *gdc::ManagedObjectHolder<md::BVHDebugContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3C1D0;
  v2 = a1[4];
  if (v2)
  {
    v5 = (v2 + 104);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (v2 + 80);
    std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40D55A27F3);
  }

  return a1;
}

void *gdc::Context::get<md::GeometryContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x3070CB6B3C7F21D3)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void gdc::ManagedObjectHolder<md::BVHDebugContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::BVHDebugContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x552ACF95227023D6)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)62>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)33>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4F98;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)62>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x5A88E3C88DA0DCA1uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x5A88E3C88DA0DCA1)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)54>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25900;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)62>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25A98;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void sub_1B2A044FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  MEMORY[0x1B8C62190](v20, v21);
  _Unwind_Resume(a1);
}

double md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1B8B241A8D896A1DLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xE42D19AFCA302E68))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  v17 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v17;
  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::SceneQueryLogic::runBeforeLayoutAtVariableRate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v80[4] = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v6 = a3[3];
  v62 = a3[4];
  v7 = v5[5];
  v63 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 routeInfo];
    v10 = [v9 route];
    v67 = v10;

    v60 = [v8 useType] == 1;
  }

  else
  {
    v10 = 0;
    v60 = 0;
    v67 = 0;
  }

  v11 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(a1 + 304), &v67);
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(a1 + 296, v10);
  v12 = *(a1 + 369);
  v13 = *v5;
  *(a1 + 369) = v13;
  v14 = *(a1 + 320);
  v15 = *(a1 + 328);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v72 = 0;
  *&buf = &unk_1F2A27140;
  *(&buf + 1) = &v72;
  p_buf = &buf;
  md::StyleLogicContext::parseEvents(v6, &buf);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](&buf);
  v61 = v11 ^ 1;
  if (v72 == 1)
  {
    if (v12 == v13)
    {
      v16 = *(a1 + 369);
    }

    else
    {
      v16 = 1;
    }

    if (((v16 | v11 ^ 1) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (!*(a1 + 369))
    {
LABEL_11:
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        v15 = 0;
      }

      v14 = 0;
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v17 = v11;
  if (v12 != v13)
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0)
  {
    if ((*(a1 + 369) & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    LODWORD(v77) = 65624;
    WORD2(v77) = 0;
    v78 = 5;
    v79 = 11;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v80, &v77, 2uLL);
    v70[0] = 0;
    v70[1] = 0;
    v71 = 256;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v70, 0x10002u) = 1;
    v18 = [*(a1 + 304) styleAttributes];
    md::createFeatureAttributeSet(&v77, v18);

    gss::FeatureAttributeSet::setByReplacingAttributes(v76, &v77, v80[0], v80[1]);
    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v68, *v6, v76, v70);
    v14 = v68;
    v19 = v69;
    v68 = 0;
    v69 = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v76);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v77);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v70);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v80);
    v15 = v19;
  }

LABEL_22:
  if (v15)
  {
    v20 = 0;
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_25;
  }

LABEL_24:
  v20 = 1;
LABEL_25:
  v21 = *(a1 + 328);
  *(a1 + 320) = v14;
  *(a1 + 328) = v15;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(a1 + 120);
  v65 = *(a1 + 121);
  if ((v20 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v65)
  {
    v23 = (a1 + 320);
  }

  else
  {
    v23 = 0;
  }

  v59 = v23;
  if (v22)
  {
    v25 = *(a1 + 320);
    v24 = *(a1 + 328);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v26 = *(a1 + 336);
  if (v26 == v25)
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25 != 0;
    }

    if (v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26 != 0;
    }

    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(a1 + 344);
    *(a1 + 336) = v25;
    *(a1 + 344) = v24;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      v30 = *(a1 + 336);
      goto LABEL_49;
    }
  }

  v30 = v25;
LABEL_49:
  v31 = v30 != 0;
  if (*(a4 + 65) != v31)
  {
    *(a4 + 65) = v31;
    v32 = GEOGetVectorKitSceneQueryLogicLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      if (*(a4 + 65))
      {
        v33 = "YES";
      }

      else
      {
        v33 = "NO";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v33;
      _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_INFO, "SpatialFlexingEnabled:%s", &buf, 0xCu);
    }
  }

  v34 = *(a1 + 152);
  v36 = *(v34 + 456);
  v35 = *(v34 + 464);
  if (v36 != v35 && *(a1 + 496))
  {
    do
    {
      v37 = *v36++;
      std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__erase_unique<unsigned short>((a1 + 480), v37);
      std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__erase_unique<unsigned short>((a1 + 504), v37);
    }

    while (v36 != v35);
  }

  v38 = *(a1 + 336);
  if (!v38)
  {
    v40 = v63;
    if (v28)
    {
      md::SceneQueryLogic::clearNavigationFlexState(a1);
      md::SceneQueryLogic::prepareNavigationFlexSegmentsForRoute(a1, 0);
      *(a1 + 368) = -1;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 464));
      *(a1 + 464) = 0;
      *(a1 + 472) = 0;
      *(a1 + 456) = a1 + 464;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 280));
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 272) = a1 + 280;
      *(a1 + 256) = *(a1 + 248);
      LOBYTE(buf) = 0;
      std::__hash_table<md::SceneQueryEvent,std::hash<md::SceneQueryEvent>,std::equal_to<md::SceneQueryEvent>,std::allocator<md::SceneQueryEvent>>::__emplace_unique_key_args<md::SceneQueryEvent,md::SceneQueryEvent&>((a1 + 208), 0);
      *(a1 + 544) = 0;
    }

    goto LABEL_75;
  }

  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v40 = v63;
  if (md::SceneQueryLogic::updateNavigationFlexBucketsForZoom(a1, v39, v38, *(a1 + 344), v26 != v25))
  {
    LOBYTE(buf) = 0;
    std::__hash_table<md::SceneQueryEvent,std::hash<md::SceneQueryEvent>,std::equal_to<md::SceneQueryEvent>,std::allocator<md::SceneQueryEvent>>::__emplace_unique_key_args<md::SceneQueryEvent,md::SceneQueryEvent&>((a1 + 208), 0);
    md::SceneQueryLogic::updatePendingRegistries(a1, (*(a1 + 152) + 384));
    if ((v27 | v61) != 1)
    {
      goto LABEL_74;
    }

LABEL_67:
    if ((v11 & 1) == 0)
    {
      v42 = GEOGetVectorKitSceneQueryLogicLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B2754000, v42, OS_LOG_TYPE_DEBUG, "Route didChange", &buf, 2u);
      }

      md::SceneQueryLogic::clearNavigationFlexState(a1);
    }

    md::SceneQueryLogic::prepareNavigationFlexSegmentsForRoute(a1, *(a1 + 304));
    goto LABEL_74;
  }

  v41 = *(a1 + 152);
  if ((v27 | v61) == 1)
  {
    md::SceneQueryLogic::updatePendingRegistries(a1, (v41 + 384));
    goto LABEL_67;
  }

  md::SceneQueryLogic::updatePendingRegistries(a1, (v41 + 432));
LABEL_74:
  md::SceneQueryLogic::processPendingRegistries(a1);
LABEL_75:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  if (v65)
  {
    v43 = *v59;
    v44 = v59[1];
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v45 = *v62;
  v46 = v62[1];
  if (*v62 == v46)
  {
    goto LABEL_80;
  }

  while (*v45 != 21)
  {
    v47 = 0;
    v45 += 16;
    if (v45 == v46)
    {
      goto LABEL_81;
    }
  }

  if (v45 == v46 || !*(v45 + 8))
  {
LABEL_80:
    v47 = 0;
  }

  else
  {
    v58 = +[VKDebugSettings sharedSettings];
    v47 = [v58 enableDaVinciStyleRoute];
  }

LABEL_81:
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *(a1 + 360);
  *(a1 + 352) = v43;
  *(a1 + 360) = v44;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    v43 = *(a1 + 352);
  }

  if (v43)
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
    v50 = v49;
    v51 = *(a4 + 80);
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }

    v52 = *(a1 + 352);
    v53 = *(a1 + 360);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&buf, v52, v53);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    }

    if (v75 == 1 && gss::QueryableLocker<gss::PropertyID>::hasValueForKeyAtZ(*(buf + 24), 0x190u, v50) && gss::QueryableLocker<gss::PropertyID>::hasValueForKeyAtZ(*(buf + 24), 0x191u, v50))
    {
      operator new();
    }

    gss::QueryableLocker<gss::PropertyID>::~QueryableLocker(&buf);
    v54 = *(a1 + 352);
    if (v54)
    {
      v54 = *(a1 + 304);
      if (v54)
      {
        LOBYTE(v54) = *(a1 + 369) & v47 & v60;
      }
    }
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  v55 = v54 & 1;
  if (*(a4 + 64) != v55)
  {
    *(a4 + 64) = v55;
    v56 = GEOGetVectorKitSceneQueryLogicLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      if (*(a4 + 64))
      {
        v57 = "YES";
      }

      else
      {
        v57 = "NO";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v57;
      _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_INFO, "RouteLineMaskingEnabled:%s", &buf, 0xCu);
    }
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  if (a1 + 272 != a4)
  {
    std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__tree_node<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,void *> *,long>>(a4, *(a1 + 272), (a1 + 280));
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::swap(a4 + 24, a1 + 208);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 208));
}

void sub_1B2A05130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

uint64_t std::__function::__func<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0,std::allocator<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, unsigned __int8 *a2)
{
  if ((*a2 | 4) == 4)
  {
    **(result + 8) = 1;
  }

  return result;
}

void std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__tree_node<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_31:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_32;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = *(v13 + 28);
      *(v9 + 28) = v14;
      *(v9 + 32) = v13[4];
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        v18 = (v14 - 1);
        do
        {
          while (1)
          {
            v16 = v15;
            if (v18 >= (*(v15 + 28) - 1))
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_17;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_17:
      std::__tree<unsigned short>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v19 = v13[1];
      if (v19)
      {
        do
        {
          a2 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v20 = *a2 == v13;
          v13 = a2;
        }

        while (!v20);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_31;
  }

LABEL_32:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t md::Logic<md::PuckLocationAnimationTracingLogic,md::PuckLocationAnimationTracingContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA81ACD73F9C92AA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x1B8B241A8D896A1DLL;
    if (a2 <= 0x1B8B241A8D896A1DLL)
    {
      v3 = 0x1B8B241A8D896A1DLL % a2;
    }
  }

  else
  {
    v3 = (a2 - 1) & 0x1B8B241A8D896A1DLL;
  }

  v4 = *(a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x1B8B241A8D896A1DLL)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= a2)
      {
        v6 %= a2;
      }
    }

    else
    {
      v6 &= a2 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x1B8B241A8D896A1DLL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x1B8B241A8D896A1DLL)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::PuckLocationAnimationTracingLogic::canPublishEvents(md::PuckLocationAnimationTracingLogic *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = [MEMORY[0x1E69A2398] sharedPlatform];
  v2 = [v1 isInternalInstall];

  return v2;
}

void md::PuckLocationAnimationTracingLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 176);
  if ((md::PuckLocationAnimationTracingLogic::canPublishEvents(*(a1 + 368)) & 1) != 0 || v6)
  {
    v7 = *a3;
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = v8;
      v10 = *(v7 + 40);
      v11 = [v10 routeInfo];
      v12 = [v11 route];

      if (*(a1 + 280))
      {
        if (v12)
        {
          md::LayoutContext::frameState(a2);
          v31 = v12;
          v14 = [v12 closestPointOnRoute:{*(v13 + 56) * 57.2957795, *(v13 + 64) * 57.2957795}];
          if (*(a1 + 280))
          {
            v15 = v14;
            v16 = &dword_1B2754000;
            do
            {
              v17 = *(*(a1 + 248) + ((*(a1 + 272) >> 4) & 0xFFFFFFFFFFFFFF8));
              v18 = *(a1 + 272) & 0x7FLL;
              v19 = v17 + 32 * v18;
              if (*(v19 + 16) == v12)
              {
                v22 = *(v19 + 8);
                if (v22 >= v15 && (v22 != v15 || *(v19 + 12) > *(&v15 + 1)))
                {
                  break;
                }

                md::LayoutContext::frameState(a2);
                v24 = *(v23 + 96);
                v32 = v24;
                if (*(a1 + 176) == 1)
                {
                  v25 = GEOGetVectorKitPuckTrackingLog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = a2;
                    v27 = v16;
                    v28 = *(v19 + 24);
                    v29 = GEOPolylineCoordinateAsFullString();
                    v30 = GEOPolylineCoordinateAsFullString();
                    *buf = 138413058;
                    v34 = v28;
                    v35 = 2112;
                    v36 = v29;
                    v37 = 2112;
                    v38 = v30;
                    v39 = 2048;
                    v40 = v24;
                    v16 = v27;
                    _os_log_impl(v27, v25, OS_LOG_TYPE_INFO, "[VK] [%@] Animation Reached Location - routeCoordinate:%@ presentationRouteCoordinate:(%@) frameStamp:%lu", buf, 0x2Au);

                    a2 = v26;
                    v12 = v31;
                  }
                }

                md::PuckLocationAnimationTracingLogic::publishEvent(a1, *(*(a1 + 248) + ((*(a1 + 272) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 272) & 0x7FLL), 2);
                std::deque<std::pair<unsigned long,md::PuckAnimationTraceEvent>>::emplace_back<unsigned long const&,md::PuckAnimationTraceEvent const&>((a1 + 288), &v32, v19);
              }

              else
              {
                if (*(a1 + 176) == 1)
                {
                  v20 = GEOGetVectorKitPuckTrackingLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v21 = *(v19 + 24);
                    *buf = 138412290;
                    v34 = v21;
                    _os_log_impl(v16, v20, OS_LOG_TYPE_INFO, "[VK] [%@] Dropped - route no longer valid", buf, 0xCu);
                  }

                  v17 = *(*(a1 + 248) + ((*(a1 + 272) >> 4) & 0xFFFFFFFFFFFFFF8));
                  v18 = *(a1 + 272) & 0x7FLL;
                }

                md::PuckLocationAnimationTracingLogic::publishEvent(a1, v17 + 32 * v18, 0);
              }

              std::deque<md::PuckAnimationTraceEvent>::pop_front(a1 + 240);
            }

            while (*(a1 + 280));
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

uint64_t md::Logic<md::PuckLocationAnimationTracingLogic,md::PuckLocationAnimationTracingContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA81ACD73F9C92AA1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA60DDA5A69582425)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::SharedResourcesLogic,md::SharedResourcesContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA60DDA5A69582425)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

void sub_1B2A05FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, void **a22)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(a22);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(a17);
  if (a15)
  {
    operator delete(a15);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v22, v23);
  _Unwind_Resume(a1);
}

double md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  return result;
}

uint64_t std::__function::__func<gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0,std::allocator<std::unique_ptr<gdc::ResourceFetcher> &&>,void ()(std::vector<std::shared_ptr<gdc::Resource>,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0<gdc::Resource>> const&,std::allocator<std::unique_ptr<gdc::ResourceFetcher> &&><gdc::ResourceRequest,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0<std::vector<std::shared_ptr<gdc::Resource>,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0<gdc::Resource>> const&>> const&,std::allocator<std::unique_ptr<gdc::ResourceFetcher> &&><gdc::ResourceRequest,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0<std::vector<std::shared_ptr<gdc::Resource>,gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_0<gdc::Resource>> const&>> const)>::operator()(uint64_t a1, unsigned __int8 ***a2, uint64_t *a3, uint64_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v7 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = (*(**(v4 + 448) + 16))(*(v4 + 448));
        gdc::ResourceKey::keysInt32Str(&__p, *v5);
        v9 = *(*v5 + 16);
        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        *buf = 136315650;
        v63 = v8;
        v64 = 2080;
        v65 = p_p;
        v66 = 2048;
        v67 = v9;
        _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_DEBUG, "%s Received resource: %s, rid: %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v11 = *v5;
      v12 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v4 + 96), *v5);
      v13 = *(v11 + 16);
      v14 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 176), v13);
      if (v14)
      {
        v15 = v14;
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v16 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = (*(**(v4 + 448) + 16))(*(v4 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, *v5);
          v18 = *(*v5 + 16);
          v19 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &__p;
          }

          *buf = 136315650;
          v63 = v17;
          v64 = 2080;
          v65 = v19;
          v66 = 2048;
          v67 = v18;
          _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_DEBUG, "%s Removing resource from cancelled list: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((v4 + 176), v15);
      }

      else if (v12 && v12[14] == v13)
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v20 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = (*(**(v4 + 448) + 16))(*(v4 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, *v5);
          v22 = *(*v5 + 16);
          v23 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &__p;
          }

          *buf = 136315650;
          v63 = v21;
          v64 = 2080;
          v65 = v23;
          v66 = 2048;
          v67 = v22;
          _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_DEBUG, "%s ** Received resource: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v24 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v4 + 312) + 8), *v5);
        if (v24)
        {
          *(v24 + 28) = 2;
        }

        std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase((v4 + 96), v12);
      }

      else
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v25 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = (*(**(v4 + 448) + 16))(*(v4 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, *v5);
          v27 = *(*v5 + 16);
          v28 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &__p;
          }

          *buf = 136315650;
          v63 = v26;
          v64 = 2080;
          v65 = v28;
          v66 = 2048;
          v67 = v27;
          _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_DEBUG, "%s ** Received resource should either be in progress or canceled: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  v30 = *a3;
  v29 = a3[1];
  if (*a3 != v29)
  {
    do
    {
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v31 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = (*(**(v4 + 448) + 16))(*(v4 + 448));
        gdc::ResourceKey::keysInt32Str(&__p, (v30 + 8));
        v33 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = __p.__r_.__value_.__r.__words[0];
        }

        v34 = *v30;
        *buf = 136315650;
        v63 = v32;
        v64 = 2080;
        v65 = v33;
        v66 = 2048;
        v67 = v34;
        _os_log_impl(&dword_1B2754000, v31, OS_LOG_TYPE_DEBUG, "%s Received failed resource: %s, %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v35 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v4 + 96), (v30 + 8));
      v36 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 176), *v30);
      std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__emplace_unique_key_args<gdc::ResourceKey,gdc::ResourceKey const&>((v4 + 136), (v30 + 8));
      if (v35 && v35[14] == *v30)
      {
        v37 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v4 + 312) + 8), (v30 + 8));
        if (v37)
        {
          *(v37 + 28) = 3;
        }

        std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase((v4 + 96), v35);
      }

      else if (v36)
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v38 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = (*(**(v4 + 448) + 16))(*(v4 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, (v30 + 8));
          v40 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = __p.__r_.__value_.__r.__words[0];
          }

          v41 = *v30;
          *buf = 136315650;
          v63 = v39;
          v64 = 2080;
          v65 = v40;
          v66 = 2048;
          v67 = v41;
          _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_DEBUG, "%s Removing failed resource from cancelled list: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((v4 + 176), v36);
      }

      v30 += 160;
    }

    while (v30 != v29);
  }

  v43 = *a4;
  v42 = a4[1];
  if (*a4 != v42)
  {
    do
    {
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v44 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = (*(**(v4 + 448) + 16))(*(v4 + 448));
        gdc::ResourceKey::keysInt32Str(&__p, (v43 + 8));
        v46 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = __p.__r_.__value_.__r.__words[0];
        }

        v47 = *v43;
        *buf = 136315650;
        v63 = v45;
        v64 = 2080;
        v65 = v46;
        v66 = 2048;
        v67 = v47;
        _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_DEBUG, "%s Received cancelled resource: %s, rid: %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v48 = *v43;
      v49 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v4 + 176), *v43);
      if (v49)
      {
        v50 = v49;
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v51 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v52 = (*(**(v4 + 448) + 16))(*(v4 + 448));
          gdc::ResourceKey::keysInt32Str(&__p, (v43 + 8));
          v53 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v53 = __p.__r_.__value_.__r.__words[0];
          }

          v54 = *v43;
          *buf = 136315650;
          v63 = v52;
          v64 = 2080;
          v65 = v53;
          v66 = 2048;
          v67 = v54;
          _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_DEBUG, "%s Removing cancelled resource: %s, rid: %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((v4 + 176), v50);
      }

      else
      {
        v55 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((v4 + 96), (v43 + 8));
        if (v55)
        {
          v56 = v55;
          if (v55[14] == v48)
          {
            v57 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v4 + 312) + 8), (v43 + 8));
            if (v57)
            {
              *(v57 + 28) = 4;
            }

            std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase((v4 + 96), v56);
          }
        }
      }

      v43 += 160;
    }

    while (v43 != v42);
  }

  result = *(v4 + 344);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

void std::allocator_traits<std::allocator<gdc::ResourceRequest>>::destroy[abi:nn200100]<gdc::ResourceRequest,void,0>(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 16);
  if (v2 != *(a1 + 32))
  {

    free(v2);
  }
}

uint64_t md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::NonTiledAssetLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::unordered_map<std::string,unsigned long long>::operator=[abi:nn200100](a4, a1 + 120);
  std::unordered_map<std::string,unsigned long long>::operator=[abi:nn200100](a4 + 40, a1 + 160);

  return std::unordered_map<std::string,unsigned long long>::operator=[abi:nn200100](a4 + 80, a1 + 200);
}

uint64_t std::unordered_map<std::string,unsigned long long>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    v3 = *(a2 + 16);
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }

      v6 = *(a1 + 16);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      if (v6)
      {
        v7 = v3 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = v6;
      }

      else
      {
        do
        {
          std::string::operator=((v6 + 16), (v3 + 2));
          *(v6 + 40) = v3[5];
          v8 = *v6;
          std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_multi(a1, v6);
          v3 = *v3;
          if (v8)
          {
            v9 = v3 == 0;
          }

          else
          {
            v9 = 1;
          }

          v6 = v8;
        }

        while (!v9);
      }

      std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(v8);
    }

    if (v3)
    {
      operator new();
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 39);
  if (v4 >= 0)
  {
    v5 = (a2 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 39);
  }

  else
  {
    v6 = *(a2 + 24);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  *(v3 - 1) = v7;
  v8 = *(a1 + 8);
  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v8 || (v10 * v8) < v9)
  {
    v11 = 1;
    if (v8 >= 3)
    {
      v11 = (v8 & (v8 - 1)) != 0;
    }

    v12 = v11 | (2 * v8);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__rehash<false>(a1, v14);
    v8 = *(a1 + 8);
  }

  v15 = vcnt_s8(v8);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = v7;
    if (v7 >= v8)
    {
      v17 = v7 % v8;
    }
  }

  else
  {
    v17 = (v8 - 1) & v7;
  }

  v18 = *(*a1 + 8 * v17);
  v27 = *a1;
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      do
      {
        v21 = v19;
        v22 = v19[1];
        if (v16 > 1)
        {
          v23 = v22;
          if (v22 >= v8)
          {
            v23 = v22 % v8;
          }
        }

        else
        {
          v23 = v22 & (v8 - 1);
        }

        if (v23 != v17)
        {
          break;
        }

        v24 = v22 == v7 && std::equal_to<std::string>::operator()[abi:nn200100](v21 + 2, v3);
        if ((v20 & (v24 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v24 != (v20 & 1);
        v19 = *v21;
        v18 = v21;
      }

      while (*v21);
    }
  }

  v25 = *(a2 + 8);
  if (v16 > 1)
  {
    if (v25 >= v8)
    {
      v25 %= v8;
    }
  }

  else
  {
    v25 &= v8 - 1;
  }

  if (!v18)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(v27 + 8 * v25) = a1 + 16;
    if (!*a2)
    {
      goto LABEL_34;
    }

    v26 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v26 >= v8)
      {
        v26 %= v8;
      }
    }

    else
    {
      v26 &= v8 - 1;
    }

LABEL_41:
    *(*a1 + 8 * v26) = a2;
    goto LABEL_34;
  }

  *a2 = *v18;
  *v18 = a2;
  if (*a2)
  {
    v26 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v26 >= v8)
      {
        v26 %= v8;
      }
    }

    else
    {
      v26 &= v8 - 1;
    }

    if (v26 != v25)
    {
      goto LABEL_41;
    }
  }

LABEL_34:
  ++*(a1 + 24);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__rehash<false>(uint64_t a1, size_t __n)
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
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

void sub_1B2A073AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a14);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a9);
  MEMORY[0x1B8C62190](v14, v15);
  _Unwind_Resume(a1);
}

double md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  return result;
}

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void md::AssetInjectionLogic::runBeforeLayout(uint64_t a1, uint64_t a2, md::SceneContext **a3, void *a4)
{
  v8 = +[VKDebugSettings sharedSettings];
  v9 = [v8 enableInjectedAssets];

  if (v9)
  {
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(a4);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(a4 + 5);
    v10 = *(a1 + 200);
    v11 = *(v10 + 456);
    for (i = *(v10 + 464); v11 != i; ++v11)
    {
      LOWORD(v49) = *v11;
      v13 = v49;
      if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((a1 + 160), v49))
      {
        v40 = &v49;
        v14 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a1 + 160), v13);
        v15 = v14[4];
        if (v14[3] != v15)
        {
          v16 = v14[3];
          do
          {
            v17 = *v16;
            v16 += 2;
            std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__emplace_unique_key_args<std::shared_ptr<md::InjectedAsset>,std::shared_ptr<md::InjectedAsset> const&>((a1 + 120), v17);
          }

          while (v16 != v15);
        }

        std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__erase_unique<unsigned short>((a1 + 160), v49);
      }
    }

    if (*(a1 + 144))
    {
      v18 = md::SceneContext::layerDataInView(*a3, 33);
      v19 = *v18;
      v38 = v18 + 1;
      if (*v18 != v18 + 1)
      {
        do
        {
          v20 = v19[4];
          v49 = 0uLL;
          v50 = 0;
          v21 = *(a1 + 136);
          if (v21)
          {
            FillRect = grl::IconMetricsRenderResult::getFillRect(v20);
            do
            {
              v23 = *(FillRect + 16);
              Int32 = gdc::ResourceKey::getInt32(v23, 0);
              v26 = (v21 + 2);
              v25 = v21[2];
              if (v25[16] == Int32 && v25[17] == gdc::ResourceKey::getInt32(v23, 1u) && v25[18] == gdc::ResourceKey::getInt32(v23, 2u))
              {
                RegistryForKey = md::RegistryManager::getRegistryForKey(*(a1 + 200), v19[4]);
                if (RegistryForKey)
                {
                  v28 = *v26;
                  v29 = (*v26)[10];
                  v30 = (*v26)[11];
                  if (v29 != v30)
                  {
                    do
                    {
                      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a4 + 5, *v29++);
                    }

                    while (v29 != v30);
                    v28 = *v26;
                  }

                  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(a4, *v28);
                  v31 = *v26;
                  LOWORD(v40) = 0;
                  v41 = vextq_s8(*v31, *v31, 8uLL);
                  v42 = *(v31 + 1);
                  v43 = *(v31 + 2);
                  v44 = *(v31 + 3);
                  v45 = v39 & 0xFFFFFFFFFFFFFF00;
                  v46 = v4 & 0xFFFFFFFFFFFFFF00;
                  v47 = 0;
                  v48 = 0;
                  gdc::Registry::createWith<md::components::ReferencedAssetInstance>(RegistryForKey);
                }
              }

              v21 = *v21;
            }

            while (v21);
            v32 = *(&v49 + 1);
            v33 = v49;
            if (*(&v49 + 1) != v49)
            {
              do
              {
                v34 = *v33;
                v33 += 2;
                std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__erase_unique<std::shared_ptr<md::InjectedAsset>>((a1 + 120), v34);
              }

              while (v33 != v32);
            }
          }

          v40 = &v49;
          std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v40);
          v35 = v19[1];
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = v19[2];
              v37 = *v36 == v19;
              v19 = v36;
            }

            while (!v37);
          }

          v19 = v36;
        }

        while (v36 != v38);
      }
    }
  }
}

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

void sub_1B2A07A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, void *a35)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a35);
  v38 = __p;
  __p = 0;
  if (v38)
  {
    operator delete(v38);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a30);
  v39 = a28;
  a28 = 0;
  if (v39)
  {
    operator delete(v39);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a20);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a17);
  if (a15)
  {
    operator delete(a15);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v35, v36);
  _Unwind_Resume(a1);
}

double md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::buildRequiredTuple<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x7851AF310F49C988uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x7851AF310F49C988))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  v14 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL)
  {
    v15 = v3;
    v16 = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::buildRequiredTuple<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>(v14, v8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xD77FB76AFC10A710);
      if (v9 && (v11 = v9[5], *(v11 + 8) == 0xD77FB76AFC10A710))
      {
        v10 = *(v11 + 32);
      }

      else
      {
        v10 = 0;
      }

      v12[0] = v14[0];
      v12[1] = v14[1];
      v13 = v10;
      return (*(*v7 + 144))(v7, a2, v12, v5);
    }
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x7851AF310F49C988uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x7851AF310F49C988))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL)[5] + 32);
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xD77FB76AFC10A710);
  if (result && (v15 = result[5], *(v15 + 8) == 0xD77FB76AFC10A710))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v16;
  return result;
}

uint64_t md::Logic<md::IdentifiedResourceLogic,md::IdentifiedResourceContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x12B1E486D3040E2CLL)
  {
    v8[9] = v3;
    v8[10] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 128))(v7, a2, v8, v5);
    }
  }

  return result;
}

void md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  gdc::LayerDataCollector::clear(*(a1 + 128));
  v7 = **(a3 + 8);
  if (v7)
  {
    v100 = a3;
    v101 = a2;
    v99 = *a3;
    v8 = *(a3 + 24);
    v102 = **(a3 + 8);
    v9 = *(v7 + 56);
    if (v9)
    {
      v10 = gdc::ResourceManager::resourceFetcher(*(v9 + 32), *(v9 + 40), 27);
      v11 = (*(*v10 + 72))(v10);
      if ((v11 & 0x100000000) != 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 512;
      }

      *(a4 + 224) = v12;
    }

    v104 = a4;
    if (*v8)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    *(a1 + 216) = v13;
    if ((*(a1 + 192) & 1) == 0)
    {
      v14 = *(a1 + 136);
      v16 = *(v14 + 384);
      v15 = *(v14 + 392);
      v103 = v15;
      while (v16 != v15)
      {
        v17 = *v16;
        v18 = gdc::Registry::storage<md::components::ReferencedAssetInstance>(*v16);
        v19 = gdc::Registry::storage<md::components::NonTiled>(v17);
        v20 = v19;
        v21 = (v19 + 32);
        v22 = v18[7];
        v23 = v18[8];
        if (*(v19 + 64) - *(v19 + 56) >= (v23 - v22))
        {
          v24 = v18 + 4;
        }

        else
        {
          v24 = (v19 + 32);
        }

        if (v18 + 4 == v24 && v22 != v23)
        {
          v32 = (v18[10] + 16);
          do
          {
            if (*(v20 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v21, *(v22 + 4)))
            {
              md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_1::operator()(a1, *v32);
            }

            v22 += 8;
            v32 += 12;
          }

          while (v22 != v23);
        }

        if (v21 == v24)
        {
          v33 = *(v20 + 56);
          v34 = *(v20 + 64);
          while (v33 != v34)
          {
            if (v18[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18 + 4, *(v33 + 4)))
            {
              v35 = gdc::RegistryView<md::components::ReferencedAssetInstance,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::ReferencedAssetInstance>(v18, *v33);
              md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_1::operator()(a1, *(v35 + 16));
            }

            v33 += 8;
          }
        }

        v25 = gdc::Registry::storage<md::components::Asset>(v17);
        v26 = gdc::Registry::storage<md::components::NonTiled>(v17);
        v27 = v26;
        v28 = (v26 + 32);
        v29 = v25[7];
        v30 = v25[8];
        if (*(v26 + 64) - *(v26 + 56) >= (v30 - v29))
        {
          v31 = v25 + 4;
        }

        else
        {
          v31 = (v26 + 32);
        }

        if (v25 + 4 == v31 && v29 != v30)
        {
          v36 = v25[10];
          do
          {
            if (*(v27 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, *(v29 + 4)))
            {
              md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_1::operator()(a1, *v36);
            }

            v36 += 9;
            v29 += 8;
          }

          while (v29 != v30);
        }

        if (v28 == v31)
        {
          v37 = *(v27 + 56);
          v38 = *(v27 + 64);
          while (v37 != v38)
          {
            if (v25[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v25 + 4, *(v37 + 4)))
            {
              v39 = gdc::RegistryView<md::components::Asset,md::components::NonTiled>::getComponent<md::components::NonTiled,md::components::Asset>(v25, *v37);
              md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_1::operator()(a1, *v39);
            }

            v37 += 8;
          }
        }

        ++v16;
        v15 = v103;
      }
    }

    v40 = md::SceneContext::layerDataInView(v99, 33);
    v42 = v40 + 1;
    v41 = *v40;
    v43 = v102;
    if (*v40 != v40 + 1)
    {
      do
      {
        md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_0::operator()(a1, v41[4], v41[5]);
        v44 = v41[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v41[2];
            v46 = *v45 == v41;
            v41 = v45;
          }

          while (!v46);
        }

        v41 = v45;
      }

      while (v45 != v42);
    }

    v47 = md::SceneContext::layerDataInView(v99, 54);
    v49 = v47 + 1;
    v48 = *v47;
    if (*v47 != v47 + 1)
    {
      do
      {
        md::IdentifiedResourceLogic::runBeforeLayoutAtVariableRate(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::LayerDataLogicContext,md::RegistryContext,md::ElevationContext>,gdc::TypeList<md::AssetInjectionContext>>::ResolvedDependencies const&,md::IdentifiedResourceContext &)::$_0::operator()(a1, v48[4], v48[5]);
        v50 = v48[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v48[2];
            v46 = *v51 == v48;
            v48 = v51;
          }

          while (!v46);
        }

        v48 = v51;
      }

      while (v51 != v49);
    }

    v52 = *(v100 + 32);
    if (v52)
    {
      for (i = *(v52 + 16); i; i = *i)
      {
        v112 = i[2];
        v113 = 0;
        gdc::GenericKey::GenericKey(v108, &v112, 2);
        gdc::LayerDataRequestKey::LayerDataRequestKey(v109, 0, 0x37u, v108, -1073741827);
        if (v108[0] != v108[2])
        {
          free(v108[0]);
        }

        gdc::LayerDataCollector::addDataKey(*(a1 + 120), v109);
        if (v110 != v111)
        {
          free(v110);
        }
      }

      for (j = *(v52 + 56); j; j = *j)
      {
        v112 = j[2];
        v113 = 0;
        gdc::GenericKey::GenericKey(v107, &v112, 2);
        gdc::LayerDataRequestKey::LayerDataRequestKey(v109, 0, 0x38u, v107, -1073741827);
        if (v107[0] != v107[2])
        {
          free(v107[0]);
        }

        gdc::LayerDataCollector::addDataKey(*(a1 + 128), v109);
        if (v110 != v111)
        {
          free(v110);
        }
      }
    }

    gdc::LayerDataCollector::sortIndexList(*(a1 + 120));
    md::LayoutContext::frameState(v101);
    v56 = (*(v55 + 88) * 1000.0);
    gdc::LayerDataManager::createDataRequests(v102, *(a1 + 120), v56);
    gdc::LayerDataManager::getData(v102, *(a1 + 120));
    v57 = (v104 + 120);
    *(v104 + 128) = *(v104 + 120);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(v104);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(v104 + 144);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::swap(v104 + 40, v104 + 144);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v104 + 80));
    v58 = gdc::LayerDataCollector::cDataHolders(*(*(a1 + 120) + 24), *(*(a1 + 120) + 32), 55);
    if (v58 == v59)
    {
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v104 + 40, 0);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v80 = v58;
      v81 = v59;
      v82 = 0;
      v83 = v58;
      do
      {
        if (*(v83 + 128) == 3)
        {
          ++v82;
        }

        v83 += 144;
      }

      while (v83 != v59);
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v104 + 40, vcvtps_u32_f32(v82 / *(v104 + 72)));
      v61 = 0;
      v60 = 0;
      do
      {
        v84 = *(v80 + 128);
        if (v84 == 3)
        {
          v86 = *(v80 + 112);
          v85 = *(v80 + 120);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            v87 = v86[21];
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            v88 = v85;
            v89 = v85;
          }

          else
          {
            v88 = 0;
            v89 = 0;
            v87 = v86[21];
          }

          v109[0] = v87;
          v109[1] = v86;
          v110 = v89;
          std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<md::AssetData>>>((v104 + 40), v87);
          if (v110)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v110);
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__erase_unique<unsigned long long>((v104 + 144), v86[21]);
          if ((*(a1 + 240) & 1) == 0 && !v86[42])
          {
            v90 = v86[32];
            v91 = v86 + 33;
            if (v90 != v91)
            {
              do
              {
                v112 = v90[4];
                v113 = 0;
                gdc::GenericKey::GenericKey(v106, &v112, 2);
                gdc::LayerDataRequestKey::LayerDataRequestKey(v109, 0, 0x38u, v106, -1073741827);
                if (v106[0] != v106[2])
                {
                  free(v106[0]);
                }

                gdc::LayerDataCollector::addDataKey(*(a1 + 128), v109);
                if (v110 != v111)
                {
                  free(v110);
                }

                v92 = v90[1];
                if (v92)
                {
                  do
                  {
                    v93 = v92;
                    v92 = *v92;
                  }

                  while (v92);
                }

                else
                {
                  do
                  {
                    v93 = v90[2];
                    v46 = *v93 == v90;
                    v90 = v93;
                  }

                  while (!v46);
                }

                v90 = v93;
              }

              while (v93 != v91);
            }
          }

          if (v88)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v88);
          }

          v43 = v102;
        }

        else if (v84 == 2 && (v60 & 1) == 0)
        {
          v60 = 1;
        }

        else if ((v61 & 1) == 0)
        {
          v61 = 1;
        }

        v80 += 144;
      }

      while (v80 != v81);
    }

    gdc::LayerDataCollector::sortIndexList(*(a1 + 128));
    gdc::LayerDataManager::createDataRequests(v43, *(a1 + 128), v56);
    gdc::LayerDataManager::getData(v43, *(a1 + 128));
    v62 = +[VKDebugSettings sharedSettings];
    v63 = [v62 daVinciShowMissingMaterials];

    v64 = gdc::LayerDataCollector::cDataHolders(*(*(a1 + 128) + 24), *(*(a1 + 128) + 32), 56);
    v65 = v64;
    v67 = v66;
    if (v64 == v66)
    {
      v68 = 0;
      v69 = 0.0;
    }

    else
    {
      v94 = 0;
      v68 = 0;
      v95 = v64;
      do
      {
        v96 = *(v95 + 128);
        if (v96 == 2)
        {
          v68 += v63;
        }

        else if (v96 == 3)
        {
          v98 = *(v95 + 112);
          v97 = *(v95 + 120);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v68 += (*(v98 + 176) == 0) & v63;
            if (*(v98 + 176))
            {
              ++v94;
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v97);
          }

          else
          {
            v68 += (*(v98 + 176) == 0) & v63;
            if (*(v98 + 176))
            {
              ++v94;
            }
          }
        }

        v95 += 144;
      }

      while (v95 != v67);
      v69 = v94;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v104, vcvtps_u32_f32(v69 / *(v104 + 32)));
    std::vector<gdc::Entity>::reserve(v57, v68);
    for (; v65 != v67; v65 += 144)
    {
      v70 = *(v65 + 128);
      if (v70 == 3)
      {
        v71 = *(v65 + 112);
        v72 = *(v65 + 120);
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v71 + 176))
        {
          v112 = *(v71 + 168);
          v109[0] = &v112;
          v73 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v104, v112);
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v74 = v73[4];
          v73[3] = v71;
          v73[4] = v72;
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v74);
          }
        }

        else if (v63)
        {
          v109[0] = *(v71 + 168);
          std::vector<unsigned long>::push_back[abi:nn200100](v57, v109);
        }

        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v72);
        }
      }

      else if (v70 != 2 || ((v63 ^ 1) & 1) != 0)
      {
        v75 = (v70 != 2) | v60;
        if (v61)
        {
          v76 = v61;
        }

        else
        {
          v76 = 1;
        }

        if (v75)
        {
          v61 = v76;
        }

        else
        {
          v60 = 1;
        }
      }

      else
      {
        v109[0] = gdc::ResourceKey::getUInt64(*(v65 + 16), 0);
        std::vector<unsigned long>::push_back[abi:nn200100](v57, v109);
      }
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(v104 + 80, vcvtps_u32_f32(*(v104 + 168) / *(v104 + 112)));
    v77 = v104;
    for (k = *(v104 + 160); k; v77 = v104)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((v77 + 80), k[2]);
      k = *k;
    }

    if (v61)
    {
      v79 = 2;
    }

    else
    {
      v79 = 1;
    }

    if (v60)
    {
      v79 = 3;
    }

    *(v77 + 228) = v79;
  }
}

void sub_1B2A08910(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::ReferencedAssetInstance>(uint64_t a1)
{
  v3 = 0xD7CF92E7713C257ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD7CF92E7713C257ALL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::NonTiled>(uint64_t a1)
{
  v3 = 0xCBD572B797B24F09;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCBD572B797B24F09);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::Asset>(uint64_t a1)
{
  v3 = 0x72409CF23030D770;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x72409CF23030D770uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::LayerDataManager::createDataRequests(gdc::LayerDataManager *this, gdc::LayerDataCollector *a2, uint64_t a3)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::clear(*(this + 7) + 216);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = (a2 + 24);
  gdc::LayerDataCollector::layerDataTypes(v16, v6, v7);
  for (i = v17; i; i = *i)
  {
    v10 = *(this + 1);
    v11 = *(this + 2);
    if (v10 != v11)
    {
      v12 = *(i + 8);
      while (v12 != *v10)
      {
        v10 += 12;
        if (v10 == v11)
        {
          goto LABEL_9;
        }
      }

      if (v10 != v11)
      {
        v13 = *(v10 + 1);
        v14 = *geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](v8, *(i + 8));
        v15 = geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](v8, v12);
        gdc::LayerDataSource::createLayerDataRequests(v13, v14, *(v15 + 1), a3, *(this + 7));
      }
    }

LABEL_9:
    ;
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v16);
  gdc::ResourceManager::finishBatch(*(this + 7));
}

void gdc::LayerDataCollector::layerDataTypes(gdc::LayerDataCollector *this, uint64_t a2, uint64_t a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  if (a2 != a3)
  {
    v10[7] = v3;
    v10[8] = v4;
    v6 = a2;
    do
    {
      v8 = *v6;
      memset(v9, 0, sizeof(v9));
      std::vector<gdc::LayerDataHolder>::__init_with_size[abi:nn200100]<gdc::LayerDataHolder*,gdc::LayerDataHolder*>(v9, *(v6 + 8), *(v6 + 16), 0x8E38E38E38E38E39 * ((*(v6 + 16) - *(v6 + 8)) >> 4));
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(this, v8);
      v10[0] = v9;
      std::vector<gdc::LayerDataHolder>::__destroy_vector::operator()[abi:nn200100](v10);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t gdc::LayerDataManager::getData(gdc::LayerDataManager *this, gdc::LayerDataCollector *a2)
{
  gdc::LayerDataCollector::layerDataTypes(v8, *(a2 + 3), *(a2 + 4));
  for (i = v9; i; i = *i)
  {
    v5 = *(this + 1);
    v6 = *(this + 2);
    if (v5 != v6)
    {
      while (*(i + 8) != *v5)
      {
        v5 += 12;
        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }

      if (v5 != v6)
      {
        (*(**(v5 + 1) + 40))(*(v5 + 1), a2);
      }
    }

LABEL_8:
    ;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v8);
}

uint64_t gdc::LayerDataCollector::cDataHolders(gdc::LayerDataCollector *this, gdc::LayerDataCollector *a2, int a3)
{
  while (this != a2)
  {
    if (*this == a3)
    {
      if (this != a2)
      {
        return *(this + 1);
      }

      return 0;
    }

    this = (this + 32);
  }

  return 0;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_16;
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
LABEL_16:

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(a1, prime);
    }
  }
}

double md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  md::PuckStyleInfo::PuckStyleInfo((a1 + 56), 0);
  md::PuckStyleInfo::PuckStyleInfo((a1 + 132), 1);
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 216) = 0x3FF0000000000000;
  *(a1 + 256) = 0x3FF0000000000000;
  *(a1 + 296) = 0x3FF0000000000000;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 320) = 0u;
  *(a1 + 336) = _Q1;
  *(a1 + 384) = 0x3FF0000000000000;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 464) = 0x3FF0000000000000;
  return result;
}

uint64_t md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9AEE7E062376E454)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1B8B241A8D896A1DLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xE42D19AFCA302E68))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xA60DDA5A69582425);
  if (v16 && (v17 = v16[5], *(v17 + 8) == 0xA60DDA5A69582425))
  {
    v18 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v19 && (v20 = v19[5], *(v20 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v21 = *(v20 + 32);
  }

  else
  {
    v21 = 0;
  }

  v22 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x12B1E486D3040E2CuLL);
  if (v22 && (v23 = v22[5], *(v23 + 8) == 0x12B1E486D3040E2CLL))
  {
    v24 = *(v23 + 32);
  }

  else
  {
    v24 = 0;
  }

  v25 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v25 && (v26 = v25[5], *(v26 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x932EE29454ABDC4ELL);
  v29 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v21;
  a1[6] = v24;
  a1[7] = v27;
  a1[8] = v29;
  return result;
}

void md::PuckLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v203 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 8);
  v163 = *a3;
  v8 = *(a3 + 16);
  v157 = *(a3 + 48);
  v158 = *(a3 + 56);
  v159 = *(a3 + 32);
  v165 = *(a3 + 24);
  v166 = *(a3 + 64);
  *&v162 = COERCE_DOUBLE([*(v8 + 48) puck]);
  v9 = *(a1 + 440);
  if (!v9)
  {
    v10 = *(v8 + 144);
    v11 = *(v8 + 160);
    v195 = *(a1 + 472);
    buf = *(a1 + 456);
    v191 = v10;
    v192 = v11;
    while (1)
    {
      v12 = *(buf.i64 + v9);
      v13 = *(v191.i64 + v9);
      v14 = vabdd_f64(v12, v13);
      if (v14 > fabs(v13 + v12) * 2.22044605e-14 && v14 > 2.22507386e-308)
      {
        break;
      }

      v9 += 8;
      if (v9 == 24)
      {
        goto LABEL_9;
      }
    }

    [0 stop];
    v16 = *(a1 + 440);
    *(a1 + 440) = 0;

    v17 = [[VKTimedAnimation alloc] initWithDuration:1.5];
    v18 = *(a1 + 440);
    *(a1 + 440) = v17;

    [*(a1 + 440) setTimingFunction:VKAnimationCurveEaseInOut];
    *&v180 = MEMORY[0x1E69E9820];
    *(&v180 + 1) = 3221225472;
    v181 = COERCE_DOUBLE(___ZN2md9PuckLogic13animatePuckUpERKN3geo9Mercator3IdEE_block_invoke);
    *&v182 = &__block_descriptor_88_e8_v12__0f8l;
    *(&v182 + 1) = a1;
    *v183 = buf;
    *&v183[16] = v195;
    *v184 = v191;
    *&v184[16] = v192;
    [*(a1 + 440) setStepHandler:&v180];
    v172 = MEMORY[0x1E69E9820];
    v173 = 3221225472;
    v174 = COERCE_DOUBLE(___ZN2md9PuckLogic13animatePuckUpERKN3geo9Mercator3IdEE_block_invoke_2);
    *&v175 = &__block_descriptor_40_e8_v12__0B8l;
    *(&v175 + 1) = a1;
    [*(a1 + 440) setCompletionHandler:&v172];
    md::AnimationRunner::runAnimation(*(a1 + 448), *(a1 + 440));
  }

LABEL_9:
  v19 = *v7;
  *a4 = v19;
  *&v183[8] = 0;
  *&v183[16] = 0;
  *v184 = 0;
  *&v184[8] = *(a1 + 456);
  v185 = *(a1 + 472);
  v186 = 0;
  v187 = 0;
  v188 = 0x3FF0000000000000;
  v20 = *(v8 + 64);
  v21 = cos(v20 + v20) * -559.82 + 111132.92;
  v22 = v21 + cos(v20 * 4.0) * 1.175;
  v23 = v22 + cos(v20 * 6.0) * -0.0023;
  v24 = v20 * 0.5;
  v25 = tan(v20 * 0.5 + 0.78103484);
  v26 = log(v25);
  v27 = tan(v24 + 0.789761487);
  v189 = fabs((log(v27) - v26) * 0.159154943) / v23;
  v190 = 0;
  if (gdc::ToCoordinateSystem(v163[3784]))
  {
    v190 = 1;
    v136 = gdc::CameraView::position(v163);
    v137 = *v136;
    v138 = v136[1];
    v139 = v136[2];
    v140 = sqrt(v137 * v137 + v138 * v138);
    v141 = atan2(v139, v140 * 0.996647189);
    v170 = atan2(v138, v137);
    v142 = __sincos_stret(v141);
    v143 = atan2(v139 + v142.__sinval * v142.__sinval * 42841.3115 * v142.__sinval, v140 + v142.__cosval * v142.__cosval * -42697.6727 * v142.__cosval);
    v144 = __sincos_stret(v143);
    v145 = tan(v143 * 0.5 + 0.785398163);
    v146 = log(v145);
    v147.f64[0] = v170;
    v147.f64[1] = v146;
    __asm { FMOV            V1.2D, #0.5 }

    *&v183[8] = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v147);
    *v184 = (v140 / v144.__cosval + -6378137.0 / sqrt(v144.__sinval * v144.__sinval * -0.00669437999 + 1.0)) * 0.0000000249532021;
  }

  else
  {
    v28 = gdc::CameraView::position(v163);
    *&v183[8] = *v28;
    *v184 = *(v28 + 16);
  }

  v30 = *(v8 + 72);
  v29 = *(v8 + 80);
  v31 = tan(v24 + 0.785398163);
  v32 = log(v31);
  *&v180 = v30 * 0.159154943 + 0.5;
  *(&v180 + 1) = v32 * 0.159154943 + 0.5;
  v167 = *(&v180 + 1);
  v168 = *&v180;
  v182 = v180;
  v33 = 0.0;
  v34 = 0.0;
  if (v19)
  {
    v153 = *(v8 + 88);
    v34 = v29 + v153;
    v33 = v153 + v29 * (v7[4] * v7[5]);
  }

  v160 = v34;
  v161 = v33;
  v181 = v34 * 0.0000000249532021;
  *v183 = v33 * 0.0000000249532021;
  v35 = *v184 * 40075017.0;
  v36 = *&v183[8] * 6.28318531;
  v37 = exp(*&v183[16] * 6.28318531 + -3.14159265);
  v38 = atan(v37) * 2.0 + -1.57079633;
  v39 = fmod(v36, 6.28318531);
  v40 = fmod(v39 + 6.28318531, 6.28318531) + -3.14159265;
  v41 = __sincos_stret(v38);
  v42 = 6378137.0 / sqrt(1.0 - v41.__sinval * v41.__sinval * 0.00669437999);
  v43 = (v42 + v35) * v41.__cosval;
  v44 = __sincos_stret(v40);
  v177[0] = v43 * v44.__cosval;
  v177[1] = v43 * v44.__sinval;
  v177[2] = (v35 + v42 * 0.99330562) * v41.__sinval;
  v45 = exp(v167 * 6.28318531 + -3.14159265);
  v46 = atan(v45) * 2.0 + -1.57079633;
  v47 = fmod(v168 * 6.28318531, 6.28318531);
  v48 = fmod(v47 + 6.28318531, 6.28318531) + -3.14159265;
  v49 = __sincos_stret(v46);
  v50 = 6378137.0 / sqrt(1.0 - v49.__sinval * v49.__sinval * 0.00669437999);
  v51 = (v50 + v160) * v49.__cosval;
  v52 = __sincos_stret(v48);
  v53 = v51 * v52.__cosval;
  v54 = v51 * v52.__sinval;
  v172 = v53;
  v173 = *&v54;
  v55 = (v160 + v50 * 0.99330562) * v49.__sinval;
  v174 = v55;
  *buf.i64 = v168;
  *&buf.i64[1] = v167;
  v195 = v161;
  geo::Geocentric<double>::Geocentric<double>(&v175, buf.i64);
  v56 = sqrt(v53 * v53 + v54 * v54);
  v57 = atan2(v55, v56 * 0.996647189);
  v169 = atan2(v54, v53);
  v58 = __sincos_stret(v57);
  v59 = atan2(v55 + v58.__sinval * v58.__sinval * 42841.3115 * v58.__sinval, v56 + v58.__cosval * v58.__cosval * -42697.6727 * v58.__cosval);
  v60 = __sincos_stret(v59);
  v61 = tan(v59 * 0.5 + 0.785398163);
  v62 = v56 / v60.__cosval - 6378137.0 / sqrt(1.0 - v60.__sinval * v60.__sinval * 0.00669437999) + 1.0;
  v63 = atan(v61) * 2.0 + -1.57079633;
  v64 = fmod(v169 + 3.14159265, 6.28318531);
  v65 = fmod(v64 + 6.28318531, 6.28318531) + -3.14159265;
  v66 = __sincos_stret(v63);
  v67 = 6378137.0 / sqrt(1.0 - v66.__sinval * v66.__sinval * 0.00669437999);
  v68 = (v67 + v62) * v66.__cosval;
  v69 = __sincos_stret(v65);
  v70 = 0;
  *v201.i64 = v68 * v69.__cosval;
  *&v201.i64[1] = v68 * v69.__sinval;
  v202 = (v62 + v67 * 0.99330562) * v66.__sinval;
  do
  {
    *&buf.i64[v70] = *&v201.i64[v70] - *(&v172 + v70 * 8);
    ++v70;
  }

  while (v70 != 3);
  v71 = 0;
  v191 = buf;
  v192 = *&v195;
  v72 = 0.0;
  do
  {
    v72 = v72 + *&v191.i64[v71] * *&v191.i64[v71];
    ++v71;
  }

  while (v71 != 3);
  v73 = 0;
  v74 = 1.0 / sqrt(v72);
  do
  {
    *&buf.i64[v73] = *&v191.i64[v73] * v74;
    ++v73;
  }

  while (v73 != 3);
  v178 = buf;
  v179 = v195;
  v75 = *&v184[8] * 6.28318531;
  v76 = exp(*&v184[16] * 6.28318531 + -3.14159265);
  v77 = atan(v76) * 2.0 + -1.57079633;
  v78 = fmod(v75, 6.28318531);
  v79 = fmod(v78 + 6.28318531, 6.28318531) + -3.14159265;
  v80 = v185;
  v81 = __sincos_stret(v77);
  v82 = 6378137.0 / sqrt(v81.__sinval * v81.__sinval * -0.00669437999 + 1.0);
  v83 = (v82 + v80) * v81.__cosval;
  v84 = __sincos_stret(v79);
  v85 = 0;
  v177[3] = v83 * v84.__cosval;
  v177[4] = v83 * v84.__sinval;
  v177[5] = (v80 + v82 * 0.99330562) * v81.__sinval;
  do
  {
    *&buf.i64[v85] = v177[v85] - *(&v175 + v85 * 8);
    ++v85;
  }

  while (v85 != 3);
  v86 = 0;
  v201 = buf;
  v202 = v195;
  v87 = 0.0;
  do
  {
    v87 = v87 + *&v201.i64[v86] * *&v201.i64[v86];
    ++v86;
  }

  while (v86 != 3);
  v88 = 0;
  v89 = 1.0 / sqrt(v87);
  do
  {
    *&buf.i64[v88] = *&v201.i64[v88] * v89;
    ++v88;
  }

  while (v88 != 3);
  v191 = buf;
  v192 = *&v195;
  v90 = 0.0;
  do
  {
    v90 = v90 + *(&v172 + v88 * 8) * *(&v172 + v88 * 8);
    ++v88;
  }

  while (v88 != 6);
  v91 = 0;
  v92 = 1.0 / sqrt(v90);
  do
  {
    *&buf.i64[v91] = *(&v175 + v91 * 8) * v92;
    ++v91;
  }

  while (v91 != 3);
  v93 = 0;
  v94 = 0.0;
  do
  {
    v94 = v94 + *&buf.i64[v93] * *&v191.i64[v93];
    ++v93;
  }

  while (v93 != 3);
  v95 = v94 + 0.08;
  *(a1 + 388) = v94 + 0.08 >= 0.0;
  if (*&v162 == 0.0)
  {
    a4[208] = 0;
    v96 = a4 + 208;
    if (!*(a1 + 486))
    {
LABEL_60:
      md::PuckLogic::update3DPuckVisibility(a1, 0);
      return;
    }

    v97 = (a1 + 481);
  }

  else
  {
    v103 = *(v162 + 48) & (v94 + 0.08 >= 0.0);
    a4[208] = v103;
    v96 = a4 + 208;
    v97 = (a1 + 481);
    if (*(a1 + 486) == (v103 & 1))
    {
      goto LABEL_37;
    }
  }

  v98 = (a1 + 486);
  v99 = GEOGetVectorKitPuckLogicLog();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
  {
    v100 = *v98;
    v101 = *v96;
    v102 = *(v162 + 48);
    buf.i32[0] = 67110144;
    buf.i32[1] = v100;
    buf.i16[4] = 1024;
    *(&buf.i32[2] + 2) = v101;
    buf.i16[7] = 2048;
    v195 = *&v162;
    v196 = 1024;
    v197 = v102;
    v198 = 1024;
    v199 = v95 >= 0.0;
    _os_log_impl(&dword_1B2754000, v99, OS_LOG_TYPE_INFO, "State _puckFallbackState.shouldRenderPuck changed from %d to %d; puck: %p, enabled: %d, normalFacingCamera: %d", &buf, 0x24u);
  }

  v103 = *v96;
  *v98 = *v96;
LABEL_37:
  if ((v103 & 1) == 0)
  {
    goto LABEL_60;
  }

  std::string::basic_string[abi:nn200100]<0>(&buf, "puck");
  v104 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>(v166, &buf);
  if (SHIBYTE(v195) < 0)
  {
    operator delete(buf.i64[0]);
  }

  if (v104)
  {
    *(a1 + 488) = v104[5];
    *(a1 + 496) = 1;
  }

  std::string::basic_string[abi:nn200100]<0>(&buf, "regularPuck");
  v105 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>(v166 + 5, &buf);
  if (SHIBYTE(v195) < 0)
  {
    operator delete(buf.i64[0]);
  }

  if (v105)
  {
    *(a1 + 504) = v105[5];
    *(a1 + 512) = 1;
  }

  std::string::basic_string[abi:nn200100]<0>(&buf, "occludedPuck");
  v106 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::find<std::string>(v166 + 5, &buf);
  if (SHIBYTE(v195) < 0)
  {
    operator delete(buf.i64[0]);
  }

  if (v106)
  {
    *(a1 + 520) = v106[5];
    *(a1 + 528) = 1;
  }

  if (*(a1 + 496) == 1 && *(a1 + 512) == 1)
  {
    v107 = *(a1 + 528);
  }

  else
  {
    v107 = 0;
  }

  md::updateAndLogChange<BOOL>((a1 + 487), v107 & 1, "_puckFallbackState.nonTiledIDsFound");
  if (*(a1 + 536) == 1 && (*(a1 + 328) & 1) == 0)
  {
    md::PuckLogic::initializePuckRegistry(a1, v108);
  }

  if (!*(a1 + 288))
  {
    v127 = *(a1 + 272);
    buf.i8[0] = 0;
    v200 = 1;
    v128 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(v127 + 304, &buf);
    v129 = v127 + 312 == v128 ? 0 : *(v128 + 136);
    *(a1 + 288) = v129;
    if (v200 != -1)
    {
      (off_1F29EE280[v200])(&v191, &buf);
    }
  }

  v193[0] = &unk_1F29EE390;
  v193[1] = a1;
  v193[3] = v193;
  md::StyleLogicContext::parseEvents(v165, v193);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v193);
  v109 = *(a1 + 496) == 1 && std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v157 + 40), *(a1 + 488)) != 0;
  v171 = 0;
  v110 = md::SceneContext::layerDataInView(v158, 62)[2];
  v111 = *(a1 + 288);
  v156 = a3;
  if (v111)
  {
    gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material,md::components::Asset>(buf.i64, v111);
    v201.i8[0] = 1;
    v191.i64[0] = &v171;
    v191.i64[1] = a1;
    v192 = &v201;
    _ZNK3gdc12RegistryViewIJN2md10components19DynamicMeshInstanceENS2_8MaterialENS2_5AssetEEE4eachIZNS1_9PuckLogic15runBeforeLayoutERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_13CameraContextENS1_16ElevationContextENS1_17NavigationContextENS1_17StyleLogicContextENS1_22SharedResourcesContextENS1_15RegistryContextENS1_25IdentifiedResourceContextENS1_12SceneContextENS1_20NonTiledAssetContextEEEENSD_IJEEEEE20ResolvedDependenciesERNS1_11PuckContextEE3__1EEvT_(&buf, &v191);
    v112 = a4;
    v113 = v8;
    v114 = (a1 + 296);
    v115 = v171;
    v116 = v201.i8[0] & v171;
  }

  else
  {
    v112 = a4;
    v113 = v8;
    v114 = (a1 + 296);
    v116 = 0;
    v115 = v171;
  }

  md::updateAndLogChange<BOOL>(v97, v115 & 1, "_puckFallbackState.puckEntitiesExist");
  md::updateAndLogChange<BOOL>((a1 + 482), v116 & 1, "_puckFallbackState.puckEntitiesInjected");
  md::updateAndLogChange<BOOL>((a1 + 484), v109, "_puckFallbackState.puckAssetAvailable");
  md::updateAndLogChange<BOOL>((a1 + 485), v110 != 0, "_puckFallbackState.injectablesInView");
  v117 = gdc::ToCoordinateSystem(v163[3784]);
  md::updateAndLogChange<BOOL>((a1 + 483), v117, "_puckFallbackState.cameraTypeGlobe");
  v118 = 0;
  v119 = v116 & 1 & v109;
  v120 = v114;
  v121 = v113;
  v122 = v112;
  if (v119 == 1)
  {
    v123 = v156;
    if (v110)
    {
      v124 = +[VKDebugSettings sharedSettings];
      v118 = [v124 enable3DPuck];
    }
  }

  else
  {
    v123 = v156;
  }

  *(v122 + 209) = v118;
  md::updateAndLogChange<md::PuckRenderMode>((a1 + 480), v118);
  if (!*(a1 + 296))
  {
    v201.i32[0] = 5;
    v201.i16[2] = 14;
    v201.i32[2] = 65594;
    v201.i16[6] = 0;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v191, v201.i64, 2uLL);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&buf, &v191);
    gss::FeatureAttributeSet::sort(buf.i64[0], buf.i64[1]);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v191);
    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v191.i64, *v165, &buf);
    v130 = v191;
    v191 = 0uLL;
    v131 = *(a1 + 304);
    *v120 = v130;
    if (v131)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v131);
      if (v191.i64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v191.i64[1]);
      }
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&buf);
  }

  v125 = *(a2 + 16);
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  md::PuckStyleInfo::update(a1 + 120, v125, v121, v159, v165, v120, v126);
  if (!*(a1 + 193))
  {
    v133 = v120[2];
    v132 = v120 + 2;
    if (!v133)
    {
      v201.i32[0] = 5;
      v201.i16[2] = 14;
      v201.i32[2] = 65594;
      v201.i16[6] = 1;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v191, v201.i64, 2uLL);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&buf, &v191);
      gss::FeatureAttributeSet::sort(buf.i64[0], buf.i64[1]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v191);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v191.i64, *v165, &buf);
      v154 = v191;
      v191 = 0uLL;
      v155 = *(a1 + 320);
      *v132 = v154;
      if (v155)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v155);
        if (v191.i64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v191.i64[1]);
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&buf);
    }

    v134 = *(a2 + 16);
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
    md::PuckStyleInfo::update(a1 + 196, v134, v121, v159, v165, v132, v135);
  }

  md::PuckStyleInfo::operator=(v122 + 56, a1 + 120);
  md::PuckStyleInfo::operator=(v122 + 132, a1 + 196);
  if (!*(v122 + 209))
  {
    md::PuckLogic::update2DPuck(a1, a2, v123, v122);
  }

  md::PuckLogic::update3DPuck(a1, *a2, *v123, v123[2], v122, &v180, &v172);
  *(v122 + 8) = v182;
  *(v122 + 24) = *v183;
  *(v122 + 32) = v175;
  *(v122 + 48) = v176;
}

double *geo::Geocentric<double>::Geocentric<double>(double *a1, double *a2)
{
  v4 = *a2 * 6.28318531;
  v5 = exp(a2[1] * 6.28318531 + -3.14159265);
  v6 = atan(v5) * 2.0 + -1.57079633;
  v7 = fmod(v4, 6.28318531);
  v8 = fmod(v7 + 6.28318531, 6.28318531) + -3.14159265;
  v9 = a2[2];
  v10 = __sincos_stret(v6);
  v11 = 6378137.0 / sqrt(v10.__sinval * v10.__sinval * -0.00669437999 + 1.0);
  v12 = (v11 + v9) * v10.__cosval;
  v13 = __sincos_stret(v8);
  *a1 = v12 * v13.__cosval;
  a1[1] = v12 * v13.__sinval;
  a1[2] = (v9 + v11 * 0.99330562) * v10.__sinval;
  return a1;
}

uint64_t md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9AEE7E062376E454)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::PuckLogic::update3DPuckVisibility(md::PuckLogic *this, unsigned __int8 a2)
{
  v5 = a2;
  v2 = *(this + 36);
  if (v2)
  {
    gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>(v4.i64, v2);
    gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material,md::components::Visibility>::each<md::PuckLogic::update3DPuckVisibility(BOOL)::$_0>(&v4, &v5, this);
  }
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AssetLogic,md::AssetContext,md::LogicDependencies<gdc::TypeList<md::IdentifiedResourceContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x88B81689974D86F3)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x12B1E486D3040E2CuLL)[5] + 32);
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::AssetLogic::runBeforeLayoutAtVariableRate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v207 = *MEMORY[0x1E69E9840];
  v159 = *a3;
  v4 = *(*a3 + 224);
  v5 = +[VKDebugSettings sharedSettings];
  v156 = [v5 daVinciTintLODLevels];

  v182 = v186;
  v183 = v186;
  v184 = v186;
  v185 = 4;
  v177 = v181;
  v178 = v181;
  v179 = v181;
  v180 = 4;
  v6 = *(a1 + 120);
  v154 = a1;
  v155 = *(v6 + 384);
  v153 = *(v6 + 392);
  if (v155 != v153)
  {
    v7 = ((v4 * v4) * 4.0);
    do
    {
      i1 = *v155;
      v157 = gdc::Context::context<md::components::SharedTransformData>(*v155);
      v9 = gdc::Registry::storage<md::components::ReferencedAssetInstance>(i1);
      v10 = v9[7];
      v158 = v9[8];
      if (v10 != v158)
      {
        v11 = v9[10];
        v165 = (v11 + 12);
        v171 = i1;
        do
        {
          v160 = v10;
          v12 = *v10;
          v13 = gdc::Registry::storage<md::components::NonTiled>(i1);
          v168 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v13, v12);
          v14 = gdc::Registry::storage<md::components::SubtileZone>(i1);
          gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v14, v12);
          v15 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v159 + 40), *(v11 + 2));
          if (v15)
          {
            v16 = v15;
            v17 = v15[3];
            v18 = *(v17 + 368) - 1;
            if (v157)
            {
              v19 = 0;
              v20 = v187;
              v21 = v165;
              do
              {
                for (i = 0; i != 9; i += 3)
                {
                  *(v20 + i * 4) = v21[i];
                }

                ++v19;
                v20 = (v20 + 4);
                ++v21;
              }

              while (v19 != 3);
              if (*(v17 + 292) >= *(v17 + 280) && *(v17 + 296) >= *(v17 + 284) && *(v17 + 300) >= *(v17 + 288))
              {
                v141 = (v17 + 280);
                for (j = 292; j != 304; j += 4)
                {
                  v143 = v141[3];
                  v144 = *v141++;
                  *(&v187[6] + j + 12) = v143 - v144;
                }

                v23 = fmaxf(*&v198, 0.0);
                LODWORD(v24) = vmaxnm_f32(*(&v198 + 4), 0).u32[0];
              }

              else
              {
                v23 = *(v17 + 380);
                v24 = *(v17 + 384);
              }

              v25 = 0;
              *&v198 = *&v187[0];
              DWORD2(v198) = DWORD2(v187[0]);
              v26 = 0.0;
              do
              {
                v26 = v26 + (*(&v198 + v25) * *(&v198 + v25));
                v25 += 4;
              }

              while (v25 != 12);
              v27 = 0;
              *&v198 = *(v187 + 12);
              DWORD2(v198) = DWORD1(v187[1]);
              v28 = 0.0;
              do
              {
                v28 = v28 + (*(&v198 + v27) * *(&v198 + v27));
                v27 += 4;
              }

              while (v27 != 12);
              v29 = geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::find((v17 + 352), ((((v23 * *&v24) * sqrtf(v26)) * sqrtf(v28)) * v7 + 1.0));
              if ((v17 + 360) != v29)
              {
                v18 = *(v29 + 30);
              }
            }

            v197[0] = 0;
            v197[1] = 0;
            v196 = v197;
            v30 = v18;
            v31 = *(v17 + 232);
            if (v18 >= ((*(v17 + 240) - v31) >> 4))
            {
LABEL_189:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v162 = 16 * v18;
            v32 = *(v31 + v162);
            v33 = *v32;
            v34 = *(v32 + 8);
            if (*v32 != v34)
            {
              v172 = v30;
              v173 = v16;
              v169 = v12;
              do
              {
                if (*v33 != v33[1])
                {
                  operator new();
                }

                v33 += 4;
              }

              while (v33 != v34);
              v35 = v196;
              if (v196 != v197)
              {
                v36 = v173;
                v161 = v173[3];
                v37 = v156;
                if (!v30)
                {
                  v37 = 0;
                }

                v167 = v37;
                i1 = v171;
                v175 = v11;
                while (1)
                {
                  v38 = *(v36[3] + 232);
                  if (v30 >= (*(v36[3] + 240) - v38) >> 4)
                  {
                    goto LABEL_189;
                  }

                  v39 = *(v35 + 13);
                  v170 = *(v161 + 184) + 80 * v39;
                  v40 = *(v38 + v162);
                  v206 = 0;
                  v204 = 0;
                  v205 = 0uLL;
                  v203 = 0uLL;
                  v202 = 0;
                  v201 = 0uLL;
                  v194 = 0;
                  __src = 0;
                  v195 = 0;
                  v174 = v39;
                  v41 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((v40 + 72), v39);
                  v163 = v35;
                  if (v41)
                  {
                    std::vector<gdc::Entity>::reserve(&__src, 0xF0F0F0F0F0F0F0F1 * ((v41[4] - v41[3]) >> 2));
                    v42 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((v40 + 72), v174);
                    if (!v42)
                    {
                      abort();
                    }

                    v43 = v42[3];
                    for (k = v42[4]; v43 != k; v43 = (v43 + 68))
                    {
                      v45 = 0;
                      v187[0] = *v43;
                      v187[1] = *(v43 + 1);
                      v187[2] = *(v43 + 2);
                      v187[3] = *(v43 + 3);
                      v46 = v165;
                      do
                      {
                        v47 = 0;
                        v48 = v187;
                        do
                        {
                          v49 = 0;
                          v50 = 0.0;
                          v51 = v46;
                          do
                          {
                            v52 = *v51;
                            v51 += 3;
                            v50 = v50 + (*(v48 + v49) * v52);
                            v49 += 4;
                          }

                          while (v49 != 16);
                          *(&v198 + 3 * v47++ + v45) = v50;
                          ++v48;
                        }

                        while (v47 != 4);
                        ++v45;
                        ++v46;
                      }

                      while (v45 != 3);
                      if (*(v11 + 91) != 1 || md::OBBIntersectsXYAABB(&v198, (v170 + 36), &xmmword_1B33B0720))
                      {
                        v190 = 256;
                        v189 = 0;
                        v188 = 0;
                        v53 = *v11;
                        v187[0] = vextq_s8(*(v11 + 4), *(v11 + 4), 8uLL);
                        *(&v187[1] + 4) = v198;
                        v191 = 1;
                        LOWORD(v187[1]) = v53;
                        *(&v187[2] + 4) = v199;
                        *(&v187[3] + 4) = v200;
                        gdc::Registry::create(v171);
                      }
                    }
                  }

                  else if (*(v11 + 91) != 1 || md::OBBIntersectsXYAABB((v11 + 12), (v170 + 36), &xmmword_1B33B0720))
                  {
                    LOBYTE(v192) = 1;
                    *&v199 = 256;
                    v198 = 0uLL;
                    v54 = *v11;
                    v187[0] = vextq_s8(*(v11 + 4), *(v11 + 4), 8uLL);
                    LOWORD(v187[1]) = v54;
                    *(&v187[1] + 4) = *(v11 + 12);
                    *(&v187[2] + 4) = *(v11 + 20);
                    *(&v187[3] + 4) = *(v11 + 28);
                    gdc::Registry::create(i1);
                  }

                  v55 = __src;
                  if (v194 != __src)
                  {
                    break;
                  }

                  i1 = v171;
LABEL_154:
                  if (v55)
                  {
                    v194 = v55;
                    operator delete(v55);
                  }

                  v135 = v163;
                  v136 = v163[1];
                  if (v136)
                  {
                    do
                    {
                      v137 = v136;
                      v136 = *v136;
                    }

                    while (v136);
                  }

                  else
                  {
                    do
                    {
                      v137 = v135[2];
                      v138 = *v137 == v135;
                      v135 = v137;
                    }

                    while (!v138);
                  }

                  v35 = v137;
                  v12 = v169;
                  v30 = v172;
                  v36 = v173;
                  if (v137 == v197)
                  {
                    goto LABEL_164;
                  }
                }

                v56 = 0;
                i1 = v171;
                while (2)
                {
                  v57 = *&v55[8 * v56];
                  v58 = (48 * v56);
                  if (v168)
                  {
                    md::components::MeshInstance::MeshInstance(v187, v170, v58, 1, (v175 + 36), v174);
                    *(&v187[7] + 8) = v205;
                    *(&v187[8] + 1) = v206;
                    *&v187[7] = 0x3FF0000000000000;
                    *&v187[9] = 0x3FF0000000000000;
                    *(&v187[9] + 8) = v203;
                    *(&v187[10] + 1) = v204;
                    *&v187[11] = 0x3FF0000000000000;
                    *(&v187[11] + 8) = v201;
                    *(&v187[12] + 1) = v202;
                    v59 = gdc::Registry::storage<md::components::DynamicMeshInstance>(i1);
                    *&v198 = v57;
                    v60 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert((v59 + 32), &v198);
                    if (v61)
                    {
                      v63 = *(v59 + 88);
                      v62 = *(v59 + 96);
                      if (v63 >= v62)
                      {
                        v103 = *(v59 + 80);
                        v104 = 0x86BCA1AF286BCA1BLL * ((v63 - v103) >> 4);
                        v105 = v104 + 1;
                        if (v104 + 1 > 0xD79435E50D7943)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v106 = 0x86BCA1AF286BCA1BLL * ((v62 - v103) >> 4);
                        if (2 * v106 > v105)
                        {
                          v105 = 2 * v106;
                        }

                        if (v106 >= 0x6BCA1AF286BCA1)
                        {
                          v107 = 0xD79435E50D7943;
                        }

                        else
                        {
                          v107 = v105;
                        }

                        if (v107)
                        {
                          if (v107 <= 0xD79435E50D7943)
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v108 = 304 * v104;
                        memcpy((304 * v104), v187, 0x130uLL);
                        v109 = *(v59 + 80);
                        v110 = *(v59 + 88);
                        v111 = (v108 + v109 - v110);
                        if (v109 != v110)
                        {
                          v164 = (v108 + v109 - v110);
                          v112 = v164;
                          do
                          {
                            memcpy(v112, v109, 0x130uLL);
                            v109 += 304;
                            v112 += 304;
                          }

                          while (v109 != v110);
                          v109 = *(v59 + 80);
                          i1 = v171;
                          v111 = v164;
                        }

                        v64 = v108 + 304;
                        *(v59 + 80) = v111;
                        *(v59 + 88) = v108 + 304;
                        *(v59 + 96) = 0;
                        if (v109)
                        {
                          operator delete(v109);
                        }
                      }

                      else
                      {
                        memcpy(*(v59 + 88), v187, 0x130uLL);
                        v64 = v63 + 304;
                      }

                      *(v59 + 88) = v64;
                      v65 = *(v59 + 248);
LABEL_56:
                      for (m = *(v59 + 176); m; m = *m)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v65, &v198, 1);
                      }
                    }

                    else
                    {
                      v73 = 0;
                      v74 = *(v59 + 80) + 304 * ((v60 - *(v59 + 56)) >> 3);
                      v75 = v187[0];
                      v76 = v187[1];
                      *(v74 + 32) = v187[2];
                      *v74 = v75;
                      *(v74 + 16) = v76;
                      do
                      {
                        *(v74 + 36 + v73) = *(&v187[2] + v73 + 4);
                        v73 += 4;
                      }

                      while (v73 != 12);
                      for (n = 0; n != 12; n += 4)
                      {
                        *(v74 + 48 + n) = *(&v187[3] + n);
                      }

                      for (ii = 0; ii != 48; ii += 4)
                      {
                        *(v74 + 60 + ii) = *(&v187[3] + ii + 12);
                      }

                      for (jj = 0; jj != 96; jj += 8)
                      {
                        *(v74 + 112 + jj) = *(&v187[7] + jj);
                      }

                      for (kk = 0; kk != 96; kk += 8)
                      {
                        *(v74 + 208 + kk) = *(&v187[13] + kk);
                      }

                      v65 = *(v59 + 248);
                      if (v74 == *(v59 + 88))
                      {
                        goto LABEL_56;
                      }

                      for (mm = *(v59 + 128); mm; mm = *mm)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(mm[6], v65, &v198, 1);
                      }
                    }
                  }

                  else
                  {
                    md::components::MeshInstance::MeshInstance(v187, v170, v58, 1, (v175 + 36), v174);
                    v67 = gdc::Registry::storage<md::components::MeshInstance>(i1);
                    gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v67, v57, v187);
                  }

                  v68 = v173[3];
                  v11 = v175;
                  if (*(v68 + 376) != 1.0)
                  {
                    v69 = *&v55[8 * v56];
                    LODWORD(v187[0]) = *(v68 + 376);
                    v70 = gdc::Registry::storage<md::components::PositionScaleFactor>(i1);
                    gdc::ComponentStorageWrapper<md::components::PositionScaleFactor>::emplace(v70, v69, v187);
                  }

                  if (v167)
                  {
                    v71 = *&v55[8 * v56];
                    v72 = gdc::Registry::storage<md::components::AlbedoTint>(i1);
                    if (v172 == 1)
                    {
                      gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v72, v71, &kLOD1TintColor);
                    }

                    else
                    {
                      gdc::ComponentStorageWrapper<md::components::AlbedoTint>::emplace(v72, v71, &kLOD2TintColor);
                    }
                  }

                  v82 = *(v175 + 1);
                  v83 = v173[3];
                  if (v82)
                  {
                    v84 = *(v83 + 232);
                    v85 = *(v83 + 240);
                    v86 = v172;
                    v87 = 1;
                  }

                  else
                  {
                    v82 = v166 & 0xFFFFFFFFFFFFFF00;
                    v84 = *(v83 + 232);
                    v85 = *(v83 + 240);
                    v86 = v172;
                    v166 &= 0xFFFFFFFFFFFFFF00;
                    v87 = 0;
                  }

                  MaterialID = md::AssetData::getMaterialID(v84, v85, v86, v82, v87, v174);
                  if (MaterialID)
                  {
                    v89 = *&v55[8 * v56];
                    *&v187[0] = MaterialID;
                    v90 = gdc::Registry::storage<md::components::PendingMaterial>(i1);
                    gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v90, v89, v187);
                  }

                  if (*(v175 + 89) == 1)
                  {
                    v91 = *&v55[8 * v56];
                    v92 = i1;
                    v93 = *(v175 + 88);
                    v94 = gdc::Registry::storage<md::components::MarketMask>(v92);
                    *&v187[0] = v91;
                    v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v94 + 4, v187);
                    if (v96)
                    {
                      v98 = v94[11];
                      v97 = v94[12];
                      if (v98 >= v97)
                      {
                        v113 = v94[10];
                        v114 = v98 - v113 + 1;
                        if (v114 < 0)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v115 = v97 - v113;
                        if (2 * v115 > v114)
                        {
                          v114 = 2 * v115;
                        }

                        if (v115 >= 0x3FFFFFFFFFFFFFFFLL)
                        {
                          v116 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v116 = v114;
                        }

                        if (v116)
                        {
                          operator new();
                        }

                        v134 = v98 - v113;
                        *(v98 - v113) = v93;
                        v99 = v98 - v113 + 1;
                        memcpy(0, v113, v134);
                        v94[10] = 0;
                        v94[11] = v99;
                        v94[12] = 0;
                        if (v113)
                        {
                          operator delete(v113);
                        }
                      }

                      else
                      {
                        *v98 = v93;
                        v99 = (v98 + 1);
                      }

                      i1 = v171;
                      v94[11] = v99;
                      v101 = v94[31];
LABEL_119:
                      for (nn = v94[22]; nn; nn = *nn)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(nn[6], v101, v187, 1);
                      }
                    }

                    else
                    {
                      v100 = (v94[10] + ((v95 - v94[7]) >> 3));
                      *v100 = v93;
                      v101 = v94[31];
                      if (v100 == v94[11])
                      {
                        i1 = v171;
                        goto LABEL_119;
                      }

                      v102 = v94[16];
                      for (i1 = v171; v102; v102 = *v102)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v102[6], v101, v187, 1);
                      }
                    }

                    v11 = v175;
                  }

                  if (*(v11 + 90) == 1)
                  {
                    v118 = *&v55[8 * v56];
                    v119 = gdc::Registry::storage<md::components::Collapsible>(i1);
                    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v119, v118);
                  }

                  if (*(v11 + 92) == 1)
                  {
                    v120 = *&v55[8 * v56];
                    v121 = gdc::Registry::storage<md::components::HideWhenCollapsed>(i1);
                    *&v187[0] = v120;
                    v122 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v121 + 4, v187);
                    if (v123)
                    {
                      v124 = v121[11];
                      v125 = v121[12];
                      if (v124 >= v125)
                      {
                        v129 = v121[10];
                        v130 = v124 - v129 + 1;
                        if (v130 < 0)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v131 = v125 - v129;
                        if (2 * v131 > v130)
                        {
                          v130 = 2 * v131;
                        }

                        if (v131 >= 0x3FFFFFFFFFFFFFFFLL)
                        {
                          v132 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v132 = v130;
                        }

                        if (v132)
                        {
                          operator new();
                        }

                        v126 = v124 - v129 + 1;
                        memcpy(0, v129, v124 - v129);
                        v121[10] = 0;
                        v121[11] = v126;
                        v121[12] = 0;
                        if (v129)
                        {
                          operator delete(v129);
                        }

                        i1 = v171;
                      }

                      else
                      {
                        v126 = v124 + 1;
                      }

                      v121[11] = v126;
                      v127 = v121[31];
LABEL_144:
                      for (i2 = v121[22]; i2; i2 = *i2)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i2[6], v127, v187, 1);
                      }
                    }

                    else
                    {
                      v127 = v121[31];
                      if (v121[10] + ((v122 - v121[7]) >> 3) == v121[11])
                      {
                        goto LABEL_144;
                      }

                      for (i3 = v121[16]; i3; i3 = *i3)
                      {
                        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i3[6], v127, v187, 1);
                      }
                    }

                    v11 = v175;
                  }

                  addPreviousComponents(i1, v169, i1, *&v55[8 * v56++]);
                  v55 = __src;
                  if (v56 >= (v194 - __src) >> 3)
                  {
                    goto LABEL_154;
                  }

                  continue;
                }
              }

              i1 = v171;
            }

LABEL_164:
            v139 = v183;
            v140 = ((v183 - v182) >> 3) + 1;
            if (v185 < v140)
            {
              geo::small_vector_base<gdc::Entity>::grow(&v182, v140);
              v139 = v183;
            }

            *v139 = v12;
            ++v183;
            std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v197[0]);
          }

          v11 += 48;
          v10 = v160 + 1;
          v165 += 24;
        }

        while (v160 + 1 != v158);
      }

      v145 = v177;
      if (v178 != v177)
      {
        v150 = 0;
        do
        {
          v151 = v145[v150];
          LOBYTE(v187[0]) = v176[v150];
          v152 = gdc::Registry::storage<md::components::SubtileZone>(i1);
          gdc::ComponentStorageWrapper<md::components::SubtileZone>::emplace(v152, v151, v187);
          ++v150;
          v145 = v177;
        }

        while (v150 < (v178 - v177) >> 3);
      }

      v146 = v182;
      v147 = v183;
      if (v182 != v183)
      {
        do
        {
          v148 = *v146++;
          gdc::Registry::destroy(i1, v148);
        }

        while (v146 != v147);
        v146 = v182;
        v145 = v177;
      }

      v183 = v146;
      v178 = v145;
      ++v155;
    }

    while (v155 != v153);
  }

  std::unordered_set<unsigned long long>::unordered_set(v187, v159 + 80);
  LOBYTE(v196) = *(&v187[1] + 1) != 0;
  v149 = *(v154 + 120);
  *&v198 = &unk_1F29E6060;
  *(&v198 + 1) = v187;
  *&v199 = &v196;
  *(&v199 + 1) = &v198;
  md::RegistryManager::each(v149, &v198);
  std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](&v198);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v187);
  if (v177 != v179)
  {
    free(v177);
  }

  if (v182 != v184)
  {
    free(v182);
  }
}

void sub_1B2A0BFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55)
{
  if (a40 != a42)
  {
    free(a40);
  }

  if (a45 != a47)
  {
    free(a45);
  }

  if (a53 != a55)
  {
    free(a53);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i[2]);
  }

  return a1;
}

uint64_t gdc::Registry::storage<md::components::QueuedForDestruction<md::AssetLogic>>(uint64_t a1)
{
  v3 = 0xD0D1B23DCFF48A8BLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD0D1B23DCFF48A8BLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void std::__function::__func<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0,std::allocator<md::AssetLogic::buildAssetMeshInstances(md::IdentifiedResourceContext const&)::$_0>,void ()(gdc::Registry *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = gdc::Registry::storage<md::components::QueuedForDestruction<md::AssetLogic>>(*a2);
  if (*(v4 + 56) != *(v4 + 64))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
  }

  if (**(a1 + 16) == 1)
  {
    v5 = gdc::Registry::storage<md::components::Asset>(v3);
    v7 = v5[7];
    v6 = v5[8];
    if (v7 != v6)
    {
      v24 = *(a1 + 8);
      for (i = v5[10]; ; i += 72)
      {
        v9 = *v7;
        if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v24, *i))
        {
          break;
        }

        if (++v7 == v6)
        {
          return;
        }
      }

      v10 = gdc::Registry::storage<md::components::QueuedForDestruction<>>(v3);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, v9);
      v11 = gdc::Registry::storage<md::components::QueuedForDestruction<md::AssetLogic>>(v3);
      v25 = v9;
      v12 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v11 + 4, &v25);
      if (v13)
      {
        v14 = v11[11];
        v15 = v11[12];
        if (v14 >= v15)
        {
          v19 = v11[10];
          v20 = v14 - v19 + 1;
          if (v20 < 0)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v21 = v15 - v19;
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            operator new();
          }

          v16 = v14 - v19 + 1;
          memcpy(0, v19, v14 - v19);
          v11[10] = 0;
          v11[11] = v16;
          v11[12] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          v16 = v14 + 1;
        }

        v11[11] = v16;
        v17 = v11[31];
      }

      else
      {
        v17 = v11[31];
        if (v11[10] + ((v12 - v11[7]) >> 3) != v11[11])
        {
          for (j = v11[16]; j; j = *j)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v25, 1);
          }

LABEL_27:
          LOWORD(v25) = *(i + 16);
          v26 = vextq_s8(*i, *i, 8uLL);
          v27 = *(i + 20);
          v28 = *(i + 36);
          v29 = *(i + 52);
          v30 = 0;
          v31[0] = 0;
          *(v31 + 5) = 0;
          gdc::Registry::createWith<md::components::ReferencedAssetInstance>(v3);
        }
      }

      for (k = v11[22]; k; k = *k)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v17, &v25, 1);
      }

      goto LABEL_27;
    }
  }
}

void sub_1B2A0C674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::RegistryManager::each(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 384);
  v5 = *(result + 392);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = std::function<void ()(gdc::Registry *)>::operator()(*(a2 + 24), v6);
  }

  v7 = v3[51];
  v8 = v3[52];
  while (v7 != v8)
  {
    v11 = *v7++;
    result = std::function<void ()(gdc::Registry *)>::operator()(*(a2 + 24), v11);
  }

  v10 = v3[60];
  v9 = v3[61];
  while (v10 != v9)
  {
    v12 = *v10++;
    result = std::function<void ()(gdc::Registry *)>::operator()(*(a2 + 24), v12);
  }

  return result;
}

uint64_t std::function<void ()(gdc::Registry *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2A0C92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, void *a15)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(a15);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v15, v16);
  _Unwind_Resume(a1);
}

double md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x88B81689974D86F3);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x88B81689974D86F3))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x12B1E486D3040E2CuLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x12B1E486D3040E2CLL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xDFC317497CF9A4BFLL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xDFC317497CF9A4BFLL))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  v17 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v17;
  return result;
}

uint64_t md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD2404CDD1F9A6950)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD2404CDD1F9A6950)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::MaterialLogic::runBeforeLayoutAtVariableRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = *MEMORY[0x1E69E9840];
  md::MaterialLogic::_clearPendingTaggedRegistries(a1);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a4 + 8);
  *a4 = v7;
  *(a4 + 8) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v10 = *(a1 + 136);
  v9 = *(a1 + 144);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a4 + 24);
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(a3 + 32);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 184);
  *(a1 + 176) = v13;
  *(a1 + 184) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    v13 = *(a1 + 176);
  }

  if (*(a4 + 72) != 1)
  {
    goto LABEL_63;
  }

  if (!v13)
  {
    v16 = 0;
    *(a4 + 73) = 0;
LABEL_16:
    v17 = v16 & 1;
    goto LABEL_17;
  }

  v58 = atomic_load((v13 + 270));
  if (v58)
  {
    v13 = *(a1 + 176);
LABEL_63:
    v16 = 0;
    *(a4 + 73) = 0;
    if (v13)
    {
      v16 = atomic_load((v13 + 270));
    }

    goto LABEL_16;
  }

  v17 = 0;
  *(a4 + 73) = 1;
LABEL_17:
  *(a4 + 72) = v17;
  gms::MaterialManager<ggl::Texture2D>::setClientStyleState(*(a1 + 120), *(a1 + 176), *(a1 + 184));
  v18 = *(a3 + 8);
  for (i = *(v18 + 16); i; i = *i)
  {
    if (GEOGetVectorKitMaterialLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitMaterialLog_onceToken, &__block_literal_global_17);
    }

    v59 = GEOGetVectorKitMaterialLog_log;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = i[2];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v60;
      _os_log_impl(&dword_1B2754000, v59, OS_LOG_TYPE_DEBUG, "Flushing material id %lld", &buf, 0xCu);
    }

    v61 = *(a1 + 120);
    v62 = i[2];
    v63 = i[3];
    v64 = *(v63 + 184);
    __p[0] = *(v63 + 176);
    __p[1] = v64;
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(v61, v62, __p);
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }
  }

  std::vector<gdc::Entity>::vector[abi:nn200100](&buf, (v18 + 120));
  v20 = *(&buf + 1);
  v21 = buf;
  if (buf != *(&buf + 1))
  {
    do
    {
      gms::MaterialManager<ggl::Texture2D>::markAsFailedMaterial(*(a1 + 120), *v21++);
    }

    while (v21 != v20);
    v21 = buf;
  }

  if (v21)
  {
    *(&buf + 1) = v21;
    operator delete(v21);
  }

  v22 = *(*(v12 + 32) + 264);
  v23 = *(a1 + 168);
  *(a1 + 168) = v22;
  v24 = *(a1 + 152);
  v39 = v22 == v23;
  v25 = 384;
  if (v39)
  {
    v25 = 432;
  }

  v26 = *(v24 + 384);
  v27 = *(v24 + 392);
  if (v26 != v27)
  {
    v68 = v24 + v25;
    v28 = *(v24 + v25);
    do
    {
      v29 = *v26;
      if (v28 != *(v68 + 8) && v29 == *v28)
      {
        v42 = gdc::Registry::storage<md::components::Material>(*v26);
        gdc::RegistryView<md::components::Material>::each<md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_0>(v42, a1, v29);
        ++v28;
      }

      else
      {
        v30 = gdc::Registry::storage<md::components::FlexClientStateChanged>(*v26);
        v31 = gdc::Registry::storage<md::components::Material>(v29);
        v32 = v31;
        *&buf = v30;
        *(&buf + 1) = v31;
        v33 = v30 + 32;
        v34 = (v31 + 32);
        v37 = v30 + 56;
        v36 = *(v30 + 56);
        v35 = *(v37 + 8);
        if (*(v31 + 64) - *(v31 + 56) >= (v35 - v36))
        {
          v38 = v33;
        }

        else
        {
          v38 = (v31 + 32);
        }

        v39 = v33 != v38 || v36 == v35;
        if (!v39)
        {
          do
          {
            if (v32[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v34, *(v36 + 4)))
            {
              v66 = *v36;
              v65 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v32, *v36);
              md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_1::operator()(a1, v29, v66, v65);
            }

            v36 += 8;
          }

          while (v36 != v35);
        }

        if (v34 == v38)
        {
          gdc::RegistryView<md::components::FlexClientStateChanged,md::components::Material>::each<md::components::Material,md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_1>(&buf, a1, v29);
        }

        v40 = gdc::Registry::storage<md::components::FlexClientStateChanged>(v29);
        v41 = v40;
        if (v40[29])
        {
          v43 = v40[28];
          if (v43)
          {
            v44 = v40[31];
            v45 = v40[7];
            v46 = (v40[8] - v45) >> 3;
            do
            {
              std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v43[6], v44, v45, v46);
              v43 = *v43;
            }

            while (v43);
          }
        }

        v41[8] = v41[7];
        v41[11] = v41[10];
      }

      ++v26;
    }

    while (v26 != v27);
    v47 = *(a1 + 152);
    v26 = *(v47 + 384);
    v27 = *(v47 + 392);
  }

  v72 = 0;
  if (v26 == v27)
  {
    v57 = 0;
  }

  else
  {
    do
    {
      v48 = *v26;
      v49 = gdc::Registry::storage<md::components::PendingMaterial>(*v26);
      v71 = 0;
      v70 = 0;
      v50 = 0uLL;
      *__p = 0u;
      *&buf = a1;
      *(&buf + 1) = v48;
      v74 = __p;
      v75 = &v71;
      v76 = &v72;
      v51 = v49[7];
      v52 = v49[8];
      if (v51 != v52)
      {
        v55 = v49[10];
        do
        {
          md::MaterialLogic::_resolvePendingMaterials(md::MaterialContext &,md::StyleLogicContext const&,md::IdentifiedResourceContext const&)::$_0::operator()(&buf, *v51++, *v55++);
        }

        while (v51 != v52);
        v50 = *__p;
      }

      v54 = *(&v50 + 1);
      for (j = v50; j != v54; ++j)
      {
        v56 = gdc::Registry::storage<md::components::PendingMaterial>(v48);
        gdc::ComponentStorageWrapper<md::components::PendingMaterial>::remove(v56, *j);
      }

      if (v71 == 1)
      {
        LOWORD(buf) = *(v48 + 40);
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>((a1 + 192), buf);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v26;
    }

    while (v26 != v27);
    v57 = v72;
  }

  *(a4 + 74) = v57;
}

void sub_1B2A0D1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void *md::MaterialLogic::_clearPendingTaggedRegistries(md::MaterialLogic *this)
{
  for (i = *(this + 26); i; i = *i)
  {
    RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(this + 19), *(i + 8));
    if (RegistryByIdentifier)
    {
      v5 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(RegistryByIdentifier);
      gdc::ComponentStorageWrapper<md::components::DidResolvePendingMaterial>::clear(v5);
    }
  }

  return std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 24);
}

uint64_t gdc::Registry::storage<md::components::Material>(uint64_t a1)
{
  v3 = 0x299DE7A80C80C439;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x299DE7A80C80C439uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::PendingMaterial>(uint64_t a1)
{
  v3 = 0x251D10CE20A5B012;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x251D10CE20A5B012uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::RegistryView<md::components::Material>::each<md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_0>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[7];
  v4 = a1[8];
  if (v3 != v4)
  {
    v7 = a1[10];
    do
    {
      v8 = *v3++;
      v9 = gdc::Registry::storage<md::components::ClientState>(a3);
      v10 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v9, v8);
      md::MaterialLogic::_updateMaterialForComponent(a2, a3, v8, v7, v10);
      v7 += 3;
    }

    while (v3 != v4);
  }
}

void sub_1B2A0D7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C62190](v15, v16);
  _Unwind_Resume(a1);
}

double md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xD2404CDD1F9A6950);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xD2404CDD1F9A6950))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x88B81689974D86F3);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x88B81689974D86F3))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0xE42D19AFCA302E68))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xDFC317497CF9A4BFLL);
  if (v16 && (v17 = v16[5], *(v17 + 8) == 0xDFC317497CF9A4BFLL))
  {
    v18 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v19 && (v20 = v19[5], *(v20 + 8) == 0x1AF456233693CD46))
  {
    v21 = *(v20 + 32);
  }

  else
  {
    v21 = 0;
  }

  v22 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B9039CBDAB12E5CuLL);
  if (v22 && (v23 = v22[5], *(v23 + 8) == 0x1B9039CBDAB12E5CLL))
  {
    v24 = *(v23 + 32);
  }

  else
  {
    v24 = 0;
  }

  v25 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x12B1E486D3040E2CuLL);
  if (v25 && (v26 = v25[5], *(v26 + 8) == 0x12B1E486D3040E2CLL))
  {
    v27 = *(v26 + 32);
  }

  else
  {
    v27 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x9AEE7E062376E454);
  v29 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v21;
  a1[6] = v24;
  a1[7] = v27;
  a1[8] = v29;
  return result;
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::MeshRenderableLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *(a1 + 417) = 0;
  v5 = a4 + 40;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a4 + 40));
  *(a1 + 424) = v5;
  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v6 = GEOGetVectorKitPerformanceDetailsLog_log;
  v7 = v6;
  v8 = *(a2 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "updateDynamicMeshes", &unk_1B3514CAA, buf, 2u);
  }

  operator new();
}

void md::MeshRenderableBuilder::MeshRenderableBuilder(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a4[1];
  a1[2] = *a4;
  a1[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,0>();
}

void sub_1B2A0E698(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::DynamicMeshInstance>(uint64_t a1)
{
  v3 = 0xE6F642DE3173ADE3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xE6F642DE3173ADE3);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,void *> *>>(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v7 = (a1 + 16);
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v6)
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = v6;
      while (1)
      {
        v32[0] = v9 + 2;
        v32[1] = v9 + 3;
        std::pair<unsigned short &,std::vector<md::MeshRenderable *> &>::operator=[abi:nn200100]<unsigned short const,std::vector<md::MeshRenderable *>,0>(v32, (v2 + 2));
        v6 = *v9;
        v10 = *(v9 + 8);
        v9[1] = v10;
        v11 = *(a1 + 8);
        v12 = (*(a1 + 24) + 1);
        v13 = *(a1 + 32);
        if (!v11 || (v13 * v11) < v12)
        {
          v14 = 2 * v11;
          v15 = v11 < 3 || (v11 & (v11 - 1)) != 0;
          v16 = v15 | v14;
          v17 = vcvtps_u32_f32(v12 / v13);
          if (v16 <= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__rehash<false>(a1, v18);
          v11 = *(a1 + 8);
        }

        v19 = vcnt_s8(v11);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v10;
          if (v11 <= v10)
          {
            v20 = v10 % v11;
          }
        }

        else
        {
          v20 = (v11 - 1) & v10;
        }

        v21 = *a1;
        v22 = *(*a1 + 8 * v20);
        if (v22)
        {
          v23 = 0;
          do
          {
            v24 = v22;
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            v25 = v22[1];
            if (v19.u32[0] > 1uLL)
            {
              v26 = v22[1];
              if (v25 >= v11)
              {
                v26 = v25 % v11;
              }
            }

            else
            {
              v26 = v25 & (v11 - 1);
            }

            if (v26 != v20)
            {
              break;
            }

            v31 = v25 == v10 && *(v22 + 8) == *(v9 + 8);
            v27 = v31 != (v23 & 1);
            v28 = v23 & v27;
            v23 |= v27;
          }

          while (v28 != 1);
        }

        else
        {
          v24 = 0;
        }

        v29 = v9[1];
        if (v19.u32[0] <= 1uLL)
        {
          break;
        }

        if (v29 < v11)
        {
          goto LABEL_37;
        }

        v29 %= v11;
        if (v24)
        {
LABEL_47:
          *v9 = *v24;
          *v24 = v9;
          if (!*v9)
          {
            goto LABEL_42;
          }

          v30 = *(*v9 + 8);
          if (v19.u32[0] > 1uLL)
          {
            if (v30 >= v11)
            {
              v30 %= v11;
            }
          }

          else
          {
            v30 &= v11 - 1;
          }

          if (v30 == v29)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_38:
        *v9 = *v7;
        *v7 = v9;
        *(v21 + 8 * v29) = v7;
        if (!*v9)
        {
          goto LABEL_42;
        }

        v30 = *(*v9 + 8);
        if (v19.u32[0] > 1uLL)
        {
          if (v30 >= v11)
          {
            v30 %= v11;
          }
        }

        else
        {
          v30 &= v11 - 1;
        }

LABEL_41:
        *(*a1 + 8 * v30) = v9;
LABEL_42:
        ++*(a1 + 24);
        v2 = *v2;
        if (v6)
        {
          v9 = v6;
          if (v2)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      v29 &= v11 - 1;
LABEL_37:
      if (v24)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }

LABEL_57:
    std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__deallocate_node(v6);
  }

  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_multi<std::pair<unsigned short const,std::vector<md::MeshRenderable *>> const&>();
  }
}

uint64_t gdc::FlatTileSelector::tilesInView@<X0>(gdc::FlatTileSelector *this@<X0>, const gdc::CameraView *a2@<X1>, double a3@<D0>, int a4@<W2>, _DWORD *a5@<X8>)
{
  v5 = a2;
  memset(v107, 0, sizeof(v107));
  v108 = 1065353216;
  v104 = 0u;
  v105 = 0u;
  v106 = 1065353216;
  v117 = 0.0;
  v118 = 0.0;
  v119 = xmmword_1B33B0680;
  geo::Intersect::intersection<double>(&v115, a2 + 984, &v117);
  v8 = v115;
  v9 = v116;
  gm::Box<double,3>::boxEnclosingPoints(&v112, v115, v116);
  v10 = *&v112;
  v11 = *(&v113 + 1);
  v12 = xmmword_1B33B1410;
  v13 = 1;
  if (*&v112 <= *(&v113 + 1))
  {
    v14 = *(&v112 + 1);
    v15 = v114;
    if (*(&v112 + 1) <= v114)
    {
      v120 = 0uLL;
      v121 = 0xBFF0000000000000;
      v111[0] = gm::Quaternion<double>::operator*(v5 + 520, &v120);
      v111[1] = v16;
      v111[2] = v17;
      v18 = v5 + 496;
      if (v8 != v9)
      {
        v19 = 0.0;
        v20 = v8;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            *(&v120 + i * 8) = *&v20[i] - *&v18[i * 8];
          }

          v22 = 0;
          v23 = 0.0;
          do
          {
            v23 = v23 + *(&v120 + v22) * *(&v120 + v22);
            v22 += 8;
          }

          while (v22 != 24);
          v24 = sqrt(v23);
          if (v24 > v19)
          {
            v109 = *v20;
            v110 = v20[2];
            v19 = v24;
          }

          v20 += 3;
        }

        while (v20 != v9);
      }

      for (j = 0; j != 24; j += 8)
      {
        *(&v120 + j) = *(&v109 + j) - *&v18[j];
      }

      v26 = 0;
      v27 = 0.0;
      do
      {
        v27 = v27 + *&v111[v26] * *(&v120 + v26 * 8);
        ++v26;
      }

      while (v26 != 3);
      v101 = a3;
      for (k = 0; k != 24; k += 8)
      {
        *(&v120 + k) = *&v18[k] - *(&v109 + k);
      }

      v29 = v27;
      v30 = gm::Matrix<double,3,1>::normalized<int,void>(&v120);
      v32 = v31;
      LOWORD(v30) = *(v5 + 476);
      v33 = *&v30;
      LOWORD(v30) = *(v5 + 477);
      v34 = *&v30;
      v36 = *(v5 + 46);
      v35 = *(v5 + 47);
      if (v35 >= v36)
      {
        v47 = *(v5 + 57);
      }

      else
      {
        v37 = v35 * v36;
        v38 = v35 / v36;
        v99 = v32;
        v39 = v29;
        v40 = v10;
        v41 = v11;
        v42 = v14;
        v43 = v15;
        if (v37 <= 0.0)
        {
          v44 = 1.0;
        }

        else
        {
          v44 = v38;
        }

        v45 = tan(*(v5 + 57) * 0.5) * v44;
        v15 = v43;
        v14 = v42;
        v11 = v41;
        v10 = v40;
        v29 = v39;
        v32 = v99;
        v46 = atan(v45);
        v47 = v46 + v46;
      }

      v48 = tan(v47 * 0.5);
      v49 = v29 + v29;
      v50 = v49 * (v33 * v48) / (v34 * v33);
      *&v48 = v49 * v48 / (v32 * v34);
      v51 = *(this + 2) + -0.99 + (log2f(((*(this + 2) * *(this + 2)) * *&v48) * v50) * -0.5);
      v13 = vcvtms_s32_f32(fminf(fmaxf(v51, 1.0), 25.0));
      v52 = (1 << v13);
      v53 = vcvtmd_s64_f64(v10 * v52);
      v54 = vcvtmd_s64_f64(v11 * v52);
      v55 = vcvtmd_s64_f64(v14 * v52);
      v56 = (1 << v13) - 1;
      v57 = v55 & ~(v55 >> 31);
      if (v57 >= v56)
      {
        v57 = (1 << v13) - 1;
      }

      v58 = vcvtmd_s64_f64(v15 * v52);
      if (v58 <= v57)
      {
        v58 = v57;
      }

      if (v58 >= v56)
      {
        v58 = (1 << v13) - 1;
      }

      LODWORD(v12) = v53;
      DWORD1(v12) = v56 - v58;
      DWORD2(v12) = v54;
      HIDWORD(v12) = v56 - v57;
      a3 = v101;
    }
  }

  v96 = v13;
  if (v8)
  {
    v102 = v12;
    operator delete(v8);
    v12 = v102;
  }

  v93 = v12;
  v97 = DWORD2(v12) - v12;
  v92 = DWORD1(v12);
  v59 = *(this + 3);
  *(this + 4) = v59;
  v94 = HIDWORD(v12) - DWORD1(v12);
  v100 = v5;
  if (HIDWORD(v12) - DWORD1(v12) >= -1)
  {
    v60 = 0;
    v61 = 1.0 / (1 << v96);
    v62 = v12;
    v63 = ((1 << v96) + ~DWORD1(v12));
    do
    {
      if (v97 >= -1)
      {
        v65 = 0;
        v64 = v60;
        v66 = v61 + (v63 - v60) * v61;
        do
        {
          v117 = (v65 + v62) * v61;
          v118 = v66;
          v119 = xmmword_1B33B0740;
          *&v112 = gm::operator*<double,4,4,1>(v5 + 101, &v117);
          *(&v112 + 1) = v67;
          *&v113 = v68;
          *(&v113 + 1) = v69;
          v70 = *(this + 5);
          if (v59 >= v70)
          {
            v71 = *(this + 3);
            v72 = v59 - v71;
            v73 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v71) >> 4) + 1;
            if (v73 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v74 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v71) >> 4);
            if (2 * v74 > v73)
            {
              v73 = 2 * v74;
            }

            if (v74 >= 0x2AAAAAAAAAAAAAALL)
            {
              v75 = 0x555555555555555;
            }

            else
            {
              v75 = v73;
            }

            if (v75)
            {
              if (v75 <= 0x555555555555555)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v5 = v100;
            gdc::Corner::Corner(16 * ((v59 - v71) >> 4), (v100 + 952), &v112);
            if (v71 != v59)
            {
              v77 = v71;
              v78 = (v76 - v72);
              do
              {
                v79 = *v77;
                v80 = v77[2];
                v78[1] = v77[1];
                v78[2] = v80;
                *v78 = v79;
                v78 += 3;
                v77 += 3;
              }

              while (v77 != v59);
            }

            v59 = v76 + 48;
            *(this + 3) = v76 - v72;
            *(this + 4) = v76 + 48;
            *(this + 5) = 0;
            if (v71)
            {
              operator delete(v71);
            }
          }

          else
          {
            gdc::Corner::Corner(v59, v5 + 476, &v112);
            v59 += 48;
          }

          *(this + 4) = v59;
          ++v65;
        }

        while (v65 != v97 + 2);
      }

      else
      {
        v64 = v60;
      }

      v60 = v64 + 1;
    }

    while (v64 + 1 != v94 + 2);
  }

  v81 = *(v5 + 238);
  WORD1(v117) = (HIWORD(v81) * a3);
  LOWORD(v117) = (v81 * a3);
  if ((v94 & 0x80000000) == 0)
  {
    v103 = 0;
    v98 = 0;
    if (a4)
    {
      v82 = &v104;
    }

    else
    {
      v82 = 0;
    }

    v95 = (v94 + 1);
    v83 = 48 * (v97 + 2);
    do
    {
      if ((v97 & 0x80000000) == 0)
      {
        v84 = v93;
        v85 = v103;
        v86 = (v97 + 1);
        do
        {
          LOBYTE(v112) = -1;
          BYTE1(v112) = v96;
          DWORD1(v112) = v92 + v98;
          DWORD2(v112) = v84;
          *&v113 = 0;
          BYTE8(v113) = 1;
          gdc::FlatTileSelector::processTile(this, v100, &v117, &v112, *(this + 3) + v85 + v83, *(this + 3) + v85 + v83 + 48, *(this + 3) + v85 + 48, *(this + 3) + v85, v107, v82);
          v85 += 48;
          ++v84;
          --v86;
        }

        while (v86);
      }

      v103 += v83;
      ++v98;
    }

    while (v98 != v95);
  }

  if (a4)
  {
    v112 = 0u;
    v113 = 0u;
    LODWORD(v114) = 1065353216;
    for (m = v105; m; m = *m)
    {
      if (!std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(v107, m + 16))
      {
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(&v112, (m + 16));
      }
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__move_assign(&v104, &v112);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v112);
  }

  v88 = *(this + 2);
  *a5 = v88;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a5 + 2), v107);
  a5[12] = v88;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a5 + 14), &v104);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v104);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v107);
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void gdc::NonFlatTileSelector::tilesInView(gdc::NonFlatTileSelector *this, const gdc::CameraView *a2, double a3)
{
  *(this + 3) = gdc::NonFlatTileSelector::calculateLodConstant(a2, *(this + 2), a3);
  geo::Frustum<double>::edges(&v4, a2 + 984);
  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(0xCuLL);
}

void md::MeshRenderableLogic::runBeforeLayoutAtVariableRate(md::MeshRenderableLogic *this, uint64_t a2, uint64_t **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(this + 17);
  v7 = v6[51];
  v8 = v6[52];
  if (v7 != v8)
  {
    do
    {
      v15 = *v7;
      *buf = gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material>(*v7);
      v24 = v16;
      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::each<md::MeshRenderableLogic::cleanExitingEntities(void)::$_0>(buf, this);
      md::MeshRenderableLogic::clearInjectedRenderables(this, *(v15 + 40));
      v17 = gdc::Registry::storage<md::components::TexturedMeshInstance>(v15);
      if (*(v17 + 88) != *(v17 + 80))
      {
        v25 = *(v15 + 40);
        *buf = &v25;
        v18 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(this + 37, v25);
        v20 = v18[3];
        v19 = v18[4];
        while (v20 != v19)
        {
          v21 = *v20;
          if (*(*v20 + 8) == 3 && *(this + 30))
          {
            (**v21)(*v20);
            *v21 = *(this + 33);
            *(this + 33) = v21;
          }

          ++v20;
        }
      }

      std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__erase_unique<unsigned short>(this + 37, *(v15 + 40));
      v22 = *(this + 53);
      *buf = *(v15 + 40);
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v22, *buf);
      ++v7;
    }

    while (v7 != v8);
    v6 = *(this + 17);
  }

  v9 = v6[57];
  v10 = v6[58];
  while (v9 != v10)
  {
    *buf = *v9;
    v11 = *buf;
    md::MeshRenderableLogic::clearInjectedRenderables(this, *buf);
    std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__erase_unique<unsigned short>(this + 37, v11);
    std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(*(this + 53), v11);
    ++v9;
  }

  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v12 = GEOGetVectorKitPerformanceDetailsLog_log;
  v13 = v12;
  v14 = *(a2 + 80);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "updateStaticNonBatchedMeshes", &unk_1B3514CAA, buf, 2u);
  }

  md::MeshRenderableBuilder::MeshRenderableBuilder(buf, **a3, (*a3)[1], *a3 + 2);
}

void sub_1B2A107B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&a20);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&a26);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v26 - 136);
  md::MeshRenderableBuilder::~MeshRenderableBuilder(&a11);
  _Unwind_Resume(a1);
}

uint64_t gdc::FlatTileSelector::processTile(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (a9)
  {
    v10 = a8;
    v14 = *(a5 + 32);
    v15 = *(a6 + 32);
    v16 = *(a7 + 32);
    v17 = *(a8 + 32);
    if ((v15 & v14 & v16 & v17) == 0)
    {
      v21 = (a4 + 1);
      v20 = *(a4 + 1);
      if (v20 <= 0x18 && ((v23 = result, ((v15 | v14 | v16 | v17) & 1) != 0) || (v24 = *(a8 + 36), v25 = *(a5 + 36), v26 = vsub_f32(*(a7 + 36), v25), v27.i32[0] = vdup_lane_s32(v24, 1).u32[0], v24.i32[1] = *(a6 + 40), v27.i32[1] = *(a6 + 36), v28 = (*(result + 8) * *(result + 8)), v29 = vaddv_f32(vabs_f32(vmul_f32(vmla_f32(vmul_f32(vrev64_s32(v26), vsub_f32(v25, v24)), vsub_f32(v27, vrev64_s32(v25)), v26), 0x3F0000003F000000))), v30 = (a4 + 1), v31 = *(a4 + 1), v32 = exp2(*(result + 16) * -2.0 + 1.98), LOBYTE(v20) = v31, v21 = v30, v10 = a8, v32 * v28 < v29)))
      {
        v68 = v20;
        v60 = *a6;
        v62 = *(a6 + 16);
        v64 = *a5;
        v65 = *(a5 + 16);
        v66 = vaddq_f64(v62, v65);
        v67 = vaddq_f64(*a6, *a5);
        __asm { FMOV            V2.2D, #0.5 }

        v70 = _Q2;
        v75 = vmulq_f64(v67, _Q2);
        v76 = vmulq_f64(v66, _Q2);
        gdc::Corner::Corner(v77, a3, &v75);
        v58 = *(a7 + 16);
        v59 = *a7;
        v74[0] = vmulq_f64(vaddq_f64(*a7, v60), v70);
        v74[1] = vmulq_f64(vaddq_f64(v58, v62), v70);
        gdc::Corner::Corner(v78, a3, v74);
        v56 = *v10;
        v57 = *(v10 + 16);
        v61 = vaddq_f64(v57, v58);
        v63 = vaddq_f64(*v10, v59);
        v73[0] = vmulq_f64(v63, v70);
        v73[1] = vmulq_f64(v61, v70);
        gdc::Corner::Corner(v79, a3, v73);
        v72[0] = vmulq_f64(vaddq_f64(v64, v56), v70);
        v72[1] = vmulq_f64(vaddq_f64(v65, v57), v70);
        gdc::Corner::Corner(v80, a3, v72);
        __asm { FMOV            V2.2D, #0.25 }

        v71[0] = vmulq_f64(vaddq_f64(v63, v67), _Q2);
        v71[1] = vmulq_f64(vaddq_f64(v61, v66), _Q2);
        *&v39 = gdc::Corner::Corner(v81, a3, v71);
        v40 = *(a4 + 8);
        v41 = (2 * *(a4 + 4)) | 1;
        LOBYTE(v75.f64[0]) = -1;
        BYTE1(v75.f64[0]) = v68 + 1;
        HIDWORD(v75.f64[0]) = v41;
        LODWORD(v75.f64[1]) = 2 * v40;
        v76.f64[0] = 0.0;
        LOBYTE(v76.f64[1]) = 1;
        gdc::FlatTileSelector::processTile(v23, a2, a3, &v75, a5, v77, v81, v80, v39, a9, a10);
        v42 = *(a4 + 1) + 1;
        LOBYTE(v75.f64[0]) = -1;
        BYTE1(v75.f64[0]) = v42;
        *(v75.f64 + 4) = *&vadd_s32(*(a4 + 4), *(a4 + 4)) | 0x100000001;
        v76.f64[0] = 0.0;
        LOBYTE(v76.f64[1]) = 1;
        gdc::FlatTileSelector::processTile(v23, a2, a3, &v75, v77, a6, v78, v81, *(v75.f64 + 4), a9, a10);
        v43 = *(a4 + 1) + 1;
        v44 = 2 * *(a4 + 4);
        v45 = (2 * *(a4 + 8)) | 1;
        LOBYTE(v75.f64[0]) = -1;
        BYTE1(v75.f64[0]) = v43;
        *(v75.f64 + 4) = __PAIR64__(v45, v44);
        v76.f64[0] = 0.0;
        LOBYTE(v76.f64[1]) = 1;
        gdc::FlatTileSelector::processTile(v23, a2, a3, &v75, v81, v78, a7, v79, v46, a9, a10);
        v47 = *(a4 + 1) + 1;
        LOBYTE(v75.f64[0]) = -1;
        BYTE1(v75.f64[0]) = v47;
        *(v75.f64 + 4) = vadd_s32(*(a4 + 4), *(a4 + 4));
        v76.f64[0] = 0.0;
        LOBYTE(v76.f64[1]) = 1;
        return gdc::FlatTileSelector::processTile(v23, a2, a3, &v75, v80, v81, v79, v10, *(v75.f64 + 4), a9, a10);
      }

      else
      {
        v48 = (a4 + 8);
        v49 = 1.0 / (1 << v20);
        v50 = (a4 + 4);
        v51 = v49 * ((1 << v20) + ~*(a4 + 4));
        v52 = v49 * *(a4 + 8) + v49;
        v77[0] = v49 * *(a4 + 8);
        v77[1] = v51;
        v77[2] = 0.0;
        v77[3] = v52;
        v77[4] = v51 + v49;
        v77[5] = 0.0;
        result = geo::Intersect::encloses<double>(a2 + 984, v77);
        if (result)
        {
          result = std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(a9, a4);
          if (a10)
          {
            v53 = *v50;
            v54 = -1 << *v21;
            if (v54 <= -2 - *v50)
            {
              v54 = -2 - *v50;
            }

            LODWORD(v77[0]) = ~v54;
            if (v53 <= 1)
            {
              v55 = 1;
            }

            else
            {
              v55 = v53;
            }

            LODWORD(v75.f64[0]) = v55 - 1;
            if (*(a5 + 32))
            {
              LODWORD(v74[0]) = *v48 - 1;
              std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_impl<unsigned char const&,int const&,int>();
            }

            if (*(a6 + 32))
            {
              LODWORD(v74[0]) = *v48 + 1;
              std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_impl<unsigned char const&,int const&,int>();
            }

            if (*(a7 + 32))
            {
              LODWORD(v74[0]) = *v48 + 1;
              std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_impl<unsigned char const&,int const&,int>();
            }

            if (*(v10 + 32))
            {
              LODWORD(v74[0]) = *v48 - 1;
              std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_impl<unsigned char const&,int const&,int>();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(void *a1, unsigned __int16 a2)
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
      v4 = a2 % a1[1];
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

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t md::MeshRenderableLogic::updateStaticNonBatchedMeshes(md::CameraContext const&,md::MaterialContext const&)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>((a1 + 296), *(a2 + 40));
  v3 = gdc::Registry::storage<md::components::TexturedMeshInstance>(a2);
  if (*(v3 + 56) != *(v3 + 64))
  {
    operator new();
  }

  return 0;
}

void sub_1B2A115BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  a13 = &unk_1F2A3CEC8;
  *(v52 - 104) = v51;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v52 - 104));
  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a41);
  }

  md::MeshRenderable::~MeshRenderable(&a13);
  md::MeshRenderable::~MeshRenderable(&a51);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::components::TexturedMeshInstance>(uint64_t a1)
{
  v3 = 0xF135342237B2A4BFLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF135342237B2A4BFLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::MeshRenderableLogic::updateBatches(uint64_t a1, uint64_t a2)
{
  v50[5] = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v3 = GEOGetVectorKitPerformanceDetailsLog_log;
  v4 = v3;
  v5 = *(a2 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ProcessEnteringFeatures", &unk_1B3514CAA, buf, 2u);
  }

  v6 = *(a1 + 136);
  v50[0] = &unk_1F2A08408;
  v50[3] = v50;
  md::RegistryManager::entering(&v44, v6, v50);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v50);
  md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v42, &v44);
  md::FilteredIterator<std::vector<gdc::Registry *>>::end(v40, &v44);
  v37 = a1;
  while (v40[1] != *(&v42 + 1))
  {
    v7 = **(&v42 + 1);
    if (!gdc::Context::context<md::RenderBatchManager>(**(&v42 + 1)))
    {
      operator new();
    }

    v39 = gdc::Context::context<md::RenderBatchManager>(v7);
    v8 = gdc::Registry::storage<md::components::MeshInstance>(v7);
    v9 = gdc::Registry::storage<md::components::Material>(v7);
    v10 = v9;
    v11 = (v9 + 32);
    v12 = v8[7];
    v13 = v8[8];
    if (*(v9 + 64) - *(v9 + 56) >= (v13 - v12))
    {
      v14 = v8 + 4;
    }

    else
    {
      v14 = (v9 + 32);
    }

    v38 = v14;
    if (v8 + 4 == v14 && v12 != v13)
    {
      v15 = v8[10];
      do
      {
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11, *(v12 + 4));
        v17 = v10[8];
        if (v17 != Index)
        {
          v18 = *v12;
          v19 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11, HIDWORD(*v12));
          v20 = (v17 == v19 ? v10[11] : v10[10] + 24 * ((v19 - v10[7]) >> 3));
          buildMaterialKey(v7, v18, v15, v20, buf);
          if (v48 == 1)
          {
            md::RenderBatchManager::process(v39, buf, v18);
            if ((v48 & 1) != 0 && v47 != -1)
            {
              (*(&off_1F2A07AB8 + v47))(v49, buf);
            }
          }
        }

        v15 += 112;
        v12 += 8;
      }

      while (v12 != v13);
    }

    if (v11 == v38)
    {
      v21 = v10[7];
      v22 = v10[8];
      if (v21 != v22)
      {
        v23 = v10[10];
        do
        {
          v24 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v8 + 4, *(v21 + 4));
          v25 = v8[8];
          if (v25 != v24)
          {
            v26 = *v21;
            v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v8 + 4, HIDWORD(*v21));
            if (v25 == v27)
            {
              v28 = v8[11];
            }

            else
            {
              v28 = (v8[10] + 112 * ((v27 - v8[7]) >> 3));
            }

            buildMaterialKey(v7, v26, v28, v23, buf);
            if (v48 == 1)
            {
              md::RenderBatchManager::process(v39, buf, v26);
              if ((v48 & 1) != 0 && v47 != -1)
              {
                (*(&off_1F2A07AB8 + v47))(v49, buf);
              }
            }
          }

          v23 += 3;
          v21 += 8;
        }

        while (v21 != v22);
      }
    }

    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v42);
    a1 = v37;
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v41);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v43);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v45);
  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v29 = GEOGetVectorKitPerformanceDetailsLog_log;
  v30 = v29;
  v31 = *(a2 + 80);
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v30, OS_SIGNPOST_INTERVAL_END, v31, "ProcessEnteringFeatures", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v32 = GEOGetVectorKitPerformanceDetailsLog_log;
  v33 = v32;
  v34 = *(a2 + 80);
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v34, "ProcessUpdatedFeatures", &unk_1B3514CAA, buf, 2u);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v35 = *(a1 + 136);
  v40[0] = &unk_1F2A08538;
  v41[1] = v40;
  md::RegistryManager::each(v35, v40);
  std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](v40);
  operator new();
}

void sub_1B2A13810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a35);
  v48 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v50;
    operator delete(v50);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a41);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a47);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_0,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, md::TileSelectionLogic *a3@<X8>)
{
  v4 = *(a1 + 8);
  md::TileSelectionLogic::_elevationBoundsForTile(a3, v4, a2);
  if (*(a3 + 16) == 1)
  {
    if (*(v4 + 424) == 1)
    {
      *(v4 + 416) = fmin(*a3, *(v4 + 416));
    }

    else
    {
      *(v4 + 416) = *a3;
      *(v4 + 424) = 1;
    }
  }
}

double gm::Ray<double,3>::at(uint64_t a1, double a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v7 + i) = *(a1 + 24 + i) * a2;
  }

  v3 = 0;
  v5 = v7;
  v6 = v8;
  do
  {
    *(&v7 + v3) = *(&v5 + v3) + *(a1 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return *&v7;
}

void *gdc::Context::context<md::RenderBatchManager>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xCA93DB2C2ACE8387);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xCA93DB2C2ACE8387)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float32x2_t gdc::Corner::Corner(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a1 = *a3;
  *(a1 + 16) = v3;
  v5 = *(a3 + 16);
  result = *(a3 + 24);
  v6 = -*&result;
  if (v5 > *&result)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v5 >= v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9.f64[0] = *a3;
  v10 = *(a3 + 8);
  v11 = v8 | 8;
  if (*a3 <= *&result)
  {
    v11 = v8;
  }

  v12 = v8 | 4;
  if (v9.f64[0] >= v6)
  {
    v12 = v11;
  }

  v13 = v12 | 0x20;
  if (v10 <= *&result)
  {
    v13 = v12;
  }

  v14 = v12 | 0x10;
  if (v10 >= v6)
  {
    v14 = v13;
  }

  *(a1 + 32) = v14;
  if ((v14 & 1) == 0)
  {
    v9.f64[1] = v10;
    v15 = vdivq_f64(v9, vdupq_lane_s64(*&result, 0));
    v16.i32[0] = *a2;
    v16.i32[1] = a2[1];
    v17 = vcvt_f32_u32(v16);
    result = vmul_f32(vmla_f32(v17, vcvt_f32_f64(v15), v17), 0x3F0000003F000000);
    *(a1 + 36) = *&result;
  }

  return result;
}

void std::__function::__func<md::MeshRenderableLogic::processUpdates(md::MaterialContext const&)::$_0,std::allocator<md::MeshRenderableLogic::processUpdates(md::MaterialContext const&)::$_0>,void ()(gdc::Registry *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Context::context<md::RenderBatchManager>(*a2);
  if (v3)
  {
    v4 = v3;
    v5 = gdc::Registry::storage<md::components::QueuedForDestruction<>>(v2);
    v6 = gdc::Registry::storage<md::components::MeshInstance>(v2);
    v7 = v6;
    v8 = (v6 + 32);
    v10 = v5[7];
    v9 = v5[8];
    if (*(v6 + 64) - *(v6 + 56) >= (v9 - v10))
    {
      v11 = v5 + 4;
    }

    else
    {
      v11 = (v6 + 32);
    }

    if (v5 + 4 == v11 && v10 != v9)
    {
      do
      {
        if (*(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v8, *(v10 + 4)))
        {
          v15 = *v10;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v8, HIDWORD(*v10));
          v16 = v15;
          md::RenderBatchManager::removeEntity(v4, &v16);
        }

        v10 += 8;
      }

      while (v10 != v9);
    }

    if (v8 == v11)
    {
      v14 = *(v7 + 56);
      v13 = *(v7 + 64);
      while (v14 != v13)
      {
        if (v5[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v5 + 4, *(v14 + 4)))
        {
          v16 = *v14;
          md::RenderBatchManager::removeEntity(v4, &v16);
        }

        v14 += 8;
      }
    }
  }
}

uint64_t gdc::Registry::storage<md::components::VisibilityChanged>(uint64_t a1)
{
  v3 = 0xA58E035ED185DBF8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA58E035ED185DBF8);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

double geo::Frustum<double>::edges(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v65 + i) = *(a2 + i + 216) - *(a2 + i + 192);
  }

  v3 = v66;
  v4 = v65;
  *a1 = *(a2 + 192);
  *(a1 + 16) = *(a2 + 208);
  v5 = (a2 + 240);
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  v6 = 264;
  v7 = (a2 + 240);
  do
  {
    v8 = v7[3];
    v9 = *v7++;
    *(&v65 + v6 - 264) = v8 - v9;
    v6 += 8;
  }

  while (v6 != 288);
  v10 = v66;
  v11 = v65;
  *(a1 + 48) = *v5;
  *(a1 + 64) = *(a2 + 256);
  v12 = (a2 + 288);
  *(a1 + 72) = v11;
  *(a1 + 88) = v10;
  v13 = 312;
  v14 = (a2 + 288);
  do
  {
    v15 = v14[3];
    v16 = *v14++;
    *(&v65 + v13 - 312) = v15 - v16;
    v13 += 8;
  }

  while (v13 != 336);
  v17 = v66;
  v18 = v65;
  *(a1 + 96) = *v12;
  *(a1 + 112) = *(a2 + 304);
  v19 = (a2 + 336);
  *(a1 + 120) = v18;
  *(a1 + 136) = v17;
  v20 = 360;
  v21 = (a2 + 336);
  do
  {
    v22 = v21[3];
    v23 = *v21++;
    *(&v65 + v20 - 360) = v22 - v23;
    v20 += 8;
  }

  while (v20 != 384);
  v24 = 0;
  v25 = v66;
  v26 = v65;
  *(a1 + 144) = *v19;
  *(a1 + 160) = *(a2 + 352);
  *(a1 + 168) = v26;
  *(a1 + 184) = v25;
  do
  {
    *(&v65 + v24) = *(a2 + v24 + 240) - *(a2 + v24 + 192);
    v24 += 8;
  }

  while (v24 != 24);
  v27 = v66;
  v28 = v65;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v28;
  *(a1 + 232) = v27;
  v29 = 336;
  v30 = (a2 + 240);
  do
  {
    v31 = v30[12];
    v32 = *v30++;
    *(&v65 + v29 - 336) = v31 - v32;
    v29 += 8;
  }

  while (v29 != 360);
  v33 = v66;
  v34 = v65;
  *(a1 + 240) = *v5;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v34;
  *(a1 + 280) = v33;
  v35 = 288;
  v36 = (a2 + 336);
  do
  {
    v37 = *(v36 - 6);
    v38 = *v36++;
    *(&v65 + v35 - 288) = v37 - v38;
    v35 += 8;
  }

  while (v35 != 312);
  v39 = 0;
  v40 = v66;
  v41 = v65;
  *(a1 + 288) = *v19;
  *(a1 + 304) = *(a2 + 352);
  *(a1 + 312) = v41;
  *(a1 + 328) = v40;
  do
  {
    *(&v65 + v39) = *(a2 + v39 + 192) - *(a2 + v39 + 288);
    v39 += 8;
  }

  while (v39 != 24);
  v42 = v66;
  v43 = v65;
  *(a1 + 336) = *v12;
  *(a1 + 352) = *(a2 + 304);
  *(a1 + 360) = v43;
  *(a1 + 376) = v42;
  v44 = 264;
  v45 = (a2 + 216);
  do
  {
    v46 = v45[6];
    v47 = *v45++;
    *(&v65 + v44 - 264) = v46 - v47;
    v44 += 8;
  }

  while (v44 != 288);
  v48 = v66;
  v49 = v65;
  *(a1 + 384) = *(a2 + 216);
  *(a1 + 400) = *(a2 + 232);
  *(a1 + 408) = v49;
  *(a1 + 424) = v48;
  v50 = 360;
  v51 = (a2 + 264);
  do
  {
    v52 = v51[12];
    v53 = *v51++;
    *(&v65 + v50 - 360) = v52 - v53;
    v50 += 8;
  }

  while (v50 != 384);
  v54 = v66;
  v55 = v65;
  *(a1 + 432) = *(a2 + 264);
  *(a1 + 448) = *(a2 + 280);
  *(a1 + 456) = v55;
  *(a1 + 472) = v54;
  v56 = 312;
  v57 = (a2 + 360);
  do
  {
    v58 = *(v57 - 6);
    v59 = *v57++;
    *(&v65 + v56 - 312) = v58 - v59;
    v56 += 8;
  }

  while (v56 != 336);
  v60 = 0;
  v61 = v66;
  v62 = v65;
  *(a1 + 480) = *(a2 + 360);
  *(a1 + 496) = *(a2 + 376);
  *(a1 + 504) = v62;
  *(a1 + 520) = v61;
  do
  {
    *(&v65 + v60) = *(a2 + v60 + 216) - *(a2 + v60 + 312);
    v60 += 8;
  }

  while (v60 != 24);
  result = v66;
  v64 = v65;
  *(a1 + 528) = *(a2 + 312);
  *(a1 + 544) = *(a2 + 328);
  *(a1 + 552) = v64;
  *(a1 + 568) = result;
  return result;
}