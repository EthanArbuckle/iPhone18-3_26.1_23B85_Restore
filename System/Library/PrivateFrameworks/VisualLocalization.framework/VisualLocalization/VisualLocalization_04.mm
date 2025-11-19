uint64_t slam_tracker_vo_add(uint64_t a1, double *a2, int a3, uint64_t a4, int a5, int a6, int *a7, uint64_t a8, double a9, uint64_t a10, int a11, int a12, const void *a13, int a14, __int128 *a15)
{
  v846 = *MEMORY[0x277D85DE8];
  *&v836.tv_usec = 0;
  v836.tv_sec = 0;
  if (gettimeofday(&v836, 0) || (v836.tv_usec + 1000000 * v836.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_694;
  }

  v817 = 0.0;
  v818 = 0.0;
  v815 = 0.0;
  v816 = 0.0;
  v813 = 0.0;
  v814 = 0.0;
  ++*(a1 + 584);
  v22 = *(a1 + 588);
  v23 = *(a1 + 140);
  if (v23 >= v22)
  {
    v23 = *(a1 + 588);
  }

  if (v22 >= 1)
  {
    v24 = *(a1 + 304);
    if (v22 == 1)
    {
      v25 = 0;
LABEL_11:
      v28 = v22 - v25;
      v29 = (v24 + 880 * v25 + 668);
      do
      {
        *v29 = 1;
        v29 += 220;
        --v28;
      }

      while (v28);
      goto LABEL_13;
    }

    v25 = v22 & 0x7FFFFFFE;
    v26 = v25;
    v27 = *(a1 + 304);
    do
    {
      *(v27 + 668) = 1;
      *(v27 + 1548) = 1;
      v27 += 1760;
      v26 -= 2;
    }

    while (v26);
    if (v25 != v22)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v30 = v23 - 1;
  if (v23 <= 1)
  {
    goto LABEL_21;
  }

  v31 = *(a1 + 304);
  v32 = *(a1 + 592) + v22;
  if (v23 == 2)
  {
    v33 = 0;
LABEL_19:
    v36 = v32 - v33;
    v37 = ~v33 + v23;
    do
    {
      *(v31 + 880 * (v36 % v22) + 668) = 0;
      --v36;
      --v37;
    }

    while (v37);
    goto LABEL_21;
  }

  v33 = v30 & 0xFFFFFFFE;
  v34 = v30 & 0xFFFFFFFE;
  v35 = *(a1 + 592) + v22;
  do
  {
    *(v31 + 880 * (v35 % v22) + 668) = 0;
    *(v31 + 880 * ((v35 - 1) % v22) + 668) = 0;
    v35 -= 2;
    v34 -= 2;
  }

  while (v34);
  if (v30 != v33)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v22 == *a1)
  {
    v38 = (*(a1 + 592) + 1) % v22;
    v39 = malloc_type_calloc(*(a1 + 368), 1uLL, 0x57C2E3BEuLL);
    slam_vo_map_marginalize_cam(a1, v38, v39);
    remove_map_points(a1, v39);
    free(v39);
    v40 = *(a1 + 304) + 880 * v38;
    free(*(v40 + 368));
    free(*(v40 + 376));
    free(*(v40 + 384));
    free(*(v40 + 392));
    free(*(v40 + 400));
    v41 = *(v40 + 408);
    if (v41)
    {
      v42 = *(v41 - 8 * *(v40 + 424) - 8);
      v43 = atomic_fetch_add((v42 + 24), 0xFFFFFFFF) - 1;
      if (v43 < 0)
      {
        __assert_rtn("pmem_free", "pmem.c", 302, "count >= 0 && Negative count! Something is broken, double free? Memory corruption?");
      }

      if (v43)
      {
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&global_stats[2], 0);
        atomic_fetch_or(global_stats, 0);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_or(&_pmem_total_blocks, 0);
        atomic_fetch_or(&pmem_bytes_allocated, 0);
      }

      else
      {
        v66 = -*(v42 + 8);
        atomic_fetch_add(&global_stats[1], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&global_stats[2], 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(global_stats, v66);
        atomic_fetch_add(&pmem_total_refs, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&_pmem_total_blocks, 0xFFFFFFFFFFFFFFFFLL);
        atomic_fetch_add(&pmem_bytes_allocated, v66);
        (*(v42 + 40))(v42);
        free(v42);
      }

      *(v40 + 408) = 0;
    }

    free(*(v40 + 768));
    bzero(v40, 0x370uLL);
    v44 = *(a1 + 588);
    LODWORD(v22) = v44 - 1;
    v45 = v44 - 1 + v38;
    v46 = v45 / v44;
    if (*(a1 + 16) <= 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v22 + 1;
    *(a1 + 588) = v22 + 1;
    v38 = v22;
    v45 = 2 * v22;
    v46 = 2 * v22 / (v22 + 1);
    if (*(a1 + 16) <= 0)
    {
LABEL_27:
      *(a1 + 16) = a7[1];
    }
  }

  v47 = v45 - v46 * v44;
  v782 = a2;
  v796 = a8;
  v794 = v47;
  if (a2 && !*(a1 + 92))
  {
    v60 = a5;
    v792 = 0;
    v61 = a2 + 5;
    v784 = a2 + 4;
    v785 = a2 + 3;
    v787 = a2 + 2;
    v788 = (a2 + 1);
    v62 = a6;
    goto LABEL_80;
  }

  if (v44 < 3)
  {
    v817 = 0.0;
    v818 = 1.0;
    v815 = 0.0;
    v816 = 0.0;
    v813 = 0.0;
    v814 = 0.0;
    v58 = 0.0;
    v59 = xmmword_271103570;
  }

  else
  {
    v48 = *(a1 + 304);
    v49 = v48 + 880 * v47;
    v50 = v48 + 880 * ((v47 + v22) % v44);
    v51 = *(v49 + 504);
    v52 = v51 - *(v50 + 504);
    v791 = a9 - v51;
    if (*(a1 + 96))
    {
      v836 = 0;
      memset(__y, 0, 80);
      g_coords_diff(v49, v50, &v836);
      v53 = v791 / v52;
      if (v53 != 1.0)
      {
        v803 = v53;
        *&__y[56] = vmulq_n_f64(*&__y[56], v53);
        *&__y[72] = *&__y[72] * v53;
        g_log_so3(&v845[0].tv_sec, &v836.tv_sec);
        v845[0] = vmulq_n_f64(v845[0], v803);
        *&v845[1].tv_sec = *&v845[1].tv_sec * v803;
        g_exp_so3(&v836, &v845[0].tv_sec);
      }

      v54 = *&__y[72];
      v804 = *&__y[56];
      if (fabs(*&__y[32]) >= 1.0)
      {
        if (*&__y[32] <= -1.0)
        {
          v56 = 0.0;
          v57 = atan2(*&v836.tv_usec, *__y) + 0.0;
          v55 = 1.57079633;
        }

        else
        {
          v57 = atan2(-*&v836.tv_usec, -*__y);
          v56 = 0.0;
          v55 = -1.57079633;
        }
      }

      else
      {
        v55 = asin(-*&__y[32]);
        v56 = atan2(*&__y[8], *&v836.tv_sec);
        v57 = atan2(*&__y[40], *&__y[48]);
      }

      v65 = v804;
    }

    else
    {
      v63 = (a9 - v51) / v52;
      v64 = v63;
      v65 = vmulq_n_f64(vsubq_f64(*(v49 + 72), *(v50 + 72)), v64);
      v54 = (*(v49 + 88) - *(v50 + 88)) * v64;
      v57 = 0.0;
      v55 = 0.0;
      v56 = 0.0;
    }

    v59 = vmulq_f64(v65, vcvtq_f64_f32(*(a1 + 104)));
    v817 = v59.f64[1];
    v818 = v59.f64[0];
    v58 = v54 * *(a1 + 112);
    v67 = v56 * *(a1 + 116);
    v815 = v67;
    v816 = v58;
    v68 = v55 * *(a1 + 120);
    v69 = v57 * *(a1 + 124);
    v813 = v69;
    v814 = v68;
    v70.i32[0] = *(a1 + 60);
    if (fabsf(v70.f32[0]) == INFINITY)
    {
      goto LABEL_72;
    }

    if (fabsf(*(a1 + 64)) == INFINITY)
    {
      goto LABEL_72;
    }

    v71 = *(a1 + 68);
    if (fabsf(v71) == INFINITY)
    {
      goto LABEL_72;
    }

    v72 = *(a1 + 72);
    if (fabsf(v72) == INFINITY)
    {
      goto LABEL_72;
    }

    v73 = *(a1 + 76);
    if (fabsf(v73) == INFINITY)
    {
      goto LABEL_72;
    }

    v74 = *(a1 + 80);
    a3 = 1;
    if (fabsf(v74) != INFINITY)
    {
      if (*(a1 + 588) >= 2)
      {
        v70.i32[1] = *(a1 + 64);
        v75 = vcvtq_f64_f32(v70);
        v76 = v791 * v71;
        v77 = v791 * v72;
        v78 = v791 * v73;
        v79 = v791 * v74;
        v80 = -v77;
        v81 = -v78;
        v82 = -v79;
        if (v58 <= -v76)
        {
          v58 = -v76;
        }

        if (v67 <= v80)
        {
          v67 = v80;
        }

        if (v68 <= v81)
        {
          v68 = v81;
        }

        if (v69 <= v82)
        {
          v69 = v82;
        }

        v83 = vcvt_f32_f64(vmulq_n_f64(v75, v791));
        v84 = vcvtq_f64_f32(vneg_f32(v83));
        v85 = vbslq_s8(vcgtq_f64(v59, v84), v59, v84);
        v86 = vcvtq_f64_f32(v83);
        v59 = vbslq_s8(vcgtq_f64(v86, v85), v85, v86);
        v817 = v59.f64[1];
        v818 = v59.f64[0];
        if (v58 >= v76)
        {
          v58 = v76;
        }

        if (v67 >= v77)
        {
          v67 = v77;
        }

        v815 = v67;
        v816 = v58;
        if (v68 >= v78)
        {
          v87 = v78;
        }

        else
        {
          v87 = v68;
        }

        if (v69 >= v79)
        {
          v69 = v79;
        }

        v813 = v69;
        v814 = v87;
      }

LABEL_72:
      a3 = 1;
    }
  }

  if (a2 && *(a1 + 100))
  {
    v60 = a5;
    v88 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v59, v59).f64[1]) + v59.f64[0] * v59.f64[0] + v58 * v58);
    if (v88 <= 0.0)
    {
      v89 = 0uLL;
      v90 = 0.0;
    }

    else
    {
      v89 = vdivq_f64(v59, vdupq_lane_s64(*&v88, 0));
      v90 = v58 / v88;
    }

    v62 = a6;
    v91 = sqrt(a2[1] * a2[1] + *a2 * *a2 + a2[2] * a2[2]);
    v817 = vmuld_lane_f64(v91, v89, 1);
    v818 = v91 * v89.f64[0];
    v792 = 1;
    a2 = &v818;
    v788 = &v817;
    v816 = v90 * v91;
    v787 = &v816;
    v785 = &v815;
    v784 = &v814;
    v61 = &v813;
  }

  else
  {
    v60 = a5;
    v792 = 1;
    a2 = &v818;
    v788 = &v817;
    v787 = &v816;
    v785 = &v815;
    v784 = &v814;
    v61 = &v813;
    v62 = a6;
  }

LABEL_80:
  v790 = *(a1 + 16);
  v92 = *(a1 + 304);
  v93 = (v92 + 880 * v38);
  bzero(v93, 0x370uLL);
  v94 = *(a4 + 16);
  v93[12] = *a4;
  v93[13] = v94;
  v95 = *(a4 + 32);
  v96 = *(a4 + 48);
  v97 = *(a4 + 80);
  v93[16] = *(a4 + 64);
  v93[17] = v97;
  v93[14] = v95;
  v93[15] = v96;
  v98 = *(a4 + 96);
  v99 = *(a4 + 112);
  v100 = *(a4 + 128);
  *(v93 + 42) = *(a4 + 144);
  v93[19] = v99;
  v93[20] = v100;
  v93[18] = v98;
  if (*a7 && (v60 < 1 || v62 <= 0))
  {
    log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 539, "init_cam", "Image dimensions must be given");
    __assert_rtn("init_cam", "slam_tracker_vo.c", 539, "0");
  }

  memset(&v845[0].tv_usec, 0, 64);
  v836.tv_sec = 0;
  LODWORD(v836.tv_sec) = *a4;
  v101 = *(a4 + 8);
  if ((v836.tv_sec & 0xFFFFFFFC) == 0xC)
  {
    v102 = 1.0 / tan(v101 * 0.5);
    v103 = *(a4 + 16);
    v104 = v103 / v101;
  }

  else
  {
    v105 = tan(v101 * 0.5);
    v103 = *(a4 + 16);
    v102 = v60 / (v105 + v105);
    v106 = tan(v103 * 0.5);
    v104 = v62 / (v106 + v106);
  }

  v107 = v62;
  *&v836.tv_usec = v102;
  *__y = v104;
  *&__y[8] = v101;
  *&__y[16] = v103;
  v838 = *(a4 + 88);
  v839 = *(a4 + 104);
  v840 = *(a4 + 120);
  v841 = *(a4 + 136);
  *&__y[56] = *(a4 + 56);
  *&__y[72] = *(a4 + 72);
  *&__y[24] = *(a4 + 24);
  *&__y[40] = *(a4 + 40);
  v108 = v60;
  v842 = v60;
  v843 = v107;
  if (v103 == 0.0)
  {
    *&__y[16] = 0;
  }

  v109 = (v92 + 880 * v794);
  if (v101 == 0.0)
  {
    *&__y[8] = 0;
  }

  v110 = *v788;
  *&v845[4].tv_usec = *a2;
  v845[5].tv_sec = v110;
  *&v845[5].tv_usec = *v787;
  v111 = *v784;
  v112 = *v61;
  v113 = __sincos_stret(*v785);
  v114 = __sincos_stret(v111);
  v115 = __sincos_stret(v112);
  *&v845[0].tv_sec = v113.__cosval * v114.__cosval;
  *&v845[0].tv_usec = v113.__cosval * v114.__sinval * v115.__sinval - v113.__sinval * v115.__cosval;
  *&v845[1].tv_sec = v113.__sinval * v115.__sinval + v113.__cosval * v114.__sinval * v115.__cosval;
  *&v845[1].tv_usec = v113.__sinval * v114.__cosval;
  *&v845[2].tv_sec = v113.__cosval * v115.__cosval + v113.__sinval * v114.__sinval * v115.__sinval;
  *&v845[2].tv_usec = v113.__sinval * v114.__sinval * v115.__cosval - v113.__cosval * v115.__sinval;
  *&v845[3].tv_sec = -v114.__sinval;
  *&v845[3].tv_usec = v114.__cosval * v115.__sinval;
  *&v845[4].tv_sec = v114.__cosval * v115.__cosval;
  v116 = v38;
  if (a3)
  {
    v117 = v796;
    if (v38 == v794)
    {
      *(v93 + 22) = 0;
      *(v93 + 23) = 0;
      *(v93 + 12) = 0x3FF0000000000000;
      *(v93 + 13) = 0;
      *(v93 + 14) = 0;
      *(v93 + 15) = 0;
      *(v93 + 16) = 0x3FF0000000000000;
      *(v93 + 17) = 0;
      *(v93 + 18) = 0;
      *(v93 + 19) = 0;
      *(v93 + 20) = 0x3FF0000000000000;
      *(v93 + 21) = 0;
      v118 = v93[7];
      *v93 = v93[6];
      v93[1] = v118;
      v119 = v93[8];
      v120 = v93[9];
      v121 = v93[11];
      v93[4] = v93[10];
      v93[5] = v121;
      v93[2] = v119;
      v93[3] = v120;
      goto LABEL_97;
    }

    g_coords_conv(&v845[0].tv_sec, v109 + 12, v93 + 12);
  }

  else
  {
    v122 = v845[1];
    *v93 = v845[0];
    v93[1] = v122;
    v123 = v845[2];
    v124 = v845[3];
    v125 = v845[5];
    v93[4] = v845[4];
    v93[5] = v125;
    v93[2] = v123;
    v93[3] = v124;
    v126 = v845[5];
    v127 = v845[3];
    v128 = v845[2];
    v93[10] = v845[4];
    v93[11] = v126;
    v93[8] = v128;
    v93[9] = v127;
    v129 = v845[1];
    v93[6] = v845[0];
    v93[7] = v129;
    v117 = v796;
    if (v38 == v794)
    {
      goto LABEL_97;
    }

    g_coords_diff(v93 + 12, v109 + 12, v845);
  }

  g_coords_conv(&v845[0].tv_sec, v109, v93);
LABEL_97:
  *(v93 + 130) = v792;
  *(v93 + 120) = v108;
  *(v93 + 121) = a6;
  *(v93 + 46) = malloc_type_malloc(8 * *a7, 0x100004000313F17uLL);
  *(v93 + 47) = malloc_type_malloc(8 * *a7, 0x100004000313F17uLL);
  *(v93 + 48) = malloc_type_malloc(*a7 * v790, 0x6350FD61uLL);
  memcpy(*(v93 + 46), *(a7 + 1), 8 * *a7);
  memcpy(*(v93 + 47), *(a7 + 1), 8 * *a7);
  memcpy(*(v93 + 48), *(a7 + 2), *a7 * v790);
  if (*(a7 + 3))
  {
    abort();
  }

  v130 = malloc_type_malloc(4 * *a7, 0x100004052888210uLL);
  *(v93 + 50) = v130;
  LODWORD(v131) = *a7;
  if (*a7 >= 1)
  {
    v132 = 0;
    do
    {
      v130[v132++] = -1;
      v131 = *a7;
    }

    while (v132 < v131);
  }

  v768 = v38;
  *(v93 + 122) = v131;
  if (a15 && *a15)
  {
    v133 = *(*a15 - 8 * *(a15 + 2) - 8);
    atomic_fetch_add(&global_stats[1], 1uLL);
    atomic_fetch_or(&global_stats[2], 0);
    atomic_fetch_or(global_stats, 0);
    atomic_fetch_add(&pmem_total_refs, 1uLL);
    atomic_fetch_or(&_pmem_total_blocks, 0);
    atomic_fetch_or(&pmem_bytes_allocated, 0);
    atomic_fetch_add((v133 + 24), 1u);
    v134 = *a15;
    *(v93 + 53) = *(a15 + 2);
    *(v93 + 408) = v134;
    v135 = *(a15 + 24);
    *(v93 + 56) = *(a15 + 5);
    v93[27] = v135;
    v136 = a15[3];
    *(v93 + 59) = *(a15 + 8);
    *(v93 + 456) = v136;
    LODWORD(v131) = *(v93 + 122);
  }

  rectify_pts(&v836, *(v93 + 46), v131, v93 + 86);
  *(v93 + 63) = a9;
  *(v93 + 123) = a14;
  *(v93 + 90) = (*(v93 + 88) - *(v93 + 86)) / v108;
  *(v93 + 93) = 0x7FF8000000000000;
  *(v93 + 131) = 2143289344;
  if (v117)
  {
    v137 = *(a1 + 304);
    v836.tv_sec = 0;
    LODWORD(v836.tv_sec) = *a10;
    v138 = *(a10 + 8);
    if ((v836.tv_sec & 0xFFFFFFFC) == 0xC)
    {
      v139 = 1.0 / tan(v138 * 0.5);
      v140 = *(a10 + 16);
      v141 = v140 / v138;
    }

    else
    {
      v142 = tan(v138 * 0.5);
      v140 = *(a10 + 16);
      v139 = a11 / (v142 + v142);
      v143 = tan(v140 * 0.5);
      v141 = a12 / (v143 + v143);
    }

    v144 = v137 + 880 * v38;
    *&v836.tv_usec = v139;
    *__y = v141;
    *&__y[8] = v138;
    *&__y[16] = v140;
    v838 = *(a10 + 88);
    v839 = *(a10 + 104);
    v840 = *(a10 + 120);
    v841 = *(a10 + 136);
    *&__y[56] = *(a10 + 56);
    *&__y[72] = *(a10 + 72);
    *&__y[24] = *(a10 + 24);
    *&__y[40] = *(a10 + 40);
    v842 = a11;
    v843 = a12;
    if (v140 == 0.0)
    {
      *&__y[16] = 0;
    }

    if (v138 == 0.0)
    {
      *&__y[8] = 0;
    }

    *(v144 + 848) = *v117;
    *(v144 + 856) = *(v117 + 8);
    *(v144 + 864) = *(v117 + 16);
    v145 = *(v117 + 32);
    v146 = *(v117 + 40);
    v147 = __sincos_stret(*(v117 + 24));
    v148 = __sincos_stret(v145);
    v149 = __sincos_stret(v146);
    *(v144 + 776) = v147.__cosval * v148.__cosval;
    *(v144 + 784) = v147.__cosval * v148.__sinval * v149.__sinval - v147.__sinval * v149.__cosval;
    *(v144 + 792) = v147.__sinval * v149.__sinval + v147.__cosval * v148.__sinval * v149.__cosval;
    *(v144 + 800) = v147.__sinval * v148.__cosval;
    *(v144 + 808) = v147.__cosval * v149.__cosval + v147.__sinval * v148.__sinval * v149.__sinval;
    *(v144 + 816) = v147.__sinval * v148.__sinval * v149.__cosval - v147.__cosval * v149.__sinval;
    *(v144 + 824) = -v148.__sinval;
    *(v144 + 832) = v148.__cosval * v149.__sinval;
    *(v144 + 840) = v148.__cosval * v149.__cosval;
    v150 = malloc_type_malloc(8 * *(v144 + 488), 0x100004000313F17uLL);
    *(v144 + 768) = v150;
    memcpy(v150, a13, 8 * *(v144 + 488));
    rectify_pts(&v836, *(v144 + 768), *(v144 + 488), v845);
    v116 = v38;
  }

  v151 = *(a1 + 304);
  *(v151 + 880 * v38 + 496) = v116;
  *(a1 + 592) = v116;
  if (*(a1 + 588) >= 2 && (*(a1 + 132) & 0x10) != 0)
  {
    __assert_rtn("slam_tracker_vo_add", "slam_tracker_vo.c", 2505, "0");
  }

  if (a3)
  {
    v152 = v782;
  }

  else
  {
    v152 = 0;
  }

  *&v836.tv_usec = 0;
  v836.tv_sec = 0;
  if (gettimeofday(&v836, 0) || (v836.tv_usec + 1000000 * v836.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_694;
  }

  v767 = v151;
  v769 = *(a1 + 592);
  v153 = *(a1 + 304) + 880 * v769;
  memset(v825, 0, 96);
  *v823 = 0u;
  v824 = 0u;
  v154 = malloc_type_malloc(4 * *(v153 + 488), 0x100004052888210uLL);
  plq_create_ids(*(v153 + 368), *(v153 + 488), v155);
  v793 = v156;
  v810 = malloc_type_malloc(*(a1 + 312), 0xDBCD0236uLL);
  v157 = *(v153 + 488);
  if (v157 <= 0)
  {
    v162 = v157;
    v823[0] = v157;
    v825[3] = v157;
    v159 = v157;
    goto LABEL_144;
  }

  if (v157 <= 0xA)
  {
    v158 = 10;
  }

  else
  {
    v158 = *(v153 + 488);
  }

  v823[1] = malloc_type_realloc(0, 24 * v158, 0x1010040A500212DuLL);
  *&v824 = v158;
  bzero(v823[1], 24 * v157);
  v159 = *(v153 + 488);
  v160 = v159;
  v823[0] = v159;
  if (v159 <= 0)
  {
    v825[3] = v159;
    *(&v824 + 1) = v159;
LABEL_143:
    v825[6] = v160;
    goto LABEL_149;
  }

  if (v159 <= 21)
  {
    v161 = 21;
  }

  else
  {
    v161 = v159;
  }

  v825[4] = malloc_type_realloc(0, 12 * v161, 0x10000403E1C8BA9uLL);
  v825[5] = v161;
  bzero(v825[4], 12 * v160);
  v159 = *(v153 + 488);
  v162 = v159;
  v825[3] = v159;
  if (v159 <= 0)
  {
LABEL_144:
    *(&v824 + 1) = v162;
    v825[6] = v162;
    if (v162 < 1)
    {
      goto LABEL_149;
    }

    goto LABEL_145;
  }

  if (v159 <= 64)
  {
    v163 = 64;
  }

  else
  {
    v163 = v159;
  }

  v825[0] = malloc_type_realloc(0, 4 * v163, 0x100004052888210uLL);
  v825[1] = v163;
  bzero(v825[0], 4 * v162);
  v159 = *(v153 + 488);
  v160 = v159;
  *(&v824 + 1) = v159;
  if (v159 <= 0)
  {
    goto LABEL_143;
  }

  if (v159 <= 64)
  {
    v164 = 64;
  }

  else
  {
    v164 = v159;
  }

  v165 = malloc_type_realloc(0, 4 * v164, 0x100004052888210uLL);
  v825[7] = v165;
  v825[8] = v164;
  bzero(v165, 4 * v160);
  v159 = *(v153 + 488);
  v162 = v159;
  v825[6] = v159;
  if (v159 < 1)
  {
    if (v159 < 1)
    {
      goto LABEL_149;
    }
  }

  else
  {
    v166 = 0;
    do
    {
      *(v165 + v166++) = -1;
      v167 = *(v153 + 488);
      v162 = v167;
    }

    while (v166 < v167);
    v159 = *(v153 + 488);
    if (v167 < 1)
    {
      goto LABEL_149;
    }
  }

LABEL_145:
  if (v162 <= 0x40)
  {
    v168 = 64;
  }

  else
  {
    v168 = v162;
  }

  v825[10] = malloc_type_realloc(0, 4 * v168, 0x100004052888210uLL);
  v825[11] = v168;
  bzero(v825[10], 4 * v162);
  v159 = *(v153 + 488);
LABEL_149:
  v825[9] = v159;
  v169 = *(a1 + 588);
  if (v169 >= 2)
  {
    v170 = 1 - v169;
    v171 = *(a1 + 592) + v169 - 1;
    while (!*(*(a1 + 304) + 880 * (v171 % v169) + 488))
    {
      --v171;
      if (__CFADD__(v170++, 1))
      {
        goto LABEL_154;
      }
    }

    v173 = (v769 - v170) % v169;
    v783 = v154;
    if (v173 == v769)
    {
      goto LABEL_223;
    }

LABEL_157:
    v174 = *(a1 + 304) + 880 * v173;
    LODWORD(v175) = *(v174 + 488);
    if (v175 <= 0)
    {
      if (v175 <= v159)
      {
        LODWORD(v175) = v159;
      }

      v222 = 0.0;
      goto LABEL_219;
    }

    v805 = v152;
    v177 = *(a1 + 16);
    v176 = *(a1 + 20);
    v178 = *(v153 + 360) * 0.1;
    v799 = v173;
    if ((v177 & 0xF) != 0)
    {
      v179 = v793;
      if (v177 < 1)
      {
        v232 = 0;
        v233 = 0;
        v182 = 0;
        v234 = v178 * v178;
        do
        {
          if (v793)
          {
            v237 = *(v174 + 368);
            *&v836.tv_usec = 0;
            v836.tv_sec = 0;
            *__y = 0;
            *&v845[0].tv_sec = v234;
            plq_inside_circle_helper(v793, (v237 + v232), v845, &v836, 1);
            if (v836.tv_sec == 1)
            {
              v238 = *&v836.tv_usec;
              v235 = **&v836.tv_usec != -1;
            }

            else
            {
              if (v836.tv_sec)
              {
                goto LABEL_714;
              }

              v235 = 0;
              v238 = *&v836.tv_usec;
            }

            free(v238);
            LODWORD(v175) = *(v174 + 488);
          }

          else
          {
            v235 = 0;
          }

          v236 = v176 >= 0 && v235;
          v182 += v236;
          ++v233;
          v232 += 8;
        }

        while (v233 < v175);
        goto LABEL_213;
      }

      if (v793)
      {
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = v178 * v178;
        v184 = 16;
        while (1)
        {
          v185 = (*(v174 + 368) + 8 * v181);
          *&v836.tv_usec = 0;
          v836.tv_sec = 0;
          *__y = 0;
          *&v845[0].tv_sec = v183;
          plq_inside_circle_helper(v179, v185, v845, &v836, 1);
          if (v836.tv_sec == 1)
          {
            v186 = **&v836.tv_usec;
            free(*&v836.tv_usec);
            if (v186 != -1)
            {
              v189 = *(v174 + 384);
              v190 = *(v153 + 384);
              v191 = v186 * v177;
              if (v177 < 4)
              {
                v192 = 0;
                v193 = 0;
                goto LABEL_180;
              }

              if (v177 >= 0x20)
              {
                v195 = 0uLL;
                v196 = (v189 + v184);
                v197 = 0uLL;
                v198 = (v190 + v191 + 16);
                v199 = v177 & 0x7FFFFFE0;
                v200 = 0uLL;
                v201 = 0uLL;
                v202 = 0uLL;
                v203 = 0uLL;
                v204 = 0uLL;
                v205 = 0uLL;
                do
                {
                  v206 = *v196[-2].i8;
                  v207 = *v198[-2].i8;
                  v208 = vsubl_u8(*v206.i8, *v207.i8);
                  v209 = vsubl_high_u8(v206, v207);
                  v210 = vsubl_u8(*v196, *v198);
                  v211 = vsubl_high_u8(*v196->i8, *v198->i8);
                  v201 = vmlal_high_s16(v201, v209, v209);
                  v200 = vmlal_s16(v200, *v209.i8, *v209.i8);
                  v197 = vmlal_high_s16(v197, v208, v208);
                  v195 = vmlal_s16(v195, *v208.i8, *v208.i8);
                  v205 = vmlal_high_s16(v205, v211, v211);
                  v204 = vmlal_s16(v204, *v211.i8, *v211.i8);
                  v203 = vmlal_high_s16(v203, v210, v210);
                  v202 = vmlal_s16(v202, *v210.i8, *v210.i8);
                  v196 += 4;
                  v198 += 4;
                  v199 -= 32;
                }

                while (v199);
                v188 = vaddq_s32(v204, v200);
                v187 = vaddq_s32(vaddq_s32(v203, v197), vaddq_s32(v205, v201));
                v193 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v202, v195), v188), v187));
                v192 = v177 & 0x7FFFFFE0;
                if (v192 != v177)
                {
                  v194 = v177 & 0x7FFFFFE0;
                  if ((v177 & 0x1C) == 0)
                  {
                    goto LABEL_180;
                  }

                  goto LABEL_177;
                }
              }

              else
              {
                v193 = 0;
                v194 = 0;
LABEL_177:
                v212 = v193;
                v213 = (v189 + v194 + v180);
                v214 = (v190 + v194 + v191);
                v215 = v194 - (v177 & 0x7FFFFFFC);
                do
                {
                  v216 = *v213++;
                  v187.i32[0] = v216;
                  v217 = *v214++;
                  v188.i32[0] = v217;
                  v188.i64[0] = vmovl_u8(*v188.i8).u64[0];
                  v187 = vsubl_u16(*&vmovl_u8(*v187.i8), *v188.i8);
                  v212 = vmlaq_s32(v212, v187, v187);
                  v215 += 4;
                }

                while (v215);
                v193 = vaddvq_s32(v212);
                v192 = v177 & 0x7FFFFFFC;
                if (v192 != v177)
                {
LABEL_180:
                  v218 = v177 - v192;
                  v219 = (v190 + v192 + v191);
                  v220 = v189 + v192;
                  do
                  {
                    v221 = *v219++;
                    v193 += (*(v220 + v180) - v221) * (*(v220 + v180) - v221);
                    ++v220;
                    --v218;
                  }

                  while (v218);
                }
              }

              if (v193 <= v176)
              {
                ++v182;
              }
            }
          }

          else
          {
            if (v836.tv_sec)
            {
              goto LABEL_714;
            }

            free(*&v836.tv_usec);
          }

          ++v181;
          v175 = *(v174 + 488);
          v184 += v177;
          v180 += v177;
          v179 = v793;
          if (v181 >= v175)
          {
            goto LABEL_213;
          }
        }
      }
    }

    else
    {
      v223 = v793;
      if (v177 < 1)
      {
        v760 = 0;
        v761 = 0;
        v182 = 0;
        v762 = v178 * v178;
        do
        {
          if (v793)
          {
            v765 = *(v174 + 368);
            *&v836.tv_usec = 0;
            v836.tv_sec = 0;
            *__y = 0;
            *&v845[0].tv_sec = v762;
            plq_inside_circle_helper(v793, (v765 + v760), v845, &v836, 1);
            if (v836.tv_sec == 1)
            {
              v766 = *&v836.tv_usec;
              v763 = **&v836.tv_usec != -1;
            }

            else
            {
              if (v836.tv_sec)
              {
LABEL_714:
                log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/core/containers/plq.c", 600, "plq_nn", "The size here should be exactly 1.");
                __assert_rtn("plq_nn", "plq.c", 600, "0");
              }

              v763 = 0;
              v766 = *&v836.tv_usec;
            }

            free(v766);
            LODWORD(v175) = *(v174 + 488);
          }

          else
          {
            v763 = 0;
          }

          v764 = v176 >= 0 && v763;
          v182 += v764;
          ++v761;
          v760 += 8;
        }

        while (v761 < v175);
        goto LABEL_213;
      }

      if (v793)
      {
        v224 = 0;
        v225 = 0;
        v182 = 0;
        v226 = v178 * v178;
        do
        {
          v227 = (*(v174 + 368) + 8 * v225);
          *&v836.tv_usec = 0;
          v836.tv_sec = 0;
          *__y = 0;
          *&v845[0].tv_sec = v226;
          plq_inside_circle_helper(v223, v227, v845, &v836, 1);
          if (v836.tv_sec == 1)
          {
            v228 = **&v836.tv_usec;
            free(*&v836.tv_usec);
            if (v228 != -1)
            {
              v229 = 0;
              v230 = 0;
              do
              {
                v231 = vabdq_u8(*(*(v174 + 384) + v224 + v229), *(*(v153 + 384) + v228 * v177 + v229));
                v230 += vaddlvq_u16(vqaddq_u16(vmull_u8(*v231.i8, *v231.i8), vmull_high_u8(v231, v231)));
                v229 += 16;
              }

              while (v229 < v177);
              if (v230 <= v176)
              {
                ++v182;
              }
            }
          }

          else
          {
            if (v836.tv_sec)
            {
              goto LABEL_714;
            }

            free(*&v836.tv_usec);
          }

          ++v225;
          v175 = *(v174 + 488);
          v224 += v177;
          v223 = v793;
        }

        while (v225 < v175);
        goto LABEL_213;
      }
    }

    v182 = 0;
LABEL_213:
    if (v175 <= *(v153 + 488))
    {
      LODWORD(v175) = *(v153 + 488);
    }

    if (v182 <= 99)
    {
      v239 = 0;
    }

    else
    {
      v239 = v182;
    }

    v222 = v239;
    v154 = v783;
    v152 = v805;
    v173 = v799;
LABEL_219:
    v240 = (*(v174 + 512) * 0.5) + ((v222 / v175) * 0.5);
    *(v153 + 512) = v240;
    if (v152 && (v241 = v152[1], v243 = v152[2], v242 = v152[3], v244 = v152[4], v245 = v152[5], v246 = sqrt(v241 * v241 + *v152 * *v152 + v243 * v243), *&__y[56] = *v152, *&__y[64] = v241, *&__y[72] = v243, v247 = __sincos_stret(v242), v248 = __sincos_stret(v244), v249 = __sincos_stret(v245), *&v836.tv_sec = v247.__cosval * v248.__cosval, *&v836.tv_usec = v247.__cosval * v248.__sinval * v249.__sinval - v247.__sinval * v249.__cosval, *__y = v247.__sinval * v249.__sinval + v247.__cosval * v248.__sinval * v249.__cosval, *&__y[8] = v247.__sinval * v248.__cosval, *&__y[16] = v247.__cosval * v249.__cosval + v247.__sinval * v248.__sinval * v249.__sinval, *&__y[24] = v247.__sinval * v248.__sinval * v249.__cosval - v247.__cosval * v249.__sinval, *&__y[32] = -v248.__sinval, *&__y[40] = v248.__cosval * v249.__sinval, *&__y[48] = v248.__cosval * v249.__cosval, v250 = g_log_so3(&v845[0].tv_sec, &v836.tv_sec), v240 = *(v153 + 512), (*(a1 + 284) + (((*(a1 + 276) * v250) + (*(a1 + 272) * v246)) + (*(a1 + 280) * v240))) > 0.0) || v240 >= *(a1 + 264))
    {
      v251 = (*(a1 + 304) + 880 * v173);
      v252 = v251[1];
      *v153 = *v251;
      *(v153 + 16) = v252;
      v253 = v251[2];
      v254 = v251[3];
      v255 = v251[5];
      *(v153 + 64) = v251[4];
      *(v153 + 80) = v255;
      *(v153 + 32) = v253;
      *(v153 + 48) = v254;
      v256 = (*(a1 + 304) + 880 * v173);
      v257 = v256[7];
      *(v153 + 96) = v256[6];
      *(v153 + 112) = v257;
      v258 = v256[8];
      v259 = v256[9];
      v260 = v256[11];
      *(v153 + 160) = v256[10];
      *(v153 + 176) = v260;
      *(v153 + 128) = v258;
      *(v153 + 144) = v259;
      *(v153 + 516) = 1;
      log_msg(3, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1872, "spawn", "Stop detected from kpts: %f static points", v240);
    }

    goto LABEL_223;
  }

LABEL_154:
  v173 = 0;
  v783 = v154;
  if (v769)
  {
    goto LABEL_157;
  }

LABEL_223:
  v261 = *(v153 + 516);
  if (v261)
  {
    v262 = *(a1 + 952) + 1;
  }

  else
  {
    v262 = 0;
  }

  v263 = 0;
  *(a1 + 952) = v262;
  v780 = v769 & 0x7FFF;
  v264 = 1.0;
  __asm { FMOV            V12.2S, #1.0 }

  while (1)
  {
    if (v261)
    {
      if (v263 >= 1)
      {
        goto LABEL_442;
      }
    }

    else if (v263 >= *(a1 + 52))
    {
      goto LABEL_442;
    }

    _ZF = (v263 | v261) == 0;
    v267 = 40;
    if (_ZF)
    {
      v267 = 36;
    }

    v268 = *(a1 + v267);
    v269 = *(v153 + 360);
    v270 = v823[0];
    if (v823[0] >= 1)
    {
      v271 = v823[1];
      if (v823[0] == 1)
      {
        v272 = 0;
LABEL_240:
        v275 = &v270[-v272];
        v276 = &v271[24 * v272];
        do
        {
          *v276 = 0;
          v276 += 24;
          --v275;
        }

        while (v275);
        goto LABEL_242;
      }

      v272 = v823[0] & 0x7FFFFFFFFFFFFFFELL;
      v273 = v823[0] & 0x7FFFFFFFFFFFFFFELL;
      v274 = v823[1];
      do
      {
        *v274 = 0;
        v274[3] = 0;
        v274 += 6;
        v273 -= 2;
      }

      while (v273);
      if (v270 != v272)
      {
        goto LABEL_240;
      }
    }

LABEL_242:
    if (*(v153 + 488) >= 1)
    {
      v277 = 0;
      v278 = *(v153 + 400);
      do
      {
        *(v278 + 4 * v277++) = -1;
        v279 = *(v153 + 488);
      }

      while (v277 < v279);
      if (v279 >= 1)
      {
        v280 = 0;
        v281 = *(a1 + 20);
        do
        {
          *(v154 + v280++) = v281;
        }

        while (v280 < *(v153 + 488));
      }
    }

    v776 = v263;
    v282 = v268 * v269;
    LODWORD(v825[2]) = *(a1 + 360);
    bzero(v810, *(a1 + 312));
    v283 = *(a1 + 588);
    v786 = v282;
    v781 = v282 * v282;
    if (v283 > 1)
    {
      v284 = 1;
      while (1)
      {
        v285 = *(a1 + 592);
        v286 = *(a1 + 304);
        v288 = *(a1 + 16);
        v287 = *(a1 + 20);
        v289 = *(a1 + 44);
        v800 = *(a1 + 24);
        v290 = *(a1 + 32);
        v291 = *(a1 + 56);
        v827 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
        v826 = 0;
        v828 = 64;
        *&v845[0].tv_usec = 0;
        v845[0].tv_sec = 0;
        if (gettimeofday(v845, 0) || (v845[0].tv_usec + 1000000 * v845[0].tv_sec) / 1000000.0 <= 1514764800.0)
        {
          goto LABEL_694;
        }

        v833.f64[1] = 0.0;
        v834 = 0.0;
        v835 = 0.0;
        v292 = (v264 / (*(v153 + 352) - *(v153 + 344)));
        v293 = (v264 / (*(v153 + 356) - *(v153 + 348)));
        memset(v845, 0, 152);
        LODWORD(v845[0].tv_sec) = 4;
        v806 = atan(1.0 / (v292 + v292));
        v294 = atan(1.0 / (v293 + v293));
        v295.f64[0] = v806;
        v295.f64[1] = v294;
        *&v845[0].tv_usec = vaddq_f64(v295, v295);
        v832 = *(v153 + 72);
        v833.f64[0] = *(v153 + 88);
        v296 = *(v153 + 48);
        if (fabs(v296) < 1.0)
        {
          break;
        }

        v833.f64[1] = 0.0;
        if (*(v153 + 48) > -1.0)
        {
          v834 = -1.57079633;
          v297 = -*(v153 + 8);
          v298 = -*(v153 + 16);
          goto LABEL_256;
        }

        v834 = 1.57079633;
        v299 = atan2(*(v153 + 8), *(v153 + 16)) + 0.0;
LABEL_258:
        v835 = v299;
        g_frustum_from_camera(&v836.tv_sec, &v832, v845, v800.f32[0], v800.f32[1]);
        if (v800.f32[0] > v290)
        {
          v290 = v800.f32[0];
        }

        v833.f64[1] = 0.0;
        v834 = 0.0;
        v835 = 0.0;
        v300 = (v264 / (*(v153 + 352) - *(v153 + 344)));
        v301 = (v264 / (*(v153 + 356) - *(v153 + 348)));
        memset(v845, 0, 152);
        LODWORD(v845[0].tv_sec) = 4;
        v807 = atan(1.0 / (v300 + v300));
        v302 = atan(1.0 / (v301 + v301));
        v303.f64[0] = v807;
        v303.f64[1] = v302;
        *&v845[0].tv_usec = vaddq_f64(v303, v303);
        v832 = *(v153 + 72);
        v833.f64[0] = *(v153 + 88);
        v304 = *(v153 + 48);
        if (fabs(v304) < 1.0)
        {
          v834 = asin(-v304);
          v833.f64[1] = atan2(*(v153 + 24), *v153);
          v305 = *(v153 + 56);
          v306 = *(v153 + 64);
LABEL_264:
          v307 = atan2(v305, v306);
          goto LABEL_266;
        }

        v833.f64[1] = 0.0;
        if (*(v153 + 48) > -1.0)
        {
          v834 = -1.57079633;
          v305 = -*(v153 + 8);
          v306 = -*(v153 + 16);
          goto LABEL_264;
        }

        v834 = 1.57079633;
        v307 = atan2(*(v153 + 8), *(v153 + 16)) + 0.0;
LABEL_266:
        v264 = 1.0;
        v308 = (v283 - v284 + v285) % v283;
        v309 = v286 + 880 * v308;
        v835 = v307;
        g_frustum_from_camera(&v844, &v832, v845, v290, v800.f32[1]);
        if (*(v309 + 488) >= 1)
        {
          v310 = 0;
          v311 = 0;
          v789 = 10 * v287;
          v808 = vdiv_f32(_D12, v800);
          v312 = 16;
          while (1)
          {
            v313 = *(v309 + 368);
            memset(v845, 0, 24);
            v832 = 0uLL;
            v833.f64[0] = 0.0;
            v829 = 0.0;
            v822 = 0.0;
            v314 = *(*(v309 + 400) + 4 * v311);
            if (v314 == -1)
            {
              break;
            }

            if (*(v810 + v314))
            {
              goto LABEL_269;
            }

            *(v810 + v314) = 1;
            v315 = *(*(v309 + 400) + 4 * v311);
            _ZF = v315 == -1;
            v316 = (*(a1 + 376) + 12 * v315);
            v317 = *(v309 + 24) * (v316[1] - *(v309 + 80)) + *v309 * (*v316 - *(v309 + 72)) + *(v309 + 48) * (v316[2] - *(v309 + 88));
            v318 = 1.0 / v317;
            v319 = v291 + v318;
            v320.i32[0] = v808.i32[0];
            v320.f32[1] = v318 - v291;
            v321.i32[1] = v808.i32[1];
            v321.f32[0] = v291 + v318;
            v322 = _ZF;
            v323 = vcgt_f32(v320, v321);
            v320.f32[0] = v319;
            v324 = vdiv_f32(_D12, vbsl_s8(v323, v320, v808));
            v325 = *(a1 + 960);
            v326 = *(v313 + 8 * v311);
            if (v325)
            {
              goto LABEL_276;
            }

LABEL_286:
            v338 = v326.f32[0];
            v339 = v326.f32[1];
            v340 = sqrt(v338 * v338 + 1.0 + v339 * v339);
            v341 = v338 / v340;
            v342 = v339 / v340;
            if (v340 > 0.0)
            {
              v343 = 1.0 / v340;
            }

            else
            {
              v343 = 0.0;
            }

            if (v340 > 0.0)
            {
              v344 = v341;
            }

            else
            {
              v344 = 0.0;
            }

            if (v340 > 0.0)
            {
              v345 = v342;
            }

            else
            {
              v345 = 0.0;
            }

            v346 = v343 * v324.f32[0];
            v347 = v344 * v324.f32[0];
            v348 = v345 * v324.f32[0];
            v349 = *v309;
            v350 = *(v309 + 8);
            v351 = *(v309 + 16);
            v352 = *(v309 + 24);
            v354 = *(v309 + 64);
            v353 = *(v309 + 72);
            *&v355 = v353 + v347 * v350 + *v309 * v346 + v351 * v348;
            v356 = *(v309 + 32);
            v357 = *(v309 + 40);
            v358 = v347 * v356 + v352 * v346 + v357 * v348;
            v359 = *(v309 + 48);
            v360 = *(v309 + 56);
            v361 = v347 * v360 + v359 * v346 + v354 * v348;
            v362 = *(v309 + 80);
            v363 = *(v309 + 88);
            v845[0].tv_sec = v355;
            *&v845[0].tv_usec = v362 + v358;
            *&v845[1].tv_sec = v363 + v361;
            v364 = v340 <= 0.0;
            if (v340 > 0.0)
            {
              v365 = 1.0 / v340;
            }

            else
            {
              v365 = 0.0;
            }

            if (v364)
            {
              v341 = 0.0;
              v342 = 0.0;
            }

            v366 = v324.f32[1];
            v367 = v365 * v366;
            v368 = v341 * v366;
            v369 = v342 * v366;
            v832.f64[0] = v353 + v350 * v368 + v349 * v367 + v351 * v369;
            v832.f64[1] = v362 + v356 * v368 + v352 * v367 + v357 * v369;
            v833.f64[0] = v363 + v360 * v368 + v359 * v367 + v354 * v369;
            if (!g_frustum_isect_lseg(&v836.tv_sec + 24 * v322, &v845[0].tv_sec, v832.f64, &v829, &v822))
            {
              goto LABEL_269;
            }

            v370 = *(v153 + 72);
            v371 = *(v153 + 80);
            v372 = *&v845[0].tv_sec + (v832.f64[0] - *&v845[0].tv_sec) * v829 - v370;
            v373 = *(v153 + 24);
            v374 = *&v845[0].tv_usec + (v832.f64[1] - *&v845[0].tv_usec) * v829 - v371;
            v375 = *(v153 + 48);
            v376 = *(v153 + 88);
            v377 = *&v845[1].tv_sec + (v833.f64[0] - *&v845[1].tv_sec) * v829 - v376;
            v378 = v373 * v374 + *v153 * v372 + v375 * v377;
            if (v378 <= 0.0)
            {
              goto LABEL_269;
            }

            v379 = *&v845[1].tv_sec + (v833.f64[0] - *&v845[1].tv_sec) * v822 - v376;
            v380 = *&v845[0].tv_sec + (v832.f64[0] - *&v845[0].tv_sec) * v822 - v370;
            v381 = *&v845[0].tv_usec + (v832.f64[1] - *&v845[0].tv_usec) * v822 - v371;
            v382 = v373 * v381 + *v153 * v380 + v375 * v379;
            if (v382 <= 0.0)
            {
              goto LABEL_269;
            }

            v383 = *(v153 + 32);
            v384 = *(v153 + 40);
            v385 = *(v153 + 8);
            v386 = *(v153 + 16);
            v387 = v374 * v383 + v385 * v372;
            v388 = v374 * v384 + v386 * v372;
            v389 = *(v153 + 56);
            v390 = *(v153 + 64);
            v391 = v387 + v389 * v377;
            v392 = v388 + v390 * v377;
            *&v391 = v391;
            *&v392 = v392;
            *&v391 = *&v391 / v378;
            *&v392 = *&v392 / v378;
            v393 = v384 * v381 + v386 * v380 + v390 * v379;
            v395 = v383 * v381 + v385 * v380;
            v394 = v395 + v389 * v379;
            *&v395 = v393;
            *&v393 = v394;
            *&v393 = *&v393 / v382;
            *&v394 = *&v395 / v382;
            *&v395 = ((*&v392 - *&v394) * (*&v392 - *&v394)) + ((*&v391 - *&v393) * (*&v391 - *&v393));
            if (*&v395 >= 1.0e-12)
            {
              v820[0] = *&v391;
              v820[1] = *&v392;
              v819[0] = *&v393;
              v819[1] = *&v394;
              *&v392 = v786;
              v396 = plq_inside_line(v793, v820, v819, &v826, v392, *&v393, v394, v395, v391);
              if (v396 > 0)
              {
                goto LABEL_314;
              }

              goto LABEL_268;
            }

            v821[0] = *&v391;
            v821[1] = *&v392;
            if (v793)
            {
              v831 = v781;
              v396 = plq_inside_circle_helper(v793, v821, &v831, &v826, 0);
              if (v396 > 0)
              {
LABEL_314:
                v405 = *(v309 + 384);
                v406 = *(v153 + 384);
                v407 = v396;
                v408 = v827;
                if ((v288 & 0xF) != 0)
                {
                  if (v288 > 0)
                  {
                    v409 = 0;
                    v410 = -1;
                    v411 = v789;
                    v412 = v789;
                    while (1)
                    {
                      v414 = *(v827 + v409) * v288;
                      if (v288 >= 4)
                      {
                        if (v288 < 0x20)
                        {
                          v416 = 0;
                          v417 = 0;
LABEL_335:
                          v435 = v416;
                          v436 = (v405 + v310 + v417);
                          v437 = (v406 + v417 + v414);
                          v438 = v417 - (v288 & 0x7FFFFFFC);
                          do
                          {
                            v439 = *v436++;
                            v397.i32[0] = v439;
                            v440 = *v437++;
                            v398.i32[0] = v440;
                            v398.i64[0] = vmovl_u8(*v398.i8).u64[0];
                            v397 = vsubl_u16(*&vmovl_u8(*v397.i8), *v398.i8);
                            v435 = vmlaq_s32(v435, v397, v397);
                            v438 += 4;
                          }

                          while (v438);
                          v416 = vaddvq_s32(v435);
                          v415 = v288 & 0x7FFFFFFC;
                          if (v415 == v288)
                          {
                            goto LABEL_317;
                          }

                          goto LABEL_338;
                        }

                        v418 = 0uLL;
                        v419 = (v406 + 16 + v414);
                        v420 = 0uLL;
                        v421 = v288 & 0x7FFFFFE0;
                        v422 = (v405 + v312);
                        v423 = 0uLL;
                        v424 = 0uLL;
                        v425 = 0uLL;
                        v426 = 0uLL;
                        v427 = 0uLL;
                        v428 = 0uLL;
                        do
                        {
                          v429 = *v422[-2].i8;
                          v430 = *v419[-2].i8;
                          v431 = vsubl_u8(*v429.i8, *v430.i8);
                          v432 = vsubl_high_u8(v429, v430);
                          v433 = vsubl_u8(*v422, *v419);
                          v434 = vsubl_high_u8(*v422->i8, *v419->i8);
                          v424 = vmlal_high_s16(v424, v432, v432);
                          v423 = vmlal_s16(v423, *v432.i8, *v432.i8);
                          v420 = vmlal_high_s16(v420, v431, v431);
                          v418 = vmlal_s16(v418, *v431.i8, *v431.i8);
                          v428 = vmlal_high_s16(v428, v434, v434);
                          v427 = vmlal_s16(v427, *v434.i8, *v434.i8);
                          v426 = vmlal_high_s16(v426, v433, v433);
                          v425 = vmlal_s16(v425, *v433.i8, *v433.i8);
                          v422 += 4;
                          v419 += 4;
                          v421 -= 32;
                        }

                        while (v421);
                        v398 = vaddq_s32(v427, v423);
                        v397 = vaddq_s32(vaddq_s32(v426, v420), vaddq_s32(v428, v424));
                        v416 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v425, v418), v398), v397));
                        if ((v288 & 0x7FFFFFE0) == v288)
                        {
                          goto LABEL_317;
                        }

                        v417 = v288 & 0x7FFFFFE0;
                        v415 = v417;
                        if ((v288 & 0x1C) != 0)
                        {
                          goto LABEL_335;
                        }
                      }

                      else
                      {
                        v415 = 0;
                        v416 = 0;
                      }

LABEL_338:
                      v441 = v288 - v415;
                      v442 = (v406 + v415 + v414);
                      v443 = v405 + v415;
                      do
                      {
                        v444 = *v442++;
                        v416 += (*(v443 + v310) - v444) * (*(v443 + v310) - v444);
                        ++v443;
                        --v441;
                      }

                      while (v441);
LABEL_317:
                      if (v416 < v412)
                      {
                        v412 = v416;
                      }

                      if (v416 <= v411)
                      {
                        v410 = *(v827 + v409);
                      }

                      if (v416 >= v411)
                      {
                        v413 = v411;
                      }

                      else
                      {
                        v413 = v416;
                      }

                      if (v416 < v411)
                      {
                        v412 = v411;
                      }

                      ++v409;
                      v411 = v413;
                      if (v409 == v407)
                      {
                        goto LABEL_369;
                      }
                    }
                  }

                  v410 = -1;
                  v451 = v789;
                  v412 = v789;
                  do
                  {
                    v453 = *v408++;
                    v452 = v453;
                    v412 &= v412 >> 31;
                    if (v451 >= 0)
                    {
                      v410 = v452;
                    }

                    v413 = v451 & (v451 >> 31);
                    if (v451 >= 0)
                    {
                      v412 = v451;
                    }

                    v451 &= v451 >> 31;
                    --v407;
                  }

                  while (v407);
                }

                else if (v288 <= 0)
                {
                  v410 = -1;
                  v454 = v789;
                  v412 = v789;
                  do
                  {
                    v456 = *v408++;
                    v455 = v456;
                    v412 &= v412 >> 31;
                    if (v454 >= 0)
                    {
                      v410 = v455;
                    }

                    v413 = v454 & (v454 >> 31);
                    if (v454 >= 0)
                    {
                      v412 = v454;
                    }

                    v454 &= v454 >> 31;
                    --v407;
                  }

                  while (v407);
                }

                else
                {
                  v445 = 0;
                  v446 = v405 + v310;
                  v410 = -1;
                  v447 = v789;
                  v412 = v789;
                  do
                  {
                    v448 = 0;
                    v449 = 0;
                    do
                    {
                      v450 = vabdq_u8(*(v446 + v448), *(v406 + *(v827 + v445) * v288 + v448));
                      v449 += vaddlvq_u16(vqaddq_u16(vmull_u8(*v450.i8, *v450.i8), vmull_high_u8(v450, v450)));
                      v448 += 16;
                    }

                    while (v448 < v288);
                    if (v449 < v412)
                    {
                      v412 = v449;
                    }

                    if (v449 <= v447)
                    {
                      v410 = *(v827 + v445);
                    }

                    if (v449 >= v447)
                    {
                      v413 = v447;
                    }

                    else
                    {
                      v413 = v449;
                    }

                    if (v449 < v447)
                    {
                      v412 = v447;
                    }

                    ++v445;
                    v447 = v413;
                  }

                  while (v445 != v396);
                }

LABEL_369:
                v826 = 0;
                if (v410 == -1)
                {
                  goto LABEL_269;
                }

                if (v413 > *(v783 + v410) || ((v289 * v289) * v412) < v413)
                {
                  goto LABEL_269;
                }

                v458 = v410;
                *(v783 + v410) = v413;
                v459 = *(*(v309 + 400) + 4 * v311);
                v460 = (v823[1] + 24 * v410);
                v461 = v780 | (v410 << 15);
                v778 = v410;
                v779 = v460;
                v777 = v461;
                if (v459 == -1)
                {
                  *v460 = 0;
                  v471 = v460[2];
                  if (v471 < 1)
                  {
                    v483 = 64;
                    if (v471)
                    {
                      v483 = 1;
                    }

                    v774 = v483;
                    v473 = malloc_type_realloc(v460[1], 4 * v483, 0x100004052888210uLL);
                    v471 = v774;
                    v458 = v778;
                    v460 = v779;
                    v461 = v777;
                    v779[1] = v473;
                    v779[2] = v774;
                    v472 = *v779;
                  }

                  else
                  {
                    v472 = 0;
                    v473 = v460[1];
                  }

                  v484 = v472 + 1;
                  *v460 = v472 + 1;
                  v473[v472] = v308 & 0x7FFF | (v311 << 15);
                  if (v472 + 1 >= v471)
                  {
                    v485 = v472 + 2;
                    if (2 * v471 > v484)
                    {
                      v485 = 2 * v471;
                    }

                    v775 = v485;
                    v473 = malloc_type_realloc(v473, 4 * v485, 0x100004052888210uLL);
                    v458 = v778;
                    v460 = v779;
                    v461 = v777;
                    v484 = *v779;
                    v779[1] = v473;
                    v779[2] = v775;
                  }

                  *v460 = v484 + 1;
                  v473[v484] = v461;
                  v486 = LODWORD(v825[2])++;
                  *(v825[0] + v458) = v486;
                  *(*(v153 + 400) + 4 * v458) = -1;
                  goto LABEL_269;
                }

                v462 = (*(a1 + 320) + 24 * v459);
                *v460 = 0;
                v463 = *v462;
                if (*v462 < 1)
                {
                  v474 = 0;
                  v475 = v460[2];
                  if (v475 <= 0)
                  {
                    goto LABEL_388;
                  }
                }

                else
                {
                  v464 = v462[1];
                  v465 = v462;
                  v466 = v460[2];
                  v772 = v465;
                  if (v463 <= v466)
                  {
                    v470 = 0;
                    v469 = v460[1];
                  }

                  else
                  {
                    v467 = 2 * v466;
                    _ZF = v466 == 0;
                    v468 = 64;
                    if (!_ZF)
                    {
                      v468 = v467;
                    }

                    if (v468 > v463)
                    {
                      v463 = v468;
                    }

                    v770 = v463;
                    v771 = v464;
                    v469 = malloc_type_realloc(v460[1], 4 * v463, 0x100004052888210uLL);
                    v464 = v771;
                    v779[1] = v469;
                    v779[2] = v770;
                    v470 = *v779;
                    v463 = *v772;
                  }

                  memcpy(&v469[4 * v470], v464, 4 * v463);
                  v458 = v778;
                  v460 = v779;
                  v474 = *v779 + *v772;
                  *v779 = v474;
                  v461 = v777;
                  v475 = v779[2];
                  if (v474 >= v475)
                  {
LABEL_388:
                    v476 = 2 * v475;
                    _ZF = v475 == 0;
                    v477 = 64;
                    if (!_ZF)
                    {
                      v477 = v476;
                    }

                    if (v477 <= v474)
                    {
                      v477 = v474 + 1;
                    }

                    if (v477)
                    {
                      v773 = v477;
                      v478 = malloc_type_realloc(v460[1], 4 * v477, 0x100004052888210uLL);
                      v477 = v773;
                      v458 = v778;
                      v460 = v779;
                      v461 = v777;
                      v779[1] = v478;
                      v474 = *v779;
                    }

                    v460[2] = v477;
                  }
                }

                v479 = v474 + 1;
                *v460 = v479;
                *(v460[1] + 4 * v479 - 4) = v461;
                LODWORD(v479) = *(*(v309 + 400) + 4 * v311);
                *(*(v153 + 400) + 4 * v458) = v479;
                v480 = v825[4] + 12 * v458;
                v481 = *(a1 + 376) + 12 * v479;
                v482 = *v481;
                *(v480 + 2) = *(v481 + 8);
                *v480 = v482;
                *(v825[0] + v458) = *(*(a1 + 344) + 4 * *(*(v309 + 400) + 4 * v311));
                goto LABEL_269;
              }
            }

LABEL_268:
            v826 = 0;
LABEL_269:
            ++v311;
            v312 += v288;
            v310 += v288;
            if (v311 >= *(v309 + 488))
            {
              goto LABEL_404;
            }
          }

          if (v284 != 1)
          {
            goto LABEL_269;
          }

          v399 = *(v309 + 392);
          if (v399)
          {
            v400 = 1.0 / *(v399 + 4 * v311);
            v402.i32[0] = v808.i32[0];
            v402.f32[1] = v400 - v291;
            v403.i32[1] = v808.i32[1];
            v403.f32[0] = v291 + v400;
            v401 = v403.f32[0];
            v404 = vcgt_f32(v402, v403);
            v402.f32[0] = v401;
            v324 = vdiv_f32(_D12, vbsl_s8(v404, v402, v808));
            v322 = 1;
            v325 = *(a1 + 960);
            v326 = *(v313 + 8 * v311);
            if (!v325)
            {
              goto LABEL_286;
            }
          }

          else
          {
            v322 = 1;
            v324 = v800;
            v325 = *(a1 + 960);
            v326 = *(v313 + 8 * v311);
            if (!v325)
            {
              goto LABEL_286;
            }
          }

LABEL_276:
          v327 = vcvt_s32_f32(vmla_f32(vmul_f32(vcvt_f32_s32(*(a1 + 992)), 0x3F0000003F000000), *(a1 + 984), v326));
          v328 = vcltz_s32(v327);
          LODWORD(v329) = v327.i32[1];
          v330 = v327.i32[0];
          v331 = HIDWORD(*(a1 + 992));
          v332 = *(a1 + 992);
          v364 = v332 <= v327.i32[0];
          v333 = v332 - 1;
          if (v364)
          {
            v330 = v333;
          }

          LODWORD(v334) = 2 * v330;
          if (v331 <= v327.i32[1])
          {
            LODWORD(v329) = v331 - 1;
          }

          v329 = v329;
          v334 = v334;
          if (v328.i8[0])
          {
            v334 = 0;
          }

          if (v328.i8[4])
          {
            v329 = 0;
          }

          v335 = (v325 + 4 * *(a1 + 976) * v329 + 4 * v334);
          v336 = vld1_dup_f32(v335++);
          v337 = vld1_dup_f32(v335);
          v324 = vbsl_s8(vcgt_f32(v336, v324), v336, vbsl_s8(vcgt_f32(v324, v337), v337, v324));
          goto LABEL_286;
        }

LABEL_404:
        *&v845[0].tv_usec = 0;
        v845[0].tv_sec = 0;
        if (gettimeofday(v845, 0) || (v845[0].tv_usec + 1000000 * v845[0].tv_sec) / 1000000.0 <= 1514764800.0)
        {
          goto LABEL_694;
        }

        free(v827);
        ++v284;
        v283 = *(a1 + 588);
        if (v284 >= v283)
        {
          goto LABEL_407;
        }
      }

      v834 = asin(-v296);
      v833.f64[1] = atan2(*(v153 + 24), *v153);
      v297 = *(v153 + 56);
      v298 = *(v153 + 64);
LABEL_256:
      v299 = atan2(v297, v298);
      goto LABEL_258;
    }

LABEL_407:
    LODWORD(v487) = *(v153 + 488);
    if (v487 < 1)
    {
      break;
    }

    v488 = 0;
    v489 = 0;
    v490 = 0;
    v491 = 0;
    v154 = v783;
    v492 = -1.0;
    do
    {
      v493 = v823[1];
      if (*(v823[1] + v488))
      {
        if ((slam_vo_map_triangulate_track(a1, (v823[1] + v488), *(*(v153 + 400) + 4 * v491), v825[4] + v489) * ((*(v153 + 360) * *(a1 + 160)) * (*(v153 + 360) * *(a1 + 160)))) >= v781 || (v494 = *(v825[4] + v489) - *(v153 + 72), v495 = *(v825[4] + v489 + 4) - *(v153 + 80), v496 = *(v825[4] + v489 + 8) - *(v153 + 88), v497 = *(v153 + 24) * v495 + *v153 * v494 + *(v153 + 48) * v496, v497 <= 0.0) || (v498 = v495 * *(v153 + 40) + *(v153 + 16) * v494 + *(v153 + 64) * v496, v499 = v495 * *(v153 + 32) + *(v153 + 8) * v494 + *(v153 + 56) * v496, ((((v498 / v497) - *(*(v153 + 368) + v490 + 4)) * ((v498 / v497) - *(*(v153 + 368) + v490 + 4))) + (((v499 / v497) - *(*(v153 + 368) + v490)) * ((v499 / v497) - *(*(v153 + 368) + v490)))) >= v781))
        {
          *&v493[v488] = 0;
          *(*(v153 + 400) + 4 * v491) = -2;
        }
      }

      ++v491;
      v487 = *(v153 + 488);
      v490 += 8;
      v489 += 12;
      v488 += 24;
    }

    while (v491 < v487);
    v500 = v776;
    if (*(a1 + 588) > 1)
    {
      goto LABEL_419;
    }

LABEL_227:
    v263 = v500 + 1;
    v261 = *(v153 + 516);
  }

  v154 = v783;
  v492 = -1.0;
  v364 = v283 <= 1;
  v500 = v776;
  if (v364)
  {
    goto LABEL_227;
  }

LABEL_419:
  if (*(a1 + 952) > 3)
  {
    goto LABEL_227;
  }

  if (v487 >= 1 && *(a1 + 392))
  {
    v501 = 0;
    v502 = *(v153 + 400);
    v503 = v825[7];
    do
    {
      v504 = *(v502 + 4 * v501);
      if ((v504 & 0x80000000) == 0)
      {
        v503[v501] = *(*(a1 + 400) + 4 * v504);
        LODWORD(v487) = *(v153 + 488);
      }

      ++v501;
    }

    while (v501 < v487);
  }

  v505 = tracker_bundle(a1, v823, 1);
  if (((LODWORD(v505) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E || (LODWORD(v505) & 0x7FFFFFFFu) - 1 <= 0x7FFFFE)
  {
    v507 = v825[3];
    if (v825[3] >= v823[0])
    {
      v507 = v823[0];
    }

    if (v507 >= 1)
    {
      v508 = 0;
      v509 = (v825[4] + 8);
      v510 = v823[1] + 8;
      do
      {
        v511 = *(v510 - 1);
        if (v511)
        {
          v512 = *(a1 + 40) * *(v153 + 360);
          v513 = *(*v510 + (((v511 << 32) - 0x100000000) >> 30));
          v514 = *(a1 + 304) + 880 * (v513 & 0x7FFF);
          if (v511 >= 2)
          {
            v512 = (v511 / (v511 + v492)) * v512;
          }

          v515 = *(v509 - 2) - *(v514 + 72);
          v516 = *(v509 - 1) - *(v514 + 80);
          v517 = *v509 - *(v514 + 88);
          v518 = *(v514 + 24) * v516 + *v514 * v515 + *(v514 + 48) * v517;
          if (v518 <= 0.0 || (v519 = (*(v514 + 368) + 8 * (v513 >> 15)), v520 = v516 * *(v514 + 40) + *(v514 + 16) * v515 + *(v514 + 64) * v517, v521 = v516 * *(v514 + 32) + *(v514 + 8) * v515 + *(v514 + 56) * v517, ((((v520 / v518) - v519[1]) * ((v520 / v518) - v519[1])) + (((v521 / v518) - *v519) * ((v521 / v518) - *v519))) >= (v512 * v512)))
          {
            *(*(v153 + 400) + 4 * v508) = -2;
          }
        }

        ++v508;
        v509 += 3;
        v510 += 3;
      }

      while (v507 != v508);
    }

    goto LABEL_227;
  }

LABEL_442:
  if (*(v153 + 488) >= 1)
  {
    v522 = 0;
    v523 = 0;
    v524 = 0;
    do
    {
      v525 = *(v153 + 400);
      v526 = *(v525 + 4 * v524);
      if (v526 == -1)
      {
        v536 = v823[1] + v522;
        if (*(v823[1] + v522) == 2)
        {
          v537 = *(a1 + 312);
          *(v525 + 4 * v524) = v537;
          v538 = **(v536 + 1) & 0x7FFF;
          if (v538 == v769)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1967, "spawn", "im(%d) == idx(%d)", v769, v769);
            __assert_rtn("spawn", "slam_tracker_vo.c", 1967, "0");
          }

          *(*(*(a1 + 304) + 880 * v538 + 400) + ((**(v536 + 1) >> 13) & 0x7FFFC)) = v537;
          v539 = *(a1 + 328);
          if (v537 >= v539)
          {
            v540 = 2 * v539;
            _ZF = v539 == 0;
            v541 = 10;
            if (!_ZF)
            {
              v541 = v540;
            }

            if (v541 <= v537)
            {
              v542 = v537 + 1;
            }

            else
            {
              v542 = v541;
            }

            if (v542)
            {
              *(a1 + 320) = malloc_type_realloc(*(a1 + 320), 24 * v542, 0x1010040A500212DuLL);
              v537 = *(a1 + 312);
            }

            *(a1 + 328) = v542;
          }

          *(a1 + 312) = v537 + 1;
          v543 = *(a1 + 320) + 24 * v537;
          v544 = *v536;
          *(v543 + 16) = *(v536 + 2);
          *v543 = v544;
          v545 = *(a1 + 368);
          v546 = *(a1 + 384);
          if (v545 >= v546)
          {
            v547 = 2 * v546;
            _ZF = v546 == 0;
            v548 = 21;
            if (!_ZF)
            {
              v548 = v547;
            }

            if (v548 <= v545)
            {
              v549 = v545 + 1;
            }

            else
            {
              v549 = v548;
            }

            if (v549)
            {
              *(a1 + 376) = malloc_type_realloc(*(a1 + 376), 12 * v549, 0x10000403E1C8BA9uLL);
              v545 = *(a1 + 368);
            }

            *(a1 + 384) = v549;
          }

          *(a1 + 368) = v545 + 1;
          v550 = *(a1 + 376) + 12 * v545;
          v551 = *(v825[4] + v523);
          *(v550 + 8) = *(v825[4] + v523 + 8);
          *v550 = v551;
          v552 = *(a1 + 336);
          v553 = *(a1 + 352);
          if (v552 >= v553)
          {
            v554 = 2 * v553;
            _ZF = v553 == 0;
            v555 = 64;
            if (!_ZF)
            {
              v555 = v554;
            }

            if (v555 <= v552)
            {
              v556 = v552 + 1;
            }

            else
            {
              v556 = v555;
            }

            if (v556)
            {
              *(a1 + 344) = malloc_type_realloc(*(a1 + 344), 4 * v556, 0x100004052888210uLL);
              v552 = *(a1 + 336);
            }

            *(a1 + 352) = v556;
          }

          v557 = v552 + 1;
          *(a1 + 336) = v557;
          v558 = *(a1 + 360);
          *(a1 + 360) = v558 + 1;
          *(*(a1 + 344) + 4 * v557 - 4) = v558;
          v559 = *(a1 + 416);
          v560 = *(a1 + 432);
          if (v559 >= v560)
          {
            v561 = 2 * v560;
            _ZF = v560 == 0;
            v562 = 64;
            if (!_ZF)
            {
              v562 = v561;
            }

            if (v562 <= v559)
            {
              v563 = v559 + 1;
            }

            else
            {
              v563 = v562;
            }

            if (v563)
            {
              *(a1 + 424) = malloc_type_realloc(*(a1 + 424), 4 * v563, 0x100004052888210uLL);
              v559 = *(a1 + 416);
            }

            *(a1 + 432) = v563;
          }

          *(a1 + 416) = v559 + 1;
          *(*(a1 + 424) + 4 * v559) = v538;
          *(v536 + 1) = 0;
        }
      }

      else if (v526 == -2)
      {
        *(v525 + 4 * v524) = -1;
      }

      else
      {
        v527 = *(a1 + 320) + 24 * v526;
        v528 = *(a1 + 376) + 12 * v526;
        v529 = *(v825[4] + v523);
        *(v528 + 8) = *(v825[4] + v523 + 8);
        *v528 = v529;
        v530 = *v527;
        v531 = *(v527 + 16);
        if (*v527 >= v531)
        {
          v532 = 2 * v531;
          _ZF = v531 == 0;
          v533 = 64;
          if (!_ZF)
          {
            v533 = v532;
          }

          if (v533 <= v530)
          {
            v534 = v530 + 1;
          }

          else
          {
            v534 = v533;
          }

          if (v534)
          {
            *(v527 + 8) = malloc_type_realloc(*(v527 + 8), 4 * v534, 0x100004052888210uLL);
            v530 = *v527;
          }

          *(v527 + 16) = v534;
        }

        v535 = v530 + 1;
        *v527 = v535;
        *(*(v527 + 8) + 4 * v535 - 4) = v780;
      }

      ++v524;
      v523 += 12;
      v522 += 24;
      v780 += 0x8000;
    }

    while (v524 < *(v153 + 488));
  }

  if (v823[0] >= 1)
  {
    v564 = 0;
    v565 = 8;
    do
    {
      free(*(v823[1] + v565));
      ++v564;
      v565 += 24;
    }

    while (v823[0] > v564);
  }

  free(v823[1]);
  v823[0] = 0;
  v823[1] = 0;
  *&v824 = 0;
  free(v825[0]);
  *(&v824 + 1) = 0;
  v825[0] = 0;
  v825[1] = 0;
  free(v825[4]);
  memset(&v825[3], 0, 24);
  free(v825[7]);
  memset(&v825[6], 0, 24);
  free(v825[10]);
  memset(&v825[9], 0, 24);
  plq_free(v793);
  free(v783);
  free(v810);
  v566 = *(a1 + 392);
  v567 = *(a1 + 368);
  if (v567 == v566)
  {
    goto LABEL_512;
  }

  v568 = *(a1 + 408);
  if (v567 <= v568)
  {
    v572 = v567 - v566;
    if (v567 <= v566)
    {
      goto LABEL_510;
    }
  }

  else
  {
    v569 = 2 * v568;
    _ZF = v568 == 0;
    v570 = 64;
    if (!_ZF)
    {
      v570 = v569;
    }

    if (v570 <= v567)
    {
      v571 = *(a1 + 368);
    }

    else
    {
      v571 = v570;
    }

    if (v571)
    {
      *(a1 + 400) = malloc_type_realloc(*(a1 + 400), 4 * v571, 0x100004052888210uLL);
    }

    *(a1 + 408) = v571;
    v572 = v567 - v566;
    if (v567 <= v566)
    {
LABEL_510:
      v573 = *(a1 + 368);
      *(a1 + 392) = v573;
      v574 = v566;
      if (v573 > v566)
      {
        goto LABEL_511;
      }

      goto LABEL_512;
    }
  }

  bzero((*(a1 + 400) + 4 * *(a1 + 392)), 4 * v572);
  v573 = *(a1 + 368);
  *(a1 + 392) = v573;
  v574 = v566;
  if (v573 > v566)
  {
LABEL_511:
    memset((*(a1 + 400) + 4 * v574), 255, 4 * v573 - 4 * v566);
  }

LABEL_512:
  *&v836.tv_usec = 0;
  v836.tv_sec = 0;
  if (gettimeofday(&v836, 0) || (v836.tv_usec + 1000000 * v836.tv_sec) / 1000000.0 <= 1514764800.0)
  {
    goto LABEL_694;
  }

  if (*(a1 + 84))
  {
    v575 = *(a1 + 304) + 880 * *(a1 + 592);
    v824 = 0u;
    memset(v825, 0, sizeof(v825));
    *v823 = 0u;
    LODWORD(v576) = *(v575 + 488);
    if (v576 > 0)
    {
      v577 = 0;
      v578 = *(v575 + 488);
      while (1)
      {
        v579 = *(*(v575 + 400) + 4 * v577);
        if (v579 != -1)
        {
          v580 = *(*(a1 + 320) + 24 * v579 + 8) + 4 * *(*(a1 + 320) + 24 * v579);
          v581 = *(a1 + 592);
          if ((*(v580 - 4) & 0x7FFF) != v581)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 2294, "_tracker_subpix_refine", "im(%d) != tracker->last_cam(%d)", *(v580 - 4) & 0x7FFF, v581);
            __assert_rtn("_tracker_subpix_refine", "slam_tracker_vo.c", 2294, "0");
          }

          v582 = *(v580 - 8);
          if ((*(v580 - 4) & 0x7FFF) == (*(v580 - 8) & 0x7FFF))
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 2295, "_tracker_subpix_refine", "im(%d)==in_ref(%d)", *(v580 - 8) & 0x7FFF, *(v580 - 8) & 0x7FFF);
            __assert_rtn("_tracker_subpix_refine", "slam_tracker_vo.c", 2295, "0");
          }

          v583 = *(a1 + 376);
          v584 = v582 >> 15;
          v585 = *(a1 + 304) + 880 * (v582 & 0x7FFF);
          v586 = *(a1 + 88);
          v587 = (*(v575 + 376) + 8 * v577);
          v588 = *v587;
          v589 = *(v585 + 376);
          LODWORD(v822) = 0;
          v821[0] = 0.0;
          if (*(*(v585 + 400) + 4 * v584) != v579)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 2218, "_tracker_match_subpix_refine", "track[kpt_ref](%d) != trk(%d)", *(*(v585 + 400) + 4 * v584), v579);
            __assert_rtn("_tracker_match_subpix_refine", "slam_tracker_vo.c", 2218, "0");
          }

          if (v586 >= 33)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 2219, "_tracker_match_subpix_refine", "patch_w > max_w");
            __assert_rtn("_tracker_match_subpix_refine", "slam_tracker_vo.c", 2219, "0");
          }

          v590 = (v583 + 12 * v579);
          v826 = &v836;
          v828 = v586;
          HIDWORD(v827) = v586;
          LODWORD(v827) = v586;
          v591 = vcvt_f32_f64(vsubq_f64(*(v585 + 72), vcvtq_f64_f32(*v590)));
          v592 = *(v585 + 88) - v590[1].f32[0];
          v593 = sqrt(((COERCE_FLOAT(vmul_f32(v591, v591).i32[1]) + (v591.f32[0] * v591.f32[0])) + (v592 * v592)));
          v811 = v587;
          v795 = v588;
          v809 = v590;
          if (v593 <= 0.0)
          {
            *&v594 = 0.0;
            v595 = 0.0;
          }

          else
          {
            v594 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v591), vdupq_lane_s64(*&v593, 0)));
            v595 = v592 / v593;
          }

          memset(v845, 0, sizeof(v845));
          v829 = *&v594;
          v830 = v595;
          v596 = *(v585 + 416);
          v597 = *(v585 + 420);
          LODWORD(v845[0].tv_sec) = *(v585 + 192);
          v598 = *(v585 + 200);
          if ((v845[0].tv_sec & 0xFFFFFFFC) == 0xC)
          {
            v599 = 1.0 / tan(v598 * 0.5);
            v600 = *(v585 + 208);
            v601 = v600 / v598;
          }

          else
          {
            v602 = tan(v598 * 0.5);
            v600 = *(v585 + 208);
            v599 = v596 / (v602 + v602);
            v603 = tan(v600 * 0.5);
            v601 = v597 / (v603 + v603);
          }

          *&v845[0].tv_usec = v599;
          *&v845[1].tv_sec = v601;
          *&v845[1].tv_usec = v598;
          *&v845[2].tv_sec = v600;
          v604 = *(v585 + 248);
          *&v845[5].tv_usec = *(v585 + 264);
          *&v845[4].tv_usec = v604;
          v605 = *(v585 + 280);
          v606 = *(v585 + 296);
          v607 = *(v585 + 312);
          *&v845[9].tv_usec = *(v585 + 328);
          *&v845[8].tv_usec = v607;
          *&v845[7].tv_usec = v606;
          *&v845[6].tv_usec = v605;
          *&v845[2].tv_usec = *(v585 + 216);
          *&v845[3].tv_usec = *(v585 + 232);
          *&v845[10].tv_usec = __PAIR64__(v597, v596);
          if (*(v585 + 208) == 0.0)
          {
            v845[2].tv_sec = 0;
          }

          if (*(v585 + 200) == 0.0)
          {
            *&v845[1].tv_usec = 0;
          }

          v608 = (v589 + 8 * v584);
          _jac_patch_to_improj2(v832.f64, v809, &v829, v585, v845, v608->f32[0], v608->f32[1]);
          v797 = v832;
          v801 = v833;
          v609 = *(v575 + 416);
          v610 = *(v575 + 420);
          LODWORD(v845[0].tv_sec) = *(v575 + 192);
          v611 = *(v575 + 200);
          if ((v845[0].tv_sec & 0xFFFFFFFC) == 0xC)
          {
            v612 = 1.0 / tan(v611 * 0.5);
            v613 = *(v575 + 208);
            v614 = v613 / v611;
          }

          else
          {
            v615 = tan(v611 * 0.5);
            v613 = *(v575 + 208);
            v612 = v609 / (v615 + v615);
            v616 = tan(v613 * 0.5);
            v614 = v610 / (v616 + v616);
          }

          *&v845[0].tv_usec = v612;
          *&v845[1].tv_sec = v614;
          *&v845[1].tv_usec = v611;
          *&v845[2].tv_sec = v613;
          v617 = *(v575 + 248);
          *&v845[5].tv_usec = *(v575 + 264);
          *&v845[4].tv_usec = v617;
          v618 = *(v575 + 280);
          v619 = *(v575 + 296);
          v620 = *(v575 + 312);
          *&v845[9].tv_usec = *(v575 + 328);
          *&v845[8].tv_usec = v620;
          *&v845[7].tv_usec = v619;
          *&v845[6].tv_usec = v618;
          *&v845[2].tv_usec = *(v575 + 216);
          *&v845[3].tv_usec = *(v575 + 232);
          *&v845[10].tv_usec = __PAIR64__(v610, v609);
          if (*(v575 + 208) == 0.0)
          {
            v845[2].tv_sec = 0;
          }

          if (*(v575 + 200) == 0.0)
          {
            *&v845[1].tv_usec = 0;
          }

          _jac_patch_to_improj2(v832.f64, v809, &v829, v575, v845, *v811, v811[1]);
          v623 = fabs(v832.f64[0] * v833.f64[1] - v833.f64[0] * v832.f64[1]);
          _ZF = v623 > 0x7FF0000000000000 || v623 == 0x7FF0000000000000;
          if (!_ZF && v623 != 0)
          {
            if (v586 >= 1)
            {
              v626 = 0;
              v627 = 1.0 / (v832.f64[0] * v833.f64[1] - v833.f64[0] * v832.f64[1]);
              _S5 = *v797.f64;
              v629 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(0, v797, v833.f64[1] * v627), v801, -(v832.f64[1] * v627)));
              v630 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(0, v797, -(v833.f64[0] * v627)), v801, v832.f64[0] * v627));
              v631 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v608), vcvtq_f64_f32(vadd_f32(v629, v630)), (v586 + -1.0) * -0.5));
              v632 = *(v585 + 408);
              v633 = *(v585 + 424);
              v634 = &v836;
              do
              {
                v635 = v634;
                v636 = v586;
                v637 = v631;
                do
                {
                  v648 = v637.f32[0];
                  if (v637.f32[0] < 0)
                  {
                    if (v648 != -1)
                    {
                      v651 = 0;
                      v652 = 0;
                      v653 = v637.f32[1];
                      if ((v637.f32[1] & 0x80000000) == 0)
                      {
                        goto LABEL_552;
                      }

                      goto LABEL_571;
                    }

                    v651 = 0;
                    v650 = *(v585 + 416) - 1;
                  }

                  else
                  {
                    v649 = *(v585 + 416);
                    v650 = v649 - 1;
                    if (v649 <= v648)
                    {
                      v651 = v649 - 1;
                    }

                    else
                    {
                      v651 = v637.f32[0];
                    }
                  }

                  if (v650 <= v648)
                  {
                    LODWORD(v652) = v650;
                  }

                  else
                  {
                    LODWORD(v652) = v648 + 1;
                  }

                  v652 = v652;
                  v653 = v637.f32[1];
                  if ((v637.f32[1] & 0x80000000) == 0)
                  {
LABEL_552:
                    v638 = *(v585 + 420);
                    v639 = v638 - 1;
                    if (v638 <= v653)
                    {
                      v640 = v638 - 1;
                    }

                    else
                    {
                      v640 = v653;
                    }

                    goto LABEL_555;
                  }

LABEL_571:
                  if (v653 != -1)
                  {
                    v640 = 0;
                    v641 = 0;
                    goto LABEL_559;
                  }

                  v640 = 0;
                  v639 = *(v585 + 420) - 1;
LABEL_555:
                  if (v639 <= v653)
                  {
                    LODWORD(v641) = v639;
                  }

                  else
                  {
                    LODWORD(v641) = v653 + 1;
                  }

                  v641 = v641;
LABEL_559:
                  v642 = v632 + v641 * v633;
                  LOBYTE(_S5) = *(v642 + v651);
                  v643 = vcvt_f32_s32(__PAIR64__(v640, v651));
                  v644 = v632 + v633 * v640;
                  LOBYTE(v621) = *(v644 + v651);
                  v621 = LODWORD(v621);
                  _S7 = LODWORD(_S5) - v621;
                  _D4 = vsub_f32(v637, v643);
                  LOBYTE(v622) = *(v642 + v652);
                  *&v647 = v621 + LODWORD(v622);
                  LOBYTE(v647) = *(v644 + v652);
                  v622 = (v647 - v621) * _D4.f32[0];
                  __asm { FMLA            S5, S7, V4.S[1] }

                  LOBYTE(v635->tv_sec) = (_S5 + v621);
                  v635 = (v635 + 1);
                  v637 = vadd_f32(v637, v629);
                  --v636;
                }

                while (v636);
                v631 = vadd_f32(v631, v630);
                ++v626;
                v634 = (v634 + v586);
              }

              while (v626 != v586);
            }

            v654 = p_klt((v575 + 408), &v826, &v822, v821, 5, *v811, v811[1]).n64_f32[0];
            *v811 = *&v822;
            v811[1] = v821[0];
            if (v654 > 1000000.0)
            {
              *v811 = v795;
            }
          }

          v578 = *(v575 + 488);
        }

        ++v577;
        v576 = v578;
        if (v577 >= v578)
        {
          goto LABEL_581;
        }
      }
    }

    v576 = v576;
LABEL_581:
    memcpy(*(v575 + 368), *(v575 + 376), 8 * v576);
    v655 = *(v575 + 480);
    v656 = *(v575 + 484);
    LODWORD(v823[0]) = *(v575 + 192);
    v657 = *(v575 + 200);
    if ((v823[0] & 0xFFFFFFFC) == 0xC)
    {
      v658 = 1.0 / tan(v657 * 0.5);
      v659 = *(v575 + 208);
      v660 = v659 / v657;
    }

    else
    {
      v661 = tan(v657 * 0.5);
      v659 = *(v575 + 208);
      v658 = v655 / (v661 + v661);
      v662 = tan(v659 * 0.5);
      v660 = v656 / (v662 + v662);
    }

    v823[1] = *&v658;
    *&v824 = v660;
    *(&v824 + 1) = v657;
    v825[0] = *&v659;
    v663 = *(v575 + 248);
    *&v825[7] = *(v575 + 264);
    *&v825[5] = v663;
    v664 = *(v575 + 280);
    v665 = *(v575 + 296);
    v666 = *(v575 + 312);
    *&v825[15] = *(v575 + 328);
    *&v825[13] = v666;
    *&v825[11] = v665;
    *&v825[9] = v664;
    *&v825[1] = *(v575 + 216);
    *&v825[3] = *(v575 + 232);
    v825[17] = __PAIR64__(v656, v655);
    if (*(v575 + 208) == 0.0)
    {
      v825[0] = 0;
    }

    if (*(v575 + 200) == 0.0)
    {
      *(&v824 + 1) = 0;
    }

    rectify_pts(v823, *(v575 + 368), *(v575 + 488), (v575 + 344));
    *&v836.tv_usec = 0;
    v836.tv_sec = 0;
    if (gettimeofday(&v836, 0) || (v836.tv_usec + 1000000 * v836.tv_sec) / 1000000.0 <= 1514764800.0)
    {
      goto LABEL_694;
    }
  }

  if (*(a1 + 128) >= 1)
  {
    v667 = 0;
    while (1)
    {
      if (*(a1 + 588) < 2 || *(a1 + 952) > 3)
      {
        goto LABEL_643;
      }

      v668 = COERCE_UNSIGNED_INT(tracker_bundle(a1, a1 + 312, *(a1 + 140))) & 0x7FFFFFFF;
      v669 = v668 > 0x7F800000 || v668 == 2139095040;
      if (v669 || v668 == 0)
      {
        goto LABEL_643;
      }

      v671 = *(a1 + 368);
      v672 = *(a1 + 312);
      if (v671 < v672)
      {
        v672 = *(a1 + 368);
      }

      if (v672 >= 1)
      {
        break;
      }

LABEL_631:
      v705 = *(a1 + 260);
      v706 = *(a1 + 592);
      v707 = *a1;
      v708 = malloc_type_malloc(v671, 0x9CFFDC2EuLL);
      v709 = v708;
      if (*(a1 + 312) >= 1)
      {
        v710 = 0;
        v711 = 0;
        do
        {
          v715 = *(a1 + 320);
          v716 = *(v715 + v710);
          if (v716)
          {
            v712 = **(v715 + v710 + 8) & 0x7FFF;
          }

          else
          {
            v712 = -1;
          }

          v714 = v716 < v705 && v712 != (v706 + 1) % v707;
          v708[v711++] = v714;
          v710 += 24;
        }

        while (*(a1 + 312) > v711);
      }

      remove_map_points(a1, v708);
      free(v709);
      if (++v667 >= *(a1 + 128))
      {
        goto LABEL_643;
      }
    }

    v812 = v667;
    v673 = 0;
    while (2)
    {
      v675 = *(a1 + 320) + 24 * v673;
      v676 = *(a1 + 40) * *(v767 + 880 * v768 + 360);
      v677 = *v675;
      if (*v675 >= 2)
      {
        v676 = v676 * (v677 / (v677 + -1.0));
      }

      if (v677 < 1)
      {
        v699 = 0;
        v700 = *(v675 + 16);
        if (v700 < 0)
        {
          goto LABEL_618;
        }
      }

      else
      {
        v678 = 0;
        v679 = (*(a1 + 376) + 12 * v673);
        v680 = *(v675 + 8);
        v681 = *(a1 + 304);
        v682 = *v679;
        v683 = v679[1];
        v684 = v679[2];
        v685 = v676 * v676;
        v686 = v680;
        v687 = *v675;
        do
        {
          while (1)
          {
            v689 = *v686++;
            v688 = v689;
            v690 = v689 >> 15;
            v691 = v681 + 880 * (v689 & 0x7FFF);
            v692 = v682 - *(v691 + 72);
            v693 = v683 - *(v691 + 80);
            v694 = v684 - *(v691 + 88);
            v695 = *(v691 + 24) * v693 + *v691 * v692 + *(v691 + 48) * v694;
            if (v695 > 0.0)
            {
              v696 = (*(v691 + 368) + 8 * v690);
              v697 = v693 * *(v691 + 40) + *(v691 + 16) * v692 + *(v691 + 64) * v694;
              v698 = v693 * *(v691 + 32) + *(v691 + 8) * v692 + *(v691 + 56) * v694;
              if (((((v697 / v695) - v696[1]) * ((v697 / v695) - v696[1])) + (((v698 / v695) - *v696) * ((v698 / v695) - *v696))) < v685)
              {
                break;
              }
            }

            *(*(v691 + 400) + 4 * v690) = -1;
            if (!--v687)
            {
              goto LABEL_617;
            }
          }

          v680[v678++] = v688;
          --v687;
        }

        while (v687);
LABEL_617:
        v699 = v678;
        v700 = *(v675 + 16);
        if (v700 < v699)
        {
LABEL_618:
          v701 = 2 * v700;
          _ZF = v700 == 0;
          v702 = 64;
          if (!_ZF)
          {
            v702 = v701;
          }

          if (v702 <= v699)
          {
            v703 = v699;
          }

          else
          {
            v703 = v702;
          }

          if (v703)
          {
            *(v675 + 8) = malloc_type_realloc(*(v675 + 8), 4 * v703, 0x100004052888210uLL);
          }

          *(v675 + 16) = v703;
          v704 = v699 - v677;
          if (v699 > v677)
          {
LABEL_629:
            bzero((*(v675 + 8) + 4 * *v675), 4 * v704);
          }

LABEL_606:
          *v675 = v699;
          ++v673;
          v671 = *(a1 + 368);
          v674 = *(a1 + 312);
          if (v671 < v674)
          {
            v674 = *(a1 + 368);
          }

          if (v673 >= v674)
          {
            v667 = v812;
            goto LABEL_631;
          }

          continue;
        }
      }

      break;
    }

    v704 = v699 - v677;
    if (v699 > v677)
    {
      goto LABEL_629;
    }

    goto LABEL_606;
  }

LABEL_643:
  if (*(a1 + 300))
  {
    v717 = *(a1 + 312);
    if (v717)
    {
      if (v717 < 1)
      {
        v720 = 0.0;
        v721 = *(a1 + 928);
        v722 = *(a1 + 944);
        if (v721 >= v722)
        {
          goto LABEL_658;
        }
      }

      else
      {
        if (v717 >= 9)
        {
          v723 = *(a1 + 312) & 7;
          if ((v717 & 7) == 0)
          {
            v723 = 8;
          }

          v718 = v717 - v723;
          v724 = 0uLL;
          v725 = v718;
          v726 = *(a1 + 320);
          v727 = 0uLL;
          do
          {
            v728 = v726 + 12;
            v729 = v726;
            v730 = vld3q_f64(v729);
            v729 += 6;
            v731 = vld3q_f64(v729);
            v732 = vld3q_f64(v728);
            v733 = v726 + 18;
            v734 = vld3q_f64(v733);
            v724 = vaddq_s32(v724, vuzp1q_s32(v730, v731));
            v727 = vaddq_s32(v727, vuzp1q_s32(v732, v734));
            v726 += 24;
            v725 -= 8;
          }

          while (v725);
          v719 = vaddvq_s32(vaddq_s32(v727, v724));
        }

        else
        {
          v718 = 0;
          v719 = 0;
        }

        v735 = v717 - v718;
        v736 = (*(a1 + 320) + 24 * v718);
        do
        {
          v737 = *v736;
          v736 += 6;
          v719 += v737;
          --v735;
        }

        while (v735);
        v720 = v719;
        v721 = *(a1 + 928);
        v722 = *(a1 + 944);
        if (v721 >= v722)
        {
LABEL_658:
          v738 = 2 * v722;
          _ZF = v722 == 0;
          v739 = 64;
          if (!_ZF)
          {
            v739 = v738;
          }

          if (v739 <= v721)
          {
            v740 = v721 + 1;
          }

          else
          {
            v740 = v739;
          }

          if (v740)
          {
            *(a1 + 936) = malloc_type_realloc(*(a1 + 936), 4 * v740, 0x100004052888210uLL);
            v721 = *(a1 + 928);
            v717 = *(a1 + 312);
          }

          *(a1 + 944) = v740;
        }
      }

      *(a1 + 928) = v721 + 1;
      *(*(a1 + 936) + 4 * v721) = v720 / v717;
    }
  }

  v741 = *(*(a1 + 304) + 880 * *(a1 + 592) + 504);
  if (v741 > *(a1 + 600) + *(a1 + 8))
  {
    if (*(a1 + 588) >= 1)
    {
      v742 = 0;
      v743 = 0;
      do
      {
        g_norm_rot3((*(a1 + 304) + v742));
        ++v743;
        v742 += 880;
      }

      while (v743 < *(a1 + 588));
      v741 = *(*(a1 + 304) + 880 * *(a1 + 592) + 504);
    }

    *(a1 + 600) = v741;
  }

  v744 = *(a1 + 296);
  if (v744 != -1 && (v744 & 0x80000000) == 0 && *(a1 + 588) > *(a1 + 140))
  {
    v745 = -1;
    do
    {
      ++v745;
    }

    while (v745 < v744);
  }

  v746 = *(a1 + 288);
  if (v746 > 0.0)
  {
    v747 = *(a1 + 304) + 880 * *(a1 + 592);
    v748 = *(v747 + 488);
    if (v748 < 1)
    {
      if ((v746 * v748) > 0.0)
      {
        goto LABEL_690;
      }
    }

    else
    {
      v749 = *(v747 + 400);
      if (v748 < 8)
      {
        v750 = 0;
        v751 = 0;
        goto LABEL_687;
      }

      v750 = v748 & 0x7FFFFFF8;
      v752 = v749 + 1;
      v753 = 0uLL;
      v754 = v750;
      v755 = 0uLL;
      do
      {
        v753 = vsubq_s32(v753, vcgezq_s32(v752[-1]));
        v755 = vsubq_s32(v755, vcgezq_s32(*v752));
        v752 += 2;
        v754 -= 8;
      }

      while (v754);
      v751 = vaddvq_s32(vaddq_s32(v755, v753));
      if (v750 != v748)
      {
LABEL_687:
        v756 = v748 - v750;
        v757 = &v749->i32[v750];
        do
        {
          v758 = *v757++;
          v751 += v758 >= 0;
          --v756;
        }

        while (v756);
      }

      if ((v746 * v748) > v751)
      {
LABEL_690:
        *(v747 + 872) = 1;
      }
    }
  }

  *&v836.tv_usec = 0;
  v836.tv_sec = 0;
  if (gettimeofday(&v836, 0) || (v836.tv_usec + 1000000 * v836.tv_sec) / 1000000.0 <= 1514764800.0)
  {
LABEL_694:
    __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
  }

  return *(a1 + 304) + 880 * *(a1 + 592);
}

float tracker_bundle(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 588);
  v4 = 0.0;
  if (v3 < 2)
  {
    return v4;
  }

  v5 = *(a1 + 132);
  v300[0] = 0;
  v6 = *(a2 + 56);
  v7 = (v5 << 31 >> 31) & a3;
  v8 = a3 & (v5 << 30 >> 31);
  v9 = a3 & (v5 << 29 >> 31);
  v10 = a3 & (v5 << 28 >> 31);
  v11 = v5 << 26;
  if ((v5 & 0x10) != 0)
  {
    v12 = 2 * v3 + 3;
  }

  else
  {
    v12 = v3;
  }

  v277 = (a3 + 1) & (v11 >> 31);
  v278 = v8;
  v288 = v10;
  v285 = v9;
  LODWORD(v13) = v7 + v8 + v9 + v10 + v277;
  if (v277)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = v12;
  }

  v284 = malloc_type_malloc(48 * v3, 0x1000040EED21634uLL);
  v280 = v14;
  v16 = malloc_type_malloc(32 * v14, 0x1080040D47BEB4BuLL);
  v17 = malloc_type_calloc(v6, 0x50uLL, 0x10B00409D415480uLL);
  v18 = malloc_type_malloc(v3, 0x100004077774924uLL);
  v283 = v6;
  v290 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  v282 = v13;
  v19 = malloc_type_calloc(v13, 0x50uLL, 0x1080040DF7CDACAuLL);
  v20 = v19;
  v295 = 0u;
  v296 = 0;
  v298 = 0;
  *(&v295 + 4) = 0x100000005;
  v297 = 0x7F8000003727C5ACLL;
  v299 = vneg_f32(0x7F0000007FLL);
  v281 = a3;
  if (!(v13 + v6))
  {
    v13 = v13;
    v21 = v16;
    v22 = v290;
    if (v6 < 1)
    {
      goto LABEL_150;
    }

    goto LABEL_148;
  }

  v276 = v16;
  v287 = v17;
  v275 = v19;
  v23 = v7;
  v274 = &v19[10 * v7];
  v273 = &v274[80 * v278];
  v24 = &v273[80 * v285];
  if (a3 >= v3)
  {
    v25 = v3;
  }

  else
  {
    v25 = a3;
  }

  memset(v18, 1, v3);
  v26 = a1;
  if (a3 >= 1)
  {
    v27 = v3;
    do
    {
      v18[(v27 + *(a1 + 592)) % v3] = 0;
      --v27;
      --v25;
    }

    while (v25);
  }

  v28 = &v24[80 * v288];
  v18[(*(a1 + 592) + 1) % v3] = 1;
  v29 = v6;
  v22 = v290;
  if (v6 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = (*(a2 + 8) + 24 * v30);
      v32 = *v31;
      if (*v31 <= 1 && (v290[v30] = 1, v32 = *v31, *v31 < 1))
      {
LABEL_19:
        v290[v30] = 1;
      }

      else
      {
        v33 = v31[1];
        while (1)
        {
          v34 = *v33++;
          if (!v18[v34 & 0x7FFF])
          {
            break;
          }

          if (!--v32)
          {
            goto LABEL_19;
          }
        }
      }

      ++v30;
    }

    while (v30 != (v6 & 0x7FFFFFFF));
  }

  v35 = *(a1 + 304);
  v36 = v276 + 16;
  v37 = (v35 + 64);
  v38 = v284;
  v39 = v18;
  v40 = v3;
  do
  {
    v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v37[-2]), v37[-1]);
    *v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v37[-4]), v37[-3]);
    v38[1] = v41;
    v43 = *v37;
    v42 = v37[1];
    v37 += 55;
    v38[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v43), v42);
    *(v36 - 2) = v38;
    *(v36 - 2) = 48;
    if (*v39++)
    {
      v45 = 0;
    }

    else
    {
      v45 = 6;
    }

    *v36 = v45;
    *(v36 + 1) = bon_upd_cs;
    v36 += 32;
    v38 += 3;
    --v40;
  }

  while (v40);
  if (v278 >= 1)
  {
    v46 = 0;
    v47 = (v35 + 520);
    do
    {
      if (!v18[v46] && (!*(a1 + 136) || !*v47))
      {
        *v274 = bon_eval_fnc_abspose;
        *(v274 + 5) = -1;
        *(v274 + 6) = v46;
        *(v274 + 16) = 1;
        abort();
      }

      ++v46;
      v47 += 220;
    }

    while (v3 != v46);
    if (a3 < 0)
    {
      log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1369, "tracker_bundle_bon", "term_index > n_cam_opt");
      __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1369, "0");
    }
  }

  if (v23 >= 1)
  {
    v48 = 0;
    v49 = *(a1 + 588);
    v50 = (v35 + 520);
    v51 = v18;
    v52 = v3;
    do
    {
      v53 = (v49 + v48 - 1) % v49;
      v54 = *v51++;
      if ((!v54 || !v18[v53]) && v53 != *(a1 + 592) && (!*(a1 + 136) || !*v50))
      {
        if (*(a1 + 240))
        {
          v55 = *(v35 + 880 * ((v49 + v48 - 1) % v49) + 504);
          if (*(v50 - 2) - v55 <= 0.0)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1392, "tracker_bundle_bon", "Negative time detected, dt: %f", *(v50 - 2) - v55);
            __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1392, "0");
          }
        }

        *v275 = bon_eval_fnc_relpose;
        *(v275 + 5) = -1;
        *(v275 + 6) = v53;
        *(v275 + 7) = v48;
        *(v275 + 16) = 2;
        abort();
      }

      v50 += 110;
      ++v48;
      --v52;
    }

    while (v52);
    if (a3 < 0)
    {
      log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1418, "tracker_bundle_bon", "term_index > n_cam_opt");
      __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1418, "0");
    }
  }

  if (v3 >= 4 && v288)
  {
    v56 = 3;
    do
    {
      v57 = (v56 + *(a1 + 592) - 2) % v3;
      v58 = (v57 + 1) % v3;
      *(v24 + 6) = v57;
      *(v24 + 7) = v58;
      v59 = (v57 + 2) % v3;
      v60 = (v57 + 3) % v3;
      *(v24 + 8) = v59;
      *(v24 + 9) = v60;
      if (!v18[v57] || !v18[v58] || !v18[v59] || !v18[v60])
      {
        *(v24 + 16) = 4;
        *(v24 + 5) = -1;
        abort();
      }

      ++v56;
    }

    while (v3 != v56);
    if (a3 < 0)
    {
      log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1455, "tracker_bundle_bon", "term_index > n_cam_opt");
      __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1455, "0");
    }
  }

  if (v277)
  {
    v267 = 0;
    v268 = &v276[32 * v280];
    *(v268 - 4) = a1 + 712;
    *(v268 - 6) = 48;
    *(v268 - 1) = bon_upd_cs;
    *(v268 - 4) = 3;
    v269 = v280 - 1;
    v270 = v18;
    while (1)
    {
      v271 = (*(a1 + 588) + v267 - 1) % *(a1 + 588);
      v272 = *v270++;
      if ((!v272 || !v18[v271]) && v271 != *(a1 + 592))
      {
        break;
      }

      ++v267;
      if (!--v3)
      {
        *(v28 + 6) = v269;
        *(v28 + 16) = 1;
        *(v28 + 4) = *&v276[32 * v269 + 16];
        *(v28 + 5) = -1;
        *v28 = bon_eval_fnc_bs;
        abort();
      }
    }

    *v28 = bon_eval_fnc_fm;
    *(v28 + 5) = -1;
    *(v28 + 6) = v271;
    *(v28 + 7) = v267;
    *(v28 + 8) = v269;
    *(v28 + 16) = 3;
    abort();
  }

  v17 = v287;
  if (v285 >= 1)
  {
    v61 = 0;
    v62 = *(a1 + 588);
    v63 = (v35 + 520);
    v64 = v18;
    v65 = v3;
    do
    {
      v66 = (v62 + v61 - 1) % v62;
      v67 = *v64++;
      if ((!v67 || !v18[v66]) && v66 != *(a1 + 592) && (!*(a1 + 136) || !*v63))
      {
        if (*(a1 + 240))
        {
          v68 = *(v63 - 2) - *(v35 + 880 * ((v62 + v61 - 1) % v62) + 504);
          if (v68 <= 0.0)
          {
            log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1497, "tracker_bundle_bon", "Negative time detected, dt: %f", v68);
            __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1497, "0");
          }
        }

        *v273 = bon_eval_fnc_distance;
        *(v273 + 5) = -1;
        *(v273 + 6) = v66;
        *(v273 + 7) = v61;
        *(v273 + 16) = 2;
        abort();
      }

      v63 += 110;
      ++v61;
      --v65;
    }

    while (v65);
    if (a3 < 0)
    {
      log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1513, "tracker_bundle_bon", "term_index > n_cam_opt");
      __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1513, "0");
    }
  }

  *(a2 + 104) = 0;
  v69 = *(a2 + 120);
  v70 = v6;
  if (v6 > v69)
  {
    v71 = 2 * v69;
    _ZF = v69 == 0;
    v72 = 64;
    if (!_ZF)
    {
      v72 = v71;
    }

    if (v72 <= v6)
    {
      v73 = v6;
    }

    else
    {
      v73 = v72;
    }

    if (v73)
    {
      v74 = malloc_type_realloc(*(a2 + 112), 4 * v73, 0x100004052888210uLL);
      v26 = a1;
      *(a2 + 112) = v74;
    }

    *(a2 + 120) = v73;
    v29 = v6;
    v70 = v6;
  }

  v279 = v18;
  if (v70 >= 1)
  {
    bzero((*(a2 + 112) + 4 * *(a2 + 104)), (4 * v6) & 0x3FFFFFFFFLL);
    v26 = a1;
  }

  *(a2 + 104) = v6;
  if (v29 >= 1)
  {
    v75 = 0;
    v76 = v29 & 0x7FFFFFFF;
    v286 = v76;
    while (v22[v75])
    {
LABEL_88:
      if (++v75 == v76)
      {
        goto LABEL_125;
      }
    }

    v77 = &v17[10 * v75];
    v78 = *(a2 + 8);
    v79 = *(a2 + 64);
    v80 = -1;
    *(v77 + 13) = -1;
    if (*(a2 + 80) > v75)
    {
      v80 = *(*(a2 + 88) + 4 * v75);
    }

    v289 = v80;
    v81 = (v78 + 24 * v75);
    v82 = *v77;
    v83 = *v81;
    v84 = v77[2];
    if (*v81 <= v84)
    {
      v89 = v83 - v82;
      if (v83 <= v82)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v85 = 2 * v84;
      _ZF = v84 == 0;
      v86 = 32;
      if (!_ZF)
      {
        v86 = v85;
      }

      if (v86 <= v83)
      {
        v87 = *v81;
      }

      else
      {
        v87 = v86;
      }

      if (v87)
      {
        v88 = malloc_type_realloc(v77[1], 8 * v87, 0x100004000313F17uLL);
        v26 = a1;
        v77[1] = v88;
      }

      v77[2] = v87;
      v89 = v83 - v82;
      if (v83 <= v82)
      {
LABEL_101:
        v90 = *v81;
        *v77 = *v81;
        if (v90 >= 1)
        {
          goto LABEL_102;
        }

        goto LABEL_120;
      }
    }

    bzero(v77[1] + 8 * *v77, 8 * v89);
    v26 = a1;
    v105 = *v81;
    *v77 = *v81;
    if (v105 >= 1)
    {
LABEL_102:
      v91 = 0;
      v92 = (v79 + 12 * v75);
      v93 = INFINITY;
      do
      {
        v94 = *(v81[1] + 4 * v91);
        v95 = v77[3];
        v96 = v77[5];
        if (v95 >= v96)
        {
          v97 = 2 * v96;
          _ZF = v96 == 0;
          v98 = 64;
          if (!_ZF)
          {
            v98 = v97;
          }

          if (v98 <= v95)
          {
            v99 = v95 + 1;
          }

          else
          {
            v99 = v98;
          }

          if (v99)
          {
            v100 = malloc_type_realloc(v77[4], 4 * v99, 0x100004052888210uLL);
            v26 = a1;
            v77[4] = v100;
            v95 = v77[3];
          }

          v77[5] = v99;
        }

        v77[3] = (v95 + 1);
        *(v77[4] + v95) = v94 & 0x7FFF | ((v280 << 16) - 0x10000);
        *(v77[1] + v91) = *(*(*(v26 + 304) + 880 * (v94 & 0x7FFF) + 368) + 8 * (v94 >> 15));
        v101 = *v81;
        v102 = *v81 - 1;
        if (*v81 <= 1)
        {
          v102 = 1;
        }

        if (v102 > v91)
        {
          v103 = (*(v26 + 304) + 880 * (v94 & 0x7FFF));
          v104 = v103[3] * (v92[1] - v103[10]) + *v103 * (*v92 - v103[9]) + v103[6] * (v92[2] - v103[11]);
          if (v93 > v104)
          {
            *(v77 + 12) = 1.0 / v104;
            *(v77 + 13) = v91;
            *(*(a2 + 112) + 4 * v75) = v94 & 0x7FFF;
            v93 = v104;
          }
        }

        ++v91;
      }

      while (v101 > v91);
      goto LABEL_121;
    }

LABEL_120:
    v93 = INFINITY;
LABEL_121:
    if (v93 < *(v26 + 24) || *(v77 + 13) == -1)
    {
      v22 = v290;
      v290[v75] = 1;
      v76 = v286;
      v17 = v287;
    }

    else
    {
      v22 = v290;
      v76 = v286;
      v17 = v287;
      if (v289 != -1)
      {
        v106 = *(v26 + 472) + 36 * v289;
        v77[7] = (*(v26 + 448) + 12 * v289);
        v77[8] = v106;
        v77[9] = (*(v26 + 568) + 48 * v289);
      }
    }

    goto LABEL_88;
  }

LABEL_125:
  v107 = v283;
  if (v283 < 1)
  {
    v117 = 0;
    v18 = v279;
    v21 = v276;
    v13 = v282;
    v119 = v284;
    v20 = v275;
    if (!v282)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v108 = 0;
    v109 = v22;
    v110 = v17;
    v18 = v279;
    v21 = v276;
    do
    {
      while (1)
      {
        v111 = *v109++;
        _ZF = v111 || v17 == 0;
        if (!_ZF)
        {
          break;
        }

        free(v110[1]);
        free(v110[4]);
        v26 = a1;
        v110 += 10;
        if (!--v107)
        {
          goto LABEL_133;
        }
      }

      v113 = &v17[10 * v108];
      *v113 = *v110;
      v114 = *(v110 + 1);
      v115 = *(v110 + 2);
      v116 = *(v110 + 4);
      *(v113 + 3) = *(v110 + 3);
      *(v113 + 4) = v116;
      *(v113 + 1) = v114;
      *(v113 + 2) = v115;
      ++v108;
      v110 += 10;
      --v107;
    }

    while (v107);
LABEL_133:
    v117 = v108;
    v22 = v290;
    v13 = v282;
    v118 = v108 | v282;
    v119 = v284;
    v20 = v275;
    if (!v118)
    {
LABEL_134:
      log_msg(2, 0, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1568, "tracker_bundle_bon", "%s: Nothing to optimize, skipping", "tracker_bundle_bon");
      v4 = 0.0;
      free(v17);
      free(v21);
      if (v13 >= 1)
      {
        goto LABEL_151;
      }

      goto LABEL_153;
    }
  }

  v120 = v3 - 1;
  if (v3 - 1 >= v281)
  {
    v120 = v281;
  }

  v121 = *(v26 + 592);
  v300[0] = (v3 - v120 + v121 + 1) % v3;
  if (v18[v300[0]])
  {
    log_msg(1, 2, "/Library/Caches/com.apple.xbs/Sources/VisualLocalization/argo/pwin/slam/slam_tracker_vo.c", 1575, "tracker_bundle_bon", "cam %d locked", v300[0]);
    __assert_rtn("tracker_bundle_bon", "slam_tracker_vo.c", 1575, "0");
  }

  LODWORD(v295) = 0;
  *(&v295 + 4) = *(v26 + 144);
  v122 = *(v26 + 156);
  HIDWORD(v295) = *(v26 + 152);
  LODWORD(v296) = 0;
  v123 = *(v26 + 304);
  v124 = *(v123 + 880 * v121 + 360);
  *(&v296 + 1) = *(v26 + 160) * v124;
  *&v125 = v124 * v122;
  v126 = *(v26 + 236);
  LODWORD(v297) = 925353388;
  v127 = 1.0 / *(v26 + 24);
  v298 = v126;
  v299 = v125 | 0x40A0000000000000;
  *(&v297 + 1) = v127;
  LODWORD(v6) = v117;
  v128 = bon2(v21, v280, v17, v117, v20, v13, &v295, v300, 1u, v123 + 880 * v300[0] + 524);
  v130 = *(a2 + 56);
  if (v130 >= 1)
  {
    v131 = 0;
    v132 = 0;
    v133 = v22;
    do
    {
      if (!*v133++)
      {
        v135 = &v17[10 * v132];
        v136 = 1.0 / v135[12];
        v137 = *(v135 + 13);
        v138 = (*(v135 + 1) + 8 * v137);
        v139 = v136 * *v138;
        v140 = v136 * v138[1];
        v141 = &v119[6 * *(*(v135 + 4) + 4 * v137)];
        v142 = v141[9] + (((v139 * v141[1]) + (*v141 * v136)) + (v141[2] * v140));
        v143 = (*(a2 + 64) + v131);
        v144 = (v139 * v141[7]) + (v141[6] * v136);
        v145 = v141[10] + (((v139 * v141[4]) + (v141[3] * v136)) + (v141[5] * v140));
        v146 = v141[11] + (v144 + (v141[8] * v140));
        *v143 = v142;
        v143[1] = v145;
        v143[2] = v146;
        ++v132;
      }

      v131 += 12;
      --v130;
    }

    while (v130);
  }

  v293 = v128;
  v147 = *(a1 + 304);
  v148 = v147 + 3;
  v149 = v119 + 3;
  do
  {
    v150 = vcvtq_f64_f32(v149[-2]);
    v148[-3] = vcvtq_f64_f32(v149[-3]);
    v148[-2] = v150;
    v151 = vcvtq_f64_f32(*v149);
    v148[-1] = vcvtq_f64_f32(v149[-1]);
    *v148 = v151;
    v152 = vcvtq_f64_f32(v149[2]);
    v148[1] = vcvtq_f64_f32(v149[1]);
    v148[2] = v152;
    v148 += 55;
    v149 += 6;
    --v3;
  }

  while (v3);
  v153 = &v147[55 * ((v300[0] + *(a1 + 588) - 1) % *(a1 + 588))];
  *v129.i32 = v153[1].f64[0];
  v154 = v153[2].f64[1];
  _D28 = vcvt_f32_f64(*v153);
  _D27 = vcvt_f32_f64(*(v153 + 24));
  _D26 = vcvt_f32_f64(v153[3]);
  v158 = v153[4].f64[0];
  v159 = &v147[55 * v300[0]];
  v160 = *&v159[41].f64[1];
  v161 = *(v159[41].f64 + 1);
  v162 = *v159[41].f64;
  v163 = *(&v159[40].f64[1] + 1);
  v164 = *&v159[40].f64[1];
  v165 = *(v159[40].f64 + 1);
  v166 = (((v165 * 0.0) + 0.0) + (v164 * 0.0)) + (v163 * 0.0);
  v167 = v166 + (v162 * 0.0);
  v291 = v160 + (v167 + (v161 * 0.0));
  v168 = v161 + v167;
  *v169.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v165), _D27, v164), _D26, v163), 0, v162);
  v169.f32[2] = ((((*v129.i32 * v165) + 0.0) + (v154 * v164)) + (v158 * v163)) + (v162 * 0.0);
  v169.f32[3] = v162 + v166;
  v170 = v168 + (v160 * 0.0);
  v171 = vmlaq_n_f32(vmlaq_n_f32(v169, 0, v161), 0, v160);
  v172 = *v159[40].f64;
  v173 = *(&v159[39].f64[1] + 1);
  v174 = *&v159[39].f64[1];
  v175 = *(v159[39].f64 + 1);
  v176 = *v159[39].f64;
  v177 = *(&v159[38].f64[1] + 1);
  v178 = (((v177 * 0.0) + 0.0) + (v176 * 0.0)) + (v175 * 0.0);
  v179 = v178 + (v174 * 0.0);
  v180 = v172 + (v179 + (v173 * 0.0));
  v181 = (v173 + v179) + (v172 * 0.0);
  *v182.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v177), _D27, v176), _D26, v175), 0, v174);
  v182.f32[2] = ((((*v129.i32 * v177) + 0.0) + (v154 * v176)) + (v158 * v175)) + (v174 * 0.0);
  v182.f32[3] = v174 + v178;
  v183 = vmlaq_n_f32(vmlaq_n_f32(v182, 0, v173), 0, v172);
  v184 = *&v159[38].f64[1];
  v185 = *(v159[38].f64 + 1);
  v186 = *v159[38].f64;
  v187 = *(&v159[37].f64[1] + 1);
  v188 = *&v159[37].f64[1];
  v189 = *(v159[37].f64 + 1);
  v190 = (((v189 * 0.0) + 0.0) + (v188 * 0.0)) + (v187 * 0.0);
  v191 = v190 + (v186 * 0.0);
  v192 = v184 + (v191 + (v185 * 0.0));
  v193 = (v185 + v191) + (v184 * 0.0);
  *v194.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v189), _D27, v188), _D26, v187), 0, v186);
  v194.f32[2] = ((((*v129.i32 * v189) + 0.0) + (v154 * v188)) + (v158 * v187)) + (v186 * 0.0);
  v194.f32[3] = v186 + v190;
  v195 = vmlaq_n_f32(vmlaq_n_f32(v194, 0, v185), 0, v184);
  v196 = *v159[37].f64;
  v197 = *(&v159[36].f64[1] + 1);
  v198 = *&v159[36].f64[1];
  v199 = *(v159[36].f64 + 1);
  v200 = *v159[36].f64;
  v201 = *(&v159[35].f64[1] + 1);
  v202 = (((v201 * 0.0) + 0.0) + (v200 * 0.0)) + (v199 * 0.0);
  v203 = v202 + (v198 * 0.0);
  _S23 = v196 + (v203 + (v197 * 0.0));
  _S24 = (v197 + v203) + (v196 * 0.0);
  *v206.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v201), _D27, v200), _D26, v199), 0, v198);
  v206.f32[2] = ((((*v129.i32 * v201) + 0.0) + (v154 * v200)) + (v158 * v199)) + (v198 * 0.0);
  v206.f32[3] = v198 + v202;
  v207 = vmlaq_n_f32(vmlaq_n_f32(v206, 0, v197), 0, v196);
  v208 = *(v159[35].f64 + 1);
  v209 = *v159[35].f64;
  v210 = *(&v159[34].f64[1] + 1);
  v211 = *&v159[34].f64[1];
  v212 = *(v159[34].f64 + 1);
  v213 = (((v212 * 0.0) + 0.0) + (v211 * 0.0)) + (v210 * 0.0);
  v214 = v213 + (v209 * 0.0);
  v215 = v214 + (v208 * 0.0);
  v216 = v208 + v214;
  *v217.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v212), _D27, v211), _D26, v210), 0, v209);
  v217.f32[2] = ((((*v129.i32 * v212) + 0.0) + (v154 * v211)) + (v158 * v210)) + (v209 * 0.0);
  v217.f32[3] = v209 + v213;
  v218 = vmlaq_n_f32(v217, 0, v208);
  v219 = *v159[34].f64;
  v220 = *(&v159[33].f64[1] + 1);
  v221 = *&v159[33].f64[1];
  v222 = *(v159[33].f64 + 1);
  v223 = *v159[33].f64;
  v224 = *(&v159[32].f64[1] + 1);
  v225 = (((v224 * 0.0) + 0.0) + (v223 * 0.0)) + (v222 * 0.0);
  v226 = v225 + (v221 * 0.0);
  v227.f32[0] = (v220 + v226) + (v219 * 0.0);
  v227.f32[1] = v219 + (v226 + (v220 * 0.0));
  *v228.f32 = vmla_n_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(0, _D28, v224), _D27, v223), _D26, v222), 0, v221);
  v228.f32[2] = ((((*v129.i32 * v224) + 0.0) + (v154 * v223)) + (v158 * v222)) + (v221 * 0.0);
  v229 = *&v159[35].f64[1];
  _S30 = v229 + v215;
  _S31 = v216 + (v229 * 0.0);
  v232 = vmlaq_n_f32(v218, 0, v229);
  v228.f32[3] = v221 + v225;
  v233 = vmlaq_n_f32(vmlaq_n_f32(v228, 0, v220), 0, v219);
  *(&v159[33].f64[1] + 4) = 0.0;
  *(&v159[32] + 12) = 0u;
  _D0 = vmla_f32(*(&v159[33].f64[1] + 4), *&vdupq_lane_s32(_D28, 0), v227);
  *(&v159[33].f64[1] + 4) = _D0;
  *(&v159[32] + 12) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(*(&v159[32] + 12), v233, _D28.f32[0]), v232, _D27.f32[0]), v207, _D26.f32[0]), 0, v195), 0, v183), 0, v171);
  *(&v159[33].f64[1] + 1) = ((((_D0.f32[0] + (_S31 * _D27.f32[0])) + (_S24 * _D26.f32[0])) + (v193 * 0.0)) + (v181 * 0.0)) + (v170 * 0.0);
  *v159[34].f64 = ((((_D0.f32[1] + (_S30 * _D27.f32[0])) + (_S23 * _D26.f32[0])) + (v192 * 0.0)) + (v180 * 0.0)) + (v291 * 0.0);
  *(v159[35].f64 + 4) = 0.0;
  *(&v159[34] + 4) = 0u;
  *(v159[35].f64 + 4) = vmla_f32(*(v159[35].f64 + 4), *&vdupq_lane_s32(_D28, 1), v227);
  v235 = vmlaq_lane_f32(vmlaq_lane_f32(*(&v159[34] + 4), v233, _D28, 1), v232, _D27, 1);
  __asm
  {
    FMLA            S0, S31, V27.S[1]
    FMLA            S28, S30, V27.S[1]
    FMLA            S0, S24, V26.S[1]
    FMLA            S28, S23, V26.S[1]
  }

  *(&v159[34] + 4) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(v235, v207, _D26, 1), 0, v195), 0, v183), 0, v171);
  *(v159[35].f64 + 1) = ((_D0.f32[0] + (v193 * 0.0)) + (v181 * 0.0)) + (v170 * 0.0);
  *&v159[35].f64[1] = ((_D28.f32[0] + (v192 * 0.0)) + (v180 * 0.0)) + (v291 * 0.0);
  *(&v159[36].f64[1] + 4) = 0.0;
  *(&v159[35] + 12) = 0u;
  v239 = vmla_f32(*(&v159[36].f64[1] + 4), *&vdupq_lane_s32(v129, 0), v227);
  *(&v159[36].f64[1] + 4) = v239;
  *(&v159[35] + 12) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(*(&v159[35] + 12), v233, *v129.i32), v232, v154), v207, v158), 0, v195), 0, v183), 0, v171);
  *(&v159[36].f64[1] + 1) = ((((v239.f32[0] + (_S31 * v154)) + (_S24 * v158)) + (v193 * 0.0)) + (v181 * 0.0)) + (v170 * 0.0);
  *v159[37].f64 = ((((v239.f32[1] + (_S30 * v154)) + (_S23 * v158)) + (v192 * 0.0)) + (v180 * 0.0)) + (v291 * 0.0);
  *(v159[38].f64 + 4) = 0.0;
  *(&v159[37] + 4) = 0u;
  v240 = vmla_f32(*(v159[38].f64 + 4), 0, v227);
  *(v159[38].f64 + 4) = v240;
  *(&v159[37] + 4) = vmlaq_f32(vmlaq_f32(vaddq_f32(v195, vmlaq_f32(vmlaq_f32(vmlaq_f32(*(&v159[37] + 4), 0, v233), 0, v232), 0, v207)), 0, v183), 0, v171);
  *(v159[38].f64 + 1) = ((v193 + ((v240.f32[0] + (_S31 * 0.0)) + (_S24 * 0.0))) + (v181 * 0.0)) + (v170 * 0.0);
  *&v159[38].f64[1] = ((v192 + ((v240.f32[1] + (_S30 * 0.0)) + (_S23 * 0.0))) + (v180 * 0.0)) + (v291 * 0.0);
  *(&v159[39].f64[1] + 4) = 0.0;
  *(&v159[38] + 12) = 0u;
  v241 = vmla_f32(*(&v159[39].f64[1] + 4), 0, v227);
  *(v159[41].f64 + 4) = 0.0;
  v242 = vmla_f32(*(v159[41].f64 + 4), 0, v227);
  v243 = vmlaq_f32(*(&v159[38] + 12), 0, v233);
  *(&v159[40] + 4) = 0u;
  v244 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*(&v159[40] + 4), 0, v233), 0, v232), 0, v207), 0, v195), 0, v183);
  *(&v159[39].f64[1] + 4) = v241;
  *(&v159[38] + 12) = vmlaq_f32(vaddq_f32(v183, vmlaq_f32(vmlaq_f32(vmlaq_f32(v243, 0, v232), 0, v207), 0, v195)), 0, v171);
  *(&v159[39].f64[1] + 1) = (v181 + (((v241.f32[0] + (_S31 * 0.0)) + (_S24 * 0.0)) + (v193 * 0.0))) + (v170 * 0.0);
  *v159[40].f64 = (v180 + (((v241.f32[1] + (_S30 * 0.0)) + (_S23 * 0.0)) + (v192 * 0.0))) + (v291 * 0.0);
  *(v159[41].f64 + 4) = v242;
  *(&v159[40] + 4) = vaddq_f32(v171, v244);
  *(v159[41].f64 + 1) = v170 + ((((v242.f32[0] + (_S31 * 0.0)) + (_S24 * 0.0)) + (v193 * 0.0)) + (v181 * 0.0));
  *&v159[41].f64[1] = v291 + ((((v242.f32[1] + (_S30 * 0.0)) + (_S23 * 0.0)) + (v192 * 0.0)) + (v180 * 0.0));
  v4 = v293;
  if (v6 >= 1)
  {
LABEL_148:
    v245 = v6;
    v246 = v17 + 4;
    do
    {
      free(*(v246 - 3));
      v247 = *v246;
      v246 += 10;
      free(v247);
      --v245;
    }

    while (v245);
  }

LABEL_150:
  v119 = v284;
  free(v17);
  free(v21);
  if (v13 >= 1)
  {
LABEL_151:
    v248 = v20 + 9;
    do
    {
      free(*(v248 - 8));
      v249 = *v248;
      v248 += 10;
      free(v249);
      --v13;
    }

    while (v13);
  }

LABEL_153:
  free(v20);
  free(v119);
  free(v18);
  free(v22);
  v250 = a1;
  if (*(a1 + 300))
  {
    v251 = v4 < 0.0 || ((LODWORD(v4) & 0x7FFFFFFFu) - 0x800000) >> 24 > 0x7E;
    if (!v251 || (LODWORD(v4) - 1) <= 0x7FFFFE)
    {
      if (v281 == 1)
      {
        v253 = (a1 + 880);
        v254 = *(a1 + 880);
        v255 = *(a1 + 896);
        if (v254 >= v255)
        {
          v256 = 2 * v255;
          _ZF = v255 == 0;
          v257 = 64;
          if (!_ZF)
          {
            v257 = v256;
          }

          if (v257 <= v254)
          {
            v258 = v254 + 1;
          }

          else
          {
            v258 = v257;
          }

          if (v258)
          {
            v259 = malloc_type_realloc(*(a1 + 888), 4 * v258, 0x100004052888210uLL);
            v250 = a1;
            *(a1 + 888) = v259;
            v254 = *(a1 + 880);
          }

          *(v250 + 896) = v258;
        }

        v260 = 888;
      }

      else
      {
        v253 = (a1 + 904);
        v254 = *(a1 + 904);
        v261 = *(a1 + 920);
        if (v254 >= v261)
        {
          v262 = 2 * v261;
          _ZF = v261 == 0;
          v263 = 64;
          if (!_ZF)
          {
            v263 = v262;
          }

          if (v263 <= v254)
          {
            v264 = v254 + 1;
          }

          else
          {
            v264 = v263;
          }

          if (v264)
          {
            v265 = malloc_type_realloc(*(a1 + 912), 4 * v264, 0x100004052888210uLL);
            v250 = a1;
            *(a1 + 912) = v265;
            v254 = *(a1 + 904);
          }

          *(v250 + 920) = v264;
        }

        v260 = 912;
      }

      *v253 = v254 + 1;
      *(*(v250 + v260) + 4 * v254) = v4;
    }
  }

  return v4;
}

void remove_map_points(uint64_t a1, unsigned __int8 *a2)
{
  v4 = malloc_type_malloc(4 * *(a1 + 368), 0x100004052888210uLL);
  v5 = v4;
  v6 = *(a1 + 368);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a2;
    v9 = v4;
    do
    {
      v10 = *v8++;
      v11 = v10 == 0;
      if (v10)
      {
        v12 = -1;
      }

      else
      {
        v12 = v7;
      }

      if (v11)
      {
        ++v7;
      }

      *v9++ = v12;
      --v6;
    }

    while (v6);
  }

  v13 = *(a1 + 312);
  if (v13 < 1)
  {
    v16 = 0;
    v22 = *(a1 + 328);
    if (v22 >= 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      while (1)
      {
        v17 = *(a1 + 320);
        v18 = (v17 + v14);
        if (!a2[v15] && v17 != 0)
        {
          break;
        }

        free(v18[1]);
        ++v15;
        v13 = *(a1 + 312);
        v14 += 24;
        if (v15 >= v13)
        {
          goto LABEL_17;
        }
      }

      v20 = *v18;
      v21 = v17 + 24 * v16;
      *(v21 + 16) = v18[2];
      *v21 = v20;
      ++v16;
      ++v15;
      v13 = *(a1 + 312);
      v14 += 24;
    }

    while (v15 < v13);
LABEL_17:
    v22 = *(a1 + 328);
    if (v16 <= v22)
    {
LABEL_18:
      v23 = v16 - v13;
      if (v16 <= v13)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  v33 = 2 * v22;
  v11 = v22 == 0;
  v34 = 10;
  if (!v11)
  {
    v34 = v33;
  }

  if (v34 <= v16)
  {
    v35 = v16;
  }

  else
  {
    v35 = v34;
  }

  if (v35)
  {
    *(a1 + 320) = malloc_type_realloc(*(a1 + 320), 24 * v35, 0x1010040A500212DuLL);
  }

  *(a1 + 328) = v35;
  v23 = v16 - v13;
  if (v16 <= v13)
  {
LABEL_19:
    *(a1 + 312) = v16;
    v24 = *(a1 + 368);
    if (v24 >= 1)
    {
      goto LABEL_20;
    }

LABEL_37:
    v27 = 0;
    goto LABEL_38;
  }

LABEL_36:
  bzero((*(a1 + 320) + 24 * *(a1 + 312)), 24 * v23);
  *(a1 + 312) = v16;
  v24 = *(a1 + 368);
  if (v24 < 1)
  {
    goto LABEL_37;
  }

LABEL_20:
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v28 = *(a1 + 376);
    if (a2[v26])
    {
      v29 = 1;
    }

    else
    {
      v29 = v28 == 0;
    }

    if (!v29)
    {
      v30 = (v28 + v25);
      v31 = v28 + 12 * v27;
      v32 = *v30;
      *(v31 + 8) = *(v30 + 2);
      *v31 = v32;
      ++v27;
      v24 = *(a1 + 368);
    }

    ++v26;
    v25 += 12;
  }

  while (v26 < v24);
LABEL_38:
  v36 = *(a1 + 384);
  if (v27 > v36)
  {
    v45 = 2 * v36;
    v11 = v36 == 0;
    v46 = 21;
    if (!v11)
    {
      v46 = v45;
    }

    if (v46 <= v27)
    {
      v47 = v27;
    }

    else
    {
      v47 = v46;
    }

    if (v47)
    {
      *(a1 + 376) = malloc_type_realloc(*(a1 + 376), 12 * v47, 0x10000403E1C8BA9uLL);
    }

    *(a1 + 384) = v47;
    v37 = v27 - v24;
    if (v27 <= v24)
    {
LABEL_40:
      *(a1 + 368) = v27;
      v38 = *(a1 + 336);
      if (v38 >= 1)
      {
        goto LABEL_41;
      }

LABEL_55:
      v40 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v37 = v27 - v24;
    if (v27 <= v24)
    {
      goto LABEL_40;
    }
  }

  bzero((*(a1 + 376) + 12 * *(a1 + 368)), 12 * v37);
  *(a1 + 368) = v27;
  v38 = *(a1 + 336);
  if (v38 < 1)
  {
    goto LABEL_55;
  }

LABEL_41:
  v39 = *(a1 + 344);
  if (v39)
  {
    v40 = 0;
    v41 = a2;
    v42 = *(a1 + 344);
    v43 = v38;
    do
    {
      if (!*v41++)
      {
        *(v39 + 4 * v40++) = *v42;
      }

      ++v42;
      --v43;
    }

    while (v43);
LABEL_56:
    v48 = *(a1 + 352);
    if (v40 <= v48)
    {
      goto LABEL_57;
    }

    goto LABEL_65;
  }

  v40 = 0;
  v48 = *(a1 + 352);
  if (v48 >= 0)
  {
LABEL_57:
    v49 = v40 - v38;
    if (v40 <= v38)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

LABEL_65:
  v57 = 2 * v48;
  v11 = v48 == 0;
  v58 = 64;
  if (!v11)
  {
    v58 = v57;
  }

  if (v58 <= v40)
  {
    v59 = v40;
  }

  else
  {
    v59 = v58;
  }

  if (v59)
  {
    *(a1 + 344) = malloc_type_realloc(*(a1 + 344), 4 * v59, 0x100004052888210uLL);
  }

  *(a1 + 352) = v59;
  v49 = v40 - v38;
  if (v40 <= v38)
  {
LABEL_58:
    *(a1 + 336) = v40;
    v50 = *(a1 + 392);
    if (v50 >= 1)
    {
      goto LABEL_59;
    }

LABEL_74:
    v52 = 0;
    goto LABEL_75;
  }

LABEL_73:
  bzero((*(a1 + 344) + 4 * *(a1 + 336)), 4 * v49);
  *(a1 + 336) = v40;
  v50 = *(a1 + 392);
  if (v50 < 1)
  {
    goto LABEL_74;
  }

LABEL_59:
  v51 = *(a1 + 400);
  if (v51)
  {
    v52 = 0;
    v53 = a2;
    v54 = *(a1 + 400);
    v55 = v50;
    do
    {
      if (!*v53++)
      {
        *(v51 + 4 * v52++) = *v54;
      }

      ++v54;
      --v55;
    }

    while (v55);
LABEL_75:
    v60 = *(a1 + 408);
    if (v52 <= v60)
    {
      goto LABEL_76;
    }

    goto LABEL_84;
  }

  v52 = 0;
  v60 = *(a1 + 408);
  if (v60 >= 0)
  {
LABEL_76:
    v61 = v52 - v50;
    if (v52 <= v50)
    {
      goto LABEL_77;
    }

    goto LABEL_92;
  }

LABEL_84:
  v68 = 2 * v60;
  v11 = v60 == 0;
  v69 = 64;
  if (!v11)
  {
    v69 = v68;
  }

  if (v69 <= v52)
  {
    v70 = v52;
  }

  else
  {
    v70 = v69;
  }

  if (v70)
  {
    *(a1 + 400) = malloc_type_realloc(*(a1 + 400), 4 * v70, 0x100004052888210uLL);
  }

  *(a1 + 408) = v70;
  v61 = v52 - v50;
  if (v52 <= v50)
  {
LABEL_77:
    *(a1 + 392) = v52;
    v62 = *(a1 + 416);
    if (v62 >= 1)
    {
      goto LABEL_78;
    }

LABEL_93:
    v64 = 0;
    goto LABEL_94;
  }

LABEL_92:
  bzero((*(a1 + 400) + 4 * *(a1 + 392)), 4 * v61);
  *(a1 + 392) = v52;
  v62 = *(a1 + 416);
  if (v62 < 1)
  {
    goto LABEL_93;
  }

LABEL_78:
  v63 = *(a1 + 424);
  if (v63)
  {
    v64 = 0;
    v65 = *(a1 + 424);
    v66 = v62;
    do
    {
      if (!*a2++)
      {
        *(v63 + 4 * v64++) = *v65;
      }

      ++v65;
      --v66;
    }

    while (v66);
LABEL_94:
    v71 = *(a1 + 432);
    if (v64 <= v71)
    {
      goto LABEL_95;
    }

    goto LABEL_99;
  }

  v64 = 0;
  v71 = *(a1 + 432);
  if (v71 >= 0)
  {
LABEL_95:
    v72 = v64 - v62;
    if (v64 <= v62)
    {
      goto LABEL_96;
    }

    goto LABEL_107;
  }

LABEL_99:
  v74 = 2 * v71;
  v11 = v71 == 0;
  v75 = 64;
  if (!v11)
  {
    v75 = v74;
  }

  if (v75 <= v64)
  {
    v76 = v64;
  }

  else
  {
    v76 = v75;
  }

  if (v76)
  {
    *(a1 + 424) = malloc_type_realloc(*(a1 + 424), 4 * v76, 0x100004052888210uLL);
  }

  *(a1 + 432) = v76;
  v72 = v64 - v62;
  if (v64 <= v62)
  {
LABEL_96:
    *(a1 + 416) = v64;
    v73 = *(a1 + 588);
    if (v73 < 1)
    {
      goto LABEL_116;
    }

    goto LABEL_108;
  }

LABEL_107:
  bzero((*(a1 + 424) + 4 * *(a1 + 416)), 4 * v72);
  *(a1 + 416) = v64;
  v73 = *(a1 + 588);
  if (v73 < 1)
  {
    goto LABEL_116;
  }

LABEL_108:
  v77 = 0;
  v78 = *(a1 + 304);
  do
  {
    v79 = v78 + 880 * v77;
    v80 = *(v79 + 488);
    if (v80 >= 1)
    {
      v81 = 0;
      v82 = *(v79 + 400);
      do
      {
        v83 = *(v82 + 4 * v81);
        if (v83 != -1)
        {
          *(v82 + 4 * v81) = v5[v83];
          v80 = *(v79 + 488);
        }

        ++v81;
      }

      while (v81 < v80);
      v73 = *(a1 + 588);
    }

    ++v77;
  }

  while (v77 < v73);
LABEL_116:

  free(v5);
}

double rectify_pts(uint64_t a1, float32x2_t *a2, int a3, float *a4)
{
  LODWORD(v5) = a3;
  v31 = 0;
  v32 = 0.0;
  v33 = 0.0;
  v8 = vcvtd_n_f64_s32(*(a1 + 172) - 1, 1uLL);
  v34.f64[0] = *(a1 + 168) + -0.5;
  v34.f64[1] = v8;
  g_improj2_to_xyz(a1, &v34, &v31);
  v9 = v32;
  v10 = v32;
  *a4 = -v10;
  a4[2] = v10;
  v11 = *(a1 + 172) + -0.5;
  v34.f64[0] = vcvtd_n_f64_s32(*(a1 + 168) - 1, 1uLL);
  v34.f64[1] = v11;
  g_improj2_to_xyz(a1, &v34, &v31);
  v12 = v33;
  v13 = v33;
  a4[1] = -v13;
  a4[3] = v13;
  v14 = *(a1 + 168);
  v15 = *(a1 + 172);
  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v30 = vcvtq_f64_f32(*a2);
      v28 = 0;
      v29 = 0uLL;
      g_improj2_to_xyz(a1, &v30, &v28);
      *a2++ = vcvt_f32_f64(v29);
      --v5;
    }

    while (v5);
  }

  v16 = atan(v9);
  v17 = v16 + v16;
  if (v16 + v16 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v16 + v16;
  }

  v19 = atan(v12);
  v20 = v19 + v19;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v22 = tan(v20 * 0.5);
  v23 = v22 + v22;
  v24 = v17 * 0.5;
  v25 = v15 / v23;
  v26 = tan(v24);
  *a1 = 4;
  *(a1 + 8) = v14 / (v26 + v26);
  *(a1 + 16) = v25;
  *(a1 + 24) = v18;
  *(a1 + 32) = v21;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = v14;
  *(a1 + 172) = v15;
  return result;
}

void _jac_patch_to_improj2(double *a1, float *a2, float *a3, double *a4, uint64_t a5, float a6, float a7)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v12 = a4[10];
  v13 = *a2 - a4[9];
  v55 = 0uLL;
  v56 = 0.0;
  v14 = (v11 - v12) * (v11 - v12) + v13 * v13;
  v15 = a2[2] - a4[11];
  v16 = sqrt(v14 + v15 * v15);
  v52.f64[0] = a6;
  v52.f64[1] = a7;
  g_improj2_to_xyz(a5, &v52, v55.f64);
  v17 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v55, v55).f64[1]) + v55.f64[0] * v55.f64[0] + v56 * v56);
  if (v17 <= 0.0)
  {
    v18 = 0uLL;
    v19 = 0.0;
  }

  else
  {
    v18 = vdivq_f64(v55, vdupq_lane_s64(*&v17, 0));
    v19 = v56 / v17;
  }

  v53 = vmulq_n_f64(v18, v16);
  v54 = v19 * v16;
  v20 = *a3;
  v21 = a3[2];
  if (fabs(v20) <= fabsf(v21))
  {
    v25 = -v21;
    v22 = a3[1];
    v24 = v22;
    v23 = 0.0;
  }

  else
  {
    v22 = a3[1];
    v23 = -v22;
    v24 = 0.0;
    v25 = *a3;
  }

  v26 = sqrt(v25 * v25 + v23 * v23 + v24 * v24);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  if (v26 > 0.0)
  {
    v29 = v23 / v26;
    v28 = v25 / v26;
    v27 = v24 / v26;
  }

  v30 = v22;
  v31 = v21;
  v32 = v30 * v27 - v28 * v31;
  v33 = v31 * v29 - v27 * v20;
  v34 = v20 * v28 - v29 * v30;
  v35 = a4[1];
  v37 = a4[2];
  v36 = a4[3];
  v38 = *a4 * v29 + 0.0 + v36 * v28;
  v39 = *a4 * v32 + 0.0 + v36 * v33;
  v40 = a4[6];
  v41 = a4[7];
  v42 = v38 + v40 * v27;
  v43 = v39 + v40 * v34;
  v44 = v35 * v29 + 0.0;
  v45 = v35 * v32 + 0.0;
  v46 = v37 * v29 + 0.0;
  v47 = v37 * v32 + 0.0;
  v48 = a4[4];
  v49 = a4[5];
  *v57 = v42;
  *&v57[1] = v44 + v48 * v28 + v41 * v27;
  v50 = v46 + v49 * v28;
  v51 = a4[8];
  *&v57[2] = v50 + v51 * v27;
  *&v57[3] = v43;
  *&v57[4] = v45 + v48 * v33 + v41 * v34;
  *&v57[5] = v47 + v49 * v33 + v51 * v34;
  g_jac_apply_proj(&v53, a5, v57, a1, 2);
}

void vl_stats_get(uint64_t a1, void **a2)
{
  v2 = a2;
  v3 = a1;
  if (*(a1 + 976))
  {
    v702.tv_sec = 0;
    *&v702.tv_usec = 0;
    if (gettimeofday(&v702, 0) || (v702.tv_usec + 1000000 * v702.tv_sec) / 1000000.0 <= 1514764800.0)
    {
      goto LABEL_492;
    }

    v654 = v702.tv_usec + 1000000 * v702.tv_sec;
    pthread_mutex_lock((v3 + 11664));
    if (*(v3 + 4) == 1)
    {
      v4 = 64;
    }

    else
    {
      v4 = 256;
    }

    v5 = *(v3 + 988);
    v6 = *(v3 + 11736);
    if ((v5 & 0x80000000) != 0)
    {
      if (v6 < 1)
      {
        v686 = 0;
        v133 = 0;
        __src = 0;
        v134 = 0;
        v135 = 0;
        v136 = 0;
        goto LABEL_119;
      }

      v45 = *(v3 + 11744);
      __src = malloc_type_realloc(0, 864 * v6, 0x10A0040E8ED4BBFuLL);
      memcpy(__src, v45, 864 * *(v3 + 11736));
      v40 = *(v3 + 11736);
    }

    else
    {
      v7 = (v6 - 2);
      if (v6 - 2 >= 0)
      {
        v8 = (*(v3 + 11744) + 864 * v7 + 4);
        do
        {
          if (*v8)
          {
            goto LABEL_14;
          }

          v8 -= 216;
        }

        while (v7-- > 0);
        LODWORD(v7) = -1;
      }

LABEL_14:
      if (v6 < 1)
      {
        v40 = 0;
        __src = 0;
      }

      else
      {
        v683 = v4;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = v7;
        do
        {
          if (v14 > v15)
          {
            v18 = *(v3 + 11744);
            v19 = v11 + 1;
            if (v11 >= v13)
            {
              if (2 * v13 <= v11)
              {
                v13 = v11 + 1;
              }

              else
              {
                v13 *= 2;
              }

              if (v13)
              {
                v12 = malloc_type_realloc(v12, 864 * v13, 0x10A0040E8ED4BBFuLL);
              }
            }

            v16 = &v12[864 * v11];
            v17 = v12;
            memcpy(v16, (v18 + v10), 0x360uLL);
            v12 = v17;
            v6 = *(v3 + 11736);
            v11 = v19;
          }

          ++v14;
          v10 += 864;
        }

        while (v14 < v6);
        __src = v12;
        if (v11 <= v5)
        {
          v40 = v11;
          v2 = a2;
          v4 = v683;
        }

        else
        {
          v24 = malloc_type_calloc(v11, 1uLL, 0x100004077774924uLL);
          v24[v11 - 1] = 1;
          *v24 = 1;
          v25 = __src;
          if (v5 >= 3)
          {
            v26 = 2;
            do
            {
              v27 = 0;
              v28 = -1;
              v29 = -INFINITY;
              do
              {
                if (!v24[v27])
                {
                  v31 = &__src[864 * v27];
                  v32 = INFINITY;
                  v33 = v24;
                  v34 = (__src + 40);
                  v35 = v11;
                  do
                  {
                    if (*v33++)
                    {
                      v37 = v31[2];
                      v38 = v31[5];
                      v39 = 1.0 - (v38 * *v34 + v37 * *(v34 - 3) + v31[8] * v34[3]) / (sqrt((v38 * v38 + v37 * v37 + v31[8] * v31[8]) * (*v34 * *v34 + *(v34 - 3) * *(v34 - 3) + v34[3] * v34[3])) + 1.0e-20);
                      if (v32 > v39)
                      {
                        v32 = v39;
                      }
                    }

                    v34 += 108;
                    --v35;
                  }

                  while (v35);
                  if (v32 > v29 || v28 == -1)
                  {
                    v29 = v32;
                    v28 = v27;
                  }
                }

                ++v27;
              }

              while (v27 != v11);
              if ((v28 & 0x80000000) != 0)
              {
                __assert_rtn("vl_stats_pick_frames", "vl_stats.c", 271, "best_frame >= 0");
              }

              v24[v28] = 1;
              ++v26;
            }

            while (v26 != v5);
          }

          v40 = 0;
          if (__src)
          {
            v41 = v24;
            v42 = __src;
            v43 = v11;
            do
            {
              if (*v41++)
              {
                memcpy(&v25[864 * v40], v42, 0x360uLL);
                v25 = __src;
                ++v40;
              }

              v42 += 864;
              --v43;
            }

            while (v43);
          }

          if (v40 <= v13)
          {
            v4 = v683;
          }

          else
          {
            v46 = 2 * v13;
            if (2 * v13 <= v40)
            {
              v46 = v40;
            }

            v4 = v683;
            if (v46)
            {
              v25 = malloc_type_realloc(v25, 864 * v46, 0x10A0040E8ED4BBFuLL);
            }
          }

          __src = v25;
          if (v40 > v11)
          {
            bzero(&v25[864 * v11], 864 * (v40 - v11));
          }

          free(v24);
          v2 = a2;
        }
      }

      if (v40 > *(v3 + 988))
      {
        __assert_rtn("vl_stats_get_from_history", "vl_stats.c", 438, "da_size(&frames) <= vl->par.history.stats_max_frames");
      }
    }

    if (v40 < 1)
    {
      v686 = 0;
      v135 = 0;
      v136 = 0;
LABEL_118:
      v134 = v40;
      v133 = v40;
LABEL_119:
      v675 = v134;
      v2[62] = 0;
      *(v2 + 29) = 0u;
      *(v2 + 30) = 0u;
      *(v2 + 27) = 0u;
      *(v2 + 28) = 0u;
      *(v2 + 25) = 0u;
      *(v2 + 26) = 0u;
      *(v2 + 23) = 0u;
      *(v2 + 24) = 0u;
      *(v2 + 21) = 0u;
      *(v2 + 22) = 0u;
      *(v2 + 19) = 0u;
      *(v2 + 20) = 0u;
      *(v2 + 17) = 0u;
      *(v2 + 18) = 0u;
      *(v2 + 15) = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 13) = 0u;
      *(v2 + 14) = 0u;
      *(v2 + 11) = 0u;
      *(v2 + 12) = 0u;
      *(v2 + 9) = 0u;
      *(v2 + 10) = 0u;
      *(v2 + 7) = 0u;
      *(v2 + 8) = 0u;
      *(v2 + 5) = 0u;
      *(v2 + 6) = 0u;
      *(v2 + 3) = 0u;
      *(v2 + 4) = 0u;
      *(v2 + 1) = 0u;
      *(v2 + 2) = 0u;
      *v2 = 0u;
      *(v2 + 92) = 0;
      *(v2 + 25) = 0;
      *(v2 + 22) = v136;
      *(v2 + 34) = v133;
      *(v2 + 73) = v135;
      *(v2 + 52) = v4;
      v2[10] = 0;
      *a2 = malloc_type_malloc(24 * v136, 0x100004000313F17uLL);
      a2[1] = malloc_type_malloc(8 * v136, 0x100004052888210uLL);
      a2[2] = malloc_type_malloc(4 * v136, 0x100004052888210uLL);
      a2[3] = malloc_type_malloc(2 * v134, 0x1000040BDFB0063uLL);
      a2[4] = malloc_type_malloc(2 * v136, 0x1000040BDFB0063uLL);
      a2[8] = malloc_type_malloc(0, 0x100004052888210uLL);
      a2[9] = malloc_type_malloc(0, 0x100004052888210uLL);
      a2[13] = malloc_type_malloc(16 * v134, 0x1000040451B5BE8uLL);
      a2[14] = malloc_type_calloc(16 * v133, 1uLL, 0x100004077774924uLL);
      a2[15] = malloc_type_malloc(248 * v134, 0x10000409B83B951uLL);
      v152 = 4 * v134;
      a2[16] = malloc_type_malloc(v152, 0x100004052888210uLL);
      a2[30] = malloc_type_malloc(((3 * v675) << 34) >> 30, 0x100004052888210uLL);
      a2[31] = malloc_type_malloc(8 * v675, 0x100004000313F17uLL);
      a2[24] = malloc_type_malloc(12 * v135, 0x100004052888210uLL);
      a2[29] = malloc_type_malloc(4 * v135, 0x100004052888210uLL);
      a2[25] = malloc_type_malloc(*(a2 + 52) * v135, 0x100004077774924uLL);
      a2[27] = malloc_type_malloc(8 * v135, 0x100004052888210uLL);
      v153 = a2;
      a2[28] = malloc_type_malloc(4 * v135, 0x100004052888210uLL);
      a2[32] = malloc_type_malloc(v152, 0x100004052888210uLL);
      a2[33] = malloc_type_malloc(((3 * v675) << 34) >> 30, 0x100004052888210uLL);
      a2[34] = malloc_type_malloc(36 * v675, 0x100004052888210uLL);
      a2[35] = malloc_type_malloc(8 * v133, 0x100004052888210uLL);
      v154 = v133;
      if (v675)
      {
        v155 = __src;
        *(a2 + 72) = *&__src[864 * v675 - 860] != 0;
        v156 = v686;
        if (v686)
        {
          v157 = __src + 8;
          v158 = v675;
          do
          {
            if (*v157 == 1)
            {
              *(a2 + 13) = 1;
              if (v133 < 1)
              {
                goto LABEL_176;
              }

              goto LABEL_128;
            }

            v157 += 216;
            --v158;
          }

          while (v158);
          *(a2 + 13) = 0;
          if (v133 < 1)
          {
LABEL_176:
            v706 = 0u;
            v707 = 0u;
            v704 = 0u;
            v705 = 0u;
            v702 = 0;
            v703 = 0u;
            if (!v675)
            {
              v153[18] = 0;
              v153[19] = 0;
              v153[20] = 0;
              v153[21] = 0;
              v153[22] = 0;
              v153[23] = 0;
              if (v154 < 1)
              {
                goto LABEL_182;
              }

              goto LABEL_192;
            }

            v262 = &v155[864 * v675];
            v263 = v675 + 1;
            while (--v263 >= 1)
            {
              v264 = (v262 - 864);
              v265 = *(v262 - 214);
              v262 -= 864;
              if (v265 == 1)
              {
                goto LABEL_185;
              }
            }

            v264 = &v155[864 * v675 - 864];
LABEL_185:
            v266 = *(v264 + 88);
            v267 = *(v264 + 96);
            *(&v706 + 1) = v266;
            *&v707 = v267;
            v268 = *(v264 + 104);
            *(&v707 + 1) = v268;
            v269 = *(v264 + 16);
            v270 = *(v264 + 64);
            v271 = *(v264 + 72);
            *(&v703 + 1) = *(v264 + 40);
            *&v705 = v270;
            v272 = *(v264 + 24);
            v702.tv_sec = v269;
            *&v702.tv_usec = v272;
            *&v704 = *(v264 + 48);
            *(&v705 + 1) = v271;
            v273 = *(v264 + 56);
            *&v703 = *(v264 + 32);
            *(&v704 + 1) = v273;
            v274 = *(v264 + 80);
            *&v706 = v274;
            v275 = *(v264 + 64);
            if (fabs(v275) < 1.0)
            {
              v276 = asin(-v275);
              v277 = atan2(*(v264 + 40), *(v264 + 16));
              v278 = atan2(v271, v274);
              v155 = __src;
              v153[18] = v266;
              v153[19] = v267;
              v153[20] = v268;
              *(v153 + 21) = v277;
              *(v153 + 22) = v276;
              *(v153 + 23) = v278;
              if (v154 < 1)
              {
                goto LABEL_182;
              }

LABEL_192:
              v282 = 0;
              v283 = 0;
              v284 = v675 & 0x7FFFFFFF;
              do
              {
                v285 = &v155[864 * v282];
                *(a2[31] + v282) = *(v285 + 68);
                v700 = 0u;
                v701 = 0u;
                v698 = 0u;
                v699 = 0u;
                *&info[0].numer = 0u;
                v697 = 0u;
                v694 = 0u;
                v695 = 0u;
                v692 = 0u;
                v693 = 0u;
                *__s = 0u;
                v691 = 0u;
                *(&v700 + 1) = *(v285 + 11);
                v701 = *(v285 + 6);
                info[0] = *(v285 + 16);
                *(&v697 + 1) = *(v285 + 5);
                *&v699 = *(v285 + 8);
                info[1] = *(v285 + 24);
                *&v698 = *(v285 + 6);
                *(&v699 + 1) = *(v285 + 9);
                *&v697 = *(v285 + 4);
                *(&v698 + 1) = *(v285 + 7);
                *&v700 = *(v285 + 10);
                g_coords_diff(info, &v702.tv_sec, __s);
                v286 = (a2[30] + 48 * v282);
                *v286 = vcvt_hight_f32_f64(vcvt_f32_f64(*__s), v691);
                v286[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v692), v693);
                v286[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v694), v695);
                if (*(v285 + 78) >= 1)
                {
                  v287 = 0;
                  v288 = 0;
                  v289 = v283;
                  v290 = (8 * v283) | 4;
                  v291 = 12 * v283;
                  do
                  {
                    v292 = (*(v285 + 79) + v287);
                    v293 = a2[24] + v291;
                    *v293 = 0;
                    *(v293 + 8) = 0;
                    memcpy(a2[25] + v289 * *(a2 + 52), v292 + 8, *(a2 + 52));
                    *(a2[29] + v289) = 1;
                    v294 = a2[27] + v290;
                    *(v294 - 1) = *v292;
                    *v294 = v292[1];
                    *(a2[28] + v289++) = v282;
                    ++v288;
                    v290 += 8;
                    v287 += 288;
                    v291 += 12;
                  }

                  while (*(v285 + 78) > v288);
                  v283 = v289;
                  v3 = a1;
                  v284 = v675 & 0x7FFFFFFF;
                }

                ++v282;
                v155 = __src;
              }

              while (v282 != v284);
              v153 = a2;
              if (v283 == *(a2 + 73))
              {
                v295 = 0;
                v296 = 0;
                v297 = 0;
                v298 = __src + 456;
                do
                {
                  *(a2[32] + v297) = *(v298 + 41);
                  v299 = a2[33] + v295;
                  v300 = *(v298 + 116);
                  v301 = *(v298 + 148);
                  v299[1] = *(v298 + 132);
                  v299[2] = v301;
                  *v299 = v300;
                  v302 = a2[34] + v296;
                  v303 = *v298;
                  v304 = *(v298 + 1);
                  *(v302 + 32) = *(v298 + 8);
                  *v302 = v303;
                  *(v302 + 16) = v304;
                  *(a2[35] + v297++) = *(v298 + 36);
                  v296 += 36;
                  v295 += 48;
                  v298 += 864;
                }

                while (v284 != v297);
                goto LABEL_201;
              }

LABEL_496:
              __assert_rtn("vl_stats_get_from_history_frames", "vl_stats.c", 395, "n_tracks == vl_stats->num_slam_pt3s");
            }

            v279 = *(v264 + 24);
            if (v275 <= -1.0)
            {
              v281 = atan2(v279, *(v264 + 32));
              v155 = __src;
              v153[18] = v266;
              v153[19] = v267;
              v153[20] = v268;
              v153[21] = 0;
              v153[22] = 0x3FF921FB54442D18;
              *(v153 + 23) = v281 + 0.0;
              if (v154 < 1)
              {
                goto LABEL_182;
              }

              goto LABEL_192;
            }

            v280 = atan2(-v279, -*(v264 + 32));
            v155 = __src;
            v153[18] = v266;
            v153[19] = v267;
            v153[20] = v268;
            v153[21] = 0;
            v153[22] = 0xBFF921FB54442D18;
            *(v153 + 23) = v280;
            if (v154 >= 1)
            {
              goto LABEL_192;
            }

LABEL_182:
            if (*(v153 + 73))
            {
              goto LABEL_496;
            }

LABEL_201:
            free(v155);
            *(v153 + 10) = *(v3 + 1256);
            *(v153 + 11) = *(v3 + 1260);
            *(v153 + 12) = *(v3 + 1264);
            if (*(v3 + 3076))
            {
              v305 = *(v3 + 2984);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v306) = HIDWORD(v702.tv_sec);
              *(v153 + 38) = (v305 * LODWORD(v702.tv_sec)) / (v306 * 1000000.0) * 0.001;
              if (*(v3 + 3292))
              {
                goto LABEL_203;
              }

LABEL_233:
              *(v153 + 39) = *(v3 + 3192) * 0.000000001;
              if (!*(v3 + 3508))
              {
                goto LABEL_234;
              }

LABEL_204:
              v309 = *(v3 + 3416);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v310) = HIDWORD(v702.tv_sec);
              *(v153 + 40) = (v309 * LODWORD(v702.tv_sec)) / (v310 * 1000000.0) * 0.001;
              if (*(v3 + 3724))
              {
                goto LABEL_205;
              }

LABEL_235:
              *(v153 + 41) = *(v3 + 3624) * 0.000000001;
              if (!*(v3 + 3940))
              {
                goto LABEL_236;
              }

LABEL_206:
              v313 = *(v3 + 3848);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v314) = HIDWORD(v702.tv_sec);
              *(v153 + 42) = (v313 * LODWORD(v702.tv_sec)) / (v314 * 1000000.0) * 0.001;
              if (*(v3 + 4156))
              {
                goto LABEL_207;
              }

LABEL_237:
              *(v153 + 45) = *(v3 + 4056) * 0.000000001;
              if (!*(v3 + 6124))
              {
                goto LABEL_238;
              }

LABEL_208:
              v317 = *(v3 + 6032);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v318) = HIDWORD(v702.tv_sec);
              *(v153 + 43) = (v317 * LODWORD(v702.tv_sec)) / (v318 * 1000000.0) * 0.001;
              if (*(v3 + 6340))
              {
                goto LABEL_209;
              }

LABEL_239:
              *(v153 + 44) = *(v3 + 6240) * 0.000000001;
              if (!*(v3 + 6556))
              {
                goto LABEL_240;
              }

LABEL_210:
              v321 = *(v3 + 6464);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v322) = HIDWORD(v702.tv_sec);
              *(v153 + 46) = (v321 * LODWORD(v702.tv_sec)) / (v322 * 1000000.0) * 0.001;
              if (*(v3 + 6772))
              {
                goto LABEL_211;
              }

LABEL_241:
              *(v153 + 47) = *(v3 + 6672) * 0.000000001;
              if (!*(v3 + 6988))
              {
                goto LABEL_242;
              }

LABEL_212:
              v325 = *(v3 + 6896);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v326) = HIDWORD(v702.tv_sec);
              *(v153 + 48) = (v325 * LODWORD(v702.tv_sec)) / (v326 * 1000000.0) * 0.001;
              if (*(v3 + 7204))
              {
                goto LABEL_213;
              }

LABEL_243:
              *(v153 + 49) = *(v3 + 7104) * 0.000000001;
              if (!*(v3 + 11484))
              {
                goto LABEL_244;
              }

LABEL_214:
              v329 = *(v3 + 11392);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v330) = HIDWORD(v702.tv_sec);
              *(v153 + 50) = (v329 * LODWORD(v702.tv_sec)) / (v330 * 1000000.0) * 0.001;
              if (*(v3 + 8276))
              {
                goto LABEL_215;
              }

LABEL_245:
              *(v153 + 51) = *(v3 + 8176) * 0.000000001;
              if (!*(v3 + 8492))
              {
                goto LABEL_246;
              }

LABEL_216:
              v333 = *(v3 + 8400);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v334) = HIDWORD(v702.tv_sec);
              *(v153 + 52) = (v333 * LODWORD(v702.tv_sec)) / (v334 * 1000000.0) * 0.001;
              if (*(v3 + 8708))
              {
                goto LABEL_217;
              }

LABEL_247:
              *(v153 + 53) = *(v3 + 8608) * 0.000000001;
              if (!*(v3 + 8924))
              {
                goto LABEL_248;
              }

LABEL_218:
              v337 = *(v3 + 8832);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v338) = HIDWORD(v702.tv_sec);
              *(v153 + 54) = (v337 * LODWORD(v702.tv_sec)) / (v338 * 1000000.0) * 0.001;
              if (*(v3 + 9140))
              {
                goto LABEL_219;
              }

LABEL_249:
              *(v153 + 55) = *(v3 + 9040) * 0.000000001;
              if (!*(v3 + 9356))
              {
                goto LABEL_250;
              }

LABEL_220:
              v341 = *(v3 + 9264);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v342) = HIDWORD(v702.tv_sec);
              *(v153 + 56) = (v341 * LODWORD(v702.tv_sec)) / (v342 * 1000000.0) * 0.001;
              if (*(v3 + 7868))
              {
                goto LABEL_221;
              }

LABEL_251:
              *(v153 + 57) = *(v3 + 7768) * 0.000000001;
              if (!*(v3 + 9916))
              {
                goto LABEL_252;
              }

LABEL_222:
              v345 = *(v3 + 9824);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v346) = HIDWORD(v702.tv_sec);
              *(v153 + 58) = (v345 * LODWORD(v702.tv_sec)) / (v346 * 1000000.0) * 0.001;
              if (*(v3 + 11268))
              {
                goto LABEL_223;
              }

LABEL_253:
              *(v153 + 59) = *(v3 + 11168) * 0.000000001;
              if (!*(v3 + 12076))
              {
                goto LABEL_254;
              }

LABEL_224:
              v349 = *(v3 + 11984);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v350) = HIDWORD(v702.tv_sec);
              *(v153 + 60) = (v349 * LODWORD(v702.tv_sec)) / (v350 * 1000000.0) * 0.001;
              v351 = *(v3 + 1016);
              if (v351)
              {
                goto LABEL_225;
              }
            }

            else
            {
              *(v153 + 38) = *(v3 + 2976) * 0.000000001;
              if (!*(v3 + 3292))
              {
                goto LABEL_233;
              }

LABEL_203:
              v307 = *(v3 + 3200);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v308) = HIDWORD(v702.tv_sec);
              *(v153 + 39) = (v307 * LODWORD(v702.tv_sec)) / (v308 * 1000000.0) * 0.001;
              if (*(v3 + 3508))
              {
                goto LABEL_204;
              }

LABEL_234:
              *(v153 + 40) = *(v3 + 3408) * 0.000000001;
              if (!*(v3 + 3724))
              {
                goto LABEL_235;
              }

LABEL_205:
              v311 = *(v3 + 3632);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v312) = HIDWORD(v702.tv_sec);
              *(v153 + 41) = (v311 * LODWORD(v702.tv_sec)) / (v312 * 1000000.0) * 0.001;
              if (*(v3 + 3940))
              {
                goto LABEL_206;
              }

LABEL_236:
              *(v153 + 42) = *(v3 + 3840) * 0.000000001;
              if (!*(v3 + 4156))
              {
                goto LABEL_237;
              }

LABEL_207:
              v315 = *(v3 + 4064);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v316) = HIDWORD(v702.tv_sec);
              *(v153 + 45) = (v315 * LODWORD(v702.tv_sec)) / (v316 * 1000000.0) * 0.001;
              if (*(v3 + 6124))
              {
                goto LABEL_208;
              }

LABEL_238:
              *(v153 + 43) = *(v3 + 6024) * 0.000000001;
              if (!*(v3 + 6340))
              {
                goto LABEL_239;
              }

LABEL_209:
              v319 = *(v3 + 6248);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v320) = HIDWORD(v702.tv_sec);
              *(v153 + 44) = (v319 * LODWORD(v702.tv_sec)) / (v320 * 1000000.0) * 0.001;
              if (*(v3 + 6556))
              {
                goto LABEL_210;
              }

LABEL_240:
              *(v153 + 46) = *(v3 + 6456) * 0.000000001;
              if (!*(v3 + 6772))
              {
                goto LABEL_241;
              }

LABEL_211:
              v323 = *(v3 + 6680);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v324) = HIDWORD(v702.tv_sec);
              *(v153 + 47) = (v323 * LODWORD(v702.tv_sec)) / (v324 * 1000000.0) * 0.001;
              if (*(v3 + 6988))
              {
                goto LABEL_212;
              }

LABEL_242:
              *(v153 + 48) = *(v3 + 6888) * 0.000000001;
              if (!*(v3 + 7204))
              {
                goto LABEL_243;
              }

LABEL_213:
              v327 = *(v3 + 7112);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v328) = HIDWORD(v702.tv_sec);
              *(v153 + 49) = (v327 * LODWORD(v702.tv_sec)) / (v328 * 1000000.0) * 0.001;
              if (*(v3 + 11484))
              {
                goto LABEL_214;
              }

LABEL_244:
              *(v153 + 50) = *(v3 + 11384) * 0.000000001;
              if (!*(v3 + 8276))
              {
                goto LABEL_245;
              }

LABEL_215:
              v331 = *(v3 + 8184);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v332) = HIDWORD(v702.tv_sec);
              *(v153 + 51) = (v331 * LODWORD(v702.tv_sec)) / (v332 * 1000000.0) * 0.001;
              if (*(v3 + 8492))
              {
                goto LABEL_216;
              }

LABEL_246:
              *(v153 + 52) = *(v3 + 8392) * 0.000000001;
              if (!*(v3 + 8708))
              {
                goto LABEL_247;
              }

LABEL_217:
              v335 = *(v3 + 8616);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v336) = HIDWORD(v702.tv_sec);
              *(v153 + 53) = (v335 * LODWORD(v702.tv_sec)) / (v336 * 1000000.0) * 0.001;
              if (*(v3 + 8924))
              {
                goto LABEL_218;
              }

LABEL_248:
              *(v153 + 54) = *(v3 + 8824) * 0.000000001;
              if (!*(v3 + 9140))
              {
                goto LABEL_249;
              }

LABEL_219:
              v339 = *(v3 + 9048);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v340) = HIDWORD(v702.tv_sec);
              *(v153 + 55) = (v339 * LODWORD(v702.tv_sec)) / (v340 * 1000000.0) * 0.001;
              if (*(v3 + 9356))
              {
                goto LABEL_220;
              }

LABEL_250:
              *(v153 + 56) = *(v3 + 9256) * 0.000000001;
              if (!*(v3 + 7868))
              {
                goto LABEL_251;
              }

LABEL_221:
              v343 = *(v3 + 7776);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v344) = HIDWORD(v702.tv_sec);
              *(v153 + 57) = (v343 * LODWORD(v702.tv_sec)) / (v344 * 1000000.0) * 0.001;
              if (*(v3 + 9916))
              {
                goto LABEL_222;
              }

LABEL_252:
              *(v153 + 58) = *(v3 + 9816) * 0.000000001;
              if (!*(v3 + 11268))
              {
                goto LABEL_253;
              }

LABEL_223:
              v347 = *(v3 + 11176);
              v702.tv_sec = 0;
              mach_timebase_info(&v702);
              LODWORD(v348) = HIDWORD(v702.tv_sec);
              *(v153 + 59) = (v347 * LODWORD(v702.tv_sec)) / (v348 * 1000000.0) * 0.001;
              if (*(v3 + 12076))
              {
                goto LABEL_224;
              }

LABEL_254:
              *(v153 + 60) = *(v3 + 11976) * 0.000000001;
              v351 = *(v3 + 1016);
              if (v351)
              {
LABEL_225:
                v351 = v351[95];
              }
            }

            v153[61] = v351;
            *(v153 + 124) = 0;
            pthread_mutex_unlock((v3 + 11664));
            if (*(v3 + 984) && *(v153 + 72))
            {
              v702.tv_sec = 0;
              *&v702.tv_usec = 0;
              gettimeofday(&v702, 0);
              tv_sec = v702.tv_sec;
              tv_usec = v702.tv_usec;
              v354 = *(v153 + 73);
              v355 = *(v3 + 984) * *(v153 + 52);
              v356 = malloc_type_malloc(4 * v354, 0x100004052888210uLL);
              v357 = vl_desc_cluster_similar(v153[25], *(v153 + 52), *(v153 + 73), v356, v355, 0x7FFF);
              vl_desc_cluster_centroids(v153[25], *(v153 + 52), *(v153 + 73), v153[25], v356, v357);
              v153[25] = malloc_type_realloc(v153[25], *(v153 + 52) * v357, 0x100004077774924uLL);
              v358 = malloc_type_calloc(v357, 2uLL, 0x1000040BDFB0063uLL);
              v359 = v358;
              v360 = *(v153 + 73);
              if (v360 < 1)
              {
                v361 = 0;
              }

              else
              {
                v361 = 0;
                v362 = v153[29];
                v363 = v356;
                do
                {
                  v365 = *v362++;
                  v364 = v365;
                  v361 += v365;
                  v366 = *v363++;
                  v358[v366] += v364;
                  --v360;
                }

                while (v360);
              }

              v367 = malloc_type_malloc(4 * v357, 0x100004052888210uLL);
              v368 = v367;
              *v367 = 0;
              if (v357 > 1)
              {
                v369 = 0;
                v370 = v357 - 1;
                v371 = v367 + 1;
                v372 = v359 + 1;
                do
                {
                  if (*v372 <= 0)
                  {
                    __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 803, "slam_tracks_len[i] > 0");
                  }

                  v369 += *(v372 - 1);
                  *v371++ = v369;
                  ++v372;
                  --v370;
                }

                while (v370);
              }

              v676 = v354;
              __srcc = tv_usec;
              v688 = tv_sec;
              v373 = (3 * v357);
              v374 = malloc_type_calloc(v373, 4uLL, 0x100004052888210uLL);
              v375 = malloc_type_malloc(4 * (2 * v361), 0x100004052888210uLL);
              v376 = malloc_type_malloc(2 * (2 * v361), 0x1000040BDFB0063uLL);
              if (v357 >= 1)
              {
                memset_pattern16(v374, &unk_271105360, 4 * (3 * v357));
              }

              if (v361 >= 1)
              {
                if (v361 < 4)
                {
                  v377 = 0;
                  goto LABEL_441;
                }

                if (v361 >= 0x10)
                {
                  v377 = v361 & 0x7FFFFFF0;
                  v570 = v375 + 4;
                  v571 = v376 + 8;
                  v572.i64[0] = 0x3F0000003FLL;
                  v572.i64[1] = 0x3F0000003FLL;
                  v573 = vnegq_f32(v572);
                  *&v574 = -1;
                  *(&v574 + 1) = -1;
                  v575 = v377;
                  do
                  {
                    v570[-2] = v573;
                    v570[-1] = v573;
                    v570[-4] = v573;
                    v570[-3] = v573;
                    v570[2] = v573;
                    v570[3] = v573;
                    *v570 = v573;
                    v570[1] = v573;
                    v570 += 8;
                    *(v571 - 1) = v574;
                    *v571 = v574;
                    v571 += 2;
                    v575 -= 16;
                  }

                  while (v575);
                  if (v377 != v361)
                  {
                    if ((v361 & 0xC) == 0)
                    {
                      goto LABEL_441;
                    }

                    goto LABEL_438;
                  }
                }

                else
                {
                  v377 = 0;
LABEL_438:
                  v576 = v377;
                  v377 = v361 & 0x7FFFFFFC;
                  v577 = (v375 + 8 * v576);
                  v578 = &v376[v576];
                  v579 = v576 - v377;
                  v580.i64[0] = 0x3F0000003FLL;
                  v580.i64[1] = 0x3F0000003FLL;
                  v581 = vnegq_f32(v580);
                  do
                  {
                    *v577 = v581;
                    v577[1] = v581;
                    v577 += 2;
                    *v578 = -1;
                    v578 += 4;
                    v579 += 4;
                  }

                  while (v579);
                  if (v377 != v361)
                  {
LABEL_441:
                    v582 = v375 + v377;
                    v583 = v361 - v377;
                    v584 = &v376[v377];
                    v585 = vneg_f32(0x3F0000003FLL);
                    do
                    {
                      *v582++ = v585;
                      *v584++ = -1;
                      --v583;
                    }

                    while (v583);
                  }
                }
              }

              v586 = *(a2 + 73);
              if (v586 >= 1)
              {
                v587 = 0;
                v588 = 0;
                v589 = a2[24];
                v590 = a2[29];
                do
                {
                  v591 = v356[v587];
                  v592 = &v589[12 * v587];
                  v593 = &v374[12 * v591];
                  *v593 = *v592;
                  *(v593 + 1) = *(v592 + 1);
                  *(v593 + 2) = *(v592 + 2);
                  if (v590[v587] >= 1)
                  {
                    v594 = 0;
                    v595 = v368[v591];
                    v596 = v368[v591];
                    v597 = a2[28] + 2 * v588;
                    v598 = (a2[27] + 8 * v588 + 4);
                    v599 = &v376[v595];
                    v600 = &v375->i32[2 * v595 + 1];
                    do
                    {
                      *(v600 - 1) = *(v598 - 1);
                      v601 = *v598;
                      v598 += 2;
                      *v600 = v601;
                      v600 += 2;
                      v599[v594] = *(v597 + 2 * v594);
                      ++v588;
                      ++v594;
                    }

                    while (v594 < v590[v587]);
                    v368[v591] = v596 + v594;
                    v586 = *(a2 + 73);
                  }

                  ++v587;
                }

                while (v587 < v586);
              }

              if (v357 >= 1)
              {
                v602 = v374;
                do
                {
                  if ((*v602 & 0x7FFFFFFFu) >= 0x7F800000)
                  {
                    __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 843, "isfinite(slam_pt3s[i])");
                  }

                  ++v602;
                  --v373;
                }

                while (v373);
                if (*v368 != *v359)
                {
                  goto LABEL_491;
                }

                if (v357 != 1)
                {
                  v603 = v357 - 1;
                  v604 = v359 + 1;
                  v605 = v368 + 1;
                  while (1)
                  {
                    v606 = *v604++;
                    if (*v605 - *(v605 - 1) != v606)
                    {
                      break;
                    }

                    ++v605;
                    if (!--v603)
                    {
                      goto LABEL_459;
                    }
                  }

LABEL_491:
                  __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 848, "n_i == slam_tracks_len[i]");
                }
              }

LABEL_459:
              if (v361 <= 0)
              {
                v614 = a2;
                v607 = a2[28];
              }

              else
              {
                if ((v375->i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  goto LABEL_493;
                }

                v607 = a2[28];
                v608 = *v607;
                if (v608 < 0)
                {
LABEL_494:
                  __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 854, "stats->slam_tracks_img_idx[i] >= 0");
                }

                v609 = *(a2 + 34);
                if (v609 <= v608)
                {
LABEL_499:
                  __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 855, "stats->slam_tracks_img_idx[i] < stats->num_frames");
                }

                v610 = *v376;
                if (v610 < 0 || v609 <= v610)
                {
LABEL_495:
                  __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 856, "slam_tracks_img_idx[i] >= 0 && slam_tracks_img_idx[i] < stats->num_frames");
                }

                if (v361 != 1)
                {
                  if (v609 < 0x8000)
                  {
                    v615 = v361 - 1;
                    v616 = 1;
                    while ((v375->i32[v616 * 2] & 0x7FFFFFFFu) < 0x7F800000)
                    {
                      if (v607[v616] < 0)
                      {
                        goto LABEL_494;
                      }

                      if (v607[v616] >= *(a2 + 34))
                      {
                        goto LABEL_499;
                      }

                      v617 = v376[v616];
                      if (v617 < 0 || v609 <= v617)
                      {
                        goto LABEL_495;
                      }

                      ++v616;
                      if (!--v615)
                      {
                        goto LABEL_482;
                      }
                    }
                  }

                  else
                  {
                    v611 = v361 - 1;
                    v612 = 1;
                    while ((v375->i32[v612 * 2] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                    {
                      if (v607[v612] < 0)
                      {
                        goto LABEL_494;
                      }

                      v613 = v376[v612];
                      if (v613 < 0 || v609 <= v613)
                      {
                        goto LABEL_495;
                      }

                      ++v612;
                      if (!--v611)
                      {
                        goto LABEL_482;
                      }
                    }
                  }

LABEL_493:
                  __assert_rtn("vl_stats_rebuild_slam_tracks", "vl_stats.c", 852, "isfinite(slam_tracks[i*2+0])");
                }

LABEL_482:
                v614 = a2;
              }

              *(v614 + 73) = v357;
              v618 = v614[24];
              v614[24] = v374;
              v619 = v614[29];
              v614[28] = v376;
              v614[29] = v359;
              v620 = v614[27];
              v614[27] = v375;
              free(v368);
              free(v619);
              free(v607);
              free(v620);
              free(v618);
              free(v356);
              v702.tv_sec = 0;
              *&v702.tv_usec = 0;
              gettimeofday(&v702, 0);
              v621 = v702.tv_sec;
              v622 = v702.tv_usec;
              printf("Verbose (toc) : ");
              printf("Sparsified slam tracks: %d => %d (%.1f%%)", v676, *(v614 + 73), *(v614 + 73) * 100.0 / (v676 + 0.000000001));
              printf(": %f ms", ((1000000 * (v621 - v688) - __srcc + v622) / 1000.0));
              putchar(10);
              v153 = v614;
            }

            v702.tv_sec = 0;
            *&v702.tv_usec = 0;
            if (!gettimeofday(&v702, 0))
            {
              v630 = v702.tv_usec + 1000000 * v702.tv_sec;
              if (v630 / 1000000.0 > 1514764800.0)
              {
                v631 = (v630 - v654);
                *(v153 + 49) = v631 / 1000000.0;
                if (*(v153 + 72))
                {
                  v632 = v631 / 1000.0;
                  log_col_app("track dedupe: %.1f ms", v623, v624, v625, v626, v627, v628, v629, SLOBYTE(v632));
                }

                return;
              }
            }

LABEL_492:
            __assert_rtn("u_timel", "arch_dtime.c", 118, "ret == 0 && result/1e6 > 1514764800L");
          }

LABEL_128:
          v159 = 0;
          LODWORD(v160) = 0;
          v161 = v675 & 0x7FFFFFFF;
          v162 = v155 + 672;
          v667 = v133;
          v671 = &v155[864 * v161 - 96];
          v661 = v155 + 672;
          while (1)
          {
            v163 = &v155[864 * v159];
            v164 = v153[14] + 16 * v159;
            *v164 = 0;
            v164[1] = 0;
            *(v153[13] + v159) = *(v163 + 440);
            v165 = v153[15] + 248 * v159;
            v166 = *(v163 + 1);
            v167 = *(v163 + 2);
            v168 = *(v163 + 4);
            *(v165 + 32) = *(v163 + 3);
            *(v165 + 48) = v168;
            *v165 = v166;
            *(v165 + 16) = v167;
            v169 = *(v163 + 5);
            v170 = *(v163 + 6);
            v171 = *(v163 + 8);
            *(v165 + 96) = *(v163 + 7);
            *(v165 + 112) = v171;
            *(v165 + 64) = v169;
            *(v165 + 80) = v170;
            v172 = *(v163 + 9);
            v173 = *(v163 + 10);
            v174 = *(v163 + 12);
            *(v165 + 160) = *(v163 + 11);
            *(v165 + 176) = v174;
            *(v165 + 128) = v172;
            *(v165 + 144) = v173;
            v175 = *(v163 + 13);
            v176 = *(v163 + 14);
            v177 = *(v163 + 15);
            *(v165 + 240) = *(v163 + 32);
            *(v165 + 208) = v176;
            *(v165 + 224) = v177;
            *(v165 + 192) = v175;
            *(v153[16] + v159) = *(v163 + 2);
            v178 = *(v163 + 98);
            *(v153[3] + v159) = v178;
            v179 = v178 - 1;
            if (v178 < 1)
            {
              goto LABEL_130;
            }

            v180 = v3;
            v181 = v160;
            v182 = *(v163 + 99);
            v183 = *(v163 + 102);
            v184 = *(v163 + 105);
            v186 = *v153;
            v185 = v153[1];
            v187 = v153[2];
            v188 = v153[4];
            if (v178 > 7)
            {
              v189 = 0;
              v205 = (*&v186 + 24 * v160);
              v206 = !is_mul_ok(v179, 0x18uLL);
              v207 = 3 * v179;
              if (&v205[3 * v179 + 1] >= v205 + 1 && !v206 && &v205[v207 + 2] >= v205 + 2 && !v206 && &v205[v207] >= v205 && !v206 && &v185[8 * v160 + 4 + 8 * v179] >= &v185[8 * v160 + 4] && !(v179 >> 61))
              {
                v189 = 0;
                v208 = *&v186 + 24 * v160;
                v209 = *&v186 + 24 * (v178 + v160);
                v210 = &v185[8 * v181];
                v211 = v210 + 8 * v178;
                v213 = v210 < v183 + 12 * v178 && v183 < v211;
                v214 = &v187[v181];
                v216 = v210 < v182 + 8 * v178 && v182 < v211;
                v218 = v214 < v184 + 8 * v178 - 4 && v184 < &v187[v178 + v181];
                if (v162 >= v209 || v208 >= v671)
                {
                  v153 = a2;
                  v155 = __src;
                  if (!v213 && !v216 && !v218)
                  {
                    v189 = v178 & 0x3FFFFFFFFFFFFFF8;
                    v160 = (v178 & 0x3FFFFFFFFFFFFFF8) + v181;
                    v220 = &v185[8 * v181];
                    v221 = (v184 + 32);
                    v222 = *(v163 + 102);
                    v223 = *(v163 + 99);
                    v224 = v178 & 0x3FFFFFFFFFFFFFF8;
                    v225 = &v188[v181];
                    do
                    {
                      v226 = v222;
                      v711 = vld3q_f32(v226);
                      v226 += 12;
                      v712 = vld3q_f32(v226);
                      v687 = vcvtq_f64_f32(*v711.val[0].f32);
                      v227 = vcvt_hight_f64_f32(v711.val[0]);
                      v228 = vcvtq_f64_f32(*&v712.val[0].f64[0]);
                      v229 = vcvt_hight_f64_f32(v712.val[0]);
                      v230 = vcvt_hight_f64_f32(v712.val[1]);
                      v231 = vcvtq_f64_f32(*&v712.val[1].f64[0]);
                      v232 = vcvt_hight_f64_f32(v711.val[1]);
                      v233 = vcvtq_f64_f32(*v711.val[1].f32);
                      v234 = vcvt_hight_f64_f32(v711.val[2]);
                      v235 = vcvt_hight_f64_f32(v712.val[2]);
                      v236 = vcvtq_f64_f32(*v711.val[2].f32);
                      v711.val[2].i64[0] = *(v163 + 84);
                      v711.val[1].i64[0] = *(v163 + 85);
                      v711.val[0] = vcvtq_f64_f32(*&v712.val[2].f64[0]);
                      v237 = vmulq_n_f64(v231, *v711.val[1].i64);
                      v712.val[1].f64[0] = *(v163 + 86);
                      v712.val[0] = vmlaq_n_f64(vmulq_n_f64(v230, *v711.val[1].i64), v229, *v711.val[2].i64);
                      v238 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v233, *v711.val[1].i64), v687, *v711.val[2].i64), v236, v712.val[1].f64[0]);
                      v239 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v232, *v711.val[1].i64), v227, *v711.val[2].i64), v234, v712.val[1].f64[0]);
                      v240 = (v163 + 744);
                      v711.val[1] = vld1q_dup_f64(v240);
                      v241 = vmlaq_n_f64(vmlaq_n_f64(v237, v228, *v711.val[2].i64), v711.val[0], v712.val[1].f64[0]);
                      v711.val[2].i64[0] = *(v163 + 87);
                      v242 = *(v163 + 88);
                      v712.val[2].f64[0] = *(v163 + 89);
                      v243 = (v163 + 752);
                      v244 = vld1q_dup_f64(v243);
                      v245 = *(v163 + 90);
                      v246 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v230, v242), v229, *v711.val[2].i64), v235, v712.val[2].f64[0]);
                      v247 = *(v163 + 91);
                      v248 = vmlaq_n_f64(vmulq_n_f64(v230, v247), v229, v245);
                      v229.f64[0] = *(v163 + 92);
                      v249 = vmlaq_n_f64(v248, v235, v229.f64[0]);
                      v250 = vaddq_f64(v711.val[1], vmlaq_n_f64(v712.val[0], v235, v712.val[1].f64[0]));
                      v251 = (v163 + 760);
                      v252 = vld1q_dup_f64(v251);
                      v712.val[0] = vaddq_f64(v244, v246);
                      v710.val[0] = vaddq_f64(v711.val[1], v239);
                      v712.val[1] = vaddq_f64(v252, v249);
                      v710.val[1] = vaddq_f64(v244, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v232, v242), v227, *v711.val[2].i64), v234, v712.val[2].f64[0]));
                      v708.val[0] = vaddq_f64(v711.val[1], v241);
                      v710.val[2] = vaddq_f64(v252, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v232, v247), v227, v245), v234, v229.f64[0]));
                      v709.val[0] = vaddq_f64(v711.val[1], v238);
                      v708.val[1] = vaddq_f64(v244, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v231, v242), v228, *v711.val[2].i64), v711.val[0], v712.val[2].f64[0]));
                      v709.val[1] = vaddq_f64(v244, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v233, v242), v687, *v711.val[2].i64), v236, v712.val[2].f64[0]));
                      v708.val[2] = vaddq_f64(v252, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v231, v247), v228, v245), v711.val[0], v229.f64[0]));
                      v709.val[2] = vaddq_f64(v252, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v233, v247), v687, v245), v236, v229.f64[0]));
                      v238.f64[0] = NAN;
                      v238.f64[1] = NAN;
                      v253 = v205;
                      v254 = v205 + 12;
                      v255 = v205 + 18;
                      vst3q_f64(v253, v709);
                      v253 += 6;
                      vst3q_f64(v253, v710);
                      vst3q_f64(v254, v708);
                      vst3q_f64(v255, v712);
                      v256 = v221 - 4;
                      v257 = v221 - 2;
                      v258 = v221 + 2;
                      v259 = v221 + 4;
                      v708.val[1] = *v223;
                      v708.val[0] = *(v223 + 16);
                      v708.val[2] = *(v223 + 48);
                      *(v220 + 2) = *(v223 + 32);
                      *(v220 + 3) = v708.val[2];
                      *v220 = v708.val[1];
                      *(v220 + 1) = v708.val[0];
                      v220 += 64;
                      LODWORD(v708.val[0].f64[0]) = *(v221 - 8);
                      HIDWORD(v708.val[0].f64[0]) = *(v221 - 6);
                      v260 = v221 + 6;
                      v261 = *v221;
                      v221 += 16;
                      LODWORD(v708.val[1].f64[0]) = v261;
                      HIDWORD(v708.val[1].f64[0]) = *v258;
                      LODWORD(v708.val[0].f64[1]) = *v256;
                      LODWORD(v708.val[1].f64[1]) = *v259;
                      HIDWORD(v708.val[1].f64[1]) = *v260;
                      HIDWORD(v708.val[0].f64[1]) = *v257;
                      *v214 = v708.val[0];
                      v214[1] = v708.val[1];
                      v214 += 2;
                      *v225++ = v238;
                      v205 += 24;
                      v223 += 64;
                      v222 += 24;
                      v224 -= 8;
                    }

                    while (v224);
                    v181 = v160;
                    v153 = a2;
                    v155 = __src;
                    v161 = v675 & 0x7FFFFFFF;
                    v154 = v667;
                    v162 = v661;
                    if (v178 == v189)
                    {
                      goto LABEL_129;
                    }
                  }
                }

                else
                {
                  v153 = a2;
                  v155 = __src;
                }
              }
            }

            else
            {
              v189 = 0;
            }

            v190 = v178 - v189;
            v191 = (v184 + 8 * v189);
            v192 = (*&v186 + 24 * v181 + 16);
            v193 = &v185[8 * v181 + 4];
            v194 = (v183 + 12 * v189 + 8);
            v195 = (v182 + 8 * v189 + 4);
            v160 = v181;
            do
            {
              v196 = *(v194 - 2);
              v197 = *(v194 - 1);
              v198 = *v194;
              v194 += 3;
              v199 = *(v163 + 93) + *(v163 + 85) * v197 + *(v163 + 84) * v196 + *(v163 + 86) * v198;
              v200 = *(v163 + 94) + *(v163 + 88) * v197 + *(v163 + 87) * v196 + *(v163 + 89) * v198;
              v201 = *(v163 + 91) * v197 + *(v163 + 90) * v196 + *(v163 + 92) * v198;
              v202 = *(v163 + 95);
              *(v192 - 2) = v199;
              *(v192 - 1) = v200;
              *v192 = v202 + v201;
              v192 += 3;
              *(v193 - 1) = *(v195 - 1);
              v203 = *v195;
              v195 += 2;
              *v193 = v203;
              v193 += 8;
              v204 = *v191;
              v191 += 2;
              v187[v160] = v204;
              v188[v160++] = -1;
              --v190;
            }

            while (v190);
LABEL_129:
            v3 = v180;
LABEL_130:
            if (++v159 == v161)
            {
              goto LABEL_176;
            }
          }
        }
      }

      else
      {
        v156 = 0;
        *(a2 + 72) = 0;
        v155 = __src;
      }

      *(a2 + 13) = v156;
      if (v133 < 1)
      {
        goto LABEL_176;
      }

      goto LABEL_128;
    }

    if (v40 == 1)
    {
      v135 = 0;
      v137 = 0;
      v138 = __src;
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v137 = v40 & 0x7FFFFFFFFFFFFFFELL;
      v141 = v40 & 0x7FFFFFFFFFFFFFFELL;
      v138 = __src;
      v142 = __src;
      do
      {
        v139 += *(v142 + 156);
        v140 += *(v142 + 372);
        v142 += 1728;
        v141 -= 2;
      }

      while (v141);
      v135 = v140 + v139;
      if (v40 == v137)
      {
LABEL_110:
        if (v40 == 1)
        {
          v136 = 0;
          v145 = 0;
        }

        else
        {
          v146 = 0;
          v147 = 0;
          v145 = v40 & 0x7FFFFFFFFFFFFFFELL;
          v148 = v40 & 0x7FFFFFFFFFFFFFFELL;
          v149 = v138;
          do
          {
            v146 += *(v149 + 196);
            v147 += *(v149 + 412);
            v149 += 1728;
            v148 -= 2;
          }

          while (v148);
          v136 = v147 + v146;
          if (v40 == v145)
          {
            goto LABEL_117;
          }
        }

        v150 = v40 - v145;
        v151 = 864 * v145 + 784;
        do
        {
          v136 += *&v138[v151];
          v151 += 864;
          --v150;
        }

        while (v150);
LABEL_117:
        v686 = 1;
        goto LABEL_118;
      }
    }

    v143 = v40 - v137;
    v144 = &v138[864 * v137 + 624];
    do
    {
      v135 += *v144;
      v144 += 864;
      --v143;
    }

    while (v143);
    goto LABEL_110;
  }

  v20 = *(a1 + 7208);
  v655 = *(a1 + 11512);
  *&v707 = 0;
  v705 = 0u;
  v706 = 0u;
  v703 = 0u;
  v704 = 0u;
  v702 = 0;
  hash_map_create(&v702, 8, 4);
  v21 = *(v3 + 7232);
  if (v21 < 1)
  {
    v22 = 0;
    goto LABEL_67;
  }

  if (v21 == 1)
  {
    v22 = 0;
    v23 = 0;
LABEL_65:
    v51 = v21 - v23;
    v52 = (*(v3 + 7240) + 80 * v23);
    do
    {
      v53 = *v52;
      v52 += 20;
      v22 += v53;
      --v51;
    }

    while (v51);
    goto LABEL_67;
  }

  v47 = 0;
  v48 = 0;
  v23 = v21 & 0x7FFFFFFFFFFFFFFELL;
  v49 = v21 & 0x7FFFFFFFFFFFFFFELL;
  v50 = *(v3 + 7240);
  do
  {
    v47 += *v50;
    v48 += v50[20];
    v50 += 40;
    v49 -= 2;
  }

  while (v49);
  v22 = v48 + v47;
  if (v21 != v23)
  {
    goto LABEL_65;
  }

LABEL_67:
  v2[1] = malloc_type_malloc(8 * v22, 0x100004052888210uLL);
  v650 = v22;
  *v2 = malloc_type_malloc(24 * v22, 0x100004000313F17uLL);
  v653 = v22;
  v2[2] = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
  v2[3] = malloc_type_malloc(2 * v20, 0x1000040BDFB0063uLL);
  v2[13] = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
  v2[14] = malloc_type_malloc(16 * v20, 0x100004077774924uLL);
  v2[15] = malloc_type_malloc(248 * v20, 0x10000409B83B951uLL);
  v2[16] = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
  *__s = 0;
  v54 = a1;
  if (v20 >= 1)
  {
    v55 = 0;
    v56 = 0;
    v656 = v20 & 0x7FFFFFFF;
    do
    {
      v57 = *(v54 + 7288);
      v684 = (*(v54 + 7240) + 80 * v56);
      v58 = *v684;
      *(v2[3] + v56) = *v684;
      *(v2[13] + v56) = *(*(v54 + 7264) + 16 * v56);
      v59 = v2[15] + 248 * v56;
      v60 = *(v54 + 7312) + 248 * v56;
      v61 = *(v60 + 112);
      v63 = *(v60 + 64);
      v62 = *(v60 + 80);
      *(v59 + 96) = *(v60 + 96);
      *(v59 + 112) = v61;
      *(v59 + 64) = v63;
      *(v59 + 80) = v62;
      v64 = *(v60 + 176);
      v66 = *(v60 + 128);
      v65 = *(v60 + 144);
      *(v59 + 160) = *(v60 + 160);
      *(v59 + 176) = v64;
      *(v59 + 128) = v66;
      *(v59 + 144) = v65;
      v68 = *(v60 + 208);
      v67 = *(v60 + 224);
      v69 = *(v60 + 192);
      *(v59 + 240) = *(v60 + 240);
      *(v59 + 208) = v68;
      *(v59 + 224) = v67;
      *(v59 + 192) = v69;
      v70 = *v60;
      v71 = *(v60 + 16);
      v72 = *(v60 + 48);
      *(v59 + 32) = *(v60 + 32);
      *(v59 + 48) = v72;
      *v59 = v70;
      *(v59 + 16) = v71;
      *(v2[16] + v56) = *(*(v54 + 7336) + 4 * v56);
      if (v58 >= 1)
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 24 * v55;
        v77 = (v57 + 112 * v56);
        __srca = ((8 * v55) | 4);
        v669 = v58 & 0x7FFFFFFF;
        v673 = (4 * v55);
        v659 = v55;
        v665 = v55;
        do
        {
          v78 = v684[1];
          v79 = (v684[4] + v73);
          v80 = *(v684[7] + v74 + 4);
          v81 = *v79;
          v82 = v79[1];
          v83 = v79[2];
          info[0] = 0;
          v84 = v77[9] + v77[1] * v82 + *v77 * v81 + v77[2] * v83;
          v85 = v77[4] * v82 + v77[3] * v81 + v77[5] * v83;
          v86 = (v78 + v74);
          v87 = v77[7] * v82 + v77[6] * v81;
          v88 = v77[10] + v85;
          v89 = v77[11] + v87 + v77[8] * v83;
          v90 = &__srca[v74 + a2[1]];
          *(v90 - 1) = *v86;
          *v90 = v86[1];
          v91 = (*a2 + v76);
          *v91 = v84;
          v91[1] = v88;
          v91[2] = v89;
          *&v673[4 * v75 + a2[2]] = *(v684[7] + v74);
          info[0].numer = v56;
          info[0].denom = v80;
          v92 = *(&v705 + 1);
          v93 = SDWORD2(v703);
          if (DWORD2(v703) == -1)
          {
            v93 = strlen(__s) + 1;
          }

          if (v707)
          {
            goto LABEL_498;
          }

          v94 = malloc_type_malloc(v93 + SDWORD1(v703) + 48, 0x10A0040456CFA8FuLL);
          *v94 = v94 + 6;
          v95 = v94 + SDWORD1(v703) + 48;
          v94[2] = v95;
          memcpy(v94 + 6, info, v703);
          memcpy(v95, __s, v93);
          v94[4] = 0;
          v94[5] = v92;
          *(&v705 + 1) = v94;
          v96 = (v92 + 32);
          if (!v92)
          {
            v96 = &v706;
          }

          *v96 = v94;
          v97 = (v704)(info, v703);
          *(v94 + 2) = v97;
          v98 = v702.tv_sec;
          v99 = v705;
          v94[3] = *(v705 + 8 * (v97 % LODWORD(v702.tv_sec)));
          *(v99 + 8 * (v97 % v98)) = v94;
          ++*&v702.tv_usec;
          if ((v98 * 1.5) < *&v702.tv_usec)
          {
            hash_map_grow(&v702, 3 * v98);
          }

          *__s = v665 + v75++ + 1;
          v74 += 8;
          v76 += 24;
          v73 += 12;
        }

        while (v669 != v75);
        v55 = v659 + v75;
        v2 = a2;
        v54 = a1;
      }

      ++v56;
    }

    while (v56 != v656);
  }

  v100 = *(v54 + 14424);
  if (v100)
  {
    v633 = *(v54 + 4);
    if (v633 == 1)
    {
      v101 = 64;
    }

    else
    {
      v101 = 256;
    }

    v102 = *(v100 + 368);
    v103 = *(v54 + 7208);
    v685 = *(v100 + 588);
    v104 = *(v100 + 592);
    *(v2 + 72) = *(v54 + 7360);
    *(v2 + 13) = *(v54 + 7364);
    v105 = *(v54 + 660);
    if (v105 >= v102)
    {
      v106 = v102;
    }

    else
    {
      v106 = *(v54 + 660);
    }

    if (v105)
    {
      v107 = v106;
    }

    else
    {
      v107 = v102;
    }

    *(v2 + 73) = v107;
    *(v2 + 34) = v103;
    __n = v101;
    *(v2 + 52) = v101;
    *(v2 + 74) = *(v54 + 7352) - v103;
    v645 = *(v54 + 14512);
    v646 = *(v54 + 14504);
    v644 = *(v54 + 14520);
    v108 = *(v54 + 14432);
    v109 = *(v54 + 14480);
    v110 = *(v54 + 14440);
    v111 = *(v54 + 14488);
    v112 = *(v54 + 14448);
    v113 = *(v54 + 14496);
    v647 = v104;
    v114 = (*(v100 + 304) + 880 * v104);
    v115 = v114[1];
    v117 = v114[2];
    v116 = v114[3];
    v118 = v108 * *v114 + 0.0 + v110 * v115 + v112 * v117;
    v120 = v114[4];
    v119 = v114[5];
    v121 = v108 * v116 + 0.0 + v110 * v120 + v112 * v119;
    v123 = v114[6];
    v122 = v114[7];
    v124 = v108 * v123 + 0.0 + v110 * v122;
    v125 = v114[8];
    v666 = v114[9];
    v670 = v122;
    v648 = v121;
    v649 = v124 + v112 * v125;
    v674 = *(v54 + 14456);
    __srcb = v119;
    v126 = *(v54 + 14464);
    v652 = *(v54 + 14472);
    v127 = v674 * *v114 + 0.0 + v126 * v115 + v652 * v117;
    v128 = v109 * *v114 + 0.0 + v111 * v115 + v113 * v117;
    v657 = v120;
    v660 = v127;
    v129 = v109 * v116 + 0.0 + v111 * v120 + v113 * v119;
    v634 = v123;
    v130 = v109 * v123 + 0.0 + v111 * v122 + v113 * v125;
    v637 = v114[10];
    v638 = v125;
    v639 = v114[11];
    v640 = v130;
    v131 = v129;
    v636 = v128;
    if (fabs(v128) >= 1.0)
    {
      if (v128 <= -1.0)
      {
        v641 = atan2(v121, v649) + 0.0;
        v642 = 0.0;
        *&v132 = 1.57079633;
      }

      else
      {
        v641 = atan2(-v121, -v649);
        v642 = 0.0;
        *&v132 = -1.57079633;
      }

      v643 = *&v132;
    }

    else
    {
      v643 = asin(-v128);
      v642 = atan2(v127, v118);
      v641 = atan2(v129, v130);
    }

    v378 = v118;
    v379 = v674 * v116 + 0.0;
    v380 = malloc_type_calloc(v107, 4uLL, 0x100004052888210uLL);
    v381 = v380;
    v382 = *(v54 + 14424);
    v383 = *(v54 + 1032);
    v384 = *(v54 + 664);
    v385 = *(v2 + 73);
    v386 = v382[46];
    v387 = v131;
    if (v385 < 1 || v385 != v386)
    {
      goto LABEL_278;
    }

    if (v385 >= 8)
    {
      v389 = *(v54 + 1032);
      v388 = v385 & 0x7FFFFFF8;
      v390 = xmmword_271103920;
      v391 = v380 + 1;
      v392.i64[0] = 0x400000004;
      v392.i64[1] = 0x400000004;
      v393.i64[0] = 0x800000008;
      v393.i64[1] = 0x800000008;
      v394 = v388;
      do
      {
        v391[-1] = v390;
        *v391 = vaddq_s32(v390, v392);
        v390 = vaddq_s32(v390, v393);
        v391 += 2;
        v394 -= 8;
      }

      while (v394);
      v383 = v389;
      if (v388 == v385)
      {
        goto LABEL_278;
      }
    }

    else
    {
      v388 = 0;
    }

    do
    {
      v380->i32[v388] = v388;
      ++v388;
    }

    while (v385 != v388);
LABEL_278:
    v651 = v103;
    v395 = v379 + v126 * v657;
    v396 = v674 * v634 + 0.0;
    v658 = v385;
    v635 = v383;
    v397.i64[0] = v383;
    v397.i64[1] = SHIDWORD(v383);
    v398 = vrndpq_f64(vdivq_f64(vcvtq_f64_s64(v397), vdupq_lane_s64(COERCE__INT64(v384), 0)));
    v399 = vmulq_laneq_f64(v398, v398, 1).f64[0];
    if (v399)
    {
      v400 = 0;
      v401 = 0;
      v402 = 0;
      v403 = 0;
      v404 = __srcb;
      do
      {
        v406 = v401 + 1;
        if (v401 >= v402)
        {
          v407 = 2 * v402;
          if (!v402)
          {
            v407 = 10;
          }

          if (v407 <= v401)
          {
            v402 = v401 + 1;
          }

          else
          {
            v402 = v407;
          }

          v403 = malloc_type_realloc(v403, 24 * v402, 0x1020040FBFA920DuLL);
          v387 = v131;
        }

        v405 = &v403[v400];
        *v405 = 0;
        *(v405 + 1) = 0;
        *(v405 + 2) = 0;
        v400 += 24;
        v401 = v406;
      }

      while (v399 != v406);
    }

    else
    {
      v403 = 0;
      v404 = __srcb;
    }

    v677 = v403;
    __srcd = v381;
    v408 = v395 + v652 * v404;
    v409 = v396 + v126 * v670;
    v410 = v378 * v666 + 0.0;
    v411 = v660 * v666 + 0.0;
    v412 = v636 * v666 + 0.0;
    if (v386 < 1)
    {
      v662 = 0;
      v415 = v646;
    }

    else
    {
      v413 = 0;
      v662 = 0;
      v414 = v384;
      v672 = v386 & 0x7FFFFFFF;
      v668 = v635 / v384;
      v415 = v646;
      do
      {
LABEL_293:
        v418 = 0;
        v419 = (v382[40] + 24 * v413);
        while (1)
        {
          info[0] = 0;
          v421 = *(v419[1] + 4 * v418);
          v422 = *(v419[1] + 4 * v418) & 0x7FFF;
          v423 = v421 >> 15;
          v424 = v382[38];
          info[0] = (v421 & 0x7FFF);
          info[0].denom = v421 >> 15;
          v425 = (v704)(info, v703);
          if (LODWORD(v702.tv_sec))
          {
            v426 = v425;
            v427 = *(v705 + 8 * (v425 % LODWORD(v702.tv_sec)));
            if (v427)
            {
              while (v426 != *(v427 + 8) || (*(&v704 + 1))(info, *v427, v703))
              {
                v427 = *(v427 + 24);
                if (!v427)
                {
                  goto LABEL_294;
                }
              }

              if (*(v427 + 16))
              {
                break;
              }
            }
          }

LABEL_294:
          ++v418;
          v420 = *v419;
          if (*v419 <= v418)
          {
            v428 = (*(v424 + 880 * v422 + 376) + 8 * v423);
            v429 = vcvtms_s32_f32(*v428 / v414) + v668 * vcvtms_s32_f32(v428[1] / v414);
            v430 = v677;
            v431 = &v677[3 * v429];
            v432 = *v431;
            v433 = v431[2];
            if (*v431 < v433)
            {
              v381 = __srcd;
            }

            else
            {
              v434 = v429;
              v435 = 2 * v433;
              if (!v433)
              {
                v435 = 32;
              }

              if (v435 <= v432)
              {
                v436 = v432 + 1;
              }

              else
              {
                v436 = v435;
              }

              v381 = __srcd;
              if (v436)
              {
                v437 = &v677[3 * v434];
                v438 = malloc_type_realloc(v437[1], 8 * v436, 0x100004000313F17uLL);
                v430 = v677;
                v437[1] = v438;
                v432 = *v431;
              }

              v430[3 * v434 + 2] = v436;
            }

            v387 = v131;
            v416 = v432 + 1;
            *v431 = v416;
            v417 = v431[1] + 8 * v416;
            *(v417 - 8) = v420;
            *(v417 - 4) = v413++;
            if (v413 == v672)
            {
              goto LABEL_316;
            }

            goto LABEL_293;
          }
        }

        v381 = __srcd;
        if (v662 < v658)
        {
          __srcd->i32[v662++] = v413;
        }

        v387 = v131;
        ++v413;
      }

      while (v413 != v672);
    }

LABEL_316:
    v439 = v409 + v652 * v638;
    v440 = v411 + v408 * v637;
    v441 = v412 + v387 * v637;
    v2 = a2;
    if (v399)
    {
      v442 = v677 + 1;
      v443 = v399;
      do
      {
        v444 = *(v442 - 1);
        if (v444)
        {
          qsort(*v442, v444, 8uLL, int_pair_cmp_dec);
        }

        v442 += 3;
        --v443;
      }

      while (v443);
    }

    v445 = v440 + v439 * v639;
    v446 = malloc_type_calloc(v399, 4uLL, 0x100004052888210uLL);
    v447 = v446;
    if (v662 < v658)
    {
      LODWORD(v448) = 0;
      v449 = v662;
      do
      {
        v451 = v446[v448];
        if (v677[3 * v448] > v451)
        {
          v450 = v448;
        }

        else
        {
          do
          {
            v448 = (v448 + 1) % v399;
            v451 = v446[v448];
          }

          while (v677[3 * v448] <= v451);
          v450 = v448;
        }

        v381->i32[v449] = *(v677[3 * v450 + 1] + 2 * v451 + 1);
        ++v446[v450];
        ++v449;
      }

      while (v449 != v658);
    }

    v452 = v645 - v445;
    if (v399)
    {
      v453 = v677 + 1;
      do
      {
        v454 = *v453;
        v453 += 3;
        free(v454);
        --v399;
      }

      while (v399);
    }

    free(v677);
    free(v447);
    *(a2 + 18) = v415 - (v410 + v648 * v637 + v649 * v639);
    *(a2 + 19) = v452;
    *(a2 + 20) = v644 - (v441 + v640 * v639);
    *(a2 + 21) = v642;
    *(a2 + 22) = v643;
    *(a2 + 23) = v641;
    a2[24] = malloc_type_malloc(12 * *(a2 + 73), 0x100004052888210uLL);
    a2[25] = malloc_type_malloc(*(a2 + 73) * *(a2 + 52), 0x100004077774924uLL);
    a2[29] = malloc_type_malloc(2 * *(a2 + 73), 0x1000040BDFB0063uLL);
    a2[4] = malloc_type_malloc(2 * v650, 0x1000040BDFB0063uLL);
    v455 = *(a2 + 73);
    if (v455 < 1)
    {
      v458 = 0;
    }

    else
    {
      v456 = 0;
      v457 = 0;
      LODWORD(v458) = 0;
      if (v633 == 1)
      {
        v459 = 6;
      }

      else
      {
        v459 = 8;
      }

      do
      {
        v460 = v381->i32[v457];
        v461 = *(a1 + 14424);
        v462 = (v461[40] + 24 * v460);
        v463 = (v461[47] + 12 * v460);
        v464 = a2[24] + v456;
        *v464 = *v463;
        v464[1] = v463[1];
        v464[2] = v463[2];
        v465 = *v462;
        *(a2[29] + v457) = *v462;
        if (v465)
        {
          memcpy(a2[25] + (v457 << v459), (*(v461[38] + 880 * (**(v462 + 1) & 0x7FFF) + 384) + (**(v462 + 1) >> 15 << v459)), __n);
          v455 = *(a2 + 73);
        }

        LODWORD(v458) = v458 + v465;
        ++v457;
        v456 += 12;
      }

      while (v457 < v455);
      v458 = v458;
      v2 = a2;
    }

    v2[27] = malloc_type_malloc(8 * v458, 0x100004052888210uLL);
    v2[28] = malloc_type_malloc(2 * v458, 0x1000040BDFB0063uLL);
    v466 = *(v2 + 73);
    if (v466 >= 1)
    {
      v467 = 0;
      LODWORD(v468) = 0;
      do
      {
        v469 = (*(*(a1 + 14424) + 320) + 24 * v381->i32[v467]);
        if (*v469 >= 1)
        {
          v470 = 0;
          v468 = v468;
          do
          {
            info[0] = 0;
            v471 = *(v469[1] + 4 * v470) & 0x7FFF;
            v472 = *(v469[1] + 4 * v470) >> 15;
            v473 = (*(*(*(a1 + 14424) + 304) + 880 * v471 + 376) + 8 * v472);
            v474 = v2[27] + 8 * v468;
            *v474 = *v473;
            v474[1] = v473[1];
            *(v2[28] + v468) = v471;
            info[0].numer = (v471 - (v647 - v651 + 1)) % v685;
            info[0].denom = v472;
            v475 = (v704)(info, v703);
            if (LODWORD(v702.tv_sec))
            {
              v476 = v475;
              v477 = *(v705 + 8 * (v475 % LODWORD(v702.tv_sec)));
              if (v477)
              {
                while (v476 != *(v477 + 8) || (*(&v704 + 1))(info, *v477, v703))
                {
                  v477 = *(v477 + 24);
                  if (!v477)
                  {
                    goto LABEL_346;
                  }
                }

                v478 = *(v477 + 16);
                if (v478)
                {
                  *(v2[4] + *v478) = v467;
                }
              }
            }

LABEL_346:
            ++v468;
            ++v470;
          }

          while (*v469 > v470);
          v466 = *(v2 + 73);
          v381 = __srcd;
        }

        ++v467;
      }

      while (v467 < v466);
    }

    v2[32] = malloc_type_malloc(4 * v651, 0x100004052888210uLL);
    v479 = 48 * v651;
    v2[33] = malloc_type_malloc(v479, 0x100004052888210uLL);
    v2[34] = malloc_type_malloc(36 * v651, 0x100004052888210uLL);
    v2[35] = malloc_type_malloc(8 * v651, 0x100004052888210uLL);
    v2[30] = malloc_type_malloc(v479, 0x100004052888210uLL);
    v2[31] = malloc_type_malloc(8 * v651, 0x100004000313F17uLL);
    v54 = a1;
    if (v651 >= 1)
    {
      v480 = 0;
      v481 = 0;
      v482 = 0;
      v483 = 0;
      do
      {
        v484 = (*(a1 + 7216) + v480);
        v485 = *(*(a1 + 14424) + 304);
        *(v2[32] + v483) = *(v484 + 41);
        v486 = v485 + 880 * ((v647 + v685 - v651 + 1 + v483) % v685);
        v487 = v2[33] + v481;
        v488 = *(v484 + 116);
        v489 = *(v484 + 148);
        v487[1] = *(v484 + 132);
        v487[2] = v489;
        *v487 = v488;
        v490 = v2[34] + v482;
        v491 = *v484;
        v492 = v484[1];
        *(v490 + 32) = *(v484 + 8);
        *v490 = v491;
        *(v490 + 16) = v492;
        *(v2[35] + v483) = *(v484 + 36);
        v493 = (v2[30] + v481);
        *v493 = vcvt_hight_f32_f64(vcvt_f32_f64(*v486), *(v486 + 16));
        v493[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v486 + 32)), *(v486 + 48));
        v493[2] = vcvt_hight_f32_f64(vcvt_f32_f64(*(v486 + 64)), *(v486 + 80));
        *(v2[31] + v483++) = *(v486 + 504);
        v482 += 36;
        v481 += 48;
        v480 += 168;
      }

      while ((v651 & 0x7FFFFFFF) != v483);
    }

    free(v381);
  }

  v2[8] = malloc_type_malloc(4 * v655, 0x100004052888210uLL);
  v494 = malloc_type_malloc(4 * v655, 0x100004052888210uLL);
  v2[9] = v494;
  if (v655 < 1)
  {
    goto LABEL_372;
  }

  v495 = *(v54 + 11520);
  v496 = v2[8];
  v497 = *(v54 + 11544);
  v498 = v655 & 0x7FFFFFFF;
  if (v498 < 0x10)
  {
    v499 = 0;
LABEL_370:
    v507 = v498 - v499;
    v508 = 4 * v499;
    v509 = &v494[4 * v499];
    v510 = (v497 + v508);
    v511 = &v496[v508];
    v512 = (v495 + v508);
    do
    {
      v513 = *v512++;
      *v511 = v513;
      v511 += 4;
      v514 = *v510++;
      *v509 = v514;
      v509 += 4;
      --v507;
    }

    while (v507);
    goto LABEL_372;
  }

  v499 = 0;
  if ((v494 - v496) < 0x20)
  {
    goto LABEL_370;
  }

  if (&v496[-v495] < 0x20)
  {
    goto LABEL_370;
  }

  if ((v497 - v496) < 0x20)
  {
    goto LABEL_370;
  }

  if (&v494[-v495] < 0x20)
  {
    goto LABEL_370;
  }

  if (&v494[-v497] < 0x20)
  {
    goto LABEL_370;
  }

  v499 = v498 - (v655 & 7);
  v500 = (v495 + 16);
  v501 = v496 + 16;
  v502 = (v497 + 16);
  v503 = v494 + 16;
  v504 = v499;
  do
  {
    v505 = *v500;
    *(v501 - 1) = *(v500 - 1);
    *v501 = v505;
    v506 = *v502;
    v500 += 2;
    *(v503 - 1) = *(v502 - 1);
    *v503 = v506;
    v501 += 2;
    v502 += 2;
    v503 += 2;
    v504 -= 8;
  }

  while (v504);
  if ((v655 & 7) != 0)
  {
    goto LABEL_370;
  }

LABEL_372:
  *(v2 + 10) = *(v54 + 1256);
  *(v2 + 11) = *(v54 + 1260);
  *(v2 + 12) = *(v54 + 1264);
  *(v2 + 22) = v653;
  *(v2 + 21) = *(v54 + 2128);
  *(v2 + 23) = *(v54 + 1936);
  v515 = *(v54 + 1016);
  if (v515)
  {
    LODWORD(v515) = *(v515 + 48);
  }

  *(v2 + 24) = v515;
  *(v2 + 25) = *(v54 + 2008);
  *(v2 + 20) = v655;
  *(v2 + 14) = *(v54 + 8056);
  if (*(v54 + 3076))
  {
    v516 = *(v54 + 2984);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v517) = info[0].denom;
    *(v2 + 38) = (v516 * info[0].numer) / (v517 * 1000000.0) * 0.001;
    if (*(v54 + 3292))
    {
      goto LABEL_376;
    }
  }

  else
  {
    *(v2 + 38) = *(v54 + 2976) * 0.000000001;
    if (*(v54 + 3292))
    {
LABEL_376:
      v518 = *(v54 + 3200);
      info[0] = 0;
      mach_timebase_info(info);
      LODWORD(v519) = info[0].denom;
      *(v2 + 39) = (v518 * info[0].numer) / (v519 * 1000000.0) * 0.001;
      if (*(v54 + 3508))
      {
        goto LABEL_377;
      }

      goto LABEL_412;
    }
  }

  *(v2 + 39) = *(v54 + 3192) * 0.000000001;
  if (*(v54 + 3508))
  {
LABEL_377:
    v520 = *(v54 + 3416);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v521) = info[0].denom;
    *(v2 + 40) = (v520 * info[0].numer) / (v521 * 1000000.0) * 0.001;
    if (*(v54 + 3724))
    {
      goto LABEL_378;
    }

    goto LABEL_413;
  }

LABEL_412:
  *(v2 + 40) = *(v54 + 3408) * 0.000000001;
  if (*(v54 + 3724))
  {
LABEL_378:
    v522 = *(v54 + 3632);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v523) = info[0].denom;
    *(v2 + 41) = (v522 * info[0].numer) / (v523 * 1000000.0) * 0.001;
    if (*(v54 + 3940))
    {
      goto LABEL_379;
    }

    goto LABEL_414;
  }

LABEL_413:
  *(v2 + 41) = *(v54 + 3624) * 0.000000001;
  if (*(v54 + 3940))
  {
LABEL_379:
    v524 = *(v54 + 3848);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v525) = info[0].denom;
    *(v2 + 42) = (v524 * info[0].numer) / (v525 * 1000000.0) * 0.001;
    if (*(v54 + 4156))
    {
      goto LABEL_380;
    }

    goto LABEL_415;
  }

LABEL_414:
  *(v2 + 42) = *(v54 + 3840) * 0.000000001;
  if (*(v54 + 4156))
  {
LABEL_380:
    v526 = *(v54 + 4064);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v527) = info[0].denom;
    *(v2 + 45) = (v526 * info[0].numer) / (v527 * 1000000.0) * 0.001;
    if (*(v54 + 6124))
    {
      goto LABEL_381;
    }

    goto LABEL_416;
  }

LABEL_415:
  *(v2 + 45) = *(v54 + 4056) * 0.000000001;
  if (*(v54 + 6124))
  {
LABEL_381:
    v528 = *(v54 + 6032);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v529) = info[0].denom;
    *(v2 + 43) = (v528 * info[0].numer) / (v529 * 1000000.0) * 0.001;
    if (*(v54 + 6340))
    {
      goto LABEL_382;
    }

    goto LABEL_417;
  }

LABEL_416:
  *(v2 + 43) = *(v54 + 6024) * 0.000000001;
  if (*(v54 + 6340))
  {
LABEL_382:
    v530 = *(v54 + 6248);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v531) = info[0].denom;
    *(v2 + 44) = (v530 * info[0].numer) / (v531 * 1000000.0) * 0.001;
    if (*(v54 + 6556))
    {
      goto LABEL_383;
    }

    goto LABEL_418;
  }

LABEL_417:
  *(v2 + 44) = *(v54 + 6240) * 0.000000001;
  if (*(v54 + 6556))
  {
LABEL_383:
    v532 = *(v54 + 6464);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v533) = info[0].denom;
    *(v2 + 46) = (v532 * info[0].numer) / (v533 * 1000000.0) * 0.001;
    if (*(v54 + 6772))
    {
      goto LABEL_384;
    }

    goto LABEL_419;
  }

LABEL_418:
  *(v2 + 46) = *(v54 + 6456) * 0.000000001;
  if (*(v54 + 6772))
  {
LABEL_384:
    v534 = *(v54 + 6680);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v535) = info[0].denom;
    *(v2 + 47) = (v534 * info[0].numer) / (v535 * 1000000.0) * 0.001;
    if (*(v54 + 6988))
    {
      goto LABEL_385;
    }

    goto LABEL_420;
  }

LABEL_419:
  *(v2 + 47) = *(v54 + 6672) * 0.000000001;
  if (*(v54 + 6988))
  {
LABEL_385:
    v536 = *(v54 + 6896);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v537) = info[0].denom;
    *(v2 + 48) = (v536 * info[0].numer) / (v537 * 1000000.0) * 0.001;
    if (*(v54 + 7204))
    {
      goto LABEL_386;
    }

    goto LABEL_421;
  }

LABEL_420:
  *(v2 + 48) = *(v54 + 6888) * 0.000000001;
  if (*(v54 + 7204))
  {
LABEL_386:
    v538 = *(v54 + 7112);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v539) = info[0].denom;
    *(v2 + 49) = (v538 * info[0].numer) / (v539 * 1000000.0) * 0.001;
    if (*(v54 + 11484))
    {
      goto LABEL_387;
    }

    goto LABEL_422;
  }

LABEL_421:
  *(v2 + 49) = *(v54 + 7104) * 0.000000001;
  if (*(v54 + 11484))
  {
LABEL_387:
    v540 = *(v54 + 11392);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v541) = info[0].denom;
    *(v2 + 50) = (v540 * info[0].numer) / (v541 * 1000000.0) * 0.001;
    if (*(v54 + 8276))
    {
      goto LABEL_388;
    }

    goto LABEL_423;
  }

LABEL_422:
  *(v2 + 50) = *(v54 + 11384) * 0.000000001;
  if (*(v54 + 8276))
  {
LABEL_388:
    v542 = *(v54 + 8184);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v543) = info[0].denom;
    *(v2 + 51) = (v542 * info[0].numer) / (v543 * 1000000.0) * 0.001;
    if (*(v54 + 8492))
    {
      goto LABEL_389;
    }

    goto LABEL_424;
  }

LABEL_423:
  *(v2 + 51) = *(v54 + 8176) * 0.000000001;
  if (*(v54 + 8492))
  {
LABEL_389:
    v544 = *(v54 + 8400);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v545) = info[0].denom;
    *(v2 + 52) = (v544 * info[0].numer) / (v545 * 1000000.0) * 0.001;
    if (*(v54 + 8708))
    {
      goto LABEL_390;
    }

    goto LABEL_425;
  }

LABEL_424:
  *(v2 + 52) = *(v54 + 8392) * 0.000000001;
  if (*(v54 + 8708))
  {
LABEL_390:
    v546 = *(v54 + 8616);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v547) = info[0].denom;
    *(v2 + 53) = (v546 * info[0].numer) / (v547 * 1000000.0) * 0.001;
    if (*(v54 + 8924))
    {
      goto LABEL_391;
    }

    goto LABEL_426;
  }

LABEL_425:
  *(v2 + 53) = *(v54 + 8608) * 0.000000001;
  if (*(v54 + 8924))
  {
LABEL_391:
    v548 = *(v54 + 8832);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v549) = info[0].denom;
    *(v2 + 54) = (v548 * info[0].numer) / (v549 * 1000000.0) * 0.001;
    if (*(v54 + 9140))
    {
      goto LABEL_392;
    }

    goto LABEL_427;
  }

LABEL_426:
  *(v2 + 54) = *(v54 + 8824) * 0.000000001;
  if (*(v54 + 9140))
  {
LABEL_392:
    v550 = *(v54 + 9048);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v551) = info[0].denom;
    *(v2 + 55) = (v550 * info[0].numer) / (v551 * 1000000.0) * 0.001;
    if (*(v54 + 9356))
    {
      goto LABEL_393;
    }

    goto LABEL_428;
  }

LABEL_427:
  *(v2 + 55) = *(v54 + 9040) * 0.000000001;
  if (*(v54 + 9356))
  {
LABEL_393:
    v552 = *(v54 + 9264);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v553) = info[0].denom;
    *(v2 + 56) = (v552 * info[0].numer) / (v553 * 1000000.0) * 0.001;
    if (*(v54 + 7868))
    {
      goto LABEL_394;
    }

    goto LABEL_429;
  }

LABEL_428:
  *(v2 + 56) = *(v54 + 9256) * 0.000000001;
  if (*(v54 + 7868))
  {
LABEL_394:
    v554 = *(v54 + 7776);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v555) = info[0].denom;
    *(v2 + 57) = (v554 * info[0].numer) / (v555 * 1000000.0) * 0.001;
    if (*(v54 + 9916))
    {
      goto LABEL_395;
    }

    goto LABEL_430;
  }

LABEL_429:
  *(v2 + 57) = *(v54 + 7768) * 0.000000001;
  if (*(v54 + 9916))
  {
LABEL_395:
    v556 = *(v54 + 9824);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v557) = info[0].denom;
    *(v2 + 58) = (v556 * info[0].numer) / (v557 * 1000000.0) * 0.001;
    if (*(v54 + 11268))
    {
      goto LABEL_396;
    }

    goto LABEL_431;
  }

LABEL_430:
  *(v2 + 58) = *(v54 + 9816) * 0.000000001;
  if (*(v54 + 11268))
  {
LABEL_396:
    v558 = *(v54 + 11176);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v559) = info[0].denom;
    *(v2 + 59) = (v558 * info[0].numer) / (v559 * 1000000.0) * 0.001;
    if (*(v54 + 12076))
    {
      goto LABEL_397;
    }

    goto LABEL_432;
  }

LABEL_431:
  *(v2 + 59) = *(v54 + 11168) * 0.000000001;
  if (*(v54 + 12076))
  {
LABEL_397:
    v560 = *(v54 + 11984);
    info[0] = 0;
    mach_timebase_info(info);
    LODWORD(v561) = info[0].denom;
    *(v2 + 60) = (v560 * info[0].numer) / (v561 * 1000000.0) * 0.001;
    v562 = *(v54 + 1016);
    if (!v562)
    {
      goto LABEL_399;
    }

    goto LABEL_398;
  }

LABEL_432:
  *(v2 + 60) = *(v54 + 11976) * 0.000000001;
  v562 = *(v54 + 1016);
  if (v562)
  {
LABEL_398:
    v562 = v562[95];
  }

LABEL_399:
  v2[61] = v562;
  *(v2 + 124) = 0;
  if (v707)
  {
LABEL_498:
    abort();
  }

  tv_sec_low = LODWORD(v702.tv_sec);
  if (SLODWORD(v702.tv_sec) >= 1)
  {
    v564 = 0;
    v565 = 0;
    v566 = v705;
    do
    {
      v567 = *(v566 + 8 * v564);
      if (v567)
      {
        v568 = v565;
        do
        {
          v565 = v567;
          v567 = v567[3];
          v565[3] = v568;
          v568 = v565;
        }

        while (v567);
      }

      ++v564;
    }

    while (v564 != tv_sec_low);
    if (v565)
    {
      do
      {
        v569 = v565[3];
        free(v565);
        v565 = v569;
      }

      while (v569);
    }
  }

  free(v705);
}

void vl_stats_free(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    free(*a1);
    free(*(a1 + 16));
    free(*(a1 + 24));
    free(*(a1 + 32));
    free(*(a1 + 104));
    free(*(a1 + 112));
    free(*(a1 + 120));
    free(*(a1 + 128));
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 192));
    free(*(a1 + 200));
    free(*(a1 + 232));
    free(*(a1 + 216));
    free(*(a1 + 224));
    free(*(a1 + 256));
    free(*(a1 + 264));
    free(*(a1 + 272));
    free(*(a1 + 280));
    free(*(a1 + 240));
    v2 = *(a1 + 248);

    free(v2);
  }
}

void vl_sift_desc(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v488 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (*(a4 + 212))
    {
      *(a4 + 120) -= mach_absolute_time();
    }

    else
    {
      clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (a4 + 32));
      clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (a4 + 16));
      clock_gettime(_CLOCK_MONOTONIC, a4);
    }
  }

  v405 = a4;
  v6 = malloc_type_calloc(0x80uLL, 4uLL, 0x100004052888210uLL);
  v418 = malloc_type_calloc(0x2208uLL, 4uLL, 0x100004052888210uLL);
  if (*a2 >= 1)
  {
    v7 = 0;
    v8 = -0.5;
    v9 = 0.5;
    v10 = 32;
    v406 = a2;
    do
    {
      v414 = a2[1];
      v412 = 288 * v7;
      v18 = (v414 + 288 * v7);
      v19 = (*(a3 + 8) + 8 * v7);
      v20 = v19[1];
      v413 = *(*(a1 + 8) + 72 * *v19 + 8);
      v21 = 1.0 / (1 << *v19);
      v22 = v18[1];
      if ((v21 * *v18) <= 0.0)
      {
        v23 = v8;
      }

      else
      {
        v23 = v9;
      }

      v24 = v23 + (*v18 * v21);
      if ((v21 * v22) <= 0.0)
      {
        v25 = v8;
      }

      else
      {
        v25 = v9;
      }

      v26 = v25 + (v22 * v21);
      v415 = (v414 + 288 * v7);
      v27 = v21 * (v18[2] * 3.75);
      v28 = (360.0 - v18[3]) * 3.14159265 / 180.0;
      *&v28 = v28;
      v409 = v28;
      v29 = __sincosf_stret(*&v28);
      bzero(v420, 0x5A0uLL);
      v30 = malloc_type_realloc(0, 0x1E0uLL, 0x100004000313F17uLL);
      *v30 = 0u;
      v30[1] = 0u;
      v30[2] = 0u;
      v30[3] = 0u;
      v30[4] = 0u;
      v30[5] = 0u;
      v30[6] = 0u;
      v30[7] = 0u;
      v30[8] = 0u;
      v30[9] = 0u;
      v30[10] = 0u;
      v30[11] = 0u;
      v30[12] = 0u;
      v30[13] = 0u;
      v30[14] = 0u;
      v30[15] = 0u;
      v30[16] = 0u;
      v30[17] = 0u;
      v30[18] = 0u;
      v30[19] = 0u;
      v30[20] = 0u;
      v30[21] = 0u;
      v30[22] = 0u;
      v30[23] = 0u;
      v30[24] = 0u;
      v30[25] = 0u;
      v30[26] = 0u;
      v30[27] = 0u;
      v30[28] = 0u;
      v30[29] = 0u;
      v410 = v26;
      v411 = v24;
      v31 = v24;
      v32 = v26;
      v33 = v31 - (v29.__cosval * v27);
      v34 = v33 + (v29.__sinval * v27);
      *v43.i32 = v32 + (v29.__sinval * v27);
      v35 = *v43.i32 + (v29.__cosval * v27);
      v419[0] = v34;
      v419[1] = v35;
      v36 = v31 + (v29.__cosval * v27);
      v37 = v36 + (v29.__sinval * v27);
      v38 = v32 - (v29.__sinval * v27);
      v39 = v38 + (v29.__cosval * v27);
      v419[2] = v37;
      v419[3] = v39;
      v40 = v36 - (v29.__sinval * v27);
      v41 = v38 - (v29.__cosval * v27);
      v419[4] = v40;
      v419[5] = v41;
      v42 = v33 - (v29.__sinval * v27);
      *v43.i32 = *v43.i32 - (v29.__cosval * v27);
      v419[6] = v42;
      v419[7] = *v43.i32;
      v487 = xmmword_271103920;
      if (v39 >= v35)
      {
        v44 = vabds_f32(v39, v35);
        _NF = v37 < v34 && v44 < 0.001;
        if (!_NF)
        {
          v46 = 0;
          v9 = 0.5;
          if (v41 < v35)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v34 = v37;
      }

      v35 = v39;
      v46 = 1;
      v9 = 0.5;
      if (v41 < v39)
      {
        goto LABEL_30;
      }

LABEL_24:
      v47 = vabds_f32(v41, v35);
      if (v40 < v34 && v47 < 0.001)
      {
        v34 = v40;
LABEL_30:
        v35 = v41;
        v46 = 2;
      }

      if (*v43.i32 >= v35)
      {
        if (vabds_f32(*v43.i32, v35) < 0.001 && v42 < v34)
        {
          v46 = 3;
        }
      }

      else
      {
        v46 = 3;
      }

      v50 = (&v487 | (4 * v46));
      v51 = *v50;
      *v50 = 0;
      LODWORD(v487) = v51;
      v52 = &v419[2 * v51];
      v53 = *v52;
      v54 = v52[1];
      v55 = &v419[2 * SDWORD1(v487)];
      v56 = v55[1];
      if (v56 <= v54)
      {
        if (vabds_f32(v39, v54) >= 0.001 || v37 <= v53)
        {
          v58 = 0;
          v56 = v54;
          v59 = &v419[2 * SDWORD2(v487)];
          v60 = v59[1];
          if (v60 > v54)
          {
            goto LABEL_52;
          }

          goto LABEL_47;
        }

        v53 = *v55;
      }

      v58 = 1;
      v59 = &v419[2 * SDWORD2(v487)];
      v60 = v59[1];
      if (v60 > v56)
      {
        goto LABEL_52;
      }

LABEL_47:
      if (vabds_f32(v41, v56) < 0.001 && v40 > v53)
      {
        v53 = *v59;
LABEL_52:
        v56 = v60;
        v58 = 2;
      }

      if (v419[2 * SHIDWORD(v487) + 1] <= v56)
      {
        v62 = vabds_f32(*v43.i32, v56);
        if (v42 > v53 && v62 < 0.001)
        {
          v58 = 3;
        }
      }

      else
      {
        v58 = 3;
      }

      v65 = &v487 | (4 * v58);
      v64 = *v65;
      *v65 = HIDWORD(v487);
      HIDWORD(v487) = v64;
      LODWORD(v65) = DWORD1(v487);
      v66 = v419[2 * SDWORD1(v487)];
      v67 = SDWORD2(v487);
      v68 = v419[2 * SDWORD2(v487)];
      v417 = v7;
      if (v66 <= v68)
      {
        v69 = v419[2 * SDWORD2(v487)];
        v65 = SDWORD2(v487);
        v68 = v419[2 * SDWORD1(v487)];
        v67 = SDWORD1(v487);
      }

      else
      {
        *(&v487 + 4) = __PAIR64__(DWORD1(v487), DWORD2(v487));
        v69 = v66;
        v65 = v65;
      }

      v70 = &v419[2 * v487];
      v71 = *v70;
      v72 = v70[1];
      v73 = v419[2 * v67 + 1];
      v74 = v419[2 * v65 + 1];
      v75 = &v419[2 * v64];
      v77 = *v75;
      v76 = v75[1];
      *v78.i64 = v72;
      v79 = round(v72);
      if (v79 > v72)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = 1.0;
      }

      v81 = v74 - v72;
      v82 = v71 - v69;
      v485[0] = v74 - v72;
      v485[1] = v71 - v69;
      v83 = (v72 * (v71 - v69)) + (v71 * (v74 - v72));
      v84 = v76 - v74;
      v485[2] = v83;
      v485[3] = v76 - v74;
      v85 = v69 - v77;
      v86 = (v74 * (v69 - v77)) + (v69 * (v76 - v74));
      v485[4] = v69 - v77;
      v485[5] = v86;
      v87 = v73 - v76;
      v88 = v77 - v68;
      v89 = ((v77 - v68) * v76) + (v77 * (v73 - v76));
      v486[4] = v88;
      v486[5] = v89;
      v90 = v72 - v73;
      v91 = v68 - v71;
      v486[0] = v72 - v73;
      v486[1] = v68 - v71;
      v92 = ((v68 - v71) * v73) + (v68 * (v72 - v73));
      v486[2] = v92;
      v486[3] = v73 - v76;
      *v93.i64 = v76;
      v94 = round(v76);
      v95 = (v79 + v80);
      if (v73 >= v74)
      {
        v96 = v74;
      }

      else
      {
        v96 = v73;
      }

      v97 = (v96 + 1.0);
      if (v73 <= v74)
      {
        v98 = v74;
      }

      else
      {
        v98 = v73;
      }

      if (v94 >= *v93.i64)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = 1.0;
      }

      v100 = v95;
      v101 = v97 - v95;
      if (v97 <= v95)
      {
        v101 = 0;
        v105 = v30;
        v106 = (v98 + 1.0);
        _VF = __OFSUB__(v106, v97);
        v108 = v106 - v97;
        if ((v108 < 0) ^ _VF | (v108 == 0))
        {
          goto LABEL_84;
        }

LABEL_82:
        v109 = &v485[3 * (v73 > v74)];
        v110 = &v486[3 * (v73 <= v74)];
        v111 = v110[1];
        v112 = -v110[2];
        v113 = *v110;
        v114 = v109[1];
        v115 = -v109[2];
        v116 = *v109;
        do
        {
          *v105 = vcvtps_s32_f32(-(v112 + (v111 * v100)) / v113);
          v105[1] = vcvtms_s32_f32(-(v115 + (v114 * v100)) / v116);
          v105 += 2;
          v100 = v100 + 1.0;
          ++v101;
          --v108;
        }

        while (v108);
        goto LABEL_84;
      }

      v102 = -v92;
      v103 = -v83;
      v104 = v97 - v95;
      v105 = v30;
      do
      {
        *v105 = vcvtps_s32_f32(-(v102 + (v91 * v100)) / v90);
        v105[1] = vcvtms_s32_f32(-(v103 + (v82 * v100)) / v81);
        v105 += 2;
        v100 = v100 + 1.0;
        --v104;
      }

      while (v104);
      v106 = (v98 + 1.0);
      _VF = __OFSUB__(v106, v97);
      v108 = v106 - v97;
      if (!((v108 < 0) ^ _VF | (v108 == 0)))
      {
        goto LABEL_82;
      }

LABEL_84:
      v117 = roundf(v76) + v99;
      v118 = v117 - v106;
      if (v117 > v106)
      {
        v119 = -v86;
        v120 = v117 - v106;
        do
        {
          *v105 = vcvtps_s32_f32(-((v88 * v100) - v89) / v87);
          v105[1] = vcvtms_s32_f32(-(v119 + (v85 * v100)) / v84);
          v105 += 2;
          v100 = v100 + 1.0;
          --v120;
        }

        while (v120);
        v101 += v118;
      }

      v121 = v101;
      v416 = v10;
      if (v101 <= 60)
      {
        v122 = 60;
      }

      else
      {
        if (v101 <= 0x78)
        {
          v122 = 120;
        }

        else
        {
          v122 = v101;
        }

        v123 = malloc_type_realloc(v30, 8 * v122, 0x100004000313F17uLL);
        bzero(v123 + 30, 8 * v121 - 480);
        v30 = v123;
      }

      v124.i64[0] = 0x800000008;
      v124.i64[1] = 0x800000008;
      v125.i64[0] = 0x100000001;
      v125.i64[1] = 0x100000001;
      v126 = (v413 + 24 * v20);
      v127 = *(v126 + 2);
      v128 = *(v126 + 3);
      if ((v27 * 1.4142) < v31 && (v27 * 1.4142) < v32 && ((v127 - 1) + (v27 * -1.4142)) > v31 && ((v128 - 1) + (v27 * -1.4142)) > v32)
      {
        v8 = -0.5;
        v129 = 1.0;
        goto LABEL_145;
      }

      if (v95 > 0)
      {
        v130 = v121;
        v8 = -0.5;
        v129 = 1.0;
        v131 = v95;
        if (v121 + v95 >= v128)
        {
          goto LABEL_117;
        }

        goto LABEL_101;
      }

      if (v121 < 1)
      {
        v130 = 0;
        v8 = -0.5;
        v129 = 1.0;
        v134 = -v121;
        if (v121 < 0)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v132 = 0;
        v130 = 0;
        v8 = -0.5;
        v129 = 1.0;
        do
        {
          if (v30 && v132 >= (1 - v95))
          {
            *(v30 + v130++) = *(v30 + v132);
          }

          ++v132;
        }

        while (v121 != v132);
        if (v130 > v122)
        {
          if (2 * v122 <= v130)
          {
            v122 = v130;
          }

          else
          {
            v122 *= 2;
          }

          if (v122)
          {
            v133 = v127;
            v30 = malloc_type_realloc(v30, 8 * v122, 0x100004000313F17uLL);
            v127 = v133;
            v125.i64[0] = 0x100000001;
            v125.i64[1] = 0x100000001;
            v124.i64[0] = 0x800000008;
            v124.i64[1] = 0x800000008;
          }
        }

        v134 = v130 - v121;
        if (v130 > v121)
        {
LABEL_115:
          v135 = v30;
          v136 = v30 + 8 * v121;
          v137 = v127;
          bzero(v136, 8 * v134);
          v127 = v137;
          v125.i64[0] = 0x100000001;
          v125.i64[1] = 0x100000001;
          v124.i64[0] = 0x800000008;
          v124.i64[1] = 0x800000008;
          v30 = v135;
        }
      }

      v95 = 1;
      v131 = 1;
      if (v130 + 1 >= v128)
      {
LABEL_117:
        if (v130 < 1)
        {
          v121 = 0;
        }

        else
        {
          v121 = 0;
          v138 = 0;
          v139 = ~v131 + v128;
          do
          {
            if (v138 < v139 && v30)
            {
              *(v30 + v121++) = *(v30 + v138);
            }

            ++v138;
          }

          while (v130 != v138);
        }

        if (v121 > v122)
        {
          v140 = 2 * v122;
          if (!v122)
          {
            v140 = 32;
          }

          if (v140 <= v121)
          {
            v140 = v121;
          }

          if (v140)
          {
            v141 = v127;
            v30 = malloc_type_realloc(v30, 8 * v140, 0x100004000313F17uLL);
            v127 = v141;
            v125.i64[0] = 0x100000001;
            v125.i64[1] = 0x100000001;
            v124.i64[0] = 0x800000008;
            v124.i64[1] = 0x800000008;
          }
        }

        if (v121 > v130)
        {
          v142 = 8 * (v121 - v130);
          v143 = v30 + 8 * v130;
          v144 = v30;
          v145 = v127;
          bzero(v143, v142);
          v127 = v145;
          v125.i64[0] = 0x100000001;
          v125.i64[1] = 0x100000001;
          v124.i64[0] = 0x800000008;
          v124.i64[1] = 0x800000008;
          v30 = v144;
        }

        goto LABEL_133;
      }

LABEL_101:
      v121 = v130;
LABEL_133:
      if (v121 < 1)
      {
        goto LABEL_161;
      }

      v146 = v127 - 2;
      if (v121 < 8)
      {
        v147 = 0;
LABEL_139:
        v152 = v121 - v147;
        v153 = v30 + 2 * v147 + 1;
        do
        {
          v154 = *(v153 - 1);
          v155 = *v153;
          if (v154 <= 1)
          {
            v154 = 1;
          }

          if (v155 >= v146)
          {
            v155 = v146;
          }

          *(v153 - 1) = v154;
          *v153 = v155;
          v153 += 2;
          --v152;
        }

        while (v152);
        goto LABEL_145;
      }

      v147 = v121 & 0x7FFFFFFFFFFFFFF8;
      v78 = vdupq_n_s32(v146);
      v148 = (v30 + 2);
      v149 = v121 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v150 = v148 - 8;
        v490 = vld2q_f32(v150);
        v491 = vld2q_f32(v148);
        v151 = vmaxq_s32(v490.val[0], v125);
        v93 = vminq_s32(v490.val[1], v78);
        v43 = vmaxq_s32(v491.val[0], v125);
        v490.val[1] = vminq_s32(v491.val[1], v78);
        vst2q_f32(v150, *(&v93 - 1));
        vst2q_f32(v148, *v43.i8);
        v148 += 16;
        v149 -= 8;
      }

      while (v149);
      if (v121 != v147)
      {
        goto LABEL_139;
      }

LABEL_145:
      if (v121 < 1)
      {
LABEL_161:
        free(v30);
        goto LABEL_162;
      }

      v156 = 0;
      LODWORD(v157) = 0;
      *v78.i32 = (2.4997 / v27) * v29.__cosval;
      *v43.i32 = (2.4997 / v27) * v29.__sinval;
      v158 = vdupq_n_s32(v411);
      v159 = v95;
      v160 = vdupq_lane_s32(*v78.i8, 0);
      v161 = vdupq_lane_s32(*v43.i8, 0);
      do
      {
        while (1)
        {
          v162 = *(v30 + 8 * v156);
          v163 = v162.i32[1];
          v164 = (v162.i32[1] - v162.i32[0]);
          if (v162.i32[1] >= v162.i32[0])
          {
            break;
          }

          ++v159;
          if (++v156 == v121)
          {
            goto LABEL_158;
          }
        }

        v165 = (v159 - v410);
        *v93.i32 = -*v43.i32 * v165;
        *v125.i32 = *v78.i32 * v165;
        v166 = *v126;
        v167 = v157;
        v168 = v126[2];
        v169 = v159 - 1;
        v170 = v159 + 1;
        v171 = *(v30 + v156);
        v172 = 2 * v168;
        if (v164 < 7)
        {
          v173 = *(v30 + v156);
          v157 = v157;
LABEL_154:
          v197 = 0;
          v198 = v166 + 2 * v173 + v172 * v170;
          v199 = v166 + 2 * v173 + v172 * v169;
          v200 = &v418[v157];
          v201 = v163 - v173 + 1;
          v202 = (v166 + 2 * v173 + 2 * v159 * v168 + 2);
          do
          {
            v203 = (v173 - v411 + v197);
            v200[1089] = *v93.i32 + (v203 * *v78.i32);
            v204 = (*v202 - *(v202 - 2));
            v205 = *(v199 + 2 * v197);
            *v200 = *v125.i32 + (v203 * *v43.i32);
            v206 = (v205 - *(v198 + 2 * v197));
            v200[2178] = v204;
            v200[3267] = v206;
            ++v197;
            ++v200;
            ++v202;
          }

          while (v201 != v197);
          LODWORD(v157) = v157 + v197;
          goto LABEL_157;
        }

        v174 = v164 + 1;
        v175 = (v164 + 1) & 0x1FFFFFFF8;
        v173 = v175 + v171;
        v176 = vdupq_lane_s32(v162, 0);
        v177 = vaddq_s32(v176, xmmword_271105380);
        v178 = vaddq_s32(v176, xmmword_271103920);
        v179 = vdupq_lane_s32(*v93.i8, 0);
        v180 = vdupq_lane_s32(*v125.i8, 0);
        v157 = v175 + v157;
        v181 = &v418[v167];
        v182 = 2 * v171;
        v183 = (v166 + 2 * v171 + v172 * v170);
        v184 = (v166 + v182 + 2 * v159 * v168 + 2);
        v185 = (v166 + v182 + v172 * v169);
        v186 = v175;
        do
        {
          v187 = (v181 + 3267);
          v188 = (v181 + 2178);
          v189 = vcvtq_f32_s32(vsubq_s32(v178, v158));
          v190 = vcvtq_f32_s32(vsubq_s32(v177, v158));
          *(v181 + 1089) = vmlaq_f32(v179, v160, v189);
          *(v181 + 1093) = vmlaq_f32(v179, v160, v190);
          *v181 = vmlaq_f32(v180, v161, v189);
          *(v181 + 1) = vmlaq_f32(v180, v161, v190);
          v181 += 8;
          v191 = *&v184[-1].u8[4];
          v192 = vcvtq_f32_s32(vsubl_u16(*v184, *v191.i8));
          v193 = vcvtq_f32_s32(vsubl_high_u16(*v184->i8, v191));
          v194 = *v185++;
          v195 = v194;
          v196 = *v183++;
          *v188 = v192;
          v188[1] = v193;
          *v187 = vcvtq_f32_s32(vsubl_u16(*v195.i8, *v196.i8));
          v187[1] = vcvtq_f32_s32(vsubl_high_u16(v195, v196));
          v178 = vaddq_s32(v178, v124);
          v177 = vaddq_s32(v177, v124);
          v184 += 2;
          v186 -= 8;
        }

        while (v186);
        if (v174 != v175)
        {
          goto LABEL_154;
        }

LABEL_157:
        v159 = v170;
        ++v156;
      }

      while (v156 != v121);
LABEL_158:
      free(v30);
      if (v157 >= 1)
      {
        v207 = v157;
        if (v157 >= 4)
        {
          v208 = v157 & 0x7FFFFFFC;
          v285 = v208;
          v286 = v418;
          v210 = &unk_271105000;
          v211 = *&v409;
          do
          {
            v287 = *(v286 + 3267);
            v288 = *(v286 + 2178);
            v289 = vcltzq_f32(v288);
            v290 = vbslq_s8(v289, vnegq_f32(v288), v288);
            v291 = vcltzq_f32(v287);
            v292 = vbslq_s8(v291, vnegq_f32(v287), v287);
            v293 = vcgtq_f32(v292, v290);
            v294 = vdivq_f32(vbslq_s8(v293, v290, v292), vbslq_s8(vcgtq_f32(v290, v292), v290, v292));
            v295 = vmulq_f32(v294, v294);
            v296 = vmlaq_f32(v294, v294, vmulq_f32(v295, vmlaq_f32(vdupq_n_s32(0xBEA7BE2C), v295, vmlaq_f32(vdupq_n_s32(0x3E232344u), vdupq_n_s32(0xBD3E7316), v295))));
            v297 = vbslq_s8(v293, vsubq_f32(vdupq_n_s32(0x3FC90FDBu), v296), v296);
            v298 = vbslq_s8(v289, vsubq_f32(vdupq_n_s32(0x40490FDBu), v297), v297);
            v299 = vbslq_s8(v291, vnegq_f32(v298), v298);
            *(v286 + 1089) = vandq_s8(v299, vceqq_f32(v299, v299));
            v286 += 4;
            v285 -= 4;
          }

          while (v285);
          v209 = -8.0;
          if (v208 != v157)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v208 = 0;
          v209 = -8.0;
          v210 = &unk_271105000;
          v211 = *&v409;
LABEL_179:
          v300 = v157 - v208;
          v301 = &v418[v208 + 2178];
          do
          {
            v302 = v301[1089];
            v303 = -*v301;
            if (*v301 >= 0.0)
            {
              v303 = *v301;
            }

            v304 = -v302;
            if (v302 >= 0.0)
            {
              v304 = v301[1089];
            }

            v305 = v303 < v304;
            if (v303 >= v304)
            {
              v306 = v304;
            }

            else
            {
              v306 = v303;
            }

            if (v303 <= v304)
            {
              v303 = v304;
            }

            v307 = v306 / v303;
            v308 = v307 + (((v307 * v307) * (((((v307 * v307) * -0.046496) + 0.15931) * (v307 * v307)) + -0.32762)) * v307);
            if (v305)
            {
              v308 = 1.5708 - v308;
            }

            v309 = 3.1416 - v308;
            if (*v301 >= 0.0)
            {
              v309 = v308;
            }

            _NF = v302 < 0.0;
            v310 = -v309;
            if (!_NF)
            {
              v310 = v309;
            }

            v301[2178] = v310;
            ++v301;
            --v300;
          }

          while (v300);
        }

        if (v157 >= 4)
        {
          v311 = v157 & 0x7FFFFFFC;
          v312 = v311;
          v313 = v418;
          v314.i64[0] = 0xBE000000BE000000;
          v314.i64[1] = 0xBE000000BE000000;
          do
          {
            v315 = (v313 + 1089);
            v316 = *(v313 + 2178);
            v317 = vmulq_f32(*(v313 + 3267), *(v313 + 3267));
            v318 = *v313;
            v313 += 4;
            v319 = vmlaq_f32(v317, v316, v316);
            v320 = vmulq_f32(vmlaq_f32(vmulq_f32(*v315, *v315), v318, v318), v314);
            v321 = vdupq_n_s64(0x3F70000000000000uLL);
            v322 = vmulq_f64(vcvtq_f64_f32(*v320.f32), v321);
            v323 = vmulq_f64(vcvt_hight_f64_f32(v320), v321);
            __asm { FMOV            V4.2D, #1.0 }

            v327 = vaddq_f64(v323, _Q4);
            v328 = vaddq_f64(v322, _Q4);
            __asm { FMOV            V4.4S, #-23.0 }

            v330 = vcvt_hight_f32_f64(vcvt_f32_f64(v328), v327);
            v331 = vmulq_f32(v330, v330);
            v332 = vmulq_f32(v331, v331);
            v333 = vmulq_f32(v332, v332);
            v334 = vmulq_f32(v333, v333);
            v335 = vmulq_f32(v334, v334);
            v336 = vmulq_f32(v335, v335);
            v337 = vmulq_f32(v336, v336);
            v315[1089] = vmulq_f32(vsqrtq_f32(v319), vbicq_s8(vmulq_f32(v337, v337), vcgtq_f32(_Q4, v320)));
            v312 -= 4;
          }

          while (v312);
          if (v311 != v157)
          {
            goto LABEL_203;
          }
        }

        else
        {
          v311 = 0;
LABEL_203:
          v339 = v157 - v311;
          v340 = v311;
          v341 = &v418[v311 + 3267];
          v342 = &v418[v340];
          do
          {
            v343 = ((v342[1089] * v342[1089]) + (*v342 * *v342)) * -0.125;
            v344 = 0.0;
            if (v343 >= -23.0)
            {
              v345 = v343 * 0.00390625 + v129;
              v346 = ((v345 * v345) * (v345 * v345)) * ((v345 * v345) * (v345 * v345));
              v347 = ((v346 * v346) * (v346 * v346)) * ((v346 * v346) * (v346 * v346));
              v344 = (v347 * v347) * (v347 * v347);
            }

            v341[2178] = sqrtf((*v341 * *v341) + (v342[2178] * v342[2178])) * v344;
            ++v341;
            ++v342;
            --v339;
          }

          while (v339);
        }

        if (v157 >= 4)
        {
          v338 = v157 & 0x7FFFFFFC;
          v348 = vdupq_lane_s32(v211, 0);
          v349 = v338;
          v350 = v418;
          v351.i64[0] = 0x4100000041000000;
          v351.i64[1] = 0x4100000041000000;
          v352.i64[0] = 0xC1000000C1000000;
          v352.i64[1] = 0xC1000000C1000000;
          do
          {
            v353 = vdupq_n_s64(0x401921FB54442D18uLL);
            v354 = vmulq_f32(vsubq_f32(vbslq_s8(vcltzq_f32(*(v350 + 4356)), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*(v350 + 4356)), v353)), vaddq_f64(vcvt_hight_f64_f32(*(v350 + 4356)), v353)), *(v350 + 4356)), v348), vdupq_n_s32(0x3FA2F983u));
            v355 = vbslq_s8(vcltzq_f32(v354), vaddq_f32(v354, v351), v354);
            v356 = vrndmq_f32(v355);
            v357 = vsubq_f32(v355, v356);
            v358 = vbslq_s8(vcltzq_f32(v356), vaddq_f32(v356, v351), v356);
            *(v350 + 6534) = vbslq_s8(vcgeq_f32(v358, v351), vaddq_f32(v358, v352), v358);
            *(v350 + 7623) = v357;
            v350 += 4;
            v349 -= 4;
          }

          while (v349);
          if (v338 != v157)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v338 = 0;
LABEL_210:
          v359 = v157 - v338;
          v360 = &v418[v338 + 4356];
          do
          {
            v361 = *v360;
            if (*v360 < 0.0)
            {
              v362 = *v360 + v210[111];
              v361 = v362;
            }

            v363 = (v361 - *v211.i32) * 1.2732;
            if (v363 < 0.0)
            {
              v363 = v363 + 8.0;
            }

            v364 = floorf(v363);
            v365 = v363 - v364;
            if (v364 < 0.0)
            {
              v364 = v364 + 8.0;
            }

            if (v364 >= 8.0)
            {
              v364 = v364 + v209;
            }

            v360[2178] = v364;
            v360[3267] = v365;
            ++v360;
            --v359;
          }

          while (v359);
        }

        v366 = v418;
        v367 = v418 + 5445;
        do
        {
          while (1)
          {
            v386 = *v366 + 1.5;
            v387 = v366[1089] + 1.5;
            v388 = floorf(v386);
            v389 = floorf(v387);
            v390 = ((((v389 * 10.0) + (v388 * 60.0)) + v367[1089]) + 70.0);
            if (v390 >= 0x121)
            {
              break;
            }

            v368 = v367[2178];
            v369 = *v367 * v368;
            v370 = v386 - v388;
            v371 = v387 - v389;
            v372 = v371 * (v370 * v369);
            v373 = (1.0 - v371) * (v370 * v369);
            v374 = 1.0 - v370;
            v375 = (1.0 - v370) * v369;
            v376 = v371 * v375;
            v377 = *v367 * (1.0 - v368);
            v378 = v370 * v377;
            v379 = v371 * v378;
            v380 = (1.0 - v371) * v378;
            v381 = v374 * v377;
            v382 = &v420[v390];
            v383 = v382[1];
            *v382 = *v382 + ((1.0 - v371) * v381);
            v382[1] = ((1.0 - v371) * v375) + v383;
            v384 = v382[11];
            v382[10] = (v371 * v381) + v382[10];
            v382[11] = v376 + v384;
            v385 = v373 + v382[61];
            v382[60] = v380 + v382[60];
            v382[61] = v385;
            v382[70] = v379 + v382[70];
            v382[71] = v372 + v382[71];
            ++v367;
            ++v366;
            if (!--v207)
            {
              goto LABEL_162;
            }
          }

          printf("%sWarning : ", "");
          printf("Out of range (%d)", v390);
          putchar(10);
          ++v367;
          ++v366;
          --v207;
        }

        while (v207);
      }

LABEL_162:
      v212 = 0;
      v421 = vadd_f32(v424, v421);
      *v6 = v421;
      *(v6 + 8) = v422;
      *(v6 + 3) = v423;
      v425 = vadd_f32(v428, v425);
      *(v6 + 4) = v425;
      *(v6 + 40) = v426;
      *(v6 + 7) = v427;
      v429 = vadd_f32(v432, v429);
      *(v6 + 8) = v429;
      *(v6 + 72) = v430;
      *(v6 + 11) = v431;
      v433 = vadd_f32(v436, v433);
      *(v6 + 12) = v433;
      *(v6 + 104) = v434;
      *(v6 + 15) = v435;
      v437 = vadd_f32(v440, v437);
      *(v6 + 16) = v437;
      *(v6 + 136) = v438;
      *(v6 + 19) = v439;
      v441 = vadd_f32(v444, v441);
      *(v6 + 20) = v441;
      *(v6 + 168) = v442;
      *(v6 + 23) = v443;
      v445 = vadd_f32(v448, v445);
      *(v6 + 24) = v445;
      *(v6 + 200) = v446;
      *(v6 + 27) = v447;
      v449 = vadd_f32(v452, v449);
      *(v6 + 28) = v449;
      *(v6 + 232) = v450;
      *(v6 + 31) = v451;
      v453 = vadd_f32(v456, v453);
      *(v6 + 32) = v453;
      *(v6 + 264) = v454;
      *(v6 + 35) = v455;
      v457 = vadd_f32(v460, v457);
      *(v6 + 36) = v457;
      *(v6 + 296) = v458;
      *(v6 + 39) = v459;
      v461 = vadd_f32(v464, v461);
      *(v6 + 40) = v461;
      *(v6 + 328) = v462;
      *(v6 + 43) = v463;
      v465 = vadd_f32(v468, v465);
      *(v6 + 44) = v465;
      *(v6 + 360) = v466;
      *(v6 + 47) = v467;
      v469 = vadd_f32(v472, v469);
      *(v6 + 48) = v469;
      *(v6 + 392) = v470;
      *(v6 + 51) = v471;
      v473 = vadd_f32(v476, v473);
      *(v6 + 52) = v473;
      *(v6 + 424) = v474;
      *(v6 + 55) = v475;
      v477 = vadd_f32(v480, v477);
      *(v6 + 56) = v477;
      *(v6 + 456) = v478;
      *(v6 + 59) = v479;
      v481 = vadd_f32(v484, v481);
      *(v6 + 60) = v481;
      *(v6 + 488) = v482;
      *(v6 + 63) = v483;
      v213 = 0;
      do
      {
        v214 = vmulq_f32(*&v6[v212], *&v6[v212]);
        v215 = vmulq_f32(*&v6[v212 + 16], *&v6[v212 + 16]);
        *v213.i32 = (((((((*v213.i32 + v214.f32[0]) + v214.f32[1]) + v214.f32[2]) + v214.f32[3]) + v215.f32[0]) + v215.f32[1]) + v215.f32[2]) + v215.f32[3];
        v212 += 32;
      }

      while (v212 != 512);
      v216 = 0;
      *v213.i32 = sqrtf(*v213.i32) * 0.2;
      v217 = vdupq_lane_s32(v213, 0);
      v218 = vbslq_s8(vcgtq_f32(v217, *(v6 + 1)), *(v6 + 1), v217);
      *v6 = vbslq_s8(vcgtq_f32(v217, *v6), *v6, v217);
      *(v6 + 1) = v218;
      v219 = vbslq_s8(vcgtq_f32(v217, *(v6 + 3)), *(v6 + 3), v217);
      *(v6 + 2) = vbslq_s8(vcgtq_f32(v217, *(v6 + 2)), *(v6 + 2), v217);
      *(v6 + 3) = v219;
      v220 = vbslq_s8(vcgtq_f32(v217, *(v6 + 5)), *(v6 + 5), v217);
      *(v6 + 4) = vbslq_s8(vcgtq_f32(v217, *(v6 + 4)), *(v6 + 4), v217);
      *(v6 + 5) = v220;
      v221 = vbslq_s8(vcgtq_f32(v217, *(v6 + 7)), *(v6 + 7), v217);
      *(v6 + 6) = vbslq_s8(vcgtq_f32(v217, *(v6 + 6)), *(v6 + 6), v217);
      *(v6 + 7) = v221;
      v222 = vbslq_s8(vcgtq_f32(v217, *(v6 + 9)), *(v6 + 9), v217);
      *(v6 + 8) = vbslq_s8(vcgtq_f32(v217, *(v6 + 8)), *(v6 + 8), v217);
      *(v6 + 9) = v222;
      v223 = vbslq_s8(vcgtq_f32(v217, *(v6 + 11)), *(v6 + 11), v217);
      *(v6 + 10) = vbslq_s8(vcgtq_f32(v217, *(v6 + 10)), *(v6 + 10), v217);
      *(v6 + 11) = v223;
      v224 = vbslq_s8(vcgtq_f32(v217, *(v6 + 13)), *(v6 + 13), v217);
      *(v6 + 12) = vbslq_s8(vcgtq_f32(v217, *(v6 + 12)), *(v6 + 12), v217);
      *(v6 + 13) = v224;
      v225 = vbslq_s8(vcgtq_f32(v217, *(v6 + 15)), *(v6 + 15), v217);
      *(v6 + 14) = vbslq_s8(vcgtq_f32(v217, *(v6 + 14)), *(v6 + 14), v217);
      *(v6 + 15) = v225;
      v226 = vbslq_s8(vcgtq_f32(v217, *(v6 + 17)), *(v6 + 17), v217);
      *(v6 + 16) = vbslq_s8(vcgtq_f32(v217, *(v6 + 16)), *(v6 + 16), v217);
      *(v6 + 17) = v226;
      v227 = vbslq_s8(vcgtq_f32(v217, *(v6 + 19)), *(v6 + 19), v217);
      *(v6 + 18) = vbslq_s8(vcgtq_f32(v217, *(v6 + 18)), *(v6 + 18), v217);
      *(v6 + 19) = v227;
      v228 = vbslq_s8(vcgtq_f32(v217, *(v6 + 21)), *(v6 + 21), v217);
      *(v6 + 20) = vbslq_s8(vcgtq_f32(v217, *(v6 + 20)), *(v6 + 20), v217);
      *(v6 + 21) = v228;
      v229 = vbslq_s8(vcgtq_f32(v217, *(v6 + 23)), *(v6 + 23), v217);
      *(v6 + 22) = vbslq_s8(vcgtq_f32(v217, *(v6 + 22)), *(v6 + 22), v217);
      *(v6 + 23) = v229;
      v230 = vbslq_s8(vcgtq_f32(v217, *(v6 + 25)), *(v6 + 25), v217);
      *(v6 + 24) = vbslq_s8(vcgtq_f32(v217, *(v6 + 24)), *(v6 + 24), v217);
      *(v6 + 25) = v230;
      v231 = vbslq_s8(vcgtq_f32(v217, *(v6 + 27)), *(v6 + 27), v217);
      *(v6 + 26) = vbslq_s8(vcgtq_f32(v217, *(v6 + 26)), *(v6 + 26), v217);
      *(v6 + 27) = v231;
      v232 = vbslq_s8(vcgtq_f32(v217, *(v6 + 29)), *(v6 + 29), v217);
      *(v6 + 28) = vbslq_s8(vcgtq_f32(v217, *(v6 + 28)), *(v6 + 28), v217);
      *(v6 + 29) = v232;
      v233 = vbslq_s8(vcgtq_f32(v217, *(v6 + 30)), *(v6 + 30), v217);
      v234 = vbslq_s8(vcgtq_f32(v217, *(v6 + 31)), *(v6 + 31), v217);
      *(v6 + 30) = v233;
      *(v6 + 31) = v234;
      v235 = 0;
      v236.i64[0] = 0x4400000044000000;
      v236.i64[1] = 0x4400000044000000;
      do
      {
        v237 = vmulq_f32(*&v6[v216], *&v6[v216]);
        v238 = vmulq_f32(*&v6[v216 + 16], *&v6[v216 + 16]);
        *v235.i32 = (((((((*v235.i32 + v237.f32[0]) + v237.f32[1]) + v237.f32[2]) + v237.f32[3]) + v238.f32[0]) + v238.f32[1]) + v238.f32[2]) + v238.f32[3];
        v216 += 32;
      }

      while (v216 != 512);
      v239 = 0;
      *v235.i32 = sqrtf(*v235.i32);
      v240 = vdupq_lane_s32(v235, 0);
      v241 = vdivq_f32(*(v6 + 1), v240);
      *v6 = vdivq_f32(*v6, v240);
      *(v6 + 1) = v241;
      v242 = vdivq_f32(*(v6 + 3), v240);
      *(v6 + 2) = vdivq_f32(*(v6 + 2), v240);
      *(v6 + 3) = v242;
      v243 = vdivq_f32(*(v6 + 5), v240);
      *(v6 + 4) = vdivq_f32(*(v6 + 4), v240);
      *(v6 + 5) = v243;
      v244 = vdivq_f32(*(v6 + 7), v240);
      *(v6 + 6) = vdivq_f32(*(v6 + 6), v240);
      *(v6 + 7) = v244;
      v245 = vdivq_f32(*(v6 + 9), v240);
      *(v6 + 8) = vdivq_f32(*(v6 + 8), v240);
      *(v6 + 9) = v245;
      v246 = vdivq_f32(*(v6 + 11), v240);
      *(v6 + 10) = vdivq_f32(*(v6 + 10), v240);
      *(v6 + 11) = v246;
      v247 = vdivq_f32(*(v6 + 13), v240);
      *(v6 + 12) = vdivq_f32(*(v6 + 12), v240);
      *(v6 + 13) = v247;
      v248 = vdivq_f32(*(v6 + 15), v240);
      *(v6 + 14) = vdivq_f32(*(v6 + 14), v240);
      *(v6 + 15) = v248;
      v249 = vdivq_f32(*(v6 + 17), v240);
      *(v6 + 16) = vdivq_f32(*(v6 + 16), v240);
      *(v6 + 17) = v249;
      v250 = vdivq_f32(*(v6 + 19), v240);
      *(v6 + 18) = vdivq_f32(*(v6 + 18), v240);
      *(v6 + 19) = v250;
      v251 = vdivq_f32(*(v6 + 21), v240);
      *(v6 + 20) = vdivq_f32(*(v6 + 20), v240);
      *(v6 + 21) = v251;
      v252 = vdivq_f32(*(v6 + 23), v240);
      *(v6 + 22) = vdivq_f32(*(v6 + 22), v240);
      *(v6 + 23) = v252;
      v253 = vdivq_f32(*(v6 + 25), v240);
      *(v6 + 24) = vdivq_f32(*(v6 + 24), v240);
      *(v6 + 25) = v253;
      v254 = vdivq_f32(*(v6 + 27), v240);
      *(v6 + 26) = vdivq_f32(*(v6 + 26), v240);
      *(v6 + 27) = v254;
      v255 = vdivq_f32(*(v6 + 29), v240);
      *(v6 + 28) = vdivq_f32(*(v6 + 28), v240);
      *(v6 + 29) = v255;
      v256 = vdivq_f32(*(v6 + 30), v240);
      v257 = vdivq_f32(*(v6 + 31), v240);
      *(v6 + 30) = v256;
      *(v6 + 31) = v257;
      do
      {
        v258 = &v6[v239];
        v259 = vmulq_f32(*&v6[v239], v236);
        v260 = vmulq_f32(*&v6[v239 + 16], v236);
        v261 = vcltzq_f32(v259);
        v262 = vcltzq_f32(v260);
        v263 = vdupq_n_s32(0x437F0000u);
        v264 = vcgtq_f32(v259, v263);
        v265 = vcgtq_f32(v260, v263);
        *v258 = vbslq_s8(vbicq_s8(v264, v261), v263, vandq_s8(v259, vbicq_s8(vmvnq_s8(v261), v264)));
        v258[1] = vbslq_s8(vbicq_s8(v265, v262), v263, vandq_s8(v260, vbicq_s8(vmvnq_s8(v262), v265)));
        v239 += 32;
      }

      while (v239 != 512);
      v266 = vdivq_f32(*(v6 + 1), v263);
      *v6 = vdivq_f32(*v6, v263);
      *(v6 + 1) = v266;
      v267 = vdivq_f32(*(v6 + 3), v263);
      *(v6 + 2) = vdivq_f32(*(v6 + 2), v263);
      *(v6 + 3) = v267;
      v268 = vdivq_f32(*(v6 + 5), v263);
      *(v6 + 4) = vdivq_f32(*(v6 + 4), v263);
      *(v6 + 5) = v268;
      v269 = vdivq_f32(*(v6 + 7), v263);
      *(v6 + 6) = vdivq_f32(*(v6 + 6), v263);
      *(v6 + 7) = v269;
      v270 = vdivq_f32(*(v6 + 9), v263);
      *(v6 + 8) = vdivq_f32(*(v6 + 8), v263);
      *(v6 + 9) = v270;
      v271 = vdivq_f32(*(v6 + 11), v263);
      *(v6 + 10) = vdivq_f32(*(v6 + 10), v263);
      *(v6 + 11) = v271;
      v272 = vdivq_f32(*(v6 + 13), v263);
      *(v6 + 12) = vdivq_f32(*(v6 + 12), v263);
      *(v6 + 13) = v272;
      v273 = vdivq_f32(*(v6 + 15), v263);
      *(v6 + 14) = vdivq_f32(*(v6 + 14), v263);
      *(v6 + 15) = v273;
      v274 = vdivq_f32(*(v6 + 17), v263);
      *(v6 + 16) = vdivq_f32(*(v6 + 16), v263);
      *(v6 + 17) = v274;
      v275 = vdivq_f32(*(v6 + 19), v263);
      *(v6 + 18) = vdivq_f32(*(v6 + 18), v263);
      *(v6 + 19) = v275;
      v276 = vdivq_f32(*(v6 + 21), v263);
      *(v6 + 20) = vdivq_f32(*(v6 + 20), v263);
      *(v6 + 21) = v276;
      v277 = vdivq_f32(*(v6 + 23), v263);
      *(v6 + 22) = vdivq_f32(*(v6 + 22), v263);
      *(v6 + 23) = v277;
      v278 = vdivq_f32(*(v6 + 25), v263);
      *(v6 + 24) = vdivq_f32(*(v6 + 24), v263);
      *(v6 + 25) = v278;
      v279 = vdivq_f32(*(v6 + 27), v263);
      *(v6 + 26) = vdivq_f32(*(v6 + 26), v263);
      *(v6 + 27) = v279;
      v280 = vdivq_f32(*(v6 + 29), v263);
      *(v6 + 28) = vdivq_f32(*(v6 + 28), v263);
      *(v6 + 29) = v280;
      v281 = vdivq_f32(*(v6 + 31), v263);
      *(v6 + 30) = vdivq_f32(*(v6 + 30), v263);
      *(v6 + 31) = v281;
      a2 = v406;
      if (&v415[2] >= v6 + 32 || v6 >= v414 + v412 + 160)
      {
        v11.i64[0] = 0xBF000000BF000000;
        v11.i64[1] = 0xBF000000BF000000;
        v12.i64[0] = 0x3F0000003F000000;
        v12.i64[1] = 0x3F0000003F000000;
        v13 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 4), v263)), v12, v11), v263, *(v6 + 4))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 5), v263)), v12, v11), v263, *(v6 + 5)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 6), v263)), v12, v11), v263, *(v6 + 6))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 7), v263)), v12, v11), v263, *(v6 + 7)))));
        v415[2] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*v6, v263)), v12, v11), v263, *v6)), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 1), v263)), v12, v11), v263, *(v6 + 1)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 2), v263)), v12, v11), v263, *(v6 + 2))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 3), v263)), v12, v11), v263, *(v6 + 3)))));
        v415[3] = v13;
        v14 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 12), v263)), v12, v11), v263, *(v6 + 12))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 13), v263)), v12, v11), v263, *(v6 + 13)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 14), v263)), v12, v11), v263, *(v6 + 14))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 15), v263)), v12, v11), v263, *(v6 + 15)))));
        v415[4] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 8), v263)), v12, v11), v263, *(v6 + 8))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 9), v263)), v12, v11), v263, *(v6 + 9)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 10), v263)), v12, v11), v263, *(v6 + 10))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 11), v263)), v12, v11), v263, *(v6 + 11)))));
        v415[5] = v14;
        v15 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 20), v263)), v12, v11), v263, *(v6 + 20))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 21), v263)), v12, v11), v263, *(v6 + 21)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 22), v263)), v12, v11), v263, *(v6 + 22))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 23), v263)), v12, v11), v263, *(v6 + 23)))));
        v415[6] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 16), v263)), v12, v11), v263, *(v6 + 16))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 17), v263)), v12, v11), v263, *(v6 + 17)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 18), v263)), v12, v11), v263, *(v6 + 18))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 19), v263)), v12, v11), v263, *(v6 + 19)))));
        v415[7] = v15;
        v16 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 24), v263)), v12, v11), v263, *(v6 + 24))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 25), v263)), v12, v11), v263, *(v6 + 25)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 26), v263)), v12, v11), v263, *(v6 + 26))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 27), v263)), v12, v11), v263, *(v6 + 27)))));
        v17 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 28), v263)), v12, v11), v263, *(v6 + 28))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 29), v263)), v12, v11), v263, *(v6 + 29)))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 30), v263)), v12, v11), v263, *(v6 + 30))), vcvtq_s32_f32(vmlaq_f32(vbslq_s8(vcgtzq_f32(vmulq_f32(*(v6 + 31), v263)), v12, v11), v263, *(v6 + 31)))));
        v415[8] = v16;
        v415[9] = v17;
      }

      else
      {
        for (i = 0; i != 128; ++i)
        {
          v283 = *&v6[4 * i];
          if ((v283 * 255.0) <= 0.0)
          {
            v284 = v8;
          }

          else
          {
            v284 = v9;
          }

          *(v414 + v416 + i) = (v284 + (v283 * 255.0));
        }
      }

      v7 = v417 + 1;
      v10 = v416 + 288;
    }

    while (*v406 > v417 + 1);
  }

  free(v418);
  free(v6);
  if (v405)
  {
    if (*(v405 + 212))
    {
      *(v405 + 120) += mach_absolute_time();
      if (*(v405 + 212))
      {
LABEL_230:
        printf("Verbose : ");
        printf("Total time for %40s : %7.3f ms", (v405 + 148), *(v405 + 120) * 0.000001);

        putchar(10);
        return;
      }
    }

    else
    {
      clock_gettime(_CLOCK_PROCESS_CPUTIME_ID, (v405 + 64));
      clock_gettime(_CLOCK_THREAD_CPUTIME_ID, (v405 + 80));
      clock_gettime(_CLOCK_MONOTONIC, (v405 + 48));
      v398 = *(v405 + 56) - *(v405 + 8) + 1000000000 * (*(v405 + 48) - *v405);
      v399 = *(v405 + 72) - *(v405 + 24) + 1000000000 * (*(v405 + 64) - *(v405 + 16));
      v400 = *(v405 + 88) - *(v405 + 40) + 1000000000 * (*(v405 + 80) - *(v405 + 32));
      v401 = *(v405 + 128);
      v402 = v398 + *(v405 + 120);
      *(v405 + 96) = v398;
      *(v405 + 104) = v399;
      v403 = v399 + v401;
      *(v405 + 112) = v400;
      *(v405 + 120) = v402;
      v404 = v400 + *(v405 + 136);
      *(v405 + 128) = v403;
      *(v405 + 136) = v404;
      ++*(v405 + 144);
      if (*(v405 + 212))
      {
        goto LABEL_230;
      }
    }

    log_col_app("%s%s%s:%s%7.1fms%s", v391, v392, v393, v394, v395, v396, v397, &str_4_1);
  }
}