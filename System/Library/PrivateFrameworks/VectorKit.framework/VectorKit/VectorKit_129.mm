void ___ZN2md18TransitRenderLayer20transitionRenderableEPNS_25TransitTileDataRenderableEffb_block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  md::TransitTileDataRenderable::setAlpha(*(*(a1 + 32) + 392), a2);
  v3 = *(a1 + 32) + 408;

  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v3, 0);
}

uint64_t ___ZN2md18TransitRenderLayer19beginFadeOutTransitENSt3__18functionIFvvEEE_block_invoke(uint64_t result, double a2)
{
  v2 = *(*(result + 32) + 104);
  if (v2)
  {
    v3 = 1.0 - *&a2;
    do
    {
      *&a2 = v3;
      result = md::TransitTileDataRenderable::setAlpha(*(v2[16] + 392), a2);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void ___ZN2md18TransitRenderLayer19beginFadeOutTransitENSt3__18functionIFvvEEE_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    for (i = *(v3 + 104); i; i = *i)
    {
      md::TransitTileDataRenderable::setAlpha(*(i[16] + 392), 0.0);
    }
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    (*(*v5 + 48))(v5);
    v6 = *(v3 + 376);
    v7 = *(v6 + 112);
    *(v6 + 112) = 0;
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::operator()(v8);
  }
}

uint64_t std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[32] = 0;
  return (*(*v1 + 48))();
}

__n128 std::__function::__func<md::TransitRenderLayer::deactivate(BOOL)::$_0,std::allocator<md::TransitRenderLayer::deactivate(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39D90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::TransitRenderLayer::reserveStencilRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 1);
  v5 = *(*(result + 384) + 32);
  if (v5[20] == v4 || v5[19] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 152), 0);
    *(*(v3 + 376) + 72) = result - *(v3 + 48);
  }

  else if (v5[93] == v4 || v5[92] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 144), 0);
    *(*(v3 + 376) + 68) = result - *(v3 + 48);
  }

  else if (v5[76] == v4 || v5[75] == v4)
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(result + 49) - *(result + 48) + 1), (*(result + 376) + 136), 0);
    *(*(v3 + 376) + 64) = result - *(v3 + 48);
  }

  return result;
}

uint64_t md::TransitRenderLayer::layout(md::TransitRenderLayer *this, const md::LayoutContext *a2)
{
  v347 = *MEMORY[0x1E69E9840];
  v303 = mach_absolute_time();
  md::TransitRenderLayer::updateActiveTileDatas(this);
  v4 = *(a2 + 1);
  v5 = md::LayoutContext::get<md::SettingsContext>(v4);
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    if (*v5 == v7)
    {
      goto LABEL_12;
    }

    v8 = *v5;
    while (*v8 != 21)
    {
      v8 += 16;
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    if (v8 != v7 && *(v8 + 8))
    {
      v310 = 0;
      goto LABEL_15;
    }

LABEL_12:
    while (v6 != v7)
    {
      if (*v6 == 25)
      {
        if (v6 == v7)
        {
          break;
        }

        v9 = *(v6 + 8) == 0;
        goto LABEL_14;
      }

      v6 += 16;
    }
  }

  v9 = 1;
LABEL_14:
  v310 = v9;
LABEL_15:
  v10 = gdc::Context::get<md::StyleLogicContext>(v4);
  v336[0] = &unk_1F2A39D48;
  v336[1] = this;
  v315 = this;
  v336[3] = v336;
  md::StyleLogicContext::parseEvents(v10, v336);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v336);
  v11 = gdc::Context::context<md::TransitContext>(*(a2 + 1));
  if (!v11)
  {
    goto LABEL_410;
  }

  v12 = v11;
  v13 = this;
  v14 = *(this + 44);
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  v15 = *(this + 47);
  v312 = a2;
  if (*(v15 + 4) == 1)
  {
    v16 = +[VKDebugSettings sharedSettings];
    if ([v16 disableTransitLineMerging])
    {
      v17 = 7;
    }

    else if ([v16 disableTransitLineGroupMerging])
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(this + 47);
    if (*(v18 + 323) != v17)
    {
      *(v18 + 323) = v17;
      v19 = *(this + 102);
      if ((v19 + 1) > 1)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = 1;
      }

      *(this + 102) = v20;
    }

    v21 = *(v18 + 324);
    if (v21 != [v16 disableIntraLinkTransitLineCrossings])
    {
      *(*(v315 + 47) + 324) = [v16 disableIntraLinkTransitLineCrossings];
      v22 = *(v315 + 102);
      if ((v22 + 1) > 1)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 1;
      }

      *(v315 + 102) = v23;
    }

    if (([v16 transitHighlighting] & 1) == 0 && (*(*(v315 + 47) + 322) & 1) == 0)
    {
      *v328 = 0;
      *&v328[8] = 0;
      md::TransitRenderLayer::setDebugHighlightedItem(v315, v328);
    }

    v24 = [v16 disableOverlayTextConsole];
    v25 = *(v315 + 47);
    *(v25 + 322) = v24;
    v26 = *(v25 + 321);
    if (v26 != [v16 paintTransitCounts])
    {
      *(*(v315 + 47) + 321) = [v16 paintTransitCounts];
      v27 = *(v315 + 102);
      if ((v27 + 1) > 1)
      {
        v28 = v27 + 1;
      }

      else
      {
        v28 = 1;
      }

      *(v315 + 102) = v28;
      *(v315 + 416) = 1;
    }

    v13 = v315;
    v15 = *(v315 + 47);
  }

  v29 = *(v15 + 96);
  if (v29)
  {
    v30 = *(*(v13 + 5) + 104);
    [v30 contentScale];
    v32 = v31;
    if (v29[66] != v32)
    {
      v29[66] = v32;
      md::TransitNodeFeaturePool::resetCache(v29);
    }

    v13 = v315;
  }

  if (*(v12 + 224) == 1)
  {
    v33 = *(v13 + 47);
    if (*(v33 + 104) == 1)
    {
      v34 = *(v33 + 56);
      v35 = *(v12 + 24);
      *&v329 = 0;
      *v328 = &v328[8];
      *&v328[8] = 0;
      for (i = 0; v35; v35 = *v35)
      {
        v37 = *&v328[8];
        v38 = &v328[8];
        if (*v328 == &v328[8])
        {
          goto LABEL_56;
        }

        v39 = *&v328[8];
        v40 = &v328[8];
        if (*&v328[8])
        {
          do
          {
            v38 = v39;
            v39 = v39[1];
          }

          while (v39);
        }

        else
        {
          do
          {
            v38 = *(v40 + 2);
            v41 = *v38 == v40;
            v40 = v38;
          }

          while (v41);
        }

        v42 = v35[2];
        if (v38[4] < v42)
        {
LABEL_56:
          if (*&v328[8])
          {
            v43 = v38;
          }

          else
          {
            v43 = &v328[8];
          }

          if (*&v328[8])
          {
            v44 = (v38 + 1);
          }

          else
          {
            v44 = &v328[8];
          }
        }

        else
        {
          v43 = &v328[8];
          v44 = &v328[8];
          if (*&v328[8])
          {
            v44 = &v328[8];
            while (1)
            {
              while (1)
              {
                v43 = v37;
                v47 = v37[4];
                if (v42 >= v47)
                {
                  break;
                }

                v37 = *v43;
                v44 = v43;
                if (!*v43)
                {
                  goto LABEL_63;
                }
              }

              if (v47 >= v42)
              {
                break;
              }

              v44 = v43 + 1;
              v37 = v43[1];
              if (!v37)
              {
                goto LABEL_63;
              }
            }
          }
        }

        if (!*v44)
        {
LABEL_63:
          v45 = mdm::zone_mallocator::instance(v11);
          v46 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<unsigned long long,void *>>(v45);
          v46[4] = v35[2];
          *v46 = 0;
          v46[1] = 0;
          v46[2] = v43;
          *v44 = v46;
          if (**v328)
          {
            *v328 = **v328;
            v46 = *v44;
          }

          v11 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*&v328[8], v46);
          i = v329 + 1;
          *&v329 = v329 + 1;
        }
      }

      if (*(v34 + 433))
      {
        v48 = (v34 + 160);
      }

      else
      {
        v48 = (v34 + 128);
      }

      if (v48[3] == i)
      {
        v51 = *v48;
        v50 = v48 + 1;
        v49 = v51;
        if (v51 == v50)
        {
LABEL_99:
          std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*&v328[8]);
          v13 = v315;
          goto LABEL_100;
        }

        v52 = *v328;
        while (v49[4] == v52[4])
        {
          v53 = v49[1];
          v54 = v49;
          if (v53)
          {
            do
            {
              v49 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v49 = v54[2];
              v41 = *v49 == v54;
              v54 = v49;
            }

            while (!v41);
          }

          v55 = v52[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v52[2];
              v41 = *v56 == v52;
              v52 = v56;
            }

            while (!v41);
          }

          v52 = v56;
          if (v49 == v50)
          {
            goto LABEL_99;
          }
        }
      }

      v57 = v34 + 168;
      std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(v34 + 168));
      v58 = *&v328[8];
      *(v34 + 160) = *v328;
      *(v34 + 168) = v58;
      v59 = v329;
      *(v34 + 184) = v329;
      if (v59)
      {
        *(v58 + 16) = v57;
        *v328 = &v328[8];
        *&v328[8] = 0;
        *&v329 = 0;
      }

      else
      {
        *(v34 + 160) = v57;
      }

      *(v34 + 433) = 1;
      goto LABEL_99;
    }
  }

LABEL_100:
  v60 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v61 = v60;
  if (v60[1310] >= 1.0)
  {
    v62 = fmaxf(v60[770] + v60[768], 1.0);
  }

  else
  {
    md::LayoutContext::labelZoom(a2);
  }

  if (vabds_f32(v62, *(v13 + 103)) > 0.01)
  {
    *(v13 + 103) = v62;
  }

  v63 = *(v13 + 34);
  v313 = *(v13 + 35);
  v316 = v61;
  if (v63 == v313)
  {
    v64 = 0;
    v320 = 0;
    goto LABEL_221;
  }

  LOBYTE(v320) = 0;
  LOBYTE(v64) = 0;
  v322 = vdupq_n_s32(0x37800080u);
  do
  {
    v65 = *v63;
    v66 = *(*v63 + 392);
    v67 = vcvtms_s32_f32(fmaxf(v61[770] + v61[768], 1.0));
    if (v67 >= 0x17)
    {
      v67 = 23;
    }

    if (*(v66 + 1376))
    {
      v68 = 1;
    }

    else
    {
      v68 = *(v66 + 1377);
    }

    v69 = *(v13 + 102);
    v70 = *(v13 + 103);
    *(v66 + 1376) = 0;
    if (*(v66 + 1368) != v69)
    {
      v71 = *(v66 + 872);
      v72 = *(v66 + 880);
      if (v71 != v72)
      {
        v73 = 0;
        v74 = (v72 - v71 - 104) / 0x68uLL;
        v75 = vdupq_n_s64(v74);
        v76 = (v71 + 268);
        do
        {
          v77 = vdupq_n_s64(v73);
          v78 = vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, xmmword_1B33B0560)));
          if (vuzp1_s16(v78, *v75.i8).u8[0])
          {
            *(v76 - 52) = -1;
          }

          if (vuzp1_s16(v78, *&v75).i8[2])
          {
            *(v76 - 26) = -1;
          }

          if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, vorrq_s8(v77, xmmword_1B33B0550)))).i32[1])
          {
            *v76 = -1;
            v76[26] = -1;
          }

          v73 += 4;
          v76 += 104;
        }

        while (((v74 + 4) & 0x7FFFFFFFFFFFFFCLL) != v73);
      }

      *(v66 + 1368) = v69;
      v68 = 1;
    }

    v79 = (*(v66 + 1372) != v67) | v68;
    v80 = *(v66 + 896);
    v81 = *(v66 + 904);
    while (v80 != v81)
    {
      v82 = *(v80 + 80);
      v83 = *(v80 + 88);
      while (v82 != v83)
      {
        if (*v82)
        {
          v84 = *v82 + 8;
        }

        else
        {
          v84 = 0;
        }

        if (*(v84 + 16) <= v70)
        {
          v85 = 1;
        }

        else
        {
          v85 = *(*v84 + 88);
        }

        v86 = v85 & 1;
        if (*(v84 + 56) != v86)
        {
          *(v84 + 56) = v86;
          v79 = 1;
        }

        ++v82;
      }

      v80 += 248;
    }

    v318 = v64;
    v87 = v66 + 920;
    v88 = *(v66 + 928);
    if (v88 != v66 + 920)
    {
      if (v70 >= 0x17)
      {
        v89 = 23;
      }

      else
      {
        v89 = v70;
      }

      do
      {
        if (*(v88 + 40) > v70 || *(v88 + 44) <= v70)
        {
          v92 = 0;
        }

        else
        {
          v90 = *(v88 + 24);
          if (v90)
          {
            v91 = *(v88 + 32);
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v328, v90, v91);
            if (v91)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v91);
            }

            if (BYTE8(v329) == 1)
            {
              v92 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*v328 + 24), 91, v89, 2u, 0);
              if (BYTE8(v329))
              {
                (*(**v328 + 56))(*v328);
              }
            }

            else
            {
              v92 = 0;
            }

            if (v329)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v329);
            }

            if (*&v328[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&v328[8]);
            }
          }

          else
          {
            v92 = 1;
          }
        }

        if (*(v88 + 48) != v92)
        {
          *(v88 + 48) = v92;
          v79 = 1;
        }

        v88 = *(v88 + 8);
      }

      while (v88 != v87);
    }

    v93 = *(v315 + 416);
    if (v79)
    {
      v61 = v316;
    }

    else
    {
      v61 = v316;
      if ((*(v315 + 416) & 1) == 0)
      {
        v94 = md::LabelExternalPointFeature::incident(*(v65 + 416));
        v95 = v94 == 0;

        if (v95)
        {
          goto LABEL_211;
        }

        v93 = *(v315 + 416);
      }
    }

    v96 = *(v315 + 47);
    v97 = *(v96 + 323);
    v98 = md::LayoutContext::get<md::CameraContext>(*(v312 + 1));
    v99 = vcvtms_s32_f32(fmaxf(*(v98 + 3080) + *(v98 + 3072), 1.0));
    if (v99 >= 0x17)
    {
      v99 = 23;
    }

    *(v66 + 1372) = v99;
    md::TransitTileData::updateLineStyles(v66, v312, v97, v93 & 1, (v96 + 328));
    for (j = *(v66 + 928); j != v87; j = *(j + 8))
    {
      if (*(j + 48) != 1)
      {
        goto LABEL_188;
      }

      v101 = *(v66 + 1372);
      v102 = *(v66 + 1348);
      v103 = *(v66 + 1352);
      v104 = *(j + 24);
      v105 = *(j + 32);
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v342, v104, v105);
      if (v105)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v105);
      }

      if ((v346 & 1) == 0)
      {
        goto LABEL_184;
      }

      if (v101 >= 0x17u)
      {
        v106 = 23;
      }

      else
      {
        v106 = v101;
      }

      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v342[3], 94, v106, 2u, 0);
      v108 = v107 * 0.5;
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v342[3], 97, v106, 2u, 0);
      v110 = v109;
      if (v108 <= 0.0 && v109 <= 0.0)
      {
        if (v346)
        {
          (*(*v342 + 56))(v342);
        }

LABEL_184:
        if (v345)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v345);
        }

        if (v343)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v343);
        }

LABEL_188:
        v111 = 0;
        v342 = 0x100000000;
        do
        {
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v328, *(*(*(*(j + 72) + (*(&v342 + v111) << 7) + 48) + 136) + 32));
          v112 = v330;
          *v330 = 0;
          *(v112 + 8) = 0;
          *(v112 + 24) = 0;
          *(v112 + 16) = 0;
          ggl::BufferMemory::~BufferMemory(v328);
          v111 += 4;
        }

        while (v111 != 8);
        continue;
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v328, *(*(*(*(j + 72) + 48) + 136) + 32));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v341, v342[3], 93, v106, 2u, 0);
      v113 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v341[0])), v322);
      v114 = v330;
      *(v330 + 8) = v113.i32[2];
      *v114 = v113.i64[0];
      *(v114 + 12) = vmuls_lane_f32(v103, v113, 3);
      *(v114 + 24) = (v110 + v108) * v102;
      *(v114 + 16) = 0;
      *(v114 + 28) = *(**(*(j + 56) + 168) + 80);
      ggl::BufferMemory::~BufferMemory(v328);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v328, *(*(*(*(j + 72) + 176) + 136) + 32));
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v341, v342[3], 92, v106, 2u, 0);
      v115 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v341[0])), v322);
      v116 = v330;
      *v330 = v115.i64[0];
      *(v116 + 8) = v115.i32[2];
      *(v116 + 12) = vmuls_lane_f32(v103, v115, 3);
      *(v116 + 24) = v108 * v102;
      *(v116 + 16) = 0;
      *(v116 + 28) = *(**(*(j + 64) + 168) + 80);
      ggl::BufferMemory::~BufferMemory(v328);
      if (v346 == 1)
      {
        (*(*v342 + 56))(v342);
      }

      if (v345)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v345);
      }

      if (v343)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v343);
      }
    }

    v117 = *(v66 + 952);
    v118 = *(v66 + 960);
    while (v117 != v118)
    {
      (*(**v117 + 48))(*v117, *(v66 + 1378));
      v117 += 2;
    }

    v119 = *(v66 + 1232);
    if (v119 && *(v66 + 1378) == 1)
    {
      v120 = *(v66 + 952);
      v121 = *(v66 + 960);
      while (v120 != v121)
      {
        v122 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v119 + 32), *(*(*v120 + 8) + 40));
        if (v122)
        {
          v123 = v122[3];
          v124 = v123[5];
          if (v123[4] == v124)
          {
            v125 = 5;
          }

          else
          {
            v125 = *(*(v124 - 16) + 61);
          }

          atomic_store(v125, (v123[2] + 25));
          atomic_store(v123[4] != v123[5], (v123[2] + 24));
        }

        v120 += 16;
      }
    }

    *(v66 + 1378) = 0;
LABEL_211:
    v126 = v320 || *(v66 + 1080) != 0;
    v320 = v126;
    v13 = v315;
    v64 = v318 || *(v66 + 1072) || *(v66 + 1224) != 0;
    ++v63;
  }

  while (v63 != v313);
LABEL_221:
  *(v13 + 416) = 0;
  v127 = v312;
  v128 = md::LayoutContext::get<md::CameraContext>(*(v312 + 1));
  v129 = *(gdc::Camera::cameraFrame(v128) + 32);
  *(v13 + 420) = v310;
  if (v129 <= 0.0)
  {
    v130 = 0;
    *(v13 + 419) = 0;
  }

  else
  {
    if (*(v13 + 417) == 1)
    {
      v130 = vcvtms_s32_f32(fmaxf(v316[770] + v316[768], 1.0)) > 0xD;
    }

    else
    {
      v130 = **(v312 + 93);
    }

    *(v13 + 419) = v130;
  }

  *(v13 + 421) = v130 & v310 & 1;
  if (*(*(v13 + 47) + 4) == 1)
  {
    v131 = +[VKDebugSettings sharedSettings];
    v132 = [v131 disableTransitLineDrawing];

    v13 = v315;
    v127 = v312;
    if (v132 == 1)
    {
      goto LABEL_378;
    }
  }

  if (!v64 && !v320)
  {
    goto LABEL_378;
  }

  v133 = v64;
  v134 = *(*(v13 + 5) + 24);
  v135 = *(v13 + 46);
  v136 = 38;
  if (v135 == 1)
  {
    v136 = 40;
  }

  v137 = *(*(v13 + 48) + 8);
  v138 = *(v137 + v136);
  v139 = *(v134 + 8);
  v140 = md::FrameGraph::renderQueueForPass(v139, *(v137 + v136));
  if (v140)
  {
    v141 = *(*(v140 + 16) + 8 * (v138 >> 8));
  }

  else
  {
    v141 = 0;
  }

  v142 = 184;
  if (v135 == 1)
  {
    v142 = 186;
  }

  v143 = *(v137 + v142);
  v144 = md::FrameGraph::renderQueueForPass(v139, *(v137 + v142));
  if (v144)
  {
    v145 = *(*(v144 + 16) + 8 * (v143 >> 8));
  }

  else
  {
    v145 = 0;
  }

  v146 = 150;
  if (v135 == 1)
  {
    v146 = 152;
  }

  v147 = *(v137 + v146);
  v148 = md::FrameGraph::renderQueueForPass(v139, *(v137 + v146));
  if (v148)
  {
    v149 = *(*(v148 + 16) + 8 * (v147 >> 8));
  }

  else
  {
    v149 = 0;
  }

  v13 = v315;
  v150 = *(v315 + 421);
  *(v315 + 418) = v150;
  if (!v150)
  {
    v149 = v145;
  }

  v309 = v149;
  if (*(v315 + 420))
  {
    v151 = v141;
  }

  else
  {
    v151 = 0;
  }

  v304 = v151;
  if (!v320)
  {
    if (!v133)
    {
      goto LABEL_261;
    }

    goto LABEL_255;
  }

  if (*(v315 + 420))
  {
    v152 = *(*(v315 + 47) + 72);
    v328[0] = 0;
    v335 = 0;
    md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(v315, v127, v141, v152, v328);
    v153 = *(*(v315 + 47) + 152);
    if (v153)
    {
      *(v141 + 4) = v153;
    }
  }

  if (v133 || (*(v315 + 420) & 1) == 0)
  {
LABEL_255:
    v154 = 68;
    if (*(v315 + 418))
    {
      v154 = 64;
    }

    v155 = *(*(v315 + 47) + v154);
    v328[0] = 0;
    v335 = 0;
    md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(v315, v127, v309, v155, v328);
    v156 = 144;
    if (*(v315 + 418))
    {
      v156 = 136;
    }

    v157 = *(*(v315 + 47) + v156);
    if (v157)
    {
      *(v309 + 32) = v157;
    }
  }

LABEL_261:
  if (*(v315 + 34) != *(v315 + 35))
  {
    v158 = *(v315 + 47);
    if (*(v315 + 419) == 1)
    {
      if (*(v315 + 360))
      {
        v307 = v158[6];
        if ((*(v315 + 421) & 1) == 0)
        {
          v159 = v158[5];
          goto LABEL_273;
        }

LABEL_269:
        v311 = 0;
      }

      else
      {
        v307 = v158[2];
        if (*(v315 + 421))
        {
          goto LABEL_269;
        }

        v159 = v158[3];
LABEL_273:
        v311 = v159;
      }
    }

    else
    {
      v311 = 0;
      if (*(v315 + 360))
      {
        v160 = v158[4];
      }

      else
      {
        v160 = v158[1];
      }

      v307 = v160;
    }

    v161 = *md::LayoutContext::get<md::SharedResourcesContext>(*(v127 + 1));
    v162 = *[v161 highInflationAlphaAtlas];
    v163 = +[VKDebugSettings sharedSettings];
    [v163 ribbonCrispness];
    v165 = v164;

    v166 = *(v315 + 34);
    v305 = *(v315 + 35);
    if (v166 != v305)
    {
      v167 = v165 * v162;
      do
      {
        v308 = v166;
        v168 = *(*v166 + 392);
        v169 = 68;
        if (*(v315 + 418))
        {
          v169 = 64;
        }

        v323 = *(v168 + 169);
        k = (*(*(v315 + 47) + v169) + v323);
        v324 = k;
        if (*(v168 + 1072) || *(v168 + 1080))
        {
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v328, *(v168 + 1136));
          *(v330 + 16) = v167;
          ggl::BufferMemory::~BufferMemory(v328);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v328, *(v168 + 1152));
          *(v330 + 16) = v167;
          ggl::BufferMemory::~BufferMemory(v328);
          v171 = *(v168 + 1072);
          if (v171)
          {
            v172 = v171[1];
            v173 = v171[2];
            while (v172 != v173)
            {
              v174 = *v172;
              ggl::Batcher::reset((*v172 + 528));
              v175 = *(v174 + 608);
              if (v175)
              {
                do
                {
                  if (v175[1])
                  {
                    v176 = 0;
                    v177 = v175 + 2;
                    v178 = v175 + 2;
                    v179 = (v175 + 2);
                    do
                    {
                      v180 = *v179;
                      v179 += 15;
                      (*v180)(v178);
                      ++v176;
                      v177 += 15;
                      v178 = v179;
                    }

                    while (v176 < v175[1]);
                  }

                  v175[1] = 0;
                  v175 = *v175;
                }

                while (v175);
                v181 = *(v174 + 608);
              }

              else
              {
                v181 = 0;
              }

              *(v174 + 616) = v181;
              ++v172;
            }

            v171[7] = v307;
            v171[8] = v307;
            v171[9] = v311;
            v171[10] = v311;
            k = v324;
            v342 = &unk_1F2A39D00;
            v343 = v324;
            v344 = v309;
            v345 = &v342;
            v182 = v171[1];
            v183 = v171[2];
            while (v182 != v183)
            {
              v184 = *v182;
              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
              md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v184, 3u, v328);
              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
              ++v182;
            }

            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
            if (v311)
            {
              v342 = &unk_1F2A39D00;
              v343 = v324;
              v344 = v309;
              v345 = &v342;
              v186 = v171[1];
              v185 = v171[2];
              while (v186 != v185)
              {
                v187 = *v186;
                std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
                md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v187, 0xCu, v328);
                std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
                ++v186;
              }

              std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
            }
          }
        }

        v188 = *(v168 + 1080);
        if (!v188)
        {
          goto LABEL_325;
        }

        v189 = v188[1];
        v190 = v188[2];
        while (v189 != v190)
        {
          v191 = *v189;
          ggl::Batcher::reset((*v189 + 528));
          v192 = *(v191 + 608);
          if (v192)
          {
            do
            {
              if (v192[1])
              {
                v193 = 0;
                v194 = v192 + 2;
                v195 = v192 + 2;
                v196 = (v192 + 2);
                do
                {
                  v197 = *v196;
                  v196 += 15;
                  (*v197)(v195);
                  ++v193;
                  v194 += 15;
                  v195 = v196;
                }

                while (v193 < v192[1]);
              }

              v192[1] = 0;
              v192 = *v192;
            }

            while (v192);
            v198 = *(v191 + 608);
          }

          else
          {
            v198 = 0;
          }

          *(v191 + 616) = v198;
          ++v189;
        }

        v188[7] = v307;
        v188[8] = v307;
        v188[9] = v311;
        v188[10] = v311;
        if (v304)
        {
          v199 = (*(*(v315 + 47) + 72) + v323);
          v342 = &unk_1F2A39D00;
          v343 = v199;
          v344 = v304;
          v345 = &v342;
          v200 = v188[1];
          v201 = v188[2];
          for (k = v324; v200 != v201; ++v200)
          {
            v202 = *v200;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v202, 3u, v328);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
          }

          std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
          if (!v311)
          {
            goto LABEL_325;
          }

          v342 = &unk_1F2A39D00;
          v343 = v199;
          v344 = v304;
          v345 = &v342;
          v204 = v188[1];
          v203 = v188[2];
          while (v204 != v203)
          {
            v205 = *v204;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v205, 0xCu, v328);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
            ++v204;
          }
        }

        else
        {
          k = v324;
          v342 = &unk_1F2A39D00;
          v343 = v324;
          v344 = v309;
          v345 = &v342;
          v206 = v188[1];
          v207 = v188[2];
          while (v206 != v207)
          {
            v208 = *v206;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v208, 3u, v328);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
            ++v206;
          }

          std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
          if (!v311)
          {
            goto LABEL_325;
          }

          v342 = &unk_1F2A39D00;
          v343 = v324;
          v344 = v309;
          v345 = &v342;
          v210 = v188[1];
          v209 = v188[2];
          while (v210 != v209)
          {
            v211 = *v210;
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v328, &v342);
            md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(v211, 0xCu, v328);
            std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v328);
            ++v210;
          }
        }

        std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
LABEL_325:
        v212 = *(v168 + 1224);
        if (v212)
        {
          v212[7] = v307;
          v212[8] = v307;
          v337 = &unk_1F2A39DD8;
          v338 = v306 & 0xFFFFFFFF00000000 | k;
          v306 = v338;
          v339 = v309;
          v340 = &v337;
          v214 = v212[1];
          v213 = v212[2];
          v317 = v213;
          while (v214 != v213)
          {
            v215 = *v214;
            std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v341, &v337);
            if (*(v215 + 400) == 1)
            {
              ggl::Batcher::reset((v215 + 272));
              v216 = *(v215 + 352);
              if (v216)
              {
                do
                {
                  if (v216[1])
                  {
                    v217 = 0;
                    v218 = v216 + 2;
                    v219 = v216 + 2;
                    v220 = (v216 + 2);
                    do
                    {
                      v221 = *v220;
                      v220 += 15;
                      (*v221)(v219);
                      ++v217;
                      v218 += 15;
                      v219 = v220;
                    }

                    while (v217 < v216[1]);
                  }

                  v216[1] = 0;
                  v216 = *v216;
                }

                while (v216);
                v222 = *(v215 + 352);
              }

              else
              {
                v222 = 0;
              }

              *(v215 + 360) = v222;
              std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&v342, v341);
              if (*(v215 + 400) == 1)
              {
                v314 = v214;
                memset(&v327, 0, sizeof(v327));
                std::vector<unsigned int>::reserve(&v327, 5uLL);
                v224 = 0;
                v225 = 0;
                v226 = v215 + 16;
                v227 = 1;
                do
                {
                  v228 = v227;
                  v229 = v226 + (v224 << 7);
                  if (*(v229 + 120) == 1)
                  {
                    *v328 = v224;
                    std::vector<unsigned int>::push_back[abi:nn200100](&v327, v328);
                    v230 = *(*(v215 + 8) + 8 * v224 + 56);
                    *(v229 + 24) = v230;
                    v225 |= *(v230 + 58) == 1;
                  }

                  v227 = 0;
                  v224 = 1;
                }

                while ((v228 & 1) != 0);
                begin = v327.__begin_;
                if (v327.__begin_ != v327.__end_)
                {
                  v233 = *(v215 + 376);
                  v232 = *(v215 + 384);
                  if (v233 == v232)
                  {
                    v234 = 0;
                  }

                  else
                  {
                    v234 = 0;
                    v235 = 16;
                    if (v225)
                    {
                      v235 = 32;
                    }

                    v319 = *(v215 + 384);
                    v321 = v235;
                    do
                    {
                      v236 = *v233;
                      if (*(*v233 + 48) == 1)
                      {
                        if (*(v236 + 88) != v234)
                        {
                          v325 = v234;
                          if (v234)
                          {
                            v237 = ggl::Batcher::commit((v215 + 272), 0xC8u, v223);
                            if (v237[1] != *v237)
                            {
                              v239 = v327.__begin_;
                              end = v327.__end_;
                              if (v327.__begin_ != v327.__end_)
                              {
                                v240 = v237;
                                do
                                {
                                  v241 = *v239;
                                  *v328 = &off_1F2A5D8B8;
                                  v242 = v226 + (v241 << 7);
                                  v243 = *(v242 + 8);
                                  v244 = *(v242 + 24);
                                  v330 = *(v242 + 40);
                                  v329 = v244;
                                  *&v328[8] = v243;
                                  v245 = *(v242 + 56);
                                  v246 = *(v242 + 72);
                                  v247 = *(v242 + 88);
                                  v334 = *(v242 + 104);
                                  v333 = v247;
                                  v332 = v246;
                                  v331 = v245;
                                  v248 = *(v215 + 360);
                                  v249 = v248[1];
                                  if (v249 == *(v215 + 368))
                                  {
                                    v248 = *v248;
                                    if (!v248)
                                    {
                                      v248 = malloc_type_malloc(120 * v249 + 16, 0x1020040EDED9539uLL);
                                      *v248 = 0;
                                      v248[1] = 0;
                                      **(v215 + 360) = v248;
                                    }

                                    *(v215 + 360) = v248;
                                    v249 = v248[1];
                                  }

                                  v250 = &v248[15 * v249];
                                  v248[1] = v249 + 1;
                                  v250[2] = &off_1F2A5D8B8;
                                  v251 = *&v328[8];
                                  v252 = v329;
                                  *(v250 + 7) = v330;
                                  *(v250 + 5) = v252;
                                  *(v250 + 3) = v251;
                                  v253 = v331;
                                  v254 = v332;
                                  v255 = v333;
                                  *(v250 + 15) = v334;
                                  *(v250 + 13) = v255;
                                  *(v250 + 11) = v254;
                                  *(v250 + 9) = v253;
                                  ggl::RenderItem::~RenderItem(v328);
                                  v250[10] = v325;
                                  v256 = *v240;
                                  v250[13] = *v240;
                                  v250[14] = (v240[1] - v256) >> 4;
                                  std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v345, v241, (v250 + 2));
                                  ++v239;
                                  v226 = v215 + 16;
                                }

                                while (v239 != end);
                              }
                            }
                          }

                          v236 = *v233;
                          v234 = *(*v233 + 88);
                          v232 = v319;
                        }

                        ggl::Batcher::addRange(v215 + 272, (v236 + v321));
                      }

                      ++v233;
                    }

                    while (v233 != v232);
                    begin = v327.__begin_;
                  }

                  v257 = ggl::Batcher::commit((v215 + 272), 0xC8u, v223);
                  if (v257[1] != *v257)
                  {
                    v258 = v327.__end_;
                    if (begin != v327.__end_)
                    {
                      v259 = v257;
                      v326 = v234;
                      do
                      {
                        v260 = *begin;
                        *v328 = &off_1F2A5D8B8;
                        v261 = v226 + (v260 << 7);
                        v262 = *(v261 + 8);
                        v263 = *(v261 + 24);
                        v330 = *(v261 + 40);
                        v329 = v263;
                        *&v328[8] = v262;
                        v264 = *(v261 + 56);
                        v265 = *(v261 + 72);
                        v266 = *(v261 + 88);
                        v334 = *(v261 + 104);
                        v333 = v266;
                        v332 = v265;
                        v331 = v264;
                        v267 = *(v215 + 360);
                        v268 = v267[1];
                        if (v268 == *(v215 + 368))
                        {
                          v267 = *v267;
                          if (!v267)
                          {
                            v267 = malloc_type_malloc(120 * v268 + 16, 0x1020040EDED9539uLL);
                            *v267 = 0;
                            v267[1] = 0;
                            **(v215 + 360) = v267;
                          }

                          *(v215 + 360) = v267;
                          v268 = v267[1];
                        }

                        v269 = &v267[15 * v268];
                        v267[1] = v268 + 1;
                        v269[2] = &off_1F2A5D8B8;
                        v270 = *&v328[8];
                        v271 = v329;
                        *(v269 + 7) = v330;
                        *(v269 + 5) = v271;
                        *(v269 + 3) = v270;
                        v272 = v331;
                        v273 = v332;
                        v274 = v333;
                        *(v269 + 15) = v334;
                        *(v269 + 13) = v274;
                        *(v269 + 11) = v273;
                        *(v269 + 9) = v272;
                        ggl::RenderItem::~RenderItem(v328);
                        v269[10] = v326;
                        v275 = *v259;
                        v269[13] = *v259;
                        v269[14] = (v259[1] - v275) >> 4;
                        std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v345, v260, (v269 + 2));
                        ++begin;
                      }

                      while (begin != v258);
                      begin = v327.__begin_;
                    }
                  }
                }

                v214 = v314;
                if (begin)
                {
                  v327.__end_ = begin;
                  operator delete(begin);
                }
              }

              std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v342);
            }

            std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v341);
            ++v214;
            v213 = v317;
          }

          std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v337);
        }

        v166 = v308 + 8;
      }

      while (v308 + 8 != v305);
    }

    ggl::CommandBuffer::sortRenderItems(*(v309 + 72), *(v309 + 80));
    v13 = v315;
    v127 = v312;
  }

LABEL_378:
  v276 = *(v13 + 47);
  v277 = md::LayoutContext::get<md::CameraContext>(*(v127 + 1));
  if (v277)
  {
    for (m = 0; m != 128; m += 8)
    {
      *(v276 + 160 + m) = *(v277 + 5384 + m);
    }

    [*v127 sizeInPixels];
    *&v279 = v279;
    *&v280 = v280;
    *(v276 + 288) = LODWORD(v279);
    *(v276 + 292) = LODWORD(v280);
    *(v276 + 296) = 1;
    v281 = *(v315 + 47);
    v282 = *(v281 + 304);
    if (v282)
    {
      if (!(*(*v282 + 24))(v282) || (v283 = *(v315 + 34), v284 = *(v315 + 35), v283 == v284))
      {
LABEL_387:
        *v328 = 0;
        *&v328[8] = 0;
        md::TransitRenderLayer::setDebugHighlightedItem(v315, v328);
        v281 = *(v315 + 47);
        v285 = *(v281 + 304);
      }

      else
      {
        v281 = *(v315 + 47);
        v285 = *(v281 + 304);
        while (*(*v283 + 392) != **(v285 + 8))
        {
          v283 += 8;
          if (v283 == v284)
          {
            goto LABEL_387;
          }
        }
      }

      if (v285)
      {
        goto LABEL_390;
      }
    }

    if (*(v281 + 321))
    {
LABEL_390:
      v286 = 1;
    }

    else
    {
      if (*(v281 + 320) != 1)
      {
        goto LABEL_410;
      }

      v286 = 0;
    }

    v287 = md::LayoutContext::debugConsoleForId(v127, 4);
    v288 = md::LayoutContext::debugConsoleForId(v127, 5);
    if (v287)
    {
      v289 = v288;
      if (v288)
      {
        if ((v286 & 1) == 0 && *(*(v315 + 47) + 320) == 1)
        {
          ggl::DebugConsole::begin(v287);
        }

        [*(*(v315 + 5) + 104) contentScale];
        v290 = md::LayoutContext::cameraType(v127);
        gdc::ToCoordinateSystem(v290);
        v291 = *(*(v315 + 47) + 288);
        v292 = *(v127 + 4);
        v293 = *(v127 + 5);
        if (v293)
        {
          v294 = 1;
          atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
          v295 = *(v292 + 64);
          v292 = *(v127 + 4);
          v296 = *(v127 + 5);
          if (v296)
          {
            v294 = 0;
            atomic_fetch_add_explicit(&v296->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v296 = 0;
          v295 = *(v292 + 64);
          v294 = 1;
        }

        v297 = v295;
        v298 = *(v292 + 72);
        *v328 = 2.0 / v291.f32[0];
        *&v328[4] = 0uLL;
        *&v328[20] = 2.0 / v291.f32[1];
        v299 = v297 + -1.0;
        if (!v298)
        {
          v299 = 1.0 - v297;
        }

        v329 = 0uLL;
        *&v330 = v299 * 0.5;
        DWORD1(v330) = 0;
        *(&v330 + 1) = vdiv_f32(vneg_f32(v291), v291);
        *&v331 = (v297 * 0.5) + 0.5;
        DWORD1(v331) = 1065353216;
        if ((v294 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v296);
        }

        if (v293)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v293);
        }

        ggl::DebugConsole::setProjection(v289, v328);
        ggl::DebugConsole::begin(v289);
      }
    }
  }

  else
  {
    *(v276 + 296) = 0;
  }

LABEL_410:
  v300 = mach_absolute_time();
  v301 = v300 - v303;
  result = ggl::Performance::Counters::instance(v300);
  atomic_fetch_add((*(result + 32) + 128), v301);
  return result;
}

void sub_1B31734A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v64) + 32) + 128), v64 - a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 656) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 4);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 632);
      v12 = *(a1 + 640);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 640);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 528), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 616);
                      v23 = v22[1];
                      if (v23 == *(a1 + 624))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 616) = v22;
                        }

                        *(a1 + 616) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 528, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 528), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 616);
            v37 = v36[1];
            if (v37 == *(a1 + 624))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 616) = v36;
              }

              *(a1 + 616) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B3173BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

ggl::zone_mallocator *std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = v3 == 0;
  v6 = -3;
  if (!v5)
  {
    v6 = -2;
  }

  *(v4 + 48) = v6;
  *(v4 + 40) = *(a1 + 8);
  return ggl::CommandBuffer::pushRenderItem(*(a1 + 16), v4);
}

__n128 std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1,std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_1>,void ()(md::TransitDisplayConnectionRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39DD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::function<void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

ggl::zone_mallocator *std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t a2, ggl::RenderItem **a3)
{
  v3 = *a3;
  *(*a3 + 10) = *(a1 + 8);
  return ggl::CommandBuffer::pushRenderItem(*(a1 + 16), v3);
}

__n128 std::__function::__func<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<md::TransitRenderLayer::appendTransitLineCommandsToBuffer(ggl::CommandBuffer *,ggl::CommandBuffer *,md::LayoutContext const&)::$_0::operator() const(ggl::CommandBuffer *,unsigned int,md::Ribbons::RibbonLayer<md::Ribbons::TransitRibbonDescriptor> *,unsigned int)::{lambda(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::TransitRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A39D00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, unsigned __int8 *a2)
{
  if (*a2 <= 4u)
  {
    v2 = *(result + 8);
    v3 = *(v2 + 408);
    if ((v3 + 1) > 1)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 1;
    }

    *(v2 + 408) = v4;
  }

  return result;
}

uint64_t std::__function::__func<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::TransitRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A39D48;
  a2[1] = v2;
  return result;
}

uint64_t std::__tree<std::shared_ptr<md::TransitTileData>,md::TransitTileSetCompare,std::allocator<std::shared_ptr<md::TransitTileData>>>::__count_unique<std::shared_ptr<md::TransitTileData>>(void *a1, grl::IconMetricsRenderResult *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      v5 = v3[4];
      if ((md::TransitTileSetCompare::operator()(a2, v5) & 1) == 0)
      {
        if (!md::TransitTileSetCompare::operator()(v5, a2))
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

BOOL md::MaterialRenderBatchKey::operator!=(uint64_t a1, uint64_t a2)
{
  if ((md::BaseRenderBatchKey<ggl::VertexData>::operator!=(a1, a2) & 1) != 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 120) != *(a2 + 120) || *(a1 + 121) != *(a2 + 121) || *(a1 + 122) != *(a2 + 122))
  {
    return 1;
  }

  v4 = *(a1 + 140);
  v5 = *(a2 + 140);
  if (v4 == v5 && *(a1 + 140))
  {
    if (*(a1 + 124) != *(a2 + 124) || *(a1 + 132) != *(a2 + 132))
    {
      return 1;
    }
  }

  else if (v4 != v5)
  {
    return 1;
  }

  v7 = *(a1 + 148);
  v8 = *(a2 + 148);
  if (v7 == v8 && *(a1 + 148))
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      return 1;
    }
  }

  else if (v7 != v8)
  {
    return 1;
  }

  v9 = *(a1 + 217);
  v10 = *(a2 + 217);
  if (v9 == v10 && *(a1 + 217))
  {
    v9 = *(a1 + 216);
    v10 = *(a2 + 216);
  }

  if (v9 != v10)
  {
    return 1;
  }

  v11 = *(a1 + 208);
  v12 = *(a2 + 208);
  if (v11 == v12 && *(a1 + 208))
  {
    if (*(a1 + 152) != *(a2 + 152))
    {
      return 1;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v18, *(a1 + 176), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v16, *(a2 + 176), 0);
    if (*(v19 + 8) != *(v17 + 8))
    {
      ggl::BufferMemory::~BufferMemory(v16);
      ggl::BufferMemory::~BufferMemory(v18);
      return 1;
    }

    v14 = *v19;
    v15 = *v17;
    ggl::BufferMemory::~BufferMemory(v16);
    ggl::BufferMemory::~BufferMemory(v18);
    if (v14 != v15)
    {
      return 1;
    }
  }

  else if (v11 != v12)
  {
    return 1;
  }

  if (*(a1 + 218) == *(a2 + 218))
  {
    return *(a1 + 219) != *(a2 + 219);
  }

  return 1;
}

uint64_t md::BaseRenderBatchKey<ggl::VertexData>::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64) != *(a2 + 64) || *a1 != *a2 || *(a1 + 73) != *(a2 + 73) || *(a1 + 72) != *(a2 + 72) || *(a1 + 74) != *(a2 + 74) || *(a1 + 75) != *(a2 + 75) || *(a1 + 76) != *(a2 + 76) || *(a1 + 77) != *(a2 + 77);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3 == *(a2 + 16);
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 32);
  if (!v4)
  {
    v2 = 1;
  }

  if (v5)
  {
    v6 = v5 == *(a2 + 32);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 48);
  if (!v6)
  {
    v2 = 1;
  }

  if (v7)
  {
    v8 = v7 == *(a2 + 48);
  }

  else
  {
    v8 = 1;
  }

  return !v8 || v2;
}

void md::PuckRenderResources::update(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v9 = a2;
  v10 = (a1 + 96);
  if (*(a5 + 73) != 1)
  {
    v10 = (a1 + 96 + 16 * a4);
  }

  v11 = *v10;
  *(*(a1 + 144) + 24) = v11;
  *(*(a1 + 160) + 24) = v11;
  v12 = *(a1 + 224);
  if (!v12)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  **(*(a1 + 32) + 168) = v12;
  v13 = *(a1 + 208);
  if (!v13 || *(a1 + 256) != *(a3 + 44))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "");
    v14 = *(a3 + 44);
    *(a1 + 256) = v14;
    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      *(p_p->__r_.__value_.__r.__words + 3) = 1735289195;
      v16 = 1802264951;
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      *(p_p->__r_.__value_.__r.__words + 3) = 1735289206;
      v16 = 1986622052;
    }

    LODWORD(p_p->__r_.__value_.__l.__data_) = v16;
    p_p->__r_.__value_.__s.__data_[7] = 0;
LABEL_18:
    std::string::append(&__p, "PuckArrowMask", 0xDuLL);
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  **(*(a1 + 48) + 168) = v13;
  if (!*(a5 + 73))
  {
    v17 = *(a1 + 128);
    *(*(a1 + 176) + 24) = v17;
    *(*(a1 + 192) + 24) = v17;
    **(*(a1 + 64) + 168) = *(a1 + 224);
    **(*(a1 + 80) + 168) = *(a1 + 208);
  }
}

void sub_1B3174714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::RenderItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TextureAlphaMask::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureAlphaMask::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TextureAlphaMask::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureAlphaMask::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureAlphaMask::MeshPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVExtendedPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39F00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureAlphaMask::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A39EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::LabelCollider::removeItemFromGrid(md::LabelCollider *this, md::LabelCollidableItem *a2)
{
  result = md::LabelCollider::rectToGridRect(this, a2 + 2);
  v6 = 0;
  v7 = 0;
  v8 = &v21;
  v21 = result;
  v22 = v5;
  do
  {
    v9 = *(&v22 + v7);
    v10 = *v8;
    if (v6)
    {
      break;
    }

    v6 = 1;
    v8 = (&v21 + 4);
    v7 = 1;
  }

  while (v9 >= v10);
  if (v9 >= v10)
  {
    v11 = HIDWORD(v21);
    if (SHIDWORD(v21) <= SHIDWORD(v5))
    {
      v12 = *(this + 11);
      v13 = *(this + 7) + 24 * (result + v12 * HIDWORD(v21));
      do
      {
        if (result <= v5)
        {
          v14 = result;
          v15 = v13;
          do
          {
            v16 = *v15;
            if (*v15)
            {
              v17 = 0;
              v18 = v15[2];
              while (*(v18 + 8 * v17) != a2)
              {
                if (v16 == ++v17)
                {
                  goto LABEL_15;
                }
              }

              v19 = v16 - 1;
              *(v18 + 8 * v17) = *(v18 + 8 * v19);
              *v15 = v19;
            }

LABEL_15:
            v15 += 3;
            v20 = v14++ == v5;
          }

          while (!v20);
        }

        v13 += 24 * v12;
        v20 = v11++ == HIDWORD(v5);
      }

      while (!v20);
    }
  }

  return result;
}

unint64_t md::LabelCollider::rectToGridRect(float *a1, float *a2)
{
  v3 = gm::OBRect<float>::axisAlignedBoundingRect(a2);
  v4 = a1[8];
  return (v4 * (v3 - a1[9])) & ~((v4 * (v3 - a1[9])) >> 31) | ((((v5 - a1[10]) * v4) & ~(((v5 - a1[10]) * v4) >> 31)) << 32);
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,md::LabelCollidableItem**>(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        v13 = *(*v11 + 52);
        v14 = *(v10 + 52);
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = *v11 < v10;
        }

        if (v16)
        {
          *v11 = v10;
          *v5 = v12;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(v5, v6, v5);
          v10 = *v5;
        }

        ++v11;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v17 = 0;
        v18 = *v5;
        v19 = v5;
        do
        {
          v20 = &v19[v17];
          v21 = v20 + 1;
          v22 = v20[1];
          v23 = (2 * v17) | 1;
          v17 = 2 * v17 + 2;
          if (v17 >= v6)
          {
            v17 = v23;
          }

          else
          {
            v26 = v20[2];
            v24 = v20 + 2;
            v25 = v26;
            v27 = *(v22 + 52);
            result = *(v26 + 52);
            v28 = v22 < v26;
            v15 = v27 == result;
            v29 = v27 < result;
            if (v15)
            {
              v29 = v28;
            }

            if (v29)
            {
              v22 = v25;
              v21 = v24;
            }

            else
            {
              v17 = v23;
            }
          }

          *v19 = v22;
          v19 = v21;
        }

        while (v17 <= ((v6 - 2) >> 1));
        if (v21 == --v4)
        {
          *v21 = v18;
        }

        else
        {
          *v21 = *v4;
          *v4 = v18;
          v30 = (v21 - v5 + 8) >> 3;
          v31 = v30 < 2;
          v32 = v30 - 2;
          if (!v31)
          {
            v33 = v32 >> 1;
            v34 = &v5[v33];
            v35 = *v34;
            v36 = *v21;
            v37 = *(*v34 + 52);
            v38 = *(*v21 + 52);
            v15 = v37 == v38;
            v39 = v37 < v38;
            if (v15)
            {
              v39 = *v34 < *v21;
            }

            if (v39)
            {
              do
              {
                v40 = v34;
                *v21 = v35;
                if (!v33)
                {
                  break;
                }

                v33 = (v33 - 1) >> 1;
                v34 = &v5[v33];
                v35 = *v34;
                v41 = *(*v34 + 52);
                v42 = *v34 < v36;
                v15 = v41 == v38;
                v43 = v41 < v38;
                if (!v15)
                {
                  v42 = v43;
                }

                v21 = v40;
              }

              while (v42);
              *v40 = v36;
            }
          }
        }

        v31 = v6-- <= 2;
      }

      while (!v31);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = *(*a1 + 52);
  v5 = *(v3 + 52);
  v6 = *a1 < v3;
  v7 = v4 == v5;
  v8 = v4 < v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
      v11 = *(v10 + 52);
      v12 = v2 < v10;
      v7 = v4 == v11;
      v13 = v4 < v11;
      if (!v7)
      {
        v12 = v13;
      }
    }

    while (!v12);
  }

  else
  {
    v14 = (a1 + 1);
    do
    {
      v9 = v14;
      if (v14 >= a2)
      {
        break;
      }

      ++v14;
      v15 = *(*v9 + 52);
      v16 = v2 < *v9;
      v7 = v4 == v15;
      v17 = v4 < v15;
      if (!v7)
      {
        v16 = v17;
      }
    }

    while (!v16);
  }

  if (v9 < a2)
  {
    do
    {
      v18 = *--a2;
      v19 = *(v18 + 52);
      v20 = v2 < v18;
      v7 = v4 == v19;
      v21 = v4 < v19;
      if (!v7)
      {
        v20 = v21;
      }
    }

    while (v20);
  }

  if (v9 < a2)
  {
    v22 = *v9;
    v23 = *a2;
    do
    {
      *v9 = v23;
      *a2 = v22;
      do
      {
        v24 = v9[1];
        ++v9;
        v22 = v24;
        v25 = *(v24 + 52);
        v26 = v2 < v24;
        v7 = v4 == v25;
        v27 = v4 < v25;
        if (v7)
        {
          v27 = v26;
        }
      }

      while (!v27);
      do
      {
        v28 = *--a2;
        v23 = v28;
        v29 = *(v28 + 52);
        v30 = v2 < v28;
        v7 = v4 == v29;
        v31 = v4 < v29;
        if (v7)
        {
          v31 = v30;
        }
      }

      while (v31);
    }

    while (v9 < a2);
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v2;
  return v9;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(uint64_t result, uint64_t a2, unint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      v9 = *v7;
      if (v8 < a2)
      {
        v10 = v7[1];
        v11 = *(v9 + 52);
        v12 = *(v10 + 52);
        v13 = v11 == v12;
        v14 = v11 < v12;
        if (v13)
        {
          v14 = v9 < v10;
        }

        if (v14)
        {
          v9 = v7[1];
          ++v7;
          v6 = v8;
        }
      }

      v15 = *a3;
      v16 = *(v9 + 52);
      v17 = *(*a3 + 52);
      v13 = v16 == v17;
      v18 = v16 < v17;
      if (v13)
      {
        v18 = v9 < *a3;
      }

      if (!v18)
      {
        do
        {
          v19 = v7;
          *a3 = v9;
          if (v4 < v6)
          {
            break;
          }

          v20 = (2 * v6) | 1;
          v7 = (result + 8 * v20);
          v21 = 2 * v6 + 2;
          v9 = *v7;
          if (v21 < a2)
          {
            v22 = v7[1];
            v23 = *(v9 + 52);
            v24 = *(v22 + 52);
            v13 = v23 == v24;
            v25 = v23 < v24;
            if (v13)
            {
              v25 = v9 < v22;
            }

            if (v25)
            {
              v9 = v7[1];
              ++v7;
              v20 = v21;
            }
          }

          v26 = *(v9 + 52);
          v27 = v9 < v15;
          v13 = v26 == v17;
          v28 = v26 < v17;
          if (!v13)
          {
            v27 = v28;
          }

          a3 = v19;
          v6 = v20;
        }

        while (!v27);
        *v19 = v15;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,md::LabelCollisionItemBase **>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      do
      {
        result = *v10;
        if (*v10 != *v5)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            v11 = *v10;
            *v10 = *v5;
            *v5 = v11;
            result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(v5, v6, v5);
          }
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v12 = 0;
        v13 = *v5;
        v14 = v5;
        do
        {
          v15 = v14;
          v16 = &v14[v12];
          v14 = v16 + 1;
          v17 = 2 * v12;
          v12 = (2 * v12) | 1;
          v18 = v17 + 2;
          if (v17 + 2 < v6)
          {
            v20 = v16[2];
            v19 = v16 + 2;
            result = *(v19 - 1);
            if (result != v20)
            {
              result = (*(*result + 80))(result);
              if (result)
              {
                v14 = v19;
                v12 = v18;
              }
            }
          }

          *v15 = *v14;
        }

        while (v12 <= ((v6 - 2) >> 1));
        if (v14 == --v4)
        {
          *v14 = v13;
        }

        else
        {
          *v14 = *v4;
          *v4 = v13;
          v21 = (v14 - v5 + 8) >> 3;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &v5[v23 >> 1];
            result = *v25;
            if (*v25 != *v14)
            {
              result = (*(*result + 80))(result);
              if (result)
              {
                v26 = *v14;
                do
                {
                  v27 = v25;
                  *v14 = *v25;
                  if (!v24)
                  {
                    break;
                  }

                  v24 = (v24 - 1) >> 1;
                  v25 = &v5[v24];
                  result = *v25;
                  if (*v25 == v26)
                  {
                    break;
                  }

                  result = (*(*result + 80))(result, v26);
                  v14 = v27;
                }

                while ((result & 1) != 0);
                *v27 = v26;
              }
            }
          }
        }

        v22 = v6-- <= 2;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollisionItemBase **,md::LabelCollider::collideItems(void)::$_0 &>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1 == *(a2 - 1) || !(*(*v4 + 80))(*a1))
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  if (i < v2)
  {
    v6 = v2 - 1;
    do
    {
      v2 = v6;
      if (v4 == *v6)
      {
        break;
      }

      v7 = (*(*v4 + 80))(v4);
      v6 = v2 - 1;
    }

    while ((v7 & 1) != 0);
  }

  while (i < v2)
  {
    v8 = *i;
    *i++ = *v2;
    *v2 = v8;
    while (v4 == *i || ((*(*v4 + 80))(v4) & 1) == 0)
    {
      ++i;
    }

    v9 = v2 - 1;
    do
    {
      v2 = v9;
      if (v4 == *v9)
      {
        break;
      }

      v10 = (*(*v4 + 80))(v4);
      v9 = v2 - 1;
    }

    while ((v10 & 1) != 0);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v4;
  return i;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], &a2[-1].i64[1]);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64);
        v17 = a2[-1].i64[1];
        if (v17 != a1[1].i64[0])
        {
          if ((*(*v17 + 80))(v17))
          {
            v18 = a1[1].i64[0];
            a1[1].i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v18;
            v19 = a1[1].i64[0];
            if (v19 != a1->i64[1])
            {
              if ((*(*v19 + 80))(v19))
              {
                v21 = a1->i64[1];
                v20 = a1[1].i64[0];
                v22 = a1->i64[0];
                a1->i64[1] = v20;
                a1[1].i64[0] = v21;
                if (v20 != v22)
                {
                  if ((*(*v20 + 80))(v20))
                  {
                    *a1 = vextq_s8(*a1, *a1, 8uLL);
                  }
                }
              }
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64, &a1[1].i64[1], &a2[-1].i64[1]);
        break;
      default:
        goto LABEL_12;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2[-1].i64[1];
    if (v5 != a1->i64[0])
    {
      if ((*(*v5 + 80))(v5))
      {
        v6 = a1->i64[0];
        a1->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v6;
      }
    }

    return 1;
  }

LABEL_12:
  v7 = a1 + 1;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1->i64, &a1->i64[1], a1[1].i64);
  v8 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v9 = 0;
  for (i = 16; ; i += 8)
  {
    if (v8->i64[0] != v7->i64[0] && (*(*v8->i64[0] + 80))(v8->i64[0]))
    {
      v11 = v8->i64[0];
      v12 = i;
      while (1)
      {
        v13 = v12;
        v14 = (a1->i64 + v12);
        v14[1] = *v14;
        if (!v13)
        {
          break;
        }

        if (v11 != *(v14 - 1))
        {
          v15 = (*(*v11 + 80))(v11);
          v12 = v13 - 8;
          if (v15)
          {
            continue;
          }
        }

        v16 = (a1->i64 + v13);
        goto LABEL_22;
      }

      v16 = a1;
LABEL_22:
      *v16 = v11;
      if (++v9 == 8)
      {
        break;
      }
    }

    v7 = v8;
    v8 = (v8 + 8);
    if (v8 == a2)
    {
      return 1;
    }
  }

  return &v8->u64[1] == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - result) >> 3)
    {
      v8 = (a3 - result) >> 2;
      v9 = v8 + 1;
      v10 = (result + 8 * (v8 + 1));
      v11 = v8 + 2;
      if (v8 + 2 < a2 && *v10 != v10[1] && (*(**v10 + 80))(*v10))
      {
        ++v10;
        v9 = v11;
      }

      result = *v10;
      v12 = *a3;
      if (*v10 != *a3)
      {
        result = (*(*result + 80))(result, *a3);
        if (result)
        {
          return result;
        }

        v12 = *a3;
        result = *v10;
      }

      *a3 = result;
      if (v6 >= v9)
      {
        do
        {
          v14 = 2 * v9;
          v9 = (2 * v9) | 1;
          v13 = (v5 + 8 * v9);
          v15 = v14 + 2;
          if (v14 + 2 < a2 && *v13 != v13[1])
          {
            if ((*(**v13 + 80))(*v13))
            {
              ++v13;
              v9 = v15;
            }
          }

          result = *v13;
          if (*v13 != v12)
          {
            result = (*(*result + 80))(result, v12);
            if (result)
            {
              goto LABEL_11;
            }

            result = *v13;
          }

          *v10 = result;
          v10 = v13;
        }

        while (v6 >= v9);
      }

      else
      {
LABEL_11:
        v13 = v10;
      }

      *v13 = v12;
    }
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::LabelStyleContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelStyleCache::setContentScale(float)::$_0,std::allocator<md::LabelStyleCache::setContentScale(float)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A3A140;
  *(a2 + 8) = *(result + 8);
  return result;
}

void md::LabelStyleCache::updateNavRoadSignScale(md::LabelStyleCache *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v12, *(v2 + 16));
    v2 = v12;
    v3 = v12 == 0;
    v4 = 1.0;
    v5 = 1.0;
    v6 = 1.0;
    if (v12)
    {
      v5 = *(v12 + 212);
      if (*(v12 + 16) == 1)
      {
        v6 = *(v12 + 220);
      }
    }

    v7 = *(this + 23);
    if (v7 && *(*(v7 + 16) + 60) == 1)
    {
      v4 = 0.75;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v3 = 1;
    v6 = 1.0;
    v5 = 1.0;
    v4 = 1.0;
  }

  v8 = *(this + 159);
  v9 = 0.0;
  if (v8 > 2)
  {
    if (v8 - 4 >= 2)
    {
      if (v8 != 3)
      {
        goto LABEL_35;
      }

      if (!v3 && *(v2 + 20) == 1)
      {
        v9 = *(v2 + 236);
        goto LABEL_35;
      }

      v10 = 1.3;
    }

    else
    {
      if (!v3 && *(v2 + 21) == 1)
      {
        v9 = *(v2 + 240);
        goto LABEL_35;
      }

      v10 = 1.45;
    }

    goto LABEL_34;
  }

  if (!*(this + 159))
  {
    if (!v3 && *(v2 + 17) == 1)
    {
      v9 = *(v2 + 224);
      goto LABEL_35;
    }

    v10 = 0.9;
    goto LABEL_34;
  }

  if (v8 != 1)
  {
    if (v8 != 2)
    {
      goto LABEL_35;
    }

    if (!v3 && *(v2 + 19) == 1)
    {
      v9 = *(v2 + 232);
      goto LABEL_35;
    }

    v10 = 1.15;
LABEL_34:
    v9 = v5 * v10;
    goto LABEL_35;
  }

  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5;
    if (*(v2 + 18) == 1)
    {
      v9 = *(v2 + 228);
    }
  }

LABEL_35:
  *(this + 43) = v9 * v6;
  *(this + 44) = v9 * v4;
  v11 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__function::__func<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0,std::allocator<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::operator()(uint64_t a1, md::LabelStyle **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*(*a2 + 93) != v4)
  {
    *(v3 + 93) = v4;
    md::LabelStyle::invalidateCachedProperties(v3);
  }
}

uint64_t std::__function::__func<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0,std::allocator<md::LabelStyleCache::setLabelScaleFactor(gss::LabelScaleFactor,gss::LabelScaleFactor)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A3A188;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::LabelStyleCache::setVariantStyleType(gss::DisplayStyle)::$_0,std::allocator<md::LabelStyleCache::setVariantStyleType(gss::DisplayStyle)::$_0>,void ()(std::shared_ptr<md::LabelStyle> const&)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A3A218;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(a2 + 16);
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>>(v3, a2);
}

void std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  if (a1)
  {
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v2, a1);
  }
}

void md::LabelStyleCache::logStyleAttributes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 128);
    if (a4)
    {
      md::LabelFeature::debugName(v25, a4);
      if (v26 >= 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = *v25;
      }

      if (*(a5 + 23) < 0)
      {
        a5 = *a5;
      }

      *buf = 134218754;
      *&buf[4] = v11;
      v28 = 2080;
      v29 = a2;
      v30 = 2080;
      v31 = v12;
      v32 = 2080;
      v33 = a5;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "MDL:[mgr=%p] %s feature=%s style=%s", buf, 0x2Au);
      if (v26 < 0)
      {
        v14 = *v25;
        v15 = mdm::zone_mallocator::instance(v13);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
      }
    }

    else
    {
      if (*(a5 + 23) < 0)
      {
        a5 = *a5;
      }

      *buf = 134218754;
      *&buf[4] = v11;
      v28 = 2080;
      v29 = a2;
      v30 = 2080;
      v31 = "?";
      v32 = 2080;
      v33 = a5;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "MDL:[mgr=%p] %s feature=%s style=%s", buf, 0x2Au);
    }
  }

  v16 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    gss::attributesToString(buf, (*a3 + 240), 1, 0, 0);
    v17 = v30 >= 0 ? buf : *buf;
    *v25 = 136315138;
    *&v25[4] = v17;
    _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_INFO, "MDL:featureAttributes:%s", v25, 0xCu);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }
  }

  v18 = *(a1 + 184);
  v19 = *(v18 + 520);
  v20 = *(v18 + 528);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = GEOGetVectorKitLabelStyleQueryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(v25, v19);
    gss::attributesToString(buf, v25, 1, 0);
    if (v30 >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    v23 = 136315138;
    v24 = v22;
    _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "MDL:clientAttributes:%s", &v23, 0xCu);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v25);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

id GEOGetVectorKitLabelStyleQueryLog(void)
{
  if (GEOGetVectorKitLabelStyleQueryLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelStyleQueryLog(void)::onceToken, &__block_literal_global_36846);
  }

  v1 = GEOGetVectorKitLabelStyleQueryLog(void)::log;

  return v1;
}

void ___ZL33GEOGetVectorKitLabelStyleQueryLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelStyleQuery");
  v1 = GEOGetVectorKitLabelStyleQueryLog(void)::log;
  GEOGetVectorKitLabelStyleQueryLog(void)::log = v0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x20040A759441BuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

uint64_t md::HillshadeLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::HillshadeLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v30 = *MEMORY[0x1E69E9840];
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v21, (a1 + 784));
  gdc::LayerDataSource::getResourceFromMap(&v26, *(a1 + 592), *a3, a3[1]);
  v5 = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v5 + 1));
  }

  v20 = 0uLL;
  v6 = *(v5 + 144);
  v7 = *(v6 + 2944);
  v8 = *(v6 + 2952);
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v21;
    if (v21)
    {
      v23 = 0uLL;
      v24 = 0;
      v29 = &v25;
      v12 = gss::zone_mallocator::instance(v9);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v12, 1);
      *v13 = 0x1800000005;
      v14 = v13 + 1;
      v15 = v13 - (*(&v23 + 1) - v23);
      memcpy(v15, v23, *(&v23 + 1) - v23);
      v16 = v23;
      v17 = v24;
      *&v23 = v15;
      *(&v23 + 1) = v14;
      v24 = v14;
      v27 = v16;
      v28 = v17;
      *&v26 = v16;
      *(&v26 + 1) = v16;
      v18 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v26);
      *(&v23 + 1) = v14;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v18, &v23);
      gss::FeatureAttributeSet::sort(v26, *(&v26 + 1));
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v22, v11, &v26);
      v20 = v22;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v26);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v23);
    }

    LODWORD(v23) = 1;
    LODWORD(v22) = 1;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>();
  }

  operator new();
}

void sub_1B3176B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a25);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_7:
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  if (!v25)
  {
LABEL_9:
    if (a20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a20);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  goto LABEL_9;
}

void sub_1B3176D7C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::HillshadeTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::HillshadeLayerDataSource::~HillshadeLayerDataSource(md::HillshadeLayerDataSource *this)
{
  *this = &unk_1F2A3A318;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3A318;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::mun::MuninPointLabelDataRequester::requestDataKeys(md::mun::MuninPointLabelDataRequester *this, const gdc::SelectionContext *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 1);
  v3 = *(this + 1);
  v4 = *(a2 + 13);
  v5 = *(a2 + 14);
  v6 = v4 * 0.5;
  v7 = tan(v4 * 0.5 + 0.785398163);
  v8 = v5 * 0.159154943 + 0.5;
  v9 = log(v7) * 0.159154943 + 0.5;
  v10 = cos(v4 + v4) * -559.82 + 111132.92;
  v11 = v10 + cos(v4 * 4.0) * 1.175;
  v12 = v11 + cos(v4 * 6.0) * -0.0023;
  v13 = tan(v4 * 0.5 + 0.78103484);
  v14 = log(v13);
  v15 = tan(v6 + 0.789761487);
  v16 = fabs((log(v15) - v14) * 0.159154943) * 1000.0 / v12;
  v17 = log2(1.0 / v16);
  v18 = vcvtms_s32_f32(v17);
  v19 = (1 << v18);
  v43.i8[0] = -1;
  v43.i8[1] = v18;
  v43.i32[1] = (1 << v18) + ~vcvtmd_s64_f64(v9 * v19);
  v44 = vcvtmd_s64_f64(v8 * v19);
  v46 = 0;
  v47 = 1;
  (*(*v3 + 16))(v35, v3, 26, &v43);
  if (v37 == 1)
  {
    v20 = BYTE1(v35[0]);
  }

  else
  {
    v21 = (*(*v3 + 24))(v3, 26);
    if ((v22 & 1) == 0)
    {
      v27 = v42;
      v38 = v42;
      v39 = v42;
      v40 = v42;
      v41 = 9;
      goto LABEL_19;
    }

    v20 = v21;
  }

  v23 = 1 << v20;
  v24 = (1 << v20);
  v25 = v23 + ~vcvtmd_s64_f64((v16 + v9) * v23);
  v26 = vcvtmd_s64_f64((v9 - v16) * v24);
  v27 = v42;
  v38 = v42;
  v39 = v42;
  v40 = v42;
  v41 = 9;
  if (v25 <= ((1 << v20) + ~v26))
  {
    v34 = v2;
    v28 = vcvtmd_s64_f64((v8 - v16) * v24);
    v29 = vcvtmd_s64_f64((v16 + v8) * v24);
    v30 = v23 - v26;
    do
    {
      v31 = v28;
      if (v28 <= v29)
      {
        do
        {
          v32 = ((v27 - v38) >> 5) + 1;
          if (v41 < v32)
          {
            geo::small_vector_base<geo::QuadTile>::grow(&v38, v32);
            v27 = v39;
          }

          *v27 = -1;
          v27[1] = v20;
          *(v27 + 1) = v25;
          *(v27 + 2) = v31;
          *(v27 + 2) = 0;
          v27[24] = 1;
          v27 += 32;
          ++v31;
          v39 = v27;
        }

        while (v29 + 1 != v31);
      }

      ++v25;
    }

    while (v25 != v30);
    v33 = v38;
    if (v38 == v27)
    {
      v27 = v38;
    }

    else
    {
      do
      {
        v43 = vrev64_s32(*(v33 + 4));
        v44 = v33[1];
        v45 = *v33;
        gdc::LayerDataRequestKey::LayerDataRequestKey(v35, 0, 38, &v43, 4);
        gdc::LayerDataCollector::addDataKey(v34, v35);
        if (v36 != v37)
        {
          free(v36);
        }

        v33 += 32;
      }

      while (v33 != v27);
      v27 = v38;
    }
  }

LABEL_19:
  if (v27 != v40)
  {
    free(v27);
  }
}

uint64_t md::DaVinciGroundTileData::estimatedCost(md::DaVinciGroundTileData *this)
{
  v1 = *(this + 135);
  v2 = *(this + 136);
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      for (i = v1[1]; i != v1[2]; i += 3)
      {
        v5 = *i;
        v3 = *(**(v5 + 64) + 48) + v3 + *(*(v5 + 96) + 48) - (*(**(v5 + 64) + 40) + *(*(v5 + 96) + 40));
      }

      for (j = v1[4]; j != v1[5]; j += 4)
      {
        v7 = *j;
        v3 = *(**(v7 + 64) + 48) + v3 + *(*(v7 + 96) + 48) - (*(**(v7 + 64) + 40) + *(*(v7 + 96) + 40));
      }

      v1 += 7;
    }

    while (v1 != v2);
  }

  for (k = 0; k != 48; k += 16)
  {
    v9 = *(this + k + 888);
    if (v9)
    {
      v3 = *(v9 + 48) + v3 - *(v9 + 40);
    }
  }

  v10 = *(this + 109);
  if (v10)
  {
    v3 = *(v10 + 48) + v3 - *(v10 + 40);
  }

  for (m = *(this + 120); m != *(this + 121); m += 2)
  {
    v12 = *m;
    v3 = *(**(v12 + 64) + 48) + v3 + *(*(v12 + 96) + 48) - (*(**(v12 + 64) + 40) + *(*(v12 + 96) + 40));
  }

  for (n = *(this + 123); n != *(this + 124); n += 2)
  {
    v14 = *n;
    v3 = *(**(v14 + 64) + 48) + v3 + *(*(v14 + 96) + 48) - (*(**(v14 + 64) + 40) + *(*(v14 + 96) + 40));
  }

  for (ii = *(this + 126); ii != *(this + 127); ii += 2)
  {
    v16 = *ii;
    v3 = *(**(v16 + 64) + 48) + v3 + *(*(v16 + 96) + 48) - (*(**(v16 + 64) + 40) + *(*(v16 + 96) + 40));
  }

  v17 = *(this + 164);
  if (v17)
  {
    v3 += *(v17 + 80);
  }

  v18 = *(this + 169) + *(this + 170) + v3;
  v19 = (this + 1224);
  v20 = 4;
  do
  {
    v18 = v18 + *v19 - *(v19 - 1);
    v19 += 3;
    --v20;
  }

  while (v20);
  return v18 + 8 * *(this + 143) + 16 * *(this + 146);
}

void md::DaVinciGroundTileData::~DaVinciGroundTileData(md::DaVinciGroundTileData *this)
{
  md::DaVinciGroundTileData::~DaVinciGroundTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3A4B8;
  *(this + 80) = &unk_1F2A3A500;
  md::RegistryManager::removeRegistry(*(this + 167), this);
  v14 = (this + 1368);
  std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v2 = *(this + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 165);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  for (i = 0; i != -96; i -= 24)
  {
    v5 = *(this + i + 1288);
    if (v5)
    {
      *(this + i + 1296) = v5;
      operator delete(v5);
    }
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 145));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 142));
  v14 = (this + 1104);
  std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1080);
  std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1056);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1032);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 1008);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 984);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 960);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v6 = *(this + 117);
  if (v6)
  {
    *(this + 118) = v6;
    operator delete(v6);
  }

  for (j = 928; j != 880; j -= 16)
  {
    v8 = *(this + j);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  v9 = *(this + 110);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  for (k = 864; k != 816; k -= 16)
  {
    v11 = *(this + k);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  do
  {
    v12 = *(this + k);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    k -= 16;
  }

  while (k != 768);
  do
  {
    v13 = *(this + k);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    k -= 16;
  }

  while (k != 720);

  md::MapTileData::~MapTileData(this);
}

void sub_1B317775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 1368);
  std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 1344);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v10 + 1320);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = (v10 + 1296);
  v15 = -96;
  while (1)
  {
    v16 = *(v14 - 1);
    if (v16)
    {
      *v14 = v16;
      operator delete(v16);
    }

    v14 -= 3;
    v15 += 24;
    if (!v15)
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 1160));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 1136));
      a10 = (v10 + 1104);
      std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1080);
      std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1056);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1032);
      std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 1008);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 984);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      a10 = (v10 + 960);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
      v17 = *(v10 + 936);
      if (v17)
      {
        *(v10 + 944) = v17;
        operator delete(v17);
      }

      v18 = 0;
      while (1)
      {
        v19 = *(v10 + 928 + v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v18 -= 16;
        if (v18 == -48)
        {
          v20 = *(v10 + 880);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }

          v21 = 0;
          while (1)
          {
            v22 = *(v10 + 864 + v21);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v22);
            }

            v21 -= 16;
            if (v21 == -48)
            {
              v23 = 0;
              while (1)
              {
                v24 = *(v10 + 816 + v23);
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
                }

                v23 -= 16;
                if (v23 == -48)
                {
                  v25 = 0;
                  while (1)
                  {
                    v26 = *(v10 + 768 + v25);
                    if (v26)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
                    }

                    v25 -= 16;
                    if (v25 == -48)
                    {
                      md::MapTileData::~MapTileData(v10);
                      _Unwind_Resume(a1);
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

void std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 10;
        std::allocator_traits<std::allocator<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::destroy[abi:nn200100]<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        v9 = *(v4 - 5);
        v4 -= 5;
        v8 = v9;
        *v4 = 0;
        if (v9)
        {
          operator delete(v8);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = (v4 - 24);
        std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v6);
        v6 = (v4 - 48);
        std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v6);
        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::destroy[abi:nn200100]<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

unint64_t md::DaVinciGroundTileData::_buildingCount(uint64_t a1, geo::codec::VectorTile **a2)
{
  v4 = +[VKDebugSettings sharedSettings];
  v5 = [v4 compressedBuildingsDisabled];

  v6 = *a2;
  if ((v5 & 1) == 0 && !*(v6 + 284))
  {
    return 0;
  }

  v7 = geo::codec::VectorTile::key(v6);
  v8 = -1 << (*(a1 + 169) - (*(v7 + 1) & 0x3F));
  v9 = geo::codec::VectorTile::daVinciSubTileBuildingIndices(v6, *(a1 + 176) & ~v8, *(a1 + 172) & ~v8, (*(a1 + 169) - (*(v7 + 1) & 0x3F)));
  return (v9[1] - *v9) >> 1;
}

uint64_t md::DaVinciGroundTileData::_buildAssetRequests(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(a5 + 64);
    v25 = a2;
    v26 = a4;
    do
    {
      v11 = a2 + 48 * v9;
      if (*(v11 + 45) == 1)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v6 = (v6 & 0xFFFFFFFFFFFFFF00) + 1;
        }

        else
        {
          v6 &= 0xFFFFFFFFFFFFFF00;
        }

        if (v12)
        {
          v5 = *(v11 + 16);
        }

        else
        {
          v5 &= 0xFFFFFFFFFFFFFF00;
        }

        v13 = *(a3 + 8 * v8);
        v14 = (result + 1160);
LABEL_11:
        v15 = *v14;
        if (!*v14)
        {
LABEL_15:
          operator new();
        }

        while (1)
        {
          v14 = v15;
          v16 = v15[4];
          if (v13 < v16)
          {
            goto LABEL_11;
          }

          if (v16 >= v13)
          {
            break;
          }

          v15 = v14[1];
          if (!v15)
          {
            goto LABEL_15;
          }
        }

        if (*(v11 + 42))
        {
          v17 = *(v11 + 44) | ((*(v11 + 44) != 0) << 8);
          v18 = **(v11 + 8);
          v19 = v38;
          md::DaVinciGroundTileData::_buildInstanceTransform(v38, *v11, a5);
          v20 = 0;
          for (i = &v27; ; i += 2)
          {
            v22 = 0;
            v23 = i;
            do
            {
              *v23 = *(v19 + v22);
              v23 += 8;
              v22 += 12;
            }

            while (v22 != 48);
            ++v20;
            v19 = (v19 + 4);
            if (v20 == 3)
            {
              v24 = *(v7 + 1328);
              v27 = *(v11 + 40);
              v28 = vextq_s8(*(v11 + 24), *(v11 + 24), 8uLL);
              v29 = v38[0];
              v30 = v38[1];
              v31 = v38[2];
              v32 = v5;
              v33 = v6;
              v34 = v17;
              v35 = v18 & 1;
              v36 = v10;
              v37 = (v18 & 2) != 0;
              gdc::Registry::create(v24);
            }
          }
        }

        ++v8;
        a4 = v26;
        a2 = v25;
      }

      ++v9;
    }

    while (a4 > v9);
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::overlayComponents::Overlayable>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::overlayComponents::Overlayable>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A6A8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::overlayComponents::Overlayable>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3A6A8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v6 = a1 + 16;
  __p = 0u;
  v8 = 0u;
  LODWORD(v9) = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(&__p, *(v2 + 2816));
  if (*(*v6 + 2816))
  {
    operator new();
  }

  if (*(*v6 + 2800))
  {
    operator new();
  }

  v3 = *(v1 + 1320);
  *(v1 + 1312) = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(v8);
  v4 = __p;
  *&__p = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v5 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v5))
  {
    LOWORD(__p) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BuildTileMeshes", &unk_1B3514CAA, &__p, 2u);
  }

  operator new();
}

void sub_1B317A694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 __p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundTileData::_buildTileMeshes(uint64_t a1, geo::codec::VectorTile **a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 492);
  v3 = *(*a2 + 1030);
  v54 = *(*a2 + 256);
  v4 = *(*a2 + 247);
  v5 = geo::codec::VectorTile::key(*a2);
  v6 = md::DaVinciGroundTileData::_edgeSmoothingAngleForZ((*(v5 + 1) & 0x3F));
  memset(v64, 0, sizeof(v64));
  if (v3)
  {
    v7 = 0;
    __p = 0;
    v8 = 0;
    for (i = 0; i != v3; ++i)
    {
      v10 = *(*a2 + 258) + 80 * i;
      v11 = (*(v10 + 16) + *(v10 + 12));
      if (*v10)
      {
        __dst[0] = 0;
        __dst[4] = 0;
        std::vector<std::optional<unsigned int>>::push_back[abi:nn200100](v64, __dst);
      }

      else
      {
        *__dst = v7 >> 4;
        __dst[4] = 1;
        std::vector<std::optional<unsigned int>>::push_back[abi:nn200100](v64, __dst);
        v12 = *(v10 + 4);
        v13 = *(v10 + 24);
        v14 = (v7 >> 4) + 1;
        if (v14 >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v7 >> 4 != -1)
        {
          if (!(v14 >> 60))
          {
            operator new();
          }

LABEL_52:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = 16 * (v7 >> 4);
        *v15 = *(v10 + 12);
        *(v15 + 4) = v11;
        *(v15 + 8) = v12;
        *(v15 + 12) = v13;
        v55 = (v15 + 16);
        memcpy(0, 0, v7);
        v7 = v55;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (&v8[-__p] >> 3) + 1;
      if (v16 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7;
      if (0x5555555555555556 * (-__p >> 3) > v16)
      {
        v16 = 0x5555555555555556 * (-__p >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__p >> 3) >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_52;
      }

      v19 = 8 * (&v8[-__p] >> 3);
      *v19 = xmmword_1B33AFF10;
      *(v19 + 16) = 0x80000000800000;
      v20 = v19 + 24 * (&v8[-__p] / -24);
      if (__p != v8)
      {
        v21 = __p;
        v22 = 8 * (&v8[-__p] >> 3) + 24 * (&v8[-__p] / -24);
        do
        {
          v23 = *v21;
          *(v22 + 16) = *(v21 + 16);
          *v22 = v23;
          v22 += 24;
          v21 += 24;
        }

        while (v21 != v8);
      }

      v8 = (v19 + 24);
      if (__p)
      {
        operator delete(__p);
      }

      __p = v20;
      v7 = v17;
      v24 = *(v10 + 12);
      if (v24 < v11)
      {
        do
        {
          v25 = *(v54 + 2 * v24);
          if (v25 != 0xFFFF)
          {
            v26 = 0;
            v27 = v4 + 12 * (*(v10 + 4) + v25);
            v28 = *(v27 + 8);
            *__dst = *v27;
            *&__dst[8] = v28;
            do
            {
              v29 = &v8[v26];
              *(v29 - 6) = fminf(*&__dst[v26], *&v8[v26 - 24]);
              *(v29 - 3) = fmaxf(*&v8[v26 - 12], *&__dst[v26]);
              v26 += 4;
            }

            while (v26 != 12);
          }

          ++v24;
        }

        while (v24 != v11);
      }
    }

    v30 = v3;
  }

  else
  {
    v7 = 0;
    v30 = 0;
  }

  v31 = v7;
  memset(v62, 0, sizeof(v62));
  v63 = 1065353216;
  v52 = v30;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v62, v30);
  if (v3)
  {
    v32 = 4;
    v33 = v52;
    do
    {
      v34 = *(*(*a2 + 258) + v32);
      *__dst = *(*a2 + 258) + v32;
      *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v62, v34) + 5) = v34;
      v32 += 80;
      --v33;
    }

    while (v33);
  }

  v61[1] = 0;
  v61[0] = 0;
  v60 = v61;
  v35 = *a2;
  v36 = *(*a2 + 1004);
  if (*(*a2 + 1004))
  {
    v37 = *(v35 + 252);
    do
    {
      *__dst = *v37 | ((*v37 + *(v37 + 2)) << 32);
      *&__dst[8] = v37;
      v70 = 0;
      geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::insert(&v60, __dst);
      v37 += 4;
      --v36;
    }

    while (v36);
    v35 = *a2;
  }

  v38 = *(v35 + 1012);
  if (*(v35 + 1012))
  {
    v39 = (*(v35 + 254) + 8);
    do
    {
      v40 = *v39;
      *__dst = *(v39 - 2) | ((*(v39 - 2) + *(v39 - 2)) << 32);
      *&__dst[8] = v40;
      v70 = 1;
      geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::insert(&v60, __dst);
      v39 = (v39 + 24);
      --v38;
    }

    while (v38);
    v35 = *a2;
  }

  v41 = *(v35 + 510);
  v42 = v31;
  if (v2)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v2);
  }

  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  {
    md::DaVinciGroundTileData::_buildTileMeshes(std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::optional<gm::Matrix<float,4,4>> const&)::$_1::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
    v42 = v31;
  }

  v43 = md::DaVinciGroundTileData::_buildTileMeshes(std::shared_ptr<geo::codec::VectorTile> const&,ggl::ResourceAccessor *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::optional<gm::Matrix<float,4,4>> const&)::$_1::operator() const(void)::cached_result;
  v44 = +[VKDebugSettings sharedSettings];
  v45 = [v44 daVinciOverrideNormalsSharpness];

  if ((v43 & v45) == 1)
  {
    v46 = +[VKDebugSettings sharedSettings];
    [v46 daVinciNormalsSharpnessBias];
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
    if (v43)
    {
      v49 = *(a1 + 1392);
      if (v49)
      {
        v50 = geo::codec::VectorTile::key(*a2);
        v48 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v49, 5, (*(v50 + 1) & 0x3F));
      }
    }
  }

  v51 = *(a1 + 168);
  *&__dst[4] = *(a1 + 172);
  *__dst = v51;
  *&__dst[16] = *(a1 + 184);
  LOBYTE(v70) = *(a1 + 192);
  md::debugString<geo::QuadTile>(&v66, __dst);
  v67 = v6;
  v68 = 1.0 - v48;
  memset(v65, 0, 24);
  md::DaVinciGroundTileData::_buildNormals(0, v2, v54, v41, 0, v42 >> 4, &v66, v62, v59, v58, v65);
}

void sub_1B317F214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  v52 = 0;
  v53 = v50 - 240;
  while (1)
  {
    v54 = *(v53 + v52 + 48);
    if (v54)
    {
      *(v53 + v52 + 56) = v54;
      operator delete(v54);
    }

    v52 -= 24;
    if (v52 == -72)
    {
      v55 = STACK[0x270];
      if (STACK[0x270])
      {
        STACK[0x278] = v55;
        operator delete(v55);
      }

      if (STACK[0x268])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x268]);
      }

      if (STACK[0x288])
      {
        operator delete(STACK[0x288]);
      }

      if (STACK[0x2A0])
      {
        operator delete(STACK[0x2A0]);
      }

      if (a50)
      {
        operator delete(a50);
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(STACK[0x2C0]);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&STACK[0x2D0]);
      if (a20)
      {
        operator delete(a20);
      }

      if (STACK[0x2F8])
      {
        operator delete(STACK[0x2F8]);
      }

      if (a17)
      {
        operator delete(a17);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t md::DaVinciGroundTileData::_buildDecals(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  *v90 = 0u;
  v91 = 0u;
  __p = 0u;
  v94 = 0u;
  v92 = 1065353216;
  v95 = 1065353216;
  memset(v96, 0, sizeof(v96));
  v97 = 1065353216;
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v5 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ReadDecal", &unk_1B3514CAA, buf, 2u);
  }

  for (i = 0; ; ++i)
  {
    v7 = *a2;
    v8 = *(*a2 + 2216);
    if (i >= geo::codec::VectorTile::daVinciDecalCount(v8, *(*a2 + 2224)))
    {
      break;
    }

    v9 = v8 + 72 * i;
    if (*v9)
    {
      *v85 = 0;
      *&v85[8] = 0;
    }

    else
    {
      v10 = *a4;
      md::createFeatureAttributeSet(buf, v9 + 6);
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v85, v10, buf);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
      v7 = *a2;
    }

    v81 = *(v9 + 8);
    v11 = *(v9 + 3);
    v12 = *(v7 + 2064) + 80 * *(v9 + 33);
    v13 = *v9;
    v14 = *(v9 + 32);
    v16 = *(v9 + 8);
    v15 = *(v9 + 9);
    v17 = *(v9 + 10);
    if (*v9)
    {
      if (!*(&__p + 1))
      {
        goto LABEL_32;
      }

      v18 = vcnt_s8(*(&__p + 8));
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        v19 = *v9;
        if (v13 >= *(&__p + 1))
        {
          v19 = v13 % *(&__p + 1);
        }
      }

      else
      {
        v19 = (*(&__p + 1) - 1) & v13;
      }

      v27 = *(__p + 8 * v19);
      if (!v27 || (v28 = *v27) == 0)
      {
LABEL_32:
        operator new();
      }

      while (1)
      {
        v29 = v28[1];
        if (v29 == v13)
        {
          if (v28[2] == v13)
          {
            *buf = *(v7 + 2064) + 80 * *(v9 + 33);
            *v100 = v14;
            v33 = v81;
            v33.i64[1] = vextq_s8(v33, v33, 8uLL).u64[0];
            *&v100[4] = v33;
            *&v100[20] = v11;
            *&v100[28] = v16;
            v101 = v15;
            v102 = v17;
            v103 = 1065353216;
            std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](v28 + 3, buf);
            goto LABEL_49;
          }
        }

        else
        {
          if (v18.u32[0] > 1uLL)
          {
            if (v29 >= *(&__p + 1))
            {
              v29 %= *(&__p + 1);
            }
          }

          else
          {
            v29 &= *(&__p + 1) - 1;
          }

          if (v29 != v19)
          {
            goto LABEL_32;
          }
        }

        v28 = *v28;
        if (!v28)
        {
          goto LABEL_32;
        }
      }
    }

    v20 = *v85;
    v21 = *&v85[8];
    if (*&v85[8])
    {
      atomic_fetch_add_explicit((*&v85[8] + 8), 1uLL, memory_order_relaxed);
    }

    v22 = 0x9DDFEA08EB382D69 * ((8 * (v20 & 0x1FFFFFFF) + 8) ^ HIDWORD(v20));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v22 >> 47) ^ v22);
    v24 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
    if (!v90[1])
    {
      goto LABEL_46;
    }

    v25 = vcnt_s8(v90[1]);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.u32[0] > 1uLL)
    {
      v26 = 0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47));
      if (v24 >= v90[1])
      {
        v26 = v24 % v90[1];
      }
    }

    else
    {
      v26 = v24 & (v90[1] - 1);
    }

    v30 = *(v90[0] + v26);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      v32 = v31[1];
      if (v32 == v24)
      {
        break;
      }

      if (v25.u32[0] > 1uLL)
      {
        if (v32 >= v90[1])
        {
          v32 %= v90[1];
        }
      }

      else
      {
        v32 &= v90[1] - 1;
      }

      if (v32 != v26)
      {
        goto LABEL_46;
      }

LABEL_45:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_46;
      }
    }

    if (v31[2] != v20)
    {
      goto LABEL_45;
    }

    *buf = v12;
    *v100 = v14;
    v34 = v81;
    v34.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
    *&v100[4] = v34;
    *&v100[20] = v11;
    *&v100[28] = v16;
    v101 = v15;
    v102 = v17;
    v103 = 1065353216;
    std::vector<md::DaVinciDecalBuilder::DecalDescription>::push_back[abi:nn200100](v31 + 4, buf);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

LABEL_49:
    if (*&v85[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v85[8]);
    }
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v35 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ReadDecal", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v36 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BuildDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  v87 = 0;
  v88 = 0;
  v89 = 0;
  v37 = *(&v94 + 1) + *(&v91 + 1);
  if (*(&v94 + 1) + *(&v91 + 1))
  {
    if (v37 < 0x555555555555556)
    {
      *&v100[24] = &v87;
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciDecalBatch>>(v37);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v94)
  {
    md::DaVinciDecalBuilder::buildBatch(buf, v90, *(v94 + 16), (v94 + 24), a2);
  }

  v38 = v91;
  if (v91)
  {
    v39 = *(v91 + 24);
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    md::DaVinciDecalBuilder::buildBatch(buf, v90, 0, (v38 + 32), a2);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v40 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BuildDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v41 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v41, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  v42 = a1 + 123;
  v43 = a1[123];
  v44 = v87;
  v45 = 0xAAAAAAAAAAAAAAABLL * (v88 - v87) + ((a1[124] - v43) >> 4);
  if (v45 > (a1[125] - v43) >> 4)
  {
    if (!(v45 >> 60))
    {
      *&v100[24] = a1 + 123;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v45);
    }

LABEL_117:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v87 != v88)
  {
    v46 = a1 + 129;
    v79 = v88;
    do
    {
      v47 = a1[124];
      v48 = a1[125];
      if (v47 >= v48)
      {
        v51 = (v47 - *v42) >> 4;
        v52 = v51 + 1;
        if ((v51 + 1) >> 60)
        {
          goto LABEL_117;
        }

        v53 = v48 - *v42;
        if (v53 >> 3 > v52)
        {
          v52 = v53 >> 3;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF0)
        {
          v54 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        *&v100[24] = v42;
        if (v54)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v54);
        }

        v55 = 16 * v51;
        v56 = *v44;
        *(16 * v51) = *v44;
        if (*(&v56 + 1))
        {
          atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v50 = (v55 + 16);
        v57 = a1[123];
        v58 = a1[124] - v57;
        v59 = v55 - v58;
        memcpy((v55 - v58), v57, v58);
        v60 = a1[123];
        a1[123] = v59;
        a1[124] = v50;
        v61 = a1[125];
        a1[125] = 0;
        *&v100[8] = v60;
        *&v100[16] = v61;
        *buf = v60;
        *v100 = v60;
        std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(buf);
      }

      else
      {
        *v47 = *v44;
        v49 = *(v44 + 1);
        v47[1] = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        v50 = v47 + 2;
      }

      a1[124] = v50;
      v62 = *(v44 + 3);
      if (*(v44 + 4) != v62)
      {
        v63 = *(v44 + 3);
        v86 = *(v62 + 48);
        v85[0] = 3;
        v84[0] = 0;
        LOBYTE(v98) = 1;
        v64 = a1[130];
        v65 = a1[131];
        if (v64 >= v65)
        {
          v67 = 0xCCCCCCCCCCCCCCCDLL * ((v64 - *v46) >> 4);
          v68 = v67 + 1;
          if (v67 + 1 > 0x333333333333333)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v69 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - *v46) >> 4);
          if (2 * v69 > v68)
          {
            v68 = 2 * v69;
          }

          if (v69 >= 0x199999999999999)
          {
            v70 = 0x333333333333333;
          }

          else
          {
            v70 = v68;
          }

          *&v100[24] = a1 + 129;
          if (v70)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v70);
          }

          *buf = 0;
          *v100 = 80 * v67;
          *&v100[8] = 80 * v67;
          std::construct_at[abi:nn200100]<md::Mesh,std::shared_ptr<ggl::DaVinci::TexturedCompressedMesh> &,gm::Range<unsigned long>,ggl::PrimitiveType,gm::Box<float,3> &,md::MeshVertexFormat,BOOL,md::Mesh*>(80 * v67, *v44, *(v44 + 1), &v86, v85, (v63 + 64), v84, &v98);
          *&v100[8] += 80;
          v71 = a1[130];
          v72 = a1[129];
          v73 = (*v100 + v72 - v71);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(v72, v71, v73);
          v74 = a1[129];
          a1[129] = v73;
          v75 = a1[131];
          v83 = *&v100[8];
          *(a1 + 65) = *&v100[8];
          *&v100[8] = v74;
          *&v100[16] = v75;
          *buf = v74;
          *v100 = v74;
          std::__split_buffer<md::Mesh>::~__split_buffer(buf);
          v66 = v83;
        }

        else
        {
          v66 = std::construct_at[abi:nn200100]<md::Mesh,std::shared_ptr<ggl::DaVinci::TexturedCompressedMesh> &,gm::Range<unsigned long>,ggl::PrimitiveType,gm::Box<float,3> &,md::MeshVertexFormat,BOOL,md::Mesh*>(v64, *v44, *(v44 + 1), &v86, v85, (v63 + 64), v84, &v98) + 80;
          a1[130] = v66;
        }

        a1[130] = v66;
        v76 = a1[166];
        memset(&v85[4], 0, 44);
        *v85 = 1065353216;
        *&v85[16] = 1065353216;
        *&v85[32] = 1065353216;
        v84[0] = 0;
        v84[8] = 0;
        md::components::MeshInstance::MeshInstance(buf, v66 - 80, v85, 0, v84, 0);
        gdc::Registry::create(v76);
      }

      v44 += 3;
      v42 = a1 + 123;
    }

    while (v44 != v79);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v77 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v77))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v77, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessDecalBatches", &unk_1B3514CAA, buf, 2u);
  }

  *buf = &v87;
  std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](buf);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v96);
  return std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>>>::~__hash_table(v90);
}

void sub_1B31809E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a19 = &a28;
  std::vector<md::DaVinciDecalBatch>::__destroy_vector::operator()[abi:nn200100](&a19);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

uint64_t md::DaVinciGroundTileData::_buildBuildings(uint64_t a1, geo::codec::VectorTile **a2, uint64_t a3, float *a4)
{
  v149[6] = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v134 = 0u;
  v135 = 1065353216;
  v6 = +[VKDebugSettings sharedSettings];
  v118 = [v6 daVinciColorBuildings];

  v7 = *a2;
  v8 = geo::codec::VectorTile::key(*a2);
  v9 = -1 << (*(a1 + 169) - (*(v8 + 1) & 0x3F));
  v10 = geo::codec::VectorTile::daVinciSubTileBuildingIndices(v7, *(a1 + 176) & ~v9, *(a1 + 172) & ~v9, (*(a1 + 169) - (*(v8 + 1) & 0x3F)));
  v15 = *a2;
  v128 = *(*a2 + 284);
  if (!v128)
  {
    v128 = *(v15 + 247) + 12 * *(v15 + 566);
  }

  v17 = *v10;
  v16 = v10[1];
  v121 = *(v15 + 292);
  v116 = *(v15 + 291);
  v127 = *(v15 + 289);
  v120 = geo::codec::VectorTile::buildingTileIntersectionInfo(v15, v11, v12, v13, v14);
  v18 = v16 - v17;
  v19 = *a2;
  v115 = geo::codec::VectorTile::buildingToModifierMap(*a2);
  v20 = geo::codec::VectorTile::daVinciBuildingColorsArePresent(*(v19 + 296), *(v19 + 297));
  LODWORD(v141) = -1;
  if ((v118 & 1) == 0)
  {
    LODWORD(v149[0]) = 1;
    std::allocate_shared[abi:nn200100]<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>,std::allocator<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>,int,0>();
  }

  if (v20)
  {
    operator new();
  }

  v21 = v115[3];
  if (v21)
  {
    LODWORD(v149[0]) = v21 + 1;
    std::allocate_shared[abi:nn200100]<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>,std::allocator<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>,int,0>();
  }

  v22 = 0uLL;
  LOWORD(v140) = 0;
  if (((v16 - v17) >> 1))
  {
    v23 = 0;
    v117 = v10;
    while (1)
    {
      v24 = (*v10)->u16[v23];
      v25 = (v121 + 40 * v24);
      v26 = v25[2];
      v27 = *v120;
      v130 = v25;
      md::createFeatureAttributeSet(v147, v25);
      if (!v26)
      {
        goto LABEL_141;
      }

      v124 = v27;
      v125 = v24;
      v28 = v27[v24];
      v29 = ((v26 << 6) + (v26 >> 2) + v28 - 0x61C8864680B583EBLL) ^ v26;
      if (!__p[1])
      {
        goto LABEL_33;
      }

      v30 = vcnt_s8(__p[1]);
      v30.i16[0] = vaddlv_u8(v30);
      if (v30.u32[0] > 1uLL)
      {
        v31 = ((v26 << 6) + (v26 >> 2) + v28 - 0x61C8864680B583EBLL) ^ v26;
        if (v29 >= __p[1])
        {
          v31 = v29 % __p[1];
        }
      }

      else
      {
        v31 = v29 & (__p[1] - 1);
      }

      v32 = *(__p[0] + v31);
      if (!v32 || (v33 = *v32) == 0)
      {
LABEL_33:
        operator new();
      }

      v34 = v33;
      while (1)
      {
        v35 = v34[1];
        if (v35 == v29)
        {
          break;
        }

        if (v30.u32[0] > 1uLL)
        {
          if (v35 >= __p[1])
          {
            v35 %= __p[1];
          }
        }

        else
        {
          v35 &= __p[1] - 1;
        }

        if (v35 != v31)
        {
          goto LABEL_33;
        }

LABEL_32:
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      if (v34[2] != v26 || *(v34 + 24) != v28)
      {
        goto LABEL_32;
      }

      v111 = v34;
      v126 = v23;
      v37 = v130;
      v122 = v34;
      if (*(v130 + 17))
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v129 = v116 + 20 * *(v130 + 16);
        do
        {
          v41 = v129 + 20 * v38;
          v42 = v127 + 8 * *(v41 + 12);
          *v138 = 0u;
          v139 = 0u;
          *v137 = 0u;
          memset(v136, 0, 24);
          md::DaVinciGroundTileData::_populateBuildingLoops(a4, v128, v41, *v42, *(v42 + 4), v42 + 8, v137, v136);
          v131 = v40;
          v146[0] = &unk_1F2A3AD10;
          v146[1] = v137;
          v146[3] = v146;
          v142 = 0uLL;
          v143 = 0;
          v43 = *(v41 + 16);
          if (*(v41 + 16))
          {
            v149[4] = &v142;
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>>(v43);
          }

          v45 = v137[0];
          v44 = v137[1];
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v145, v146);
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v149, v145);
          v46 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 2);
          geo::effectiveVertexCount<float>(v46, v149);
          v48 = v47;
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v149);
          v49 = *(&v142 + 1);
          v50 = v142;
          if (v142 == *(&v142 + 1))
          {
            v54 = 0;
          }

          else
          {
            v51 = 0;
            do
            {
              v52 = *v50;
              if (*v50)
              {
                std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::__value_func[abi:nn200100](v148, (v50 + 1));
                geo::effectiveVertexCount<float>(v52, v148);
                v48 += v53;
                std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v148);
                ++v51;
                v49 = *(&v142 + 1);
              }

              v50 += 5;
            }

            while (v50 != v49);
            v54 = 2 * v51;
          }

          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v145);
          v55 = v138[1];
          if (v138[1] == v139)
          {
            v56 = 0;
          }

          else
          {
            v56 = 0;
            do
            {
              v57 = *v55++;
              if ((v57 & 3) == 0)
              {
                ++v56;
              }
            }

            while (v55 != v139);
          }

          v58 = 6 * v46;
          v59 = 2 * (v56 - 0x5555555555555555 * ((v137[1] - v137[0]) >> 2));
          if (*(v41 + 16))
          {
            v60 = 0;
            do
            {
              v61 = (v136[0] + 48 * v60);
              v62 = v61[3];
              v63 = v61[4];
              if (v62 == v63)
              {
                v64 = 0;
              }

              else
              {
                v64 = 0;
                do
                {
                  v65 = *v62++;
                  if ((v65 & 3) == 0)
                  {
                    ++v64;
                  }
                }

                while (v62 != v63);
              }

              v66 = v61[1] - *v61;
              v46 += 0xAAAAAAAAAAAAAAABLL * (v66 >> 2);
              v58 += v66 >> 1;
              v59 += 2 * (v64 - 0x5555555555555555 * (v66 >> 2));
              ++v60;
            }

            while (v60 != *(v41 + 16));
          }

          v67 = 3 * (v48 + v54) - 6;
          if (*v41)
          {
            v68 = 3 * (v48 + v54) - 6;
          }

          else
          {
            v68 = 0;
          }

          v69 = *(v41 + 4);
          v70 = *(v41 + 8);
          if (*v41)
          {
            v71 = v46;
          }

          else
          {
            v71 = 0;
          }

          if (v69 <= v70)
          {
            v72 = 0;
          }

          else
          {
            v72 = v58;
          }

          if (v69 <= v70)
          {
            v73 = 0;
          }

          else
          {
            v73 = v59;
          }

          v149[0] = &v142;
          std::vector<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>::__destroy_vector::operator()[abi:nn200100](v149);
          std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v146);
          v149[0] = v136;
          std::vector<md::PolygonLoop>::__destroy_vector::operator()[abi:nn200100](v149);
          if (v138[1])
          {
            *&v139 = v138[1];
            operator delete(v138[1]);
          }

          if (v137[0])
          {
            v137[1] = v137[0];
            operator delete(v137[0]);
          }

          v39 += v67 + v68 + v72;
          v37 = v130;
          v40 = v46 + v131 + v71 + v73;
          ++v38;
        }

        while (v38 < *(v130 + 17));
        v111 = v122;
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }

      v75 = v111[4];
      v74 = v111[5];
      v132 = v40;
      if (v74 == v75 || v40 + *(v74 - 28) >= 0x10000)
      {
        v76 = v111[6];
        if (v74 < v76)
        {
          *(v74 + 64) = 0;
          *(v74 + 72) = 0;
          *v74 = 0u;
          *(v74 + 16) = 0u;
          *(v74 + 32) = 0u;
          v77 = v74 + 80;
          *(v74 + 42) = 0u;
          goto LABEL_101;
        }

        v78 = 0xCCCCCCCCCCCCCCCDLL * ((v74 - v75) >> 4);
        v79 = v78 + 1;
        if (v78 + 1 > 0x333333333333333)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v80 = 0xCCCCCCCCCCCCCCCDLL * ((v76 - v75) >> 4);
        if (2 * v80 > v79)
        {
          v79 = 2 * v80;
        }

        if (v80 >= 0x199999999999999)
        {
          v81 = 0x333333333333333;
        }

        else
        {
          v81 = v79;
        }

        if (v81)
        {
          if (v81 <= 0x333333333333333)
          {
            operator new();
          }

LABEL_157:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v83 = 80 * v78;
        *(v83 + 64) = 0;
        *(v83 + 72) = 0;
        *v83 = 0u;
        *(v83 + 16) = 0u;
        *(v83 + 32) = 0u;
        *(v83 + 42) = 0u;
        v84 = v111[4];
        v85 = v111[5];
        v86 = v83 + v84 - v85;
        if (v84 != v85)
        {
          v87 = v111[4];
          v88 = v83 + v84 - v85;
          do
          {
            *v88 = 0;
            *(v88 + 8) = 0;
            *(v88 + 16) = 0;
            *v88 = *v87;
            *(v88 + 16) = *(v87 + 16);
            *v87 = 0;
            *(v87 + 8) = 0;
            *(v87 + 16) = 0;
            *(v88 + 24) = 0;
            *(v88 + 32) = 0;
            *(v88 + 40) = 0;
            *(v88 + 24) = *(v87 + 24);
            *(v88 + 40) = *(v87 + 40);
            *(v87 + 24) = 0;
            *(v87 + 32) = 0;
            *(v87 + 40) = 0;
            v89 = *(v87 + 48);
            *(v88 + 57) = *(v87 + 57);
            *(v88 + 48) = v89;
            v87 += 80;
            v88 += 80;
          }

          while (v87 != v85);
          do
          {
            std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v84);
            v84 += 80;
          }

          while (v84 != v85);
        }

        v77 = v83 + 80;
        v111 = v122;
        v90 = v122[4];
        v122[4] = v86;
        *(v122 + 5) = v77;
        if (v90)
        {
          operator delete(v90);
        }

LABEL_101:
        v111[5] = v77;
        v82 = v77 - 80;
      }

      else
      {
        v82 = v74 - 80;
      }

      v92 = *(v82 + 8);
      v91 = *(v82 + 16);
      if (v92 >= v91)
      {
        v94 = (v92 - *v82) >> 3;
        if ((v94 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v95 = v91 - *v82;
        v96 = v95 >> 2;
        if (v95 >> 2 <= (v94 + 1))
        {
          v96 = v94 + 1;
        }

        if (v95 >= 0x7FFFFFFFFFFFFFF8)
        {
          v97 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v96;
        }

        if (v97)
        {
          if (!(v97 >> 61))
          {
            operator new();
          }

          goto LABEL_157;
        }

        v98 = (8 * v94);
        *v98 = v37;
        v93 = 8 * v94 + 8;
        v99 = *(v82 + 8) - *v82;
        v100 = v98 - v99;
        memcpy(v98 - v99, *v82, v99);
        v101 = *v82;
        *v82 = v100;
        *(v82 + 8) = v93;
        *(v82 + 16) = 0;
        if (v101)
        {
          operator delete(v101);
        }
      }

      else
      {
        *v92 = v37;
        v93 = (v92 + 1);
      }

      *(v82 + 8) = v93;
      if (v118)
      {
        v102 = v115[1];
        if (v102)
        {
          v103 = vcnt_s8(v102);
          v103.i16[0] = vaddlv_u8(v103);
          if (v103.u32[0] > 1uLL)
          {
            v104 = v125;
            v105 = v125;
            if (*&v102 <= v125)
            {
              v105 = v125 % v115[1];
            }
          }

          else
          {
            v104 = v125;
            v105 = (v102.i32[0] - 1) & v125;
          }

          v106 = *(*v115 + 8 * v105);
          if (v106)
          {
            for (i = *v106; i; i = *i)
            {
              v108 = i[1];
              if (v108 == v104)
              {
                if (*(i + 8) == v104)
                {
                  v112 = *(i + 9);
                  goto LABEL_133;
                }
              }

              else
              {
                if (v103.u32[0] > 1uLL)
                {
                  if (v108 >= *&v102)
                  {
                    v108 %= *&v102;
                  }
                }

                else
                {
                  v108 &= *&v102 - 1;
                }

                if (v108 != v105)
                {
                  break;
                }
              }
            }
          }
        }

        v112 = -1;
LABEL_133:
        LOWORD(v140) = v112;
      }

      std::vector<unsigned short>::push_back[abi:nn200100](v82 + 24, &v140);
      v109 = *(v82 + 52) + v132;
      *(v82 + 48) += v39;
      *(v82 + 52) = v109;
      v10 = v117;
      v23 = v126;
      if (v124[v125])
      {
        if (*(v82 + 72) == 1)
        {
          v110 = *(v82 + 64);
        }

        else
        {
          v110 = -1;
          *(v82 + 64) = -1;
          *(v82 + 72) = 1;
        }

        if (v130[3] < v110)
        {
          v110 = v130[3];
        }

        *(v82 + 64) = v110;
        *(v82 + 72) = 1;
        *(v82 + 56) = *(geo::codec::VectorTile::key(*a2) + 1) & 0x3F | 0x100;
      }

LABEL_141:
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v147);
      if (++v23 == (v18 >> 1))
      {
        v22 = 0uLL;
        break;
      }
    }
  }

  if (v22)
  {
    if (*(v22 + 32) == 1)
    {
      LODWORD(v149[0]) = 1;
      v148[0] = 1;
      LODWORD(v147[0]) = 1065353216;
      LODWORD(v146[0]) = 0;
      std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>();
    }

    if (*(v22 + 24))
    {
      *(v22 + 24) = 0;
      operator new();
    }
  }

  v113 = v134;
  if (v134)
  {
    do
    {
      v119 = v113;
      if (v113[4] != v113[5])
      {
        if (*(&v22 + 1))
        {
          atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v144 = 1;
        operator new();
      }

      v113 = *v113;
    }

    while (*v119);
  }

  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
  }

  return std::__hash_table<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::__unordered_map_hasher<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,true>,std::__unordered_map_equal<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,md::DaVinciGroundTileData::BuildingBatchTypeHash,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>>::~__hash_table(__p);
}

void md::DaVinciGroundTileData::_constructBuildingBVH(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = a2;
  {
    md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_0::operator() const(void)::cached_result = MapsFeature_IsEnabled_Maps68();
    v9 = a2;
  }

  if (md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_0::operator() const(void)::cached_result == 1)
  {
    {
      md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_1::operator() const(void)::cached_result = GEOConfigGetBOOL();
      v9 = a2;
    }

    if (md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::$_1::operator() const(void)::cached_result == 1)
    {
      v199 = 0;
      v198 = 0;
      v200 = 0;
      v196 = 0uLL;
      v197 = 0;
      v195 = xmmword_1B33B0730;
      __p = 0;
      v193 = 0;
      v194 = 0;
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v186 = 0;
      v187 = 0;
      v188 = 0;
      std::vector<gm::Matrix<float,3,1>>::reserve(&__p, 0x14uLL);
      std::vector<gm::Matrix<float,2,1>>::reserve(&v189, 0xAAAAAAAAAAAAAAABLL * ((v194 - __p) >> 2));
      v10 = a1;
      if (*(v9 + 34))
      {
        v171 = 0;
        v172 = 0;
        v165 = a4 + 20 * *(v9 + 32);
        __asm { FMOV            V0.4S, #1.0 }

        v159 = _Q0;
        __asm { FMOV            V0.2S, #-1.0 }

        v15 = -*&_Q0;
        while (1)
        {
          v16 = 0;
          *v184 = 0u;
          v185 = 0u;
          *v183 = 0u;
          do
          {
            *&v181[v16] = 0xFF7FFFFF7F7FFFFFLL;
            v16 += 2;
          }

          while (v16 != 10);
          v17 = v165 + 20 * v171;
          v180 = 0.0;
          v193 = __p;
          v190 = v189;
          v187 = v186;
          if (*(v17 + 4) > *(v17 + 8))
          {
            break;
          }

LABEL_200:
          if (v183[0])
          {
            operator delete(v183[0]);
          }

          if (++v171 >= *(a2 + 34))
          {
            v157 = v196;
            v158 = v196;
            goto LABEL_223;
          }
        }

        BuildingHeightAndExtrusionType = md::DaVinciGroundTileData::_getBuildingHeightAndExtrusionType(v10, &v180, v165 + 20 * v171, a8);
        v19 = *(v17 + 12);
        *v203 = xmmword_1B33B21C0;
        LODWORD(v204) = 1056964608;
        md::DaVinciGroundTileData::_roundLoopCorners(&v177, v203, a5, *(a6 + 8 * v19), *(a6 + 8 * v19 + 4));
        v21 = v177;
        v20 = v178;
        md::DaVinciGroundTileData::_transformBuildingLoop(v177, v178, md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::innerLoops[0], unk_1EB845BE0, a8);
        v176 = 0;
        BuildingTerrainElevation = md::DaVinciGroundTileData::_getBuildingTerrainElevation(v10, &v176, v21, v20, a7, a8, a3, v171, *(v17 + 8));
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 2);
        if (v20 != v21)
        {
          v24 = BuildingTerrainElevation;
          v25 = 0;
          v26 = 0;
          v27 = v176;
          v28 = v180;
          do
          {
            v29 = &v21[12 * v25];
            v203[0] = *v29;
            LODWORD(v203[1]) = *(v29 + 2);
            if (v24)
            {
              LODWORD(v203[1]) = v27;
            }

            LODWORD(v205[1]) = v203[1];
            v205[0] = v203[0];
            v30 = *&v203[1];
            if (!BuildingHeightAndExtrusionType)
            {
              v30 = 0.0;
            }

            *&v205[1] = v30 + v28;
            if (v23 < 9)
            {
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__p, v203);
              std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&__p, v205);
            }

            else
            {
              geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(v181, v203);
              geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(v181, v205);
            }

            v25 = ++v26;
          }

          while (v23 > v26);
        }

        if (v23 >= 9)
        {
          _ZF = v181[0] == 3.4028e38 && v181[1] == -3.4028e38;
          v10 = a1;
          if (!_ZF)
          {
            goto LABEL_32;
          }

          v32 = 0;
          v33 = &v182;
          do
          {
            if (v32 == 4)
            {
              goto LABEL_31;
            }

            v34 = v32;
            if (*(v33 - 1) != 3.4028e38)
            {
              break;
            }

            v35 = *v33;
            v33 += 2;
            ++v32;
          }

          while (v35 == -3.4028e38);
          if (v34 <= 3)
          {
LABEL_32:
            memset(v174, 0, sizeof(v174));
            v175 = v159;
            geo::Transform<float>::toMatrix(v205, v174);
            v37 = 0;
            while (1)
            {
              v38 = 0;
              v207 = xmmword_1B33B0870;
              v208 = xmmword_1B33B0870;
              v209 = xmmword_1B33B0B20;
              v210 = v15;
              v211 = 0;
              v39 = &v207 + 12 * v37;
              v40 = *(v39 + 2);
              v41 = &v203[4 * v37];
              v42 = -v181[2 * v37];
              *v41 = *v39;
              *(v41 + 2) = v40;
              *(v41 + 3) = v42;
              v207 = xmmword_1B33B0870;
              v208 = xmmword_1B33B0870;
              v209 = xmmword_1B33B0B20;
              v210 = v15;
              v211 = 0;
              v43 = *(v39 + 2);
              v201 = *v39;
              v202 = v43;
              do
              {
                *(&v207 + v38) = -*(&v201 + v38);
                v38 += 4;
              }

              while (v38 != 12);
              *&v44 = v207;
              DWORD2(v44) = DWORD2(v207);
              *(&v44 + 3) = v181[2 * v37 + 1];
              *(v203 + ((32 * v37++) | 0x10)) = v44;
              if (v37 == 5)
              {
                operator new();
              }
            }
          }

LABEL_31:
          v36 = v172;
          goto LABEL_193;
        }

        v46 = __p;
        v45 = v193;
        std::vector<gm::Matrix<float,2,1>>::reserve(&v189, 0xAAAAAAAAAAAAAAABLL * ((v193 - __p) >> 2));
        v47 = v190;
        if (v46 == v45)
        {
          v49 = -3.4028e38;
          v48 = 3.4028e38;
        }

        else
        {
          v48 = 3.4028e38;
          v49 = -3.4028e38;
          v50 = v190;
          do
          {
            v51 = v46[2];
            if (v50 >= v191)
            {
              v52 = v189;
              v53 = (v50 - v189) >> 3;
              v54 = v53 + 1;
              if ((v53 + 1) >> 61)
              {
                goto LABEL_236;
              }

              v55 = v191 - v189;
              if ((v191 - v189) >> 2 > v54)
              {
                v54 = v55 >> 2;
              }

              _CF = v55 >= 0x7FFFFFFFFFFFFFF8;
              v56 = 0x1FFFFFFFFFFFFFFFLL;
              if (!_CF)
              {
                v56 = v54;
              }

              if (v56)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v56);
              }

              v57 = (8 * v53);
              v58 = &v57[-((v50 - v189) >> 3)];
              *v57 = *v46;
              v47 = (v57 + 1);
              if (v52 != v50)
              {
                v59 = v58;
                do
                {
                  v60 = *v52;
                  v52 += 8;
                  *v59++ = v60;
                }

                while (v52 != v50);
                v52 = v189;
              }

              v189 = v58;
              v190 = v47;
              v191 = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }

            else
            {
              *v50 = *v46;
              v47 = (v50 + 8);
            }

            v49 = fmaxf(v51, v49);
            v48 = fminf(v48, v51);
            v190 = v47;
            v46 += 3;
            v50 = v47;
          }

          while (v46 != v45);
        }

        v205[1] = 0;
        v205[0] = 0;
        *&v206 = 0;
        v61 = v189;
        if (v47 == v189)
        {
          std::vector<gm::Matrix<float,2,1>>::resize(v205, 0);
        }

        else
        {
          v62 = v189;
          do
          {
            if (*v62 < *v61 || *v62 == *v61 && v62[1] < v61[1])
            {
              v61 = v62;
            }

            v62 += 2;
          }

          while (v62 != v47);
          v203[1] = 0;
          v203[0] = 0;
          *&v204 = 0;
          std::vector<gm::Matrix<float,2,1>>::reserve(v203, ((v47 - v189) >> 3) - 1);
          v63 = v189;
          v64 = v190;
          while (v63 != v64)
          {
            if (*v63 != *v61)
            {
              v65 = v203[1];
              if (v203[1] >= v204)
              {
                v67 = (v203[1] - v203[0]) >> 3;
                if ((v67 + 1) >> 61)
                {
                  goto LABEL_236;
                }

                v68 = (v204 - v203[0]) >> 2;
                if (v68 <= v67 + 1)
                {
                  v68 = v67 + 1;
                }

                if (v204 - v203[0] >= 0x7FFFFFFFFFFFFFF8)
                {
                  v69 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v69 = v68;
                }

                if (v69)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v69);
                }

                v70 = (8 * v67);
                *v70 = *v63;
                v66 = (8 * v67 + 8);
                v71 = v203[1];
                v72 = v203[0];
                v73 = (v70 + v203[0] - v203[1]);
                if (v203[1] != v203[0])
                {
                  v74 = v73;
                  do
                  {
                    v75 = *v72++;
                    *v74++ = v75;
                  }

                  while (v72 != v71);
                  v72 = v203[0];
                }

                v203[0] = v73;
                v203[1] = v66;
                *&v204 = 0;
                if (v72)
                {
                  operator delete(v72);
                }
              }

              else
              {
                *v203[1] = *v63;
                v66 = v65 + 8;
              }

              v203[1] = v66;
            }

            v63 += 2;
          }

          if (v203[1] == v203[0])
          {
            std::vector<gm::Matrix<float,2,1>>::resize(v205, 1uLL);
            v78 = v205[0];
            *v205[0] = *v61;
            v78[1] = v61[1];
          }

          else
          {
            *&v207 = *v61;
            std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(v203[0], v203[1], &v207, 126 - 2 * __clz((v203[1] - v203[0]) >> 3), 1);
            std::vector<gm::Matrix<float,2,1>>::reserve(v205, (v190 - v189) >> 3);
            v76 = v205[1];
            if (v205[1] >= v206)
            {
              v79 = (v205[1] - v205[0]) >> 3;
              if ((v79 + 1) >> 61)
              {
                goto LABEL_236;
              }

              v80 = (v206 - v205[0]) >> 2;
              if (v80 <= v79 + 1)
              {
                v80 = v79 + 1;
              }

              if (v206 - v205[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v81 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              if (v81)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v81);
              }

              *(8 * v79) = *v61;
              v77 = (8 * v79 + 8);
              v82 = v205[1];
              v83 = v205[0];
              v84 = (8 * v79 + v205[0] - v205[1]);
              if (v205[1] != v205[0])
              {
                v85 = (8 * v79 + v205[0] - v205[1]);
                do
                {
                  v86 = *v83++;
                  *v85++ = v86;
                }

                while (v83 != v82);
                v83 = v205[0];
              }

              v205[0] = v84;
              v205[1] = (8 * v79 + 8);
              *&v206 = 0;
              if (v83)
              {
                operator delete(v83);
              }
            }

            else
            {
              *v205[1] = *v61;
              v77 = v76 + 1;
            }

            v205[1] = v77;
            if (v77 >= v206)
            {
              v88 = (v77 - v205[0]) >> 3;
              if ((v88 + 1) >> 61)
              {
LABEL_236:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v89 = (v206 - v205[0]) >> 2;
              if (v89 <= v88 + 1)
              {
                v89 = v88 + 1;
              }

              if (v206 - v205[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v90 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v90 = v89;
              }

              if (v90)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v90);
              }

              v91 = (8 * v88);
              *v91 = *v203[0];
              v87 = (8 * v88 + 8);
              v92 = v205[1];
              v93 = v205[0];
              v94 = (v91 + v205[0] - v205[1]);
              if (v205[1] != v205[0])
              {
                v95 = v94;
                do
                {
                  v96 = *v93++;
                  *v95++ = v96;
                }

                while (v93 != v92);
                v93 = v205[0];
              }

              v205[0] = v94;
              v205[1] = v87;
              *&v206 = 0;
              if (v93)
              {
                operator delete(v93);
              }
            }

            else
            {
              *v77 = *v203[0];
              v87 = v77 + 1;
            }

            v205[1] = v87;
            v97 = v203[1];
            v98 = (v203[0] + 8);
            v99 = 1;
            if (v203[1] != v203[0] + 8)
            {
              do
              {
                if (*v98 != *&v87[-1])
                {
                  v100 = *v98;
                  v101 = v87 - 1;
                  do
                  {
                    v102 = vmul_f32(vrev64_s32(vsub_f32(v100, *v101)), vsub_f32(*v101, *(v205[0] + 8 * v99 - 8)));
                    if (vcgt_f32(v102, vdup_lane_s32(v102, 1)).u8[0])
                    {
                      break;
                    }

                    v205[1] = v101--;
                    --v99;
                  }

                  while (v99);
                  v103 = v101 + 1;
                  if (&v101[1] >= v206)
                  {
                    v104 = (v103 - v205[0]) >> 3;
                    if ((v104 + 1) >> 61)
                    {
                      goto LABEL_236;
                    }

                    v105 = (v206 - v205[0]) >> 2;
                    if (v105 <= v104 + 1)
                    {
                      v105 = v104 + 1;
                    }

                    if (v206 - v205[0] >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v106 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v106 = v105;
                    }

                    if (v106)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v106);
                    }

                    *(8 * v104) = *v98;
                    v87 = (8 * v104 + 8);
                    v107 = v205[1];
                    v108 = v205[0];
                    v109 = (8 * v104 + v205[0] - v205[1]);
                    if (v205[1] != v205[0])
                    {
                      v110 = (8 * v104 + v205[0] - v205[1]);
                      do
                      {
                        v111 = *v108++;
                        *v110++ = v111;
                      }

                      while (v108 != v107);
                      v108 = v205[0];
                    }

                    v205[0] = v109;
                    v205[1] = (8 * v104 + 8);
                    *&v206 = 0;
                    if (v108)
                    {
                      operator delete(v108);
                    }
                  }

                  else
                  {
                    *v103 = *v98;
                    v87 = v101 + 2;
                  }

                  v205[1] = v87;
                  ++v99;
                  v97 = v203[1];
                }

                ++v98;
              }

              while (v98 != v97);
            }

            v112 = v205[0];
            v113 = *v61;
            v114 = v87 - 1;
            do
            {
              v115 = vmul_f32(vrev64_s32(vsub_f32(v113, *v114)), vsub_f32(*v114, *(v205[0] + 8 * v99 - 8)));
              if ((vcgt_f32(vdup_lane_s32(v115, 1), v115).u8[0] & 1) == 0)
              {
                break;
              }

              v205[1] = v114--;
              --v99;
            }

            while (v99);
            v116 = v114 + 1;
            if (v206 - v205[0] > &v114[1] - v205[0])
            {
              v117 = (v116 - v205[0]) >> 3;
              if (v116 != v205[0])
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v116 - v205[0]) >> 3);
              }

              v118 = 0;
              if ((v206 - v205[0]) >> 3)
              {
                v119 = v205[1];
                v120 = (8 * v117 + v205[0] - v205[1]);
                if (v205[1] != v205[0])
                {
                  v121 = (8 * v117 + v205[0] - v205[1]);
                  do
                  {
                    v122 = *v112++;
                    *v121++ = v122;
                  }

                  while (v112 != v119);
                  v112 = v205[0];
                }

                v205[0] = v120;
                v205[1] = (8 * v117);
                *&v206 = 0;
                v118 = v112;
              }

              if (v118)
              {
                operator delete(v118);
              }
            }
          }

          if (v203[0])
          {
            v203[1] = v203[0];
            operator delete(v203[0]);
          }
        }

        std::vector<gm::Matrix<float,3,1>>::reserve(v183, (v205[1] - v205[0]) >> 3);
        std::vector<md::NeighborEdgeTypes>::reserve(&v184[1], (v205[1] - v205[0]) >> 3);
        v123 = v205[0];
        if (v205[1] != v205[0])
        {
          v124 = 0;
          v125 = v183[1];
          do
          {
            if (v125 >= v184[0])
            {
              v126 = v183[0];
              v127 = v125 - v183[0];
              v128 = 0xAAAAAAAAAAAAAAABLL * ((v125 - v183[0]) >> 2) + 1;
              if (v128 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              if (0x5555555555555556 * ((v184[0] - v183[0]) >> 2) > v128)
              {
                v128 = 0x5555555555555556 * ((v184[0] - v183[0]) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v184[0] - v183[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v129 = 0x1555555555555555;
              }

              else
              {
                v129 = v128;
              }

              if (v129)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v129);
              }

              v130 = 4 * ((v125 - v183[0]) >> 2);
              *v130 = v123[v124];
              *(v130 + 8) = v48;
              if (v126 != v125)
              {
                v131 = v130 - v127;
                do
                {
                  v132 = *v126;
                  *(v131 + 8) = v126[2];
                  *v131 = v132;
                  v131 += 12;
                  v126 += 3;
                }

                while (v126 != v125);
                v126 = v183[0];
              }

              v125 = (v130 + 12);
              v183[0] = (v130 - v127);
              v183[1] = (v130 + 12);
              v184[0] = 0;
              if (v126)
              {
                operator delete(v126);
              }
            }

            else
            {
              *v125 = v123[v124];
              v125[2] = v48;
              v125 += 3;
            }

            v183[1] = v125;
            v133 = v185;
            if (v185 >= *(&v185 + 1))
            {
              v135 = v184[1];
              v136 = (v185 - v184[1]);
              v137 = v185 - v184[1] + 1;
              if (v137 < 0)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v138 = *(&v185 + 1) - v184[1];
              if (2 * (*(&v185 + 1) - v184[1]) > v137)
              {
                v137 = 2 * v138;
              }

              if (v138 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v139 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v139 = v137;
              }

              if (v139)
              {
                operator new();
              }

              *v136 &= 0xFCu;
              v134 = v136 + 1;
              memcpy(0, v135, v136);
              v184[1] = 0;
              *(&v185 + 1) = 0;
              if (v135)
              {
                operator delete(v135);
              }
            }

            else
            {
              *v185 &= 0xFCu;
              v134 = (v133 + 1);
            }

            *&v185 = v134;
            ++v124;
            v123 = v205[0];
          }

          while (v124 < (v205[1] - v205[0]) >> 3);
        }

        if (v48 == v49)
        {
          v36 = v172;
          v10 = a1;
          if (!v123)
          {
LABEL_193:
            if (v179)
            {
              operator delete(v179);
            }

            if (v177)
            {
              operator delete(v177);
            }

            if (v184[1])
            {
              operator delete(v184[1]);
            }

            v172 = v36;
            goto LABEL_200;
          }
        }

        else
        {
          v203[1] = 0;
          v203[0] = 0;
          *&v204 = 0;
          v207 = 0uLL;
          *&v208 = 0;
          v10 = a1;
          if (md::DaVinciGroundTileData::_triangulateBuildingLoop(&v186, v203, &v207, v183, md::DaVinciGroundTileData::_constructBuildingBVH(GeoCodecsDaVinciBuilding const*,unsigned long,GeoCodecsDaVinciBuildingSection const*,GeoCodecsVectorTilePoint3D const*,GeoCodecsDaVinciLineLoop const*,BOOL,std::optional<md::ScaleAndOffset> const&,gdc::Entity *)::innerLoops, 0))
          {
            v141 = v183[0];
            v140 = v183[1];
            v142 = v183[1] - v183[0];
            v168 = 0xAAAAAAAAAAAAAAABLL * ((v183[1] - v183[0]) >> 2);
            std::vector<gm::Matrix<float,3,1>>::reserve(&v198, 0xAAAAAAAAAAAAAAABLL * ((v199 - v198) >> 2) + 0x5555555555555556 * ((v183[1] - v183[0]) >> 2));
            v144 = v186;
            v143 = v187;
            std::vector<unsigned short>::reserve(&v196, ((v187 - v186) >> 1) + ((*(&v196 + 1) - v196) >> 1) + (v142 >> 1));
            while (v144 != v143)
            {
              LOWORD(v201) = v172 + 2 * *v144;
              std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
              ++v144;
            }

            if (v140 == v141)
            {
              v36 = v172;
            }

            else
            {
              v145 = 0;
              v146 = 0;
              v147 = v195;
              v36 = v172;
              do
              {
                v170 = v147;
                v148 = &v141[12 * v145];
                v173 = *v148;
                if (v168 - 1 == v145)
                {
                  v149 = v172;
                }

                else
                {
                  v149 = v36 + 2;
                }

                LOWORD(v201) = v36;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                LOWORD(v201) = v36 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                LOWORD(v201) = v149;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                LOWORD(v201) = v149;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                LOWORD(v201) = v36 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                LOWORD(v201) = v149 + 1;
                std::vector<unsigned short>::push_back[abi:nn200100](&v196, &v201);
                v201 = v173;
                v202 = v49;
                std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&v198, &v201);
                v150 = *(v148 + 2);
                v201 = *v148;
                v169 = v201;
                v202 = v150;
                std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](&v198, &v201);
                v151.i64[0] = v173;
                v152.i64[0] = v173;
                v152.i64[1] = v173;
                v153.i64[0] = v170.i64[0];
                v153.i64[1] = v173;
                v151.i64[1] = vextq_s8(v170, v170, 8uLL).u64[0];
                v154 = vbslq_s8(vcgtq_f32(v153, v151), v152, v170);
                v151.i64[0] = v169;
                v155.i64[0] = v169;
                v155.i64[1] = v169;
                v156.i64[0] = v154.i64[0];
                v156.i64[1] = v169;
                v151.i64[1] = vextq_s8(v154, v154, 8uLL).u64[0];
                v147 = vbslq_s8(vcgtq_f32(v156, v151), v155, v154);
                v36 += 2;
                v145 = ++v146;
              }

              while (v168 > v146);
              v195 = v147;
            }

            v10 = a1;
          }

          else
          {
            v36 = v172;
          }

          v201 = &v207;
          std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v201);
          if (v203[0])
          {
            v203[1] = v203[0];
            operator delete(v203[0]);
          }

          v123 = v205[0];
          if (!v205[0])
          {
            goto LABEL_193;
          }
        }

        v205[1] = v123;
        operator delete(v123);
        goto LABEL_193;
      }

      v158 = 0;
      v157 = 0uLL;
LABEL_223:
      if (v157 != *(&v157 + 1))
      {
        *&v207 = v157;
        *(&v207 + 1) = (*(&v157 + 1) - v157) >> 1;
        md::constructBoundingVolume(v203);
      }

      if (v186)
      {
        operator delete(v186);
      }

      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (v158)
      {
        operator delete(v158);
      }

      if (v198)
      {
        operator delete(v198);
      }
    }
  }
}

BOOL md::DaVinciGroundTileData::_getBuildingHeightAndExtrusionType(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v8 = +[VKDebugSettings sharedSettings];
  v9 = [v8 daVinciBuildingHeights];

  *a2 = *(a1 + 1184) * 5.0;
  if (!v9)
  {
    return 1;
  }

  v10 = *(a3 + 4);
  if (*(a4 + 24))
  {
    v10 = *(a4 + 20) + (*(a4 + 8) * v10);
  }

  *a2 = v10;
  if (*(a3 + 4) <= *(a3 + 8))
  {
    *a2 = v10 + (*(a1 + 1184) * 0.1);
  }

  return *(a3 + 1) != 0;
}

void md::DaVinciGroundTileData::_roundLoopCorners(uint64_t a1, float *a2, uint64_t a3, unsigned int a4, unsigned __int16 a5)
{
  v94 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v6 = (a3 + 12 * a4);
  v7 = a5;
  v8 = &v6[3 * a5 - 3];
  v81 = v6;
  if (*v8 == *v6 && v8[1] == v6[1])
  {
    v7 = a5 - 1;
  }

  v9 = v7;
  if (v7 >= 3 && *a2 != 0.0)
  {
    v10 = vcvtas_u32_f32(1.5708 / a2[1]);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = v9 * (v10 + 1);
    std::vector<gm::Matrix<float,3,1>>::reserve(a1, v11);
    std::vector<md::NeighborEdgeTypes>::reserve((a1 + 24), v11);
    v12 = 0;
    while (1)
    {
      v13 = v12 + 1;
      if (v12 + 1 == v9)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12 + 1;
      }

      v15 = &v81[3 * ((v9 - 1 + v12) % v9)];
      v91 = *v15;
      v92 = *(v15 + 1);
      v16 = &v81[3 * v12];
      v89 = *v16;
      v90 = *(v16 + 1);
      v17 = &v81[3 * v14];
      v87 = *v17;
      v88 = *(v17 + 1);
      v93[0] = v91;
      LODWORD(v93[1]) = v92;
      v93[2] = v89;
      LODWORD(v93[3]) = v90;
      v93[4] = v87;
      LODWORD(v93[5]) = v88;
      md::PolygonRound::smoothTwoSegments(&__p, a2, v93);
      v19 = __p;
      v18 = v86;
      if ((v86 - __p) < 9 || (gm::Plane3<float>::Plane3(v82, &v91, &v89, &v87), v83 == 0.0))
      {
        std::vector<gm::Matrix<float,3,1>>::push_back[abi:nn200100](a1, &v89);
        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        if (v21 >= v20)
        {
          v24 = *(a1 + 24);
          v25 = (v21 - v24);
          v26 = v21 - v24 + 1;
          if (v26 < 0)
          {
            goto LABEL_122;
          }

          v27 = v20 - v24;
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v28 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            operator new();
          }

          v43 = (v21 - v24);
          v44 = *v25 & 0xFC;
LABEL_47:
          *v43 = v44;
          v23 = v43 + 1;
          memcpy(0, v24, v25);
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          if (v24)
          {
            operator delete(v24);
          }

          goto LABEL_49;
        }

        v22 = *v21 & 0xFC;
      }

      else
      {
        if (v19 != v18)
        {
          v29 = *(a1 + 8);
          do
          {
            v30 = *v19;
            v31 = -((v84 + (v82[0] * COERCE_FLOAT(*v19))) + (v82[1] * COERCE_FLOAT(HIDWORD(*v19)))) / v83;
            v32 = *(a1 + 16);
            if (v29 >= v32)
            {
              v33 = *a1;
              v34 = v29 - *a1;
              v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 2) + 1;
              if (v35 > 0x1555555555555555)
              {
                goto LABEL_123;
              }

              v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 2);
              if (2 * v36 > v35)
              {
                v35 = 2 * v36;
              }

              if (v36 >= 0xAAAAAAAAAAAAAAALL)
              {
                v37 = 0x1555555555555555;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v37);
              }

              v38 = 4 * (v34 >> 2);
              *v38 = v30;
              *(v38 + 8) = v31;
              if (v33 != v29)
              {
                v39 = v38 - v34;
                do
                {
                  v40 = *v33;
                  *(v39 + 8) = v33[2];
                  *v39 = v40;
                  v39 += 12;
                  v33 += 3;
                }

                while (v33 != v29);
                v33 = *a1;
              }

              v29 = (v38 + 12);
              *a1 = v38 - v34;
              *(a1 + 8) = v38 + 12;
              *(a1 + 16) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v29 = v30;
              v29[2] = v31;
              v29 += 3;
            }

            *(a1 + 8) = v29;
            ++v19;
          }

          while (v19 != v18);
        }

        v41 = *(a1 + 32);
        v42 = *(a1 + 40);
        if (v41 >= v42)
        {
          v45 = *(a1 + 24);
          v46 = (v41 - v45);
          v47 = v41 - v45 + 1;
          if (v47 < 0)
          {
            goto LABEL_122;
          }

          if (2 * (v42 - v45) > v47)
          {
            v47 = 2 * (v42 - v45);
          }

          if (v42 - v45 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v47;
          }

          if (v42)
          {
            operator new();
          }

          *v46 = *v46 & 0xFC | 2;
          v21 = v46 + 1;
          memcpy(0, v45, v46);
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v41 = *v41 & 0xFC | 2;
          v21 = v41 + 1;
        }

        *(a1 + 32) = v21;
        if ((((v86 - __p) >> 3) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v48 = 2;
          do
          {
            v49 = *(a1 + 40);
            if (v21 >= v49)
            {
              v50 = *(a1 + 24);
              v51 = (v21 - v50);
              v52 = v21 - v50 + 1;
              if (v52 < 0)
              {
                goto LABEL_122;
              }

              v53 = v49 - v50;
              if (2 * v53 > v52)
              {
                v52 = 2 * v53;
              }

              if (v53 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v54 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v54 = v52;
              }

              if (v54)
              {
                operator new();
              }

              *v51 |= 3u;
              v21 = v51 + 1;
              memcpy(0, v50, v51);
              *(a1 + 24) = 0;
              *(a1 + 40) = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            else
            {
              *v21++ |= 3u;
            }

            *(a1 + 32) = v21;
          }

          while (((v86 - __p) >> 3) - 1 > v48++);
          v42 = *(a1 + 40);
        }

        if (v21 >= v42)
        {
          v24 = *(a1 + 24);
          v25 = (v21 - v24);
          v56 = v21 - v24 + 1;
          if (v56 < 0)
          {
            goto LABEL_122;
          }

          if (2 * (v42 - v24) > v56)
          {
            v56 = 2 * (v42 - v24);
          }

          if (v42 - v24 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v57 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            operator new();
          }

          v43 = (v21 - v24);
          v44 = *v25 & 0xFC | 1;
          goto LABEL_47;
        }

        v22 = *v21 & 0xFC | 1;
      }

      *v21 = v22;
      v23 = v21 + 1;
LABEL_49:
      *(a1 + 32) = v23;
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }

      v12 = v13;
      if (v13 == v9)
      {
        return;
      }
    }
  }

  std::vector<gm::Matrix<float,3,1>>::reserve(a1, v7);
  std::vector<md::NeighborEdgeTypes>::reserve((a1 + 24), v9);
  if (v9)
  {
    v58 = 0;
    v59 = *(a1 + 8);
    do
    {
      v60 = &v81[3 * v58];
      v61 = *(a1 + 16);
      if (v59 >= v61)
      {
        v63 = *a1;
        v64 = v59 - *a1;
        v65 = 0xAAAAAAAAAAAAAAABLL * (v64 >> 2) + 1;
        if (v65 > 0x1555555555555555)
        {
LABEL_123:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v66 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v63) >> 2);
        if (2 * v66 > v65)
        {
          v65 = 2 * v66;
        }

        if (v66 >= 0xAAAAAAAAAAAAAAALL)
        {
          v67 = 0x1555555555555555;
        }

        else
        {
          v67 = v65;
        }

        if (v67)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v67);
        }

        v68 = *(v60 + 2);
        v69 = 4 * (v64 >> 2);
        *v69 = *v60;
        *(v69 + 8) = v68;
        if (v63 != v59)
        {
          v70 = v69 - v64;
          do
          {
            v71 = *v63;
            *(v70 + 8) = v63[2];
            *v70 = v71;
            v70 += 12;
            v63 += 3;
          }

          while (v63 != v59);
          v63 = *a1;
        }

        v59 = (v69 + 12);
        *a1 = v69 - v64;
        *(a1 + 8) = v69 + 12;
        *(a1 + 16) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        v62 = *(v60 + 2);
        *v59 = *v60;
        v59[2] = v62;
        v59 += 3;
      }

      *(a1 + 8) = v59;
      v73 = *(a1 + 32);
      v72 = *(a1 + 40);
      if (v73 >= v72)
      {
        v75 = *(a1 + 24);
        v76 = (v73 - v75);
        v77 = v73 - v75 + 1;
        if (v77 < 0)
        {
LABEL_122:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v78 = v72 - v75;
        if (2 * v78 > v77)
        {
          v77 = 2 * v78;
        }

        if (v78 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v79 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v79 = v77;
        }

        if (v79)
        {
          operator new();
        }

        *v76 &= 0xFCu;
        v74 = v76 + 1;
        memcpy(0, v75, v76);
        *(a1 + 24) = 0;
        *(a1 + 40) = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *v73 &= 0xFCu;
        v74 = v73 + 1;
      }

      *(a1 + 32) = v74;
      ++v58;
    }

    while (v58 != v9);
  }
}

void sub_1B3185A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 24);
  if (v17)
  {
    *(v15 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::DaVinciGroundTileData::_transformBuildingLoop(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    for (; result != a2; result += 12)
    {
      for (i = 0; i != 12; i += 4)
      {
        *(&v15 + i) = *(a5 + i) * *(result + i);
      }

      v6 = 0;
      v13 = v15;
      v14 = v16;
      do
      {
        *(&v15 + v6) = *(a5 + 12 + v6) + *(&v13 + v6);
        v6 += 4;
      }

      while (v6 != 12);
      v7 = v16;
      *result = v15;
      *(result + 8) = v7;
    }

    for (; a3 != a4; a3 += 6)
    {
      v8 = *a3;
      v9 = a3[1];
      while (v8 != v9)
      {
        for (j = 0; j != 12; j += 4)
        {
          *(&v15 + j) = *(a5 + j) * *(v8 + j);
        }

        v11 = 0;
        v13 = v15;
        v14 = v16;
        do
        {
          *(&v15 + v11) = *(a5 + 12 + v11) + *(&v13 + v11);
          v11 += 4;
        }

        while (v11 != 12);
        v12 = v16;
        *v8 = v15;
        *(v8 + 8) = v12;
        v8 += 12;
      }
    }
  }

  return result;
}

uint64_t md::DaVinciGroundTileData::_getBuildingTerrainElevation(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8, float a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = -3.4028e38;
  while (a3 != a4)
  {
    v14 = fmaxf(*(a3 + 8), v14);
    a3 += 12;
  }

  *a2 = v14;
  if ((a5 & 1) == 0)
  {
    return 1;
  }

  *a2 = a9;
  v15 = v14 > (a9 + 0.0001);
  if ((v14 + 0.0001) < a9)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v16 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 172);
      *v20 = *(a1 + 168);
      v22 = *(a1 + 184);
      v23 = *(a1 + 192);
      md::debugString<geo::QuadTile>(__p, v20);
      v17 = v25 >= 0 ? __p : __p[0];
      v18 = *a2;
      *buf = 134219010;
      v27 = a7;
      v28 = 1024;
      v29 = a8;
      v30 = 2080;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2048;
      v35 = v14;
      _os_log_impl(&dword_1B2754000, v16, OS_LOG_TYPE_DEBUG, "For Building %zu/section %d key %s, terrainElevation (%f) should be lower than section maxz (%f)", buf, 0x30u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a6 + 24) == 1)
  {
    *a2 = *(a6 + 20) + (*(a6 + 8) * *a2);
  }

  return v15;
}

uint64_t geo::DiscreteOrientedPolytope<geo::TenDOPTraits<float>>::enclose(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 4);
  __asm { FMOV            V2.2S, #-1.0 }

  v9 = -_D2;
  do
  {
    v13[0] = xmmword_1B33B0870;
    v13[1] = xmmword_1B33B0870;
    v13[2] = xmmword_1B33B0B20;
    v14 = v9;
    v15 = 0;
    v10 = vmul_f32(*(a2 + 4), *(v13 + v2 + 4));
    v11 = (v10.f32[0] + (*(v13 + v2) * *a2)) + v10.f32[1];
    v10.f32[0] = fminf(v11, *(v3 - 1));
    v12 = fmaxf(*v3, v11);
    *(v3 - 1) = v10.f32[0];
    *v3 = v12;
    v2 += 12;
    v3 += 2;
  }

  while (v2 != 60);
  return result;
}

void *std::vector<md::NeighborEdgeTypes>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t md::DaVinciGroundTileData::_triangulateBuildingLoop(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  v69.i64[1] = 0;
  v70 = 0;
  v71 = xmmword_1B33B1630;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v75 = 0.0;
  v77 = 4;
  v9 = *a4;
  v10 = *(a4 + 8);
  v12 = v10 - *a4;
  v11 = v10 == *a4;
  v69.i64[0] = &v69.i64[1];
  if (!v11)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v12 >> 2)) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(0xAAAAAAAAAAAAAAABLL * (v12 >> 2));
    }

    goto LABEL_52;
  }

  v14 = v10 - v9;
  if (v14)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
    v16 = 1;
    v17 = 0;
    do
    {
      v18 = *v9;
      v9 = (v9 + 12);
      *v17++ = v18;
      v19 = v15 > v16++;
    }

    while (v19);
  }

  v20 = a2;
  v21 = *a2;
  if (*a2)
  {
    a2[1] = v21;
    operator delete(v21);
    v20 = a2;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v22 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 4);
  v23 = *a3;
  v24 = *(a3 + 8);
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a3) >> 3);
  v26 = v22 - v25;
  v66 = a1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v30 = &v23[(a5[1] - *a5) >> 4];
      if (v24 != v30)
      {
        v31 = *(a3 + 8);
        do
        {
          v33 = *(v31 - 3);
          v31 -= 3;
          v32 = v33;
          if (v33)
          {
            *(v24 - 2) = v32;
            operator delete(v32);
          }

          v24 = v31;
        }

        while (v31 != v30);
      }

      *(a3 + 8) = v30;
    }

    if (a6)
    {
LABEL_28:
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *a5 + 48 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);
        if (v38 != *v36)
        {
          break;
        }

        v40 = 0uLL;
        v41 = v38 - v37;
        if (v41)
        {
          v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 2);
          v43 = 0;
          v44 = 1;
          do
          {
            v45 = *v37;
            v37 = (v37 + 12);
            *v43++ = v45;
            v19 = v42 > v44++;
          }

          while (v19);
        }

        v46 = *a3 + 24 * v34;
        v47 = *v46;
        if (*v46)
        {
          *(v46 + 8) = v47;
          operator delete(v47);
          v40 = 0uLL;
          *v46 = 0;
          *(v46 + 8) = 0;
          *(v46 + 16) = 0;
        }

        *v46 = v40;
        *(v46 + 16) = 0;
        v34 = ++v35;
        if (v35 >= a6)
        {
          goto LABEL_38;
        }
      }

      v39 = v38 - *v36;
      if (!((0xAAAAAAAAAAAAAAABLL * (v39 >> 2)) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(0xAAAAAAAAAAAAAAABLL * (v39 >> 2));
      }

LABEL_52:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  else
  {
    v27 = *(a3 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v24) >> 3) < v26)
    {
      if (v22 <= 0xAAAAAAAAAAAAAAALL)
      {
        *&v82 = a3;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v23) >> 3);
        if (2 * v28 > v22)
        {
          v22 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v22;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<gm::LineSegment<float,3>>>>(v29);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(v24, 24 * ((24 * v26 - 24) / 0x18) + 24);
    *(a3 + 8) = &v24[3 * ((24 * v26 - 24) / 0x18) + 3];
    if (a6)
    {
      goto LABEL_28;
    }
  }

LABEL_38:
  v76 = 0;
  v66[1] = *v66;
  v48 = *a2;
  v49 = (a2[1] - *a2) >> 3;
  if (v49 < 3)
  {
    goto LABEL_50;
  }

  v77 |= 4u;
  geo::Triangulator<float,unsigned short>::initializeHasherFromVertices(&v69, v48, v49);
  LinkedList = geo::Triangulator<float,unsigned short>::createLinkedList(&v69, *a2, (a2[1] - *a2) >> 3, 0, 1);
  if (!LinkedList)
  {
    goto LABEL_50;
  }

  v51 = *(LinkedList + 24);
  geo::Triangulator<float,unsigned short>::linkListInHashSpace(v51, v75);
  __p = 0;
  v79 = 0;
  v80 = 0;
  v52 = *(a3 + 8);
  if (v52 != *a3)
  {
    v53 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *a3) >> 3);
    if (!(v53 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v53);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(0, 0, 0, 1);
  if (__p)
  {
    operator delete(__p);
  }

  if (v51)
  {
    geo::Triangulator<float,unsigned short>::linkListInHashSpace(v51, v75);
    v60 = geo::Triangulator<float,unsigned short>::earclipPolygon(&v69, v51, v66, v54, v55, v56, v57, v58, v59);
    v62 = *v66;
    v61 = v66[1];
    v63 = geo::triangulatedIndexCount<float>(a2, a3);
    if (v63 > (v61 - v62) >> 1)
    {
      v64 = v63 - ((v61 - v62) >> 1);
      do
      {
        LOWORD(v81) = 0;
        std::vector<unsigned short>::push_back[abi:nn200100](v66, &v81);
        --v64;
      }

      while (v64);
    }
  }

  else
  {
LABEL_50:
    v60 = 0;
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&v69);
  return v60;
}

void sub_1B3186F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  if (v38)
  {
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  geo::Pool<geo::Triangulator<float,unsigned short>::Node>::~Pool(&a27);
  _Unwind_Resume(a1);
}

uint64_t geo::triangulatedIndexCount<float>(uint64_t *a1, uint64_t **a2)
{
  v3 = geo::effectiveVertexCount<float>(a1);
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*v5 != v5[1])
      {
        v3 += geo::effectiveVertexCount<float>(v5);
        ++v6;
        v4 = a2[1];
      }

      v5 += 3;
    }

    while (v5 != v4);
    v7 = 2 * v6;
  }

  return 3 * (v3 + v7) - 6;
}

float *std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 2);
        v84 = v8[2];
        if (v84 < v83)
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v8[2] = v83;
          *(a2 - 2) = v84;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v90 = v8[6];
      v91 = v8[2];
      v92 = v8[10];
      if (v91 >= v90)
      {
        if (v90 < v92)
        {
          v140 = *(v8 + 2);
          v141 = *(v8 + 4);
          *(v8 + 2) = v141;
          *(v8 + 4) = v140;
          v8[6] = v92;
          v8[10] = v90;
          if (v91 < v92)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 2) = v142;
            v8[2] = v92;
            v8[6] = v91;
          }
        }
      }

      else
      {
        v93 = *v8;
        if (v90 < v92)
        {
          *v8 = *(v8 + 4);
          *(v8 + 4) = v93;
          v8[2] = v92;
          goto LABEL_185;
        }

        *v8 = *(v8 + 2);
        *(v8 + 2) = v93;
        v8[2] = v90;
        v8[6] = v91;
        if (v91 < v92)
        {
          *(v8 + 2) = *(v8 + 4);
          *(v8 + 4) = v93;
          v8[6] = v92;
LABEL_185:
          v8[10] = v91;
        }
      }

      v150 = *(a2 - 2);
      v151 = v8[10];
      if (v151 < v150)
      {
        v152 = *(v8 + 4);
        *(v8 + 4) = *(a2 - 2);
        *(a2 - 2) = v152;
        v8[10] = v150;
        *(a2 - 2) = v151;
        v153 = v8[10];
        v154 = v8[6];
        if (v154 < v153)
        {
          v155 = *(v8 + 2);
          v156 = *(v8 + 4);
          *(v8 + 2) = v156;
          *(v8 + 4) = v155;
          v8[6] = v153;
          v8[10] = v154;
          v157 = v8[2];
          if (v157 < v153)
          {
            v158 = *v8;
            *v8 = v156;
            *(v8 + 2) = v158;
            v8[2] = v153;
            v8[6] = v157;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(v8, v8 + 4, v8 + 8, v8 + 12, a2 - 4);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 4;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = v98[6];
            v100 = v98[2];
            v98 = v94;
            if (v100 < v99)
            {
              v101 = *v94;
              v102 = v97;
              while (1)
              {
                v103 = v8 + v102;
                *(v103 + 2) = *(v8 + v102);
                *(v103 + 6) = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v102 -= 16;
                if (*(v103 - 2) >= v99)
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v101;
              *(v104 + 8) = v99;
            }

            v94 = v98 + 4;
            v97 += 16;
          }

          while (v98 + 4 != a2);
        }
      }

      else if (!v96)
      {
        v143 = v8 + 2;
        do
        {
          v144 = v7[6];
          v145 = v7[2];
          v7 = v94;
          if (v145 < v144)
          {
            v146 = *v94;
            v147 = v143;
            do
            {
              *(v147 + 1) = *(v147 - 1);
              v147[4] = *v147;
              v148 = *(v147 - 4);
              v147 -= 4;
            }

            while (v148 < v144);
            *(v147 + 1) = v146;
            v147[4] = v144;
          }

          v94 = v7 + 4;
          v143 += 4;
        }

        while (v7 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[4 * v108];
            if (2 * v107 + 2 < v9 && v109[6] < v109[2])
            {
              v109 += 4;
              v108 = 2 * v107 + 2;
            }

            v110 = &v8[4 * v107];
            v111 = v110[2];
            v112 = v109[2];
            if (v111 >= v112)
            {
              v113 = *v110;
              do
              {
                v114 = v110;
                v110 = v109;
                *v114 = *v109;
                v114[2] = v112;
                if (v105 < v108)
                {
                  break;
                }

                v115 = 2 * v108;
                v108 = (2 * v108) | 1;
                v109 = &v8[4 * v108];
                v116 = v115 + 2;
                if (v116 < v9 && v109[6] < v109[2])
                {
                  v109 += 4;
                  v108 = v116;
                }

                v112 = v109[2];
              }

              while (v111 >= v112);
              *v110 = v113;
              v110[2] = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = *(v8 + 2);
          v120 = v8;
          do
          {
            v121 = &v120[4 * v117];
            v122 = v121 + 4;
            v123 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v9)
            {
              v117 = v123;
            }

            else
            {
              v124 = v121[6];
              v125 = v121[10];
              v126 = v121 + 8;
              if (v125 >= v124)
              {
                v117 = v123;
              }

              else
              {
                v122 = v126;
              }
            }

            *v120 = *v122;
            v120[2] = v122[2];
            v120 = v122;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v122 == a2 - 4)
          {
            *v122 = v118;
            *(v122 + 2) = v119;
          }

          else
          {
            *v122 = *(a2 - 2);
            v122[2] = *(a2 - 2);
            *(a2 - 2) = v118;
            *(a2 - 2) = v119;
            v127 = (v122 - v8 + 16) >> 4;
            v128 = v127 < 2;
            v129 = v127 - 2;
            if (!v128)
            {
              v130 = v129 >> 1;
              v131 = &v8[4 * (v129 >> 1)];
              v132 = v122[2];
              v133 = v131[2];
              if (v132 < v133)
              {
                v134 = *v122;
                do
                {
                  v135 = v122;
                  v122 = v131;
                  *v135 = *v131;
                  v135[2] = v133;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = &v8[4 * v130];
                  v133 = v131[2];
                }

                while (v132 < v133);
                *v122 = v134;
                v122[2] = v132;
              }
            }
          }

          a2 -= 4;
          v128 = v9-- <= 2;
        }

        while (!v128);
      }

      return result;
    }

    v10 = &v8[4 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = v10[2];
      v13 = v8[2];
      if (v13 >= v12)
      {
        if (v12 < v11)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[2] = v11;
          *(a2 - 2) = v12;
          v19 = v10[2];
          v20 = v8[2];
          if (v20 < v19)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[2] = v19;
            v10[2] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v11)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[2] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[2] = v12;
        v10[2] = v13;
        v26 = *(a2 - 2);
        if (v13 < v26)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[2] = v26;
LABEL_27:
          *(a2 - 2) = v13;
        }
      }

      v27 = v10 - 4;
      v28 = *(v10 - 2);
      v29 = v8[6];
      v30 = *(a2 - 6);
      if (v29 >= v28)
      {
        if (v28 < v30)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 2) = v30;
          *(a2 - 6) = v28;
          v33 = *(v10 - 2);
          v34 = v8[6];
          if (v34 < v33)
          {
            v35 = *(v8 + 2);
            *(v8 + 2) = *v27;
            *v27 = v35;
            v8[6] = v33;
            *(v10 - 2) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v28 < v30)
        {
          *(v8 + 2) = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[6] = v30;
          goto LABEL_39;
        }

        *(v8 + 2) = *v27;
        *v27 = v31;
        v8[6] = v28;
        *(v10 - 2) = v29;
        v37 = *(a2 - 6);
        if (v29 < v37)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 2) = v37;
LABEL_39:
          *(a2 - 6) = v29;
        }
      }

      v38 = v10[6];
      v39 = v8[10];
      v40 = *(a2 - 10);
      if (v39 >= v38)
      {
        if (v38 < v40)
        {
          v42 = *(v10 + 2);
          *(v10 + 2) = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[6] = v40;
          *(a2 - 10) = v38;
          v43 = v10[6];
          v44 = v8[10];
          if (v44 < v43)
          {
            v45 = *(v8 + 4);
            *(v8 + 4) = *(v10 + 2);
            *(v10 + 2) = v45;
            v8[10] = v43;
            v10[6] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v38 < v40)
        {
          *(v8 + 4) = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[10] = v40;
          goto LABEL_48;
        }

        *(v8 + 4) = *(v10 + 2);
        *(v10 + 2) = v41;
        v8[10] = v38;
        v10[6] = v39;
        v46 = *(a2 - 10);
        if (v39 < v46)
        {
          *(v10 + 2) = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[6] = v46;
LABEL_48:
          *(a2 - 10) = v39;
        }
      }

      v47 = v10[2];
      v48 = *(v10 - 2);
      v49 = v47;
      v50 = v10[6];
      if (v48 >= v47)
      {
        v51 = *v10;
        if (v47 < v50)
        {
          v52 = *(v10 + 2);
          *v10 = v52;
          *(v10 + 2) = v51;
          v10[2] = v50;
          v10[6] = v47;
          v49 = v50;
          if (v48 >= v50)
          {
            v51 = v52;
          }

          else
          {
            v51 = *v27;
            *v27 = v52;
            *v10 = v51;
            *(v10 - 2) = v50;
            v10[2] = v48;
            v49 = v48;
          }
        }
      }

      else
      {
        v51 = *v27;
        if (v47 >= v50)
        {
          *v27 = *v10;
          *v10 = v51;
          *(v10 - 2) = v47;
          v10[2] = v48;
          v49 = v48;
          if (v48 < v50)
          {
            v53 = *(v10 + 2);
            *v10 = v53;
            *(v10 + 2) = v51;
            v10[2] = v50;
            v10[6] = v48;
            v49 = v50;
            v51 = v53;
          }
        }

        else
        {
          *v27 = *(v10 + 2);
          *(v10 + 2) = v51;
          *(v10 - 2) = v50;
          v10[6] = v48;
          v51 = *v10;
        }
      }

      v54 = *v8;
      *v8 = v51;
      *v10 = v54;
      v55 = *(v8 + 2);
      v8[2] = v49;
      *(v10 + 2) = v55;
      goto LABEL_59;
    }

    v15 = v8[2];
    v16 = v10[2];
    if (v16 >= v15)
    {
      if (v15 < v11)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[2] = v11;
        *(a2 - 2) = v15;
        v23 = v8[2];
        v24 = v10[2];
        if (v24 < v23)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[2] = v23;
          v8[2] = v24;
        }
      }

      goto LABEL_59;
    }

    v17 = *v10;
    if (v15 < v11)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[2] = v11;
LABEL_36:
      *(a2 - 2) = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[2] = v15;
    v8[2] = v16;
    v36 = *(a2 - 2);
    if (v16 < v36)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[2] = v36;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v56 = *v8;
      v57 = v8[2];
      v58 = v57;
LABEL_62:
      v59 = v8;
      do
      {
        v60 = v59;
        v59 += 4;
      }

      while (v58 < v60[6]);
      v61 = a2;
      if (v60 == v8)
      {
        v64 = a2;
        while (v59 < v64)
        {
          v62 = v64 - 4;
          v65 = *(v64 - 2);
          v64 -= 4;
          if (v58 < v65)
          {
            goto LABEL_72;
          }
        }

        v62 = v64;
      }

      else
      {
        do
        {
          v62 = v61 - 4;
          v63 = *(v61 - 2);
          v61 -= 4;
        }

        while (v58 >= v63);
      }

LABEL_72:
      v8 = v59;
      if (v59 < v62)
      {
        v66 = v62;
        do
        {
          v67 = *v8;
          *v8 = *v66;
          *v66 = v67;
          v68 = *(v8 + 2);
          v8[2] = *(v66 + 8);
          *(v66 + 8) = v68;
          do
          {
            v69 = v8[6];
            v8 += 4;
          }

          while (v58 < v69);
          do
          {
            v70 = *(v66 - 8);
            v66 -= 16;
          }

          while (v58 >= v70);
        }

        while (v8 < v66);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      *(v8 - 2) = v56;
      *(v8 - 2) = v57;
      if (v59 < v62)
      {
        goto LABEL_83;
      }

      v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(v7, v8 - 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 4;
        if (!v71)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v71)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,false>(v7, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v57 = v8[2];
      v58 = v57;
      v56 = *v8;
      if (v57 < *(v8 - 2))
      {
        goto LABEL_62;
      }

      if (*(a2 - 2) >= v57)
      {
        v74 = v8 + 4;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v75 = v74[2];
          v74 += 4;
        }

        while (v75 >= v57);
      }

      else
      {
        v72 = v8;
        do
        {
          v8 = v72 + 4;
          v73 = v72[6];
          v72 += 4;
        }

        while (v73 >= v57);
      }

      v76 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v76 = v77 - 4;
          v78 = *(v77 - 2);
          v77 -= 4;
        }

        while (v78 < v57);
      }

      while (v8 < v76)
      {
        v79 = *v8;
        *v8 = *v76;
        *v76 = v79;
        v80 = *(v8 + 2);
        v8[2] = v76[2];
        *(v76 + 2) = v80;
        do
        {
          v81 = v8[6];
          v8 += 4;
        }

        while (v81 >= v57);
        do
        {
          v82 = *(v76 - 2);
          v76 -= 4;
        }

        while (v82 < v57);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      a4 = 0;
      *(v8 - 2) = v56;
      *(v8 - 2) = v57;
    }
  }

  v86 = v8[6];
  v87 = v8[2];
  v88 = *(a2 - 2);
  if (v87 >= v86)
  {
    if (v86 < v88)
    {
      v136 = *(v8 + 2);
      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v136;
      v8[6] = v88;
      *(a2 - 2) = v86;
      v137 = v8[6];
      v138 = v8[2];
      if (v138 < v137)
      {
        v139 = *v8;
        *v8 = *(v8 + 2);
        *(v8 + 2) = v139;
        v8[2] = v137;
        v8[6] = v138;
      }
    }
  }

  else
  {
    v89 = *v8;
    if (v86 >= v88)
    {
      *v8 = *(v8 + 2);
      *(v8 + 2) = v89;
      v8[2] = v86;
      v8[6] = v87;
      v149 = *(a2 - 2);
      if (v87 >= v149)
      {
        return result;
      }

      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v89;
      v8[6] = v149;
    }

    else
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v89;
      v8[2] = v88;
    }

    *(a2 - 2) = v87;
  }

  return result;
}

float *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[2];
  v6 = result[2];
  v7 = a3[2];
  if (v6 >= v5)
  {
    if (v5 < v7)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[2] = v7;
      a3[2] = v5;
      v10 = a2[2];
      v11 = result[2];
      if (v11 < v10)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[2] = v10;
        a2[2] = v11;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v5 < v7)
    {
      *result = *a3;
      *a3 = v8;
      result[2] = v7;
LABEL_9:
      a3[2] = v6;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    result[2] = v5;
    a2[2] = v6;
    v13 = a3[2];
    if (v6 < v13)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[2] = v13;
      goto LABEL_9;
    }
  }

LABEL_10:
  v14 = a4[2];
  v15 = a3[2];
  if (v15 < v14)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    a3[2] = v14;
    a4[2] = v15;
    v17 = a3[2];
    v18 = a2[2];
    if (v18 < v17)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      a2[2] = v17;
      a3[2] = v18;
      v20 = a2[2];
      v21 = result[2];
      if (v21 < v20)
      {
        v22 = *result;
        *result = *a2;
        *a2 = v22;
        result[2] = v20;
        a2[2] = v21;
      }
    }
  }

  v23 = a5[2];
  v24 = a4[2];
  if (v24 < v23)
  {
    v25 = *a4;
    *a4 = *a5;
    *a5 = v25;
    a4[2] = v23;
    a5[2] = v24;
    v26 = a4[2];
    v27 = a3[2];
    if (v27 < v26)
    {
      v28 = *a3;
      *a3 = *a4;
      *a4 = v28;
      a3[2] = v26;
      a4[2] = v27;
      v29 = a3[2];
      v30 = a2[2];
      if (v30 < v29)
      {
        v31 = *a2;
        *a2 = *a3;
        *a3 = v31;
        a2[2] = v29;
        a3[2] = v30;
        v32 = a2[2];
        v33 = result[2];
        if (v33 < v32)
        {
          v34 = *result;
          *result = *a2;
          *a2 = v34;
          result[2] = v32;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[6];
      v7 = a1[2];
      v8 = *(a2 - 2);
      if (v7 >= v6)
      {
        if (v6 < v8)
        {
          v18 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 2);
          *(a2 - 2) = v18;
          a1[6] = v8;
          *(a2 - 2) = v6;
          v19 = a1[6];
          v20 = a1[2];
          if (v20 < v19)
          {
            v21 = *a1;
            *a1 = *(a1 + 2);
            *(a1 + 2) = v21;
            a1[2] = v19;
            a1[6] = v20;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v6 >= v8)
      {
        *a1 = *(a1 + 2);
        *(a1 + 2) = v9;
        a1[2] = v6;
        a1[6] = v7;
        v28 = *(a2 - 2);
        if (v7 >= v28)
        {
          return 1;
        }

        *(a1 + 2) = *(a2 - 2);
        *(a2 - 2) = v9;
        a1[6] = v28;
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a2 - 2) = v9;
        a1[2] = v8;
      }

      *(a2 - 2) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::Triangulator<float,unsigned short>::ListHeadSorter &,std::pair<geo::Triangulator<float,unsigned short>::Node *,float> *,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
      return 1;
    }

    v14 = a1[6];
    v15 = a1[2];
    v16 = a1[10];
    if (v15 >= v14)
    {
      if (v14 < v16)
      {
        v25 = *(a1 + 2);
        v26 = *(a1 + 4);
        *(a1 + 2) = v26;
        *(a1 + 4) = v25;
        a1[6] = v16;
        a1[10] = v14;
        if (v15 < v16)
        {
          v27 = *a1;
          *a1 = v26;
          *(a1 + 2) = v27;
          a1[2] = v16;
          a1[6] = v15;
        }
      }

      goto LABEL_48;
    }

    v17 = *a1;
    if (v14 >= v16)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v17;
      a1[2] = v14;
      a1[6] = v15;
      if (v15 >= v16)
      {
LABEL_48:
        v38 = *(a2 - 2);
        v39 = a1[10];
        if (v39 < v38)
        {
          v40 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 2);
          *(a2 - 2) = v40;
          a1[10] = v38;
          *(a2 - 2) = v39;
          v41 = a1[10];
          v42 = a1[6];
          if (v42 < v41)
          {
            v43 = *(a1 + 2);
            v44 = *(a1 + 4);
            *(a1 + 2) = v44;
            *(a1 + 4) = v43;
            a1[6] = v41;
            a1[10] = v42;
            v45 = a1[2];
            if (v45 < v41)
            {
              v46 = *a1;
              *a1 = v44;
              *(a1 + 2) = v46;
              a1[2] = v41;
              a1[6] = v45;
            }
          }
        }

        return 1;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v17;
      a1[6] = v16;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v17;
      a1[2] = v16;
    }

    a1[10] = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = a1[2];
    if (v4 < v3)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[2] = v3;
      *(a2 - 2) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[6];
  v11 = a1[2];
  v12 = a1[10];
  if (v11 >= v10)
  {
    if (v10 < v12)
    {
      v22 = *(a1 + 2);
      v23 = *(a1 + 4);
      *(a1 + 2) = v23;
      *(a1 + 4) = v22;
      a1[6] = v12;
      a1[10] = v10;
      if (v11 < v12)
      {
        v24 = *a1;
        *a1 = v23;
        *(a1 + 2) = v24;
        a1[2] = v12;
        a1[6] = v11;
      }
    }
  }

  else
  {
    v13 = *a1;
    if (v10 >= v12)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v13;
      a1[2] = v10;
      a1[6] = v11;
      if (v11 >= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[6] = v12;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[2] = v12;
    }

    a1[10] = v11;
  }

LABEL_34:
  v29 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  v32 = a1 + 8;
  while (1)
  {
    v33 = v29[2];
    if (v32[2] < v33)
    {
      v34 = *v29;
      v35 = v30;
      while (1)
      {
        v36 = a1 + v35;
        *(v36 + 6) = *(a1 + v35 + 32);
        *(v36 + 14) = *(a1 + v35 + 40);
        if (v35 == -32)
        {
          break;
        }

        v35 -= 16;
        if (*(v36 + 6) >= v33)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_42;
        }
      }

      v37 = a1;
LABEL_42:
      *v37 = v34;
      *(v37 + 8) = v33;
      if (++v31 == 8)
      {
        return v29 + 4 == a2;
      }
    }

    v32 = v29;
    v30 += 16;
    v29 += 4;
    if (v29 == a2)
    {
      return 1;
    }
  }
}