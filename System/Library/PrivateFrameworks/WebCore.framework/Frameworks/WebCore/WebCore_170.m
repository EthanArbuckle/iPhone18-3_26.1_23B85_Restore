uint64_t enc_set_mb_mi(uint64_t result, int a2, int a3, int a4)
{
  *(result + 40) = a4;
  v4 = (a2 + 7) >> 2;
  *(result + 16) = v4 & 0xFFFFFFFE;
  v5 = (a3 + 7) >> 2;
  v6 = v5 & 0xFFFFFFFE;
  v7 = ((v4 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v7;
  v8 = (v4 + 2) >> 2;
  v9 = (v5 + 2) >> 2;
  *result = v9;
  *(result + 4) = v8;
  *(result + 8) = v9 * v8;
  *(result + 12) = v6;
  *(result + 36) = (v7 + mi_size_wide_13[a4] - 1) / mi_size_wide_13[a4];
  return result;
}

char *av1_create_compressor(uint64_t a1, int32x2_t *a2, uint64_t a3, char a4, int a5)
{
  v10 = malloc_type_malloc(0x9BD67uLL, 0x5F484EBFuLL);
  if (!v10)
  {
    return 0;
  }

  *(((v10 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v10;
  v105 = ((v10 + 39) & 0xFFFFFFFFFFFFFFE0);
  if (!v105)
  {
    return 0;
  }

  bzero(v105, 0x9BD40uLL);
  *v105 = a1;
  *(v105 + 32967) = a1 + 49024;
  v11 = malloc_type_malloc(0x1ABuLL, 0x5F484EBFuLL);
  if (!v11)
  {
    *(v105 + 29888) = 0;
    if (*(v105 + 29888))
    {
      goto LABEL_9;
    }

LABEL_12:
    free(*(v105 - 1));
    return 0;
  }

  v12 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v12 - 1) = v11;
  if (v12)
  {
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x190) = 0;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x180) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
    *(((v11 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
    *v12 = 0u;
  }

  *(v105 + 29888) = v12;
  if (!*(v105 + 29888))
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = setjmp((*(v105 + 29888) + 212));
  v14 = *(v105 + 29888);
  if (v13)
  {
    *(v14 + 208) = 0;
    av1_remove_compressor(v105);
    return 0;
  }

  *(v14 + 208) = 1;
  v105[637512] = a4;
  v105[638024] = 1;
  *(v105 + 29956) = enc_free_mi;
  *(v105 + 29957) = enc_setup_mi;
  if (a2[135].i32[0] == 1)
  {
    v16 = stat_stage_set_mb_mi;
  }

  else
  {
    v16 = enc_set_mb_mi;
    if (v105[637512] == 1)
    {
      v16 = stat_stage_set_mb_mi;
    }
  }

  *(v105 + 29958) = v16;
  v105[239616] = 0;
  v17 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v17)
  {
    *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v17;
    *(v105 + 32968) = (v17 + 39) & 0xFFFFFFFFFFFFFFE0;
    if (*(v105 + 32968))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  *(v105 + 32968) = 0;
  if (!*(v105 + 32968))
  {
LABEL_20:
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cm->fc");
  }

LABEL_21:
  v18 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v18)
  {
    *(((v18 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v18;
    v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    v19 = 0;
  }

  *(v105 + 32969) = v19;
  if (!*(v105 + 32969))
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cm->default_frame_context");
  }

  bzero(*(v105 + 32968), 0x52FCuLL);
  bzero(*(v105 + 32969), 0x52FCuLL);
  *(v105 + 33044) = a3;
  memcpy(v105 + 264528, a2, 0x480uLL);
  *(v105 + 48588) = *a2;
  *(v105 + 29889) = a2[3];
  v105[638088] = 0;
  alloc_compressor_data_0(v105);
  *(v105 + 456844) = *(v105 + 29889);
  *(v105 + 29275) = v105 + 238816;
  *(v105 + 79642) = 0x100000001;
  *(v105 + 264508) = 0;
  v105[456856] = 0;
  v20 = *v105 + 84960;
  *(v20 + 16) = 0;
  *v20 = 0u;
  av1_change_config(v105, a2, 0);
  *(v105 + 97178) = 0;
  *(v105 + 456868) = 0;
  *(v105 + 14958) = xmmword_273BE1180;
  *(v105 + 14956) = xmmword_273B90830;
  *(v105 + 14957) = xmmword_273B92360;
  *(v105 + 33382) = 0;
  v21 = *(v105 + 59779) * *(v105 + 59778);
  *(v105 + 159386) = 0;
  if (v21 >> 10 <= 0x7E8)
  {
    v22 = 140;
  }

  else
  {
    v22 = 200;
  }

  *(v105 + 79694) = 0x5A00000000;
  *(v105 + 637564) = 0;
  *(v105 + 159393) = 0;
  *(v105 + 159387) = v21 >= 921600;
  if (v21 >= 921600)
  {
    v23 = v22;
LABEL_35:
    v24 = v105 + 239056;
    *(v105 + 159389) = v23;
    goto LABEL_37;
  }

  if (v21 >= 230400)
  {
    v23 = 115;
    goto LABEL_35;
  }

  v23 = 90;
  v24 = v105 + 239056;
LABEL_37:
  *(v105 + 159394) = 15;
  *(v105 + 159390) = v23 + (v23 >> 1);
  if (v105[637512] == 1)
  {
    *(v105 + 66208) = a5;
  }

  *(v105 + 97110) = 8;
  v25 = *(v105 + 66176);
  v26 = *(v105 + 66209);
  v27 = *(v105 + 66210);
  *(v105 + 97111) = *(v105 + 66157);
  *(v105 + 97104) = 0;
  *(v105 + 388532) = v25;
  *(v105 + 97106) = v26;
  *(v105 + 97107) = v27;
  v28 = v26;
  if (!v26)
  {
    v29 = *(v105 + 33066);
    v30 = (v29 * 0.125);
    v31 = v29 * (*(v105 + 66138) * *(v105 + 66139));
    if (v30 >= 32)
    {
      v30 = 32;
    }

    if (v30 <= 4)
    {
      v30 = 4;
    }

    v32 = v30;
    if (v31 > 165888000.0)
    {
      v32 = (v31 * 4.0 / 165888000.0 + 0.5);
      if (v30 > v32)
      {
        v32 = v30;
      }
    }

    *(v105 + 97106) = v32;
    v28 = v32;
  }

  if (!v27)
  {
    v33 = (*(v105 + 33066) * 0.75);
    if (v33 >= 32)
    {
      v33 = 32;
    }

    v34 = (v33 & 1) + v33;
    if (v34 <= v28)
    {
      v34 = v28;
    }

    if (v34 <= 32)
    {
      v34 = 32;
    }

    *(v105 + 97107) = v34;
  }

  *(v105 + 97150) = 0;
  *(v105 + 97174) = 0;
  *(v105 + 97153) = 0;
  *(v105 + 48570) = 0;
  *(v105 + 97127) = 0;
  *(v105 + 48579) = 0;
  *(v105 + 48580) = 0;
  *(v105 + 48578) = 0;
  *&v35 = *(v105 + 29889);
  *(&v35 + 1) = *(v105 + 239588);
  v36 = *(v105 + 32967);
  *(v105 + 28550) = v35;
  *(v105 + 57102) = *(v105 + 29947);
  *(v105 + 114206) = *(v105 + 59896);
  *(v105 + 114207) = *(v36 + 72);
  *(v105 + 57104) = *(v36 + 96);
  *(v105 + 114210) = 0;
  *(v105 + 59768) = 0;
  *(v105 + 97142) = 0;
  *(v105 + 97137) = 0;
  *(v105 + 97139) = 0x7FFFFFFF;
  *(v105 + 97138) = 0;
  *(v105 + 66104) = -1;
  *(v105 + 57110) = 0;
  *(v105 + 33390) = 0;
  realloc_segmentation_maps_0(v105);
  v105[267130] = 0;
  *(v105 + 48548) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(v105 + 66152))
  {
    v37 = *(v105 + 29888);
    v38 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
    if (v38)
    {
      v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v39 - 8) = v38;
      *(v105 + 12858) = v39;
      if (v39)
      {
        v40 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
        if (v40)
        {
          goto LABEL_60;
        }

        goto LABEL_69;
      }
    }

    else
    {
      *(v105 + 12858) = 0;
    }

    aom_internal_error(v37, 2, "Failed to allocate obmc_buffer->wsrc");
    v40 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
    if (v40)
    {
LABEL_60:
      v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v41 - 8) = v40;
      *(v105 + 12859) = v41;
      if (v41)
      {
        v42 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
        if (v42)
        {
          goto LABEL_62;
        }

        goto LABEL_71;
      }

LABEL_70:
      aom_internal_error(v37, 2, "Failed to allocate obmc_buffer->mask");
      v42 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
      if (v42)
      {
LABEL_62:
        v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v43 - 8) = v42;
        *(v105 + 12860) = v43;
        if (v43)
        {
          v44 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
          if (v44)
          {
            goto LABEL_64;
          }

          goto LABEL_73;
        }

LABEL_72:
        aom_internal_error(v37, 2, "Failed to allocate obmc_buffer->above_pred");
        v44 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
        if (v44)
        {
LABEL_64:
          v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v45 - 8) = v44;
          *(v105 + 12861) = v45;
          if (v45)
          {
            goto LABEL_65;
          }

LABEL_74:
          aom_internal_error(v37, 2, "Failed to allocate obmc_buffer->left_pred");
          v46 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
          if (v46)
          {
            goto LABEL_66;
          }

          goto LABEL_75;
        }

LABEL_73:
        *(v105 + 12861) = 0;
        goto LABEL_74;
      }

LABEL_71:
      *(v105 + 12860) = 0;
      goto LABEL_72;
    }

LABEL_69:
    *(v105 + 12859) = 0;
    goto LABEL_70;
  }

LABEL_65:
  v46 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
  if (v46)
  {
LABEL_66:
    *(((v46 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v46;
    v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_76;
  }

LABEL_75:
  v47 = 0;
LABEL_76:
  *(v105 + 25757) = v47;
  if (*(v105 + 25757))
  {
    v48 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v48)
    {
LABEL_78:
      *(((v48 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v48;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF0;
      goto LABEL_81;
    }
  }

  else
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
    v48 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v48)
    {
      goto LABEL_78;
    }
  }

  v49 = 0;
LABEL_81:
  *(v105 + 25758) = v49;
  if (*(v105 + 25758))
  {
    v50 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v50)
    {
LABEL_83:
      *(((v50 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v50;
      v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF0;
      goto LABEL_86;
    }
  }

  else
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
    v50 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v50)
    {
      goto LABEL_83;
    }
  }

  v51 = 0;
LABEL_86:
  *(v105 + 25759) = v51;
  if (*(v105 + 25759))
  {
    v52 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v52)
    {
LABEL_88:
      *(((v52 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v52;
      v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF0;
      goto LABEL_91;
    }
  }

  else
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
    v52 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
    if (v52)
    {
      goto LABEL_88;
    }
  }

  v53 = 0;
LABEL_91:
  *(v105 + 25760) = v53;
  if (!*(v105 + 25760))
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
  }

  *(v105 + 52044) = 0;
  av1_set_speed_features_framesize_independent(v105, a2[130].i32[0]);
  av1_set_speed_features_framesize_dependent(v105, a2[130].i32[0]);
  v54 = vrev64_s32(a2[4]);
  v55 = vbsl_s8(vceqz_s32(v54), *(v24 + 532), (*&vshr_n_s32(vadd_s32(v54, 0x700000007), 2uLL) & 0xFFFFFFFEFFFFFFFELL));
  v56 = v55.i32[1];
  v57 = v55.i32[0];
  v58 = (v55.i32[0] * v55.i32[1]) >> 2;
  if (((v55.i32[0] * v55.i32[1]) < 4 || (v58 & 0x80000000) == 0) && (v59 = (v55.i32[0] * v55.i32[1]) >> 2, (v60 = malloc_type_malloc(v59 + 23, 0x5F484EBFuLL)) != 0) && (v61 = v60, v62 = ((v60 + 23) & 0xFFFFFFFFFFFFFFF0), *(v62 - 1) = v61, v62))
  {
    v63 = v59;
    v64 = v62;
    bzero(v62, v63);
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  *(v105 + 79728) = v65;
  if (!*(v105 + 79728))
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->consec_zero_mv");
  }

  *(v105 + 159458) = v58;
  *(v105 + 79754) = 0;
  *(v105 + 79760) = 0;
  *(v105 + 159565) = 0;
  *(v105 + 159566) = 0;
  v66 = v56 + 3;
  if (v56 < -3)
  {
    v66 = v56 + 6;
  }

  v67 = v66 >> 2;
  v68 = v57 + 3;
  if (v57 < -3)
  {
    v68 = v57 + 6;
  }

  v69 = (v68 >> 2) * v67;
  v70 = v69;
  if (v69 <= 0x3FFFFFFD && (v71 = malloc_type_malloc(8 * v69 + 23, 0x5F484EBFuLL)) != 0 && (v72 = v71, v73 = ((v71 + 23) & 0xFFFFFFFFFFFFFFF0), *(v73 - 1) = v72, v73))
  {
    v74 = v73;
    bzero(v73, 8 * v70);
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  *(v105 + 79640) = v75;
  if (*(v105 + 79640))
  {
    if (v70 > 0x3FFFFFFD)
    {
      goto LABEL_117;
    }
  }

  else
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->ssim_rdmult_scaling_factors");
    if (v70 > 0x3FFFFFFD)
    {
      goto LABEL_117;
    }
  }

  v76 = 8 * v70;
  v77 = malloc_type_malloc(v76 + 23, 0x5F484EBFuLL);
  if (v77)
  {
    v78 = v77;
    v79 = ((v77 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v79 - 1) = v78;
    if (v79)
    {
      v80 = v79;
      bzero(v79, v76);
      v81 = v80;
      goto LABEL_118;
    }
  }

LABEL_117:
  v81 = 0;
LABEL_118:
  *(v105 + 33289) = v81;
  if (!*(v105 + 33289))
  {
    aom_internal_error(*(v105 + 29888), 2, "Failed to allocate cpi->tpl_rdmult_scaling_factors");
  }

  *&v82 = 0x8000000080000000;
  *(&v82 + 1) = 0x8000000080000000;
  *(v105 + 5377) = v82;
  *(v105 + 21512) = 0x7FFFFFFF;
  v83 = *(v105 + 59919);
  if (*(v105 + 21508) != v83)
  {
    v84 = *(v105 + 59920);
LABEL_127:
    av1_build_quantizer(*(*(v105 + 32967) + 72), v83, v84, *(v105 + 59922), *(v105 + 59921), *(v105 + 59923), (v105 + 16), (v105 + 73744));
    v85 = vrev64q_s32(*(v105 + 239676));
    v85.i64[0] = *(v105 + 239676);
    *(v105 + 5377) = v85;
    *(v105 + 21512) = *(v105 + 59923);
    goto LABEL_128;
  }

  v84 = *(v105 + 59920);
  if (*(v105 + 21509) != v84)
  {
    goto LABEL_127;
  }

  v84 = *(v105 + 21509);
  if (*(v105 + 21511) != *(v105 + 59921) || *(v105 + 21510) != *(v105 + 59922) || *(v105 + 21512) != *(v105 + 59923))
  {
    goto LABEL_127;
  }

LABEL_128:
  if (*(*(v105 + 32967) + 77))
  {
    v86 = 1;
  }

  else
  {
    v86 = 3;
  }

  av1_qm_init((v105 + 239672), v86);
  v87 = *(v105 + 65524);
  v88 = v87 > 4;
  if (v87 <= 0)
  {
    v98 = (v105 + 258256);
    v99 = 4;
    v100 = 0;
    do
    {
      v101 = v100 + 1;
      v102 = v100 >> v88;
      if (v102 <= 1)
      {
        LOBYTE(v102) = 1;
      }

      v103 = 0x101010101010101 * v102;
      *v98 = v103;
      v98[1] = v103;
      v104 = 0x101010101010101 * (v102 + v99);
      *(v98 - 2) = v104;
      *(v98 - 1) = v104;
      v100 = v101;
      v98 += 6;
      v99 += 2;
    }

    while (v101 != 64);
  }

  else
  {
    v89 = v88 + 1;
    v90 = 9 - v87;
    v91 = (v105 + 258256);
    v92 = 4;
    v93 = 0;
    do
    {
      v94 = v93 + 1;
      v95 = v93 >> v89;
      if (v95 >= v90)
      {
        v95 = v90;
      }

      if (v95 <= 1)
      {
        LOBYTE(v95) = 1;
      }

      v96 = 0x101010101010101 * v95;
      *v91 = v96;
      v91[1] = v96;
      v97 = 0x101010101010101 * (v95 + v92);
      *(v91 - 2) = v97;
      *(v91 - 1) = v97;
      v93 = v94;
      v91 += 6;
      v92 += 2;
    }

    while (v94 != 64);
  }

  *(v105 + 16142) = 0u;
  *(v105 + 16145) = 0u;
  *(v105 + 16148) = 0u;
  *(v105 + 16151) = 0u;
  *(v105 + 16154) = 0u;
  *(v105 + 16157) = 0u;
  *(v105 + 16160) = 0u;
  *(v105 + 16163) = 0u;
  *(v105 + 16166) = 0u;
  *(v105 + 16169) = 0u;
  *(v105 + 16172) = 0u;
  *(v105 + 16175) = 0u;
  *(v105 + 16178) = 0u;
  *(v105 + 16181) = 0u;
  *(v105 + 16184) = 0u;
  *(v105 + 16187) = 0u;
  *(v105 + 32381) = 0x101010101010101;
  *(v105 + 32380) = 0x101010101010101;
  *(v105 + 32387) = 0x101010101010101;
  *(v105 + 32386) = 0x101010101010101;
  *(v105 + 32392) = 0x101010101010101;
  *(v105 + 32393) = 0x101010101010101;
  *(v105 + 32398) = 0x101010101010101;
  *(v105 + 32399) = 0x101010101010101;
  *(v105 + 32404) = 0x101010101010101;
  *(v105 + 32405) = 0x101010101010101;
  *(v105 + 32410) = 0x101010101010101;
  *(v105 + 32411) = 0x101010101010101;
  *(v105 + 32416) = 0x101010101010101;
  *(v105 + 32417) = 0x101010101010101;
  *(v105 + 32422) = 0x101010101010101;
  *(v105 + 32423) = 0x101010101010101;
  *(v105 + 32429) = 0x101010101010101;
  *(v105 + 32428) = 0x101010101010101;
  *(v105 + 32435) = 0x101010101010101;
  *(v105 + 32434) = 0x101010101010101;
  *(v105 + 32441) = 0x101010101010101;
  *(v105 + 32440) = 0x101010101010101;
  *(v105 + 32447) = 0x101010101010101;
  *(v105 + 32446) = 0x101010101010101;
  *(v105 + 32453) = 0x101010101010101;
  *(v105 + 32452) = 0x101010101010101;
  *(v105 + 32459) = 0x101010101010101;
  *(v105 + 32458) = 0x101010101010101;
  *(v105 + 32465) = 0x101010101010101;
  *(v105 + 32464) = 0x101010101010101;
  *(v105 + 32471) = 0x101010101010101;
  *(v105 + 32470) = 0x101010101010101;
  *(v105 + 32477) = 0x202020202020202;
  *(v105 + 32476) = 0x202020202020202;
  *(v105 + 32483) = 0x202020202020202;
  *(v105 + 32482) = 0x202020202020202;
  *(v105 + 32489) = 0x202020202020202;
  *(v105 + 32488) = 0x202020202020202;
  *(v105 + 32495) = 0x202020202020202;
  *(v105 + 32494) = 0x202020202020202;
  *(v105 + 32501) = 0x202020202020202;
  *(v105 + 32500) = 0x202020202020202;
  *(v105 + 32507) = 0x202020202020202;
  *(v105 + 32506) = 0x202020202020202;
  *(v105 + 32513) = 0x202020202020202;
  *(v105 + 32512) = 0x202020202020202;
  *(v105 + 32519) = 0x202020202020202;
  *(v105 + 32518) = 0x202020202020202;
  *(v105 + 32525) = 0x202020202020202;
  *(v105 + 32524) = 0x202020202020202;
  *(v105 + 32531) = 0x202020202020202;
  *(v105 + 32530) = 0x202020202020202;
  *(v105 + 32537) = 0x202020202020202;
  *(v105 + 32536) = 0x202020202020202;
  *(v105 + 32543) = 0x202020202020202;
  *(v105 + 32542) = 0x202020202020202;
  *(v105 + 32549) = 0x202020202020202;
  *(v105 + 32548) = 0x202020202020202;
  *(v105 + 32555) = 0x202020202020202;
  *(v105 + 32554) = 0x202020202020202;
  *(v105 + 32561) = 0x202020202020202;
  *(v105 + 32560) = 0x202020202020202;
  *(v105 + 32567) = 0x202020202020202;
  *(v105 + 32566) = 0x202020202020202;
  *(v105 + 32573) = 0x303030303030303;
  *(v105 + 32572) = 0x303030303030303;
  *(v105 + 32579) = 0x303030303030303;
  *(v105 + 32578) = 0x303030303030303;
  *(v105 + 32585) = 0x303030303030303;
  *(v105 + 32584) = 0x303030303030303;
  *(v105 + 32591) = 0x303030303030303;
  *(v105 + 32590) = 0x303030303030303;
  *(v105 + 32597) = 0x303030303030303;
  *(v105 + 32596) = 0x303030303030303;
  *(v105 + 32603) = 0x303030303030303;
  *(v105 + 32602) = 0x303030303030303;
  *(v105 + 32609) = 0x303030303030303;
  *(v105 + 32608) = 0x303030303030303;
  *(v105 + 32615) = 0x303030303030303;
  *(v105 + 32614) = 0x303030303030303;
  *(v105 + 32621) = 0x303030303030303;
  *(v105 + 32620) = 0x303030303030303;
  *(v105 + 32627) = 0x303030303030303;
  *(v105 + 32626) = 0x303030303030303;
  *(v105 + 32633) = 0x303030303030303;
  *(v105 + 32632) = 0x303030303030303;
  *(v105 + 32639) = 0x303030303030303;
  *(v105 + 32638) = 0x303030303030303;
  *(v105 + 32645) = 0x303030303030303;
  *(v105 + 32644) = 0x303030303030303;
  *(v105 + 32651) = 0x303030303030303;
  *(v105 + 32650) = 0x303030303030303;
  *(v105 + 32657) = 0x303030303030303;
  *(v105 + 32656) = 0x303030303030303;
  *(v105 + 32663) = 0x303030303030303;
  *(v105 + 32662) = 0x303030303030303;
  v105[239136] = 8;
  *(v105 + 59782) = a2[3].i32[0];
  *(v105 + 59783) = a2[3].i32[1];
  *(v105 + 79767) = 0;
  *(v105 + 159540) = 0;
  *(*(v105 + 29888) + 208) = 0;
  return v105;
}

void av1_remove_compressor(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1 + 79585;
    v3 = a1 + 78460;
    v4 = a1 + 29845;
    v5 = a1 + 29075;
    av1_denoiser_free((a1 + 79698));
    v6 = v4[43];
    if (v6)
    {
      strcpy((v4[43] + 199), "AAAAAAAA");
      *&v7 = 0x4141414141414141;
      *(&v7 + 1) = 0x4141414141414141;
      *(v6 + 184) = v7;
      *(v6 + 168) = v7;
      *(v6 + 152) = v7;
      *(v6 + 136) = v7;
      *(v6 + 120) = v7;
      *(v6 + 104) = v7;
      *(v6 + 88) = v7;
      *(v6 + 72) = v7;
      *(v6 + 56) = v7;
      *(v6 + 40) = v7;
      *(v6 + 24) = v7;
      *(v6 + 8) = v7;
      v8 = v4[43];
      if (v8)
      {
        free(*(v8 - 8));
      }
    }

    v9 = v5[235];
    if (v9)
    {
      free(*(v9 - 8));
    }

    v11 = v3[46];
    v10 = v3[47];
    v12 = *v2;
    v13 = v3[55];
    v14 = v3[90];
    if (v11)
    {
      pthread_mutex_destroy(v3[46]);
      free(*(v11 - 8));
    }

    if (v10)
    {
      pthread_cond_destroy(v10);
      free(*&v10[-1].__opaque[32]);
    }

    if (v12)
    {
      pthread_mutex_destroy(v12);
      free(*&v12[-1].__opaque[48]);
    }

    if (v13)
    {
      pthread_mutex_destroy(v13);
      free(*&v13[-1].__opaque[48]);
    }

    v15 = a1 + 32967;
    if (v14)
    {
      pthread_mutex_destroy(v14);
      free(*&v14[-1].__opaque[48]);
    }

    v16 = a1 + 57094;
    av1_row_mt_mem_dealloc(a1);
    if (*v3 >= 2)
    {
      av1_row_mt_sync_mem_dealloc((*a1 + 85032));
      av1_loop_filter_dealloc(a1 + 157036);
      v17 = v2[4];
      if (v17)
      {
        pthread_mutex_destroy(v17);
        v18 = v2[4];
        if (v18)
        {
          free(*(v18 - 8));
        }
      }
    }

    v109 = *(*v15 + 77);
    if (*(*v15 + 77))
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    v20 = v4[31];
    if (v20)
    {
      free(*(v20 - 8));
    }

    v4[31] = 0;
    *(v4 + 64) = 0;
    v21 = a1[57110];
    if (v21)
    {
      free(*(v21 - 8));
    }

    a1[57110] = 0;
    *(a1 + 114222) = 0;
    v3[10] = 0;
    if (*v16)
    {
      free(*(*v16 - 8));
    }

    *v16 = 0;
    v22 = a1[57096];
    if (v22)
    {
      v23 = *(v22 + 40);
      if (v23)
      {
        free(*(v23 - 8));
      }

      free(*(v22 - 8));
    }

    a1[57096] = 0;
    v24 = a1[57098];
    if (v24)
    {
      free(*(v24 - 8));
    }

    v25 = a1 + 12858;
    a1[57098] = 0;
    v26 = v2[55];
    if (v26)
    {
      free(*(v26 - 8));
    }

    v2[55] = 0;
    v27 = a1[33289];
    if (v27)
    {
      free(*(v27 - 8));
    }

    a1[33289] = 0;
    v28 = a1[12859];
    if (v28)
    {
      free(*(v28 - 8));
    }

    v29 = a1[12860];
    if (v29)
    {
      free(*(v29 - 8));
    }

    v30 = a1[12861];
    if (v30)
    {
      free(*(v30 - 8));
    }

    if (*v25)
    {
      free(*(*v25 - 8));
    }

    *v25 = 0u;
    *(a1 + 6430) = 0u;
    v31 = v5[19];
    if (v31)
    {
      free(*(v31 - 8));
    }

    v5[19] = 0;
    v32 = v5[20];
    if (v32)
    {
      free(*(v32 - 8));
    }

    v33 = a1 + 25757;
    v5[20] = 0;
    v34 = v5[16];
    if (v34)
    {
      free(*(v34 - 8));
    }

    v5[16] = 0;
    v35 = v5[17];
    if (v35)
    {
      free(*(v35 - 8));
    }

    v5[17] = 0;
    av1_free_pc_tree_recursive(v4[5], v19, 0, 0, *(a1 + 388856));
    v4[5] = 0;
    if (*v33)
    {
      free(*(*v33 - 8));
    }

    *v33 = 0;
    v36 = a1[25758];
    if (v36)
    {
      free(*(v36 - 8));
    }

    a1[25758] = 0;
    v37 = a1[25759];
    if (v37)
    {
      free(*(v37 - 8));
    }

    a1[25759] = 0;
    v38 = a1[25760];
    if (v38)
    {
      free(*(v38 - 8));
    }

    a1[25760] = 0;
    v39 = a1[25761];
    if (v39)
    {
      v40 = v19;
      for (i = 0; i != 0x400000; i += 8)
      {
        v42 = *(v39 + i);
        if (v42)
        {
          free(*(v42 + 24));
          *(v42 + 24) = 0;
          v39 = a1[25761];
          v43 = *(v39 + i);
          if (v43)
          {
            free(*(v43 - 8));
            v39 = a1[25761];
          }

          *(v39 + i) = 0;
        }
      }

      free(*(v39 - 8));
      LODWORD(v19) = v40;
      v15 = a1 + 32967;
      v16 = a1 + 57094;
    }

    a1[25761] = 0;
    v44 = v15[90];
    if (v44)
    {
      free(*(v44 - 8));
    }

    v15[90] = 0;
    v45 = v4[3];
    if (v45)
    {
      free(*(v45 - 8));
    }

    v4[3] = 0;
    v46 = v4[4];
    if (v46)
    {
      free(*(v46 - 8));
    }

    v4[4] = 0;
    v47 = v5[236];
    if (v47)
    {
      free(*(v47 - 8));
    }

    v5[236] = 0;
    av1_free_pmc(v5[238], v19);
    v5[238] = 0;
    if (*(v15 + 761))
    {
      v5[244] *= 2;
    }

    v48 = v5[241];
    if (v48)
    {
      free(*(v48 - 8));
    }

    v5[241] = 0;
    v49 = v5[242];
    if (v49)
    {
      free(*(v49 - 8));
    }

    v5[242] = 0;
    v50 = v5[243];
    if (v50)
    {
      free(*(v50 - 8));
    }

    v5[243] = 0;
    v51 = v5[244];
    if (v51)
    {
      free(*(v51 - 8));
    }

    v5[244] = 0;
    v52 = v5[245];
    if (v52)
    {
      free(*(v52 - 8));
    }

    v5[245] = 0;
    v53 = v5[246];
    if (v53)
    {
      free(*(v53 - 8));
    }

    v5[246] = 0;
    v54 = v5[247];
    if (v54)
    {
      free(*(v54 - 8));
    }

    v5[247] = 0;
    v55 = v5[248];
    if (v55)
    {
      free(*(v55 - 8));
    }

    v5[248] = 0;
    v56 = v5[249];
    if (v56)
    {
      free(*(v56 - 8));
    }

    v5[249] = 0;
    v57 = v4[2];
    if (v57)
    {
      free(*(v57 - 8));
    }

    v4[2] = 0;
    if (*v4)
    {
      free(*(*v4 - 8));
    }

    v58 = a1 + 24472;
    *v4 = 0;
    v59 = v15[382];
    if (v59)
    {
      v60 = v59[993];
      if (v60)
      {
        free(*(v60 - 8));
      }

      v59[993] = 0;
      v61 = v59[994];
      if (v61)
      {
        free(*(v61 - 8));
      }

      v59[994] = 0;
      v62 = v59[995];
      if (v62)
      {
        free(*(v62 - 8));
      }

      v59[995] = 0;
      v63 = v15[382];
      if (v63)
      {
        free(*(v63 - 8));
      }
    }

    v64 = a1 + 10758;
    v15[382] = 0;
    if (*v5)
    {
      free(*(*v5 - 8));
    }

    *v5 = 0;
    v65 = a1[24474];
    if (v65)
    {
      free(*(v65 - 8));
    }

    a1[24474] = 0;
    if (*v64)
    {
      free(*(*v64 - 8));
    }

    *v64 = 0;
    if (!v109)
    {
      v66 = a1[10775];
      if (v66)
      {
        free(*(v66 - 8));
      }

      a1[10775] = 0;
      v67 = a1[10792];
      if (v67)
      {
        free(*(v67 - 8));
      }

      a1[10792] = 0;
    }

    v68 = a1[12156];
    if (v68)
    {
      free(*(v68 - 8));
    }

    a1[12156] = 0;
    if (*v58)
    {
      free(*(*v58 - 8));
    }

    *v58 = 0;
    v69 = v5[5];
    if (v69)
    {
      free(*(v69 - 8));
    }

    v5[5] = 0;
    v70 = v5[230];
    if (v70)
    {
      free(*(v70 - 8));
    }

    v5[230] = 0;
    v71 = v4[33];
    if (v71)
    {
      free(*(v71 - 8));
    }

    v4[33] = 0;
    v72 = v4[34];
    if (v72)
    {
      free(*(v72 - 8));
    }

    v4[34] = 0;
    v73 = v4[35];
    if (v73)
    {
      free(*(v73 - 8));
    }

    v4[35] = 0;
    v74 = v4[36];
    if (v74)
    {
      free(*(v74 - 8));
    }

    v4[36] = 0;
    v75 = v4[111];
    if (v75)
    {
      v75(a1 + 29947);
    }

    av1_free_above_context_buffers(a1 + 33045);
    aom_free_frame_buffer((a1 + 33394));
    if (*(v15 + 468) != 1 && *(v2 + 832) != 1)
    {
      av1_free_cdef_buffers((a1 + 29882), (*a1 + 74296), (a1 + 79589));
    }

    v76 = v2[42];
    if (v76)
    {
      free(*(v76 - 8));
    }

    v2[42] = 0;
    if (!v109)
    {
      v77 = v2[43];
      if (v77)
      {
        free(*(v77 - 8));
      }

      v2[43] = 0;
      v78 = v2[44];
      if (v78)
      {
        free(*(v78 - 8));
      }

      v2[44] = 0;
    }

    v79 = v2[45];
    if (v79)
    {
      free(*(v79 - 8));
    }

    v2[45] = 0;
    aom_free_frame_buffer((a1 + 33418));
    aom_free_frame_buffer((a1 + 33214));
    aom_free_frame_buffer((a1 + 33239));
    aom_free_frame_buffer((a1 + 33264));
    aom_free_frame_buffer((a1 + 79657));
    v80 = v16[19];
    if (v80)
    {
      free(*(v80 - 8));
    }

    v16[19] = 0;
    v81 = a1[61209];
    if (v81)
    {
      free(*(v81 - 8));
    }

    a1[61209] = 0;
    *(v16 + 36) = 0;
    av1_free_shared_coeff_buffer(a1 + 29276);
    v82 = v5[210];
    if (v82)
    {
      free(*(v82 - 8));
    }

    v5[210] = 0;
    v83 = a1[12862];
    if (v83)
    {
      free(*(v83 - 8));
    }

    v84 = a1[12863];
    if (v84)
    {
      free(*(v84 - 8));
    }

    v85 = a1[12864];
    if (v85)
    {
      free(*(v85 - 8));
    }

    v86 = a1[12865];
    if (v86)
    {
      free(*(v86 - 8));
    }

    v87 = a1[12866];
    if (v87)
    {
      free(*(v87 - 8));
    }

    v88 = a1[12867];
    if (v88)
    {
      free(*(v88 - 8));
    }

    a1[12867] = 0;
    *(a1 + 12863) = 0u;
    *(a1 + 12865) = 0u;
    v89 = a1[12868];
    if (v89)
    {
      free(*(v89 - 8));
    }

    v90 = a1[12869];
    if (v90)
    {
      free(*(v90 - 8));
    }

    v91 = a1[12870];
    if (v91)
    {
      free(*(v91 - 8));
    }

    if (*(*a1 + 50968))
    {
      v92 = *(v2 + 114);
      if (v92 >= 1)
      {
        v93 = *(v2 + 115);
        if (v93 >= 1)
        {
          for (j = 0; j < v92; ++j)
          {
            if (v93 >= 1)
            {
              v95 = 0;
              do
              {
                v96 = v2[97] + 13176 * (v95 + j * v93);
                v97 = *(v96 + 13144);
                if (v97)
                {
                  free(*(v97 - 8));
                  v93 = *(v2 + 115);
                }

                *(v96 + 13144) = 0;
                ++v95;
              }

              while (v95 < v93);
              v92 = *(v2 + 114);
            }
          }
        }
      }
    }

    v98 = v2[97];
    if (v98)
    {
      free(*(v98 - 8));
    }

    v2[97] = 0;
    v99 = v2[143];
    if (v99)
    {
      free(*(v99 - 8));
    }

    v2[143] = 0;
    *(v2 + 288) = 0;
    v100 = v2[183];
    if (v100)
    {
      free(*(v100 - 8));
    }

    v2[183] = 0;
    v101 = v2[169];
    if (v101)
    {
      free(*(v101 - 8));
    }

    v2[169] = 0;
    if (*(v15 + 478))
    {
      v102 = v2[170];
      if (v102)
      {
        free(*(v102 - 8));
      }

      v2[170] = 0;
      v103 = v2[171];
      if (v103)
      {
        free(*(v103 - 8));
      }

      v2[171] = 0;
    }

    v104 = v2[175];
    if (v104)
    {
      free(*(v104 - 8));
    }

    v2[175] = 0;
    if (*(v2 + 294))
    {
      (v2[154])(v2[149]);
    }

    v105 = v4[111];
    if (v105)
    {
      v105(a1 + 29947);
    }

    av1_free_above_context_buffers(a1 + 33045);
    v106 = v15[1];
    if (v106)
    {
      free(*(v106 - 8));
    }

    v15[1] = 0;
    v107 = v15[2];
    if (v107)
    {
      free(*(v107 - 8));
    }

    v15[2] = 0;
    v108 = *(a1 - 1);

    free(v108);
  }
}

void enc_free_mi(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 64) = 0;
}

void enc_setup_mi(uint64_t a1)
{
  v2 = ((*(a1 + 12) + 31) & 0xFFFFFFFFFFFFFFE0) * *(a1 + 60);
  bzero(*(a1 + 24), 176 * *(a1 + 32));
  bzero(*(a1 + 48), 8 * v2);
  v3 = *(a1 + 64);

  bzero(v3, v2);
}

uint64_t stat_stage_set_mb_mi(uint64_t result, int a2, int a3)
{
  *(result + 40) = 6;
  v3 = (a2 + 7) >> 2;
  *(result + 16) = v3 & 0xFFFFFFFE;
  v4 = (a3 + 7) >> 2;
  v5 = v4 & 0xFFFFFFFE;
  v6 = ((v3 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v6;
  v7 = (v3 + 2) >> 2;
  v8 = (v4 + 2) >> 2;
  *result = v8;
  *(result + 4) = v7;
  *(result + 8) = v8 * v7;
  *(result + 12) = v5;
  v9 = v6 | 3;
  v10 = v6 | 4;
  if (v9 < 0)
  {
    v9 = v10;
  }

  *(result + 36) = v9 >> 2;
  return result;
}

void av1_set_screen_content_options(uint64_t a1, uint64_t a2)
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 263736);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    if (*(a1 + 265420) == 1)
    {
      *(a2 + 3) = 1;
      *(a2 + 4) = *(a1 + 265632) != 1;
      *(a1 + 637072) = 0x100000001;
    }

    else if (*(a1 + 265632) == 1 || *(a1 + 389712) && !*(a1 + 389760))
    {
      *(a2 + 3) = 0;
    }

    else
    {
      v4 = *(a1 + 266104);
      v5 = *v4;
      v6 = v4[2];
      v35 = v6 * *v4;
      v36 = (a1 + 637072);
      v41 = v6;
      if (v6 < 16 || v5 < 16)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v46 = *v4;
        v13 = (a1 + 86500);
        v14 = *(v4 + 5);
        v15 = v4[8];
        if ((v4[44] & 8) != 0)
        {
          v9 = 0;
          v8 = 0;
          v28 = *(v2 + 72);
          v29 = 16;
          v30 = v14;
          do
          {
            v43 = v30;
            v45 = v29;
            v31 = 16;
            do
            {
              v48 = 0;
              av1_count_colors_highbd(v30, v15, 16, 16, v28, 0, v50, &v48, 0);
              if ((v48 - 2) <= 2)
              {
                ++v9;
                v32 = av1_ss_size_lookup[2 * *v13 + 24 + v13[1]];
                v49 = 0;
                v33 = (*(*a1 + (v32 << 7) + 51416))(v30, v15, &AV1_VAR_OFFS, 0, &v49);
                v34 = num_pels_log2_lookup_8[v32];
                v5 = v46;
                if ((v33 + (1 << v34 >> 1)) >> v34)
                {
                  ++v8;
                }
              }

              v31 += 16;
              v30 += 16;
            }

            while (v5 >= v31);
            v29 = v45 + 16;
            v30 = v43 + 16 * v15;
          }

          while (v45 + 16 <= v41);
        }

        else
        {
          v16 = 0;
          v9 = 0;
          v8 = 0;
          v17 = (v14 + 7);
          v18 = 16;
          v42 = v14;
          do
          {
            v38 = v18;
            v39 = v17;
            v19 = 0;
            v40 = v16;
            v44 = v14 + v16 * v15;
            v20 = 16;
            do
            {
              bzero(v50, 0x400uLL);
              v21 = v17;
              v22 = 16;
              do
              {
                ++v50[0].i32[*(v21 - 7)];
                ++v50[0].i32[*(v21 - 6)];
                ++v50[0].i32[*(v21 - 5)];
                ++v50[0].i32[*(v21 - 4)];
                ++v50[0].i32[*(v21 - 3)];
                ++v50[0].i32[*(v21 - 2)];
                ++v50[0].i32[*(v21 - 1)];
                ++v50[0].i32[*v21];
                ++v50[0].i32[v21[1]];
                ++v50[0].i32[v21[2]];
                ++v50[0].i32[v21[3]];
                ++v50[0].i32[v21[4]];
                ++v50[0].i32[v21[5]];
                ++v50[0].i32[v21[6]];
                ++v50[0].i32[v21[7]];
                ++v50[0].i32[v21[8]];
                v21 += v15;
                --v22;
              }

              while (v22);
              v23.i64[0] = 0x100000001;
              v23.i64[1] = 0x100000001;
              v24 = vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vbicq_s8(v23, vceqzq_s32(v50[0])), vtstq_s32(v51, v51)), vtstq_s32(v53, v53)), vtstq_s32(v55, v55)), vtstq_s32(v57, v57)), vtstq_s32(v59, v59)), vtstq_s32(v61, v61)), vtstq_s32(v63, v63)), vtstq_s32(v65, v65)), vtstq_s32(v67, v67)), vtstq_s32(v69, v69)), vtstq_s32(v71, v71)), vtstq_s32(v73, v73)), vtstq_s32(v75, v75)), vtstq_s32(v77, v77)), vtstq_s32(v79, v79)), vtstq_s32(v81, v81)), vtstq_s32(v83, v83)), vtstq_s32(v85, v85)), vtstq_s32(v87, v87)), vtstq_s32(v89, v89)), vtstq_s32(v91, v91)), vtstq_s32(v93, v93)), vtstq_s32(v95, v95)), vtstq_s32(v97, v97)), vtstq_s32(v99, v99)), vtstq_s32(v101, v101)), vtstq_s32(v103, v103)), vtstq_s32(v105, v105)), vtstq_s32(v107, v107)), vtstq_s32(v109, v109));
              if ((vaddvq_s32(vaddq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vsubq_s32(vbicq_s8(v23, vceqzq_s32(v50[1])), vtstq_s32(v52, v52)), vtstq_s32(v54, v54)), vtstq_s32(v56, v56)), vtstq_s32(v58, v58)), vtstq_s32(v60, v60)), vtstq_s32(v62, v62)), vtstq_s32(v64, v64)), vtstq_s32(v66, v66)), vtstq_s32(v68, v68)), vtstq_s32(v70, v70)), vtstq_s32(v72, v72)), vtstq_s32(v74, v74)), vtstq_s32(v76, v76)), vtstq_s32(v78, v78)), vtstq_s32(v80, v80)), vtstq_s32(v82, v82)), vtstq_s32(v84, v84)), vtstq_s32(v86, v86)), vtstq_s32(v88, v88)), vtstq_s32(v90, v90)), vtstq_s32(v92, v92)), vtstq_s32(v94, v94)), vtstq_s32(v96, v96)), vtstq_s32(v98, v98)), vtstq_s32(v100, v100)), vtstq_s32(v102, v102)), vtstq_s32(v104, v104)), vtstq_s32(v106, v106)), vtstq_s32(v108, v108)), vtstq_s32(v110, v110)), vtstq_s32(v112, v112)), vsubq_s32(v24, vtstq_s32(v111, v111)))) - 2) <= 2)
              {
                ++v9;
                v25 = av1_ss_size_lookup[2 * *v13 + 24 + v13[1]];
                v49 = 0;
                v26 = (*(*a1 + (v25 << 7) + 51416))(v44 + v19, v15, &AV1_VAR_OFFS, 0, &v49);
                v27 = num_pels_log2_lookup_8[v25];
                v5 = v46;
                if ((v26 + (1 << v27 >> 1)) >> v27)
                {
                  ++v8;
                }
              }

              v20 += 16;
              v19 += 16;
              v17 += 16;
            }

            while (v5 >= v20);
            v18 = v38 + 16;
            v16 = v40 + 16;
            v17 = &v39[16 * v15];
            v14 = v42;
          }

          while (v38 + 16 <= v41);
        }
      }

      v10 = 2560 * v9 > v35;
      *(a2 + 3) = v10;
      v11 = 3072 * v8 > v35 && 2560 * v9 > v35;
      *(a2 + 4) = v11;
      *v36 = v10;
      v12 = 2560 * v9 > 4 * v35 && 7680 * v8 > v35;
      if (v11)
      {
        v12 = 1;
      }

      v36[1] = v12;
    }
  }

  else
  {
    *(a2 + 4) = v3 != 0;
    *(a2 + 3) = v3 != 0;
  }
}

uint64_t av1_check_initial_width(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a1 + 456852;
  v6 = a1 + 263736;
  v7 = *(a1 + 263736);
  if (*(a1 + 456856) != 1 || *(v7 + 76) != a2 || *(v7 + 96) != a3 || *(v7 + 100) != a4)
  {
    v8 = (a1 + 239288);
    *(v7 + 96) = a3;
    *(v7 + 100) = a4;
    *(v7 + 76) = a2;
    av1_set_speed_features_framesize_independent(a1, *(a1 + 265568));
    av1_set_speed_features_framesize_dependent(a1, *(v6 + 1832));
    if (*v8)
    {
      --**v8;
      *v8 = 0;
    }

    v9 = *(a1 + 239472);
    if (v9)
    {
      --*v9;
      *(a1 + 239472) = 0;
    }

    v10 = *(a1 + 239480);
    if (v10)
    {
      --*v10;
      *(a1 + 239480) = 0;
    }

    v11 = *(a1 + 239488);
    if (v11)
    {
      --*v11;
      *(a1 + 239488) = 0;
    }

    v12 = *(a1 + 239496);
    if (v12)
    {
      --*v12;
      *(a1 + 239496) = 0;
    }

    v13 = *(a1 + 239504);
    if (v13)
    {
      --*v13;
      *(a1 + 239504) = 0;
    }

    v14 = *(a1 + 239512);
    if (v14)
    {
      --*v14;
      *(a1 + 239512) = 0;
    }

    v15 = *(a1 + 239520);
    if (v15)
    {
      --*v15;
      *(a1 + 239520) = 0;
    }

    v16 = *(a1 + 239528);
    if (v16)
    {
      --*v16;
      *(a1 + 239528) = 0;
    }

    init_motion_estimation(a1);
    *v5 = *(a1 + 239584);
    *(v5 + 4) = 1;
  }

  return 0;
}

_DWORD *init_motion_estimation(_DWORD *result)
{
  v1 = result[59778];
  v2 = (((v1 + 7) & 0xFFFFFFF8) + 2 * result[66390] + 31) & 0xFFFFFFE0;
  v3 = v2;
  if (result[66138] == v1)
  {
    v3 = (((v1 + 7) & 0xFFFFFFF8) + 2 * result[66390] + 31) & 0xFFFFFFE0;
    if (result[66139] == result[59779])
    {
      v3 = (((v1 + 7) & 0xFFFFFFF8) + 2 * result[66390] + 31) & 0xFFFFFFE0;
      if (v1 == result[59782])
      {
        v3 = *(*(*(*result + 368) + 40) + 32);
      }
    }
  }

  v4 = *(result + 29911);
  v5 = (((v1 + 7) & 0xFFFFFFF8) + 2 * result[66390] + 31) & 0xFFFFFFE0;
  if (v4)
  {
    v5 = *(v4 + 1280);
  }

  v6 = result[98305];
  if (!v6 || !result[103863] || v2 != v6)
  {
    v7 = av1_init_motion_compensation;
    v8 = result;
    av1_init_motion_compensation((result + 97512), v2, 0);
    v7((v8 + 103070), v3, 0);
    v9 = off_2882AD490;
    off_2882AD490(v8 + 98306, v2, 0);
    v9(v8 + 103864, v3, 0);
    v10 = off_2882AD498;
    off_2882AD498(v8 + 99100, v2, 1);
    v10(v8 + 104658, v3, 1);
    v11 = off_2882AD4A0;
    off_2882AD4A0((v8 + 99894), v2, 1);
    v11((v8 + 105452), v3, 1);
    v12 = off_2882AD4A8;
    off_2882AD4A8((v8 + 100688), v2);
    v12((v8 + 106246), v3);
    v13 = off_2882AD4B0;
    off_2882AD4B0(v8 + 101482, v2);
    v13(v8 + 107040, v3);
    v14 = off_2882AD4B8;
    off_2882AD4B8(v8 + 102276, v2);
    v14(v8 + 107834, v3);
    av1_init_motion_fpf((v8 + 108628), v5);
    memcpy(v8 + 109422, v8 + 108628, 0xC68uLL);
    memcpy(v8 + 110216, v8 + 108628, 0xC68uLL);
    memcpy(v8 + 111010, v8 + 108628, 0xC68uLL);
    memcpy(v8 + 111804, v8 + 108628, 0xC68uLL);
    memcpy(v8 + 112598, v8 + 108628, 0xC68uLL);

    return memcpy(v8 + 113392, v8 + 108628, 0xC68uLL);
  }

  return result;
}

uint64_t av1_set_frame_size(uint64_t a1, int a2, int a3, double a4, double a5)
{
  v8 = a1 + 636744;
  v9 = (a1 + 456792);
  v10 = (a1 + 263736);
  v11 = a1 + 239008;
  v12 = *(a1 + 263736);
  if (*(v12 + 77))
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v125 = v13;
  if (*(a1 + 239112) == a2 && *(a1 + 239116) == a3)
  {
    goto LABEL_54;
  }

  av1_check_initial_width(a1, *(v12 + 76), *(v12 + 96), *(v12 + 100));
  if (a2 >= 1 && a3 >= 1)
  {
    *(v11 + 104) = a2;
    *(v11 + 108) = a3;
    v14 = v10[454];
    if (v14 >= 1 && !*(v8 + 1048))
    {
      v15 = av1_denoiser_alloc(a1 + 239056, a1 + 637128, a1 + 637584, *(*a1 + 50968), v14, a2, a3, *(*v10 + 96), *(*v10 + 100), *(*v10 + 76), 288);
      if (v16)
      {
        aom_internal_error(*(v11 + 96), 2, "Failed to allocate denoiser", v15);
      }
    }

    if (*(v11 + 104) > *(v9 + 13) || *(v11 + 108) > *(v9 + 14))
    {
      v17 = (a1 + 234280);
      v18 = *(v11 + 640);
      if (v18)
      {
        v18(a1 + 239576);
      }

      av1_free_above_context_buffers((a1 + 264360));
      av1_free_shared_coeff_buffer((a1 + 234208));
      if (*v17)
      {
        free(*(*v17 - 8));
      }

      *v17 = 0;
      if (*(*v10 + 77))
      {
        v19 = 1;
      }

      else
      {
        v19 = 3;
      }

      av1_free_pmc(*(a1 + 234504), v19);
      *(a1 + 234504) = 0;
      alloc_compressor_data_0(a1);
      realloc_segmentation_maps_0(a1);
      v20 = *(v11 + 108);
      *(v9 + 13) = *(v11 + 104);
      *(v9 + 14) = v20;
      v9[64] = 0;
    }

    if (av1_alloc_context_buffers(a1 + 239056))
    {
      aom_internal_error(*(v11 + 96), 2, "Failed to allocate context buffers");
    }

    if (v10[468] == 1 || *(v8 + 768) == 1)
    {
      goto LABEL_37;
    }

    v21 = mi_size_wide_13[*(v11 + 608)];
    v22 = (*(v11 + 584) + v21 - 1) / v21;
    v23 = v22 * ((v21 - 1 + *(v11 + 580)) / v21);
    if (v23 <= *(v11 + 8))
    {
LABEL_36:
      *(v11 + 12) = v22;
LABEL_37:
      av1_update_frame_size(a1);
      goto LABEL_38;
    }

    if (*v11)
    {
      free(*(*v11 - 8));
    }

    *v11 = 0;
    *(v11 + 8) = 0;
    v24 = 84 * v23;
    if (v24 <= 0x1FFFFFFE9 && (v25 = malloc_type_malloc(v24 + 23, 0x5F484EBFuLL)) != 0)
    {
      v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v26 - 8) = v25;
      *v11 = v26;
      if (v26)
      {
LABEL_35:
        *(v11 + 8) = v23;
        goto LABEL_36;
      }
    }

    else
    {
      *v11 = 0;
    }

    aom_internal_error(*(v11 + 96), 2, "Failed to allocate mbmi_ext_info->frame_base");
    goto LABEL_35;
  }

LABEL_38:
  v27 = *(v11 + 104);
  v28 = *(v11 + 547) == 1 && v27 == *(v11 + 120);
  *(v11 + 548) = v28;
  v29 = *(v11 + 108) * v27;
  *(v8 + 800) = 0;
  if (v29 >> 10 <= 0x7E8)
  {
    v30 = 140;
  }

  else
  {
    v30 = 200;
  }

  *(v8 + 808) = 0x5A00000000;
  a4 = 0.0;
  *(v8 + 820) = 0;
  *(v8 + 828) = 0;
  *(v8 + 804) = v29 >= 921600;
  if (v29 < 921600)
  {
    if (v29 < 230400)
    {
      v30 = 90;
      goto LABEL_49;
    }

    v30 = 115;
  }

  *(v8 + 812) = v30;
LABEL_49:
  *(v8 + 832) = 15;
  *(v8 + 816) = v30 + (v30 >> 1);
  if (v10[454] >= 1)
  {
    a4 = av1_denoiser_free(a1 + 637584);
    v31 = v10[454];
    if (v31 >= 1 && !*(v8 + 1048))
    {
      a4 = av1_denoiser_alloc(a1 + 239056, a1 + 637128, a1 + 637584, *(*a1 + 50968), v31, *(v11 + 104), *(v11 + 108), *(*v10 + 96), *(*v10 + 100), *(*v10 + 76), 288);
      if (v32)
      {
        aom_internal_error(*(v11 + 96), 2, "Failed to allocate denoiser", a4);
      }
    }
  }

LABEL_54:
  v33 = v10[468];
  if (v33 > 1 || !v33 && !*(v8 + 768) && *(*a1 + 23172))
  {
    av1_set_target_rate(a1, *(v11 + 104), *(v11 + 108), a4, a5);
  }

  v34 = *(v11 + 280);
  v35 = *(v34 + 72);
  if (v35)
  {
    if (*(v34 + 260) == *(v11 + 580) && *(v34 + 264) == *(v11 + 584))
    {
      goto LABEL_75;
    }

    free(*(v35 - 8));
  }

  v36 = *(v11 + 580);
  *(v34 + 260) = v36;
  v37 = *(v11 + 584);
  *(v34 + 264) = v37;
  v38 = ((v37 + 1) >> 1) * ((v36 + 1) >> 1);
  if (v38 <= 0x3FFFFFFD)
  {
    v39 = 8 * v38;
    v40 = malloc_type_malloc(v39 + 23, 0x5F484EBFuLL);
    if (v40)
    {
      v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v41 - 8) = v40;
      if (v41)
      {
        bzero(((v40 + 23) & 0xFFFFFFFFFFFFFFF0), v39);
        *(v34 + 72) = v41;
        v42 = *(v34 + 80);
        if (!v42)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }
    }
  }

  *(v34 + 72) = 0;
  aom_internal_error(*(v11 + 96), 2, "Failed to allocate buf->mvs");
  v42 = *(v34 + 80);
  if (v42)
  {
LABEL_69:
    free(*(v42 - 8));
  }

LABEL_70:
  v43 = *(v11 + 584) * *(v11 + 580);
  if ((v43 & 0x80000000) == 0 && (v44 = malloc_type_malloc(v43 + 23, 0x5F484EBFuLL)) != 0 && (v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF0, *(v45 - 8) = v44, v45))
  {
    bzero(((v44 + 23) & 0xFFFFFFFFFFFFFFF0), v43);
    *(v34 + 80) = v45;
  }

  else
  {
    *(v34 + 80) = 0;
    aom_internal_error(*(v11 + 96), 2, "Failed to allocate buf->seg_map");
  }

LABEL_75:
  v46 = v9;
  v47 = ((*(v11 + 580) + 32) >> 1) * (*(v11 + 628) >> 1);
  v48 = *(v10 + 90);
  if (!v48)
  {
    goto LABEL_78;
  }

  if (v10[182] < v47)
  {
    free(*(v48 - 8));
LABEL_78:
    if (v47 <= 0x3FFFFFFD && (v49 = malloc_type_malloc(8 * v47 + 23, 0x5F484EBFuLL)) != 0 && (v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF0, *(v50 - 8) = v49, v50))
    {
      bzero(((v49 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v47);
      *(v10 + 90) = v50;
    }

    else
    {
      *(v10 + 90) = 0;
      aom_internal_error(*(v11 + 96), 2, "Failed to allocate cm->tpl_mvs");
    }

    v10[182] = v47;
  }

  *(v34 + 268) = *(v11 + 104);
  if (*(*v10 + 77))
  {
    v51 = 1;
  }

  else
  {
    v51 = 3;
  }

  if (v10[166] < v51 || v10[168] < *(v11 + 584) || v10[167] < v10[7])
  {
    av1_free_above_context_buffers((a1 + 264360));
    v52 = *(*v10 + 77) ? 1 : 3;
    if (av1_alloc_above_context_buffers((a1 + 264360), v10[7], *(v11 + 584), v52))
    {
      aom_internal_error(*(v11 + 96), 2, "Failed to allocate context buffers");
    }
  }

  v53 = 288;
  if (!*(v10 + 1024))
  {
    v54 = v10[260];
    v53 = v54 ? 288 : 64;
    if (!v54 && v10[218])
    {
      v53 = block_size_wide_14[*(*v10 + 28)] + 32;
    }
  }

  v10[456] = v53;
  LOBYTE(v124) = *(v8 + 1512);
  if (aom_realloc_frame_buffer(*(v11 + 280) + 1248, *(v11 + 104), *(v11 + 108), *(v12 + 96), *(v12 + 100), *(v12 + 76), v53, *(v11 + 560), 0, 0, 0, v124, 0))
  {
    aom_internal_error(*(v11 + 96), 2, "Failed to allocate frame buffer");
  }

  if (v10[468] != 1 && *(v8 + 768) != 1)
  {
    v55 = *a1;
    if (*(*a1 + 4 * *v46 + 12668) <= 0)
    {
      v56 = v55 + 73728;
      if (*(v55 + 74268) <= 1)
      {
        v57 = 74256;
      }

      else
      {
        v57 = 74224;
      }

      av1_alloc_cdef_buffers(a1 + 239056, (v55 + 74296), a1 + 636712, *(v55 + v57), 1);
      *v8 = *(v56 + 568);
    }
  }

  result = init_motion_estimation(a1);
  v59 = a1 + 239472;
  v60 = a1 + 239344;
  v61 = *(v11 + 288);
  if (v61 == -1)
  {
    goto LABEL_121;
  }

  v62 = *(v59 + 8 * v61);
  if (!v62)
  {
    goto LABEL_121;
  }

  v63 = *(v11 + 104);
  v64.i64[0] = v63;
  v64.i32[2] = *(v62 + 1264);
  v64.i32[3] = *(v62 + 1272);
  v65 = v60 + 16 * v61;
  v66.i64[0] = v64.i64[1];
  v66.i64[1] = v63;
  if (vmaxv_u16(vmovn_s32(vcgtq_s32(v66, vshlq_u32(v64, xmmword_273BE1190)))))
  {
    v67 = 0;
    *v65 = -1;
    goto LABEL_122;
  }

  v68 = (v63 / 2 + (*(v62 + 1264) << 14)) / v63;
  v69 = (SHIDWORD(v63) / 2 + (*(v62 + 1272) << 14)) / SHIDWORD(v63);
  *(v65 + 8) = (v68 + 8) >> 4;
  *(v65 + 12) = (v69 + 8) >> 4;
  *v65 = v68;
  *(v65 + 4) = v69;
  if (v68 == -1)
  {
LABEL_121:
    v67 = 0;
    goto LABEL_122;
  }

  v67 = v69 != -1;
  if (v69 != -1)
  {
    if (v68 != 0x4000 || v69 != 0x4000)
    {
      result = aom_extend_frame_borders_c((v62 + 1248), v125);
    }

    v67 = 1;
  }

LABEL_122:
  v70 = *(v11 + 292);
  if (v70 != -1)
  {
    v71 = *(v59 + 8 * v70);
    if (v71)
    {
      v72 = *(v11 + 104);
      v73.i64[0] = v72;
      v73.i32[2] = *(v71 + 1264);
      v73.i32[3] = *(v71 + 1272);
      v74 = v60 + 16 * v70;
      v75.i64[0] = v73.i64[1];
      v75.i64[1] = v72;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v75, vshlq_u32(v73, xmmword_273BE1190)))))
      {
        *v74 = -1;
      }

      else
      {
        v112 = (v72 / 2 + (*(v71 + 1264) << 14)) / v72;
        v113 = (SHIDWORD(v72) / 2 + (*(v71 + 1272) << 14)) / SHIDWORD(v72);
        *(v74 + 8) = (v112 + 8) >> 4;
        *(v74 + 12) = (v113 + 8) >> 4;
        *v74 = v112;
        *(v74 + 4) = v113;
        if (v112 != -1 && v113 != -1)
        {
          v67 = 1;
          if (v112 != 0x4000 || v113 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v71 + 1248), v125);
          }
        }
      }
    }
  }

  v76 = *(v11 + 296);
  if (v76 != -1)
  {
    v77 = *(v59 + 8 * v76);
    if (v77)
    {
      v78 = *(v11 + 104);
      v79.i64[0] = v78;
      v79.i32[2] = *(v77 + 1264);
      v79.i32[3] = *(v77 + 1272);
      v80 = v60 + 16 * v76;
      v81.i64[0] = v79.i64[1];
      v81.i64[1] = v78;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v81, vshlq_u32(v79, xmmword_273BE1190)))))
      {
        *v80 = -1;
      }

      else
      {
        v114 = (v78 / 2 + (*(v77 + 1264) << 14)) / v78;
        v115 = (SHIDWORD(v78) / 2 + (*(v77 + 1272) << 14)) / SHIDWORD(v78);
        *(v80 + 8) = (v114 + 8) >> 4;
        *(v80 + 12) = (v115 + 8) >> 4;
        *v80 = v114;
        *(v80 + 4) = v115;
        if (v114 != -1 && v115 != -1)
        {
          v67 = 1;
          if (v114 != 0x4000 || v115 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v77 + 1248), v125);
          }
        }
      }
    }
  }

  v82 = *(v11 + 300);
  if (v82 != -1)
  {
    v83 = *(v59 + 8 * v82);
    if (v83)
    {
      v84 = *(v11 + 104);
      v85.i64[0] = v84;
      v85.i32[2] = *(v83 + 1264);
      v85.i32[3] = *(v83 + 1272);
      v86 = v60 + 16 * v82;
      v87.i64[0] = v85.i64[1];
      v87.i64[1] = v84;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v87, vshlq_u32(v85, xmmword_273BE1190)))))
      {
        *v86 = -1;
      }

      else
      {
        v116 = (v84 / 2 + (*(v83 + 1264) << 14)) / v84;
        v117 = (SHIDWORD(v84) / 2 + (*(v83 + 1272) << 14)) / SHIDWORD(v84);
        *(v86 + 8) = (v116 + 8) >> 4;
        *(v86 + 12) = (v117 + 8) >> 4;
        *v86 = v116;
        *(v86 + 4) = v117;
        if (v116 != -1 && v117 != -1)
        {
          v67 = 1;
          if (v116 != 0x4000 || v117 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v83 + 1248), v125);
          }
        }
      }
    }
  }

  v88 = *(v11 + 304);
  if (v88 != -1)
  {
    v89 = *(v59 + 8 * v88);
    if (v89)
    {
      v90 = *(v11 + 104);
      v91.i64[0] = v90;
      v91.i32[2] = *(v89 + 1264);
      v91.i32[3] = *(v89 + 1272);
      v92 = v60 + 16 * v88;
      v93.i64[0] = v91.i64[1];
      v93.i64[1] = v90;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v93, vshlq_u32(v91, xmmword_273BE1190)))))
      {
        *v92 = -1;
      }

      else
      {
        v118 = (v90 / 2 + (*(v89 + 1264) << 14)) / v90;
        v119 = (SHIDWORD(v90) / 2 + (*(v89 + 1272) << 14)) / SHIDWORD(v90);
        *(v92 + 8) = (v118 + 8) >> 4;
        *(v92 + 12) = (v119 + 8) >> 4;
        *v92 = v118;
        *(v92 + 4) = v119;
        if (v118 != -1 && v119 != -1)
        {
          v67 = 1;
          if (v118 != 0x4000 || v119 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v89 + 1248), v125);
          }
        }
      }
    }
  }

  v94 = *(v11 + 308);
  if (v94 != -1)
  {
    v95 = *(v59 + 8 * v94);
    if (v95)
    {
      v96 = *(v11 + 104);
      v97.i64[0] = v96;
      v97.i32[2] = *(v95 + 1264);
      v97.i32[3] = *(v95 + 1272);
      v98 = v60 + 16 * v94;
      v99.i64[0] = v97.i64[1];
      v99.i64[1] = v96;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v99, vshlq_u32(v97, xmmword_273BE1190)))))
      {
        *v98 = -1;
      }

      else
      {
        v120 = (v96 / 2 + (*(v95 + 1264) << 14)) / v96;
        v121 = (SHIDWORD(v96) / 2 + (*(v95 + 1272) << 14)) / SHIDWORD(v96);
        *(v98 + 8) = (v120 + 8) >> 4;
        *(v98 + 12) = (v121 + 8) >> 4;
        *v98 = v120;
        *(v98 + 4) = v121;
        if (v120 != -1 && v121 != -1)
        {
          v67 = 1;
          if (v120 != 0x4000 || v121 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v95 + 1248), v125);
          }
        }
      }
    }
  }

  v100 = *(v11 + 312);
  if (v100 != -1)
  {
    v101 = *(v59 + 8 * v100);
    if (v101)
    {
      v102 = *(v11 + 104);
      v103.i64[0] = v102;
      v103.i32[2] = *(v101 + 1264);
      v103.i32[3] = *(v101 + 1272);
      v104 = v60 + 16 * v100;
      v105.i64[0] = v103.i64[1];
      v105.i64[1] = v102;
      if (vmaxv_u16(vmovn_s32(vcgtq_s32(v105, vshlq_u32(v103, xmmword_273BE1190)))))
      {
        *v104 = -1;
      }

      else
      {
        v122 = (v102 / 2 + (*(v101 + 1264) << 14)) / v102;
        v123 = (SHIDWORD(v102) / 2 + (*(v101 + 1272) << 14)) / SHIDWORD(v102);
        *(v104 + 8) = (v122 + 8) >> 4;
        *(v104 + 12) = (v123 + 8) >> 4;
        *v104 = v122;
        *(v104 + 4) = v123;
        if (v122 != -1 && v123 != -1)
        {
          v67 = 1;
          if (v122 != 0x4000 || v123 != 0x4000)
          {
            result = aom_extend_frame_borders_c((v101 + 1248), v125);
          }
        }
      }
    }
  }

  if ((*(a1 + 239056) & 0xFD) != 0 && !v67)
  {
    result = aom_internal_error(*(v11 + 96), 7, "Can't find at least one reference frame with valid size");
  }

  v106 = *(v11 + 104);
  v107.i64[0] = v106;
  v107.i64[1] = v106;
  if (vmaxv_u16(vmovn_s32(vcgtq_s32(v107, vshlq_u32(v107, xmmword_273BE1190)))))
  {
    v108 = -1;
    v109 = -1;
  }

  else
  {
    v108 = (v106 / 2 + (v106 << 14)) / v106;
    v109 = (SHIDWORD(v106) / 2 + (HIDWORD(v106) << 14)) / SHIDWORD(v106);
    *(v11 + 328) = (v108 + 8) >> 4;
    *(v11 + 332) = (v109 + 8) >> 4;
  }

  *(v11 + 320) = v108;
  *(v11 + 324) = v109;
  v110 = *(v11 + 288);
  if (v110 == -1)
  {
    v111 = 0;
  }

  else
  {
    v111 = v60 + 16 * v110;
  }

  *(a1 + 94424) = v111;
  *(a1 + 94432) = v111;
  return result;
}

BOOL av1_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, void *a6)
{
  v205 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 636808);
  v8 = a1 + 456768;
  v9 = a1 + 387352;
  v10 = a1 + 262624;
  v11 = (a1 + 239056);
  v12 = *a4;
  *(a1 + 265704) = *a4;
  *(a1 + 265688) = v12;
  *(a1 + 265904) = a4[1];
  *(a1 + 239092) = a5[5];
  v13 = *a5;
  *(a1 + 239558) = *a5 != 0;
  *(a1 + 239564) = a5[2];
  v14 = *(a5 + 4);
  *(a1 + 239056) = v14;
  *(a1 + 239536) = a5[4];
  *(a1 + 388712) = a5[8];
  *(a1 + 388716) = a5[18];
  v15 = a5[6];
  *(a1 + 239544) = v15;
  *(a1 + 636808) = a5[7];
  v16 = *(a5 + 9);
  v17 = *(a5 + 13);
  *(a1 + 239296) = v16;
  *(a1 + 239312) = v17;
  v18 = *(a5 + 34);
  *(a1 + 267130) = *(a5 + 70);
  *(a1 + 267128) = v18;
  v19 = *a1;
  if (v14)
  {
    v20 = *(a1 + 456792);
  }

  else
  {
    v20 = *(a1 + 456792);
    if (!*(v19 + v20 + 6410))
    {
      *(a1 + 239072) = 0;
    }
  }

  v21 = a5[3] + *(a1 + 239072);
  *(a1 + 239064) = v21;
  v22 = *(a1 + 263736);
  *(a1 + 239060) = v21 & ~(-1 << (*(v22 + 44) + 1));
  if (v21)
  {
    v23 = *(v19 + 4 * v20 + 1152);
    if (v23 == 6)
    {
      *(a1 + 239068) = *(v19 + 3152);
      if (*(a1 + 265608) == 1)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v23 != 7)
    {
      if (v23 <= 1)
      {
        v23 = 1;
      }

      *(a1 + 239068) = v23;
      if (*(a1 + 265608) == 1)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  *(a1 + 239068) = 1;
  if (*(a1 + 265608) == 1)
  {
    return 0;
  }

LABEL_15:
  if (*(a1 + 637512) == 1)
  {
    return 0;
  }

  *(a1 + 94440) = v12;
  *(*(a1 + 239288) + 1448) = v14;
  v24 = *(a1 + 265392);
  *(a1 + 264340) = v24;
  *(a1 + 264344) = *(a1 + 265393);
  if (v13)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = *(v22 + 52);
    if (v25)
    {
      v25 = *(v22 + 40);
      if (v25)
      {
        LOBYTE(v25) = (v14 & 0xFD) != 0;
      }
    }
  }

  v26 = (v25 & *(a1 + 239554));
  if (v24)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26 == 0;
  }

  v28 = !v27;
  *(a1 + 239554) = v28;
  v29 = v14 & 0xFFFFFFFD;
  if (!v13 && (*(a1 + 265493) & 1) != 0 && v29)
  {
    *(a1 + 239553) = *(v22 + 65) != 0;
    *(a1 + 637513) = v14;
    goto LABEL_29;
  }

  *(a1 + 239553) = 0;
  *(a1 + 637513) = v14;
  if (v29)
  {
LABEL_29:
    if (v14 == 3)
    {
      *(v19 + *(v19 + 6664) + 400) = 2;
      v15 = *(a1 + 239544);
    }

    v179 = v22;
    v180 = a2;
    if (!v15)
    {
      goto LABEL_59;
    }

    goto LABEL_32;
  }

  *(a1 + 638164) = 0;
  v179 = v22;
  v180 = a2;
  if (!v15)
  {
    goto LABEL_59;
  }

LABEL_32:
  if (*(a1 + 239558) != 1 || !*v11)
  {
    v30 = a3;
    av1_finalize_encoded_frame(a1);
    LODWORD(__b) = 0;
    *(v9 + 1052) = 0;
    if (!av1_pack_bitstream(a1, v180, v30))
    {
      if (*(v179 + 16) && !*v11)
      {
        v31 = (v10 + 1796 + 4 * *v7);
        v32 = vld1q_dup_f32(v31);
        *(v10 + 1796) = v32;
        *(v10 + 1812) = v32;
      }

      if (*(v11 + 120))
      {
        *(a1 + 267120) = *(v11 + 29);
      }

      av1_denoiser_update_ref_frame(a1);
      av1_set_target_rate(a1, *(v11 + 14), *(v11 + 15), v33, v34);
      if (*(*a1 + 23472) && *(v10 + 2984) != 1 && *(v7 + 704) != 1 && *(v11 + 120) && (v7[320] & 1) == 0)
      {
        v35 = *(v11 + 29);
        v36 = *(v35 + 1264);
        v37 = *(v35 + 1272);
        v38 = *(v10 + 1112);
        if (*(v38 + 77))
        {
          v39 = 1;
        }

        else
        {
          v39 = 3;
        }

        v40 = *(v10 + 3080);
        if (*(v40 + 16) != v36 || *(v40 + 24) != v37)
        {
          v40 = a1 + 265712;
          LOBYTE(v163) = *(v7 + 1448);
          if (aom_realloc_frame_buffer(a1 + 265712, v36, v37, *(v38 + 96), *(v38 + 100), *(v38 + 76), 288, *(v11 + 128), 0, 0, 0, v163, 0))
          {
            aom_internal_error(*(v11 + 6), 2, "Failed to reallocate scaled source buffer");
          }

          if ((av1_resize_and_extend_frame_nonnormative(*(v10 + 3080), a1 + 265712, v41, v42, v43, v44, v45, *(*(v10 + 1112) + 72), v39) & 1) == 0)
          {
            aom_internal_error(*(v11 + 6), 2, "Failed to reallocate buffers during resize");
          }
        }

        *(v10 + 3064) = v40;
      }

LABEL_230:
      v90 = 0;
      ++*(v8 + 72);
      ++*(v11 + 4);
      return v90 != 0;
    }

LABEL_189:
    v90 = 1;
    return v90 != 0;
  }

LABEL_59:
  v46 = a1 + 258048;
  v178 = a6;
  v47 = a3;
  if (*(a1 + 265608) != 1 && *(a1 + 637512) != 1 && *(a1 + 239551) == 1 && (*v11 & 0xFD) != 0 && !*(a1 + 389712))
  {
    v57 = *(*(a1 + 263736) + 59);
    if (v57 == 2)
    {
      v58 = *(a1 + 265904);
      if (!v58)
      {
        goto LABEL_64;
      }

      is_integer_mv = av1_is_integer_mv(*(a1 + 265688), v58, a1 + 266800);
      a3 = v47;
      a6 = v178;
      v60 = !is_integer_mv;
    }

    else
    {
      v60 = v57 == 0;
    }

    v87 = !v60;
    v11[494] = v87;
    *(a1 + 97208) = v87;
    *(a1 + 262101) = 0;
    v48 = *v11;
    if (v48 > 3)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 239550) = 0;
  *(a1 + 97208) = 0;
  *(a1 + 262101) = 0;
  v48 = *v11;
  if (v48 > 3)
  {
    goto LABEL_67;
  }

LABEL_65:
  if (v48 != 1)
  {
    *v46 = 0;
    *(a1 + 258050) = 0;
    *&v16 = 0;
    *(a1 + 258052) = 0u;
    *(a1 + 258068) = 0u;
    *(a1 + 258084) = 0u;
    *(a1 + 258100) = 0u;
    *(a1 + 258116) = 0u;
    *(a1 + 258132) = 0u;
    *(a1 + 258148) = 0u;
    *(a1 + 258164) = 0u;
    *(a1 + 258180) = 0u;
    *(a1 + 258196) = 0u;
  }

LABEL_67:
  if (*(v10 + 2236))
  {
    v7[177] = 1;
    if (*(v10 + 2984))
    {
      goto LABEL_111;
    }
  }

  else
  {
    v7[177] = *(v10 + 2232);
    if (*(v10 + 2984))
    {
      goto LABEL_111;
    }
  }

  if (!*(*a1 + 23172) && *(v10 + 2092) == 1)
  {
    if (v7[80] >= 1 && !*(v10 + 2040) || av1_rc_drop_frame(a1))
    {
      *(v7 + 1280) = 1;
      goto LABEL_77;
    }

    a6 = v178;
    a3 = v47;
    if (v7[320])
    {
LABEL_77:
      av1_setup_frame_size(a1, *&v16, *&v17);
      v49 = *(v11 + 14);
      if (v49 <= *(v11 + 15))
      {
        v49 = *(v11 + 15);
      }

      if (v49 <= 16)
      {
        v50 = 16;
      }

      else
      {
        v50 = v49;
      }

      v51 = -1;
      do
      {
        ++v51;
      }

      while (v50 << v51 < 1023);
      if (v51 >= 9)
      {
        v51 = 9;
      }

      *(v9 + 2684) = v51;
      v52 = *(v9 + 1664);
      if (!v52)
      {
        goto LABEL_105;
      }

      if ((*v11 & 0xFD) != 0)
      {
        if ((*(v11 + 120) || *(*a1 + *(v8 + 24) + 400) == 6) && v52 >= 2)
        {
          v53 = *(v9 + 2680);
          if (v53 != -1)
          {
            v54 = 2 * v53;
            if (v49 >= v54)
            {
              v49 = v54;
            }

            if (v49 <= 16)
            {
              v55 = 16;
            }

            else
            {
              v55 = v49;
            }

            v56 = -1;
            do
            {
              ++v56;
            }

            while (v55 << v56 < 1023);
            if (v56 >= 9)
            {
              v56 = 9;
            }

            *(v9 + 2684) = v56;
          }
        }

        if (*(v7 + 1216) != 1)
        {
          goto LABEL_105;
        }

        v49 = -1;
      }

      *(v9 + 2680) = v49;
LABEL_105:
      av1_rc_postencode_update_drop_frame(a1);
      release_scaled_references_0(a1);
      *(*a1 + *(v8 + 24) + 13918) = 1;
      if (*(v11 + 120))
      {
        ++*(v8 + 72);
        ++*(v11 + 4);
      }

      return 0;
    }
  }

LABEL_111:
  v61 = *(v10 + 2792);
  if (v61 == 10 || v61 == 1)
  {
    av1_set_mb_ssim_rdmult_scaling(a1);
    a3 = v47;
    a6 = v178;
  }

  v62 = *(v10 + 2129);
  if (v62 == 3)
  {
    if (*(v9 + 2360))
    {
      goto LABEL_125;
    }

    av1_init_mb_wiener_var_buffer(a1);
    av1_set_mb_wiener_variance(a1, v63, v64, v65, v66, v67, v68, v69, v160, v161, v162, v163, v164, v167, v168, v170, v171, v172, v173, v174, v175, v176, v178, v179, v70);
    a3 = v47;
    a6 = v178;
    v62 = *(v10 + 2129);
  }

  if (v62 == 4)
  {
    if (!*(v7 + 159))
    {
      if ((*(v8 + 52) * *(v8 + 48)) <= 0x7FFFFFFA && (v71 = 4 * (*(v8 + 52) * *(v8 + 48)), (v72 = malloc_type_malloc(v71 + 23, 0x5F484EBFuLL)) != 0) && (v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF0, *(v73 - 8) = v72, v73))
      {
        bzero(((v72 + 23) & 0xFFFFFFFFFFFFFFF0), v71);
        *(v7 + 159) = v73;
      }

      else
      {
        *(v7 + 159) = 0;
        aom_internal_error(*(v11 + 6), 2, "Failed to allocate cpi->mb_delta_q");
      }
    }

    av1_set_mb_ur_variance(a1);
    a6 = v178;
    a3 = v47;
  }

LABEL_125:
  if (*(v179 + 16))
  {
    v74 = *(v10 + 1792);
    if (v74 == -1)
    {
      v76 = *(v10 + 3064);
      v77 = *(v76 + 40);
      if ((*(v76 + 176) & 8) != 0)
      {
        v80 = (2 * v77);
        v78 = *v80;
        v79 = v80[2];
      }

      else
      {
        v78 = *v77;
        v79 = v77[1];
      }

      v75 = (v78 | (v79 << 8)) % (1 << *(v179 + 20));
      if (*(v10 + 1992))
      {
        v75 = 55;
      }
    }

    else
    {
      v75 = (v74 + (1 << *(v179 + 20)) + 1) % (1 << *(v179 + 20));
    }

    *(v10 + 1792) = v75;
  }

  v81 = *(v10 + 1968);
  if (!*(v10 + 1968))
  {
    goto LABEL_180;
  }

  if (v81 == 2)
  {
    if ((*(v10 + 3008) | 2) == 2)
    {
      if ((*v11 & 0xFD) != 0)
      {
        LOBYTE(v82) = *(v11 + 120) != 0;
        goto LABEL_181;
      }
    }

    else
    {
      v82 = v7[83];
      if (v7[82] != 1 || v82 != 1)
      {
LABEL_168:
        if (v82 >= 2)
        {
          LOBYTE(v82) = v7[81] == v82 - 1;
          goto LABEL_181;
        }

LABEL_180:
        LOBYTE(v82) = 1;
        goto LABEL_181;
      }

      if ((*v11 & 0xFD) != 0)
      {
        v85 = *(v8 + 100);
        if ((!v85 || (v86 = *(v8 + 104)) == 0 || *(v11 + 14) == v85 && *(v11 + 15) == v86) && !*(v9 + 1104) && *(v9 + 1088) >= 30 && (*(v10 + 2128) != 3 || *(*v8 + 112) >= 30) && (v7[339] < 9 || !*(v9 + 1128)))
        {
          goto LABEL_180;
        }
      }
    }

LABEL_167:
    LOBYTE(v82) = 0;
    goto LABEL_181;
  }

  if (v81 == 1)
  {
    if (*(v9 + 2650) == 1 && *(*a1 + 84964) && *(v9 + 1088) > 2)
    {
      goto LABEL_180;
    }

    v82 = *(v9 + 2524);
    if (v82)
    {
      v82 = v7[83];
      if (v7[82] == 1 && v82 == 1)
      {
        if ((*v11 & 0xFD) != 0)
        {
          v83 = *(v8 + 100);
          if ((!v83 || (v84 = *(v8 + 104)) == 0 || *(v11 + 14) == v83 && *(v11 + 15) == v84) && !*(v9 + 1104) && *(v9 + 1088) >= 30 && (*(v10 + 2128) != 3 || *(*v8 + 112) >= 30) && (v7[339] < 9 || !*(v9 + 1128)))
          {
            goto LABEL_180;
          }
        }

        goto LABEL_167;
      }

      goto LABEL_168;
    }

LABEL_181:
    v11[492] = v82;
  }

  if ((v7[304] & 1) == 0 && *(*a1 + *(v8 + 24) + 400) == 6)
  {
    v11[492] = 1;
  }

  v181 = 0;
  v88 = *(v10 + 2152);
  if (v88 == 4 && *(v9 + 1388) != 2 && *(v9 + 1084) >= 2)
  {
    v177 = a3;
    av1_save_all_coding_context(a1);
    v188 = 0x7FFFFFFFFFFFFFFFLL;
    v189 = 0x7FFFFFFFFFFFFFFFLL;
    v187 = 0;
    v185 = 0x7FFFFFFFFFFFFFFFLL;
    v186 = 0x7FFFFFFFFFFFFFFFLL;
    v184 = 0;
    v99 = *(*a1 + *(v8 + 24) + 400);
    v166 = *(*(v10 + 1112) + 72);
    v169 = v8;
    if (*(v9 + 1388))
    {
      v7[178] = 4;
      v100 = encode_with_recode_loop_and_filter(a1, v178, v180, v177, &v189, &v188);
      v7[178] = 0;
      if (v100)
      {
        goto LABEL_189;
      }

      v101 = *(a1 + 387224);
      *(a1 + 262080) = *(a1 + 387208);
      *(a1 + 262096) = v101;
      *(v10 + 136) = *(v9 + 136);
      v102 = *(a1 + 387376);
      *(a1 + 262632) = *(a1 + 387360);
      *(a1 + 262648) = v102;
      v103 = *(a1 + 387408);
      *(a1 + 262664) = *(a1 + 387392);
      *(a1 + 262680) = v103;
      v104 = *(a1 + 387424);
      v105 = *(a1 + 387440);
      v106 = *(a1 + 387472);
      *(a1 + 262728) = *(a1 + 387456);
      *(a1 + 262744) = v106;
      *(a1 + 262696) = v104;
      *(a1 + 262712) = v105;
      *v10 = *v9;
      memcpy((a1 + 388392), (a1 + 387696), 0x138uLL);
      v107 = (*a1 + 74112);
      *v107 = *(a1 + 388008);
      v108 = *(a1 + 388024);
      v109 = *(a1 + 388040);
      v110 = *(a1 + 388056);
      *(v107 + 60) = *(a1 + 388068);
      v107[2] = v109;
      v107[3] = v110;
      v107[1] = v108;
      if ((*v11 & 0xFD) != 0)
      {
        release_scaled_references_0(a1);
      }

      if (encode_with_recode_loop_and_filter(a1, v178, v180, v177, &v186, &v185))
      {
        goto LABEL_189;
      }

      v111 = av1_compute_rd_mult_based_on_qindex(v166, v99, *(v11 + 154));
      if (v111 * v188 * 0.001953125 + (v189 >> (2 * v166 - 16)) * 128.0 >= v111 * v185 * 0.001953125 + (v186 >> (2 * v166 - 16)) * 128.0)
      {
        v181 = v184;
        v46 = a1 + 258048;
        v91 = v179;
        goto LABEL_191;
      }

      v112 = *(a1 + 387224);
      *(a1 + 262080) = *(a1 + 387208);
      *(a1 + 262096) = v112;
      *(v10 + 136) = *(v9 + 136);
      v113 = *(a1 + 387376);
      *(a1 + 262632) = *(a1 + 387360);
      *(a1 + 262648) = v113;
      v114 = *(a1 + 387408);
      *(a1 + 262664) = *(a1 + 387392);
      *(a1 + 262680) = v114;
      v115 = *(a1 + 387424);
      v116 = *(a1 + 387440);
      v117 = *(a1 + 387472);
      *(a1 + 262728) = *(a1 + 387456);
      *(a1 + 262744) = v117;
      *(a1 + 262696) = v115;
      *(a1 + 262712) = v116;
      *v10 = *v9;
      memcpy((a1 + 388392), (a1 + 387696), 0x138uLL);
      v118 = (*a1 + 74112);
      v119 = *(a1 + 388024);
      v120 = *(a1 + 388040);
      v121 = *(a1 + 388056);
      *(v118 + 60) = *(a1 + 388068);
      v118[2] = v120;
      v118[3] = v121;
      v118[1] = v119;
      *v118 = *(a1 + 388008);
      if ((*v11 & 0xFD) != 0)
      {
        release_scaled_references_0(a1);
      }

      v7[178] = 4;
      v122 = encode_with_recode_loop_and_filter(a1, v178, v180, v177, &__b, v191);
      v7[178] = 0;
      v46 = a1 + 258048;
    }

    else
    {
      v165 = *(*a1 + *(v8 + 24) + 400);
      if ((v99 - 6) < 0xFEu)
      {
        v123 = &v190;
        v124 = v191;
        p_b = &__b;
        v126 = 9;
        while (1)
        {
          *(v10 + 2148) = v126;
          *(v10 + 2149) = v126;
          v7[178] = 4;
          v127 = encode_with_recode_loop_and_filter(a1, v178, v180, v177, p_b, v124);
          v7[178] = 0;
          if (v127)
          {
            goto LABEL_189;
          }

          v128 = *(a1 + 387224);
          *(a1 + 262080) = *(a1 + 387208);
          *(a1 + 262096) = v128;
          *(v10 + 136) = *(v9 + 136);
          v129 = *(a1 + 387376);
          *(a1 + 262632) = *(a1 + 387360);
          *(a1 + 262648) = v129;
          v130 = *(a1 + 387408);
          *(a1 + 262664) = *(a1 + 387392);
          *(a1 + 262680) = v130;
          v131 = *(a1 + 387424);
          v132 = *(a1 + 387440);
          v133 = *(a1 + 387472);
          *(a1 + 262728) = *(a1 + 387456);
          *(a1 + 262744) = v133;
          *(a1 + 262696) = v131;
          *(a1 + 262712) = v132;
          *v10 = *v9;
          memcpy((a1 + 388392), (a1 + 387696), 0x138uLL);
          v134 = (*a1 + 74112);
          v135 = *(a1 + 388024);
          v136 = *(a1 + 388040);
          v137 = *(a1 + 388056);
          *(v134 + 60) = *(a1 + 388068);
          v134[2] = v136;
          v134[3] = v137;
          v134[1] = v135;
          *v134 = *(a1 + 388008);
          if ((*v11 & 0xFD) != 0)
          {
            release_scaled_references_0(a1);
          }

          ++v126;
          v123 += 4;
          ++v124;
          ++p_b;
          if (v126 == 17)
          {
            *(v10 + 2148) = 2056;
            goto LABEL_259;
          }
        }
      }

      memset_pattern16(&__b, &unk_273BE11B0, 0x40uLL);
      memset_pattern16(v191, &unk_273BE11B0, 0x40uLL);
LABEL_259:
      if (encode_with_recode_loop_and_filter(a1, v178, v180, v177, &v186, &v185))
      {
        goto LABEL_189;
      }

      v138 = av1_compute_rd_mult_based_on_qindex(v166, v165, *(v11 + 154));
      v139 = 2 * v166 - 16;
      v140 = v138 * v191[0] * 0.001953125 + (__b >> v139) * 128.0;
      if (v140 >= 1.79769313e308)
      {
        v141 = -1;
      }

      else
      {
        v141 = 9;
      }

      v142 = fmin(v140, 1.79769313e308);
      v143 = v138 * v191[1] * 0.001953125 + (*(&__b + 1) >> v139) * 128.0;
      if (v143 >= v142)
      {
        v143 = v142;
      }

      else
      {
        v141 = 10;
      }

      if (v138 * v192 * 0.001953125 + (v199 >> v139) * 128.0 < v143)
      {
        v141 = 11;
        v143 = v138 * v192 * 0.001953125 + (v199 >> v139) * 128.0;
      }

      if (v138 * v193 * 0.001953125 + (v200 >> v139) * 128.0 < v143)
      {
        v141 = 12;
        v143 = v138 * v193 * 0.001953125 + (v200 >> v139) * 128.0;
      }

      if (v138 * v194 * 0.001953125 + (v201 >> v139) * 128.0 < v143)
      {
        v141 = 13;
        v143 = v138 * v194 * 0.001953125 + (v201 >> v139) * 128.0;
      }

      v144 = v138 * v195 * 0.001953125 + (v202 >> v139) * 128.0;
      v145 = v144 < v143;
      if (v144 < v143)
      {
        v143 = v138 * v195 * 0.001953125 + (v202 >> v139) * 128.0;
      }

      v146 = (v203 >> v139);
      if (v145)
      {
        v141 = 14;
      }

      if (v138 * v196 * 0.001953125 + v146 * 128.0 < v143)
      {
        v141 = 15;
        v143 = v138 * v196 * 0.001953125 + v146 * 128.0;
      }

      v147 = (v204 >> v139);
      v148 = v138 * v197 * 0.001953125 + v147 * 128.0;
      if (v148 >= v143)
      {
        v149 = v141;
      }

      else
      {
        v149 = 16;
      }

      if (v148 < v143)
      {
        v143 = v138 * v197 * 0.001953125 + v147 * 128.0;
      }

      if (v143 >= v138 * v185 * 0.001953125 + (v186 >> v139) * 128.0)
      {
        v122 = 0;
        v181 = v184;
        v46 = a1 + 258048;
        v8 = v169;
      }

      else
      {
        v150 = *(a1 + 387224);
        *(a1 + 262080) = *(a1 + 387208);
        *(a1 + 262096) = v150;
        *(v10 + 136) = *(v9 + 136);
        v151 = *(a1 + 387376);
        *(a1 + 262632) = *(a1 + 387360);
        *(a1 + 262648) = v151;
        v152 = *(a1 + 387408);
        *(a1 + 262664) = *(a1 + 387392);
        *(a1 + 262680) = v152;
        v153 = *(a1 + 387424);
        v154 = *(a1 + 387440);
        v155 = *(a1 + 387472);
        *(a1 + 262728) = *(a1 + 387456);
        *(a1 + 262744) = v155;
        *(a1 + 262696) = v153;
        *(a1 + 262712) = v154;
        *v10 = *v9;
        memcpy((a1 + 388392), (a1 + 387696), 0x138uLL);
        v156 = (*a1 + 74112);
        v157 = *(a1 + 388024);
        v158 = *(a1 + 388040);
        v159 = *(a1 + 388056);
        *(v156 + 60) = *(a1 + 388068);
        v156[2] = v158;
        v156[3] = v159;
        v156[1] = v157;
        *v156 = *(a1 + 388008);
        v46 = a1 + 258048;
        if ((*v11 & 0xFD) != 0)
        {
          release_scaled_references_0(a1);
        }

        *(v10 + 2148) = v149;
        *(v10 + 2149) = v149;
        v7[178] = 4;
        v122 = encode_with_recode_loop_and_filter(a1, v178, v180, v177, &v183, &v182);
        v7[178] = 0;
        *(v10 + 2148) = 2056;
        v8 = v169;
      }
    }

    v91 = v179;
    if (v122)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v89 = v7[178];
    v7[178] = v88;
    if (encode_with_recode_loop_and_filter(a1, a6, v180, a3, 0, 0))
    {
      goto LABEL_189;
    }

    v7[178] = v89;
    v91 = v179;
  }

LABEL_191:
  if (!*(v91 + 16))
  {
    goto LABEL_201;
  }

  v92 = *(v11 + 9);
  if (v92)
  {
    *(v10 + 1796) = *(v10 + 1792);
    if ((v92 & 2) == 0)
    {
LABEL_194:
      if ((v92 & 4) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_245;
    }
  }

  else if ((v92 & 2) == 0)
  {
    goto LABEL_194;
  }

  *(v10 + 1800) = *(v10 + 1792);
  if ((v92 & 4) == 0)
  {
LABEL_195:
    if ((v92 & 8) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_246;
  }

LABEL_245:
  *(v10 + 1804) = *(v10 + 1792);
  if ((v92 & 8) == 0)
  {
LABEL_196:
    if ((v92 & 0x10) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_247;
  }

LABEL_246:
  *(v10 + 1808) = *(v10 + 1792);
  if ((v92 & 0x10) == 0)
  {
LABEL_197:
    if ((v92 & 0x20) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_248;
  }

LABEL_247:
  *(v10 + 1812) = *(v10 + 1792);
  if ((v92 & 0x20) == 0)
  {
LABEL_198:
    if ((v92 & 0x40) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_249;
  }

LABEL_248:
  *(v10 + 1816) = *(v10 + 1792);
  if ((v92 & 0x40) == 0)
  {
LABEL_199:
    if ((v92 & 0x80) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_200;
  }

LABEL_249:
  *(v10 + 1820) = *(v10 + 1792);
  if ((v92 & 0x80) != 0)
  {
LABEL_200:
    *(v10 + 1824) = *(v10 + 1792);
  }

LABEL_201:
  if (v7[80] == v7[82] - 1)
  {
    ++v7[110];
  }

  if (*v46)
  {
    if (!*(v46 + 1))
    {
      v93 = *(v46 + 176);
      if (v93)
      {
        memcpy(*(*(v11 + 29) + 80), v93, *(*(v11 + 29) + 260) * *(*(v11 + 29) + 264));
      }
    }
  }

  if (!*(*a1 + 4 * *(v8 + 24) + 12668) && (*v11 & 0xFD) != 0)
  {
    release_scaled_references_0(a1);
  }

  av1_denoiser_update_ref_frame(a1);
  if (*(v11 + 120))
  {
    *(a1 + 267120) = *(v11 + 29);
  }

  if (v11[516] == 1)
  {
    memcpy(*(v10 + 1120), (*(v8 + 112) + 23824 * v181 + 32), 0x52FCuLL);
    av1_reset_cdf_symbol_counters(*(v10 + 1120));
    if (!*(v10 + 1716))
    {
      goto LABEL_214;
    }

LABEL_217:
    if (*(v10 + 2770) != 1)
    {
      goto LABEL_224;
    }

    goto LABEL_218;
  }

  if (*(v10 + 1716))
  {
    goto LABEL_217;
  }

LABEL_214:
  memcpy((*(v11 + 29) + 1480), *(v10 + 1120), 0x52FCuLL);
  if (*(v10 + 2770) != 1)
  {
    goto LABEL_224;
  }

LABEL_218:
  if (*(v10 + 1716))
  {
    v94 = *(v10 + 2984);
    if (v94 > 1 || !v94 && !*(v7 + 704) && *(*a1 + 23172))
    {
      __b = *"./fc";
      LODWORD(v199) = 0;
      v95 = *(v11 + 4);
      BYTE4(__b) = v95 / 0x64 + 48;
      BYTE5(__b) = (v95 % 0x64 / 0xA) | 0x30;
      WORD3(__b) = (v95 % 0xA) | 0x30;
      av1_print_frame_contexts(*(v10 + 1120), &__b);
    }
  }

LABEL_224:
  *(v7 + 705) = *v11;
  if (v11[492] == 1)
  {
    v96 = v7[339] + 1;
  }

  else
  {
    v96 = 1;
  }

  v7[339] = v96;
  v97 = v7[82];
  if (v7[80] == v97 - 1)
  {
    v7[84] = v97;
  }

  *(v46 + 1) = 0;
  *(v46 + 4053) = 0;
  v90 = *(v11 + 120);
  if (v90)
  {
    goto LABEL_230;
  }

  return v90 != 0;
}

uint64_t av1_receive_raw_frame(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 + 637792;
  v11 = (a1 + 239104);
  v12 = *(a1 + 263736);
  v13 = a3[32];
  v26 = a3[33];
  v14 = (a3[44] >> 3) & 1;
  v15 = *(a1 + 265552);
  if (v15 >= 1 && !*v10)
  {
    v16 = av1_denoiser_alloc(a1 + 239056, a1 + 637128, a1 + 637584, *(*a1 + 50968), v15, *(a1 + 239112), *(a1 + 239116), *(v12 + 96), *(v12 + 100), *(v12 + 76), 288);
    if (v17)
    {
      aom_internal_error(*v11, 2, "Failed to allocate denoiser", v16);
    }
  }

  result = av1_lookahead_push(*(*a1 + 368), a3, a4, a5, v14, *(v10 + 464), a2);
  if (result)
  {
    aom_set_error(*v11, 1, "av1_lookahead_push() failed", v19, v20, v21, v22, v23, v25);
    result = 0xFFFFFFFFLL;
  }

  v24 = *(v12 + 69);
  if (*(v12 + 69))
  {
    if (v24 == 1)
    {
LABEL_9:
      if (!(v13 | v26))
      {
        return result;
      }

      aom_set_error(*v11, 8, "Profile 1 requires 4:4:4 color format", v19, v20, v21, v22, v23, v25);
      v24 = *(v12 + 69);
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(v12 + 77) || v13 == 1 && v26 == 1)
    {
      return result;
    }

    aom_set_error(*v11, 8, "Non-4:2:0 color format requires profile 1 or 2", v19, v20, v21, v22, v23, v25);
    v24 = *(v12 + 69);
    result = 0xFFFFFFFFLL;
    if (v24 == 1)
    {
      goto LABEL_9;
    }
  }

  if (v24 == 2 && *(v12 + 72) <= 0xAu && (v13 != 1 || v26))
  {
    aom_set_error(*v11, 8, "Profile 2 bit-depth <= 10 requires 4:2:2 color format", v19, v20, v21, v22, v23, v25);
    return 0xFFFFFFFFLL;
  }

  return result;
}

double av1_post_encode_updates(uint64_t *a1, uint64_t a2, __n128 a3, __n128 a4, int32x4_t a5, int64x2_t a6)
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a1 + 79641;
  v9 = a1 + 267132;
  v10 = a1 + 32760;
  v11 = (a1 + 29882);
  v12 = *a1;
  v13 = (*a1 + 50968);
  v14 = (*a1 + 23172);
  v15 = *a1 + 400;
  v16 = *(a1 + 456792);
  v17 = *(a1 + 263476) || *(a1 + 263512) || *(a1 + 263548) || *(a1 + 263584) || *(a1 + 263620) || *(a1 + 263656) || *(a1 + 263692) || *(a1 + 263728) != 0;
  v18 = v12 + 4 * *(v15 + v16);
  v19 = *(v18 + 84844);
  if (v19 == 0x7FFFFFFF)
  {
    v19 = 0;
  }

  *(v18 + 84844) = v19 | v17;
  v20 = *(a1 + 66402);
  if (v20 != 1 && *(a1 + 637512) != 1 && (a1[79761] & 1) == 0)
  {
    v21 = v12 + 12668;
    if (*(v12 + 12668 + 4 * v16) == 2 && *(v21 + 4 * (v16 - 1)) == 1 && *(v15 + v16 - 1) == 6)
    {
      a3 = *(v12 + 248);
      a4 = *(v12 + 264);
      a5 = *(v12 + 280);
      v22 = *(v12 + 296);
      *(a1 + 14969) = a5;
      *(a1 + 14970) = v22;
      *(a1 + 14967) = a3;
      *(a1 + 14968) = a4;
    }

    if (v20 || *v14 || *(a1 + 265632) != 1 || *(a1 + 66208) || v13[3] != 1 || v13[2] != 1 || *(v12 + 84960) || *(a1[32967] + 40))
    {
      v23 = 8;
    }

    else
    {
      v23 = 7;
      if (!*v9)
      {
        v23 = 8;
      }
    }

    v24 = 0;
    v25 = *(a1 + 59773);
    v26 = (a1 + 29934);
    do
    {
      if ((v25 >> v24))
      {
        v27 = a1[29911];
        v28 = v26->n128_u64[v24];
        if (v28)
        {
          --*v28;
        }

        v26->n128_u64[v24] = v27;
        ++*v27;
      }

      ++v24;
    }

    while (v23 != v24);
    if (*(v21 + 4 * v16) == 1 && *(v15 + v16) == 6)
    {
      a3 = *v26;
      a4 = *(a1 + 14968);
      a5 = *(a1 + 14969);
      v29 = *(a1 + 14970);
      *(v12 + 280) = a5;
      *(v12 + 296) = v29;
      *(v12 + 264) = a4;
      *(v12 + 248) = a3;
    }

    av1_rc_postencode_update(a1, *(a2 + 16), a3.n128_f64[0], a4.n128_f64[0], *a5.i8);
  }

  if (*(a2 + 64) == 1)
  {
    v30 = *(*a1 + 368);
    if (v30)
    {
      v31 = &v30[4 * *(v8 + 384)];
      v34 = v31[2];
      v32 = v31 + 2;
      v33 = v34;
      if (v34)
      {
        if (*(a2 + 48) || v33 == v32[2])
        {
          v35 = *v30;
          v36 = v32[1] + 1;
          if (v36 < v35)
          {
            v35 = 0;
          }

          *v32 = v33 - 1;
          v32[1] = v36 - v35;
        }
      }
    }
  }

  if (*(v11 + 120))
  {
    a3 = *(a2 + 32);
    *(*a1 + 312) = a3;
  }

  v37 = *(v10 + 882);
  if (v14[9])
  {
    if (v37 == 1 || *(v8 + 384) == 1)
    {
      goto LABEL_110;
    }

    if (!*v11 && !*(v12 + *(a1 + 456792) + 6410))
    {
      av1_init_level_info(a1);
    }

    av1_update_level_info(a1, *(a2 + 16), *(a2 + 32), *(a2 + 40));
    v37 = *(v10 + 882);
  }

  if (v37 == 1 || *(v8 + 384) == 1)
  {
    goto LABEL_110;
  }

  v38 = (v12 + 74188);
  v39 = *a1;
  v40 = *(a1 + 456792);
  v41 = *(*a1 + 4 * v40 + 1152);
  if (v41 <= 7)
  {
    v42 = qword_273BE1258[v41];
    v43 = *v11;
    if ((v43 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_62;
    }

LABEL_60:
    if ((v11[502] & 1) == 0 && v9[19] != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v42 = 7;
  v43 = *v11;
  if ((v43 & 0xFFFFFFFD) != 0)
  {
    goto LABEL_60;
  }

LABEL_62:
  *&v44 = -1;
  *(&v44 + 1) = -1;
  *v38 = v44;
  *(v12 + 74204) = v44;
  if (*(v11 + 120))
  {
    v45 = 239308;
  }

  else
  {
    v45 = 239320;
  }

  *(v38 + v42) = *(a1 + v45);
LABEL_66:
  v46 = (a1 + 48552);
  if (!*(v11 + 122))
  {
    if (!v43)
    {
LABEL_88:
      *(v38 + v42) = v43;
      goto LABEL_89;
    }

LABEL_71:
    v47 = *(v11 + 9);
    if (v47)
    {
      v43 = 0;
    }

    else if ((v47 & 2) != 0)
    {
      v43 = 1;
    }

    else if ((v47 & 4) != 0)
    {
      v43 = 2;
    }

    else if ((v47 & 8) != 0)
    {
      v43 = 3;
    }

    else if ((v47 & 0x10) != 0)
    {
      v43 = 4;
    }

    else if ((v47 & 0x20) != 0)
    {
      v43 = 5;
    }

    else if ((v47 & 0x40) != 0)
    {
      v43 = 6;
    }

    else
    {
      if ((v47 & 0x80) == 0)
      {
        goto LABEL_89;
      }

      v43 = 7;
    }

    goto LABEL_88;
  }

  if (v43 && (v11[502] & 1) != 0)
  {
    goto LABEL_71;
  }

LABEL_89:
  if (*(v11 + 120))
  {
    v48 = *(a1 + 97109);
    if (v48 && *v8 == *(v8 + 2) - 1)
    {
      *(a1 + 97109) = v48 - 1;
      a1[48555] = vadd_s32(a1[48555], 0xFFFFFFFF00000001);
      ++*(a1 + 97127);
    }

    goto LABEL_95;
  }

  if (*(v39 + 84960))
  {
    if (*(v39 + 84964))
    {
      goto LABEL_95;
    }
  }

  else if (v9[13] == 1 && (v9[12] & 1) == 0 && (v9[11] & 1) == 0 && (v9[10] & 1) == 0 && (v9[9] & 1) == 0 && v9[8] != 1)
  {
LABEL_95:
    if (*v46 >= 1)
    {
      --*v46;
    }
  }

  if (*(v10 + 882) || *(v39 + 23172) || *(v10 + 3552) != 1 || *(v10 + 688) || *v8 != *(v8 + 2) - 1)
  {
    v49 = v40 + 1;
  }

  else if ((v40 + 1) == 250)
  {
    v49 = 0;
  }

  else
  {
    v49 = v40 + 1;
  }

  *(a1 + 456792) = v49;
  if (*(v8 + 896) == 1 && !*(v11 + 122))
  {
    *(v39 + 332) = *v10;
    *(v39 + 336) = *(v10 + 1);
    *(v39 + 340) = v10[1];
  }

  v50 = v39 + 74112;
  *v50 = *(a1 + 39871);
  a3 = *(a1 + 39872);
  a4 = *(a1 + 39873);
  a5 = *(a1 + 39874);
  a6 = *(a1 + 637996);
  *(v50 + 60) = a6;
  *(v50 + 32) = a4;
  *(v50 + 48) = a5;
  *(v50 + 16) = a3;
LABEL_110:
  if (*(v12 + 84960) && (v8[120] & 1) == 0)
  {
    av1_svc_update_buffer_slot_refreshed(a1);
    av1_svc_set_reference_was_previous(a1);
  }

  if (*v13)
  {
    av1_save_layer_context(a1);
  }

  if (v14[75] && *(a2 + 16) && (*(v11 + 122) || *(v10 + 882) != 1 && *(v8 + 384) != 1 && *(v11 + 120)))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    aom_calc_psnr(v10[451], *(v11 + 29) + 1248, &v58, 0.0, a4.n128_f64[0], a5, a6);
    v71 = v61;
    v72 = v62;
    v70 = v60;
    a3.n128_u64[0] = v58.n128_u64[0];
    v68 = v58;
    v69 = v59;
    v51 = *(*a1 + 384);
    v52 = *v51;
    if (*v51 < v51[1])
    {
      v53 = v71;
      v54 = &v51[42 * v52];
      v55 = v70;
      *(v54 + 1) = v72;
      *(v54 + 2) = v55;
      a3 = v68;
      v56 = v69;
      *(v54 + 3) = v53;
      *(v54 + 4) = a3;
      *v51 = v52 + 1;
      *(v54 + 1) = 3;
      a3.n128_u64[0] = 0;
      *(v54 + 5) = v56;
      *(v54 + 6) = 0u;
      *(v54 + 7) = 0u;
      *(v54 + 8) = 0u;
      *(v54 + 9) = 0u;
      *(v54 + 10) = 0u;
    }
  }

  return a3.n128_f64[0];
}

uint64_t av1_get_compressed_data(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 239104);
  v5 = setjmp((*(a1 + 239104) + 212));
  v6 = *v4;
  if (v5)
  {
    v6[52] = 0;
    return *v6;
  }

  v8 = (a1 + 264352);
  v6[52] = 1;
  if (*(*a1 + 50968))
  {
    av1_one_pass_cbr_svc_start_layer(a1);
  }

  *(a1 + 638088) = 0;
  *(v4 + 109) = 0;
  *(a2 + 16) = 0;
  *(a1 + 637848) = *(a2 + 8);
  v9 = *(a1 + 133624);
  if (v9)
  {
    *(v4 + 445) = 1;
    v9[0x10000] = v9 + 65548;
    v9[65537] = v9 + 24577;
    v9[65538] = v9 + 327684;
    v9[65539] = v9 + 57344;
    v9[65540] = v9 + 65538;
  }

  *(v4 + 468) = ((*(a1 + 265392) | *(a1 + 264819)) & 1) == 0;
  v10 = v4[23];
  if (v10)
  {
    --*v10;
    v4[23] = 0;
  }

  v11 = *&(*v8)[1].__opaque[16];
  pthread_mutex_lock(*v8);
  v12 = *v8;
  v13 = (*v8)[1].__opaque[24];
  if (!(*v8)[1].__opaque[24])
  {
    goto LABEL_13;
  }

  v14 = v11;
  v15 = 0;
  while (*v14)
  {
    v14 += 5682;
    if (v13 == ++v15)
    {
      goto LABEL_13;
    }
  }

  v16 = v15;
  if (v15 == v13)
  {
LABEL_13:
    pthread_mutex_unlock(v12);
LABEL_14:
    aom_internal_error(*v4, 1, "Failed to allocate new cur_frame");
    goto LABEL_15;
  }

  v17 = &v11[5682 * v15];
  if (v17[328])
  {
    *(v17 + 161) = *(v17 + 165);
    *(v17 + 81) = *(v17 + 83);
    v17[328] = 0;
    v12 = *v8;
  }

  *v17 = 1;
  pthread_mutex_unlock(v12);
  if (v16 == -1)
  {
    goto LABEL_14;
  }

  v18 = *&(*v8)[1].__opaque[16] + 22728 * v16;
  v4[23] = v18;
  *(v18 + 1452) = 0u;
  if (!v4[23])
  {
    goto LABEL_14;
  }

LABEL_15:
  result = av1_encode_strategy(a1, (a2 + 16), *a2, *(a2 + 8), (a2 + 24), (a2 + 32), (a2 + 40), *(a2 + 56), (a2 + 64), *(a2 + 48));
  *(a1 + 388696) = 0;
  if (result)
  {
    if (result == -1)
    {
      (*v4)[52] = 0;
      return result;
    }

    aom_internal_error(*v4, 1, "Failed to encode frame");
  }

  (*v4)[52] = 0;
  return 0;
}

uint64_t av1_get_parallel_frame_enc_data(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 328);
  v5 = *(a1 + 352);
  if (v4 < 2)
  {
LABEL_5:
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 1;
    while (*(v5 + 456792) != *(*(a1 + 8 * v6) + 456792))
    {
      if (v4 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = *(v5 + 239288);
  if (v7)
  {
    --*v7;
    *(v5 + 239288) = 0;
  }

  *(a1 + 352) = *(a1 + 8 * v6);
  *(a1 + 8 * v6) = *a1;
  *a1 = *(a1 + 352);
  v8 = a1 + 72 * v6;
  v9 = v8 - 40;
  v10 = *(v8 - 24);
  if (v10 > *(a2 + 8))
  {
    aom_internal_error(a1 + 50984, 1, "first_cpi_data->cx_data buffer full");
    v10 = *(v9 + 16);
  }

  *(a2 + 24) = *(v9 + 24);
  *(a2 + 32) = *(v9 + 32);
  memcpy(*a2, *v9, v10);
  *(a2 + 16) = *(v9 + 16);
  result = *(a1 + 352);
  if (*(result + 239536))
  {
    *(a2 + 64) = 1;
  }

  return result;
}

uint64_t av1_init_parallel_frame_context(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v143 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 352);
  v7 = v6 + 48546;
  v8 = *(v6 + 456792);
  v9 = *(v6 + 59768);
  v133 = *(v6 + 97110);
  v134 = *(v6 + 114210);
  v131 = *(v6 + 97109);
  v129 = *(v6 + 97111);
  v10 = a2 + 650;
  v11 = *(a2 + 650 + v8);
  v132 = v6[79762];
  v12 = v6[29911];
  if (v12)
  {
    --*v12;
    v6[29911] = 0;
  }

  v13 = v6 + 33044;
  v123 = v6 + 33044;
  if (*(*v6 + v8 + 400))
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v14 = v6[29934];
    if (!v14)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *&v135 = -1;
      v24 = v6[29935];
      if (!v24)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (*v14 <= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v27 = v14[9];
      LODWORD(v135) = v14[17];
      DWORD1(v135) = v27;
      v24 = v6[29935];
      if (!v24)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v6[29935];
    if (v15 == v14)
    {
      *(&v135 + 1) = -1;
      v16 = v6[29936];
      if (v16 != v14)
      {
LABEL_8:
        v17 = 0;
        if (v6[29937] != v14)
        {
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = v6[29936];
      if (v16 != v14)
      {
        goto LABEL_8;
      }
    }

    *&v136 = -1;
    v17 = -1;
    if (v6[29937] != v14)
    {
LABEL_9:
      v18 = 0;
      if (v6[29938] != v14)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(&v136 + 1) = -1;
    v18 = -1;
    if (v6[29938] != v14)
    {
LABEL_10:
      v19 = 0;
      if (v6[29939] != v14)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }

LABEL_33:
    *&v137 = -1;
    v19 = -1;
    if (v6[29939] != v14)
    {
LABEL_11:
      v20 = 0;
      if (v6[29940] != v14)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(&v137 + 1) = -1;
    v20 = -1;
    if (v6[29940] != v14)
    {
LABEL_12:
      v21 = 0;
      if (v6[29941] != v14)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }

LABEL_35:
    *&v138 = -1;
    v21 = -1;
    if (v6[29941] != v14)
    {
LABEL_13:
      v22 = 0;
      v23 = v14[9];
      LODWORD(v135) = v14[17];
      DWORD1(v135) = v23;
      if (v15 != v14)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(&v138 + 1) = -1;
    v22 = -1;
    v28 = v14[9];
    LODWORD(v135) = v14[17];
    DWORD1(v135) = v28;
    if (v15 != v14)
    {
LABEL_14:
      v13 = v6 + 33044;
      v24 = v6[29935];
      if (!v24)
      {
LABEL_28:
        *(&v135 + 1) = -1;
        v16 = v6[29936];
        if (v17 == -1)
        {
LABEL_48:
          if (v18 == -1)
          {
            goto LABEL_58;
          }

          v30 = v6[29937];
          if (!v30)
          {
            v31 = -1;
            HIDWORD(v136) = -1;
            goto LABEL_57;
          }

          if (*v30 < 2)
          {
LABEL_55:
            HIDWORD(v136) = v30[9];
            v31 = v30[17];
LABEL_57:
            DWORD2(v136) = v31;
LABEL_58:
            if (v19 == -1)
            {
LABEL_67:
              if (v20 != -1)
              {
                v34 = v6[29939];
                if (v34)
                {
                  if (*v34 >= 2)
                  {
                    if (v6[29940] == v34)
                    {
                      *&v138 = -1;
                      v21 = -1;
                    }

                    if (v6[29941] == v34)
                    {
                      *(&v138 + 1) = -1;
                      v22 = -1;
                    }
                  }

                  HIDWORD(v137) = v34[9];
                  v35 = v34[17];
                }

                else
                {
                  v35 = -1;
                  HIDWORD(v137) = -1;
                }

                DWORD2(v137) = v35;
              }

              if (v21 != -1)
              {
                v36 = v6[29940];
                if (v36)
                {
                  if (*v36 >= 2 && v6[29941] == v36)
                  {
                    *(&v138 + 1) = -1;
                    v22 = -1;
                  }

                  DWORD1(v138) = v36[9];
                  v37 = v36[17];
                }

                else
                {
                  v37 = -1;
                  DWORD1(v138) = -1;
                }

                LODWORD(v138) = v37;
              }

              if (v22 != -1)
              {
                v38 = v6[29941];
                if (v38)
                {
                  v39 = *(v38 + 36);
                  DWORD2(v138) = *(v38 + 68);
                  HIDWORD(v138) = v39;
                }

                else
                {
                  *(&v138 + 1) = -1;
                }
              }

              goto LABEL_89;
            }

            v32 = v6[29938];
            if (!v32)
            {
              v33 = -1;
              DWORD1(v137) = -1;
              goto LABEL_66;
            }

            if (*v32 < 2)
            {
LABEL_64:
              DWORD1(v137) = v32[9];
              v33 = v32[17];
LABEL_66:
              LODWORD(v137) = v33;
              goto LABEL_67;
            }

            if (v6[29939] == v32)
            {
              *(&v137 + 1) = -1;
              v20 = -1;
              if (v6[29940] != v32)
              {
LABEL_63:
                if (v6[29941] != v32)
                {
                  goto LABEL_64;
                }

LABEL_122:
                *(&v138 + 1) = -1;
                v22 = -1;
                goto LABEL_64;
              }
            }

            else if (v6[29940] != v32)
            {
              goto LABEL_63;
            }

            *&v138 = -1;
            v21 = -1;
            if (v6[29941] != v32)
            {
              goto LABEL_64;
            }

            goto LABEL_122;
          }

          if (v6[29938] == v30)
          {
            *&v137 = -1;
            v19 = -1;
            if (v6[29939] != v30)
            {
LABEL_53:
              if (v6[29940] != v30)
              {
                goto LABEL_54;
              }

              goto LABEL_118;
            }
          }

          else if (v6[29939] != v30)
          {
            goto LABEL_53;
          }

          *(&v137 + 1) = -1;
          v20 = -1;
          if (v6[29940] != v30)
          {
LABEL_54:
            if (v6[29941] != v30)
            {
              goto LABEL_55;
            }

LABEL_119:
            *(&v138 + 1) = -1;
            v22 = -1;
            goto LABEL_55;
          }

LABEL_118:
          *&v138 = -1;
          v21 = -1;
          if (v6[29941] != v30)
          {
            goto LABEL_55;
          }

          goto LABEL_119;
        }

LABEL_38:
        if (!v16)
        {
          v29 = -1;
          DWORD1(v136) = -1;
          goto LABEL_47;
        }

        if (*v16 < 2)
        {
LABEL_45:
          DWORD1(v136) = v16[9];
          v29 = v16[17];
LABEL_47:
          LODWORD(v136) = v29;
          goto LABEL_48;
        }

        if (v6[29937] == v16)
        {
          *(&v136 + 1) = -1;
          v18 = -1;
          if (v6[29938] != v16)
          {
LABEL_42:
            if (v6[29939] != v16)
            {
              goto LABEL_43;
            }

            goto LABEL_113;
          }
        }

        else if (v6[29938] != v16)
        {
          goto LABEL_42;
        }

        *&v137 = -1;
        v19 = -1;
        if (v6[29939] != v16)
        {
LABEL_43:
          if (v6[29940] != v16)
          {
            goto LABEL_44;
          }

          goto LABEL_114;
        }

LABEL_113:
        *(&v137 + 1) = -1;
        v20 = -1;
        if (v6[29940] != v16)
        {
LABEL_44:
          if (v6[29941] != v16)
          {
            goto LABEL_45;
          }

LABEL_115:
          *(&v138 + 1) = -1;
          v22 = -1;
          goto LABEL_45;
        }

LABEL_114:
        *&v138 = -1;
        v21 = -1;
        if (v6[29941] != v16)
        {
          goto LABEL_45;
        }

        goto LABEL_115;
      }

LABEL_18:
      if (*v24 < 2)
      {
        goto LABEL_25;
      }

      if (v6[29936] == v24)
      {
        *&v136 = -1;
        v17 = -1;
        if (v6[29937] != v24)
        {
LABEL_21:
          if (v6[29938] != v24)
          {
            goto LABEL_22;
          }

          goto LABEL_107;
        }
      }

      else if (v6[29937] != v24)
      {
        goto LABEL_21;
      }

      *(&v136 + 1) = -1;
      v18 = -1;
      if (v6[29938] != v24)
      {
LABEL_22:
        if (v6[29939] != v24)
        {
          goto LABEL_23;
        }

        goto LABEL_108;
      }

LABEL_107:
      *&v137 = -1;
      v19 = -1;
      if (v6[29939] != v24)
      {
LABEL_23:
        if (v6[29940] != v24)
        {
          goto LABEL_24;
        }

        goto LABEL_109;
      }

LABEL_108:
      *(&v137 + 1) = -1;
      v20 = -1;
      if (v6[29940] != v24)
      {
LABEL_24:
        if (v6[29941] != v24)
        {
          goto LABEL_25;
        }

LABEL_110:
        *(&v138 + 1) = -1;
        v22 = -1;
LABEL_25:
        v26 = v24[9];
        DWORD2(v135) = v24[17];
        HIDWORD(v135) = v26;
        v16 = v6[29936];
        if (v17 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

LABEL_109:
      *&v138 = -1;
      v21 = -1;
      if (v6[29941] != v24)
      {
        goto LABEL_25;
      }

      goto LABEL_110;
    }

LABEL_37:
    v13 = v6 + 33044;
    if (v17 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  *&v25 = -1;
  *(&v25 + 1) = -1;
  v137 = v25;
  v138 = v25;
  v135 = v25;
  v136 = v25;
LABEL_89:
  v139 = v135;
  v140 = v136;
  v141 = v137;
  v142 = v138;
  v125 = a2 + 650;
  v126 = v6 + 48546;
  v124 = a2 + 400;
  if (*(a2 + 400 + v8) == 6)
  {
    if (DWORD1(v139) == -1)
    {
      refresh_idx = 0;
    }

    else if (HIDWORD(v139) == -1)
    {
      refresh_idx = 1;
    }

    else if (DWORD1(v140) == -1)
    {
      refresh_idx = 2;
    }

    else if (HIDWORD(v140) == -1)
    {
      refresh_idx = 3;
    }

    else if (DWORD1(v141) == -1)
    {
      refresh_idx = 4;
    }

    else if (HIDWORD(v141) == -1)
    {
      refresh_idx = 5;
    }

    else if (DWORD1(v142) == -1)
    {
      refresh_idx = 6;
    }

    else if (HIDWORD(v142) == -1)
    {
      refresh_idx = 7;
    }

    else
    {
      v40 = *v6;
      if (*(v13 + 314) || *(v40 + 23172) || *(v13 + 1280) != 1)
      {
        v41 = v9;
        v42 = 1;
      }

      else
      {
        v41 = v9;
        v42 = *(v13 + 120) != 0;
      }

      refresh_idx = get_refresh_idx(&v139, 0, v40 + 400, v8, v42, *(v40 + 4 * v8 + 7668));
      v10 = v125;
      v7 = v6 + 48546;
      v9 = v41;
    }

    *(v6 + 159503) = refresh_idx;
    *(v6 + 638016) = 1;
    v44 = v4 + 4 * v8;
    v45 = *(v44 + 7668);
    v46 = &v139 + 2 * refresh_idx;
    *v46 = *(v44 + 1152);
    v46[1] = v45;
  }

  v116 = v6 + 159503;
  *(v6 + 638024) = 0;
  if (!*(v10 + v8))
  {
    *v7 = *(v4 + 312);
  }

  v47 = v9;
  av1_get_ref_frames(&v135, v9 + v11, v6, v8, 1, v6 + 59824);
  v48 = v6 + 48546;
  v49 = v6 + 33383;
  v50 = 1u;
  v51 = v129;
  do
  {
    if ((v6[48589] & *(&av1_ref_frame_flag_list_0 + v50)) != 0)
    {
      v52 = *(v6 + (v50 - 1) + 59824);
      if (v52 == -1)
      {
        goto LABEL_135;
      }

      v53 = v6[v52 + 29934];
      if (!v53)
      {
        goto LABEL_135;
      }

      v49[v50 - 1] = v53;
      v54 = *(*v123 + 96);
      if (*(*v123 + 96))
      {
        v55 = 0;
        v56 = *(*v123 + 88);
        do
        {
          if (v56 == v53)
          {
            *a3 |= 1 << v55;
          }

          ++v55;
          v56 += 22728;
        }

        while (v54 != v55);
      }
    }

    else if (*(v6 + 66402) || *(*v6 + 23172))
    {
LABEL_135:
      v49[v50 - 1] = 0;
    }

    ++v50;
  }

  while (v50 != 8);
  v122 = (v6 + 29934);
  v57 = *(v4 + 6664);
  v58 = 1;
  v60 = v124;
  v59 = v125;
  if (v8 + 1 >= v57)
  {
    goto LABEL_233;
  }

  v61 = v47;
  v62 = v4 + 12668;
  v117 = v4 + 6160;
  v118 = v4 + 32;
  v113 = v4 + 6668;
  v63 = v8 + 1;
  v64 = DWORD1(v139) != -1;
  v65 = DWORD1(v139) == -1;
  if (HIDWORD(v139) == -1)
  {
    v65 = 1;
  }

  v66 = DWORD1(v140) == -1 || v65;
  if (DWORD1(v140) == -1)
  {
    v67 = 2;
  }

  else
  {
    v67 = 3;
  }

  if (HIDWORD(v140) == -1)
  {
    v66 = 1;
  }

  if (!v65)
  {
    v64 = v67;
  }

  if (DWORD1(v141) == -1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v66;
  }

  if (DWORD1(v141) == -1)
  {
    v69 = 4;
  }

  else
  {
    v69 = 5;
  }

  if (HIDWORD(v141) == -1)
  {
    v68 = 1;
  }

  if (!v66)
  {
    v64 = v69;
  }

  if (DWORD1(v142) == -1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v68;
  }

  v115 = v70 | (HIDWORD(v142) == -1);
  if (DWORD1(v142) == -1)
  {
    v71 = 6;
  }

  else
  {
    v71 = 7;
  }

  if (!v68)
  {
    v64 = v71;
  }

  v114 = v64;
  v120 = a1;
  v121 = v4;
  v119 = v4 + 12668;
  while (2)
  {
    if (*(v63 + v59 - 1))
    {
      if (*(v62 + 4 * v63) != 2)
      {
LABEL_183:
        if (v63 != v57 - 1)
        {
          goto LABEL_226;
        }

        goto LABEL_232;
      }
    }

    else
    {
      if (v51 <= 0)
      {
        v51 = v123[69];
      }

      ++v61;
      v72 = v133;
      ++v134;
      v73 = v131 - 1;
      if (v131)
      {
        v72 = v133 + 1;
      }

      else
      {
        v73 = 0;
      }

      v133 = v72;
      v51 -= v131 != 0;
      v132 += 232;
      v131 = v73;
      if (*(v62 + 4 * v63) != 2)
      {
        goto LABEL_183;
      }
    }

    v74 = *(v59 + v63);
    v75 = *(v4 + 8 * v58);
    *(v75 + 456792) = v63;
    *(v75 + 388704) = v48[42];
    *(v75 + 239072) = v61;
    *(v75 + 239056) = *(v117 + v63);
    *(v75 + 456840) = v134;
    *(v75 + 388436) = v131;
    *(v75 + 388440) = v133;
    *(v75 + 388444) = v51;
    *(v75 + 388596) = *(v48 + 57);
    *(v75 + 388524) = *(v48 + 39);
    *(v75 + 388516) = *(v48 + 148);
    *(v75 + 388420) = *(v48 + 13);
    *(v75 + 390032) = *(v48 + 416);
    if (*(v60 + v63) == 6)
    {
      *(v75 + 262100) = 1;
    }

    v76 = (v75 + 637512);
    *(v75 + 638024) = 0;
    if (!*(v59 + v63))
    {
      v77 = *(v113 + 4 * v63);
      v78 = *(v4 + 368);
      v79 = &v78[4 * *v76];
      v80 = __OFSUB__(v77, 1);
      v81 = v77 - 1;
      if (v81 < 0 != v80)
      {
        v84 = v79[3] + v81;
        if (v84 < 0)
        {
          v84 += *v78;
        }
      }

      else
      {
        v82 = v79[3] + v81;
        v83 = *v78;
        if (v82 < *v78)
        {
          v83 = 0;
        }

        v84 = v82 - v83;
      }

      *(v75 + 388368) = *(*(v78 + 5) + 224 * v84 + 192);
    }

    v85 = v118 + 72 * v58 - 72;
    *(v75 + 388384) = v48[2];
    v86 = *v122;
    v87 = v122[1];
    v88 = v122[3];
    *(v75 + 239504) = v122[2];
    *(v75 + 239520) = v88;
    *(v75 + 239472) = v86;
    *(v75 + 239488) = v87;
    *(v85 + 24) = 0;
    *(v85 + 56) = *(a1 + 56);
    *(v85 + 48) = *(a1 + 48);
    *(v85 + 16) = 0;
    v130 = v51;
    v127 = v58;
    if (*(v60 + v8) == 6)
    {
      *(v118 + 72 * v58 - 48) = *(a1 + 24);
      v89 = v114;
      if ((v115 & 1) == 0)
      {
        v90 = *v75;
        v112 = v74;
        if (*(v75 + 265608) || *(v90 + 23172) || *(v75 + 265632) != 1)
        {
          v91 = v61;
          v92 = 1;
        }

        else
        {
          v91 = v61;
          v92 = *(v75 + 264832) != 0;
        }

        v89 = get_refresh_idx(&v139, 0, v90 + 400, v63, v92, *(v90 + 4 * v63 + 7668));
        v61 = v91;
        v74 = v112;
        v76 = (v75 + 637512);
      }

      *(v76 + 125) = v89;
      v94 = *v116;
      v93 = 1;
    }

    else
    {
      v93 = 0;
      v94 = -1;
      *(v75 + 638012) = -1;
    }

    v76[504] = v93;
    *(v76 + 127) = v94;
    *(v76 + 73) = v132;
    v128 = v61;
    av1_get_ref_frames(&v135, v61 + v74, v75, v63, 1, (v75 + 239296));
    v95 = v75 + 267064;
    v96 = v75 + 264352;
    v97 = 1u;
    v59 = v125;
    v51 = v130;
    while (2)
    {
      if ((*(v75 + 388712) & *(&av1_ref_frame_flag_list_0 + v97)) == 0)
      {
        if (!*(v75 + 265608) && !*(*v75 + 23172))
        {
          goto LABEL_214;
        }

LABEL_213:
        *(v95 + 8 * v97 - 8) = 0;
        goto LABEL_214;
      }

      v98 = *(v75 + 239296 + 4 * (v97 - 1));
      if (v98 == -1)
      {
        goto LABEL_213;
      }

      v99 = *(v75 + 239472 + 8 * v98);
      if (!v99)
      {
        goto LABEL_213;
      }

      *(v95 + 8 * v97 - 8) = v99;
      v100 = *(*v96 + 96);
      if (*(*v96 + 96))
      {
        v101 = 0;
        v102 = *(*v96 + 88);
        do
        {
          if (v102 == v99)
          {
            *a3 |= 1 << v101;
          }

          ++v101;
          v102 += 22728;
        }

        while (v100 != v101);
      }

LABEL_214:
      if (++v97 != 8)
      {
        continue;
      }

      break;
    }

    v58 = (v127 + 1);
    a1 = v120;
    v4 = v121;
    v57 = *(v121 + 6664);
    v48 = v126;
    v61 = v128;
    v60 = v124;
    v62 = v119;
    if (v63 == v57 - 1)
    {
LABEL_232:
      *(*(v4 + 8 * v58 - 8) + 638024) = 1;
      break;
    }

LABEL_226:
    ++v63;
    v103 = *(v62 + 4 * v63);
    if (v103)
    {
      if (v103 != 1)
      {
        goto LABEL_180;
      }

      goto LABEL_232;
    }

    v104 = *(v60 + v63);
    if (v104 == 3 || v104 == 6)
    {
      goto LABEL_232;
    }

LABEL_180:
    if (v63 < v57)
    {
      continue;
    }

    break;
  }

LABEL_233:
  v106 = *v123;
  v107 = *(*v123 + 96);
  if (*(*v123 + 96))
  {
    v108 = 0;
    v109 = 0;
    v110 = *a3;
    do
    {
      if ((v110 >> v109))
      {
        ++*(*(v106 + 88) + v108);
      }

      ++v109;
      v108 += 22728;
    }

    while (v107 != v109);
  }

  return v58;
}

uint64_t av1_copy_new_frame_enc(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(*(a1 + 24680) + 77))
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (*(a2 + 8) == a3[2] && *a2 == *a3 && *(a2 + 12) == a3[3] && *(a2 + 4) == a3[1] && *(a2 + 32) == a3[8] && *(a2 + 36) == a3[9] && *(a2 + 112) == a3[28] && ((a3[44] ^ *(a2 + 176)) & 8) == 0)
  {
    aom_yv12_copy_frame_c(a2, a3, v4);
    return **(a1 + 48);
  }

  else
  {
    aom_internal_error(*(a1 + 48), 1, "Incorrect buffer dimensions");
    return **(a1 + 48);
  }
}

uint64_t av1_set_internal_size(uint64_t a1, int *a2, unsigned int a3, unsigned int a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a3 <= 8 && a4 <= 8)
  {
    v5 = (dword_273BE12BC[a4] + *(a1 + 28) * dword_273BE1298[a4] - 1) / dword_273BE12BC[a4];
    *a2 = (dword_273BE12BC[a3] + *(a1 + 24) * dword_273BE1298[a3] - 1) / dword_273BE12BC[a3];
    a2[1] = v5;
    v4 = a4 | a3;
    if (v4)
    {
      v4 = 0;
      *(a1 + 232) = 1;
      *(a1 + 65) = 0;
    }
  }

  return v4;
}

uint64_t av1_convert_sect5obus_to_annexb(_BYTE *a1, uint64_t a2, size_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    v6 = 0;
    v28 = a2 + 1;
    while (1)
    {
      v7 = (*a1 & 4) != 0 ? 2 : 1;
      __memcpy_chk();
      v8 = v4 - v7 >= 8 ? 8 : v4 - v7;
      __src[0] &= ~2u;
      if (v4 == v7)
      {
        return 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = &a1[v7];
      while (1)
      {
        v10 |= (v12[v11] & 0x7F) << v9;
        if ((v12[v11] & 0x80) == 0)
        {
          break;
        }

        ++v11;
        v9 += 7;
        if (v8 == v11)
        {
          return 1;
        }
      }

      if (HIDWORD(v10))
      {
        return 1;
      }

      v13 = 0;
      v14 = v10 + v7;
      v15 = v10 + v7;
      do
      {
        v16 = v13++;
        v17 = v15 > 0x7F;
        v15 >>= 7;
      }

      while (v17);
      if (v13 + v7 > v28 + v7 - v6 - v4 + v11)
      {
        return 1;
      }

      memmove(&a1[v13 + v7], &v12[v11 + 1], ~v7 + v4 - v11);
      v18 = -1;
      v19 = 1;
      v20 = v10 + v7;
      do
      {
        v21 = v19;
        ++v18;
        ++v19;
        v17 = v20 > 0x7F;
        v20 >>= 7;
      }

      while (v17);
      if (HIDWORD(v14))
      {
        return 1;
      }

      if (v18 > 7)
      {
        return 1;
      }

      if (v18 > v16)
      {
        return 1;
      }

      v22 = a1;
      v23 = v10 + v7;
      do
      {
        v24 = v23 > 0x7F;
        v25 = v23 & 0x7F;
        v23 >>= 7;
        *v22++ = v25 | (v24 << 7);
        --v21;
      }

      while (v21);
      if (v16 != v18)
      {
        return 1;
      }

      memcpy(&a1[v13], __src, v7);
      v26 = ~v7 + v4 - v10;
      a1 += v13 + v14;
      v6 += v13 + v14;
      v4 = v26 - v11;
      if (v26 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_30:
    result = 0;
    *a3 = v6;
  }

  return result;
}

_DWORD *av1_apply_encoding_flags(_DWORD *result, unsigned int a2)
{
  result[66784] = 127;
  if ((*&a2 & 0x7F0000) != 0)
  {
    if ((*&a2 & 0x10000) != 0)
    {
      v2 = 126;
    }

    else
    {
      v2 = 127;
    }

    if ((*&a2 & 0x20000) != 0)
    {
      v2 &= 0x7Du;
    }

    if ((*&a2 & 0x40000) != 0)
    {
      v2 &= 0x7Bu;
    }

    if ((*&a2 & 0x80000) != 0)
    {
      v2 &= 0x77u;
    }

    v3 = (a2 >> 17) & 0x30;
    if ((*&a2 & 0x100000) != 0)
    {
      v3 = 112;
    }
  }

  else
  {
    if (!*(*result + 84960))
    {
      goto LABEL_20;
    }

    v4 = vandq_s8(vceqzq_s32(*(*result + 84876)), xmmword_273BE11A0);
    *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
    v3 = v4.i32[0] | v4.i32[1] | (32 * (*(*result + 84892) == 0));
    if (!*(*result + 84872))
    {
      ++v3;
    }

    if (*(*result + 84896))
    {
      v2 = 127;
    }

    else
    {
      v2 = 63;
    }
  }

  result[66784] = v2 ^ v3;
LABEL_20:
  if ((a2 & 0x3800000) != 0)
  {
    if ((*&a2 & 0x800000) != 0)
    {
      v5 = 126;
    }

    else
    {
      v5 = 127;
    }

    if ((a2 & 0x1000000) != 0)
    {
      v5 &= 0x77u;
    }

    if ((a2 & 0x2000000) != 0)
    {
      v5 &= 0xFu;
    }

    *(result + 267140) = v5 & 1;
    *(result + 267141) = (v5 & 8) != 0;
    *(result + 267144) = v5 >> 6;
    *(result + 267142) = (v5 & 0x10) != 0;
    *(result + 267143) = (v5 & 0x20) != 0;
    *(result + 267145) = 1;
  }

  else
  {
    v6 = (*result + 81920);
    if (*(*result + 84960))
    {
      *(result + 267145) = 1;
      v7.i32[0] = v6[v6[745] + 752];
      v7.i32[1] = v6[v6[748] + 752];
      v7.i32[2] = v6[v6[749] + 752];
      v7.i32[3] = v6[v6[750] + 752];
      *v7.i8 = vand_s8(vmovn_s32(vtstq_s32(v7, v7)), 0x1000100010001);
      result[66785] = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      *(result + 267144) = v6[v6[751] + 752] != 0;
      v6[761] = 1;
      if (v6[752] == 1 || v6[753] == 1 || v6[754] == 1 || v6[755] == 1 || v6[756] == 1 || v6[757] == 1 || v6[758] == 1 || v6[759] == 1)
      {
        v6[761] = 0;
      }
    }

    else
    {
      *(result + 267145) = 0;
    }
  }

  v8 = *(result + 264825);
  if ((a2 & 0x8000000) != 0)
  {
    v8 = 0;
  }

  *(result + 267148) = v8;
  *(result + 267149) = *(result + 264818) | ((a2 & 0x10000000) != 0);
  *(result + 267150) = *(result + 264633) | ((a2 & 0x20000000) != 0);
  *(result + 267151) = (a2 & 0x40000000) != 0;
  if ((a2 & 0x4000000) != 0)
  {
    *(result + 133573) = 256;
  }

  return result;
}

int *av1_get_global_headers(int *result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    memset(v13, 0, sizeof(v13));
    v1 = av1_write_sequence_header_obu(result + 12256, v13);
    if (!v1)
    {
      return 0;
    }

    v2 = v1;
    v3 = 1;
    v4 = v1;
    do
    {
      ++v3;
      v9 = v4 > 0x7F;
      v4 >>= 7;
    }

    while (v9);
    v5 = v1 + v3;
    if (v5 > 0x200)
    {
      return 0;
    }

    v6 = v3 - 2;
    memmove(v13 + v3, v13, v1);
    v7 = 0;
    LOBYTE(v13[0]) = 10;
    v8 = v2;
    do
    {
      ++v7;
      v9 = v8 > 0x7F;
      v8 >>= 7;
    }

    while (v9);
    v9 = (v7 - 1) > 7 || v7 - 1 > v6;
    if (v9)
    {
      return 0;
    }

    v10 = 0;
    do
    {
      *(v13 + ++v10) = v2 & 0x7F | ((v2 > 0x7F) << 7);
      v2 >>= 7;
    }

    while (v7 != v10);
    result = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
    if (result)
    {
      v11 = result;
      v12 = malloc_type_malloc(v5, 0x3EAA4B14uLL);
      *v11 = v12;
      if (v12)
      {
        memcpy(v12, v13, v5);
        result = v11;
        *(v11 + 1) = v5;
        return result;
      }

      free(v11);
      return 0;
    }
  }

  return result;
}

uint64_t release_scaled_references_0(uint64_t result)
{
  v1 = *(result + 267128);
  v2 = *(result + 267064);
  if (v2)
  {
    --*v2;
    *(result + 267064) = 0;
  }

  v3 = *(result + 267072);
  if (v3)
  {
    --*v3;
    *(result + 267072) = 0;
  }

  v4 = *(result + 267080);
  if (v4)
  {
    --*v4;
    *(result + 267080) = 0;
  }

  v5 = *(result + 267088);
  if (*(result + 265608) || *(*result + 23172) || *(result + 265632) != 1 || *(result + 264832) || (!*(*result + 50968) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = 1;
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = *(result + 239472 + 8 * *(result + 239308));
    v12 = v5[316] == *(v11 + 1264) && v5[318] == *(v11 + 1272);
    v7 = v1 | v12;
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (v7)
  {
    --*v5;
    *(result + 267088) = 0;
  }

LABEL_19:
  v8 = *(result + 267096);
  if (v8)
  {
    --*v8;
    *(result + 267096) = 0;
  }

  v9 = *(result + 267104);
  if (v9)
  {
    --*v9;
    *(result + 267104) = 0;
  }

  v10 = *(result + 267112);
  if (v10)
  {
    --*v10;
    *(result + 267112) = 0;
  }

  return result;
}

uint64_t encode_with_recode_loop_and_filter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v8 = a1 + 636744;
  v178 = a1 + 627672;
  *(a1 + 627672) = 0;
  v9 = a1 + 456752;
  *(a1 + 627500) = 0u;
  *(a1 + 627516) = 0u;
  *(a1 + 627532) = 0u;
  *(a1 + 627548) = 0u;
  *(a1 + 627564) = 0u;
  *(a1 + 627580) = 0u;
  v10 = a1 + 387196;
  v11 = a1 + 262176;
  *(a1 + 627596) = 0u;
  *(a1 + 627612) = 0u;
  v12 = a1 + 238784;
  *(a1 + 627628) = 0u;
  *(a1 + 627644) = 0u;
  v13 = *(a1 + 456868);
  if (v13 && (v14 = *(a1 + 456872)) != 0)
  {
    v15 = *(a1 + 239112) != v13 || *(a1 + 239116) != v14;
    v173 = v15;
  }

  else
  {
    v173 = 0;
  }

  v183 = 0;
  v182 = 0;
  v179 = *(a1 + 265704);
  if (*(*a1 + 50968))
  {
    v16 = *(a1 + 637128);
    v180 = *(a1 + 4 * v16 + 637472);
    v177 = *(a1 + v16 + 637468);
    if (!*(a1 + 388564))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v180 = 0;
    v177 = 1;
    if (!*(a1 + 388564))
    {
      goto LABEL_19;
    }
  }

  if (!*(a1 + 265608) && !*(*a1 + 23172) && *(a1 + 265632) == 1 && !*(a1 + 264832) && *(a1 + 264716) == 1 && *(a1 + 264692) >= 1 && !*(a1 + 388640) && (*(a1 + 239056) & 0xFD) != 0 && !*(a1 + 637128))
  {
    av1_save_all_coding_context(a1);
  }

LABEL_19:
  *(a1 + 263480) = default_warp_params_1;
  *(a1 + 263496) = *algn_273BE1244;
  *(a1 + 263512) = 0;
  *(a1 + 263548) = 0;
  *(a1 + 263516) = default_warp_params_1;
  *(a1 + 263532) = *algn_273BE1244;
  *(a1 + 263584) = 0;
  v17 = (a1 + 86032);
  *(a1 + 263552) = default_warp_params_1;
  *(a1 + 263568) = *algn_273BE1244;
  *(a1 + 263620) = 0;
  *(a1 + 263588) = default_warp_params_1;
  *(a1 + 263604) = *algn_273BE1244;
  *(a1 + 263624) = default_warp_params_1;
  *(a1 + 263640) = *algn_273BE1244;
  *(a1 + 263656) = 0;
  *(a1 + 263692) = 0;
  *(a1 + 263660) = default_warp_params_1;
  *(a1 + 263676) = *algn_273BE1244;
  *(a1 + 263728) = 0;
  *(a1 + 263696) = default_warp_params_1;
  *(a1 + 263712) = *algn_273BE1244;
  *(v10 + 892) = 0;
  av1_set_speed_features_framesize_independent(a1, *(v10 + 1520));
  v18 = av1_set_rd_speed_thresholds(a1);
  *(v12 + 777) = 4;
  *(v12 + 775) = *(v11 + 3318) | *(v12 + 769);
  av1_setup_frame_size(a1, v18, v19);
  v20 = 0;
  v21 = *(v12 + 780);
  if (v21 != 7 && (v21 & 0xF8) == 0)
  {
    v22 = *(a1 + 4 * (v21 & 7) + 239296);
    if (v22 == -1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 8 * v22 + 239472);
    }
  }

  v23 = (a1 + 258048);
  *(v12 + 496) = v20;
  av1_set_size_dependent_vars(a1, &v182);
  v24 = *(v12 + 328);
  if (v24 <= *(v12 + 332))
  {
    v24 = *(v12 + 332);
  }

  if (v24 <= 16)
  {
    v25 = 16;
  }

  else
  {
    v25 = v24;
  }

  v26 = -1;
  do
  {
    ++v26;
  }

  while (v25 << v26 < 1023);
  if (v26 >= 9)
  {
    v26 = 9;
  }

  *(v10 + 2840) = v26;
  v27 = *(v10 + 1820);
  if (v27)
  {
    if ((*(a1 + 239056) & 0xFD) == 0)
    {
LABEL_51:
      *(v10 + 2836) = v24;
      goto LABEL_52;
    }

    if ((*(v12 + 752) || *(*a1 + *(v9 + 40) + 400) == 6) && v27 >= 2)
    {
      v28 = *(v10 + 2836);
      if (v28 != -1)
      {
        v29 = 2 * v28;
        if (v24 >= v29)
        {
          v24 = v29;
        }

        if (v24 <= 16)
        {
          v30 = 16;
        }

        else
        {
          v30 = v24;
        }

        v31 = -1;
        do
        {
          ++v31;
        }

        while (v30 << v31 < 1023);
        if (v31 >= 9)
        {
          v31 = 9;
        }

        *(v10 + 2840) = v31;
      }
    }

    if (*(v8 + 1280) == 1)
    {
      v24 = -1;
      goto LABEL_51;
    }
  }

LABEL_52:
  if (!*(v12 + 288) && (*(*a1 + 50968) || *(v11 + 2516) >= 1) && !*(v8 + 388))
  {
    LOBYTE(v169) = 0;
    if (aom_alloc_frame_buffer(a1 + 637256, *(v11 + 2376), *(v11 + 2380), *(*(v11 + 1560) + 96), *(*(v11 + 1560) + 100), *(*(v11 + 1560) + 76), *(v11 + 3384), *(v12 + 784), v169, 0))
    {
      aom_internal_error(*(v12 + 320), 2, "Failed to allocate buffer for source_last_TL0");
    }
  }

  if (*(*a1 + 50968))
  {
    v181 = v8;
    if ((*(a1 + 239056) & 0xFD) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

  v32 = *(v12 + 328);
  v33 = *(v179 + 16);
  if (v33 == 2 * v32 && (v34 = *(v12 + 332), *(v179 + 24) == 2 * v34))
  {
    if (v34 * v32 < 57601)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }
  }

  else
  {
    v36 = 4 * v32;
    if (v36 == v33 && *(v179 + 24) == 4 * *(v12 + 332))
    {
      v35 = 1;
    }

    else
    {
      if (v36 != 3 * v33)
      {
        goto LABEL_73;
      }

      v35 = v177;
      if (3 * *(v179 + 24) == 4 * *(v12 + 332))
      {
        v35 = 0;
      }
    }
  }

  v177 = v35;
LABEL_73:
  v180 = 8;
  v181 = v8;
  if ((*(a1 + 239056) & 0xFD) != 0)
  {
    goto LABEL_83;
  }

LABEL_74:
  if (!*(v10 + 2516) && !*(v10 + 1660) && (*(v10 + 2228) || *(v10 + 2232)))
  {
    v37 = *v12;
    if (!*v12)
    {
      v37 = aom_malloc(2uLL >> *(*(v11 + 1560) + 77) << 16);
      if (!v37)
      {
        aom_internal_error(*(v12 + 320), 2, "Failed to allocate pixel_gradient_info");
      }

      *v12 = v37;
    }

    *(a1 + 208200) = v37;
  }

LABEL_83:
  if (*(v11 + 3456) == 2 && (!*(v10 + 1660) || *(v11 + 3392) * -0.25 + 1.0 > 0.0 && (!*(v10 + 2516) || *(v10 + 2564))))
  {
    v38 = *(v12 + 8);
    if (!v38)
    {
      v39 = *(*(v11 + 1560) + 28);
      v40 = malloc_type_malloc(16 * mi_size_wide_13[v39] * mi_size_high_11[v39] + 23, 0x5F484EBFuLL);
      if (!v40 || (v38 = (v40 + 23) & 0xFFFFFFFFFFFFFFF0, *(v38 - 8) = v40, !v38))
      {
        aom_internal_error(*(v12 + 320), 2, "Failed to allocate source_variance_info");
        v38 = 0;
      }

      *(v12 + 8) = v38;
    }

    *(a1 + 232712) = v38;
  }

  v176 = a2;
  if (*(v10 + 1660) == 2)
  {
    v41 = *(*(v11 + 1560) + 28);
    if (v41 == 12)
    {
      v42 = 1;
    }

    else
    {
      v42 = 4;
    }

    v43 = *(a1 + 234488);
    if (!v43)
    {
LABEL_101:
      if (v41 == 12)
      {
        v44 = 43687;
      }

      else
      {
        v44 = 174679;
      }

      v45 = malloc_type_malloc(v44, 0x5F484EBFuLL);
      if (v45)
      {
        v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v46 - 8) = v45;
        *(a1 + 234488) = v46;
        if (v46)
        {
LABEL_109:
          *(a1 + 234496) = v42;
          goto LABEL_110;
        }
      }

      else
      {
        *(a1 + 234488) = 0;
      }

      aom_internal_error(*(v12 + 320), 2, "Failed to allocate cpi->td.vt64x64");
      goto LABEL_109;
    }

    if (v42 != *(a1 + 234496))
    {
      free(*(v43 - 8));
      *(a1 + 234488) = 0;
      goto LABEL_101;
    }
  }

LABEL_110:
  if (!*(a1 + 239056) || *(v10 + 2148) && *(a1 + 267128) == 1)
  {
    v47 = *a1;
    if (*(v10 + 2336))
    {
      memcpy(v47 + 74988, &default_tx_type_probs, 0x2140uLL);
    }

    if ((*(v10 + 2060) - 0x7FFFFFFF) >= 0x80000002)
    {
      memcpy(v47 + 74344, &default_obmc_probs, 0x268uLL);
    }

    if (*(v10 + 2064) >= 1)
    {
      v47[4685] = default_warped_probs;
      *(v47 + 74972) = *(&default_warped_probs + 12);
    }

    if (*(v10 + 2176) == 2)
    {
      memcpy(v47 + 83500, &default_switchable_interp_probs, 0x540uLL);
    }
  }

  *(v11 + 3512) = av1_realloc_and_scale_if_required(a1 + 239056, v179, a1 + 265712, v177, v180, 1, 0, *(v11 + 3384), *(v181 + 1512));
  if ((*(a1 + 239056) & 0xFD) == 0 || v173)
  {
    v53 = (*(v12 + 808) * *(v12 + 804)) >> 2;
    v54 = *(v181 + 1080);
    if (!v54 || *(v181 + 1088) >= v53)
    {
      goto LABEL_131;
    }

    free(*(v54 - 1));
    *(v181 + 1088) = 0;
    if (v53 < 0 || (v55 = malloc_type_malloc((v53 + 23), 0x5F484EBFuLL)) == 0)
    {
      *(v181 + 1080) = 0;
    }

    else
    {
      v56 = v55;
      v54 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v54 - 1) = v56;
      *(v181 + 1080) = v54;
      if (v54)
      {
LABEL_130:
        *(v181 + 1088) = v53;
LABEL_131:
        bzero(v54, v53);
        goto LABEL_132;
      }
    }

    aom_internal_error(*(v12 + 320), 2, "Failed to allocate cpi->consec_zero_mv");
    v54 = *(v181 + 1080);
    goto LABEL_130;
  }

LABEL_132:
  if (*(v181 + 1520))
  {
    *(v11 + 3520) = a1 + 265912;
    *(v181 + 1520) = 0;
  }

  else
  {
    v57 = *(v11 + 3728);
    if (v57)
    {
      *(v11 + 3520) = av1_realloc_and_scale_if_required(a1 + 239056, v57, a1 + 265912, v177, v180, 1, 0, *(v11 + 3384), *(v181 + 1512));
    }
  }

  if (*(v10 + 2596))
  {
    av1_update_noise_estimate(a1, v48, v49, v50, v51, v52);
  }

  if (*(v11 + 3376) >= 1 && *(*a1 + 50968) && !*(v181 + 1064))
  {
    *(v181 + 1052) = 1;
    if (*(v181 + 392) != 1)
    {
      goto LABEL_156;
    }
  }

  else if (*(v181 + 392) != 1)
  {
    goto LABEL_156;
  }

  v58 = *(v10 + 1516);
  if ((*(v11 + 2604) & 1) == 0 && (v58 & 8) != 0)
  {
    v59 = *(v12 + 524);
    if (v59 == -1 || (v60 = *(a1 + 8 * v59 + 239472)) == 0 || *(v60 + 1264) != *(v12 + 328) || *(v60 + 1272) != *(v12 + 332))
    {
      v58 &= ~8u;
      *(v10 + 1516) = v58;
    }
  }

  if ((v58 & 0x40) != 0)
  {
    v61 = *(v12 + 536);
    if (v61 == -1 || (v62 = *(a1 + 8 * v61 + 239472)) == 0 || *(v62 + 1264) != *(v12 + 328) || *(v62 + 1272) != *(v12 + 332))
    {
      *(v10 + 1516) = v58 & 0xFFFFFFBF;
    }
  }

LABEL_156:
  if (!*(*a1 + 4 * *(v9 + 40) + 12668) && (*(a1 + 239056) & 0xFD) != 0)
  {
    av1_scale_references(a1, v177, v180, 1);
  }

  av1_set_quantizer((a1 + 239056), *(v11 + 2564), *(v11 + 2568), v182, *(v11 + 2579), *(v11 + 2580), *(v11 + 3456) == 2);
  av1_set_speed_features_qindex_dependent(a1, *(v11 + 3392));
  v63 = (v12 + 892);
  v64 = *(v12 + 892);
  if (v17->i32[0] == v64)
  {
    v65 = *(v12 + 896);
    if (*(a1 + 86036) == v65)
    {
      if (*(a1 + 86044) == *(v12 + 900) && *(a1 + 86040) == *(v12 + 904))
      {
        v65 = *(a1 + 86036);
        if (*(a1 + 86048) == *(v12 + 908))
        {
          if (*(v10 + 1660) == 2)
          {
            goto LABEL_165;
          }

LABEL_170:
          av1_setup_frame(a1);
          if (*(v10 + 2576) != 1)
          {
            goto LABEL_188;
          }

          goto LABEL_171;
        }
      }

      else
      {
        v65 = *(a1 + 86036);
      }
    }
  }

  else
  {
    v65 = *(v12 + 896);
  }

  av1_build_quantizer(*(*(v11 + 1560) + 72), v64, v65, *(v12 + 904), *(v12 + 900), *(v12 + 908), a1 + 16, a1 + 73744);
  v70 = vrev64q_s32(*v63);
  v70.i64[0] = v63->i64[0];
  *v17 = v70;
  *(a1 + 86048) = *(v12 + 908);
  if (*(v10 + 1660) != 2)
  {
    goto LABEL_170;
  }

LABEL_165:
  v66 = v182;
  set_vbp_thresholds_0(a1, (a1 + 522448), 0, v182, 0, 0, 0, 0, 0);
  *(a1 + 522488) = (v66 >> 3) + 15;
  av1_setup_frame(a1);
  if (*(v10 + 2576) != 1)
  {
    goto LABEL_188;
  }

LABEL_171:
  if (!*(v10 + 1260) || !av1_encodedframe_overshoot_cbr(a1, &v182, *v67.i64, *v68.i64, v69))
  {
    goto LABEL_188;
  }

  av1_set_quantizer((a1 + 239056), *(v11 + 2564), *(v11 + 2568), v182, *(v11 + 2579), *(v11 + 2580), *(v11 + 3456) == 2);
  av1_set_speed_features_qindex_dependent(a1, *(v11 + 3392));
  if (v17->i32[0] == v63->i32[0])
  {
    v71 = *(v12 + 896);
    if (*(a1 + 86036) == v71)
    {
      if (*(a1 + 86044) == *(v12 + 900) && *(a1 + 86040) == *(v12 + 904))
      {
        v71 = *(a1 + 86036);
        if (*(a1 + 86048) == *(v12 + 908))
        {
          if (*(v10 + 1660) == 2)
          {
            goto LABEL_179;
          }

LABEL_184:
          if ((*(a1 + 239056) & 0xFD) == 0)
          {
LABEL_187:
            av1_setup_frame(a1);
            goto LABEL_188;
          }

          goto LABEL_185;
        }
      }

      else
      {
        v71 = *(a1 + 86036);
      }
    }
  }

  else
  {
    v71 = *(v12 + 896);
  }

  av1_build_quantizer(*(*(v11 + 1560) + 72), v63->i32[0], v71, *(v12 + 904), *(v12 + 900), *(v12 + 908), a1 + 16, a1 + 73744);
  v67 = *v63;
  v68 = vrev64q_s32(*v63);
  v68.i64[0] = v63->i64[0];
  *v17 = v68;
  *(a1 + 86048) = *(v12 + 908);
  if (*(v10 + 1660) != 2)
  {
    goto LABEL_184;
  }

LABEL_179:
  v72 = v182;
  set_vbp_thresholds_0(a1, (a1 + 522448), 0, v182, 0, 0, 0, 0, 0);
  *(a1 + 522488) = (v72 >> 3) + 15;
  if ((*(a1 + 239056) & 0xFD) == 0)
  {
    goto LABEL_187;
  }

LABEL_185:
  if ((*(v12 + 774) & 1) != 0 || *(v12 + 780) == 7)
  {
    goto LABEL_187;
  }

LABEL_188:
  if ((*(a1 + 239056) & 0xFD) == 0 || !*(v10 + 1416))
  {
    v73 = (v9 + 28);
    v67.i64[0] = 0x100000000;
    *(v9 + 24) = 0x100000000;
LABEL_194:
    *(a1 + 258208) &= 0xFFFFFFA1;
    if (*v23)
    {
      *(a1 + 258049) = 257;
    }

    goto LABEL_196;
  }

  v73 = (v9 + 28);
  if (!*(v9 + 28))
  {
    goto LABEL_197;
  }

  if (!*(v9 + 24))
  {
    goto LABEL_194;
  }

  memcpy(*v9, *(v9 + 32), *(v12 + 808) * *(v12 + 804));
  *v23 = 65793;
  *(a1 + 258208) |= 0x5Eu;
  v67.i64[0] = 0x3E003E003E003ELL;
  *(a1 + 258166) = 0x3E003E003E003ELL;
LABEL_196:
  *v73 = 0;
LABEL_197:
  if (*(v11 + 2576) == 3)
  {
    av1_cyclic_refresh_setup(a1, *v67.i64, *v68.i8, v69);
  }

  if (*v23)
  {
    if (*(a1 + 258050) || (v74 = *(v12 + 496)) == 0)
    {
      av1_calculate_segdata(a1 + 258048);
    }

    else
    {
      segfeatures_copy(a1 + 258048, v74 + 88);
      *v23 = *(*(v12 + 496) + 88);
    }
  }

  else
  {
    *(a1 + 258204) = 0u;
    *(a1 + 258176) = 0u;
    *(a1 + 258192) = 0u;
    *(a1 + 258144) = 0u;
    *(a1 + 258160) = 0u;
    *(a1 + 258112) = 0u;
    *(a1 + 258128) = 0u;
    *(a1 + 258080) = 0u;
    *(a1 + 258096) = 0u;
    *v23 = 0u;
    *(a1 + 258064) = 0u;
  }

  segfeatures_copy(*(v12 + 504) + 88, a1 + 258048);
  *(*(v12 + 504) + 88) = *v23;
  if (*(*a1 + 23472) && *(v11 + 3432) != 1 && *(v181 + 768) != 1 && *(v12 + 752) && (*(v181 + 1344) & 1) == 0 && *(v10 + 2748))
  {
    if (*(v11 + 4040))
    {
      v136 = *(v11 + 2376);
      if (*(v10 + 1488) == v136)
      {
        v136 = *(v10 + 1488);
        if (*(v10 + 1492) == *(v11 + 2380))
        {
LABEL_407:
          v155 = *(v11 + 3512);
          v156 = *(v155 + 24);
          if (v156 >= 1)
          {
            v157 = *(v11 + 3976);
            v158 = *(v155 + 40);
            v159 = *(v155 + 16);
            do
            {
              memcpy(v157, v158, v159);
              v158 += *(v155 + 32);
              v157 += *(v11 + 3968);
              --v156;
            }

            while (v156);
            v155 = *(v11 + 3512);
          }

          v160 = *(v155 + 28);
          if (v160 >= 1)
          {
            v161 = *(v11 + 3984);
            v162 = *(v155 + 48);
            v163 = *(v155 + 20);
            do
            {
              memcpy(v161, v162, v163);
              v162 += *(v155 + 36);
              v161 += *(v11 + 3972);
              --v160;
            }

            while (v160);
            v164 = *(v11 + 3512);
            v165 = *(v164 + 28);
            if (v165 >= 1)
            {
              v166 = *(v11 + 3992);
              v167 = *(v164 + 56);
              v168 = *(v164 + 20);
              do
              {
                memcpy(v166, v167, v168);
                v167 += *(v164 + 36);
                v166 += *(v11 + 3972);
                --v165;
              }

              while (v165);
            }
          }

          goto LABEL_210;
        }
      }
    }

    else
    {
      v136 = *(v11 + 2376);
    }

    LOBYTE(v170) = 0;
    if (aom_alloc_frame_buffer(a1 + 266112, v136, *(v11 + 2380), *(*(v11 + 1560) + 96), *(*(v11 + 1560) + 100), *(*(v11 + 1560) + 76), *(v11 + 3384), *(v12 + 784), v170, 0))
    {
      aom_internal_error(*(v12 + 320), 2, "Failed to allocate scaled buffer");
    }

    goto LABEL_407;
  }

LABEL_210:
  if ((*(a1 + 239056) & 0xFD) != 0)
  {
    v82 = *(a1 + 133624);
    if (v82)
    {
      v83 = v82 + 0x10000;
      v85 = v182 < 128 && *(v10 + 1536) != 2;
      v86 = *(v12 + 766) == 0 && v85;
      *(v12 + 765) = v86;
      *v83 = v82 + 65548;
      v82[65537] = v82 + 24577;
      v82[65538] = v82 + 327684;
      v87 = v82 + 57344;
      if (v86)
      {
        v88 = v83 + 2;
      }

      else
      {
        v88 = v83;
      }

      v83[3] = v87;
      v83[4] = v88;
    }
  }

  av1_encode_frame(a1, v75, v76, v77, v78, v79, v80, v81);
  v93 = *(v10 + 1444);
  if (v93)
  {
    v94 = v181;
    if ((*(a1 + 239056) & 0xFD) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_224;
  }

  v94 = v181;
  if ((*(a1 + 239056) & 0xFD) == 0)
  {
    goto LABEL_245;
  }

  v95 = *(*a1 + 50968);
  if (!v95 || !*(*(v181 + 712) + 13176 * *(v181 + 388) + 13168) && *(v181 + 384) == *(v181 + 392) - 1)
  {
    v96 = 100 * *(v10 + 1408) / (*(v12 + 808) * *(v12 + 804));
    v97 = *(v10 + 1404);
    v98 = 3 * v97 + v96;
    if (v98 < 0 != __OFADD__(3 * v97, v96))
    {
      v98 += 3;
    }

    v99 = v98 >> 2;
    if (v97)
    {
      v96 = v99;
    }

    *(v10 + 1404) = v96;
    if (v95)
    {
      v100 = *(v181 + 392);
      if (v100 >= 2)
      {
        v101 = *(v181 + 384);
        if (v101 == v100 - 1)
        {
          v102 = *(v181 + 396);
          v103 = *(v181 + 388);
          v104 = *(v181 + 712);
          if (v101 < 2)
          {
            v105 = 0;
LABEL_395:
            v152 = v101 - v105;
            v153 = (v104 + 13176 * (v103 + v105 * v102) + 208);
            v154 = 13176 * v102;
            do
            {
              *v153 = v96;
              v153 = (v153 + v154);
              --v152;
            }

            while (v152);
            goto LABEL_224;
          }

          v105 = v101 & 0xFFFFFFFE;
          v150 = v104 + 208;
          v151 = v105;
          do
          {
            *(v150 + 13176 * v103) = v96;
            *(v150 + 13176 * (v102 + v103)) = v96;
            v150 += 26352 * v102;
            v151 -= 2;
          }

          while (v151);
          if (v105 != v101)
          {
            goto LABEL_395;
          }
        }
      }
    }
  }

LABEL_224:
  if (*(v11 + 2540) == 1 && *(v11 + 3456) == 1 && v94[98] == 1 && !v93 && v94[99] == 1 && !*(*a1 + 84960) && *(v10 + 2744))
  {
    av1_adjust_gf_refresh_qp_one_pass_rt(a1);
  }

LABEL_245:
  v106 = *a1;
  if (*(v12 + 288) >= 2u && !*(v106 + 50968))
  {
    if (*(v11 + 3576))
    {
      if (*(v11 + 3776))
      {
        if (*(v11 + 3552) == *(v11 + 3752) && *(v11 + 3560) == *(v11 + 3760))
        {
          v121 = *(v11 + 3528);
          if (*(v12 + 328) != *(v121 + 16) || *(v12 + 332) != *(v121 + 24))
          {
            v94[380] = 1;
            aom_yv12_copy_y_c((a1 + 265712), a1 + 265912, 1);
            aom_yv12_copy_u_c((a1 + 265712), a1 + 265912, 1);
            aom_yv12_copy_v_c((a1 + 265712), a1 + 265912, 1);
            v106 = *a1;
          }
        }
      }
    }
  }

  v107 = *(v11 + 1560);
  if (*(v106 + 44132) && *(v10 + 1240) == 1)
  {
    *(a1 + 267536) = get_sse_0(*(*(v11 + 3512) + 40), *(*(v11 + 3512) + 32), *(*(v12 + 504) + 1288), *(*(v12 + 504) + 1280), *(*(v11 + 3512) + 16), *(*(v11 + 3512) + 24), *v89.i64, v90, v91, v92);
  }

  v108 = *(v12 + 504);
  *(v108 + 1388) = *(v107 + 80);
  v109 = *(v107 + 92);
  *(v108 + 1396) = *(v107 + 88);
  *(v108 + 1400) = *(v107 + 77);
  *(v108 + 1404) = *(v107 + 104);
  *(v108 + 1408) = v109;
  v89.i64[0] = *(v12 + 336);
  *(v108 + 1412) = v89.i64[0];
  v110 = v94[14];
  if (v110)
  {
    if (*(v12 + 768))
    {
      goto LABEL_335;
    }
  }

  else
  {
    *(a1 + 262080) = 0;
    *(v11 + 584) = 0;
    v89 = 1uLL;
    *(v11 + 452) = 1;
    *(v11 + 520) = 0;
    *(a1 + 262112) = 0;
    *v11 = 0;
    *(v11 + 64) = 0;
    if (*(v12 + 768))
    {
      goto LABEL_335;
    }
  }

  v111 = *(v178 + 32);
  v112 = *(v11 + 1560);
  if (v112[77])
  {
    v113 = 1;
  }

  else
  {
    v113 = 3;
  }

  *(a1 + 102984) = *v10;
  if (*(v12 + 771))
  {
    v114 = 0;
    v115 = 1;
    v116 = v112[68];
    if (!v116)
    {
      goto LABEL_259;
    }

LABEL_269:
    if (*(v12 + 772))
    {
      LOBYTE(v116) = 0;
      v117 = *a1;
      if (!*(*a1 + 84964))
      {
        goto LABEL_280;
      }
    }

    else
    {
      LOBYTE(v116) = *(v11 + 2164) == 0;
      v117 = *a1;
      if (!*(*a1 + 84964))
      {
        goto LABEL_280;
      }
    }

LABEL_260:
    v118 = 12;
    if (!v114)
    {
      goto LABEL_309;
    }

    goto LABEL_297;
  }

  v119 = *(v11 + 2164);
  v114 = (v119 | v110) == 0;
  if (v119)
  {
    v120 = 1;
  }

  else
  {
    v120 = v112[67] == 0;
  }

  v115 = v120;
  v116 = v112[68];
  if (v116)
  {
    goto LABEL_269;
  }

LABEL_259:
  v117 = *a1;
  if (*(*a1 + 84964))
  {
    goto LABEL_260;
  }

LABEL_280:
  if (*(v11 + 2424) == 1)
  {
    v122 = *(v117 + 23472) == 0;
    v123 = !v122;
    v124 = (v123 | v116) & 1;
    if (v124)
    {
      v118 = v122;
    }

    else
    {
      v118 = 2;
    }

    if (!v124 && *(v12 + 328) == *(v12 + 344))
    {
      if (v115)
      {
        if (v114)
        {
          v118 = 8;
        }

        else
        {
          v118 = 0;
        }

        if (!v114)
        {
          goto LABEL_309;
        }
      }

      else
      {
        if (v114 && *(v10 + 2440) == 6)
        {
          v118 = 12;
        }

        else
        {
          v118 = 4;
        }

        if (!v114)
        {
          goto LABEL_309;
        }
      }

      goto LABEL_297;
    }
  }

  else
  {
    v118 = 0;
  }

  if (!v114)
  {
    goto LABEL_309;
  }

LABEL_297:
  v89.i64[0] = av1_pick_filter_level(*(v11 + 3512), a1, *(v10 + 2432), v89).u64[0];
  if (!*(a1 + 262080))
  {
    if (!*(a1 + 262084) || v118 >= 8)
    {
      goto LABEL_309;
    }

LABEL_302:
    if (*(v10 + 2292) < 1 || *(v10 + 2288) < 1)
    {
      v128 = 0;
    }

    else if (*(v10 + 2432) == 3)
    {
      v128 = 2;
    }

    else
    {
      v128 = 1;
    }

    av1_loop_filter_frame_mt(*(v12 + 504) + 1248, a1 + 239056, a1 + 86480, 0, v113, 0, *(v178 + 64), v111, *v89.i64, v125, v126, v127, a1 + 628144, v128);
    goto LABEL_309;
  }

  if (v118 <= 7)
  {
    goto LABEL_302;
  }

LABEL_309:
  if ((v115 & 1) == 0)
  {
    v129 = *(v178 + 40);
    av1_cdef_search(a1, *v89.i64);
    if ((v118 & 4) == 0)
    {
      if (v129 <= 1)
      {
        v132 = *(v11 + 1560);
        if (*(v132 + 77))
        {
          v133 = 1;
        }

        else
        {
          v133 = 3;
        }

        v134 = *(v12 + 804);
        av1_setup_dst_planes(a1 + 86496, *(v132 + 28), *(v12 + 504) + 1248, 0, 0, 0, v133);
        if (v134 >= 1)
        {
          v135 = 0;
          do
          {
            av1_cdef_fb_row(a1 + 239056, a1 + 86480, a1 + 262536, a1 + 262512, *(v11 + 384), v135++, av1_cdef_init_fb_row, 0);
          }

          while ((v134 + 15) >> 4 != v135);
        }
      }

      else
      {
        if (*(v178 + 40) >= 2)
        {
          v137 = *(v11 + 1560);
          v131 = v181;
          v130 = *(v137 + 67) && (*(v12 + 771) & 1) == 0 && !*(v11 + 2164) && !*(*a1 + 84964) && (!*(v137 + 68) || *(v12 + 772) == 1) && *(v12 + 328) == *(v12 + 344);
        }

        else
        {
          v130 = 0;
          v131 = v181;
        }

        av1_cdef_frame_mt((a1 + 239056), a1 + 86480, *v131, *(v178 + 64), a1 + 636712, v129, av1_cdef_init_fb_row_mt, v130);
      }
    }
  }

  v94 = v181;
  if ((v118 & 2) == 0 && *(v12 + 328) != *(v12 + 344))
  {
    av1_superres_post_encode(a1, *v89.i64);
  }

LABEL_335:
  if (*(v11 + 3456) != 2 && !*(*a1 + 84964))
  {
    if (*(v178 + 40) < 2 || (v138 = *(v11 + 1560), !v138[67]) || (*(v12 + 771) & 1) != 0 || *(v11 + 2164) || v138[68] && *(v12 + 772) != 1 || *(v12 + 328) != *(v12 + 344))
    {
      if (*(v178 + 44) < 2 || (v138 = *(v11 + 1560), !v138[68]) || (*(v12 + 772) & 1) != 0 || *(v11 + 2164) || !*(a1 + 262112))
      {
        v139 = *(v12 + 504);
        extend_plane_0(*(v139 + 1288), *(v139 + 1280), *(v139 + 1264), *(v139 + 1272), *(v139 + 1360), *(v139 + 1360), *(v139 + 1360) + *(v139 + 1256) - *(v139 + 1272), *(v139 + 1248) + *(v139 + 1360) - *(v139 + 1264), 0, *(v139 + 1272));
        v138 = *(v11 + 1560);
      }
    }

    if (!v138[77])
    {
      if ((*(v178 + 40) < 2 || !v138[67] || (*(v12 + 771) & 1) != 0 || *(v11 + 2164) || *(*a1 + 84964) || v138[68] && *(v12 + 772) != 1 || *(v12 + 328) != *(v12 + 344)) && (*(v178 + 44) < 2 || !v138[68] || (*(v12 + 772) & 1) != 0 || *(v11 + 2164) || !*v11))
      {
        v140 = *(v12 + 504);
        v141 = *(v140 + 1360);
        extend_plane_0(*(v140 + 1296), *(v140 + 1284), *(v140 + 1268), *(v140 + 1276), v141 >> *(v140 + 1380), v141 >> *(v140 + 1376), (v141 >> *(v140 + 1380)) + *(v140 + 1260) - *(v140 + 1276), *(v140 + 1252) + (v141 >> *(v140 + 1376)) - *(v140 + 1268), 0, *(v140 + 1276));
        v138 = *(v11 + 1560);
      }

      if (!v138[77] && (*(v178 + 40) < 2 || !v138[67] || (*(v12 + 771) & 1) != 0 || *(v11 + 2164) || *(*a1 + 84964) || v138[68] && *(v12 + 772) != 1 || *(v12 + 328) != *(v12 + 344)) && (*(v178 + 44) < 2 || !v138[68] || (*(v12 + 772) & 1) != 0 || *(v11 + 2164) || !*(v11 + 64)))
      {
        v142 = *(v12 + 504);
        v143 = *(v142 + 1360);
        extend_plane_0(*(v142 + 1304), *(v142 + 1284), *(v142 + 1268), *(v142 + 1276), v143 >> *(v142 + 1380), v143 >> *(v142 + 1376), (v143 >> *(v142 + 1380)) + *(v142 + 1260) - *(v142 + 1276), *(v142 + 1252) + (v143 >> *(v142 + 1376)) - *(v142 + 1268), 0, *(v142 + 1276));
      }
    }
  }

  if (*(v11 + 3244) == 2)
  {
    *(v11 + 600) = 0x100000001;
    *(v11 + 1244) = rand();
    *(v11 + 720) = 1;
    *(v11 + 608) = 0x6400000080;
    if (*(*(v11 + 1560) + 77))
    {
      v144 = 0;
    }

    else
    {
      *(v11 + 724) = 0x6400000080;
      *(v11 + 808) = 0x6400000080;
      v144 = 1;
    }

    *(v11 + 804) = v144;
    *(v11 + 888) = v144;
    *(v11 + 892) = 1;
    *(v11 + 1196) = 1;
    *(v11 + 1224) = 1;
    *(v11 + 1236) = 0;
  }

  av1_finalize_encoded_frame(a1);
  *(v10 + 1208) = 0;
  if (av1_pack_bitstream(a1, a3, a4))
  {
    return 1;
  }

  if (*(v10 + 1368) && !*(v11 + 3432) && !*(*a1 + 23172) && *(v11 + 3456) == 1 && !*(v11 + 2656) && *(v11 + 2540) == 1 && *(v11 + 2516) >= 1 && !*(v10 + 1444) && (*(a1 + 239056) & 0xFD) != 0 && !v94[96] && av1_postencode_drop_cbr(a1, v176))
  {
    return 0;
  }

  if (a5)
  {
    *a5 = get_sse_0(*(*(v11 + 3512) + 40), *(*(v11 + 3512) + 32), *(*(v12 + 504) + 1288), *(*(v12 + 504) + 1280), *(*(v11 + 3512) + 16), *(*(v11 + 3512) + 24), v145, v146, v147, v148);
  }

  if (!a6)
  {
    return 0;
  }

  result = 0;
  *a6 = *v176 << 8;
  return result;
}

void av1_set_size_dependent_vars(uint64_t a1, _DWORD *a2)
{
  v4 = (a1 + 456752);
  v5 = (a1 + 388412);
  v6 = a1 + 264716;
  v7 = a1 + 239056;
  av1_set_speed_features_framesize_dependent(a1, *(a1 + 388716));
  *a2 = av1_rc_pick_q_and_bounds(a1, *(v7 + 56), *(v7 + 60));
  if (*v6 == 1 && v5[37])
  {
    *a2 = v5[40];
    v5[37] = 0;
  }

  if (*(v6 + 892) >= 2u && v5[81])
  {
    v8 = (a1 + 258048);
    if (!*v7 || *(v6 + 2414) == 1)
    {
      bzero(*v4, *(v7 + 536) * *(v7 + 532));
      *v8 = 0;
LABEL_9:
      *(a1 + 258052) = 0u;
      *(a1 + 258068) = 0u;
      *(a1 + 258084) = 0u;
      *(a1 + 258100) = 0u;
      *(a1 + 258116) = 0u;
      *(a1 + 258132) = 0u;
      *(a1 + 258148) = 0u;
      *(a1 + 258164) = 0u;
      *(a1 + 258180) = 0u;
      *(a1 + 258196) = 0u;
      return;
    }

    if (*v8)
    {
      if (!*v5)
      {
        *v8 = 0;
        bzero(*v4, *(v7 + 536) * *(v7 + 532));
        *(a1 + 258049) = 0;
        goto LABEL_9;
      }

      if (v5[9])
      {
        v9 = *(*a1 + 44264);
        v10 = *(a1 + 258180);
        *(a1 + 258180) = v10 | 0x2000000020;
        *(a1 + 258062) = 7;
        *(a1 + 258078) = 7;
        if (v9 > 48.0)
        {
          *(a1 + 258180) = v10 | 0x6000000060;
        }

        *(a1 + 258050) = 1;
      }

      else
      {
        *(a1 + 258049) = 0;
      }
    }
  }
}

void av1_scale_references(uint64_t *a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = a1;
  v97 = a1 + 637172;
  v5 = a1 + 48585;
  v6 = a1 + 32967;
  v7 = a1 + 29884;
  v94 = *(a1[32967] + 77);
  if (*(a1[32967] + 77))
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v92 = v8;
  v9 = a1 + 29912;
  v98 = a1 + 29934;
  v10 = a1 + 33383;
  v11 = 1u;
  v95 = a1 + 29912;
  v96 = a1 + 48585;
  v91 = a1 + 33383;
  do
  {
    if ((v5[8] & *(&av1_ref_frame_flag_list_1 + v11)) != 0)
    {
      v12 = *(v9 + (v11 - 1));
      if (v12 == -1 || ((v13 = v98[v12]) != 0 ? (v14 = v13 + 1248) : (v14 = 0), !v13))
      {
LABEL_6:
        v10[v11 - 1] = 0;
        goto LABEL_7;
      }

      v15 = v6[77];
      v16 = *v4;
      if (*(*v4 + 50968) && *(v97 + 316) && *(v16 + 84960))
      {
        if (v11 == 7)
        {
          if (*(v97 + 8))
          {
            goto LABEL_7;
          }
        }

        else if (v11 == 4)
        {
          if (*(v97 + 4))
          {
            goto LABEL_7;
          }
        }

        else if (v11 == 1 && *v97)
        {
          goto LABEL_7;
        }
      }

      if (*(v6 + 468) || *(v16 + 23172) || *(v6 + 1896) != 1 || *(v6 + 274) || v11 != 4 || (*(v6 + 1044) & 1) == 0 || *v5 >= *v7 - 1)
      {
        v17 = *(v13 + 1264);
        v18 = *(v7 + 10);
        if (v17 == v18 && *(v13 + 1272) == *(v7 + 11))
        {
          v10[v11 - 1] = v13;
          ++*v13;
          goto LABEL_7;
        }

        if ((v17 > v18 || *(v13 + 1272) > *(v7 + 11)) && *(v13 + 1360) <= 287)
        {
          v19 = *(v97 + 1084);
          v20 = *(v7 + 124);
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          LOBYTE(v85) = v19;
          if (aom_alloc_frame_buffer(&v99, v17, *(v13 + 1272), *(v13 + 1376), *(v13 + 1380), *(v13 + 1424) & 8, 288, v20, v85, 0))
          {
            aom_internal_error(v7[4], 2, "Failed to allocate frame buffer");
          }

          else
          {
            aom_yv12_copy_frame_c((v13 + 1248), &v99, v92);
            aom_extend_frame_borders_c(&v99, v92);
            aom_free_frame_buffer(v13 + 1248);
            v21 = v108;
            *(v13 + 1376) = v107;
            *(v13 + 1392) = v21;
            v22 = v110;
            *(v13 + 1408) = v109;
            *(v13 + 1424) = v22;
            v23 = v104;
            *(v13 + 1312) = v103;
            *(v13 + 1328) = v23;
            v24 = v106;
            *(v13 + 1344) = v105;
            *(v13 + 1360) = v24;
            v25 = v100;
            *(v13 + 1248) = v99;
            *(v13 + 1264) = v25;
            v26 = v102;
            *(v13 + 1280) = v101;
            *(v13 + 1296) = v26;
          }

          v9 = v95;
          v5 = v96;
        }

        v27 = v10[v11 - 1];
        if (v27)
        {
          v28 = *(v7 + 10);
          v29 = *(v7 + 11);
          if (*(v27 + 1264) == v28)
          {
            v28 = *(v27 + 1264);
            v30 = v10[v11 - 1];
            if (*(v27 + 1272) == v29)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v30 = v10[v11 - 1];
          }

LABEL_59:
          LOBYTE(v86) = 0;
          if (aom_realloc_frame_buffer(v30 + 1248, v28, v29, *(*v6 + 96), *(*v6 + 100), *(*v6 + 76), 288, *(v7 + 124), 0, 0, 0, v86, 0))
          {
            if (!v27)
            {
              --*v30;
            }

            aom_internal_error(v7[4], 2, "Failed to allocate frame buffer");
          }

          v43 = *(v13 + 1264);
          v44 = *(v14 + 24);
          v45 = *(v30 + 1264);
          v46 = *(v30 + 1272);
          v47 = 4 * v46;
          v48 = 4 * v45 < v43 || v47 < v44;
          v49 = 16 * v43;
          v50 = v48 || v49 < v45;
          v51 = 16 * v44;
          v52 = v50 || v51 < v46;
          if (v52 || 16 * v45 % v43 || v49 % v45 || 16 * v46 % v44 || v51 % v46)
          {
            if (4 * v45 != 3 * v43)
            {
              goto LABEL_90;
            }

            v53 = v47 == 3 * v44;
            v54 = v94 != 0 && v53;
            if (!v94)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v53 = 1;
            v54 = v94 != 0;
            if (v94)
            {
              goto LABEL_87;
            }

LABEL_76:
            if (v53)
            {
              v55 = *(v13 + 1268);
              v56 = *(v13 + 1276);
              v57 = *(v30 + 1268);
              v58 = *(v30 + 1276);
              v59 = 4 * v58;
              if (4 * v57 >= v55 && v59 >= v56 && 16 * v55 >= v57 && 16 * v56 >= v58 && !(16 * v57 % v55) && !(16 * v55 % v57) && !(16 * v58 % v56) && !(16 * v56 % v58))
              {
                v54 = 1;
                goto LABEL_87;
              }

              if (4 * v57 == 3 * v55)
              {
                v54 = v59 == 3 * v56;
                goto LABEL_87;
              }

LABEL_90:
              if (av1_resize_plane(*(v13 + 1288), *(v13 + 1272), *(v13 + 1264), *(v13 + 1280), *(v30 + 1288), *(v30 + 1272), *(v30 + 1264), *(v30 + 1280), *v38.i64, *v39.i64, v40, v41, v42) & 1) != 0 && (v94 || av1_resize_plane(*(v13 + 1296), *(v13 + 1276), *(v13 + 1268), *(v13 + 1284), *(v30 + 1296), *(v30 + 1276), *(v30 + 1268), *(v30 + 1284), v60, v61, v62, v63, v64) && (av1_resize_plane(*(v13 + 1304), *(v13 + 1276), *(v13 + 1268), *(v13 + 1284), *(v30 + 1304), *(v30 + 1276), *(v30 + 1268), *(v30 + 1284), v65, v66, v67, v68, v69)))
              {
                aom_extend_frame_borders_c((v30 + 1248), v92);
              }

              else
              {
                aom_internal_error(v7[4], 2, "Failed to allocate buffer during resize");
              }

LABEL_96:
              v10[v11 - 1] = v30;
              v70 = *(v30 + 72);
              if (v70)
              {
                if (*(v30 + 260) != *(v7 + 129) || *(v30 + 264) != *(v7 + 130))
                {
                  free(*(v70 - 8));
                  goto LABEL_100;
                }

LABEL_112:
                v81 = ((*(v7 + 129) + 32) >> 1) * (*(v7 + 141) >> 1);
                v82 = v6[90];
                if (v82)
                {
                  v9 = v95;
                  v5 = v96;
                  if (*(v6 + 182) < v81)
                  {
                    free(*(v82 - 8));
                    goto LABEL_115;
                  }
                }

                else
                {
LABEL_115:
                  if (v81 <= 0x3FFFFFFD && (v83 = malloc_type_malloc(8 * v81 + 23, 0x5F484EBFuLL)) != 0 && (v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF0, *(v84 - 8) = v83, v84))
                  {
                    bzero(((v83 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v81);
                    v6[90] = v84;
                  }

                  else
                  {
                    v6[90] = 0;
                    aom_internal_error(v7[4], 2, "Failed to allocate cm->tpl_mvs");
                  }

                  *(v6 + 182) = v81;
                  v9 = v95;
                  v5 = v96;
                }

                *(v30 + 268) = v7[5];
                goto LABEL_7;
              }

LABEL_100:
              v71 = *(v7 + 129);
              *(v30 + 260) = v71;
              v72 = *(v7 + 130);
              *(v30 + 264) = v72;
              v73 = ((v72 + 1) >> 1) * ((v71 + 1) >> 1);
              if (v73 <= 0x3FFFFFFD && (v74 = 8 * v73, (v75 = malloc_type_malloc(v74 + 23, 0x5F484EBFuLL)) != 0) && (v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF0, *(v76 - 8) = v75, v76))
              {
                bzero(((v75 + 23) & 0xFFFFFFFFFFFFFFF0), v74);
                *(v30 + 72) = v76;
                v77 = *(v30 + 80);
                if (!v77)
                {
                  goto LABEL_107;
                }

LABEL_106:
                free(*(v77 - 8));
              }

              else
              {
                *(v30 + 72) = 0;
                aom_internal_error(v7[4], 2, "Failed to allocate buf->mvs");
                v77 = *(v30 + 80);
                if (v77)
                {
                  goto LABEL_106;
                }
              }

LABEL_107:
              v78 = *(v7 + 130) * *(v7 + 129);
              if ((v78 & 0x80000000) == 0 && (v79 = malloc_type_malloc(v78 + 23, 0x5F484EBFuLL)) != 0 && (v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF0, *(v80 - 8) = v79, v80))
              {
                bzero(((v79 + 23) & 0xFFFFFFFFFFFFFFF0), v78);
                *(v30 + 80) = v80;
              }

              else
              {
                *(v30 + 80) = 0;
                aom_internal_error(v7[4], 2, "Failed to allocate buf->seg_map");
              }

              goto LABEL_112;
            }
          }

LABEL_87:
          if (!a4 || !v54)
          {
            goto LABEL_90;
          }

          av1_resize_and_extend_frame_neon((v13 + 1248), v30 + 1248, a2, a3, v92, v38, v39);
          goto LABEL_96;
        }

        v93 = v15;
        v31 = v6[77];
        v32 = *(v31 + 88);
        pthread_mutex_lock(v31);
        v33 = v6[77];
        v34 = v33[1].__opaque[24];
        if (v33[1].__opaque[24])
        {
          v35 = 0;
          v36 = v32;
          while (*v36)
          {
            v36 += 5682;
            if (v34 == ++v35)
            {
              goto LABEL_53;
            }
          }
        }

        else
        {
          LODWORD(v35) = 0;
        }

        if (v35 == v34)
        {
LABEL_53:
          pthread_mutex_unlock(v33);
          v4 = a1;
          goto LABEL_54;
        }

        v37 = &v32[5682 * v35];
        if (v37[328])
        {
          *(v37 + 161) = *(v37 + 165);
          *(v37 + 81) = *(v37 + 83);
          v37[328] = 0;
          v33 = v6[77];
        }

        *v37 = 1;
        pthread_mutex_unlock(v33);
        v4 = a1;
        if (v35 == -1)
        {
LABEL_54:
          aom_internal_error(v7[4], 2, "Unable to find free frame buffer");
          LODWORD(v35) = -1;
        }

        v30 = *(v93 + 88) + 22728 * v35;
        v28 = *(v7 + 10);
        v29 = *(v7 + 11);
        v10 = v91;
        goto LABEL_59;
      }
    }

    else if (*(v6 + 468) || *(*v4 + 23172))
    {
      goto LABEL_6;
    }

LABEL_7:
    ++v11;
  }

  while (v11 != 8);
}

uint64_t av1_select_sb_size(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 276);
  if (!v4)
  {
    return 12;
  }

  if (v4 == 1)
  {
    return 15;
  }

  v6 = *(a1 + 1104);
  if (v6 == 2 && *(a1 + 225) - 3 < 2)
  {
    return 12;
  }

  if (a4 > 1 || *(a1 + 232))
  {
    v7 = *(a1 + 24);
    if (v7 >= *(a1 + 28))
    {
      v7 = *(a1 + 28);
    }

    if (v7 <= 720)
    {
      return 12;
    }

    else
    {
      return 15;
    }
  }

  if (v6 == 1)
  {
    if (*(a1 + 892) != 1)
    {
      if (a2 >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = a2;
      }

      if (v14 <= 720)
      {
        return 12;
      }

      else
      {
        return 15;
      }
    }

    if ((*(a1 + 1105) & 1) == 0)
    {
      if (a2 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = a2;
      }

LABEL_47:
      if (v8 <= 719)
      {
        return 12;
      }

      else
      {
        return 15;
      }
    }

    if (a2 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 720)
    {
      goto LABEL_47;
    }

    v9 = *(a1 + 1036);
    if (v9 < 4)
    {
      goto LABEL_47;
    }

    v10 = 1 << *(a1 + 336) << *(a1 + 340);
    if (v9 < v10 || a3 * a2 / (v10 << 14) >= 40)
    {
      goto LABEL_47;
    }

    return 12;
  }

  if (*(a1 + 248))
  {
    return 15;
  }

  if (a2 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a1 + 1040);
  if (v11 <= 480 && v12 > 0)
  {
    return 12;
  }

  if (v11 < 481 == v11 < 1081 || *(a1 + 1104))
  {
    result = 15;
    if (v6 != 2 || v11 > 2159 || v12 < 9)
    {
      return result;
    }

    return 12;
  }

  if (*(a1 + 1105) != 1 || v12 < 5)
  {
    return 15;
  }

  v13 = *(a1 + 1036);
  result = 15;
  if (v13 > 1)
  {
    return 12;
  }

  return result;
}

unsigned __int8 *av1_setup_frame(unsigned __int8 *result)
{
  v1 = result;
  v2 = result + 263736;
  v3 = result + 239056;
  v4 = result[239056];
  if ((v4 & 0xFFFFFFFD) == 0 || (result[239558] & 1) != 0 || result[267151] == 1)
  {
    result = av1_setup_past_independence((result + 239056));
    v4 = *v3;
  }

  if (v4 == 3 || !v4 && *(v3 + 120))
  {
    if (!*(*v1 + 376))
    {
      v5 = *v2;
      result = av1_select_sb_size((v1 + 264528), *(v3 + 14), *(v3 + 15), *(*v1 + 50980));
      *(v5 + 28) = result;
      *(v5 + 32) = mi_size_wide_14[result];
      *(v5 + 36) = mi_size_wide_log2_3[result];
    }
  }

  else
  {
    v6 = *(v3 + 127);
    v7 = v6 != 7 && (*(v3 + 127) & 0xF8) == 0;
    if (v7 && (v8 = *&v1[4 * (v6 & 7) + 239296], v8 != -1) && (v9 = *&v1[8 * v8 + 239472]) != 0)
    {
      result = memcpy(*(v2 + 1), (v9 + 1480), 0x52FCuLL);
    }

    else
    {
      result = av1_setup_past_independence(v3);
      *(v1 + 258049) = 257;
    }
  }

  *(*(v3 + 29) + 1452) = 0u;
  v10 = *(v3 + 127);
  v11 = v10 != 7 && (*(v3 + 127) & 0xF8) == 0;
  if (!v11 || (v12 = *&v1[4 * (v10 & 7) + 239296], v12 == -1))
  {
    *(v3 + 28) = 0;
    *(v1 + 130610) = 0;
  }

  else
  {
    *(v3 + 28) = *&v1[8 * v12 + 239472];
    *(v1 + 130610) = 0;
  }

  return result;
}

uint64_t av1_finalize_encoded_frame(uint64_t result)
{
  v1 = result;
  v2 = result + 263420;
  v3 = result + 239056;
  v4 = *(result + 263736);
  v5 = *(result + 239544);
  if (*(v4 + 58))
  {
    if (v5)
    {
      if ((*(result + 239558) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_12:
      if (!*v3)
      {
        goto LABEL_21;
      }
    }

LABEL_13:
    if (*(v4 + 109) && (*(result + 239536) || *(result + 239540)))
    {
      result = memcpy((*(result + 239288) + 572), (result + 262776), 0x288uLL);
      if (*v3 != 1)
      {
        *(*(v3 + 232) + 576) = 1;
      }

      v9 = *v2 + 3381;
      if (*v2 == 0xF2CB)
      {
        v9 = 7391;
      }

      *v2 = v9;
    }

    goto LABEL_21;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *(result + 239558);
  if (v6 == 1)
  {
    if (*v3)
    {
      goto LABEL_13;
    }
  }

  v7 = *(result + 8 * *(result + 636808) + 239472);
  if (!v7)
  {
    result = aom_internal_error(*(result + 239104), 5, "Buffer does not contain a reconstructed frame");
    __break(1u);
    return result;
  }

  v8 = *(result + 239288);
  if (v8)
  {
    --*v8;
  }

  *(result + 239288) = v7;
  ++*v7;
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_21:
  v10 = *(v2 + 340);
  if (v10 >= 1)
  {
    v11 = *(v2 + 344);
    if (v11 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (v11 >= 1)
        {
          for (j = 0; j < v11; ++j)
          {
            result = memcpy((*(v1 + 456880) + 23824 * (i + *(v2 + 340) * j) + 32), *(v2 + 324), 0x52FCuLL);
            v11 = *(v2 + 344);
          }

          v10 = *(v2 + 340);
        }
      }
    }
  }

  if ((*v3 & 0xFD) != 0 && *(v3 + 505) == 4)
  {
    v14 = *(v1 + 234200);
    v15 = vadd_s32(vadd_s32(vadd_s32(vadd_s32(vadd_s32(*(v14 + 12), *v14), vadd_s32(*(v14 + 24), *(v14 + 36))), vadd_s32(vadd_s32(*(v14 + 48), *(v14 + 60)), *(v14 + 72))), vadd_s32(vadd_s32(vadd_s32(*(v14 + 84), *(v14 + 96)), *(v14 + 108)), *(v14 + 120))), vadd_s32(vadd_s32(vadd_s32(vadd_s32(*(v14 + 132), *(v14 + 144)), *(v14 + 156)), *(v14 + 168)), *(v14 + 180)));
    v16 = vcgtz_s32(v15);
    v17 = (v16.i8[4] & 1) - v16.i32[0];
    v18 = *(v14 + 20) + *(v14 + 8) + *(v14 + 32) + *(v14 + 44) + *(v14 + 56) + *(v14 + 68) + *(v14 + 80) + *(v14 + 92) + *(v14 + 104) + *(v14 + 116) + *(v14 + 128) + *(v14 + 140) + *(v14 + 152) + *(v14 + 164) + *(v14 + 176) + *(v14 + 188);
    if (v18 > 0)
    {
      ++v17;
    }

    if (v17 == 1)
    {
      if (v15.i32[0])
      {
        v19 = 0;
      }

      else if (v15.i32[1])
      {
        v19 = 1;
      }

      else
      {
        if (!v18)
        {
          return result;
        }

        v19 = 2;
      }

      *(v3 + 505) = v19;
    }
  }

  return result;
}

BOOL av1_is_integer_mv(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[2];
  if (v4 >= 8 && v3 >= 8)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *(a1 + 5);
    v20 = a1[8];
    v21 = *(a2 + 32);
    v22 = a1[44];
    v23 = 8;
    while (1)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = (v19 + v15 * v20 + v24);
        v27 = (*(a2 + 40) + v15 * v21 + v24);
        if ((v22 & 8) != 0)
        {
          v45 = (2 * v27);
          v28 = *(2 * v26) == *v45;
          if (*(2 * v26) == *v45)
          {
            v28 = *(2 * v26 + 2) == v45[1];
            if (*(2 * v26 + 2) == v45[1])
            {
              v28 = *(2 * v26 + 4) == v45[2];
              if (*(2 * v26 + 4) == v45[2])
              {
                v28 = *(2 * v26 + 6) == v45[3];
                if (*(2 * v26 + 6) == v45[3])
                {
                  v28 = *(2 * v26 + 8) == v45[4];
                  if (*(2 * v26 + 8) == v45[4])
                  {
                    v28 = *(2 * v26 + 0xA) == v45[5];
                    if (*(2 * v26 + 0xA) == v45[5])
                    {
                      v28 = *(2 * v26 + 0xC) == v45[6];
                      if (*(2 * v26 + 0xC) == v45[6])
                      {
                        v28 = *(2 * v26 + 0xE) == v45[7];
                      }
                    }
                  }
                }
              }
            }
          }

          if (v28)
          {
            v46 = (2 * v26 + 2 * v20);
            v47 = &v45[v21];
            v28 = *v46 == *v47;
            if (*v46 == *v47)
            {
              v28 = *(2 * v26 + 2 * v20 + 2) == v47[1];
              if (*(2 * v26 + 2 * v20 + 2) == v47[1])
              {
                v28 = *(2 * v26 + 2 * v20 + 4) == v47[2];
                if (*(2 * v26 + 2 * v20 + 4) == v47[2])
                {
                  v28 = *(2 * v26 + 2 * v20 + 6) == v47[3];
                  if (*(2 * v26 + 2 * v20 + 6) == v47[3])
                  {
                    v28 = *(2 * v26 + 2 * v20 + 8) == v47[4];
                    if (*(2 * v26 + 2 * v20 + 8) == v47[4])
                    {
                      v28 = *(2 * v26 + 2 * v20 + 0xA) == v47[5];
                      if (*(2 * v26 + 2 * v20 + 0xA) == v47[5])
                      {
                        v28 = *(2 * v26 + 2 * v20 + 0xC) == v47[6];
                        if (*(2 * v26 + 2 * v20 + 0xC) == v47[6])
                        {
                          v28 = *(2 * v26 + 2 * v20 + 0xE) == v47[7];
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v28)
            {
              v48 = &v46[v20];
              v49 = &v47[v21];
              v28 = *v48 == *v49;
              if (*v48 == *v49)
              {
                v28 = v48[1] == v49[1];
                if (v48[1] == v49[1])
                {
                  v28 = v48[2] == v49[2];
                  if (v48[2] == v49[2])
                  {
                    v28 = v48[3] == v49[3];
                    if (v48[3] == v49[3])
                    {
                      v28 = v48[4] == v49[4];
                      if (v48[4] == v49[4])
                      {
                        v28 = v48[5] == v49[5];
                        if (v48[5] == v49[5])
                        {
                          v28 = v48[6] == v49[6];
                          if (v48[6] == v49[6])
                          {
                            v28 = v48[7] == v49[7];
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (v28)
              {
                v50 = &v48[v20];
                v51 = &v49[v21];
                v28 = *v50 == *v51;
                if (*v50 == *v51)
                {
                  v28 = v50[1] == v51[1];
                  if (v50[1] == v51[1])
                  {
                    v28 = v50[2] == v51[2];
                    if (v50[2] == v51[2])
                    {
                      v28 = v50[3] == v51[3];
                      if (v50[3] == v51[3])
                      {
                        v28 = v50[4] == v51[4];
                        if (v50[4] == v51[4])
                        {
                          v28 = v50[5] == v51[5];
                          if (v50[5] == v51[5])
                          {
                            v28 = v50[6] == v51[6];
                            if (v50[6] == v51[6])
                            {
                              v28 = v50[7] == v51[7];
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v28)
                {
                  v52 = &v50[v20];
                  v53 = &v51[v21];
                  v28 = *v52 == *v53;
                  if (*v52 == *v53)
                  {
                    v28 = v52[1] == v53[1];
                    if (v52[1] == v53[1])
                    {
                      v28 = v52[2] == v53[2];
                      if (v52[2] == v53[2])
                      {
                        v28 = v52[3] == v53[3];
                        if (v52[3] == v53[3])
                        {
                          v28 = v52[4] == v53[4];
                          if (v52[4] == v53[4])
                          {
                            v28 = v52[5] == v53[5];
                            if (v52[5] == v53[5])
                            {
                              v28 = v52[6] == v53[6];
                              if (v52[6] == v53[6])
                              {
                                v28 = v52[7] == v53[7];
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  if (v28)
                  {
                    v54 = &v52[v20];
                    v55 = &v53[v21];
                    v28 = *v54 == *v55;
                    if (*v54 == *v55)
                    {
                      v28 = v54[1] == v55[1];
                      if (v54[1] == v55[1])
                      {
                        v28 = v54[2] == v55[2];
                        if (v54[2] == v55[2])
                        {
                          v28 = v54[3] == v55[3];
                          if (v54[3] == v55[3])
                          {
                            v28 = v54[4] == v55[4];
                            if (v54[4] == v55[4])
                            {
                              v28 = v54[5] == v55[5];
                              if (v54[5] == v55[5])
                              {
                                v28 = v54[6] == v55[6];
                                if (v54[6] == v55[6])
                                {
                                  v28 = v54[7] == v55[7];
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    if (v28)
                    {
                      v56 = &v54[v20];
                      v57 = &v55[v21];
                      v28 = *v56 == *v57;
                      if (*v56 == *v57)
                      {
                        v28 = v56[1] == v57[1];
                        if (v56[1] == v57[1])
                        {
                          v28 = v56[2] == v57[2];
                          if (v56[2] == v57[2])
                          {
                            v28 = v56[3] == v57[3];
                            if (v56[3] == v57[3])
                            {
                              v28 = v56[4] == v57[4];
                              if (v56[4] == v57[4])
                              {
                                v28 = v56[5] == v57[5];
                                if (v56[5] == v57[5])
                                {
                                  v28 = v56[6] == v57[6];
                                  if (v56[6] == v57[6])
                                  {
                                    v28 = v56[7] == v57[7];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      if (v28)
                      {
                        v58 = &v56[v20];
                        v59 = &v57[v21];
                        v28 = *v58 == *v59;
                        if (*v58 == *v59)
                        {
                          v28 = v58[1] == v59[1];
                          if (v58[1] == v59[1])
                          {
                            v28 = v58[2] == v59[2];
                            if (v58[2] == v59[2])
                            {
                              v28 = v58[3] == v59[3];
                              if (v58[3] == v59[3])
                              {
                                v28 = v58[4] == v59[4];
                                if (v58[4] == v59[4])
                                {
                                  v28 = v58[5] == v59[5];
                                  if (v58[5] == v59[5])
                                  {
                                    v28 = v58[6] == v59[6];
                                    if (v58[6] == v59[6])
                                    {
                                      v43 = v58[7];
                                      v44 = v59[7];
                                      goto LABEL_161;
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
              }
            }
          }
        }

        else
        {
          v28 = *v26 == *v27;
          if (*v26 == *v27)
          {
            v28 = v26[1] == v27[1];
            if (v26[1] == v27[1])
            {
              v28 = v26[2] == v27[2];
              if (v26[2] == v27[2])
              {
                v28 = v26[3] == v27[3];
                if (v26[3] == v27[3])
                {
                  v28 = v26[4] == v27[4];
                  if (v26[4] == v27[4])
                  {
                    v28 = v26[5] == v27[5];
                    if (v26[5] == v27[5])
                    {
                      v28 = v26[6] == v27[6];
                      if (v26[6] == v27[6])
                      {
                        v28 = v26[7] == v27[7];
                      }
                    }
                  }
                }
              }
            }
          }

          if (v28)
          {
            v29 = &v26[v20];
            v30 = &v27[v21];
            v28 = v26[v20] == *v30;
            if (v26[v20] == *v30)
            {
              v28 = v29[1] == v30[1];
              if (v29[1] == v30[1])
              {
                v28 = v29[2] == v30[2];
                if (v29[2] == v30[2])
                {
                  v28 = v29[3] == v30[3];
                  if (v29[3] == v30[3])
                  {
                    v28 = v29[4] == v30[4];
                    if (v29[4] == v30[4])
                    {
                      v28 = v29[5] == v30[5];
                      if (v29[5] == v30[5])
                      {
                        v28 = v29[6] == v30[6];
                        if (v29[6] == v30[6])
                        {
                          v28 = v29[7] == v30[7];
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v28)
            {
              v31 = &v29[v20];
              v32 = &v30[v21];
              v28 = *v31 == *v32;
              if (*v31 == *v32)
              {
                v28 = v31[1] == v32[1];
                if (v31[1] == v32[1])
                {
                  v28 = v31[2] == v32[2];
                  if (v31[2] == v32[2])
                  {
                    v28 = v31[3] == v32[3];
                    if (v31[3] == v32[3])
                    {
                      v28 = v31[4] == v32[4];
                      if (v31[4] == v32[4])
                      {
                        v28 = v31[5] == v32[5];
                        if (v31[5] == v32[5])
                        {
                          v28 = v31[6] == v32[6];
                          if (v31[6] == v32[6])
                          {
                            v28 = v31[7] == v32[7];
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (v28)
              {
                v33 = &v31[v20];
                v34 = &v32[v21];
                v28 = *v33 == *v34;
                if (*v33 == *v34)
                {
                  v28 = v33[1] == v34[1];
                  if (v33[1] == v34[1])
                  {
                    v28 = v33[2] == v34[2];
                    if (v33[2] == v34[2])
                    {
                      v28 = v33[3] == v34[3];
                      if (v33[3] == v34[3])
                      {
                        v28 = v33[4] == v34[4];
                        if (v33[4] == v34[4])
                        {
                          v28 = v33[5] == v34[5];
                          if (v33[5] == v34[5])
                          {
                            v28 = v33[6] == v34[6];
                            if (v33[6] == v34[6])
                            {
                              v28 = v33[7] == v34[7];
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v28)
                {
                  v35 = &v33[v20];
                  v36 = &v34[v21];
                  v28 = *v35 == *v36;
                  if (*v35 == *v36)
                  {
                    v28 = v35[1] == v36[1];
                    if (v35[1] == v36[1])
                    {
                      v28 = v35[2] == v36[2];
                      if (v35[2] == v36[2])
                      {
                        v28 = v35[3] == v36[3];
                        if (v35[3] == v36[3])
                        {
                          v28 = v35[4] == v36[4];
                          if (v35[4] == v36[4])
                          {
                            v28 = v35[5] == v36[5];
                            if (v35[5] == v36[5])
                            {
                              v28 = v35[6] == v36[6];
                              if (v35[6] == v36[6])
                              {
                                v28 = v35[7] == v36[7];
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  if (v28)
                  {
                    v37 = &v35[v20];
                    v38 = &v36[v21];
                    v28 = *v37 == *v38;
                    if (*v37 == *v38)
                    {
                      v28 = v37[1] == v38[1];
                      if (v37[1] == v38[1])
                      {
                        v28 = v37[2] == v38[2];
                        if (v37[2] == v38[2])
                        {
                          v28 = v37[3] == v38[3];
                          if (v37[3] == v38[3])
                          {
                            v28 = v37[4] == v38[4];
                            if (v37[4] == v38[4])
                            {
                              v28 = v37[5] == v38[5];
                              if (v37[5] == v38[5])
                              {
                                v28 = v37[6] == v38[6];
                                if (v37[6] == v38[6])
                                {
                                  v28 = v37[7] == v38[7];
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    if (v28)
                    {
                      v39 = &v37[v20];
                      v40 = &v38[v21];
                      v28 = *v39 == *v40;
                      if (*v39 == *v40)
                      {
                        v28 = v39[1] == v40[1];
                        if (v39[1] == v40[1])
                        {
                          v28 = v39[2] == v40[2];
                          if (v39[2] == v40[2])
                          {
                            v28 = v39[3] == v40[3];
                            if (v39[3] == v40[3])
                            {
                              v28 = v39[4] == v40[4];
                              if (v39[4] == v40[4])
                              {
                                v28 = v39[5] == v40[5];
                                if (v39[5] == v40[5])
                                {
                                  v28 = v39[6] == v40[6];
                                  if (v39[6] == v40[6])
                                  {
                                    v28 = v39[7] == v40[7];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      if (v28)
                      {
                        v41 = &v39[v20];
                        v42 = &v40[v21];
                        v28 = *v41 == *v42;
                        if (*v41 == *v42)
                        {
                          v28 = v41[1] == v42[1];
                          if (v41[1] == v42[1])
                          {
                            v28 = v41[2] == v42[2];
                            if (v41[2] == v42[2])
                            {
                              v28 = v41[3] == v42[3];
                              if (v41[3] == v42[3])
                              {
                                v28 = v41[4] == v42[4];
                                if (v41[4] == v42[4])
                                {
                                  v28 = v41[5] == v42[5];
                                  if (v41[5] == v42[5])
                                  {
                                    v28 = v41[6] == v42[6];
                                    if (v41[6] == v42[6])
                                    {
                                      v43 = v41[7];
                                      v44 = v42[7];
LABEL_161:
                                      v28 = v43 == v44;
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
              }
            }
          }
        }

        if (v28)
        {
          ++v17;
          goto LABEL_17;
        }

        if ((v22 & 8) != 0)
        {
          v92 = (2 * v26);
          v93 = *v92;
          v94 = v92 + 1;
          if (v92[1] == v93 && v92[2] == v93 && v92[3] == v93 && v92[4] == v93 && v92[5] == v93 && v92[6] == v93 && v92[7] == v93)
          {
            v95 = &v92[v20];
            v96 = *v95;
            if (v95[1] == v96 && v95[2] == v96 && v95[3] == v96 && v95[4] == v96 && v95[5] == v96 && v95[6] == v96 && v95[7] == v96)
            {
              v97 = &v95[v20];
              v98 = *v97;
              if (v97[1] == v98 && v97[2] == v98 && v97[3] == v98 && v97[4] == v98 && v97[5] == v98 && v97[6] == v98 && v97[7] == v98)
              {
                v99 = &v97[v20];
                v100 = *v99;
                if (v99[1] == v100 && v99[2] == v100 && v99[3] == v100 && v99[4] == v100 && v99[5] == v100 && v99[6] == v100 && v99[7] == v100)
                {
                  v101 = &v99[v20];
                  v102 = *v101;
                  if (v101[1] == v102 && v101[2] == v102 && v101[3] == v102 && v101[4] == v102 && v101[5] == v102 && v101[6] == v102 && v101[7] == v102)
                  {
                    v103 = &v101[v20];
                    v104 = *v103;
                    if (v103[1] == v104 && v103[2] == v104 && v103[3] == v104 && v103[4] == v104 && v103[5] == v104 && v103[6] == v104 && v103[7] == v104)
                    {
                      v105 = &v103[v20];
                      v106 = *v105;
                      if (v105[1] == v106 && v105[2] == v106 && v105[3] == v106 && v105[4] == v106 && v105[5] == v106 && v105[6] == v106 && v105[7] == v106)
                      {
                        v107 = &v105[v20];
                        v108 = *v107;
                        if (v107[1] == v108 && v107[2] == v108 && v107[3] == v108 && v107[4] == v108 && v107[5] == v108 && v107[6] == v108 && v107[7] == v108)
                        {
                          goto LABEL_389;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v109 = *v92;
          if (v92[v20] == v109 && v92[2 * v20] == v109 && v92[3 * v20] == v109 && v92[4 * v20] == v109 && v92[5 * v20] == v109 && v92[6 * v20] == v109 && v92[7 * v20] == v109)
          {
            v110 = *v94;
            if (v94[v20] == v110 && v94[2 * v20] == v110 && v94[3 * v20] == v110 && v94[4 * v20] == v110 && v94[5 * v20] == v110 && v94[6 * v20] == v110 && v94[7 * v20] == v110)
            {
              v111 = v92 + 2;
              v112 = v92[2];
              if (v92[v20 + 2] == v112 && v111[2 * v20] == v112 && v111[3 * v20] == v112 && v111[4 * v20] == v112 && v111[5 * v20] == v112 && v111[6 * v20] == v112 && v111[7 * v20] == v112)
              {
                v113 = v92 + 3;
                v114 = v92[3];
                if (v92[v20 + 3] == v114 && v113[2 * v20] == v114 && v113[3 * v20] == v114 && v113[4 * v20] == v114 && v113[5 * v20] == v114 && v113[6 * v20] == v114 && v113[7 * v20] == v114)
                {
                  v115 = v92 + 4;
                  v116 = v92[4];
                  if (v92[v20 + 4] == v116 && v115[2 * v20] == v116 && v115[3 * v20] == v116 && v115[4 * v20] == v116 && v115[5 * v20] == v116 && v115[6 * v20] == v116 && v115[7 * v20] == v116)
                  {
                    v117 = v92 + 5;
                    v118 = v92[5];
                    if (v92[v20 + 5] == v118 && v117[2 * v20] == v118 && v117[3 * v20] == v118 && v117[4 * v20] == v118 && v117[5 * v20] == v118 && v117[6 * v20] == v118 && v117[7 * v20] == v118)
                    {
                      v119 = v92 + 6;
                      v120 = v92[6];
                      if (v92[v20 + 6] == v120 && v119[2 * v20] == v120 && v119[3 * v20] == v120 && v119[4 * v20] == v120 && v119[5 * v20] == v120 && v119[6 * v20] == v120 && v119[7 * v20] == v120)
                      {
                        v122 = v92[7];
                        v121 = v92 + 7;
                        v89 = v122;
                        if (v121[v20] == v122 && v121[2 * v20] == v89 && v121[3 * v20] == v89 && v121[4 * v20] == v89 && v121[5 * v20] == v89 && v121[6 * v20] == v89)
                        {
                          v91 = v121[7 * v20];
LABEL_388:
                          if (v91 != v89)
                          {
                            goto LABEL_17;
                          }

LABEL_389:
                          ++v18;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v60 = *v26;
          v61 = v26 + 1;
          if (v26[1] == v60 && v26[2] == v60 && v26[3] == v60 && v26[4] == v60 && v26[5] == v60 && v26[6] == v60 && v26[7] == v60)
          {
            v62 = &v26[v20];
            v63 = v26[v20];
            if (v26[v20 + 1] == v63 && v62[2] == v63 && v62[3] == v63 && v62[4] == v63 && v62[5] == v63 && v62[6] == v63 && v62[7] == v63)
            {
              v64 = &v62[v20];
              v65 = *v64;
              if (v64[1] == v65 && v64[2] == v65 && v64[3] == v65 && v64[4] == v65 && v64[5] == v65 && v64[6] == v65 && v64[7] == v65)
              {
                v66 = &v64[v20];
                v67 = *v66;
                if (v66[1] == v67 && v66[2] == v67 && v66[3] == v67 && v66[4] == v67 && v66[5] == v67 && v66[6] == v67 && v66[7] == v67)
                {
                  v68 = &v66[v20];
                  v69 = *v68;
                  if (v68[1] == v69 && v68[2] == v69 && v68[3] == v69 && v68[4] == v69 && v68[5] == v69 && v68[6] == v69 && v68[7] == v69)
                  {
                    v70 = &v68[v20];
                    v71 = *v70;
                    if (v70[1] == v71 && v70[2] == v71 && v70[3] == v71 && v70[4] == v71 && v70[5] == v71 && v70[6] == v71 && v70[7] == v71)
                    {
                      v72 = &v70[v20];
                      v73 = *v72;
                      if (v72[1] == v73 && v72[2] == v73 && v72[3] == v73 && v72[4] == v73 && v72[5] == v73 && v72[6] == v73 && v72[7] == v73)
                      {
                        v74 = &v72[v20];
                        v75 = *v74;
                        if (v74[1] == v75 && v74[2] == v75 && v74[3] == v75 && v74[4] == v75 && v74[5] == v75 && v74[6] == v75 && v74[7] == v75)
                        {
                          goto LABEL_389;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v76 = *v26;
          if (v26[v20] == v76 && v26[2 * v20] == v76 && v26[3 * v20] == v76 && v26[4 * v20] == v76 && v26[5 * v20] == v76 && v26[6 * v20] == v76 && v26[7 * v20] == v76)
          {
            v77 = *v61;
            if (v61[v20] == v77 && v61[2 * v20] == v77 && v61[3 * v20] == v77 && v61[4 * v20] == v77 && v61[5 * v20] == v77 && v61[6 * v20] == v77 && v61[7 * v20] == v77)
            {
              v78 = v26 + 2;
              v79 = v26[2];
              if (v26[v20 + 2] == v79 && v78[2 * v20] == v79 && v78[3 * v20] == v79 && v78[4 * v20] == v79 && v78[5 * v20] == v79 && v78[6 * v20] == v79 && v78[7 * v20] == v79)
              {
                v80 = v26 + 3;
                v81 = v26[3];
                if (v26[v20 + 3] == v81 && v80[2 * v20] == v81 && v80[3 * v20] == v81 && v80[4 * v20] == v81 && v80[5 * v20] == v81 && v80[6 * v20] == v81 && v80[7 * v20] == v81)
                {
                  v82 = v26 + 4;
                  v83 = v26[4];
                  if (v26[v20 + 4] == v83 && v82[2 * v20] == v83 && v82[3 * v20] == v83 && v82[4 * v20] == v83 && v82[5 * v20] == v83 && v82[6 * v20] == v83 && v82[7 * v20] == v83)
                  {
                    v84 = v26 + 5;
                    v85 = v26[5];
                    if (v26[v20 + 5] == v85 && v84[2 * v20] == v85 && v84[3 * v20] == v85 && v84[4 * v20] == v85 && v84[5 * v20] == v85 && v84[6 * v20] == v85 && v84[7 * v20] == v85)
                    {
                      v86 = v26 + 6;
                      v87 = v26[6];
                      if (v26[v20 + 6] == v87 && v86[2 * v20] == v87 && v86[3 * v20] == v87 && v86[4 * v20] == v87 && v86[5 * v20] == v87 && v86[6 * v20] == v87 && v86[7 * v20] == v87)
                      {
                        v90 = v26[7];
                        v88 = v26 + 7;
                        v89 = v90;
                        if (v88[v20] == v90 && v88[2 * v20] == v89 && v88[3 * v20] == v89 && v88[4 * v20] == v89 && v88[5 * v20] == v89 && v88[6 * v20] == v89)
                        {
                          v91 = v88[7 * v20];
                          goto LABEL_388;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_17:
        v25 += 8;
        v24 += 8;
      }

      while (v25 <= v3);
      v16 += ((v3 - 8) >> 3) + 1;
      v23 += 8;
      v15 += 8;
      if (v23 > v4)
      {
        goto LABEL_7;
      }
    }
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
LABEL_7:
  v6 = v17 + v18;
  v7 = (v17 + v18) / v16;
  v8 = *(a3 + 256);
  *(a3 + 8 * v8) = v7;
  LODWORD(v8) = v8 + 1;
  v9 = -v8 < 0;
  v10 = -v8 & 0x1F;
  v11 = v8 & 0x1F;
  if (!v9)
  {
    v11 = -v10;
  }

  *(a3 + 256) = v11;
  v12 = *(a3 + 260);
  if (v12 < 31)
  {
    v13 = (v12 + 1);
  }

  else
  {
    v13 = 32;
  }

  *(a3 + 260) = v13;
  if (v7 < 0.8)
  {
    return 0;
  }

  if (v17 == v16)
  {
    return 1;
  }

  if (v13 < 1)
  {
    v124 = 0.0;
    goto LABEL_401;
  }

  if (v13 < 4)
  {
    v123 = 0;
    v124 = 0.0;
LABEL_399:
    v127 = v13 - v123;
    v128 = (a3 + 8 * v123);
    do
    {
      v129 = *v128++;
      v124 = v124 + v129;
      --v127;
    }

    while (v127);
    goto LABEL_401;
  }

  v123 = v13 & 0x7FFFFFFC;
  v125 = (a3 + 16);
  v124 = 0.0;
  v126 = v123;
  do
  {
    v124 = v124 + *(v125 - 2) + *(v125 - 1) + *v125 + v125[1];
    v125 += 4;
    v126 -= 4;
  }

  while (v126);
  if (v123 != v13)
  {
    goto LABEL_399;
  }

LABEL_401:
  v130 = v124 / v13;
  if (v130 < 0.95)
  {
    return 0;
  }

  if (v16 - v6 < 0)
  {
    return 1;
  }

  return v130 > 1.01;
}

void av1_set_mb_ssim_rdmult_scaling(uint64_t a1)
{
  v2 = *(a1 + 239588);
  v1 = *(a1 + 239592);
  v3 = v1 + 3;
  if (v1 < -3)
  {
    v3 = v1 + 6;
  }

  v4 = v2 + 3;
  if (v2 < -3)
  {
    v4 = v2 + 6;
  }

  if (v2 >= 1 && v1 >= 1)
  {
    v64 = (a1 + 239588);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 265688);
    v63 = (a1 + 86500);
    v53 = *(v10 + 40);
    v11 = (v3 >> 2);
    v12 = v4 >> 2;
    v62 = *(v10 + 32);
    v52 = 4 * v62;
    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    v47 = v12;
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    v48 = v11;
    v49 = v13;
    v15 = 4 * v13;
    v51 = 8 * v11;
    v16 = 0.0;
    v17 = *(a1 + 239592);
    v50 = v17;
    v18 = v17;
    v54 = v14;
    do
    {
      v19 = v7;
      v20 = 0;
      v55 = v9;
      v56 = v8;
      v21 = 4 * v8;
      v59 = v53 + v52 * v9;
      v60 = v9 | 2;
      v61 = 4 * v8 + 4;
      v57 = v7;
      v58 = v53 + (v52 * (v9 | 2));
      v22 = 8;
      do
      {
        v26 = 0.0;
        if (v21 >= v2 || v20 >= v18)
        {
          v23 = 0.0;
        }

        else
        {
          v27 = v20 + 4;
          v23 = 0.0;
          if (v20 < v17)
          {
            v28 = av1_ss_size_lookup[2 * *v63 + 12 + v63[1]];
            v65[0] = 0;
            v26 = (((*(*a1 + (v28 << 7) + 51416))(v59 + v22 - 8, v62, &AV1_VAR_OFFS, 0, v65) + (1 << num_pels_log2_lookup_8[v28] >> 1)) >> num_pels_log2_lookup_8[v28]);
            v29 = v64;
            v17 = v64[1];
            v23 = 1.0;
            if (v20 + 2 < v27 && v20 + 2 < v17)
            {
              v30 = av1_ss_size_lookup[2 * *v63 + 12 + v63[1]];
              v65[0] = 0;
              v31 = (*(*a1 + (v30 << 7) + 51416))(v59 + v22, v62, &AV1_VAR_OFFS, 0, v65);
              v29 = v64;
              v26 = v26 + ((v31 + (1 << num_pels_log2_lookup_8[v30] >> 1)) >> num_pels_log2_lookup_8[v30]);
              v17 = v64[1];
              v23 = 2.0;
            }

            v2 = *v29;
          }

          if (v60 >= v61 || v60 >= v2 || v20 >= v17)
          {
            v18 = v17;
          }

          else
          {
            v32 = av1_ss_size_lookup[2 * *v63 + 12 + v63[1]];
            v65[0] = 0;
            v26 = v26 + (((*(*a1 + (v32 << 7) + 51416))(v58 + v22 - 8, v62, &AV1_VAR_OFFS, 0, v65) + (1 << num_pels_log2_lookup_8[v32] >> 1)) >> num_pels_log2_lookup_8[v32]);
            v23 = v23 + 1.0;
            v33 = v64;
            v18 = v64[1];
            if (v20 + 2 < v27 && v20 + 2 < v18)
            {
              v34 = av1_ss_size_lookup[2 * *v63 + 12 + v63[1]];
              v65[0] = 0;
              v35 = (*(*a1 + (v34 << 7) + 51416))(v58 + v22, v62, &AV1_VAR_OFFS, 0, v65);
              v33 = v64;
              v26 = v26 + ((v35 + (1 << num_pels_log2_lookup_8[v34] >> 1)) >> num_pels_log2_lookup_8[v34]);
              v23 = v23 + 1.0;
              v18 = v64[1];
            }

            v2 = *v33;
            v17 = v18;
          }
        }

        v24 = (1.0 - exp(v26 / v23 * -0.0021489)) * 67.035434 + 17.492222;
        v25 = *(a1 + 637120);
        *(v25->f64 + v19) = v24;
        v16 = v16 + log(v24);
        v20 += 4;
        v19 += 8;
        v22 += 16;
      }

      while (v15 != v20);
      v8 = v56 + 1;
      v9 = v55 + 4;
      v7 = v57 + v51;
    }

    while (v56 + 1 != v54);
    v36 = exp(v16 / (v47 * v48));
    v37 = 0;
    v38 = vdupq_lane_s64(*&v36, 0);
    v39 = v25 + 1;
    v40 = 8 * v48;
    do
    {
      if (v50 >= 13)
      {
        v42 = v49 & 0x1FFFFFFC;
        v43 = v39;
        do
        {
          v44 = vdivq_f64(*v43, v38);
          v43[-1] = vdivq_f64(v43[-1], v38);
          *v43 = v44;
          v43 += 2;
          v42 -= 4;
        }

        while (v42);
        v41 = v49 & 0x1FFFFFFC;
        if (v41 == v49)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v41 = 0;
      }

      v45 = v49 - v41;
      v46 = &v25->f64[v41];
      do
      {
        *v46 = *v46 / v36;
        ++v46;
        --v45;
      }

      while (v45);
LABEL_38:
      ++v37;
      v39 = (v39 + v40);
      v25 = (v25 + v40);
    }

    while (v37 != v54);
  }
}

void *av1_save_all_coding_context(uint64_t *a1)
{
  v2 = a1 + 29882;
  v3 = *(a1 + 16381);
  *(a1 + 48401) = *(a1 + 16380);
  *(a1 + 48403) = v3;
  memcpy(a1 + 48405, a1 + 32814, 0x108uLL);
  result = memcpy(a1 + 48462, a1 + 48549, 0x138uLL);
  v5 = *a1;
  v6 = (*a1 + 74112);
  *(a1 + 48501) = *v6;
  v8 = v6[2];
  v7 = v6[3];
  v9 = v6[1];
  *(a1 + 388068) = *(v6 + 60);
  *(a1 + 48505) = v8;
  *(a1 + 48507) = v7;
  *(a1 + 48503) = v9;
  if ((*v2 & 0xFD) != 0)
  {
    v10 = *(a1 + 267128);
    v11 = a1[33383];
    if (v11)
    {
      --*v11;
      a1[33383] = 0;
    }

    v12 = a1[33384];
    if (v12)
    {
      --*v12;
      a1[33384] = 0;
    }

    v13 = a1[33385];
    if (v13)
    {
      --*v13;
      a1[33385] = 0;
    }

    v14 = a1[33386];
    if (*(a1 + 66402) || *(v5 + 23172) || *(a1 + 265632) != 1 || *(a1 + 66208))
    {
      v15 = 1;
    }

    else
    {
      v19 = *(v5 + 50968);
      v15 = 1;
      if (!v19 && v14)
      {
        v20 = a1[*(v2 + 63) + 29934];
        v21 = v14[316] == *(v20 + 1264) && v14[318] == *(v20 + 1272);
        v15 = v10 | v21;
      }
    }

    if (v14 && (v15 & 1) != 0)
    {
      --*v14;
      a1[33386] = 0;
    }

    v16 = a1[33387];
    if (v16)
    {
      --*v16;
      a1[33387] = 0;
    }

    v17 = a1[33388];
    if (v17)
    {
      --*v17;
      a1[33388] = 0;
    }

    v18 = a1[33389];
    if (v18)
    {
      --*v18;
      a1[33389] = 0;
    }
  }

  return result;
}

uint64_t av1_alloc_txb_buf(uint64_t a1)
{
  v1 = (a1 + 239024);
  v2 = *(a1 + 263736);
  v3 = ((*(a1 + 239588) + ~(-1 << *(v2 + 36))) >> *(v2 + 36)) * ((*(a1 + 239592) + ~(-1 << *(v2 + 36))) >> *(v2 + 36));
  v4 = *(v2 + 77);
  if (*(v2 + 77))
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = 1 << num_pels_log2_lookup_11[*(v2 + 28)];
  v7 = v6 >> (*(v2 + 100) + *(v2 + 96));
  v8 = v3;
  v9 = v6 + v7 * (v5 - 1);
  if (!is_mul_ok(v9, v3))
  {
    aom_internal_error(*(a1 + 239104), 1, "A multiplication would overflow size_t");
  }

  if (*v1)
  {
    free(*(*v1 - 8));
  }

  *v1 = 0;
  v10 = v1[1];
  if (v10)
  {
    free(*(v10 - 8));
  }

  v1[1] = 0;
  v11 = v1[2];
  if (v11)
  {
    free(*(v11 - 8));
  }

  v1[2] = 0;
  v12 = v1[3];
  if (v12)
  {
    free(*(v12 - 8));
  }

  v13 = v9 * v8;
  v1[3] = 0;
  if ((72 * v8) <= 0x1FFFFFFE9 && (v14 = malloc_type_malloc(72 * v8 + 23, 0x5F484EBFuLL)) != 0)
  {
    v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v15 - 8) = v14;
    *v1 = v15;
    if (v15)
    {
      if (!(v13 >> 62))
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else
  {
    *v1 = 0;
  }

  aom_internal_error(v1[10], 2, "Failed to allocate cpi->coeff_buffer_base");
  if (!(v13 >> 62))
  {
LABEL_18:
    v16 = 4 * v13;
    if (4 * v13 > 0x1FFFFFFD9)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

LABEL_22:
  aom_internal_error(v1[10], 1, "A multiplication would overflow size_t");
  v16 = 4 * v13;
  if (4 * v13 > 0x1FFFFFFD9)
  {
LABEL_28:
    v1[1] = 0;
    goto LABEL_29;
  }

LABEL_23:
  v17 = malloc_type_malloc(v16 + 39, 0x5F484EBFuLL);
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v18 - 8) = v17;
  v1[1] = v18;
  if (v18)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_26:
    v19 = (v13 >> 3) & 0xFFFFFFFFFFFFFFFLL;
    if (v19 > 0x1FFFFFFE9)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_29:
  aom_internal_error(v1[10], 2, "Failed to allocate coeff_buf_pool->tcoeff");
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  aom_internal_error(v1[10], 1, "A multiplication would overflow size_t");
  v19 = (v13 >> 3) & 0xFFFFFFFFFFFFFFFLL;
  if (v19 > 0x1FFFFFFE9)
  {
LABEL_35:
    v1[2] = 0;
    goto LABEL_36;
  }

LABEL_31:
  v20 = malloc_type_malloc(v19 + 23, 0x5F484EBFuLL);
  if (!v20)
  {
    goto LABEL_35;
  }

  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v21 - 8) = v20;
  v1[2] = v21;
  if (v21)
  {
    if (v13 > 0x1FFFFFFE9FLL)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_36:
  aom_internal_error(v1[10], 2, "Failed to allocate coeff_buf_pool->eobs");
  if (v13 > 0x1FFFFFFE9FLL)
  {
LABEL_41:
    v1[3] = 0;
    goto LABEL_42;
  }

LABEL_37:
  result = malloc_type_malloc((v13 >> 4) + 23, 0x5F484EBFuLL);
  if (!result)
  {
    goto LABEL_41;
  }

  v23 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v23 - 8) = result;
  v1[3] = v23;
  if (v23)
  {
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = aom_internal_error(v1[10], 2, "Failed to allocate coeff_buf_pool->entropy_ctx");
  if (v8 < 1)
  {
    return result;
  }

LABEL_43:
  v25 = v1[2];
  v24 = v1[3];
  v27 = *v1;
  v26 = v1[1];
  v28 = v6 + 15;
  if (v6 >= 0)
  {
    v28 = v6;
  }

  v29 = v28 >> 4;
  if (v7 >= 0)
  {
    v30 = v7;
  }

  else
  {
    v30 = v7 + 15;
  }

  if (v4)
  {
    v31 = (v27 + 24);
    do
    {
      v31[3] = v24;
      v24 += v29;
      *(v31 - 3) = v26;
      *v31 = v25;
      v31 += 9;
      v26 += 4 * v6;
      v25 += 2 * v29;
      --v8;
    }

    while (v8);
  }

  else
  {
    v32 = 0;
    v33 = v30 >> 4;
    result = v27 + 32;
    do
    {
      v34 = (v27 + 72 * v32);
      *v34 = v26;
      v34[3] = v25;
      v34[6] = v24;
      v26 += 4 * v6;
      v25 += 2 * v29;
      v24 += v29;
      v35 = result;
      v36 = v5 - 1;
      do
      {
        v35[3] = v24;
        v24 += v33;
        *v35 = v25;
        v25 += 2 * v33;
        *(v35 - 3) = v26;
        ++v35;
        v26 += 4 * v7;
        --v36;
      }

      while (v36);
      ++v32;
      result += 72;
    }

    while (v32 != v8);
  }

  return result;
}

_DWORD *av1_write_coeffs_txb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v13 = v12;
  v14 = v3;
  v354 = *MEMORY[0x277D85DE8];
  v349 = v15 != 0;
  v350 = v15;
  v16 = *(v12[2095] + 2 * v349 + 78) >> 4;
  v339 = v12[2098];
  v17 = v339 + 8 * v15;
  v19 = *(*(v17 + 24) + 2 * v16 + 2 * v18);
  v334 = *(v17 + 48) + v16;
  v335 = v18;
  v20 = v5;
  v341 = txsize_sqr_up_map_3[v5];
  v342 = txsize_sqr_map_4[v5];
  v21 = v12[1383];
  v347 = (v342 + v341 + 1) >> 1;
  v22 = (v21 + 78 * v347 + 6 * (*(v334 + v18) & 0xF));
  if (*(*(v17 + 24) + 2 * v16 + 2 * v18))
  {
    v23 = *v22;
    v24 = *(v4 + 32);
    v25 = *(v4 + 40);
    v26 = v25 >> 8;
    goto LABEL_3;
  }

  v23 = v22[1];
  v24 = *(v4 + 32);
  v25 = *(v4 + 40);
  v26 = v25 >> 8;
  if (*v22 < 0)
  {
LABEL_3:
    v27 = (v23 >> 6) * v26;
    if (v19)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    result = od_ec_enc_normalize((v4 + 16), v24, v25 + 4 * v28 - (v27 >> 1));
    if (!*(v11 + 48))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v40 = ((v26 * (*v22 >> 6)) >> 1) + 4;
  result = od_ec_enc_normalize((v4 + 16), v24 + v25 - v40, v40 - ((v26 * (v23 >> 6)) >> 1));
  if (!*(v11 + 48))
  {
    goto LABEL_12;
  }

LABEL_7:
  v30 = v22[2];
  v31 = (v30 >> 4) + 4;
  v32 = *v22;
  v33 = v32 - (v32 >> v31);
  v34 = v32 + ((0x8000 - v32) >> v31);
  if (v19)
  {
    LOWORD(v34) = v33;
  }

  *v22 = v34;
  if (v30 < 0x20)
  {
    LOWORD(v30) = v30 + 1;
  }

  v22[2] = v30;
LABEL_12:
  if (v19)
  {
    v35 = *v13[1035];
    v36 = *(v35 + 167);
    if (*(v13 + (v36 & 7) + 2777) || ((0x61810uLL >> v20) & 1) != 0)
    {
      v39 = 0;
      v37 = 0;
      if (v350)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v350)
      {
        if ((v36 & 0x80) != 0 || *(v35 + 16) > 0)
        {
          v37 = *(v13[1041] + (v8 << HIDWORD(v13[326 * v349 + 54])) + *(v13 + 2084) * (v10 << LODWORD(v13[326 * v349 + 55])));
          if ((v36 & 0x80) != 0)
          {
            v38 = 1;
            if ((0x18608uLL >> v20))
            {
              goto LABEL_35;
            }
          }

          else
          {
            v38 = *(v35 + 16) > 0;
            if ((0x18608uLL >> v20))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v38 = 0;
          v37 = intra_mode_to_tx_type__intra_mode_to_tx_type_2[get_uv_mode_uv2y_5[*(v35 + 3)]];
          if ((0x18608uLL >> v20))
          {
            goto LABEL_35;
          }
        }

        if (*(v14 + 501))
        {
          if (v38)
          {
            LOBYTE(v38) = 1;
          }

          else
          {
            LOBYTE(v38) = 2;
          }
        }

        else
        {
          LOBYTE(v38) = av1_ext_tx_set_lookup_4[2 * v38 + ((0x60604uLL >> v20) & 1)];
        }

LABEL_35:
        if (!av1_ext_tx_used_2[16 * v38 + v37])
        {
          v37 = 0;
        }

LABEL_37:
        v348 = (v19 - 1);
        LODWORD(v41) = v348 >> 5;
        if (v348 >> 5 >= 0x10)
        {
          v41 = 16;
        }

        else
        {
          v41 = v41;
        }

        v42 = &eob_to_pos_large + v41;
        if (v19 <= 0x20)
        {
          v42 = &eob_to_pos_small + v19;
        }

        v43 = *v42;
        v44 = av1_eob_group_start[v43];
        v344 = v20;
        v45 = txsize_log2_minus4_0[v20];
        v46 = v37;
        v346 = tx_type_to_class_0[v37];
        v47 = v37 > 9;
        v48 = (v43 - 1);
        v337 = v46;
        if (v45 <= 2)
        {
          if (v45)
          {
            if (v45 != 1)
            {
              v49 = (v21 + 32 * v349 + 16 * v47 + 1070);
              if (v43 <= 1)
              {
                v52 = v49[v48];
                v53 = *(v11 + 32);
                v54 = *(v11 + 40);
                v55 = v54 >> 8;
              }

              else
              {
                v50 = &v49[v48];
                v51 = *(v50 - 1);
                v52 = *v50;
                v53 = *(v11 + 32);
                v54 = *(v11 + 40);
                v55 = v54 >> 8;
                if ((v51 & 0x80000000) == 0)
                {
                  v56 = ((v55 * (v51 >> 6)) >> 1) - 4 * v43 + 32;
                  v53 += v54 - v56;
                  v57 = 4 * v43 - ((v55 * (v52 >> 6)) >> 1) + v56;
                  goto LABEL_104;
                }
              }

              v57 = v54 + 4 * v43 - (((v52 >> 6) * v55) >> 1);
LABEL_104:
              od_ec_enc_normalize((v11 + 16), v53, v57 - 28);
              if (!*(v11 + 48))
              {
                goto LABEL_192;
              }

              v112 = v49 + 7;
              v113 = v49[7];
              v114 = (v113 >> 4) + 5;
              v142 = *v49;
              if ((v43 - 1) <= 0)
              {
                *v49 = v142 - (v142 >> v114);
                v143 = v49[1];
              }

              else
              {
                v116 = v48 << 56;
                *v49 = v142 + ((0x8000 - v142) >> v114);
                v143 = v49[1];
                if (v48 << 56 != 0x100000000000000)
                {
                  v49[1] = v143 + ((0x8000 - v143) >> v114);
                  v144 = v49[2];
                  if ((v43 - 1) > 2)
                  {
                    v49[2] = v144 + ((0x8000 - v144) >> v114);
                    v145 = v49[3];
                    if (v116 != 0x300000000000000)
                    {
                      v49[3] = v145 + ((0x8000 - v145) >> v114);
                      v146 = v49[4];
                      if ((v43 - 1) > 4)
                      {
                        v147 = v49[5];
                        v120 = v49 + 5;
                        v119 = v147;
                        *(v120 - 1) = v146 + ((0x8000 - v146) >> v114);
                        v122 = 0x500000000000000;
                        goto LABEL_76;
                      }

                      goto LABEL_167;
                    }

LABEL_166:
                    v49[3] = v145 - (v145 >> v114);
                    v146 = v49[4];
LABEL_167:
                    v172 = v146 - (v146 >> v114);
                    v176 = v49[5];
                    v120 = v49 + 5;
                    v119 = v176;
                    goto LABEL_187;
                  }

LABEL_165:
                  v49[2] = v144 - (v144 >> v114);
                  v145 = v49[3];
                  goto LABEL_166;
                }
              }

              v49[1] = v143 - (v143 >> v114);
              v144 = v49[2];
              goto LABEL_165;
            }

            v94 = (v21 + 28 * v349 + 14 * v47 + 1014);
            if (v43 <= 1)
            {
              v97 = v94[v48];
              v98 = *(v11 + 32);
              v99 = *(v11 + 40);
              v100 = v99 >> 8;
            }

            else
            {
              v95 = &v94[v48];
              v96 = *(v95 - 1);
              v97 = *v95;
              v98 = *(v11 + 32);
              v99 = *(v11 + 40);
              v100 = v99 >> 8;
              if ((v96 & 0x80000000) == 0)
              {
                v101 = ((v100 * (v96 >> 6)) >> 1) - 4 * v43 + 28;
                v98 += v99 - v101;
                v102 = 4 * v43 - ((v100 * (v97 >> 6)) >> 1) + v101;
                goto LABEL_126;
              }
            }

            v102 = v99 + 4 * v43 - (((v97 >> 6) * v100) >> 1);
LABEL_126:
            od_ec_enc_normalize((v11 + 16), v98, v102 - 24);
            if (!*(v11 + 48))
            {
              goto LABEL_192;
            }

            v112 = v94 + 6;
            v113 = v94[6];
            v114 = (v113 >> 4) + 5;
            v158 = *v94;
            if ((v43 - 1) <= 0)
            {
              *v94 = v158 - (v158 >> v114);
              v159 = v94[1];
            }

            else
            {
              *v94 = v158 + ((0x8000 - v158) >> v114);
              v159 = v94[1];
              if (v48 << 56 != 0x100000000000000)
              {
                v94[1] = v159 + ((0x8000 - v159) >> v114);
                v160 = v94[2];
                if ((v43 - 1) > 2)
                {
                  v94[2] = v160 + ((0x8000 - v160) >> v114);
                  v161 = v94[3];
                  if (v48 << 56 != 0x300000000000000)
                  {
                    v162 = v94[4];
                    v120 = v94 + 4;
                    v119 = v162;
                    *(v120 - 1) = v161 + ((0x8000 - v161) >> v114);
                    if ((v43 - 1) <= 4)
                    {
                      goto LABEL_188;
                    }

LABEL_132:
                    v123 = 0x8000 - v119;
                    goto LABEL_133;
                  }

LABEL_179:
                  v172 = v161 - (v161 >> v114);
                  v178 = v94[4];
                  v120 = v94 + 4;
                  v119 = v178;
                  goto LABEL_187;
                }

LABEL_178:
                v94[2] = v160 - (v160 >> v114);
                v161 = v94[3];
                goto LABEL_179;
              }
            }

            v94[1] = v159 - (v159 >> v114);
            v160 = v94[2];
            goto LABEL_178;
          }

          v67 = (v21 + 24 * v349 + 12 * v47 + 966);
          if (v43 <= 1)
          {
            v70 = v67[v48];
            v71 = *(v11 + 32);
            v72 = *(v11 + 40);
            v73 = v72 >> 8;
          }

          else
          {
            v68 = &v67[v48];
            v69 = *(v68 - 1);
            v70 = *v68;
            v71 = *(v11 + 32);
            v72 = *(v11 + 40);
            v73 = v72 >> 8;
            if ((v69 & 0x80000000) == 0)
            {
              v74 = ((v73 * (v69 >> 6)) >> 1) - 4 * v43 + 24;
              v71 += v72 - v74;
              v75 = 4 * v43 - ((v73 * (v70 >> 6)) >> 1) + v74;
              goto LABEL_71;
            }
          }

          v75 = v72 + 4 * v43 - (((v70 >> 6) * v73) >> 1);
LABEL_71:
          od_ec_enc_normalize((v11 + 16), v71, v75 - 20);
          if (!*(v11 + 48))
          {
            goto LABEL_192;
          }

          v112 = v67 + 5;
          v113 = v67[5];
          v114 = (v113 >> 4) + 5;
          v115 = *v67;
          if ((v43 - 1) <= 0)
          {
            *v67 = v115 - (v115 >> v114);
            v117 = v67[1];
          }

          else
          {
            v116 = v48 << 56;
            *v67 = v115 + ((0x8000 - v115) >> v114);
            v117 = v67[1];
            if (v48 << 56 != 0x100000000000000)
            {
              v67[1] = v117 + ((0x8000 - v117) >> v114);
              v118 = v67[2];
              if ((v43 - 1) > 2)
              {
                v121 = v67[3];
                v120 = v67 + 3;
                v119 = v121;
                *(v120 - 1) = v118 + ((0x8000 - v118) >> v114);
                v122 = 0x300000000000000;
                goto LABEL_76;
              }

              goto LABEL_147;
            }
          }

          v67[1] = v117 - (v117 >> v114);
          v118 = v67[2];
LABEL_147:
          v172 = v118 - (v118 >> v114);
          v173 = v67[3];
          v120 = v67 + 3;
          v119 = v173;
LABEL_187:
          *(v120 - 1) = v172;
          goto LABEL_188;
        }

        if (v45 != 3)
        {
          if (v45 != 4)
          {
            if (v45 == 5)
            {
              v58 = (v21 + 44 * v349 + 22 * v47 + 1286);
              if (v43 <= 1)
              {
                v61 = v58[v48];
                v62 = *(v11 + 32);
                v63 = *(v11 + 40);
                v64 = v63 >> 8;
              }

              else
              {
                v59 = &v58[v48];
                v60 = *(v59 - 1);
                v61 = *v59;
                v62 = *(v11 + 32);
                v63 = *(v11 + 40);
                v64 = v63 >> 8;
                if ((v60 & 0x80000000) == 0)
                {
                  v65 = ((v64 * (v60 >> 6)) >> 1) - 4 * v43 + 44;
                  v62 += v63 - v65;
                  v66 = 4 * v43 - ((v64 * (v61 >> 6)) >> 1) + v65;
                  goto LABEL_113;
                }
              }

              v66 = v63 + 4 * v43 - (((v61 >> 6) * v64) >> 1);
LABEL_113:
              od_ec_enc_normalize((v11 + 16), v62, v66 - 40);
              if (!*(v11 + 48))
              {
                goto LABEL_192;
              }

              v112 = v58 + 10;
              v113 = v58[10];
              v114 = (v113 >> 4) + 5;
              v148 = *v58;
              if ((v43 - 1) <= 0)
              {
                *v58 = v148 - (v148 >> v114);
                v150 = v58[1];
              }

              else
              {
                v149 = v48 << 56;
                *v58 = v148 + ((0x8000 - v148) >> v114);
                v150 = v58[1];
                if (v48 << 56 != 0x100000000000000)
                {
                  v58[1] = v150 + ((0x8000 - v150) >> v114);
                  v151 = v58[2];
                  if ((v43 - 1) > 2)
                  {
                    v58[2] = v151 + ((0x8000 - v151) >> v114);
                    v152 = v58[3];
                    if (v149 != 0x300000000000000)
                    {
                      v58[3] = v152 + ((0x8000 - v152) >> v114);
                      v153 = v58[4];
                      if ((v43 - 1) > 4)
                      {
                        v58[4] = v153 + ((0x8000 - v153) >> v114);
                        v154 = v58[5];
                        if (v149 != 0x500000000000000)
                        {
                          v58[5] = v154 + ((0x8000 - v154) >> v114);
                          v155 = v58[6];
                          if ((v43 - 1) > 6)
                          {
                            v58[6] = v155 + ((0x8000 - v155) >> v114);
                            v156 = v58[7];
                            if (v149 != 0x700000000000000)
                            {
                              v157 = v58[8];
                              v120 = v58 + 8;
                              v119 = v157;
                              *(v120 - 1) = v156 + ((0x8000 - v156) >> v114);
                              if ((v43 - 1) <= 8)
                              {
                                goto LABEL_188;
                              }

                              goto LABEL_132;
                            }

LABEL_175:
                            v172 = v156 - (v156 >> v114);
                            v177 = v58[8];
                            v120 = v58 + 8;
                            v119 = v177;
                            goto LABEL_187;
                          }

LABEL_174:
                          v58[6] = v155 - (v155 >> v114);
                          v156 = v58[7];
                          goto LABEL_175;
                        }

LABEL_173:
                        v58[5] = v154 - (v154 >> v114);
                        v155 = v58[6];
                        goto LABEL_174;
                      }

LABEL_172:
                      v58[4] = v153 - (v153 >> v114);
                      v154 = v58[5];
                      goto LABEL_173;
                    }

LABEL_171:
                    v58[3] = v152 - (v152 >> v114);
                    v153 = v58[4];
                    goto LABEL_172;
                  }

LABEL_170:
                  v58[2] = v151 - (v151 >> v114);
                  v152 = v58[3];
                  goto LABEL_171;
                }
              }

              v58[1] = v150 - (v150 >> v114);
              v151 = v58[2];
              goto LABEL_170;
            }

            v85 = (v21 + 48 * v349 + 24 * v47 + 1374);
            if (v43 <= 1)
            {
              v88 = v85[v48];
              v89 = *(v11 + 32);
              v90 = *(v11 + 40);
              v91 = v90 >> 8;
            }

            else
            {
              v86 = &v85[v48];
              v87 = *(v86 - 1);
              v88 = *v86;
              v89 = *(v11 + 32);
              v90 = *(v11 + 40);
              v91 = v90 >> 8;
              if ((v87 & 0x80000000) == 0)
              {
                v92 = ((v91 * (v87 >> 6)) >> 1) - 4 * v43 + 48;
                v89 += v90 - v92;
                v93 = 4 * v43 - ((v91 * (v88 >> 6)) >> 1) + v92;
                goto LABEL_91;
              }
            }

            v93 = v90 + 4 * v43 - (((v88 >> 6) * v91) >> 1);
LABEL_91:
            od_ec_enc_normalize((v11 + 16), v89, v93 - 44);
            if (!*(v11 + 48))
            {
              goto LABEL_192;
            }

            v112 = v85 + 11;
            v113 = v85[11];
            v114 = (v113 >> 4) + 5;
            v132 = *v85;
            if ((v43 - 1) <= 0)
            {
              *v85 = v132 - (v132 >> v114);
              v133 = v85[1];
            }

            else
            {
              v116 = v48 << 56;
              *v85 = v132 + ((0x8000 - v132) >> v114);
              v133 = v85[1];
              if (v48 << 56 != 0x100000000000000)
              {
                v85[1] = v133 + ((0x8000 - v133) >> v114);
                v134 = v85[2];
                if ((v43 - 1) > 2)
                {
                  v85[2] = v134 + ((0x8000 - v134) >> v114);
                  v135 = v85[3];
                  if (v116 != 0x300000000000000)
                  {
                    v85[3] = v135 + ((0x8000 - v135) >> v114);
                    v136 = v85[4];
                    if ((v43 - 1) > 4)
                    {
                      v85[4] = v136 + ((0x8000 - v136) >> v114);
                      v137 = v85[5];
                      if (v116 != 0x500000000000000)
                      {
                        v85[5] = v137 + ((0x8000 - v137) >> v114);
                        v138 = v85[6];
                        if ((v43 - 1) > 6)
                        {
                          v85[6] = v138 + ((0x8000 - v138) >> v114);
                          v139 = v85[7];
                          if (v116 != 0x700000000000000)
                          {
                            v85[7] = v139 + ((0x8000 - v139) >> v114);
                            v140 = v85[8];
                            if ((v43 - 1) > 8)
                            {
                              v141 = v85[9];
                              v120 = v85 + 9;
                              v119 = v141;
                              *(v120 - 1) = v140 + ((0x8000 - v140) >> v114);
                              v122 = 0x900000000000000;
                              goto LABEL_76;
                            }

                            goto LABEL_162;
                          }

LABEL_161:
                          v85[7] = v139 - (v139 >> v114);
                          v140 = v85[8];
LABEL_162:
                          v172 = v140 - (v140 >> v114);
                          v175 = v85[9];
                          v120 = v85 + 9;
                          v119 = v175;
                          goto LABEL_187;
                        }

LABEL_160:
                        v85[6] = v138 - (v138 >> v114);
                        v139 = v85[7];
                        goto LABEL_161;
                      }

LABEL_159:
                      v85[5] = v137 - (v137 >> v114);
                      v138 = v85[6];
                      goto LABEL_160;
                    }

LABEL_158:
                    v85[4] = v136 - (v136 >> v114);
                    v137 = v85[5];
                    goto LABEL_159;
                  }

LABEL_157:
                  v85[3] = v135 - (v135 >> v114);
                  v136 = v85[4];
                  goto LABEL_158;
                }

LABEL_156:
                v85[2] = v134 - (v134 >> v114);
                v135 = v85[3];
                goto LABEL_157;
              }
            }

            v85[1] = v133 - (v133 >> v114);
            v134 = v85[2];
            goto LABEL_156;
          }

          v103 = (v21 + 40 * v349 + 20 * v47 + 1206);
          if (v43 <= 1)
          {
            v106 = v103[v48];
            v107 = *(v11 + 32);
            v108 = *(v11 + 40);
            v109 = v108 >> 8;
          }

          else
          {
            v104 = &v103[v48];
            v105 = *(v104 - 1);
            v106 = *v104;
            v107 = *(v11 + 32);
            v108 = *(v11 + 40);
            v109 = v108 >> 8;
            if ((v105 & 0x80000000) == 0)
            {
              v110 = ((v109 * (v105 >> 6)) >> 1) - 4 * v43 + 40;
              v107 += v108 - v110;
              v111 = 4 * v43 - ((v109 * (v106 >> 6)) >> 1) + v110;
              goto LABEL_136;
            }
          }

          v111 = v108 + 4 * v43 - (((v106 >> 6) * v109) >> 1);
LABEL_136:
          od_ec_enc_normalize((v11 + 16), v107, v111 - 36);
          if (!*(v11 + 48))
          {
            goto LABEL_192;
          }

          v112 = v103 + 9;
          v113 = v103[9];
          v114 = (v113 >> 4) + 5;
          v164 = *v103;
          if ((v43 - 1) <= 0)
          {
            *v103 = v164 - (v164 >> v114);
            v165 = v103[1];
          }

          else
          {
            v116 = v48 << 56;
            *v103 = v164 + ((0x8000 - v164) >> v114);
            v165 = v103[1];
            if (v48 << 56 != 0x100000000000000)
            {
              v103[1] = v165 + ((0x8000 - v165) >> v114);
              v166 = v103[2];
              if ((v43 - 1) > 2)
              {
                v103[2] = v166 + ((0x8000 - v166) >> v114);
                v167 = v103[3];
                if (v116 != 0x300000000000000)
                {
                  v103[3] = v167 + ((0x8000 - v167) >> v114);
                  v168 = v103[4];
                  if ((v43 - 1) > 4)
                  {
                    v103[4] = v168 + ((0x8000 - v168) >> v114);
                    v169 = v103[5];
                    if (v116 != 0x500000000000000)
                    {
                      v103[5] = v169 + ((0x8000 - v169) >> v114);
                      v170 = v103[6];
                      if ((v43 - 1) > 6)
                      {
                        v171 = v103[7];
                        v120 = v103 + 7;
                        v119 = v171;
                        *(v120 - 1) = v170 + ((0x8000 - v170) >> v114);
                        v122 = 0x700000000000000;
LABEL_76:
                        if (v116 != v122)
                        {
                          v123 = 0x8000 - v119;
LABEL_133:
                          v163 = v119 + (v123 >> v114);
LABEL_189:
                          *v120 = v163;
                          if (v113 < 0x20)
                          {
                            LOWORD(v113) = v113 + 1;
                          }

                          *v112 = v113;
LABEL_192:
                          v332 = v21;
                          if ((v43 - 3) > 8)
                          {
                            goto LABEL_217;
                          }

                          v180 = av1_eob_offset_bits[v43];
                          v181 = v19 - v44;
                          v182 = ((v19 - v44) >> (av1_eob_offset_bits[v43] - 1)) & 1;
                          v183 = (v332 + 108 * v347 + 54 * v349 + 6 * (v43 - 3) + 390);
                          if (v182)
                          {
                            v188 = &v183[v182];
                            v189 = *(v188 - 1);
                            v184 = *v188;
                            v185 = *(v11 + 32);
                            v186 = *(v11 + 40);
                            v187 = v186 >> 8;
                            if ((v189 & 0x80000000) == 0)
                            {
                              v190 = ((v187 * (v189 >> 6)) >> 1) + 4;
                              od_ec_enc_normalize((v11 + 16), v185 + v186 - v190, v190 - ((v187 * (v184 >> 6)) >> 1));
                              if (*(v11 + 48))
                              {
LABEL_199:
                                v191 = *(v332 + 108 * v347 + 54 * v349 + 6 * (v43 - 3) + 394);
                                v192 = (v191 >> 4) + 4;
                                v193 = *v183;
                                if (v182)
                                {
                                  v194 = v193 + ((0x8000 - v193) >> v192);
                                }

                                else
                                {
                                  v194 = v193 - (v193 >> v192);
                                }

                                *v183 = v194;
                                if (v191 < 0x20)
                                {
                                  LOWORD(v191) = v191 + 1;
                                }

                                *(v332 + 108 * v347 + 54 * v349 + 6 * (v43 - 3) + 394) = v191;
                              }

LABEL_205:
                              if (v43 != 3)
                              {
                                v195 = v180 - 2;
                                if (v180 <= 2)
                                {
                                  v196 = 2;
                                }

                                else
                                {
                                  v196 = v180;
                                }

                                v197 = v196 - 1;
                                do
                                {
                                  v198 = *(v11 + 40);
                                  v199 = (v198 >> 1) & 0x7F80 | 4;
                                  v200 = v198 - v199;
                                  if (((1 << v195) & v181) != 0)
                                  {
                                    v201 = v200;
                                  }

                                  else
                                  {
                                    v201 = 0;
                                  }

                                  if (((1 << v195) & v181) != 0)
                                  {
                                    v202 = v199;
                                  }

                                  else
                                  {
                                    v202 = v200;
                                  }

                                  od_ec_enc_normalize((v11 + 16), *(v11 + 32) + v201, v202);
                                  --v195;
                                  --v197;
                                }

                                while (v197);
                              }

LABEL_217:
                              if (v6 > 16)
                              {
                                v203 = v344;
                                if (v6 == 17)
                                {
                                  v204 = 16;
                                  v206 = v339;
                                  v205 = 9;
                                  goto LABEL_232;
                                }

                                if (v6 == 18)
                                {
                                  v204 = 32;
                                  v206 = v339;
                                  v205 = 10;
                                  goto LABEL_232;
                                }
                              }

                              else
                              {
                                v203 = v344;
                                if ((v6 - 11) < 2 || v6 == 4)
                                {
                                  v204 = 32;
                                  goto LABEL_221;
                                }
                              }

                              v204 = tx_size_wide_8[v203];
                              if (v6 > 16)
                              {
                                v206 = v339;
                                goto LABEL_231;
                              }

LABEL_221:
                              v205 = 3;
                              if ((v6 - 11) < 2)
                              {
                                v206 = v339;
                                goto LABEL_232;
                              }

                              v206 = v339;
                              if (v6 == 4)
                              {
LABEL_232:
                                v207 = tx_size_high_7[v205];
                                v208 = *(v206 + 8 * v350) + 4 * *(v13[2095] + 2 * v349 + 78) + 64 * v335;
                                v209 = v207 + 4;
                                bzero(&v353[v209 * v204], 4 * v209 + 16);
                                if (v207 == 8)
                                {
                                  if (v204 <= 1)
                                  {
                                    v223 = 1;
                                  }

                                  else
                                  {
                                    v223 = v204;
                                  }

                                  v224 = v353;
                                  v225 = v208;
                                  v217 = v346;
                                  v218 = v337;
                                  do
                                  {
                                    v226 = *v225;
                                    v221 = *(v225 + 1);
                                    v225 += 2;
                                    v210 = vqabsq_s16(vuzp1q_s16(v226, v221));
                                    v210.val[0] = vqmovn_s16(v210);
                                    *v224 = v210;
                                    v224 = (v224 + v209);
                                    --v223;
                                  }

                                  while (v223);
                                }

                                else
                                {
                                  v217 = v346;
                                  v218 = v337;
                                  if (v207 == 4)
                                  {
                                    v219 = 0;
                                    v220 = v353;
                                    v221 = 0uLL;
                                    do
                                    {
                                      v222 = (v208 + 16 * v219);
                                      v212 = v222[1];
                                      v211 = vqabsq_s16(vqmovn_high_s32(vqmovn_s32(*v222), v212));
                                      v210.val[0] = vqmovn_s16(v211);
                                      vst2_f32(v220, v210);
                                      v220 += 4;
                                      v219 += 2;
                                    }

                                    while (v219 < v204);
                                  }

                                  else
                                  {
                                    v227 = 0;
                                    if (v204 <= 1)
                                    {
                                      v228 = 1;
                                    }

                                    else
                                    {
                                      v228 = v204;
                                    }

                                    v229 = v353;
                                    v230 = v208;
                                    do
                                    {
                                      v231 = 0;
                                      do
                                      {
                                        v211 = v230[3];
                                        v221 = vqabsq_s16(vuzp1q_s16(v230[2], v211));
                                        v210 = vqmovn_high_s16(vqmovn_s16(vqabsq_s16(vuzp1q_s16(*v230, v230[1]))), v221);
                                        *&v229[v231] = v210;
                                        v231 += 16;
                                        v230 += 4;
                                      }

                                      while (v231 < v207);
                                      *&v229[v207] = 0;
                                      v229 += v209;
                                      ++v227;
                                    }

                                    while (v227 != v228);
                                  }
                                }

                                v351 = *(&av1_scan_orders + 32 * v344 + 2 * v218);
                                av1_get_nz_map_contexts_neon(v353, v351, v19, v6, v217, &v352, v210, v221, *v211.i64, *v212.i64, v213, v214, v215, v216);
                                if (v6 <= 16)
                                {
                                  v232 = 3;
                                  v233 = v332;
                                  if ((v6 - 11) < 2 || v6 == 4)
                                  {
                                    goto LABEL_259;
                                  }

                                  goto LABEL_258;
                                }

                                v233 = v332;
                                if (v6 == 17)
                                {
                                  v232 = 9;
                                }

                                else
                                {
                                  if (v6 != 18)
                                  {
LABEL_258:
                                    v232 = v344;
                                    goto LABEL_259;
                                  }

                                  v232 = 10;
                                }

LABEL_259:
                                v234 = ((v342 + v341 + 1) >> 1);
                                v343 = v233 + 1790;
                                v345 = tx_size_high_log2_4[v232];
                                v235 = (1 << v345) + 4;
                                v333 = 2 * v235;
                                if (v234 >= 3)
                                {
                                  v234 = 3;
                                }

                                v236 = (v19 - 1);
                                v340 = v233 + 1470 + (v347 << 6) + 32 * v349;
                                v338 = &v353[v235];
                                v336 = v233 + 5990 + 420 * v234;
                                while (1)
                                {
                                  v238 = *(v351 + 2 * v236);
                                  v239 = *(v208 + 4 * v238);
                                  if (v239 >= 0)
                                  {
                                    v240 = *(v208 + 4 * v238);
                                  }

                                  else
                                  {
                                    v240 = -v239;
                                  }

                                  if (v240 >= 3)
                                  {
                                    v241 = 3;
                                  }

                                  else
                                  {
                                    v241 = v240;
                                  }

                                  if (v236 == v348)
                                  {
                                    v242 = v241 - 1;
                                    v243 = (v340 + 8 * v352.i8[v238]);
                                    if (v240 <= 1)
                                    {
                                      v246 = v243[v242];
                                      v247 = *(v11 + 32);
                                      v248 = *(v11 + 40);
                                      v249 = v248 >> 8;
                                    }

                                    else
                                    {
                                      v244 = &v243[v242];
                                      v245 = *(v244 - 1);
                                      v246 = *v244;
                                      v247 = *(v11 + 32);
                                      v248 = *(v11 + 40);
                                      v249 = v248 >> 8;
                                      if ((v245 & 0x80000000) == 0)
                                      {
                                        v250 = 4 * v241;
                                        v251 = ((v249 * (v245 >> 6)) >> 1) - v250 + 16;
                                        result = od_ec_enc_normalize((v11 + 16), v247 + v248 - v251, v250 - ((v249 * (v246 >> 6)) >> 1) + v251 - 12);
                                        if (*(v11 + 48))
                                        {
                                          goto LABEL_280;
                                        }

                                        goto LABEL_296;
                                      }
                                    }

                                    result = od_ec_enc_normalize((v11 + 16), v247, v248 + 4 * v241 - (((v246 >> 6) * v249) >> 1) - 12);
                                    if (*(v11 + 48))
                                    {
LABEL_280:
                                      v261 = v243 + 3;
                                      v262 = v243[3];
                                      v263 = (v262 >> 4) + 4;
                                      v264 = *v243;
                                      if (v242 << 56 <= 0)
                                      {
                                        *v243 = v264 - (v264 >> v263);
                                        v277 = v243[1];
                                        v266 = v243 + 1;
                                        v265 = v277;
                                      }

                                      else
                                      {
                                        *v243 = v264 + ((0x8000 - v264) >> v263);
                                        v267 = v243[1];
                                        v266 = v243 + 1;
                                        v265 = v267;
                                        if (v242 << 56 != 0x100000000000000)
                                        {
                                          goto LABEL_289;
                                        }
                                      }

                                      goto LABEL_292;
                                    }
                                  }

                                  else
                                  {
                                    v252 = (v343 + 840 * v347 + 420 * v349 + 10 * v352.i8[v238]);
                                    v253 = &v252[v241];
                                    if (v239)
                                    {
                                      v254 = *(v253 - 1);
                                      v255 = *v253;
                                      v256 = *(v11 + 32);
                                      v257 = *(v11 + 40);
                                      v258 = v257 >> 8;
                                      if ((v254 & 0x80000000) == 0)
                                      {
                                        v259 = 4 * v241;
                                        v260 = ((v258 * (v254 >> 6)) >> 1) - v259 + 16;
                                        result = od_ec_enc_normalize((v11 + 16), v256 + v257 - v260, v259 - ((v258 * (v255 >> 6)) >> 1) + v260 - 12);
                                        if (*(v11 + 48))
                                        {
                                          goto LABEL_285;
                                        }

                                        goto LABEL_296;
                                      }
                                    }

                                    else
                                    {
                                      v255 = *v253;
                                      v256 = *(v11 + 32);
                                      v257 = *(v11 + 40);
                                      v258 = v257 >> 8;
                                    }

                                    result = od_ec_enc_normalize((v11 + 16), v256, v257 + 4 * v241 - (((v255 >> 6) * v258) >> 1) - 12);
                                    if (*(v11 + 48))
                                    {
LABEL_285:
                                      v261 = v252 + 4;
                                      v262 = v252[4];
                                      v263 = (v262 >> 4) + 5;
                                      v268 = *v252;
                                      v269 = v268 - (v268 >> ((v262 >> 4) + 5));
                                      v270 = v268 + ((0x8000 - v268) >> ((v262 >> 4) + 5));
                                      if (!v239)
                                      {
                                        LOWORD(v270) = v269;
                                      }

                                      *v252 = v270;
                                      v271 = v252[1];
                                      if (v240 <= 1)
                                      {
                                        v275 = v271 - (v271 >> v263);
                                        v276 = v252[2];
                                        v266 = v252 + 2;
                                        v265 = v276;
                                        *(v266 - 1) = v275;
                                      }

                                      else
                                      {
                                        v272 = v271 + ((0x8000 - v271) >> v263);
                                        v273 = v252[2];
                                        v266 = v252 + 2;
                                        v265 = v273;
                                        *(v266 - 1) = v272;
                                        if (v240 != 2)
                                        {
LABEL_289:
                                          v274 = v265 + ((0x8000 - v265) >> v263);
LABEL_293:
                                          *v266 = v274;
                                          if (v262 < 0x20)
                                          {
                                            LOWORD(v262) = v262 + 1;
                                          }

                                          *v261 = v262;
                                          goto LABEL_296;
                                        }
                                      }

LABEL_292:
                                      v274 = v265 - (v265 >> v263);
                                      goto LABEL_293;
                                    }
                                  }

LABEL_296:
                                  if (v240 >= 3)
                                  {
                                    v278 = v238 >> v345;
                                    v279 = v238 >> v345 << v345;
                                    v280 = v238 - v279 + (v238 >> v345) * ((1 << v345) + 4);
                                    v281 = v338[v280] + v353[v280 + 1];
                                    if (v346 == 2)
                                    {
                                      v281 = (v281 + v353[v280 + 2] + 1) >> 1;
                                      if (v281 >= 6)
                                      {
                                        v281 = 6;
                                      }

                                      if (v238)
                                      {
                                        if (v238 != v279)
                                        {
                                          goto LABEL_310;
                                        }

                                        goto LABEL_315;
                                      }
                                    }

                                    else if (v346 == 1)
                                    {
                                      v281 = (v281 + v353[v280 + v333] + 1) >> 1;
                                      if (v281 >= 6)
                                      {
                                        v281 = 6;
                                      }

                                      if (v238)
                                      {
                                        if (v278)
                                        {
                                          goto LABEL_310;
                                        }

                                        goto LABEL_315;
                                      }
                                    }

                                    else
                                    {
                                      if (v346)
                                      {
                                        goto LABEL_310;
                                      }

                                      v281 = (v281 + v338[v280 + 1] + 1) >> 1;
                                      if (v281 >= 6)
                                      {
                                        v281 = 6;
                                      }

                                      if (v238)
                                      {
                                        if (v278 > 1 || v238 - v279 > 1)
                                        {
LABEL_310:
                                          v281 += 14;
                                          goto LABEL_316;
                                        }

LABEL_315:
                                        v281 += 7;
                                      }
                                    }

LABEL_316:
                                    v282 = 0;
                                    v283 = (v336 + 210 * v349 + 10 * v281);
                                    if (((v239 & 0x40000000) != 0) ^ __OFSUB__(v239, -v239) | (v239 == -v239))
                                    {
                                      v284 = -v239;
                                    }

                                    else
                                    {
                                      v284 = v239;
                                    }

                                    v285 = v284 - 4;
                                    while (2)
                                    {
                                      v286 = v285 + 1;
                                      if (v285 + 1 < 3)
                                      {
                                        v287 = v285 + 1;
                                      }

                                      else
                                      {
                                        v287 = 3;
                                      }

                                      if (v286 <= 0)
                                      {
                                        v290 = v283[v287];
                                        v291 = *(v11 + 32);
                                        v292 = *(v11 + 40);
                                        v293 = v292 >> 8;
                                      }

                                      else
                                      {
                                        v288 = &v283[v287];
                                        v289 = *(v288 - 1);
                                        v290 = *v288;
                                        v291 = *(v11 + 32);
                                        v292 = *(v11 + 40);
                                        v293 = v292 >> 8;
                                        if ((v289 & 0x80000000) == 0)
                                        {
                                          v294 = ((v293 * (v289 >> 6)) >> 1) - 4 * v287 + 16;
                                          result = od_ec_enc_normalize((v11 + 16), v291 + v292 - v294, 4 * v287 - ((v293 * (v290 >> 6)) >> 1) + v294 - 12);
                                          if (!*(v11 + 48))
                                          {
                                            goto LABEL_339;
                                          }

LABEL_329:
                                          v295 = v283[4];
                                          v296 = (v295 >> 4) + 5;
                                          v297 = *v283;
                                          if (v285 == -1)
                                          {
                                            *v283 = v297 - (v297 >> v296);
                                            v298 = v283[1];
                                          }

                                          else
                                          {
                                            *v283 = v297 + ((0x8000 - v297) >> v296);
                                            v298 = v283[1];
                                            if (v285)
                                            {
                                              v283[1] = v298 + ((0x8000 - v298) >> v296);
                                              v299 = v283[2];
                                              if (v287 > 2)
                                              {
                                                v300 = v299 + ((0x8000 - v299) >> v296);
                                                goto LABEL_336;
                                              }

LABEL_335:
                                              v300 = v299 - (v299 >> v296);
LABEL_336:
                                              v283[2] = v300;
                                              if (v295 < 0x20)
                                              {
                                                LOWORD(v295) = v295 + 1;
                                              }

                                              v283[4] = v295;
LABEL_339:
                                              if (v282 > 8)
                                              {
                                                goto LABEL_262;
                                              }

                                              v282 += 3;
                                              v285 -= 3;
                                              if (v286 <= 2)
                                              {
                                                goto LABEL_262;
                                              }

                                              continue;
                                            }
                                          }

                                          v283[1] = v298 - (v298 >> v296);
                                          v299 = v283[2];
                                          goto LABEL_335;
                                        }
                                      }

                                      break;
                                    }

                                    result = od_ec_enc_normalize((v11 + 16), v291, v292 + 4 * v287 - (((v290 >> 6) * v293) >> 1) - 12);
                                    if (*(v11 + 48))
                                    {
                                      goto LABEL_329;
                                    }

                                    goto LABEL_339;
                                  }

LABEL_262:
                                  v237 = v236-- <= 0;
                                  if (v237)
                                  {
                                    v301 = 0;
                                    while (1)
                                    {
                                      v302 = *(v208 + 4 * *(v351 + 2 * v301));
                                      v303 = (v302 & 0x80000000) == 0 ? *(v208 + 4 * *(v351 + 2 * v301)) : -v302;
                                      if (v302)
                                      {
                                        break;
                                      }

LABEL_343:
                                      if (++v301 == v19)
                                      {
                                        return result;
                                      }
                                    }

                                    if (v301)
                                    {
                                      v304 = *(v11 + 40);
                                      v305 = (v304 >> 1) & 0x7F80 | 4;
                                      v306 = v304 - v305;
                                      if ((v302 & 0x80000000) != 0)
                                      {
                                        v307 = v306;
                                      }

                                      else
                                      {
                                        v307 = 0;
                                      }

                                      if ((v302 & 0x80000000) != 0)
                                      {
                                        v308 = v305;
                                      }

                                      else
                                      {
                                        v308 = v306;
                                      }

                                      result = od_ec_enc_normalize((v11 + 16), *(v11 + 32) + v307, v308);
LABEL_364:
                                      if (v303 >= 0xF)
                                      {
                                        v320 = v303 - 14;
                                        v321 = __clz((v303 - 14) >> 1);
                                        if (v303 != 15)
                                        {
                                          v322 = v321 - 32;
                                          do
                                          {
                                            od_ec_enc_normalize((v11 + 16), *(v11 + 32), *(v11 + 40) - ((*(v11 + 40) >> 1) & 0x7F80) - 4);
                                          }

                                          while (!__CFADD__(v322++, 1));
                                        }

                                        v324 = 32 - v321;
                                        do
                                        {
                                          v325 = *(v11 + 40);
                                          v326 = (v325 >> 1) & 0x7F80 | 4;
                                          v327 = v325 - v326;
                                          if (((1 << v324) & v320) != 0)
                                          {
                                            v328 = v327;
                                          }

                                          else
                                          {
                                            v328 = 0;
                                          }

                                          if (((1 << v324) & v320) != 0)
                                          {
                                            v329 = v326;
                                          }

                                          else
                                          {
                                            v329 = v327;
                                          }

                                          result = od_ec_enc_normalize((v11 + 16), *(v11 + 32) + v328, v329);
                                          v237 = v324-- <= 0;
                                        }

                                        while (!v237);
                                      }

                                      goto LABEL_343;
                                    }

                                    v309 = (v332 + 930 + 18 * v349 + 6 * ((*(v334 + v335) >> 4) & 3));
                                    v310 = &v309[v302 >> 31];
                                    if ((v302 & 0x80000000) != 0)
                                    {
                                      v330 = *(v310 - 1);
                                      v311 = *v310;
                                      v312 = *(v11 + 32);
                                      v313 = *(v11 + 40);
                                      v314 = v313 >> 8;
                                      if (v330 < 0)
                                      {
                                        goto LABEL_358;
                                      }

                                      v331 = ((v314 * (v330 >> 6)) >> 1) + 4;
                                      result = od_ec_enc_normalize((v11 + 16), v312 + v313 - v331, v331 - ((v314 * (v311 >> 6)) >> 1));
                                      if (!*(v11 + 48))
                                      {
                                        goto LABEL_364;
                                      }
                                    }

                                    else
                                    {
                                      v311 = *v310;
                                      v312 = *(v11 + 32);
                                      v313 = *(v11 + 40);
                                      v314 = v313 >> 8;
LABEL_358:
                                      result = od_ec_enc_normalize((v11 + 16), v312, v313 + 4 * (*(v208 + 4 * *(v351 + 2 * v301)) >> 31) - (((v311 >> 6) * v314) >> 1) - 4);
                                      if (!*(v11 + 48))
                                      {
                                        goto LABEL_364;
                                      }
                                    }

                                    v315 = v309[2];
                                    v316 = (v315 >> 4) + 4;
                                    v317 = *v309;
                                    v318 = v317 - (v317 >> v316);
                                    v319 = v317 + ((0x8000 - v317) >> v316);
                                    if ((v302 & 0x80000000) == 0)
                                    {
                                      LOWORD(v319) = v318;
                                    }

                                    *v309 = v319;
                                    if (v315 < 0x20)
                                    {
                                      LOWORD(v315) = v315 + 1;
                                    }

                                    v309[2] = v315;
                                    goto LABEL_364;
                                  }
                                }
                              }

LABEL_231:
                              v205 = v203;
                              goto LABEL_232;
                            }
                          }

                          else
                          {
                            v184 = *v183;
                            v185 = *(v11 + 32);
                            v186 = *(v11 + 40);
                            v187 = v186 >> 8;
                          }

                          od_ec_enc_normalize((v11 + 16), v185, v186 + 4 * v182 - (((v184 >> 6) * v187) >> 1) - 4);
                          if (*(v11 + 48))
                          {
                            goto LABEL_199;
                          }

                          goto LABEL_205;
                        }

LABEL_188:
                        v163 = v119 - (v119 >> v114);
                        goto LABEL_189;
                      }

                      goto LABEL_186;
                    }

LABEL_185:
                    v103[5] = v169 - (v169 >> v114);
                    v170 = v103[6];
LABEL_186:
                    v172 = v170 - (v170 >> v114);
                    v179 = v103[7];
                    v120 = v103 + 7;
                    v119 = v179;
                    goto LABEL_187;
                  }

LABEL_184:
                  v103[4] = v168 - (v168 >> v114);
                  v169 = v103[5];
                  goto LABEL_185;
                }

LABEL_183:
                v103[3] = v167 - (v167 >> v114);
                v168 = v103[4];
                goto LABEL_184;
              }

LABEL_182:
              v103[2] = v166 - (v166 >> v114);
              v167 = v103[3];
              goto LABEL_183;
            }
          }

          v103[1] = v165 - (v165 >> v114);
          v166 = v103[2];
          goto LABEL_182;
        }

        v76 = (v21 + 36 * v349 + 18 * v47 + 1134);
        if (v43 <= 1)
        {
          v79 = v76[v48];
          v80 = *(v11 + 32);
          v81 = *(v11 + 40);
          v82 = v81 >> 8;
        }

        else
        {
          v77 = &v76[v48];
          v78 = *(v77 - 1);
          v79 = *v77;
          v80 = *(v11 + 32);
          v81 = *(v11 + 40);
          v82 = v81 >> 8;
          if ((v78 & 0x80000000) == 0)
          {
            v83 = ((v82 * (v78 >> 6)) >> 1) - 4 * v43 + 36;
            v80 += v81 - v83;
            v84 = 4 * v43 - ((v82 * (v79 >> 6)) >> 1) + v83;
            goto LABEL_80;
          }
        }

        v84 = v81 + 4 * v43 - (((v79 >> 6) * v82) >> 1);
LABEL_80:
        od_ec_enc_normalize((v11 + 16), v80, v84 - 32);
        if (!*(v11 + 48))
        {
          goto LABEL_192;
        }

        v112 = v76 + 8;
        v113 = v76[8];
        v114 = (v113 >> 4) + 5;
        v124 = *v76;
        if ((v43 - 1) <= 0)
        {
          *v76 = v124 - (v124 >> v114);
          v126 = v76[1];
        }

        else
        {
          v125 = v48 << 56;
          *v76 = v124 + ((0x8000 - v124) >> v114);
          v126 = v76[1];
          if (v48 << 56 != 0x100000000000000)
          {
            v76[1] = v126 + ((0x8000 - v126) >> v114);
            v127 = v76[2];
            if ((v43 - 1) > 2)
            {
              v76[2] = v127 + ((0x8000 - v127) >> v114);
              v128 = v76[3];
              if (v125 != 0x300000000000000)
              {
                v76[3] = v128 + ((0x8000 - v128) >> v114);
                v129 = v76[4];
                if ((v43 - 1) > 4)
                {
                  v76[4] = v129 + ((0x8000 - v129) >> v114);
                  v130 = v76[5];
                  if (v125 != 0x500000000000000)
                  {
                    v131 = v76[6];
                    v120 = v76 + 6;
                    v119 = v131;
                    *(v120 - 1) = v130 + ((0x8000 - v130) >> v114);
                    if ((v43 - 1) <= 6)
                    {
                      goto LABEL_188;
                    }

                    goto LABEL_132;
                  }

                  goto LABEL_153;
                }

LABEL_152:
                v76[4] = v129 - (v129 >> v114);
                v130 = v76[5];
LABEL_153:
                v172 = v130 - (v130 >> v114);
                v174 = v76[6];
                v120 = v76 + 6;
                v119 = v174;
                goto LABEL_187;
              }

LABEL_151:
              v76[3] = v128 - (v128 >> v114);
              v129 = v76[4];
              goto LABEL_152;
            }

LABEL_150:
            v76[2] = v127 - (v127 >> v114);
            v128 = v76[3];
            goto LABEL_151;
          }
        }

        v76[1] = v126 - (v126 >> v114);
        v127 = v76[2];
        goto LABEL_150;
      }

      v39 = *(v13[1041] + v8 + *(v13 + 2084) * v10);
    }

    av1_write_tx_type(v14, (v13 + 52), v39, v6, v11);
    v37 = v39;
    goto LABEL_37;
  }

  return result;
}