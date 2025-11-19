uint64_t md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator()(uint64_t a1, __int16 a2)
{
  v25 = a2;
  v3 = *(a1 + 8);
  v5 = **a1;
  v4 = *(*a1 + 8);
  v24[0] = &v25;
  v24[1] = v3;
  v6 = *(a1 + 16);
  v24[2] = v6;
  if (v5 == v4)
  {
    return **a1;
  }

  v7 = *v3;
  while (1)
  {
    v8 = *(v7 + 8 * v5->i64[0]);
    if ((a2 & 0x100) != 0)
    {
      break;
    }

    v9 = *(v8 + 147);
    if (v9 == 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    v5 = (v5 + 8);
    if (v5 == v4)
    {
      return **a1;
    }
  }

  v10 = *(v8 + 145);
  v9 = v10 == a2;
  if ((*(v8 + 147) & 1) == 0)
  {
    if (v10 != a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_7:
  if ((*v6 & 1) == 0 && v9)
  {
    goto LABEL_11;
  }

LABEL_13:
  v11 = &v4[-1].i8[8];
  if (v5 == &v4[-1].u64[1])
  {
    return **a1;
  }

  while (2)
  {
    v12 = *(v7 + 8 * *v11);
    if ((a2 & 0x100) != 0)
    {
      v14 = *(v12 + 145);
      v13 = v14 == a2;
      if (*(v12 + 147))
      {
        goto LABEL_18;
      }

      if (v14 == a2)
      {
        goto LABEL_24;
      }

LABEL_22:
      v11 -= 8;
      if (v11 == v5)
      {
        return **a1;
      }

      continue;
    }

    break;
  }

  v13 = *(v12 + 147);
  if (v13 != 1)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((*v6 & 1) != 0 || !v13)
  {
    goto LABEL_22;
  }

LABEL_24:
  v15 = (v11 - v5) >> 3;
  v16 = v15 + 1;
  if (v15 < 3)
  {
    v17 = 0;
    v22 = 0;
  }

  else
  {
    if (v16 >= 0xFFFFFFFFFFFFFFFLL)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15 + 1;
    }

    v18 = MEMORY[0x1E69E5398];
    while (1)
    {
      v19 = operator new(8 * v17, v18);
      if (v19)
      {
        break;
      }

      v20 = v17 >> 1;
      v21 = v17 > 1;
      v17 >>= 1;
      if (!v21)
      {
        v22 = 0;
        v17 = v20;
        goto LABEL_34;
      }
    }

    v22 = v19;
  }

LABEL_34:
  std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v5, v11, v24, v16, v22, v17);
  if (v22)
  {
    operator delete(v22);
  }

  return **a1;
}

void md::DaVinciGroundRenderLayer::layoutMainPass(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, ggl::zone_mallocator *a9, char a10)
{
  v11 = a3;
  v12 = a1;
  if (a6 != a7)
  {
    v13 = a8;
    v201 = a1 + 568;
    v202 = a3 + 128;
    v205 = (a3 + 96);
    __asm { FMOV            V0.4S, #1.0 }

    v203 = _Q0;
    v19 = a6;
    while (1)
    {
      v20 = v19;
      v21 = v19 + 1;
      v22 = *(*(*v13 + 8 * *v19) + 8);
      do
      {
        v19 = v21;
        if (v21 == a7)
        {
          break;
        }

        ++v21;
      }

      while (*(*(*v13 + 8 * *v19) + 8) == v22);
      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        md::DaVinciGroundRenderLayer::layoutMaterialRenderables(v12, a2, v11, a4, a5, v20, v19, v13, a9, a10);
      }

LABEL_147:
      if (v19 == a7)
      {
        goto LABEL_148;
      }
    }

    v23 = *(v11 + 20);
    v218 = *(*(v12 + 40) + 24);
    v24 = +[VKDebugSettings sharedSettings];
    v25 = [v24 daVinciWireframeEnabled];

    v26 = *(v12 + 3272);
    v27 = v26[1];
    v209 = *v26;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v207 = v27;
    v28 = *(a2 + 1);
    v208 = md::LayoutContext::get<md::LightingLogicContext>(v28);
    v29 = md::LayoutContext::get<md::SceneQueryContext>(v28);
    v30 = md::LayoutContext::get<md::MaterialContext>(v28);
    if (!*v30 || !*(v12 + 3288))
    {
LABEL_145:
      v11 = a3;
      if (v207)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v207);
      }

      goto LABEL_147;
    }

    if (v29)
    {
      v221 = *(v29 + 64);
    }

    else
    {
      v221 = 0;
    }

    v31 = 1704;
    if (v25)
    {
      v31 = 1920;
    }

    v206 = v201 + v31;
    while (1)
    {
      v32 = *(*v13 + 8 * *v20);
      if (*(v32 + 8) != 2)
      {
        goto LABEL_143;
      }

      v219 = *(v32 + 208);
      v33 = v12;
      v34 = *(v12 + 1840);
      v35 = v34[1];
      if (v35 == *v34)
      {
        v37 = v34[11];
        if (!v37)
        {
          goto LABEL_172;
        }

        v30 = (*(*v37 + 48))(v37);
        v36 = v30;
      }

      else
      {
        v36 = *(v35 - 8);
        v34[1] = v35 - 8;
      }

      v39 = v34[5];
      v38 = v34[6];
      if (v39 >= v38)
      {
        v41 = v34[4];
        v42 = (v39 - v41) >> 3;
        if ((v42 + 1) >> 61)
        {
          goto LABEL_173;
        }

        v43 = v38 - v41;
        v44 = v43 >> 2;
        if (v43 >> 2 <= (v42 + 1))
        {
          v44 = v42 + 1;
        }

        v45 = v43 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v44;
        *(&v255 + 1) = v34 + 7;
        if (v45)
        {
          v46 = ggl::zone_mallocator::instance(v30);
          v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::DecalPipelineSetup *>(v46, v45);
        }

        else
        {
          v47 = 0;
        }

        v49 = &v47[8 * v45];
        v48 = &v47[8 * v42];
        *v48 = v36;
        v40 = v48 + 8;
        v50 = v34[4];
        v51 = v34[5] - v50;
        v52 = &v48[-v51];
        memcpy(&v48[-v51], v50, v51);
        v53 = v34[4];
        v34[4] = v52;
        v34[5] = v40;
        v54 = v34[6];
        v34[6] = v49;
        *&v254[16] = v53;
        *&v255 = v54;
        *&v254[8] = v53;
        *v254 = v53;
        std::__split_buffer<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v254);
      }

      else
      {
        *v39 = v36;
        v40 = v39 + 1;
      }

      v34[5] = v40;
      *v254 = v36;
      v55 = v34[15];
      if (!v55)
      {
LABEL_172:
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_173:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      (*(*v55 + 48))(v55, v254);
      v56 = (v32 + 216);
      (*(**(v32 + 216) + 1040))(&v237, v23);
      if (v239 == 1)
      {
        v231.i8[0] = 0;
        v232 = 0;
      }

      else
      {
        (*(**v56 + 816))(&v231, v23);
      }

      if (v221)
      {
        if (v239)
        {
          v57 = 1;
        }

        else
        {
          v57 = v232;
        }
      }

      else
      {
        v57 = 0;
      }

      v58 = v218[21];
      if (v58 && (v59 = *(v58 + 32), v60 = *(v218[1] + 96), v59 < (*(v218[1] + 104) - v60) >> 3))
      {
        v61 = *(*(v60 + 8 * v59) + 16);
      }

      else
      {
        v61 = 0;
      }

      v265 = 0;
      v62 = v61 != 0;
      v221 = v57;
      v63 = v57 & v62;
      v264 = 0;
      v266 = 257;
      v267 = 0;
      v269 = 0;
      LOWORD(v270) = 0;
      v263 = *(a3 + 5);
      BYTE3(v264) = *(a3 + 6);
      BYTE6(v264) = a10;
      *(&v265 + 2) = v57 & v62;
      v268 = 0;
      BYTE1(v269) = 1;
      md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v244, v33 + 1384, &v263);
      v64 = *&v244[8];
      *v254 = *v244;
      if (*&v244[8])
      {
        atomic_fetch_add_explicit((*&v244[8] + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v36, v254);
        std::__shared_weak_count::__release_shared[abi:nn200100](v64);
        std::__shared_weak_count::__release_shared[abi:nn200100](v64);
      }

      else
      {
        ggl::PipelineSetup::setState(v36, v254);
      }

      v65 = v36[2];
      if (v63 && *(v65 + 315) == 1)
      {
        *(v36[21] + 16) = v61;
      }

      v30 = (*(**v56 + 360))(*v56, v23);
      v12 = v33;
      v13 = a8;
      if ((v30 & 0x100) != 0 && !v30)
      {
        goto LABEL_143;
      }

      v212 = v65;
      (*(**v56 + 976))(&v229, v23);
      v66 = (*(**v56 + 928))(*v56, v23);
      if (v229.i8[12])
      {
        v227.i8[0] = 0;
        v228 = 0;
      }

      else
      {
        (*(**v56 + 232))(&v227, v23);
        if ((v229.i8[12] & 1) == 0)
        {
          v68 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v228)), 0x1FuLL)), v227, v203);
          goto LABEL_64;
        }
      }

      v67 = *&v66;
      v68 = v229;
      if ((v66 & 0x100000000) == 0)
      {
        v67 = 1.0;
      }

      *&v68.i32[3] = v67;
LABEL_64:
      v216 = *&v68.i32[3];
      v230 = v68;
      v69 = *(v33 + 3288);
      v254[0] = 1;
      v70 = *(v33 + 2232);
      if (v70)
      {
        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v225, v69, (v32 + 216), (v32 + 232), v254, v23);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v70);
      }

      if (v216 == 0.0)
      {
        goto LABEL_141;
      }

      md::DaVinciGroundRenderLayer::setupStyleColorConstantData<ggl::DaVinci::DecalPipelineSetup,ggl::DaVinci::DecalPipelineState>(v33, v36, &v230);
      v71 = v225;
      v72 = v209;
      if (v225)
      {
        md::LayoutContext::frameState(a2);
        md::SharedResource::addFrameRef(v71, *(v73 + 624));
        v72 = *(v71 + 4);
      }

      v74 = v36[17];
      *(v74 + 48) = *(v33 + 2160);
      *(v74 + 56) = 0;
      v75 = v36[29];
      v76 = *(v75 + 56);
      *(v75 + 48) = 0;
      *(v75 + 56) = 0;
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v76);
      }

      v77 = v36[17];
      v77[1] = 0;
      v78 = *(a5 + 224);
      *v77 = v78;
      v79 = v36[29];
      v80 = *(a5 + 232);
      if (v80)
      {
        atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
      }

      v81 = v79[1];
      *v79 = v78;
      v79[1] = v80;
      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v81);
      }

      v82 = v36[17];
      *(v82 + 24) = 0;
      v83 = *(a5 + 240);
      *(v82 + 16) = v83;
      v84 = v36[29];
      v85 = *(a5 + 248);
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      v86 = *(v84 + 24);
      *(v84 + 16) = v83;
      *(v84 + 24) = v85;
      if (v86)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v86);
      }

      v87 = v36[17];
      *(v87 + 72) = 0;
      v88 = v208[2];
      *(v87 + 64) = v88;
      v89 = v36[29];
      v90 = v208[3];
      if (v90)
      {
        atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
      }

      v91 = *(v89 + 72);
      *(v89 + 64) = v88;
      *(v89 + 72) = v90;
      if (v91)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v91);
      }

      v92 = v36[17];
      *(v92 + 40) = 0;
      v93 = *(a5 + 408);
      *(v92 + 32) = v93;
      v94 = v36[29];
      v95 = *(a5 + 416);
      if (v95)
      {
        atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
      }

      v96 = *(v94 + 40);
      *(v94 + 32) = v93;
      *(v94 + 40) = v95;
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v96);
      }

      v97 = v36[17];
      *(v97 + 104) = 0;
      v98 = *(v33 + 2040);
      *(v97 + 96) = v98;
      v99 = v36[29];
      v100 = *(v33 + 2048);
      if (v100)
      {
        atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
      }

      v101 = *(v99 + 104);
      *(v99 + 96) = v98;
      *(v99 + 104) = v100;
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
      }

      *v36[21] = *(a3 + 296);
      if (*(a3 + 6) == 1)
      {
        v102 = v218[13];
        if (v102)
        {
          v103 = *(v102 + 32);
          v104 = *(v218[1] + 96);
          if (v103 >= (*(v218[1] + 104) - v104) >> 3)
          {
            v102 = 0;
          }

          else
          {
            v102 = *(*(v104 + 8 * v103) + 16);
          }
        }

        *(v36[21] + 8) = v102;
      }

      md::DaVinciGroundRenderLayer::setupStyleColorConstantData<ggl::DaVinci::DecalPipelineSetup,ggl::DaVinci::DecalPipelineState>(v33, v36, &v230);
      v106 = 1.0 / *(a3 + 40);
      if (*(a5 + 24) != 255)
      {
        for (i = 0; i != 4; ++i)
        {
          _D0 = *(v202 + 8 * i);
          __asm { FCVT            H0, D0 }

          *&v254[2 * i] = _D0;
        }

LABEL_114:
        _H0 = *&v254[4];
        __asm { FCVT            S0, H0 }

        v105.i32[0] = *v254;
        v141.i64[0] = vcvtq_f32_f16(v105).u64[0];
        v141.i64[1] = __PAIR64__(LODWORD(v106), _S0);
        goto LABEL_115;
      }

      if (*(a3 + 5) != 1 || *(a3 + 4) != 1)
      {
        for (j = 0; j != 4; ++j)
        {
          _D0 = *(v205 + j);
          __asm { FCVT            H0, D0 }

          *&v254[2 * j] = _D0;
        }

        goto LABEL_114;
      }

      v213 = 1.0 / *(a3 + 40);
      v109 = 0;
      v110 = *(a5 + 296);
      v111 = *(a5 + 304);
      v112 = *(a5 + 312);
      v113 = *(a5 + 320);
      v114 = v111 + v111;
      v115 = (v111 + v111) * v111;
      v116 = (v112 + v112) * v112;
      v117 = v110 + v110;
      v118 = (v110 + v110) * v111;
      v119 = (v112 + v112) * v113;
      v120 = v118 - v119;
      v121 = v112 * (v110 + v110);
      v122 = v113 * v114;
      v123 = v119 + v118;
      v124 = v113 * v114 + v121;
      v240[0] = 1.0 - (v115 + v116);
      v240[1] = v123;
      v125 = 1.0 - (v110 + v110) * v110;
      v126 = v114 * v112;
      v127 = v113 * v117;
      v240[6] = v124;
      v240[7] = v126 - v127;
      v240[2] = v121 - v122;
      v240[3] = v120;
      v240[4] = v125 - v116;
      v240[5] = v127 + v126;
      v240[8] = v125 - v115;
      v128 = v244;
      v129 = v240;
      do
      {
        v130 = 0;
        v131 = v128;
        do
        {
          *v131 = *&v129[v130];
          v131 += 4;
          v130 += 3;
        }

        while (v130 != 9);
        ++v109;
        v128 += 8;
        ++v129;
      }

      while (v109 != 3);
      *&v245 = 0;
      *&v247 = 0;
      v250 = 0;
      v253 = 0x3FF0000000000000;
      v252 = 0.0;
      v251 = 0uLL;
      gm::Matrix<double,4,4>::inverted<int,void>(v254, v244);
      v132 = v205[1];
      v233 = *v205;
      v234 = v132;
      v133 = gm::operator*<double,4,4,1>(v254, &v233);
      v135 = 0;
      __p[0] = *&v133;
      __p[1] = v134;
      v242 = v136;
      v243 = v137;
      do
      {
        _D0 = __p[v135];
        __asm { FCVT            H0, D0 }

        *(&v235 + v135++) = _D0;
      }

      while (v135 != 4);
      _H0 = v236;
      __asm { FCVT            S0, H0 }

      LODWORD(v134) = v235;
      v141.i64[0] = vcvtq_f32_f16(v134).u64[0];
      v141.i64[1] = __PAIR64__(LODWORD(v213), _S0);
LABEL_115:
      v214 = v141;
      *v244 = v141;
      v146 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>((v33 + 368), v244);
      if (v146)
      {
        v147 = v146[4];
      }

      else
      {
        v147 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::pop(*(v33 + 1848));
        *&v240[0] = v147;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v254, v147);
        *v256 = vcvt_f16_f32(v214);
        std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>((v33 + 368), v244);
        ggl::BufferMemory::~BufferMemory(v254);
      }

      v148 = v36[17];
      *(v148 + 80) = v147;
      *(v148 + 88) = 0;
      v149 = v36[29];
      v150 = *(v149 + 88);
      *(v149 + 80) = 0;
      *(v149 + 88) = 0;
      if (v150)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v150);
      }

      v151 = a3;
      if (v232)
      {
        v152 = v212;
        if ((v221 & (v212 != 0)) == 1)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v152 = v212;
        if ((v239 & v221 & 1) != 0 && v212)
        {
LABEL_125:
          if (*(v152 + 315) == 1)
          {
            if (v239 == 1)
            {
              v153.i64[0] = v237;
              v153.i64[1] = __PAIR64__(1.0, v238);
            }

            else
            {
              if ((v232 & 1) == 0)
              {
                v199 = std::__throw_bad_optional_access[abi:nn200100]();
                ggl::BufferMemory::~BufferMemory(v244);
                ggl::BufferMemory::~BufferMemory(v254);
                if (v20)
                {
                  operator delete(v20);
                }

                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                _Unwind_Resume(v199);
              }

              v153 = v231;
            }

            v215 = v153;
            *v244 = v153;
            v244[16] = 1;
            v154 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((v12 + 488), v244);
            if (v154)
            {
              v155 = *(v154 + 40);
            }

            else
            {
              v155 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(*(v12 + 2064));
              *&v240[0] = v155;
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v254, v155);
              *v256 = vcvt_f16_f32(v215);
              std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>((v12 + 488), v244);
              ggl::BufferMemory::~BufferMemory(v254);
            }

            v156 = v36[17];
            *(v156 + 128) = v155;
            *(v156 + 136) = 0;
            v157 = v36[29];
            v158 = *(v157 + 136);
            *(v157 + 128) = 0;
            *(v157 + 136) = 0;
            if (v158)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v158);
            }

            v151 = a3;
          }
        }
      }

      v159 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(*(*v219 + 120), 0);
      v160 = v36[13];
      *v160 = *v159;
      v160[1] = 0;
      v161 = v36[25];
      v162 = v161[1];
      *v161 = 0;
      v161[1] = 0;
      if (v162)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v162);
      }

      *(v36[21] + 24) = v72;
      ggl::RenderItem::RenderItem(v254, "");
      *(&v255 + 1) = v36;
      *&v255 = v206;
      *(&v256 + 1) = 0x100000000;
      v163 = *v219;
      v164 = (*(*(*v219 + 96) + 48) - *(*(*v219 + 96) + 40)) / *(*(*v219 + 96) + 8);
      if (v151[18].i8[0])
      {
        v165 = vdupq_n_s64(1uLL);
        v165.i64[0] = (*(*(*v219 + 96) + 48) - *(*(*v219 + 96) + 40)) / *(*(*v219 + 96) + 8);
        v151[12] = vaddq_s64(v151[12], v165);
        v151[17] = vaddq_s64(v151[17], v165);
      }

      *v244 = 0;
      *&v244[8] = v164;
      md::RenderItemPool::construct(v12 + 3248, v254, v163, v244);
      ggl::CommandBuffer::pushRenderItem(a9, v166);
LABEL_141:
      v30 = v226;
      if (v226)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v226);
      }

LABEL_143:
      if (v20++ == v19 - 1)
      {
        goto LABEL_145;
      }
    }
  }

LABEL_148:
  v222 = +[VKDebugSettings sharedSettings];
  if ([v222 daVinciLightingDebugShowLitSphere])
  {

    if (a7 > a6)
    {
      v167 = *(a2 + 1);
      v168 = md::LayoutContext::get<md::CameraContext>(v167);
      v169 = gdc::Camera::cameraFrame(v168);
      *v223 = *(v169 + 8);
      v170 = tan(*v169 * 0.5 + 0.785398163);
      v171 = log(v170);
      v172 = 1 << *(a5 + 25);
      *&v173.f64[0] = v223[0];
      v173.f64[1] = v171;
      __asm { FMOV            V4.2D, #-0.5 }

      v175.i64[0] = *(a5 + 32);
      v175.i64[1] = v172 + ~*(a5 + 28);
      v176 = vmulq_n_f64(vnegq_f64(vmlaq_n_f64(vmlaq_f64(_Q4, vdupq_n_s64(0xBFC45F306DC9C883), v173), vcvtq_f64_s64(v175), 1.0 / v172)), v172);
      v177 = vcvt_f32_f64(v176);
      v178 = vcvt_hight_f32_f64(v177, v176);
      v179.i32[0] = vmovn_s32(vcgtq_f32(v178, xmmword_1B33B09C0)).u32[0];
      v179.i32[1] = vmovn_s32(vcgtq_f32(xmmword_1B33B09C0, v178)).i32[1];
      if ((vmaxv_u16(vcltz_s16(vshl_n_s16(v179, 0xFuLL))) & 1) == 0)
      {
        v224 = v177;
        md::LayoutContext::get<md::LightingLogicContext>(v167);
        __asm { FMOV            V0.4S, #1.0 }

        v227 = _Q0;
        ggl::RenderItem::RenderItem(&v263, "");
        ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::pop(*(v12 + 1792));
        if (!*(v12 + 3408))
        {
          __p[1] = 0;
          __p[0] = 0;
          v242 = 0;
          v233 = 0uLL;
          *&v234 = 0;
          md::GeometryLogic::createIcoSphere(__p, &v233, 3);
          v231.i64[0] = (*(&v233 + 1) - v233) >> 2;
          operator new();
        }

        v181 = 0;
        v182 = *(a5 + 392);
        v183 = *(v169 + 24);
        v184 = *(v182 + 1184);
        __p[0] = *(v182 + 1176);
        *&__p[1] = v184;
        do
        {
          v240[v181] = *(__p + v181);
          ++v181;
        }

        while (v181 != 3);
        v185 = 0;
        v186 = v183 * 0.05;
        do
        {
          *&v244[v185 * 8] = v240[v185] * v186;
          ++v185;
        }

        while (v185 != 3);
        *&v254[8] = 0u;
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0;
        v260 = 0u;
        v261 = 0u;
        v262 = 0x3FF0000000000000;
        *&v256 = *&v244[8];
        *v254 = *v244;
        v259 = *&v244[16];
        v246 = 0u;
        v248 = 0;
        v247 = 0u;
        v245 = 0u;
        *&v244[8] = 0u;
        *v244 = 0x3FF0000000000000;
        *&v246 = 0x3FF0000000000000;
        v250 = 0;
        v249 = 0x3FF0000000000000;
        v253 = 0x3FF0000000000000;
        v251 = vcvtq_f64_f32(v224);
        v252 = v186 * v184;
        if (*(v11 + 7) == 1)
        {
          md::DaVinciGroundRenderLayer::shouldSetupOcclusion(v168, a5, v11);
        }

        v187 = 0;
        for (k = v244; ; ++k)
        {
          v189 = 0;
          v190 = v254;
          do
          {
            v191 = 0;
            v192 = 0.0;
            v193 = k;
            do
            {
              v194 = *v193;
              v193 += 4;
              v192 = v192 + *&v190[v191] * v194;
              v191 += 8;
            }

            while (v191 != 32);
            v240[4 * v189++ + v187] = v192;
            v190 += 32;
          }

          while (v189 != 4);
          if (++v187 == 4)
          {
            v195 = 0;
            v196 = v240;
            do
            {
              v198 = *v196;
              v197 = *(v196 + 2);
              v196 += 4;
              *&__p[v195] = vcvt_hight_f32_f64(vcvt_f32_f64(v198), v197);
              v195 += 2;
            }

            while (v195 != 8);
            md::InstanceData::InstanceData(&v233, 1);
          }
        }
      }
    }
  }

  else
  {
  }
}

int8x16_t *md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator()(int8x16_t *a1, int8x16_t *a2, void *a3, __int16 a4)
{
  v4 = a2;
  v24 = a4;
  v25[0] = &v24;
  v25[1] = a3;
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *a3;
    while (1)
    {
      v7 = *(v6 + 8 * v5->i64[0]);
      v8 = (a4 & 0x100) == 0 || *(v7 + 145) == a4;
      if (*(v7 + 147) != 1 || !v8)
      {
        break;
      }

      v5 = (v5 + 8);
      if (v5 == a2)
      {
        return v4;
      }
    }

    v9 = (a2 - 8);
    do
    {
      v10 = v9 - v5;
      if (v9 == v5)
      {
        return v5;
      }

      v11 = v9;
      v12 = *(v6 + 8 * v9->i64[0]);
      v13 = (a4 & 0x100) == 0 || *(v12 + 145) == a4;
      v14 = *(v12 + 147);
      v9 = (v11 - 8);
    }

    while (v14 != 1 || !v13);
    v16 = (v10 >> 3) + 1;
    if (v10 >> 3 < 3)
    {
      v17 = 0;
      v22 = 0;
    }

    else
    {
      if (v16 >= 0xFFFFFFFFFFFFFFFLL)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = (v10 >> 3) + 1;
      }

      v18 = MEMORY[0x1E69E5398];
      while (1)
      {
        v19 = operator new(8 * v17, v18);
        if (v19)
        {
          break;
        }

        v20 = v17 >> 1;
        v21 = v17 > 1;
        v17 >>= 1;
        if (!v21)
        {
          v22 = 0;
          v17 = v20;
          goto LABEL_30;
        }
      }

      v22 = v19;
    }

LABEL_30:
    v4 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v5, v11, v25, v16, v22, v17);
    if (v22)
    {
      operator delete(v22);
    }
  }

  return v4;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

uint64_t _ZNSt3__116__variant_detail6__implIJN2md16ServerDrapedMeshENS2_18ClientDrapedMeshesEEECI1NS0_6__baseILNS0_6_TraitE1EJS3_S4_EEEILm0EJRKS3_EEENS_16in_place_index_tIXT_EEEDpOT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v4;
  std::vector<gdc::Entity>::vector[abi:nn200100]((a1 + 40), (a2 + 40));
  *(a1 + 80) = 0;
  return a1;
}

void sub_1B325BDC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *ggl::FragmentedPool<ggl::DaVinci::LinearDepthPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::LinearDepthPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciGroundRenderLayer::setupDepthPipeline<ggl::DaVinci::LinearDepthPipelineSetup,ggl::DaVinci::LinearDepthPipelineState>(uint64_t a1, void *a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t *a9, unsigned __int8 a10, void *a11)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *a8;
  v18 = a8[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v89[0] = a3;
  v89[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(a2, v89);
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
    if (!a7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    ggl::PipelineSetup::setState(a2, v89);
    if (!a7)
    {
      goto LABEL_12;
    }
  }

  if (*(a3 + 316))
  {
    v20 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(*(**(a7 + 208) + 120), 2uLL);
    v21 = a2[13];
    *(v21 + 16) = *v20;
    *(v21 + 24) = 0;
    v22 = a2[25];
    v23 = *(v22 + 24);
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_12:
  v24 = a2[13];
  *v24 = v19;
  v24[1] = 0;
  v25 = a2[25];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v25[1];
  *v25 = v19;
  v25[1] = v18;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = a2[17];
  *(v27 + 40) = 0;
  v28 = a2[29];
  v29 = *&a6[2 * a10 + 51];
  *(v27 + 32) = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v30 = *(v28 + 40);
  *(v28 + 32) = v29;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  v31 = a2[17];
  v31[1] = 0;
  v32 = a6[28];
  *v31 = v32;
  v33 = a2[29];
  v34 = a6[29];
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = v33[1];
  *v33 = v32;
  v33[1] = v34;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  v36 = a2[17];
  *(v36 + 24) = 0;
  v37 = a6[30];
  *(v36 + 16) = v37;
  v38 = a2[29];
  v39 = a6[31];
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
  }

  v40 = *(v38 + 24);
  *(v38 + 16) = v37;
  *(v38 + 24) = v39;
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  if (*(a3 + 336) == 1)
  {
    v41 = a2[17];
    *(v41 + 88) = 0;
    v42 = *a9;
    *(v41 + 80) = *a9;
    v43 = a2[29];
    v44 = a9[1];
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(v43 + 88);
    *(v43 + 80) = v42;
    *(v43 + 88) = v44;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v91, a6[55]);
  v46 = 0;
  v47 = (a5 + 3160);
  do
  {
    v48 = 0;
    v49 = a6 + 12;
    do
    {
      v50 = 0;
      v51 = 0.0;
      v52 = v47;
      do
      {
        v53 = *v52;
        v52 += 4;
        v51 = v51 + *&v49[v50++] * v53;
      }

      while (v50 != 4);
      *&v89[4 * v48++ + v46] = v51;
      v49 += 4;
    }

    while (v48 != 4);
    ++v46;
    ++v47;
  }

  while (v46 != 4);
  v54 = 0;
  v55 = v89;
  do
  {
    v57 = *v55;
    v56 = *(v55 + 1);
    v55 += 4;
    v90[v54++] = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v56);
  }

  while (v54 != 4);
  v58 = v92;
  v59 = v90[1];
  *v92 = v90[0];
  *(v58 + 1) = v59;
  v60 = v90[3];
  *(v58 + 2) = v90[2];
  *(v58 + 3) = v60;
  v61 = 1.0 / *(a5 + 976);
  v58[16] = v61;
  v62 = a2[17];
  *(v62 + 72) = 0;
  v63 = a6[55];
  *(v62 + 64) = v63;
  v64 = a2[29];
  v65 = a6[56];
  if (v65)
  {
    atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
  }

  v66 = *(v64 + 72);
  *(v64 + 64) = v63;
  *(v64 + 72) = v65;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  ggl::BufferMemory::~BufferMemory(v91);
  if (a7)
  {
    v67 = *(a7 + 208);
    if (*(v67 + 61) == 1)
    {
      v68 = *v67;
      v71 = *(v68 + 120);
      v70 = (v68 + 120);
      v69 = v71;
      if (!v71)
      {
        goto LABEL_57;
      }

      v72 = v70;
      v73 = v69;
      do
      {
        v74 = v73[4];
        v75 = v74 >= 2;
        v76 = v74 < 2;
        if (v75)
        {
          v72 = v73;
        }

        v73 = v73[v76];
      }

      while (v73);
      if (v72 == v70 || v72[4] > 2uLL)
      {
LABEL_57:
        v79 = 0;
        v78 = 0;
      }

      else
      {
        v77 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v69, 2uLL);
        v78 = *v77;
        v79 = v77[1];
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      v80 = a2[13];
      *(v80 + 16) = v78;
      *(v80 + 24) = 0;
      v81 = a2[25];
      v82 = *(v81 + 24);
      *(v81 + 16) = 0;
      *(v81 + 24) = 0;
      if (v82)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v82);
      }

      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      }
    }
  }

  a11[4] = a2;
  a11[6] = 768;
  a11[3] = md::DaVinciRenderStateCache::renderState((a1 + 3136), 3, 1, 1, 0, 0, 0, 3);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  if (a7 && *(a7 + 200) == 1)
  {
    v83 = *(a7 + 196);
    v84 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::pop(*(a1 + 2120));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v89, v84);
    *v89[5] = v83;
    ggl::BufferMemory::~BufferMemory(v89);
    v85 = a2[17];
    *(v85 + 48) = v84;
    *(v85 + 56) = 0;
  }

  else
  {
    v86 = a2[17];
    *(v86 + 48) = *(a1 + 2160);
    *(v86 + 56) = 0;
  }

  v87 = a2[29];
  v88 = *(v87 + 56);
  *(v87 + 48) = 0;
  *(v87 + 56) = 0;
  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v88);
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::GroundShadowMapPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundShadowMapPipelineState,std::shared_ptr<ggl::DaVinciGroundShadowMapShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::GroundShadowMapPipelineState,std::shared_ptr<ggl::DaVinciGroundShadowMapShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

void md::DaVinciGroundRenderLayer::setupDepthPipeline<ggl::DaVinci::GroundShadowMapPipelineSetup,ggl::DaVinci::GroundShadowMapPipelineState>(uint64_t a1, void *a2, uint64_t a3, std::__shared_weak_count *a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, unsigned __int8 a9, int a10, char a11, void *a12)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *a7;
  v19 = a7[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71[0] = a3;
  v71[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(a2, v71);
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    ggl::PipelineSetup::setState(a2, v71);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  if (*(a3 + 316))
  {
    v20 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(*(**(a6 + 208) + 120), 2uLL);
    v21 = a2[13];
    *(v21 + 16) = *v20;
    *(v21 + 24) = 0;
    v22 = a2[25];
    v23 = *(v22 + 24);
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }

LABEL_12:
  v24 = a2[13];
  *v24 = v18;
  v24[1] = 0;
  v25 = a2[25];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v25[1];
  *v25 = v18;
  v25[1] = v19;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = a2[17];
  *(v27 + 40) = 0;
  v28 = a2[29];
  v29 = *&a5[2 * a9 + 51];
  *(v27 + 32) = v29;
  v30 = a1;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(v28 + 40);
  *(v28 + 32) = v29;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v32 = a2[17];
  v32[1] = 0;
  v33 = a5[28];
  *v32 = v33;
  v34 = a2[29];
  v35 = a5[29];
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  v36 = v34[1];
  *v34 = v33;
  v34[1] = v35;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v37 = a2[17];
  *(v37 + 24) = 0;
  v38 = a5[30];
  *(v37 + 16) = v38;
  v39 = a2[29];
  v40 = a5[31];
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v41 = *(v39 + 24);
  *(v39 + 16) = v38;
  *(v39 + 24) = v40;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  if (*(a3 + 336) == 1)
  {
    v42 = a2[17];
    *(v42 + 88) = 0;
    v43 = *a8;
    *(v42 + 80) = *a8;
    v44 = a2[29];
    v45 = a8[1];
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
    }

    v46 = *(v44 + 88);
    *(v44 + 80) = v43;
    *(v44 + 88) = v45;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }
  }

  if (a6)
  {
    v47 = *(a6 + 208);
    if (*(v47 + 61) == 1)
    {
      v48 = *v47;
      v51 = *(v48 + 120);
      v50 = (v48 + 120);
      v49 = v51;
      if (!v51)
      {
        goto LABEL_45;
      }

      v52 = v50;
      v53 = v49;
      do
      {
        v54 = v53[4];
        v55 = v54 >= 2;
        v56 = v54 < 2;
        if (v55)
        {
          v52 = v53;
        }

        v53 = v53[v56];
      }

      while (v53);
      if (v52 == v50 || v52[4] > 2uLL)
      {
LABEL_45:
        v59 = 0;
        v58 = 0;
      }

      else
      {
        v57 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v49, 2uLL);
        v58 = *v57;
        v59 = v57[1];
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      v60 = a2[13];
      *(v60 + 16) = v58;
      *(v60 + 24) = 0;
      v61 = a2[25];
      v62 = *(v61 + 24);
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      }
    }
  }

  a12[4] = a2;
  a12[6] = 768;
  a12[3] = md::DaVinciRenderStateCache::renderState((v30 + 3136), 3, 1, 1, 0, 0, 0, 3);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  if ((a11 & 1) == 0)
  {
    if (a6 && *(a6 + 200) == 1)
    {
      v63 = *(a6 + 196);
      v64 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::pop(*(v30 + 2120));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v71, v64);
      *v71[5] = v63;
      ggl::BufferMemory::~BufferMemory(v71);
      v65 = a2[17];
      *(v65 + 48) = v64;
      *(v65 + 56) = 0;
      v66 = a2[29];
      v67 = *(v66 + 56);
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      if (!v67)
      {
        return;
      }

      goto LABEL_58;
    }

    v68 = a2[17];
    *(v68 + 48) = *(v30 + 2160);
    *(v68 + 56) = 0;
    v69 = a2[29];
    v67 = *(v69 + 56);
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    if (v67)
    {

LABEL_58:
      std::__shared_weak_count::__release_shared[abi:nn200100](v67);
    }
  }
}

void *std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::__emplace_unique_key_args<md::UniqueRenderID,md::UniqueRenderID const&>(void *result, unint64_t a2, unsigned __int8 a3)
{
  v3 = ((a2 >> 34) + a2 + (HIDWORD(a2) << 6) - 0x61C8864680B583EBLL) ^ HIDWORD(a2);
  v4 = ((v3 << 6) + a3 + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = ((v3 << 6) + a3 + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != a2 || *(v9 + 24) != a3)
  {
    goto LABEL_21;
  }

  return result;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(int8x16_t *a1, char *a2, void **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    result = &a1->i8[8];
    v12 = v8->i64[1];
    v13 = *(*a3[1] + 8 * v12);
    v14 = *(*a3 + 1) != 1 || *(v13 + 145) == **a3;
    if (*(v13 + 147) != 1 || !v14)
    {
      v8->i64[1] = *a2;
      *a2 = v12;
      *v8 = vextq_s8(*v8, *v8, 8uLL);
      return result;
    }

    v26 = v8->i64[0];
    v8->i64[0] = v12;
    v8->i64[1] = v26;
    v8->i64[1] = *a2;
    *a2 = v26;
    return a2;
  }

  if (a4 == 2)
  {
    v10 = a1->i64[0];
    a1->i64[0] = *a2;
    *a2 = v10;
    return a2;
  }

  v15 = a5;
  if (a6 >= a4)
  {
    result = &a1->i8[8];
    *a5 = v8->i64[0];
    v27 = a5 + 1;
    if (&v8->u64[1] == a2)
    {
      v8->i64[0] = v8->i64[1];
    }

    else
    {
      v28 = *a3;
      v29 = *a3[1];
      v30 = *(*a3 + 1);
      do
      {
        v31 = *result;
        v32 = *(v29 + 8 * *result);
        if (v30)
        {
          v33 = *(v32 + 145) == *v28;
        }

        else
        {
          v33 = 1;
        }

        if (*(v32 + 147) != 1 || !v33)
        {
          *v27++ = v31;
        }

        else
        {
          v8->i64[0] = v31;
          v8 = (v8 + 8);
        }

        result += 8;
      }

      while (result != a2);
      v8->i64[0] = *result;
      result = &v8->i8[8];
      if (v27 <= a5)
      {
        return result;
      }
    }

    v41 = result;
    do
    {
      v42 = *v15++;
      *v41 = v42;
      v41 += 8;
    }

    while (v15 < v27);
    return result;
  }

  v16 = &a1->i8[8 * (a4 / 2)];
  v17 = *a3;
  v18 = *a3[1];
  v19 = *(*a3 + 1);
  v20 = v16 - 8;
  v21 = 8 - 8 * (a4 / 2);
  for (i = a4 / 2; ; --i)
  {
    v23 = *(v18 + 8 * *v20);
    v24 = !*(*a3 + 1) || *(v23 + 145) == *v17;
    if (*(v23 + 147) == 1 && v24)
    {
      break;
    }

    if (!v21)
    {
      goto LABEL_38;
    }

    v20 -= 8;
    v21 += 8;
  }

  v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(a1);
  v17 = *a3;
  v18 = *a3[1];
  v19 = *(*a3 + 1);
LABEL_38:
  v35 = a2 + 8;
  v36 = a4 - a4 / 2;
  v37 = v16;
  while (1)
  {
    v38 = *(v18 + 8 * *v37);
    v39 = (v19 & 1) == 0 || *(v38 + 145) == *v17;
    if (*(v38 + 147) != 1 || !v39)
    {
      break;
    }

    v37 += 8;
    if (v37 == a2)
    {
      return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v16, v35);
    }

    --v36;
  }

  v35 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_5::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v37);
  return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v16, v35);
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, a2, a3 - a2);
      v3 = &__src[v6];
      *&__src[v6] = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = a3 - 8;
      v9 = *(a3 - 1);
      v3 = __src + 8;
      v10 = a3 - 8 - __src;
      if (v8 != __src)
      {
        memmove(__src + 8, __src, v10);
      }

      *__src = v9;
    }

    else
    {
      v11 = v4 >> 3;
      if (v4 >> 3 == v6 >> 3)
      {
        v12 = __src + 8;
        v13 = a2 + 8;
        do
        {
          v14 = *(v12 - 1);
          *(v12 - 1) = *(v13 - 1);
          *(v13 - 1) = v14;
          if (v12 == a2)
          {
            break;
          }

          v12 += 8;
          v15 = v13 == a3;
          v13 += 8;
        }

        while (!v15);
        return a2;
      }

      else
      {
        v16 = v6 >> 3;
        v17 = v4 >> 3;
        do
        {
          v18 = v17;
          v17 = v16;
          v16 = v18 % v16;
        }

        while (v16);
        v19 = &__src[8 * v17];
        do
        {
          v21 = *(v19 - 1);
          v19 -= 8;
          v20 = v21;
          v22 = &v19[v4];
          v23 = v19;
          do
          {
            v24 = v22;
            *v23 = *v22;
            v25 = &v22[8 * v11];
            v26 = __OFSUB__(v11, (a3 - v22) >> 3);
            v28 = v11 - ((a3 - v22) >> 3);
            v27 = (v28 < 0) ^ v26;
            v22 = &__src[8 * v28];
            if (v27)
            {
              v22 = v25;
            }

            v23 = v24;
          }

          while (v22 != v19);
          *v24 = v20;
        }

        while (v19 != __src);
        return &__src[v6];
      }
    }
  }

  return v3;
}

void md::DaVinciGroundRenderLayer::layoutMaterialRenderables(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, ggl::zone_mallocator *a9, char a10)
{
  v808 = *MEMORY[0x1E69E9840];
  v726 = *(*(a1 + 40) + 24);
  v15 = *(a2 + 1);
  v715 = md::LayoutContext::get<md::CameraContext>(v15);
  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v15, 0x1DCE255EA309B4ADuLL);
  if (v16 && (v17 = v16[5], *(v17 + 8) == 0x1DCE255EA309B4ADLL))
  {
    v18 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
  }

  v776 = v18;
  v729 = md::LayoutContext::get<md::LightingLogicContext>(v15);
  v19 = md::LayoutContext::get<md::MaterialContext>(v15);
  v20 = md::LayoutContext::get<md::SceneQueryContext>(v15);
  v714 = gdc::Context::get<md::StyleLogicContext>(v15);
  v730 = md::LayoutContext::get<md::ElevationContext>(v15);
  v705 = v19;
  if (*v19 && *(a1 + 3288))
  {
    v21 = +[VKDebugSettings sharedSettings];
    md::TerrainDebugOptions::TerrainDebugOptions(&v772, v21);

    v687 = v20 ? *(v20 + 64) : 0;
    v771 = *(a5 + 392);
    v22 = +[VKDebugSettings sharedSettings];
    v681 = [v22 daVinciPlanarOverride];

    v23 = +[VKDebugSettings sharedSettings];
    v695 = [v23 daVinciWaterEnabled];

    v24 = +[VKDebugSettings sharedSettings];
    v25 = [v24 daVinciColorCorrectionOverride];

    v770 = v25;
    v704 = *(a5 + 24);
    v26 = *(a3 + 5);
    v27 = +[VKDebugSettings sharedSettings];
    v731 = [v27 enableTileClipping];

    v28 = +[VKDebugSettings sharedSettings];
    v703 = [v28 enableTileClippingDebug];

    v30 = (a3 + 20);
    v31 = *(v729 + 256);
    v769[0] = a1;
    v769[1] = a4;
    v769[2] = &v776;
    v769[3] = &v771;
    v768[0] = a1;
    v768[1] = a4;
    v768[2] = &v770;
    v768[3] = a3 + 20;
    if (a6 != a7)
    {
      v696 = v26 & (v704 == 255);
      if (v31)
      {
        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      v678 = (a3 + 96);
      v690 = (a1 + 3392);
      *&v29 = 136315138;
      v686 = v29;
      v679 = 4.8149e-34;
      v680 = 4.8149e-34;
      v692 = v29;
      v727 = a7;
      v728 = a8;
      v733 = (a3 + 20);
      v697 = v32;
      while (1)
      {
        v33 = *(*a8 + 8 * *a6);
        if (*(v33 + 8) == 1 && (v32 & *(v33 + 368)) != 0)
        {
          break;
        }

LABEL_748:
        if (++a6 == a7)
        {
          return;
        }
      }

      v34 = *(v33 + 232);
      v767 = v34;
      if (v731)
      {
        v35 = *(a5 + 256);
        v36 = *(a5 + 264);
        v765 = v35;
        v766 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v36 = 0;
        v35 = 0;
        v766 = 0;
        v765 = 0;
      }

      v37 = v35 != 0;
      if (*(v33 + 64) == 1)
      {
        v38 = *(v33 + 48);
        v39 = *(v33 + 56);
        if (std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::find<md::UniqueRenderID>((a1 + 3584), v38, v39))
        {
          goto LABEL_745;
        }

        std::__hash_table<md::UniqueRenderID,md::UniqueRenderIDHash,md::UniqueRenderIDKeyEqual,std::allocator<md::UniqueRenderID>>::__emplace_unique_key_args<md::UniqueRenderID,md::UniqueRenderID const&>((a1 + 3584), v38, v39);
        v766 = 0;
        v765 = 0;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v36);
          v36 = 0;
        }

        v37 = 0;
      }

      v40 = (*(**(v33 + 216) + 360))(*(v33 + 216), *v30);
      if ((v40 & 0x100) == 0 || v40)
      {
        if (*(v33 + 149))
        {
          if (!a10)
          {
LABEL_37:
            (*(**(v33 + 216) + 752))(*(v33 + 216), *v30);
            v42 = v30;
            v44 = v43;
            (*(**(v33 + 216) + 784))(*(v33 + 216), *v42);
            v46 = v45;
            (*(**(v33 + 216) + 976))(&v763, *v42);
            v47 = (*(**(v33 + 216) + 928))(*(v33 + 216), *v42);
            if (v764 == 1)
            {
              LOBYTE(v760) = 0;
              v762 = 0;
              v48 = (a3 + 20);
            }

            else
            {
              v48 = (a3 + 20);
              (*(**(v33 + 216) + 232))(&v760, *v733);
            }

            (*(**(v33 + 216) + 1040))(&v757, *v48);
            if (v759 == 1)
            {
              v755.i8[0] = 0;
              v756 = 0;
            }

            else
            {
              (*(**(v33 + 216) + 816))(&v755, *v733);
            }

            v717 = *(v33 + 360);
            if (v717 != 1)
            {
LABEL_49:
              v701 = v37;
              v53 = (*(**(v33 + 216) + 888))(*(v33 + 216), *v733);
              __p.__r_.__value_.__s.__data_[0] = 1;
              hasAlpha = md::MaterialTextureManager::hasAlpha((v33 + 216), &__p, *v733);
              if (v53 & 0x100) != 0 && (v53)
              {
                v55 = *(a1 + 3288);
                v56 = *(v55 + 320);
                v712 = *(v55 + 312);
                if (!v56)
                {
                  goto LABEL_63;
                }

                atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v57 = *(v33 + 248);
                if (v57)
                {
                  md::LayoutContext::frameState(a2);
                  md::SharedResource::addFrameRef(v57, *(v58 + 624));
                  v712 = *(v57 + 4);
                  goto LABEL_63;
                }

                v59 = *(a1 + 3288);
                buf.i8[0] = 1;
                v60 = *v733;
                v61 = *(a1 + 2248);
                if (v61)
                {
                  atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::MaterialTextureManager::textureFromMaterial(&__p, v59, (v33 + 216), &v767, &buf, v60);
                v62 = __p.__r_.__value_.__r.__words[0];
                md::LayoutContext::frameState(a2);
                md::SharedResource::addFrameRef(v62, *(v63 + 624));
                v712 = *(v62 + 4);
                if (__p.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
                }

                if (!v61)
                {
LABEL_63:
                  if ((v47 & 0x100000000) != 0)
                  {
                    v64 = *&v47;
                  }

                  else
                  {
                    v64 = 1.0;
                  }

                  v65 = v761;
                  if ((v762 & 1) == 0)
                  {
                    v65 = 1.0;
                  }

                  if (!v764)
                  {
                    v64 = v65;
                  }

                  if (v717 && *(v33 + 320) != 1)
                  {
                    v67 = 1;
                  }

                  else
                  {
                    if ((v47 & 0x100000000) != 0)
                    {
                      v66 = *&v47;
                    }

                    else
                    {
                      v66 = v64;
                    }

                    v67 = v66 >= 0.999999;
                  }

                  v68 = *(a1 + 3288);
                  v70 = *(v68 + 312);
                  v69 = *(v68 + 320);
                  if (v69)
                  {
                    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
                  }

                  if (v70 == v712)
                  {
                    v72 = 0;
                    v71 = 0;
                  }

                  else
                  {
                    v71 = v44 | v46;
                    v72 = 1;
                  }

                  if (hasAlpha)
                  {
                    v73 = (v72 ^ 1) & v67;
                  }

                  else
                  {
                    v73 = v67;
                  }

                  v74 = *(v33 + 288);
                  v716 = v73;
                  if (v74)
                  {
                    md::LayoutContext::frameState(a2);
                    md::SharedResource::addFrameRef(v74, *(v75 + 624));
                    v702 = *(v74 + 4);
                  }

                  else
                  {
                    v76 = *(a1 + 3288);
                    buf.i8[0] = 4;
                    v77 = *v733;
                    v78 = *(a1 + 2248);
                    if (v78)
                    {
                      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    md::MaterialTextureManager::textureFromMaterial(&__p, v76, (v33 + 216), &v767, &buf, v77);
                    v79 = __p.__r_.__value_.__r.__words[0];
                    md::LayoutContext::frameState(a2);
                    md::SharedResource::addFrameRef(v79, *(v80 + 624));
                    v702 = *(v79 + 4);
                    if (__p.__r_.__value_.__l.__size_)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
                    }

                    if (v78)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v78);
                    }
                  }

                  v81 = *(a1 + 3288);
                  v83 = *(v81 + 312);
                  v82 = *(v81 + 320);
                  if (v82)
                  {
                    atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
                  }

                  v84 = *(v33 + 216);
                  v699 = *(*(v33 + 208) + 61);
                  v85 = *(v33 + 224);
                  if (v85)
                  {
                    atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v706 = v85;
                  v754 = v34;
                  if (v775 == 1 && *(v33 + 369))
                  {
                    v86 = *(v771 + 164);
                    if (v86)
                    {
                      v87 = md::StyleAttributeRasterSet::materialRasterForID(v86, *(v33 + 369));
                      if (v87)
                      {
                        buf.i8[0] = 0;
                        buf.i8[8] = 0;
                        v88 = ((v773 & 1) != 0 || v774 == 1) && v772 == 0;
                        v673 = v87;
                        updated = md::MaterialRaster::updateStyleTextureIfNecessary(v87, *v705, &buf, v88, *(v714 + 72) == 1, *v733);
                        v674 = *(v673 + 123);
                        v688 = v673;
                        if (buf.i8[8])
                        {
                          v754 = buf.i64[0];
                          v675 = *v705;
                          *&__p.__r_.__value_.__l.__data_ = buf.u64[0];
                          gms::MaterialManager<ggl::Texture2D>::materialForKeyAndAttributes(&v789, v675, &__p, 0);
                          v676 = v789.i64[1];
                          v84 = v789.i64[0];
                          if (v706)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v706);
                          }

                          v706 = v676;
                          v93 = v695;
                        }

                        else
                        {
                          v93 = 0;
                        }

                        v716 &= v674;
                        v92 = 1;
LABEL_113:
                        if (v772)
                        {
                          v92 = 1;
                        }

                        v710 = v92;
                        v94 = (*(**(v33 + 216) + 456))(*(v33 + 216), *v733);
                        (*(**(v33 + 216) + 1008))(&v751, *v733);
                        if (v753 == 1)
                        {
                          LOBYTE(v748) = 0;
                          v750 = 0;
                          v95 = 1;
                        }

                        else
                        {
                          (*(**(v33 + 216) + 200))(&v748, *v733);
                          v95 = v753 | v750;
                        }

                        if (((v699 == 1) & v93) != 0)
                        {
                          v96 = a3;
                          if (*(v84 + 8) == 5)
                          {
                            v97 = *(a1 + 3288);
                            v98 = *v733;
                            v744 = v84;
                            v745 = v706;
                            if (v706)
                            {
                              atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            md::MaterialTextureManager::colorRampTexturesFromMaterial(&v746, v97, v98, &v744);
                            if (v745)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v745);
                            }

LABEL_126:
                            v698 = v746;
                            v99 = v746 != 0;
                            v707 = (v746 | v747) != 0;
                            v691 = v747;
                            v100 = atomic_load((v714[4] + 270));
                            v101 = v100 & v99;
                            if (!v747)
                            {
                              v101 = 0;
                            }

                            v700 = v101;
                            v102 = (*(**(v33 + 216) + 1224))(*(v33 + 216), *v733);
                            if ((v102 & 0x100000000) != 0)
                            {
                              _S8 = *&v102;
                            }

                            else
                            {
                              _S8 = 1.0;
                            }

                            shouldSetupOcclusion = md::DaVinciGroundRenderLayer::shouldSetupOcclusion(v715, a5, v96);
                            v105 = *(*(v33 + 208) + 61) == 1;
                            v106 = v726[21];
                            if (!v106)
                            {
                              v689 = 0;
                              goto LABEL_139;
                            }

                            v107 = *(v106 + 32);
                            v108 = *(v726[1] + 96);
                            if (v107 >= (*(v726[1] + 104) - v108) >> 3)
                            {
                              v689 = 0;
                            }

                            else
                            {
                              v689 = *(*(v108 + 8 * v107) + 16);
                              if ((v687 & (v689 != 0)) == 1)
                              {
                                if (v759)
                                {
                                  LOBYTE(v106) = 1;
                                }

                                else
                                {
                                  LOBYTE(v106) = v756;
                                }

LABEL_139:
                                v742 = 2;
                                *&v743[5] = 0;
                                v109 = *(v96 + 5);
                                if (v716)
                                {
                                  v109 = v696;
                                }

                                v737 = v109;
                                v110 = *(v96 + 4);
                                v111 = *(*(v33 + 216) + 8);
                                BYTE1(v738) = v111 == 3;
                                BYTE2(v738) = v111 == 4;
                                BYTE3(v738) = *(v96 + 6);
                                BYTE6(v738) = a10;
                                if (*v730 == 1)
                                {
                                  v112 = *(v33 + 147);
                                }

                                else
                                {
                                  v112 = 1;
                                }

                                HIBYTE(v738) = v112 & 1;
                                v113 = v71 & 1;
                                v114 = *&v94;
                                LOBYTE(v739) = v710;
                                v115 = v95 & 1;
                                BYTE1(v739) = v710;
                                v694 = v94 & 0x100000000;
                                BYTE4(v739) = *(v96 + 9);
                                BYTE3(v739) = v105;
                                BYTE5(v739) = v113;
                                BYTE6(v739) = v704 != 255;
                                BYTE2(v739) = v106 & 1;
                                HIBYTE(v739) = *(v96 + 7) & shouldSetupOcclusion;
                                LOBYTE(v740) = v72;
                                HIBYTE(v740) = v702 != v83;
                                v116 = *v96 & (_S8 > 0.01);
                                BYTE1(v741) = v116;
                                LOBYTE(v738) = v110;
                                BYTE2(v741) = (v94 & 0x100000000uLL) >> 32;
                                HIBYTE(v741) = v95 & 1;
                                v743[0] = *(v96 + 16);
                                v743[1] = v704 == 255;
                                v743[2] = v701;
                                v743[3] = v703;
                                v743[4] = updated;
                                BYTE4(v738) = v707;
                                BYTE5(v738) = v700;
                                LOBYTE(v741) = v717;
                                v743[9] = *(v96 + 18);
                                v693 = v106 & 1;
                                if (v704 != 255)
                                {
                                  v117 = *(a1 + 1808);
                                  v118 = v117[1];
                                  if (v118 == *v117)
                                  {
                                    v126 = v117[11];
                                    if (!v126)
                                    {
                                      goto LABEL_759;
                                    }

                                    shouldSetupOcclusion = (*(*v126 + 48))(v126);
                                    v119 = shouldSetupOcclusion;
                                  }

                                  else
                                  {
                                    v119 = *(v118 - 8);
                                    v117[1] = v118 - 8;
                                  }

                                  v128 = v117[5];
                                  v127 = v117[6];
                                  if (v128 >= v127)
                                  {
                                    v130 = v117[4];
                                    v131 = (v128 - v130) >> 3;
                                    if ((v131 + 1) >> 61)
                                    {
                                      goto LABEL_760;
                                    }

                                    v132 = v127 - v130;
                                    v133 = v132 >> 2;
                                    if (v132 >> 2 <= (v131 + 1))
                                    {
                                      v133 = v131 + 1;
                                    }

                                    if (v132 >= 0x7FFFFFFFFFFFFFF8)
                                    {
                                      v134 = 0x1FFFFFFFFFFFFFFFLL;
                                    }

                                    else
                                    {
                                      v134 = v133;
                                    }

                                    v780 = v117 + 7;
                                    if (v134)
                                    {
                                      v135 = ggl::zone_mallocator::instance(shouldSetupOcclusion);
                                      v136 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(v135, v134);
                                    }

                                    else
                                    {
                                      v136 = 0;
                                    }

                                    v217 = &v136[8 * v134];
                                    v216 = &v136[8 * v131];
                                    *v216 = v119;
                                    v129 = v216 + 8;
                                    v218 = v117[4];
                                    v219 = v117[5] - v218;
                                    v220 = &v216[-v219];
                                    memcpy(&v216[-v219], v218, v219);
                                    v221 = v117[4];
                                    v117[4] = v220;
                                    v117[5] = v129;
                                    v222 = v117[6];
                                    v117[6] = v217;
                                    __p.__r_.__value_.__r.__words[2] = v221;
                                    v779 = v222;
                                    __p.__r_.__value_.__l.__size_ = v221;
                                    __p.__r_.__value_.__r.__words[0] = v221;
                                    std::__split_buffer<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&__p);
                                    v96 = a3;
                                  }

                                  else
                                  {
                                    *v128 = v119;
                                    v129 = v128 + 1;
                                  }

                                  v117[5] = v129;
                                  __p.__r_.__value_.__r.__words[0] = v119;
                                  v223 = v117[15];
                                  if (!v223)
                                  {
                                    goto LABEL_759;
                                  }

                                  (*(*v223 + 48))(v223, &__p);
                                  md::DaVinciPipelineStateManager<ggl::DaVinci::GroundNonCompressedPipelineState,std::shared_ptr<ggl::DaVinciGroundNotCompressedShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&buf, a1 + 704, &v737);
                                  v685 = buf.i64[1];
                                  *&__p.__r_.__value_.__l.__data_ = buf;
                                  ggl::PipelineSetup::setState(v119, &__p);
                                  if (v685)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v685);
                                  }

                                  if (*v96)
                                  {
                                    v224 = +[VKDebugSettings sharedSettings];
                                    v225 = [v224 daVinciSSAODepthAwareUpsampleEnabled];

                                    if (v225)
                                    {
                                      v226 = v726[20];
                                    }

                                    else
                                    {
                                      v226 = v726[18];
                                    }

                                    v96 = a3;
                                    if (v226)
                                    {
                                      v230 = *(v226 + 32);
                                      v232 = (v726[1] + 96);
                                      v231 = *v232;
                                      if (v230 >= (v232[1] - *v232) >> 3)
                                      {
                                        v226 = 0;
                                      }

                                      else
                                      {
                                        v226 = *(*(v231 + 8 * v230) + 16);
                                      }
                                    }

                                    *(v119[21] + 24) = v226;
                                    v237 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::pop(*(a1 + 2080));
                                    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v237);
                                    v238 = *(v729 + 124);
                                    v239 = v781;
                                    *v781 = *(v729 + 61);
                                    *(v239 + 2) = v238;
                                    __asm { FCVT            H0, S8 }

                                    *(v239 + 4) = _H0;
                                    ggl::BufferMemory::~BufferMemory(&__p);
                                    v244 = v119[17];
                                    *(v244 + 432) = v237;
                                    *(v244 + 440) = 0;
                                    v245 = v119[29];
                                    v228 = *(v245 + 440);
                                    *(v245 + 432) = 0;
                                    *(v245 + 440) = 0;
                                    if (!v228)
                                    {
LABEL_278:
                                      md::DaVinciGroundRenderLayer::setupDaVinciGroundTileDataBindings<ggl::DaVinci::GroundNonCompressedPipelineSetup>(v119, v33);
                                      v247 = 1.0 / *(v96 + 40);
                                      if (*(a5 + 24) == 255)
                                      {
                                        v169 = v706;
                                        if (*(v96 + 5) == 1 && *(v96 + 4) == 1)
                                        {
                                          v683 = 1.0 / *(v96 + 40);
                                          v250 = 0;
                                          v251 = *(a5 + 296);
                                          v252 = *(a5 + 304);
                                          v253 = *(a5 + 312);
                                          v254 = *(a5 + 320);
                                          v255 = v252 + v252;
                                          v256 = (v252 + v252) * v252;
                                          v257 = (v253 + v253) * v253;
                                          v258 = v251 + v251;
                                          v259 = (v251 + v251) * v252;
                                          v260 = (v253 + v253) * v254;
                                          v261 = v259 - v260;
                                          v262 = v253 * (v251 + v251);
                                          v263 = v254 * v255;
                                          v264 = v260 + v259;
                                          v265 = v254 * v255 + v262;
                                          *v789.i64 = 1.0 - (v256 + v257);
                                          *&v789.i64[1] = v264;
                                          v266 = 1.0 - (v251 + v251) * v251;
                                          v267 = v255 * v253;
                                          v268 = v254 * v258;
                                          v794 = v265;
                                          v795 = v267 - v268;
                                          v791 = v261;
                                          v790 = v262 - v263;
                                          v792 = v266 - v257;
                                          v793 = v268 + v267;
                                          v796 = v266 - v256;
                                          p_buf = &buf;
                                          v270 = &v789;
                                          do
                                          {
                                            v271 = 0;
                                            v272 = p_buf;
                                            do
                                            {
                                              *v272 = v270->i64[v271];
                                              v272 += 4;
                                              v271 += 3;
                                            }

                                            while (v271 != 9);
                                            ++v250;
                                            p_buf = (p_buf + 8);
                                            v270 = (v270 + 8);
                                          }

                                          while (v250 != 3);
                                          v799 = 0;
                                          v802 = 0;
                                          v803 = 0;
                                          v807 = 0x3FF0000000000000;
                                          v805 = 0;
                                          v806 = 0;
                                          v804 = 0;
                                          gm::Matrix<double,4,4>::inverted<int,void>(&__p, buf.i64);
                                          v273 = *(a3 + 112);
                                          v777[0] = *v678;
                                          v777[1] = v273;
                                          v274 = gm::operator*<double,4,4,1>(&__p, v777);
                                          v276 = 0;
                                          *v784.i64 = v274;
                                          v784.u64[1] = v275;
                                          v785 = v277;
                                          v786 = v278;
                                          do
                                          {
                                            _D0 = v784.i64[v276];
                                            __asm { FCVT            H0, D0 }

                                            *(&v787 + v276++) = _D0;
                                          }

                                          while (v276 != 4);
                                          _H0 = v788;
                                          __asm { FCVT            S0, H0 }

                                          v275.i32[0] = v787;
                                          v282.i64[0] = vcvtq_f32_f16(v275).u64[0];
                                          v282.i64[1] = __PAIR64__(LODWORD(v683), _S0);
LABEL_294:
                                          v684 = v282;
                                          buf = v282;
                                          v287 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>((a1 + 368), &buf);
                                          if (v287)
                                          {
                                            v289 = v287[4];
                                          }

                                          else
                                          {
                                            v289 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::pop(*(a1 + 1848));
                                            v789.i64[0] = v289;
                                            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v289);
                                            *v781 = vcvt_f16_f32(v684);
                                            std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>((a1 + 368), buf.i8);
                                            ggl::BufferMemory::~BufferMemory(&__p);
                                            v169 = v706;
                                          }

                                          v290 = v119[17];
                                          *(v290 + 80) = v289;
                                          *(v290 + 88) = 0;
                                          v291 = v119[29];
                                          v292 = *(v291 + 88);
                                          *(v291 + 80) = 0;
                                          *(v291 + 88) = 0;
                                          if (v292)
                                          {
                                            std::__shared_weak_count::__release_shared[abi:nn200100](v292);
                                          }

                                          if (v717)
                                          {
                                            v293 = *(v33 + 224);
                                            if (v293)
                                            {
                                              atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
                                            }

                                            v294 = md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_1::operator()(v769, &v767);
                                            v295 = v119[17];
                                            *(v295 + 256) = v294;
                                            *(v295 + 264) = 0;
                                            v296 = v119[29];
                                            v297 = *(v296 + 264);
                                            *(v296 + 256) = 0;
                                            *(v296 + 264) = 0;
                                            if (v297)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v297);
                                            }

                                            if (v293)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v293);
                                            }
                                          }

                                          if (v113)
                                          {
                                            v298 = *(v33 + 224);
                                            v735[0] = *(v33 + 216);
                                            v735[1] = v298;
                                            if (v298)
                                            {
                                              atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
                                            }

                                            v299 = md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_2::operator()(v768, v735, &v767);
                                            v300 = v119[17];
                                            *(v300 + 240) = v299;
                                            *(v300 + 248) = 0;
                                            v301 = v119[29];
                                            v302 = *(v301 + 248);
                                            *(v301 + 240) = 0;
                                            *(v301 + 248) = 0;
                                            if (v302)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v302);
                                            }

                                            if (v298)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:nn200100](v298);
                                            }
                                          }

                                          *(v119[21] + 16) = v712;
                                          if (v115)
                                          {
                                            *(v119[21] + 40) = v702;
                                          }

                                          v303 = *(v33 + 388);
                                          if (v303 == 1)
                                          {
                                            *&v288 = *(v33 + 372);
                                            v692 = v288;
                                            v10 = *(v33 + 380);
                                            v680 = *(v33 + 384);
                                          }

                                          else
                                          {
                                            v304 = v692;
                                            LOBYTE(v304) = 0;
                                            v692 = v304;
                                          }

                                          v305 = *v733;
                                          v307 = *(v33 + 216);
                                          v306 = *(v33 + 224);
                                          if (v306)
                                          {
                                            atomic_fetch_add_explicit(&v306->__shared_owners_, 1uLL, memory_order_relaxed);
                                          }

                                          (*(*v307 + 976))(&v784, v307, v305);
                                          v308 = (*(*v307 + 928))(v307, v305);
                                          if (v784.i8[12])
                                          {
                                            v789.i8[0] = 0;
                                            LOBYTE(v790) = 0;
                                          }

                                          else
                                          {
                                            (*(*v307 + 232))(&v789, v307, v305);
                                            if ((v784.i8[12] & 1) == 0)
                                            {
                                              if (LOBYTE(v790))
                                              {
                                                v377 = -1;
                                              }

                                              else
                                              {
                                                v377 = 0;
                                              }

                                              __asm { FMOV            V2.4S, #1.0 }

                                              v310 = vbslq_s8(vdupq_n_s32(v377), v789, _Q2);
                                              if (v303)
                                              {
LABEL_326:
                                                *v311.i8 = vmla_n_f32(*v310.i8, vsub_f32(*&v692, *v310.i8), v680);
                                                v311.i32[3] = vextq_s8(v310, v310, 8uLL).i32[1];
                                                *&v311.i32[2] = *&v310.i32[2] + ((v10 - *&v310.i32[2]) * v680);
                                                v310 = v311;
                                              }

LABEL_327:
                                              v718 = v310;
                                              buf = v310;
                                              LOBYTE(v798) = 1;
                                              v312 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((a1 + 448), &buf);
                                              if (v312)
                                              {
                                                v313 = *(v312 + 40);
                                              }

                                              else
                                              {
                                                v313 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::pop(*(a1 + 2104));
                                                *&v777[0] = v313;
                                                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v313);
                                                *v781 = vcvt_f16_f32(v718);
                                                ggl::BufferMemory::~BufferMemory(&__p);
                                                std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>((a1 + 448), &buf);
                                              }

                                              v314 = v119[17];
                                              *(v314 + 448) = v313;
                                              *(v314 + 456) = 0;
                                              v315 = v119[29];
                                              v316 = *(v315 + 456);
                                              *(v315 + 448) = 0;
                                              *(v315 + 456) = 0;
                                              if (v316)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v316);
                                              }

                                              if (v306)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v306);
                                              }

                                              v317 = v119[2];
                                              if (v317[317] == 1)
                                              {
                                                v318 = v119[17];
                                                *(v318 + 232) = 0;
                                                v319 = v726[43];
                                                *(v318 + 224) = v319;
                                                v320 = v119[29];
                                                v321 = v726[44];
                                                if (v321)
                                                {
                                                  atomic_fetch_add_explicit((v321 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v322 = *(v320 + 232);
                                                *(v320 + 224) = v319;
                                                *(v320 + 232) = v321;
                                                if (v322)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v322);
                                                }

                                                v317 = v119[2];
                                              }

                                              if (v317[331] == 1)
                                              {
                                                v323 = v119[17];
                                                *(v323 + 120) = 0;
                                                v324 = *(a1 + 1976);
                                                *(v323 + 112) = v324;
                                                v325 = v119[29];
                                                v326 = *(a1 + 1984);
                                                if (v326)
                                                {
                                                  atomic_fetch_add_explicit((v326 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v327 = *(v325 + 120);
                                                *(v325 + 112) = v324;
                                                *(v325 + 120) = v326;
                                                if (v327)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v327);
                                                }

                                                v317 = v119[2];
                                              }

                                              if (v317[330] == 1)
                                              {
                                                v328 = v119[17];
                                                *(v328 + 104) = 0;
                                                v329 = *(a1 + 1960);
                                                *(v328 + 96) = v329;
                                                v330 = v119[29];
                                                v331 = *(a1 + 1968);
                                                if (v331)
                                                {
                                                  atomic_fetch_add_explicit((v331 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v332 = *(v330 + 104);
                                                *(v330 + 96) = v329;
                                                *(v330 + 104) = v331;
                                                if (v332)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v332);
                                                }
                                              }

                                              if (*(v119[2] + 326) == 1)
                                              {
                                                v333 = v119[17];
                                                *(v333 + 200) = 0;
                                                v334 = v729[4];
                                                *(v333 + 192) = v334;
                                                v335 = v119[29];
                                                v336 = v729[5];
                                                if (v336)
                                                {
                                                  atomic_fetch_add_explicit((v336 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v337 = *(v335 + 200);
                                                *(v335 + 192) = v334;
                                                *(v335 + 200) = v336;
                                                if (v337)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v337);
                                                }
                                              }

                                              v338 = v119[17];
                                              *(v338 + 56) = 0;
                                              v339 = v729[2];
                                              *(v338 + 48) = v339;
                                              v340 = v119[29];
                                              v341 = v729[3];
                                              if (v341)
                                              {
                                                atomic_fetch_add_explicit((v341 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v342 = *(v340 + 56);
                                              *(v340 + 48) = v339;
                                              *(v340 + 56) = v341;
                                              if (v342)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v342);
                                              }

                                              if (*(v119[2] + 346) == 1)
                                              {
                                                v343 = v119[17];
                                                *(v343 + 488) = 0;
                                                v344 = v729[6];
                                                *(v343 + 480) = v344;
                                                v345 = v119[29];
                                                v346 = v729[7];
                                                if (v346)
                                                {
                                                  atomic_fetch_add_explicit((v346 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v347 = *(v345 + 488);
                                                *(v345 + 480) = v344;
                                                *(v345 + 488) = v346;
                                                if (v347)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v347);
                                                }
                                              }

                                              v348 = *(v33 + 32);
                                              v349 = v119[13];
                                              v349[1] = 0;
                                              v350 = *v348;
                                              *v349 = *v348;
                                              v351 = v119[25];
                                              v352 = v348[1];
                                              if (v352)
                                              {
                                                atomic_fetch_add_explicit((v352 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v353 = v351[1];
                                              *v351 = v350;
                                              v351[1] = v352;
                                              if (v353)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v353);
                                              }

                                              v354 = v119[17];
                                              v354[1] = 0;
                                              v355 = *(a5 + 224);
                                              *v354 = v355;
                                              v356 = v119[29];
                                              v357 = *(a5 + 232);
                                              if (v357)
                                              {
                                                atomic_fetch_add_explicit((v357 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v358 = v356[1];
                                              *v356 = v355;
                                              v356[1] = v357;
                                              if (v358)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v358);
                                              }

                                              v359 = v119[17];
                                              *(v359 + 168) = 0;
                                              v360 = *(a5 + 456);
                                              *(v359 + 160) = v360;
                                              v361 = v119[29];
                                              v362 = *(a5 + 464);
                                              if (v362)
                                              {
                                                atomic_fetch_add_explicit((v362 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v363 = *(v361 + 168);
                                              *(v361 + 160) = v360;
                                              *(v361 + 168) = v362;
                                              if (v363)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v363);
                                              }

                                              v364 = v119[17];
                                              *(v364 + 24) = 0;
                                              v365 = *(a5 + 240);
                                              *(v364 + 16) = v365;
                                              v366 = v119[29];
                                              v367 = *(a5 + 248);
                                              if (v367)
                                              {
                                                atomic_fetch_add_explicit((v367 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v368 = *(v366 + 24);
                                              *(v366 + 16) = v365;
                                              *(v366 + 24) = v367;
                                              if (v368)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v368);
                                              }

                                              if (*(v96 + 6) == 1)
                                              {
                                                v369 = v119[17];
                                                *(v369 + 40) = 0;
                                                v370 = *(a5 + 408);
                                                *(v369 + 32) = v370;
                                                v371 = v119[29];
                                                v372 = *(a5 + 416);
                                                if (v372)
                                                {
                                                  atomic_fetch_add_explicit((v372 + 8), 1uLL, memory_order_relaxed);
                                                }

                                                v373 = *(v371 + 40);
                                                *(v371 + 32) = v370;
                                                *(v371 + 40) = v372;
                                                if (v373)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v373);
                                                }

                                                v374 = v726[13];
                                                if (v374)
                                                {
                                                  v375 = *(v374 + 32);
                                                  v376 = *(v726[1] + 96);
                                                  if (v375 >= (*(v726[1] + 104) - v376) >> 3)
                                                  {
                                                    v374 = 0;
                                                  }

                                                  else
                                                  {
                                                    v374 = *(*(v376 + 8 * v375) + 16);
                                                  }
                                                }

                                                *(v119[21] + 8) = v374;
                                              }

                                              v379 = v119[17];
                                              *(v379 + 216) = 0;
                                              v380 = v726[41];
                                              *(v379 + 208) = v380;
                                              v381 = v119[29];
                                              v382 = v726[42];
                                              if (v382)
                                              {
                                                atomic_fetch_add_explicit((v382 + 8), 1uLL, memory_order_relaxed);
                                              }

                                              v383 = *(v381 + 216);
                                              *(v381 + 208) = v380;
                                              *(v381 + 216) = v382;
                                              if (v383)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v383);
                                              }

                                              *v119[21] = *(v96 + 296);
                                              v384 = v765;
                                              v385 = v766;
                                              ggl::DaVinci::GroundPipelineSetup::setTileClippingConstantData(v119[17], v119[29], v765, v766);
                                              ggl::DaVinci::GroundPipelineSetup::setTileClippingConstantData(v119[17], v119[29], v384, v385);
                                              md::DaVinciGroundRenderLayer::setupDaVinciGroundTileDataBindings<ggl::DaVinci::GroundNonCompressedPipelineSetup>(v119, v33);
                                              if (!v710)
                                              {
                                                *(v119[21] + 64) = 0;
                                                *(v119[21] + 56) = 0;
                                                v391 = v119[17];
                                                *(v391 + 272) = 0;
                                                *(v391 + 280) = 0;
                                                v392 = v119[29];
                                                v393 = *(v392 + 280);
                                                *(v392 + 272) = 0;
                                                *(v392 + 280) = 0;
                                                v387 = (a1 + 3392);
                                                if (v393)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v393);
                                                }

LABEL_420:
                                                if (updated)
                                                {
                                                  v401 = *(v771 + 164);
                                                  if (v774 != 1 || (v402 = md::StyleAttributeRasterSet::textureForAttribute(*(v771 + 164), 0x99u)) == 0)
                                                  {
                                                    v403 = *v387;
                                                    if (!*v387)
                                                    {
                                                      goto LABEL_431;
                                                    }

                                                    v404 = v387;
                                                    do
                                                    {
                                                      v405 = *(v403 + 32);
                                                      _CF = v405 >= 0x99;
                                                      v406 = v405 < 0x99;
                                                      if (_CF)
                                                      {
                                                        v404 = v403;
                                                      }

                                                      v403 = *(v403 + 8 * v406);
                                                    }

                                                    while (v403);
                                                    if (v404 != v387 && *(v404 + 8) <= 0x99u)
                                                    {
                                                      v402 = v404[5];
                                                    }

                                                    else
                                                    {
LABEL_431:
                                                      v402 = 0;
                                                    }
                                                  }

                                                  *(v119[21] + 80) = v402;
                                                  if (v773 != 1 || (v407 = md::StyleAttributeRasterSet::textureForAttribute(v401, 0x9Au)) == 0)
                                                  {
                                                    v408 = *v387;
                                                    if (!*v387)
                                                    {
                                                      goto LABEL_442;
                                                    }

                                                    v409 = v387;
                                                    do
                                                    {
                                                      v410 = *(v408 + 32);
                                                      _CF = v410 >= 0x9A;
                                                      v411 = v410 < 0x9A;
                                                      if (_CF)
                                                      {
                                                        v409 = v408;
                                                      }

                                                      v408 = *(v408 + 8 * v411);
                                                    }

                                                    while (v408);
                                                    if (v409 != v387 && *(v409 + 8) <= 0x9Au)
                                                    {
                                                      v407 = v409[5];
                                                    }

                                                    else
                                                    {
LABEL_442:
                                                      v407 = 0;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v407 = 0;
                                                  *(v119[21] + 80) = 0;
                                                }

                                                *(v119[21] + 72) = v407;
                                                if (v707)
                                                {
                                                  if (v169)
                                                  {
                                                    atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
                                                  }

                                                  v412 = v754;
                                                  v413 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*(a4 + 200), *(a4 + 208), v754);
                                                  if (v413)
                                                  {
                                                    v414 = v413[3];
                                                  }

                                                  else
                                                  {
                                                    v414 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::pop(*(a1 + 1872));
                                                    buf.i64[0] = v414;
                                                    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v414);
                                                    v424 = *(v698 + 12);
                                                    v425 = v781;
                                                    v781[1] = -v424;
                                                    *v425 = 1.0 / (*(v698 + 13) - v424);
                                                    std::__hash_table<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *&>((a4 + 200), v412);
                                                    ggl::BufferMemory::~BufferMemory(&__p);
                                                  }

                                                  v426 = v119[17];
                                                  *(v426 + 352) = v414;
                                                  *(v426 + 360) = 0;
                                                  v427 = v119[29];
                                                  v428 = *(v427 + 360);
                                                  *(v427 + 352) = 0;
                                                  *(v427 + 360) = 0;
                                                  if (v428)
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:nn200100](v428);
                                                  }

                                                  if (v169)
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:nn200100](v169);
                                                  }

                                                  md::LayoutContext::frameState(a2);
                                                  md::SharedResource::addFrameRef(v698, *(v429 + 624));
                                                  *(v119[21] + 88) = *(v698 + 4);
                                                  if (v700)
                                                  {
                                                    if (v169)
                                                    {
                                                      atomic_fetch_add_explicit(&v169->__shared_owners_, 1uLL, memory_order_relaxed);
                                                    }

                                                    v430 = v754;
                                                    v431 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*(a4 + 200), *(a4 + 208), v754);
                                                    if (v431)
                                                    {
                                                      v432 = v431[3];
                                                    }

                                                    else
                                                    {
                                                      v432 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::pop(*(a1 + 1872));
                                                      buf.i64[0] = v432;
                                                      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v432);
                                                      v433 = *(v691 + 12);
                                                      v434 = v781;
                                                      v781[1] = -v433;
                                                      *v434 = 1.0 / (*(v691 + 13) - v433);
                                                      std::__hash_table<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *&>((a4 + 200), v430);
                                                      ggl::BufferMemory::~BufferMemory(&__p);
                                                    }

                                                    v435 = v119[17];
                                                    *(v435 + 368) = v432;
                                                    *(v435 + 376) = 0;
                                                    v436 = v119[29];
                                                    v437 = *(v436 + 376);
                                                    *(v436 + 368) = 0;
                                                    *(v436 + 376) = 0;
                                                    if (v437)
                                                    {
                                                      std::__shared_weak_count::__release_shared[abi:nn200100](v437);
                                                    }

                                                    if (v169)
                                                    {
                                                      std::__shared_weak_count::__release_shared[abi:nn200100](v169);
                                                    }

                                                    md::LayoutContext::frameState(a2);
                                                    md::SharedResource::addFrameRef(v691, *(v438 + 624));
                                                    *(v119[21] + 96) = *(v691 + 4);
                                                    v439 = v119[17];
                                                    *(v439 + 392) = 0;
                                                    v440 = *(a1 + 2176);
                                                    *(v439 + 384) = v440;
                                                    v441 = v119[29];
                                                    v442 = *(a1 + 2184);
                                                    if (v442)
                                                    {
                                                      atomic_fetch_add_explicit((v442 + 8), 1uLL, memory_order_relaxed);
                                                    }

                                                    v423 = *(v441 + 392);
                                                    *(v441 + 384) = v440;
                                                    *(v441 + 392) = v442;
                                                    if (v423)
                                                    {
LABEL_473:
                                                      std::__shared_weak_count::__release_shared[abi:nn200100](v423);
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v415 = v119[17];
                                                  *(v415 + 352) = 0;
                                                  *(v415 + 360) = 0;
                                                  v416 = v119[29];
                                                  v417 = *(v416 + 360);
                                                  *(v416 + 352) = 0;
                                                  *(v416 + 360) = 0;
                                                  if (v417)
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:nn200100](v417);
                                                  }

                                                  *(v119[21] + 88) = 0;
                                                  v418 = v119[17];
                                                  *(v418 + 368) = 0;
                                                  *(v418 + 376) = 0;
                                                  v419 = v119[29];
                                                  v420 = *(v419 + 376);
                                                  *(v419 + 368) = 0;
                                                  *(v419 + 376) = 0;
                                                  if (v420)
                                                  {
                                                    std::__shared_weak_count::__release_shared[abi:nn200100](v420);
                                                  }

                                                  *(v119[21] + 96) = 0;
                                                  v421 = v119[17];
                                                  *(v421 + 384) = 0;
                                                  *(v421 + 392) = 0;
                                                  v422 = v119[29];
                                                  v423 = *(v422 + 392);
                                                  *(v422 + 384) = 0;
                                                  *(v422 + 392) = 0;
                                                  if (v423)
                                                  {
                                                    goto LABEL_473;
                                                  }
                                                }

                                                v443 = v730[5];
                                                if (*(v33 + 145) == 1 && *(a1 + 3704) == 1)
                                                {
                                                  if (v443 >= 0.25)
                                                  {
                                                    v444 = 2008;
LABEL_481:
                                                    if (*(v119[2] + 309) == 1)
                                                    {
                                                      v445 = a1 + v444;
                                                      v446 = v119[17];
                                                      *(v446 + 296) = 0;
                                                      v447 = *(a1 + v444);
                                                      *(v446 + 288) = v447;
                                                      v448 = v119[29];
                                                      v449 = *(v445 + 8);
                                                      if (v449)
                                                      {
                                                        atomic_fetch_add_explicit((v449 + 8), 1uLL, memory_order_relaxed);
                                                      }

                                                      v450 = *(v448 + 296);
                                                      *(v448 + 288) = v447;
                                                      *(v448 + 296) = v449;
                                                      if (v450)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v450);
                                                      }
                                                    }

                                                    if (*(v119[2] + 320) == 1)
                                                    {
                                                      v451 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::pop(*(a1 + 2056));
                                                      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v451);
                                                      gdc::Tiled::unitsPerMeter((*(a5 + 8) + 168));
                                                      v453 = v452;
                                                      v454 = gdc::Camera::cameraFrame(v715);
                                                      _S2 = *(v96 + 68);
                                                      _D0 = fmax(*(v454 + 24) * 0.5, 250.0) * ((*(v96 + 64) * v453) * fmaxf((*(v96 + 20) * 0.125) + -0.875, 0.0));
                                                      __asm
                                                      {
                                                        FCVT            H0, D0
                                                        FCVT            H1, S2
                                                      }

                                                      v459 = v781;
                                                      if (!*(v96 + 7))
                                                      {
                                                        _H1 = COERCE_SHORT_FLOAT(0);
                                                      }

                                                      *v781 = _H0;
                                                      *(v459 + 1) = _H1;
                                                      ggl::BufferMemory::~BufferMemory(&__p);
                                                      v460 = v119[17];
                                                      *(v460 + 320) = v451;
                                                      *(v460 + 328) = 0;
                                                      v461 = v119[29];
                                                      v462 = *(v461 + 328);
                                                      *(v461 + 320) = 0;
                                                      *(v461 + 328) = 0;
                                                      if (v462)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v462);
                                                      }
                                                    }

                                                    if (v753 == 1)
                                                    {
                                                      v463 = v751;
                                                      _S8 = v752;
                                                    }

                                                    else if (v750 == 1)
                                                    {
                                                      _S8 = v749;
                                                      v463 = v748;
                                                    }

                                                    else
                                                    {
                                                      v463 = 0;
                                                      _S8 = 0;
                                                    }

                                                    if (*(v119[2] + 327) == 1)
                                                    {
                                                      v719 = v463;
                                                      v465 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::pop(*(a1 + 2072));
                                                      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v465);
                                                      _S1 = v719;
                                                      __asm { FCVT            H0, S1 }

                                                      _S1 = HIDWORD(v719);
                                                      __asm { FCVT            H1, S1 }

                                                      v469 = v781;
                                                      *v781 = _H0;
                                                      __asm { FCVT            H0, S8 }

                                                      *(v469 + 1) = _S1;
                                                      *(v469 + 2) = _H0;
                                                      ggl::BufferMemory::~BufferMemory(&__p);
                                                      v471 = v119[17];
                                                      *(v471 + 304) = v465;
                                                      *(v471 + 312) = 0;
                                                      v472 = v119[29];
                                                      v473 = *(v472 + 312);
                                                      *(v472 + 304) = 0;
                                                      *(v472 + 312) = 0;
                                                      if (v473)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v473);
                                                      }
                                                    }

                                                    v474 = (*(**(v33 + 216) + 504))(*(v33 + 216), *v733);
                                                    if ((v474 & 0x100000000) != 0)
                                                    {
                                                      _S8 = *&v474;
                                                    }

                                                    else
                                                    {
                                                      _S8 = 1.0;
                                                    }

                                                    if (v694)
                                                    {
                                                      _S9 = v114;
                                                    }

                                                    else
                                                    {
                                                      _S9 = 0.0;
                                                    }

                                                    if (*(v119[2] + 326) == 1)
                                                    {
                                                      buf.i64[0] = __PAIR64__(LODWORD(_S9), LODWORD(_S8));
                                                      v477 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::find<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>((a1 + 408), _S8, _S9);
                                                      if (v477)
                                                      {
                                                        v478 = *(v477 + 3);
                                                      }

                                                      else
                                                      {
                                                        v478 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::pop(*(a1 + 2112));
                                                        v789.i64[0] = v478;
                                                        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v478);
                                                        __asm { FCVT            H0, S8 }

                                                        v480 = v781;
                                                        __asm { FCVT            H1, S9 }

                                                        *v781 = _H0;
                                                        *(v480 + 1) = _H1;
                                                        ggl::BufferMemory::~BufferMemory(&__p);
                                                        std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,md::DaVinciGroundRenderLayer::ShinyStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *&>((a1 + 408), _S8, _S9);
                                                      }

                                                      v482 = v119[17];
                                                      *(v482 + 336) = v478;
                                                      *(v482 + 344) = 0;
                                                      v483 = v119[29];
                                                      v484 = *(v483 + 344);
                                                      *(v483 + 336) = 0;
                                                      *(v483 + 344) = 0;
                                                      if (v484)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v484);
                                                      }
                                                    }

                                                    if (v693)
                                                    {
                                                      *(v119[21] + 32) = v689;
                                                      if (v759 == 1)
                                                      {
                                                        v485.i64[0] = v757;
                                                        v485.i64[1] = __PAIR64__(1.0, v758);
                                                      }

                                                      else
                                                      {
                                                        if ((v756 & 1) == 0)
                                                        {
                                                          goto LABEL_761;
                                                        }

                                                        v485 = v755;
                                                      }

                                                      v720 = v485;
                                                      buf = v485;
                                                      LOBYTE(v798) = 1;
                                                      v486 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((a1 + 488), &buf);
                                                      if (v486)
                                                      {
                                                        v487 = *(v486 + 40);
                                                      }

                                                      else
                                                      {
                                                        v487 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(*(a1 + 2064));
                                                        v789.i64[0] = v487;
                                                        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v487);
                                                        *v781 = vcvt_f16_f32(v720);
                                                        std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>((a1 + 488), &buf);
                                                        ggl::BufferMemory::~BufferMemory(&__p);
                                                      }

                                                      v488 = v119[17];
                                                      *(v488 + 464) = v487;
                                                      *(v488 + 472) = 0;
                                                      v489 = v119[29];
                                                      v490 = *(v489 + 472);
                                                      *(v489 + 464) = 0;
                                                      *(v489 + 472) = 0;
                                                      if (v490)
                                                      {
                                                        std::__shared_weak_count::__release_shared[abi:nn200100](v490);
                                                      }
                                                    }

                                                    if (*(*(v33 + 216) + 8) - 3 <= 1 && *(v119[2] + 329) == 1)
                                                    {
                                                      v491 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::pop(*(a1 + 2096));
                                                      v492 = v119[17];
                                                      *(v492 + 64) = v491;
                                                      *(v492 + 72) = 0;
                                                      v493 = v119[29];
                                                      v494 = *(v493 + 72);
                                                      *(v493 + 64) = 0;
                                                      *(v493 + 72) = 0;
                                                      v495 = "standard material renderable - ground non compressed";
                                                      if (!v494)
                                                      {
LABEL_525:
                                                        if (v491 && *(*(v33 + 216) + 8) - 3 <= 1)
                                                        {
                                                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v491);
                                                          v496 = v712[10];
                                                          if (v681)
                                                          {
                                                            v497 = +[VKDebugSettings sharedSettings];
                                                            [v497 daVinciPlanarPixelPerMeterOverride];
                                                            v721 = v498;

                                                            v96 = a3;
                                                          }

                                                          else
                                                          {
                                                            v721 = 32.0;
                                                          }

                                                          v713 = *(v771 + 294);
                                                          v532 = (*(**(v33 + 216) + 392))(*(v33 + 216), *v733);
                                                          v534 = v533;
                                                          v535 = (*(**(v33 + 216) + 424))(*(v33 + 216), *v733);
                                                          v537.i32[0] = 1.0;
                                                          if (v534)
                                                          {
                                                            v538 = *(&v532 + 1);
                                                          }

                                                          else
                                                          {
                                                            v538 = 1.0;
                                                          }

                                                          if (v534)
                                                          {
                                                            v537.f32[0] = *&v532;
                                                          }

                                                          if (v536)
                                                          {
                                                            v539 = *(&v535 + 1);
                                                          }

                                                          else
                                                          {
                                                            v539 = 0.0;
                                                          }

                                                          if (v536)
                                                          {
                                                            v540 = *&v535;
                                                          }

                                                          else
                                                          {
                                                            v540 = 0.0;
                                                          }

                                                          v169 = v706;
                                                          if (v681)
                                                          {
                                                            v541 = +[VKDebugSettings sharedSettings];
                                                            [v541 daVinciPlanarTilingOverride];
                                                            v711 = v542;

                                                            v543 = +[VKDebugSettings sharedSettings];
                                                            [v543 daVinciPlanarOffsetOverride];
                                                            v709 = v544;

                                                            v540 = v709;
                                                            v537.f32[0] = v711;
                                                            v539 = v709;
                                                            v538 = v711;
                                                            v96 = a3;
                                                            v169 = v706;
                                                          }

                                                          *v545.f32 = vcvt_f32_u32(v496);
                                                          v545.i64[1] = v545.i64[0];
                                                          v537.f32[1] = v538;
                                                          v537.i64[1] = __PAIR64__(LODWORD(v539), LODWORD(v540));
                                                          *v781 = vcvt_f16_f32(vdivq_f32(vmulq_n_f32(v537, v721), vmulq_n_f32(v545, v713)));
                                                          ggl::BufferMemory::~BufferMemory(&__p);
                                                        }

                                                        goto LABEL_649;
                                                      }

LABEL_524:
                                                      std::__shared_weak_count::__release_shared[abi:nn200100](v494);
                                                      goto LABEL_525;
                                                    }

                                                    v495 = "standard material renderable - ground non compressed";
                                                    goto LABEL_649;
                                                  }
                                                }

                                                else if (v443 >= 0.25)
                                                {
                                                  v444 = 1992;
                                                  goto LABEL_481;
                                                }

                                                v444 = 2024;
                                                goto LABEL_481;
                                              }

                                              v386 = v772;
                                              v387 = (a1 + 3392);
                                              if (v772 && (v388 = *(v771 + 164), md::StyleAttributeRasterSet::textureForAttribute(v388, v772)))
                                              {
                                                v389 = md::DaVinciGroundRenderResources::debugTextureForAttribute(a1 + 568, v386);
                                                v390 = md::StyleAttributeRasterSet::textureForAttribute(v388, v386);
                                              }

                                              else
                                              {
                                                if (v688)
                                                {
                                                  v394 = v688;
                                                  v389 = md::MaterialRaster::styleTexture(v688, *(v688 + 122));
                                                  v390 = *v688;
                                                  v396 = *(v688 + 1);
                                                  if (v396)
                                                  {
                                                    atomic_fetch_add_explicit(&v396->__shared_owners_, 1uLL, memory_order_relaxed);
                                                    std::__shared_weak_count::__release_shared[abi:nn200100](v396);
                                                    v394 = v688;
                                                  }

                                                  LOWORD(v395) = *(v394 + 60);
                                                  v397 = v395;
                                                  goto LABEL_417;
                                                }

                                                v390 = 0;
                                                v389 = 0;
                                              }

                                              v397 = 255.0;
LABEL_417:
                                              v400 = *(v119[17] + 272);
                                              if (!v400)
                                              {
                                                _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_7DaVinci17LandCoverSettingsEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
                                              }

                                              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v400);
                                              *v781 = v397;
                                              *(v119[21] + 56) = v390;
                                              *(v119[21] + 64) = v389;
                                              ggl::BufferMemory::~BufferMemory(&__p);
                                              goto LABEL_420;
                                            }
                                          }

                                          LODWORD(v309) = v308;
                                          if ((v308 & 0x100000000) == 0)
                                          {
                                            v309 = 1.0;
                                          }

                                          v310.i64[0] = v784.i64[0];
                                          v310.i64[1] = __PAIR64__(LODWORD(v309), v784.u32[2]);
                                          if (v303)
                                          {
                                            goto LABEL_326;
                                          }

                                          goto LABEL_327;
                                        }

                                        for (i = 0; i != 4; ++i)
                                        {
                                          _D0 = *(v678 + i);
                                          __asm { FCVT            H0, D0 }

                                          *(&__p.__r_.__value_.__l.__data_ + i) = _D0;
                                        }
                                      }

                                      else
                                      {
                                        v248 = 0;
                                        v169 = v706;
                                        do
                                        {
                                          _D0 = *(a3 + 128 + 8 * v248);
                                          __asm { FCVT            H0, D0 }

                                          *(&__p.__r_.__value_.__l.__data_ + v248++) = _D0;
                                        }

                                        while (v248 != 4);
                                      }

                                      _H0 = WORD2(__p.__r_.__value_.__r.__words[0]);
                                      __asm { FCVT            S0, H0 }

                                      v246.i32[0] = __p.__r_.__value_.__l.__data_;
                                      v282.i64[0] = vcvtq_f32_f16(v246).u64[0];
                                      v282.i64[1] = __PAIR64__(LODWORD(v247), _S0);
                                      goto LABEL_294;
                                    }
                                  }

                                  else
                                  {
                                    v227 = *(a1 + 3272);
                                    v229 = *v227;
                                    v228 = v227[1];
                                    if (!v228)
                                    {
                                      *(v119[21] + 24) = v229;
                                      goto LABEL_278;
                                    }

                                    atomic_fetch_add_explicit(&v228->__shared_owners_, 1uLL, memory_order_relaxed);
                                    *(v119[21] + 24) = v229;
                                  }

                                  std::__shared_weak_count::__release_shared[abi:nn200100](v228);
                                  goto LABEL_278;
                                }

                                v119 = ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::pop(*(a1 + 1792));
                                v120 = 976;
                                if (v716)
                                {
                                  v120 = 568;
                                }

                                md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&buf, a1 + v120, &v737);
                                v682 = buf;
                                *&__p.__r_.__value_.__l.__data_ = buf;
                                ggl::PipelineSetup::setState(v119, &__p);
                                v122 = *v682.i64;
                                if (v682.i64[1])
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v682.i64[1]);
                                }

                                if (*(v33 + 200) == 1)
                                {
                                  v123 = *(v33 + 196);
                                  v124 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::pop(*(a1 + 2120));
                                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v124);
                                  *v781 = v123;
                                  ggl::BufferMemory::~BufferMemory(&__p);
                                  v125 = v119[17];
                                  *(v125 + 144) = v124;
                                  *(v125 + 152) = 0;
                                }

                                else
                                {
                                  v137 = v119[17];
                                  *(v137 + 144) = *(a1 + 2160);
                                  *(v137 + 152) = 0;
                                }

                                v138 = v119[29];
                                v139 = *(v138 + 152);
                                *(v138 + 144) = 0;
                                *(v138 + 152) = 0;
                                if (v139)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v139);
                                }

                                md::DaVinciGroundRenderLayer::setupStyleConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(a1, v119, a5, v96, v122, v121);
                                if (v113)
                                {
                                  v141 = *(v33 + 224);
                                  v736[0] = *(v33 + 216);
                                  v736[1] = v141;
                                  if (v141)
                                  {
                                    atomic_fetch_add_explicit(&v141->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  v142 = md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_2::operator()(v768, v736, &v767);
                                  v143 = v119[17];
                                  *(v143 + 240) = v142;
                                  *(v143 + 248) = 0;
                                  v144 = v119[29];
                                  v145 = *(v144 + 248);
                                  *(v144 + 240) = 0;
                                  *(v144 + 248) = 0;
                                  if (v145)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v145);
                                  }

                                  if (v141)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v141);
                                  }
                                }

                                if (v717)
                                {
                                  *(v119[21] + 48) = *(v33 + 304);
                                  v146 = v119[17];
                                  *(v146 + 408) = 0;
                                  v147 = *(v33 + 328);
                                  *(v146 + 400) = v147;
                                  v148 = v119[29];
                                  v149 = *(v33 + 336);
                                  if (v149)
                                  {
                                    atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
                                  }

                                  v150 = *(v148 + 408);
                                  *(v148 + 400) = v147;
                                  *(v148 + 408) = v149;
                                  if (v150)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v150);
                                  }

                                  v151 = v119[17];
                                  *(v151 + 424) = 0;
                                  v152 = *(v33 + 344);
                                  *(v151 + 416) = v152;
                                  v153 = v119[29];
                                  v154 = *(v33 + 352);
                                  if (v154)
                                  {
                                    atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
                                  }

                                  v155 = *(v153 + 424);
                                  *(v153 + 416) = v152;
                                  *(v153 + 424) = v154;
                                  if (v155)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v155);
                                  }

                                  v156 = *(v33 + 224);
                                  if (v156)
                                  {
                                    atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  v157 = md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_1::operator()(v769, &v767);
                                  v158 = v119[17];
                                  *(v158 + 256) = v157;
                                  *(v158 + 264) = 0;
                                  v159 = v119[29];
                                  v160 = *(v159 + 264);
                                  *(v159 + 256) = 0;
                                  *(v159 + 264) = 0;
                                  if (v160)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v160);
                                  }

                                  if (v156)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v156);
                                  }
                                }

                                *(v119[21] + 16) = v712;
                                if (v95)
                                {
                                  *(v119[21] + 40) = v702;
                                }

                                v161 = *(v33 + 388);
                                if (v161 == 1)
                                {
                                  *&v140 = *(v33 + 372);
                                  v686 = v140;
                                  v677 = *(v33 + 380);
                                  v679 = *(v33 + 384);
                                }

                                else
                                {
                                  v162 = v686;
                                  LOBYTE(v162) = 0;
                                  v686 = v162;
                                }

                                v163 = *v733;
                                v165 = *(v33 + 216);
                                v164 = *(v33 + 224);
                                if (v164)
                                {
                                  atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
                                }

                                (*(*v165 + 976))(&buf, v165, v163);
                                v166 = (*(*v165 + 928))(v165, v163);
                                if (buf.i8[12])
                                {
                                  __p.__r_.__value_.__s.__data_[0] = 0;
                                  __p.__r_.__value_.__s.__data_[16] = 0;
                                }

                                else
                                {
                                  (*(*v165 + 232))(&__p, v165, v163);
                                  if ((buf.i8[12] & 1) == 0)
                                  {
                                    __asm { FMOV            V0.4S, #1.0 }

                                    v784 = _Q0;
                                    p_p = &__p;
                                    if (!__p.__r_.__value_.__s.__data_[16])
                                    {
                                      p_p = &v784;
                                    }

                                    v789 = *p_p;
                                    if (v161)
                                    {
                                      goto LABEL_203;
                                    }

                                    goto LABEL_204;
                                  }
                                }

                                LODWORD(v167) = v166;
                                if ((v166 & 0x100000000) == 0)
                                {
                                  v167 = 1.0;
                                }

                                v789.i64[0] = buf.i64[0];
                                v789.i64[1] = __PAIR64__(LODWORD(v167), buf.u32[2]);
                                if (v161)
                                {
LABEL_203:
                                  *v789.i8 = vmla_n_f32(*v789.i8, vsub_f32(*&v686, *v789.i8), v679);
                                  *&v789.i32[2] = *&v789.i32[2] + ((v677 - *&v789.i32[2]) * v679);
                                }

LABEL_204:
                                md::DaVinciGroundRenderLayer::setupStyleColorConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(a1, v119, &v789);
                                if (v164)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v164);
                                }

                                v168 = v119[2];
                                v169 = v706;
                                if (v168[317] == 1)
                                {
                                  ggl::DaVinci::GroundPipelineSetup::setLightingDebugOptionsConstantData(v119[17], v119[29], v726[43], v726[44]);
                                  v168 = v119[2];
                                }

                                if (v168[331] == 1)
                                {
                                  ggl::DaVinci::GroundPipelineSetup::setTransitionConstantData(v119[17], v119[29], *(a1 + 1976), *(a1 + 1984));
                                  v168 = v119[2];
                                }

                                if (v168[330] == 1)
                                {
                                  ggl::ARMesh::ARMeshPipelineSetup::setStyleColorConstantData(v119[17], v119[29], *(a1 + 1960), *(a1 + 1968));
                                  v168 = v119[2];
                                }

                                if (v168[326] == 1)
                                {
                                  ggl::DaVinci::GroundPipelineSetup::setLightConfigConstantData(v119[17], v119[29], v729[4], v729[5]);
                                }

                                v170 = v729;
                                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(v119[17], v119[29], v729[2], v729[3]);
                                if (*(v119[2] + 346) == 1)
                                {
                                  v171 = v119[17];
                                  *(v171 + 488) = 0;
                                  v172 = v729[6];
                                  *(v171 + 480) = v172;
                                  v173 = v119[29];
                                  v174 = v729[7];
                                  if (v174)
                                  {
                                    atomic_fetch_add_explicit((v174 + 8), 1uLL, memory_order_relaxed);
                                  }

                                  v175 = *(v173 + 488);
                                  *(v173 + 480) = v172;
                                  *(v173 + 488) = v174;
                                  v170 = v729;
                                  if (v175)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v175);
                                  }
                                }

                                md::DaVinciGroundRenderLayer::setupCommonGroundPipelineSetup<ggl::DaVinci::GroundPipelineSetup>(v119, a5, v726, **(v33 + 32), *(*(v33 + 32) + 8), &v765, v96);
                                ggl::DaVinci::GroundPipelineSetup::setTileClippingConstantData(v119[17], v119[29], v765, v766);
                                md::DaVinciGroundRenderLayer::setupSSAOGroundPipelineSetup<ggl::DaVinci::GroundPipelineSetup>(a1, v170, v119, v726, v116 & 1, _S8);
                                v176 = **(v33 + 208);
                                v179 = *(v176 + 120);
                                v178 = (v176 + 120);
                                v177 = v179;
                                if (!v179)
                                {
                                  goto LABEL_227;
                                }

                                v180 = v178;
                                v181 = v177;
                                do
                                {
                                  if (v181[4])
                                  {
                                    v180 = v181;
                                  }

                                  v181 = v181[v181[4] == 0];
                                }

                                while (v181);
                                if (v180 == v178 || v180[4] > 1uLL)
                                {
LABEL_227:
                                  v182 = 0;
                                }

                                else
                                {
                                  v182 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v177, 1uLL);
                                }

                                v183 = v119[13];
                                *(v183 + 16) = v182;
                                *(v183 + 24) = 0;
                                v184 = v119[25];
                                v185 = *(v184 + 24);
                                *(v184 + 16) = 0;
                                *(v184 + 24) = 0;
                                if (v185)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v185);
                                }

                                v186 = **(v33 + 208);
                                v189 = *(v186 + 120);
                                v188 = (v186 + 120);
                                v187 = v189;
                                if (!v189)
                                {
                                  goto LABEL_235;
                                }

                                v190 = v187;
                                do
                                {
                                  v191 = v190;
                                  v190 = *v190;
                                }

                                while (v190);
                                if (v191 == v188 || v191[4])
                                {
LABEL_235:
                                  v192 = 0;
                                }

                                else
                                {
                                  v192 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v187, 0);
                                }

                                v193 = v119[13];
                                *(v193 + 32) = v192;
                                *(v193 + 40) = 0;
                                v194 = v119[25];
                                v195 = *(v194 + 40);
                                *(v194 + 32) = 0;
                                *(v194 + 40) = 0;
                                if (v195)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v195);
                                }

                                v196 = **(v33 + 208);
                                v199 = *(v196 + 120);
                                v198 = (v196 + 120);
                                v197 = v199;
                                if (!v199)
                                {
                                  goto LABEL_247;
                                }

                                v200 = v198;
                                v201 = v197;
                                do
                                {
                                  v202 = v201[4];
                                  _CF = v202 >= 2;
                                  v204 = v202 < 2;
                                  if (_CF)
                                  {
                                    v200 = v201;
                                  }

                                  v201 = v201[v204];
                                }

                                while (v201);
                                if (v200 == v198 || v200[4] > 2uLL)
                                {
LABEL_247:
                                  v205 = 0;
                                }

                                else
                                {
                                  v205 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v197, 2uLL);
                                }

                                v206 = v119[13];
                                *(v206 + 48) = v205;
                                *(v206 + 56) = 0;
                                v207 = v119[25];
                                v208 = *(v207 + 56);
                                *(v207 + 48) = 0;
                                *(v207 + 56) = 0;
                                if (v208)
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v208);
                                }

                                if (!v710)
                                {
                                  *(v119[21] + 64) = 0;
                                  *(v119[21] + 56) = 0;
                                  v213 = v119[17];
                                  *(v213 + 272) = 0;
                                  *(v213 + 280) = 0;
                                  v214 = v119[29];
                                  v215 = *(v214 + 280);
                                  *(v214 + 272) = 0;
                                  *(v214 + 280) = 0;
                                  if (v215)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v215);
                                  }

LABEL_536:
                                  if (updated)
                                  {
                                    v500 = *(v771 + 164);
                                    if (v774 != 1 || (v501 = md::StyleAttributeRasterSet::textureForAttribute(*(v771 + 164), 0x99u)) == 0)
                                    {
                                      v502 = *v690;
                                      if (!*v690)
                                      {
                                        goto LABEL_547;
                                      }

                                      v503 = a1 + 3392;
                                      do
                                      {
                                        v504 = *(v502 + 32);
                                        _CF = v504 >= 0x99;
                                        v505 = v504 < 0x99;
                                        if (_CF)
                                        {
                                          v503 = v502;
                                        }

                                        v502 = *(v502 + 8 * v505);
                                      }

                                      while (v502);
                                      if (v503 != v690 && *(v503 + 32) <= 0x99u)
                                      {
                                        v501 = *(v503 + 40);
                                      }

                                      else
                                      {
LABEL_547:
                                        v501 = 0;
                                      }
                                    }

                                    *(v119[21] + 80) = v501;
                                    if (v773 != 1 || (v506 = md::StyleAttributeRasterSet::textureForAttribute(v500, 0x9Au)) == 0)
                                    {
                                      v507 = *v690;
                                      if (!*v690)
                                      {
                                        goto LABEL_558;
                                      }

                                      v508 = a1 + 3392;
                                      do
                                      {
                                        v509 = *(v507 + 32);
                                        _CF = v509 >= 0x9A;
                                        v510 = v509 < 0x9A;
                                        if (_CF)
                                        {
                                          v508 = v507;
                                        }

                                        v507 = *(v507 + 8 * v510);
                                      }

                                      while (v507);
                                      if (v508 != v690 && *(v508 + 32) <= 0x9Au)
                                      {
                                        v506 = *(v508 + 40);
                                      }

                                      else
                                      {
LABEL_558:
                                        v506 = 0;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v506 = 0;
                                    *(v119[21] + 80) = 0;
                                  }

                                  *(v119[21] + 72) = v506;
                                  if (v707)
                                  {
                                    if (v706)
                                    {
                                      atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
                                    }

                                    v511 = v754;
                                    v512 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*(a4 + 200), *(a4 + 208), v754);
                                    if (v512)
                                    {
                                      v513 = v512[3];
                                    }

                                    else
                                    {
                                      v513 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::pop(*(a1 + 1872));
                                      buf.i64[0] = v513;
                                      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v513);
                                      v523 = *(v698 + 12);
                                      v524 = v781;
                                      v781[1] = -v523;
                                      *v524 = 1.0 / (*(v698 + 13) - v523);
                                      std::__hash_table<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *&>((a4 + 200), v511);
                                      ggl::BufferMemory::~BufferMemory(&__p);
                                    }

                                    v525 = v119[17];
                                    *(v525 + 352) = v513;
                                    *(v525 + 360) = 0;
                                    v526 = v119[29];
                                    v527 = *(v526 + 360);
                                    *(v526 + 352) = 0;
                                    *(v526 + 360) = 0;
                                    if (v527)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v527);
                                    }

                                    if (v706)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v706);
                                    }

                                    md::LayoutContext::frameState(a2);
                                    md::SharedResource::addFrameRef(v698, *(v528 + 624));
                                    *(v119[21] + 88) = *(v698 + 4);
                                    if (v700)
                                    {
                                      if (v706)
                                      {
                                        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
                                      }

                                      v529 = v754;
                                      v530 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*(a4 + 200), *(a4 + 208), v754);
                                      if (v530)
                                      {
                                        v531 = v530[3];
                                      }

                                      else
                                      {
                                        v531 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::pop(*(a1 + 1872));
                                        buf.i64[0] = v531;
                                        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v531);
                                        v546 = *(v691 + 12);
                                        v547 = v781;
                                        v781[1] = -v546;
                                        *v547 = 1.0 / (*(v691 + 13) - v546);
                                        std::__hash_table<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *&>((a4 + 200), v529);
                                        ggl::BufferMemory::~BufferMemory(&__p);
                                      }

                                      v548 = v119[17];
                                      *(v548 + 368) = v531;
                                      *(v548 + 376) = 0;
                                      v549 = v119[29];
                                      v550 = *(v549 + 376);
                                      *(v549 + 368) = 0;
                                      *(v549 + 376) = 0;
                                      if (v550)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v550);
                                      }

                                      if (v706)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v706);
                                      }

                                      md::LayoutContext::frameState(a2);
                                      md::SharedResource::addFrameRef(v691, *(v551 + 624));
                                      *(v119[21] + 96) = *(v691 + 4);
                                      v552 = v119[17];
                                      *(v552 + 392) = 0;
                                      v553 = *(a1 + 2176);
                                      *(v552 + 384) = v553;
                                      v554 = v119[29];
                                      v555 = *(a1 + 2184);
                                      if (v555)
                                      {
                                        atomic_fetch_add_explicit((v555 + 8), 1uLL, memory_order_relaxed);
                                      }

                                      v522 = *(v554 + 392);
                                      *(v554 + 384) = v553;
                                      *(v554 + 392) = v555;
                                      if (v522)
                                      {
LABEL_606:
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v522);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v514 = v119[17];
                                    *(v514 + 352) = 0;
                                    *(v514 + 360) = 0;
                                    v515 = v119[29];
                                    v516 = *(v515 + 360);
                                    *(v515 + 352) = 0;
                                    *(v515 + 360) = 0;
                                    if (v516)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v516);
                                    }

                                    *(v119[21] + 88) = 0;
                                    v517 = v119[17];
                                    *(v517 + 368) = 0;
                                    *(v517 + 376) = 0;
                                    v518 = v119[29];
                                    v519 = *(v518 + 376);
                                    *(v518 + 368) = 0;
                                    *(v518 + 376) = 0;
                                    if (v519)
                                    {
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v519);
                                    }

                                    *(v119[21] + 96) = 0;
                                    v520 = v119[17];
                                    *(v520 + 384) = 0;
                                    *(v520 + 392) = 0;
                                    v521 = v119[29];
                                    v522 = *(v521 + 392);
                                    *(v521 + 384) = 0;
                                    *(v521 + 392) = 0;
                                    if (v522)
                                    {
                                      goto LABEL_606;
                                    }
                                  }

                                  v556 = v730[5];
                                  if (*(v33 + 145) == 1 && *(a1 + 3704) == 1)
                                  {
                                    if (v556 >= 0.25)
                                    {
                                      v557 = 1;
LABEL_614:
                                      md::DaVinciGroundRenderLayer::setupStyleShadowWithThreshold<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(a1, v119, v557);
                                      md::DaVinciGroundRenderLayer::setupStyleGroundOcclusionConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(a1, v119, v715, a5, v96);
                                      if (v753 == 1)
                                      {
                                        v558 = v751;
                                        _S8 = v752;
                                      }

                                      else if (v750 == 1)
                                      {
                                        _S8 = v749;
                                        v558 = v748;
                                      }

                                      else
                                      {
                                        v558 = 0;
                                        _S8 = 0;
                                      }

                                      if (*(v119[2] + 327) == 1)
                                      {
                                        v722 = v558;
                                        v560 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::pop(*(a1 + 2072));
                                        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v560);
                                        _S1 = v722;
                                        __asm { FCVT            H0, S1 }

                                        _S1 = HIDWORD(v722);
                                        __asm { FCVT            H1, S1 }

                                        v564 = v781;
                                        *v781 = _H0;
                                        __asm { FCVT            H0, S8 }

                                        *(v564 + 1) = _S1;
                                        *(v564 + 2) = _H0;
                                        ggl::BufferMemory::~BufferMemory(&__p);
                                        v566 = v119[17];
                                        *(v566 + 304) = v560;
                                        *(v566 + 312) = 0;
                                        v567 = v119[29];
                                        v568 = *(v567 + 312);
                                        *(v567 + 304) = 0;
                                        *(v567 + 312) = 0;
                                        if (v568)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v568);
                                        }
                                      }

                                      v569 = (*(**(v33 + 216) + 504))(*(v33 + 216), *v733);
                                      if ((v569 & 0x100000000) != 0)
                                      {
                                        _S8 = *&v569;
                                      }

                                      else
                                      {
                                        _S8 = 1.0;
                                      }

                                      if (v694)
                                      {
                                        _S9 = v114;
                                      }

                                      else
                                      {
                                        _S9 = 0.0;
                                      }

                                      if (*(v119[2] + 326) == 1)
                                      {
                                        buf.i64[0] = __PAIR64__(LODWORD(_S9), LODWORD(_S8));
                                        v572 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::find<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>((a1 + 408), _S8, _S9);
                                        if (v572)
                                        {
                                          v573 = *(v572 + 3);
                                        }

                                        else
                                        {
                                          v573 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::pop(*(a1 + 2112));
                                          v789.i64[0] = v573;
                                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v573);
                                          __asm { FCVT            H0, S8 }

                                          v575 = v781;
                                          __asm { FCVT            H1, S9 }

                                          *v781 = _H0;
                                          *(v575 + 1) = _H1;
                                          ggl::BufferMemory::~BufferMemory(&__p);
                                          std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,md::DaVinciGroundRenderLayer::ShinyStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *&>((a1 + 408), _S8, _S9);
                                        }

                                        v577 = v119[17];
                                        *(v577 + 336) = v573;
                                        *(v577 + 344) = 0;
                                        v578 = v119[29];
                                        v579 = *(v578 + 344);
                                        *(v578 + 336) = 0;
                                        *(v578 + 344) = 0;
                                        if (v579)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v579);
                                        }
                                      }

                                      if (v693)
                                      {
                                        *(v119[21] + 32) = v689;
                                        if (v759 == 1)
                                        {
                                          v580.i64[0] = v757;
                                          v580.i64[1] = __PAIR64__(1.0, v758);
                                        }

                                        else
                                        {
                                          if ((v756 & 1) == 0)
                                          {
LABEL_761:
                                            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_762:
                                            std::__throw_bad_array_new_length[abi:nn200100]();
                                          }

                                          v580 = v755;
                                        }

                                        v723 = v580;
                                        buf = v580;
                                        LOBYTE(v798) = 1;
                                        v581 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((a1 + 488), &buf);
                                        if (v581)
                                        {
                                          v582 = *(v581 + 40);
                                        }

                                        else
                                        {
                                          v582 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>::pop(*(a1 + 2064));
                                          v789.i64[0] = v582;
                                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v582);
                                          *v781 = vcvt_f16_f32(v723);
                                          std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *&>((a1 + 488), &buf);
                                          ggl::BufferMemory::~BufferMemory(&__p);
                                        }

                                        v583 = v119[17];
                                        *(v583 + 464) = v582;
                                        *(v583 + 472) = 0;
                                        v584 = v119[29];
                                        v585 = *(v584 + 472);
                                        *(v584 + 464) = 0;
                                        *(v584 + 472) = 0;
                                        if (v585)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v585);
                                        }
                                      }

                                      if (*(*(v33 + 216) + 8) - 3 <= 1 && *(v119[2] + 329) == 1)
                                      {
                                        v491 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::pop(*(a1 + 2096));
                                        v586 = v119[17];
                                        *(v586 + 64) = v491;
                                        *(v586 + 72) = 0;
                                        v587 = v119[29];
                                        v494 = *(v587 + 72);
                                        *(v587 + 64) = 0;
                                        *(v587 + 72) = 0;
                                        v495 = "standard material renderable - ground pipeline";
                                        if (!v494)
                                        {
                                          goto LABEL_525;
                                        }

                                        goto LABEL_524;
                                      }

                                      v495 = "standard material renderable - ground pipeline";
LABEL_649:
                                      ggl::RenderItem::RenderItem(&__p, "");
                                      __p.__r_.__value_.__r.__words[2] = v495;
                                      if (*(v33 + 176) == 1 && (v588 = *(v33 + 152)) != 0 && *(v33 + 145) == 4)
                                      {
                                        v589 = *(v33 + 160);
                                        if (v589)
                                        {
                                          atomic_fetch_add_explicit(&v589->__shared_owners_, 1uLL, memory_order_relaxed);
                                        }

                                        if (*(v33 + 193) == 1)
                                        {
                                          v590 = *(a1 + 3332) + *(v33 + 192);
                                          if (v590 >= 0xFF)
                                          {
                                            v590 = 255;
                                          }

                                          *(v588 + 208) = 1;
                                          LODWORD(v781) = v590;
                                        }

                                        v779 = v588;
                                        if (v589)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v589);
                                        }
                                      }

                                      else if ((*(v33 + 145) != 3) | v716 & 1)
                                      {
                                        v779 = md::DaVinciRenderStateCache::renderState((a1 + 3136), *(*(v33 + 208) + 32), v716 & 1, 1, 0, 1, (*(v33 + 392) | *(v96 + 1)) & 1, 3);
                                      }

                                      else
                                      {
                                        v779 = a1 + 2920;
                                      }

                                      v780 = v119;
                                      v783 = *(*(v33 + 32) + 16);
                                      v30 = (a3 + 20);
                                      v591 = (*(**(v33 + 216) + 264))(*(v33 + 216), *v733);
                                      if (*(v33 + 188) == 1)
                                      {
                                        v592 = *(v33 + 184);
                                        LODWORD(v593) = 1;
                                      }

                                      else
                                      {
                                        v592 = v591;
                                        v593 = HIDWORD(v591) & 1;
                                      }

                                      v594 = (*(*v33 + 16))(v33);
                                      if (v716)
                                      {
                                        v595 = 1;
                                      }

                                      else
                                      {
                                        v595 = 2;
                                      }

                                      v596 = (v595 + 2 * v592);
                                      v597 = 4294967294;
                                      if (v716)
                                      {
                                        v597 = 0;
                                      }

                                      if (!v593)
                                      {
                                        v596 = v597;
                                      }

                                      v782 = (v596 << 8) | (v594 >> 4);
                                      if (!((*(v33 + 145) != 3) | v716 & 1))
                                      {
                                        v599 = ggl::RenderItem::RenderItem(&buf, "");
                                        v798 = v495;
                                        v799 = a1 + 2704;
                                        v739 = 0;
                                        v738 = 0;
                                        v740 = 257;
                                        v741 = 0;
                                        v742 = 2;
                                        memset(v743, 0, sizeof(v743));
                                        v737 = v696;
                                        v600 = *(*(v33 + 216) + 8);
                                        *(&v738 + 1) = v600 == 3;
                                        WORD1(v738) = v600 == 4;
                                        BYTE3(v738) = *(v96 + 6);
                                        BYTE6(v738) = a10;
                                        if (*v730 == 1)
                                        {
                                          v601 = *(v33 + 147);
                                        }

                                        else
                                        {
                                          v601 = 1;
                                        }

                                        HIBYTE(v738) = v601 & 1;
                                        BYTE4(v739) = *(v96 + 9);
                                        BYTE6(v739) = v704 != 255;
                                        v743[1] = v704 == 255;
                                        v743[2] = v701;
                                        v743[3] = v703;
                                        v602 = *(a1 + 1816);
                                        v603 = *(v602 + 1);
                                        if (v603 == *v602)
                                        {
                                          v605 = *(v602 + 11);
                                          if (!v605)
                                          {
                                            goto LABEL_759;
                                          }

                                          v598 = (*(*v605 + 48))(v605, v599);
                                          v604 = v598;
                                        }

                                        else
                                        {
                                          v604 = *(v603 - 8);
                                          *(v602 + 1) = v603 - 8;
                                        }

                                        v607 = *(v602 + 5);
                                        v606 = *(v602 + 6);
                                        if (v607 >= v606)
                                        {
                                          v609 = *(v602 + 4);
                                          v610 = (v607 - v609) >> 3;
                                          if ((v610 + 1) >> 61)
                                          {
                                            goto LABEL_762;
                                          }

                                          v611 = v606 - v609;
                                          v612 = v611 >> 2;
                                          if (v611 >> 2 <= (v610 + 1))
                                          {
                                            v612 = v610 + 1;
                                          }

                                          if (v611 >= 0x7FFFFFFFFFFFFFF8)
                                          {
                                            v613 = 0x1FFFFFFFFFFFFFFFLL;
                                          }

                                          else
                                          {
                                            v613 = v612;
                                          }

                                          *&v792 = v602 + 7;
                                          if (v613)
                                          {
                                            v614 = ggl::zone_mallocator::instance(v598);
                                            v615 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundDepthPipelineSetup *>(v614, v613);
                                          }

                                          else
                                          {
                                            v615 = 0;
                                          }

                                          v617 = &v615[8 * v613];
                                          v616 = &v615[8 * v610];
                                          *v616 = v604;
                                          v608 = v616 + 1;
                                          v618 = *(v602 + 4);
                                          v619 = *(v602 + 5) - v618;
                                          v620 = v616 - v619;
                                          memcpy(v616 - v619, v618, v619);
                                          v621 = *(v602 + 4);
                                          *(v602 + 4) = v620;
                                          *(v602 + 5) = v608;
                                          v622 = v602[6];
                                          *(v602 + 6) = v617;
                                          v790 = *&v621;
                                          v791 = v622;
                                          v789.i64[1] = v621;
                                          v789.i64[0] = v621;
                                          std::__split_buffer<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v789);
                                          v169 = v706;
                                        }

                                        else
                                        {
                                          *v607 = v604;
                                          v608 = v607 + 1;
                                        }

                                        *(v602 + 5) = v608;
                                        v789.i64[0] = v604;
                                        v623 = *(v602 + 15);
                                        if (!v623)
                                        {
LABEL_759:
                                          std::__throw_bad_function_call[abi:nn200100]();
LABEL_760:
                                          std::__throw_bad_array_new_length[abi:nn200100]();
                                        }

                                        (*(*v623 + 48))(v623, &v789, v599);
                                        BYTE3(v739) = v699 == 1;
                                        md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v784, a1 + 840, &v737);
                                        v624 = v784.i64[1];
                                        v789 = v784;
                                        if (v784.i64[1])
                                        {
                                          atomic_fetch_add_explicit((v784.i64[1] + 8), 1uLL, memory_order_relaxed);
                                          ggl::PipelineSetup::setState(v604, v789.i64);
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v624);
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v624);
                                        }

                                        else
                                        {
                                          ggl::PipelineSetup::setState(v604, v789.i64);
                                        }

                                        v625 = *(v33 + 32);
                                        v626 = *(v604 + 13);
                                        v626[1] = 0;
                                        v627 = *v625;
                                        *v626 = *v625;
                                        v628 = *(v604 + 25);
                                        v629 = v625[1];
                                        if (v629)
                                        {
                                          atomic_fetch_add_explicit((v629 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v630 = v628[1];
                                        *v628 = v627;
                                        v628[1] = v629;
                                        if (v630)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v630);
                                        }

                                        v631 = *(v604 + 17);
                                        v631[1] = 0;
                                        v632 = *(a5 + 224);
                                        *v631 = v632;
                                        v633 = *(v604 + 29);
                                        v634 = *(a5 + 232);
                                        if (v634)
                                        {
                                          atomic_fetch_add_explicit((v634 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v635 = v633[1];
                                        *v633 = v632;
                                        v633[1] = v634;
                                        if (v635)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v635);
                                        }

                                        v636 = *(v604 + 17);
                                        *(v636 + 24) = 0;
                                        v637 = *(a5 + 240);
                                        *(v636 + 16) = v637;
                                        v638 = *(v604 + 29);
                                        v639 = *(a5 + 248);
                                        if (v639)
                                        {
                                          atomic_fetch_add_explicit((v639 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v640 = *(v638 + 24);
                                        *(v638 + 16) = v637;
                                        *(v638 + 24) = v639;
                                        if (v640)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v640);
                                        }

                                        v641 = *(v604 + 17);
                                        v642 = v765;
                                        v643 = v766;
                                        *(v641 + 48) = v765;
                                        *(v641 + 56) = 0;
                                        v644 = *(v604 + 29);
                                        if (v643)
                                        {
                                          atomic_fetch_add_explicit((v643 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v645 = *(v644 + 56);
                                        *(v644 + 48) = v642;
                                        *(v644 + 56) = v643;
                                        if (v645)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v645);
                                        }

                                        if (v699 == 1)
                                        {
                                          v646 = **(v33 + 208);
                                          v649 = *(v646 + 120);
                                          v648 = (v646 + 120);
                                          v647 = v649;
                                          if (v649)
                                          {
                                            v650 = v648;
                                            v651 = v647;
                                            do
                                            {
                                              v652 = v651[4];
                                              _CF = v652 >= 2;
                                              v653 = v652 < 2;
                                              if (_CF)
                                              {
                                                v650 = v651;
                                              }

                                              v651 = v651[v653];
                                            }

                                            while (v651);
                                            if (v650 != v648 && v650[4] <= 2uLL)
                                            {
                                              v654 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v647, 2uLL);
                                              v655 = *v654;
                                              v656 = v654[1];
                                              if (v656)
                                              {
                                                atomic_fetch_add_explicit(&v656->__shared_owners_, 1uLL, memory_order_relaxed);
                                              }

                                              if (v655)
                                              {
                                                BYTE3(v739) = 1;
                                                v657 = *(v604 + 13);
                                                *(v657 + 16) = v655;
                                                *(v657 + 24) = 0;
                                                v658 = *(v604 + 25);
                                                v659 = *(v658 + 24);
                                                *(v658 + 16) = 0;
                                                *(v658 + 24) = 0;
                                                if (v659)
                                                {
                                                  std::__shared_weak_count::__release_shared[abi:nn200100](v659);
                                                }
                                              }

                                              if (v656)
                                              {
                                                std::__shared_weak_count::__release_shared[abi:nn200100](v656);
                                              }
                                            }
                                          }
                                        }

                                        v800 = v604;
                                        if (v704 == 255)
                                        {
                                          if (*(v33 + 200) == 1)
                                          {
                                            v660 = *(v33 + 196);
                                            v661 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>::pop(*(a1 + 2120));
                                            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v789, v661);
                                            **&v793 = v660;
                                            ggl::BufferMemory::~BufferMemory(&v789);
                                            v662 = *(v604 + 17);
                                            *(v662 + 32) = v661;
                                            *(v662 + 40) = 0;
                                          }

                                          else
                                          {
                                            v663 = *(v604 + 17);
                                            *(v663 + 32) = *(a1 + 2160);
                                            *(v663 + 40) = 0;
                                          }

                                          v664 = *(v604 + 29);
                                          v665 = *(v664 + 40);
                                          *(v664 + 32) = 0;
                                          *(v664 + 40) = 0;
                                          if (v665)
                                          {
                                            std::__shared_weak_count::__release_shared[abi:nn200100](v665);
                                          }
                                        }

                                        v805 = *(*(v33 + 32) + 16);
                                        v801 = 0;
                                        md::RenderItemPool::construct(a1 + 3248, &buf, **(v33 + 208), (v33 + 16));
                                        ggl::CommandBuffer::pushRenderItem(a9, v666);
                                        v96 = a3;
                                      }

                                      if (*(v96 + 288) == 1)
                                      {
                                        v667 = vdupq_n_s64(1uLL);
                                        v667.i64[0] = (*(v33 + 24) - *(v33 + 16)) * *(*(v33 + 32) + 16);
                                        v668 = vaddq_s64(v667, *(v96 + 192));
                                        v669 = vaddq_s64(*(v96 + 208), v667);
                                        *(v96 + 192) = v668;
                                        *(v96 + 208) = v669;
                                      }

                                      md::RenderItemPool::construct(a1 + 3248, &__p, **(v33 + 208), (v33 + 16));
                                      ggl::CommandBuffer::pushRenderItem(a9, v670);
                                      v671 = 24;
                                      v32 = v697;
                                      do
                                      {
                                        v672 = *(&v746 + v671);
                                        if (v672)
                                        {
                                          std::__shared_weak_count::__release_shared[abi:nn200100](v672);
                                        }

                                        v671 -= 16;
                                      }

                                      while (v671 != -8);
                                      if (v169)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v169);
                                      }

                                      goto LABEL_744;
                                    }
                                  }

                                  else if (v556 >= 0.25)
                                  {
                                    v557 = 0;
                                    goto LABEL_614;
                                  }

                                  v557 = 2;
                                  goto LABEL_614;
                                }

                                v209 = v772;
                                if (v772 && (v210 = *(v771 + 164), md::StyleAttributeRasterSet::textureForAttribute(v210, v772)))
                                {
                                  v211 = md::DaVinciGroundRenderResources::debugTextureForAttribute(a1 + 568, v209);
                                  v212 = md::StyleAttributeRasterSet::textureForAttribute(v210, v209);
                                }

                                else
                                {
                                  if (v688)
                                  {
                                    v211 = md::MaterialRaster::styleTexture(v688, *(v688 + 122));
                                    v234 = v688;
                                    v212 = *v688;
                                    v235 = *(v688 + 1);
                                    if (v235)
                                    {
                                      atomic_fetch_add_explicit(&v235->__shared_owners_, 1uLL, memory_order_relaxed);
                                      std::__shared_weak_count::__release_shared[abi:nn200100](v235);
                                      v234 = v688;
                                    }

                                    LOWORD(v233) = *(v234 + 60);
                                    v236 = v233;
                                    goto LABEL_533;
                                  }

                                  v212 = 0;
                                  v211 = 0;
                                }

                                v236 = 255.0;
LABEL_533:
                                v499 = *(v119[17] + 272);
                                if (!v499)
                                {
                                  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_7DaVinci17LandCoverSettingsEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
                                }

                                ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__p, v499);
                                *v781 = v236;
                                *(v119[21] + 56) = v212;
                                *(v119[21] + 64) = v211;
                                ggl::BufferMemory::~BufferMemory(&__p);
                                goto LABEL_536;
                              }
                            }

                            LOBYTE(v106) = 0;
                            goto LABEL_139;
                          }
                        }

                        else
                        {
                          v96 = a3;
                        }

                        v746 = 0u;
                        v747 = 0u;
                        goto LABEL_126;
                      }
                    }

                    else
                    {
                      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
                      {
                        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
                      }

                      v89 = GEOGetVectorKitVKDefaultLog_log;
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        FillRect = grl::IconMetricsRenderResult::getFillRect(v771);
                        gdc::LayerDataRequestKey::keysInt32Str(&__p, FillRect);
                        v91 = &__p;
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v91 = __p.__r_.__value_.__r.__words[0];
                        }

                        buf.i32[0] = 136315138;
                        *(buf.i64 + 4) = v91;
                        _os_log_impl(&dword_1B2754000, v89, OS_LOG_TYPE_ERROR, "Tile:%s has renderables referencing a material raster but no raster set", &buf, 0xCu);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }
                      }
                    }
                  }

                  v92 = 0;
                  v688 = 0;
                  updated = 0;
                  v93 = v695;
                  goto LABEL_113;
                }

                v56 = v61;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v56);
              goto LABEL_63;
            }

            v50 = *(a2 + 4);
            v49 = *(a2 + 5);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              v51 = *(v50 + 20);
              std::__shared_weak_count::__release_shared[abi:nn200100](v49);
              if ((v51 & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            else if ((*(v50 + 20) & 1) == 0)
            {
              goto LABEL_53;
            }

            ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, *(v33 + 344), 0);
            v52 = *v781;
            ggl::BufferMemory::~BufferMemory(&__p);
            if (v52 > 0.0)
            {
              goto LABEL_49;
            }

LABEL_53:
            v30 = (a3 + 20);
            v32 = v697;
LABEL_744:
            v36 = v766;
            goto LABEL_745;
          }
        }

        else
        {
          v41 = (*(**(v33 + 216) + 848))(*(v33 + 216), *v30);
          if ((v41 & 0x100) == 0 || (v41 & 1) == 0 || (a10 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        if (*v730 != 1 || (*(v33 + 147) & 1) != 0)
        {
          goto LABEL_37;
        }
      }

LABEL_745:
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v36);
      }

      a7 = v727;
      a8 = v728;
      goto LABEL_748;
    }
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::GroundPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

BOOL md::DaVinciGroundRenderLayer::shouldSetupOcclusion(gdc::Camera *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (*(a3 + 7) == 1 && *(a3 + 68) >= 0.001)
  {
    gdc::Tiled::unitsPerMeter((*(a2 + 8) + 168));
    v7 = fmax(*(gdc::Camera::cameraFrame(a1) + 24) * 0.5, 250.0) * ((v6 * *(a3 + 64)) * fmaxf((*(a3 + 20) * 0.125) + -0.875, 0.0));
    return v7 >= 0.001;
  }

  return result;
}

void md::DaVinciGroundRenderLayer::setupStyleShadowWithThreshold<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (*(a2[2] + 309) == 1 && a3 <= 3u)
  {
    v4 = a1 + 16 * (a3 & 0xF);
    v5 = a2[17];
    v6 = *(v4 + 1992);
    *(v5 + 288) = v6;
    *(v5 + 296) = 0;
    v7 = a2[29];
    v8 = *(v4 + 2000);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(v7 + 296);
    *(v7 + 288) = v6;
    *(v7 + 296) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }
}

void md::DaVinciGroundRenderLayer::setupCommonGroundPipelineSetup<ggl::DaVinci::GroundPipelineSetup>(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v12 = a1[13];
  *v12 = a4;
  v12[1] = 0;
  v13 = a1[25];
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v13[1];
  *v13 = a4;
  v13[1] = a5;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = a1[17];
  v16 = a2[28];
  v17 = a2[29];
  *v15 = v16;
  v15[1] = 0;
  v18 = a1[29];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = v18[1];
  *v18 = v16;
  v18[1] = v17;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = a1[17];
  v21 = a2[57];
  v22 = a2[58];
  *(v20 + 160) = v21;
  *(v20 + 168) = 0;
  v23 = a1[29];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(v23 + 168);
  *(v23 + 160) = v21;
  *(v23 + 168) = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = a1[17];
  v26 = a2[30];
  v27 = a2[31];
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  v28 = a1[29];
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(v28 + 24);
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  if (*(a7 + 6) == 1)
  {
    v30 = a1[17];
    v31 = a2[51];
    v32 = a2[52];
    *(v30 + 32) = v31;
    *(v30 + 40) = 0;
    v33 = a1[29];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = *(v33 + 40);
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = a3[13];
    if (v35)
    {
      v36 = *(v35 + 32);
      v37 = *(a3[1] + 96);
      if (v36 >= (*(a3[1] + 104) - v37) >> 3)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(*(v37 + 8 * v36) + 16);
      }
    }

    *(a1[21] + 8) = v35;
  }

  v38 = a1[17];
  v39 = a3[41];
  v40 = a3[42];
  *(v38 + 208) = v39;
  *(v38 + 216) = 0;
  v41 = a1[29];
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(v41 + 216);
  *(v41 + 208) = v39;
  *(v41 + 216) = v40;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  *a1[21] = *(a7 + 296);
  v43 = a1[17];
  v44 = a1[29];
  v45 = *a6;
  v46 = a6[1];

  ggl::DaVinci::GroundPipelineSetup::setTileClippingConstantData(v43, v44, v45, v46);
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciGroundRenderLayer::setupSSAOGroundPipelineSetup<ggl::DaVinci::GroundPipelineSetup>(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, float a6)
{
  if (a5)
  {
    _S8 = a6;
    v11 = +[VKDebugSettings sharedSettings];
    v12 = [v11 daVinciSSAODepthAwareUpsampleEnabled];

    if (v12)
    {
      v13 = a4[20];
      if (!v13)
      {
LABEL_14:
        *(a3[21] + 24) = v13;
        v19 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::pop(*(a1 + 2080));
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v30, v19);
        v20 = *(a2 + 248);
        v21 = v31;
        *v31 = *(a2 + 244);
        *(v21 + 2) = v20;
        __asm { FCVT            H0, S8 }

        *(v21 + 4) = _H0;
        ggl::BufferMemory::~BufferMemory(v30);
        v27 = a3[17];
        *(v27 + 432) = v19;
        *(v27 + 440) = 0;
        v28 = a3[29];
        v29 = *(v28 + 440);
        *(v28 + 432) = 0;
        *(v28 + 440) = 0;
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v29);
        }

        return;
      }
    }

    else
    {
      v13 = a4[18];
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v17 = *(v13 + 32);
    v18 = *(a4[1] + 96);
    if (v17 >= (*(a4[1] + 104) - v18) >> 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(v18 + 8 * v17) + 16);
    }

    goto LABEL_14;
  }

  v14 = *(a1 + 3272);
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a3[21] + 24) = v16;

    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  else
  {
    *(a3[21] + 24) = v16;
  }
}

void md::DaVinciGroundRenderLayer::setupStyleConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float16x4_t a6)
{
  v9 = 1.0 / *(a4 + 40);
  if (*(a3 + 24) != 255)
  {
    for (i = 0; i != 4; ++i)
    {
      _D0 = *(a4 + 128 + 8 * i);
      __asm { FCVT            H0, D0 }

      *(v69 + i) = _D0;
    }

LABEL_16:
    _H0 = WORD2(v69[0]);
    __asm { FCVT            S0, H0 }

    a6.i32[0] = LODWORD(v69[0]);
    *&v48 = vcvtq_f32_f16(a6).u64[0];
    *(&v48 + 1) = __PAIR64__(LODWORD(v9), _S0);
    goto LABEL_17;
  }

  if (*(a4 + 5) != 1 || *(a4 + 4) != 1)
  {
    for (j = 0; j != 4; ++j)
    {
      _D0 = *(a4 + 96 + 8 * j);
      __asm { FCVT            H0, D0 }

      *(v69 + j) = _D0;
    }

    goto LABEL_16;
  }

  v58 = 1.0 / *(a4 + 40);
  v16 = 0;
  v17 = *(a3 + 296);
  v18 = *(a3 + 304);
  v19 = *(a3 + 312);
  v20 = *(a3 + 320);
  v21 = v18 + v18;
  v22 = (v18 + v18) * v18;
  v23 = (v19 + v19) * v19;
  v24 = v17 + v17;
  v25 = (v17 + v17) * v18;
  v26 = (v19 + v19) * v20;
  v27 = v25 - v26;
  v28 = v19 * (v17 + v17);
  v29 = v20 * v21;
  v30 = v26 + v25;
  v31 = v20 * v21 + v28;
  v73[0] = 1.0 - (v22 + v23);
  v73[1] = v30;
  v32 = 1.0 - (v17 + v17) * v17;
  v33 = v21 * v19;
  v34 = v20 * v24;
  v73[6] = v31;
  v73[7] = v33 - v34;
  v73[2] = v28 - v29;
  v73[3] = v27;
  v73[4] = v32 - v23;
  v73[5] = v34 + v33;
  v73[8] = v32 - v22;
  v35 = &v61;
  v36 = v73;
  do
  {
    v37 = 0;
    v38 = v35;
    do
    {
      *v38 = v36[v37];
      v38 += 2;
      v37 += 3;
    }

    while (v37 != 9);
    ++v16;
    v35 = (v35 + 8);
    ++v36;
  }

  while (v16 != 3);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v67 = 0;
  v68 = 0x3FF0000000000000;
  v66 = 0;
  gm::Matrix<double,4,4>::inverted<int,void>(v69, &v61);
  v39 = *(a4 + 112);
  v60[0] = *(a4 + 96);
  v60[1] = v39;
  v40 = gm::operator*<double,4,4,1>(v69, v60);
  v42 = 0;
  *v70 = v40;
  v70[1] = v41;
  v70[2] = v43;
  v70[3] = v44;
  do
  {
    _D0 = v70[v42];
    __asm { FCVT            H0, D0 }

    *(&v71 + v42++) = _D0;
  }

  while (v42 != 4);
  _H0 = v72;
  __asm { FCVT            S0, H0 }

  v41.i32[0] = v71;
  *&v48 = vcvtq_f32_f16(v41).u64[0];
  *(&v48 + 1) = __PAIR64__(LODWORD(v58), _S0);
LABEL_17:
  v59 = v48;
  v61 = v48;
  v53 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::find<md::DaVinciGroundRenderLayer::StyleCacheKey>((a1 + 368), &v61);
  if (v53)
  {
    v54 = v53[4];
  }

  else
  {
    v54 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::Style>>::pop(*(a1 + 1848));
    *&v73[0] = v54;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v69, v54);
    **&v69[5] = vcvt_f16_f32(v59);
    std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::StyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>,std::equal_to<md::DaVinciGroundRenderLayer::StyleCacheKey>,md::DaVinciGroundRenderLayer::StyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::StyleCacheKey,md::DaVinciGroundRenderLayer::StyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::Style> *&>((a1 + 368), &v61);
    ggl::BufferMemory::~BufferMemory(v69);
  }

  v55 = *(a2 + 136);
  *(v55 + 80) = v54;
  *(v55 + 88) = 0;
  v56 = *(a2 + 232);
  v57 = *(v56 + 88);
  *(v56 + 80) = 0;
  *(v56 + 88) = 0;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v57);
  }
}

void md::DaVinciGroundRenderLayer::setupStyleColorConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v12 = *a3;
  v13 = 1;
  v6 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((a1 + 448), &v12);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::pop(*(a1 + 2104));
    v11[6] = v7;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v11, v7);
    *v11[5] = vcvt_f16_f32(*a3);
    ggl::BufferMemory::~BufferMemory(v11);
    std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>((a1 + 448), &v12);
  }

  v8 = *(a2 + 136);
  *(v8 + 448) = v7;
  *(v8 + 456) = 0;
  v9 = *(a2 + 232);
  v10 = *(v9 + 456);
  *(v9 + 448) = 0;
  *(v9 + 456) = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void md::DaVinciGroundRenderLayer::setupStyleGroundOcclusionConstantData<ggl::DaVinci::GroundPipelineSetup,ggl::DaVinci::GroundPipelineState>(uint64_t a1, void *a2, gdc::Camera *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2[2] + 320) == 1)
  {
    v9 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::pop(*(a1 + 2056));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v25, v9);
    gdc::Tiled::unitsPerMeter((*(a4 + 8) + 168));
    v11 = v10;
    v12 = gdc::Camera::cameraFrame(a3);
    _S2 = *(a5 + 68);
    _D0 = fmax(*(v12 + 24) * 0.5, 250.0) * ((*(a5 + 64) * v11) * fmaxf((*(a5 + 20) * 0.125) + -0.875, 0.0));
    __asm
    {
      FCVT            H0, D0
      FCVT            H1, S2
    }

    v21 = v26;
    if (!*(a5 + 7))
    {
      _H1 = COERCE_SHORT_FLOAT(0);
    }

    *v26 = _H0;
    v21[1] = _H1;
    ggl::BufferMemory::~BufferMemory(v25);
    v22 = a2[17];
    *(v22 + 320) = v9;
    *(v22 + 328) = 0;
    v23 = a2[29];
    v24 = *(v23 + 328);
    *(v23 + 320) = 0;
    *(v23 + 328) = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

void md::DaVinciGroundRenderLayer::setupStyleColorConstantData<ggl::DaVinci::DecalPipelineSetup,ggl::DaVinci::DecalPipelineState>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v12 = *a3;
  v13 = 1;
  v6 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::find<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>((a1 + 448), &v12);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>::pop(*(a1 + 2104));
    v11[6] = v7;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v11, v7);
    *v11[5] = vcvt_f16_f32(*a3);
    ggl::BufferMemory::~BufferMemory(v11);
    std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>,std::equal_to<md::DaVinciGroundRenderLayer::ColorStyleCacheKey>,md::DaVinciGroundRenderLayer::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ColorStyleCacheKey,md::DaVinciGroundRenderLayer::ColorStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *&>((a1 + 448), &v12);
  }

  v8 = *(a2 + 136);
  *(v8 + 112) = v7;
  *(v8 + 120) = 0;
  v9 = *(a2 + 232);
  v10 = *(v9 + 120);
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

uint64_t md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_2::operator()(uint64_t *a1, void *a2, unint64_t *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6[16];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = *a3;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *a3;
    if (v9 >= *&v8)
    {
      v11 = v9 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v9;
  }

  v12 = *(*&v6[15] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    if (*a1[2] == 1)
    {
      v15 = +[VKDebugSettings sharedSettings];
      [v15 daVinciSaturationRangeMinOverride];
      v17 = v16;
      v18 = +[VKDebugSettings sharedSettings];
      [v18 daVinciSaturationRangeMaxOverride];
      v20 = v19;

      v21 = +[VKDebugSettings sharedSettings];
      [v21 daVinciBrightnessRangeMinOverride];
      v23 = v22;
      v24 = +[VKDebugSettings sharedSettings];
      [v24 daVinciBrightnessRangeMaxOverride];
      v26 = v25;
    }

    else
    {
      v27 = (*(**a2 + 752))(*a2, *a1[3]);
      v29 = v28;
      v20 = *(&v27 + 1);
      LODWORD(v17) = v27;
      v30.n128_u32[0] = *a1[3];
      v31 = (*(**a2 + 784))(v30);
      if ((v29 & 1) == 0)
      {
        v20 = 1.0;
        v17 = 0.0;
      }

      if (v32)
      {
        v26 = *(&v31 + 1);
      }

      else
      {
        v26 = 1.0;
      }

      if (v32)
      {
        v23 = *&v31;
      }

      else
      {
        v23 = 0.0;
      }
    }

    v86 = __PAIR64__(LODWORD(v20), LODWORD(v17));
    v87 = v23;
    v88 = v26;
    v33 = a1[1];
    v34 = md::DaVinciGroundRenderLayer::ColorCorrectionKeyHasher::operator()(&v86);
    v35 = v33[21];
    if (v35)
    {
      v36 = v34;
      v37 = vcnt_s8(v35);
      v37.i16[0] = vaddlv_u8(v37);
      v38 = v37.u32[0];
      if (v37.u32[0] > 1uLL)
      {
        v39 = v34;
        if (v34 >= *&v35)
        {
          v39 = v34 % *&v35;
        }
      }

      else
      {
        v39 = (*&v35 - 1) & v34;
      }

      v40 = *(*&v33[20] + 8 * v39);
      if (v40)
      {
        v41 = *v40;
        if (*v40)
        {
          do
          {
            v42 = v41[1];
            if (v42 == v36)
            {
              v34 = md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v41 + 2, &v86);
              if (v34)
              {
                return v41[4];
              }
            }

            else
            {
              if (v38 > 1)
              {
                if (v42 >= *&v35)
                {
                  v42 %= *&v35;
                }
              }

              else
              {
                v42 &= *&v35 - 1;
              }

              if (v42 != v39)
              {
                break;
              }
            }

            v41 = *v41;
          }

          while (v41);
        }
      }
    }

    v43 = *(v7 + 1864);
    v44 = v43[1];
    if (v44 == *v43)
    {
      v45 = v43[11];
      if (!v45)
      {
        goto LABEL_97;
      }

      v34 = (*(*v45 + 48))(v45);
      v83 = v34;
    }

    else
    {
      v83 = *(v44 - 8);
      v43[1] = v44 - 8;
    }

    v47 = v43[5];
    v46 = v43[6];
    if (v47 >= v46)
    {
      v49 = v43[4];
      v50 = (v47 - v49) >> 3;
      if ((v50 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v51 = v46 - v49;
      v52 = v51 >> 2;
      if (v51 >> 2 <= (v50 + 1))
      {
        v52 = v50 + 1;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      v84[4] = v43 + 7;
      if (v53)
      {
        v54 = ggl::zone_mallocator::instance(v34);
        v55 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(v54, v53);
      }

      else
      {
        v55 = 0;
      }

      v57 = &v55[8 * v53];
      v56 = &v55[8 * v50];
      *v56 = v83;
      v48 = v56 + 1;
      v58 = v43[4];
      v59 = v43[5] - v58;
      v60 = v56 - v59;
      memcpy(v56 - v59, v58, v59);
      v61 = v43[4];
      v43[4] = v60;
      v43[5] = v48;
      v62 = v43[6];
      v43[6] = v57;
      v84[2] = v61;
      v84[3] = v62;
      v84[0] = v61;
      v84[1] = v61;
      std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator> &>::~__split_buffer(v84);
    }

    else
    {
      *v47 = v83;
      v48 = v47 + 1;
    }

    v43[5] = v48;
    v84[0] = v83;
    v63 = v43[15];
    if (v63)
    {
      (*(*v63 + 48))(v63, v84);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v84, v83);
      v64 = v85;
      *v85 = v23;
      v64[1] = v26;
      v64[2] = v17;
      v64[3] = v20;
      v65 = a1[1];
      v66 = *a3;
      v67 = v65[16];
      if (v67)
      {
        v68 = vcnt_s8(v67);
        v68.i16[0] = vaddlv_u8(v68);
        if (v68.u32[0] > 1uLL)
        {
          v69 = *a3;
          if (v66 >= *&v67)
          {
            v69 = v66 % *&v67;
          }
        }

        else
        {
          v69 = (*&v67 - 1) & v66;
        }

        v70 = *(v65[15] + 8 * v69);
        if (v70)
        {
          for (i = *v70; i; i = *i)
          {
            v72 = i[1];
            if (v72 == v66)
            {
              if (i[2] == v66)
              {
                v73 = md::DaVinciGroundRenderLayer::ColorCorrectionKeyHasher::operator()(&v86);
                v74 = v73;
                v75 = v65[21];
                if (!*&v75)
                {
                  goto LABEL_95;
                }

                v76 = vcnt_s8(v75);
                v76.i16[0] = vaddlv_u8(v76);
                v77 = v76.u32[0];
                if (v76.u32[0] > 1uLL)
                {
                  v78 = v73;
                  if (v73 >= *&v75)
                  {
                    v78 = v73 % *&v75;
                  }
                }

                else
                {
                  v78 = (*&v75 - 1) & v73;
                }

                v79 = *(v65[20] + 8 * v78);
                if (!v79 || (v80 = *v79) == 0)
                {
LABEL_95:
                  operator new();
                }

                while (1)
                {
                  v81 = v80[1];
                  if (v81 == v74)
                  {
                    if (md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v80 + 2, &v86))
                    {
                      ggl::BufferMemory::~BufferMemory(v84);
                      return v83;
                    }
                  }

                  else
                  {
                    if (v77 > 1)
                    {
                      if (v81 >= *&v75)
                      {
                        v81 %= *&v75;
                      }
                    }

                    else
                    {
                      v81 &= *&v75 - 1;
                    }

                    if (v81 != v78)
                    {
                      goto LABEL_95;
                    }
                  }

                  v80 = *v80;
                  if (!v80)
                  {
                    goto LABEL_95;
                  }
                }
              }
            }

            else
            {
              if (v68.u32[0] > 1uLL)
              {
                if (v72 >= *&v67)
                {
                  v72 %= *&v67;
                }
              }

              else
              {
                v72 &= *&v67 - 1;
              }

              if (v72 != v69)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

LABEL_97:
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v9)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  if (v13[2] != v9)
  {
    goto LABEL_16;
  }

  return v13[3];
}

void sub_1B3262AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  ggl::BufferMemory::~BufferMemory(&a9);
  _Unwind_Resume(a1);
}

void *md::DaVinciGroundRenderLayer::layoutMaterialRenderables(md::LayoutContext const&,md::DaVinciGroundRenderLayer::MeshLayoutContext const&,md::DaVinciGroundRenderLayer::MaterialConstants &,md::DaVinciGroundRenderable *,geo::slice<std::__wrap_iter<unsigned long *>>,std::vector<md::MeshRenderable *> const&,ggl::CommandBuffer *,BOOL)::$_1::operator()(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5[11];
  if (!*&v6)
  {
    goto LABEL_17;
  }

  v7 = *a2;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = *a2;
    if (v7 >= *&v6)
    {
      v9 = v7 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v7;
  }

  v10 = *(v5[10] + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    *&v40[1] = 0;
    v40[0] = 1.0;
    v13 = md::DaVinciGroundRenderLayer::ElevatedStrokeCacheKeyHasher::operator()(v40);
    v14 = v5[6];
    if (!*&v14)
    {
      goto LABEL_34;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v13;
      if (v13 >= *&v14)
      {
        v16 = v13 % *&v14;
      }
    }

    else
    {
      v16 = (*&v14 - 1) & v13;
    }

    v17 = *(v5[5] + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_34:
      v37 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>::pop(*(v4 + 1856));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v38, v37);
      v20 = v39;
      *v39 = 1065353216;
      *(v20 + 1) = 0;
      v21 = a1[1];
      v22 = *a2;
      v23 = v21[11];
      if (v23)
      {
        v24 = vcnt_s8(v23);
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = *a2;
          if (v22 >= *&v23)
          {
            v25 = v22 % *&v23;
          }
        }

        else
        {
          v25 = (*&v23 - 1) & v22;
        }

        v26 = *(v21[10] + 8 * v25);
        if (v26)
        {
          for (i = *v26; i; i = *i)
          {
            v28 = i[1];
            if (v28 == v22)
            {
              if (i[2] == v22)
              {
                v29 = md::DaVinciGroundRenderLayer::ElevatedStrokeCacheKeyHasher::operator()(v40);
                v30 = v21[6];
                if (!*&v30)
                {
                  goto LABEL_70;
                }

                v31 = vcnt_s8(v30);
                v31.i16[0] = vaddlv_u8(v31);
                if (v31.u32[0] > 1uLL)
                {
                  v32 = v29;
                  if (v29 >= *&v30)
                  {
                    v32 = v29 % *&v30;
                  }
                }

                else
                {
                  v32 = (*&v30 - 1) & v29;
                }

                v33 = *(v21[5] + 8 * v32);
                if (!v33 || (v34 = *v33) == 0)
                {
LABEL_70:
                  operator new();
                }

                while (1)
                {
                  v35 = v34[1];
                  if (v35 == v29)
                  {
                    if (*(v34 + 4) == v40[0] && *(v34 + 20) == *&v40[1])
                    {
                      ggl::BufferMemory::~BufferMemory(v38);
                      return v37;
                    }
                  }

                  else
                  {
                    if (v31.u32[0] > 1uLL)
                    {
                      if (v35 >= *&v30)
                      {
                        v35 %= *&v30;
                      }
                    }

                    else
                    {
                      v35 &= *&v30 - 1;
                    }

                    if (v35 != v32)
                    {
                      goto LABEL_70;
                    }
                  }

                  v34 = *v34;
                  if (!v34)
                  {
                    goto LABEL_70;
                  }
                }
              }
            }

            else
            {
              if (v24.u32[0] > 1uLL)
              {
                if (v28 >= *&v23)
                {
                  v28 %= *&v23;
                }
              }

              else
              {
                v28 &= *&v23 - 1;
              }

              if (v28 != v25)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v13)
      {
        if (*(v18 + 4) == 1.0 && *(v18 + 20) == *&v40[1])
        {
          return v18[4];
        }
      }

      else
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_34;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v7)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != v7)
  {
    goto LABEL_16;
  }

  return v11[3];
}

void sub_1B32634BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  ggl::BufferMemory::~BufferMemory(&a9);
  _Unwind_Resume(a1);
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundNonCompressedPipelineState,std::shared_ptr<ggl::DaVinciGroundNotCompressedShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::GroundNonCompressedPipelineState,std::shared_ptr<ggl::DaVinciGroundNotCompressedShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

void md::DaVinciGroundRenderLayer::setupDaVinciGroundTileDataBindings<ggl::DaVinci::GroundNonCompressedPipelineSetup>(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 208);
  v7 = *(v4 + 120);
  v6 = (v4 + 120);
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v5;
  do
  {
    if (v9[4])
    {
      v8 = v9;
    }

    v9 = v9[v9[4] == 0];
  }

  while (v9);
  if (v8 == v6 || v8[4] > 1uLL)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v10 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v5, 1uLL);
  }

  v11 = *(a1 + 104);
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  v12 = *(a1 + 200);
  v13 = *(v12 + 24);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = **(a2 + 208);
  v17 = *(v14 + 120);
  v16 = (v14 + 120);
  v15 = v17;
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v15;
  do
  {
    v19 = v18;
    v18 = *v18;
  }

  while (v18);
  if (v19 == v16 || v19[4])
  {
LABEL_17:
    v20 = 0;
  }

  else
  {
    v20 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v15, 0);
  }

  v21 = *(a1 + 104);
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = *(a1 + 200);
  v23 = *(v22 + 40);
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = **(a2 + 208);
  v27 = *(v24 + 120);
  v26 = (v24 + 120);
  v25 = v27;
  if (!v27)
  {
    goto LABEL_29;
  }

  v28 = v26;
  v29 = v25;
  do
  {
    v30 = v29[4];
    v31 = v30 >= 2;
    v32 = v30 < 2;
    if (v31)
    {
      v28 = v29;
    }

    v29 = v29[v32];
  }

  while (v29);
  if (v28 == v26 || v28[4] > 2uLL)
  {
LABEL_29:
    v33 = 0;
  }

  else
  {
    v33 = *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v25, 2uLL);
  }

  v34 = *(a1 + 104);
  *(v34 + 48) = v33;
  *(v34 + 56) = 0;
  v35 = *(a1 + 200);
  v36 = *(v35 + 56);
  *(v35 + 48) = 0;
  *(v35 + 56) = 0;
  if (v36)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }
}

unint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(void *a1, uint64_t a2, uint64_t a3)
{
  *&v4[12] = *(a3 + 24);
  *&v4[8] = *(a3 + 19);
  *v4 = *(a3 + 11);
  return md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v4[0], v4[1], v4[2], v4[3], *&v4[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v5[0], v5[1], v5[2]);
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *std::__hash_table<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::__unordered_map_hasher<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,true>,std::__unordered_map_equal<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>,std::equal_to<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey>,md::DaVinciGroundRenderLayer::ShinyStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>>>::__emplace_unique_key_args<md::DaVinciGroundRenderLayer::ShinyStyleCacheKey,md::DaVinciGroundRenderLayer::ShinyStyleCacheKey const&,ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *&>(void *result, float a2, float a3)
{
  v3 = LODWORD(a2);
  if (a2 == 0.0)
  {
    v3 = 0;
  }

  v4 = LODWORD(a3) - 0x61C8864680B583EBLL;
  if (a3 == 0.0)
  {
    v4 = 0x9E3779B97F4A7C15;
  }

  v5 = ((v3 >> 2) + (v3 << 6) + v4) ^ v3;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_26;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = ((v3 >> 2) + (v3 << 6) + v4) ^ v3;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_26;
    }

LABEL_25:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if (v10[4] != a2 || v10[5] != a3)
  {
    goto LABEL_25;
  }

  return result;
}

void *ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4AD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DaVinciGroundRenderLayer::ElevatedStrokeCacheKeyHasher::operator()(float *a1)
{
  v1 = 0;
  v2 = 0;
  v4 = *a1;
  v3 = a1 + 1;
  v5 = v4;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *&v3[v1];
    v9 = LODWORD(v8) - 0x61C8864680B583EBLL;
    if (v8 == 0.0)
    {
      v9 = 0x9E3779B97F4A7C15;
    }

    v2 ^= (v2 >> 2) + (v2 << 6) + v9;
    v1 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  v10 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v10 = 0;
  }

  return ((v10 << 6) - 0x61C8864680B583EBLL + (v10 >> 2) + v2) ^ v10;
}

uint64_t md::DaVinciGroundRenderLayer::ColorCorrectionKeyHasher::operator()(float *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = LODWORD(v2) - 0x61C8864680B583EBLL;
    if (v2 == 0.0)
    {
      v5 = 0x9E3779B97F4A7C15;
    }

    v1 ^= (v1 >> 2) + (v1 << 6) + v5;
    v2 = a1[1];
    v3 = 0;
  }

  while ((v4 & 1) != 0);
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = a1[v6 + 2];
    v11 = LODWORD(v10) - 0x61C8864680B583EBLL;
    if (v10 == 0.0)
    {
      v11 = 0x9E3779B97F4A7C15;
    }

    v7 ^= (v7 >> 2) + (v7 << 6) + v11;
    v6 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  return ((v1 << 6) - 0x61C8864680B583EBLL + (v1 >> 2) + v7) ^ v1;
}

char *std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(int8x16_t *a1, char *a2, unsigned __int8 **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    result = &a1->i8[8];
    v12 = v8->i64[1];
    v13 = *(*a3[1] + 8 * v12);
    if ((*a3)[1] == 1)
    {
      v14 = *(v13 + 145);
      v15 = **a3;
      v16 = v14 == v15;
      if ((*(v13 + 147) & 1) == 0)
      {
        if (v14 != v15)
        {
LABEL_38:
          v8->i64[1] = *a2;
          *a2 = v12;
          *v8 = vextq_s8(*v8, *v8, 8uLL);
          return result;
        }

LABEL_22:
        v30 = v8->i64[0];
        v8->i64[0] = v12;
        v8->i64[1] = v30;
        v8->i64[1] = *a2;
        *a2 = v30;
        return a2;
      }
    }

    else
    {
      v16 = *(v13 + 147);
      if (v16 != 1)
      {
        goto LABEL_22;
      }
    }

    if ((*a3[2] & 1) != 0 || !v16)
    {
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  if (a4 == 2)
  {
    v10 = a1->i64[0];
    a1->i64[0] = *a2;
    *a2 = v10;
    return a2;
  }

  v17 = a5;
  if (a6 >= a4)
  {
    result = &a1->i8[8];
    *a5 = v8->i64[0];
    v31 = a5 + 1;
    if (&v8->u64[1] == a2)
    {
      v8->i64[0] = v8->i64[1];
LABEL_53:
      v48 = result;
      do
      {
        v49 = *v17++;
        *v48 = v49;
        v48 += 8;
      }

      while (v17 < v31);
      return result;
    }

    v32 = *a3;
    v33 = *a3[1];
    v34 = (*a3)[1];
    v35 = a3[2];
    while (1)
    {
      v36 = *result;
      v37 = *(v33 + 8 * *result);
      if (v34)
      {
        v38 = *(v37 + 145);
        v39 = *v32;
        v40 = v38 == v39;
        if ((*(v37 + 147) & 1) == 0)
        {
          if (v38 != v39)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v40 = *(v37 + 147);
        if (v40 != 1)
        {
          goto LABEL_33;
        }
      }

      if ((*v35 & 1) != 0 || !v40)
      {
LABEL_34:
        *v31++ = v36;
        goto LABEL_35;
      }

LABEL_33:
      v8->i64[0] = v36;
      v8 = (v8 + 8);
LABEL_35:
      result += 8;
      if (result == a2)
      {
        v8->i64[0] = *result;
        result = &v8->i8[8];
        if (v31 <= a5)
        {
          return result;
        }

        goto LABEL_53;
      }
    }
  }

  v18 = &a1->i8[8 * (a4 / 2)];
  v19 = *a3;
  v20 = *a3[1];
  v21 = (*a3)[1];
  v22 = a3[2];
  v23 = v18 - 8;
  v24 = 8 - 8 * (a4 / 2);
  for (i = a4 / 2; ; --i)
  {
    v26 = *(v20 + 8 * *v23);
    if (!(*a3)[1])
    {
      break;
    }

    v27 = *(v26 + 145);
    v28 = *v19;
    v29 = v27 == v28;
    if (*(v26 + 147))
    {
      goto LABEL_15;
    }

    if (v27 == v28)
    {
      goto LABEL_39;
    }

LABEL_17:
    if (!v24)
    {
      goto LABEL_40;
    }

    v23 -= 8;
    v24 += 8;
  }

  v29 = *(v26 + 147);
  if (v29 != 1)
  {
    goto LABEL_39;
  }

LABEL_15:
  if ((*v22 & 1) != 0 || !v29)
  {
    goto LABEL_17;
  }

LABEL_39:
  v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(a1);
  v19 = *a3;
  v20 = *a3[1];
  v22 = a3[2];
  v21 = (*a3)[1];
LABEL_40:
  v41 = a2 + 8;
  v42 = a4 - a4 / 2;
  v43 = v18;
  while (2)
  {
    v44 = *(v20 + 8 * *v43);
    if ((v21 & 1) == 0)
    {
      v47 = *(v44 + 147);
      if (v47 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_48;
    }

    v45 = *(v44 + 145);
    v46 = *v19;
    v47 = v45 == v46;
    if ((*(v44 + 147) & 1) == 0)
    {
      if (v45 != v46)
      {
        break;
      }

      goto LABEL_48;
    }

LABEL_46:
    if ((*v22 & 1) == 0 && v47)
    {
LABEL_48:
      v43 += 8;
      if (v43 == a2)
      {
        return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v18, v41);
      }

      --v42;
      continue;
    }

    break;
  }

  v41 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::DaVinciGroundRenderLayer::layout(md::LayoutContext const&)::$_4::operator() const(std::optional<md::SceneLayer>)::{lambda(unsigned long)#1} &,std::__wrap_iter<unsigned long *>,long,std::pair<unsigned long *,long>>(v43);
  return std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(v8->i8, v18, v41);
}

uint64_t md::LabelCategoryFilter::shouldFilterPoiType(id *this, uint64_t a2)
{
  v4 = this[1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEqual:0];

    if ((v6 & 1) == 0)
    {
      return [this[1] shouldDisplayPOIWithType:a2] ^ 1;
    }
  }

  else
  {
  }

  return 0;
}

void md::LabelMetrics::initialize(uint64_t *a1)
{
  __p[5] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  a1[1] = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - v1) >> 2) <= 3)
  {
    operator new();
  }

  v2 = 1.3;
  if (*(a1 + 25) == 4)
  {
    v2 = 1.0;
  }

  *(a1 + 7) = v2;
  if ((a1[3] & 1) == 0)
  {
    memset_pattern16(__b, &unk_1B33B2560, 0x78uLL);
    __b[15] = 0;
    v4 = 0;
    md::LabelStyleContext::initialize(__b);
  }

  *(a1 + 8) = 1.0;
  std::string::basic_string[abi:nn200100]<0>(__p, "\n{\n    default: {\n        search-result: {\n            icon: { size: [23, 23] },\n            text: { glyph-size: [6, 12], anchor: [0, 17] },\n        },\n        selected-search-result: {\n            icon: { size: [68, 87], anchor: [0, -45]  },\n            text: { glyph-size: [6, 12], anchor: [0, 11] },\n        },\n        waypoint: {\n            icon: { size: [42, 40], anchor: [0, -23] },\n            text: { glyph-size: [7, 14], anchor: [0, 10] },\n        },\n        anchorpoint: {\n            icon: { size: [27, 27] },\n            text: { glyph-size: [7, 14], anchor: [0, 17] },\n        },\n    },\n    car: {\n        search-result: {\n            icon: { size: [22, 22] },\n            text: { glyph-size: [6, 12], anchor: [0, 20] },\n        },\n        selected-search-result: {\n            icon: { size: [33, 36], anchor: [0, -20] },\n            text: { glyph-size: [6, 12], anchor: [0, 8] },\n        },\n        waypoint: {\n            icon: { size: [33, 36], anchor: [0, -20] },\n            text: { glyph-size: [6, 12], anchor: [0, 8] },\n        },\n        anchorpoint: {\n            icon: { size: [27, 27] },\n            text: { glyph-size: [7, 14], anchor: [0, 17] },\n        },\n    }\n}\n");
  md::StyleSettingsParser::StyleSettingsParser(__b);
}

void sub_1B32654A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  std::__tree<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<md::StyleSettingsNode>>>>::destroy(a21);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t md::StyleSettingsArrayNode::getValue<float>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= (a2 - a1) >> 3 || (v3 = *(a1 + 8 * a3), *(v3 + 8)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v8 = md::StyleSettingsValueNode::value_as<float>(*(v3 + 16), *(v3 + 24));
    v5 = v8 & 0x100000000;
    v4 = v8 & 0xFFFFFF00;
    v6 = v8;
  }

  return v5 | v4 | v6;
}

void md::LabelMetrics::boundingRectForItem(uint64_t a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_4:
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    while (*v6 != a3)
    {
      v6 += 36;
      if (v6 == v5)
      {
        goto LABEL_4;
      }
    }

    v7 = vmul_n_f32(*(v6 + 4), *(a2 + 7));
    *&v13 = vmla_f32(vneg_f32(*(v6 + 20)), 0xBF000000BF000000, v7);
    *(&v13 + 1) = vadd_f32(*&v13, v7);
    v12 = xmmword_1B33B0730;
    v8 = *(a4 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a4 + 8);
    }

    if (v8)
    {
      v14 = 0;
      if (*(v6 + 12))
      {
        operator new();
      }
    }

    *a1 = gm::Box<float,2>::enclosed(&v13, &v12);
    *(a1 + 4) = v9;
    *(a1 + 8) = v10;
    *(a1 + 12) = v11;
    *(a1 + 16) = 1;
  }
}

void sub_1B32659F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  CGFontRelease(v19);

  std::unique_ptr<md::TextDataStringInfo>::~unique_ptr[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingFaceAlignedManeuverLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, __int32 *a4)
{
  md::ARWalkingFaceAlignedManeuverLabelPart::updateLocalState(a1, &a1[89], a2 + 432, (*&a1[2] + 408), *&a1[2] + 1040, *&a1[2] + 944, *(*&a1[4] + 72), *(*&a1[4] + 68));
  v9 = 0;
  return md::CompositeLabelPart::layoutForDisplay(a1, a2, a3, a4, &v9);
}

double *md::ARWalkingFaceAlignedManeuverLabelPart::updateLocalState(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v33 = *a4;
  v34 = *(a4 + 2);
  v37 = 0uLL;
  v38 = 0x3FF0000000000000;
  if (fabs(*a6) >= 0.0001)
  {
LABEL_7:
    for (i = 0; i != 24; i += 8)
    {
      *(&v37 + i) = *(&v33 + i) - *(a5 + i);
    }

    v17 = 0;
    v43 = v37;
    v44 = v38;
    v18 = 0.0;
    do
    {
      v18 = v18 + *(&v43 + v17) * *(a6 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    for (j = 0; j != 24; j += 8)
    {
      *(&v37 + j) = *(a6 + j) * v18;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v33 + k) = *(&v33 + k) - *(&v37 + k);
    }
  }

  else
  {
    v13 = 1;
    while (v13 != 3)
    {
      v14 = v13;
      v15 = vabdd_f64(*(a6 + 8 * v13), *(&v37 + v13));
      ++v13;
      if (v15 >= 0.0001)
      {
        if ((v14 - 1) < 2)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    v34 = *(a5 + 16);
  }

  v21 = *(a1 + 16);
  generateRotationMatrixMeshPositioningMode(&v37, v21 + 152, a3, &v33, 8, 0, 1);
  v22 = a8 * a7 * *(a3 + 320);
  gm::quaternionFromRotationMatrix<double>(v35, &v37);
  v23 = *&v35[16];
  v46 = *&v35[16];
  v45 = *v35;
  v24 = v36;
  *(a2 + 24) = *v35;
  *(a2 + 40) = v23;
  *a2 = v33;
  *(a2 + 16) = v34;
  *(a2 + 48) = v24;
  *(a2 + 56) = v22;
  *(a2 + 64) = v22;
  *(a2 + 72) = v22;
  if (*(v21 + 164) == 1)
  {
    v25 = *(v21 + 160);
    v26 = *(v21 + 152);
  }

  else
  {
    v26 = 1065353216;
    v25 = 0;
  }

  v27 = 0;
  *&v37 = v26;
  DWORD2(v37) = v25;
  do
  {
    *&v35[8 * v27] = *(&v37 + v27);
    ++v27;
  }

  while (v27 != 3);
  v28 = *a6;
  v29 = *(a6 + 8);
  *&v30.f64[0] = vdupq_laneq_s64(v29, 1).u64[0];
  v30.f64[1] = *a6;
  v37 = *v35;
  v38 = *&v35[16];
  *&v31.f64[0] = vdupq_laneq_s64(*&v35[8], 1).u64[0];
  v31.f64[1] = *v35;
  v39 = vmlaq_f64(vnegq_f64(vmulq_f64(v30, *&v35[8])), v29, v31);
  v40 = -(*v35 * v29.f64[0] - v28 * *&v35[8]);
  v41 = v28;
  v42 = v29;
  result = gm::quaternionFromRotationMatrix<double>(&v43, &v37);
  *(a2 + 24) = v43;
  *(a2 + 40) = v44;
  *(a2 + 48) = v45;
  return result;
}

uint64_t md::ARWalkingFaceAlignedManeuverLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 576);
  v17 = 0;
  v7 = (*(*v6 + 80))(v6, a2, a3, &v17);
  if (v7 == 37)
  {
    v9 = **(a1 + 576);
    v8 = *(*(a1 + 576) + 8);
    v10 = *(v9 + 1224);
    v11 = *(v9 + 576);
    v12 = v10 == 0;
    v13 = 8;
    if (v12)
    {
      v13 = 0;
    }

    v14 = *(v11 + v13);
    if (v14)
    {
      v15 = *(*(v14 + 24) + 72);
    }

    else
    {
      v15 = xmmword_1B33B0730;
    }

    v8[41] = v15;
    v17 = 0;
    (*(*v8 + 80))(v8, a2, a3, &v17);
    if (*(a1 + 566) == 1)
    {
      md::ARWalkingFaceAlignedManeuverLabelPart::updateLocalState(a1, a1 + 632, *(a2 + 424), (*(a1 + 16) + 616), *(a1 + 16) + 640, *(a1 + 16) + 544, *(*(a1 + 32) + 24), *(*(a1 + 32) + 20));
    }
  }

  return v7;
}

void md::ARWalkingFaceAlignedManeuverLabelPart::~ARWalkingFaceAlignedManeuverLabelPart(md::ARWalkingFaceAlignedManeuverLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void getTextDataString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v7 = md::TextDataStore::addString(&v10, a3, a4, 0, 0xFFFF);
    v8 = md::LabelStyle::textStyleGroup(a2, 0);
    md::TextDataStore::textDataForZoom(a1, v10, v11, v7, v8 + 72);
    v9 = &v10;
    std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v7 = md::TextDataStore::addString(&v10, a3, a4, 0, 0xFFFF);
    v8 = md::LabelStyle::textStyleGroup(a2, 0);
    md::TextDataStore::textDataForZoom(a1, v10, v11, v7, v8 + 72);
    v9 = &v10;
    std::vector<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void md::ARFeatureShadowExternalMeshRequest::~ARFeatureShadowExternalMeshRequest(md::ARFeatureShadowExternalMeshRequest *this)
{
  md::LabelExternalMeshRequest::~LabelExternalMeshRequest(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ARFeatureShadowExternalMeshRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A56DA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARLogic::sessionDidUpdateAnchors(void *a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1[20] != a2)
  {
    v22 = v5;
    v7 = GEOGetVectorKitARLogicLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      v6 = v22;
      goto LABEL_19;
    }

    *buf = 136315650;
    *&buf[4] = "false";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARLogic.mm";
    v32 = 1024;
    v33 = 206;
    v8 = "Observing incorrect sesesion: Assertion with expression - %s : Failed in file - %s line - %i";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 28;
LABEL_17:
    _os_log_impl(&dword_1B2754000, v9, v10, v8, buf, v11);
    goto LABEL_18;
  }

  v12 = +[VKDebugSettings sharedSettings];
  v13 = [v12 arEnableEnvironmentMap];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v6;
    v22 = v6;
    v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v24 = *v27;
      do
      {
        v15 = 0;
        v25 = v14;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v17 = v16;
          if (v16)
          {
            v18 = [v16 environmentTexture];
            v19 = v18 == 0;

            if (!v19)
            {
              v20 = a1[31];
              v21 = v17;
              *buf = &unk_1F2A4B270;
              *&buf[8] = v21;
              gdc::Registry::create(v20);
            }
          }

          ++v15;
        }

        while (v15 != v25);
        v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    buf[0] = 1;
    std::__hash_table<md::ARLogicEvent,std::hash<md::ARLogicEvent>,std::equal_to<md::ARLogicEvent>,std::allocator<md::ARLogicEvent>>::__emplace_unique_key_args<md::ARLogicEvent,md::ARLogicEvent>(a1 + 26, 1u);
    v7 = GEOGetVectorKitARLogicLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v8 = "ARSession Anchors did update";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 2;
    goto LABEL_17;
  }

LABEL_19:
}

id GEOGetVectorKitARLogicLog(void)
{
  if (GEOGetVectorKitARLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARLogicLog(void)::onceToken, &__block_literal_global_42586);
  }

  v1 = GEOGetVectorKitARLogicLog(void)::log;

  return v1;
}

void *std::__hash_table<md::ARLogicEvent,std::hash<md::ARLogicEvent>,std::equal_to<md::ARLogicEvent>,std::allocator<md::ARLogicEvent>>::__emplace_unique_key_args<md::ARLogicEvent,md::ARLogicEvent>(void *result, unsigned __int8 a2)
{
  v2 = result[1];
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
      v4 = a2 % result[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *geo::_retain_ptr<AREnvironmentProbeAnchor * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4B270;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void ___ZL25GEOGetVectorKitARLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARLogic");
  v1 = GEOGetVectorKitARLogicLog(void)::log;
  GEOGetVectorKitARLogicLog(void)::log = v0;
}

void md::ARLogic::sessionDidUpdateGeoTrackingStatus(md::ARLogic *this, ARSession *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 20) == a2)
  {
    std::__hash_table<md::ARLogicEvent,std::hash<md::ARLogicEvent>,std::equal_to<md::ARLogicEvent>,std::allocator<md::ARLogicEvent>>::__emplace_unique_key_args<md::ARLogicEvent,md::ARLogicEvent>(this + 26, 0);
  }

  else
  {
    v2 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = "false";
      v5 = 2080;
      v6 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARLogic.mm";
      v7 = 1024;
      v8 = 196;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Observing incorrect sesesion: Assertion with expression - %s : Failed in file - %s line - %i", &v3, 0x1Cu);
    }
  }
}

void md::ARLogic::sessionDidUpdateFrame(md::ARLogic *this, ARSession *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 20) == a2)
  {
    v3 = **(this + 16);
    if (v3)
    {
      LOBYTE(v4) = 8;
      md::MapEngine::setNeedsTick(v3, &v4);
    }
  }

  else
  {
    v2 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = "false";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARLogic.mm";
      v8 = 1024;
      v9 = 186;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Observing incorrect sesesion: Assertion with expression - %s : Failed in file - %s line - %i", &v4, 0x1Cu);
    }
  }
}

void md::Logic<md::ARLogic,md::ARLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t *a3, uint64_t a4)
{
  v158[20] = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 == v9)
  {
    goto LABEL_8;
  }

  v10 = v8;
  while (*v10 != 26)
  {
    v10 += 16;
    if (v10 == v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 == v9)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v11 = v10[8];
  }

  *(a1 + 257) = v11;
  while (v8 != v9)
  {
    if (*v8 == 27)
    {
      if (v8 != v9)
      {
        v12 = v8[8];
        goto LABEL_16;
      }

      break;
    }

    v8 += 16;
  }

  v12 = 0;
LABEL_16:
  *(a1 + 256) = v12;
  v13 = gdc::Registry::storage<arComponents::Configuration>(*(a1 + 248));
  v14 = v13[7];
  v15 = v13[8];
  if (v14 == v15 || *(v13[10] + (((v15 - v14 - 8) >> 2) & 0x3FFFFFFFFFFFFFFELL)) == 1)
  {
    v16 = +[VKDebugSettings sharedSettings];
    v17 = [v16 arEnableCameraFeed];
  }

  else
  {
    v17 = 0;
  }

  if (*(a4 + 66) != v17)
  {
    *(a4 + 66) = v17;
    v18 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = +[VKDebugSettings sharedSettings];
      v20 = [v19 arEnableCameraFeed];
      v21 = *(a4 + 66);
      *buf = 67109376;
      *&buf[4] = v20;
      *&buf[8] = 1024;
      *&buf[10] = v21;
      _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_INFO, "CameraFeedEnabledDidChange:(DebugToggleIs:%d)%d", buf, 0xEu);
    }
  }

  v140 = *a3;
  *(a4 + 72) = 0;
  v22 = *(a1 + 160);
  v23 = v22;
  v143 = v23;
  if (v23)
  {
    v144 = [v23 currentFrame];
  }

  else
  {
    v144 = 0;
  }

  obj = v22;
  v139 = *(a1 + 257);
  [*(a1 + 448) setAlwaysUseGoodRouteMatch:v139 != 0];
  v24 = v144;
  if (!*(a4 + 66))
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = v25;
  if (v25)
  {
    v27 = [v25 capturedImage];
    v28 = v27;
    if (v27)
    {
      if (CVPixelBufferGetPlaneCount(v27) == 2)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(v28);
        if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
        {
          IOSurface = CVPixelBufferGetIOSurface(v28);
          v31 = *(a1 + 432);
          if (!v31 || *(v31 + 160) != IOSurface)
          {
            operator new();
          }

          goto LABEL_41;
        }

        LOBYTE(__dst) = HIBYTE(PixelFormatType);
        BYTE1(__dst) = BYTE2(PixelFormatType);
        BYTE2(__dst) = BYTE1(PixelFormatType);
        *(&__dst + 3) = PixelFormatType;
        v32 = GEOGetVectorKitARLogicLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = &__dst;
          *&buf[12] = 2080;
          *&buf[14] = "false";
          *&buf[22] = 2080;
          v150 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARLogic.mm";
          v151 = 1024;
          *v152 = 50;
          _os_log_impl(&dword_1B2754000, v32, OS_LOG_TYPE_ERROR, "Unexpected pixel buffer format %s: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }
      }
    }
  }

  v33 = *(a1 + 440);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

LABEL_41:

  *(a4 + 72) = *(a1 + 432);
  v34 = v143;
  v142 = v34;
  if (!v143)
  {
    if (!v139)
    {

      *(a4 + 64) = 0;
      *(a1 + 304) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      goto LABEL_163;
    }

    v47 = 0;
    v39 = 2;
    v46 = 3;
    v37 = 1;
    goto LABEL_61;
  }

  v35 = v34;
  v36 = [v35 currentFrame];
  v37 = [v36 renderFramesPerSecond];
  v38 = [v35 state];
  if (v38 < 3)
  {
    v39 = v38 + 1;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v36 geoTrackingStatus];
  v41 = [v40 state];
  v42 = [v40 stateReason];
  v43 = [v40 accuracy];

  v44 = +[VKDebugSettings sharedSettings];
  v45 = [v44 arDebugLockLocalizingState];

  if (v45)
  {
    v46 = 0;
    v47 = 0;
    v48 = 2;
    goto LABEL_62;
  }

  v49 = v42 - 1;
  v50 = v42;
  if (v41 >= 4)
  {
    v48 = 0;
  }

  else
  {
    v48 = v41;
  }

  if (v49 >= 8)
  {
    v47 = 0;
  }

  else
  {
    v47 = v50;
  }

  if (v43 >= 4)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  if (v139 && v39 == 2)
  {
    v47 = 0;
    v46 = 3;
LABEL_61:
    v48 = 3;
  }

LABEL_62:

  if (v37 != *(a1 + 408))
  {
    *(a1 + 408) = v37;
    v51 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = *(a1 + 408);
      *buf = 67109120;
      *&buf[4] = v52;
      _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_INFO, "ARRequestedFramesPerSecond:%d", buf, 8u);
    }

    v53 = *(a1 + 128);
    *(v53 + 1) = *(a1 + 408);
    md::RunLoopController::_updateDisplayRate(v53, v54, v55, v56);
  }

  v57 = *(a4 + 24);
  *(a4 + 24) = 0;
  v58 = *(a1 + 208);
  *(a1 + 208) = 0;
  v59 = *(a4 + 24);
  *(a4 + 24) = v58;
  if (v59)
  {
    operator delete(v59);
  }

  v60 = *(a1 + 208);
  *(a1 + 208) = v57;
  if (v60)
  {
    operator delete(v60);
  }

  v61 = *(a4 + 40);
  v62 = *(a4 + 32);
  v63 = *(a1 + 224);
  *(a4 + 32) = *(a1 + 216);
  *(a1 + 216) = v62;
  *(a4 + 40) = v63;
  *(a1 + 224) = v61;
  v64 = *(a4 + 48);
  *(a4 + 48) = *(a1 + 232);
  *(a1 + 232) = v64;
  v65 = *(a4 + 56);
  *(a4 + 56) = *(a1 + 240);
  *(a1 + 240) = v65;
  if (*(a4 + 48))
  {
    v66 = *(a4 + 32);
    v67 = *(*(a4 + 40) + 8);
    if ((v66 & (v66 - 1)) != 0)
    {
      if (v67 >= v66)
      {
        v67 %= v66;
      }
    }

    else
    {
      v67 &= v66 - 1;
    }

    *(*(a4 + 24) + 8 * v67) = a4 + 40;
  }

  if (v64)
  {
    v68 = *(a1 + 216);
    v69 = *(*(a1 + 224) + 8);
    if ((v68 & (v68 - 1)) != 0)
    {
      if (v69 >= v68)
      {
        v69 %= v68;
      }
    }

    else
    {
      v69 &= v68 - 1;
    }

    *(*(a1 + 208) + 8 * v69) = a1 + 224;
    v70 = *(a1 + 224);
    if (v70)
    {
      do
      {
        v71 = *v70;
        operator delete(v70);
        v70 = v71;
      }

      while (v71);
    }

    *(a1 + 224) = 0;
    v72 = *(a1 + 216);
    if (v72)
    {
      for (i = 0; i != v72; ++i)
      {
        *(*(a1 + 208) + 8 * i) = 0;
      }
    }

    *(a1 + 232) = 0;
  }

  if (*(a4 + 64) != v39)
  {
    *(a4 + 64) = v39;
    v74 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = *(a4 + 64);
      if (v75 > 3)
      {
        v76 = "<Invalid>";
      }

      else
      {
        v76 = off_1E7B3CF50[v75];
      }

      *buf = 136315138;
      *&buf[4] = v76;
      _os_log_impl(&dword_1B2754000, v74, OS_LOG_TYPE_INFO, "SessionStateDidChange:%s", buf, 0xCu);
    }
  }

  if (*(a4 + 16) == v48 && *(a4 + 17) == v47 && *(a4 + 18) == v46)
  {
    goto LABEL_132;
  }

  *(a4 + 18) = v46;
  *(a4 + 16) = v48 | (v47 << 8);
  v77 = GEOGetVectorKitARLogicLog();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], "GeoTrackingStatus(state:", 24);
    v78 = *(a4 + 16);
    if (v78 > 3)
    {
      v79 = "<Invalid>";
    }

    else
    {
      v79 = off_1E7B3B9C0[v78];
    }

    v80 = strlen(v79);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], v79, v80);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], ", reason:", 9);
    v81 = *(a4 + 17);
    if (v81 > 8)
    {
      v82 = "<Invalid>";
    }

    else
    {
      v82 = off_1E7B38D30[v81];
    }

    v83 = strlen(v82);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], v82, v83);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], ", accuracy:", 11);
    v84 = *(a4 + 18);
    if (v84 > 3)
    {
      v85 = "<Invalid>";
    }

    else
    {
      v85 = off_1E7B38D78[v84];
    }

    v86 = strlen(v85);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&buf[16], v85, v86);
    if ((v157 & 0x10) != 0)
    {
      v88 = v156;
      if (v156 < v153)
      {
        v156 = v153;
        v88 = v153;
      }

      v89 = *&v152[15];
    }

    else
    {
      if ((v157 & 8) == 0)
      {
        v87 = 0;
        HIBYTE(v146) = 0;
LABEL_121:
        *(&__dst + v87) = 0;
        *buf = *MEMORY[0x1E69E54D8];
        v90 = *(MEMORY[0x1E69E54D8] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
        *&buf[16] = v90;
        v150 = (MEMORY[0x1E69E5548] + 16);
        if (v155 < 0)
        {
          operator delete(__p);
        }

        v150 = (MEMORY[0x1E69E5538] + 16);
        std::locale::~locale(&v151);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C620C0](v158);
        p_dst = &__dst;
        if (v146 < 0.0)
        {
          p_dst = __dst;
        }

        *v147 = 136315138;
        v148 = p_dst;
        _os_log_impl(&dword_1B2754000, v77, OS_LOG_TYPE_INFO, "GeoTrackingStateDidChange:%s", v147, 0xCu);
        if (SHIBYTE(v146) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_127;
      }

      v89 = *&v152[3];
      v88 = *&v152[11];
    }

    v87 = v88 - v89;
    if (v88 - v89 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v87 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v146) = v88 - v89;
    if (v87)
    {
      memmove(&__dst, v89, v87);
    }

    goto LABEL_121;
  }

LABEL_127:

  if (*(a4 + 64) == 2 && *(a4 + 16) == 3)
  {
    md::LayoutContext::frameState(a2);
    *(a4 + 88) = *(v92 + 88);
    v93 = 1;
  }

  else
  {
    v93 = 0;
    *(a4 + 88) = 0;
  }

  *(a4 + 96) = v93;
LABEL_132:
  objc_storeStrong((a4 + 80), obj);
  v94 = [v144 camera];
  md::MDARCamera::MDARCamera(buf, v94);
  v95 = *&buf[8];
  v96 = [v95 trackingState];

  if (v96 == 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = 2;
  }

  if (v96)
  {
    v98 = v97;
  }

  else
  {
    v98 = 0;
  }

  *buf = &unk_1F2A4EB10;

  if (*(a4 + 65) != v98)
  {
    *(a4 + 65) = v98;
    v99 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
    {
      v100 = *(a4 + 65);
      if (v100 > 2)
      {
        v101 = "<Invalid>";
      }

      else
      {
        v101 = off_1E7B3CF70[v100];
      }

      *buf = 136315138;
      *&buf[4] = v101;
      _os_log_impl(&dword_1B2754000, v99, OS_LOG_TYPE_INFO, "TrackingStateDidChange:%s", buf, 0xCu);
    }
  }

  if (*(a4 + 16) == 3)
  {
    v102 = gdc::CameraView::position((v140 + 3800));
    v104 = *v102;
    v103 = v102[1];
    v105 = v102[2];
    *&__dst = *v102;
    *(&__dst + 1) = v103;
    v146 = v105;
    if (!*(v140 + 3784))
    {
      v106 = v105 * 40075017.0;
      v107 = v104 * 6.28318531;
      v108 = exp(v103 * 6.28318531 + -3.14159265);
      v109 = atan(v108) * 2.0 + -1.57079633;
      v110 = fmod(v107, 6.28318531);
      v111 = fmod(v110 + 6.28318531, 6.28318531) + -3.14159265;
      v112 = __sincos_stret(v109);
      v113 = 6378137.0 / sqrt(v112.__sinval * v112.__sinval * -0.00669437999 + 1.0);
      v114 = (v113 + v106) * v112.__cosval;
      v115 = __sincos_stret(v111);
      *&__dst = v114 * v115.__cosval;
      *(&__dst + 1) = v114 * v115.__sinval;
      v146 = (v106 + v113 * 0.99330562) * v112.__sinval;
    }

    v116 = 0;
    v117 = (a1 + 360);
    do
    {
      *&buf[v116] = *(v117 + v116) - *(&__dst + v116);
      v116 += 8;
    }

    while (v116 != 24);
    v118 = 0;
    v119 = 0.0;
    do
    {
      v119 = v119 + *&buf[v118] * *&buf[v118];
      v118 += 8;
    }

    while (v118 != 24);
    if (v119 > 1.0)
    {
      geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(&__dst, buf);
      *(a1 + 336) = *buf;
      *(a1 + 352) = *&buf[16];
      *v117 = __dst;
      *(a1 + 376) = v146;
      v120 = GEOGetVectorKitARLogicLog();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v121 = *(a1 + 336);
        v122 = *(a1 + 344);
        v123 = *(a1 + 352);
        *buf = 134218753;
        *&buf[4] = sqrt(v119);
        *&buf[12] = 2049;
        *&buf[14] = v121;
        *&buf[22] = 2049;
        v150 = v122;
        v151 = 2049;
        *v152 = v123;
        _os_log_impl(&dword_1B2754000, v120, OS_LOG_TYPE_INFO, "Camera Position(%f):%{private}f,%{private}f,%{private}f", buf, 0x2Au);
      }
    }
  }

  if (*(a4 + 65) == 2)
  {
    v124 = 0;
    v125 = *(v140 + 5232);
    __dst = *(v140 + 5216);
    v146 = v125;
    v126 = (a1 + 384);
    v127 = 0.0;
    do
    {
      v127 = v127 + *(&__dst + v124) * *(v126 + v124);
      v124 += 8;
    }

    while (v124 != 24);
    if (v127 < 0.97)
    {
      *v126 = __dst;
      *(a1 + 400) = v146;
      v128 = GEOGetVectorKitARLogicLog();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
      {
        v129 = acos(v127);
        v130 = *(a1 + 384);
        v131 = *(a1 + 392);
        v132 = *(a1 + 400);
        *buf = 134218752;
        *&buf[4] = v129 * 57.2957795;
        *&buf[12] = 2048;
        *&buf[14] = v130;
        *&buf[22] = 2048;
        v150 = v131;
        v151 = 2048;
        *v152 = v132;
        _os_log_impl(&dword_1B2754000, v128, OS_LOG_TYPE_INFO, "Camera Dir(%f):%f,%f,%f", buf, 0x2Au);
      }
    }
  }

LABEL_163:

  v133 = *(a1 + 176);
  if (*(a4 + 8) != v133)
  {
    *(a4 + 8) = v133;
    v134 = GEOGetVectorKitARLogicLog();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      v135 = *(a4 + 8) - 1;
      if (v135 > 3)
      {
        v136 = @"Unknown";
      }

      else
      {
        v136 = off_1E7B3CFC0[v135];
      }

      v137 = [(__CFString *)v136 UTF8String];
      *buf = 136315138;
      *&buf[4] = v137;
      _os_log_impl(&dword_1B2754000, v134, OS_LOG_TYPE_INFO, "ARInterfaceOrientationDidChange:%s", buf, 0xCu);
    }
  }
}