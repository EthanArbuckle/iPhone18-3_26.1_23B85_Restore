uint64_t gdc::Registry::storage<md::components::Visibility>(uint64_t a1)
{
  v3 = 0xF44C196EC679B51CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xF44C196EC679B51CLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gm::Box<double,3>::boxEnclosingPoints(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(result + 16) = xmmword_1B33B0520;
  *(result + 32) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  while (a2 != a3)
  {
    for (i = 0; i != 24; i += 8)
    {
      v4 = (result + i);
      v5 = *(a2 + i);
      *v4 = fmin(v5, *(result + i));
      v4[3] = fmax(*(result + i + 24), v5);
    }

    a2 += 24;
  }

  return result;
}

uint64_t gdc::Registry::storage<md::components::CustomRenderStateChanged>(uint64_t a1)
{
  v3 = 0xB8E8DF22A2AE77B4;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB8E8DF22A2AE77B4);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::CustomRenderState>(uint64_t a1)
{
  v3 = 0x95242007408D7C0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x95242007408D7C0uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::NonFlatTileSelector::tileZForDepth(gdc::NonFlatTileSelector *this, double a2)
{
  if (a2 == 0.0)
  {
    return 25;
  }

  else
  {
    return fmin(fmax(*(this + 2) + log2(a2 * a2 * *(this + 3)) * -0.5, 1.0), 25.0);
  }
}

uint64_t md::RegistryManager::visitActiveCollectors<md::MeshRenderableLogic,CollectorKey>(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Registry *,gdc::EntityCollector *)>::__value_func[abi:nn200100](v12, a4);
  for (i = *(a1 + 56); i; i = *i)
  {
    v8 = i[3];
    v9 = i[4];
    while (v8 != v9)
    {
      if (*v8 == a2 && *(v8 + 8) == a3)
      {
        if (v8 != v9)
        {
          std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(v13, i[2], *(v8 + 16));
        }

        break;
      }

      v8 += 24;
    }
  }

  return std::__function::__value_func<void ()(gdc::Registry *,gdc::EntityCollector *)>::~__value_func[abi:nn200100](v12);
}

uint64_t std::__function::__value_func<void ()(gdc::Registry *,gdc::EntityCollector *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(gdc::Registry *,gdc::EntityCollector *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0,std::allocator<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1)
{
  v86 = a1[1];
  if (v86[1] == *v86)
  {
    return;
  }

  v2 = 0;
  v85 = a1[2];
  v83 = a1[3];
  v84 = a1[5];
  do
  {
    v92 = *(*v86 + 8 * v2);
    *&v111[0] = &v92;
    v3 = std::__hash_table<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::__unordered_map_hasher<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::hash<md::RenderBatch *>,std::equal_to<md::RenderBatch *>,true>,std::__unordered_map_equal<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::equal_to<md::RenderBatch *>,std::hash<md::RenderBatch *>,true>,std::allocator<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>>>::__emplace_unique_key_args<md::RenderBatch *,std::piecewise_construct_t const&,std::tuple<md::RenderBatch * const&>,std::tuple<>>(v85, v92);
    if (!*(v92 + 264))
    {
      goto LABEL_140;
    }

    v90 = v92;
    v88 = v2;
    v4 = v3[3];
    v5 = v3[4];
    v6 = *v83 + 8 * v4;
    v7 = *v83 + 8 * v5;
    memset(v110, 0, 24);
    __p = 0u;
    v108 = 0u;
    v109 = 1065353216;
    if (v7 <= v6)
    {
      goto LABEL_42;
    }

    v8 = 0;
    v9 = (8 * v5 - 8 * v4) >> 3;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = **(v6 + 8 * v8);
      v12 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
      v13 = 0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v12 >> 47) ^ v12);
      v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
      if (!*(&__p + 1))
      {
        goto LABEL_24;
      }

      v15 = vcnt_s8(*(&__p + 8));
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v1 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
        if (v14 >= *(&__p + 1))
        {
          v1 = v14 % *(&__p + 1);
        }
      }

      else
      {
        v1 = v14 & (*(&__p + 1) - 1);
      }

      v16 = *(__p + 8 * v1);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_24:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v14)
        {
          break;
        }

        if (v15.u32[0] > 1uLL)
        {
          if (v18 >= *(&__p + 1))
          {
            v18 %= *(&__p + 1);
          }
        }

        else
        {
          v18 &= *(&__p + 1) - 1;
        }

        if (v18 != v1)
        {
          goto LABEL_24;
        }

LABEL_23:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_24;
        }
      }

      if (v17[2] != v11)
      {
        goto LABEL_23;
      }

      v20 = v17[4];
      v19 = v17[5];
      if (v20 >= v19)
      {
        v22 = v17[3];
        v23 = v20 - v22;
        v24 = (v20 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
LABEL_142:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v26 = v19 - v22;
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

        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v27);
        }

        v28 = (v20 - v22) >> 3;
        v29 = (8 * v24);
        v1 = 8 * v24 - 8 * v28;
        *v29 = v8;
        v21 = v29 + 1;
        memcpy(v1, v22, v23);
        v30 = v17[3];
        v17[3] = v1;
        v17[4] = v21;
        v17[5] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v20 = v8;
        v21 = v20 + 8;
      }

      v17[4] = v21;
      ++v8;
    }

    while (v8 != v10);
    for (i = v108; i; i = *i)
    {
      if (((i[4] - i[3]) >> 3) >= 2)
      {
        operator new();
      }
    }

LABEL_42:
    v32 = v90;
    if (*(&v108 + 1))
    {
      if (*(&v108 + 1) == 1)
      {
        *&v111[0] = *(v6 + 8 * **(v108 + 24));
        LOBYTE(v113) = 0;
        if (*(&v110[0] + 1) >= *&v110[1])
        {
          v33 = std::vector<md::MeshRenderable>::__emplace_back_slow_path<std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&>(v110, v84 + 160, &v113, v111);
        }

        else
        {
          v33 = std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(*(&v110[0] + 1), *(v84 + 160), *(v84 + 168), &v113, v111) + 216;
        }

        *(&v110[0] + 1) = v33;
      }

      else
      {
        v34 = *(v90 + 224);
        if (v34 == -1)
        {
          v82 = std::__throw_bad_variant_access[abi:nn200100]();
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v103);
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v102);
          }

          if (v100)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v100);
          }

          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v98);
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v96);
          }

          if (v1)
          {
            operator delete(v1);
          }

          v113 = v110;
          std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v113);
          _Unwind_Resume(v82);
        }

        *&v111[0] = &v95;
        v35 = (off_1F2A2E348[v34])(v111, v90);
        v36 = *v35;
        v37 = v35[1];
        v95 = *v35;
        v96 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v35[3];
        v97 = v35[2];
        v98 = v38;
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = v35[5];
        v99 = v35[4];
        v100 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = v35[7];
        v101 = v35[6];
        v102 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v103 = 0u;
        v104 = 0u;
        v105 = 1065353216;
        v106 = 0;
        v93 = xmmword_1B33AFF10;
        v94 = 0x80000000800000;
        v41 = v108;
        if (v108)
        {
          v1 = 0;
          v42 = 0;
          do
          {
            v113 = v41[2];
            std::vector<gdc::Entity>::vector[abi:nn200100](v114, v41 + 3);
            v43 = *v114[0];
            v44 = *(v6 + 8 * *v114[0]);
            memset(v111 + 4, 0, 44);
            LODWORD(v111[0]) = 1065353216;
            LODWORD(v111[1]) = 1065353216;
            LODWORD(v111[2]) = 1065353216;
            if (fabsf(v44[15] + -1.0) >= 0.0001)
            {
              goto LABEL_66;
            }

            v45 = 0;
            do
            {
              if (v45 == 11)
              {
                goto LABEL_62;
              }

              v46 = v45 + 1;
              v47 = vabds_f32(v44[v45 + 16], *(v111 + v45 + 1));
              ++v45;
            }

            while (v47 < 0.0001);
            if ((v46 - 1) < 0xB)
            {
LABEL_66:
              v51 = (v42 >> 3) + 1;
              if (v51 >> 61)
              {
                goto LABEL_142;
              }

              if (v42 >> 3 != -1)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v51);
              }

              v57 = (8 * (v42 >> 3));
              *v57 = v43;
              v58 = v57 + 1;
              memcpy(0, 0, v42);
              v1 = 0;
              v42 = v58;
            }

            else
            {
LABEL_62:
              for (j = 0; j != 3; ++j)
              {
                v49 = (&v93 + j * 4);
                *v49 = fminf(v44[j + 9], *(&v93 + j * 4));
                v49[3] = fmaxf(*(&v93 + j * 4 + 12), v44[j + 12]);
              }

              v50 = *v44;
              if (**(**v44 + 64) == v95)
              {
                v89 = v42;
                v52 = 0x9DDFEA08EB382D69 * ((8 * (*v44 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v44));
                v53 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v52 >> 47) ^ v52);
                v54 = 0x9DDFEA08EB382D69 * (v53 ^ (v53 >> 47));
                if (!*(&v103 + 1))
                {
                  goto LABEL_86;
                }

                v55 = vcnt_s8(*(&v103 + 8));
                v55.i16[0] = vaddlv_u8(v55);
                if (v55.u32[0] > 1uLL)
                {
                  v56 = 0x9DDFEA08EB382D69 * (v53 ^ (v53 >> 47));
                  if (v54 >= *(&v103 + 1))
                  {
                    v56 = v54 % *(&v103 + 1);
                  }
                }

                else
                {
                  v56 = v54 & (*(&v103 + 1) - 1);
                }

                v59 = *(v103 + 8 * v56);
                if (!v59 || (v60 = *v59) == 0)
                {
LABEL_86:
                  operator new();
                }

                while (1)
                {
                  v61 = v60[1];
                  if (v61 == v54)
                  {
                    if (v60[2] == v50)
                    {
                      v42 = v89;
                      break;
                    }
                  }

                  else
                  {
                    if (v55.u32[0] > 1uLL)
                    {
                      if (v61 >= *(&v103 + 1))
                      {
                        v61 %= *(&v103 + 1);
                      }
                    }

                    else
                    {
                      v61 &= *(&v103 + 1) - 1;
                    }

                    if (v61 != v56)
                    {
                      goto LABEL_86;
                    }
                  }

                  v60 = *v60;
                  if (!v60)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }

            if (v114[0])
            {
              v114[1] = v114[0];
              operator delete(v114[0]);
            }

            v41 = *v41;
          }

          while (v41);
          v36 = v95;
        }

        else
        {
          v1 = 0;
          v42 = 0;
        }

        if (v36 && *(&v104 + 1) > 1uLL)
        {
          v116 = xmmword_1B33AFF10;
          v117 = 0x80000000800000;
          memset(v115, 0, sizeof(v115));
          if (!(*(&v104 + 1) >> 59))
          {
            v114[3] = v115;
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>>(*(&v104 + 1));
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        LOBYTE(v111[0]) = 0;
        v112 = 0;
        *&v116 = 0;
        std::unique_ptr<md::Mesh>::reset[abi:nn200100]((v90 + 280), 0);
        std::unique_ptr<md::Mesh>::reset[abi:nn200100](&v116, 0);
        if (*(v90 + 280))
        {
          v113 = *(v90 + 280);
          if (*(&v110[0] + 1) >= *&v110[1])
          {
            v63 = 0x84BDA12F684BDA13 * ((*(&v110[0] + 1) - *&v110[0]) >> 3) + 1;
            if (v63 > 0x12F684BDA12F684)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (0x97B425ED097B426 * ((*&v110[1] - *&v110[0]) >> 3) > v63)
            {
              v63 = 0x97B425ED097B426 * ((*&v110[1] - *&v110[0]) >> 3);
            }

            if (0x84BDA12F684BDA13 * ((*&v110[1] - *&v110[0]) >> 3) >= 0x97B425ED097B42)
            {
              v64 = 0x12F684BDA12F684;
            }

            else
            {
              v64 = v63;
            }

            *&v111[2] = v110;
            if (v64)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::MeshRenderable>>(v64);
            }

            *&v111[0] = 0;
            *(&v111[0] + 1) = 8 * ((*(&v110[0] + 1) - *&v110[0]) >> 3);
            v111[1] = *(&v111[0] + 1);
            std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::Mesh *,gm::Box<float,3> &,md::MeshRenderable*>(*(&v111[0] + 1), *(v84 + 160), *(v84 + 168), &v113, &v93);
            *&v111[1] += 216;
            v65 = *(&v111[0] + 1) + *&v110[0] - *(&v110[0] + 1);
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MeshRenderable>,md::MeshRenderable*>(*&v110[0], *(&v110[0] + 1), v65);
            v66 = *&v110[0];
            v67 = *&v110[1];
            *&v110[0] = v65;
            v91 = *&v111[1];
            *(v110 + 8) = v111[1];
            *&v111[1] = v66;
            *(&v111[1] + 1) = v67;
            *&v111[0] = v66;
            *(&v111[0] + 1) = v66;
            std::__split_buffer<md::MeshRenderable>::~__split_buffer(v111);
            v62 = v91;
            v1 = 0;
          }

          else
          {
            v62 = std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::Mesh *,gm::Box<float,3> &,md::MeshRenderable*>(*(&v110[0] + 1), *(v84 + 160), *(v84 + 168), &v113, &v93) + 216;
          }

          *(&v110[0] + 1) = v62;
        }

        if (v42)
        {
          v68 = *(&v110[0] + 1);
          for (k = 0; k != v42; ++k)
          {
            *&v111[0] = *(v6 + 8 * *k);
            LOBYTE(v113) = 0;
            if (v68 >= *&v110[1])
            {
              v68 = std::vector<md::MeshRenderable>::__emplace_back_slow_path<std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&>(v110, v84 + 160, &v113, v111);
            }

            else
            {
              v68 = std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(v68, *(v84 + 160), *(v84 + 168), &v113, v111) + 216;
            }

            *(&v110[0] + 1) = v68;
          }
        }

        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v103);
        if (v102)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v102);
        }

        if (v100)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v100);
        }

        v32 = v90;
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v98);
        }

        if (v96)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v96);
        }
      }
    }

    v70 = v110[0];
    v111[0] = v110[0];
    v71 = *&v110[1];
    *&v111[1] = *&v110[1];
    memset(v110, 0, 24);
    BYTE8(v111[1]) = 1;
    if (!*(v32 + 312))
    {
      *(v32 + 288) = v70;
      *(v32 + 304) = v71;
      memset(v111, 0, 24);
      *(v32 + 312) = 1;
      v2 = v88;
LABEL_136:
      v113 = v111;
      std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](&v113);
      goto LABEL_137;
    }

    v1 = v32;
    v72 = *(v32 + 288);
    v2 = v88;
    if (!v72)
    {
      *(v1 + 288) = v70;
      *(v1 + 304) = v71;
      memset(v111, 0, 24);
      v32 = v1;
      goto LABEL_136;
    }

    v73 = *(v1 + 296);
    v74 = v72;
    if (v73 != v72)
    {
      v75 = v73 - 216;
      v76 = v73 - 216;
      v77 = v73 - 216;
      do
      {
        v78 = *v77;
        v77 -= 216;
        (*v78)(v76);
        v75 -= 216;
        v79 = v76 == v72;
        v76 = v77;
      }

      while (!v79);
      v1 = v90;
      v74 = *(v90 + 288);
    }

    *(v1 + 296) = v72;
    operator delete(v74);
    *(v1 + 288) = 0;
    *(v1 + 296) = 0;
    *(v1 + 304) = 0;
    v80 = *&v111[1];
    v81 = BYTE8(v111[1]);
    *(v1 + 288) = v111[0];
    *(v1 + 304) = v80;
    memset(v111, 0, 24);
    v32 = v1;
    if (v81)
    {
      goto LABEL_136;
    }

LABEL_137:
    if (*(v32 + 352))
    {
      *(v32 + 352) = 0;
    }

    *&v111[0] = v110;
    std::vector<md::MeshRenderable>::__destroy_vector::operator()[abi:nn200100](v111);
LABEL_140:
    ++v2;
  }

  while (v2 < (*(a1[1] + 8) - *a1[1]) >> 3);
}

void md::MeshRenderableLogic::gatherRenderables(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[18] = *MEMORY[0x1E69E9840];
  *(a1 + 417) = 1;
  md::MeshRenderableBuilder::MeshRenderableBuilder(v3, *a3, a3[1], a3 + 2);
}

void md::MeshRenderableBuilder::~MeshRenderableBuilder(md::MeshRenderableBuilder *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

id GEOGetVectorKitMeshRenderableLogicLog(void)
{
  if (GEOGetVectorKitMeshRenderableLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitMeshRenderableLogicLog(void)::onceToken, &__block_literal_global_12613);
  }

  v1 = GEOGetVectorKitMeshRenderableLogicLog(void)::log;

  return v1;
}

void ___ZL37GEOGetVectorKitMeshRenderableLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "MeshRenderableLogic");
  v1 = GEOGetVectorKitMeshRenderableLogicLog(void)::log;
  GEOGetVectorKitMeshRenderableLogicLog(void)::log = v0;
}

void sub_1B2A17398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11);
  _Unwind_Resume(a1);
}

void md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::allocateContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA588623CD4116DAELL)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xE42D19AFCA302E68)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xF014CCE28176CA44);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0xF014CCE28176CA44))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

void md::LabelsLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, unsigned __int8 **a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 252))
  {
LABEL_2:
    v8 = 0;
    v9 = *(a1 + 160);
    atomic_compare_exchange_strong((v9 + 3053), &v8, 1u);
    if (!v8)
    {
      v10 = atomic_load((v9 + 3053));
      if (v10)
      {
        v11 = *(v9 + 136);
        if (v11)
        {
          v12 = *(v11 + 56);
          if (v12)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v12, v9, 9);
          }
        }
      }
    }

    goto LABEL_25;
  }

  v13 = md::LayoutContext::get<md::SettingsContext>(*(a2 + 1));
  v14 = *v13;
  v15 = v13[1];
  while (1)
  {
    if (v14 == v15)
    {
      goto LABEL_13;
    }

    if (*v14 == 30)
    {
      break;
    }

    v14 += 16;
  }

  if (v14 != v15 && *(v14 + 8))
  {
LABEL_53:
    *(a1 + 252) = 1;
    goto LABEL_19;
  }

LABEL_13:
  if (*(a1 + 256) != 0.0)
  {
    md::LayoutContext::frameState(a2);
    if (*(v37 + 88) - *(a1 + 256) < 1.0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v16 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LabelsLayoutWillWaitForDataLoad", &unk_1B3514CAA, buf, 2u);
  }

  md::LayoutContext::frameState(a2);
  *(a1 + 256) = *(v17 + 88);
LABEL_19:
  if (*(a1 + 252) == 1)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v18 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LabelsLayoutCompletedWaitForDataLoad", &unk_1B3514CAA, buf, 2u);
    }

    if (*(a1 + 252))
    {
      goto LABEL_2;
    }
  }

LABEL_25:
  v19 = *a3;
  if ((*a3)[82] == 1)
  {
    v42 = 0;
    operator new();
  }

  v20 = *(a1 + 160);
  v21 = *(a1 + 220);
  if (*(v20 + 3588) != v21)
  {
    md::LabelManager::setMapType(v20, v21);
    v20 = *(a1 + 160);
  }

  v22 = *(a1 + 224);
  if (*(v20 + 3592) != v22)
  {
    md::LabelManager::setMapsUsage(v20, v22);
    v20 = *(a1 + 160);
  }

  v23 = v19[92];
  if (*(v20 + 3595) != v23)
  {
    md::LabelManager::setEmphasis(v20, v23);
    v20 = *(a1 + 160);
  }

  v24 = v19[93];
  if (*(v20 + 3596) != v24)
  {
    md::LabelManager::setGroundMode(v20, v24);
    v20 = *(a1 + 160);
  }

  v25 = v19[98];
  if (*(v20 + 3613) != v25)
  {
    *(v20 + 3613) = v25;
    *buf = &unk_1F2A118E8;
    v39 = v20;
    LOBYTE(v40) = v25;
    v41 = buf;
    memset(&v40 + 1, 0, 7);
    md::LabelManager::queueCommand(v20, 71, 1, buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
  }

  v26 = a3[1];
  if (v26 && v26[80] == 1)
  {
    v27 = *(a1 + 160);
    *buf = &unk_1F2A1CA20;
    v39 = v27;
    v41 = buf;
    md::LabelManager::queueCommand(v27, 20, 1, buf);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
  }

  md::LabelManager::setNavMode(*(a1 + 160), v19[96] == 1);
  md::LabelManager::setInOverviewMode(*(a1 + 160), v19[84]);
  v28 = *(*(**(a1 + 144) + 40) + 296);
  v29 = *(*(**(a1 + 144) + 40) + 304);
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = *(a1 + 128);
  *(a1 + 120) = v28;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v31 = *(a1 + 160);
  *(a1 + 136) = v31;
  if (v19[85] == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  md::LabelManager::setLabelMode(v31, v32);
  v33 = *(a1 + 160);
  *(v33 + 1664) = md::LayoutContext::get<md::VenueLogicContext>(*(a2 + 1));
  (*(**(v33 + 240) + 16))(*(v33 + 240));
  v35 = *(a1 + 120);
  v34 = *(a1 + 128);
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = a4[1];
  *a4 = v35;
  a4[1] = v34;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  a4[2] = *(a1 + 136);
}

void sub_1B2A17C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelsLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::ResolvedDependencies const&,md::LabelsContext &)::$_0,std::allocator<md::LabelsLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::ResolvedDependencies const&,md::LabelsContext &)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, _BYTE *a2)
{
  v2 = result;
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(result + 16);
  if (v3 <= 1)
  {
    if (*a2)
    {
      if (v3 == 1)
      {
        v5 = v4[20];
        if ((*(*(result + 8) + 80) & 1) == 0)
        {
          *(v5 + 3414) = 1;
          *(v5 + 3036) = 1;
          *(v5 + 3038) = 1;
          *(v5 + 3040) = 1;
          v6 = atomic_load((v5 + 3053));
          if (v6)
          {
            v7 = *(v5 + 136);
            if (v7)
            {
              v8 = *(v7 + 56);
              if (v8)
              {
                std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v8, v5, 9);
              }
            }
          }

          *(v5 + 3415) = 1;
        }

        operator new();
      }

      return result;
    }

LABEL_15:
    v9 = v4[30];
    v4[29] = 0;
    v4[30] = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    md::LabelManager::setStyleManager(v4[20], **(v2 + 24), *(*(v2 + 24) + 8));
    md::LabelManager::setSceneManager(v4[20], **(v2 + 32), *(*(v2 + 32) + 8));
  }

  switch(v3)
  {
    case 2u:
      v10 = v4[20];
      v11 = atomic_load((v10 + 3053));
      if (v11)
      {
        v12 = *(v10 + 136);
        if (v12)
        {
          result = *(v12 + 56);
          if (result)
          {

            return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v10, 9);
          }
        }
      }

      return result;
    case 3u:
      v13 = v4[20];
      v14[0] = &unk_1F2A2F470;
      v14[1] = v13;
      v14[3] = v14;
      md::LabelManager::queueCommand(v13, 29, 0, v14);
      return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
    case 4u:
      goto LABEL_15;
  }

  return result;
}

void sub_1B2A17F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::stylesheetDidChange(void)::$_0,std::allocator<md::LabelManager::stylesheetDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2F428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::stylesheetDidTransition(void)::$_0,std::allocator<md::LabelManager::stylesheetDidTransition(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2F470;
  a2[1] = v2;
  return result;
}

int *gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(int *result, int a2, int a3, _BYTE *a4, float a5)
{
  v5 = a4;
  v7 = a5;
  if (a5 >= 0x17)
  {
    v8 = 23;
  }

  else
  {
    v8 = a5;
  }

  if (v7 >= 0x16)
  {
    v9 = 22;
  }

  else
  {
    v9 = v7;
  }

  v10 = *&result[4 * a3 + 4];
  if (!v10)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }

  v11 = v9 + 1;
  v12 = &result[4 * a3];
  if (*(v12 + 28))
  {
    v13 = 0;
    v27 = *(v12 + 6);
    v34 = &v27[*(v12 + 28)];
LABEL_26:
    LOBYTE(v28) = 0;
    while (1)
    {
      v29 = *v27;
      if (v28)
      {
        goto LABEL_32;
      }

      v30 = *(v29 + 72);
      if (v30)
      {
        v31 = *v30 + 120 * *(v30 + v8 + 16);
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v31, a2);
        if (result != *(v31 + 12))
        {
          break;
        }
      }

      v28 = 0;
LABEL_33:
      if (v13)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_50:
        v20 = 1;
        v26 = 1;
        v5 = a4;
        goto LABEL_22;
      }

      v32 = *(v29 + 72);
      if (v32)
      {
        v33 = *v32 + 120 * *(v32 + v11 + 16);
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, a2);
        if (result != *(v33 + 12))
        {
          result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(v32, a2, v11);
          if (v28)
          {
            goto LABEL_50;
          }

LABEL_42:
          ++v27;
          v13 = 1;
          v5 = a4;
          if (v27 == v34)
          {
            goto LABEL_10;
          }

          goto LABEL_26;
        }
      }

      v13 = 0;
      if (++v27 == v34)
      {
        if (!v28)
        {
          v13 = 0;
          v5 = a4;
          goto LABEL_10;
        }

        v14 = *(v10 + 72);
        v20 = 1;
        v5 = a4;
        goto LABEL_16;
      }
    }

    result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(v30, a2, v8);
LABEL_32:
    v28 = 1;
    goto LABEL_33;
  }

  v13 = 0;
LABEL_10:
  v14 = *(v10 + 72);
  if (!v14 || (v15 = *(v14 + v8 + 16), v16 = *v14, v17 = *v14 + 120 * *(v14 + v8 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, a2) == *(v17 + 12)))
  {
    result = gss::defaultValueForKey<gss::PropertyID,float>(a2);
    v20 = 0;
  }

  else
  {
    v18 = v16 + 120 * v15;
    v19 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v18 + 48), a2);
    if (v19 == *(v18 + 60))
    {
      result = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      result = (*(v18 + 48) + *(v18 + 56) + 4 * v19);
    }

    v20 = 1;
  }

  if (v13)
  {
    v26 = 1;
  }

  else
  {
LABEL_16:
    if (!v14 || (v21 = *(v14 + v11 + 16), v22 = *v14, v23 = *v14 + 120 * v21, geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, a2) == *(v23 + 12)))
    {
      result = gss::defaultValueForKey<gss::PropertyID,float>(a2);
      v26 = 0;
    }

    else
    {
      v24 = v22 + 120 * v21;
      v25 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v24 + 48), a2);
      if (v25 == *(v24 + 60))
      {
        result = &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }

      else
      {
        result = (*(v24 + 48) + *(v24 + 56) + 4 * v25);
      }

      v26 = 1;
    }
  }

LABEL_22:
  if (v5)
  {
    *v5 = v20 | v26;
  }

  return result;
}

void md::LayoutContext::labelZoom(md::LayoutContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(this + 736) & 1) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v2 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_frameState.has_value()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
      v9 = 1024;
      v10 = 92;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
    }

    if ((*(this + 736) & 1) == 0)
    {
      v3 = std::__throw_bad_optional_access[abi:nn200100]();
      md::LabelSettings_Navigation::setPuckSize(v3, v4);
    }
  }
}

uint64_t md::LabelSettings_Navigation::setPuckSize(std::mutex *this, float a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2A12278;
  v3[1] = this;
  v3[2] = LODWORD(a2);
  v3[3] = v3;
  md::LabelManager::queueCommand(this, 35, 1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B2A184A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setNavigationPuckSize(float)::$_0,std::allocator<md::LabelManager::setNavigationPuckSize(float)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12278;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

std::mutex *md::LabelManager::setEmphasis(std::mutex *result, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (result[56].__m_.__opaque[3] != a2)
  {
    result[56].__m_.__opaque[3] = a2;
    v2[0] = &unk_1F2A11858;
    v2[1] = result;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 46, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2A18590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::mutex *md::LabelManager::setGroundMode(std::mutex *result, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (result[56].__m_.__opaque[4] != a2)
  {
    result[56].__m_.__opaque[4] = a2;
    v2[0] = &unk_1F2A118A0;
    v2[1] = result;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 65, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2A18650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setEmphasis(gss::Emphasis)::$_0,std::allocator<md::LabelManager::setEmphasis(gss::Emphasis)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<md::LabelManager::setGroundMode(gss::GroundMode)::$_0,std::allocator<md::LabelManager::setGroundMode(gss::GroundMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A118A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

char *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(char *result, char *a2, __int128 *a3)
{
  v3 = a2[1];
  v4 = result[1];
  if (v3 == v4)
  {
    v5 = *(a2 + 1);
    v6 = *(result + 1);
    v7 = v5 < v6;
    if (v5 == v6)
    {
      v7 = *(a2 + 2) < *(result + 2);
    }

    v8 = v7;
  }

  else
  {
    v8 = v3 < v4;
  }

  v9 = *(a3 + 1);
  if (v9 == v3)
  {
    v10 = *(a3 + 1);
    v11 = *(a2 + 1);
    v12 = v10 < v11;
    if (v10 == v11)
    {
      v12 = *(a3 + 2) < *(a2 + 2);
    }

    v13 = v12;
    if (!v8)
    {
LABEL_15:
      if (!v13)
      {
        return result;
      }

      v14 = *a2;
      v15 = *(a2 + 2);
      v16 = a2[24];
      v17 = *(a2 + 4);
      v18 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v18;
      *a3 = v14;
      *(a3 + 1) = v3;
      *(a3 + 4) = v17;
      *(a3 + 2) = v15;
      *(a3 + 24) = v16;
      v19 = a2[1];
      v20 = result[1];
      if (v19 == v20)
      {
        v21 = *(a2 + 1);
        v22 = *(result + 1);
        v23 = v21 < v22;
        if (v21 == v22)
        {
          v23 = *(a2 + 2) < *(result + 2);
        }

        if (!v23)
        {
          return result;
        }
      }

      else if (v19 >= v20)
      {
        return result;
      }

      v34 = *result;
      v35 = *(result + 2);
      v36 = result[24];
      v37 = *(result + 4);
      v38 = *(a2 + 9);
      *result = *a2;
      *(result + 9) = v38;
      *a2 = v34;
      a2[1] = v20;
      *(a2 + 4) = v37;
      *(a2 + 2) = v35;
      a2[24] = v36;
      return result;
    }
  }

  else
  {
    v13 = v9 < v3;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  v25 = *(result + 1);
  v24 = *(result + 2);
  v26 = *result;
  v27 = *(result + 2);
  v28 = result[24];
  if (v13)
  {
    v29 = *a3;
    *(result + 9) = *(a3 + 9);
    *result = v29;
    *a3 = v26;
    *(a3 + 1) = v4;
    *(a3 + 1) = v25;
    *(a3 + 2) = v24;
LABEL_34:
    *(a3 + 2) = v27;
    *(a3 + 24) = v28;
    return result;
  }

  v30 = *a2;
  *(result + 9) = *(a2 + 9);
  *result = v30;
  *a2 = v26;
  a2[1] = v4;
  *(a2 + 1) = v25;
  *(a2 + 2) = v24;
  *(a2 + 2) = v27;
  a2[24] = v28;
  v31 = *(a3 + 1);
  if (v31 != v4)
  {
    if (v31 >= v4)
    {
      return result;
    }

    goto LABEL_33;
  }

  v32 = *(a3 + 1);
  v33 = v32 < v25;
  if (v32 == v25)
  {
    v33 = *(a3 + 2) < v24;
  }

  if (v33)
  {
LABEL_33:
    v39 = *(a2 + 4);
    v40 = *a3;
    *(a2 + 9) = *(a3 + 9);
    *a2 = v40;
    *a3 = v26;
    *(a3 + 1) = v4;
    *(a3 + 4) = v39;
    goto LABEL_34;
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::setNewInterfaceEnabled(BOOL)::$_0,std::allocator<md::LabelManager::setNewInterfaceEnabled(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A118E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

std::mutex *md::LabelManager::setNavMode(std::mutex *result, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (result[56].__m_.__opaque[2] != a2)
  {
    result[56].__m_.__opaque[2] = a2;
    v2[0] = &unk_1F2A116F0;
    v2[1] = result;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 44, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2A18970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setNeedsOcclusionClear(void)::$_0,std::allocator<md::LabelManager::setNeedsOcclusionClear(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CA20;
  a2[1] = v2;
  return result;
}

void *md::LayoutContext::get<md::VenueLogicContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x4927EB92E562CC46uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x4927EB92E562CC46)
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

std::mutex *md::LabelManager::setLabelMode(std::mutex *result, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (result[56].__m_.__opaque[1] != a2)
  {
    result[56].__m_.__opaque[1] = a2;
    v2[0] = &unk_1F2A116A8;
    v2[1] = result;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 7, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2A18AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelCustomFeatureSupport::addDataSourceInternal(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = mdm::zone_mallocator::instance(v14);
  v3 = pthread_rwlock_rdlock((v2 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  v5 = malloc_type_zone_malloc(*v2, 0x120uLL, 0x10E00403331D571uLL);
  atomic_fetch_add((v2 + 24), 1u);
  geo::read_write_lock::unlock((v2 + 32));
  v6 = v14;
  *(v5 + 4) = v6;
  v7 = v6;
  *(v5 + 5) = a1;
  *(v5 + 6) = *(a1 + 16);
  *(v5 + 7) = &unk_1F2A2C378;
  *(v5 + 8) = 0;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v5 + 10, v7);
  *(v5 + 14) = 0;
  *(v5 + 13) = v5 + 112;
  *(v5 + 16) = 0;
  *(v5 + 17) = &unk_1F2A2C398;
  *(v5 + 18) = 0;
  v5[160] = 0;
  *(v5 + 21) = &unk_1F2A567C0;
  *(v5 + 22) = 0;
  *(v5 + 33) = 0;
  *(v5 + 12) = 0u;
  *(v5 + 28) = 0;
  *(v5 + 13) = 0u;
  *(v5 + 31) = 0;
  *(v5 + 30) = v5 + 248;
  *(v5 + 34) = 0;
  *(v5 + 279) = 0;
  v8 = [[VKCustomFeatureDataSourceObserverThunk alloc] initWithDataSource:v7 observer:v5 + 40];
  v9 = v8;
  objc_storeStrong(v5 + 8, v8);

  v10 = [(mdm::zone_mallocator *)v7 isClusteringEnabled];
  v5[280] = v10;
  if (v10)
  {
    operator new();
  }

  v5[282] = [(mdm::zone_mallocator *)v7 sceneState:v11];
  v5[281] = [(mdm::zone_mallocator *)v7 sceneID];
  operator new();
}

void *geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A436A8;
  a1[1] = v3;
  return a1;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(a1, a2, a3);
  v9 = *(a4 + 1);
  v10 = a3[1];
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      return result;
    }

LABEL_7:
    v14 = *a3;
    v15 = *(a3 + 2);
    v16 = a3[24];
    result = *(a3 + 4);
    v17 = *(a4 + 9);
    *a3 = *a4;
    *(a3 + 9) = v17;
    *a4 = v14;
    *(a4 + 1) = v10;
    *(a4 + 4) = result;
    *(a4 + 16) = v15;
    *(a4 + 24) = v16;
    v18 = a3[1];
    v19 = *(a2 + 1);
    if (v18 == v19)
    {
      v20 = *(a3 + 1);
      v21 = *(a2 + 4);
      v22 = v20 < v21;
      if (v20 == v21)
      {
        v22 = *(a3 + 2) < *(a2 + 8);
      }

      if (!v22)
      {
        return result;
      }
    }

    else if (v18 >= v19)
    {
      return result;
    }

    v23 = *a2;
    v24 = *(a2 + 16);
    v25 = *(a2 + 24);
    result = *(a2 + 4);
    v26 = *(a3 + 9);
    *a2 = *a3;
    *(a2 + 9) = v26;
    *a3 = v23;
    a3[1] = v19;
    *(a3 + 4) = result;
    *(a3 + 2) = v24;
    a3[24] = v25;
    v27 = *(a2 + 1);
    v28 = *(a1 + 1);
    if (v27 == v28)
    {
      v29 = *(a2 + 4);
      v30 = *(a1 + 4);
      v31 = v29 < v30;
      if (v29 == v30)
      {
        v31 = *(a2 + 8) < *(a1 + 8);
      }

      if (!v31)
      {
        return result;
      }
    }

    else if (v27 >= v28)
    {
      return result;
    }

    v32 = *a1;
    v33 = *(a1 + 16);
    v34 = *(a1 + 24);
    result = *(a1 + 4);
    v35 = *(a2 + 9);
    *a1 = *a2;
    *(a1 + 9) = v35;
    *a2 = v32;
    *(a2 + 1) = v28;
    *(a2 + 4) = result;
    *(a2 + 16) = v33;
    *(a2 + 24) = v34;
    return result;
  }

  v11 = *(a4 + 4);
  v12 = *(a3 + 1);
  v13 = v11 < v12;
  if (v11 == v12)
  {
    v13 = *(a4 + 8) < *(a3 + 2);
  }

  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}

void std::vector<md::LabelScene::LabelGroupParams>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 2) + 1;
    if (v9 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = v12 + 20;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 4);
    *v4 = v5;
    v6 = v4 + 20;
  }

  *(a1 + 8) = v6;
}

float md::LabelScene::setSceneID(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 8) == a2 && a3 == 0)
  {
    return result;
  }

  v19 = v3;
  v20 = v4;
  v8 = a1 + 56;
  v7 = *(a1 + 56);
  *(a1 + 8) = a2;
  *(a1 + 80) = 0;
  *(a1 + 64) = v7;
  if (a2 == 4)
  {
    *(a1 + 80) = 1;
    *(a1 + 48) = 1067869798;
    v18 = 0;
    *&v17 = 0;
    DWORD2(v17) = 1053609165;
    BYTE12(v17) = 1;
    std::vector<md::LabelScene::LabelGroupParams>::push_back[abi:nn200100](a1 + 56, &v17);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v9 = *(a1 + 48);
    v10 = 1061997773;
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 == 1)
      {
        *(a1 + 48) = 1061997773;
        *(a1 + 80) = 1;
        BYTE8(v17) = 0;
        BYTE12(v17) = 0;
        v18 = 1;
        *&v17 = 0x3F4CCCCD00000000;
      }

      else
      {
        *(a1 + 48) = 1036831949;
        BYTE12(v17) = 0;
        v18 = 0;
        *&v17 = 0;
        BYTE8(v17) = 0;
      }

      v11 = &v17;
      goto LABEL_15;
    }

    *(a1 + 80) = 1;
    *(a1 + 48) = 1065353216;
    BYTE12(v17) = 0;
    v18 = 0;
    *&v17 = 0;
    BYTE8(v17) = 0;
    std::vector<md::LabelScene::LabelGroupParams>::push_back[abi:nn200100](a1 + 56, &v17);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v9 = *(a1 + 48);
    v10 = 1056964608;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = v13;
LABEL_15:
  std::vector<md::LabelScene::LabelGroupParams>::push_back[abi:nn200100](v8, v11);
  md::LabelValueAnimation::setShowAnimation(a1 + 16, 0, 2, 0, *(a1 + 48));

  return md::LabelValueAnimation::setHideAnimation(a1 + 16, 0, 1, 0, 0.0);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

float md::LabelValueAnimation::setShowAnimation(uint64_t a1, int a2, int a3, int a4, float a5)
{
  if (a2)
  {
    a3 = a2;
  }

  v6 = EaseLinear;
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_21;
        }

        v6 = EaseQuadOut;
      }

LABEL_20:
      *(a1 + 16) = v6;
      goto LABEL_21;
    }

LABEL_17:
    v6 = EaseConstantOne;
    goto LABEL_18;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v6 = EaseCubicOut;
    }

    else
    {
      if (a4)
      {
        a5 = a5 + a5;
      }

      v6 = EaseBounceOut;
    }

    goto LABEL_20;
  }

  if (a3 == 6)
  {
    goto LABEL_17;
  }

  if (a3 == 7)
  {
    v6 = EaseConstantZero;
LABEL_18:
    a5 = 0.000001;
    goto LABEL_20;
  }

LABEL_21:
  result = fmaxf(a5, 0.000001);
  *(a1 + 8) = result;
  return result;
}

float md::LabelValueAnimation::setHideAnimation(uint64_t a1, int a2, int a3, int a4, float a5)
{
  if (a2)
  {
    a3 = a2;
  }

  v6 = EaseLinear;
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_21;
        }

        v6 = EaseQuadIn;
      }

LABEL_20:
      *(a1 + 24) = v6;
      goto LABEL_21;
    }

LABEL_17:
    v6 = EaseConstantOne;
    goto LABEL_18;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v6 = EaseCubicIn;
    }

    else
    {
      if (a4)
      {
        a5 = a5 + a5;
      }

      v6 = EaseBounceOut;
    }

    goto LABEL_20;
  }

  if (a3 == 6)
  {
    goto LABEL_17;
  }

  if (a3 == 7)
  {
    v6 = EaseConstantZero;
LABEL_18:
    a5 = 0.000001;
    goto LABEL_20;
  }

LABEL_21:
  result = fmaxf(a5, 0.000001);
  *(a1 + 12) = result;
  return result;
}

void *geo::codec::copyFeatureStyleAttributes(void *result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      operator new();
    }

    operator new();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1B2A19A5C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (!atomic_fetch_add(&shared_weak_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (shared_weak_owners->__on_zero_shared)(shared_weak_owners);
      std::__shared_weak_count::__release_weak(shared_weak_owners);
    }
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::LabelClusterProvider>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    md::LabelClusterProvider::resetClusters(v2);
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    *(v2 + 72) = &unk_1F2A436C8;

    *(v2 + 48) = &unk_1F2A436C8;
    *(v2 + 24) = &unk_1F2A436A8;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xA588623CD4116DAELL)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::resolveDependencies(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE42D19AFCA302E68);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0xE42D19AFCA302E68))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xF014CCE28176CA44);
  return v4;
}

uint64_t md::PendingSceneLogic::extractFullyImplicatedData(uint64_t result, uint64_t a2, uint64_t a3, geo::codec::VectorTile **a4, uint64_t a5, uint64_t a6)
{
  *result = 1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a6)
  {
    v7 = result;
    *v17 = *a3;
    v18 = *(a3 + 16);
    while (1)
    {
      v8 = v17[0];
      result = geo::codec::VectorTile::daVinciBuildingColorsArePresent(v17[0], *a4);
      if ((result & 1) == 0)
      {
        break;
      }

      v9 = grl::LayerMetrics::anchor(v8);
      v16 = v9;
      v10 = grl::LayerMetrics::anchor(v17[1]);
      if (gdc::DataKeyIterator::operator!=(v9, v10))
      {
        v11 = *(a2 + 216);
        if (std::unordered_map<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>>>::find[abi:nn200100]((v11 + 24), v9))
        {
          operator new();
        }

        ++*(v7 + 20);
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v14, v9);
        v15 = a5;
        gdc::LayerDataRequestKey::LayerDataRequestKey(v19, &v14);
        v20 = v15;
        v21 = 0;
        if (std::unordered_map<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>>>::find[abi:nn200100]((v11 + 24), v19))
        {
          operator new();
        }

        operator new();
      }

      gdc::VirtualTileIterator::operator++(v17);
    }
  }

  return result;
}

void sub_1B2A1A394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, void *a36)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,void *>>>::operator()[abi:nn200100](1, v36);
  if (a34 != a36)
  {
    free(a34);
  }

  if (a15 != a17)
  {
    free(a15);
  }

  _Unwind_Resume(a1);
}

void std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__delete_node[abi:nn200100](void *__p)
{
  v2 = __p[4];
  if (v2 != __p[6])
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5B0BFF71B88387C7)
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

void md::CollectMapDataLogic<(md::MapDataType)54>::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(v5);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  if (v8 != v9)
  {
    v62 = *(v5 + 41016) + 4 * (v6 >> 5);
    do
    {
      *(v62 + (*(v8 + 2) << 6)) &= ~(1 << v6);
      v8 += 4;
    }

    while (v8 != v9);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(v5);
  v11 = v10[37];
  v12 = v10[38];
  while (v11 != v12)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v11 + 24));
    v11 += 32;
  }

    ;
  }

  *(v5 + 8 * v6) = *(v5 + 4096);
  v14 = *(a1 + 128);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
    *algn_1EB82DBD8 = 0x1658AB057F40C6F2;
    qword_1EB82DBE0 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DBE8 = 72;
  }

  v15 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata;
  v16 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(v14);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  if (v17 != v18)
  {
    v63 = *(v14 + 41016) + 4 * (v15 >> 5);
    do
    {
      *(v63 + (*(v17 + 2) << 6)) &= ~(1 << v15);
      v17 += 4;
    }

    while (v17 != v18);
  }

  v19 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(v14);
  v20 = v19[37];
  v21 = v19[38];
  while (v20 != v21)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v20 + 24));
    v20 += 32;
  }

    ;
  }

  *(v14 + 8 * v15) = *(v14 + 4096);
  v23 = *a3;
  v24 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v25 = ecs2::BasicRegistry<void>::create(*(a1 + 128));
    *(a1 + 120) = v25;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)54>>(*(a1 + 128), v25);
    v26 = *(a1 + 128);
    v27 = *(a1 + 120);
    LOWORD(v71) = 54;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(v26, v27, &v71);
    v28 = *(a1 + 128);
    v29 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)54>>(v28, v29, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v30 = *(a1 + 128);
    v31 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(v30, v31, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v32 = *(a1 + 128);
    v33 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(v32, v33, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v34 = *(a1 + 128);
    v35 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(v34, v35, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
  }

  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)54>>(v24);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(v24);
  v37 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(v24);
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(v24);
  v39 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(v24);
  v64[0] = v23;
  v64[1] = a1;
  v71 = v36;
  v72 = v37;
  v40 = 1;
  v41 = v36;
  v42 = &v71;
  v73 = v38;
  v74 = v39;
  do
  {
    if ((&v71)[v40][5] - (&v71)[v40][4] < (v41[5] - v41[4]))
    {
      v41 = (&v71)[v40];
      v42 = &(&v71)[v40];
    }

    ++v40;
  }

  while (v40 != 4);
  v44 = *(*v42 + 32);
  v43 = *(*v42 + 40);
  v65 = v44;
  v66 = v43;
  v67 = v36;
  v68 = v37;
  v69 = v38;
  v70 = v39;
  while (v44 != v43 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v44, v44[1]))
  {
    v44 += 2;
    v65 = v44;
  }

  v45 = v65;
  if (v65 != v43)
  {
    v46 = v68;
    v47 = v69;
    v48 = v70;
    v50 = v66;
    v49 = v67;
    do
    {
      v51 = *(v45 + 1);
      v52 = v51 & 0x3F;
      v53 = (v51 >> 3) & 0x1FF8;
      v54 = *(*(*(v49 + 8) + v53) + 4 * v52 + 2);
      v55 = (*(*(v49 + 56) + ((v54 >> 3) & 0x1FF8)) + 24 * (v54 & 0x3F));
      v56 = *(*(v46[1] + v53) + 4 * v52 + 2);
      v57 = (*(v46[7] + ((v56 >> 3) & 0x1FF8)) + 24 * (v56 & 0x3F));
      v58 = *(*(*(v47 + 8) + v53) + 4 * v52 + 2);
      v59 = *(*(*(v48 + 8) + v53) + 4 * v52 + 2);
      md::CollectMapDataLogic<(md::MapDataType)54>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)54> &,SceneComponents::LayerDataExitingView<(md::MapDataType)54> &)#1}::operator()(v64, *v45, v55, v57, (*(*(v47 + 56) + ((v58 >> 3) & 0x1FF8)) + 24 * (v58 & 0x3F)), (*(*(v48 + 56) + ((v59 >> 3) & 0x1FF8)) + 24 * (v59 & 0x3F)));
      v60 = (v45 + 1);
      do
      {
        v45 = v60;
        v65 = v60;
        if (v60 == v50)
        {
          break;
        }

        v61 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v60, v60[1]);
        v60 = (v45 + 1);
      }

      while (!v61);
    }

    while (v45 != v43);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
    unk_1EB82DAA0 = 0xF1B4156C6107AD92;
    qword_1EB82DAA8 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DAB0 = 73;
  }
}

unsigned __int8 *std::unordered_map<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>>>::find[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 104);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v10 == v4)
    {
      if (gdc::LayerDataRequestKey::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[150];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
    unk_1EB82DAA0 = 0xF1B4156C6107AD92;
    qword_1EB82DAA8 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DAB0 = 73;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F3260;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3260;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[159];
}

uint64_t *geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::purge(uint64_t *result)
{
  v1 = result[1];
  if (v1 != result[8])
  {
    v2 = result;
    v3 = 0;
    v4 = result[6] + 1;
    do
    {
      if (!--v4)
      {
        break;
      }

      v3 += v1[17];
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>>>::__erase_unique<gdc::LayerDataRequestKey>((v2 + 24), (v1 + 2));
      v1 = v1[1];
    }

    while (v1 != *(v2 + 64));
    result = std::list<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::erase(v2, *(v2 + 8), v1);
    v5 = *(v2 + 72);
    v6 = v5 >= v3;
    v7 = v5 - v3;
    if (!v6)
    {
      v7 = 0;
    }

    *(v2 + 72) = v7;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>>>::__erase_unique<gdc::LayerDataRequestKey>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v5 = *(a2 + 104);
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = *(a2 + 104);
      if (v5 >= *&v2)
      {
        v8 = v5 % *&v2;
      }
    }

    else
    {
      v8 = (*&v2 - 1) & v5;
    }

    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = *(v11 + 1);
          if (v13 == v5)
          {
            if (gdc::LayerDataRequestKey::operator==(v11 + 16, a2))
            {
              if (v7 > 1)
              {
                if (v5 >= *&v2)
                {
                  v5 %= *&v2;
                }
              }

              else
              {
                v5 &= v12;
              }

              v14 = *(v9 + 8 * v5);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v11);
              if (v15 == (a1 + 2))
              {
                goto LABEL_36;
              }

              v16 = *(v15 + 1);
              if (v7 > 1)
              {
                if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }
              }

              else
              {
                v16 &= v12;
              }

              if (v16 != v5)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v17 = *(*v11 + 8);
                if (v7 > 1)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v12;
                }

                if (v17 != v5)
                {
LABEL_37:
                  *(v9 + 8 * v5) = 0;
                }
              }

              v18 = *v11;
              if (*v11)
              {
                v19 = *(v18 + 8);
                if (v7 > 1)
                {
                  if (v19 >= *&v2)
                  {
                    v19 %= *&v2;
                  }
                }

                else
                {
                  v19 &= v12;
                }

                if (v19 != v5)
                {
                  *(*a1 + 8 * v19) = v15;
                  v18 = *v11;
                }
              }

              *v15 = v18;
              *v11 = 0;
              --a1[3];

              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::__list_iterator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,void *>>,void *>>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(void *a1, void *__p)
{
  v3 = a1[1];
  v4 = __p[1];
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

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 == a1 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v9 = *(*__p + 8);
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
LABEL_19:
      *(*a1 + 8 * v4) = 0;
    }
  }

  v10 = *__p;
  if (*__p)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a1 + 8 * v11) = v7;
      v10 = *__p;
    }
  }

  *v7 = v10;
  *__p = 0;
  --a1[3];
  v12 = __p[4];
  if (v12 != __p[6])
  {
    free(v12);
  }

  operator delete(__p);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
    *algn_1EB82DBD8 = 0x1658AB057F40C6F2;
    qword_1EB82DBE0 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DBE8 = 72;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F32C8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t *std::list<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__delete_node[abi:nn200100](__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F32C8;
  a2[1] = v2;
  return result;
}

void gdc::LayerDataManager::createDataRequests(void *a1, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t a4)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::clear(a1[7] + 216);
  v8 = a1[1];
  v9 = a1[2];
  while (v8 != v9)
  {
    v10 = *v8;
    v11 = *(v8 + 1);
    v12 = *a2;
    v13 = a2[1];
    while (v12 != v13)
    {
      if (v10 == *v12)
      {
        if (v12 != v13)
        {
          gdc::LayerDataSource::createLayerDataRequests(*(v8 + 1), (v12 + 4), a4, a1[7]);
        }

        break;
      }

      v12 += 24;
    }

    v14 = *a3;
    v15 = a3[1];
    while (v14 != v15)
    {
      if (v10 == *v14)
      {
        if (v14 != v15)
        {
          gdc::LayerDataSource::createLayerDataRequests(v11, (v14 + 4), a4, a1[7]);
        }

        break;
      }

      v14 += 24;
    }

    v8 += 12;
  }

  v16 = a1[7];

  gdc::ResourceManager::finishBatch(v16);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)54>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)54>>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[168];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2590;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

BOOL gdc::LayerDataManager::hasRequestsInProgress(gdc::LayerDataManager *this, gdc::LayerDataManager *a2)
{
  if (this == a2)
  {
    return 0;
  }

  v2 = (this + 24);
  do
  {
    v3 = *(*(v2 - 2) + 64);
    result = v3 != 0;
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 == a2;
    }

    v2 = (v2 + 24);
  }

  while (!v5);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2590;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3350;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)54>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[163];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2618;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2618;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[145];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2728;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2728;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[154];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F27B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F27B0;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[140];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F26A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F26A0;
  a2[1] = v2;
  return result;
}

void md::CollectMapDataLogic<(md::MapDataType)54>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)54> &,SceneComponents::LayerDataExitingView<(md::MapDataType)54> &)#1}::operator()(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v83 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v12 = a3 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a3[1]);
  *a3 = (a3 + 1);
  a3[2] = 0;
  a3[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v13 = md::SceneContext::layerDataInView(*a1, 54);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v13, v13 + 1);
  v14 = *a3;
  v15 = a4 + 1;
  v16 = *a4;
  v17 = *a5;
  v84 = a5;
  v85 = v17;
  if (v14 != a3 + 1)
  {
    if (v16 == v15)
    {
      v86 = a5;
      v87 = v17;
      if (v14 != v12)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, v14 + 32);
          v33 = *(v14 + 8);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v14 + 16);
              v65 = *v34 == v14;
              v14 = v34;
            }

            while (!v65);
          }

          v14 = v34;
        }

        while (v34 != v12);
      }
    }

    else
    {
      while (1)
      {
        v18 = *(v14 + 32);
        v19 = *(v14 + 48);
        v20 = v19;
        v21 = *(v16 + 48);
        v22 = v16[4];
        if (v19 == v21 ? v18 < v22 : v19 < v21)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, v14 + 32);
          v24 = *(v14 + 8);
          if (v24)
          {
            do
            {
              v14 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14;
              v14 = *(v14 + 16);
            }

            while (*v14 != v25);
          }
        }

        else
        {
          v26 = v22 < v18;
          if (v20 != v21)
          {
            v26 = v21 < v20;
          }

          if (v26)
          {
            v27 = v16[1];
            if (v27)
            {
              do
              {
                v16 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v16;
                v16 = v16[2];
              }

              while (*v16 != v28);
            }
          }

          else
          {
            v29 = *(v14 + 8);
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = *(v14 + 16);
                v65 = *v30 == v14;
                v14 = v30;
              }

              while (!v65);
            }

            v31 = v16[1];
            if (v31)
            {
              do
              {
                v16 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v16;
                v16 = v16[2];
              }

              while (*v16 != v32);
            }

            v14 = v30;
          }
        }

        if (v14 == v12)
        {
          break;
        }

        if (v16 == v15)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_34;
        }
      }
    }
  }

  v35 = *a4;
  v36 = *a3;
  v37 = *a6;
  v84 = a6;
  v85 = v37;
  if (v35 != v15)
  {
    if (v36 == v12)
    {
      v86 = a6;
      v87 = v37;
      if (v35 != v15)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, (v35 + 4));
          v53 = v35[1];
          if (v53)
          {
            do
            {
              v54 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v54 = v35[2];
              v65 = *v54 == v35;
              v35 = v54;
            }

            while (!v65);
          }

          v35 = v54;
        }

        while (v54 != v15);
      }
    }

    else
    {
      while (1)
      {
        v38 = v35[4];
        v39 = *(v35 + 48);
        v40 = v39;
        v41 = *(v36 + 48);
        v42 = *(v36 + 32);
        if (v39 == v41 ? v38 < v42 : v39 < v41)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, (v35 + 4));
          v44 = v35[1];
          if (v44)
          {
            do
            {
              v35 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35;
              v35 = v35[2];
            }

            while (*v35 != v45);
          }
        }

        else
        {
          v46 = v42 < v38;
          if (v40 != v41)
          {
            v46 = v41 < v40;
          }

          if (v46)
          {
            v47 = *(v36 + 8);
            if (v47)
            {
              do
              {
                v36 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v48);
            }
          }

          else
          {
            v49 = v35[1];
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v35[2];
                v65 = *v50 == v35;
                v35 = v50;
              }

              while (!v65);
            }

            v51 = *(v36 + 8);
            if (v51)
            {
              do
              {
                v36 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v52);
            }

            v35 = v50;
          }
        }

        if (v35 == v15)
        {
          break;
        }

        if (v36 == v12)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_73;
        }
      }
    }
  }

  v55 = a2 >> 22;
  v56 = (a2 >> 16) & 0x3F;
  if (a5[2])
  {
    v57 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
    v58 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata;
    v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(v57);
    v60 = v59;
    v62 = (v59 + 8);
    v61 = *(v59 + 8);
    if (v55 >= (*(v59 + 16) - v61) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v59 + 8), v55 + 1);
      v61 = *v62;
    }

    v63 = *(v61 + 8 * v55);
    if (!v63)
    {
      operator new();
    }

    v64 = (v63 + 4 * v56);
    v65 = *v64 == -1 && v64[1] == 0;
    if (v65)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v60 + 32, &v86);
      v66 = ((*(v60 + 40) - *(v60 + 32)) >> 2) - 1;
      *v64 = a2;
      v64[1] = v66;
      v67 = *(v60 + 104);
      for (i = *(v60 + 112); v67 != i; v67 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v67 + 24), a2);
      }
    }

    v69 = *(v57 + 41016) + (WORD1(a2) << 6);
    *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v58;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>();
    *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)54>>(void)::metadata) = *(v57 + 4096);
  }

  if (a6[2])
  {
    v70 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
    v71 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata;
    v72 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(v70);
    v73 = v72;
    v75 = (v72 + 8);
    v74 = *(v72 + 8);
    if (v55 >= (*(v72 + 16) - v74) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v72 + 8), v55 + 1);
      v74 = *v75;
    }

    v76 = *(v74 + 8 * v55);
    if (!v76)
    {
      operator new();
    }

    v77 = (v76 + 4 * v56);
    if (*v77 == -1 && v77[1] == 0)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v73 + 32, &v86);
      v79 = ((*(v73 + 40) - *(v73 + 32)) >> 2) - 1;
      *v77 = a2;
      v77[1] = v79;
      v81 = *(v73 + 104);
      for (j = *(v73 + 112); v81 != j; v81 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v81 + 24), a2);
      }
    }

    v82 = *(v70 + 41016) + (WORD1(a2) << 6);
    *(v82 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v71;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>();
    *(v70 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)54>>(void)::metadata) = *(v70 + 4096);
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)54>,md::CollectMapDataContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5B0BFF71B88387C7)
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

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF5BDE3F396AD5C40)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x5B0BFF71B88387C7uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x5B0BFF71B88387C7))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13[0] = v9;
      v13[1] = v12;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>::runBeforeLayout(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = *(a1 + 120);
  v7 = *(a2 + 16);
  v68 = 0uLL;
  v69 = 0;
  v8 = *v7;
  do
  {
    v9 = *v8;
    v8 += 5;
  }

  while (v9 != 0x22D45F5AAD4BF408);
  v11 = *(v8 - 2);
  v10 = *(v8 - 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  (**v11)(v11);
  v64 = v5;
  v65 = v7;
  v63 = v3;
  v12 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(v6);
  v13 = (a1 + 136);
  v14 = v12[4];
  v66 = v12[5];
  if (v14 != v66)
  {
    v15 = 0;
    do
    {
      v17 = *(a1 + 144);
      v18 = *(a1 + 152);
      *&v70 = *(v12[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
      v16 = v70;
      *(&v70 + 1) = a1 + 168;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v17, v18, &v70);
      v19 = *(a1 + 144);
      v20 = *(a1 + 152);
      *&v70 = v16;
      *(&v70 + 1) = a1 + 168;
      v3 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v19, v20, &v70);
      v21 = *(a1 + 152);
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>((a1 + 232), *(a1 + 240), v3, v21, (v21 - v3) >> 4);
      if (v3 != v21)
      {
        v22 = v21;
        v23 = *(a1 + 152);
        while (v22 != v23)
        {
          *v3 = *v22;
          *(v3 + 8) = *(v22++ + 2);
          v3 += 16;
        }

        *(a1 + 152) = v3;
      }

      v24 = *(a1 + 240);
      v7 = *(a1 + 232);
      if (v24 != v7)
      {
        do
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(&v68, (v7 + 8));
          v3 = *v7;
          if (*v7)
          {
            v25 = *v13;
            if (*(*v13 + 16))
            {
              (**v3)(*v7);
              *v3 = *(v25 + 40);
              *(v25 + 40) = v3;
            }
          }

          v7 += 16;
        }

        while (v7 != v24);
        v7 = *(a1 + 232);
      }

      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      v28 = 126 - 2 * __clz((v27 - v26) >> 4);
      *(a1 + 240) = v7;
      if (v27 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v26, v27, v29, 1);
      v14 += 4;
      ++v15;
    }

    while (v14 != v66);
  }

  v30 = *v65;
  v31 = *(v65 + 8);
  if (*v65 != v31)
  {
    v32 = *v65;
    while (*v32 != 0x41D4E9297E100630)
    {
      v32 += 5;
      if (v32 == v31)
      {
        goto LABEL_26;
      }
    }

    if (v32 != v31)
    {
      v61 = v32[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_26:
  if (v30 != v31)
  {
    v33 = v30;
    while (*v33 != 0x4EDAD23DFB014132)
    {
      v33 += 5;
      if (v33 == v31)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v31)
    {
      v62 = v33[4];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_30:
  if (v30 != v31)
  {
    while (*v30 != 0x348A0B0E758C07C2)
    {
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_33;
      }
    }

    if (v30 != v31)
    {
      v60 = v30[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }
    }
  }

LABEL_33:
  v34 = *(&v68 + 1);
  v35 = v68;
  if (*(&v68 + 1) != v68)
  {
    v36 = 0;
    if (((*(&v68 + 1) - v68) >> 2) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = (*(&v68 + 1) - v68) >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | v35[v36];
      cleanup(*v65, *(v65 + 8), v6, v3);
      ++v36;
    }

    while (v37 != v36);
    v7 = v35;
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *v7;
      ecs2::BasicRegistry<void>::destroy(v6, v3);
      v7 += 4;
    }

    while (v7 != v34);
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(v6);
  v70 = 0uLL;
  v71 = 0;
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(v6);
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  if (v39 == v40)
  {
    v41 = 0uLL;
  }

  else
  {
    do
    {
      std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(&v70, *v39++);
    }

    while (v39 != v40);
    v41 = v70;
  }

  v42 = v41;
  if (v41 != *(&v41 + 1))
  {
    v43 = v41;
    do
    {
      v7 = v7 & 0xFFFFFFFF00000000 | *v43;
      ecs2::BasicRegistry<void>::destroy(v6, v7);
      ++v43;
    }

    while (v43 != *(&v42 + 1));
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v35)
  {
    operator delete(v35);
  }

  v67 = md::LayoutContext::cameraType(v63);
  v44 = *(v63 + 2);
  *&v68 = *(a1 + 120);
  v45 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = v44;
  v71 = &v67;
  v72 = v64;
  v73 = &v68;
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  if (v46 != v47)
  {
    v54 = v45;
    v55 = 0;
    do
    {
      determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54> &)#1}::operator()(&v70, (*(*(v54 + 56) + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v55 & 0x3F)));
      v46 += 4;
      ++v55;
    }

    while (v46 != v47);
  }

  *&v68 = *(a1 + 120);
  v48 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = &v68;
  v49 = *(v48 + 32);
  v50 = *(v48 + 40);
  if (v49 != v50)
  {
    v51 = v48;
    v52 = 0;
    do
    {
      createEnterLeaveChangedComponents<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> const&)#1}::operator()(&v70, *(*(v51 + 56) + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v52 & 0x3F));
      v49 += 4;
      ++v52;
    }

    while (v49 != v50);
  }

  result = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(*(a1 + 120));
  if (*(result + 40) != *(result + 32))
  {
    v56 = **(a1 + 128);
    do
    {
      v57 = *v56;
      v56 += 5;
    }

    while (v57 != 0x22D45F5AAD4BF408);
    v59 = *(v56 - 2);
    v58 = *(v56 - 1);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    result = (**v59)(v59);
    **(result + 744) = 1;
  }

  return result;
}

void sub_1B2A1EA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ecs2::BasicRegistry<void>::remove<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 16 * v19);
        *(v20 + 16 * v19) = *(v18 + 16 * v16);
        *(v18 + 16 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>();
    *algn_1EB82DD88 = 0x2B8F0D3A6E65567BLL;
    qword_1EB82DD90 = "SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>]";
    qword_1EB82DD98 = 59;
  }
}

void ecs2::BasicRegistry<void>::remove<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 16 * v19);
        *(v20 + 16 * v19) = *(v18 + 16 * v16);
        *(v18 + 16 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>();
    unk_1EB82DDB0 = 0x4E187DDCBE232848;
    qword_1EB82DDB8 = "SceneComponents::WillEnterView<md::DaVinciGroundRenderable>]";
    qword_1EB82DDC0 = 59;
  }
}

uint64_t determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54> &)#1}::operator()(uint64_t a1, void *a2)
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

void sub_1B2A1FD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p)
{
  v54 = *(v52 - 168);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  v55 = *(v52 - 112);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF5BDE3F396AD5C40)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)54>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void *gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)54>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x5B0BFF71B88387C7uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x5B0BFF71B88387C7)
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

void md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::allocateContext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x401D4CCE847AB1D1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xC97B9E962ADF4AD4);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0xC97B9E962ADF4AD4))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 144))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t *md::PolygonLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a1 + 152);
  *a4 = v8;
  v9 = md::SceneContext::layerDataInView(v6, 65);
  v10 = *v7;
  v11 = v7[1];
  if (*v7 == v11)
  {
    goto LABEL_4;
  }

  while (*v10 != 34)
  {
    v10 += 16;
    if (v10 == v11)
    {
      goto LABEL_4;
    }
  }

  if (v10 == v11)
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
    v12 = (*(v10 + 8) != 0) & *(a1 + 232);
    if (!v9[2])
    {
      v12 = 0;
    }
  }

  *(a4 + 4) = v12;
  result = md::SceneContext::layerDataInView(v6, 64);
  v14 = *v7;
  v15 = v7[1];
  while (v14 != v15)
  {
    if (*v14 == 32)
    {
      if (v14 != v15)
      {
        v16 = *(v14 + 8) != 0;
        goto LABEL_14;
      }

      break;
    }

    v14 += 16;
  }

  v16 = 0;
LABEL_14:
  if (result[2])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(a4 + 5) = v17;
  v18 = *(a1 + 120);
  *(a4 + 16) = *(a1 + 128);
  *(a4 + 8) = v18;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,geo::small_vector<geo::QuadTile,8ul>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x401D4CCE847AB1D1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::SettingsContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::SettingsContext,md::SceneContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xC97B9E962ADF4AD4);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0xC97B9E962ADF4AD4))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x99BED48DEFBBD82BLL);
  return v4;
}

BOOL std::equal_to<geo::QuadTile>::operator()[abi:nn200100](unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v7 = a2;
    v8 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v7;
    a1 = v8;
    v8[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v5 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v6 = (*(a2 + 1) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
    v3 = (*(a2 + 2) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  return v2 == v3 && *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

void sub_1B2A207B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v25 - 56) = &a23;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  *(v25 - 56) = &a20;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(a17);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v23, v24);
  _Unwind_Resume(a1);
}

double md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 112) = 0u;
  return result;
}

uint64_t md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3619066E3FB5F2CLL)
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

uint64_t md::Logic<md::DebugDrawLogic,md::DebugDrawContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x3619066E3FB5F2CLL)
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

uint64_t md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFFA06A69D924B0E8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 144))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x99BED48DEFBBD82BLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1AF456233693CD46uLL);
  return v4;
}

uint64_t md::Logic<md::StandardLogic,md::StandardLogicContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFFA06A69D924B0E8)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x90B6813830DCB581)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x99BED48DEFBBD82BLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x12B1E486D3040E2CuLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x12B1E486D3040E2CLL))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

void md::LoadingStatusLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = md::SceneContext::sceneStatus(**a3);
  v7 = v6;
  if (v5)
  {
    v8 = *(v5 + 228);
  }

  else
  {
    v8 = 1;
  }

  if (v6 == 2)
  {
    if (v8 == 2)
    {
      v7 = 1;
    }

    else
    {
      if (v8 == 3)
      {
        v7 = 4;
LABEL_13:
        gdc::LoadingStatusTracker::setSceneStatus(*(a1 + 120), v7);
        return;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2md18LoadingStatusLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_12SceneContextEEEENS6_IJNS_25IdentifiedResourceContextEEEEEE20ResolvedDependenciesERNS_20LoadingStatusContextE_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a2;
      if (md::LoadingStatusLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::ResolvedDependencies const&,md::LoadingStatusContext &)::once[0] != -1)
      {
        dispatch_once(md::LoadingStatusLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::ResolvedDependencies const&,md::LoadingStatusContext &)::once, block);
      }

      v7 = 2;
    }
  }

  else if (v6 < 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN2md18LoadingStatusLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_12SceneContextEEEENS6_IJNS_25IdentifiedResourceContextEEEEEE20ResolvedDependenciesERNS_20LoadingStatusContextE_block_invoke_1;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = a2;
    if (md::LoadingStatusLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::ResolvedDependencies const&,md::LoadingStatusContext &)::once != -1)
    {
      v9 = v6;
      dispatch_once(&md::LoadingStatusLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::ResolvedDependencies const&,md::LoadingStatusContext &)::once, v10);
      v7 = v9;
    }
  }

  if (*(a1 + 128) != 1 || v7 >= 3)
  {
    goto LABEL_13;
  }
}

uint64_t md::SceneContext::sceneStatus(md::SceneContext *this)
{
  if (md::SceneStateManager::isFinishedLoadingAllLayers(this))
  {
    if (md::SceneStateManager::hasFailedTiles(this))
    {
      if (md::SceneStateManager::isFinishedLoadingRequiredLayers(this))
      {
        LOBYTE(result) = 4;
      }

      else
      {
        LOBYTE(result) = 3;
      }
    }

    else
    {
      LOBYTE(result) = 2;
    }
  }

  else
  {
    LOBYTE(result) = md::SceneStateManager::isFinishedLoadingRequiredLayers(this);
  }

  return result;
}

void *gdc::Context::context<md::MapDataType>(void *a1)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>(a1, 0x3B7BEE224038A636uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x3B7BEE224038A636)
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

uint64_t md::SceneStateManager::isFinishedLoadingAllLayers(md::SceneStateManager *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
LABEL_12:
    v6 = *(this + 26);
    v7 = *(this + 27);
    if (v6 == v7)
    {
      return 1;
    }

    else
    {
      v8 = *(this + 14);
      v9 = *(this + 15);
      do
      {
        v10 = v9;
        if (v8 != v9)
        {
          v10 = v8;
          while (*v6 != *v10)
          {
            v10 += 56;
            if (v10 == v9)
            {
              v10 = v9;
              break;
            }
          }
        }

        result = *(v10 + 9);
        ++v6;
      }

      while (result == 1 && v6 != v7);
    }
  }

  else
  {
    v3 = *(this + 15);
    while (1)
    {
      v4 = *(this + 15);
      if (*(this + 14) != v3)
      {
        v4 = *(this + 14);
        while (*v1 != *v4)
        {
          v4 += 56;
          if (v4 == v3)
          {
            v4 = *(this + 15);
            break;
          }
        }
      }

      if ((*(v4 + 9) & 1) == 0)
      {
        return 0;
      }

      if (++v1 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t md::SceneStateManager::isFinishedLoadingRequiredLayers(md::SceneStateManager *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
LABEL_10:
    v5 = *(this + 26);
    v6 = *(this + 27);
    if (v5 == v6)
    {
      return 1;
    }

    else
    {
      v7 = *(this + 14);
      v8 = *(this + 15);
      do
      {
        v9 = v8;
        if (v7 != v8)
        {
          v9 = v7;
          while (*v9 != *v5)
          {
            v9 += 56;
            if (v9 == v8)
            {
              v9 = v8;
              break;
            }
          }
        }

        result = *(v9 + 8);
        ++v5;
      }

      while (result == 1 && v5 != v6);
    }
  }

  else
  {
    v3 = *(this + 15);
    while (1)
    {
      v4 = *(this + 15);
      if (*(this + 14) != v3)
      {
        v4 = *(this + 14);
        while (*v4 != *v1)
        {
          v4 += 56;
          if (v4 == v3)
          {
            v4 = *(this + 15);
            break;
          }
        }
      }

      if ((v4[4] & 1) == 0)
      {
        return 0;
      }

      if (++v1 == v2)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 40);
  v7 = *(*result + 40);
  v8 = *a3;
  v9 = *(*a3 + 40);
  if (v6 >= v7)
  {
    if (v9 >= v6)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v4;
      v10 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v10;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v6)
    {
      *result = v8;
LABEL_9:
      *a3 = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    if (*(*a3 + 40) < v7)
    {
      *a2 = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v4 + 40))
  {
    *a3 = *a4;
    *a4 = v4;
    v11 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  return result;
}

void ___ZN2md18LoadingStatusLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_12SceneContextEEEENS6_IJNS_25IdentifiedResourceContextEEEEEE20ResolvedDependenciesERNS_20LoadingStatusContextE_block_invoke_1(uint64_t a1)
{
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  v3 = v2;
  v4 = *(*(a1 + 32) + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LoadRequiredLayers", &unk_1B3514CAA, v5, 2u);
  }
}

void gdc::LoadingStatusTracker::setSceneStatus(uint64_t a1, int a2)
{
  if (*(a1 + 89) == 1 && *(a1 + 88) == a2)
  {
    return;
  }

  *(a1 + 88) = a2;
  *(a1 + 89) = 257;
  if (a2 == 2)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v3 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (!os_signpost_enabled(v3))
    {
      goto LABEL_17;
    }

    v14 = 0;
    v4 = "failed=no";
    v5 = &v14;
LABEL_13:
    v8 = v3;
    v9 = OS_SIGNPOST_INTERVAL_BEGIN;
    goto LABEL_16;
  }

  v6 = a2 - 3;
  if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
  }

  v3 = GEOGetGeoDisplayCoreDefaultLog::log;
  v7 = os_signpost_enabled(v3);
  if (v6 <= 1)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v13 = 0;
    v4 = "failed=yes";
    v5 = &v13;
    goto LABEL_13;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v12 = 0;
  v4 = &unk_1B3514CAA;
  v5 = &v12;
  v8 = v3;
  v9 = OS_SIGNPOST_INTERVAL_END;
LABEL_16:
  _os_signpost_emit_with_name_impl(&dword_1B2754000, v8, v9, 0xEEEEB0B5B2B2EEEELL, "FullyLoaded", v4, v5, 2u);
LABEL_17:

  if (*(a1 + 89))
  {
    if (*(a1 + 88) - 2 <= 2)
    {
      v10 = *(a1 + 184);
      if (v10)
      {
        (*(*v10 + 48))(v10);
      }
    }
  }

  else
  {
    v11 = std::__throw_bad_optional_access[abi:nn200100]();
    __GEOGetGeoDisplayCoreDefaultLog_block_invoke(v11);
  }
}

os_log_t __GEOGetGeoDisplayCoreDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "Default");
  GEOGetGeoDisplayCoreDefaultLog::log = result;
  return result;
}

std::mutex *md::LabelManager::setMapsUsage(std::mutex *result, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (result[56].__m_.__opaque[0] != a2)
  {
    result[56].__m_.__opaque[0] = a2;
    v2[0] = &unk_1F2A11660;
    v2[1] = result;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(result, 67, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2A216E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0,std::allocator<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11660;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void *gdc::Context::context<md::IdentifiedResourceContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x12B1E486D3040E2CuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x12B1E486D3040E2CLL)
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

uint64_t md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x90B6813830DCB581)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::resolveDependencies(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x99BED48DEFBBD82BLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  gdc::Context::context<md::IdentifiedResourceContext>(a1);
  return v4;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF20ACC1C64F7EF84)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x9052DC4F017D3735);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x9052DC4F017D3735))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13[0] = v9;
      v13[1] = v12;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>::runBeforeLayout(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = *(a1 + 120);
  v7 = *(a2 + 16);
  v68 = 0uLL;
  v69 = 0;
  v8 = *v7;
  do
  {
    v9 = *v8;
    v8 += 5;
  }

  while (v9 != 0x22D45F5AAD4BF408);
  v11 = *(v8 - 2);
  v10 = *(v8 - 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  (**v11)(v11);
  v64 = v5;
  v65 = v7;
  v63 = v3;
  v12 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(v6);
  v13 = (a1 + 136);
  v14 = v12[4];
  v66 = v12[5];
  if (v14 != v66)
  {
    v15 = 0;
    do
    {
      v17 = *(a1 + 144);
      v18 = *(a1 + 152);
      *&v70 = *(v12[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
      v16 = v70;
      *(&v70 + 1) = a1 + 168;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v17, v18, &v70);
      v19 = *(a1 + 144);
      v20 = *(a1 + 152);
      *&v70 = v16;
      *(&v70 + 1) = a1 + 168;
      v3 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v19, v20, &v70);
      v21 = *(a1 + 152);
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>((a1 + 232), *(a1 + 240), v3, v21, (v21 - v3) >> 4);
      if (v3 != v21)
      {
        v22 = v21;
        v23 = *(a1 + 152);
        while (v22 != v23)
        {
          *v3 = *v22;
          *(v3 + 8) = *(v22++ + 2);
          v3 += 16;
        }

        *(a1 + 152) = v3;
      }

      v24 = *(a1 + 240);
      v7 = *(a1 + 232);
      if (v24 != v7)
      {
        do
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(&v68, (v7 + 8));
          v3 = *v7;
          if (*v7)
          {
            v25 = *v13;
            if (*(*v13 + 16))
            {
              (**v3)(*v7);
              *v3 = *(v25 + 40);
              *(v25 + 40) = v3;
            }
          }

          v7 += 16;
        }

        while (v7 != v24);
        v7 = *(a1 + 232);
      }

      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      v28 = 126 - 2 * __clz((v27 - v26) >> 4);
      *(a1 + 240) = v7;
      if (v27 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v26, v27, v29, 1);
      v14 += 4;
      ++v15;
    }

    while (v14 != v66);
  }

  v30 = *v65;
  v31 = *(v65 + 8);
  if (*v65 != v31)
  {
    v32 = *v65;
    while (*v32 != 0x41D4E9297E100630)
    {
      v32 += 5;
      if (v32 == v31)
      {
        goto LABEL_26;
      }
    }

    if (v32 != v31)
    {
      v61 = v32[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_26:
  if (v30 != v31)
  {
    v33 = v30;
    while (*v33 != 0x4EDAD23DFB014132)
    {
      v33 += 5;
      if (v33 == v31)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v31)
    {
      v62 = v33[4];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_30:
  if (v30 != v31)
  {
    while (*v30 != 0x348A0B0E758C07C2)
    {
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_33;
      }
    }

    if (v30 != v31)
    {
      v60 = v30[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }
    }
  }

LABEL_33:
  v34 = *(&v68 + 1);
  v35 = v68;
  if (*(&v68 + 1) != v68)
  {
    v36 = 0;
    if (((*(&v68 + 1) - v68) >> 2) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = (*(&v68 + 1) - v68) >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | v35[v36];
      cleanup(*v65, *(v65 + 8), v6, v3);
      ++v36;
    }

    while (v37 != v36);
    v7 = v35;
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *v7;
      ecs2::BasicRegistry<void>::destroy(v6, v3);
      v7 += 4;
    }

    while (v7 != v34);
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(v6);
  v70 = 0uLL;
  v71 = 0;
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(v6);
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  if (v39 == v40)
  {
    v41 = 0uLL;
  }

  else
  {
    do
    {
      std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(&v70, *v39++);
    }

    while (v39 != v40);
    v41 = v70;
  }

  v42 = v41;
  if (v41 != *(&v41 + 1))
  {
    v43 = v41;
    do
    {
      v7 = v7 & 0xFFFFFFFF00000000 | *v43;
      ecs2::BasicRegistry<void>::destroy(v6, v7);
      ++v43;
    }

    while (v43 != *(&v42 + 1));
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v35)
  {
    operator delete(v35);
  }

  v67 = md::LayoutContext::cameraType(v63);
  v44 = *(v63 + 2);
  *&v68 = *(a1 + 120);
  v45 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = v44;
  v71 = &v67;
  v72 = v64;
  v73 = &v68;
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  if (v46 != v47)
  {
    v54 = v45;
    v55 = 0;
    do
    {
      determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33> &)#1}::operator()(&v70, (*(*(v54 + 56) + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v55 & 0x3F)));
      v46 += 4;
      ++v55;
    }

    while (v46 != v47);
  }

  *&v68 = *(a1 + 120);
  v48 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = &v68;
  v49 = *(v48 + 32);
  v50 = *(v48 + 40);
  if (v49 != v50)
  {
    v51 = v48;
    v52 = 0;
    do
    {
      createEnterLeaveChangedComponents<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> const&)#1}::operator()(&v70, *(*(v51 + 56) + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v52 & 0x3F));
      v49 += 4;
      ++v52;
    }

    while (v49 != v50);
  }

  result = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(*(a1 + 120));
  if (*(result + 40) != *(result + 32))
  {
    v56 = **(a1 + 128);
    do
    {
      v57 = *v56;
      v56 += 5;
    }

    while (v57 != 0x22D45F5AAD4BF408);
    v59 = *(v56 - 2);
    v58 = *(v56 - 1);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    result = (**v59)(v59);
    **(result + 744) = 1;
  }

  return result;
}

void sub_1B2A22048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = v7;
LABEL_3:
    v10 = a3 - 1;
    while (1)
    {
      v7 = v9;
      a3 = v10;
      v11 = (a2 - v9) >> 4;
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3uLL:

            return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, a2 - 4);
          case 4uLL:

            return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, v9 + 8, a2 - 4);
          case 5uLL:

            return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, v9 + 8, v9 + 12, a2 - 4);
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
          v22 = *v9;
          if (*(*(*v8 + 392) + 169) > *(*(*v9 + 392) + 169))
          {
            *v9 = *v8;
            *(a2 - 2) = v22;
            v23 = *(v9 + 2);
            *(v9 + 2) = *(a2 - 2);
            *(a2 - 2) = v23;
          }

          return result;
        }
      }

      if (v11 <= 23)
      {
        if (a4)
        {
          if (v9 != a2)
          {
            v12 = v9 + 2;
            if (v9 + 2 != a2)
            {
              v13 = 0;
              v14 = v9;
              do
              {
                v15 = v12;
                v16 = v14[2];
                v17 = *v14;
                if (*(*(v16 + 392) + 169) > *(*(*v14 + 392) + 169))
                {
                  v18 = *(v14 + 6);
                  v19 = v13;
                  while (1)
                  {
                    v20 = v9 + v19;
                    *(v20 + 2) = v17;
                    *(v20 + 6) = *(v9 + v19 + 8);
                    if (!v19)
                    {
                      break;
                    }

                    v17 = *(v20 - 2);
                    v19 -= 16;
                    if (*(*(v16 + 392) + 169) <= *(*(v17 + 392) + 169))
                    {
                      v21 = v9 + v19 + 16;
                      goto LABEL_22;
                    }
                  }

                  v21 = v9;
LABEL_22:
                  *v21 = v16;
                  *(v21 + 8) = v18;
                }

                v12 = v15 + 4;
                v13 += 16;
                v14 = v15;
              }

              while (v15 + 4 != a2);
            }
          }
        }

        else
        {

          return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, a2);
        }

        return result;
      }

      if (a3 == -1)
      {
        if (v9 != a2)
        {

          return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, a2, a2);
        }

        return result;
      }

      v24 = v11 >> 1;
      v25 = &v9[2 * (v11 >> 1)];
      if (v11 < 0x81)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(&v9[2 * (v11 >> 1)], v9, a2 - 4);
      }

      else
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v25, a2 - 4);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9 + 4, v25 - 4, a2 - 8);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9 + 8, &v9[2 * v24 + 2], a2 - 12);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v25 - 4, v25, &v9[2 * v24 + 2]);
        v26 = *v9;
        *v9 = *v25;
        *v25 = v26;
        LODWORD(v26) = *(v9 + 2);
        *(v9 + 2) = *(v25 + 2);
        *(v25 + 2) = v26;
      }

      if ((a4 & 1) == 0 && *(*(*(v9 - 2) + 392) + 169) <= *(*(*v9 + 392) + 169))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(v9, a2);
        v9 = result;
        a4 = 0;
        goto LABEL_3;
      }

      v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(v9, a2);
      if ((v28 & 1) == 0)
      {
        goto LABEL_45;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, v27);
      v9 = (v27 + 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v27 + 4, a2);
      if (result)
      {
        break;
      }

      v10 = a3 - 1;
      if (!v29)
      {
LABEL_45:
        result = std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v7, v27, a3, a4 & 1);
        a4 = 0;
        v9 = (v27 + 4);
        goto LABEL_3;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33> &)#1}::operator()(uint64_t a1, void *a2)
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

void sub_1B2A23584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p)
{
  v58 = *(v56 - 168);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  v59 = *(v56 - 112);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xF20ACC1C64F7EF84)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>::resolveDependencies(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x3070CB6B3C7F21D3))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x9052DC4F017D3735);
  return v4;
}

void sub_1B2A23A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a16);
  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C62190](v16, v17);
  _Unwind_Resume(a1);
}

double md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  return result;
}

uint64_t md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8E4587A431F9C696)
  {
    v8[10] = v3;
    v8[11] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 144))(v7, a2, v8, v5);
    }
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1B8B241A8D896A1DLL))
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

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL)[5] + 32);
  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x9AEE7E062376E454);
  if (v14 && (v15 = v14[5], *(v15 + 8) == 0x9AEE7E062376E454))
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x13043386C0978CC2uLL);
  if (result && (v18 = result[5], *(v18 + 8) == 0x13043386C0978CC2))
  {
    v19 = *(v18 + 32);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v16;
  a1[5] = v19;
  return result;
}

void md::RouteLineLogic::runBeforeLayout(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 24);
  if (*(*a3 + 40))
  {
    md::RouteLineLogic::computeRouteWidth(a1, *a2, *(a3 + 16), **(a3 + 8), *(a3 + 32), **a3, *(*a3 + 168), a4);
  }

  *(a4 + 72) = 0;
  v7 = *(*v6 + 48);
  v8 = *(*v6 + 56);
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_8;
    }

    if (*v7 == 77)
    {
      break;
    }

    v7 += 16;
  }

  if (v7 == v8)
  {
LABEL_8:
    v9 = *(a1 + 136);
    if (*a4 != v9)
    {
      gdc::ServiceLocator::associate<md::RouteElevationSource,md::StandardRouteElevationSource>(*(a1 + 120));
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::clear(a1 + 144);
      v11 = *(a1 + 192);
      v10 = (a1 + 192);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
      *v10 = 0;
      v10[1] = 0;
      *(v10 - 1) = v10;
      v9 = *(v10 - 7);
    }

    *a4 = v9;
    return;
  }

  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = md::SceneContext::layerDataInView(v6, 77);
  v13 = v12 + 1;
  v14 = *v12;
  if (*v12 == v12 + 1)
  {
    v20 = 0;
  }

  else
  {
    do
    {
      v15 = v14[4];
      v16 = v14[5];
      *&v24 = v15;
      *(&v24 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(&v28, (v15 + 168));
      std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v25, &v24);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      v17 = v14[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14[2];
          v19 = *v18 == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
    }

    while (v18 != v13);
    v20 = v29;
  }

  if (md::RouteLineLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::ResolvedDependencies const&,md::RouteLineContext &)::$_0::operator()(v20, *(a1 + 160)))
  {
    *(a4 + 72) = 1;
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::clear(a1 + 144);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 192));
    *(a1 + 184) = a1 + 192;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    v21 = v25;
    v22 = v26;
    while (v21 != v22)
    {
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&,std::shared_ptr<md::FlyoverDsmTileData> const&>((a1 + 144), (*v21 + 168));
      std::__tree<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::__emplace_unique_key_args<unsigned char,unsigned char const&>(a1 + 184, *(*v21 + 169));
      v21 += 16;
    }
  }

  v23 = *(a1 + 128);
  if (*a4 != v23)
  {
    gdc::ServiceLocator::associate<md::RouteElevationSource,md::FlyoverRouteElevationSource>(*(a1 + 120));
    v23 = *(a1 + 128);
  }

  *a4 = v23;
  md::RouteElevationSourceContext::operator=(a4 + 8, a1 + 144);
  *&v24 = &v25;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v24);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v28);
}

void sub_1B2A23F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(v3, va1);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va2);
  _Unwind_Resume(a1);
}

void sub_1B2A23F54()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B2A23F34);
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t md::Logic<md::RouteLineLogic,md::RouteLineContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8E4587A431F9C696)
  {
    v8[10] = v3;
    v8[11] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::NavigationContext,md::ElevationContext,md::CameraContext,md::SceneContext>,gdc::TypeList<md::PuckContext,md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 128))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC81F81A7CB7767BBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0xE42D19AFCA302E68))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 144))(v5, a2, v14, v3);
    }
  }

  return result;
}

void md::LocalNorthLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v5 = *a3;
  if (*(*a3 + 82) != 1)
  {
    return;
  }

  v57 = *a3;
  v7 = a3[1];
  v6 = a3[2];
  v66[0] = &unk_1F2A43620;
  v66[1] = &v61;
  v66[3] = v66;
  md::StyleLogicContext::parseEvents(v5, v66);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v66);
  v8 = gdc::Camera::cameraFrame(v6);
  v59 = *(v8 + 8);
  v9 = tan(*v8 * 0.5 + 0.785398163);
  v10 = log(v9);
  v11 = 0;
  v12 = 0;
  v13.f64[0] = v59.f64[0];
  v13.f64[1] = v10;
  __asm { FMOV            V1.2D, #0.5 }

  v65[0] = 1835037;
  v60 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v13);
  v19 = -1;
  do
  {
    v20 = *(v65 + v12);
    v21 = *v7;
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
    }

    v22 = *(v21 + 48);
    v23 = *(v21 + 56);
    if (v22 == v23)
    {
      goto LABEL_8;
    }

    v24 = *(v21 + 48);
    while (*v24 != v20)
    {
      v24 += 16;
      if (v24 == v23)
      {
        goto LABEL_8;
      }
    }

    if (v24 == v23)
    {
LABEL_8:
      v25 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v22 != v20)
      {
        v22 += 16;
        if (v22 == v23)
        {
          v22 = *(v21 + 56);
          break;
        }
      }

      v25 = (v22 + 4);
    }

    v28 = *v25;
    v26 = v25 + 1;
    v27 = v28;
    if (v28 != v26)
    {
      while (1)
      {
        v39 = v27[4];
        v38 = v27[5];
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v39)
        {
          v29 = *(v39 + 169);
          if (v11 < v29)
          {
            break;
          }
        }

        if (v38)
        {
          goto LABEL_29;
        }

LABEL_30:
        v40 = v27[1];
        if (v40)
        {
          do
          {
            v41 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v41 = v27[2];
            _ZF = *v41 == v27;
            v27 = v41;
          }

          while (!_ZF);
        }

        v27 = v41;
        if (v41 == v26)
        {
          goto LABEL_36;
        }
      }

      v30 = 0;
      v31 = 1;
      v32 = 1.0 / (1 << v29);
      v33 = v32 * ((1 << v29) + ~*(v39 + 172));
      v34 = v32 * *(v39 + 176) + v32;
      *&v67 = v32 * *(v39 + 176);
      *(&v67 + 1) = v33;
      v68 = v34;
      v69 = v33 + v32;
      v35 = &v67;
      v36 = v60.f64[0];
      while (v36 >= *v35 && v36 < *(&v68 + v30))
      {
        v37 = v31;
        v31 = 0;
        v36 = v60.f64[1];
        v35 = &v67 + 1;
        v30 = 1;
        if ((v37 & 1) == 0)
        {
          v19 = *(v39 + 724);
          goto LABEL_23;
        }
      }

      v29 = v11;
LABEL_23:
      v11 = v29;
      if (!v38)
      {
        goto LABEL_30;
      }

LABEL_29:
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      goto LABEL_30;
    }

LABEL_36:
    v12 += 2;
  }

  while (v12 != 4);
  if (v19 != *(a1 + 168) || v61 == 1)
  {
    *(a1 + 168) = v19;
    LODWORD(v62) = 5;
    WORD2(v62) = 15;
    v63 = 41;
    v64 = v19;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v65, &v62, 2uLL);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v67, v65);
    gss::FeatureAttributeSet::sort(v67, *(&v67 + 1));
    if ((a1 + 120) != &v67)
    {
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>((a1 + 120), v67, *(&v67 + 1), (*(&v67 + 1) - v67) >> 3);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v67);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v65);
    if (*v57)
    {
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v67, *v57, (a1 + 120));
      v42 = v67;
      v67 = 0uLL;
      v43 = *(a1 + 160);
      *(a1 + 152) = v42;
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        if (*(&v67 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v67 + 1));
        }
      }
    }
  }

  v44 = *(a1 + 152);
  v45 = 0.0;
  if (!v44)
  {
    goto LABEL_47;
  }

  v46 = *(v44 + 16);
  if (!v46)
  {
    goto LABEL_47;
  }

  v48 = std::__shared_weak_count::lock(v46);
  if (!v48)
  {
    goto LABEL_47;
  }

  v49 = v48;
  if (*(v44 + 8))
  {
    v50 = *(v44 + 16);
    if (v50 && (v56 = std::__shared_weak_count::lock(v50)) != 0)
    {
      v51 = atomic_load((*(*(v44 + 8) + 16) + 2786));
      std::__shared_weak_count::__release_shared[abi:nn200100](v56);
    }

    else
    {
      v51 = atomic_load((MEMORY[0x10] + 2786));
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
    if ((v51 & 1) == 0)
    {
      goto LABEL_47;
    }

    v52 = *(a1 + 152);
    v53 = *(a1 + 160);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v67 = v52;
      *(&v67 + 1) = v53;
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0;
      if (!v52)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v67 = v52;
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0;
      if (!v52)
      {
        goto LABEL_62;
      }
    }

    v55 = (*(*v52 + 48))(v52, &v68);
    v70 = v55;
    if (!v53)
    {
      if (!v55)
      {
        goto LABEL_62;
      }

      goto LABEL_59;
    }

LABEL_58:
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    if ((v70 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_59:
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(266, 2, *(v67 + 24), 0);
    v45 = v54;
    if (v70)
    {
      (*(*v67 + 56))(v67);
    }

LABEL_62:
    if (v69 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v69);
    }

    v48 = *(&v67 + 1);
    if (!*(&v67 + 1))
    {
      goto LABEL_47;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v48);
LABEL_47:
  if (*a4 != v45)
  {
    *a4 = v45;
    v47 = *(a1 + 200);
    if (v47)
    {
      *&v67 = v45;
      std::function<void ()(geo::Unit<geo::DegreeUnitDescription,double>)>::operator()(v47);
    }
  }
}

void sub_1B2A24844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__110__function6__funcIZN2md15LocalNorthLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_17StyleLogicContextENS2_12SceneContextENS2_13CameraContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_22LocalNorthLogicContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEEclEOSO_(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 5 || v2 == 0)
  {
    **(result + 8) = 1;
  }

  return result;
}

uint64_t std::function<void ()(geo::Unit<geo::DegreeUnitDescription,double>)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::SceneContext,md::CameraContext>(v4);
  }
}

void *md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::SceneContext,md::CameraContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xE42D19AFCA302E68))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

uint64_t md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC81F81A7CB7767BBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::SceneContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868)
  {
    v16[11] = v3;
    v16[12] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
      if (v9 && (v14 = v9[5], *(v14 + 8) == 0x1AF456233693CD46))
      {
        v10 = *(v14 + 32);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x8BD499FBD96FBB9ELL)[5] + 32);
      v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1B8B241A8D896A1DuLL);
      if (v12 && (v15 = v12[5], *(v15 + 8) == 0x1B8B241A8D896A1DLL))
      {
        v13 = *(v15 + 32);
      }

      else
      {
        v13 = 0;
      }

      v16[0] = v10;
      v16[1] = v11;
      v16[2] = v13;
      return (*(*v7 + 144))(v7, a2, v16, v5);
    }
  }

  return result;
}

void md::AnchorLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  v10 = a1 + 136;
  v9 = *(a1 + 136);
  std::mutex::lock((v9 + 24));
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v9);
  std::mutex::unlock((v9 + 24));
  LODWORD(v9) = *(v10 + 16);
  if (v9 != md::LayoutContext::worldType(a2) || *(a1 + 120) != *v8 || (v11 = *(a1 + 121), v12 = md::LayoutContext::cameraType(a2), v11 != gdc::ToCoordinateSystem(v12)))
  {
    *(a1 + 152) = md::LayoutContext::worldType(a2);
    *(a1 + 120) = *v8;
    v13 = md::LayoutContext::cameraType(a2);
    *(a1 + 121) = gdc::ToCoordinateSystem(v13);
    md::AnchorLogic::_resetExternalAnchors(*(a1 + 200));
    v14 = *(a1 + 128);
    *(a1 + 128) = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(a1 + 152);
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3u:
          goto LABEL_15;
        case 5u:
          md::AnchorLogic::createMercatorElevationCache(a1);
        case 4u:
LABEL_14:
          if (*(a1 + 120) != 1)
          {
            operator new();
          }

LABEL_15:
          md::AnchorLogic::createMercatorElevationCache(a1);
      }
    }

    else
    {
      if (v15 - 1 < 2)
      {
        operator new();
      }

      if (!*(a1 + 152))
      {
        goto LABEL_14;
      }
    }
  }

  v16 = *(a1 + 128);
  *a4 = v16;
  a4[1] = v10;
  if (v16)
  {
    if (*(a1 + 120) == 1)
    {
      *(v16 + 64) = v8[5] * v8[4];
      if (v7)
      {
        *(v16 + 68) = *(v7 + 88);
      }
    }

    else
    {
      *(v16 + 64) = v8[5];
    }
  }

  for (i = *(a1 + 200); i; i = *i)
  {
    geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(&v19, (i + 2));
    v18 = v20;
    [v18 layoutWithContext:a2];

    v19 = off_1F2A05BB8;
  }
}

uint64_t md::LayoutContext::worldType(md::LayoutContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 736))
  {
    return *(this + 212);
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "_frameState.has_value()";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
    v9 = 1024;
    v10 = 92;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
  }

  if (*(this + 736))
  {
    return *(this + 212);
  }

  v4 = std::__throw_bad_optional_access[abi:nn200100]();
  return md::AnchorLogic::_resetExternalAnchors(v4);
}

void md::AnchorLogic::_resetExternalAnchors(md::AnchorLogic *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v1 = this;
    do
    {
      geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(&v3, v1 + 16);
      v2 = v4;
      [v2 destroyAnchor];

      v3 = off_1F2A05BB8;
      v1 = *v1;
    }

    while (v1);
  }
}

void md::AnchorManager::~AnchorManager(md::AnchorManager *this)
{
  md::AnchorManager::~AnchorManager(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A058E8;
  for (i = this + 40; ; (*(**(i + 2) + 96))(*(i + 2)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 24);
}

uint64_t *std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>::resolveDependencies(void *a1, void *a2)
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

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x1B8B241A8D896A1DLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868)
  {
    v8[7] = v3;
    v8[8] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 128))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x521897C68EA476F3)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x412AFB1345D08930uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x412AFB1345D08930))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13[0] = v9;
      v13[1] = v12;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>::runBeforeLayout(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = *(a1 + 120);
  v7 = *(a2 + 16);
  v68 = 0uLL;
  v69 = 0;
  v8 = *v7;
  do
  {
    v9 = *v8;
    v8 += 5;
  }

  while (v9 != 0x22D45F5AAD4BF408);
  v11 = *(v8 - 2);
  v10 = *(v8 - 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  (**v11)(v11);
  v64 = v5;
  v65 = v7;
  v63 = v3;
  v12 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(v6);
  v13 = (a1 + 136);
  v14 = v12[4];
  v66 = v12[5];
  if (v14 != v66)
  {
    v15 = 0;
    do
    {
      v17 = *(a1 + 144);
      v18 = *(a1 + 152);
      *&v70 = *(v12[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
      v16 = v70;
      *(&v70 + 1) = a1 + 168;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v17, v18, &v70);
      v19 = *(a1 + 144);
      v20 = *(a1 + 152);
      *&v70 = v16;
      *(&v70 + 1) = a1 + 168;
      v3 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v19, v20, &v70);
      v21 = *(a1 + 152);
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>((a1 + 232), *(a1 + 240), v3, v21, (v21 - v3) >> 4);
      if (v3 != v21)
      {
        v22 = v21;
        v23 = *(a1 + 152);
        while (v22 != v23)
        {
          *v3 = *v22;
          *(v3 + 8) = *(v22++ + 2);
          v3 += 16;
        }

        *(a1 + 152) = v3;
      }

      v24 = *(a1 + 240);
      v7 = *(a1 + 232);
      if (v24 != v7)
      {
        do
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(&v68, (v7 + 8));
          v3 = *v7;
          if (*v7)
          {
            v25 = *v13;
            if (*(*v13 + 16))
            {
              (**v3)(*v7);
              *v3 = *(v25 + 40);
              *(v25 + 40) = v3;
            }
          }

          v7 += 16;
        }

        while (v7 != v24);
        v7 = *(a1 + 232);
      }

      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      v28 = 126 - 2 * __clz((v27 - v26) >> 4);
      *(a1 + 240) = v7;
      if (v27 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)34>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)34> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v26, v27, v29, 1);
      v14 += 4;
      ++v15;
    }

    while (v14 != v66);
  }

  v30 = *v65;
  v31 = *(v65 + 8);
  if (*v65 != v31)
  {
    v32 = *v65;
    while (*v32 != 0x41D4E9297E100630)
    {
      v32 += 5;
      if (v32 == v31)
      {
        goto LABEL_26;
      }
    }

    if (v32 != v31)
    {
      v61 = v32[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_26:
  if (v30 != v31)
  {
    v33 = v30;
    while (*v33 != 0x4EDAD23DFB014132)
    {
      v33 += 5;
      if (v33 == v31)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v31)
    {
      v62 = v33[4];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_30:
  if (v30 != v31)
  {
    while (*v30 != 0x348A0B0E758C07C2)
    {
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_33;
      }
    }

    if (v30 != v31)
    {
      v60 = v30[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }
    }
  }

LABEL_33:
  v34 = *(&v68 + 1);
  v35 = v68;
  if (*(&v68 + 1) != v68)
  {
    v36 = 0;
    if (((*(&v68 + 1) - v68) >> 2) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = (*(&v68 + 1) - v68) >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | v35[v36];
      cleanup(*v65, *(v65 + 8), v6, v3);
      ++v36;
    }

    while (v37 != v36);
    v7 = v35;
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *v7;
      ecs2::BasicRegistry<void>::destroy(v6, v3);
      v7 += 4;
    }

    while (v7 != v34);
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(v6);
  v70 = 0uLL;
  v71 = 0;
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(v6);
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  if (v39 == v40)
  {
    v41 = 0uLL;
  }

  else
  {
    do
    {
      std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(&v70, *v39++);
    }

    while (v39 != v40);
    v41 = v70;
  }

  v42 = v41;
  if (v41 != *(&v41 + 1))
  {
    v43 = v41;
    do
    {
      v7 = v7 & 0xFFFFFFFF00000000 | *v43;
      ecs2::BasicRegistry<void>::destroy(v6, v7);
      ++v43;
    }

    while (v43 != *(&v42 + 1));
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v35)
  {
    operator delete(v35);
  }

  v67 = md::LayoutContext::cameraType(v63);
  v44 = *(v63 + 2);
  *&v68 = *(a1 + 120);
  v45 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = v44;
  v71 = &v67;
  v72 = v64;
  v73 = &v68;
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  if (v46 != v47)
  {
    v48 = v45;
    v49 = 0;
    do
    {
      determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)34>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)34> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34> &)#1}::operator()(&v70, (*(*(v48 + 56) + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v49 & 0x3F)));
      v46 += 4;
      ++v49;
    }

    while (v46 != v47);
  }

  *&v68 = *(a1 + 120);
  v50 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = &v68;
  v51 = *(v50 + 32);
  v52 = *(v50 + 40);
  if (v51 != v52)
  {
    v58 = v50;
    v59 = 0;
    do
    {
      createEnterLeaveChangedComponents<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> const&)#1}::operator()(&v70, *(*(v58 + 56) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v59 & 0x3F));
      v51 += 4;
      ++v59;
    }

    while (v51 != v52);
  }

  result = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(*(a1 + 120));
  if (*(result + 40) != *(result + 32))
  {
    v54 = **(a1 + 128);
    do
    {
      v55 = *v54;
      v54 += 5;
    }

    while (v55 != 0x22D45F5AAD4BF408);
    v57 = *(v54 - 2);
    v56 = *(v54 - 1);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v56);
    }

    result = (**v57)(v57);
    **(result + 744) = 1;
  }

  return result;
}

void sub_1B2A25DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,geo::small_vector<geo::QuadTile,8ul>>,0>(v1 + 2);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,geo::small_vector<geo::QuadTile,8ul>>,0>(void *a1)
{
  v2 = a1[14];
  if (v2 != a1[16])
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3 != a1[4])
  {

    free(v3);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)34>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)34> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    v9 = v7;
LABEL_3:
    v10 = a3 - 1;
    while (1)
    {
      v7 = v9;
      a3 = v10;
      v11 = (a2 - v9) >> 4;
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3uLL:

            return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, a2 - 4);
          case 4uLL:

            return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, v9 + 8, a2 - 4);
          case 5uLL:

            return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v9 + 4, v9 + 8, v9 + 12, a2 - 4);
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
          v22 = *v9;
          if (*(*(*v8 + 392) + 169) > *(*(*v9 + 392) + 169))
          {
            *v9 = *v8;
            *(a2 - 2) = v22;
            v23 = *(v9 + 2);
            *(v9 + 2) = *(a2 - 2);
            *(a2 - 2) = v23;
          }

          return result;
        }
      }

      if (v11 <= 23)
      {
        if (a4)
        {
          if (v9 != a2)
          {
            v12 = v9 + 2;
            if (v9 + 2 != a2)
            {
              v13 = 0;
              v14 = v9;
              do
              {
                v15 = v12;
                v16 = v14[2];
                v17 = *v14;
                if (*(*(v16 + 392) + 169) > *(*(*v14 + 392) + 169))
                {
                  v18 = *(v14 + 6);
                  v19 = v13;
                  while (1)
                  {
                    v20 = v9 + v19;
                    *(v20 + 2) = v17;
                    *(v20 + 6) = *(v9 + v19 + 8);
                    if (!v19)
                    {
                      break;
                    }

                    v17 = *(v20 - 2);
                    v19 -= 16;
                    if (*(*(v16 + 392) + 169) <= *(*(v17 + 392) + 169))
                    {
                      v21 = v9 + v19 + 16;
                      goto LABEL_22;
                    }
                  }

                  v21 = v9;
LABEL_22:
                  *v21 = v16;
                  *(v21 + 8) = v18;
                }

                v12 = v15 + 4;
                v13 += 16;
                v14 = v15;
              }

              while (v15 + 4 != a2);
            }
          }
        }

        else
        {

          return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, a2);
        }

        return result;
      }

      if (a3 == -1)
      {
        if (v9 != a2)
        {

          return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, a2, a2);
        }

        return result;
      }

      v24 = v11 >> 1;
      v25 = &v9[2 * (v11 >> 1)];
      if (v11 < 0x81)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(&v9[2 * (v11 >> 1)], v9, a2 - 4);
      }

      else
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9, v25, a2 - 4);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9 + 4, v25 - 4, a2 - 8);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v9 + 8, &v9[2 * v24 + 2], a2 - 12);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(v25 - 4, v25, &v9[2 * v24 + 2]);
        v26 = *v9;
        *v9 = *v25;
        *v25 = v26;
        LODWORD(v26) = *(v9 + 2);
        *(v9 + 2) = *(v25 + 2);
        *(v25 + 2) = v26;
      }

      if ((a4 & 1) == 0 && *(*(*(v9 - 2) + 392) + 169) <= *(*(*v9 + 392) + 169))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(v9, a2);
        v9 = result;
        a4 = 0;
        goto LABEL_3;
      }

      v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(v9, a2);
      if ((v28 & 1) == 0)
      {
        goto LABEL_45;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v9, v27);
      v9 = (v27 + 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v27 + 4, a2);
      if (result)
      {
        break;
      }

      v10 = a3 - 1;
      if (!v29)
      {
LABEL_45:
        result = std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)34>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)34> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v7, v27, a3, a4 & 1);
        a4 = 0;
        v9 = (v27 + 4);
        goto LABEL_3;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)34>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)34> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34> &)#1}::operator()(uint64_t a1, void *a2)
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

void sub_1B2A271D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p)
{
  v54 = *(v52 - 168);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v54);
  }

  v55 = *(v52 - 112);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>::resolveDependencies(void *a1)
{
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x3070CB6B3C7F21D3uLL);
  if (v2 && (v3 = v2[5], *(v3 + 8) == 0x3070CB6B3C7F21D3))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x412AFB1345D08930uLL);
  return v4;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x521897C68EA476F3)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void sub_1B2A27668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v25 - 56) = &a23;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::vector<gm::LineSegment<float,3>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  *(v25 - 56) = &a20;
  std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>>>::__destroy_vector::operator()[abi:nn200100]((v25 - 56));
  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>>>>>>::__deallocate_node(a17);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::__unordered_map_hasher<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::hash<gdc::Tiled const*>,std::equal_to<gdc::Tiled const*>,true>,std::__unordered_map_equal<gdc::Tiled const*,std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>,std::equal_to<gdc::Tiled const*>,std::hash<gdc::Tiled const*>,true>,std::allocator<std::__hash_value_type<gdc::Tiled const*,geo::linear_map<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>,std::equal_to<debugComponents::DisplayOptions>,std::allocator<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>,std::vector<std::pair<debugComponents::DisplayOptions,std::vector<gm::LineSegment<float,3>>>>>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v23, v24);
  _Unwind_Resume(a1);
}

double md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xEB7D991403622616)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

void md::BVHDebugLogic::runBeforeLayout(uint64_t a1, uint64_t a2, unint64_t a3, md::DebugDrawContext *a4)
{
  v7 = +[VKDebugSettings sharedSettings];
  if (*(a1 + 128) == 1)
  {
    md::DebugDrawContext::clearDebugDrawContext(a4);
    *(a1 + 128) = 0;
  }

  if (([v7 drawCollisionGeometries] & 1) != 0 || objc_msgSend(v7, "drawCollisionRadii")) && ((objc_msgSend(v7, "enableCollisionWithCollisionMesh") & 1) != 0 || (objc_msgSend(v7, "enableCollisionWithElevationRaster")))
  {
    v166 = a4;
    v8 = *(a3 + 8);
    v186 = 0u;
    v187 = 0u;
    v185 = 0u;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v9 = ecs2::BasicRegistry<void>::storage<md::CollisionTrianglesDebug>(*(a1 + 120));
    v162 = v8;
    v10 = v9[4];
    v11 = v9[5];
    v165 = a1;
    if (v10 == v11)
    {
      v58 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = (*(v9[7] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v12 & 0x3F));
        LODWORD(v170) = *v10;
        v14 = *v13;
        v15 = v13[1];
        while (v14 != v15)
        {
          if (*(v14 + 80) == 2)
          {
            for (i = 0; i != 3; ++i)
            {
              v17 = *(v14 + 8 * i);
              *(&v177 + i) = v17;
            }

            for (j = 0; j != 3; ++j)
            {
              v19 = *(v14 + 8 * j + 24);
              *(&v174 + j) = v19;
            }

            for (k = 0; k != 12; k += 4)
            {
              *(__p + k) = *(&v174 + k) - *(&v177 + k);
            }

            v21 = __p[1];
            v22 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v22;
            HIDWORD(__p[2]) = v21;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
            for (m = 0; m != 3; ++m)
            {
              v24 = *(v14 + 8 * m);
              *(&v177 + m) = v24;
            }

            for (n = 0; n != 3; ++n)
            {
              v26 = *(v14 + 8 * n + 48);
              *(&v174 + n) = v26;
            }

            for (ii = 0; ii != 12; ii += 4)
            {
              *(__p + ii) = *(&v174 + ii) - *(&v177 + ii);
            }

            v28 = __p[1];
            v29 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v29;
            HIDWORD(__p[2]) = v28;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
            for (jj = 0; jj != 3; ++jj)
            {
              v31 = *(v14 + 8 * jj + 24);
              *(&v177 + jj) = v31;
            }

            for (kk = 0; kk != 3; ++kk)
            {
              v33 = *(v14 + 8 * kk + 48);
              *(&v174 + kk) = v33;
            }

            for (mm = 0; mm != 12; mm += 4)
            {
              *(__p + mm) = *(&v174 + mm) - *(&v177 + mm);
            }

            v35 = __p[1];
            v36 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v36;
            HIDWORD(__p[2]) = v35;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
          }

          else
          {
            for (nn = 0; nn != 3; ++nn)
            {
              v38 = *(v14 + 8 * nn);
              *(&v177 + nn) = v38;
            }

            for (i1 = 0; i1 != 3; ++i1)
            {
              v40 = *(v14 + 8 * i1 + 24);
              *(&v174 + i1) = v40;
            }

            for (i2 = 0; i2 != 12; i2 += 4)
            {
              *(__p + i2) = *(&v174 + i2) - *(&v177 + i2);
            }

            v42 = __p[1];
            v43 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v43;
            HIDWORD(__p[2]) = v42;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v182, __p);
            for (i3 = 0; i3 != 3; ++i3)
            {
              v45 = *(v14 + 8 * i3);
              *(&v177 + i3) = v45;
            }

            for (i4 = 0; i4 != 3; ++i4)
            {
              v47 = *(v14 + 8 * i4 + 48);
              *(&v174 + i4) = v47;
            }

            for (i5 = 0; i5 != 12; i5 += 4)
            {
              *(__p + i5) = *(&v174 + i5) - *(&v177 + i5);
            }

            v49 = __p[1];
            v50 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v50;
            HIDWORD(__p[2]) = v49;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v182, __p);
            for (i6 = 0; i6 != 3; ++i6)
            {
              v52 = *(v14 + 8 * i6 + 24);
              *(&v177 + i6) = v52;
            }

            for (i7 = 0; i7 != 3; ++i7)
            {
              v54 = *(v14 + 8 * i7 + 48);
              *(&v174 + i7) = v54;
            }

            for (i8 = 0; i8 != 12; i8 += 4)
            {
              *(__p + i8) = *(&v174 + i8) - *(&v177 + i8);
            }

            v56 = __p[1];
            v57 = __p[0];
            __p[0] = v177;
            LODWORD(__p[1]) = DWORD2(v177);
            *(&__p[1] + 4) = v57;
            HIDWORD(__p[2]) = v56;
            std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v182, __p);
          }

          v14 += 88;
        }

        geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert(&v185, &v170);
        ++v10;
        ++v12;
      }

      while (v10 != v11);
      v58 = v182;
      if (v182 != v183)
      {
        LODWORD(__p[0]) = -3653568;
        BYTE4(__p[0]) = 0;
        LOBYTE(__p[1]) = 0;
        BYTE4(__p[1]) = 1;
        i9 = v166;
        md::DebugDrawContext::addWorldDebugLines(v166, &v182, __p);
        a1 = v165;
LABEL_61:
        v63 = v179;
        if (v179 != v180)
        {
          LODWORD(__p[0]) = -65281;
          BYTE4(__p[0]) = 0;
          LOBYTE(__p[1]) = 0;
          BYTE4(__p[1]) = 1;
          md::DebugDrawContext::addWorldDebugLines(i9, &v179, __p);
        }

        if (v63)
        {
          operator delete(v63);
        }

        if (v58)
        {
          operator delete(v58);
        }

        v64 = ecs2::BasicRegistry<void>::storage<md::CameraCollision>(*(a1 + 120));
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v65 = v64[4];
        v66 = v64[5];
        if (v65 != v66)
        {
          v67 = 0;
          do
          {
            v68 = *(v64[7] + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 72 * (v67 & 0x3F);
            LODWORD(v177) = *v65;
            v69 = *v68;
            if (*(v68 + 48))
            {
              v70 = *(v68 + 16);
              *__p = v69;
              __p[2] = v70;
              __p[3] = 0x3FE0000000000000;
              v189 = 1;
              std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::push_back[abi:nn200100](&v179, __p);
            }

            else
            {
              v71 = *(v68 + 16);
              *__p = v69;
              __p[2] = v71;
              __p[3] = 0x3FE0000000000000;
              v189 = 1;
              std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::push_back[abi:nn200100](&v182, __p);
            }

            if (v189 != -1)
            {
              (off_1F2A3C1A8[v189])(&v174, __p);
            }

            geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert((a1 + 136), &v177);
            ++v65;
            ++v67;
          }

          while (v65 != v66);
          v73 = v182;
          v72 = v183;
          for (i9 = v166; v73 != v72; v73 += 112)
          {
            LODWORD(__p[0]) = -12566328;
            BYTE4(__p[0]) = 0;
            LOBYTE(__p[1]) = 0;
            BYTE4(__p[1]) = 0;
            md::DebugDrawContext::addWorldDebugShape(v166, v73, __p);
          }
        }

        v75 = v179;
        for (i10 = v180; v75 != i10; v75 += 112)
        {
          LODWORD(__p[0]) = -12531648;
          BYTE4(__p[0]) = 0;
          LOBYTE(__p[1]) = 0;
          BYTE4(__p[1]) = 0;
          md::DebugDrawContext::addWorldDebugShape(i9, v75, __p);
        }

        __p[0] = &v179;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](__p);
        __p[0] = &v182;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](__p);
        v76 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionPathDebug>(*(a1 + 120));
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v177 = 0uLL;
        v178 = 0;
        v77 = v76[4];
        v78 = v76[5];
        if (v77 == v78)
        {
          v100 = 0;
        }

        else
        {
          v79 = 0;
          do
          {
            v80 = *(v76[7] + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8));
            v81 = 56 * (v79 & 0x3F);
            v82 = v80 + v81;
            LODWORD(v190) = *v77;
            if (*(v80 + v81 + 48) == 1)
            {
              v83 = *(v82 + 16);
              *__p = *v82;
              __p[2] = v83;
              __p[3] = 0x3FE0000000000000;
              v189 = 1;
              LODWORD(v174) = -16119286;
              BYTE4(v174) = 0;
              LOBYTE(v175) = 0;
              BYTE4(v175) = 0;
              md::DebugDrawContext::addWorldDebugShape(v166, __p, &v174);
              if (v189 != -1)
              {
                (off_1F2A3C1A8[v189])(&v174, __p);
              }

              for (i11 = 0; i11 != 3; ++i11)
              {
                v85 = *(v80 + v81 + 8 * i11);
                *(&v174 + i11) = v85;
              }

              for (i12 = 0; i12 != 3; ++i12)
              {
                v87 = *(v80 + v81 + 24 + 8 * i12);
                *(&v170 + i12) = v87;
              }

              v88 = 0;
              v89 = v165;
              do
              {
                *(__p + v88) = *(&v170 + v88) - *(&v174 + v88);
                v88 += 4;
              }

              while (v88 != 12);
              v90 = __p[1];
              v91 = __p[0];
              __p[0] = *&v174;
              LODWORD(__p[1]) = LODWORD(v175);
              *(&__p[1] + 4) = v91;
              HIDWORD(__p[2]) = v90;
              std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v177, __p);
            }

            else
            {
              v92 = *(v82 + 16);
              *__p = *v82;
              __p[2] = v92;
              __p[3] = 0x3FE0000000000000;
              v189 = 1;
              LODWORD(v174) = -4144960;
              BYTE4(v174) = 0;
              LOBYTE(v175) = 0;
              BYTE4(v175) = 0;
              md::DebugDrawContext::addWorldDebugShape(v166, __p, &v174);
              if (v189 != -1)
              {
                (off_1F2A3C1A8[v189])(&v174, __p);
              }

              for (i13 = 0; i13 != 3; ++i13)
              {
                v94 = *(v80 + v81 + 8 * i13);
                *(&v174 + i13) = v94;
              }

              for (i14 = 0; i14 != 3; ++i14)
              {
                v96 = *(v80 + v81 + 24 + 8 * i14);
                *(&v170 + i14) = v96;
              }

              v97 = 0;
              v89 = v165;
              do
              {
                *(__p + v97) = *(&v170 + v97) - *(&v174 + v97);
                v97 += 4;
              }

              while (v97 != 12);
              v98 = __p[1];
              v99 = __p[0];
              __p[0] = *&v174;
              LODWORD(__p[1]) = LODWORD(v175);
              *(&__p[1] + 4) = v99;
              HIDWORD(__p[2]) = v98;
              std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
            }

            geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert((v89 + 136), &v190);
            ++v77;
            ++v79;
          }

          while (v77 != v78);
          v100 = v177;
          if (v177 == *(&v177 + 1))
          {
            i9 = v166;
          }

          else
          {
            LODWORD(__p[0]) = -16119286;
            BYTE4(__p[0]) = 0;
            LOBYTE(__p[1]) = 0;
            BYTE4(__p[1]) = 1;
            i9 = v166;
            md::DebugDrawContext::addWorldDebugLines(v166, &v177, __p);
          }
        }

        v101 = v179;
        if (v179 != v180)
        {
          LODWORD(__p[0]) = -4144960;
          BYTE4(__p[0]) = 0;
          LOBYTE(__p[1]) = 0;
          BYTE4(__p[1]) = 1;
          md::DebugDrawContext::addWorldDebugLines(i9, &v179, __p);
        }

        if (v100)
        {
          *(&v177 + 1) = v100;
          operator delete(v100);
        }

        if (v101)
        {
          operator delete(v101);
        }

        __p[0] = &v182;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](__p);
        if ([v7 drawCollisionRadii])
        {
          v102 = ecs2::BasicRegistry<void>::storage<md::CameraCollisionVolumeDebug>(*(v165 + 120));
          v103 = v102[4];
          v104 = v102[5];
          if (v103 != v104)
          {
            v105 = 0;
            do
            {
              v106 = *(v102[7] + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v105 & 0x3F);
              LODWORD(v179) = *v103;
              v107 = *(v106 + 16);
              *__p = *v106;
              *&__p[2] = v107;
              v189 = 1;
              v182 = 0x40A00000FF00FFFFLL;
              LOBYTE(v183) = 1;
              BYTE4(v183) = 1;
              md::DebugDrawContext::addWorldDebugShape(v166, __p, &v182);
              if (*(v106 + 32))
              {
                v108 = (v165 + 136);
              }

              else
              {
                v108 = &v185;
              }

              geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert(v108, &v179);
              if (v189 != -1)
              {
                (off_1F2A3C1A8[v189])(&v182, __p);
              }

              ++v103;
              ++v105;
            }

            while (v103 != v104);
          }
        }

        v109 = v165;
        v110 = ecs2::BasicRegistry<void>::storage<md::RaycastDebug>(*(v165 + 120));
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v111 = v110[4];
        v164 = v110[5];
        i24 = v166;
        if (v111 != v164)
        {
          v113 = 0;
          v163 = v110;
          do
          {
            v114 = (*(v110[7] + ((v113 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v113 & 0x3F));
            LODWORD(v170) = *v111;
            v116 = *v114;
            v115 = v114[1];
            if (*v114 == v115)
            {
              v117 = 0;
            }

            else
            {
              v117 = 0;
              do
              {
                if (*(v116 + 72) == 1)
                {
                  *__p = *(v116 + 48);
                  __p[2] = *(v116 + 64);
                  __p[3] = 0x3FE0000000000000;
                  v189 = 1;
                  std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::push_back[abi:nn200100](&v182, __p);
                  if (v189 != -1)
                  {
                    (off_1F2A3C1A8[v189])(&v177, __p);
                  }

                  v117 = 1;
                }

                v116 += 80;
              }

              while (v116 != v115);
            }

            v119 = v114[3];
            v118 = v114[4];
            while (v119 != v118)
            {
              for (i15 = 0; i15 != 3; ++i15)
              {
                v121 = *(v119 + 8 * i15);
                *(&v177 + i15) = v121;
              }

              for (i16 = 0; i16 != 3; ++i16)
              {
                v123 = *(v119 + 8 * i16 + 24);
                *(&v174 + i16) = v123;
              }

              for (i17 = 0; i17 != 12; i17 += 4)
              {
                *(__p + i17) = *(&v174 + i17) - *(&v177 + i17);
              }

              v125 = __p[1];
              v126 = __p[0];
              __p[0] = v177;
              LODWORD(__p[1]) = DWORD2(v177);
              *(&__p[1] + 4) = v126;
              HIDWORD(__p[2]) = v125;
              std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
              for (i18 = 0; i18 != 3; ++i18)
              {
                v128 = *(v119 + 8 * i18);
                *(&v177 + i18) = v128;
              }

              for (i19 = 0; i19 != 3; ++i19)
              {
                v130 = *(v119 + 8 * i19 + 48);
                *(&v174 + i19) = v130;
              }

              for (i20 = 0; i20 != 12; i20 += 4)
              {
                *(__p + i20) = *(&v174 + i20) - *(&v177 + i20);
              }

              v132 = __p[1];
              v133 = __p[0];
              __p[0] = v177;
              LODWORD(__p[1]) = DWORD2(v177);
              *(&__p[1] + 4) = v133;
              HIDWORD(__p[2]) = v132;
              std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
              for (i21 = 0; i21 != 3; ++i21)
              {
                v135 = *(v119 + 8 * i21 + 24);
                *(&v177 + i21) = v135;
              }

              for (i22 = 0; i22 != 3; ++i22)
              {
                v137 = *(v119 + 8 * i22 + 48);
                *(&v174 + i22) = v137;
              }

              for (i23 = 0; i23 != 12; i23 += 4)
              {
                *(__p + i23) = *(&v174 + i23) - *(&v177 + i23);
              }

              v139 = __p[1];
              v140 = __p[0];
              __p[0] = v177;
              LODWORD(__p[1]) = DWORD2(v177);
              *(&__p[1] + 4) = v140;
              HIDWORD(__p[2]) = v139;
              std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v179, __p);
              v119 += 80;
            }

            if (v117)
            {
              v141 = (v165 + 136);
            }

            else
            {
              v141 = &v185;
            }

            geo::sparse_set<ecs2::Entity,unsigned short,256ul>::insert(v141, &v170);
            ++v111;
            ++v113;
            v110 = v163;
          }

          while (v111 != v164);
          v143 = v182;
          v142 = v183;
          v109 = v165;
          for (i24 = v166; v143 != v142; v143 += 112)
          {
            LODWORD(__p[0]) = -256;
            BYTE4(__p[0]) = 0;
            LOBYTE(__p[1]) = 0;
            BYTE4(__p[1]) = 0;
            md::DebugDrawContext::addWorldDebugShape(v166, v143, __p);
          }
        }

        v144 = v179;
        if (v179 != v180)
        {
          __p[0] = 0x40000000FF507FFFLL;
          LOBYTE(__p[1]) = 1;
          BYTE4(__p[1]) = 0;
          md::DebugDrawContext::addWorldDebugLines(i24, &v179, __p);
        }

        memset(__p, 0, 24);
        if (*(v162 + 5592))
        {
          v145 = *(v162 + 5592);
        }

        else
        {
          v145 = v162;
        }

        v146 = gdc::CameraView::position(v145);
        v177 = *v146;
        v178 = *(v146 + 16);
        v147 = gdc::Camera::cameraFrame(v145);
        v148 = *(v147 + 8);
        v149 = *(v147 + 16);
        v150 = __sincos_stret(*v147);
        v151 = 6378137.0 / sqrt(v150.__sinval * v150.__sinval * -0.00669437999 + 1.0);
        v152 = (v151 + v149) * v150.__cosval;
        v153 = __sincos_stret(v148);
        v154 = 0;
        v174 = v152 * v153.__cosval;
        v175 = v152 * v153.__sinval;
        v176 = (v149 + v151 * 0.99330562) * v150.__sinval;
        do
        {
          v155 = *(&v177 + v154);
          *(&v168 + v154++) = v155;
        }

        while (v154 != 3);
        for (i25 = 0; i25 != 3; ++i25)
        {
          v157 = *(&v174 + i25);
          v167[i25] = v157;
        }

        for (i26 = 0; i26 != 3; ++i26)
        {
          *(&v190 + i26 * 4) = v167[i26] - *(&v168 + i26 * 4);
        }

        v170 = v168;
        v171 = v169;
        v172 = v190;
        v173 = v191;
        std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](__p, &v170);
        v170 = 0x3FC00000FFFF0000;
        LOBYTE(v171) = 1;
        LOBYTE(v172) = 0;
        md::DebugDrawContext::addWorldDebugLines(i24, __p, &v170);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        if (v144)
        {
          operator delete(v144);
        }

        __p[0] = &v182;
        std::vector<std::variant<gm::Box<double,3>,gm::Sphere<double,3,std::enable_if<true,void>>,geo::OrientedBox<double,3u,double,double>>>::__destroy_vector::operator()[abi:nn200100](__p);
        v159 = v187;
        v160 = *(&v186 + 1);
        if (*(&v186 + 1) != v187)
        {
          v161 = *(v109 + 120);
          do
          {
            v145 = v145 & 0xFFFFFFFF00000000 | *v160;
            ecs2::BasicRegistry<void>::destroy(v161, v145);
            ++v160;
          }

          while (v160 != v159);
          v160 = *(&v186 + 1);
        }

        *(v109 + 128) = 1;
        if (v160)
        {
          *&v187 = v160;
          operator delete(v160);
        }

        __p[0] = &v185;
        std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](__p);
        goto LABEL_180;
      }

      a1 = v165;
    }

    i9 = v166;
    goto LABEL_61;
  }

  v60 = *(a1 + 168);
  v61 = *(a1 + 160);
  if (v61 != v60)
  {
    v62 = *(a1 + 120);
    do
    {
      a3 = a3 & 0xFFFFFFFF00000000 | *v61;
      ecs2::BasicRegistry<void>::destroy(v62, a3);
      ++v61;
    }

    while (v61 != v60);
    *(a1 + 168) = *(a1 + 160);
  }

LABEL_180:
}