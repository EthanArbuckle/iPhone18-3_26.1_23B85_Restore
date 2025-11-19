void sub_1B2948BF4(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v1 + 48);
  v4 = mach_absolute_time() - v2;
  if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
  {
    dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
  }

  atomic_fetch_add((*(ggl::Performance::Counters::instance(void)::counters + 32) + 152), v4);
  _Unwind_Resume(a1);
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForSeeThrough>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForSeeThrough>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupRenderStatesForSeeThrough,md::ls::IntendedSceneLayerType<(md::SceneLayer)3> const&,md::ls::MainPassItem const&,md::ls::IsTransparent const&,md::ls::NeedsRenderState const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ggl::Point::PipelineState::~PipelineState(ggl::Point::PipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[422];
}

void ggl::Debug::LinePipelineState::~LinePipelineState(ggl::Debug::LinePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MetalRenderer::frame(uint64_t a1, ggl::RenderTarget *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v175 = *MEMORY[0x1E69E9840];
  v9 = atomic_load((a1 + 417));
  if (v9)
  {
    if (GEOGetGeoGLDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
    }

    v10 = GEOGetGeoGLDefaultLog_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = atomic_load((a1 + 420));
      v12 = *(a1 + 428);
      *buf = 67109376;
      *&buf[4] = v11;
      *&buf[8] = 1024;
      *&buf[10] = v12;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "Attempting to reset command queue, attempt %d of %d", buf, 0xEu);
    }

    v13 = *(a1 + 136);
    v14 = [*(v13 + 104) newCommandQueue];
    v15 = *(v13 + 112);
    v13 += 112;
    *v13 = v14;

    v16 = *v13;
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.MapKit"];
    [v16 setLabel:v17];

    atomic_fetch_add((a1 + 420), 1u);
    atomic_store(0, (a1 + 417));
  }

  v146 = a3;
  if (*(a1 + 40) == 1)
  {
    v18 = *(a1 + 144);
    if (v18)
    {
      v19 = ggl::RenderTarget::width(this);
      v20 = *(a1 + 44);
      v21 = v19 / v20;
      v22 = ggl::RenderTarget::height(this);
      v23 = truncf(v21);
      v24 = *(v18 + 24);
      v25 = *(v18 + 32);
      *buf = 2.0 / v23;
      *&buf[4] = 0uLL;
      *&buf[20] = -2.0 / truncf(v22 / v20);
      v26 = v24 + -1.0;
      if (!v25)
      {
        v26 = 1.0 - v24;
      }

      v156 = 0;
      __dst = 0;
      v158 = LODWORD(v26);
      *&v159 = -v23 / v23;
      HIDWORD(v159) = 1065353216;
      v160 = v24;
      v161 = 1065353216;
      ggl::Performance::HUD::debugConsole(__str, v18);
      ggl::DebugConsole::setProjection(*__str, buf);
      if (v172)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v172);
      }

      v27 = *(a1 + 144);
      if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
      {
        dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
      }

      v28 = ggl::Performance::Counters::instance(void)::counters;
      ggl::Performance::HUD::debugConsole(buf, v27);
      v29 = *buf;
      mach_absolute_time();
      if (*(v28 + 52) == 1)
      {
        if (*(v28 + 40))
        {
          v135 = v29[7];
          v136 = (*(v28 + 16) + 64);
          v137 = 100.0;
          v138 = *(v28 + 40);
          do
          {
            if (*(v136 - 1) && ((*(v28 + 48) >> *(v136 - 2)) & 1) != 0)
            {
              if (*v136 == 2)
              {
                v139 = v135 + 33.0;
              }

              else
              {
                v139 = v29[7];
                if (*v136 == 1)
                {
                  v139 = v135 + v135;
                }
              }

              v137 = v137 + v139;
            }

            v136 += 18;
            --v138;
          }

          while (v138);
          v140 = v137 + 2.0;
        }

        else
        {
          v140 = 102.0;
        }

        *v28 = 0x42C4000041600000;
        *(v28 + 8) = 1134493696;
        *(v28 + 12) = v140;
        *(v28 + 52) = 0;
      }

      ggl::DebugConsole::begin(v29);
    }
  }

  if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
  {
    dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
  }

  v30 = ggl::Performance::Counters::instance(void)::counters;
  if (*(ggl::Performance::Counters::instance(void)::counters + 40))
  {
    v31 = 0;
    do
    {
      atomic_store(0, (*(v30 + 32) + 8 * v31++));
    }

    while (v31 < *(v30 + 40));
  }

  objc_autoreleasePoolPush();
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = *(a1 + 416);
  v32 = *(a3 + 136);
  v33 = *(a3 + 144);
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    v151 = v32;
    v152 = v33;
    v32 = *(a3 + 136);
  }

  else
  {
    v151 = *(a3 + 136);
  }

  *(a1 + 16) = *v32;
  __p = 0;
  v148 = 0;
  v149 = 0;
  *buf = this;
  *&buf[8] = a3;
  buf[16] = 0;
  v34 = __p;
  v35 = v148;
  if (__p != v148)
  {
    for (i = __p; i != v35; i += 3)
    {
      v37 = i[1];
      v38 = *(v37 + 104);
      v39 = *(v37 + 112);
      while (v38 != v39)
      {
        if (v150 == 1 && (v150 & 0x100) != 0)
        {
          goto LABEL_42;
        }

        v40 = *v38;
        if (*v38)
        {
          v41 = *(v40 + 168);
          v42 = *(v40 + 176);
          for (j = v41; j != v42; j += 152)
          {
            if (*(j + 1))
            {
              if (*(j + 1) != 1)
              {
                continue;
              }

              v44 = (&v150 + 1);
            }

            else
            {
              v44 = &v150;
            }

            *v44 = 1;
          }
        }

        ++v38;
      }
    }
  }

LABEL_42:
  ggl::MetalDeviceContext::beginFrame(*(a1 + 432));
  ggl::MetalBindingManager::resetBindingCache(*(*(a1 + 432) + 8));
  if (v34 != v35)
  {
    v45 = v34;
    do
    {
      ggl::MetalDeviceContext::beginPass(*(a1 + 432));
      v46 = v45[1];
      v47 = v46[31];
      v48 = v46[32];
      if (v47 != v48)
      {
        do
        {
          ggl::MetalDeviceContext::optimizeForCPUAccess(*(a1 + 432), *v47++);
        }

        while (v47 != v48);
        v46 = v45[1];
      }

      v49 = v46[27];
      v50 = v46[28];
      if (v49 != v50)
      {
        do
        {
          ggl::MetalDeviceContext::optimizeForGPUAccess(*(a1 + 432), *v49++);
        }

        while (v49 != v50);
        v46 = v45[1];
        v49 = v46[27];
      }

      v46[32] = v46[31];
      v46[28] = v49;
      v51 = v46[13];
      v52 = v46[14];
      while (v51 != v52)
      {
        if (*v51)
        {
          ggl::MetalDeviceContext::processBuffer(*(a1 + 432), *v51);
        }

        ++v51;
      }

      v53 = *(a1 + 432);
      v55 = *(v53 + 48);
      v54 = (v53 + 48);
      if (v55)
      {
        std::unique_ptr<ggl::MetalDeviceContextPass>::reset[abi:nn200100](v54, 0);
      }

      v45 += 3;
    }

    while (v45 != v35);
  }

  if (*(a1 + 56) != *(a1 + 64))
  {
    operator new();
  }

  v56 = gettimeofday(buf, 0);
  v57 = *buf + *&buf[8] * 0.000001;
  v58 = fmin(fmax(v57 - *(a1 + 160), 0.001), 100.0);
  v59 = a1 + 8 * (*(a1 + 16) % 0x1EuLL);
  v60 = v58 + *(a1 + 168) - *(v59 + 176);
  *(a1 + 160) = v57;
  *(a1 + 168) = v60;
  *(a1 + 152) = 30.0 / v60;
  *(v59 + 176) = v58;
  v61 = atomic_load((*(*(a1 + 136) + 80) + 312));
  if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
  {
    dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
  }

  atomic_store(v61, (*(ggl::Performance::Counters::instance(void)::counters + 32) + 64));
  memset(buf, 0, sizeof(buf));
  __dst = 0;
  v158 = 0;
  v159 = 0;
  v162 = 0;
  v163 = 0uLL;
  v165 = 0;
  v166 = 0uLL;
  v169 = 0uLL;
  v168 = 0;
  if (*(a5 + 24))
  {
    v62 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v154, a5);
    if (v169 < *(&v169 + 1))
    {
      std::allocator_traits<geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>>::construct[abi:nn200100]<std::function<void ()(NSError *)>,ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0,void,0>(v169, v154);
    }

    v63 = (v169 - v168) >> 5;
    if (!((v63 + 1) >> 59))
    {
      v64 = (*(&v169 + 1) - v168) >> 4;
      if (v64 <= v63 + 1)
      {
        v64 = v63 + 1;
      }

      if (*(&v169 + 1) - v168 >= 0x7FFFFFFFFFFFFFE0uLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v64;
      }

      v174 = &v170;
      if (v65)
      {
        v66 = ggl::zone_mallocator::instance(v62);
        v67 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::function<void ()(NSError *)>>(v66, v65);
      }

      else
      {
        v67 = 0;
      }

      *__str = v67;
      v172 = &v67[32 * v63];
      *&v173 = v172;
      *(&v173 + 1) = &v67[32 * v65];
      std::allocator_traits<geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>>::construct[abi:nn200100]<std::function<void ()(NSError *)>,ggl::MetalRenderer::frame(ggl::RenderTarget *,ggl::RenderQueue *,std::function<void ()(void)>,std::function<void ()(void)>,std::function<void ()(ggl::WillSubmitFrameInfo const*)>)::$_0,void,0>(v172, v154);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v174 = &v170;
  v68 = ggl::zone_mallocator::instance(v56);
  v69 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::function<void ()(NSError *)>>(v68, 1);
  *__str = v69;
  v172 = v69;
  *(&v173 + 1) = v69 + 32;
  v69->__vftable = &unk_1F2A5BFF0;
  v69->__shared_owners_ = a1;
  v69[1].__vftable = v69;
  *&v173 = v69 + 32;
  v70 = v168 + v69 - v169;
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>,std::function<void ()(NSError *)>*>(v168, v169, v70);
  v71 = v168;
  v72 = *(&v169 + 1);
  v73 = v173;
  v168 = v70;
  v169 = v173;
  *&v173 = v71;
  *(&v173 + 1) = v72;
  *__str = v71;
  v172 = v71;
  v74 = std::__split_buffer<std::function<void ()(NSError *)>,geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator> &>::~__split_buffer(__str);
  v75 = a6;
  *&v169 = v73;
  if (*(a6 + 24))
  {
    v76 = v163;
    if (v163 >= *(&v163 + 1))
    {
      v78 = (v163 - v162) >> 5;
      if ((v78 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v79 = (*(&v163 + 1) - v162) >> 4;
      if (v79 <= v78 + 1)
      {
        v79 = v78 + 1;
      }

      if (*(&v163 + 1) - v162 >= 0x7FFFFFFFFFFFFFE0uLL)
      {
        v80 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v79;
      }

      v174 = &v164;
      if (v80)
      {
        v81 = ggl::zone_mallocator::instance(v74);
        geo::read_write_lock::read_lock((v81 + 32));
        v82 = malloc_type_zone_malloc(*v81, 32 * v80, 0x1020040A5B76CDFuLL);
        atomic_fetch_add((v81 + 24), 1u);
        geo::read_write_lock::unlock((v81 + 32));
        v75 = a6;
      }

      else
      {
        v82 = 0;
      }

      *__str = v82;
      v172 = &v82[32 * v78];
      *&v173 = v172;
      *(&v173 + 1) = &v82[32 * v80];
      std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::__value_func[abi:nn200100](v172, v75);
      *&v173 = v173 + 32;
      v83 = v162;
      v84 = v163;
      v85 = (v162 + v172 - v163);
      if (v162 != v163)
      {
        v86 = v162;
        v87 = v162 + v172 - v163;
        do
        {
          v88 = v86[1].__vftable;
          if (v88)
          {
            if (v86 == v88)
            {
              *(v87 + 3) = v87;
              (*(v86[1].~__shared_weak_count + 3))(v86[1].__vftable, v87);
            }

            else
            {
              *(v87 + 3) = v88;
              v86[1].__vftable = 0;
            }
          }

          else
          {
            *(v87 + 3) = 0;
          }

          v86 = (v86 + 32);
          v87 += 32;
        }

        while (v86 != v84);
        do
        {
          std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::~__value_func[abi:nn200100](v83);
          v83 += 32;
        }

        while (v83 != v84);
      }

      v89 = v162;
      v90 = *(&v163 + 1);
      v162 = v85;
      v143 = v173;
      v163 = v173;
      *&v173 = v89;
      *(&v173 + 1) = v90;
      *__str = v89;
      v172 = v89;
      v74 = std::__split_buffer<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,geo::allocator_adapter<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,ggl::zone_mallocator> &>::~__split_buffer(__str);
      v77 = v143;
    }

    else
    {
      v74 = std::__function::__value_func<void ()(ggl::WillSubmitFrameInfo const*)>::__value_func[abi:nn200100](v163, a6);
      v77 = v76 + 32;
    }

    *&v163 = v77;
  }

  if (*(a4 + 24))
  {
    v91 = v166;
    if (v166 >= *(&v166 + 1))
    {
      v93 = (v166 - v165) >> 5;
      if ((v93 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v94 = (*(&v166 + 1) - v165) >> 4;
      if (v94 <= v93 + 1)
      {
        v94 = v93 + 1;
      }

      if (*(&v166 + 1) - v165 >= 0x7FFFFFFFFFFFFFE0uLL)
      {
        v95 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v95 = v94;
      }

      v174 = &v167;
      if (v95)
      {
        v96 = ggl::zone_mallocator::instance(v74);
        geo::read_write_lock::read_lock((v96 + 32));
        v97 = malloc_type_zone_malloc(*v96, 32 * v95, 0x1020040A5B76CDFuLL);
        atomic_fetch_add((v96 + 24), 1u);
        geo::read_write_lock::unlock((v96 + 32));
      }

      else
      {
        v97 = 0;
      }

      *__str = v97;
      v172 = &v97[32 * v93];
      *&v173 = v172;
      *(&v173 + 1) = &v97[32 * v95];
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v172, a4);
      *&v173 = v173 + 32;
      v98 = v165;
      v99 = v166;
      v100 = (v165 + v172 - v166);
      if (v165 != v166)
      {
        v101 = v165;
        v102 = v165 + v172 - v166;
        do
        {
          v103 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v102, v101);
          v101 += 32;
          v102 = (v103 + 32);
        }

        while (v101 != v99);
        do
        {
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v98);
          v98 += 32;
        }

        while (v98 != v99);
      }

      v104 = v165;
      v105 = *(&v166 + 1);
      v165 = v100;
      v145 = v173;
      v166 = v173;
      *&v173 = v104;
      *(&v173 + 1) = v105;
      *__str = v104;
      v172 = v104;
      v74 = std::__split_buffer<std::function<void ()(void)>,geo::allocator_adapter<std::function<void ()(void)>,ggl::zone_mallocator> &>::~__split_buffer(__str);
      v92 = v145;
    }

    else
    {
      v74 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v166, a4);
      v92 = v91 + 32;
    }

    *&v166 = v92;
  }

  v106 = v146;
  if (&__dst != (v146 + 152))
  {
    v107 = *(v146 + 152);
    v108 = *(v146 + 160);
    v109 = v108 - v107;
    v110 = v159;
    v111 = __dst;
    if (v159 - __dst >= (v108 - v107))
    {
      v119 = v158;
      v120 = v158 - __dst;
      if (v158 - __dst >= v109)
      {
        if (v108 != v107)
        {
          v74 = memmove(__dst, *(v146 + 152), v108 - v107);
        }

        v118 = &v111[v109];
      }

      else
      {
        v121 = &v107[v120];
        if (v158 != __dst)
        {
          v74 = memmove(__dst, *(v146 + 152), v120);
          v119 = v158;
        }

        if (v108 != v121)
        {
          v74 = memmove(v119, v121, v108 - v121);
        }

        v118 = &v119[v108 - v121];
      }
    }

    else
    {
      v112 = v109 >> 3;
      if (__dst)
      {
        v158 = __dst;
        v113 = ggl::zone_mallocator::instance(v74);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Buffer *>(v113, v111);
        v110 = 0;
        __dst = 0;
        v158 = 0;
        v159 = 0;
      }

      if (v112 >> 61)
      {
        goto LABEL_177;
      }

      v114 = v110 >> 2;
      if (v110 >> 2 <= v112)
      {
        v114 = v109 >> 3;
      }

      v115 = v110 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v114;
      if (v115 >> 61)
      {
LABEL_177:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v116 = ggl::zone_mallocator::instance(v74);
      geo::read_write_lock::read_lock((v116 + 32));
      v117 = malloc_type_zone_malloc(*v116, 8 * v115, 0x2004093837F09uLL);
      atomic_fetch_add((v116 + 24), 1u);
      geo::read_write_lock::unlock((v116 + 32));
      __dst = v117;
      v158 = v117;
      v159 = &v117[8 * v115];
      if (v108 != v107)
      {
        v74 = memmove(v117, v107, v108 - v107);
      }

      v118 = &v117[v109];
    }

    v158 = v118;
    v106 = v146;
  }

  if (buf == (v106 + 184))
  {
LABEL_162:
    *(v106 + 160) = *(v106 + 152);
    *(v106 + 192) = *(v106 + 184);
    ggl::MetalDeviceContext::endFrame(*(a1 + 432));
    operator new();
  }

  v122 = *(v106 + 184);
  v123 = *(v106 + 192);
  v124 = v123 - v122;
  v125 = *&buf[16];
  v126 = *buf;
  if (*&buf[16] - *buf >= (v123 - v122))
  {
    v131 = *&buf[8];
    v132 = *&buf[8] - *buf;
    if (*&buf[8] - *buf < v124)
    {
      v133 = &v122[v132];
      if (*&buf[8] != *buf)
      {
        memmove(*buf, *(v106 + 184), v132);
        v131 = *&buf[8];
      }

      if (v123 != v133)
      {
        memmove(v131, v133, v123 - v133);
      }

      v134 = &v131[v123 - v133];
      goto LABEL_161;
    }
  }

  else
  {
    v127 = v124 >> 3;
    if (*buf)
    {
      *&buf[8] = *buf;
      v128 = ggl::zone_mallocator::instance(v74);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(v128, v126);
      v125 = 0;
      memset(buf, 0, sizeof(buf));
    }

    if (v127 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v129 = v125 >> 2;
    if (v125 >> 2 <= v127)
    {
      v129 = v124 >> 3;
    }

    if (v125 >= 0x7FFFFFFFFFFFFFF8)
    {
      v130 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v130 = v129;
    }

    std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__vallocate[abi:nn200100](buf, v130);
    v126 = *&buf[8];
  }

  if (v123 != v122)
  {
    memmove(v126, v122, v123 - v122);
  }

  v134 = &v126[v124];
LABEL_161:
  *&buf[8] = v134;
  v106 = v146;
  goto LABEL_162;
}

void sub_1B294A5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  geo::read_write_lock::unlock((v52 + 32));
  std::vector<std::function<void ()(NSError *)>,geo::allocator_adapter<std::function<void ()(NSError *)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a31);
  std::vector<std::function<void ()(void)>,geo::allocator_adapter<std::function<void ()(void)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a31);
  a31 = a17;
  std::vector<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,geo::allocator_adapter<std::function<void ()(ggl::WillSubmitFrameInfo const*)>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a31);
  std::vector<ggl::Buffer *,geo::allocator_adapter<ggl::Buffer *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v53);
  std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a35);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS9_10SceneLayerE3EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F540;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MainPassItem>();
    unk_1EB83DAF0 = 0xDB4F0ABC43345F6ALL;
    qword_1EB83DAF8 = "md::ls::MainPassItem]";
    qword_1EB83DB00 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MainPassItem>(void)::metadata >= 0x200)
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

void *std::__function::__value_func<void ()(ggl::RenderItem *)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE3EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F540;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ggl::MetalDeviceContext::doRenderWork(ggl::CommandBuffer *)::$_0,std::allocator<ggl::MetalDeviceContext::doRenderWork(ggl::CommandBuffer *)::$_0>,void ()(ggl::RenderItem *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A5C9E8;
  a2[1] = v2;
  return result;
}

void md::DaVinciBaseMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2 + 40960;
  v5 = *(a2 + 41936);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    v8 = *v5;
    while (*v8 != 1)
    {
      v8 += 16;
      if (v8 == v7)
      {
        goto LABEL_17;
      }
    }

    if (v8 != v7 && *(v8 + 8))
    {
      v9 = *v5;
      while (*v9 != 24)
      {
        v9 += 16;
        if (v9 == v7)
        {
          goto LABEL_17;
        }
      }

      if (v9 != v7)
      {
        if (*(v9 + 8))
        {
          v10 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x1Eu);
          if (v10)
          {
            if (*(v10 + 17) == 2)
            {
              *(v10 + 17) = 1;
            }
          }
        }
      }
    }
  }

LABEL_17:
  v11 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x34u);
  if (v11 && *(v11 + 17) == 2)
  {
    *(v11 + 17) = 1;
  }

  if (v6 != v7)
  {
    v12 = v6;
    while (*v12 != 2)
    {
      v12 += 16;
      if (v12 == v7)
      {
        goto LABEL_27;
      }
    }

    if (v12 != v7 && *(v12 + 8))
    {
      goto LABEL_34;
    }
  }

LABEL_27:
  if (v6 != v7)
  {
    v13 = v6;
    while (*v13 != 4)
    {
      v13 += 16;
      if (v13 == v7)
      {
        goto LABEL_37;
      }
    }

    if (v13 != v7 && *(v13 + 8))
    {
LABEL_34:
      v14 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x2Eu);
      if (v14 && *(v14 + 17) == 2)
      {
        *(v14 + 17) = 1;
      }
    }
  }

LABEL_37:
  if (v6 != v7)
  {
    v15 = v6;
    while (*v15 != 5)
    {
      v15 += 16;
      if (v15 == v7)
      {
        goto LABEL_47;
      }
    }

    if (v15 != v7)
    {
      if (*(v15 + 8))
      {
        v16 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x29u);
        if (v16)
        {
          if (*(v16 + 17) == 2)
          {
            *(v16 + 17) = 1;
          }
        }
      }
    }
  }

LABEL_47:
  if (v6 != v7)
  {
    v17 = v6;
    while (*v17 != 5)
    {
      v17 += 16;
      if (v17 == v7)
      {
        goto LABEL_57;
      }
    }

    if (v17 != v7)
    {
      if (*(v17 + 8))
      {
        v18 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x2Au);
        if (v18)
        {
          if (*(v18 + 17) == 2)
          {
            *(v18 + 17) = 1;
          }
        }
      }
    }
  }

LABEL_57:
  if (v6 != v7)
  {
    v19 = v6;
    while (*v19 != 33)
    {
      v19 += 16;
      if (v19 == v7)
      {
        goto LABEL_67;
      }
    }

    if (v19 != v7)
    {
      if (*(v19 + 8))
      {
        v20 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x26u);
        if (v20)
        {
          if (*(v20 + 17) == 2)
          {
            *(v20 + 17) = 1;
          }
        }
      }
    }
  }

LABEL_67:
  v21 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v4 + 968) + 16), 0xC74495586E0C32F6);
  if (v21)
  {
    v22 = v21[5];
  }

  else
  {
    v22 = 0;
  }

  if (v6 == v7)
  {
    goto LABEL_77;
  }

  v23 = v6;
  while (*v23 != 34)
  {
    v23 += 16;
    if (v23 == v7)
    {
      goto LABEL_77;
    }
  }

  if (v23 == v7 || !*(v23 + 8))
  {
LABEL_77:
    if (!v22 || *(v22 + 56) != 1 || *(v22 + 392) != 1 || fabsf(*(v22 + 356)) <= 0.0001)
    {
      goto LABEL_84;
    }
  }

  v24 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x25u);
  if (v24 && *(v24 + 17) == 2)
  {
    *(v24 + 17) = 1;
  }

LABEL_84:
  if (v6 == v7)
  {
    goto LABEL_94;
  }

  v25 = v6;
  while (*v25 != 13)
  {
    v25 += 16;
    if (v25 == v7)
    {
      goto LABEL_94;
    }
  }

  if (v25 != v7 && *(v25 + 8))
  {
    std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(a3, 0x1Eu);
    v6 = *v5;
    v7 = v5[1];
  }

LABEL_94:
  while (v6 != v7)
  {
    if (*v6 == 10)
    {
      if (v6 != v7 && *(v6 + 8))
      {

        std::__hash_table<std::__hash_value_type<unsigned char,md::DataRequirement>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,md::DataRequirement>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,md::DataRequirement>>>::__erase_unique<unsigned char>(a3, 0x1Du);
      }

      return;
    }

    v6 += 16;
  }
}

void ggl::Debug::InstancedBasePipelineState::~InstancedBasePipelineState(ggl::Debug::InstancedBasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciBaseMapEngineMode::applyMapDataTypeSettings(uint64_t **a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 41936);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    if (v6 == v7)
    {
LABEL_6:
      v9 = 4;
      goto LABEL_11;
    }

    v8 = v6;
    while (*v8 != 29)
    {
      v8 += 16;
      if (v8 == v7)
      {
        goto LABEL_6;
      }
    }

    v9 = 4;
    if (v8 != v7)
    {
      if (*(v8 + 8) == 3)
      {
        v9 = 2;
      }

      else
      {
        v9 = 4;
      }
    }

LABEL_11:
    while (v6 != v7)
    {
      if (*v6 == 22)
      {
        if (v6 != v7 && *(v6 + 8))
        {
          v9 = 7;
        }

        break;
      }

      v6 += 16;
    }

    v10 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xBu);
    if (v10 && *(v10 + 18) == 2)
    {
      *(v10 + 18) = (v9 << 16) | 2;
    }

    v11 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xCu);
    if (v11 && *(v11 + 18) == 2)
    {
      *(v11 + 18) = (v9 << 16) | 2;
    }

    v12 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x47u);
    if (v12 && *(v12 + 18) == 2)
    {
      *(v12 + 18) = (v9 << 16) | 2;
    }

    a1 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x48u);
    if (a1 && *(a1 + 18) == 2)
    {
      *(a1 + 18) = (v9 << 16) | 2;
    }
  }

  md::MapEngineMode::applyMapDataTypeSettings(a1, a2, a3);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MainPassItem>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MainPassItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[70];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12MainPassItemEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FED0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MainPassItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FED0;
  a2[1] = v2;
  return result;
}

unint64_t md::DaVinciGroundTileResourceFetcher::downloadZoomRange(md::DaVinciGroundTileResourceFetcher *this)
{
  if (*(this + 778) != 1)
  {
    return *(this + 94);
  }

  if (*(this + 760) != 1)
  {
    return 0xB00000000;
  }

  LODWORD(v2) = *(this + 189);
  if (v2 >= 0xB)
  {
    v2 = 11;
  }

  else
  {
    v2 = v2;
  }

  return *(this + 188) | (v2 << 32);
}

void ggl::Debug::BasePipelineState::~BasePipelineState(ggl::Debug::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::S2ResourceDataRequester::minRequiredTileSizeForTileSet(md::S2ResourceDataRequester *this)
{
  v2 = (*(**(this + 1) + 32))(*(this + 1), *(this + 12));
  if (v2 & 0x100000000) != 0 && (v3 = v2, v4 = (*(**(this + 1) + 24))(*(this + 1), *(this + 12)), (v5))
  {
    v6 = v4;
    if (*(this + 32) == 1)
    {
      v6 = *(this + 7);
    }

    v7 = exp2(-(v4 - v6)) * v3;
    v8 = v7 & 0xFFFFFF00;
    v9 = v7;
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  return v10 | v8 | v9;
}

char *ecs2::Runtime::_entities<md::ita::SetupRenderStatesForDecals,md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::NeedsRenderState const&>(uint64_t a1, uint64_t **a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
  v42 = v4;
  *&v43 = v5;
  *(&v43 + 1) = v6;
  v7 = 1;
  v8 = v4;
  v9 = &v42;
  do
  {
    if ((&v42)[v7][5] - (&v42)[v7][4] < (v8[5] - v8[4]))
    {
      v8 = (&v42)[v7];
      v9 = &(&v42)[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = (*v9)[4];
  v10 = (*v9)[5];
  v33 = v11;
  v34 = v10;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v32 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v33, *v11, v11[1]))
  {
    v11 += 2;
    v33 = v11;
    v10 = v32;
  }

  v12 = v33;
  if (v33 == v32)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v34;
    v17 = a2;
    do
    {
      v18 = result;
      v19 = v14;
      *(v14 + 104 * *result + 24) = *v12;
      v20 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v21 = *(v20 + 1776);
      if (!v21)
      {
        v22 = v20;
        v39 = (*(v20 + 1774) + 1704);
        v42 = &v39;
        v20 = md::add2(v20 + 776, &v42, 1);
        v21 = v20;
        *(v22 + 1776) = v20;
      }

      v23 = ecs2::ExecutionTaskContext::currentEntity(v20);
      v39 = &off_1F2A52BD8;
      *&v40 = v21;
      *(&v40 + 1) = v23;
      v41 = &v39;
      v44 = &v42;
      v42 = &off_1F2A52BD8;
      v43 = v40;
      HIDWORD(v43) = 0;
      v45 = 0;
      ecs2::Runtime::queueCommand();
      if (v45 != -1)
      {
        (off_1F2A0DFA0[v45])(&v38, &v42);
      }

      v45 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v39);
      ++v15;
      v24 = v12 + 2;
      a2 = v17;
      while (1)
      {
        v12 = v24;
        v33 = v24;
        if (v24 == v16)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v33, *v24, v24[1]);
        v24 = v12 + 2;
        if (v25)
        {
          v26 = v12;
          goto LABEL_20;
        }
      }

      v26 = v16;
LABEL_20:
      v14 = v19;
      result = v18;
    }

    while (v26 != v32);
  }

  *(v14 + 104 * *result + 24) = -65536;
  v27 = v14 + 104 * *result;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v15;
  v29 = v14 + 104 * *result;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 > 0xF)
  {
    *v30 = 0;
  }

  return result;
}

void md::LegacyTrafficRenderLayer::~LegacyTrafficRenderLayer(md::LegacyTrafficRenderLayer *this)
{
  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2EA78;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::~CartographicTiledRenderLayer(a1);
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForDecals>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStatesForDecals>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupRenderStatesForDecals,md::ls::IsDecal const&,md::ls::RenderItemID const&,md::ls::NeedsRenderState const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B8B0;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::MapTileDataRenderable<md::TrafficTileData>>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> *,md::MapTileDataRenderable<md::TrafficTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t ecs2::Runtime::_entities<md::ita::SetupRenderStates,md::ls::NeedsNewRenderState const&>(uint64_t a1, uint64_t **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsNewRenderState>(a1);
  v4 = *(v3 + 32);
  v19 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v17 = v6;
  v18 = result;
  if (v4 == v6)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = (*(*(v3 + 56) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) - (v7 & 0x3F) + 8 * (v7 & 0x3F));
      *(v19 + 104 * *v18 + 24) = *v4;
      v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v21 = md::DaVinciRenderStateCache::renderState((v9[1774] + 2568), *v8, v8[1], v8[2], v8[3], v8[4], v8[5], v8[6]);
      v24 = &v21;
      v10 = md::add2((v9 + 97), &v24, 0);
      v11 = ecs2::ExecutionTaskContext::currentEntity(v10);
      v21 = &off_1F2A52BD8;
      *&v22 = v10;
      *(&v22 + 1) = v11;
      v23 = &v21;
      v26 = &v24;
      v24 = &off_1F2A52BD8;
      v25 = v22;
      HIDWORD(v25) = 0;
      v27 = 0;
      ecs2::Runtime::queueCommand();
      if (v27 != -1)
      {
        (off_1F2A0DFA0[v27])(&v20, &v24);
      }

      v27 = -1;
      result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v21);
      ++v7;
      ++v4;
    }

    while (v4 != v17);
  }

  *(v19 + 104 * *v18 + 24) = -65536;
  v12 = v19 + 104 * *v18;
  v13 = *(v12 + 92);
  *(v12 + 92) = v13 + 1;
  *(v12 + 4 * v13 + 28) = v7;
  v14 = v19 + 104 * *v18;
  v16 = *(v14 + 92);
  v15 = (v14 + 92);
  if (v16 >= 0x10)
  {
    *v15 = 0;
  }

  return result;
}

__n128 md::DaVinciBaseMapEngineMode::didBecomeActive(__n128 *a1, md::MapEngine *this, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  while (v8 != v9)
  {
    if (*v8 == 37)
    {
      if (v8 != v9)
      {
        v10 = *(v8 + 8) != 0;
        goto LABEL_8;
      }

      break;
    }

    v8 += 16;
  }

  v10 = 0;
LABEL_8:
  v11 = this + 40960;
  md::MapEngine::toggleVLR(this, v10);
  v12 = *(a3 + 41672);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48) - v13;
  if (v14 >= 0xF0)
  {
    v15 = v13[29];
    if (v14 >= 0xF8)
    {
      v16 = v13[30];
      if (v14 >= 0x101)
      {
        v17 = v13[32];
        if (!v15)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
    if (!v15)
    {
LABEL_14:
      if (v16)
      {
        md::DaVinciGroundRenderLayer::setSupportsVKM(v16, a1[40].n128_u8[0]);
      }

      if (v17)
      {
        md::DaVinciGroundRenderLayer::setSupportsVKM(v17, a1[40].n128_u8[0]);
      }

      goto LABEL_18;
    }

LABEL_13:
    md::DaVinciGroundRenderLayer::setSupportsVKM(v15, a1[40].n128_u8[0]);
    goto LABEL_14;
  }

LABEL_18:
  v18 = *(v11 + 121);
  v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v18 + 16), 0x87BA2765F9E38E05);
  if (v19)
  {
    v20 = v19[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v18 + 16), 0xAF46DE79C836B0D8);
  if (v21)
  {
    if (v20)
    {
      v22 = v21[5];
      if (v22)
      {
        v23 = *a4;
        v24 = a4[1];
        while (v23 != v24)
        {
          if (*v23 == 6)
          {
            if (v23 != v24)
            {
              v25 = 2 * (*(v23 + 8) != 0);
              goto LABEL_33;
            }

            break;
          }

          v23 += 16;
        }

        v25 = 0;
LABEL_33:
        v26 = +[VKPlatform sharedPlatform];
        v27 = [v26 tilePrefetchNumberOfScreens];
        v28 = *a4;
        v29 = a4[1];
        while (v28 != v29)
        {
          if (*v28 == 7)
          {
            if (v28 != v29 && *(v28 + 8))
            {
              v30 = 0;
              v31 = 1000;
              goto LABEL_41;
            }

            break;
          }

          v28 += 16;
        }

        v31 = 0;
        v30 = 1;
LABEL_41:
        *(v22 + 328) = v25;
        if (*(v11 + 134) == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = a1[38].n128_u64[1];
        }

        *(v20 + 224) = v32;
        if (*(v20 + 240) != v31 || *(v20 + 252) != v27)
        {
          *(v20 + 240) = v31;
          *(v20 + 252) = v27;
          if (v30)
          {
            *(v20 + 256) = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        md::TileSelectionLogic::configurationDidChange(v22);

        v18 = *(v11 + 121);
      }
    }
  }

  v33 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v18 + 16), 0x2FED70A4459DFCA1uLL);
  if (v33)
  {
    v34 = v33[5];
    if (v34)
    {
      if (*(v34 + 168) != 6)
      {
        md::StyleLogic::setMapMode(v33[5], 0, 0.0);
      }

      md::StyleLogic::setGroundMode(v34, 1);
      v18 = *(v11 + 121);
    }
  }

  v35 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v18 + 16), 0xDAD5CEE0DC5FF509);
  if (v35)
  {
    v36 = v35[5];
    if (v36)
    {
      *(v36 + 168) = 0;
    }
  }

  v37 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v18 + 16), 0x91E65CD7F1A7A7FALL);
  if (v37)
  {
    v38 = v37[5];
    if (v38)
    {
      *(v38 + 200) = 1;
    }
  }

  v39 = *(v12 + 40);
  if (*(v12 + 48) == v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = *v39;
  }

  result = a1[39];
  if (*(v40 + 72))
  {
    *(v40 + 56) = a1[39];
  }

  else
  {
    *(v40 + 56) = result;
    *(v40 + 72) = 1;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsNewRenderState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata >= 0x200)
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

_OWORD *std::__function::__func<ggl::MetalClearItemProcessor::createClearMesh(ggl::ProcessClearItemContext &)::$_0,std::allocator<ggl::MetalClearItemProcessor::createClearMesh(ggl::ProcessClearItemContext &)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::Clear::ClearData>::DataAccess(v11, **(a1 + 8), *a2);
  v4 = v14;
  *v14 = xmmword_1B33B0F50;
  v4[1] = xmmword_1B33B0F40;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v7, **(a1 + 16), 0, 6, 1, 0, v3);
  v5 = v10;
  *v10 = 0x2000200010000;
  *(v5 + 2) = 3;
  if (v10)
  {
    ggl::ResourceAccessor::_endAccess(v10, v7[0], v7[1], v7[2], v7[3], v8, v9);
  }

  result = v14;
  if (v14)
  {
    return ggl::ResourceAccessor::_endAccess(v14, v11[0], v11[1], v11[2], v11[3], v12, v13);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> *,md::MapTileDataRenderable<md::TrafficTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ggl::DataAccess<ggl::Clear::ClearData>::DataAccess(void *a1, uint64_t a2, uint64_t a3)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v7, a3, a2, 0, 4, 1, 0);
  ggl::BufferMemory::operator=(a1, v7);
  ggl::BufferMemory::~BufferMemory(v7);
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsNewRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsNewRenderState>();
    *algn_1EB83D058 = 0x56D66E00519BD989;
    qword_1EB83D060 = "md::ls::NeedsNewRenderState]";
    qword_1EB83D068 = 27;
  }
}

void md::COverlayRenderLayer::~COverlayRenderLayer(md::COverlayRenderLayer *this)
{
  *this = &unk_1F2A18EE0;
  v2 = *(this + 45);
  if (v2)
  {
    std::unique_ptr<ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>>::reset[abi:nn200100]((v2 + 448), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Textured::PoleTexturedBlendPipelineSetup>>::reset[abi:nn200100]((v2 + 440), 0);
    v3 = *(v2 + 432);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 416);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = *(v2 + 400);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 384);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 368);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(v2 + 352);
    *(v2 + 352) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 344), 0);
    std::unique_ptr<md::MaskingOverlayRenderable::SharedResources>::reset[abi:nn200100]((v2 + 336), 0);
    std::unique_ptr<md::PolygonOverlayRenderable::SharedResources>::reset[abi:nn200100]((v2 + 328), 0);
    std::unique_ptr<md::CircleOverlayRenderable::SharedResources>::reset[abi:nn200100]((v2 + 320), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>>::reset[abi:nn200100]((v2 + 312), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>>::reset[abi:nn200100]((v2 + 304), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::Textured::SRGBBlendPos4DUVPipelineSetup>>::reset[abi:nn200100]((v2 + 296), 0);
    v9 = *(v2 + 288);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 272);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = *(v2 + 256);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(v2 + 240);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 224);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 208);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 192);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = *(v2 + 176);
    *(v2 + 176) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 168);
    *(v2 + 168) = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 160), 0);
    v18 = *(v2 + 152);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100]((v2 + 136), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 128), 0);
    v19 = *(v2 + 120);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v20 = *(v2 + 104);
    *(v2 + 104) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(v2 + 96);
    *(v2 + 96) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(v2 + 88);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v23)
    {
      MEMORY[0x1B8C62190](v23, 0x1000C4049ECCB0CLL);
    }

    v24 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    for (i = 56; i != 40; i -= 8)
    {
      v26 = *(v2 + i);
      *(v2 + i) = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    do
    {
      v27 = *(v2 + i);
      *(v2 + i) = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      i -= 8;
    }

    while (i != -8);
    MEMORY[0x1B8C62190](v2, 0x20C4006C4E51DLL);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::~__hash_table(this + 440);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 400);
  v28 = *(this + 48);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  std::unique_ptr<md::PolylineOverlaySharedResources>::reset[abi:nn200100](this + 46, 0);

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::OverlayTileData>>::~CartographicTiledRenderLayer(this);
}

{
  md::COverlayRenderLayer::~COverlayRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::MetalResourceAccessor::beginAccess(uint64_t a1, const ggl::Buffer **this, uint64_t a3, uint64_t a4, int a5, int a6)
{
  ggl::BufferData::prepareBufferForDevice(this, *(a1 + 8), a6 == 1);
  v12 = *(this + 16);
  v13 = ~v12 & 6;
  v14 = v12 & 1;
  if (v13)
  {
    v15 = a6 == 1;
  }

  else
  {
    v15 = 0;
  }

  if (!v15 || v14 == 0)
  {
    if (a4 == a3)
    {
      return 0;
    }

    else
    {
      return this[9] + a3;
    }
  }

  else
  {
    v18 = this[5];
    v19 = this[3];
    if (a5 == 3 || (v20 = *(v19 + 3)) == 0)
    {
      v20 = ggl::MetalResourceManager::newBuffer(*(*(a1 + 8) + 80), v19);
    }

    return v18 + a3 + [v20[4] contents];
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupRenderStates>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupRenderStates>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupRenderStates,md::ls::NeedsNewRenderState const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ggl::BufferData::prepareBufferForDevice(ggl::BufferData *this, ggl::Device *a2, char a3)
{
  std::mutex::lock(this + 2);
  if (*(this + 3))
  {
    goto LABEL_28;
  }

  v7 = *(a2 + 24);
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    if (!v7)
    {
      if (*(this + 18))
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }

      *(this + 28) = v8;
      goto LABEL_13;
    }

    v8 = 0;
  }

  *(this + 28) = v8;
  if (v7 == 1)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_23;
  }

  if (v7)
  {
    goto LABEL_25;
  }

LABEL_13:
  v9 = *(this + 17);
  if (v9 > 1)
  {
    if (v9 == 2 || v9 == 3)
    {
      v10 = 16;
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (*(this + 17))
  {
    if (v9 == 1)
    {
      v10 = 4;
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v10 = 16;
  if (*(a2 + 23))
  {
    v10 = 1;
  }

LABEL_23:
  if (v8 >= 2)
  {
    v11 = (*(this + 6) + v10 + ~*(this + 5)) & -v10;
    goto LABEL_26;
  }

LABEL_25:
  v11 = *(this + 6) - *(this + 5);
LABEL_26:
  *(this + 15) = v11;
  v12 = v11 * v8;
  v13 = ggl::zone_mallocator::instance(v6);
  geo::read_write_lock::read_lock((v13 + 32));
  v14 = malloc_type_zone_malloc(*v13, 0x50uLL, 0x108104014AC8D4BuLL);
  atomic_fetch_add((v13 + 24), 1u);
  geo::read_write_lock::unlock((v13 + 32));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = &unk_1F2A5D440;
  v15 = *(this + 17);
  v16 = *(this + 18);
  v14[5] = 0;
  v14[6] = 0;
  *(v14 + 16) = 0;
  v14[7] = 0;
  v14[4] = &unk_1F2A5D420;
  *(v14 + 68) = 0;
  *(v14 + 69) = v15;
  *(v14 + 35) = v16;
  v14[9] = v12;
  *&v17 = v14 + 4;
  *(&v17 + 1) = v14;
  v18 = *(this + 4);
  *(this + 24) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

LABEL_28:

  std::mutex::unlock(this + 2);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsNewRenderState>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsNewRenderState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[477];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19NeedsNewRenderStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29FAF50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19NeedsNewRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FAF50;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *>(v2, v1);
  }
}

void *ggl::MetalResourceManager::newBuffer(ggl::MetalResourceManager *this, const ggl::Buffer *a2)
{
  if (*(a2 + 39) == 1)
  {
    v5 = 32;
  }

  else
  {
    v5 = 1;
  }

  v6 = [*(*(this + 32) + 104) newBufferWithLength:*(a2 + 5) options:v5];
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1B2754000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Metal returned null buffer.", v12, 2u);
    }

    v11 = abort_with_reason();

    _Unwind_Resume(v11);
  }

  v7 = v6;
  v8 = ggl::zone_mallocator::instance(v6);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, 0x28uLL);
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  objc_storeStrong(v9 + 4, v7);
  ggl::RenderDataHolder::setRenderResource(a2, this, v9);
  *(v9 + 3) = *(a2 + 5);
  atomic_fetch_add(this + 78, 1u);
  ggl::ResourceManager::_addResourceStat(this, "Buffer", 0x36F6F5C400000006uLL, *(v9 + 3));

  return v9;
}

gdc::Camera *gdc::Camera::Camera(gdc::Camera *this)
{
  *(this + 8) = vdupq_n_s64(0xC00921FB54442D18);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  gdc::CameraLimits::CameraLimits(this + 8);
  gdc::CameraRegionRestriction::CameraRegionRestriction((this + 136));
  *(this + 336) = 0;
  *(this + 344) = 0;
  *(this + 352) = 0;
  *(this + 360) = 0;
  gdc::Canvas::Canvas((this + 368));
  *(this + 29) = xmmword_1B33B1300;
  *(this + 60) = 0;
  *(this + 61) = 0;
  return this;
}

void *ggl::MetalResourceAccessor::endAccess(void *result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (a6)
  {
    v13 = *(a3 + 16);
    v14 = ~v13 & 6;
    v15 = v13 & 1;
    v16 = v14 && a7 == 1;
    if (!v16 || v15 == 0)
    {
      v25 = v10;
      v26 = v9;
      v27 = v8;
      v28 = v7;
      v21 = *(a3 + 40);
      v22 = *(a3 + 24);
      if (a6 == 3 || (v23 = *(v22 + 3)) == 0)
      {
        v23 = ggl::MetalResourceManager::newBuffer(*(result[1] + 80), v22);
      }

      v24 = ([v23[4] contents] + a4 + v21);

      return memcpy(v24, a2, a5 - a4);
    }
  }

  return result;
}

char *ecs2::Runtime::_entities<md::ita::SetupPredefinedRenderState,md::ls::PredefinedRenderState const&,md::ls::RenderItemID const&,md::ls::NeedsRenderState const&,md::ls::FlyoverInstance const*>(uint64_t a1, uint64_t **a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(a1);
  v51 = v3;
  *&v52 = v4;
  v7 = 1;
  v8 = v3;
  v9 = &v51;
  *(&v52 + 1) = v5;
  do
  {
    if ((&v51)[v7][5] - (&v51)[v7][4] < (v8[5] - v8[4]))
    {
      v8 = (&v51)[v7];
      v9 = &(&v51)[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = (*v9)[4];
  v10 = (*v9)[5];
  v41 = v11;
  v42 = v10;
  v43 = v3;
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v40 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v11, v11[1]))
  {
    v11 += 2;
    v41 = v11;
    v10 = v40;
  }

  v12 = v41;
  if (v41 != v40)
  {
    v39 = v43;
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v42;
    v17 = a2;
    while (1)
    {
      v18 = *(*(*(v39 + 8) + 8 * (v12[1] >> 6)) + 4 * (v12[1] & 0x3FLL) + 2);
      v19 = v18 & 0x3F;
      v20 = *(*(v39 + 56) + ((v18 >> 3) & 0x1FF8));
      v21 = result;
      v22 = v14;
      *(v14 + 104 * *result + 24) = *v12;
      v23 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v17);
      v24 = v23 + 1777;
      v25 = *(v20 + v19);
      v26 = v23[v25 + 1777];
      if (v26)
      {
        goto LABEL_21;
      }

      v27 = v23;
      switch(v25)
      {
        case 1:
          v28 = 1;
          break;
        case 3:
          v28 = 3;
          break;
        case 2:
          v28 = 2;
          break;
        default:
          v47 = 0;
          goto LABEL_20;
      }

      v47 = v28;
LABEL_20:
      v48 = md::FlyoverRenderResources::renderState(v23[1775], &v47);
      v51 = &v48;
      v23 = md::add2((v27 + 97), &v51, 1);
      v26 = v23;
      v24[v25] = v23;
      v17 = a2;
LABEL_21:
      v29 = ecs2::ExecutionTaskContext::currentEntity(v23);
      v48 = &off_1F2A52BD8;
      *&v49 = v26;
      *(&v49 + 1) = v29;
      v50 = &v48;
      v53 = &v51;
      v51 = &off_1F2A52BD8;
      v52 = v49;
      HIDWORD(v52) = 0;
      v54 = 0;
      ecs2::Runtime::queueCommand();
      if (v54 != -1)
      {
        (off_1F2A0DFA0[v54])(&v47, &v51);
      }

      v54 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v48);
      ++v15;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v16)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_28;
        }
      }

      v32 = v16;
LABEL_28:
      v14 = v22;
      result = v21;
      if (v32 == v40)
      {
        goto LABEL_31;
      }
    }
  }

  _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v15 = 0;
LABEL_31:
  *(v14 + 104 * *result + 24) = -65536;
  v33 = v14 + 104 * *result;
  v34 = *(v33 + 92);
  *(v33 + 92) = v34 + 1;
  *(v33 + 4 * v34 + 28) = v15;
  v35 = v14 + 104 * *result;
  v37 = *(v35 + 92);
  v36 = (v35 + 92);
  if (v37 > 0xF)
  {
    *v36 = 0;
  }

  return result;
}

void *gdc::CameraLimits::CameraLimits(void *this)
{
  *this = 0;
  this[1] = 0;
  this[7] = 0;
  this[8] = 0;
  this[6] = 0;
  return this;
}

double gdc::Canvas::Canvas(gdc::Canvas *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  return result;
}

int64x2_t gdc::CameraRegionRestriction::CameraRegionRestriction(int64x2_t *this)
{
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v2 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *this = result;
  this[1] = v2;
  this[2] = result;
  this[3] = v2;
  this[4] = result;
  this[5] = v2;
  this[6] = result;
  this[7] = v2;
  this[8] = result;
  this[9] = v2;
  this[10] = result;
  this[11] = v2;
  this[12].i8[0] = 1;
  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupPredefinedRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupPredefinedRenderState>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupPredefinedRenderState,md::ls::PredefinedRenderState const&,md::ls::RenderItemID const&,md::ls::NeedsRenderState const&,md::ls::FlyoverInstance const*>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::PoleTexturedBlendPipelineSetup *>(v2, v1);
  }
}

void ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Clear::ClearData>::attributesReflection(void)::r = &ggl::Clear::clearDataReflection;
    }

    ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Clear::ClearData>::attributesReflection(void)::r;
    unk_1ED65FDD0 = 1;
  }
}

void ggl::Textured::PoleTexturedBlendPipelineState::~PoleTexturedBlendPipelineState(ggl::Textured::PoleTexturedBlendPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PredefinedRenderState>();
    *algn_1EB83CCA8 = 0xCB8AA7FBA6BCD25CLL;
    qword_1EB83CCB0 = "md::ls::PredefinedRenderState]";
    qword_1EB83CCB8 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PredefinedRenderState>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverInstance>();
    *algn_1EB83D708 = 0x69465F3BE0BF85FBLL;
    qword_1EB83D710 = "md::ls::FlyoverInstance]";
    qword_1EB83D718 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverInstance>(void)::metadata >= 0x200)
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

uint64_t ggl::Clear::ClearMesh::ClearMesh(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection();
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection(void)::r;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 112) = a1 + 120;
  *a1 = &unk_1F2A5CDA0;
  *(a1 + 16) = &unk_1F2A5CDC0;
  *(a1 + 24) = 0;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>((a1 + 64), &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 104);
  *(a1 + 96) = v10;
  *(a1 + 104) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F2A5CD60;
  *(a1 + 16) = &unk_1F2A5CD80;
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiredPipelinePoolID>();
    *algn_1EB83CAD8 = 0xE54E641F7C1F9B89;
    qword_1EB83CAE0 = "md::ls::RequiredPipelinePoolID]";
    qword_1EB83CAE8 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata >= 0x200)
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

char *ecs2::Runtime::_entities<md::ita::DecidePipelineForMainPass,md::ls::RequiredPipelinePoolID &,md::ls::PendingRenderItemSetup const&,md::ls::MainPassItem const&,md::ls::IsDecal const*,md::ls::IsS2 const*,md::ls::IsMercator const*,md::ls::FlyoverInstance const*,md::ls::TextureHandleForType<Flyover::NightTexture> const*>(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IsS2>(v2);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v2);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v2);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v2);
  *&v66 = v3;
  *(&v66 + 1) = v4;
  v11 = 8;
  v12 = v3;
  v13 = &v66;
  *&v67 = v5;
  do
  {
    if (*(*(&v66 + v11) + 40) - *(*(&v66 + v11) + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = *(&v66 + v11);
      v13 = &v66 + v11;
    }

    v11 += 8;
  }

  while (v11 != 24);
  v14 = *(*v13 + 32);
  v15 = *(*v13 + 40);
  *&v66 = v14;
  *(&v66 + 1) = v15;
  *&v67 = v3;
  *(&v67 + 1) = v4;
  *&v68 = v5;
  *(&v68 + 1) = v6;
  *&v69 = v7;
  *(&v69 + 1) = v8;
  *&v70 = v9;
  *(&v70 + 1) = v10;
  while (v14 != v15 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v66, *v14, v14[1]))
  {
    v14 += 2;
    *&v66 = v14;
  }

  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  v16 = v66;
  if (v66 == v15)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    v17 = v61;
    v18 = *(&v62 + 1);
    v19 = v63;
    v20 = v64;
    v59 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = *(&v60 + 1);
    v58 = v21;
    do
    {
      v24 = v16[1];
      v25 = v24 >> 6;
      v26 = v24 & 0x3F;
      v27 = *v16;
      v28 = v18[1];
      v30 = v25 >= (v18[2] - v28) >> 3 || (v29 = *(v28 + 8 * v25)) == 0 || *(v29 + 4 * v26) != v27 || v18[4] + 4 * *(v29 + 4 * v26 + 2) == 0;
      v31 = *(v19 + 8);
      v33 = v25 >= (*(v19 + 16) - v31) >> 3 || (v32 = *(v31 + 8 * v25)) == 0 || *(v32 + 4 * v26) != v27 || *(*(v19 + 56) + ((*(v32 + 4 * v26 + 2) >> 3) & 0x1FF8)) == 0;
      v34 = *(*(&v19 + 1) + 8);
      v36 = v25 >= (*(*(&v19 + 1) + 16) - v34) >> 3 || (v35 = *(v34 + 8 * v25)) == 0 || *(v35 + 4 * v26) != v27 || *(*(&v19 + 1) + 32) + 4 * *(v35 + 4 * v26 + 2) == 0;
      v37 = *(v20 + 8);
      v39 = v25 >= (*(v20 + 16) - v37) >> 3 || (v38 = *(v37 + 8 * v25)) == 0 || *(v38 + 4 * v26) != v27 || *(v20 + 32) + 4 * *(v38 + 4 * v26 + 2) == 0;
      v40 = *(*(&v20 + 1) + 8);
      v42 = v25 >= (*(*(&v20 + 1) + 16) - v40) >> 3 || (v41 = *(v40 + 8 * v25)) == 0 || *(v41 + 4 * v26) != v27 || *(*(*(&v20 + 1) + 56) + ((*(v41 + 4 * v26 + 2) >> 3) & 0x1FF8)) == 0;
      v43 = *(*(*(v17 + 8) + 8 * v25) + 4 * v26 + 2);
      v44 = *(*(v17 + 56) + ((v43 >> 3) & 0x1FF8));
      *(v59 + 104 * *v21 + 24) = *v16;
      if (v30)
      {
        if (!v39)
        {
          if (v42)
          {
            v45 = 8;
          }

          else
          {
            v45 = 10;
          }

          if (v42)
          {
            v46 = 9;
          }

          else
          {
            v46 = 11;
          }

          if (v33)
          {
            v36 = v45;
          }

          else
          {
            v36 = v46;
          }
        }
      }

      else
      {
        v36 = 5;
      }

      *(v44 + (v43 & 0x3F)) = v36;
      ++v22;
      v47 = v16 + 2;
      while (1)
      {
        v16 = v47;
        *&v60 = v47;
        if (v47 == v23)
        {
          break;
        }

        v48 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v60, *v47, v47[1]);
        v47 = v16 + 2;
        if (v48)
        {
          v49 = v16;
          goto LABEL_53;
        }
      }

      v49 = v23;
LABEL_53:
      v21 = v58;
    }

    while (v49 != v15);
    v50 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>();
    result = v58;
    v52 = v59;
    *(v50 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiredPipelinePoolID>(void)::metadata) = *(v50 + 4096);
  }

  *(v52 + 104 * *result + 24) = -65536;
  v53 = v52 + 104 * *result;
  v54 = *(v53 + 92);
  *(v53 + 92) = v54 + 1;
  *(v53 + 4 * v54 + 28) = v22;
  v55 = v52 + 104 * *result;
  v57 = *(v55 + 92);
  v56 = (v55 + 92);
  if (v57 >= 0x10)
  {
    *v56 = 0;
  }

  return result;
}

void ggl::Textured::PoleTexturedMesh::~PoleTexturedMesh(ggl::Textured::PoleTexturedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::BufferData::vendLoadItem(int64x2_t *this, ggl::Device *a2, ggl::Device *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 3))
  {
    ggl::BufferData::prepareBufferForDevice(a2, a3, 0);
  }

  if (*(a2 + 18) == 1 && *(a2 + 24) != a4 && *(a2 + 28))
  {
    *(a2 + 24) = a4;
    *(a2 + 56) = *(a2 + 40);
  }

  if (*(a2 + 28) <= 1u)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a2 + 56);
  v11 = vaddq_s64(vdupq_n_s64(v9 * *(a2 + 15)), v10);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v12 = *(a2 + 3);
  v13 = *(a2 + 9) + v10.i64[0];
  v16 = 0;
  this->i64[0] = v13;
  this->i64[1] = v12;
  this[1] = v11;
  std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](this[2].i64, v15);
  return std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v15);
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::DecidePipelineForMainPass>,std::allocator<ecs2::ForwardToExecute<md::ita::DecidePipelineForMainPass>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  result = ecs2::Runtime::_entities<md::ita::DecidePipelineForMainPass,md::ls::RequiredPipelinePoolID &,md::ls::PendingRenderItemSetup const&,md::ls::MainPassItem const&,md::ls::IsDecal const*,md::ls::IsS2 const*,md::ls::IsMercator const*,md::ls::FlyoverInstance const*,md::ls::TextureHandleForType<Flyover::NightTexture> const*>(a2);
  *(a1 + 8) = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x41D4E9297E100630)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

uint64_t std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiredPipelinePoolID>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiredPipelinePoolID>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[413];
}

ggl::MetalResourceManager *ggl::MetalResourceManager::upload(ggl::MetalResourceManager *result, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24) == *(a2 + 16))
  {
    return result;
  }

  v5 = *(a2 + 8);
  v6 = *(v5 + 3);
  v7 = v6;
  if (!v6)
  {
    result = ggl::MetalResourceManager::newBuffer(result, v5);
    if (!result)
    {
      return result;
    }

    v7 = result;
    v6 = *(*(a2 + 8) + 24);
  }

  if (v6 == 3735927469)
  {
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v8 = **(a3 + 200);
      v9 = 136315138;
      v10 = v8;
      _os_log_fault_impl(&dword_1B2754000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Trying to upload a stale buffer. Name : %s", &v9, 0xCu);
    }

    goto LABEL_12;
  }

  if (a3 && !*(v7 + 4))
  {
    goto LABEL_10;
  }

LABEL_12:
  result = *(v7 + 4);
  if (result)
  {
    memcpy(([(ggl::MetalResourceManager *)result contents]+ *(a2 + 16)), *a2, *(a2 + 24) - *(a2 + 16));
    result = *(a2 + 56);
    if (result)
    {
      return (*(*result + 48))(result, a2);
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Textured::PoleTextured>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Textured::PoleTextured>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22RequiredPipelinePoolIDEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50068;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingRenderItemSetup>();
    *algn_1EB83CB18 = 0x3505F398AD5185B4;
    qword_1EB83CB20 = "md::ls::PendingRenderItemSetup]";
    qword_1EB83CB28 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata >= 0x200)
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

void *ggl::FragmentedPool<ggl::MaskingOverlay::MaskingPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::MaskingOverlay::MaskingPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::MaskingOverlay::MaskingPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22RequiredPipelinePoolIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50068;
  a2[1] = v2;
  return result;
}

void ggl::MaskingOverlay::MaskingPipelineState::~MaskingPipelineState(ggl::MaskingOverlay::MaskingPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingRenderItemSetup>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingRenderItemSetup>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[417];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22PendingRenderItemSetupEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FE68;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *ggl::FragmentedPool<ggl::MaskingOverlay::FillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::MaskingOverlay::FillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::MaskingOverlay::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22PendingRenderItemSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FE68;
  a2[1] = v2;
  return result;
}

void *geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A44148;
  a1[1] = v3;
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsS2>();
    *algn_1EB83B968 = 0xE1A4D8CDA8432F0;
    qword_1EB83B970 = "md::ls::IsS2]";
    qword_1EB83B978 = 12;
  }
}

void std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::FillPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsS2>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsS2>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::cc::CameraCommands>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::cc::CameraCommands>(void)::localId;
    unk_1EB82B570 = 0x530535BFD9375187;
    qword_1EB82B578 = "md::cc::CameraCommands]";
    qword_1EB82B580 = 22;
  }
}

void ggl::MaskingOverlay::FillPipelineState::~FillPipelineState(ggl::MaskingOverlay::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsS2>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsS2>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[227];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::cc::CameraCommands>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
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

uint64_t ggl::Clear::ClearPipelineState::ClearPipelineState(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4, int a5, int a6)
{
  {
    v18 = a5;
    v19 = a6;
    v16 = a3;
    v17 = a4;
    v15 = a2;
    a2 = v15;
    a3 = v16;
    a4 = v17;
    a5 = v18;
    a6 = v19;
    if (v13)
    {
      ggl::Clear::ClearPipelineSetup::typedReflection(v13);
      ggl::Clear::ClearPipelineState::typedReflection(void)::ref = &ggl::Clear::ClearPipelineSetup::typedReflection(void)::ref;
      ggl::ClearShader::typedReflection(v14);
      qword_1EB841D98 = &ggl::ClearShader::typedReflection(void)::ref;
      {
        ggl::Clear::pipelineStateClearPipelineAttributeStructBinding(void)::attr = 0;
        *algn_1EB8412E8 = 0;
        qword_1EB8412F0 = "";
        dword_1EB8412F8 = 0;
        qword_1EB841300 = &ggl::Clear::pipelineStateClearPipelineAttributeBinding_0(void)::attr;
        unk_1EB841308 = 1;
      }

      qword_1EB841DA0 = &ggl::Clear::pipelineStateClearPipelineAttributeStructBinding(void)::attr;
      *algn_1EB841DA8 = 1;
      qword_1EB841DB0 = 0;
      unk_1EB841DB8 = 0;
      qword_1EB841DC0 = &ggl::Clear::pipelineStateClearPipelineDeviceStructBinding(void)::ref;
      unk_1EB841DC8 = 0;
      {
        ggl::Clear::pipelineStateClearPipelineConstantStructBinding(void)::ref = 0;
        *algn_1EB841318 = 0;
        qword_1EB841320 = "clearConstants";
        dword_1EB841328 = 3;
        qword_1EB841330 = &ggl::Clear::pipelineStateClearPipelineConstantClearConstantsBinding(void)::reflection;
        unk_1EB841338 = 2;
      }

      qword_1EB841DD0 = &ggl::Clear::pipelineStateClearPipelineConstantStructBinding(void)::ref;
      *algn_1EB841DD8 = 1;
      a5 = v18;
      a6 = v19;
      a3 = v16;
      a4 = v17;
      a2 = v15;
    }
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v22 = *a3;
  *&v22[16] = *(a3 + 16);
  *&v22[28] = *(a3 + 28);
  v9 = *(a3 + 44);
  v20 = *a4;
  v21 = a4[1];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F2A5CF68;
  *(a1 + 8) = 0;
  *(a1 + 40) = &ggl::Clear::ClearPipelineState::typedReflection(void)::ref;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = 0; i != 192; i += 48)
  {
    v11 = a1 + i;
    *(v11 + 64) = 0;
    *(v11 + 68) = xmmword_1B33B0760;
    *(v11 + 84) = 0;
    *(v11 + 100) = 0;
    *(v11 + 92) = 0;
  }

  *(a1 + 256) = v20;
  *(a1 + 272) = v21;
  *(a1 + 288) = 0;
  *(a1 + 360) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 368) = a5;
  *(a1 + 372) = a6;
  *(a1 + 376) = 0;
  *(a1 + 378) = 0;
  *(a1 + 76) = *&v22[12];
  *(a1 + 64) = *v22;
  *(a1 + 92) = *&v22[28];
  *(a1 + 108) = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *a1 = &unk_1F2A5CBD0;
  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls4IsS2EEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FBD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2cc14CameraCommandsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2FF40;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls4IsS2EEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FBD0;
  a2[1] = v2;
  return result;
}

void md::PolylineOverlaySharedRenderStates::~PolylineOverlaySharedRenderStates(md::PolylineOverlaySharedRenderStates *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

void *ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::NightTexture>>();
    *algn_1EB83CDA8 = 0xD49B968135FE1A73;
    qword_1EB83CDB0 = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    qword_1EB83CDB8 = 51;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata >= 0x200)
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

void ggl::Clear::ClearPipelineSetup::typedReflection(ggl::Clear::ClearPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection();
    ggl::Clear::ClearPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::Clear::ClearData>::typedReflection(void)::r;
    unk_1ED6600D0 = &ggl::Clear::pipelineDataClearPipelineDeviceStructs(void)::ref;
    qword_1ED6600D8 = 0;
    {
      ggl::Clear::pipelineDataClearPipelineConstantStructs(void)::ref = ggl::Clear::ClearConstants::reflection(void)::reflection;
    }

    qword_1ED6600E0 = &ggl::Clear::pipelineDataClearPipelineConstantStructs(void)::ref;
    *algn_1ED6600E8 = xmmword_1B33B09D0;
  }
}

void std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::Runtime::_entities<md::ita::DetermineDataIDsNeeded,md::ls::PendingRenderItemSetup const&,md::ls::RequiredPipelinePoolID const&>(uint64_t a1, uint64_t *a2)
{
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(a1);
  ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v32, v4, v5);
  v29 = v32[0];
  v30 = v32[1];
  v6 = v34;
  v31 = v33;
  v7 = *&v32[0];
  if (*&v32[0] != v34)
  {
    v8 = *(&v30 + 1);
    v9 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v11 = result;
    v12 = 0;
    v13 = *(&v29 + 1);
    while (1)
    {
      v14 = *(*(*(v8 + 8) + ((v7[1] >> 3) & 0x1FF8)) + 4 * (v7[1] & 0x3FLL) + 2);
      v15 = v14 & 0x3F;
      v16 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8));
      *(v9 + 104 * *v11 + 24) = *v7;
      LODWORD(v16) = *(v16 + v15);
      v17 = v16 >= 8;
      v18 = v16 - 8;
      if (v17)
      {
        if (v18 >= 4)
        {
          goto LABEL_8;
        }

        Flyover::GetDataIDs(result);
        v20 = &Flyover::GetDataIDs(void)::kDataIDs;
      }

      else
      {
        DaVinci::GetDataIDs(result);
        v20 = &DaVinci::GetDataIDs(void)::kDataIDs;
      }

      v21 = *a2;
      v22 = ecs2::ExecutionTaskContext::currentEntity(v19);
      result = ecs2::addComponent<md::ls::DataIDSetToUse>(v21, v22, v20);
LABEL_8:
      ++v12;
      v23 = v7 + 2;
      do
      {
        v7 = v23;
        *&v29 = v23;
        if (v23 == v13)
        {
          break;
        }

        result = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v29, *v23, v23[1]);
        v23 = v7 + 2;
      }

      while (!result);
      if (v7 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v11 = result;
  v12 = 0;
LABEL_14:
  *(v9 + 104 * *v11 + 24) = -65536;
  v24 = v9 + 104 * *v11;
  v25 = *(v24 + 92);
  *(v24 + 92) = v25 + 1;
  *(v24 + 4 * v25 + 28) = v12;
  v26 = v9 + 104 * *v11;
  v28 = *(v26 + 92);
  v27 = (v26 + 92);
  if (v28 > 0xF)
  {
    *v27 = 0;
  }

  return result;
}

void *ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A44148;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::DetermineDataIDsNeeded>,std::allocator<ecs2::ForwardToExecute<md::ita::DetermineDataIDsNeeded>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::DetermineDataIDsNeeded,md::ls::PendingRenderItemSetup const&,md::ls::RequiredPipelinePoolID const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  return result;
}

void std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

char *ecs2::Runtime::_entities<md::ita::CreatePipelines,md::ls::PendingRenderItemSetup const&,md::ls::RequiredPipelinePoolID const&>(uint64_t a1, uint64_t **a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(a1);
  ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v103, v3, v4);
  v100 = v103[0];
  v101 = v103[1];
  v102 = v104;
  v5 = *&v103[0];
  v96 = v105;
  if (*&v103[0] != v105)
  {
    v6 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v8 = 0;
    v95 = *(&v101 + 1);
    v93 = result;
    v94 = v6;
    while (1)
    {
      v98 = v8;
      v9 = *(*(*(v95 + 8) + ((v5[1] >> 3) & 0x1FF8)) + 4 * (v5[1] & 0x3FLL) + 2);
      v10 = v9 & 0x3F;
      v11 = *(*(v95 + 56) + ((v9 >> 3) & 0x1FF8));
      *(v6 + 104 * *result + 24) = *v5;
      v12 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v13 = v12;
      v14 = *(v11 + v10);
      if (v14 < 8)
      {
        break;
      }

      if ((v14 - 8) < 4)
      {
        Flyover::GetDataIDs(v12);
        v15 = &Flyover::GetDataIDs(void)::kDataIDs;
        goto LABEL_7;
      }

      v15 = 0;
LABEL_8:
      v16 = 0;
      if (v14 > 5)
      {
        if (v14 > 8)
        {
          switch(v14)
          {
            case 9:
              v17 = *(*(v13[1775] + 1144) + 88);
              if (!v17)
              {
                goto LABEL_135;
              }

              break;
            case 10:
              v17 = *(*(v13[1775] + 1168) + 88);
              if (!v17)
              {
LABEL_135:
                std::__throw_bad_function_call[abi:nn200100]();
                goto LABEL_136;
              }

              break;
            case 11:
              v17 = *(*(v13[1775] + 1192) + 88);
              if (!v17)
              {
                goto LABEL_135;
              }

              break;
            default:
              goto LABEL_44;
          }
        }

        else if (v14 == 6)
        {
          v17 = *(*(v13[1774] + 1576) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

        else if (v14 == 7)
        {
          v17 = *(*(v13[1774] + 1584) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v17 = *(*(v13[1775] + 1120) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_43;
      }

      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v17 = *(*(v13[1774] + 1240) + 88);
            if (!v17)
            {
              goto LABEL_135;
            }
          }

          else
          {
            v17 = *(*(v13[1774] + 1248) + 88);
            if (!v17)
            {
              goto LABEL_135;
            }
          }
        }

        else
        {
          v17 = *(*(v13[1774] + 1224) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

LABEL_43:
        v16 = (*(*v17 + 48))(v17);
        goto LABEL_44;
      }

      if (v14 != 3)
      {
        if (v14 == 4)
        {
          v17 = *(*(v13[1774] + 1264) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v17 = *(*(v13[1774] + 1272) + 88);
          if (!v17)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_43;
      }

      v18 = *(*(v13[1774] + 1256) + 88);
      if (!v18)
      {
        goto LABEL_135;
      }

      v16 = (*(*v18 + 48))(v18);
      v19 = *(v16 + 13);
      *v19 = 0;
      v19[1] = 0;
      v20 = *(v16 + 13);
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
LABEL_44:
      ggl::PipelineSetup::useResetFlags(v16);
      *v111 = v16;
      *&v111[8] = v15;
      v106 = v16;
      v21 = v13[62];
      v22 = v13[64];
      if (v13[61] == v21)
      {
        v23 = ((v13[65] - v22) >> 3) | 0x100000000;
        v108 = v23;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v13 + 64), &v108);
      }

      else
      {
        v23 = *(v22 + 8 * *(v21 - 8));
        v13[62] = v21 - 8;
      }

      v107 = v23;
      v24 = v23 >> 6;
      v25 = v13[36];
      v26 = v13[37];
      if (v24 >= (v26 - v25) >> 3)
      {
        v27 = v24 + 1;
        v28 = v24 + 1 - ((v26 - v25) >> 3);
        v29 = v13[38];
        if (v28 > (v29 - v26) >> 3)
        {
          v30 = v29 - v25;
          if (v30 >> 2 > v27)
          {
            v27 = v30 >> 2;
          }

          if (v30 >= 0x7FFFFFFFFFFFFFF8)
          {
            v31 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v27;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
        }

        bzero(v13[37], 8 * v28);
        v13[37] = v26 + 8 * v28;
        v25 = v13[36];
      }

      v32 = *(v25 + 8 * v24);
      if (!v32)
      {
        operator new();
      }

      v33 = (v32 + 16 * (v23 & 0x3F));
      if (*v33 == -1 && v33[1] == 0)
      {
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v13 + 39), &v107);
        v36 = ((v13[40] - v13[39]) >> 3) - 1;
        *v33 = HIDWORD(v23);
        v33[1] = v36;
        v35 = ecs2::pool<md::Counter,64ul>::page_at_index(v13 + 42, v36);
        v37 = v36 & 0x3F;
        v38 = (*(v13[42] + 8 * v35) + 24 * v37);
        *v38 = vdupq_n_s64(1uLL);
        v38[1].i16[0] = 1;
        v39 = v36 >> 6;
        v41 = v13[48];
        v40 = v13[49];
        v42 = v40 - v41;
        v97 = v37;
        if (v36 >> 6 >= (v40 - v41) >> 3)
        {
          v43 = v39 + 1;
          v44 = v39 + 1 - (v42 >> 3);
          v45 = v13[50];
          if (v44 > (v45 - v40) >> 3)
          {
            v46 = v45 - v41;
            v47 = (v45 - v41) >> 2;
            if (v47 <= v43)
            {
              v47 = v39 + 1;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFF8)
            {
              v48 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v47;
            }

            if (!(v48 >> 61))
            {
              operator new();
            }

            goto LABEL_136;
          }

          v49 = 0;
          v50 = (v44 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v51 = vdupq_n_s64(v50);
          do
          {
            v52 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(vdupq_n_s64(v49), xmmword_1B33B0560)));
            if (v52.i8[0])
            {
              *(v40 + 8 * v49) = 0;
            }

            if (v52.i8[4])
            {
              *(v40 + 8 * v49 + 8) = 0;
            }

            v49 += 2;
          }

          while (v50 - ((v44 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v49);
          v13[49] = v40 + 8 * v44;
          v53 = v13[51];
          v54 = v13[52];
          v55 = (v54 - v53) >> 4;
          if (v55 <= v39)
          {
            v56 = v43 - v55;
            v57 = v13[53];
            if (v56 > (v57 - v54) >> 4)
            {
              v58 = v57 - v53;
              v59 = v58 >> 3;
              if (v58 >> 3 <= v43)
              {
                v59 = v39 + 1;
              }

              if (v58 >= 0x7FFFFFFFFFFFFFF0)
              {
                v60 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v59;
              }

              if (!(v60 >> 60))
              {
                operator new();
              }

LABEL_136:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            bzero(v13[52], 16 * v56);
            v13[52] = v54 + 16 * v56;
            v37 = v97;
          }

          else if (v43 < v55)
          {
            v13[52] = v53 + 16 * v43;
          }

          v41 = v13[48];
          if (v42 < (v13[49] - v41))
          {
            operator new();
          }
        }

        *(*(v41 + 8 * v39) + 16 * v37) = *v111;
        v62 = v13[54];
        v61 = v13[55];
        v63 = v61 - v62;
        if (v39 >= (v61 - v62) >> 3)
        {
          v64 = v39 + 1;
          v65 = v39 + 1 - (v63 >> 3);
          v66 = v13[56];
          if (v65 > (v66 - v61) >> 3)
          {
            v67 = v66 - v62;
            v68 = (v66 - v62) >> 2;
            if (v68 <= v64)
            {
              v68 = v39 + 1;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFF8)
            {
              v69 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v69 = v68;
            }

            if (!(v69 >> 61))
            {
              operator new();
            }

            goto LABEL_136;
          }

          v70 = 0;
          v71 = (v65 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v72 = vdupq_n_s64(v71);
          do
          {
            v73 = vmovn_s64(vcgeq_u64(v72, vorrq_s8(vdupq_n_s64(v70), xmmword_1B33B0560)));
            if (v73.i8[0])
            {
              *(v61 + 8 * v70) = 0;
            }

            if (v73.i8[4])
            {
              *(v61 + 8 * v70 + 8) = 0;
            }

            v70 += 2;
          }

          while (v71 - ((v65 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v70);
          v13[55] = v61 + 8 * v65;
          v74 = v13[57];
          v75 = v13[58];
          v76 = (v75 - v74) >> 4;
          if (v76 <= v39)
          {
            v77 = v64 - v76;
            v78 = v13[59];
            if (v77 > (v78 - v75) >> 4)
            {
              v79 = v78 - v74;
              v80 = v79 >> 3;
              if (v79 >> 3 <= v64)
              {
                v80 = v39 + 1;
              }

              if (v79 >= 0x7FFFFFFFFFFFFFF0)
              {
                v81 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              if (!(v81 >> 60))
              {
                operator new();
              }

              goto LABEL_136;
            }

            bzero(v13[58], 16 * v77);
            v13[58] = v75 + 16 * v77;
            v37 = v97;
          }

          else if (v64 < v76)
          {
            v13[58] = v74 + 16 * v64;
          }

          v62 = v13[54];
          if (v63 < (v13[55] - v62))
          {
            operator new();
          }
        }

        v82 = *(v62 + 8 * v39);
        v83 = v106;
        v106 = 0;
        *(v82 + 8 * v37) = v83;
      }

      else
      {
        v35 = v106;
        v106 = 0;
        if (v35)
        {
          v35 = (*(*v35 + 8))(v35);
        }
      }

      v84 = ecs2::ExecutionTaskContext::currentEntity(v35);
      v108 = &unk_1F2A174E8;
      *&v109 = v23;
      DWORD2(v109) = v84;
      v110 = &v108;
      HIDWORD(v109) = 0;
      v112 = v111;
      *v111 = &unk_1F2A174E8;
      *&v111[8] = v109;
      *&v111[20] = 0;
      v113 = 0;
      ecs2::Runtime::queueCommand();
      v6 = v94;
      if (v113 != -1)
      {
        (off_1F2A175A8[v113])(&v107, v111);
      }

      v113 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v108);
      v8 = v98 + 1;
      v85 = *(&v100 + 1);
      v86 = v5 + 2;
      do
      {
        v5 = v86;
        *&v100 = v86;
        if (v86 == v85)
        {
          break;
        }

        v87 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v100, *v86, v86[1]);
        v86 = v5 + 2;
      }

      while (!v87);
      result = v93;
      if (v5 == v96)
      {
        goto LABEL_132;
      }
    }

    DaVinci::GetDataIDs(v12);
    v15 = &DaVinci::GetDataIDs(void)::kDataIDs;
LABEL_7:
    v14 = *(v11 + v10);
    goto LABEL_8;
  }

  v6 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v8 = 0;
LABEL_132:
  *(v6 + 104 * *result + 24) = -65536;
  v88 = v6 + 104 * *result;
  v89 = *(v88 + 92);
  *(v88 + 92) = v89 + 1;
  *(v88 + 4 * v89 + 28) = v8;
  v90 = v6 + 104 * *result;
  v92 = *(v90 + 92);
  v91 = (v90 + 92);
  if (v92 > 0xF)
  {
    *v91 = 0;
  }

  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CreatePipelines>,std::allocator<ecs2::ForwardToExecute<md::ita::CreatePipelines>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CreatePipelines,md::ls::PendingRenderItemSetup const&,md::ls::RequiredPipelinePoolID const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ecs2::Runtime::_entities<md::ita::CheckIfPipelineStatesUpdateNeeded,md::ls::FunctionConstants &>(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(*(a1 + 8));
  v3 = v2[4];
  v4 = v2[5];
  v5 = _ZTWN4ecs27Runtime11_localStateE();
  v6 = _ZTWN4ecs27Runtime11_stackIndexE();
  v7 = v6;
  if (v3 == v4)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = (*(v2[7] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 70 * (v8 & 0x3F));
      *(v5 + 104 * *v7 + 24) = *v3;
      if ((v9[69] & 1) != 0 || *v9 != v9[34] || v9[4] != v9[38] || v9[1] != v9[35] || v9[2] != v9[36] || v9[3] != v9[37] || v9[5] != v9[39] || v9[6] != v9[40] || v9[7] != v9[41] || v9[8] != v9[42] || v9[9] != v9[43] || v9[10] != v9[44] || v9[11] != v9[45] || v9[12] != v9[46] || v9[13] != v9[47] || v9[14] != v9[48] || v9[15] != v9[49] || v9[16] != v9[50] || v9[17] != v9[51] || v9[18] != v9[52] || v9[19] != v9[53] || v9[20] != v9[54] || v9[21] != v9[55] || v9[22] != v9[56] || v9[23] != v9[57] || v9[24] != v9[58] || v9[25] != v9[59] || v9[26] != v9[60] || v9[27] != v9[61] || v9[28] != v9[62] || v9[29] != v9[63] || v9[30] != v9[64] || v9[31] != v9[65] || v9[32] != v9[66] || v9[33] != v9[67])
      {
        v9[68] = v9[69] ^ 1;
        v9[69] = 0;
        v10 = *(v9 + 1);
        *(v9 + 34) = *v9;
        *(v9 + 50) = v10;
        *(v9 + 33) = *(v9 + 16);
        v11 = ecs2::ExecutionTaskContext::currentEntity(v6);
        v19[0] = &unk_1F2A175E0;
        v19[1] = v11 << 32;
        v20[3] = v20;
        v19[3] = v19;
        v20[0] = &unk_1F2A175E0;
        v20[1] = v11 << 32;
        v21 = 0;
        ecs2::Runtime::queueCommand();
        if (v21 != -1)
        {
          (off_1F2A175A8[v21])(&v18, v20);
        }

        v21 = -1;
        v6 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v19);
      }

      ++v8;
      ++v3;
    }

    while (v3 != v4);
    if (v8)
    {
      v12 = *(a1 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
      }

      *(v12 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v12 + 4096);
    }
  }

  *(v5 + 104 * *v7 + 24) = -65536;
  v13 = v5 + 104 * *v7;
  v14 = *(v13 + 92);
  *(v13 + 92) = v14 + 1;
  *(v13 + 4 * v14 + 28) = v8;
  v15 = v5 + 104 * *v7;
  v17 = *(v15 + 92);
  v16 = (v15 + 92);
  if (v17 >= 0x10)
  {
    *v16 = 0;
  }
}

void std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::PolylineOverlayRibbon::FillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::FillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolylineOverlayRibbon::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfPipelineStatesUpdateNeeded>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfPipelineStatesUpdateNeeded>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::CheckIfPipelineStatesUpdateNeeded,md::ls::FunctionConstants &>(a2);
  *v2 = 0;
}

void std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(v2, v1);
  }
}

uint64_t md::ita::CreatePipelineStates::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v91 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v99[0] = &unk_1F2A17628;
  v99[1] = &v91;
  v99[2] = a1;
  v100 = v99;
  v6 = *(a2 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v6);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v6);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v6);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v6);
  *&v105 = v7;
  *(&v105 + 1) = v8;
  v12 = 8;
  v13 = v7;
  v14 = &v105;
  *&v106 = v9;
  *(&v106 + 1) = v10;
  do
  {
    if (*(*(&v105 + v12) + 40) - *(*(&v105 + v12) + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = *(&v105 + v12);
      v14 = &v105 + v12;
    }

    v12 += 8;
  }

  while (v12 != 32);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  *&v105 = v15;
  *(&v105 + 1) = v16;
  *&v106 = v7;
  *(&v106 + 1) = v8;
  *&v107 = v9;
  *(&v107 + 1) = v10;
  *&v108 = v11;
  while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v105, *v15, v15[1]))
  {
    v15 += 2;
    *&v105 = v15;
  }

  v101 = v105;
  v102 = v106;
  v103 = v107;
  v104 = v108;
  v17 = v105;
  if (v105 != v16)
  {
    v18 = v102;
    v19 = v103;
    v20 = v104;
    v89 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = *(&v101 + 1);
    while (1)
    {
      v24 = v17[1];
      v25 = v24 >> 6;
      v26 = v24 & 0x3F;
      v27 = v20[1];
      if (v25 >= (v20[2] - v27) >> 3)
      {
        goto LABEL_15;
      }

      v28 = *(v27 + 8 * v25);
      if (!v28)
      {
        goto LABEL_16;
      }

      if (*(v28 + 4 * v26) == *v17)
      {
        v29 = *(v28 + 4 * v26 + 2);
        v28 = *(v20[7] + ((v29 >> 3) & 0x1FF8)) + 8 * (v29 & 0x3F);
      }

      else
      {
LABEL_15:
        v28 = 0;
      }

LABEL_16:
      v30 = *(v18 + 32);
      v31 = *(*(*(v18 + 8) + 8 * v25) + 4 * v26 + 2);
      v32 = *(*(*(*(&v18 + 1) + 8) + 8 * v25) + 4 * v26 + 2);
      v33 = *(*(*(&v18 + 1) + 56) + ((v32 >> 3) & 0x1FF8));
      v34 = *(*(*(v19 + 8) + 8 * v25) + 4 * v26 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(&v19 + 1) + 32);
      v37 = *(*(*(*(&v19 + 1) + 8) + 8 * v25) + 4 * v26 + 2);
      *(v89 + 104 * *v21 + 24) = *v17;
      *&v105 = v28;
      if (!v100)
      {
LABEL_54:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v100 + 48))(v100, v30 + 4 * v31, v33 + 70 * (v32 & 0x3F), v35 + (v34 & 0x3F), v36 + 4 * v37, &v105);
      ++v22;
      v38 = v17 + 2;
      while (1)
      {
        v17 = v38;
        *&v101 = v38;
        if (v38 == v23)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v101, *v38, v38[1]);
        v38 = v17 + 2;
        if (v39)
        {
          v40 = v17;
          goto LABEL_22;
        }
      }

      v40 = v23;
LABEL_22:
      if (v40 == v16)
      {
        v41 = v89;
        goto LABEL_25;
      }
    }
  }

  v41 = _ZTWN4ecs27Runtime11_localStateE();
  v21 = _ZTWN4ecs27Runtime11_stackIndexE();
  v22 = 0;
LABEL_25:
  *(v41 + 104 * *v21 + 24) = -65536;
  v42 = v41 + 104 * *v21;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v22;
  v44 = v41 + 104 * *v21;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 > 0xF)
  {
    *v45 = 0;
  }

  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*)>::~__value_func[abi:nn200100](v99);
  *&v101 = &unk_1F2A176B8;
  *(&v101 + 1) = &v91;
  *&v102 = a1;
  *(&v102 + 1) = &v101;
  v47 = *(a3 + 8);
  v48 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v47);
  v49 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v47);
  v50 = ecs2::BasicRegistry<void>::storage<md::ls::RequiredPipelinePoolID>(v47);
  v51 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v47);
  v52 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v47);
  v90 = v41;
  *&v105 = v48;
  *(&v105 + 1) = v49;
  v53 = 8;
  v54 = v48;
  v55 = &v105;
  *&v106 = v50;
  *(&v106 + 1) = v51;
  do
  {
    if (*(*(&v105 + v53) + 40) - *(*(&v105 + v53) + 32) < *(v54 + 40) - *(v54 + 32))
    {
      v54 = *(&v105 + v53);
      v55 = &v105 + v53;
    }

    v53 += 8;
  }

  while (v53 != 32);
  v56 = *(*v55 + 32);
  v57 = *(*v55 + 40);
  v92 = v56;
  v93 = v57;
  v94 = v48;
  v95 = v49;
  v96 = v50;
  v97 = v51;
  v98 = v52;
  while (v56 != v57 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v92, *v56, v56[1]))
  {
    v56 += 2;
    v92 = v56;
  }

  v58 = v92;
  if (v92 != v57)
  {
    v59 = 0;
    v60 = v95;
    v61 = v96;
    v62 = v97;
    v63 = v98;
    v64 = v93;
    v65 = v94;
    while (1)
    {
      v66 = v58[1];
      v67 = v66 >> 6;
      v68 = v66 & 0x3F;
      v69 = v63[1];
      if (v67 >= (v63[2] - v69) >> 3)
      {
        break;
      }

      v70 = *(v69 + 8 * v67);
      if (v70)
      {
        if (*(v70 + 4 * v68) != *v58)
        {
          break;
        }

        v71 = *(v70 + 4 * v68 + 2);
        v70 = *(v63[7] + ((v71 >> 3) & 0x1FF8)) + 8 * (v71 & 0x3F);
      }

LABEL_42:
      v72 = *(v65 + 32);
      v73 = *(*(*(v60 + 8) + 8 * v67) + 4 * v68 + 2);
      v74 = *(*(v60 + 56) + ((v73 >> 3) & 0x1FF8));
      v75 = *(*(*(v65 + 8) + 8 * v67) + 4 * v68 + 2);
      v76 = *(*(*(v61 + 8) + 8 * v67) + 4 * v68 + 2);
      v77 = *(*(v61 + 56) + ((v76 >> 3) & 0x1FF8));
      v78 = *(*(*(v62 + 8) + 8 * v67) + 4 * v68 + 2);
      v79 = *(*(v62 + 56) + ((v78 >> 3) & 0x1FF8));
      *(v90 + 104 * *v21 + 24) = *v58;
      *&v105 = v70;
      if (!*(&v102 + 1))
      {
        goto LABEL_54;
      }

      (*(**(&v102 + 1) + 48))(*(&v102 + 1), v72 + 4 * v75, v74 + 70 * (v73 & 0x3F), v77 + (v76 & 0x3F), v79 + 4 * (v78 & 0x3F), &v105);
      ++v59;
      v80 = v58 + 2;
      while (1)
      {
        v58 = v80;
        v92 = v80;
        if (v80 == v64)
        {
          break;
        }

        v81 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v92, *v80, v80[1]);
        v80 = v58 + 2;
        if (v81)
        {
          v82 = v58;
          goto LABEL_48;
        }
      }

      v82 = v64;
LABEL_48:
      if (v82 == v57)
      {
        goto LABEL_51;
      }
    }

    v70 = 0;
    goto LABEL_42;
  }

  v59 = 0;
LABEL_51:
  *(v90 + 104 * *v21 + 24) = -65536;
  v83 = v90 + 104 * *v21;
  v84 = *(v83 + 92);
  *(v83 + 92) = v84 + 1;
  *(v83 + 4 * v84 + 28) = v59;
  v85 = v90 + 104 * *v21;
  v87 = *(v85 + 92);
  v86 = (v85 + 92);
  if (v87 > 0xF)
  {
    *v86 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*)>::~__value_func[abi:nn200100](&v101);
}

void sub_1B29523AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::CreatePipelineStates>,std::allocator<ecs2::ForwardToExecute<md::ita::CreatePipelineStates>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::CreatePipelineStates::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsFunctionConstantsUpdate>();
    *algn_1EB83C378 = 0x9BA1F27C43D018BELL;
    qword_1EB83C380 = "md::ls::NeedsFunctionConstantsUpdate]";
    qword_1EB83C388 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata >= 0x200)
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

void std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::PolylineOverlayRibbon::AlphaPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolylineOverlayRibbon::AlphaPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolylineOverlayRibbon::AlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsFunctionConstantsUpdate>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsFunctionConstantsUpdate>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[337];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28NeedsFunctionConstantsUpdateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A199C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__func<ggl::MetalClearItemProcessor::process(ggl::ProcessClearItemContext &,ggl::ClearItem *)::$_0,std::allocator<ggl::MetalClearItemProcessor::process(ggl::ProcessClearItemContext &,ggl::ClearItem *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(v7, **(a1 + 8), *a2);
  v3 = 0;
  v4 = **(a1 + 16);
  v5 = v10;
  do
  {
    *(v5 + v3) = *(v4 + 4 + v3);
    v3 += 4;
  }

  while (v3 != 16);
  *(v5 + 16) = *(v4 + 24);
  return ggl::ResourceAccessor::_endAccess(v5, v7[0], v7[1], v7[2], v7[3], v8, v9);
}

uint64_t *std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 104));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40AD78EA61);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28NeedsFunctionConstantsUpdateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A199C0;
  a2[1] = v2;
  return result;
}

void md::PolygonOverlayRenderResources::~PolygonOverlayRenderResources(md::PolygonOverlayRenderResources *this)
{
  for (i = 128; i != 112; i -= 8)
  {
    v3 = *(this + i);
    *(this + i) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  do
  {
    v4 = *(this + i);
    *(this + i) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    i -= 8;
  }

  while (i != 96);
  do
  {
    v5 = *(this + i);
    *(this + i) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    i -= 8;
  }

  while (i != 64);
  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    v7 = ggl::FragmentedPool<ggl::PolygonOverlay::AntialiasPipelineSetup>::~FragmentedPool(v6);
    MEMORY[0x1B8C62190](v7, 0x10A0C405CD4001ALL);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>>::~unique_ptr[abi:nn200100](this + 7);
  std::unique_ptr<ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>>::~unique_ptr[abi:nn200100](this + 6);
  v8 = *(this + 5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void *ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(void *a1, uint64_t a2, uint64_t a3)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessConstantData(v7, a3, a2, 1);
  ggl::BufferMemory::operator=(a1, v7);
  ggl::BufferMemory::~BufferMemory(v7);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineState>();
    unk_1EB83D920 = 0xB160D04D0F4A35A4;
    qword_1EB83D928 = "md::ls::PipelineState]";
    qword_1EB83D930 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata >= 0x200)
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

void *ggl::FragmentedPool<ggl::PolygonOverlay::AntialiasPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolygonOverlay::AntialiasPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolygonOverlay::AntialiasPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t md::World::getElevation(uint64_t a1, float64x2_t *a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = 0.0;
  v6 = v3 == v4;
  if (*(a1 + 385))
  {
    while (!v6)
    {
      if (*v3 == 77)
      {
        if (v3 != v4)
        {
          v28 = *(v3 + 8);
          if (v28)
          {
            v29 = v28[1];
            if (v29 != v28)
            {
              v30 = 0;
              v5 = 0.0;
              do
              {
                v32 = v29[16];
                v31 = v29[17];
                if (v31)
                {
                  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (md::FlyoverDsmTileData::rasterLevel(v32) > v30)
                {
                  if ((*(*v32 + 48))(v32, a2))
                  {
                    v33 = (*(*v32 + 56))(v32, a2, 1);
                    if ((v33 & 0x100000000) != 0)
                    {
                      v34 = *&v33;
                      v30 = md::FlyoverDsmTileData::rasterLevel(v32);
                      v5 = v34;
                    }
                  }
                }

                if (v31)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
                }

                v29 = v29[1];
              }

              while (v29 != v28);
            }
          }
        }

        return *&v5;
      }

      v3 += 16;
      v6 = v3 == v4;
    }
  }

  else if (v3 != v4)
  {
    while (*v3 != 43)
    {
      v3 += 16;
      if (v3 == v4)
      {
        return *&v5;
      }
    }

    if (v3 != v4)
    {
      v9 = *(v3 + 8);
      if (v9)
      {
        v10 = v9[1];
        if (v10 == v9)
        {
          v5 = 0.0;
LABEL_29:
          v21 = *(a1 + 320);
          if (v21)
          {
            v36 = *a2;
            md::DaVinciGroundMetaData::queryMetaTileFromPosition(&v37, v21);
            v22 = v37;
            if (v37)
            {
              v23 = geo::QuadTile::toLocal<double>(v37 + 168, v36.f64[0]);
              v24 = *(v22 + 808);
              v26 = md::DaVinciMetaTileData::cellPosition(*(v22 + 808), v23, v25);
              LOBYTE(v27) = *(*(v22 + 784) + 2 * v24 * HIWORD(v26) + 2 * v26);
              v5 = (*(v22 + 724) + ((v27 * 0.0039216) * (*(v22 + 728) - *(v22 + 724))));
            }

            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v38);
            }
          }

          return *&v5;
        }

        v11 = 0;
        v5 = 0.0;
        do
        {
          v12 = v10[16];
          v13 = v10[17];
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v14 = *(v12 + 728);
          v15 = *(v12 + 736);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v14)
          {
            if (*v14 != *(v14 + 8))
            {
              v16 = *(v14 + 57);
              v17.i64[0] = *(v14 + 64);
              v17.i64[1] = (1 << v16) + ~*(v14 + 60);
              v18 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v17), 1.0 / (1 << v16), 0), (1 << v16));
              v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v18);
              LODWORD(v18.f64[0]) = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v19)).u32[0];
              HIDWORD(v18.f64[0]) = vmovn_s32(vcgeq_f32(v19, xmmword_1B33B09C0)).i32[1];
              if ((vminv_u16(vcltz_s16(vshl_n_s16(*&v18.f64[0], 0xFuLL))) & 1) != 0 && v16 > v11)
              {
                v35 = *(v14 + 57);
                v20 = md::ElevationRaster::elevationInMetersAtWorldPoint(v14, 1, *a2);
                if (HIDWORD(v20))
                {
                  v5 = *&v20;
                  v11 = v35;
                }
              }
            }
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v10 = v10[1];
        }

        while (v10 != v9);
        if (!v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return *&v5;
}

void sub_1B29533D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v2, v1);
  }
}

double gm::Matrix<double,3,1>::distanceToPoint<int,void>(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v6 + i) = *(a1 + i) - *(a2 + i);
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    v4 = v4 + *(&v6 + v3) * *(&v6 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return sqrt(v4);
}

void *ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::PolygonOverlay::FillPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::PolygonOverlay::FillPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void **std::unique_ptr<ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::~FragmentedPool(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C405CD4001ALL);
  }

  return a1;
}

void std::vector<ggl::PolygonOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonOverlay::FillPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ggl::PolygonOverlay::AntialiasPipelineState::~AntialiasPipelineState(ggl::PolygonOverlay::AntialiasPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LogicManager::logic<md::ElevationLogic>(int8x8_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = vcnt_s8(v1);
    v2.i16[0] = vaddlv_u8(v2);
    if (v2.u32[0] > 1uLL)
    {
      v3 = 0x17767EADC5B287BLL;
      if (*&v1 <= 0x17767EADC5B287BuLL)
      {
        v3 = 0x17767EADC5B287BuLL % *&v1;
      }
    }

    else
    {
      v3 = (*&v1 - 1) & 0x17767EADC5B287BLL;
    }

    v4 = *(*&a1[2] + 8 * v3);
    if (v4)
    {
      v5 = *v4;
      if (v5)
      {
        while (1)
        {
          v6 = v5[1];
          if (v6 == 0x17767EADC5B287BLL)
          {
            if (v5[2] == 0x17767EADC5B287BLL)
            {
              return v5[5];
            }
          }

          else
          {
            if (v2.u32[0] > 1uLL)
            {
              if (v6 >= *&v1)
              {
                v6 %= *&v1;
              }
            }

            else
            {
              v6 &= *&v1 - 1;
            }

            if (v6 != v3)
            {
              return 0;
            }
          }

          result = 0;
          v5 = *v5;
          if (!v5)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t std::function<void ()(ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return ecs2::Runtime::_entities<md::ita::UpdateColorRampGradientResources,md::ls::RenderItemID const&,md::ls::ColorRampDataHandle const&>(v3);
}

uint64_t ecs2::Runtime::_entities<md::ita::UpdateColorRampGradientResources,md::ls::RenderItemID const&,md::ls::ColorRampDataHandle const&>(uint64_t a1, uint64_t **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v51, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v46, v8, v8, v4, v6);
  v45 = v52;
  v43 = *v51;
  v44 = *&v51[16];
  v40 = *v51;
  v41 = *&v51[16];
  v42 = v52;
  v9 = v46;
  v10 = *v51;
  if (*v51 == v46)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = result;
    v13 = 0;
  }

  else
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = *(&v41 + 1);
    do
    {
      v15 = *(*(*(v14 + 8) + ((v10[1] >> 3) & 0x1FF8)) + 4 * (v10[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v14 + 56) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v10;
      v18 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      result = md::VKMRenderResourcesStore::getColorRampData(v18, *(v17 + 8 * v16));
      if (result)
      {
        v20 = result;
        if (*(result + 80) == 1)
        {
          v21 = v9;
          v22 = *result;
          v23 = ecs2::ExecutionTaskContext::currentEntity(result);
          if (v22)
          {
            v48 = &unk_1F2A352D0;
            *&v49 = v22;
            *(&v49 + 1) = v23;
            v50 = &v48;
            *&v51[24] = v51;
            *v51 = &unk_1F2A352D0;
            *&v51[8] = v49;
            *&v51[20] = 0;
            LODWORD(v52) = 0;
          }

          else
          {
            v48 = &unk_1F2A353A0;
            LODWORD(v49) = v23;
            v50 = &v48;
            *&v51[24] = v51;
            *v51 = &unk_1F2A353A0;
            *&v51[8] = v23;
            LODWORD(v52) = 2;
          }

          ecs2::Runtime::queueCommand();
          if (v52 != -1)
          {
            (off_1F2A35178[v52])(&v47, v51);
          }

          LODWORD(v52) = -1;
          v24 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v48);
          if ((*(v20 + 80) & 1) == 0)
          {
            goto LABEL_39;
          }

          v25 = *(v20 + 8);
          v26 = ecs2::ExecutionTaskContext::currentEntity(v24);
          if (v25)
          {
            v48 = &unk_1F2A353E8;
            *&v49 = v25;
            *(&v49 + 1) = v26;
            v50 = &v48;
            *&v51[24] = v51;
            *v51 = &unk_1F2A353E8;
            *&v51[8] = v49;
            *&v51[20] = 0;
            LODWORD(v52) = 0;
          }

          else
          {
            v48 = &unk_1F2A354B8;
            LODWORD(v49) = v26;
            v50 = &v48;
            *&v51[24] = v51;
            *v51 = &unk_1F2A354B8;
            *&v51[8] = v26;
            LODWORD(v52) = 2;
          }

          ecs2::Runtime::queueCommand();
          if (v52 != -1)
          {
            (off_1F2A35178[v52])(&v47, v51);
          }

          LODWORD(v52) = -1;
          v27 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v48);
          if ((*(v20 + 80) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v20 + 16))
          {
            *v51 = *(v20 + 16);
            v51[8] = *(v20 + 24);
            ecs2::ExecutionTaskContext::currentEntity(v27);
            operator new();
          }

          v28 = ecs2::ExecutionTaskContext::currentEntity(v27);
          v48 = &unk_1F2A355D0;
          LODWORD(v49) = v28;
          v50 = &v48;
          *&v51[24] = v51;
          *v51 = &unk_1F2A355D0;
          *&v51[8] = v28;
          LODWORD(v52) = 2;
          ecs2::Runtime::queueCommand();
          if (v52 != -1)
          {
            (off_1F2A35178[v52])(&v47, v51);
          }

          LODWORD(v52) = -1;
          v29 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v48);
          v9 = v21;
          if ((*(v20 + 80) & 1) == 0)
          {
LABEL_39:
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          v31 = *(v20 + 32);
          v30 = v20 + 32;
          if (v31)
          {
            *v51 = *v30;
            v51[8] = *(v30 + 8);
            ecs2::ExecutionTaskContext::currentEntity(v29);
            operator new();
          }

          v32 = ecs2::ExecutionTaskContext::currentEntity(v29);
          v48 = &unk_1F2A356E8;
          LODWORD(v49) = v32;
          v50 = &v48;
          *&v51[24] = v51;
          *v51 = &unk_1F2A356E8;
          *&v51[8] = v32;
          LODWORD(v52) = 2;
          ecs2::Runtime::queueCommand();
          if (v52 != -1)
          {
            (off_1F2A35178[v52])(&v47, v51);
          }

          LODWORD(v52) = -1;
          result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v48);
        }
      }

      ++v13;
      v33 = *(&v40 + 1);
      v34 = v10 + 2;
      do
      {
        v10 = v34;
        *&v40 = v34;
        if (v34 == v33)
        {
          break;
        }

        result = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v40, *v34, v34[1]);
        v34 = v10 + 2;
      }

      while (!result);
    }

    while (v10 != v9);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v35 = v11 + 104 * *v12;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v13;
  v37 = v11 + 104 * *v12;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 > 0xF)
  {
    *v38 = 0;
  }

  return result;
}

void ggl::MetalRenderItemEncoder::encode(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v398 = *MEMORY[0x1E69E9840];
  v3 = *(*(a2 + 32) + 16);
  v4 = *(v3 + 3);
  if (!v4)
  {
    v4 = ggl::MetalResourceManager::newPipelineState(*(*a1 + 80), v3);
    if (!v4)
    {
      return;
    }
  }

  v5 = *(*v2 + 80);
  v323 = v2[1];
  v6 = v2[5];
  v7 = atomic_load(v4 + 2);
  if (v7 < v6)
  {
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong(v4 + 2, &v8, v6);
      if (v8 == v7)
      {
        break;
      }

      v7 = v8;
    }

    while (v8 < v6);
  }

  v9 = v4[4];
  v10 = v9;
  v11 = v2[6];
  v322 = v10;
  v370 = v2;
  if (*v11 != v10)
  {
    objc_storeStrong(v11, v9);
    [v323 setRenderPipelineState:*v2[6]];
  }

  v12 = *(a2 + 24);
  v13 = *(v12 + 24);
  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E6974050]);
    v15 = v14;
    if (*(v12 + 36))
    {
      v16 = 7;
    }

    else if (*(v12 + 37) - 1 >= 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v12 + 37);
    }

    [v14 setDepthCompareFunction:v16];
    [v15 setDepthWriteEnabled:*(v12 + 38) == 0];
    v17 = objc_alloc_init(MEMORY[0x1E6974190]);
    v18 = v17;
    if (*(v12 + 50) - 1 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = qword_1B341C650[(*(v12 + 50) - 1)];
    }

    [v17 setStencilFailureOperation:v19];
    if (*(v12 + 51) - 1 > 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_1B341C650[(*(v12 + 51) - 1)];
    }

    [v18 setDepthFailureOperation:v20];
    if (*(v12 + 52) - 1 > 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_1B341C650[(*(v12 + 52) - 1)];
    }

    [v18 setDepthStencilPassOperation:v21];
    if (*(v12 + 48))
    {
      v22 = 7;
    }

    else if (*(v12 + 49) - 1 >= 7)
    {
      v22 = 0;
    }

    else
    {
      v22 = qword_1B341C668[(*(v12 + 49) - 1)];
    }

    [v18 setStencilCompareFunction:v22];
    [v18 setReadMask:*(v12 + 53)];
    [v18 setWriteMask:*(v12 + 54)];
    [v15 setFrontFaceStencil:v18];
    [v15 setBackFaceStencil:v18];
    v23 = [*(*(v5 + 256) + 104) newDepthStencilStateWithDescriptor:v15];
    v24 = ggl::zone_mallocator::instance(v23);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v24, 0x28uLL);
    *v13 = 0;
    *(v13 + 4) = 1793;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    objc_storeStrong(v13 + 4, v23);
    ggl::RenderDataHolder::setRenderResource(v12, v5, v13);
    ggl::ResourceManager::_addResourceStat(v5, "DepthStencilState", 0x38AB5BF400000011uLL, 0);
  }

  v25 = v2[5];
  v26 = atomic_load(v13 + 2);
  if (v26 < v25)
  {
    v27 = v26;
    do
    {
      atomic_compare_exchange_strong(v13 + 2, &v27, v25);
      if (v27 == v26)
      {
        break;
      }

      v26 = v27;
    }

    while (v27 < v25);
  }

  v28 = *(v13 + 4);
  v29 = v28;
  v30 = v2[6];
  v32 = *(v30 + 8);
  v31 = (v30 + 8);
  if (v32 != v29)
  {
    objc_storeStrong(v31, v28);
    [v323 setDepthStencilState:*(v2[6] + 8)];
  }

  v33 = *v2;
  v34 = v2[1];
  v37 = v34;
  v38 = *(a2 + 24);
  if (*(v2[6] + 16) != v38)
  {
    v334 = v33;
    v352 = v34;
    if (!*(v38 + 48) && (*(v38 + 208) & 1) == 0)
    {
      [(ggl::MetalResourceManager *)v34 setStencilReferenceValue:*(v38 + 55)];
    }

    LODWORD(v35) = *(v38 + 10);
    LODWORD(v36) = *(v38 + 11);
    [(ggl::MetalResourceManager *)v37 setDepthBias:v35 slopeScale:v36 clamp:0.0];
    v39 = v2[2];
    v363 = *(v38 + 188);
    v339 = v12;
    v345 = v38;
    if (*(v38 + 188))
    {
      v40 = 0;
      v41 = v2;
      v42 = (v38 + 124);
      v43 = v41[8] + 32;
      v44 = &v371[16];
      do
      {
        v382 = *v42;
        *buf = 0;
        *&buf[8] = 0;
        v45 = md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(&v382, buf);
        v46 = ggl::RenderTarget::width(v39);
        v47 = v46;
        if (v45 || (v48 = DWORD2(v382), DWORD2(v382) > v46) || (v49 = ggl::RenderTarget::height(v39), v50 = HIDWORD(v382), HIDWORD(v382) > v49) || (v52 = v382, v382 >= v48) || (v51 = DWORD1(v382), DWORD1(v382) >= HIDWORD(v382)))
        {
          v50 = ggl::RenderTarget::height(v39);
          v51 = 0;
          v52 = 0;
          *&v382 = 0;
          *(&v382 + 1) = __PAIR64__(v50, v47);
        }

        else
        {
          v47 = v48;
        }

        v53 = md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v43, &v382);
        if (!v53)
        {
          *v43 = v52;
          *(v43 + 4) = v51;
          *(v43 + 8) = v47;
          *(v43 + 12) = v50;
        }

        v390[v40] = v53;
        v54 = ggl::RenderTarget::height(v39);
        v55 = (v54 - HIDWORD(v382));
        v56 = vsub_s32(*(&v382 + 8), *&v382);
        v57.i64[0] = v56.u32[0];
        v57.i64[1] = v56.u32[1];
        *(v44 - 2) = v52;
        *(v44 - 1) = v55;
        ++v40;
        *v44 = vcvtq_f64_u64(v57);
        *(v44 + 1) = xmmword_1B33B0740;
        v44 += 48;
        ++v42;
        v43 += 16;
      }

      while (v363 != v40);
      v58 = 0;
      v2 = v370;
      v37 = v352;
      while ((v390[v58] & 1) != 0)
      {
        if (v363 == ++v58)
        {
          goto LABEL_59;
        }
      }

      [(ggl::MetalResourceManager *)v352 setViewports:v371 count:v363];
LABEL_59:
      v38 = v345;
    }

    else
    {
      *v371 = 0;
      *&v371[8] = 0;
      *&v371[16] = ggl::RenderTarget::width(v39);
      *&v371[24] = ggl::RenderTarget::height(v39);
      v372 = xmmword_1B33B0740;
      [(ggl::MetalResourceManager *)v37 setViewport:v371];
      v59 = ggl::RenderTarget::width(v39);
      v60 = ggl::RenderTarget::height(v39);
      *v371 = 0;
      *&v371[8] = v59;
      *&v371[12] = v60;
      v61 = v2[8];
      if (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==((v61 + 32), v371))
      {
        *(v61 + 32) = 0;
        *(v61 + 40) = v59;
        *(v61 + 44) = v60;
      }
    }

    if (*(v38 + 188))
    {
      v62 = 0;
      v364 = v38 + 60;
      v359 = v2[8] + 96;
      v331 = *(v38 + 188);
      v63 = &v371[16];
      v64 = v390;
      do
      {
        v382 = *&v364[v62];
        *buf = 0;
        *&buf[8] = 0;
        v65 = md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(&v382, buf);
        v66 = ggl::RenderTarget::width(v39);
        v67 = v66;
        if (v65 || (v68 = DWORD2(v382), DWORD2(v382) > v66) || (v69 = ggl::RenderTarget::height(v39), v70 = HIDWORD(v382), HIDWORD(v382) > v69) || (v72 = v382, v382 >= v68) || (v71 = DWORD1(v382), DWORD1(v382) >= HIDWORD(v382)))
        {
          v70 = ggl::RenderTarget::height(v39);
          v71 = 0;
          v72 = 0;
          *&v382 = 0;
          *(&v382 + 1) = __PAIR64__(v70, v67);
        }

        else
        {
          v67 = v68;
        }

        v73 = (v359 + v62);
        v74 = md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==((v359 + v62), &v382);
        if (!v74)
        {
          *v73 = v72;
          v73[1] = v71;
          v73[2] = v67;
          v73[3] = v70;
        }

        *v64++ = v74;
        v75 = ggl::RenderTarget::height(v39);
        v76 = (v75 - HIDWORD(v382));
        v77 = vsub_s32(*(&v382 + 8), *&v382);
        *&v78 = v77.u32[0];
        *(&v78 + 1) = v77.u32[1];
        *(v63 - 2) = v72;
        *(v63 - 1) = v76;
        *v63 = v78;
        v63 += 32;
        v62 += 16;
      }

      while (16 * v331 != v62);
      v79 = 0;
      v12 = v339;
      v37 = v352;
      while ((v390[v79] & 1) != 0)
      {
        if (v331 == ++v79)
        {
          goto LABEL_79;
        }
      }

      [(ggl::MetalResourceManager *)v352 setScissorRects:v371 count:v331];
LABEL_79:
      v2 = v370;
      v38 = v345;
    }

    else
    {
      *v371 = 0;
      *&v371[8] = 0;
      *&v371[16] = ggl::RenderTarget::width(v39);
      *&v371[24] = ggl::RenderTarget::height(v39);
      [(ggl::MetalResourceManager *)v37 setScissorRect:v371];
      v12 = v339;
      v80 = ggl::RenderTarget::width(v39);
      v81 = ggl::RenderTarget::height(v39);
      *v371 = 0;
      *&v371[8] = v80;
      *&v371[12] = v81;
      v82 = v2[8];
      if (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==((v82 + 96), v371))
      {
        *(v82 + 96) = 0;
        *(v82 + 104) = v80;
        *(v82 + 108) = v81;
      }
    }

    v83 = *(v38 + 56);
    if (v83 <= 2)
    {
      [(ggl::MetalResourceManager *)v37 setCullMode:qword_1B3418598[v83]];
    }

    if (!*(v38 + 57) || *(v38 + 57) == 1)
    {
      [(ggl::MetalResourceManager *)v37 setTriangleFillMode:?];
    }

    if (!*(v38 + 39) || *(v38 + 39) == 1)
    {
      [(ggl::MetalResourceManager *)v37 setDepthClipMode:?];
    }

    if (*(v334 + 22) == 1)
    {
      if (*(v38 + 189))
      {
        v84 = (v38 + 192);
        v85 = v371;
        v86 = *(v38 + 189);
        do
        {
          v87 = *v84++;
          *v85++ = vrev64_s32(v87);
          --v86;
        }

        while (v86);
      }

      else
      {
        *v371 = 0;
      }

      [ggl::MetalResourceManager setVertexAmplificationCount:v37 viewMappings:"setVertexAmplificationCount:viewMappings:"];
    }

    *(v2[6] + 16) = v38;
  }

  if (!*(v12 + 48) && *(v12 + 208) == 1)
  {
    [v323 setStencilReferenceValue:*(a2 + 40)];
  }

  v88 = *(a2 + 64);
  if (v88)
  {
    *(*(a2 + 32) + 296) = v88;
  }

  v89 = v370[1];
  v90 = *(*(a2 + 32) + 296);
  v91 = v370[8];
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  memset(v371, 0, sizeof(v371));
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  if (!v90 || (v92 = *(v90 + 64), *(v90 + 72) == v92))
  {
    v93 = 0;
    v95 = 0;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    do
    {
      v96 = v92 + 16 * v95;
      v97 = *v96;
      v98 = *(*v96 + 112);
      if (v98 >= 2 && !v97[13])
      {
        v97[13] = v370[7];
      }

      v99 = v97[3];
      if (v98 <= 1)
      {
        v100 = 0;
      }

      else
      {
        v100 = v370[3];
      }

      v101 = v97[5] + v100 * v97[15];
      v102 = *(v99 + 24);
      v103 = *(v91 + 160);
      v104 = *(v103 + 8 * v93);
      if (v104)
      {
        v105 = v104 == v102;
      }

      else
      {
        v105 = 0;
      }

      if (v105)
      {
        v111 = *(v91 + 8);
        if (*(v111 + 8 * v93) != v101)
        {
          *(v111 + 8 * v93) = v101;
          v112 = v370[5];
          v113 = atomic_load((v102 + 16));
          if (v113 < v112)
          {
            v114 = v113;
            do
            {
              atomic_compare_exchange_strong((v102 + 16), &v114, v112);
              if (v114 == v113)
              {
                break;
              }

              v113 = v114;
            }

            while (v114 < v112);
          }

          [v89 setVertexBufferOffset:? atIndex:?];
        }
      }

      else
      {
        *(v103 + 8 * v93) = v102;
        *(*(v91 + 8) + 8 * v93) = v101;
        if (v94 >= 0x10)
        {
          [v89 setVertexBuffers:v371 offsets:&v382 withRange:{v93, v94}];
          v93 += v94;
          v94 = 0;
        }

        v106 = *(v99 + 24);
        v107 = v370[5];
        v108 = atomic_load((v106 + 16));
        if (v108 < v107)
        {
          v109 = v108;
          do
          {
            atomic_compare_exchange_strong((v106 + 16), &v109, v107);
            if (v109 == v108)
            {
              break;
            }

            v108 = v109;
          }

          while (v109 < v107);
        }

        objc_storeStrong(&v371[8 * v94 + 8 * v93], *(v106 + 32));
        v110 = v370[3];
        if (*(*v96 + 112) <= 1u)
        {
          v110 = 0;
        }

        *(&v382 + v94 + v93) = *(*v96 + 40) + v110 * *(*v96 + 120);
        ++v94;
      }

      ++v95;
      v92 = *(v90 + 64);
    }

    while (v95 < (*(v90 + 72) - v92) >> 4);
    if (v94 == 1)
    {
      [v89 setVertexBuffers:v371 offsets:&v382 withRange:{v93, 1}];
    }
  }

  for (i = 120; i != -8; i -= 8)
  {
  }

  v329 = v95 + v93;
  v365 = v370[1];
  v116 = *(a2 + 32);
  v117 = *(*(*(v116[2] + 40) + 8) + 8);
  v118 = v370[8];
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  memset(v371, 0, sizeof(v371));
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  if (*(v117 + 56))
  {
    v119 = 0;
    v120 = 0;
    v121 = v329;
    while (1)
    {
      v122 = (*(v117 + 48) + 2 * v120);
      v123 = *(v116[13] + 16 * *v122);
      if (v123)
      {
        v124 = *(v123 + 24);
        if (v124)
        {
          v125 = v122[1];
          if ((*(*v116 + 32))(v116))
          {
            break;
          }
        }
      }

LABEL_168:
      if (++v120 >= *(v117 + 56))
      {
        if (v119)
        {
          [v365 setVertexBuffers:v371 offsets:&v382 withRange:{v121, v119}];
        }

        goto LABEL_171;
      }
    }

    v126 = *(v123 + 40);
    if (*(v123 + 112) < 2u)
    {
      v127 = *(v123 + 8) * v126;
    }

    else
    {
      v127 = v126 + v370[3] * *(v123 + 120);
    }

    v128 = *(v124 + 24);
    v129 = *(v118 + 160);
    v130 = *(v129 + 8 * v125);
    if (v130)
    {
      v131 = v130 == v128;
    }

    else
    {
      v131 = 0;
    }

    v132 = v131;
    if (!v131)
    {
      *(v129 + 8 * v125) = v128;
    }

    if (v119)
    {
      if (v119 <= 0xF && v119 + v121 == v125)
      {
LABEL_156:
        v133 = *(v118 + 8);
        if (v132)
        {
          if (*(v133 + 8 * v125) != v127)
          {
            *(v133 + 8 * v125) = v127;
            v134 = v370[5];
            v135 = (*(v124 + 24) + 16);
            v136 = atomic_load(v135);
            if (v136 < v134)
            {
              v137 = v136;
              do
              {
                atomic_compare_exchange_strong(v135, &v137, v134);
                if (v137 == v136)
                {
                  break;
                }

                v136 = v137;
              }

              while (v137 < v134);
            }

            [v365 setVertexBufferOffset:v127 atIndex:v125];
          }
        }

        else
        {
          *(v133 + 8 * v125) = v127;
          v138 = *(v124 + 24);
          v139 = v370[5];
          v140 = atomic_load((v138 + 16));
          if (v140 < v139)
          {
            v141 = v140;
            do
            {
              atomic_compare_exchange_strong((v138 + 16), &v141, v139);
              if (v141 == v140)
              {
                break;
              }

              v140 = v141;
            }

            while (v141 < v139);
          }

          v142 = *(v138 + 32);
          v143 = *&v371[8 * v119];
          *&v371[8 * v119] = v142;
          v144 = v142;

          *(&v382 + v119) = v127;
          ++v119;
        }

        goto LABEL_168;
      }

      [v365 setVertexBuffers:v371 offsets:&v382 withRange:{v121, v119}];
      v119 = 0;
    }

    v121 = v125;
    goto LABEL_156;
  }

LABEL_171:
  for (j = 120; j != -8; j -= 8)
  {
  }

  v346 = *v370;
  v335 = *(*v370 + 80);
  v340 = v370[1];
  v146 = *(a2 + 32);
  v147 = *(*(*(v146[2] + 40) + 8) + 8);
  v353 = v370[8];
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  memset(v371, 0, sizeof(v371));
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  if (!*(v147 + 40))
  {
    v366 = 0;
    goto LABEL_211;
  }

  v366 = 0;
  v360 = 0;
  v148 = 0;
  v149 = v329;
  do
  {
    v150 = (*(v147 + 32) + 2 * v148);
    v151 = *v150;
    v152 = v150[1];
    if (!(*(*v146 + 16))(v146, v151))
    {
      goto LABEL_207;
    }

    v153 = *(v146[17] + 16 * v151);
    if (!v153)
    {
      if (GEOGetGeoGLDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
      }

      v154 = GEOGetGeoGLDefaultLog_log;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        v155 = **(*(v146[1] + 24) + 8 * v151);
        *buf = 136315906;
        *&buf[4] = v155;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        v379 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
        v380 = 1024;
        v381 = 472;
        _os_log_impl(&dword_1B2754000, v154, OS_LOG_TYPE_ERROR, "You must bind constant data for every one you use in your shader:%s: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }
    }

    v156 = *(v153 + 24);
    if (v156)
    {
      v157 = *(v156 + 24);
    }

    else
    {
      v157 = 0;
    }

    if (((1 << v151) & v366) != 0)
    {
      if (!v157)
      {
        goto LABEL_207;
      }

LABEL_198:
      v162 = *(v353 + 20);
      if (*(v162 + 8 * v152) != v157)
      {
        *(v162 + 8 * v152) = v157;
        v163 = *(v157 + 32);
        v164 = v163;
        v165 = v360;
        if (v360)
        {
          if (v360 <= 0xF && (v165 = v360, v360 + v149 == v152))
          {
            v152 = v149;
          }

          else
          {
            [v340 setVertexBuffers:v371 offsets:&v382 withRange:v149];
            v165 = 0;
          }
        }

        v166 = v165;
        objc_storeStrong(&v371[8 * v165], v163);
        v167 = v370[3];
        if (*(v153 + 112) <= 1u)
        {
          v167 = 0;
        }

        *(&v382 + v166) = *(v153 + 40) + v167 * *(v153 + 120);

        v360 = v166 + 1;
        v149 = v152;
      }

      goto LABEL_207;
    }

    ggl::BufferData::vendLoadItem(buf, *(v146[17] + 16 * v151), v346, v370[4], v370[3]);
    v153 = *(v146[17] + 16 * v151);
    if (*(v153 + 112) >= 2u && !*(v153 + 104))
    {
      *(v153 + 104) = v370[7];
    }

    v158 = *(v153 + 24);
    if (*&buf[16] != v379)
    {
      ggl::MetalResourceManager::upload(v335, buf, v153);
    }

    v157 = *(v158 + 24);
    v159 = v370[5];
    v160 = atomic_load((v157 + 16));
    if (v160 < v159)
    {
      v161 = v160;
      do
      {
        atomic_compare_exchange_strong((v157 + 16), &v161, v159);
        if (v161 == v160)
        {
          break;
        }

        v160 = v161;
      }

      while (v161 < v159);
    }

    v366 |= 1 << v151;
    std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](&v380);
    if (v157)
    {
      goto LABEL_198;
    }

LABEL_207:
    ++v148;
  }

  while (v148 < *(v147 + 40));
  if (v360)
  {
    [v340 setVertexBuffers:v371 offsets:&v382 withRange:v149];
  }

LABEL_211:
  for (k = 120; k != -8; k -= 8)
  {
  }

  v169 = v370;
  v347 = *(*v370 + 80);
  v341 = v370[1];
  v170 = *(a2 + 32);
  v171 = *(*(*(v170[2] + 40) + 8) + 8);
  if (v171[9])
  {
    v172 = 0;
    v354 = v370[8];
    v361 = 0;
    do
    {
      v173 = (v171[8] + 2 * v172);
      v174 = *v173;
      v175 = v173[1];
      v176 = *(v171[10] + 2 * v172 + 1);
      if ((*(*v170 + 24))(v170, v174))
      {
        if (*(v170[21] + 8 * v174))
        {
          v177 = *(v170[21] + 8 * v174);
        }

        else
        {
          v177 = v169[9];
        }

        v178 = *(v177 + 3);
        v179 = 1 << v174;
        if (((1 << v174) & v361) == 0)
        {
          v180 = v169[5];
          v181 = *(v177 + 3);
          if (v178 == 3735927469)
          {
            v336 = *(a2 + 16);
            if (GEOGetGeoGLDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
            }

            v182 = GEOGetGeoGLDefaultLog_log;
            if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
            {
              *v371 = 136315906;
              v183 = "";
              if (v336)
              {
                v183 = v336;
              }

              *&v371[4] = v183;
              *&v371[12] = 2080;
              *&v371[14] = "!dataHolder->isStale()";
              *&v371[22] = 2080;
              *&v371[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
              LOWORD(v372) = 1024;
              *(&v372 + 2) = 82;
              _os_log_impl(&dword_1B2754000, v182, OS_LOG_TYPE_ERROR, "Marking stale resource as used by gpu - %s: Assertion with expression - %s : Failed in file - %s line - %i", v371, 0x26u);
            }

            v181 = *(v177 + 3);
          }

          v184 = atomic_load((v181 + 16));
          if (v184 < v180)
          {
            v185 = v184;
            do
            {
              atomic_compare_exchange_strong((v181 + 16), &v185, v180);
              if (v185 == v184)
              {
                break;
              }

              v184 = v185;
            }

            while (v185 < v180);
          }

          v361 |= v179;
        }

        v169 = v370;
        if (v178)
        {
          SamplerStateResource = ggl::MetalResourceManager::getSamplerStateResource(v347, v177);
          if (SamplerStateResource)
          {
            v188 = ggl::MetalTextureResource::texture(v178, v186);
            v189 = *(v354 + 26);
            if (*(v189 + 8 * v175) != v178)
            {
              *(v189 + 8 * v175) = v178;
              [v341 setVertexTexture:v188 atIndex:v175];
            }

            v190 = *(SamplerStateResource + 4);
            v191 = *(v354 + 32);
            v192 = *(v191 + 8 * v176);
            if (v192 != SamplerStateResource)
            {
              *(v191 + 8 * v176) = SamplerStateResource;
            }

            v193 = v370[5];
            v194 = atomic_load(SamplerStateResource + 2);
            if (v194 < v193)
            {
              v195 = v194;
              do
              {
                atomic_compare_exchange_strong(SamplerStateResource + 2, &v195, v193);
                if (v195 == v194)
                {
                  break;
                }

                v194 = v195;
              }

              while (v195 < v193);
            }

            if (v192 != SamplerStateResource)
            {
              [v341 setVertexSamplerState:v190 atIndex:v176];
            }

            v169 = v370;
          }
        }
      }

      ++v172;
    }

    while (v172 < v171[9]);
  }

  else
  {
    v361 = 0;
  }

  v348 = v370[1];
  v355 = *(a2 + 32);
  v196 = *(*(*(*(v355 + 2) + 40) + 8) + 24);
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  memset(v371, 0, sizeof(v371));
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  if (*(v196 + 56))
  {
    v197 = 0;
    v198 = 0;
    v199 = 0;
    while (1)
    {
      v200 = (*(v196 + 48) + 2 * v199);
      v201 = *v200;
      v202 = v200[1];
      if (v198)
      {
        if (v198 <= 0xF && v198 + v197 == v202)
        {
          goto LABEL_256;
        }

        [(ggl::Device *)v348 setFragmentBuffers:v371 offsets:&v382 withRange:v197, v198];
        v198 = 0;
      }

      v197 = v202;
LABEL_256:
      v203 = *(*(v355 + 13) + 16 * v201);
      v204 = *(v203 + 24);
      v205 = *(v204 + 24);
      v206 = v370[5];
      v207 = v205;
      if (v205 == 3735927469)
      {
        v208 = *(a2 + 16);
        if (GEOGetGeoGLDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
        }

        v209 = GEOGetGeoGLDefaultLog_log;
        if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v210 = "";
          if (v208)
          {
            v210 = v208;
          }

          *&buf[4] = v210;
          *&buf[12] = 2080;
          *&buf[14] = "!dataHolder->isStale()";
          *&buf[22] = 2080;
          v379 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
          v380 = 1024;
          v381 = 82;
          _os_log_impl(&dword_1B2754000, v209, OS_LOG_TYPE_ERROR, "Marking stale resource as used by gpu - %s: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }

        v207 = *(v204 + 24);
      }

      v211 = atomic_load((v207 + 16));
      if (v211 < v206)
      {
        v212 = v211;
        do
        {
          atomic_compare_exchange_strong((v207 + 16), &v212, v206);
          if (v212 == v211)
          {
            break;
          }

          v211 = v212;
        }

        while (v212 < v206);
      }

      v213 = *(v205 + 32);
      v214 = v213;
      objc_storeStrong(&v371[8 * v198], v213);
      v215 = v370[3];
      if (*(v203 + 112) <= 1u)
      {
        v215 = 0;
      }

      *(&v382 + v198) = *(v203 + 40) + v215 * *(v203 + 120);

      ++v198;
      if (++v199 >= *(v196 + 56))
      {
        if (v198)
        {
          [(ggl::Device *)v348 setFragmentBuffers:v371 offsets:&v382 withRange:v197, v198];
        }

        break;
      }
    }
  }

  for (m = 120; m != -8; m -= 8)
  {
  }

  v337 = *v370;
  v327 = *(*v370 + 80);
  v332 = v370[1];
  v217 = *(a2 + 32);
  v218 = *(*(*(v217[2] + 40) + 8) + 24);
  v342 = v370[8];
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  memset(v371, 0, sizeof(v371));
  v388 = 0u;
  v389 = 0u;
  v386 = 0u;
  v387 = 0u;
  v384 = 0u;
  v385 = 0u;
  v382 = 0u;
  v383 = 0u;
  if (*(v218 + 40))
  {
    v219 = 0;
    v349 = 0;
    v220 = 0;
    do
    {
      v221 = (*(v218 + 32) + 2 * v220);
      v222 = *v221;
      v223 = v221[1];
      if ((*(*v217 + 16))(v217, v222))
      {
        v356 = v219;
        v224 = *(v217[17] + 16 * v222);
        if (!v224)
        {
          if (GEOGetGeoGLDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
          }

          v225 = GEOGetGeoGLDefaultLog_log;
          if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
          {
            v226 = **(*(v217[1] + 24) + 8 * v222);
            *buf = 136315906;
            *&buf[4] = v226;
            *&buf[12] = 2080;
            *&buf[14] = "false";
            *&buf[22] = 2080;
            v379 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
            v380 = 1024;
            v381 = 659;
            _os_log_impl(&dword_1B2754000, v225, OS_LOG_TYPE_ERROR, "You must bind constant data for every one you use in your shader:%s: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
          }
        }

        v227 = *(v224 + 24);
        if (v227)
        {
          v228 = *(v227 + 24);
        }

        else
        {
          v228 = 0;
        }

        v229 = 1 << v222;
        if (((1 << v222) & v366) == 0)
        {
          ggl::BufferData::vendLoadItem(buf, *(v217[17] + 16 * v222), v337, v370[4], v370[3]);
          v224 = *(v217[17] + 16 * v222);
          if (*(v224 + 112) >= 2u && !*(v224 + 104))
          {
            *(v224 + 104) = v370[7];
          }

          v230 = *(v224 + 24);
          if (*&buf[16] != v379)
          {
            ggl::MetalResourceManager::upload(v327, buf, v224);
          }

          v228 = *(v230 + 24);
          v231 = v370[5];
          v232 = v228;
          if (v228 == 3735927469)
          {
            v326 = *(a2 + 16);
            if (GEOGetGeoGLDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
            }

            v233 = GEOGetGeoGLDefaultLog_log;
            if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
            {
              *v390 = 136315906;
              v234 = "";
              if (v326)
              {
                v234 = v326;
              }

              v391 = v234;
              v392 = 2080;
              v393 = "!dataHolder->isStale()";
              v394 = 2080;
              v395 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
              v396 = 1024;
              v397 = 82;
              _os_log_impl(&dword_1B2754000, v233, OS_LOG_TYPE_ERROR, "Marking stale resource as used by gpu - %s: Assertion with expression - %s : Failed in file - %s line - %i", v390, 0x26u);
            }

            v232 = *(v230 + 24);
          }

          v235 = atomic_load((v232 + 16));
          if (v235 < v231)
          {
            v236 = v235;
            do
            {
              atomic_compare_exchange_strong((v232 + 16), &v236, v231);
              if (v236 == v235)
              {
                break;
              }

              v235 = v236;
            }

            while (v236 < v231);
          }

          v366 |= v229;
          std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](&v380);
        }

        v219 = v356;
        if (v228)
        {
          v237 = *(v228 + 32);
          v238 = v237;
          v239 = *(v342 + 184);
          if (*(v239 + 8 * v223) == v228)
          {
            v223 = v356;
          }

          else
          {
            *(v239 + 8 * v223) = v228;
            v240 = v349;
            if (v349)
            {
              if (v349 <= 0xF && (v356 + v349) == v223)
              {
                v223 = v356;
              }

              else
              {
                [v332 setFragmentBuffers:v371 offsets:&v382 withRange:v356];
                v240 = 0;
              }
            }

            v241 = v240;
            objc_storeStrong(&v371[8 * v240], v237);
            v242 = v370[3];
            if (*(v224 + 112) <= 1u)
            {
              v242 = 0;
            }

            *(&v382 + v241) = *(v224 + 40) + v242 * *(v224 + 120);
            v349 = (v241 + 1);
          }

          v219 = v223;
        }
      }

      ++v220;
    }

    while (v220 < *(v218 + 40));
    if (v349)
    {
      [v332 setFragmentBuffers:v371 offsets:&v382 withRange:v219];
    }
  }

  for (n = 120; n != -8; n -= 8)
  {
  }

  v244 = v370;
  v357 = *(*v370 + 80);
  v350 = v370[1];
  v245 = *(a2 + 32);
  v246 = *(*(*(v245[2] + 40) + 8) + 24);
  if (v246[9])
  {
    v247 = 0;
    v367 = v370[8];
    while (1)
    {
      v248 = (v246[8] + 2 * v247);
      v249 = *v248;
      v250 = v248[1];
      v251 = *(v246[10] + 2 * v247 + 1);
      if ((*(*v245 + 24))(v245, v249))
      {
        break;
      }

LABEL_363:
      if (++v247 >= v246[9])
      {
        goto LABEL_364;
      }
    }

    if (*(v245[21] + 8 * v249))
    {
      v252 = *(v245[21] + 8 * v249);
    }

    else
    {
      v252 = v244[9];
    }

    v253 = *(v252 + 24);
    v254 = 1 << v249;
    if (((1 << v249) & v361) == 0)
    {
      if (!v253)
      {
        v255 = *(v252 + 56);
        if (v255 == 1)
        {
          v256 = ggl::MetalResourceManager::newTexture(v357, v252);
LABEL_335:
          v253 = v256;
        }

        else
        {
          if (v255 == 4)
          {
            v256 = ggl::MetalResourceManager::prepareTexture(v357, v252, v370[5]);
            goto LABEL_335;
          }

          v253 = 0;
        }
      }

      v257 = v370[5];
      v258 = *(v252 + 24);
      if (v258 == 3735927469)
      {
        v343 = *(a2 + 16);
        if (GEOGetGeoGLDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
        }

        v259 = GEOGetGeoGLDefaultLog_log;
        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
        {
          *v371 = 136315906;
          v260 = "";
          if (v343)
          {
            v260 = v343;
          }

          *&v371[4] = v260;
          *&v371[12] = 2080;
          *&v371[14] = "!dataHolder->isStale()";
          *&v371[22] = 2080;
          *&v371[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
          LOWORD(v372) = 1024;
          *(&v372 + 2) = 82;
          _os_log_impl(&dword_1B2754000, v259, OS_LOG_TYPE_ERROR, "Marking stale resource as used by gpu - %s: Assertion with expression - %s : Failed in file - %s line - %i", v371, 0x26u);
        }

        v258 = *(v252 + 24);
      }

      v261 = atomic_load((v258 + 16));
      if (v261 < v257)
      {
        v262 = v261;
        do
        {
          atomic_compare_exchange_strong((v258 + 16), &v262, v257);
          if (v262 == v261)
          {
            break;
          }

          v261 = v262;
        }

        while (v262 < v257);
      }

      v361 |= v254;
    }

    v244 = v370;
    if (v253)
    {
      v264 = ggl::MetalResourceManager::getSamplerStateResource(v357, v252);
      if (v264)
      {
        v265 = ggl::MetalTextureResource::texture(v253, v263);
        v266 = *(v367 + 232);
        if (*(v266 + 8 * v250) != v253)
        {
          *(v266 + 8 * v250) = v253;
          [(ggl::Device *)v350 setFragmentTexture:v265 atIndex:v250];
        }

        v267 = *(v264 + 4);
        v268 = *(v367 + 280);
        v269 = *(v268 + 8 * v251);
        if (v269 != v264)
        {
          *(v268 + 8 * v251) = v264;
        }

        v270 = v370[5];
        v271 = atomic_load(v264 + 2);
        if (v271 < v270)
        {
          v272 = v271;
          do
          {
            atomic_compare_exchange_strong(v264 + 2, &v272, v270);
            if (v272 == v271)
            {
              break;
            }

            v271 = v272;
          }

          while (v272 < v270);
        }

        if (v269 != v264)
        {
          [(ggl::Device *)v350 setFragmentSamplerState:v267 atIndex:v251];
        }

        v244 = v370;
      }
    }

    goto LABEL_363;
  }

LABEL_364:

  v273 = v370[1];
  v274 = *(a2 + 32);
  v275 = v274[37];
  if (((*(*(a2 + 24) + 58) - 1) & 0xFC) != 0)
  {
    v276 = 0;
  }

  else
  {
    v276 = (*(*(a2 + 24) + 58) - 1) + 1;
  }

  if (v275 && (v277 = *(v275 + 96)) != 0)
  {
    v324 = v274[37];
    v278 = *(*(*(v274[2] + 40) + 8) + 8);
    v330 = v370[8];
    v279 = *(v277 + 24);
    if (*(v277 + 112) >= 2u && !*(v277 + 104))
    {
      *(v277 + 104) = v370[7];
    }

    v280 = *(v279 + 24);
    v281 = v370[5];
    v282 = v280;
    if (v280 == 3735927469)
    {
      v283 = *(a2 + 16);
      if (GEOGetGeoGLDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
      }

      v284 = GEOGetGeoGLDefaultLog_log;
      if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
      {
        v285 = "";
        if (v283)
        {
          v285 = v283;
        }

        *v371 = 136315906;
        *&v371[4] = v285;
        *&v371[12] = 2080;
        *&v371[14] = "!dataHolder->isStale()";
        *&v371[22] = 2080;
        *&v371[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalRenderItemEncoder.mm";
        LOWORD(v372) = 1024;
        *(&v372 + 2) = 82;
        _os_log_impl(&dword_1B2754000, v284, OS_LOG_TYPE_ERROR, "Marking stale resource as used by gpu - %s: Assertion with expression - %s : Failed in file - %s line - %i", v371, 0x26u);
      }

      v282 = *(v279 + 24);
    }

    v286 = atomic_load((v282 + 16));
    if (v286 < v281)
    {
      v287 = v286;
      do
      {
        atomic_compare_exchange_strong((v282 + 16), &v287, v281);
        if (v287 == v286)
        {
          break;
        }

        v286 = v287;
      }

      while (v287 < v281);
    }

    v328 = *(v280 + 32);
    v288 = a2;
    v289 = v370;
    v290 = v324;
    if (*(a2 + 96))
    {
      v291 = 0;
      v325 = v276;
      while (1)
      {
        v292 = *(v288 + 88);
        if (!v292)
        {
          v292 = a2 + 72;
        }

        v293 = (v292 + 16 * v291);
        v295 = *v293;
        v294 = v293[1];
        v296 = *(v290 + 96);
        v297 = v294 - v295;
        v333 = v291;
        v362 = v295;
        if (v297)
        {
          v368 = v297;
          v351 = *(v296 + 8);
          v358 = *(v296 + 40);
        }

        else
        {
          v358 = *(v296 + 40);
          v351 = *(v296 + 8);
          v368 = (*(v296 + 48) - v358) / v351 - v295;
        }

        v298 = v289[3];
        if (*(v296 + 112) <= 1u)
        {
          v298 = 0;
        }

        v344 = v298;
        v338 = *(v296 + 120);
        v376 = 0u;
        v377 = 0u;
        v374 = 0u;
        v375 = 0u;
        v372 = 0u;
        v373 = 0u;
        memset(v371, 0, sizeof(v371));
        if (*(v278 + 56))
        {
          v299 = 0;
          v300 = 0;
          v301 = 0;
          v302 = v330;
          do
          {
            v303 = (*(v278 + 48) + 2 * v301);
            v304 = *(v274[13] + 16 * *v303);
            if (v304)
            {
              if (*(v304 + 24))
              {
                v305 = v303[1];
                if ((*(*v274 + 32))(v274))
                {
                  v306 = *(v304 + 40);
                  if (*(v304 + 112) < 2u)
                  {
                    v307 = *(v304 + 8) * v306;
                  }

                  else
                  {
                    v307 = v306 + v370[3] * *(v304 + 120);
                  }

                  v308 = *(v302 + 8);
                  v309 = *(v308 + 8 * v305);
                  if (v309 != v307)
                  {
                    *(v308 + 8 * v305) = v307;
                  }

                  if (v300)
                  {
                    v310 = v300 + v299;
                    if (v300 <= 0xF && v310 == v305)
                    {
                      v305 = v299;
                    }

                    else if (v299 >= v310)
                    {
                      v300 = 0;
                    }

                    else
                    {
                      v311 = v371;
                      do
                      {
                        v312 = *v311;
                        v311 += 8;
                        [v273 setVertexBufferOffset:v312 atIndex:v299++];
                        --v300;
                      }

                      while (v300);
                      v302 = v330;
                    }
                  }

                  if (v309 != v307)
                  {
                    *&v371[8 * v300++] = v307;
                  }

                  v299 = v305;
                }
              }
            }

            ++v301;
          }

          while (v301 < *(v278 + 56));
          v289 = v370;
          v290 = v324;
          if (v300 && v299 < v300 + v299)
          {
            v313 = v371;
            do
            {
              v314 = *v313;
              v313 += 8;
              [v273 setVertexBufferOffset:v314 atIndex:v299++];
              --v300;
            }

            while (v300);
          }
        }

        v315 = v358 + v351 * v362 + v344 * v338;
        v316 = *(a2 + 112);
        v317 = *(v290 + 96);
        if (*(a2 + 104) != 1)
        {
          break;
        }

        v318 = v325;
        if (v316)
        {
          goto LABEL_424;
        }

        [v273 drawIndexedPrimitives:v325 indexCount:v368 indexType:*(v317 + 216) != 0 indexBuffer:v328 indexBufferOffset:v315];
LABEL_426:
        v291 = v333 + 1;
        v288 = a2;
        if (v333 + 1 == *(a2 + 96))
        {
          goto LABEL_427;
        }
      }

      v318 = v325;
      if (!v316)
      {
        [v273 drawIndexedPrimitives:v325 indexCount:v368 indexType:*(v317 + 216) != 0 indexBuffer:v328 indexBufferOffset:v315 instanceCount:?];
        goto LABEL_426;
      }

LABEL_424:
      [v273 drawIndexedPrimitives:v318 indexCount:v368 indexType:*(v317 + 216) != 0 indexBuffer:v328 indexBufferOffset:v315 instanceCount:0 baseVertex:v316 baseInstance:v322];
      goto LABEL_426;
    }

LABEL_427:
  }

  else if (*(a2 + 96))
  {
    v319 = 0;
    v320 = 0;
    do
    {
      if (*(a2 + 104) == 1 && *(a2 + 112) == 0)
      {
        [v273 drawPrimitives:v276 vertexStart:? vertexCount:?];
      }

      else
      {
        [v273 drawPrimitives:v276 vertexStart:? vertexCount:? instanceCount:? baseInstance:?];
      }

      ++v320;
      v319 += 16;
    }

    while (v320 != *(a2 + 96));
  }
}

void sub_1B295627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  for (i = 120; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateColorRampGradientResources>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateColorRampGradientResources>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::UpdateColorRampGradientResources,md::ls::RenderItemID const&,md::ls::ColorRampDataHandle const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

__n128 gdc::Camera::Camera(gdc::Camera *this, const gdc::Camera *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  v2 = *(a2 + 5);
  v3 = *(a2 + 6);
  v4 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 6) = v3;
  *(this + 7) = v4;
  *(this + 5) = v2;
  v5 = *(a2 + 200);
  v6 = *(a2 + 216);
  v7 = *(a2 + 232);
  *(this + 184) = *(a2 + 184);
  *(this + 232) = v7;
  *(this + 216) = v6;
  *(this + 200) = v5;
  v8 = *(a2 + 264);
  v9 = *(a2 + 280);
  v10 = *(a2 + 296);
  *(this + 248) = *(a2 + 248);
  *(this + 280) = v9;
  *(this + 296) = v10;
  *(this + 264) = v8;
  v12 = *(a2 + 328);
  v11 = *(a2 + 344);
  v13 = *(a2 + 312);
  *(this + 45) = *(a2 + 45);
  *(this + 328) = v12;
  *(this + 344) = v11;
  *(this + 312) = v13;
  v14 = *(a2 + 136);
  v15 = *(a2 + 152);
  *(this + 168) = *(a2 + 168);
  *(this + 152) = v15;
  *(this + 136) = v14;
  *(this + 23) = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  v16 = *(a2 + 25);
  v17 = *(a2 + 26);
  v18 = *(a2 + 27);
  *(this + 112) = *(a2 + 112);
  *(this + 26) = v17;
  *(this + 27) = v18;
  *(this + 25) = v16;
  *&v17 = *(a2 + 58);
  *(this + 57) = *(a2 + 57);
  *(this + 58) = v17;
  *(this + 59) = *(a2 + 59);
  result = *(a2 + 30);
  *(this + 30) = result;
  return result;
}

void ggl::PolygonOverlay::FillPipelineState::~FillPipelineState(ggl::PolygonOverlay::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

char *ecs2::Runtime::_entities<md::ita::UpdateStyleColorConstantDataHandle,md::ls::RenderItemID const&,md::ls::ColorDataHandle const&>(uint64_t a1, uint64_t **a2)
{
  v169 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v163, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v157, v8, v8, v4, v6);
  v156 = v164;
  v154 = *v163;
  v155 = *&v163[16];
  v151 = *v163;
  v152 = *&v163[16];
  v153 = v164;
  v9 = *v163;
  v148 = v157;
  if (*v163 == v157)
  {
    v10 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = 0;
    goto LABEL_170;
  }

  v10 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v12 = 0;
  v145 = v10;
  v146 = a2;
  v147 = result;
  v149 = (v13 + 4);
  do
  {
    v150 = v12;
    v14 = *(*(*(*(&v152 + 1) + 8) + ((v9[1] >> 3) & 0x1FF8)) + 4 * (v9[1] & 0x3FLL) + 2);
    v15 = v14 & 0x3F;
    v16 = *(*(*(&v152 + 1) + 56) + ((v14 >> 3) & 0x1FF8));
    *(v10 + 104 * *result + 24) = *v9;
    v17 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
    v18 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a2);
    ColorData = md::MaterialResourceStore::getColorData(v18, *(v16 + 8 * v15));
    _S9 = *ColorData;
    _S10 = ColorData[1];
    _S11 = ColorData[2];
    _S8 = ColorData[3];
    v158[0] = 0;
    v159 = __PAIR64__(_S10, _S9);
    v160 = __PAIR64__(_S8, _S11);
    v161 = 1;
    v24 = std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>(v17 + 1303, v158);
    if (v24)
    {
      v25 = v24[5];
      if (v25)
      {
        goto LABEL_162;
      }
    }

    memset(v163, 0, 24);
    v162 = 0;
    v26 = v17[1286];
    v27 = v17[1288];
    if (v17[1285] == v26)
    {
      v25 = ((v17[1289] - v27) >> 3) | 0x100000000;
      v166 = v25;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v17 + 1288), &v166);
    }

    else
    {
      v25 = *(v27 + 8 * *(v26 - 8));
      v17[1286] = v26 - 8;
    }

    v166 = v25;
    v28 = v25 >> 6;
    v29 = v17[1261];
    v30 = v17[1260];
    if (v28 >= (v29 - v30) >> 3)
    {
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = v17[1262];
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        if (v34 >> 2 > v31)
        {
          v31 = v34 >> 2;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v31;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v35);
      }

      bzero(v17[1261], 8 * v32);
      v17[1261] = v29 + 8 * v32;
      v30 = v17[1260];
    }

    v36 = *(v30 + 8 * v28);
    if (!v36)
    {
      operator new();
    }

    v37 = (v36 + 16 * (v25 & 0x3F));
    if (*v37 == -1 && v37[1] == 0)
    {
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v17 + 1263), &v166);
      v39 = ((v17[1264] - v17[1263]) >> 3) - 1;
      *v37 = HIDWORD(v25);
      v37[1] = v39;
      v40 = v39 & 0x3F;
      v41 = *(v17[1266] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(v17 + 1266, v39)) + 24 * v40;
      *v41 = xmmword_1B33B09D0;
      *(v41 + 16) = 0;
      v42 = v39 >> 6;
      v43 = v17[1273];
      v44 = v17[1272];
      v45 = v43 - v44;
      if (v39 >> 6 < (v43 - v44) >> 3)
      {
LABEL_57:
        v65 = *(v44 + 8 * v42) + 24 * v40;
        *v65 = *v163;
        *(v65 + 16) = *&v163[16];
        *&v163[8] = 0;
        *&v163[16] = 0;
        v66 = v17[1279];
        v67 = v17[1278];
        v68 = v66 - v67;
        if (v42 < (v66 - v67) >> 3)
        {
LABEL_87:
          *(*(v67 + 8 * v42) + 8 * v40) = v162;
          goto LABEL_88;
        }

        v69 = v42 + 1;
        v70 = v42 + 1 - (v68 >> 3);
        v71 = v17[1280];
        if (v70 > (v71 - v66) >> 3)
        {
          v72 = v71 - v67;
          v73 = (v71 - v67) >> 2;
          if (v73 <= v69)
          {
            v73 = v42 + 1;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFF8)
          {
            v74 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v74 = v73;
          }

          if (!(v74 >> 61))
          {
            operator new();
          }

          goto LABEL_173;
        }

        v75 = 0;
        v76 = (v70 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v77 = vdupq_n_s64(v76);
        do
        {
          v78 = vmovn_s64(vcgeq_u64(v77, vorrq_s8(vdupq_n_s64(v75), xmmword_1B33B0560)));
          if (v78.i8[0])
          {
            *(v66 + 8 * v75) = 0;
          }

          if (v78.i8[4])
          {
            *(v66 + 8 * v75 + 8) = 0;
          }

          v75 += 2;
        }

        while (v76 - ((v70 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v75);
        v17[1279] = v66 + 8 * v70;
        v79 = v17[1282];
        v80 = v17[1281];
        v81 = (v79 - v80) >> 4;
        if (v81 > v42)
        {
          if (v69 >= v81)
          {
            goto LABEL_85;
          }

          v82 = v80 + 16 * v69;
LABEL_84:
          v17[1282] = v82;
LABEL_85:
          v67 = v17[1278];
          if (v68 < (v17[1279] - v67))
          {
            operator new();
          }

          goto LABEL_87;
        }

        v83 = v69 - v81;
        v84 = v17[1283];
        if (v83 <= (v84 - v79) >> 4)
        {
          bzero(v17[1282], 16 * v83);
          v82 = v79 + 16 * v83;
          goto LABEL_84;
        }

        v85 = v84 - v80;
        v86 = v85 >> 3;
        if (v85 >> 3 <= v69)
        {
          v86 = v42 + 1;
        }

        if (v85 >= 0x7FFFFFFFFFFFFFF0)
        {
          v87 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v86;
        }

        if (!(v87 >> 60))
        {
          operator new();
        }

LABEL_173:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v46 = v42 + 1;
      v47 = v42 + 1 - (v45 >> 3);
      v48 = v17[1274];
      if (v47 > (v48 - v43) >> 3)
      {
        v49 = v48 - v44;
        v50 = (v48 - v44) >> 2;
        if (v50 <= v46)
        {
          v50 = v42 + 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF8)
        {
          v51 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        if (!(v51 >> 61))
        {
          operator new();
        }

        goto LABEL_173;
      }

      v52 = 0;
      v53 = (v47 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v54 = vdupq_n_s64(v53);
      do
      {
        v55 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(vdupq_n_s64(v52), xmmword_1B33B0560)));
        if (v55.i8[0])
        {
          *(v43 + 8 * v52) = 0;
        }

        if (v55.i8[4])
        {
          *(v43 + 8 * v52 + 8) = 0;
        }

        v52 += 2;
      }

      while (v53 - ((v47 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v52);
      v17[1273] = v43 + 8 * v47;
      v56 = v17[1276];
      v57 = v17[1275];
      v58 = (v56 - v57) >> 4;
      if (v58 <= v42)
      {
        v60 = v46 - v58;
        v61 = v17[1277];
        if (v60 > (v61 - v56) >> 4)
        {
          v62 = v61 - v57;
          v63 = v62 >> 3;
          if (v62 >> 3 <= v46)
          {
            v63 = v42 + 1;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF0)
          {
            v64 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v63;
          }

          if (!(v64 >> 60))
          {
            operator new();
          }

          goto LABEL_173;
        }

        bzero(v17[1276], 16 * v60);
        v59 = v56 + 16 * v60;
      }

      else
      {
        if (v46 >= v58)
        {
          goto LABEL_55;
        }

        v59 = v57 + 16 * v46;
      }

      v17[1276] = v59;
LABEL_55:
      v44 = v17[1272];
      if (v45 < (v17[1273] - v44))
      {
        operator new();
      }

      goto LABEL_57;
    }

LABEL_88:
    v88 = geo::Color<float,4,(geo::ColorSpace)0>::hash(v149);
    v89 = v88 - 0x61C8864680B583EBLL;
    v90 = v17[1304];
    if (!*&v90)
    {
      goto LABEL_109;
    }

    v91 = vcnt_s8(v90);
    v91.i16[0] = vaddlv_u8(v91);
    if (v91.u32[0] > 1uLL)
    {
      v92 = v88 - 0x61C8864680B583EBLL;
      if (v89 >= *&v90)
      {
        v92 = v89 % *&v90;
      }
    }

    else
    {
      v92 = (*&v90 - 1) & v89;
    }

    v93 = *(v17[1303] + 8 * v92);
    if (!v93 || (v94 = *v93) == 0)
    {
LABEL_109:
      operator new();
    }

    while (1)
    {
      v95 = v94[1];
      if (v95 == v89)
      {
        break;
      }

      if (v91.u32[0] > 1uLL)
      {
        if (v95 >= *&v90)
        {
          v95 %= *&v90;
        }
      }

      else
      {
        v95 &= *&v90 - 1;
      }

      if (v95 != v92)
      {
        goto LABEL_109;
      }

LABEL_108:
      v94 = *v94;
      if (!v94)
      {
        goto LABEL_109;
      }
    }

    if (!*(v94 + 36))
    {
      goto LABEL_108;
    }

    if (*(v94 + 20) != v159 || *(v94 + 28) != v160)
    {
      goto LABEL_108;
    }

    v94[5] = v25;
    v97 = v17[1309];
    if (!*&v97)
    {
      goto LABEL_126;
    }

    v98 = vcnt_s8(v97);
    v98.i16[0] = vaddlv_u8(v98);
    if (v98.u32[0] > 1uLL)
    {
      v99 = v25;
      if (v25 >= *&v97)
      {
        v99 = v25 % *&v97;
      }
    }

    else
    {
      v99 = (*&v97 - 1) & v25;
    }

    v100 = *(v17[1308] + 8 * v99);
    if (!v100 || (v101 = *v100) == 0)
    {
LABEL_126:
      operator new();
    }

    while (2)
    {
      v102 = v101[1];
      if (v102 != v25)
      {
        if (v98.u32[0] > 1uLL)
        {
          if (v102 >= *&v97)
          {
            v102 %= *&v97;
          }
        }

        else
        {
          v102 &= *&v97 - 1;
        }

        if (v102 != v99)
        {
          goto LABEL_126;
        }

LABEL_125:
        v101 = *v101;
        if (!v101)
        {
          goto LABEL_126;
        }

        continue;
      }

      break;
    }

    if (v101[2] != v25)
    {
      goto LABEL_125;
    }

    *(v101 + 24) = v158[0];
    v103 = (v101 + 28);
    v104 = *(v101 + 44);
    if (v104 == v161)
    {
      if (*(v101 + 44))
      {
        for (i = 0; i != 16; i += 4)
        {
          *(v103 + i) = *(v149 + i);
        }
      }
    }

    else
    {
      if (v104)
      {
        v106 = 0;
      }

      else
      {
        *v103 = *v149;
        v106 = 1;
      }

      *(v101 + 44) = v106;
    }

    if (*&v163[16])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v163[16]);
    }

    v107 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 1259, v25);
    if (v107 == v17[1264])
    {
      v108 = 0;
      goto LABEL_161;
    }

    v109 = v107;
    v110 = v17[1297];
    v144 = v17[1263];
    if (v17[1296] == v110)
    {
      v111 = v17[1302];
      if (!v111)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v108 = (*(*v111 + 48))(v111);
    }

    else
    {
      v108 = *(v110 - 8);
      v17[1297] = v110 - 8;
    }

    v112 = 0x9DDFEA08EB382D69 * ((8 * (v108 & 0x1FFFFFFF) + 8) ^ HIDWORD(v108));
    v113 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v112 >> 47) ^ v112);
    v114 = 0x9DDFEA08EB382D69 * (v113 ^ (v113 >> 47));
    v115 = v17[1292];
    if (!*&v115)
    {
      goto LABEL_160;
    }

    v116 = vcnt_s8(v115);
    v116.i16[0] = vaddlv_u8(v116);
    if (v116.u32[0] > 1uLL)
    {
      v117 = 0x9DDFEA08EB382D69 * (v113 ^ (v113 >> 47));
      if (v114 >= *&v115)
      {
        v117 = v114 % *&v115;
      }
    }

    else
    {
      v117 = v114 & (*&v115 - 1);
    }

    v118 = *(v17[1291] + 8 * v117);
    if (!v118 || (v119 = *v118) == 0)
    {
LABEL_160:
      operator new();
    }

    while (2)
    {
      v120 = v119[1];
      if (v120 != v114)
      {
        if (v116.u32[0] > 1uLL)
        {
          if (v120 >= *&v115)
          {
            v120 %= *&v115;
          }
        }

        else
        {
          v120 &= *&v115 - 1;
        }

        if (v120 != v117)
        {
          goto LABEL_160;
        }

LABEL_159:
        v119 = *v119;
        if (!v119)
        {
          goto LABEL_160;
        }

        continue;
      }

      break;
    }

    if (v119[2] != v108)
    {
      goto LABEL_159;
    }

    v121 = (((v109 - v144) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v122 = *(v17[1266] + v121);
    v123 = ((v109 - v144) >> 3) & 0x3F;
    v124 = *(v17[1272] + v121);
    v125 = *(v17[1278] + v121);
    *(v124 + 24 * v123) = v108;
    ++*(v122 + 24 * v123);
    *(v125 + 8 * v123) = v108;
LABEL_161:
    v126 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v163, v108);
    __asm
    {
      FCVT            H0, S9
      FCVT            H1, S10
      FCVT            H2, S11
    }

    v133 = v165;
    *v165 = _H0;
    __asm { FCVT            H0, S8 }

    v133[1] = _H1;
    v133[2] = _H2;
    v133[3] = _H0;
    ggl::BufferMemory::~BufferMemory(v126);
    v10 = v145;
    a2 = v146;
LABEL_162:
    v135 = ecs2::ExecutionTaskContext::currentEntity(v24);
    v166 = &unk_1F2A35730;
    *&v167 = v25;
    DWORD2(v167) = v135;
    v168 = &v166;
    HIDWORD(v167) = 0;
    *&v163[24] = v163;
    *v163 = &unk_1F2A35730;
    *&v163[8] = v167;
    *&v163[20] = 0;
    LODWORD(v164) = 0;
    ecs2::Runtime::queueCommand();
    if (v164 != -1)
    {
      (off_1F2A35178[v164])(&v162, v163);
    }

    LODWORD(v164) = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v166);
    v12 = v150 + 1;
    v136 = *(&v151 + 1);
    v137 = (v151 + 4);
    do
    {
      v9 = v137;
      *&v151 = v137;
      if (v137 == v136)
      {
        break;
      }

      v138 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v151, *v137, v137[1]);
      v137 = v9 + 2;
    }

    while (!v138);
    result = v147;
  }

  while (v9 != v148);
LABEL_170:
  *(v10 + 104 * *result + 24) = -65536;
  v139 = v10 + 104 * *result;
  v140 = *(v139 + 92);
  *(v139 + 92) = v140 + 1;
  *(v139 + 4 * v140 + 28) = v12;
  v141 = v10 + 104 * *result;
  v143 = *(v141 + 92);
  v142 = (v141 + 92);
  if (v143 > 0xF)
  {
    *v142 = 0;
  }

  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleColorConstantDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::UpdateStyleColorConstantDataHandle,md::ls::RenderItemID const&,md::ls::ColorDataHandle const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void *ggl::MetalResourceManager::newPipelineState(ggl::MetalResourceManager *this, const ggl::PipelineState *a2)
{
  v2 = a2;
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 5);
  v101 = *(v3 + 16);
  v102 = **v3;
  v103 = objc_alloc_init(MEMORY[0x1E6974148]);
  v4 = [MEMORY[0x1E69741E0] vertexDescriptor];
  v104 = v2;
  if (*(*(v2 + 5) + 24))
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = (v101 + 48 * v6);
      v106 = *(*v102 + 8 * v7[1]);
      v105 = *v106;
      v8 = *(*v106 + 24);
      v9 = [v4 layouts];
      v10 = [v9 objectAtIndexedSubscript:v6];
      [v10 setStride:v8];

      v11 = *(v106 + 2);
      v12 = v11 == 1 ? 2 : v11 == 0;
      v13 = [v4 layouts];
      v14 = [v13 objectAtIndexedSubscript:v6];
      [v14 setStepFunction:v12];

      v15 = [v4 layouts];
      v16 = [v15 objectAtIndexedSubscript:v6];
      [v16 setStepRate:1];

      if (v7[5])
      {
        break;
      }

LABEL_42:
      ++v6;
      v2 = v104;
      if (v6 == *(*(v104 + 5) + 24))
      {
        goto LABEL_43;
      }
    }

    v17 = 0;
    v18 = 8;
    while (1)
    {
      v19 = 0;
      v20 = *(v7[4] + v18);
      v21 = *(v105 + 8) + 32 * v20;
      v22 = 8 * v20;
      v23 = *(v21 + 8);
      v24 = *(v106[2] + v22);
      if (v23 > 5)
      {
        if (*(v21 + 8) <= 8u)
        {
          if (v23 == 6)
          {
LABEL_31:
            if (v24 >= 0xE)
            {
              goto LABEL_40;
            }

            v25 = &unk_1B341C8D0;
            goto LABEL_39;
          }

          if (v23 == 7)
          {
            if (v24 >= 0xE)
            {
LABEL_40:
              v19 = 0;
              goto LABEL_41;
            }

LABEL_38:
            v25 = &unk_1B341C940;
LABEL_39:
            v19 = v25[v24];
            goto LABEL_41;
          }

          if (v23 != 8)
          {
            goto LABEL_41;
          }

LABEL_29:
          if (v24 >= 0xE)
          {
            goto LABEL_40;
          }

          v25 = &unk_1B341C7F0;
          goto LABEL_39;
        }

        switch(v23)
        {
          case 9u:
            goto LABEL_27;
          case 0xAu:
            goto LABEL_31;
          case 0xBu:
            if (v24 > 0xD)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
        }
      }

      else if (*(v21 + 8) > 2u)
      {
        if (v23 != 3)
        {
          if (v23 != 4)
          {
            if (v23 != 5)
            {
              goto LABEL_41;
            }

LABEL_27:
            if (v24 >= 0xE)
            {
              goto LABEL_40;
            }

            v25 = &unk_1B341C860;
            goto LABEL_39;
          }

          goto LABEL_29;
        }

        v25 = &unk_1B341C780;
        if (v24 < 0xE)
        {
          goto LABEL_39;
        }

        v19 = 13;
      }

      else if (v23 >= 2)
      {
        v25 = &unk_1B341C710;
        if (v24 < 0xE)
        {
          goto LABEL_39;
        }

        v19 = 49;
      }

      else
      {
        v25 = &unk_1B341C6A0;
        if (v24 < 0xE)
        {
          goto LABEL_39;
        }

        v19 = 50;
      }

LABEL_41:
      v26 = [v4 attributes];
      v27 = [v26 objectAtIndexedSubscript:v5];
      [v27 setFormat:v19];

      v28 = *(v21 + 24);
      v29 = [v4 attributes];
      v30 = [v29 objectAtIndexedSubscript:v5];
      [v30 setOffset:v28];

      v31 = [v4 attributes];
      v32 = [v31 objectAtIndexedSubscript:v5];
      [v32 setBufferIndex:v6];

      ++v17;
      ++v5;
      v18 += 48;
      if (v17 == v7[5])
      {
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  [v103 setVertexDescriptor:v4];

  v33 = *(v2 + 6);
  v34 = ggl::MetalResourceManager::newShaderFunction(this, *(v33 + 80), *(v2 + 377), *(v2 + 288), *(v2 + 37));
  if (v34)
  {
    v35 = ggl::MetalResourceManager::newShaderFunction(this, *(v33 + 88), *(v2 + 378), *(v2 + 288), *(v2 + 37));
    v36 = v34[4];
    v37 = v35[4];
    v38 = v37;
    if (v36)
    {
      v39 = v37 == 0;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      if (GEOGetGeoGLDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLDefaultLog_onceToken, &__block_literal_global_50375);
      }

      v40 = GEOGetGeoGLDefaultLog_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(v33 + 8);
        *buf = 136315138;
        v110 = v41;
        _os_log_impl(&dword_1B2754000, v40, OS_LOG_TYPE_ERROR, "Shader %s has nil functions", buf, 0xCu);
      }

      v43 = ggl::zone_mallocator::instance(v42);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v43, v34);

      v45 = ggl::zone_mallocator::instance(v44);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v45, v35);
    }

    else
    {
      [v103 setVertexFunction:v36];
      [v103 setFragmentFunction:v38];

      if (*(v2 + 34))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          PixelFormat = ggl::getPixelFormat(*(v2 + v48 + 64), *(*(this + 32) + 16));
          v50 = [v103 colorAttachments];
          v51 = [v50 objectAtIndexedSubscript:v48];
          [v51 setPixelFormat:PixelFormat];

          v52 = *(v104 + v47 + 108);
          v53 = [v103 colorAttachments];
          v54 = [v53 objectAtIndexedSubscript:v48];
          [v54 setWriteMask:__rbit32(v52) >> 28];

          v55 = *(v104 + v47 + 64);
          v56 = [v103 colorAttachments];
          v57 = [v56 objectAtIndexedSubscript:v48];
          [v57 setBlendingEnabled:v55];

          v58 = (*(v104 + v47 + 88) - 1);
          if (v58 < 4)
          {
            v59 = v58 + 1;
          }

          else
          {
            v59 = 0;
          }

          v60 = [v103 colorAttachments];
          v61 = [v60 objectAtIndexedSubscript:v48];
          [v61 setAlphaBlendOperation:v59];

          v62 = (*(v104 + v47 + 76) - 1);
          if (v62 < 4)
          {
            v63 = v62 + 1;
          }

          else
          {
            v63 = 0;
          }

          v64 = [v103 colorAttachments];
          v65 = [v64 objectAtIndexedSubscript:v48];
          [v65 setRgbBlendOperation:v63];

          v66 = *(v104 + v47 + 84) - 1;
          if (v66 > 0xD)
          {
            v67 = 0;
          }

          else
          {
            v67 = qword_1B341C9B0[v66];
          }

          v68 = [v103 colorAttachments];
          v69 = [v68 objectAtIndexedSubscript:v48];
          [v69 setDestinationAlphaBlendFactor:v67];

          v70 = *(v104 + v47 + 72) - 1;
          if (v70 > 0xD)
          {
            v71 = 0;
          }

          else
          {
            v71 = qword_1B341C9B0[v70];
          }

          v72 = [v103 colorAttachments];
          v73 = [v72 objectAtIndexedSubscript:v48];
          [v73 setDestinationRGBBlendFactor:v71];

          v74 = *(v104 + v47 + 80) - 1;
          if (v74 > 0xD)
          {
            v75 = 0;
          }

          else
          {
            v75 = qword_1B341C9B0[v74];
          }

          v76 = [v103 colorAttachments];
          v77 = [v76 objectAtIndexedSubscript:v48];
          [v77 setSourceAlphaBlendFactor:v75];

          v78 = *(v104 + v47 + 68) - 1;
          if (v78 > 0xD)
          {
            v79 = 0;
          }

          else
          {
            v79 = qword_1B341C9B0[v78];
          }

          v80 = [v103 colorAttachments];
          v81 = [v80 objectAtIndexedSubscript:v48];
          [v81 setSourceRGBBlendFactor:v79];
          v2 = v104;

          ++v48;
          v47 += 48;
        }

        while (v48 != *(v104 + 34));
      }

      v82 = *(v2 + 71);
      v83 = ggl::getPixelFormat(v82, *(*(this + 32) + 16));
      v84 = v83;
      v85 = 0;
      if (v82 <= 0x1A && ((1 << v82) & 0x4380000) != 0)
      {
        v85 = v83;
      }

      [v103 setDepthAttachmentPixelFormat:v85];
      if (v82 - 25 >= 2)
      {
        v86 = 0;
      }

      else
      {
        v86 = v84;
      }

      [v103 setStencilAttachmentPixelFormat:v86];
      [v103 setSupportIndirectCommandBuffers:*(v2 + 376)];
      [v103 setRasterSampleCount:*(v2 + 70)];
      [v103 setAlphaToCoverageEnabled:*(v2 + 92) == 0];
      [v103 setMaxVertexAmplificationCount:*(v2 + 93)];
      v87 = this;
      v88 = *(*(this + 32) + 128);

      if (v88)
      {
        v89 = *(*(this + 32) + 128);
        v108 = v89;
        v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        [v103 setBinaryArchives:v90];

        v87 = this;
      }

      v91 = *(*(v87 + 32) + 104);
      v107 = 0;
      v38 = [v91 newRenderPipelineStateWithDescriptor:v103 options:0 reflection:0 error:&v107];
      v36 = v107;

      v93 = ggl::zone_mallocator::instance(v92);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v93, v34);
      if (v35)
      {

        v96 = ggl::zone_mallocator::instance(v95);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v96, v35);
      }

      if (!v36)
      {
        v99 = ggl::zone_mallocator::instance(v94);
        v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v99, 0x28uLL);
        *v46 = 0;
        *(v46 + 4) = 1281;
        *(v46 + 2) = 0;
        *(v46 + 3) = 0;
        *(v46 + 4) = 0;
        objc_storeStrong(v46 + 4, v38);
        ggl::RenderDataHolder::setRenderResource(v2, this, v46);
        ggl::ResourceManager::_addResourceStat(this, "PipelineState", 0x28DAD03E0000000DuLL, 0);
        v36 = 0;
        goto LABEL_89;
      }

      v97 = [v36 localizedDescription];
      NSLog(@"PSO error: %@", v97);
    }

    v46 = 0;
LABEL_89:

    goto LABEL_90;
  }

  v46 = 0;
LABEL_90:

  return v46;
}

float md::LayoutContext::updateCameraState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 736) == 1)
  {
    *(a1 + 224) = *a2;
    v2 = *(a2 + 16);
    v3 = *(a2 + 32);
    v4 = *(a2 + 64);
    *(a1 + 272) = *(a2 + 48);
    *(a1 + 288) = v4;
    *(a1 + 240) = v2;
    *(a1 + 256) = v3;
    v5 = *(a2 + 80);
    v6 = *(a2 + 96);
    v7 = *(a2 + 112);
    *(a1 + 352) = *(a2 + 128);
    *(a1 + 320) = v6;
    *(a1 + 336) = v7;
    *(a1 + 304) = v5;
    *(a1 + 360) = *(a2 + 136);
    *(a1 + 368) = *(a2 + 144);
    *(a1 + 376) = *(a2 + 152);
    *(a1 + 384) = *(a2 + 160);
    *(a1 + 392) = *(a2 + 168);
    *(a1 + 400) = *(a2 + 176);
    *(a1 + 408) = *(a2 + 184);
    *(a1 + 416) = *(a2 + 192);
    *(a1 + 424) = *(a2 + 200);
    *(a1 + 432) = *(a2 + 208);
    *(a1 + 440) = *(a2 + 216);
    *(a1 + 448) = *(a2 + 224);
    *(a1 + 456) = *(a2 + 232);
    *(a1 + 464) = *(a2 + 240);
    *(a1 + 472) = *(a2 + 248);
    *(a1 + 480) = *(a2 + 256);
    *(a1 + 488) = *(a2 + 264);
    *(a1 + 496) = *(a2 + 272);
    *(a1 + 504) = *(a2 + 280);
    *(a1 + 512) = *(a2 + 288);
    *(a1 + 520) = *(a2 + 296);
    *(a1 + 528) = *(a2 + 304);
    *(a1 + 536) = *(a2 + 312);
    *(a1 + 544) = *(a2 + 320);
    *(a1 + 552) = *(a2 + 328);
    v8 = *(a2 + 352);
    *(a1 + 560) = *(a2 + 336);
    *(a1 + 576) = v8;
    *(a1 + 592) = *(a2 + 368);
    *(a1 + 608) = *(a2 + 384);
    *(a1 + 624) = *(a2 + 400);
    *(a1 + 632) = *(a2 + 408);
    *(a1 + 640) = *(a2 + 416);
    *(a1 + 648) = *(a2 + 424);
    v9 = *(a2 + 432);
    *(a1 + 672) = *(a2 + 448);
    *(a1 + 656) = v9;
    v10 = *(a2 + 472);
    *(a1 + 680) = *(a2 + 456);
    *(a1 + 696) = v10;
    *(a1 + 712) = *(a2 + 488);
    result = *(a2 + 492);
    *(a1 + 716) = result;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorDataHandle>();
    unk_1EB83D750 = 0xA3F884E4E2541296;
    qword_1EB83D758 = "md::ls::ColorDataHandle]";
    qword_1EB83D760 = 23;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata >= 0x200)
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

void ggl::Circle::FillPipelineState::~FillPipelineState(ggl::Circle::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

float gdc::DisplayZoomLevel::centerZoomLevel(gdc::DisplayZoomLevel *this, const gdc::Camera *a2)
{
  gdc::Camera::convertToMercatorUnits(this);
  v4 = v3;
  v5 = *(this + 46);
  v6 = *(this + 47);
  if (v5 >= v6)
  {
    v12 = *(this + 57);
  }

  else
  {
    v7 = v6 * v5;
    v8 = v5 / v6;
    if (v7 <= 0.0)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = v8;
    }

    v10 = tan(*(this + 57) * 0.5);
    v11 = atan(v10 * v9);
    v12 = v11 + v11;
  }

  v13 = tan(v12 * 0.5);
  v14 = log2(v4 * (v13 + v13));
  return fminf(fmaxf(-v14, 1.0), 25.0);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataForCommandBuffer>();
    unk_1EB83CFB0 = 0x171C8753A53C145FLL;
    qword_1EB83CFB8 = "md::ls::DataForCommandBuffer]";
    qword_1EB83CFC0 = 28;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::DataForCommandBuffer>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataForCommandBuffer>(void)::metadata >= 0x200)
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

void gdc::Camera::convertToMercatorUnits(uint64_t a1)
{
  if (*a1 == 2)
  {
    geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(fmin(fmax(*(a1 + 8), -1.48352986), 1.48352986));
  }
}

void std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::FrameState &)>::~__value_func[abi:nn200100](uint64_t a1)
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