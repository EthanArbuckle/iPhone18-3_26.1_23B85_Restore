void sub_1B2AAD3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<md::LabelMapTileSourceData>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__count_unique<geo::QuadTile>(void *a1, unsigned __int8 *a2)
{
  if (a2[24])
  {
    v3 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v4 = (*(a2 + 1) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    v5 = (*(a2 + 2) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    *(a2 + 2) = v5;
    a2[24] = 0;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v5;
      if (v5 >= *&v6)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        while (1)
        {
          v12 = *(v11 + 1);
          if (v5 == v12)
          {
            if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v11 + 16, a2))
            {
              return 1;
            }
          }

          else
          {
            if (v8 > 1)
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
              return 0;
            }
          }

          result = 0;
          v11 = *v11;
          if (!v11)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

unsigned __int8 *std::__hash_table<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,md::QuadTileBySelectionTypeKeyHash,std::equal_to<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>,std::allocator<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>>::find<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>(void *a1, unsigned __int8 *a2)
{
  if (a2[24])
  {
    v3 = (a2[1] - 0x61C8864680B583EBLL + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2)) ^ (*a2 - 0x61C8864680B583EBLL);
    v4 = (*(a2 + 1) - 0x61C8864680B583EBLL + (v3 << 6) + (v3 >> 2)) ^ v3;
    v5 = (*(a2 + 2) - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2)) ^ v4;
    *(a2 + 2) = v5;
    a2[24] = 0;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = ((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + a2[32]) ^ v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = ((v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + a2[32]) ^ v5;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = v7 & (*&v6 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = *(i + 1);
    if (v7 == v13)
    {
      if (i[40] == 1)
      {
        geo::QuadTile::computeHash(i + 16);
        i[40] = 0;
        v14 = *(i + 4);
        if (a2[24])
        {
          v15 = (a2[1] - 0x61C8864680B583EBLL + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2)) ^ (*a2 - 0x61C8864680B583EBLL);
          v16 = (*(a2 + 1) - 0x61C8864680B583EBLL + (v15 << 6) + (v15 >> 2)) ^ v15;
          v5 = (*(a2 + 2) - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
          *(a2 + 2) = v5;
          a2[24] = 0;
        }

        else
        {
          v5 = *(a2 + 2);
        }
      }

      else
      {
        v14 = *(i + 4);
      }

      if (v14 == v5 && i[16] == *a2 && i[17] == a2[1] && *(i + 5) == *(a2 + 1) && *(i + 6) == *(a2 + 2) && *(i + 24) == *(a2 + 16))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

unsigned __int8 *std::__hash_table<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,md::QuadTileBySelectionTypeKeyHash,std::equal_to<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>,std::allocator<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>>::__emplace_unique_key_args<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,std::pair<geo::QuadTile,md::TileSelectionTileSetType>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (a2[24])
  {
    v3 = (a2[1] - 0x61C8864680B583EBLL + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2)) ^ (*a2 - 0x61C8864680B583EBLL);
    v4 = (*(a2 + 1) - 0x61C8864680B583EBLL + (v3 << 6) + (v3 >> 2)) ^ v3;
    v5 = (*(a2 + 2) - 0x61C8864680B583EBLL + (v4 << 6) + (v4 >> 2)) ^ v4;
    *(a2 + 2) = v5;
    a2[24] = 0;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = (v5 << 6) - 0x61C8864680B583EBLL + (v5 >> 2) + a2[32];
  v7 = v6 ^ v5;
  v8 = *(result + 8);
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6 ^ v5;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = v7 & (*&v8 - 1);
  }

  v12 = *(*result + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_31:
    operator new();
  }

  while (1)
  {
    v14 = *(v13 + 1);
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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
      goto LABEL_31;
    }

LABEL_26:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (v13[40] == 1)
  {
    result = geo::QuadTile::computeHash(v13 + 16);
    v13[40] = 0;
    v15 = *(v13 + 4);
    if (a2[24])
    {
      v16 = (a2[1] - 0x61C8864680B583EBLL + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2)) ^ (*a2 - 0x61C8864680B583EBLL);
      v17 = (*(a2 + 1) - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
      v5 = (*(a2 + 2) - 0x61C8864680B583EBLL + (v17 << 6) + (v17 >> 2)) ^ v17;
      *(a2 + 2) = v5;
      a2[24] = 0;
    }

    else
    {
      v5 = *(a2 + 2);
    }
  }

  else
  {
    v15 = *(v13 + 4);
  }

  if (v15 != v5 || v13[16] != *a2 || v13[17] != a2[1] || *(v13 + 5) != *(a2 + 1) || *(v13 + 6) != *(a2 + 2) || *(v13 + 24) != *(a2 + 16))
  {
    goto LABEL_26;
  }

  return result;
}

void md::LabelManager::layout(md::LabelManager *a1, md::LayoutContext *a2, uint64_t a3)
{
  v646 = *MEMORY[0x1E69E9840];
  mach_absolute_time();
  std::recursive_mutex::lock((a1 + 24));
  v5 = md::LayoutContext::get<md::SceneContext>(*(a2 + 1));
  v6 = 0.0;
  if (*(a1 + 3037) == 1)
  {
    md::LayoutContext::frameState(a2);
    v8 = *(a1 + 414);
    v9 = fmax(*(v7 + 88), v8);
    v10 = 1.0;
    if (*(*(a1 + 29) + 20) == 1)
    {
      v11 = 0;
      v12 = 0.0;
      do
      {
        v12 = *(a1 + v11 + 3112) + v12;
        v11 += 8;
      }

      while (v11 != 40);
      v10 = fmax(fabs(v12 * 0.2) * 25.0, 1.0);
    }

    v13 = v9 - v8;
    v6 = v10 * v13;
  }

  md::LayoutContext::frameState(a2);
  *(a1 + 414) = *(v14 + 88);
  ++*(a1 + 824);
  *(a1 + 3328) = 1;
  *(a1 + 858) = 0;
  if (v5)
  {
    isFinishedLoadingRequiredLayers = md::SceneStateManager::isFinishedLoadingRequiredLayers(*v5);
  }

  else
  {
    isFinishedLoadingRequiredLayers = 0;
  }

  *(a1 + 3420) = isFinishedLoadingRequiredLayers;
  if (*(a1 + 3422) == 1)
  {
    *(a1 + 3422) = 0;
    v16 = *(a1 + 21);
    v17 = *v16;
    v18 = v16[1];
    while (v17 != v18)
    {
      (***v17++)();
    }
  }

  v608 = a2;
  v19 = *(a1 + 436);
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  atomic_store(0, a1 + 3041);
  v20 = *(a2 + 1);
  v21 = md::LayoutContext::get<md::CameraContext>(v20);
  v620 = *(a1 + 96);
  v22 = gdc::Context::get<md::StyleLogicContext>(v20);
  v23 = md::LayoutContext::get<md::ElevationContext>(v20);
  v24 = md::LayoutContext::get<md::NavigationContext>(v20);
  v616 = gdc::Context::get<md::HikingContext>(v20);
  v25 = md::LayoutContext::get<md::SettingsContext>(v20);
  if (!v25)
  {
    v29 = 0;
    *(a1 + 443) = 0;
    *(a1 + 445) = 0;
    goto LABEL_50;
  }

  v26 = *v25;
  v27 = v25[1];
  if (*v25 == v27)
  {
    goto LABEL_26;
  }

  v28 = *v25;
  while (*v28 != 21)
  {
    v28 += 16;
    if (v28 == v27)
    {
      goto LABEL_26;
    }
  }

  if (v28 == v27)
  {
LABEL_26:
    *(a1 + 443) = 0;
  }

  else
  {
    v30 = *(v28 + 8);
    *(a1 + 443) = v30 != 0;
    if (v30)
    {
      v31 = 1;
LABEL_35:
      *(a1 + 444) = v31;
      if (v26 == v27)
      {
        goto LABEL_42;
      }

      v33 = v26;
      while (*v33 != 34)
      {
        v33 += 16;
        if (v33 == v27)
        {
          goto LABEL_42;
        }
      }

      if (v33 == v27)
      {
LABEL_42:
        v34 = 0;
      }

      else
      {
        v34 = *(v33 + 8) != 0;
      }

      *(a1 + 445) = v34;
      while (1)
      {
        if (v26 == v27)
        {
          goto LABEL_49;
        }

        if (*v26 == 33)
        {
          break;
        }

        v26 += 16;
      }

      if (v26 == v27)
      {
LABEL_49:
        v29 = 0;
      }

      else
      {
        v29 = *(v26 + 8) != 0;
      }

LABEL_50:
      *(a1 + 446) = v29;
      if (v22)
      {
        v35 = *(v22 + 22);
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v608 + 9);
      if (v36)
      {
        LOBYTE(v36) = *v36;
      }

      *(a1 + 447) = v36 & 1;
      *(a1 + 448) = v35 == 9;
      if (v35 == 9)
      {
        v37 = gdc::Context::context<md::ARLogicContext>(v20);
        v38 = v37 && *(v37 + 64) == 2 && *(v37 + 16) == 3;
        *(a1 + 449) = v38;
      }

      else
      {
        *(a1 + 449) = 0;
      }

      *(a1 + 458) = *(v22 + 97);
      *(a1 + 215) = *(v22 + 25);
      *(a1 + 120) = 1.0 / *(v22 + 26);
      v39 = *v608;
      [v39 sizeInPixels];
      v41 = v40;
      v43 = v42;

      v44 = v41;
      v45 = v43;
      *(a1 + 374) = v44;
      *(a1 + 375) = v45;
      v46 = *v608;
      [v46 contentScale];
      v602 = (a1 + 432);
      v618 = v21;
      v47 = v21 + 3792;
      *&v48 = v48;
      *(a1 + 119) = LODWORD(v48);

      v50 = 0;
      v51 = 0;
      v52 = (a1 + 1504);
      *(a1 + 188) = 0;
      v609 = (a1 + 504);
      v53 = a1 + 1512;
      v54.i64[0] = *(a1 + 187);
      *(a1 + 189) = v54.i64[0];
      v55.i32[0] = *(a1 + 119);
      v56 = *(a1 + 54);
      do
      {
        v54.i32[0] = *&v53[4 * v51];
        v49.i32[0] = v52->i32[v51];
        if (v50)
        {
          break;
        }

        v50 = 1;
        v51 = 1;
      }

      while (v54.f32[0] >= v49.f32[0]);
      v57 = 0;
      v58 = 0;
      v59 = vdupq_lane_s32(*&vcgtq_f32(v49, v54), 0);
      v60 = *(a1 + 94);
      v61.i64[1] = *(v56 + 80);
      v61.i64[0] = v61.i64[1];
      v63 = vrndq_f32(vmulq_n_f32(v61, *v55.i32));
      v62.i64[0] = vsubq_f32(v60, v63).u64[0];
      v62.i64[1] = vaddq_f32(v60, v63).i64[1];
      *(a1 + 95) = vbslq_s8(v59, v60, v62);
      v63.i64[0] = *(v56 + 72);
      do
      {
        v59.i32[0] = *&v53[4 * v58];
        v62.i32[0] = v52->i32[v58];
        if (v57)
        {
          break;
        }

        v57 = 1;
        v58 = 1;
      }

      while (v59.f32[0] >= v62.f32[0]);
      v64 = 0;
      v65 = 0;
      v66 = vcgtq_f32(v62, v59).u64[0];
      v63.i64[1] = v63.i64[0];
      v67 = vrndq_f32(vmulq_n_f32(v63, *v55.i32));
      v68.i64[0] = vsubq_f32(v60, v67).u64[0];
      v69 = vaddq_f32(v60, v67);
      v68.i64[1] = v69.i64[1];
      v70 = vbslq_s8(vdupq_lane_s32(v66, 0), v60, v68);
      *(a1 + 96) = v70;
      *v55.i32 = *v55.i32 * 50.0;
      do
      {
        v69.i32[0] = *&v53[4 * v65];
        v70.i32[0] = v52->i32[v65];
        if (v64)
        {
          break;
        }

        v64 = 1;
        v65 = 1;
      }

      while (v69.f32[0] >= v70.f32[0]);
      v71 = vdupq_lane_s32(*&vcgtq_f32(v70, v69), 0);
      *v55.i32 = truncf(*v55.i32);
      v72 = vdupq_lane_s32(v55, 0);
      v73.i64[0] = vaddq_f32(v60, v72).u64[0];
      v73.i64[1] = vsubq_f32(v60, v72).i64[1];
      *(a1 + 97) = vbslq_s8(v71, v60, v73);
      md::LayoutContext::frameState(v608);
      v75 = 0;
      v76 = 0;
      do
      {
        v77 = *&v53[4 * v76];
        v78 = v52->f32[v76];
        if (v75)
        {
          break;
        }

        v75 = 1;
        v76 = 1;
      }

      while (v77 >= v78);
      if (v77 >= v78)
      {
        v80 = vextq_s8(*v74, *v74, 4uLL);
        *&v79 = vaddq_f32(*v52, v80).u64[0];
        *(&v79 + 1) = vsubq_f32(*v52, v80).i64[1];
      }

      else
      {
        v79 = xmmword_1B33B0730;
      }

      *(a1 + 98) = v79;
      v81 = *(a1 + 54);
      if (*(v81 + 29) == 1)
      {
        v82 = 0;
        *(a1 + 456) = 1;
        *(a1 + 121) = 1065353216;
LABEL_85:
        *(a1 + 457) = v82;
        if (v24)
        {
          v84 = *(v24 + 22);
          v85 = *(v24 + 169);
        }

        else
        {
          v85 = 0;
          v84 = 0;
        }

        *(a1 + 122) = v84;
        *(a1 + 459) = v85;
        *(a1 + 93) = *(v618 + 3760);
        *(a1 + 87) = *(v618 + 5248);
        *(a1 + 44) = *(v618 + 4768);
        *(a1 + 91) = *(v618 + 5584);
        v86 = gdc::Camera::horizontalOffset(v74, *(v618 + 4288));
        v87 = 0;
        *&v86 = v86;
        *(a1 + 212) = LODWORD(v86);
        v598 = (a1 + 912);
        do
        {
          *(a1 + v87 + 912) = *(v618 + 5256 + v87);
          v87 += 8;
        }

        while (v87 != 128);
        for (i = 0; i != 128; i += 8)
        {
          *(a1 + i + 1040) = *(v618 + 4352 + i);
        }

        for (j = 0; j != 128; j += 8)
        {
          *(a1 + j + 1168) = *(v618 + 4608 + j);
        }

        v600 = (a1 + 1040);
        v90 = 0;
        v603 = (a1 + 1296);
        do
        {
          *(a1 + v90 + 1296) = *(v618 + 5384 + v90);
          v90 += 8;
        }

        while (v90 != 128);
        v91 = gdc::CameraView::position((v618 + 3800));
        v92 = *(v91 + 16);
        *(a1 + 568) = *v91;
        v93 = (a1 + 568);
        *(a1 + 73) = v92;
        if ((*(a1 + 454) & 1) == 0)
        {
          *(a1 + 34) = *v93;
          *(a1 + 70) = *(a1 + 73);
        }

        v94 = *(v618 + 5232);
        *(a1 + 37) = *(v618 + 5216);
        *(a1 + 76) = v94;
        v95 = *(v618 + 5200);
        *(a1 + 77) = *(v618 + 5192);
        *(a1 + 39) = v95;
        v96 = *(v618 + 5184);
        *(a1 + 40) = *(v618 + 5168);
        *(a1 + 82) = v96;
        v97 = gdc::Camera::heading((v618 + 3800));
        v98 = *v97;
        v99 = v98 + 1.57079633;
        v100 = fmodf(v99 + 3.1416, 6.2832);
        *(a1 + 213) = fmodf(v100 + 6.2832, 6.2832) + -3.1416;
        *(a1 + 214) = *(v618 + 5240);
        v101 = *(a1 + 440);
        v102 = 1.0;
        if (v101 == 1)
        {
          md::LabelLayoutContext::coordinateEyePos(&buf, v602);
          v102 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(*buf.i64);
        }

        *(a1 + 97) = v102;
        if (*(v81 + 104) == 1)
        {
          v103 = 0;
          v104 = v102 * *(v81 + 96);
          if (!v101)
          {
            v104 = *(v81 + 96);
          }

          *(a1 + 86) = v104;
          do
          {
            *&buf.i64[v103] = *(a1 + v103 * 8 + 592) * v104;
            ++v103;
          }

          while (v103 != 3);
          v105 = 0;
          v629 = buf;
          v630 = v638.i64[0];
          do
          {
            *&buf.i64[v105] = *&v629.i64[v105] + *(v93 + v105 * 8);
            ++v105;
          }

          while (v105 != 3);
          v106 = v638.i64[0];
          *(a1 + 664) = buf;
          *(a1 + 85) = v106;
        }

        else
        {
          v107 = 1760;
          if (*(v618 + 3792) == 1)
          {
            v107 = 1736;
          }

          v108 = 1752;
          if (*(v618 + 3792) == 1)
          {
            v108 = 1728;
          }

          v109 = 1768;
          if (*(v618 + 3792) == 1)
          {
            v109 = 1744;
          }

          v110 = *(v47 + v109);
          v111 = *(v47 + v107);
          *(a1 + 83) = *(v47 + v108);
          *(a1 + 84) = v111;
          *(a1 + 85) = v110;
          *(a1 + 86) = *(v618 + 5568);
        }

        if (*(v81 + 92) == 1)
        {
          v112 = 0;
          v113 = *(v81 + 88);
          *(a1 + 116) = v113;
          *(a1 + 118) = v113;
          v114 = v113;
        }

        else
        {
          md::LayoutContext::labelZoom(v608);
          v116 = floor((v115 * 1000.0) + 0.5) * 0.001;
          *(a1 + 116) = v116;
          md::LayoutContext::labelZoom(v608);
          *(a1 + 118) = v117;
          LOBYTE(v114) = md::LayoutContext::labelIntegerZoom(v608);
          v81 = *(a1 + 54);
          v112 = *(v81 + 32) != 0;
        }

        *(a1 + 461) = v114;
        *(a1 + 460) = v112;
        if (v23 && *v23 == 1)
        {
          v118 = *(v81 + 36);
          *(a1 + 117) = v118;
          *(a1 + 452) = *(a1 + 116) >= v118;
          *(a1 + 453) = 0;
          v119 = 1;
        }

        else
        {
          v120 = 40;
          if (*(v81 + 29))
          {
            v120 = 36;
          }

          *(a1 + 117) = *(v81 + v120);
          v121 = *(v608 + 93);
          v122 = *v121;
          *(a1 + 452) = *v121;
          *(a1 + 453) = v121[1];
          v119 = ((v35 - 5) < 0xFFFFFFFC) & v122;
        }

        *(a1 + 451) = v119;
        v123 = 0;
        v124 = *(a1 + 213);
        v125 = 1.57079633 - v124;
        v126 = v125 * 0.159154943;
        *(a1 + 904) = vcvts_n_s32_f32(v126 - floorf(v126), 8uLL);
        do
        {
          *&v127 = *(a1 + v123 + 77);
          buf.i32[v123++] = v127;
        }

        while (v123 != 3);
        v128 = 0;
        *(a1 + 108) = buf.i64[0];
        *(a1 + 218) = buf.i32[2];
        do
        {
          *&v129 = *(a1 + v128 + 80);
          buf.i32[v128++] = v129;
        }

        while (v128 != 3);
        *(a1 + 221) = buf.i32[2];
        *(a1 + 876) = buf.i64[0];
        v130 = *v97;
        v131 = __sincosf_stret(v130);
        *(a1 + 222) = LODWORD(v131.__cosval);
        *(a1 + 223) = -v131.__sinval;
        if (v119)
        {
          v132 = *(a1 + 214);
          if (*(a1 + 455) == 1)
          {
            v133 = v132 < 30.0;
          }

          else
          {
            v133 = v132 < 20.0;
          }
        }

        else
        {
          v133 = 1;
        }

        *(a1 + 455) = v133;
        if (vabdd_f64(*(a1 + 98), *(a1 + 71)) >= 0.00000001)
        {
          v139 = 0;
        }

        else
        {
          v134 = (a1 + 576);
          v135 = -2;
          do
          {
            v136 = v135;
            if (!v135)
            {
              break;
            }

            v137 = v134[27];
            v138 = *v134++;
            ++v135;
          }

          while (vabdd_f64(v137, v138) < 0.00000001);
          v139 = (v136 + 2) > 1;
        }

        if (vabdd_f64(*(a1 + 101), *(a1 + 74)) < 0.00000001)
        {
          v140 = (a1 + 600);
          v141 = -2;
          do
          {
            if (!v141)
            {
              goto LABEL_144;
            }

            v142 = v141;
            v143 = v140[27];
            v144 = *v140++;
            ++v141;
          }

          while (vabdd_f64(v143, v144) < 0.00000001);
          if (v142 < 0xFFFFFFFFFFFFFFFELL)
          {
LABEL_144:
            v145 = *(a1 + 208);
            if ((fabsf(v145) <= 3.1416 || fabsf(v145 + 3.1416) <= 0.000001 || fabsf(v145 + -3.1416) <= 0.000001) && (fabsf(v124) <= 3.1416 || fabsf(v124 + 3.1416) <= 0.000001 || fabsf(v124 + -3.1416) <= 0.000001))
            {
              v146 = vabds_f32(v145, v124) > 0.000001 && fabsf((-6.2832 - fminf(v145, v124)) + fmaxf(v145, v124)) > 0.000001;
LABEL_151:
              v147 = *(a1 + 214);
              v148 = vabds_f32(*(a1 + 209), v147);
              v149 = *(a1 + 116);
              v150 = vabds_f32(*(a1 + 210), v149);
              if (!v139 || v146 || v148 > 0.000001 || v150 > 0.000001)
              {
                v151 = (a1 + 784);
                v152 = (a1 + 808);
                v153 = 3;
                do
                {
                  *v151 = *(v151 - 27);
                  ++v151;
                  --v153;
                }

                while (v153);
                v154 = 3;
                do
                {
                  *v152 = *(v152 - 27);
                  ++v152;
                  --v154;
                }

                while (v154);
                *(a1 + 208) = v124;
                *(a1 + 209) = v147;
                *(a1 + 210) = v149;
              }

              if (*(a1 + 447) == 1)
              {
                v155 = *grl::IconMetricsRenderResult::getAnchor((v618 + 3800));
                v158 = __sincosf_stret(v155);
                cosval = v158.__cosval;
                sinval = v158.__sinval;
                v159 = fabsf(v158.__cosval + -1.0) > 0.000001;
              }

              else
              {
                v159 = 0;
                sinval = 0.0;
                cosval = 1.0;
              }

              *(a1 + 224) = cosval;
              *(a1 + 225) = sinval;
              *(a1 + 450) = v159;
              if (*(a1 + 448) == 1)
              {
                v160 = *(v81 + 18);
                *(a1 + 441) = 0;
                v161 = 0.0;
                if ((v160 & 1) == 0)
                {
LABEL_175:
                  *(a1 + 92) = *(v618 + 2976);
                  if ((a1 + 1584) != (v618 + 2952))
                  {
                    std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(a1 + 198, *(v618 + 2952), *(v618 + 2960), (*(v618 + 2960) - *(v618 + 2952)) >> 4);
                  }

                  v165 = *v608;
                  [v165 sizeInPixels];
                  *&v166 = v166;
                  *(a1 + 227) = LODWORD(v166);

                  v167 = 0;
                  v168 = *(a1 + 227);
                  v169 = (*(a1 + 93) + *(a1 + 93)) / v168;
                  *(a1 + 94) = v169;
                  do
                  {
                    *&buf.i64[v167] = -*(a1 + v167 * 8 + 592);
                    ++v167;
                  }

                  while (v167 != 3);
                  v170 = v638.i64[0];
                  v171 = buf;
                  v172 = *(a1 + 82);
                  *(a1 + 89) = *(a1 + 616);
                  *(a1 + 180) = *(a1 + 79);
                  *(a1 + 1448) = *(a1 + 40);
                  *(a1 + 183) = v172;
                  *(a1 + 92) = v171;
                  v173 = *(a1 + 86);
                  *(a1 + 186) = v170;
                  if (v173 == 0.0)
                  {
                    v174 = *(a1 + 92) / v168;
                  }

                  else
                  {
                    v174 = v173 * v169;
                  }

                  *(a1 + 95) = v174;
                  if (!v139 || v146 || v148 > 0.000001 || v150 > 0.000001)
                  {
                    ++*(a1 + 403);
                    if (v146 || (*(a1 + 440) & 1) == 0 || v148 > 0.000001 || v150 > 0.000001)
                    {
LABEL_190:
                      v175 = *(a1 + 402);
                      if ((v175 + 1) > 1)
                      {
                        v176 = v175 + 1;
                      }

                      else
                      {
                        v176 = 1;
                      }

                      *(a1 + 402) = v176;
LABEL_194:
                      v177 = 1.0;
                      v178 = 1.0;
                      if (v23)
                      {
                        v178 = v23[5];
                      }

                      *(a1 + 404) = v178;
                      if (v616)
                      {
                        v177 = *(v616 + 1);
                      }

                      *(a1 + 125) = v177;
                      md::LayoutContext::frameState(v608);
                      *(a1 + 96) = *(v179 + 88);
                      v180 = *(v608 + 1);
                      *(a1 + 208) = md::LayoutContext::get<md::VenueLogicContext>(v180);
                      if ((*(a1 + 448) & 1) == 0)
                      {
                        *(a1 + 405) = 1114636288;
                        *(a1 + 1624) = 1;
                        v180 = *(v608 + 1);
                      }

                      v181 = md::LayoutContext::get<md::SceneQueryContext>(v180);
                      v617 = a1;
                      if (v181 && *v181 != v181 + 1)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::MapEngineSetting,long long>>>(1uLL);
                      }

                      v182 = *(a1 + 206);
                      v183 = *(a1 + 205);
                      v184 = v608;
                      if (v182 == v183)
                      {
                        if (v183 == v182)
                        {
LABEL_212:
                          *(a1 + 1628) = 0;
                          goto LABEL_216;
                        }

                        v185 = 0;
                        v186 = *(a1 + 205);
                        while (*v186 == *v185 && v186[1] == v185[1])
                        {
                          v186 += 2;
                          v185 += 2;
                          if (v186 == v182)
                          {
                            goto LABEL_212;
                          }
                        }
                      }

                      ++*(a1 + 1629);
                      *(a1 + 1628) = 1;
                      if (v183)
                      {
                        *(a1 + 206) = v183;
                        operator delete(v183);
                        *(a1 + 205) = 0;
                        *(a1 + 206) = 0;
                        *(a1 + 207) = 0;
                      }

                      *(a1 + 205) = 0;
                      *(a1 + 206) = 0;
                      *(a1 + 207) = 0;
                      *(a1 + 204) = 0;
LABEL_216:
                      md::LayoutContext::frameState(v608);
                      if (*(v188 + 84) == 2)
                      {
                        md::LayoutContext::frameState(v608);
                        v190 = *(v189 + 80);
                      }

                      else
                      {
                        v191 = (*(**(*(a1 + 21) + 32) + 8))(*(*(a1 + 21) + 32));
                        v190 = 0;
                        v184 = v608;
                        if (v191)
                        {
                          v190 = *(a1 + 849);
                        }
                      }

                      *(a1 + 418) = v190;
                      md::LayoutContext::frameState(v184);
                      *(a1 + 1704) = *(v192 + 84);
                      md::LayoutContext::frameState(v184);
                      v194 = v193[8];
                      v195 = v193[9];
                      v196 = tan(v193[7] * 0.5 + 0.785398163);
                      v197 = log(v196);
                      v198 = v195 * *(a1 + 121);
                      v199 = *(v184 + 1);
                      v200 = md::LayoutContext::get<md::NavigationContext>(v199);
                      if (v200)
                      {
                        v198 = v198 + v200[22];
                      }

                      v201 = v194 * 0.159154943 + 0.5;
                      v202 = v197 * 0.159154943 + 0.5;
                      v203 = *(a1 + 440);
                      if (v203)
                      {
                        v204 = *(*(a1 + 29) + 64) * v198;
                      }

                      else
                      {
                        v205 = v201 * 6.28318531;
                        v206 = exp(v202 * 6.28318531 + -3.14159265);
                        v207 = atan(v206) * 2.0 + -1.57079633;
                        v208 = fmod(v205, 6.28318531);
                        v209 = fmod(v208 + 6.28318531, 6.28318531) + -3.14159265;
                        v210 = __sincos_stret(v207);
                        v211 = 6378137.0 / sqrt(v210.__sinval * v210.__sinval * -0.00669437999 + 1.0);
                        v212 = (v198 + v211) * v210.__cosval;
                        v213 = __sincos_stret(v209);
                        v201 = v212 * v213.__cosval;
                        v202 = v212 * v213.__sinval;
                        v204 = (v198 + v211 * 0.99330562) * v210.__sinval;
                      }

                      *(a1 + 210) = v201;
                      *(a1 + 211) = v202;
                      *(a1 + 212) = v204;
                      v214 = *(a1 + 123);
                      v215 = *(a1 + 213);
                      if (vabds_f32(v214, v215) > 0.0959931128)
                      {
                        v214 = round(v215 * 6.36619755) * 0.157079637;
                        *(a1 + 123) = v214;
                      }

                      v216 = v214 + -0.07854;
                      v217 = __sincosf_stret((v214 + -0.07854) - v215);
                      *(a1 + 126) = -v217.__sinval;
                      *(a1 + 127) = LODWORD(v217.__cosval);
                      *(a1 + 128) = LODWORD(v217.__cosval);
                      *(a1 + 129) = LODWORD(v217.__sinval);
                      if (v203)
                      {
                        v218 = __sincosf_stret(v216);
                        *(a1 + 130) = LODWORD(v218.__cosval);
                        *(a1 + 524) = LODWORD(v218.__sinval);
                        *(a1 + 133) = LODWORD(v218.__sinval);
                        *(a1 + 134) = -v218.__cosval;
                        *(a1 + 135) = 0;
                      }

                      else
                      {
                        *&v633 = gm::Matrix<double,3,1>::normalized<int,void>(a1 + 568);
                        *(&v633 + 1) = v219;
                        *&v634 = v220;
                        *buf.i64 = -v219;
                        buf.i64[1] = v633;
                        v638.i64[0] = 0;
                        v628[0] = gm::Matrix<double,3,1>::normalized<int,void>(&buf);
                        v628[1] = v221;
                        v628[2] = v222;
                        v223 = v216 * 0.5;
                        v224 = sin(v223);
                        for (k = 0; k != 3; ++k)
                        {
                          *&buf.i64[k] = *(&v633 + k * 8) * v224;
                        }

                        v612 = buf;
                        v226 = v638.i64[0];
                        v227 = cos(v223);
                        buf = v612;
                        v638.i64[0] = v226;
                        *&v638.i64[1] = v227;
                        v625 = 0.0;
                        v626 = 0;
                        v627 = 0;
                        v228 = gm::rotateAboutPoint<double>(v628, &buf, &v625);
                        v229 = 0;
                        *v629.i64 = v228;
                        v629.i64[1] = v230;
                        v630 = v231;
                        do
                        {
                          v232 = *&v629.i64[v229];
                          *(&v621 + v229++) = v232;
                        }

                        while (v229 != 3);
                        *(a1 + 65) = v621;
                        *(a1 + 132) = DWORD2(v621);
                        v233 = v223 + -0.785398163;
                        v234 = sin(v233);
                        for (m = 0; m != 3; ++m)
                        {
                          *&v629.i64[m] = *(&v633 + m * 8) * v234;
                        }

                        v613 = v629;
                        v236 = v630;
                        v237 = cos(v233);
                        v629 = v613;
                        v630 = v236;
                        v631 = v237;
                        v621 = 0uLL;
                        v622 = 0;
                        v238 = gm::rotateAboutPoint<double>(v628, &v629, &v621);
                        v239 = 0;
                        v625 = v238;
                        v626 = v240;
                        v627 = v241;
                        do
                        {
                          v242 = *(&v625 + v239);
                          *(&v623 + v239++) = v242;
                        }

                        while (v239 != 3);
                        *(a1 + 135) = v624;
                        *(a1 + 532) = v623;
                      }

                      v243 = 0.0;
                      if (*(a1 + 456) == 1)
                      {
                        v244 = md::LayoutContext::get<md::ElevationContext>(v199);
                        v245 = md::LayoutContext::get<md::SettingsContext>(v199);
                        if (v245)
                        {
                          v246 = v245[6];
                        }

                        else
                        {
                          v246 = 0;
                        }

                        v247 = md::LayoutContext::get<md::CameraContext>(v199);
                        if (v244)
                        {
                          v248 = v244[5];
                        }

                        else
                        {
                          v248 = 1.0;
                        }

                        v249 = 0.0;
                        if (v246 && v247)
                        {
                          v249 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v246, 6, fmaxf(*(v247 + 3080) + *(v247 + 3076), 1.0));
                        }

                        v243 = v249 * v248;
                      }

                      *(a1 + 124) = v243;
                      v250 = +[VKDebugSettings sharedSettings];
                      *(a1 + 1705) = [v250 enableDOF];

                      v251 = +[VKDebugSettings sharedSettings];
                      [v251 dofStrength];
                      *(a1 + 427) = v252;

                      v253 = v608;
                      if (*(a1 + 3696) == 1 && fmod(*(a1 + 96), 6.0) > 3.0)
                      {
                        v254 = *(a1 + 116) + 0.2;
                        *(a1 + 116) = v254;
                        *(a1 + 461) = v254;
                      }

                      if (*(a1 + 1628) == 1)
                      {
                        buf.i64[0] = &unk_1F2A1CA68;
                        buf.i64[1] = a1;
                        v638.i64[1] = &buf;
                        md::LabelManager::queueCommand(a1, 64, 0, &buf);
                        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&buf);
                      }

                      if (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(&v620, a1 + 192))
                      {
                        *(a1 + 3042) = 1;
                      }

                      md::LayoutContext::frameState(v608);
                      *(a1 + 3021) = *(v255 + 48);
                      v256 = *(v618 + 5568);
                      if (v256 == 0.0)
                      {
                        v256 = *(a1 + 394);
                      }

                      v257 = *(a1 + 790);
                      *(a1 + v257 + 389) = 1.0 - *(a1 + 394) / v256;
                      *(a1 + 790) = (v257 + 1) % 5;
                      *(a1 + 394) = v256;
                      LOBYTE(v623) = 0;
                      v258 = *(a1 + 45);
                      v259 = *(v258 + 96);
                      v260 = *(v258 + 104);
                      v619 = v258;
                      if (v259 == v260)
                      {
                        LOBYTE(v261) = 0;
                        goto LABEL_324;
                      }

                      v261 = 0;
                      v606 = *(v258 + 104);
LABEL_260:
                      v262 = *v259;
                      if (*(*v259 + 285) == 1)
                      {
                        v263 = 0;
                        *(v262 + 285) = 0;
                        *(v262 + 282) = 4;
                        goto LABEL_301;
                      }

                      if (*(v262 + 282) != 2)
                      {
                        v263 = 0;
                        goto LABEL_301;
                      }

                      v265 = *v262;
                      v264 = *(v262 + 1);
                      if (*v262 == v264)
                      {
                        v276 = 2;
LABEL_296:
                        v277 = *(v262 + 280);
                        *(v262 + 281) = v277;
                        v263 = v277 != v276;
                        *(v262 + 280) = v276;
                        *(v262 + 282) = 3;
                        v253 = v608;
                        goto LABEL_301;
                      }

                      v611 = v261;
                      v266 = 1;
                      v614 = *(v262 + 1);
                      while (*(v265 + 238))
                      {
                        if (*(v265 + 238) == 1)
                        {
                          v267 = (*(v265 + 16) - *(v265 + 8)) >> 3;
                          v268 = 1;
                        }

                        else
                        {
                          v268 = 0;
                          LOBYTE(v267) = 0;
                        }

LABEL_288:
                        *(v265 + 244) = ((*(v265 + 16) - *(v265 + 8)) >> 3) - v267;
                        *(v265 + 241) = v268;
                        if (*(v265 + 242))
                        {
                          goto LABEL_298;
                        }

                        v266 &= v268;
                        v265 += 248;
                        if (v265 == v264)
                        {
                          if (v266)
                          {
                            v276 = 2;
                          }

                          else
                          {
                            v276 = 1;
                          }

                          v261 = v611;
                          v260 = v606;
                          goto LABEL_296;
                        }
                      }

                      v269 = *(v265 + 8);
                      v270 = *(v265 + 16);
                      if (v269 == v270)
                      {
                        v268 = 0;
                        LOBYTE(v267) = 0;
                        v274 = 1;
LABEL_281:
                        v275 = *(v265 + 237);
                        v264 = v614;
                        if (*(v265 + 237))
                        {
                          if (v275 == 2)
                          {
                            v268 = *(v265 + 240) <= v267;
                          }

                          else if (v275 == 1)
                          {
                            v268 = v274;
                          }

                          else
                          {
                            v268 = 0;
                          }
                        }

                        *(v265 + 243) = v267;
                        goto LABEL_288;
                      }

                      LOBYTE(v267) = 0;
                      v268 = 0;
                      v271 = 0;
                      while (1)
                      {
                        v272 = *v269;
                        md::OcclusionQueryResource::initialize(v619[28] + 24 * *v269);
                        if (*(v269 + 4) == 1)
                        {
                          goto LABEL_275;
                        }

                        if (*(v269 + 4))
                        {
                          goto LABEL_276;
                        }

                        v273 = *(v619[28] + 24 * v272);
                        if (*(v273 + 136) == 2)
                        {
                          *(v265 + 242) = 1;
LABEL_298:
                          *(v262 + 282) = 5;
                          v263 = 1;
                          goto LABEL_300;
                        }

                        if (*(v273 + 129) != 1)
                        {
                          v263 = 0;
LABEL_300:
                          v260 = v606;
                          v253 = v608;
                          v261 = v611;
LABEL_301:
                          v278 = *(*v259 + 282);
                          if (v278 >= 3)
                          {
                            md::OcclusionQuery::reset(*v259, v619 + 16, v278 == 5);
                          }

                          v261 |= v263;
                          v259 += 2;
                          if (v259 == v260)
                          {
                            v279 = v619[12];
                            v280 = v619[13];
                            if (v279 != v280)
                            {
                              while (*(*v279 + 282))
                              {
                                if (++v279 == v280)
                                {
                                  goto LABEL_323;
                                }
                              }

                              if (v279 != v280)
                              {
                                v281 = v279 + 1;
                                if (v279 + 1 != v280)
                                {
                                  do
                                  {
                                    v282 = *v281;
                                    if (*(*v281 + 282))
                                    {
                                      v283 = *(v281 + 1);
                                      *v281 = 0;
                                      *(v281 + 1) = 0;
                                      v284 = *(v279 + 1);
                                      *v279 = v282;
                                      *(v279 + 1) = v283;
                                      if (v284)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v284);
                                      }

                                      ++v279;
                                    }

                                    ++v281;
                                  }

                                  while (v281 != v280);
                                  v280 = v619[13];
                                }
                              }
                            }

                            if (v279 == v280)
                            {
LABEL_323:
                              a1 = v617;
                            }

                            else
                            {
                              std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery> *>(v280, v280, v279);
                              v286 = v285;
                              a1 = v617;
                              v287 = v619[13];
                              if (v287 != v285)
                              {
                                do
                                {
                                  v288 = *(v287 - 8);
                                  if (v288)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v288);
                                  }

                                  v287 -= 16;
                                }

                                while (v287 != v286);
                              }

                              v619[13] = v286;
                            }

LABEL_324:
                            LOBYTE(v623) = v623 | v261 & 1;
                            v289 = a1;
                            (*(**(a1 + 30) + 24))(*(a1 + 30), v253, v6);
                            if (*(a1 + 3415) == 1)
                            {
                              *(a1 + 3415) = 0;
                              md::LabelManager::tryWaitForBkgdUpdateComplete(a1, 0x1F4u);
                            }

                            if (*(a1 + 3419))
                            {
                              goto LABEL_519;
                            }

                            *(a1 + 3417) = *(a1 + 3416) ^ 1;
                            *(a1 + 53) = v602;
                            md::LabelManager::updateDebugSettings(a1);
                            v290 = *(*(a1 + 42) + 184);
                            if (v290)
                            {
                              v291 = *(v290 + 520);
                              v292 = *(v290 + 528);
                              if (v292)
                              {
                                atomic_fetch_add_explicit(&v292->__shared_owners_, 1uLL, memory_order_relaxed);
                                std::__shared_weak_count::__release_shared[abi:nn200100](v292);
                                if (!v291)
                                {
LABEL_332:
                                  gss::ClientStyleState<gss::PropertyID>::init();
                                }
                              }

                              else if (!v291)
                              {
                                goto LABEL_332;
                              }

                              v293 = *(a1 + 441);
                              if (v293)
                              {
                                v294 = *(v293 + 520);
                                v295 = *(v293 + 528);
                                if (v295)
                                {
                                  atomic_fetch_add_explicit(&v295->__shared_owners_, 1uLL, memory_order_relaxed);
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v295);
                                }

                                if (v294)
                                {
                                  v296 = *(*(a1 + 42) + 184);
                                  v297 = *(v296 + 520);
                                  v298 = *(v296 + 528);
                                  if (v298)
                                  {
                                    atomic_fetch_add_explicit(&v298->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  v299 = *(a1 + 441);
                                  v300 = *(v299 + 520);
                                  v301 = *(v299 + 528);
                                  if (v301)
                                  {
                                    atomic_fetch_add_explicit(&v301->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  gss::ClientStyleState<gss::PropertyID>::setStateWithClientStyleState(v297, v300);
                                  if (v301)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v301);
                                  }

                                  if (v298)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v298);
                                  }
                                }
                              }
                            }

                            md::LabelManager::flushCommandQueue(a1);
                            v302 = gdc::Context::get<md::StyleLogicContext>(*(v253 + 1));
                            *(a1 + 3043) = *(v302 + 94) == 1;
                            v303 = *(a1 + 42);
                            v304 = *(v302 + 83);
                            if (*(v303 + 180) != v304 || (*(v303 + 181) & 1) == 0)
                            {
                              *(v303 + 181) = 1;
                              *(v303 + 180) = v304;
                              std::mutex::lock(v303);
                              buf.i64[0] = &unk_1F2A3A260;
                              v638.i64[1] = &buf;
                              md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v303 + 264), &buf);
                              std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&buf);
                              v629.i64[0] = &unk_1F2A3A260;
                              v631 = COERCE_DOUBLE(&v629);
                              md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v303 + 376), &v629);
                              std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v629);
                              md::LabelStyle::invalidateCachedProperties(*(v303 + 432));
                              std::mutex::unlock(v303);
                            }

                            v305 = *(v303 + 200);
                            if (*(v305 + 89) == 1)
                            {
                              *(v305 + 89) = 0;
                              v306 = *(v305 + 56);
                              *(v305 + 56) = 0;
                              v307 = *(v305 + 80);
                              *(v305 + 80) = v306;
                              if (v307)
                              {
                                MEMORY[0x1B8C62190](v307, 0x1000C40F5825EE8);
                              }
                            }

                            v308 = v617;
                            if (!*(v617 + 23))
                            {
                              v309 = *(v617 + 29);
                              if (*(v309 + 22))
                              {
                                v310 = *(v617 + 3652);
                                *(v617 + 3046) = v310;
                                if (v310 == 1 && (*(v309 + 21) & 1) == 0)
                                {
                                  *(v617 + 3046) = (*(**(v617 + 30) + 120))(*(v617 + 30), v253);
                                }
                              }

                              else
                              {
                                *(v617 + 3046) = 0;
                              }

                              md::OcclusionManager::flushQueuedQueries(*(v617 + 45));
                              *(v617 + 3176) = *(v617 + 3611);
                              v311 = *(v617 + 3612);
                              if (*(v617 + 3177) != v311)
                              {
                                *(v617 + 3177) = v311;
                                if (v311)
                                {
                                  *(v617 + 3035) = 1;
                                }
                              }
                            }

                            if (*(v617 + 3042) == 1)
                            {
                              v312 = *(v617 + 21);
                              v313 = *v312;
                              v314 = v312[1];
                              while (v313 != v314)
                              {
                                (*(**v313 + 48))();
                                v313 += 8;
                              }

                              v315 = *(v617 + 40);
                              v316 = *(v617 + 44);
                              buf = *(v315 + 56);
                              *(v315 + 56) = 0;
                              *(v315 + 64) = 0;
                              v638.i64[0] = *(v315 + 72);
                              *(v315 + 72) = 0;
                              v629.i64[0] = &buf;
                              std::vector<md::LabelCollider::GridNode,geo::allocator_adapter<md::LabelCollider::GridNode,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v629);
                              *(v315 + 92) = 0;
                              *(v315 + 12) = *(v617 + 384);
                              *(v315 + 16) = *(v617 + 385);
                              *(v315 + 20) = *(v617 + 386);
                              *(v315 + 24) = *(v617 + 387);
                              *(v315 + 28) = v316 * 100.0;
                              *(v315 + 32) = 0.01 / v316;
                              *(v315 + 36) = *(v617 + 384);
                              v318 = *(v617 + 385);
                              *(v315 + 40) = v318;
                              v319 = *(v617 + 1536);
                              v319.i32[1] = v318;
                              v320 = vsub_f32(vadd_f32(*(v617 + 1544), vdup_n_s32(0xBDCCCCCD)), v319);
                              __asm { FMOV            V2.2S, #1.0 }

                              v325 = vcvt_s32_f32(vmla_n_f32(_D2, v320, 0.01 / v316));
                              *(v315 + 44) = v325;
                              v326 = vmul_lane_s32(v325, v325, 1).u32[0];
                              v327 = v326;
                              if (v326 < 1)
                              {
                                *(v315 + 44) = 0;
                                *(v315 + 48) = 0;
                              }

                              else
                              {
                                v328 = *(v315 + 56);
                                v329 = *(v315 + 64);
                                v330 = v329 - v328;
                                v331 = 0xAAAAAAAAAAAAAAABLL * ((v329 - v328) >> 3);
                                v332 = v326 - v331;
                                if (v326 <= v331)
                                {
                                  if (v326 < v331)
                                  {
                                    v350 = v328 + 24 * v326;
                                    if (v329 != v350)
                                    {
                                      v351 = *(v315 + 64);
                                      do
                                      {
                                        free(*(v329 - 8));
                                        *(v351 - 24) = 0;
                                        *(v351 - 16) = 0;
                                        v351 -= 24;
                                        *(v329 - 8) = 0;
                                        v329 = v351;
                                      }

                                      while (v351 != v350);
                                    }

                                    *(v315 + 64) = v350;
                                  }
                                }

                                else
                                {
                                  v333 = *(v315 + 72);
                                  if (0xAAAAAAAAAAAAAAABLL * ((v333 - v329) >> 3) >= v332)
                                  {
                                    bzero(*(v315 + 64), 24 * ((24 * v332 - 24) / 0x18) + 24);
                                    *(v315 + 64) = v329 + 24 * ((24 * v332 - 24) / 0x18) + 24;
                                  }

                                  else
                                  {
                                    v334 = 0xAAAAAAAAAAAAAAABLL * ((v333 - v328) >> 3);
                                    if (2 * v334 > v326)
                                    {
                                      v327 = 2 * v334;
                                    }

                                    if (v334 >= 0x555555555555555)
                                    {
                                      v335 = 0xAAAAAAAAAAAAAAALL;
                                    }

                                    else
                                    {
                                      v335 = v327;
                                    }

                                    v336 = mdm::zone_mallocator::instance(v317);
                                    v337 = pthread_rwlock_rdlock((v336 + 32));
                                    if (v337)
                                    {
                                      geo::read_write_lock::logFailure(v337, "read lock", v338);
                                    }

                                    v339 = malloc_type_zone_malloc(*v336, 24 * v335, 0x108004098BBCF0FuLL);
                                    atomic_fetch_add((v336 + 24), 1u);
                                    geo::read_write_lock::unlock((v336 + 32));
                                    v340 = &v339[v330];
                                    v341 = &v339[24 * v335];
                                    bzero(v340, 24 * ((24 * v332 - 24) / 0x18) + 24);
                                    v343 = &v340[24 * ((24 * v332 - 24) / 0x18) + 24];
                                    v344 = *(v315 + 56);
                                    v345 = *(v315 + 64);
                                    v346 = &v340[v344 - v345];
                                    if (v345 == v344)
                                    {
                                      v308 = v617;
                                    }

                                    else
                                    {
                                      v347 = *(v315 + 56);
                                      v348 = &v340[v344 - v345];
                                      v308 = v617;
                                      do
                                      {
                                        v349 = *v347;
                                        *(v348 + 2) = v347[2];
                                        *v348 = v349;
                                        v348 += 24;
                                        v347 += 3;
                                      }

                                      while (v347 != v345);
                                      do
                                      {
                                        free(v344[2]);
                                        *v344 = 0;
                                        v344[1] = 0;
                                        v344[2] = 0;
                                        v344 += 3;
                                      }

                                      while (v344 != v345);
                                      v344 = *(v315 + 56);
                                    }

                                    *(v315 + 56) = v346;
                                    *(v315 + 64) = v343;
                                    *(v315 + 72) = v341;
                                    if (v344)
                                    {
                                      v352 = mdm::zone_mallocator::instance(v342);
                                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollider::GridNode>(v352, v344);
                                    }
                                  }
                                }
                              }

                              *(v308 + 3042) = 0;
                            }

                            if (*(v308 + 51) == *(a3 + 40))
                            {
                              v353 = (v308 + 392);
                              v354 = *(a3 + 8);
                              v355 = vcnt_s8(v354);
                              v355.i16[0] = vaddlv_u8(v355);
                              v356 = *&v354 - 1;
                              while (1)
                              {
                                v353 = *v353;
                                if (!v353)
                                {
                                  break;
                                }

                                if (v354)
                                {
                                  v357 = v353[2];
                                  v358 = 0x9DDFEA08EB382D69 * ((8 * (v357 & 0x1FFFFFFF) + 8) ^ HIDWORD(v357));
                                  v359 = 0x9DDFEA08EB382D69 * (HIDWORD(v357) ^ (v358 >> 47) ^ v358);
                                  v360 = 0x9DDFEA08EB382D69 * (v359 ^ (v359 >> 47));
                                  if (v355.u32[0] > 1uLL)
                                  {
                                    v361 = v360;
                                    if (v360 >= *&v354)
                                    {
                                      v361 = v360 % *&v354;
                                    }
                                  }

                                  else
                                  {
                                    v361 = v360 & v356;
                                  }

                                  v362 = *(*a3 + 8 * v361);
                                  if (v362)
                                  {
                                    do
                                    {
                                      while (1)
                                      {
                                        v362 = *v362;
                                        if (!v362)
                                        {
                                          goto LABEL_410;
                                        }

                                        v363 = v362[1];
                                        if (v360 == v363)
                                        {
                                          break;
                                        }

                                        if (v355.u32[0] > 1uLL)
                                        {
                                          if (v363 >= *&v354)
                                          {
                                            v363 %= *&v354;
                                          }
                                        }

                                        else
                                        {
                                          v363 &= v356;
                                        }

                                        if (v363 != v361)
                                        {
                                          goto LABEL_410;
                                        }
                                      }
                                    }

                                    while (v362[2] != v357);
                                    if (v357 == v362[2])
                                    {
                                      continue;
                                    }
                                  }
                                }

                                goto LABEL_410;
                              }

                              v364 = 0;
                            }

                            else
                            {
LABEL_410:
                              if ((v308 + 368) != a3)
                              {
                                *(v308 + 104) = *(a3 + 48);
                                std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>>((v308 + 368), *(a3 + 24));
                              }

                              v364 = 1;
                            }

                            v365 = v308;
                            (*(**(v308 + 30) + 32))(*(v308 + 30), v253, a3, v364);
                            if (*(v308 + 3408) == 1)
                            {
                              *(v308 + 3408) = 0;
                              md::LabelManager::restyleActiveLabels(v308);
                              goto LABEL_416;
                            }

                            if (*(v308 + 3405) == 1 && (*(v308 + 3407) & 1) == 0)
                            {
                              *(v308 + 3405) = 0;
                              if (*(v308 + 3406) == 1)
                              {
                                *(v308 + 3406) = 0;
                                md::LabelStyleCache::stylesheetDidChange(*(v308 + 42));
                              }

                              md::LabelManager::restyleActiveLabels(v308);
                              if (*(v308 + 23))
                              {
                                v366 = 0;
                              }

                              else
                              {
LABEL_416:
                                v366 = 1;
                                LOBYTE(v623) = 1;
                              }

                              v365 = v617;
                              *(v617 + 3039) = 257;
                            }

                            else
                            {
                              v366 = 0;
                            }

                            if ((*(v365 + 3686) & 1) != 0 || (*(v365 + 3414) & 1) != 0 || (*(v365 + 3049) & 1) != 0 || *(v365 + 23))
                            {
                              v367 = 1;
                            }

                            else
                            {
                              v367 = (*(**(v365 + 30) + 88))(*(v365 + 30));
                            }

                            *(v365 + 3052) = *(v365 + 3414);
                            *(v365 + 3414) = 0;
                            LODWORD(v625) = 65793;
                            WORD2(v625) = 0;
                            LODWORD(v626) = *(v365 + 824);
                            if (*(v365 + 3035))
                            {
                              v368 = 1;
                            }

                            else
                            {
                              v368 = (*(**(v365 + 30) + 96))(*(v365 + 30));
                            }

                            v369 = *(v617 + 3036);
                            *(v617 + 3035) = 0;
                            if (*(v617 + 3034))
                            {
                              v370 = 1;
                            }

                            else if (*(v617 + 3648) == 1)
                            {
                              v370 = *(v617 + 3649);
                            }

                            else
                            {
                              v370 = 0;
                            }

                            v371 = v370 & 1;
                            *(v617 + 3034) = 0;
                            BYTE4(v625) = v370 & 1;
                            if (*(v617 + 23))
                            {
                              LODWORD(v625) = 65537;
                              v289 = v617;
                              goto LABEL_436;
                            }

                            LOBYTE(v625) = v370 & 1;
                            if (v366)
                            {
                              BYTE1(v625) = 0;
                              v432 = v371 | v368;
                              BYTE2(v625) = (v371 | v368) & 1;
                              BYTE3(v625) = v369;
                              LOBYTE(v623) = 1;
                              if (v371)
                              {
                                goto LABEL_698;
                              }

LABEL_694:
                              if ((BYTE1(v625) & 1) == 0 && (v432 & 1) == 0)
                              {
                                v289 = v617;
                                if (v369)
                                {
LABEL_699:
                                  v372 = *(v289 + 824);
                                  goto LABEL_437;
                                }

                                goto LABEL_519;
                              }

LABEL_698:
                              v289 = v617;
                              if ((v432 & 1) == 0)
                              {
                                goto LABEL_699;
                              }

LABEL_436:
                              v372 = *(v289 + 824);
                              *(v289 + 825) = v372;
                              *(v289 + 826) = *(v289 + 403);
LABEL_437:
                              v373 = v289;
                              *(*(v289 + 396) + 160) = v372;
                              if (!v367)
                              {
                                v374 = (v289 + 1424);
                                v375 = (v289 + 1680);
                                v376 = v289 + 1664;
                                v377 = v373 + 1704;
                                std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v633, *(v373 + 1), *(v373 + 2));
                                *(v373 + 3419) = 1;
                                BYTE5(v625) = 1;
                                v378 = v373 + 1720;
                                v379 = *(v602 + 3);
                                *(v373 + 1752) = *(v602 + 2);
                                *(v373 + 1768) = v379;
                                *(v373 + 223) = *(v602 + 8);
                                v380 = *(v602 + 1);
                                *(v373 + 1720) = *v602;
                                *(v373 + 1736) = v380;
                                v381 = 3;
                                v382 = v373;
                                *(v373 + 112) = *v609;
                                do
                                {
                                  *(v382 + 452) = *(v382 + 130);
                                  v382 = (v382 + 4);
                                  --v381;
                                }

                                while (v381);
                                v383 = 3;
                                v384 = v373;
                                do
                                {
                                  *(v384 + 455) = *(v384 + 133);
                                  v384 = (v384 + 4);
                                  --v383;
                                }

                                while (v383);
                                v385 = 3;
                                v386 = v373;
                                do
                                {
                                  *(v386 + 229) = *(v386 + 68);
                                  v386 = (v386 + 8);
                                  --v385;
                                }

                                while (v385);
                                v387 = 3;
                                v388 = v373;
                                do
                                {
                                  *(v388 + 232) = *(v388 + 71);
                                  v388 = (v388 + 8);
                                  --v387;
                                }

                                while (v387);
                                v389 = 3;
                                v390 = v373;
                                do
                                {
                                  *(v390 + 235) = *(v390 + 74);
                                  v390 = (v390 + 8);
                                  --v389;
                                }

                                while (v389);
                                v391 = 3;
                                v392 = v373;
                                do
                                {
                                  *(v392 + 238) = *(v392 + 77);
                                  v392 = (v392 + 8);
                                  --v391;
                                }

                                while (v391);
                                v393 = 3;
                                v394 = v373;
                                do
                                {
                                  *(v394 + 241) = *(v394 + 80);
                                  v394 = (v394 + 8);
                                  --v393;
                                }

                                while (v393);
                                v395 = 3;
                                v396 = v373;
                                do
                                {
                                  *(v396 + 244) = *(v396 + 83);
                                  v396 = (v396 + 8);
                                  --v395;
                                }

                                while (v395);
                                v397 = *(v373 + 46);
                                *(v373 + 2008) = *(v373 + 45);
                                *(v373 + 2024) = v397;
                                v398 = *(v373 + 48);
                                *(v373 + 2040) = *(v373 + 47);
                                *(v373 + 2056) = v398;
                                v399 = *(v373 + 44);
                                v400 = 3;
                                *(v373 + 1976) = *(v373 + 43);
                                *(v373 + 1992) = v399;
                                v401 = v373;
                                do
                                {
                                  *(v401 + 259) = *(v401 + 98);
                                  v401 = (v401 + 8);
                                  --v400;
                                }

                                while (v400);
                                v402 = 3;
                                v403 = v373;
                                do
                                {
                                  *(v403 + 262) = *(v403 + 101);
                                  v403 = (v403 + 8);
                                  --v402;
                                }

                                while (v402);
                                *(v373 + 265) = *(v373 + 104);
                                *(v373 + 532) = *(v373 + 210);
                                *(v373 + 2136) = *(v373 + 53);
                                v404 = 3;
                                v405 = v373;
                                do
                                {
                                  *(v405 + 538) = *(v405 + 216);
                                  v405 = (v405 + 4);
                                  --v404;
                                }

                                while (v404);
                                v406 = 3;
                                v407 = v373;
                                do
                                {
                                  *(v407 + 541) = *(v407 + 219);
                                  v407 = (v407 + 4);
                                  --v406;
                                }

                                while (v406);
                                *(v373 + 136) = v609[24];
                                *(v373 + 274) = *(v373 + 113);
                                v408 = 16;
                                v409 = v373;
                                do
                                {
                                  *(v409 + 2200) = *(v409 + 57);
                                  v409 = (v409 + 16);
                                  v408 -= 2;
                                }

                                while (v408);
                                v410 = 16;
                                v411 = v373;
                                do
                                {
                                  *(v411 + 2328) = *(v411 + 65);
                                  v411 = (v411 + 16);
                                  v410 -= 2;
                                }

                                while (v410);
                                for (n = 1168; n != 1296; n += 16)
                                {
                                  *(v373 + n + 1288) = *(v373 + n);
                                }

                                v413 = 16;
                                v414 = v603;
                                do
                                {
                                  v415 = (v414 + 1288);
                                  v416 = *v414++;
                                  *v415 = v416;
                                  v413 -= 2;
                                }

                                while (v413);
                                v417 = 9;
                                do
                                {
                                  v374[161] = *v374;
                                  ++v374;
                                  --v417;
                                }

                                while (v417);
                                v418 = v609[63];
                                *(v373 + 174) = v609[62];
                                *(v373 + 175) = v418;
                                *(v373 + 176) = v609[64];
                                *(v373 + 177) = v609[65];
                                *(v373 + 178) = v609[66];
                                v419 = *(v373 + 198);
                                v420 = *(v373 + 199);
                                *(v373 + 358) = *(v373 + 197);
                                std::vector<gm::Matrix<double,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(v373 + 359, v419, v420, v420 - v419);
                                v421 = *(v373 + 1624);
                                *(v373 + 181) = *(v373 + 1608);
                                *(v373 + 182) = v421;
                                v422 = *(v373 + 205);
                                v423 = *(v373 + 206);
                                v424 = v423 - v422;
                                v425 = *(v373 + 368);
                                v426 = *(v373 + 366);
                                if (v425 - v426 < (v423 - v422))
                                {
                                  v427 = v373;
                                  v428 = (v373 + 2928);
                                  v429 = v424 >> 4;
                                  if (v426)
                                  {
                                    *(v427 + 367) = v426;
                                    operator delete(v426);
                                    v425 = 0;
                                    *v428 = 0;
                                    v428[1] = 0;
                                    v428[2] = 0;
                                  }

                                  if (!(v429 >> 60))
                                  {
                                    v430 = v425 >> 3;
                                    if (v425 >> 3 <= v429)
                                    {
                                      v430 = v424 >> 4;
                                    }

                                    if (v425 >= 0x7FFFFFFFFFFFFFF0)
                                    {
                                      v431 = 0xFFFFFFFFFFFFFFFLL;
                                    }

                                    else
                                    {
                                      v431 = v430;
                                    }

                                    std::vector<md::LabelFlexZone>::__vallocate[abi:nn200100](v428, v431);
                                  }

                                  std::__throw_bad_array_new_length[abi:nn200100]();
                                }

                                v433 = *(v373 + 367);
                                v434 = v433 - v426;
                                if (v433 - v426 >= v424)
                                {
                                  if (v423 != v422)
                                  {
                                    memmove(v426, v422, v423 - v422);
                                  }

                                  v436 = &v426[v424];
                                }

                                else
                                {
                                  v435 = &v422[v434];
                                  if (v433 != v426)
                                  {
                                    memmove(v426, v422, v434);
                                    v433 = *(v617 + 367);
                                  }

                                  if (v423 != v435)
                                  {
                                    memmove(v433, v435, v423 - v435);
                                  }

                                  v436 = &v433[v423 - v435];
                                }

                                *(v617 + 367) = v436;
                                v441 = (v617 + 3008);
                                *(v617 + 369) = *v376;
                                *(v617 + 740) = *(v376 + 2);
                                v442 = 3;
                                do
                                {
                                  v375[161] = *v375;
                                  ++v375;
                                  --v442;
                                }

                                while (v442);
                                *(v617 + 374) = *v377;
                                *(v617 + 750) = *(v377 + 8);
                                v443 = *(v617 + 369);
                                if (v443)
                                {
                                  if (!*v441)
                                  {
                                    operator new();
                                  }

                                  md::VenueLogicContext::operator=(*v441, v443);
                                  *(v617 + 369) = *v441;
                                }

                                else
                                {
                                  std::unique_ptr<md::VenueLogicContext>::reset[abi:nn200100](v617 + 376, 0);
                                }

                                *(v617 + 53) = v378;
                                (*(**(v617 + 30) + 40))(*(v617 + 30), &v625);
                                dispatch_semaphore_wait(*(v617 + 27), 0xFFFFFFFFFFFFFFFFLL);
                                ++*(v617 + 3329);
                                if (*(&v633 + 1))
                                {
                                  atomic_fetch_add_explicit((*(&v633 + 1) + 8), 1uLL, memory_order_relaxed);
                                }

                                *&v621 = v625;
                                DWORD2(v621) = v626;
                                v638.i64[1] = 0;
                                operator new();
                              }

                              (*(**(v289 + 30) + 40))(*(v289 + 30), &v625);
                              md::LabelManager::layoutForStaging(v289, &v625);
                              md::LabelManager::synchStagingWithDisplay(v289);
                              md::OcclusionManager::flushQueuedQueries(*(v289 + 45));
LABEL_519:
                              v444 = *(v289 + 38);
                              v445 = *(v289 + 824);
                              v444[14] = v445;
                              atomic_store(v445, (v444[13] + 76));
                              *(v444[16] + 160) = v445;
                              v446 = *(v289 + 208);
                              if (v446)
                              {
                                v447 = 1.0 - *(v446 + 280);
                              }

                              else
                              {
                                v447 = 1.0;
                              }

                              *(v289 + 843) = v447;
                              (*(**(v289 + 30) + 64))(*(v289 + 30), v253);
                              v448 = *(v289 + 38);
                              *(v448 + 120) = 0;
                              v449 = *(v448 + 104);
                              v450 = v449[2];
                              if ((vmovn_s64(vceqq_s64(v450, vdupq_laneq_s64(v450, 1))).u8[0] & 1) == 0)
                              {
                                v451 = v449->i64[1];
                                v452 = v449[1].i64[0];
                                if (v452)
                                {
                                  atomic_fetch_add_explicit((v452 + 8), 1uLL, memory_order_relaxed);
                                  v450 = v449[2];
                                }

                                v629 = v450;
                                v449[2] = 0u;
                                v630 = v449[3].i64[0];
                                v449[3].i64[0] = 0;
                                std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v625, *(v449[1].i64[1] + 8), *(v449[1].i64[1] + 16));
                                atomic_fetch_add(v449[4].i32, 1u);
                                buf.i64[0] = v449;
                                buf.i64[1] = 0;
                                v638 = 0u;
                                v639.i8[0] = LOBYTE(v631);
                                std::vector<std::shared_ptr<md::FontGlyph>,geo::allocator_adapter<std::shared_ptr<md::FontGlyph>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::FontGlyph>*,std::shared_ptr<md::FontGlyph>*>(&buf.i64[1], v629.i64[0], v629.i64[1], (v629.i64[1] - v629.i64[0]) >> 4);
                                *&v639.i64[1] = v625;
                                v640.i64[0] = v626;
                                if (v626)
                                {
                                  atomic_fetch_add_explicit((v626 + 8), 1uLL, memory_order_relaxed);
                                }

                                v640.i64[1] = v451;
                                v641.i64[0] = v452;
                                if (v452)
                                {
                                  atomic_fetch_add_explicit((v452 + 8), 1uLL, memory_order_relaxed);
                                }

                                *(&v634 + 1) = 0;
                                operator new();
                              }

                              md::FontGlyphCache::finishFrame(*(v448 + 128));
                              v455 = *(v448 + 96);
                              if (v455 >= 257)
                              {
                                v456 = *(v448 + 116);
                                if (v455 > (v456 + 400))
                                {
                                  for (ii = v456 + 300; v455 > ii; v455 = *(v448 + 96))
                                  {
                                    v458 = *(v448 + 80);
                                    if (!v458 || (*(v448 + 112) - *v458) < 0x78)
                                    {
                                      break;
                                    }

                                    if (v455)
                                    {
                                      v459 = *(v458 + 24);
                                      *(v448 + 80) = v459;
                                      *(v458 + 24) = 0;
                                      if (v459)
                                      {
                                        *(v459 + 16) = 0;
                                      }

                                      if (v458 == *(v448 + 88))
                                      {
                                        *(v448 + 88) = 0;
                                      }

                                      *(v448 + 96) = v455 - 1;
                                    }

                                    v460 = *(v458 + 32);
                                    v461 = *(v458 + 8);
                                    v462 = (*(v461 + 48) * 0.0625);
                                    v463 = *(v448 + 136);
                                    if (((*(v448 + 144) - v463) >> 2) - 1 < v462)
                                    {
                                      v462 = ((*(v448 + 144) - v463) >> 2) - 1;
                                    }

                                    --*(v463 + 4 * v462);
                                    if (v460)
                                    {
                                      (v460->__on_zero_shared)(v460);
                                      v460 = *(v458 + 40);
                                      *(v458 + 32) = 0;
                                      *(v458 + 40) = 0;
                                      if (v460)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v460);
                                      }
                                    }

                                    *(v458 + 8) = 0;
                                    *(v461 + 96) = 0;
                                    v464 = *(v448 + 128);
                                    if (v464)
                                    {
                                      v460 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(&v464[11], v461);
                                      if (v460)
                                      {
                                        md::FontGlyphCache::eraseGlyph(v464, v460[1].__vftable);
                                      }
                                    }

                                    v466 = *(v448 + 56);
                                    v465 = *(v448 + 64);
                                    if (v466 >= v465)
                                    {
                                      v468 = *(v448 + 48);
                                      v469 = (v466 - v468) >> 3;
                                      if ((v469 + 1) >> 61)
                                      {
                                        std::__throw_bad_array_new_length[abi:nn200100]();
                                      }

                                      v470 = v465 - v468;
                                      v471 = v470 >> 2;
                                      if (v470 >> 2 <= (v469 + 1))
                                      {
                                        v471 = v469 + 1;
                                      }

                                      v472 = v470 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v471;
                                      v639.i64[0] = v448 + 72;
                                      if (v472)
                                      {
                                        v473 = mdm::zone_mallocator::instance(v460);
                                        v474 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontAtlasCell *>(v473, v472);
                                      }

                                      else
                                      {
                                        v474 = 0;
                                      }

                                      v476 = &v474[8 * v472];
                                      v475 = &v474[8 * v469];
                                      *v475 = v458;
                                      v467 = v475 + 8;
                                      v477 = *(v448 + 48);
                                      v478 = *(v448 + 56) - v477;
                                      v479 = &v475[-v478];
                                      memcpy(&v475[-v478], v477, v478);
                                      v480 = *(v448 + 48);
                                      *(v448 + 48) = v479;
                                      *(v448 + 56) = v467;
                                      v481 = *(v448 + 64);
                                      *(v448 + 64) = v476;
                                      v638.i64[0] = v480;
                                      v638.i64[1] = v481;
                                      buf.i64[0] = v480;
                                      buf.i64[1] = v480;
                                      std::__split_buffer<md::FontAtlasCell *,geo::allocator_adapter<md::FontAtlasCell *,mdm::zone_mallocator> &>::~__split_buffer(&buf);
                                    }

                                    else
                                    {
                                      *v466 = v458;
                                      v467 = v466 + 1;
                                    }

                                    *(v448 + 56) = v467;
                                  }
                                }
                              }

                              v482 = v617;
                              v483 = v608;
                              if (*(v617 + 23))
                              {
LABEL_662:
                                md::LabelManager::renderLabels(v482, v483, v453, v454);
                              }

                              v610 = *(v617 + 45);
                              v484 = *(*(v610 + 8) + 112);
                              v485 = *v484;
                              if (*(v617 + 3046))
                              {
                                v486 = gdc::ServiceLocator::resolve<md::PassListProvider>(v485, v484[1]);
                                v487 = (**v486)(v486);
                                v488 = v610;
                                v489 = md::FrameGraph::renderQueueForPass(*(v487 + 8), *(v610 + 288));
                                if (v489)
                                {
                                  v490 = *(*(v489 + 16) + 8 * *(v610 + 289));
                                }

                                else
                                {
                                  v490 = 0;
                                }

                                v482 = v617;
                                v491 = v600;
                                v492 = v490[38];
                                *(v610 + 296) = v492;
                                *(v610 + 304) = v490[44];
                                if (!v492 && *(v610 + 88))
                                {
                                  v512 = 0;
                                  v645 = v598[7];
                                  v513 = v598[5];
                                  v641 = v598[4];
                                  v642 = v513;
                                  v514 = v598[1];
                                  buf = *v598;
                                  v638 = v514;
                                  v515 = v598[3];
                                  v639 = v598[2];
                                  v640 = v515;
                                  v643 = 0;
                                  v644 = 0;
                                  v645.i64[0] = 0;
                                  do
                                  {
                                    v516 = 0;
                                    p_buf = &buf;
                                    do
                                    {
                                      v518 = 0;
                                      v519 = 0.0;
                                      v520 = v491;
                                      do
                                      {
                                        v521 = *v520;
                                        v520 += 4;
                                        v519 = v519 + *&p_buf[v518] * v521;
                                        v518 += 8;
                                      }

                                      while (v518 != 32);
                                      *&v629.i64[4 * v516++ + v512] = v519;
                                      p_buf += 32;
                                    }

                                    while (v516 != 4);
                                    ++v512;
                                    ++v491;
                                  }

                                  while (v512 != 4);
                                  v522 = 0;
                                  v523 = &v629;
                                  do
                                  {
                                    v525 = *v523;
                                    v524 = v523[1];
                                    v523 += 2;
                                    *(&v633 + v522) = vcvt_hight_f32_f64(vcvt_f32_f64(v525), v524);
                                    v522 += 16;
                                  }

                                  while (v522 != 64);
                                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v629, *(v610 + 160));
                                  v526 = v632;
                                  *v632 = v633;
                                  v526[1] = v634;
                                  v526[2] = v635;
                                  v526[3] = v636;
                                  ggl::BufferMemory::~BufferMemory(&v629);
                                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v629, *(v610 + 192));
                                  v527 = v632;
                                  *v632 = v633;
                                  v527[1] = v634;
                                  v527[2] = v635;
                                  v527[3] = v636;
                                  ggl::BufferMemory::~BufferMemory(&v629);
                                  if ((*(v610 + 156) & 1) == 0)
                                  {
                                    v528 = exp(*(v617 + 72) * 6.28318531 + -3.14159265);
                                    v529 = atan(v528);
                                    *(v610 + 136) = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v529 * 114.591559 + -90.0);
                                  }

                                  if (*(v610 + 88))
                                  {
                                    v530 = *(v610 + 80);
                                    do
                                    {
                                      v531 = (*(*(v488 + 56) + ((v530 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v530);
                                      v532 = *v531;
                                      v534 = **v531;
                                      v533 = *(*v531 + 8);
                                      if (v534 != v533)
                                      {
                                        v535 = 0;
                                        v536 = **v531;
                                        do
                                        {
                                          v535 += (*(v536 + 16) - *(v536 + 8)) >> 3;
                                          v536 += 248;
                                        }

                                        while (v536 != v533);
                                        v537 = *(v488 + 264);
                                        if (v535 > (v537 - *(v488 + 256)) >> 2)
                                        {
                                          break;
                                        }

                                        v601 = *v531;
                                        v538 = **v531;
                                        do
                                        {
                                          v539 = *(v538 + 8);
                                          v540 = *(v538 + 16);
                                          if (v539 != v540)
                                          {
                                            do
                                            {
                                              *(v539 + 4) = 0;
                                              v541 = *(v537 - 4);
                                              v537 -= 4;
                                              *v539 = v541;
                                              v539 += 8;
                                            }

                                            while (v539 != v540);
                                            *(v488 + 264) = v537;
                                          }

                                          v538 += 248;
                                        }

                                        while (v538 != v533);
                                        if (v534 == v533)
                                        {
                                          v532 = v601;
                                        }

                                        else
                                        {
                                          v599 = v531;
                                          v605 = v533;
                                          do
                                          {
                                            v534[238] = 0;
                                            v542 = *v534;
                                            if ((v542 - 1) <= 4)
                                            {
                                              md::OcclusionTest::_generateTestMethods[2 * v542](v534, v601, v488 + 128, v602);
                                              if (!v534[238])
                                              {
                                                v544 = *(v534 + 1);
                                                v543 = *(v534 + 2);
                                                if (v544 != v543)
                                                {
                                                  v607 = *(v534 + 2);
                                                  do
                                                  {
                                                    if (!*(v544 + 4))
                                                    {
                                                      v545 = *v544;
                                                      md::OcclusionQueryResource::initialize(*(v488 + 224) + 24 * *v544);
                                                      v488 = v610;
                                                      v615 = (*(v610 + 224) + 24 * v545);
                                                      v546 = *v615;
                                                      *(v546 + 129) = 0;
                                                      *(v546 + 132) = 0;
                                                      *(v546 + 136) = 0;
                                                      ++*(v546 + 128);
                                                      v547 = v490[35];
                                                      v548 = v490[34];
                                                      if (v547 == v548)
                                                      {
                                                        v549 = 0;
                                                      }

                                                      else
                                                      {
                                                        v549 = 32 * (v547 - v548) - 1;
                                                      }

                                                      v551 = v490[37];
                                                      v550 = v490[38];
                                                      v552 = v550 + v551;
                                                      if (v549 == v550 + v551)
                                                      {
                                                        if (v551 < 0x100)
                                                        {
                                                          v553 = v490[36];
                                                          v554 = v490[33];
                                                          if (v547 - v548 < (v553 - v554))
                                                          {
                                                            if (v553 != v547)
                                                            {
                                                              operator new();
                                                            }

                                                            operator new();
                                                          }

                                                          if (v553 == v554)
                                                          {
                                                            v555 = 1;
                                                          }

                                                          else
                                                          {
                                                            v555 = (v553 - v554) >> 2;
                                                          }

                                                          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v555);
                                                        }

                                                        v490[37] = v551 - 256;
                                                        buf.i64[0] = *v548;
                                                        v490[34] = v548 + 8;
                                                        std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v490 + 33, &buf);
                                                        v548 = v490[34];
                                                        v550 = v490[38];
                                                        v552 = v550 + v490[37];
                                                        v488 = v610;
                                                      }

                                                      v543 = v607;
                                                      v556 = *v615;
                                                      *(*&v548[(v552 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v552) = *v615;
                                                      v482 = v617;
                                                      if (*(&v556 + 1))
                                                      {
                                                        atomic_fetch_add_explicit((*(&v556 + 1) + 8), 1uLL, memory_order_relaxed);
                                                        v550 = v490[38];
                                                      }

                                                      v490[38] = v550 + 1;
                                                    }

                                                    v544 += 2;
                                                  }

                                                  while (v544 != v543);
                                                }
                                              }
                                            }

                                            v534 += 248;
                                          }

                                          while (v534 != v605);
                                          v531 = v599;
                                          v532 = *v599;
                                        }
                                      }

                                      *(v532 + 282) = 2;
                                      std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::OcclusionQuery> const&>((v488 + 96), v531);
                                      v557 = *(v488 + 80);
                                      v558 = *(*(*(v488 + 56) + ((v557 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v557 + 8);
                                      if (v558)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v558);
                                        v557 = *(v488 + 80);
                                      }

                                      v559 = *(v488 + 88) - 1;
                                      v530 = v557 + 1;
                                      *(v488 + 80) = v530;
                                      *(v488 + 88) = v559;
                                      if (v530 >= 0x200)
                                      {
                                        operator delete(**(v488 + 56));
                                        *(v488 + 56) += 8;
                                        v559 = *(v488 + 88);
                                        v530 = *(v488 + 80) - 256;
                                        *(v488 + 80) = v530;
                                      }
                                    }

                                    while (v559);
                                  }
                                }

                                v493 = *(v482 + 45);
                                if (v493[12] != v493[13] || v493[11])
                                {
                                  LOBYTE(v623) = 1;
                                }

                                goto LABEL_662;
                              }

                              do
                              {
                                v494 = *v485;
                                v485 += 5;
                              }

                              while (v494 != 0xD369A4D92C8FFE6CLL);
                              v496 = *(v485 - 2);
                              v495 = *(v485 - 1);
                              if (v495)
                              {
                                atomic_fetch_add_explicit(&v495->__shared_owners_, 1uLL, memory_order_relaxed);
                                std::__shared_weak_count::__release_shared[abi:nn200100](v495);
                              }

                              v497 = (**v496)(v496);
                              v498 = *(v610 + 56);
                              v499 = *(v610 + 64);
                              if (v499 == v498)
                              {
                                v504 = (v610 + 88);
                                v499 = *(v610 + 56);
                                v482 = v617;
                              }

                              else
                              {
                                v500 = *(v610 + 80);
                                v501 = v500 >> 8;
                                v502 = &v498[v500 >> 8];
                                v503 = (*v502 + 16 * v500);
                                v504 = (v610 + 88);
                                v505 = *(v498 + (((*(v610 + 88) + v500) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v610 + 88) + v500);
                                v482 = v617;
                                if (v503 != v505)
                                {
                                  do
                                  {
                                    md::OcclusionQuery::reset(*v503, (v610 + 128), 1);
                                    v503 += 2;
                                    if (v503 - *v502 == 4096)
                                    {
                                      v583 = v502[1];
                                      ++v502;
                                      v503 = v583;
                                    }
                                  }

                                  while (v503 != v505);
                                  v500 = *(v610 + 80);
                                  v498 = *(v610 + 56);
                                  v499 = *(v610 + 64);
                                  v501 = v500 >> 8;
                                }

                                if (v499 != v498)
                                {
                                  v506 = &v498[v501];
                                  v507 = *v506;
                                  v508 = *v506 + 16 * v500;
                                  v509 = *(v498 + (((*v504 + v500) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*v504 + v500);
                                  if (v508 != v509)
                                  {
                                    do
                                    {
                                      v510 = *(v508 + 8);
                                      if (v510)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v510);
                                        v507 = *v506;
                                      }

                                      v508 += 16;
                                      if (v508 - v507 == 4096)
                                      {
                                        v511 = v506[1];
                                        ++v506;
                                        v507 = v511;
                                        v508 = v511;
                                      }
                                    }

                                    while (v508 != v509);
                                    v498 = *(v610 + 56);
                                    v499 = *(v610 + 64);
                                  }
                                }
                              }

                              *v504 = 0;
                              v560 = v499 - v498;
                              if (v560 >= 3)
                              {
                                do
                                {
                                  operator delete(*v498);
                                  v561 = *(v610 + 64);
                                  v498 = (*(v610 + 56) + 8);
                                  *(v610 + 56) = v498;
                                  v560 = (v561 - v498) >> 3;
                                }

                                while (v560 > 2);
                              }

                              if (v560 == 1)
                              {
                                v562 = 128;
LABEL_646:
                                *(v610 + 80) = v562;
                              }

                              else if (v560 == 2)
                              {
                                v562 = 256;
                                goto LABEL_646;
                              }

                              v563 = v610;
                              v564 = *(v610 + 96);
                              for (jj = *(v610 + 104); v564 != jj; v563 = v610)
                              {
                                md::OcclusionQuery::reset(*v564, (v563 + 128), 1);
                                v564 += 2;
                              }

                              std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v610 + 96));
                              v566 = md::FrameGraph::renderQueueForPass(*(v497 + 8), *(v563 + 288));
                              if (v566)
                              {
                                v567 = *(*(v566 + 16) + 8 * *(v563 + 289));
                              }

                              else
                              {
                                v567 = 0;
                              }

                              v568 = v563;
                              v569 = v567[34];
                              v570 = v567[35];
                              if (v570 == v569)
                              {
                                v575 = v567 + 38;
                                v570 = v567[34];
                              }

                              else
                              {
                                v571 = v567[37];
                                v572 = &v569[v571 >> 8];
                                v573 = *v572;
                                v574 = *v572 + 16 * v571;
                                v575 = v567 + 38;
                                v576 = *(v569 + (((v567[38] + v571) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v567 + 304) + v571);
                                if (v574 != v576)
                                {
                                  v584 = *v572;
                                  v585 = &v569[v571 >> 8];
                                  v586 = v574;
                                  do
                                  {
                                    v587 = *v586;
                                    v586 += 16;
                                    --*(v587 + 128);
                                    if (v586 - v584 == 4096)
                                    {
                                      v588 = v585[1];
                                      ++v585;
                                      v584 = v588;
                                      v586 = v588;
                                    }
                                  }

                                  while (v586 != v576);
                                  if (v574 != v576)
                                  {
                                    v483 = v608;
                                    do
                                    {
                                      v589 = *(v574 + 8);
                                      if (v589)
                                      {
                                        std::__shared_weak_count::__release_shared[abi:nn200100](v589);
                                        v573 = *v572;
                                      }

                                      v574 += 16;
                                      if (v574 - v573 == 4096)
                                      {
                                        v590 = v572[1];
                                        ++v572;
                                        v573 = v590;
                                        v574 = v590;
                                      }

                                      v482 = v617;
                                    }

                                    while (v574 != v576);
                                    v569 = v567[34];
                                    v570 = v567[35];
                                  }
                                }

                                v568 = v610;
                              }

                              *v575 = 0;
                              v577 = v570 - v569;
                              if (v577 >= 3)
                              {
                                do
                                {
                                  operator delete(*v569);
                                  v578 = v567[35];
                                  v569 = (v567[34] + 8);
                                  v567[34] = v569;
                                  v577 = (v578 - v569) >> 3;
                                }

                                while (v577 > 2);
                              }

                              if (v577 == 1)
                              {
                                v579 = 128;
LABEL_660:
                                v567[37] = v579;
                              }

                              else if (v577 == 2)
                              {
                                v579 = 256;
                                goto LABEL_660;
                              }

                              *(v568 + 296) = 0;
                              *(v568 + 304) = 0;
                              goto LABEL_662;
                            }

                            v437 = v617;
                            v438 = &v625 + 1;
                            BYTE1(v625) = (*(**(v617 + 30) + 104))(*(v617 + 30)) ^ 1;
                            v439 = *(v437 + 3413) | atomic_exchange(v437 + 3412, 0) & 1;
                            *(v617 + 3413) = v439;
                            if (!v367)
                            {
                              v581 = *(v617 + 826) != *(v617 + 403) || *(v617 + 825) != *(v617 + 824) - 1;
                              if (v368 & 1) != 0 || (LOBYTE(v625))
                              {
                                goto LABEL_686;
                              }

                              if (*(v617 + 435))
                              {
                                if (v439 & 1) != 0 || (*(v617 + 3038) & 1) != 0 || (*(v617 + 3039))
                                {
                                  goto LABEL_686;
                                }

                                if (v581 || (BYTE1(v625) & 1) != 0)
                                {
                                  goto LABEL_720;
                                }
                              }

                              else if (*(v617 + 3038) & 1) != 0 || ((*(v617 + 3039) | v581) & 1) != 0 || (BYTE1(v625))
                              {
                                goto LABEL_686;
                              }

                              v432 = 0;
                              goto LABEL_689;
                            }

                            if ((v368 & 1) != 0 || (*(v617 + 3651) & 1) != 0 || !*(v617 + 435))
                            {
                              goto LABEL_686;
                            }

                            if ((v439 & 1) != 0 || (*(v617 + 3038) & 1) != 0 || *(v617 + 3039) == 1)
                            {
                              if (BYTE1(v625))
                              {
                                if (*(v617 + 3039) == 1)
                                {
                                  BYTE1(v625) = 0;
                                  LOBYTE(v623) = 1;
                                  v440 = LOBYTE(v625);
                                  goto LABEL_685;
                                }

                                v432 = 0;
                                LOBYTE(v623) = 1;
                                *(v617 + 3038) = 1;
LABEL_690:
                                BYTE2(v625) = v432;
                                if (v369)
                                {
                                  v369 = 1;
                                }

                                else
                                {
                                  v369 = *(v437 + 3040);
                                }

                                BYTE3(v625) = v369 & 1;
                                *(v437 + 3040) = 0;
                                if ((LOBYTE(v625) & 1) == 0)
                                {
                                  goto LABEL_694;
                                }

                                goto LABEL_698;
                              }

                              v440 = LOBYTE(v625);
LABEL_685:
                              *(v617 + 3038) |= v440 & 1;
LABEL_686:
                              v582 = *(v437 + 435);
                              if (v582)
                              {
                                (*(*v582 + 40))(v582);
                              }

                              v438 = v437 + 3413;
                              *(v437 + 1519) = 0;
                              v432 = 1;
LABEL_689:
                              *v438 = 0;
                              goto LABEL_690;
                            }

                            *(v617 + 3038) |= (LOBYTE(v625) | BYTE1(v625)) & 1;
LABEL_720:
                            v591.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
                            if ((*(**(v617 + 435) + 56))(*(v617 + 435)))
                            {
                              if (*(v617 + 3019))
                              {
                                v593 = *(v617 + 459);
                                v594 = (v617 + 12 * *(v617 + 3019) + 3728);
                                if (!*(v617 + 459))
                                {
                                  goto LABEL_734;
                                }

                                if (v593 != 1)
                                {
                                  if (v593 == 2)
                                  {
                                    v594 = (v617 + 12 * *(v617 + 3019) + 3732);
                                    goto LABEL_734;
                                  }

                                  v597 = 200000000;
LABEL_735:
                                  v437 = v617;
                                  if (v591.__d_.__rep_ - *(v617 + 415) >= v597)
                                  {
                                    goto LABEL_686;
                                  }

LABEL_740:
                                  v432 = 0;
                                  if (v367)
                                  {
                                    goto LABEL_690;
                                  }

                                  goto LABEL_689;
                                }

                                v594 = (v617 + 12 * *(v617 + 3019) + 3736);
                              }

                              else
                              {
                                v594 = (v617 + 3728);
                              }

LABEL_734:
                              v597 = 1000000 * (*v594 + 100);
                              goto LABEL_735;
                            }

                            *(v617 + 415) = v591;
                            if (*(v617 + 3019))
                            {
                              v595 = *(v617 + 459);
                              v596 = (v617 + 12 * *(v617 + 3019) + 3728);
                              if (!*(v617 + 459))
                              {
                                goto LABEL_738;
                              }

                              if (v595 != 1)
                              {
                                if (v595 == 2)
                                {
                                  v596 = (v617 + 12 * *(v617 + 3019) + 3732);
                                  goto LABEL_738;
                                }

                                v592.n128_u64[0] = 0x3FB999999999999ALL;
LABEL_739:
                                v437 = v617;
                                (*(**(v617 + 435) + 24))(*(v617 + 435), 0, v592);
                                goto LABEL_740;
                              }

                              v596 = (v617 + 12 * *(v617 + 3019) + 3736);
                            }

                            else
                            {
                              v596 = (v617 + 3728);
                            }

LABEL_738:
                            v592.n128_u32[0] = *v596;
                            v592.n128_f64[0] = v592.n128_u64[0] * 0.001;
                            goto LABEL_739;
                          }

                          goto LABEL_260;
                        }

                        if (*(v273 + 132))
                        {
LABEL_275:
                          LOBYTE(v267) = v267 + 1;
                          v268 = 1;
                        }

                        else
                        {
LABEL_276:
                          v271 = 1;
                        }

                        v269 += 2;
                        if (v269 == v270)
                        {
                          v274 = v271 ^ 1;
                          goto LABEL_281;
                        }
                      }
                    }

                    if (v139)
                    {
                      goto LABEL_194;
                    }
                  }

                  else if (v139 || (*(a1 + 440) & 1) == 0)
                  {
                    goto LABEL_194;
                  }

                  if (*(a1 + 214) <= 0.0)
                  {
                    goto LABEL_194;
                  }

                  goto LABEL_190;
                }
              }

              else
              {
                if ((*(a1 + 440) & 1) == 0 && *(v81 + 18) != 1)
                {
                  *(a1 + 441) = 0;
                  goto LABEL_175;
                }

                *(a1 + 441) = v147 < 1.0;
                *(a1 + 442) = v147 < 20.0 || v149 < 15.0;
                if (*(v81 + 18) != 1)
                {
                  goto LABEL_175;
                }

                v161 = 0.0;
                if (v147 < 1.0)
                {
                  v162 = 0;
                  v163 = 0.0;
                  do
                  {
                    v163 = v163 + *(v93 + v162) * *(v93 + v162);
                    v162 += 8;
                  }

                  while (v162 != 24);
                  v164 = asin(213678.089 / sqrt(v163));
                  v161 = cos(1.22173048 - v164) * -6378137.0;
                }
              }

              *(a1 + 90) = v161;
              goto LABEL_175;
            }
          }
        }

        v146 = 1;
        goto LABEL_151;
      }

      if (v23)
      {
        v83 = *v23;
        *(a1 + 456) = *v23;
        if ((v83 & 1) != 0 || *(a1 + 448) == 1)
        {
          *(a1 + 121) = v23[5] * v23[4];
          v82 = *(v23 + 2);
          goto LABEL_85;
        }
      }

      else
      {
        *(a1 + 456) = 0;
      }

      v82 = 0;
      *(a1 + 121) = 0;
      goto LABEL_85;
    }
  }

  if (v26 == v27)
  {
    goto LABEL_34;
  }

  v32 = v26;
  while (*v32 != 25)
  {
    v32 += 16;
    if (v32 == v27)
    {
      goto LABEL_34;
    }
  }

  if (v32 == v27)
  {
LABEL_34:
    v31 = 0;
  }

  else
  {
    v31 = *(v32 + 8) != 0;
  }

  goto LABEL_35;
}

void sub_1B2AB1ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::recursive_mutex::unlock((v11 + 24));
  v13 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v13) + 32) + 96), v13 - a11);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::__deallocate_node(*(a1 + 16));
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

void gdc::Timer::cancel(gdc::Timer *this)
{
  std::mutex::lock((this + 16));
  v2 = *(this + 10);
  if (v2 && *(this + 96) == 1)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    *(this + 96) = 0;
    *(this + 1) = 0xBFF0000000000000;
  }

  std::mutex::unlock((this + 16));
}

void *gdc::Context::get<md::HikingContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x92F3DC114CADB853);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x92F3DC114CADB853)
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

void md::LabelLayoutContext::coordinateEyePos(md::LabelLayoutContext *this, md::LabelLayoutContext *a2)
{
  if (*(a2 + 8) == 1)
  {
    md::LabelLayoutContext::mercatorEyePos(a2);
    v4 = v3;
    v6 = v5 * 6.28318531;
    v8 = exp(v7 * 6.28318531 + -3.14159265);
    v14 = atan(v8);
    v9 = fmod(v6, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531);
    v11.f64[0] = v14;
    v11.f64[1] = v10;
    *this = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v11);
    *(this + 2) = v4;
  }

  else
  {
    v15[0] = md::LabelLayoutContext::geocentricEyePos(a2);
    v15[1] = v12;
    v15[2] = v13;
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(v15, this);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransferStyleAttributeRasterSet>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransferStyleAttributeRasterSet>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[280];
}

void md::LabelLayoutContext::mercatorEyePos(md::LabelLayoutContext *this)
{
  if (*(this + 8) != 1)
  {
    v4[0] = md::LabelLayoutContext::geocentricEyePos(this);
    v4[1] = v1;
    v4[2] = v2;
    memset(v5, 0, sizeof(v5));
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v4, v5);
    v3 = tan(v5[0] * 0.5 + 0.785398163);
    log(v3);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31TransferStyleAttributeRasterSetEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40D28;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31TransferStyleAttributeRasterSetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40D28;
  a2[1] = v2;
  return result;
}

uint64_t md::LayoutContext::labelIntegerZoom(md::LayoutContext *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 736))
  {
    goto LABEL_7;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "_frameState.has_value()";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLayoutContext.mm";
    v10 = 1024;
    v11 = 92;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Requesting frameState on context in undefined state: Assertion with expression - %s : Failed in file - %s line - %i", &v6, 0x1Cu);
  }

  if (*(this + 736))
  {
LABEL_7:
    v3 = floor((*(this + 52) * 1000.0) + 0.5) * 0.001;
    v4 = v3;
    if (v3 >= 23)
    {
      LOBYTE(v4) = 23;
    }

    return v4;
  }

  else
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    return gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileUnitsPerMeter>();
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileUnitsPerMeter>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileUnitsPerMeter>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[289];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17TileUnitsPerMeterEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40DB0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17TileUnitsPerMeterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40DB0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileShadowConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileShadowConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[285];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28TileShadowConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53BB8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::CompositeLabeler::startFrameLayout(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 8);
  for (i = *(result + 16); v3 != i; result = (*(*v7 + 24))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28TileShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53BB8;
  a2[1] = v2;
  return result;
}

void md::StandardLabeler::startFrameLayout(md::StandardLabeler *this, const md::LayoutContext *a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  *(this + 91) = 0;
  *(this + 94) = a3.n128_u32[0];
  *(this + 185) = 0;
  v5 = *(this + 4);
  v6 = *(v5 + 72);
  v7 = (v5 + 80);
  if (v6 == (v5 + 80))
  {
    v17 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v6[24];
      if (v9)
      {
        v10 = *(v9 + 52);
        if ((v10 - 1) < 2)
        {
          v14 = *(v9 + 16);
          if (v14 < 1.0)
          {
            *(v9 + 16) = fminf((v3 / *(v9 + 24)) + v14, 1.0);
            *(v9 + 20) = (*(v9 + 32))();
            if (*(v9 + 16) >= 1.0)
            {
              *(v9 + 16) = 1065353216;
              *(v9 + 20) = (*(v9 + 32))(1.0);
              *(v9 + 52) = 2;
              a3.n128_u64[0] = *(*(*v9 + 424) + 336);
              *(v9 + 104) = a3.n128_u64[0];
            }
          }
        }

        else
        {
          if (*(v9 + 52))
          {
            v11 = v10 == 3;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            v12 = *(v9 + 16);
            if (v12 > 0.0)
            {
              *(v9 + 16) = fmaxf(v12 - (v3 / *(v9 + 28)), 0.0);
              *(v9 + 20) = (*(v9 + 40))();
              if (*(v9 + 16) <= 0.0)
              {
                *(v9 + 16) = 0;
                *(v9 + 20) = (*(v9 + 40))(0.0);
                *(v9 + 52) = 0;
              }
            }
          }
        }

        v13 = (*(v9 + 52) & 0xFD) == 1;
      }

      else
      {
        v13 = 0;
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
          v11 = *v16 == v6;
          v6 = v16;
        }

        while (!v11);
      }

      v8 |= v13;
      v6 = v16;
    }

    while (v16 != v7);
    v17 = *(this + 370);
  }

  *(this + 370) = v17 | v8 & 1;
  v19 = *(this + 13);
  v18 = *(this + 14);
  while (v19 != v18)
  {
    v20 = *v19;
    v19 += 2;
    a3.n128_f32[0] = v3;
    md::Label::animate(v20, a3);
  }
}

uint64_t md::MapNavLabeler::startFrameLayout(uint64_t result, float a2)
{
  *(result + 716) = a2;
  *(result + 824) = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23SupportsStylizedShadingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FC80;
  a2[1] = v2;
  return result;
}

void gss::ClientStyleState<gss::PropertyID>::setStateWithClientStyleState(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 264));
  if (v2 != *(a2 + 264))
  {
    v12 = 0;
    *v13 = 0;
    *&v13[8] = 256;
    v10 = 0;
    *v11 = 0;
    *&v11[8] = 256;
    geo::read_lock_guard::read_lock_guard(&v9, (a2 + 16));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(&v12, a2 + 216);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(&v10, a2 + 240);
    v5 = *(a2 + 264);
    geo::read_write_lock::unlock(v9);
    geo::write_lock_guard::write_lock_guard(&v9, (a1 + 16));
    if ((a1 + 216) != &v12)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 216));
      *(a1 + 216) = v12;
      *(a1 + 224) = *v13;
      *(a1 + 228) = *&v13[4];
      *(a1 + 230) = *&v13[6];
      *&v13[8] = 256;
      v12 = 0;
      *v13 = 0;
    }

    if ((a1 + 240) != &v10)
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 240));
      *(a1 + 240) = v10;
      *(a1 + 248) = *v11;
      *(a1 + 252) = *&v11[4];
      *(a1 + 254) = *&v11[6];
      *&v11[8] = 256;
      v10 = 0;
      *v11 = 0;
    }

    atomic_store(v5, (a1 + 264));
    geo::write_lock_guard::~write_lock_guard(&v9);
    v6 = atomic_load((a2 + 272));
    atomic_store(v6, (a1 + 272));
    v7 = COERCE_FLOAT(atomic_load((a1 + 272)));
    if (v7 <= 0.0)
    {
      hasTargetStyleAttributes = gss::ClientStyleState<gss::PropertyID>::hasTargetStyleAttributes(a1);
    }

    else
    {
      hasTargetStyleAttributes = 1;
    }

    atomic_store(hasTargetStyleAttributes, (a1 + 270));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v10);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v12);
  }
}

void sub_1B2AB2C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va1);
  _Unwind_Resume(a1);
}

void sub_1B2AB2C6C(uint64_t a1, ...)
{
  va_start(va, a1);
  geo::write_lock_guard::~write_lock_guard(va);
  JUMPOUT(0x1B2AB2C54);
}

void md::LabelManager::flushCommandQueue(md::LabelManager *this)
{
  if (*(this + 3418) == 1)
  {
    *(this + 3418) = 0;
    md::FontTrackingCache::updateForDisplay(*(this + 39));
    (*(**(this + 30) + 56))(*(this + 30));
  }

  md::LabelManager::flushCommands(this);
}

void md::FontTrackingCache::updateForDisplay(md::FontTrackingCache *this)
{
  if (*(this + 124) == 1)
  {
    for (i = *(this + 4); i; i = *i)
    {
      std::unordered_map<std::string,std::unique_ptr<md::FontTrackingScaleInfo>,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::insert_or_assign[abi:nn200100]<std::unique_ptr<md::FontTrackingScaleInfo>>(this + 16, i + 1, i + 5);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(this + 8);
    *(this + 124) = 0;
  }
}

std::__shared_weak_count *md::MapNavLabeler::synchStagingWithDisplay(md::MapNavLabeler *this)
{
  v20 = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 77);
  v2 = *(this + 82);
  v3 = *(this + 81);
  if (v2 != v3)
  {
    v4 = v2 - 3;
    v5 = v2 - 3;
    v6 = v2 - 3;
    do
    {
      v7 = *v6;
      v6 -= 3;
      (*v7)(v5);
      v4 -= 3;
      v8 = v5 == v3;
      v5 = v6;
    }

    while (!v8);
  }

  *(this + 82) = v3;
  if (*(this + 13))
  {
    v9 = *(this + 90);
    if (*(v9 + 24))
    {
      v10 = *(v9 + 184);
      v11 = *(v9 + 192);
      if (v10 != v11)
      {
        v12 = *(v9 + 184);
        do
        {
          v13 = *v12;
          v12 += 2;
          md::NavLabel::updateNavDisplayState(v13);
          std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100]((this + 616), v10);
          v10 = v12;
        }

        while (v12 != v11);
        v9 = *(this + 90);
      }

      *(this + 712) = *(v9 + 252);
      std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::vector[abi:nn200100](&v18, v9 + 152);
      std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const*>,std::__wrap_iter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const*>>(this + 81, *(this + 82), v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
      v17 = &v18;
      std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v17);
    }
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 85);
  if (((*(*this + 360))(this) & 1) != 0 || *(*(*(this + 3) + 336) + 163) << 16 == 393216 || (result = (*(*this + 384))(this), result))
  {
    [*(this + 7) synchStagingWithDisplay];
    result = [*(this + 7) visibleSigns];
    v15 = result->__vftable;
    shared_owners = result->__shared_owners_;
    while (v15 != shared_owners)
    {
      md::NavLabel::updateNavDisplayState(*v15);
      result = std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100]((this + 680), v15);
      v15 += 2;
    }
  }

  return result;
}

void sub_1B2AB2F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  a9 = &a10;
  std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabeler::synchStagingWithDisplay(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 56))(v3);
  }

  return this;
}

void md::StandardLabeler::synchStagingWithDisplay(md::StandardLabeler *this)
{
  v166[1] = *MEMORY[0x1E69E9840];
  v3 = *(this + 13);
  v4 = *(this + 14);
  v2 = (this + 104);
  v5 = *(this + 6);
  v163 = 0;
  v164 = 0;
  v165 = 0;
  if (v3 != v4)
  {
    while (1)
    {
      if (*(*v3 + 844) != 2)
      {
        v6 = atomic_load(*v3 + 1331);
        if ((v6 & 1) == 0)
        {
          v7 = *v3;
          *(v7 + 1340) = 0;
          if (!*(v7 + 1152))
          {
            break;
          }
        }
      }

      v3 += 2;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_7;
      }
    }

    v121 = v164;
    if (v164 >= v165)
    {
      v124 = (v164 - v163) >> 4;
      v125 = v124 + 1;
      if ((v124 + 1) >> 60)
      {
LABEL_253:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v126 = v165 - v163;
      if ((v165 - v163) >> 3 > v125)
      {
        v125 = v126 >> 3;
      }

      if (v126 >= 0x7FFFFFFFFFFFFFF0)
      {
        v127 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v127 = v125;
      }

      v158 = v166;
      if (v127)
      {
        v128 = mdm::zone_mallocator::instance(this);
        v129 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v128, v127);
        v7 = *v3;
      }

      else
      {
        v129 = 0;
      }

      v130 = &v129[16 * v124];
      *v130 = v7;
      v131 = v3[1];
      *(v130 + 1) = v131;
      if (v131)
      {
        atomic_fetch_add_explicit(v131 + 1, 1uLL, memory_order_relaxed);
      }

      v132 = &v129[16 * v127];
      v123 = v130 + 16;
      v133 = &v130[-(v164 - v163)];
      memcpy(v133, v163, v164 - v163);
      v134 = v163;
      v135 = v165;
      v163 = v133;
      v164 = v123;
      v165 = v132;
      v156.__shared_weak_owners_ = v134;
      v157 = v135;
      v156.__vftable = v134;
      v156.__shared_owners_ = v134;
      std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v156);
    }

    else
    {
      *v164 = v7;
      v122 = v3[1];
      *(v121 + 1) = v122;
      if (v122)
      {
        atomic_fetch_add_explicit(v122 + 1, 1uLL, memory_order_relaxed);
      }

      v123 = v121 + 16;
    }

    v164 = v123;
    v136 = *v3;
    if (*(*v3 + 1339))
    {
      *(v136 + 1339) = 0;
      v136 = md::Label::clearAnimation(v136);
    }

    if (v3 != v4)
    {
      for (i = v3 + 2; i != v4; i += 2)
      {
        v138 = *i;
        if (*(*i + 844) == 2 || (v139 = atomic_load(v138 + 1331), v138 = *i, (v139 & 1) != 0) || (*(v138 + 1340) = 0, *(v138 + 1152)))
        {
          v140 = i[1];
          *i = 0;
          i[1] = 0;
          v136 = v3[1];
          *v3 = v138;
          v3[1] = v140;
          if (v136)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v136);
          }

          v3 += 2;
        }

        else
        {
          v141 = v164;
          if (v164 >= v165)
          {
            v144 = (v164 - v163) >> 4;
            v145 = v144 + 1;
            if ((v144 + 1) >> 60)
            {
              goto LABEL_253;
            }

            v146 = v165 - v163;
            if ((v165 - v163) >> 3 > v145)
            {
              v145 = v146 >> 3;
            }

            if (v146 >= 0x7FFFFFFFFFFFFFF0)
            {
              v147 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v147 = v145;
            }

            v158 = v166;
            if (v147)
            {
              v148 = mdm::zone_mallocator::instance(v136);
              v149 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v148, v147);
              v138 = *i;
            }

            else
            {
              v149 = 0;
            }

            v150 = &v149[16 * v144];
            *v150 = v138;
            v151 = i[1];
            v150[1] = v151;
            if (v151)
            {
              atomic_fetch_add_explicit(v151 + 1, 1uLL, memory_order_relaxed);
            }

            v152 = &v149[16 * v147];
            v143 = (v150 + 2);
            v153 = v150 - (v164 - v163);
            memcpy(v153, v163, v164 - v163);
            v154 = v163;
            v155 = v165;
            v163 = v153;
            v164 = v143;
            v165 = v152;
            v156.__shared_weak_owners_ = v154;
            v157 = v155;
            v156.__vftable = v154;
            v156.__shared_owners_ = v154;
            std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v156);
          }

          else
          {
            *v164 = v138;
            v142 = i[1];
            *(v141 + 1) = v142;
            if (v142)
            {
              atomic_fetch_add_explicit(v142 + 1, 1uLL, memory_order_relaxed);
            }

            v143 = v141 + 16;
          }

          v164 = v143;
          v136 = *i;
          if (*(*i + 1339))
          {
            *(v136 + 1339) = 0;
            v136 = md::Label::clearAnimation(v136);
          }
        }
      }
    }
  }

LABEL_7:
  v8 = std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase(v2, v3, *(this + 14));
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v9 = *(this + 9);
  for (j = *(this + 10); v9 != j; ++v9)
  {
    v11 = *v9;
    if (*(*v9 + 844) == 2)
    {
      if ((*(v11 + 1339) & 1) == 0)
      {
        v12 = v160;
        if (v160 >= v161)
        {
          v15 = (v160 - v159) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            goto LABEL_253;
          }

          v17 = v161 - v159;
          if ((v161 - v159) >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          v158 = &v162;
          if (v18)
          {
            v19 = mdm::zone_mallocator::instance(v8);
            v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v19, v18);
          }

          else
          {
            v20 = 0;
          }

          v21 = &v20[16 * v15];
          v22 = *v9;
          *v21 = *v9;
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v23 = &v20[16 * v18];
          v14 = (v21 + 1);
          v24 = (v21 - (v160 - v159));
          memcpy(v24, v159, v160 - v159);
          v25 = v159;
          v26 = v161;
          v159 = v24;
          v160 = v14;
          v161 = v23;
          v156.__shared_weak_owners_ = v25;
          v157 = v26;
          v156.__vftable = v25;
          v156.__shared_owners_ = v25;
          std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v156);
        }

        else
        {
          *v160 = v11;
          v13 = *(v9 + 1);
          *(v12 + 1) = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = v12 + 16;
        }

        v160 = v14;
        if ((*(*v9 + 1339) & 1) == 0)
        {
          *(*v9 + 1339) = 1;
        }

        v8 = std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::Label> const&>(v2, v9);
        v11 = *v9;
      }

      v27 = *(v11 + 1340);
      *(v11 + 1340) = 1;
      if ((v27 & 1) == 0)
      {
        v8 = md::Label::clearAnimation(v11);
        if ((*(v11 + 1371) & 1) == 0)
        {
          v8 = *(v11 + 272);
          if (v8)
          {
            *(v8 + 560) = 1;
            v8 = (*(*v8 + 96))(v8);
          }
        }
      }
    }
  }

  v28 = v163;
  v29 = v164;
  if (v163 == v164)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0;
    do
    {
      if (*(*v28 + 1342) == 1)
      {
        v31 = *(v5 + 576);
        v32 = *(v5 + 584);
        if (v31 != v32)
        {
          while (*v31 != *v28)
          {
            v31 += 2;
            if (v31 == v32)
            {
              v31 = *(v5 + 584);
              goto LABEL_42;
            }
          }

          if (v31 != v32)
          {
            v33 = v31 + 2;
            if (v31 + 2 != v32)
            {
              do
              {
                v34 = *v33;
                if (*v33 != *v28)
                {
                  v35 = v33[1];
                  *v33 = 0;
                  v33[1] = 0;
                  v36 = v31[1];
                  *v31 = v34;
                  v31[1] = v35;
                  if (v36)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
                  }

                  v31 += 2;
                }

                v33 += 2;
              }

              while (v33 != v32);
              v32 = *(v5 + 584);
            }
          }
        }

LABEL_42:
        std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase((v5 + 576), v31, v32);
        v30 = 1;
      }

      v28 += 16;
    }

    while (v28 != v29);
  }

  v37 = v159;
  v38 = v160;
  while (v37 != v38)
  {
    if (*(*v37 + 1342) == 1)
    {
      std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::Label> const&>((v5 + 576), v37);
      v30 = 1;
    }

    ++v37;
  }

  if (v30)
  {
LABEL_60:
    ++*(v5 + 748);
  }

  else
  {
    for (k = *(v5 + 576); k != *(v5 + 584); k += 16)
    {
      if (*(*k + 1374) == 1)
      {
        goto LABEL_60;
      }
    }
  }

  if (*(v5 + 744) >= 0x14u)
  {
    *(v5 + 744) = 0;
    md::LabelPool::pruneCustomFeatureLabels(v5);
  }

  v156.__vftable = &v159;
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v156);
  v156.__vftable = &v163;
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v156);
  v39 = *(this + 13);
  v40 = *(this + 14);
  if (v39 != v40)
  {
    while (1)
    {
      v41 = *v39;
      v42 = *(this + 3);
      if (*(*v39 + 1371) != 1)
      {
        if (*(v41 + 844) != 2)
        {
          if (*(v41 + 858) & 1) != 0 || (v62 = atomic_load((v41 + 1328)), (v62 & 1) == 0) && (v63 = atomic_load((v41 + 1331)), (v63))
          {
            *(v41 + 1338) = 0;
            *(v41 + 858) = 0;
            *(v41 + 1340) = 0;
          }
        }

        goto LABEL_71;
      }

      if ((*(v41 + 1373) & 1) == 0)
      {
        v43 = *(v41 + 296);
        if (!v43 || (*(*v43 + 632))(v43))
        {
          break;
        }
      }

LABEL_71:
      *(v41 + 1165) = *(v41 + 860);
      *(v41 + 1124) = *(v41 + 768);
      if (*(v41 + 776) == 1)
      {
        if (*(v42 + 3632))
        {
          v45 = *(v41 + 1366) == 1 && *(v41 + 104) == *(v42 + 3640);
        }

        else
        {
          v45 = 1;
        }

        *(v41 + 1156) = v45;
      }

      else
      {
        *(v41 + 1156) = 0;
      }

      *(v41 + 1154) = *(v41 + 846);
      v46 = 1.0;
      if (*(v41 + 840) == 1)
      {
        v46 = *(v41 + 836);
      }

      *(v41 + 1144) = v46;
      *(v41 + 1160) = *(v41 + 851);
      v47 = *(v41 + 728);
      v48 = *(v41 + 736);
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      *(v41 + 1104) = v47;
      v49 = *(v41 + 1112);
      *(v41 + 1112) = v48;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }

      v50 = (v41 + 496);
      *(v41 + 1158) |= *(v41 + 850);
      *(v41 + 850) = 0;
      *(v41 + 1163) = *(v41 + 859);
      v51 = 3;
      do
      {
        v50[53] = *v50;
        ++v50;
        --v51;
      }

      while (v51);
      v52 = (v41 + 544);
      v53 = 3;
      do
      {
        v52[50] = *v52;
        ++v52;
        --v53;
      }

      while (v53);
      v54 = (v41 + 568);
      v55 = 3;
      do
      {
        v54[50] = *v54;
        ++v54;
        --v55;
      }

      while (v55);
      *(v41 + 1064) = *(v41 + 680);
      if ((*(v41 + 1372) & 1) == 0)
      {
        v56 = (v41 + 592);
        v57 = 3;
        do
        {
          v56[50] = *v56;
          ++v56;
          --v57;
        }

        while (v57);
        *(v41 + 1136) = *(v41 + 796);
      }

      *(v41 + 112) = *(v41 + 664);
      if (*(v41 + 1382) == 1)
      {
        *(v41 + 1382) = 0;
        v58 = *(v41 + 1080);
        if (*(v41 + 704))
        {
          if (!v58)
          {
            operator new();
          }

          v59 = *(v41 + 704);
          *v58 = *v59;
          *(v58 + 8) = *(v59 + 8);
          *(v58 + 16) = *(v59 + 16);
        }

        else
        {
          *(v41 + 1080) = 0;
          if (v58)
          {
            MEMORY[0x1B8C62190](v58, 0x1000C4057661CB1);
          }
        }
      }

      if (*(v41 + 1381) == 1)
      {
        *(v41 + 1381) = 0;
        if (*(v41 + 696))
        {
          operator new();
        }

        v61 = *(v41 + 1072);
        *(v41 + 1072) = 0;
        if (v61)
        {
          MEMORY[0x1B8C62190](v61, 0x1000C4015B1EB14);
        }
      }

      v60 = *(v41 + 272);
      if (v60)
      {
        (*(*v60 + 112))(v60);
      }

      v39 += 2;
      if (v39 == v40)
      {
        return;
      }
    }

    *(v41 + 1371) = 0;
    *(v41 + 1374) = *(v41 + 1342);
    if (*(v41 + 844) == 2)
    {
      v44 = 1;
    }

    else
    {
      v44 = *(v41 + 858);
    }

    v64 = *(v41 + 264);
    v64[560] = v44 & 1;
    (*(*v64 + 96))(v64);
    md::Label::clearAnimatingPart(v41);
    if (*(v41 + 1264))
    {
      std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100]((v41 + 1264), 0);
      v65 = *(v41 + 272);
      if (v65)
      {
        (*(*v65 + 192))(v65);
      }
    }

    if (*(v41 + 857) == 1)
    {
      *(v41 + 857) = 0;
      atomic_store(1u, (v41 + 1331));
    }

    else if (*(v41 + 858) == 1)
    {
      *(v41 + 858) = 0;
      *(v41 + 1162) = 1;
    }

    v66 = *(v41 + 712);
    v67 = *(v41 + 720);
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
    }

    *(v41 + 1088) = v66;
    v68 = *(v41 + 1096);
    *(v41 + 1096) = v67;
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v68);
    }

    *(v41 + 1335) = 1;
    v69 = atomic_load((v41 + 1328));
    if ((v69 & 1) == 0)
    {
      *(v41 + 1301) = *(*(v41 + 264) + 561);
    }

    if (*(v42 + 3416) != 1 || *(v41 + 1343) == 1)
    {
      *(v41 + 1375) = 1;
    }

    if (!*(v41 + 1152) || (v70 = *(v41 + 272)) == 0 || (v71 = (*(*v70 + 720))(v70), v71))
    {
      v73 = *(v41 + 272);
      *(v41 + 272) = 0;
      if (v73)
      {
        (*(*v73 + 8))(v73);
      }

      v71 = md::Label::clearAnimatingPart(v41);
      if (*(v41 + 1375) != 4 || *(v41 + 1376) == 5)
      {
        *(v41 + 1375) = 1;
      }
    }

    if (*(v42 + 3407) == 1)
    {
      v74 = *(v41 + 1375);
    }

    else
    {
      v71 = *(v41 + 296);
      if (v71)
      {
        v71 = (*(*v71 + 688))(v71);
        if (v71)
        {
          v71 = md::Label::stopStyleAnimation(v41);
        }
      }

      v74 = *(v41 + 1375);
      if (v74 == 2)
      {
        *(v41 + 1375) = 1;
        goto LABEL_160;
      }
    }

    if (v74 > 2)
    {
      if ((v74 - 3) >= 2)
      {
        if (v74 == 5)
        {
          if (*(v41 + 272) && (*(v41 + 1152) & 0xFD) == 1)
          {
            v92 = mdm::zone_mallocator::instance(v71);
            v93 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v92, 0x240uLL);
            bzero(v93, 0x240uLL);
            md::LabelPart::LabelPart(v93);
            *v93 = &unk_1F2A47848;
            v95 = mdm::zone_mallocator::instance(v94);
            v96 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v95, 0x2E8uLL);
            v97 = *(v41 + 1376);
            v98 = *(v41 + 272);
            *(v41 + 272) = 0;
            md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v96, v42, v41, v97, v98, v93, 1);
            v71 = *(v41 + 304);
            *(v41 + 304) = v96;
            if (v71)
            {
              v71 = (*(*v71 + 8))(v71);
            }

            v99 = (v41 + 1016);
            v100 = 3;
            do
            {
              *v99 = *(v99 - 3);
              ++v99;
              --v100;
            }

            while (v100);
            *(v41 + 1140) = *(v41 + 1136);
          }

          v101 = mdm::zone_mallocator::instance(v71);
          v102 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v101, 0x240uLL);
          bzero(v102, 0x240uLL);
          v103.n128_f64[0] = md::LabelPart::LabelPart(v102);
          *v102 = &unk_1F2A47848;
          v104 = *(v41 + 280);
          *(v41 + 280) = v102;
          if (v104)
          {
            (*(*v104 + 8))(v104, v103.n128_f64[0]);
          }

          v106 = *(v41 + 264);
          v105 = *(v41 + 272);
          *(v41 + 264) = 0;
          *(v41 + 272) = v106;
          if (v105)
          {
            v105 = (*(*v105 + 8))(v105, v103);
          }

          v107 = mdm::zone_mallocator::instance(v105);
          v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v107, 0x2E8uLL);
          md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v82, v42, v41, *(v41 + 1376), *(v41 + 280), *(v41 + 272), 0);
          goto LABEL_185;
        }

LABEL_163:
        atomic_load((v41 + 1330));
        goto LABEL_71;
      }

      v85 = *(v41 + 272);
      if (!v85)
      {
        v109 = mdm::zone_mallocator::instance(v71);
        v85 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v109, 0x240uLL);
        bzero(v85, 0x240uLL);
        v110 = md::LabelPart::LabelPart(v85);
        *v85 = &unk_1F2A47848;
        v111 = *(v41 + 272);
        *(v41 + 272) = v85;
        if (v111)
        {
          (*(*v111 + 8))(v111, v110);
          v85 = *(v41 + 272);
        }
      }

      v86 = *(v41 + 280);
      *(v41 + 272) = 0;
      *(v41 + 280) = v85;
      if (v86)
      {
        (*(*v86 + 8))(v86);
        v87 = *(v41 + 264);
        v88 = *(v41 + 272);
        *(v41 + 264) = 0;
        *(v41 + 272) = v87;
        if (v88)
        {
          (*(*v88 + 8))(v88);
          v87 = *(v41 + 272);
        }
      }

      else
      {
        v87 = *(v41 + 264);
        *(v41 + 264) = 0;
        *(v41 + 272) = v87;
      }

      v89 = md::LabelPart::ArePartsVisuallySimilar(v87, *(v41 + 280), v72);
      if (!v89)
      {
        v90 = *(v41 + 1375);
        v91 = mdm::zone_mallocator::instance(v89);
        if (v90 != 3)
        {
          v112 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v91, 0x2E8uLL);
          md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v112, v42, v41, *(v41 + 1376), *(v41 + 280), *(v41 + 272), 0);
          v113 = *(v41 + 296);
          *(v41 + 296) = v112;
          if (v113)
          {
            (*(*v113 + 8))(v113);
          }

          v114 = *(v41 + 1272);
          if (v114)
          {
            v115 = *(v114 + 52);
            LOBYTE(v114) = v115 == 1 || v115 == 2 && *(*(*v114 + 424) + 336) - *(v114 + 104) < 0.5;
          }

          *(v41 + 1164) = v114;
          goto LABEL_163;
        }

        v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v91, 0x280uLL);
        md::CrossFadeLabelPart::CrossFadeLabelPart(v82, *(v41 + 280), *(v41 + 272), 0);
        *v82 = &unk_1F2A0BE68;
        *(v82 + 638) = 1;
        goto LABEL_185;
      }

LABEL_162:
      md::Label::clearAnimatingPart(v41);
      goto LABEL_163;
    }

    if (v74 >= 2)
    {
      v75 = *(v41 + 296);
      if (!v75 || (v75 = (*(*v75 + 688))(v75), !v75))
      {
        v76 = *(v41 + 272);
        if (!v76)
        {
          v116 = mdm::zone_mallocator::instance(v75);
          v76 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v116, 0x240uLL);
          bzero(v76, 0x240uLL);
          v117 = md::LabelPart::LabelPart(v76);
          *v76 = &unk_1F2A47848;
          v118 = *(v41 + 272);
          *(v41 + 272) = v76;
          if (v118)
          {
            (*(*v118 + 8))(v118, v117);
            v76 = *(v41 + 272);
          }
        }

        v77 = *(v41 + 280);
        *(v41 + 272) = 0;
        *(v41 + 280) = v76;
        if (!v77)
        {
          v119 = *(v41 + 264);
          *(v41 + 264) = 0;
          *(v41 + 272) = v119;
          goto LABEL_151;
        }

        (*(*v77 + 8))(v77);
      }

      v79 = *(v41 + 264);
      v78 = *(v41 + 272);
      *(v41 + 264) = 0;
      *(v41 + 272) = v79;
      if (v78)
      {
        (*(*v78 + 8))(v78);
      }

LABEL_151:
      v80 = md::LabelPart::ArePartsVisuallySimilar(*(v41 + 272), *(v41 + 280), v72);
      if (!v80)
      {
        v81 = mdm::zone_mallocator::instance(v80);
        v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v81, 0x280uLL);
        md::CrossFadeLabelPart::CrossFadeLabelPart(v82, *(v41 + 280), *(v41 + 272), 0);
        *v82 = &unk_1F2A47BE0;
LABEL_185:
        v108 = *(v41 + 296);
        *(v41 + 296) = v82;
        if (v108)
        {
          (*(*v108 + 8))(v108);
        }

        goto LABEL_163;
      }

      goto LABEL_162;
    }

LABEL_160:
    v84 = *(v41 + 264);
    v83 = *(v41 + 272);
    *(v41 + 264) = 0;
    *(v41 + 272) = v84;
    if (v83)
    {
      (*(*v83 + 8))(v83);
    }

    goto LABEL_162;
  }
}

void sub_1B2AB417C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a16 = &a20;
  std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

float std::__function::__func<md::LabelManager::setNavigationPuckSize(float)::$_0,std::allocator<md::LabelManager::setNavigationPuckSize(float)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 16);
  *(*(a1 + 8) + 3396) = result;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialPendingProcessing>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialPendingProcessing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[378];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls25MaterialPendingProcessingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A417A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25MaterialPendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A417A8;
  a2[1] = v2;
  return result;
}

uint64_t md::CompositeLabeler::checkNeedsOcclusionTests(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 8;
  do
  {
    result = (*(**(v5 - 8) + 120))(*(v5 - 8), a2);
    if (result)
    {
      break;
    }

    v7 = v5 == v3;
    v5 += 8;
  }

  while (!v7);
  return result;
}

void md::OcclusionManager::flushQueuedQueries(int64x2_t *this)
{
  v3 = this[5].u64[0];
  v2 = this[5].i64[1];
  v4 = v3 + v2;
  v5 = (v3 + v2) >> 8;
  v6 = this[3].i64[1];
  v7 = this[4].i64[0];
  v8 = v3 >> 8;
  v9 = v7 - v6;
  if (v7 == v6)
  {
    v14 = 0;
    v10 = this[1].i64[0];
    v11 = &this[3];
    i64 = this[1].i64;
    v12 = this[1].i64[1];
    i = (v12 - v10) >> 4;
  }

  else
  {
    v10 = this[1].i64[0];
    v11 = &this[3];
    i64 = this[1].i64;
    v12 = this[1].i64[1];
    i = (v12 - v10) >> 4;
    if (*(v6 + 8 * v5) + 16 * v4 == *(v6 + 8 * v8) + 16 * v3)
    {
      v14 = 0;
    }

    else
    {
      v14 = ((16 * v4) >> 4) + 32 * (8 * v5 - 8 * v8) - ((16 * v3) >> 4);
    }
  }

  if (v14 >= v2 - v14)
  {
    v26 = 32 * v9 - 1;
    v27 = v7 - v6;
    if (v7 == v6)
    {
      v26 = 0;
    }

    v28 = v26 - v4;
    v29 = i >= v28;
    v30 = i - v28;
    if (v30 != 0 && v29)
    {
      if (v7 == v6)
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        v32 = (v31 >> 8) + 1;
      }

      else
      {
        v32 = v31 >> 8;
      }

      if (v32 >= v8)
      {
        v33 = v3 >> 8;
      }

      else
      {
        v33 = v32;
      }

      if (v32 <= v8)
      {
        for (this[5].i64[0] = v3 - (v33 << 8); v33; --v33)
        {
          v40 = this[3].i64[1];
          *&v127[0] = *v40;
          this[3].i64[1] = (v40 + 1);
          std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v11, v127);
        }
      }

      else
      {
        v34 = v32 - v33;
        v35 = this[4].i64[1] - this[3].i64[0];
        if (v34 > (v35 >> 3) - (v27 >> 3))
        {
          v36 = v35 >> 2;
          if (v36 <= v34 + (v27 >> 3))
          {
            v37 = v34 + (v27 >> 3);
          }

          else
          {
            v37 = v36;
          }

          v38 = (v27 >> 3) - v33;
          v128 = v11;
          if (v37)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v37);
          }

          *&v127[0] = 0;
          *(&v127[0] + 1) = 8 * v38;
          v127[1] = 8 * v38;
          operator new();
        }

        if (v34)
        {
          if (this[4].i64[1] != this[4].i64[0])
          {
            operator new();
          }

          operator new();
        }

        for (this[5].i64[0] = v3 - (v33 << 8); v33; --v33)
        {
          v123 = this[3].i64[1];
          *&v127[0] = *v123;
          this[3].i64[1] = (v123 + 1);
          std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v11, v127);
        }
      }

      v2 = this[5].i64[1];
      v6 = this[3].i64[1];
      v7 = this[4].i64[0];
      v4 = this[5].i64[0] + v2;
      v5 = v4 >> 8;
    }

    v41 = (v6 + 8 * v5);
    if (v7 == v6)
    {
      v42 = 0;
    }

    else
    {
      v42 = *v41 + 16 * v4;
    }

    v43 = v2 - v14;
    if (v43 >= i)
    {
      v47 = v42;
      v48 = (v6 + 8 * v5);
    }

    else
    {
      if (v43 >= i >> 1)
      {
        v44 = i;
      }

      else
      {
        v44 = 0;
      }

      if (v43 >= i >> 1)
      {
        v45 = v12;
      }

      else
      {
        v45 = v10;
      }

      v46 = &v45[16 * (v43 - v44)];
      if (v46 == v12)
      {
        v47 = v42;
        v48 = v41;
      }

      else
      {
        v63 = v46;
        v48 = v41;
        v47 = v42;
        do
        {
          *v47 = *v63;
          v64 = *(v63 + 1);
          v47[1] = v64;
          if (v64)
          {
            atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
          }

          v47 += 2;
          if ((v47 - *v48) == 4096)
          {
            v65 = v48[1];
            ++v48;
            v47 = v65;
          }

          v63 += 16;
          ++this[5].i64[1];
        }

        while (v63 != v12);
      }

      v12 = v46;
      i = v43;
    }

    if (i)
    {
      v49 = std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator-[abi:nn200100](v41, v42, i);
      v51 = v49;
      if (v42 != v50)
      {
        v52 = v49;
        v53 = v50;
        do
        {
          *v47 = *v53;
          v47 += 2;
          *v53 = 0;
          *(v53 + 8) = 0;
          if ((v47 - *v48) == 4096)
          {
            v54 = v48[1];
            ++v48;
            v47 = v54;
          }

          v53 += 16;
          if (v53 - *v52 == 4096)
          {
            v55 = v52[1];
            ++v52;
            v53 = v55;
          }

          ++this[5].i64[1];
        }

        while (v53 != v42);
      }

      if (i < v43)
      {
        v56 = v50;
        v57 = std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator-[abi:nn200100](v41, v42, v43);
        v59 = v58;
        if (v57 == v51)
        {
          v60 = v56;
          v61 = v41;
          v62 = v42;
        }

        else
        {
          v66 = v57;
          v69 = *v51;
          v68 = v51 - 1;
          v67 = v69;
          v70 = v56;
          v61 = v41;
          v62 = v42;
          while (1)
          {
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(v127, v67, v70, v61, v62);
            v61 = *(&v127[0] + 1);
            v62 = *&v127[1];
            if (v68 == v66)
            {
              break;
            }

            v71 = *v68--;
            v67 = v71;
            v70 = v71 + 4096;
          }

          v60 = *v68 + 4096;
          v58 = v59;
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(v127, v58, v60, v61, v62);
        v42 = *&v127[1];
        v41 = *(&v127[0] + 1);
      }

      if (v10 != v12)
      {
        v72 = *v41;
        while (1)
        {
          v73 = v42 - v72;
          if ((v12 - v10) >> 4 >= v73 >> 4)
          {
            v74 = v73 >> 4;
          }

          else
          {
            v74 = (v12 - v10) >> 4;
          }

          if (v74)
          {
            v75 = (v12 - 8);
            v76 = -16 * v74;
            v77 = (v42 - 8);
            do
            {
              v79 = *(v75 - 1);
              v78 = *v75;
              if (*v75)
              {
                atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v80 = *v77;
              *(v77 - 1) = v79;
              *v77 = v78;
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v80);
              }

              v75 -= 2;
              v77 -= 2;
              v76 += 16;
            }

            while (v76);
          }

          v12 -= 16 * v74;
          if (v12 == v10)
          {
            break;
          }

          v81 = *--v41;
          v72 = v81;
          v42 = v81 + 4096;
        }
      }
    }
  }

  else
  {
    if (i > v3)
    {
      v124 = i;
      v15 = v7 - v6;
      if (v7 == v6)
      {
        v16 = 0;
      }

      else
      {
        v16 = 32 * v9 - 1;
      }

      if (v7 == v6)
      {
        v17 = i - v3 + 1;
      }

      else
      {
        v17 = i - v3;
      }

      if (v17)
      {
        v18 = (v17 >> 8) + 1;
      }

      else
      {
        v18 = v17 >> 8;
      }

      v19 = v16 - v4;
      v20 = (v16 - v4) >> 8;
      if (v18 >= v19 >> 8)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18;
      }

      if (v18 <= v19 >> 8)
      {
        this[5].i64[0] = v3 + (v21 << 8);
        for (i = v124; v21; --v21)
        {
          v39 = this[4].i64[0];
          *&v127[0] = *(v39 - 8);
          this[4].i64[0] = v39 - 8;
          std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(v11, v127);
        }
      }

      else
      {
        v22 = v18 - v21;
        v23 = this[4].i64[1] - this[3].i64[0];
        if (v18 - v21 > (v23 >> 3) - (v15 >> 3))
        {
          v24 = v15 >> 3;
          if (v23 >> 2 <= v22 + v24)
          {
            v25 = v22 + v24;
          }

          else
          {
            v25 = v23 >> 2;
          }

          v128 = v11;
          if (v25)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v25);
          }

          memset(v127, 0, sizeof(v127));
          operator new();
        }

        if (v22)
        {
          if (v6 != *v11)
          {
            operator new();
          }

          operator new();
        }

        this[5].i64[0] = v3 + (v21 << 8);
        for (i = v124; v21; --v21)
        {
          v122 = this[4].i64[0];
          *&v127[0] = *(v122 - 8);
          this[4].i64[0] = v122 - 8;
          std::__split_buffer<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *,std::allocator<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *>>::emplace_front<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>> *&>(v11, v127);
        }
      }

      v3 = this[5].u64[0];
      v6 = this[3].i64[1];
      v7 = this[4].i64[0];
      v8 = v3 >> 8;
    }

    v82 = (v6 + 8 * v8);
    if (v7 == v6)
    {
      v83 = 0;
    }

    else
    {
      v83 = &(*v82)[v3];
    }

    v125 = v14;
    if (i <= v14)
    {
      v85 = v83;
      v86 = (v6 + 8 * v8);
    }

    else
    {
      v84 = &v10[16 * (i - v14)];
      if (v14 < i >> 1)
      {
        v84 = &v12[-16 * v14];
      }

      if (v84 == v10)
      {
        i = v14;
        v85 = v83;
        v86 = v82;
        v10 = v84;
      }

      else
      {
        v103 = v84;
        v86 = v82;
        v85 = v83;
        do
        {
          if (v85 == *v86)
          {
            v104 = *--v86;
            v85 = (v104 + 4096);
          }

          v105 = *(v103 - 2);
          v103 -= 16;
          *(v85-- - 2) = v105;
          v106 = *(v103 + 1);
          *(v85 + 1) = v106;
          if (v106)
          {
            atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
            v3 = this[5].u64[0];
          }

          --v3;
          v107 = this[5].i64[1] + 1;
          this[5].i64[0] = v3;
          this[5].i64[1] = v107;
        }

        while (v103 != v10);
        v10 = v84;
        i = v125;
      }
    }

    if (i)
    {
      v87 = std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator+[abi:nn200100](v82, v83, i);
      v89 = v87;
      v90 = v88;
      if (v83 != v88)
      {
        v91 = v87;
        v92 = v88;
        do
        {
          if (v85 == *v86)
          {
            v93 = *--v86;
            v85 = (v93 + 4096);
          }

          if (v92 == *v91)
          {
            v94 = *--v91;
            v92 = (v94 + 4096);
          }

          v95 = *--v92;
          *--v85 = v95;
          *v92 = 0;
          *(v92 + 1) = 0;
          this[5] = vaddq_s64(this[5], xmmword_1B33B15E0);
        }

        while (v92 != v83);
      }

      if (i < v125)
      {
        v96 = std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator+[abi:nn200100](v82, v83, v125);
        v98 = v97;
        if (v89 == v96)
        {
          v99 = v90;
          v100 = v98;
          v101 = v82;
          v102 = v83;
        }

        else
        {
          v108 = v96;
          v110 = *v89;
          v109 = v89 + 1;
          v111 = v110 + 256;
          v112 = v90;
          v101 = v82;
          v102 = v83;
          while (1)
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(v127, v112, v111, v101, v102);
            v101 = *(&v127[0] + 1);
            v102 = *&v127[1];
            if (v109 == v108)
            {
              break;
            }

            v113 = *v109++;
            v112 = v113;
            v111 = v113 + 256;
          }

          v99 = *v109;
          v100 = v98;
        }

        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<md::OcclusionQuery> *,std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery> *,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery> **,long,256l>,0>(v127, v99, v100, v101, v102);
        v83 = *&v127[1];
        v82 = *(&v127[0] + 1);
      }

      if (v10 != v12)
      {
        v114 = *v82;
        while (1)
        {
          v115 = v114 - v83 + 4096;
          if ((v12 - v10) >> 4 >= v115 >> 4)
          {
            v116 = v115 >> 4;
          }

          else
          {
            v116 = (v12 - v10) >> 4;
          }

          if (v116)
          {
            v117 = &v10[16 * v116];
            do
            {
              v119 = *v10;
              v118 = *(v10 + 1);
              if (v118)
              {
                atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
              }

              v120 = *(v83 + 1);
              *v83 = v119;
              *(v83 + 1) = v118;
              if (v120)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v120);
              }

              v10 += 16;
              ++v83;
            }

            while (v10 != v117);
            v10 = v117;
          }

          if (v10 == v12)
          {
            break;
          }

          v121 = v82[1];
          ++v82;
          v114 = v121;
          v83 = v121;
        }
      }
    }
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](i64);
}

void sub_1B2AB4F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::MapStandardLabeler::checkNeedsOcclusionTests(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 424);
  v3 = *(v2 + 20) != 1 || *(v2 + 424) <= 15.0;
  result = 1;
  if (v3)
  {
    v4 = *(v2 + 1232);
    v5 = *(v1 + 3376) != 1 || v4 == 0;
    if ((v5 || !*(v4 + 272)) && (*(v2 + 11) != 1 || *(v2 + 32) < 17.0))
    {
      return 0;
    }
  }

  return result;
}

void *std::__deque_iterator<std::shared_ptr<md::OcclusionQuery>,std::shared_ptr<md::OcclusionQuery>*,std::shared_ptr<md::OcclusionQuery>&,std::shared_ptr<md::OcclusionQuery>**,long,256l>::operator+[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

uint64_t md::CompositeLabeler::synchronizedUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  for (i = *(result + 16); v4 != i; result = (*(*v9 + 32))(v9, a2, a3, a4))
  {
    v9 = *v4++;
  }

  return result;
}

void md::MapNavLabeler::synchronizedUpdate(uint64_t a1, const md::LayoutContext *a2, uint64_t a3, int a4)
{
  v75 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 360))(a1) & 1) != 0 || *(a1 + 104) && *(*(a1 + 720) + 24) || *(*(*(a1 + 24) + 336) + 163) << 16 == 393216 || (*(*a1 + 384))(a1))
  {
    if (*(a1 + 827))
    {
      v7 = -1;
    }

    else
    {
      v8 = *(*(*(*(a1 + 24) + 336) + 200) + 40);
      if (!v8)
      {
        operator new();
      }

      v7 = *v8;
    }

    v9 = *(a1 + 72);
    v10 = v9[4];
    if (*(v10 + 84) == 1)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    if (v11 != v7)
    {
      *(v10 + 80) = v7;
      *(v10 + 84) = 1;
      v12 = *v9;
      v13 = atomic_load((*v9 + 3053));
      if (v13)
      {
        v14 = *(v12 + 136);
        if (v14)
        {
          v15 = *(v14 + 56);
          if (v15)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v15, v12, 9);
          }
        }
      }
    }

    v16 = *(*(*(*(a1 + 24) + 336) + 200) + 48);
    if (!v16)
    {
      operator new();
    }

    [*(a1 + 56) setMaxVisibleRoadsigns:*v16];
    if ((*(*a1 + 360))(a1))
    {
      v17 = md::LayoutContext::get<md::SceneContext>(*(a2 + 1));
      if (v17)
      {
        if (a4)
        {
          [*(a1 + 56) grabTilesFromScene:v17];
        }
      }
    }

    v18 = *(a1 + 720);
    if (*(*(*(a1 + 24) + 424) + 12) == 1)
    {
      v19 = (*(*a1 + 360))(a1);
    }

    else
    {
      v19 = 0;
    }

    if (*(v18 + 704) != v19)
    {
      *(v18 + 704) = v19;
    }

    v20 = *(a1 + 720);
    v21 = *(*(*(a1 + 24) + 424) + 32);
    std::__tree<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::__map_value_compare<VKRouteInfo * {__strong},std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,std::less<VKRouteInfo * {__strong}>,true>,geo::allocator_adapter<std::__value_type<VKRouteInfo * {__strong},md::PolylineOverlayInfo>,mdm::zone_mallocator>>::destroy(*(v20 + 424));
    *(v20 + 440) = 0;
    *(v20 + 416) = v20 + 424;
    *(v20 + 424) = 0;
    if (*(v20 + 104))
    {
      v22 = *(v20 + 24);
      v23 = [v22 routeInfo];
      md::LabelNavEtaLabeler::extractPolylineOverlayInfo(v20, v23, v21);

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v24 = [*(v20 + 24) alternateRoutes];
      v25 = [v24 countByEnumeratingWithState:&v68 objects:&v72 count:16];
      if (v25)
      {
        v26 = *v69;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v69 != v26)
            {
              objc_enumerationMutation(v24);
            }

            md::LabelNavEtaLabeler::extractPolylineOverlayInfo(v20, *(*(&v68 + 1) + 8 * i), v21);
          }

          v25 = [v24 countByEnumeratingWithState:&v68 objects:&v72 count:16];
        }

        while (v25);
      }
    }

    v28 = *(a1 + 720);
    v29 = *(v28 + 253);
    *(a1 + 713) = v29;
    if (v29 == 1)
    {
      *(v28 + 253) = 0;
    }

    if (*(a1 + 826) == 1)
    {
      *(v28 + 707) = 1;
      *(a1 + 826) = 0;
    }

    md::LabelNavLayoutContext::grabStateFromContext((a1 + 136), *(a1 + 24), *(*(a1 + 24) + 424), a2);
    if (*(a1 + 800) == 1)
    {
      *(a1 + 800) = 0;
      std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::clear[abi:nn200100]((a1 + 768));
      v31 = *(a1 + 744);
      v32 = *(a1 + 736);
      v33 = 0xAAAAAAAAAAAAAAABLL * (v31 - v32);
      v34 = *(a1 + 768);
      if (0x8E38E38E38E38E39 * ((*(a1 + 784) - v34) >> 3) < v33)
      {
        if (v33 > 0x38E38E38E38E38ELL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = *(a1 + 776) - v34;
        v74 = a1 + 792;
        v36 = mdm::zone_mallocator::instance(v30);
        v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteFeatureAnchorWithPixelBounds>(v36, 0xAAAAAAAAAAAAAAABLL * (v31 - v32));
        v38 = &v37[v35];
        v39 = &v37[24 * (v31 - v32)];
        v40 = *(a1 + 776);
        v41 = *(a1 + 768);
        v42 = &v38[v41 - v40];
        std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>,md::RouteFeatureAnchorWithPixelBounds*>(v41, v40, v42);
        v43 = *(a1 + 768);
        *(a1 + 768) = v42;
        *(a1 + 776) = v38;
        v44 = *(a1 + 784);
        *(a1 + 784) = v39;
        v72.__shared_weak_owners_ = v43;
        v73 = v44;
        v72.__vftable = v43;
        v72.__shared_owners_ = v43;
        std::__split_buffer<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator> &>::~__split_buffer(&v72);
        v32 = *(a1 + 736);
        v31 = *(a1 + 744);
      }

      if (v32 != v31)
      {
        v45 = 0;
        if (*(a1 + 353) == 1)
        {
          v45 = v32[1].__vftable;
        }

        v72.std::__shared_count = *v32;
        v72.__shared_weak_owners_ = v45;
        md::AnchorManager::newAnchorAtCoordinate(&v68);
      }
    }

    v46 = *(a1 + 768);
    for (j = *(a1 + 776); v46 != j; v46 += 9)
    {
      v48 = *v46;
      if (!*(*v46 + 8))
      {
        (*(*v48 + 64))(&v72);
        md::AnchorManager::newAnchorAtCoordinate(&v68);
      }

      v49 = (*(*v48 + 48))(v48);
      v50 = *(v46 + 56);
      *(v46 + 4) = v49;
      v46[5] = v51;
      v46[6] = v52;
      if ((v50 & 1) == 0)
      {
        *(v46 + 56) = 1;
      }
    }

    v53 = *(a1 + 24);
    v54 = *(v53 + 424);
    v72.__vftable = &unk_1F29EFAF8;
    v72.__shared_owners_ = v53;
    v72.__shared_weak_owners_ = a1;
    v73 = v54;
    v74 = a1 + 136;
    if (*(a1 + 104))
    {
      v55 = *(a1 + 720);
      v56 = v55[3];
      if (v56)
      {
        v57 = [v56 routeInfo];
        if (v57)
        {
          v58 = v55[32];
          v59 = v55 + 33;
          if (v58 != v55 + 33)
          {
            do
            {
              v60 = v58[5];
              v61 = v58[6];
              while (v60 != v61)
              {
                v62 = *(v60 + 56);
                v63 = [v62 hasLabel];

                if (v63)
                {
                  v64 = *(v60 + 56);
                  [v64 updateAnchorWithContext:&v72];
                }

                v60 += 72;
              }

              v65 = v58[1];
              if (v65)
              {
                do
                {
                  v66 = v65;
                  v65 = *v65;
                }

                while (v65);
              }

              else
              {
                do
                {
                  v66 = v58[2];
                  v67 = *v66 == v58;
                  v58 = v66;
                }

                while (!v67);
              }

              v58 = v66;
            }

            while (v66 != v59);
          }
        }
      }
    }
  }
}

void sub_1B2AB5A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void md::MapStandardLabeler::synchronizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v201 = *MEMORY[0x1E69E9840];
  md::StandardLabeler::synchronizedUpdate(a1, a2, a3, a4);
  if (a4)
  {
    v7 = *(a1 + 432);
    std::mutex::lock(v7);
    v8 = *(v7 + 72);
    v9 = *(v7 + 64);
    if (v9 != v8)
    {
      while (1)
      {
        v10 = v9[1];
        if (!v10 || *(v10 + 8) == -1)
        {
          break;
        }

        v9 += 2;
        if (v9 == v8)
        {
          goto LABEL_23;
        }
      }

      if (v9 != v8)
      {
        v11 = v9 + 2;
        if (v9 + 2 != v8)
        {
          do
          {
            v12 = v11[1];
            if (v12 && *(v12 + 8) != -1)
            {
              v13 = *v11;
              *v11 = 0;
              v11[1] = 0;
              v14 = v9[1];
              *v9 = v13;
              v9[1] = v12;
              if (v14)
              {
                std::__shared_weak_count::__release_weak(v14);
              }

              v9 += 2;
            }

            v11 += 2;
          }

          while (v11 != v8);
          v8 = *(v7 + 72);
        }
      }
    }

    if (v9 != v8)
    {
      while (v8 != v9)
      {
        v15 = *(v8 - 1);
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

        v8 -= 2;
      }

      *(v7 + 72) = v9;
    }

LABEL_23:
    std::mutex::unlock(v7);
  }

  v16 = *(a1 + 48);
  v17 = *(v16 + 748);
  if (v17 != *(a1 + 448))
  {
    *(a1 + 448) = v17;
    v197 = 0uLL;
    v198 = 0;
    v18 = *(v16 + 584);
    v19 = *(v16 + 576);
    v20 = v18 - v19;
    if (v18 != v19)
    {
      v21 = v20 >> 4;
      if ((v20 >> 4) > 0x555555555555555)
      {
LABEL_214:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v191 = &v199;
      v22 = mdm::zone_mallocator::instance(v6);
      v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBoundingRect>(v22, v21);
      v24 = &v23[48 * v21];
      v190 = v24;
      v25 = v197;
      v26 = &v23[v197 - *(&v197 + 1)];
      if (v197 != *(&v197 + 1))
      {
        v27 = v197;
        v28 = &v23[v197 - *(&v197 + 1)];
        do
        {
          *v28 = *v27;
          *(v28 + 8) = *(v27 + 8);
          v29 = *(v27 + 24);
          v28[40] = *(v27 + 40);
          *(v28 + 24) = v29;
          v27 += 48;
          v28 += 48;
        }

        while (v27 != *(&v25 + 1));
        v24 = v190;
      }

      *&v197 = v26;
      *(&v197 + 1) = v23;
      v30 = v198;
      v198 = v24;
      v189 = v25;
      v190 = v30;
      v187 = v25;
      v188 = v25;
      std::__split_buffer<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator> &>::~__split_buffer(&v187);
      v19 = *(v16 + 576);
      v18 = *(v16 + 584);
    }

    for (; v19 != v18; v19 += 2)
    {
      v31 = *v19;
      *(v31 + 1374) = 0;
      if (*(v31 + 1352) == 1)
      {
        v32 = (*(**(v31 + 8) + 72))(*(v31 + 8));
        if (v32)
        {
          v33 = *(v32 + 32);
          if (v33)
          {
            v34 = *(v33 + 33);
            if (*(v33 + 33))
            {
              v35 = *v33;
              if (**v33 == 65571)
              {
LABEL_38:
                v36 = 1;
                goto LABEL_44;
              }

              v37 = 0;
              v38 = v35 + 2;
              while (v34 - 1 != v37)
              {
                v39 = *v38;
                v38 += 2;
                ++v37;
                if (v39 == 65571)
                {
                  if (v37 < v34)
                  {
                    goto LABEL_38;
                  }

                  break;
                }
              }
            }
          }
        }
      }

      v36 = 0;
LABEL_44:
      v40 = *v19;
      v41 = *(*v19 + 272);
      if (v41)
      {
        v42 = (*(*v41 + 256))(v41);
        v43 = 0;
        v44 = 0;
        do
        {
          v45 = *(v42 + 8 + 4 * v44);
          v46 = *(v42 + 4 * v44);
          if (v43)
          {
            break;
          }

          v43 = 1;
          v44 = 1;
        }

        while (v45 >= v46);
        if (v45 >= v46)
        {
          v47 = *(v40 + 128);
          v178 = *(v40 + 144);
          v179 = *(v40 + 136);
          v48 = (*(**(v40 + 272) + 256))(*(v40 + 272));
          v49.i64[0] = *(v40 + 688);
          v54 = gm::Box<float,2>::operator-(v48, v49);
          v55 = v51;
          v56 = v52;
          v57 = v53;
          *&v58 = v179;
          *(&v58 + 1) = v178;
          v59 = *(&v197 + 1);
          if (*(&v197 + 1) >= v198)
          {
            v61 = 0xAAAAAAAAAAAAAAABLL * ((*(&v197 + 1) - v197) >> 4);
            v62 = v61 + 1;
            if (v61 + 1 > 0x555555555555555)
            {
              goto LABEL_214;
            }

            if (0x5555555555555556 * ((v198 - v197) >> 4) > v62)
            {
              v62 = 0x5555555555555556 * ((v198 - v197) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v198 - v197) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v63 = 0x555555555555555;
            }

            else
            {
              v63 = v62;
            }

            v191 = &v199;
            if (v63)
            {
              v180 = v58;
              v64 = mdm::zone_mallocator::instance(v50);
              v65 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBoundingRect>(v64, v63);
              v58 = v180;
            }

            else
            {
              v65 = 0;
            }

            v66 = &v65[48 * v61];
            v188 = v66;
            v190 = &v65[48 * v63];
            *v66 = v47;
            *(v66 + 8) = v58;
            *(v66 + 6) = v54;
            *(v66 + 7) = v55;
            *(v66 + 8) = v56;
            *(v66 + 9) = v57;
            v66[40] = v36;
            v67 = v197;
            v68 = v188 + v197 - *(&v197 + 1);
            if (v197 != *(&v197 + 1))
            {
              v69 = v197;
              v70 = v188 + v197 - *(&v197 + 1);
              do
              {
                *v70 = *v69;
                *(v70 + 8) = *(v69 + 8);
                v71 = *(v69 + 24);
                v70[40] = *(v69 + 40);
                *(v70 + 24) = v71;
                v69 += 48;
                v70 += 48;
              }

              while (v69 != *(&v67 + 1));
            }

            v60 = v66 + 48;
            *&v197 = v68;
            *(&v197 + 1) = v66 + 48;
            v72 = v198;
            v198 = v190;
            v189 = v67;
            v190 = v72;
            v187 = v67;
            v188 = v67;
            std::__split_buffer<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator> &>::~__split_buffer(&v187);
          }

          else
          {
            **(&v197 + 1) = v47;
            *(v59 + 8) = v58;
            *(v59 + 24) = v54;
            *(v59 + 28) = v51;
            *(v59 + 32) = v52;
            *(v59 + 36) = v53;
            v60 = (v59 + 48);
            *(v59 + 40) = v36;
          }

          *(&v197 + 1) = v60;
        }
      }
    }

    v73 = *(*(*(a1 + 24) + 168) + 32);
    (*(*v73 + 168))(v73, &v197);
    std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v197);
  }

  v74 = atomic_load((*(a1 + 24) + 3425));
  if (v74)
  {
    v75 = *(a1 + 400);
    v76 = *(a1 + 24);
    if (*(v75 + 433) == 1)
    {
      *(v75 + 433) = 0;
      v77 = v75 + 136;
      std::__tree<unsigned long long,std::less<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::destroy(*(v75 + 136));
      v78 = *(v75 + 168);
      *(v75 + 128) = *(v75 + 160);
      *(v75 + 136) = v78;
      v79 = *(v75 + 184);
      *(v75 + 152) = v79;
      if (v79)
      {
        *(v78 + 16) = v77;
        *(v75 + 160) = v75 + 168;
        *(v75 + 168) = 0;
        *(v75 + 184) = 0;
      }

      else
      {
        *(v75 + 128) = v77;
      }

      *(v76 + 3038) = 1;
      *(v76 + 3040) = 1;
      v80 = atomic_load((v76 + 3053));
      if (v80)
      {
        v81 = *(v76 + 136);
        if (v81)
        {
          v82 = *(v81 + 56);
          if (v82)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v82, v76, 9);
          }
        }
      }
    }

    if ((*(v75 + 432) & 1) == 0 && *(v75 + 32))
    {
      v83 = *(v75 + 40);
      v84 = *(v75 + 48);
      if (v83 != v84)
      {
        do
        {
          md::LabelExternalObjectsModerator::runIconCreateRequest(*(v75 + 32), v83);
          v83 += 2;
        }

        while (v83 != v84);
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v75 + 40));
        v85 = atomic_load((v76 + 3053));
        if (v85)
        {
          v86 = *(v76 + 136);
          if (v86)
          {
            v87 = *(v86 + 56);
            if (v87)
            {
              std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v87, v76, 9);
            }
          }
        }
      }

      v88 = *(v75 + 96);
      if (v88)
      {
        do
        {
          v89 = v88[2];
          if (v89[67] != 1)
          {
            if (v89[68] == 1)
            {
              (*(*v89 + 24))(v89);
            }

            v93 = *v88;
            goto LABEL_116;
          }

          v90 = *(v75 + 80);
          v91 = v88[1];
          v92 = vcnt_s8(v90);
          v92.i16[0] = vaddlv_u8(v92);
          if (v92.u32[0] > 1uLL)
          {
            if (v91 >= *&v90)
            {
              v91 %= *&v90;
            }
          }

          else
          {
            v91 &= *&v90 - 1;
          }

          v93 = *v88;
          v94 = *(v75 + 72);
          v95 = *(v94 + 8 * v91);
          do
          {
            v96 = v95;
            v95 = *v95;
          }

          while (v95 != v88);
          if (v96 == (v75 + 96))
          {
            goto LABEL_218;
          }

          v97 = v96[1];
          if (v92.u32[0] > 1uLL)
          {
            if (v97 >= *&v90)
            {
              v97 %= *&v90;
            }
          }

          else
          {
            v97 &= *&v90 - 1;
          }

          v98 = *v88;
          if (v97 != v91)
          {
LABEL_218:
            if (v93)
            {
              v99 = v93[1];
              if (v92.u32[0] > 1uLL)
              {
                if (v99 >= *&v90)
                {
                  v99 %= *&v90;
                }
              }

              else
              {
                v99 &= *&v90 - 1;
              }

              v98 = *v88;
              if (v99 == v91)
              {
LABEL_109:
                v100 = v98[1];
                if (v92.u32[0] > 1uLL)
                {
                  if (v100 >= *&v90)
                  {
                    v100 %= *&v90;
                  }
                }

                else
                {
                  v100 &= *&v90 - 1;
                }

                if (v100 != v91)
                {
                  *(*(v75 + 72) + 8 * v100) = v96;
                  v98 = *v88;
                }

                goto LABEL_115;
              }
            }

            *(v94 + 8 * v91) = 0;
            v98 = *v88;
          }

          if (v98)
          {
            goto LABEL_109;
          }

LABEL_115:
          *v96 = v98;
          *v88 = 0;
          --*(v75 + 112);
          std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelExternalIcon>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v88);
LABEL_116:
          v88 = v93;
        }

        while (v93);
      }
    }

    v101 = *(a1 + 392);
    if (*(v101 + 112) == 1)
    {
      v102 = *(v101 + 328);
      if (v102)
      {
        *(v101 + 112) = 0;
        if (*(v101 + 48))
        {
          [*(v101 + 48) resetNotificationsForObserverType:0];
          v102 = *(v101 + 328);
        }

        md::LabelTransitRoute::updateTransitNodesRouteState(v102);
      }
    }

    v103 = *(v101 + 328);
    if (v103)
    {
      v104 = *(v103 + 312);
      v105 = *(v103 + 320);
      if (v104 != v105)
      {
        v106 = *(v101 + 16);
        do
        {
          if (*(*v104 + 737) != 2)
          {
            v107 = *(*v104 + 720);
            md::LabelExternalPointFeature::incident(v107);
            objc_claimAutoreleasedReturnValue();
            if (v107 && [v107 needsTextUpdate])
            {
              [v107 setNeedsTextUpdate:0];
              v108 = (*(**v104 + 72))();
              md::WaypointStore::updateExternalFeatureText(v108, v107, v109);
              (*(**v104 + 32))(*v104, 0, 0);
              (*(**v104 + 552))(*v104, v106);
            }
          }

          v104 += 2;
        }

        while (v104 != v105);
      }
    }

    v110 = *(a1 + 48);
    if (*(v110 + 759) == 1 && *(v110 + 760) == 1)
    {
      v111 = *(a1 + 392);
      if (*(v111 + 114) == 1)
      {
        *(v111 + 114) = 0;
        if (*(v111 + 48))
        {
          *(*(v111 + 16) + 3352) = 257;
          *(v111 + 115) = 1;
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          *(v111 + 120) = v112 + 0.200000003;
          v113 = *(v111 + 16);
          *(v113 + 3038) = 1;
          *(v113 + 3040) = 1;
          v114 = atomic_load((v113 + 3053));
          if (v114)
          {
            v115 = *(v113 + 136);
            if (v115)
            {
              v116 = *(v115 + 56);
              if (v116)
              {
                std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v116, v113, 9);
              }
            }
          }
        }
      }

      else if (*(v111 + 115) == 1)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        if (v117 >= *(v111 + 120))
        {
          *(v111 + 115) = 0;
          if (*(v111 + 48))
          {
            *(*(v111 + 16) + 3352) = 0;
          }
        }
      }
    }
  }

  v118 = *(a1 + 24);
  v119 = *(v118 + 1672);
  if ((*(**(*(v118 + 168) + 32) + 8))(*(*(v118 + 168) + 32)))
  {
    v120 = 0;
  }

  else
  {
    v121 = *(*(*(a1 + 24) + 168) + 32);
    v120 = (*(*v121 + 16))(v121) - 1;
  }

  if (v119 == 0.0)
  {
    v122 = *(a1 + 440);
    *(a1 + 440) = 0;
    if (v122)
    {
      v123 = *(*v122 + 8);

      v123();
    }

    return;
  }

  v197 = xmmword_1B33B0710;
  v198 = 0;
  v200 = 0;
  v124 = *(a1 + 24);
  v125 = *(v124 + 1696);
  v185 = *(v124 + 1680);
  v186 = v125;
  v126 = *(v124 + 424);
  LOBYTE(v187) = 0;
  BYTE4(v188) = 0;
  md::LabelLayoutContext::evaluateWorldPoint(v126, &v185, &v187, 1, 0, &v197, 1.0);
  if (v200 == 1)
  {
    v127 = *(a1 + 440);
    *(a1 + 440) = 0;
    if (v127)
    {
      (*(*v127 + 8))(v127);
    }

    return;
  }

  v128 = *(a1 + 24);
  md::LabelLayoutContext::projectPointToPixel(*(v128 + 424), &v185, &v184);
  v130 = (v119 * 0.5) * (*(v128 + 176) * 0.5);
  v131 = v184;
  v184.f32[0] = v184.f32[0] - v130;
  v184.f32[1] = v184.f32[1] - v130;
  v132 = *(a1 + 440);
  if (!v132)
  {
    operator new();
  }

  v132[2] = v131;
  v132[1].f32[0] = v130;
  v132[1].f32[1] = v130;
  v132[3] = 1065353216;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  if (*(*(a1 + 24) + 1704) == 1)
  {
    v191 = &v196;
    v133 = mdm::zone_mallocator::instance(v129);
    v134 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v133, 1);
    *v134 = 0xE00000005;
    v135 = (v134 + 1);
    v136 = (v134 - (v194 - v193));
    memcpy(v136, v193, v194 - v193);
    v137 = v193;
    v138 = v195;
    v193 = v136;
    v194 = v135;
    v195 = v135;
LABEL_171:
    v189 = v137;
    v190 = v138;
    v187 = &v137->__vftable;
    v188 = v137;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v187);
    goto LABEL_172;
  }

  v191 = &v196;
  v139 = mdm::zone_mallocator::instance(v129);
  v140 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v139, 1);
  *v140 = 0xD00000005;
  v141 = (v140 - (v194 - v193));
  memcpy(v141, v193, v194 - v193);
  v142 = v193;
  v143 = v195;
  v193 = v141;
  v194 = (v140 + 1);
  v195 = (v140 + 1);
  v189 = v142;
  v190 = v143;
  v187 = &v142->__vftable;
  v188 = v142;
  v144 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v187);
  v194 = (v140 + 1);
  if ((v140 + 1) >= v195)
  {
    v145 = ((v140 + 1) - v193) >> 3;
    if ((v145 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v146 = (v195 - v193) >> 2;
    if (v146 <= v145 + 1)
    {
      v146 = v145 + 1;
    }

    if (v195 - v193 >= 0x7FFFFFFFFFFFFFF8)
    {
      v147 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v147 = v146;
    }

    v191 = &v196;
    if (v147)
    {
      v148 = mdm::zone_mallocator::instance(v144);
      v149 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v148, v147);
    }

    else
    {
      v149 = 0;
    }

    v151 = &v149[8 * v147];
    v150 = &v149[8 * v145];
    *v150 = 0x100010003;
    v135 = v150 + 8;
    v152 = &v150[-(v194 - v193)];
    memcpy(v152, v193, v194 - v193);
    v137 = v193;
    v138 = v195;
    v193 = v152;
    v194 = v135;
    v195 = v151;
    goto LABEL_171;
  }

  v140[1] = 0x100010003;
  v135 = (v140 + 2);
LABEL_172:
  v194 = v135;
  v153 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
  [v153 replaceAttributes:? count:?];
  v154 = *(a1 + 24);
  v155 = [v153 featureStyleAttributesPtr];
  v156 = v155[1];
  v187 = *v155;
  v188 = v156;
  if (v156)
  {
    atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v182, (*(v154 + 336) + 184), &v187, 0);
  if (v156)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v156);
  }

  v157 = v182;
  v158 = v183;
  if (v183)
  {
    atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v187, v157, v158);
  if (v158)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v158);
  }

  if (v191 == 1)
  {
    v192 = 1;
    v159 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v187[3], 237, 1u, 2, &v192);
    v181 = v120;
    if (v192 == 1)
    {
      v160 = v159;
    }

    else
    {
      v192 = 1;
      v161 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v187[3], 132, 1u, 2, &v192);
      if (v192)
      {
        v160 = v161;
      }

      else
      {
        v160 = 0;
      }
    }

    v192 = 1;
    if (*&v197 >= 0x17)
    {
      v162 = 23;
    }

    else
    {
      v162 = *&v197;
    }

    v163 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v187[3], 236, v162, 1, &v192);
    v164 = v192;
    v165 = v163;
    v192 = 1;
    v166 = v187[3];
    v167 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v166, 469, v162, &v192);
    v168 = v192;
    v192 = 1;
    v169 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v166, 470, v162, 1, &v192);
    if (v167 >= 0x1F)
    {
      v170 = 31;
    }

    else
    {
      v170 = v167;
    }

    v171 = v181;
    if (v192)
    {
      v171 = v169;
    }

    v172 = *(a1 + 440);
    v173 = v160 + 3;
    if (v160 >= -3)
    {
      v174 = 10;
    }

    else
    {
      v174 = 0;
    }

    if ((v160 + 3) > 0xAu)
    {
      v173 = v174;
    }

    v175 = 1 << v173;
    v172[8] = v175;
    if (v164)
    {
      v176 = v165;
    }

    else
    {
      v176 = 0;
    }

    v172[9] = LabelCollisionOverlayGroupToLayersCollided[v176] | v175;
    v177 = 1 << v170;
    if (!v168)
    {
      v177 = 1;
    }

    v172[11] = v177;
    v172[12] = v171;
    if (v191)
    {
      (*(*v187 + 56))(v187);
    }
  }

  if (v190)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v190);
  }

  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v188);
  }

  if (v183)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v183);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v193);
}

void md::StandardLabeler::synchronizedUpdate(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1;
  v228 = *MEMORY[0x1E69E9840];
  if (!a1[12].__shared_owners_)
  {
    goto LABEL_48;
  }

  p_shared_owners = &a1[12].__shared_owners_;
  shared_weak_owners = a1[11].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v7 = shared_weak_owners;
    shared_owners = v4[1].__shared_owners_;
    v9 = [v7 feature];
    v10 = [v9 dataSource];
    md::LabelCustomFeatureSupport::featureForAnnotation(&v210, shared_owners, v10, v7);
    v11 = v4[13].__shared_owners_;
    v4[13].std::__shared_count = v210;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  v13 = &v4[13].__vftable;
  v12 = v4[13].__vftable;
  if (v12)
  {
    if (!LODWORD(v12[3].~__shared_weak_count_0))
    {
      if ((*(v12->~__shared_weak_count + 33))(v12) == 7)
      {
        v14 = &v4[13].~__shared_weak_count;
        v15 = v4[13].__shared_owners_;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        md::TrafficIncidentLabelFeature::updateStyle(v14, v4[1].__vftable);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      else
      {
        v16 = v4[13].__shared_owners_;
        *&v226 = v4[13].__vftable;
        *(&v226 + 1) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v210 = 0;
        *&v211 = 0;
        std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature> const*,std::shared_ptr<md::LabelFeature> const*>(&v210, &v226, v227);
        if (*(&v226 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v226 + 1));
        }

        md::LabelFeatureStyler::styleExternalFeatures(v4[1].__vftable[7].__on_zero_shared, &v210);
        *&v226 = &v210;
        std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v226);
      }
    }

    if (*(*(**v13 + 568))(*v13, 0, 0, 0, 0))
    {
      v17 = v4[2].__vftable;
      v18 = v4[1].__vftable;
      LODWORD(v210.__vftable) = 1;
      md::LabelPool::labelForCustomFeature(&v226, v17, v18, (p_shared_owners + 2), &v210, 0);
      v19 = v226;
      if (v226)
      {
        v20 = v4[2].__vftable;
        md::LabelPool::setLocalLabel(v20, (v20 + 704), &v226);
        *(v20 + 757) = 0;
        v21 = v4[12].__shared_owners_;
        v210.__vftable = 0;
        LOBYTE(v210.__shared_owners_) = 0;
        v214 = 0;
        v215 = 0;
        v216 = 0;
        v217 = 0;
        v218 = 0;
        v219 = 0;
        v220 = 0;
        v211 = 0u;
        v212 = 0u;
        v213 = 0;
        md::Label::populateFeatureInfo(v19, &v210, 0);
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v221, v4[1].~__shared_weak_count_0, v4[1].__on_zero_shared);
        atomic_fetch_add((v19 + 1385), 1u);
        atomic_fetch_add((v21[36] + 1385), 0xFFu);
        v22 = v226;
        if (*(&v226 + 1))
        {
          atomic_fetch_add_explicit((*(&v226 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v23 = v21[37];
        *(v21 + 18) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        v25 = v221;
        v24 = v222;
        if (v222)
        {
          atomic_fetch_add_explicit(&v222->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v21[30];
        v21[29] = v25;
        v21[30] = v24;
        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }

        md::StandardLabelMarker::populateFromFeature(v21, &v210);
        v27 = v222;
        if (v222)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v222);
        }

        if (SHIBYTE(v220) < 0)
        {
          v28 = v218;
          v29 = mdm::zone_mallocator::instance(v27);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v29, v28);
        }

        if (SHIBYTE(v217) < 0)
        {
          v30 = v215;
          v31 = mdm::zone_mallocator::instance(v27);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v31, v30);
        }

        std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v212);
        if (*(&v211 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v211 + 1));
        }

        if (*(&v22 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
        }

        (v4->__vftable[4].__get_deleter)(v4, &v4[12].__shared_owners_);
        goto LABEL_42;
      }

      if (*(&v226 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v226 + 1));
      }
    }
  }

  md::LabelManager::releaseAdoptedSelectedLabelMarker(v4[1].__vftable, 1);
LABEL_42:
  v32 = v4[12].__shared_weak_owners_;
  *p_shared_owners = 0;
  v4[12].__shared_weak_owners_ = 0;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  a1 = v4[13].__shared_owners_;
  *v13 = 0;
  p_shared_owners[3] = 0;
  if (a1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a1);
  }

  v33 = v4[11].__shared_weak_owners_;
  if (v33)
  {
    v4[11].__shared_weak_owners_ = 0;
  }

LABEL_48:
  v34 = v4[2].__vftable;
  v35 = *(v34[15].__get_deleter + 57);
  v202 = v34;
  if (v35 == LODWORD(v34[18].__on_zero_shared_weak))
  {
    on_zero_shared_weak = v34[15].__on_zero_shared_weak;
    if (*(on_zero_shared_weak + 88) != 1)
    {
      goto LABEL_116;
    }

    v196 = *(v34[15].__get_deleter + 57);
    *(on_zero_shared_weak + 88) = 0;
    v37 = &v221;
    v39 = (on_zero_shared_weak + 72);
    v38 = *(on_zero_shared_weak + 9);
    v221 = *(on_zero_shared_weak + 8);
    v222 = v38;
    v40 = *(on_zero_shared_weak + 10);
    *(on_zero_shared_weak + 10) = 0;
    *(on_zero_shared_weak + 9) = 0;
    *&v223 = v40;
    p_shared_weak_owners = &v38->__shared_weak_owners_;
    if (v40)
    {
      v37 = p_shared_weak_owners;
    }

    *v37 = &v222;
    *(on_zero_shared_weak + 8) = v39;
    v42 = *(on_zero_shared_weak + 5);
    v199 = (on_zero_shared_weak + 64);
    for (i = *(on_zero_shared_weak + 6); v42 != i; ++v42)
    {
      v43 = *v42;
      v44 = v222;
      if (!v222)
      {
        goto LABEL_62;
      }

      v45 = &v222;
      do
      {
        v46 = v44;
        v47 = v45;
        v48 = v44[1].__shared_owners_;
        if (v48 >= v43)
        {
          v45 = v44;
        }

        v44 = *(&v44->__vftable + (v48 < v43));
      }

      while (v44);
      if (v45 == &v222)
      {
        goto LABEL_62;
      }

      if (v48 < v43)
      {
        v46 = v47;
      }

      if (v43 < v46[1].__shared_owners_)
      {
LABEL_62:
        operator new();
      }

      v49 = *v39;
      if (!*v39)
      {
LABEL_69:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v50 = v49;
          v51 = v49[4];
          if (v43 >= v51)
          {
            break;
          }

          v49 = *v50;
          if (!*v50)
          {
            goto LABEL_69;
          }
        }

        if (v51 >= v43)
        {
          break;
        }

        v49 = v50[1];
        if (!v49)
        {
          goto LABEL_69;
        }
      }
    }

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](on_zero_shared_weak + 1);
    v52 = std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::reserve((on_zero_shared_weak + 8), *(on_zero_shared_weak + 10));
    v226 = 0uLL;
    *&v227[0] = 0;
    v53 = *v199;
    if (*v199 != v39)
    {
      do
      {
        v54 = *(on_zero_shared_weak + 2);
        v55 = *(on_zero_shared_weak + 3);
        if (v54 >= v55)
        {
          v58 = *(on_zero_shared_weak + 1);
          v59 = (v54 - v58) >> 4;
          v60 = v59 + 1;
          if ((v59 + 1) >> 60)
          {
            goto LABEL_272;
          }

          v61 = v55 - v58;
          if (v61 >> 3 > v60)
          {
            v60 = v61 >> 3;
          }

          if (v61 >= 0x7FFFFFFFFFFFFFF0)
          {
            v62 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v60;
          }

          *&v212 = on_zero_shared_weak + 32;
          if (v62)
          {
            v63 = mdm::zone_mallocator::instance(v52);
            v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v63, v62);
          }

          else
          {
            v64 = 0;
          }

          v65 = &v64[16 * v59];
          v66 = *(v53 + 5);
          *v65 = v66;
          if (*(&v66 + 1))
          {
            atomic_fetch_add_explicit((*(&v66 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v67 = &v64[16 * v62];
          v57 = v65 + 16;
          v68 = *(on_zero_shared_weak + 1);
          v69 = *(on_zero_shared_weak + 2) - v68;
          v70 = &v65[-v69];
          memcpy(&v65[-v69], v68, v69);
          v71 = *(on_zero_shared_weak + 1);
          *(on_zero_shared_weak + 1) = v70;
          *(on_zero_shared_weak + 2) = v57;
          v72 = *(on_zero_shared_weak + 3);
          *(on_zero_shared_weak + 3) = v67;
          *&v211 = v71;
          *(&v211 + 1) = v72;
          v210.__vftable = v71;
          v210.__shared_owners_ = v71;
          v52 = std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v210);
          v39 = (on_zero_shared_weak + 72);
        }

        else
        {
          *v54 = v53[5];
          v56 = v53[6];
          v54[1] = v56;
          if (v56)
          {
            atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
          }

          v57 = v54 + 2;
        }

        *(on_zero_shared_weak + 2) = v57;
        v73 = v53[5];
        if (!*(v73 + 128))
        {
          v74 = *(&v226 + 1);
          if (*(&v226 + 1) >= *&v227[0])
          {
            v77 = (*(&v226 + 1) - v226) >> 4;
            v78 = v77 + 1;
            if ((v77 + 1) >> 60)
            {
LABEL_272:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v79 = *&v227[0] - v226;
            if ((*&v227[0] - v226) >> 3 > v78)
            {
              v78 = v79 >> 3;
            }

            if (v79 >= 0x7FFFFFFFFFFFFFF0)
            {
              v80 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v80 = v78;
            }

            *&v212 = v227 + 8;
            if (v80)
            {
              v81 = mdm::zone_mallocator::instance(v52);
              v82 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v81, v80);
              v73 = v53[5];
            }

            else
            {
              v82 = 0;
            }

            v83 = &v82[16 * v77];
            *v83 = v73;
            v84 = v53[6];
            *(v83 + 1) = v84;
            if (v84)
            {
              atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
            }

            v85 = &v82[16 * v80];
            v76 = v83 + 16;
            v86 = &v83[-(*(&v226 + 1) - v226)];
            memcpy(v86, v226, *(&v226 + 1) - v226);
            v87 = v226;
            v88 = *&v227[0];
            *&v226 = v86;
            *(&v226 + 1) = v76;
            *&v227[0] = v85;
            *&v211 = v87;
            *(&v211 + 1) = v88;
            v210.__vftable = v87;
            v210.__shared_owners_ = v87;
            v52 = std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v210);
            v39 = (on_zero_shared_weak + 72);
          }

          else
          {
            **(&v226 + 1) = v73;
            v75 = v53[6];
            *(v74 + 8) = v75;
            if (v75)
            {
              atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
            }

            v76 = (v74 + 16);
          }

          *(&v226 + 1) = v76;
        }

        v89 = v53[1];
        if (v89)
        {
          do
          {
            v90 = v89;
            v89 = *v89;
          }

          while (v89);
        }

        else
        {
          do
          {
            v90 = v53[2];
            v91 = *v90 == v53;
            v53 = v90;
          }

          while (!v91);
        }

        v53 = v90;
      }

      while (v90 != v39);
      if (v226 != *(&v226 + 1))
      {
        md::LabelFeatureStyler::styleExternalFeatures(*(*on_zero_shared_weak + 296), &v226);
      }
    }

    v210.__vftable = &v226;
    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v210);
    std::__tree<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::__map_value_compare<GEOComposedRoute const* {__strong},std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>,std::less<GEOComposedRoute const* {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRoute const* {__strong},std::shared_ptr<md::ProgressiveLodRibbon>>>>::destroy(v222);
    v34 = v202;
    v35 = v196;
  }

  LOBYTE(v34[19].~__shared_weak_count) = 0;
  LODWORD(v34[18].__on_zero_shared_weak) = v35;
LABEL_116:
  v92 = v202;
  if (!a4)
  {
    goto LABEL_181;
  }

  on_zero_shared = v202->__on_zero_shared;
  get_deleter = v202->__get_deleter;
  p_on_zero_shared = &v202->__on_zero_shared;
  if (on_zero_shared != get_deleter)
  {
    v96 = v202->__on_zero_shared;
    do
    {
      v97 = *v96;
      v96 += 2;
      *(v97 + 129) = 0;
    }

    while (v96 != get_deleter);
  }

  v98 = *(a3 + 24);
  if (v98)
  {
    v99 = *(a3 + 24);
    do
    {
      *(v99[2] + 129) = 1;
      v99 = *v99;
    }

    while (v99);
    do
    {
      v100 = v98[2];
      if (*(v100 + 138) == 1 && (*(v100 + 137) & 1) == 0)
      {
        v101 = v202[15].__get_deleter;
        v103 = *(v101 + 3);
        v102 = *(v101 + 4);
        if (v102)
        {
          atomic_fetch_add_explicit((v102 + 8), 1uLL, memory_order_relaxed);
        }

        a1 = *(v100 + 152);
        *(v100 + 144) = v103;
        *(v100 + 152) = v102;
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        *(v100 + 137) = 1;
        v100 = v98[2];
      }

      if ((*(v100 + 128) & 1) == 0)
      {
        *(v100 + 128) = 1;
        *(v100 + 130) = 1;
        *(v100 + 139) = 1;
        v104 = *(v100 + 144);
        if (v104)
        {
          std::mutex::lock(*(v100 + 144));
          sig = v104[1].__m_.__sig;
          if (sig)
          {
            (**sig)(sig, v100);
          }

          std::mutex::unlock(v104);
          v100 = v98[2];
        }

        std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelMapTile>>(&v202[2], v100);
        std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelMapTile>>(&v202[3].__on_zero_shared, v98[2]);
      }

      v98 = *v98;
    }

    while (v98);
    v92 = v202;
    on_zero_shared = v202->__on_zero_shared;
    get_deleter = v202->__get_deleter;
  }

  else
  {
    v92 = v202;
  }

  while (on_zero_shared != get_deleter)
  {
    v106 = *on_zero_shared;
    if ((*(*on_zero_shared + 129) & 1) == 0)
    {
      *(v106 + 128) = 0;
      std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelMapTile>,std::shared_ptr<md::LabelMapTile> const&>(&v92[2], v106, on_zero_shared);
    }

    on_zero_shared += 2;
  }

  v107 = *(a3 + 24);
  if (v107)
  {
    v108 = -1;
    v109 = *(a3 + 24);
    do
    {
      v110 = v108;
      v109 = *v109;
      ++v108;
    }

    while (v109);
    v111 = v202->__on_zero_shared_weak;
    v112 = v202->__on_zero_shared;
    if (v108 >= (v111 - v112) >> 4)
    {
      if (v112)
      {
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](p_on_zero_shared);
        v117 = *p_on_zero_shared;
        v119 = mdm::zone_mallocator::instance(v118);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMapTile>>(v119, v117);
        v111 = 0;
        *p_on_zero_shared = 0;
        v202->__get_deleter = 0;
        v202->__on_zero_shared_weak = 0;
      }

      if (v108 >= 0xFFFFFFFFFFFFFFFLL)
      {
        goto LABEL_273;
      }

      v120 = v110 + 2;
      if (v111 >> 3 > v110 + 2)
      {
        v120 = v111 >> 3;
      }

      v121 = v111 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v120;
      if (v121 >> 60)
      {
LABEL_273:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v122 = mdm::zone_mallocator::instance(a1);
      v123 = pthread_rwlock_rdlock((v122 + 32));
      if (v123)
      {
        geo::read_write_lock::logFailure(v123, "read lock", v124);
      }

      j = malloc_type_zone_malloc(*v122, 16 * v121, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v122 + 24), 1u);
      geo::read_write_lock::unlock((v122 + 32));
      v92 = v202;
      v202->__on_zero_shared = j;
      v202->__get_deleter = j;
      v202->__on_zero_shared_weak = (j + 16 * v121);
      do
      {
        *j = v107[2];
        v125 = v107[3];
        *(j + 1) = v125;
        if (v125)
        {
          atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
        }

        v107 = *v107;
        j = (j + 16);
      }

      while (v107);
      goto LABEL_180;
    }

    v113 = (v202->__get_deleter - v112) >> 4;
    if (v113 <= v108)
    {
      v92 = v202;
      if (v113 < 1)
      {
        v127 = *(a3 + 24);
      }

      else
      {
        v126 = v113 + 1;
        v127 = *(a3 + 24);
        do
        {
          v127 = *v127;
          --v126;
        }

        while (v126 > 1);
      }

      std::__copy_impl::operator()[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::shared_ptr<md::LabelMapTile>*>(*(a3 + 24), v127, v112);
      for (j = v202->__get_deleter; v127; j = (j + 16))
      {
        *j = v127[2];
        v128 = v127[3];
        *(j + 1) = v128;
        if (v128)
        {
          atomic_fetch_add_explicit((v128 + 8), 1uLL, memory_order_relaxed);
        }

        v127 = *v127;
      }

      goto LABEL_180;
    }

    v92 = v202;
  }

  else
  {
    v112 = *p_on_zero_shared;
  }

  j = std::__copy_impl::operator()[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::shared_ptr<md::LabelMapTile>*>(*(a3 + 24), 0, v112);
  for (k = v92->__get_deleter; k != j; k = (k - 16))
  {
    v116 = *(k - 1);
    if (v116)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v116);
    }
  }

LABEL_180:
  v92->__get_deleter = j;
LABEL_181:
  for (m = v92[4].~__shared_weak_count; m; m = *m)
  {
    md::LabelMapTile::broadcastLabelDeactivate(*(m + 2));
  }

  std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::clear(&v92[3].__on_zero_shared);
  *&v92[1].__get_deleter = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  p_get_deleter = &v92[1].__get_deleter;
  *&v92[1].~__shared_weak_count_0 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v131 = &v92[1].~__shared_weak_count_0;
  v132 = v92->__on_zero_shared;
  v133 = v92->__get_deleter;
  v134 = 1;
  while (v132 != v133)
  {
    v135 = 0;
    v136 = *v132;
    v137 = *v132 + 48;
    v138 = *v132 + 64;
    v139 = 1;
    do
    {
      *&v131[v135] = fmin(*(v137 + 8 * v135), *&v131[v135]);
      v140 = v139;
      *&p_get_deleter[v135] = fmax(*&p_get_deleter[v135], *(v138 + 8 * v135));
      v135 = 1;
      v139 = 0;
    }

    while ((v140 & 1) != 0);
    v142 = *(v136 + 48);
    v141 = *(v136 + 49);
    if (v142 != v141)
    {
      v143 = v202->~__shared_weak_count_0;
      do
      {
        v144 = *v142;
        v142 += 2;
        std::function<void ()(md::LabelManager *)>::operator()(*(v144 + 32), v143);
      }

      while (v142 != v141);
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v136 + 48);
    }

    if (v134 & 1) == 0 || (v145 = *v132, *(*v132 + 552) != *(v202->~__shared_weak_count_0 + 461)) || (v145[130] & 1) != 0 || (v145[132] & 1) != 0 || (v145[131])
    {
      v134 = 0;
    }

    else
    {
      v134 = v145[136] ^ 1;
    }

    v132 = (v132 + 16);
  }

  HIBYTE(v202[18].__on_zero_shared_weak) = v134 & 1;
  v146 = v4[1].__shared_owners_;
  if (*(v146 + 232) == 1)
  {
    *(v146 + 232) = 0;
    v221 = 0;
    v222 = 0;
    *(&v223 + 1) = 0;
    v224 = 0;
    *(&v223 + 1) = 0;
    v225 = 1065353216;
    v147 = *(v146 + 72);
    v203 = (v146 + 80);
    if (v147 == (v146 + 80))
    {
      v168 = 0;
    }

    else
    {
      v201 = v146;
      do
      {
        v148 = v147[24];
        if (!v148 || *(v148 + 52) - 1 <= 1)
        {
          if (*(v147 + 280) == 1)
          {
            v149 = v147[34];
            if ((*(v149 + 129) & 1) == 0)
            {
              md::LabelClusterProvider::initializeSourceAnnotations(v147[34]);
            }

            v150 = *(v149 + 56);
          }

          else
          {
            v150 = [MEMORY[0x1E695DF70] arrayWithCapacity:v147[33]];
            v151 = v147[30];
            if (v151 != v147 + 31)
            {
              do
              {
                v152 = [v151[4] feature];
                if ([v152 isPointFeature])
                {
                  v153 = *(v151 + 14) > *(v151 + 15);

                  if (v153)
                  {
                    [v150 addObject:v151[4]];
                  }
                }

                else
                {
                }

                v154 = v151[1];
                if (v154)
                {
                  do
                  {
                    v155 = v154;
                    v154 = *v154;
                  }

                  while (v154);
                }

                else
                {
                  do
                  {
                    v155 = v151[2];
                    v91 = *v155 == v151;
                    v151 = v155;
                  }

                  while (!v91);
                }

                v151 = v155;
              }

              while (v155 != v147 + 31);
            }
          }

          v226 = 0u;
          memset(v227, 0, sizeof(v227));
          v156 = v150;
          v157 = [v156 countByEnumeratingWithState:&v226 objects:&v210 count:16];
          if (v157)
          {
            v158 = **&v227[0];
            do
            {
              for (n = 0; n != v157; ++n)
              {
                if (**&v227[0] != v158)
                {
                  objc_enumerationMutation(v156);
                }

                v160 = [*(*(&v226 + 1) + 8 * n) feature];
                v161 = v160;
                if (v160 && *[v160 feature])
                {
                  v162 = [v161 pointFeature];
                  v163 = v162;
                  v164 = *(v162 + 184);
                  if (v164 || (v164 = *(v162 + 16)) != 0)
                  {
                    LOBYTE(v208) = 4;
                    *(&v208 + 1) = v164;
                    std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelFeatureID,md::LabelFeatureID>(&v221, 4u, v164, &v208);
                  }

                  v165 = *(v163 + 24);
                  if (v165)
                  {
                    LOBYTE(v208) = 3;
                    *(&v208 + 1) = v165;
                    std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelFeatureID,md::LabelFeatureID>(&v221, 3u, v165, &v208);
                  }
                }
              }

              v157 = [v156 countByEnumeratingWithState:&v226 objects:&v210 count:16];
            }

            while (v157);
          }
        }

        v166 = v147[1];
        if (v166)
        {
          do
          {
            v167 = v166;
            v166 = *v166;
          }

          while (v166);
        }

        else
        {
          do
          {
            v167 = v147[2];
            v91 = *v167 == v147;
            v147 = v167;
          }

          while (!v91);
        }

        v147 = v167;
      }

      while (v167 != v203);
      v168 = v224;
      v146 = v201;
    }

    if (*(v146 + 208) == v168)
    {
      v169 = (v146 + 192);
      while (1)
      {
        v169 = *v169;
        if (!v169)
        {
          break;
        }

        v170 = *(v169 + 16);
        v171 = v169[3];
        v172 = std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::find<md::LabelFeatureID>(&v221, *(v169 + 16), v171);
        if (!v172 || v170 != *(v172 + 16) || v171 != v172[3])
        {
          goto LABEL_248;
        }
      }

      v178 = 0;
      v175 = *(&v223 + 1);
    }

    else
    {
LABEL_248:
      std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::clear(v146 + 168);
      v173 = v221;
      v221 = 0;
      std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> **,0>((v146 + 168), v173);
      v174 = v222;
      v175 = *(&v223 + 1);
      *(v146 + 192) = *(&v223 + 1);
      *(v146 + 176) = v174;
      v222 = 0;
      v176 = v224;
      *(v146 + 208) = v224;
      *(v146 + 216) = v225;
      if (v176)
      {
        v177 = *(v175 + 1);
        if ((v174 & (&v174[-1].__shared_weak_owners_ + 7)) != 0)
        {
          if (v177 >= v174)
          {
            v177 %= v174;
          }
        }

        else
        {
          v177 &= &v174[-1].__shared_weak_owners_ + 7;
        }

        v175 = 0;
        *(*(v146 + 168) + 8 * v177) = v146 + 192;
        *(&v223 + 1) = 0;
        v224 = 0;
      }

      ++*(v146 + 224);
      v178 = 1;
    }

    std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(v175);
    v180 = v221;
    v221 = 0;
    if (v180)
    {
      v181 = mdm::zone_mallocator::instance(v179);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *>(v181, v180);
    }

    if (v178)
    {
      BYTE4(v4[15].__shared_owners_) = 1;
    }
  }

  if (LOBYTE(v4[15].__shared_owners_) == 1)
  {
    LOBYTE(v4[15].__shared_owners_) = 0;
    std::vector<std::unique_ptr<md::GenericLabelCollidableItem>>::clear[abi:nn200100](&v4[5].__shared_weak_owners_);
    v182 = v4[1].__vftable[10].__get_deleter;
    v183 = *(v182 + 11);
    v184 = *(v182 + 267);
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v185 = v4[7].__vftable;
    v186 = [(std::__shared_weak_count_vtbl *)v185 countByEnumeratingWithState:&v204 objects:v209 count:16];
    if (v186)
    {
      v187 = *v205;
      v188 = v183;
      v189 = v184;
      do
      {
        for (ii = 0; ii != v186; ++ii)
        {
          if (*v205 != v187)
          {
            objc_enumerationMutation(v185);
          }

          v191 = *(*(&v204 + 1) + 8 * ii);
          if (![v191 type])
          {
            [v191 rect];
            *&v192 = v192 * v188;
            *&v193 = v189 - (v193 + v194) * v188;
            *&v195 = v195 * v188;
            *&v194 = v194 * v188;
            v210.__vftable = __PAIR64__(LODWORD(v193), LODWORD(v192));
            *&v210.__shared_owners_ = *&v195 + *&v192;
            *(&v210.__shared_owners_ + 1) = *&v193 + *&v194;
            operator new();
          }
        }

        v186 = [(std::__shared_weak_count_vtbl *)v185 countByEnumeratingWithState:&v204 objects:v209 count:16];
      }

      while (v186);
    }
  }
}

void sub_1B2AB81C8(_Unwind_Exception *a1)
{
  *(v2 - 208) = v1;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 - 208));
  _Unwind_Resume(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v37 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v3);
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
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v39, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v38, v8, v8, v4, v6);
  v9 = v39[0];
  v36 = v38;
  if (v39[0] == v38)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v39[3];
    v34 = a2;
    v35 = v39[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v39[1];
    do
    {
      v15 = v9[1];
      v16 = v15 & 0x3F;
      v17 = (v15 >> 3) & 0x1FF8;
      v18 = *(*(*(v35 + 1) + v17) + 4 * v16 + 2);
      v19 = (*(*(v35 + 7) + ((v18 >> 3) & 0x1FF8)) + 24 * (v18 & 0x3F));
      v20 = *(*(*(v10 + 1) + v17) + 4 * v16 + 2);
      v21 = (*(*(v10 + 7) + ((v20 >> 3) & 0x1FF8)) + 16 * (v20 & 0x3F));
      v22 = v12;
      LODWORD(v16) = *v12;
      v23 = v11;
      *(v11 + 104 * v16 + 24) = *v9;
      v24 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v37);
      v25 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v37);
      processMaterialEmissiveParameters(v24, v25, v19, v21);
      ++v13;
      v26 = v9 + 2;
      do
      {
        v9 = v26;
        v39[0] = v26;
        if (v26 == v14)
        {
          break;
        }

        v27 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v39, *v26, v26[1]);
        v26 = v9 + 2;
      }

      while (!v27);
      v11 = v23;
      v12 = v22;
    }

    while (v9 != v36);
    v28 = *(v34 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v28 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v28 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v29 = v11 + 104 * *v12;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v13;
  v31 = v11 + 104 * *v12;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 >= 0x10)
  {
    *v32 = 0;
  }

  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
}

void md::LabelLayoutContext::evaluateWorldPoint(uint64_t a1, uint64_t a2, float32x2_t *a3, int a4, int a5, uint64_t a6, double a7)
{
  *a6 = *(a1 + 32);
  *(a6 + 12) = 1065353216;
  v8 = *(a1 + 256);
  *(a6 + 16) = v8;
  *(a6 + 24) = v8 / a7;
  *(a6 + 32) = 0;
  *(a6 + 4) = 0x3F80000000000000;
  if (a4 == 6)
  {
    return;
  }

  v14 = *a1;
  if (*(*a1 + 24) == 1 && a3[1].i8[4] == 1)
  {
    v16 = 0;
    v17 = 136;
    if (a5)
    {
      v17 = 112;
    }

    v18 = a1 + v17;
    v33 = *v18;
    v34 = *(v18 + 16);
    do
    {
      *(&v35 + v16) = *(&v33 + v16) - *(a2 + v16);
      v16 += 8;
    }

    while (v16 != 24);
    v30 = v35;
    v31 = v36;
    v19 = gm::Matrix<double,3,1>::normalized<int,void>(&v30);
    v20 = 0;
    *&v35 = v19;
    *(&v35 + 1) = v21;
    v36 = v22;
    do
    {
      v23 = *(&v35 + v20);
      v32.f32[v20++] = v23;
    }

    while (v20 != 3);
    if (v14[25])
    {
      *(a6 + 8) = ((v32.f32[0] * a3->f32[0]) + (v32.f32[1] * a3->f32[1])) / sqrtf(((a3->f32[0] * a3->f32[0]) + (a3->f32[1] * a3->f32[1])) * ((v32.f32[0] * v32.f32[0]) + (v32.f32[1] * v32.f32[1])));
      if (v14[26] != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v24 = 0;
    v25 = 0.0;
    do
    {
      v25 = v25 + (v32.f32[v24] * a3->f32[v24]);
      ++v24;
    }

    while (v24 != 3);
    *(a6 + 8) = v25;
    if (v14[26])
    {
LABEL_16:
      v26 = vcvtq_f64_f32(v32);
      v27 = vmulq_f64(vextq_s8(v26, v26, 8uLL), vcvtq_f64_f32(*a3));
      *(a6 + 33) = *&vsubq_f64(v27, vdupq_laneq_s64(v27, 1)) < 0;
    }
  }

LABEL_17:
  if (v14[18] != 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 15))
  {
    goto LABEL_24;
  }

  v28 = 0;
  v29 = 0.0;
  do
  {
    v29 = v29 + *(a2 + v28) * *(a1 + 160 + v28);
    v28 += 8;
  }

  while (v28 != 24);
  if (v29 <= *(a1 + 288))
  {
LABEL_24:
    if ((*(a1 + 9) & 1) == 0)
    {

      md::LabelLayoutContext::computeZoomAtPoint(a1, a2, a4, a5, a6, a7);
    }
  }

  else
  {
    *(a6 + 32) = 1;
  }
}

float32x2_t md::LabelLayoutContext::projectPointToPixel(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v3 = 0;
  v4 = (a1 + 864);
  do
  {
    v5 = 0;
    v6 = 0.0;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 4;
      v6 = v6 + *(a2 + v5) * v8;
      v5 += 8;
    }

    while (v5 != 24);
    v15.f64[v3] = *(a1 + 864 + 8 * v3 + 96) + v6;
    ++v3;
    ++v4;
  }

  while (v3 != 4);
  __asm { FMOV            V1.2D, #1.0 }

  result = vcvt_f32_f64(vmulq_f64(v15, vdivq_f64(_Q1, vdupq_lane_s64(v16, 0))));
  *a3 = result;
  return result;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v57[4] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v48 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(v3);
  v57[0] = v4;
  v57[1] = v5;
  v57[2] = v6;
  v57[3] = v7;
  v8 = 1;
  v9 = v4;
  v10 = v57;
  do
  {
    if (*(v57[v8] + 40) - *(v57[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v57[v8];
      v10 = &v57[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v12 = *(*v10 + 32);
  v11 = *(*v10 + 40);
  v51 = v12;
  v52 = v11;
  v53 = v4;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v49 = v11;
  while (v12 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v51, *v12, v12[1]))
  {
    v12 += 2;
    v51 = v12;
    v11 = v49;
  }

  v13 = v51;
  if (v51 == v49)
  {
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v45 = v54;
    v46 = v53;
    v44 = v55;
    v42 = a2;
    v43 = v56;
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v52;
    v47 = v15;
    do
    {
      v50 = v16;
      v18 = v13[1];
      v19 = v18 & 0x3F;
      v20 = (v18 >> 3) & 0x1FF8;
      v21 = *(*(*(v46 + 8) + v20) + 4 * v19 + 2);
      v22 = (*(*(v46 + 56) + ((v21 >> 3) & 0x1FF8)) + 24 * (v21 & 0x3F));
      v23 = *(*(*(v45 + 8) + v20) + 4 * v19 + 2);
      v24 = (*(*(v45 + 56) + ((v23 >> 3) & 0x1FF8)) + 32 * (v23 & 0x3F));
      v25 = *(*(*(v44 + 8) + v20) + 4 * v19 + 2);
      v26 = (*(*(v44 + 56) + ((v25 >> 3) & 0x1FF8)) + 8 * (v25 & 0x3F));
      v27 = *(*(*(v43 + 8) + v20) + 4 * v19 + 2);
      v28 = (*(*(v43 + 56) + ((v27 >> 3) & 0x1FF8)) + 12 * (v27 & 0x3F));
      *(v14 + 104 * *v15 + 24) = *v13;
      v29 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v48);
      v30 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v48);
      v31 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(v48);
      processMaterialPlanarParameters(v29, v30, v31, v22, v24, v26, v28);
      v16 = v50 + 1;
      v32 = v13 + 2;
      while (1)
      {
        v13 = v32;
        v51 = v32;
        if (v32 == v17)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v51, *v32, v32[1]);
        v32 = v13 + 2;
        if (v33)
        {
          v34 = v13;
          goto LABEL_16;
        }
      }

      v34 = v17;
LABEL_16:
      v15 = v47;
    }

    while (v34 != v49);
    v35 = *(v42 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
    *(v35 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v35 + 4096);
  }

  *(v14 + 104 * *v15 + 24) = -65536;
  v36 = v14 + 104 * *v15;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = v16;
  v38 = v14 + 104 * *v15;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 >= 0x10)
  {
    *v39 = 0;
  }

  result = 0.0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UnitsPerMeter>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UnitsPerMeter>(void)::localId;
    *algn_1EB83D8D8 = 0xBEF372B431A710A8;
    qword_1EB83D8E0 = "md::ls::UnitsPerMeter]";
    qword_1EB83D8E8 = 21;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13UnitsPerMeterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A560C0;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[428];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21SharedColorDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42F48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21SharedColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42F48;
  a2[1] = v2;
  return result;
}

uint64_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(uint64_t a1, int a2, unsigned int a3, int a4, _BYTE *a5)
{
  if (a4 == 2)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a1 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        v12 = v10 < 1.0;
        goto LABEL_13;
      }
    }

    v13 = (a1 + v9 + 11);
  }

  else
  {
    v13 = (a1 + 12);
  }

  v14 = *v13;
  if (v14 != 2)
  {
    return *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<int>(a1, a2, a3, v14, a5);
  }

  v12 = 1;
LABEL_13:
  v19 = 1;
  v18 = 1;
  v15 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<int>(a1, a2, a3, 0, &v19);
  v16 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<int>(a1, a2, a3, 1u, &v18);
  if (a5)
  {
    *a5 = (v19 | v18) & 1;
  }

  if (v12)
  {
    return v15;
  }

  else
  {
    return v16;
  }
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<int>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (gss::CartoStyle<gss::PropertyID>::hasValueForKeyAtZ(v12, a2, a3))
        {
          break;
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      if (a3 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = a3;
      }

      v19 = *v12 + 120 * *(v12 + v18 + 16);
      v17 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v19 + 48), a2);
      if (v17 != *(v19 + 60))
      {
        v20 = *(v19 + 48);
        v21 = *(v19 + 56);
        return (v20 + v21 + 4 * v17);
      }

      return &gss::PropertySetValueHelper<gss::PropertyID,int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

LABEL_6:
    v13 = *(v7 + 72);
    if (v13)
    {
      v14 = a3 >= 0x17 ? 23 : a3;
      v15 = *v13 + 120 * *(v13 + v14 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v15, a2) != *(v15 + 12))
      {
        v17 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v15 + 48), a2);
        if (v17 != *(v15 + 60))
        {
          v20 = *(v15 + 48);
          v21 = *(v15 + 56);
          return (v20 + v21 + 4 * v17);
        }

        return &gss::PropertySetValueHelper<gss::PropertyID,int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,int>(a2);
}

void *gss::defaultValueForKey<gss::PropertyID,int>(int a1)
{
  v1 = &gss::defaultValueForKey<gss::PropertyID,int>(gss::PropertyID)::_defaultValue;
  if (a1 == 235)
  {
    v1 = &gss::defaultValueForKey<gss::PropertyID,int>(gss::PropertyID)::kDefaultLabelShieldDisplayThreshold;
  }

  if (a1 == 219)
  {
    return &gss::defaultValueForKey<gss::PropertyID,int>(gss::PropertyID)::kDefaultLabelRoadCrossingThreshold;
  }

  else
  {
    return v1;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDynamicRenderable>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDynamicRenderable>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[480];
}

uint64_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(uint64_t a1, int a2, unsigned int a3, int a4, _BYTE *a5)
{
  if (a4 != 2)
  {
    v12 = (a1 + 12);
LABEL_10:
    v13 = *v12;
    if (v13 == 2)
    {
      v33 = 1;
      goto LABEL_35;
    }

    v14 = a1 + 16 * v13;
    v15 = *(v14 + 16);
    if (!v15)
    {
      goto LABEL_12;
    }

    if (*(v14 + 56))
    {
      v18 = *(v14 + 48);
      v19 = 8 * *(v14 + 56);
      while (1)
      {
        v20 = *(*v18 + 72);
        if (v20)
        {
          v23 = *v20;
          v21 = v20 + 2;
          v22 = v23;
          v24 = v23 + 120 * *(v21 + a3);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v24, a2) != *(v24 + 12))
          {
            break;
          }
        }

        v18 += 8;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      if (a3 >= 0x17)
      {
        v29 = 23;
      }

      else
      {
        v29 = a3;
      }

      v30 = v22 + 120 * *(v21 + v29);
      v28 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v30 + 48), a2);
      if (v28 != *(v30 + 60))
      {
        v31 = *(v30 + 48);
        v32 = *(v30 + 56);
LABEL_33:
        v16 = (v31 + v32 + 4 * v28);
        return *v16;
      }
    }

    else
    {
LABEL_21:
      v25 = *(v15 + 72);
      if (!v25 || (a3 >= 0x17 ? (v26 = 23) : (v26 = a3), v27 = *v25 + 120 * *(v25 + v26 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v27, a2) == *(v27 + 12)))
      {
LABEL_12:
        if (a5)
        {
          *a5 = 0;
        }

        v16 = gss::defaultValueForKey<gss::PropertyID,unsigned int>(a2);
        return *v16;
      }

      v28 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v27 + 48), a2);
      if (v28 != *(v27 + 60))
      {
        v31 = *(v27 + 48);
        v32 = *(v27 + 56);
        goto LABEL_33;
      }
    }

    v16 = &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    return *v16;
  }

  v9 = *a1;
  if (!*a1 || (v10 = *v9, LODWORD(v9) = *v9 == 1.0, *(a1 + 10) != 1) || (v10 != 0.0 ? (v11 = v10 == 1.0) : (v11 = 1), v11))
  {
    v12 = (a1 + v9 + 11);
    goto LABEL_10;
  }

  v33 = v10 < 1.0;
LABEL_35:
  v37 = 1;
  v36 = 1;
  v34 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(a1, a2, a3, 0, &v37);
  v35 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned int>(a1, a2, a3, 1u, &v36);
  if (a5)
  {
    *a5 = (v37 | v36) & 1;
  }

  if (v33)
  {
    return v34;
  }

  else
  {
    return v35;
  }
}

void *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned char>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (gss::CartoStyle<gss::PropertyID>::hasValueForKeyAtZ(v12, a2, a3))
        {
          break;
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      if (a3 >= 0x17)
      {
        v23 = 23;
      }

      else
      {
        v23 = a3;
      }

      v24 = *v12 + 120 * *(v12 + v23 + 16);
      v19 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v24 + 24), a2);
      if (v19 == *(v24 + 36))
      {
        return &gss::PropertySetValueHelper<gss::PropertyID,unsigned char>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
      }

      v20 = *(v24 + 24);
      v21 = *(v24 + 32);
      return (v20 + v21 + v19);
    }

LABEL_6:
    v13 = *(v7 + 72);
    if (v13)
    {
      v14 = a3 >= 0x17 ? 23 : a3;
      v15 = *(v13 + v14 + 16);
      v16 = *v13;
      v17 = *v13 + 120 * v15;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, a2) != *(v17 + 12))
      {
        v18 = v16 + 120 * v15;
        v19 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v18 + 24), a2);
        if (v19 == *(v18 + 36))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,unsigned char>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        return (v20 + v21 + v19);
      }
    }
  }

  if (a5)
  {
    *a5 = 0;
  }

  return gss::defaultValueForKey<gss::PropertyID,unsigned char>(a2);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19IsDynamicRenderableEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42470;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 12);
  if (v5 != 2)
  {
    return *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned char>(a1, a2, a3, v5, a4);
  }

  v13 = 1;
  v12 = 1;
  v7 = a4;
  v11 = *gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned char>(a1, a2, a3, 0, &v13);
  gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<unsigned char>(a1, a2, a3, 1u, &v12);
  if (v7)
  {
    *v7 = (v13 | v12) & 1;
  }

  return v11;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19IsDynamicRenderableEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42470;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableTransformConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableTransformConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[228];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls41MeshRenderableTransformConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41CA0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls41MeshRenderableTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41CA0;
  a2[1] = v2;
  return result;
}

uint64_t md::CompositeLabeler::isBackgroundLayoutDisabled(md::CompositeLabeler *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 88))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t md::MapStandardLabeler::needsForceLayoutAllLabels(md::MapStandardLabeler *this)
{
  v1 = *(this + 372);
  if (v1 == 1)
  {
    *(this + 372) = 0;
  }

  else
  {
    v3 = atomic_load((*(this + 3) + 3425));
    if (v3)
    {
      LOBYTE(v1) = *(*(this + 49) + 115);
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t md::CompositeLabeler::needsForceLayoutAllLabels(md::CompositeLabeler *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 96))(*(v3 - 8));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableBounds>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableBounds>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[465];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20MeshRenderableBoundsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42358;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::StandardLabeler::needsForceLayoutAllLabels(md::StandardLabeler *this)
{
  result = *(this + 372);
  if (result == 1)
  {
    *(this + 372) = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20MeshRenderableBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42358;
  a2[1] = v2;
  return result;
}

uint64_t md::MapNavLabeler::areAllMapTilesReady(id *this)
{
  if (!(*(*this + 45))(this))
  {
    return 1;
  }

  result = [this[7] areAllTilesReady];
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t md::CompositeLabeler::areAllMapTilesReady(md::CompositeLabeler *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 8;
  do
  {
    result = (*(**(v3 - 8) + 104))(*(v3 - 8));
    if (result)
    {
      v5 = v3 == v2;
    }

    else
    {
      v5 = 1;
    }

    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t md::StandardLabeler::areAllMapTilesReady(md::StandardLabeler *this)
{
  v1 = *(this + 6);
  if (*(v1 + 759) == 1)
  {
    v2 = *(v1 + 760);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableVisibilityOptions>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableVisibilityOptions>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[346];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27RenderableVisibilityOptionsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A43350;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27RenderableVisibilityOptionsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A43350;
  a2[1] = v2;
  return result;
}

uint64_t md::MapNavLabeler::layoutForDisplay(md::MapNavLabeler *this, const md::LayoutContext *a2)
{
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 73);
  if (((*(*this + 360))(this) & 1) != 0 || *(this + 13) && *(*(this + 90) + 24) || *(*(*(this + 3) + 336) + 163) << 16 == 393216 || (result = (*(*this + 384))(this), result))
  {
    md::LabelNavLayoutContext::grabStateFromContext((this + 360), *(this + 3), (*(this + 3) + 432), a2);
    v4 = *(this + 3);
    v10 = &unk_1F29EFAF8;
    v11 = v4;
    v12 = this;
    v13 = v4 + 432;
    v14 = this + 360;
    if (*(this + 13) && *(*(this + 90) + 24))
    {
      md::LabelNavEtaLabeler::layoutForDisplayWithNavContext(&v10, *(this + 77), *(this + 78));
      std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::NavLabel>*>,std::__wrap_iter<std::shared_ptr<md::NavLabel>*>>((this + 584), *(this + 74), *(this + 77), *(this + 78), (*(this + 78) - *(this + 77)) >> 4);
    }

    if (((*(*this + 360))(this) & 1) != 0 || *(*(*(this + 3) + 336) + 163) << 16 == 393216 || (*(*this + 384))(this))
    {
      [*(this + 7) layoutForDisplayWithNavContext:&v10 labels:this + 680];
      std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::NavLabel>*>,std::__wrap_iter<std::shared_ptr<md::NavLabel>*>>((this + 584), *(this + 74), *(this + 85), *(this + 86), (*(this + 86) - *(this + 85)) >> 4);
    }

    v5 = *(this + 73);
    v6 = *(this + 74);
    while (v5 != v6)
    {
      v7 = *v5;
      v8 = *(*v5 + 304);
      if ((*(*(v8 + 640) + 140) & 1) == 0)
      {
        md::LabelImageLoader::enqueueIconForRendering(*(v11 + 264), (v8 + 640));
        v7 = *v5;
      }

      md::NavLabel::animateLabel(v7, *(this + 179));
      v5 += 2;
    }

    result = md::MapNavLabeler::needsLayout(this);
    if (result)
    {
      *(this + 824) = 1;
    }
  }

  return result;
}

uint64_t md::CompositeLabeler::layoutForDisplay(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = (*(*v5 + 64))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GeocentricBounds>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GeocentricBounds>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[19];
}

uint64_t md::StandardLabeler::layoutForDisplay(md::StandardLabeler *this, const md::LayoutContext *a2, __n128 a3)
{
  v12 = 257;
  v13 = 1;
  v4 = *(this + 13);
  v5 = *(this + 14);
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    md::Label::layoutForDisplay(v6, *(this + 3), &v12);
  }

  if ((*(*(this + 3) + 3416) & 1) == 0)
  {
    v7 = *(this + 13);
    v8 = *(this + 14);
    while (v7 != v8)
    {
      v9 = *v7;
      v7 += 2;
      a3.n128_u32[0] = 1148846080;
      md::Label::animate(v9, a3);
    }
  }

  (*(*this + 328))(this, a2);
  v10 = ***(*(*(this + 3) + 168) + 72);

  return v10();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16GeocentricBoundsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42200;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16GeocentricBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42200;
  a2[1] = v2;
  return result;
}

void md::LabelManager::renderLabels(md::LabelManager *this, const md::LayoutContext *a2, BOOL *a3, BOOL *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *(this + 32);
  v6 = **(*((***(v5 + 32))(*(v5 + 32)) + 16) + 136);
  std::mutex::lock((v5 + 64));
  *__p = *(v5 + 136);
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *&v11 = *(v5 + 152);
  *(v5 + 152) = 0;
  v7 = *(v5 + 128);
  std::mutex::unlock((v5 + 64));
  v8 = 0;
  v9 = v5 + 8;
  do
  {
    (*(**(v9 + v8) + 16))(*(v9 + v8), v7, v6, __p);
    v8 += 8;
  }

  while (v8 != 16);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(*(this + 41) + 1848) = *(this + 192) == 2;
  operator new();
}

void sub_1B2ABD450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablePendingProcessing>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablePendingProcessing>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[347];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27RenderablePendingProcessingEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41B08;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ta2::TextureAtlas::startFrame(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  v195 = *MEMORY[0x1E69E9840];
  *(a1 + 296) = a2;
  *(a1 + 304) = a3;
  v6 = (a1 + 320);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 320));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = v6;
  v7 = *a4;
  v8 = a4[1];
  if (*a4 != v8)
  {
    do
    {
      v9 = *v6;
      v10 = v6;
      if (*(a1 + 312) == v6)
      {
        goto LABEL_8;
      }

      v11 = *v6;
      v12 = v6;
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

      v14 = *v7;
      if (v10[4] < *v7)
      {
LABEL_8:
        if (v9)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v6;
        }
      }

      else
      {
        v15 = v6;
        if (v9)
        {
          v15 = v6;
          while (1)
          {
            while (1)
            {
              v16 = v9;
              v17 = v9[4];
              if (v14 >= v17)
              {
                break;
              }

              v9 = *v16;
              v15 = v16;
              if (!*v16)
              {
                goto LABEL_12;
              }
            }

            if (v17 >= v14)
            {
              break;
            }

            v15 = v16 + 1;
            v9 = v16[1];
            if (!v9)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v15)
      {
LABEL_12:
        operator new();
      }

      ++v7;
    }

    while (v7 != v8);
  }

  if (!*(a1 + 352))
  {
    operator new[]();
  }

  ta2::TextureAtlasRegionBuffer::processItems(*(a1 + 336));
  v18 = (a1 + 248);
  v19 = *(a1 + 248);
  if (v19 != (a1 + 256))
  {
    do
    {
      v20 = v19[4];
      v21 = *(v20 + 129);
      if (v21 < 2)
      {
LABEL_49:
        v31 = *(v20 + 32);
        if (v31)
        {
          *(v31 + 216) = *(a1 + 304);
        }
      }

      else
      {
        if (v21 - 3 < 2)
        {
          goto LABEL_28;
        }

        if (v21 == 2)
        {
          v27 = *(v20 + 104);
          v28 = *v6;
          if (*v6)
          {
            do
            {
              v29 = v28[4];
              if (v27 >= v29)
              {
                if (v29 >= v27)
                {
                  *(v20 + 129) = 1;
                  goto LABEL_49;
                }

                ++v28;
              }

              v28 = *v28;
            }

            while (v28);
          }

          if (v27 <= *(a1 + 296))
          {
            *(v20 + 129) = 3;
            v30 = *(v20 + 96);
            *(v20 + 88) = 0;
            *(v20 + 96) = 0;
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
            }

            *(v20 + 32) = 0;
LABEL_28:
            v22 = v19[1];
            v23 = v19;
            if (v22)
            {
              do
              {
                v24 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v24 = v23[2];
                v13 = *v24 == v23;
                v23 = v24;
              }

              while (!v13);
            }

            if (*v18 == v19)
            {
              *v18 = v24;
            }

            v25 = *(a1 + 256);
            --*(a1 + 264);
            std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v25, v19);
            v26 = v19[5];
            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v26);
            }

            operator delete(v19);
            goto LABEL_56;
          }
        }
      }

      v32 = v19[1];
      if (v32)
      {
        do
        {
          v24 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v24 = v19[2];
          v13 = *v24 == v19;
          v19 = v24;
        }

        while (!v13);
      }

LABEL_56:
      v19 = v24;
    }

    while (v24 != (a1 + 256));
  }

  v33 = *(a1 + 112);
  v176 = (a1 + 248);
  v177 = (a1 + 112);
  for (i = *(a1 + 120); v33 != i; v33 += 2)
  {
    v35 = *v33;
    v37 = *(*v33 + 384);
    v36 = *(*v33 + 392);
    v38 = v37 + 3;
    if (v37 + 3 != v36)
    {
      v39 = v37 + 3;
      v40 = *v37;
      v41 = v37[1];
      *v37 = *(v37 + 3);
      v37[3] = v40;
      v42 = v37[2];
      v37[2] = v37[5];
      v37[4] = v41;
      v37[5] = v42;
      for (j = v37 + 6; j != v36; j += 3)
      {
        if (v39 == v38)
        {
          v38 = j;
        }

        v44 = *v39;
        *v39 = *j;
        *j = v44;
        v45 = v39[1];
        v39[1] = j[1];
        j[1] = v45;
        v46 = v39[2];
        v39[2] = j[2];
        j[2] = v46;
        v39 += 3;
      }

      if (v39 != v38)
      {
        v47 = v38;
        do
        {
          while (1)
          {
            v48 = *v39;
            *v39 = *v47;
            *v47 = v48;
            v49 = v39[1];
            v39[1] = v47[1];
            v47[1] = v49;
            v50 = v39[2];
            v39[2] = v47[2];
            v47[2] = v50;
            v39 += 3;
            v47 += 3;
            if (v47 == v36)
            {
              break;
            }

            if (v39 == v38)
            {
              v38 = v47;
            }
          }

          v47 = v38;
        }

        while (v39 != v38);
      }

      v36 = *(v35 + 392);
    }

    v52 = *(v36 - 3);
    v51 = *(v36 - 2);
    if (v52 != v51)
    {
      do
      {
        if (*(*v35 + 96) == 1)
        {
          v53.i64[0] = 0xFFFFFFFF00000000;
          v53.i64[1] = 0xFFFFFFFF00000000;
          *buf = vaddq_s64(vbslq_s8(v53, *(*v52 + 56), vaddq_s64(*(*v52 + 56), xmmword_1B33B1470)), xmmword_1B33B1480);
          geo::SkylineBin::erase(v35 + 24, buf);
        }

        v54 = *v52;
        v52 += 2;
        *(v35 + 208) += (((*(v54 + 64) + 0x100000000) >> 32) - ((*(v54 + 56) - 0x100000000) >> 32)) * (*(v54 + 56) - *(v54 + 64) - 2);
      }

      while (v52 != v51);
      v36 = *(v35 + 392);
    }

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v36 - 3);
  }

  v55 = *(a1 + 384);
  v56 = *(a1 + 392);
  if (v55 != v56)
  {
    v57 = (a1 + 280);
    do
    {
      v58 = *v55;
      if (*(a1 + 296) >= *(*v55 + 216))
      {
        v60 = *v57;
        if (*v57)
        {
          v61 = (a1 + 280);
          do
          {
            v62 = v60[4];
            v63 = v62 >= v58;
            v64 = v62 < v58;
            if (v63)
            {
              v61 = v60;
            }

            v60 = v60[v64];
          }

          while (v60);
          if (v61 != v57 && v58 >= v61[4])
          {
            std::__tree<std::shared_ptr<ta2::TextureAtlasPage>>::erase((a1 + 272), v61);
            v56 = *(a1 + 392);
          }
        }

        if (v55 + 2 == v56)
        {
          v59 = v55;
        }

        else
        {
          v65 = v55;
          do
          {
            v66 = *(v65 + 1);
            v65[2] = 0;
            v65[3] = 0;
            v67 = v65[1];
            *v65 = v66;
            if (v67)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v67);
            }

            v59 = v65 + 2;
            v68 = v65 + 4;
            v65 += 2;
          }

          while (v68 != v56);
          v56 = *(a1 + 392);
        }

        while (v56 != v59)
        {
          v69 = *(v56 - 1);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v69);
          }

          v56 -= 2;
        }

        *(a1 + 392) = v59;
        v56 = v59;
      }

      else
      {
        v55 += 2;
        v59 = v56;
      }
    }

    while (v55 != v59);
  }

  v71 = *(a1 + 360);
  v70 = *(a1 + 368);
  v72 = v71 + 3;
  if (v71 + 3 != v70)
  {
    v73 = v71 + 3;
    v74 = *v71;
    v75 = v71[1];
    *v71 = *(v71 + 3);
    v71[3] = v74;
    v76 = v71[2];
    v71[2] = v71[5];
    v71[4] = v75;
    v71[5] = v76;
    for (k = v71 + 6; k != v70; k += 3)
    {
      if (v73 == v72)
      {
        v72 = k;
      }

      v78 = *v73;
      *v73 = *k;
      *k = v78;
      v79 = v73[1];
      v73[1] = k[1];
      k[1] = v79;
      v80 = v73[2];
      v73[2] = k[2];
      k[2] = v80;
      v73 += 3;
    }

    if (v73 != v72)
    {
      v81 = v72;
      do
      {
        while (1)
        {
          v82 = *v73;
          *v73 = *v81;
          *v81 = v82;
          v83 = v73[1];
          v73[1] = v81[1];
          v81[1] = v83;
          v84 = v73[2];
          v73[2] = v81[2];
          v81[2] = v84;
          v73 += 3;
          v81 += 3;
          if (v81 == v70)
          {
            break;
          }

          if (v73 == v72)
          {
            v72 = v81;
          }
        }

        v81 = v72;
      }

      while (v73 != v72);
    }

    v70 = *(a1 + 368);
  }

  v85 = *(v70 - 3);
  v86 = *(v70 - 2);
  if (v85 != v86)
  {
    do
    {
      v87 = *v85++;
      (*(**(a1 + 408) + 64))(*(a1 + 408), v87);
    }

    while (v85 != v86);
    v70 = *(a1 + 368);
    v85 = *(v70 - 3);
  }

  *(v70 - 2) = v85;
  v88 = *(a1 + 272);
  if (v88 != (a1 + 280))
  {
    do
    {
      v89 = v88[4];
      v90 = *(v89 + 28);
      v91 = *v6;
      if (*v6)
      {
        do
        {
          v92 = v91[4];
          if (v90 >= v92)
          {
            if (v92 >= v90)
            {
              ta2::TextureAtlas::clearPageEdges(a1, v89);
              *(v88[4] + 224) = *(a1 + 304);
              goto LABEL_132;
            }

            ++v91;
          }

          v91 = *v91;
        }

        while (v91);
      }

      if (v90 < *(a1 + 296))
      {
LABEL_132:
        v94 = v88[1];
        if (v94)
        {
          do
          {
            v93 = v94;
            v94 = *v94;
          }

          while (v94);
        }

        else
        {
          do
          {
            v93 = v88[2];
            v13 = *v93 == v88;
            v88 = v93;
          }

          while (!v13);
        }
      }

      else
      {
        v93 = std::__tree<std::shared_ptr<ta2::TextureAtlasPage>>::erase((a1 + 272), v88);
      }

      v88 = v93;
    }

    while (v93 != (a1 + 280));
  }

  std::mutex::lock((a1 + 160));
  v179 = *(a1 + 224);
  v95 = v179;
  v178 = *(a1 + 232);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v180 = v178;
  *(a1 + 240) = 0;
  std::mutex::unlock((a1 + 160));
  if (v95 != v178 || *(a1 + 264))
  {
    if (*(a1 + 72) == 1)
    {
      v190 = 0uLL;
      v191 = 0;
      ta2::TextureAtlas::createRegionLoadItems(&v179, &v190);
      v96 = *(a1 + 112);
      if (v96 == *(a1 + 120) || *(*v96 + 208) < *(*v96 + 212) || ((v97 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v190 + 1) - v190) >> 3)), *(&v190 + 1) != v190) ? (v98 = v97) : (v98 = 0), std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(v190, *(&v190 + 1), v98, 1), !ta2::TextureAtlasPage::reserveRegions(**v177, v190, 0xCCCCCCCCCCCCCCCDLL * ((*(&v190 + 1) - v190) >> 3))))
      {
        if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
        }

        v122 = GEOGetVectorKitTextureAtlasLog(void)::log;
        if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_INFO))
        {
          v123 = *(a1 + 304);
          *buf = 134217984;
          *&buf[4] = v123;
          _os_log_impl(&dword_1B2754000, v122, OS_LOG_TYPE_INFO, "MDL:Atlas:repacking glyph atlas, frame=%zu", buf, 0xCu);
        }

        v124 = *(a1 + 112);
        if (v124 == *(a1 + 120))
        {
          v133 = 256;
        }

        else
        {
          v125 = *v124;
          if ((((*(*v124 + 52) >> 12) * 1.25) + 127) >> 7 <= 2)
          {
            v126 = 2;
          }

          else
          {
            v126 = (((*(*v124 + 52) >> 12) * 1.25) + 127) >> 7;
          }

          ta2::TextureAtlas::createRegionLoadItems(v125 + 45, &v190);
          v127 = *(v125 + 45);
          v128 = *(v125 + 46);
          if (v127 != v128)
          {
            v129 = v127;
            do
            {
              v130 = *v129;
              v129 += 2;
              std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(v176, (a1 + 256), v130);
            }

            while (v129 != v128);
          }

          ta2::TextureAtlasPage::releaseRegions(*v124, *(a1 + 304));
          std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100]((a1 + 384), v124);
          std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v177);
          v131 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v190 + 1) - v190) >> 3));
          if (*(&v190 + 1) == v190)
          {
            v132 = 0;
          }

          else
          {
            v132 = v131;
          }

          std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(v190, *(&v190 + 1), v132, 1);
          v133 = v126 << 7;
        }

        v183 = v133 | 0x100000000000;
        operator new();
      }

      ta2::TextureAtlas::createFailedRegionLoadItems(a1, &v190);
      if (v95 != v178)
      {
        v135 = v95;
        do
        {
          v136 = *v135;
          v135 += 2;
          std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(v176, (a1 + 256), v136);
        }

        while (v135 != v178);
      }

      ta2::TextureAtlas::loadRegions(a1, v190, *(&v190 + 1), v99, v100);
      v137 = &v190;
LABEL_224:
      *buf = v137;
      std::vector<ta2::TextureAtlas::RegionLoadItem>::__destroy_vector::operator()[abi:nn200100](buf);
      goto LABEL_225;
    }

    v186 = 0;
    v187 = 0;
    v188 = 0;
    ta2::TextureAtlas::createRegionLoadItems(&v179, &v186);
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v181 = 0uLL;
    v182 = 0;
    v101 = *(a1 + 112);
    v102 = *(a1 + 120);
    v103 = v102 - v101;
    if (v102 != v101)
    {
      if (!((v103 >> 4) >> 60))
      {
        v194 = &v181;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v103 >> 4);
      }

LABEL_242:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v101)
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v177);
      operator delete(*v177);
    }

    *(a1 + 112) = v181;
    v104 = v183;
    *(a1 + 128) = v182;
    v182 = 0;
    v181 = 0uLL;
    if (v104 != v184)
    {
      if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
      }

      v105 = GEOGetVectorKitTextureAtlasLog(void)::log;
      if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_INFO))
      {
        v106 = *(a1 + 304);
        *buf = 134218240;
        *&buf[4] = v106;
        *&buf[12] = 1024;
        *&buf[14] = &v184[-v183] >> 4;
        _os_log_impl(&dword_1B2754000, v105, OS_LOG_TYPE_INFO, "MDL:Atlas:repacking icon atlas frame=%zu cnt=%i", buf, 0x12u);
      }

      v107 = v183;
      v108 = v184;
      if (v183 != v184)
      {
        do
        {
          v109 = *v107;
          v110 = *(*v107 + 46);
          if (*(*v107 + 45) != v110)
          {
            v111 = *(*v107 + 45);
            do
            {
              v112 = *v111;
              v111 += 2;
              std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(v176, (a1 + 256), v112);
            }

            while (v111 != v110);
          }

          ta2::TextureAtlas::createRegionLoadItems(v109 + 45, &v186);
          v113 = *v107;
          v107 += 2;
          ta2::TextureAtlasPage::releaseRegions(v113, *(a1 + 304));
        }

        while (v107 != v108);
        v107 = v183;
        v108 = v184;
      }

      v114 = v108 - v107;
      v115 = (v108 - v107) >> 4;
      if (v115 >= 1)
      {
        v117 = *(a1 + 392);
        v116 = *(a1 + 400);
        if (v116 - v117 >= v114)
        {
          for (; v107 != v108; v117 += 2)
          {
            *v117 = *v107;
            v134 = v107[1];
            v117[1] = v134;
            if (v134)
            {
              atomic_fetch_add_explicit(v134 + 1, 1uLL, memory_order_relaxed);
            }

            v107 += 2;
          }

          *(a1 + 392) = v117;
        }

        else
        {
          v118 = *(a1 + 384);
          v119 = v115 + ((v117 - v118) >> 4);
          if (v119 >> 60)
          {
            goto LABEL_242;
          }

          v120 = v116 - v118;
          if (v120 >> 3 > v119)
          {
            v119 = v120 >> 3;
          }

          if (v120 >= 0x7FFFFFFFFFFFFFF0)
          {
            v121 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v121 = v119;
          }

          v194 = (a1 + 384);
          if (v121)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v121);
          }

          v138 = 16 * ((v117 - v118) >> 4);
          v193 = 0;
          v139 = (v138 + v114);
          v140 = v138;
          do
          {
            *v140 = *v107;
            v141 = v107[1];
            v140[1] = v141;
            if (v141)
            {
              atomic_fetch_add_explicit(v141 + 1, 1uLL, memory_order_relaxed);
            }

            v140 += 2;
            v107 += 2;
          }

          while (v140 != v139);
          memcpy((v138 + v114), v117, *(a1 + 392) - v117);
          v142 = *(a1 + 384);
          v143 = v139 + *(a1 + 392) - v117;
          *(a1 + 392) = v117;
          v144 = (v138 - (v117 - v142));
          memcpy(v144, v142, v117 - v142);
          v145 = *(a1 + 384);
          *(a1 + 384) = v144;
          *(a1 + 392) = v143;
          v146 = *(a1 + 400);
          *(a1 + 400) = v193;
          *&buf[16] = v145;
          v193 = v146;
          *buf = v145;
          *&buf[8] = v145;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(buf);
        }
      }
    }

    v147 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v187 - v186) >> 3));
    if (v187 == v186)
    {
      v148 = 0;
    }

    else
    {
      v148 = v147;
    }

    std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(v186, v187, v148, 1);
    v151 = v186;
    v152 = v187;
    if (v186 != v187)
    {
      do
      {
        v153 = *(a1 + 112);
        v154 = *(a1 + 120);
        v155 = v153;
        if (v153 == v154)
        {
          goto LABEL_213;
        }

        while (!ta2::TextureAtlasPage::reserveRegions(*v153, v151, 1uLL))
        {
          v153 += 2;
          if (v153 == v154)
          {
            v155 = *(a1 + 112);
            v153 = *(a1 + 120);
LABEL_213:
            if (v155 == v153)
            {
              v156 = 40;
            }

            else
            {
              v156 = 48;
            }

            v189 = *(a1 + v156);
            operator new();
          }
        }

        v151 = (v151 + 40);
      }

      while (v151 != v152);
    }

    if (v183 == v184)
    {
      ta2::TextureAtlas::createFailedRegionLoadItems(a1, &v186);
    }

    v157 = v180;
    if (v179 != v180)
    {
      v158 = v179;
      do
      {
        v159 = *v158;
        v158 += 2;
        std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(v176, (a1 + 256), v159);
      }

      while (v158 != v157);
    }

    ta2::TextureAtlas::loadRegions(a1, v186, v187, v149, v150);
    *buf = &v181;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](buf);
    *buf = &v183;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](buf);
    v137 = &v186;
    goto LABEL_224;
  }

LABEL_225:
  v160 = *(a1 + 120) - *(a1 + 112);
  v161 = v160 >> 4;
  v162 = *(a1 + 136);
  v163 = *(a1 + 144);
  v164 = (v163 - v162) >> 4;
  if (v160 >> 4 <= v164)
  {
    if (v161 >= v164)
    {
      goto LABEL_238;
    }

    v169 = v162 + v160;
  }

  else
  {
    v165 = v161 - v164;
    v166 = *(a1 + 152);
    if (v161 - v164 > (v166 - v163) >> 4)
    {
      if (!(v161 >> 60))
      {
        v167 = v166 - v162;
        if (v167 >> 3 > v161)
        {
          v161 = v167 >> 3;
        }

        if (v167 >= 0x7FFFFFFFFFFFFFF0)
        {
          v168 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v168 = v161;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(v168);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(a1 + 144), 16 * v165);
    v169 = v163 + 16 * v165;
  }

  *(a1 + 144) = v169;
LABEL_238:
  v170 = *(a1 + 112);
  v171 = *(a1 + 120);
  if (v170 != v171)
  {
    v172 = 0;
    do
    {
      v173 = *v170;
      v170 += 2;
      v174 = *(v173 + 200);
      v175 = *(a1 + 136) + 16 * v172;
      *v175 = *(v173 + 192);
      *(v175 + 8) = v174;
      ++v172;
    }

    while (v170 != v171);
  }

  *buf = &v179;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](buf);
}