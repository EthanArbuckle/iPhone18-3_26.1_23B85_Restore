uint64_t peridot::PeridotDXPBaselineRemoval::setRunMode(uint64_t result, int a2)
{
  *(result + 748) = a2;
  *(result + 750) = BYTE2(a2);
  return result;
}

uint64_t peridot::PeridotDXPBaselineRemoval::configure(peridot::PeridotDXPBaselineRemoval *this, const peridot::PeridotDXPCalib *a2)
{
  *(this + 186) = *a2;
  v4 = *(this + 91);
  v5 = *(this + 90);
  v6 = (v4 - v5) >> 3;
  if (v6 <= 2)
  {
    v7 = 3 - v6;
    v8 = *(this + 92);
    if (v7 > (v8 - v4) >> 3)
    {
      v9 = v8 - v5;
      v10 = v9 >> 2;
      if ((v9 >> 2) <= 3)
      {
        v10 = 3;
      }

      v11 = v9 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 91), 8 * v7);
    v13 = (v4 + 8 * v7);
    goto LABEL_12;
  }

  if (v4 - v5 != 24)
  {
    v13 = v5 + 3;
LABEL_12:
    *(this + 91) = v13;
  }

  *(this + 21) = 91;
  v14 = *(a2 + 433);
  *v5 = v14--;
  *(this + 51) = v14;
  *(this + 81) = *v5 - 1;
  if (v14 <= 0x170 && *(this + 21) <= 0x170uLL && (*(this + 22) = 91, v15 = *(a2 + 434), v5[1] = v15, --v15, *(this + 52) = v15, *(this + 82) = v5[1] - 1, v15 <= 0x170) && *(this + 22) <= 0x170uLL && (*(this + 23) = 91, v16 = *(a2 + 435), v5[2] = v16, --v16, *(this + 53) = v16, *(this + 83) = v5[2] - 1, v16 <= 0x170) && *(this + 23) <= 0x170uLL)
  {
    if (this + 752 != a2 + 3672)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 94, *(a2 + 459), *(a2 + 460), (*(a2 + 460) - *(a2 + 459)) >> 2);
    }

    if (this + 776 != a2 + 3696)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 97, *(a2 + 462), *(a2 + 463), (*(a2 + 463) - *(a2 + 462)) >> 2);
    }

    *(this + 800) = *(a2 + 3520);
    *(this + 801) = *(a2 + 3521);
    if (this + 808 != a2 + 3952)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 101, *(a2 + 494), *(a2 + 495), (*(a2 + 495) - *(a2 + 494)) >> 2);
    }

    if (this + 832 != a2 + 3976)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 104, *(a2 + 497), *(a2 + 498), (*(a2 + 498) - *(a2 + 497)) >> 2);
    }

    v18 = *(a2 + 3436);
    *(this + 243) = *(a2 + 861);
    *(this + 964) = v18;
    v19 = *(a2 + 428);
    *(this + 240) = *(a2 + 858);
    *(this + 119) = v19;
    v20 = *(a2 + 431);
    *(this + 246) = *(a2 + 864);
    *(this + 122) = v20;
    if (this + 856 != a2 + 3672)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 107, *(a2 + 459), *(a2 + 460), (*(a2 + 460) - *(a2 + 459)) >> 2);
    }

    if (this + 880 != a2 + 3696)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 110, *(a2 + 462), *(a2 + 463), (*(a2 + 463) - *(a2 + 462)) >> 2);
    }

    if (*(this + 111) - *(this + 110) >= 0x10uLL)
    {
      v21 = (*(this + 108) - *(this + 107)) >> 2;
      if (v21 >= 4)
      {
        if (!(v21 >> 62))
        {
          operator new();
        }

        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }
    }

    peridot_depth_log("Wrong Configuration: _HPFilter/_HSFilter size");
  }

  else
  {
    peridot_depth_log("Wrong Configuration: histEnd too large");
  }

  return 4;
}

uint64_t peridot::PeridotDXPBaselineRemoval::process(peridot::PeridotDXPBaselineRemoval *this, peridot::PeridotPreProcessOutput::PreProcessorOutSpot *a2, uint64_t a3, float a4)
{
  result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(this, a2 + 200, a3, a4);
  if (!result)
  {
    if (*(this + 748) != 1 || (result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(result, a2 + 400, v7, v8), !result))
    {
      result = peridot::PeridotDXPBaselineRemoval::baselineRemoval(result, a2, v7, v8);
      if (!result)
      {
        cConv(*(**(a2 + 40) + 8), *(**(a2 + 40) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, **(this + 90) - 1, *(**(a2 + 46) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(**(a2 + 65) + 8), *(**(a2 + 65) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, **(this + 90) - 1, *(**(a2 + 71) + 8));
        }

        conv<float,float const>(*(**(a2 + 15) + 8), *(**(a2 + 15) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(**(a2 + 21) + 8), 2);
        cConv(*(*(*(a2 + 40) + 8) + 8), *(*(*(a2 + 40) + 8) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 8) - 1, *(*(*(a2 + 46) + 8) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(*(*(a2 + 65) + 8) + 8), *(*(*(a2 + 65) + 8) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 8) - 1, *(*(*(a2 + 71) + 8) + 8));
        }

        conv<float,float const>(*(*(*(a2 + 15) + 8) + 8), *(*(*(a2 + 15) + 8) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(*(*(a2 + 21) + 8) + 8), 2);
        cConv(*(*(*(a2 + 40) + 16) + 8), *(*(*(a2 + 40) + 16) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 16) - 1, *(*(*(a2 + 46) + 16) + 8));
        if (*(this + 748) == 1)
        {
          cConv(*(*(*(a2 + 65) + 16) + 8), *(*(*(a2 + 65) + 16) + 16), *(this + 107), (*(this + 108) - *(this + 107)) >> 2, *(*(this + 90) + 16) - 1, *(*(*(a2 + 71) + 16) + 8));
        }

        conv<float,float const>(*(*(*(a2 + 15) + 16) + 8), *(*(*(a2 + 15) + 16) + 16), *(this + 110), (*(this + 111) - *(this + 110)) >> 2, *(*(*(a2 + 21) + 16) + 8), 2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t peridot::PeridotDXPBaselineRemoval::baselineRemoval(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v624[182] = *MEMORY[0x277D85DE8];
  v8 = *v4;
  if (v4[1] - *v4 != 24)
  {
    peridot_depth_log("PeridotDXPBaselineRemoval::baselineRemoval: wrong interlHist size");
    return 1;
  }

  v9 = v6;
  v10 = v5;
  v588 = v4;
  v11 = v7;
  v12 = *v8;
  v13 = *(*v8 + 16);
  v14 = *(v5 + 216);
  bzero(v621, 0x1140uLL);
  bzero(v615, 0x1140uLL);
  v15 = *(v10 + 208);
  v583 = *(v10 + 64);
  v584 = *(v10 + 72);
  v585 = *(v10 + 80);
  v608[182] = v13;
  v609[184] = v13;
  v610[182] = v13;
  v16 = *(v10 + 168);
  v589 = v15;
  v17 = v13 - 1;
  v18 = v16 + 1;
  if (v16 + 1 < v13)
  {
    memset_pattern16(&v607[v16 + 1], &unk_2247A54B0, 4 * (v17 - v16));
  }

  v19 = *(v10 + 176);
  if (v19 + 1 < v13)
  {
    memset_pattern16(v609 + 4 * v19 + 4, &unk_2247A54B0, 4 * (v17 - v19));
  }

  v20 = *(v10 + 184);
  if (v20 + 1 < v13)
  {
    memset_pattern16(&v609[185] + 4 * v20 + 4, &unk_2247A54B0, 4 * (v17 - v20));
  }

  if (v16 > 0x170)
  {
LABEL_9:
    peridot_depth_log("Wrong Configuration: histEnd");
    return 4;
  }

  v22 = v14 >> 1;
  if (v16 < v14 >> 1)
  {
LABEL_12:
    peridot_depth_log("Wrong Configuration: histEnd too small");
    return 4;
  }

  v23 = *(v12 + 8);
  memcpy(v611, &v23[4 * (v16 - (v14 >> 1)) + 4], 4 * v22);
  memcpy(&v611[v22], v23, 4 * v16 + 4);
  __n = 4 * v22;
  memcpy(&v611[v22 + 1 + v16], v23, 4 * v22);
  v24 = v16 + v14;
  if (v16 + v14)
  {
    if (v24 <= 7)
    {
      v25 = 0;
LABEL_20:
      v32 = v16 + v14 - v25;
      v33 = &__A[v25];
      v34 = &v611[v25];
      do
      {
        v35 = *v34++;
        *v33++ = v35;
        --v32;
      }

      while (v32);
      goto LABEL_22;
    }

    v25 = v24 & 0xFFFFFFFFFFFFFFF8;
    v26 = v593;
    v27 = &v612;
    v28 = v24 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v29 = *v27[-2].f32;
      v30 = vcvtq_f64_f32(*v27);
      v31 = vcvt_hight_f64_f32(*v27->f32);
      v26[-2] = vcvtq_f64_f32(*v29.f32);
      v26[-1] = vcvt_hight_f64_f32(v29);
      *v26 = v30;
      v26[1] = v31;
      v26 += 4;
      v27 += 4;
      v28 -= 8;
    }

    while (v28);
    if (v24 != v25)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  vDSP_vswsumD(__A, 1, v604, 1, v16 + 1, v14);
  v36 = v14;
  if (v16 <= 6)
  {
    v37 = 0;
LABEL_27:
    v47 = v16 - v37 + 1;
    v48 = &v607[v37];
    v49 = &v621[v37];
    v50 = &v604[v37];
    do
    {
      v51 = *v50++;
      v52 = v51;
      *v49++ = v52;
      v53 = v51 * (1.0 / v36);
      *v48++ = v53;
      --v47;
    }

    while (v47);
    goto LABEL_29;
  }

  v37 = v18 & 0x3F8;
  v38 = v608;
  v39 = &v622;
  v40 = v606;
  v41 = v37;
  v42 = 1.0 / v36;
  do
  {
    v44 = v40[-2];
    v43 = v40[-1];
    v46 = *v40;
    v45 = v40[1];
    v40 += 4;
    v39[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v43);
    *v39 = vcvt_hight_f32_f64(vcvt_f32_f64(v46), v45);
    v38[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v44, v42)), vmulq_n_f64(v43, v42));
    *v38 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v46, v42)), vmulq_n_f64(v45, v42));
    v38 += 2;
    v39 += 2;
    v41 -= 8;
  }

  while (v41);
  if (v18 != v37)
  {
    goto LABEL_27;
  }

LABEL_29:
  v54 = *(v10 + 176);
  if (v54 > 0x170)
  {
    goto LABEL_9;
  }

  if (v54 < v22)
  {
    goto LABEL_12;
  }

  v55 = *(*(*v588 + 8) + 8);
  memcpy(v613, &v55[4 * (v54 - v22) + 4], __n);
  memcpy(&v613[v22], v55, 4 * v54 + 4);
  memcpy(&v613[v22 + 1 + v54], v55, __n);
  v56 = v54 + 1;
  v57 = v54 + v14;
  if (v54 + v14)
  {
    if (v57 < 8)
    {
      v58 = 0;
LABEL_37:
      v64 = v54 + v14 - v58;
      v65 = &__A[v58];
      v66 = &v613[v58];
      do
      {
        v67 = *v66++;
        *v65++ = v67;
        --v64;
      }

      while (v64);
      goto LABEL_39;
    }

    v58 = v57 & 0xFFFFFFFFFFFFFFF8;
    v59 = v593;
    v60 = v613;
    v61 = v57 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v62 = *v60;
      v63 = v60[1];
      v60 += 2;
      v59[-2] = vcvtq_f64_f32(*v62.f32);
      v59[-1] = vcvt_hight_f64_f32(v62);
      *v59 = vcvtq_f64_f32(*v63.f32);
      v59[1] = vcvt_hight_f64_f32(v63);
      v59 += 4;
      v61 -= 8;
    }

    while (v61);
    if (v57 != v58)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  vDSP_vswsumD(__A, 1, v604, 1, v54 + 1, v14);
  if (v54 < 7)
  {
    v68 = 0;
LABEL_44:
    v78 = v54 - v68 + 1;
    v79 = &v607[v68 + 370];
    v80 = &v621[v68 + 368];
    v81 = &v604[v68];
    do
    {
      v82 = *v81++;
      v83 = v82;
      *v80++ = v83;
      v84 = v82 * (1.0 / v36);
      *v79++ = v84;
      --v78;
    }

    while (v78);
    goto LABEL_46;
  }

  v69 = v609;
  v68 = v56 & 0x3F8;
  v70 = &v623;
  v71 = v606;
  v72 = v68;
  v73 = 1.0 / v36;
  do
  {
    v75 = v71[-2];
    v74 = v71[-1];
    v77 = *v71;
    v76 = v71[1];
    v71 += 4;
    v70[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v75), v74);
    *v70 = vcvt_hight_f32_f64(vcvt_f32_f64(v77), v76);
    *v69 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v75, v73)), vmulq_n_f64(v74, v73));
    v69[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v77, v73)), vmulq_n_f64(v76, v73));
    v69 += 2;
    v70 += 2;
    v72 -= 8;
  }

  while (v72);
  if (v56 != v68)
  {
    goto LABEL_44;
  }

LABEL_46:
  v85 = *(v10 + 184);
  if (v85 > 0x170)
  {
    goto LABEL_9;
  }

  if (v85 < v22)
  {
    goto LABEL_12;
  }

  v86 = v614;
  v87 = *(*(*v588 + 16) + 8);
  memcpy(v614, &v87[4 * (v85 - v22) + 4], __n);
  memcpy(&v614[v22], v87, 4 * v85 + 4);
  memcpy(&v614[v22 + 1 + v85], v87, __n);
  v88 = v85 + 1;
  v89 = v85 + v14;
  if (v85 + v14)
  {
    if (v89 < 8)
    {
      v90 = 0;
LABEL_54:
      v95 = v85 + v14 - v90;
      v96 = &__A[v90];
      v97 = &v614[v90];
      do
      {
        v98 = *v97++;
        *v96++ = v98;
        --v95;
      }

      while (v95);
      goto LABEL_56;
    }

    v90 = v89 & 0xFFFFFFFFFFFFFFF8;
    v91 = v593;
    v92 = v89 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v93 = *v86;
      v94 = v86[1];
      v86 += 2;
      v91[-2] = vcvtq_f64_f32(*v93.f32);
      v91[-1] = vcvt_hight_f64_f32(v93);
      *v91 = vcvtq_f64_f32(*v94.f32);
      v91[1] = vcvt_hight_f64_f32(v94);
      v91 += 4;
      v92 -= 8;
    }

    while (v92);
    if (v89 != v90)
    {
      goto LABEL_54;
    }
  }

LABEL_56:
  vDSP_vswsumD(__A, 1, v604, 1, v85 + 1, v14);
  if (v85 < 7)
  {
    v100 = 0;
LABEL_61:
    v109 = v85 - v100 + 1;
    v110 = &v607[v100 + 740];
    v111 = &v621[v100 + 736];
    v112 = &v604[v100];
    *&v99 = 1.0 / v36;
    do
    {
      v113 = *v112++;
      v114 = v113;
      *v111++ = v114;
      v115 = v113 * *&v99;
      *v110++ = v115;
      --v109;
    }

    while (v109);
    goto LABEL_63;
  }

  v100 = v88 & 0x3F8;
  v101 = v610;
  v102 = v624;
  v103 = v606;
  v104 = v100;
  *&v99 = 1.0 / v36;
  do
  {
    v106 = v103[-2];
    v105 = v103[-1];
    v108 = *v103;
    v107 = v103[1];
    v103 += 4;
    v102[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(v106), v105);
    *v102 = vcvt_hight_f32_f64(vcvt_f32_f64(v108), v107);
    v101[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v106, *&v99)), vmulq_n_f64(v105, *&v99));
    *v101 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v108, *&v99)), vmulq_n_f64(v107, *&v99));
    v101 += 2;
    v102 += 2;
    v104 -= 8;
  }

  while (v104);
  if (v88 != v100)
  {
    goto LABEL_61;
  }

LABEL_63:
  v576 = v583 - (v589 >> 1);
  v577 = v584 - (v589 >> 1);
  v578 = v589 >> 1;
  v579 = v585 - (v589 >> 1);
  v116 = 0;
  v117 = v9;
  v118 = *(v10 + 160);
  LODWORD(v99) = *(v11 + 18);
  *__na = v99;
  v582 = 1.0 / v9;
  if (v14 / 2 > v14 / -2)
  {
    v119 = v14 / 2;
  }

  else
  {
    v119 = v14 / -2;
  }

  v580 = v14 / 2 + v119 + 1;
  v120 = v607;
  v121 = (v10 + 168);
  v581 = vdupq_n_s64(4uLL);
  do
  {
    v590 = v116;
    LODWORD(v604[0]) = 0;
    memset_pattern4(__A, v604, 0x5DCuLL);
    v125 = v121[v590];
    memcpy(__A, &v621[368 * v590], 4 * v125 + 4);
    v126 = v590;
    v127 = *(v10 + 16 + 8 * v590) + v14;
    v128 = v127 + 1;
    if (v127 + 1 > v125 + 1)
    {
      goto LABEL_182;
    }

    v129 = 0;
    do
    {
      v130 = *(__A + v128);
      if (v130 > *(__A + v127))
      {
        v131 = v127 + 2;
        v132 = *(__A + v131);
        if (v130 > v132 || vabds_f32(v132, v130) < 0.000001)
        {
          *&v604[v129++] = v128;
          v128 = v131;
        }
      }

      v127 = v128++;
    }

    while (v128 <= v125 + 1);
    if (!v129)
    {
      goto LABEL_182;
    }

    if (v129 == 1)
    {
      v133 = 1;
    }

    else
    {
      v133 = 0;
      for (i = 0; i != v129; ++i)
      {
        v135 = v604[i];
        if (v14 < -1)
        {
LABEL_86:
          *(&v601 + v133++) = v135;
        }

        else
        {
          v136 = __A + *&v135 - v14 / 2;
          v137 = v580;
          while ((*v136 - *(__A + *&v135)) <= 0.000001)
          {
            ++v136;
            if (!--v137)
            {
              goto LABEL_86;
            }
          }
        }
      }

      memcpy(v604, &v601, 8 * v133);
    }

    LODWORD(v601) = 0;
    memset_pattern4(v600, &v601, 0x2E0uLL);
    if (v133)
    {
      v138 = 0;
      v139 = v582 * *(v10 + 192);
      do
      {
        v142 = v604[v138];
        if (*&v142 >= v125 - v14)
        {
          v140 = *(__A + *&v142 - v14);
        }

        else
        {
          v143 = *&v142 - v14;
          if (*&v142 < v14)
          {
            v143 = 0;
          }

          v144 = *&v142 + v14;
          if (*&v142 + v14 >= 0x176)
          {
            v144 = 374;
          }

          v140 = (*(__A + v144) + *(__A + v143)) * 0.5;
        }

        if (v140 >= v139)
        {
          v141 = v140;
        }

        else
        {
          v141 = v139;
        }

        *&v600[v138++] = sqrtf(v117 / v141) * (*(__A + *&v142) - v140);
      }

      while (v133 != v138);
      v595[0] = 0;
      memset_pattern8(&v601, v595, 0x5C0uLL);
      v595[0] = 0;
      memset_pattern8(&v597, v595, 0x5C0uLL);
      v145 = 0;
      v146 = 0;
      v147 = 0;
      do
      {
        if (*&v600[v145] > v118)
        {
          *(&v601 + v147++) = v145;
          *(&v597 + v146++) = *&v604[v145];
        }

        ++v145;
      }

      while (v133 != v145);
      v148 = *(v10 + 200);
      if (v146 > v148)
      {
        v149 = &v601;
        v150 = &v601 + v133;
        v151 = (v133 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v151 >= 3)
        {
          v153 = v151 + 1;
          v152 = (v151 + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v154 = v603;
          v155 = v152;
          v156 = xmmword_2247A4650;
          do
          {
            v154[-1] = v156;
            *v154 = vaddq_s64(v156, vdupq_n_s64(2uLL));
            v156 = vaddq_s64(v156, v581);
            v154 += 2;
            v155 -= 4;
          }

          while (v155);
          if (v153 == v152)
          {
LABEL_121:
            if (v148)
            {
              if (v148 >= 2)
              {
                v157 = (v148 - 2) >> 1;
                v158 = v157;
                do
                {
                  if (v157 >= v158)
                  {
                    v160 = (2 * (v158 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
                    v161 = &v601 + v160;
                    if (2 * (v158 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v148 && *&v600[*v161] > *&v600[v161[1]])
                    {
                      ++v161;
                      v160 = 2 * (v158 & 0x1FFFFFFFFFFFFFFFLL) + 2;
                    }

                    v162 = &v601 + v158;
                    v163 = *v161;
                    v164 = *v162;
                    v165 = *&v600[*v162];
                    if (*&v600[*v161] <= v165)
                    {
                      do
                      {
                        v166 = v161;
                        *v162 = v163;
                        if (v157 < v160)
                        {
                          break;
                        }

                        v167 = 2 * v160;
                        v160 = (2 * (v160 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                        v161 = &v601 + v160;
                        v168 = v167 + 2;
                        if (v168 < v148 && *&v600[*v161] > *&v600[v161[1]])
                        {
                          ++v161;
                          v160 = v168;
                        }

                        v163 = *v161;
                        v162 = v166;
                      }

                      while (*&v600[*v161] <= v165);
                      *v166 = v164;
                    }
                  }

                  v159 = v158-- <= 0;
                }

                while (!v159);
              }

              v169 = &v601 + v148;
              if (v148 != v133)
              {
                if (v148 >= 2)
                {
                  v220 = &v601 + v148;
                  do
                  {
                    v221 = *v220;
                    v222 = *&v600[*v220];
                    if (v222 > *&v600[v601])
                    {
                      *v220 = v601;
                      v601 = v221;
                      if (v148 == 2 || *&v600[v602] <= *&v600[v603[0]])
                      {
                        v223 = &v602;
                        v224 = 1;
                      }

                      else
                      {
                        v223 = v603;
                        v224 = 2;
                      }

                      v225 = *v223;
                      if (*&v600[*v223] <= v222)
                      {
                        v226 = &v601;
                        do
                        {
                          v227 = v223;
                          *v226 = v225;
                          if (((v148 - 2) >> 1) < v224)
                          {
                            break;
                          }

                          v228 = 2 * v224;
                          v224 = (2 * v224) | 1;
                          v223 = &v601 + v224;
                          v229 = v228 + 2;
                          if (v229 < v148 && *&v600[*v223] > *&v600[v223[1]])
                          {
                            ++v223;
                            v224 = v229;
                          }

                          v225 = *v223;
                          v226 = v227;
                        }

                        while (*&v600[*v223] <= v222);
                        *v227 = v221;
                      }
                    }

                    ++v220;
                  }

                  while (v220 != v150);
                }

                else
                {
                  v217 = v601;
                  v218 = 8 * v148;
                  do
                  {
                    v219 = *(&v601 + v218);
                    if (*&v600[v219] > *&v600[v217])
                    {
                      *(&v601 + v218) = v217;
                      v601 = v219;
                      v217 = v219;
                    }

                    v218 += 8;
                  }

                  while (8 * v133 != v218);
                }
              }

              if (v148 >= 2)
              {
                do
                {
                  v172 = 0;
                  v173 = v601;
                  v174 = &v601;
                  do
                  {
                    v175 = v174;
                    v176 = &v174[v172];
                    v174 = v176 + 1;
                    v177 = 2 * v172;
                    v172 = (2 * v172) | 1;
                    v178 = v177 + 2;
                    if (v178 < v148)
                    {
                      v180 = v176[2];
                      v179 = v176 + 2;
                      if (*&v600[*(v179 - 1)] > *&v600[v180])
                      {
                        v174 = v179;
                        v172 = v178;
                      }
                    }

                    *v175 = *v174;
                  }

                  while (v172 <= ((v148 - 2) >> 1));
                  if (v174 == --v169)
                  {
                    *v174 = v173;
                  }

                  else
                  {
                    *v174 = *v169;
                    *v169 = v173;
                    v181 = (v174 - &v601 + 8) >> 3;
                    v159 = v181 < 2;
                    v182 = v181 - 2;
                    if (!v159)
                    {
                      v183 = v182 >> 1;
                      v184 = &v601 + v183;
                      v185 = *v184;
                      v186 = *v174;
                      v187 = *&v600[*v174];
                      if (*&v600[*v184] > v187)
                      {
                        do
                        {
                          v188 = v184;
                          *v174 = v185;
                          if (!v183)
                          {
                            break;
                          }

                          v183 = (v183 - 1) >> 1;
                          v184 = &v601 + v183;
                          v185 = *v184;
                          v174 = v188;
                        }

                        while (*&v600[*v184] > v187);
                        *v188 = v186;
                      }
                    }
                  }

                  v159 = v148-- <= 2;
                }

                while (!v159);
              }
            }

            v170 = *(v10 + 200);
            v121 = (v10 + 168);
            if (!v170)
            {
              goto LABEL_160;
            }

            if (v170 == 1)
            {
              v171 = 0;
            }

            else
            {
              v171 = v170 & 0xFFFFFFFFFFFFFFFELL;
              v189 = &v602;
              v190 = &v598;
              v191 = v170 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v192 = v604[*v189];
                *(v190 - 1) = v604[*(v189 - 1)];
                *v190 = v192;
                v190 += 2;
                v189 += 2;
                v191 -= 2;
              }

              while (v191);
              if (v170 == v171)
              {
                goto LABEL_159;
              }
            }

            do
            {
              *(&v597 + v171) = *&v604[*(&v601 + v171)];
              ++v171;
            }

            while (v170 != v171);
LABEL_159:
            LODWORD(v146) = v170;
            goto LABEL_160;
          }

          v149 = &v601 + v152;
        }

        else
        {
          v152 = 0;
        }

        do
        {
          *v149++ = v152++;
        }

        while (v149 != v150);
        goto LABEL_121;
      }
    }

    else
    {
      v595[0] = 0;
      memset_pattern8(&v601, v595, 0x5C0uLL);
      v595[0] = 0;
      memset_pattern8(&v597, v595, 0x5C0uLL);
      LODWORD(v146) = 0;
    }

    v121 = (v10 + 168);
LABEL_160:
    v594[0] = 0;
    memset_pattern8(v595, v594, 0x360uLL);
    __pattern8 = 0;
    memset_pattern8(v594, &__pattern8, 0x20uLL);
    v126 = v590;
    if (v146 >= 1)
    {
      v193 = 0;
      v194 = *(v10 + 224);
      v195 = *(v10 + 232);
      v196 = v146 & 0x7FFFFFFF;
      do
      {
        if (-v194 <= v195)
        {
          v197 = *(&v597 + v193);
          v198 = v194;
          v199 = v194 + v195 + 1;
          v200 = -v194;
          do
          {
            if (v197 + v200 >= v13 || v200 < 0 && v197 < v198)
            {
              break;
            }

            v201 = v594[v193];
            v594[v193] = v201 + 1;
            v595[27 * v193 + v201] = v197 + v200++;
            --v198;
            --v199;
          }

          while (v199);
        }

        ++v193;
      }

      while (v193 != v196);
      v202 = 0;
      v203 = &v607[370 * v590];
      v204 = v595;
      v205 = &v596;
      do
      {
        v206 = v594[v202];
        if (v206)
        {
          if (v206 == 1)
          {
            v207 = 0;
          }

          else
          {
            v207 = v206 & 0xFFFFFFFFFFFFFFFELL;
            v208 = v205;
            v209 = v206 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v210 = *v208;
              v203[*(v208 - 1)] = 2143289344;
              v203[v210] = 2143289344;
              v208 += 2;
              v209 -= 2;
            }

            while (v209);
            if (v206 == v207)
            {
              goto LABEL_171;
            }
          }

          v211 = v206 - v207;
          v212 = &v204[v207];
          do
          {
            v213 = *v212++;
            v203[v213] = 2143289344;
            --v211;
          }

          while (v211);
        }

LABEL_171:
        ++v202;
        v205 += 27;
        v204 += 27;
      }

      while (v202 != v196);
    }

    v125 = v121[v590];
LABEL_182:
    v214 = *(v10 + 88 + 8 * v126);
    v122 = 0.0;
    if (v214 <= v125)
    {
      v215 = 0;
      do
      {
        v216 = *&v120[v214] + v122;
        v122 = v216;
        ++v215;
        ++v214;
      }

      while (v214 <= v125);
      if (v215)
      {
        v122 = v216 / v215;
      }

      else
      {
        v122 = 0.0;
      }
    }

    v123 = *__na;
    if (*__na < v122 || v126 == 0)
    {
      *&v123 = v122;
    }

    *__na = v123;
    v116 = v126 + 1;
    v120 += 370;
  }

  while (v116 != 3);
  *(v11 + 18) = v123;
  LODWORD(v604[0]) = 2143289344;
  memset_pattern4(__A, v604, 0x1140uLL);
  v604[0] = 0.0;
  memset_pattern8(&v597, v604, 0x18uLL);
  v230 = *v121;
  v231 = *v121 + 1;
  v233 = v576;
  v232 = v577;
  v234 = v10;
  if (v576 < v231)
  {
    v235 = v230 + v578 - v583 + 1;
    v236 = v597;
    if (v235 <= 3)
    {
LABEL_213:
      v242 = __A + 3 * v236;
      v243 = v230 - v233 + 1;
      v244 = &v607[v233];
      v236 = v236 + v230 - v233 + 1;
      do
      {
        v245 = *v244++;
        *v242 = v245;
        v242 += 3;
        --v243;
      }

      while (v243);
    }

    else
    {
      v237 = v235 & 0xFFFFFFFFFFFFFFFCLL;
      v236 = v597 + (v235 & 0xFFFFFFFFFFFFFFFCLL);
      v238 = &v607[v583 - v578];
      v239 = &__A[3] + 3 * v597;
      v240 = v235 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v241 = *v238++;
        *(v239 - 6) = v241;
        *(v239 - 3) = DWORD1(v241);
        *v239 = DWORD2(v241);
        v239[3] = HIDWORD(v241);
        v239 += 12;
        v240 -= 4;
      }

      while (v240);
      if (v235 != v237)
      {
        v233 = v576 + v237;
        goto LABEL_213;
      }
    }

    v597 = v236;
  }

  v246 = *(v10 + 176);
  v247 = v246 + 1;
  if (v577 < v246 + 1)
  {
    v248 = v246 + v578 - v584 + 1;
    v249 = v598;
    if (v248 < 4)
    {
LABEL_222:
      v255 = __A + 3 * v249 + 1;
      v256 = v246 - v232 + 1;
      v257 = v609 + v232;
      v249 = v249 + v246 - v232 + 1;
      do
      {
        v258 = *v257++;
        *v255 = v258;
        v255 += 3;
        --v256;
      }

      while (v256);
    }

    else
    {
      v250 = v248 & 0xFFFFFFFFFFFFFFFCLL;
      v249 = v598 + (v248 & 0xFFFFFFFFFFFFFFFCLL);
      v251 = &v607[v584 - v578 + 370];
      v252 = &__A[3] + 3 * v598 + 1;
      v253 = v248 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v254 = *v251++;
        *(v252 - 6) = v254;
        *(v252 - 3) = DWORD1(v254);
        *v252 = DWORD2(v254);
        v252[3] = HIDWORD(v254);
        v252 += 12;
        v253 -= 4;
      }

      while (v253);
      if (v248 != v250)
      {
        v232 = v577 + v250;
        goto LABEL_222;
      }
    }

    v598 = v249;
  }

  v259 = *(v10 + 184);
  v260 = v259 + 1;
  v261 = v599;
  v262 = v579;
  if (v579 < v259 + 1)
  {
    v263 = v259 + v578 - v585 + 1;
    if (v263 < 4)
    {
LABEL_231:
      v270 = &__A[1] + 3 * v261;
      v271 = v259 - v262 + 1;
      v272 = &v609[185] + v262;
      v265 = v261 + v259 - v262 + 1;
      do
      {
        v273 = *v272++;
        *v270 = v273;
        v270 += 3;
        --v271;
      }

      while (v271);
    }

    else
    {
      v264 = v263 & 0xFFFFFFFFFFFFFFFCLL;
      v265 = v599 + (v263 & 0xFFFFFFFFFFFFFFFCLL);
      v266 = &v607[v585 - v578 + 740];
      v267 = &__A[4] + 3 * v599;
      v268 = v263 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v269 = *v266++;
        *(v267 - 6) = v269;
        *(v267 - 3) = DWORD1(v269);
        *v267 = DWORD2(v269);
        v267[3] = HIDWORD(v269);
        v267 += 12;
        v268 -= 4;
      }

      while (v268);
      if (v263 != v264)
      {
        v262 = v579 + v264;
        v261 += v263 & 0xFFFFFFFFFFFFFFFCLL;
        goto LABEL_231;
      }
    }

    v599 = v265;
    v261 = v265;
  }

  LODWORD(v601) = 2143289344;
  memset_pattern4(v604, &v601, 0x5C0uLL);
  v274 = v597;
  if (v597 <= v598)
  {
    v274 = v598;
  }

  v358 = v274 >= v261;
  v275 = 16;
  if (v358)
  {
    v275 = 8 * (v597 < v598);
  }

  v276 = *(&v597 + v275);
  if (v276)
  {
    if (v276 <= 3)
    {
      v277 = 0;
      goto LABEL_273;
    }

    v277 = v276 & 0xFFFFFFFFFFFFFFFCLL;
    v278 = &v605;
    v279 = __A;
    v280 = vdupq_n_s64(1uLL);
    v281 = v276 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v625 = vld3q_f32(v279);
      v282 = vceqq_f32(v625.val[0], v625.val[0]);
      v283.i64[0] = v282.u32[2];
      v283.i64[1] = v282.u32[3];
      v284 = vandq_s8(v283, v280);
      v283.i64[0] = v282.u32[0];
      v283.i64[1] = v282.u32[1];
      v285 = vandq_s8(v283, v280);
      v286 = vceqq_f32(v625.val[1], v625.val[1]);
      v283.i64[0] = v286.u32[2];
      v283.i64[1] = v286.u32[3];
      v287 = vandq_s8(v283, v280);
      v283.i64[0] = v286.u32[0];
      v283.i64[1] = v286.u32[1];
      v288 = vaddq_s64(v285, vandq_s8(v283, v280));
      v289 = vaddq_s64(v284, v287);
      v290 = vceqq_f32(v625.val[2], v625.val[2]);
      v283.i64[0] = v290.u32[0];
      v283.i64[1] = v290.u32[1];
      v291 = vandq_s8(v283, v280);
      v283.i64[0] = v290.u32[2];
      v283.i64[1] = v290.u32[3];
      v292 = vaddq_s64(v289, vandq_s8(v283, v280));
      v293 = vaddq_s64(v288, v291);
      v294 = vmovn_s64(vtstq_s64(v293, v293));
      v295 = vaddq_f32(vandq_s8(v625.val[0], v282), vandq_s8(v625.val[1], v286));
      v296 = vdivq_f32(vbslq_s8(v290, vaddq_f32(v625.val[2], v295), v295), vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v293)), vcvtq_f64_u64(v292)));
      if (vuzp1_s16(v294, *v280.i8).u8[0])
      {
        *(v278 - 2) = v296.i32[0];
      }

      if (vuzp1_s16(v294, *&v280).i8[2])
      {
        *(v278 - 1) = v296.i32[1];
      }

      if (vuzp1_s16(*&v280, vmovn_s64(vtstq_s64(v292, v292))).i32[1])
      {
        *v278 = v296.i64[1];
      }

      v278 += 2;
      v279 += 12;
      v281 -= 4;
    }

    while (v281);
    if (v276 != v277)
    {
LABEL_273:
      v316 = v276 - v277;
      v317 = v604 + v277;
      v318 = &__A[1] + 3 * v277;
      do
      {
        *v317++ = (*v318 + (*(v318 - 2) + *(v318 - 1))) / 3uLL;
        v318 += 3;
        --v316;
      }

      while (v316);
    }
  }

  v297 = *(v10 + 208);
  v298 = v297 >> 1;
  LODWORD(v595[0]) = 2143289344;
  memset_pattern4(&v601, v595, 0x5C0uLL);
  v300 = v276 - (v297 >> 1);
  if (v276 < v297 >> 1)
  {
    peridot_depth_log("Wrong configuration: LEDTailYpriSize");
    return 4;
  }

  v301 = v300 - v298;
  v302 = __na[0];
  if (v300 > v298)
  {
    v303 = v297 / 2;
    v304 = v604 + v298 + v297 / -2;
    v305 = v297 >> 1;
    do
    {
      v306 = 0.0;
      if (v297 / -2 <= v303)
      {
        v307 = v304;
        v308 = 2 * v303 + 1;
        do
        {
          v306 = *v307++ + v306;
          --v308;
        }

        while (v308);
      }

      *(&v601 + v305 - v298) = v306 * (1.0 / v297);
      ++v305;
      ++v304;
    }

    while (v305 != v300);
  }

  if (v301 < v300)
  {
    if (v297 <= 0xF)
    {
LABEL_266:
      v312 = v301 + v298 - v276;
      v313 = &v601 + v301;
      do
      {
        *v313++ = __na[0];
        v358 = __CFADD__(v312++, 1);
      }

      while (!v358);
    }

    else
    {
      v299 = vdupq_lane_s32(__na[0], 0);
      v309 = v298 & 0x7FFFFFFFFFFFFFF8;
      v310 = (&v601 + 4 * v276 + -8 * v298 + 16);
      v311 = v298 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v310[-1] = v299;
        *v310 = v299;
        v310 += 2;
        v311 -= 8;
      }

      while (v311);
      if (v298 != v309)
      {
        v301 += v309;
        goto LABEL_266;
      }
    }
  }

  if (v276 != v298)
  {
    v314 = 0;
    v315 = 0;
    v299.i32[1] = 0;
    do
    {
      ++v315;
      --v314;
    }

    while (v315 != v300);
    v319 = 4 * v276 - 4 * v298 - 4;
    v320 = &v601;
    if (v319 < 0x1C)
    {
      goto LABEL_281;
    }

    v321 = (v319 >> 2) + 1;
    v299 = vdupq_lane_s32(__na[0], 0);
    v322 = v603;
    v323 = v321 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v324 = vbslq_s8(vcgtq_f32(v299, *v322), v299, *v322);
      v322[-1] = vbslq_s8(vcgtq_f32(v299, v322[-1]), v299, v322[-1]);
      *v322 = v324;
      v322 += 2;
      v323 -= 8;
    }

    while (v323);
    if (v321 != (v321 & 0x7FFFFFFFFFFFFFF8))
    {
      v320 = &v601 + (v321 & 0x7FFFFFFFFFFFFFF8);
LABEL_281:
      v325 = &v601 + v300;
      do
      {
        v326 = *v320;
        if (*__na > *v320)
        {
          v326 = *__na;
        }

        *v320++ = v326;
      }

      while (v320 != v325);
    }
  }

  v327 = *(v10 + 64);
  if (v327 <= 0x16F)
  {
    if (v327)
    {
      if (v327 <= 7)
      {
        v328 = 0;
        goto LABEL_292;
      }

      v328 = *(v10 + 64) & 0x1F8;
      v299 = vdupq_lane_s32(__na[0], 0);
      v329 = &v616;
      v330 = v328;
      do
      {
        v329[-1] = v299;
        *v329 = v299;
        v329 += 2;
        v330 -= 8;
      }

      while (v330);
      if (v327 != v328)
      {
LABEL_292:
        v331 = v327 - v328;
        v332 = &v615[4 * v328];
        do
        {
          *v332++ = __na[0];
          --v331;
        }

        while (v331);
      }
    }

    if (v231 > v327)
    {
      memcpy(&v615[4 * v327], &v601, 4 * (v231 - v327));
      v302 = __na[0];
    }

    v333 = *(v10 + 72);
    if (v333 <= 0x16F)
    {
      if (v333)
      {
        if (v333 < 8)
        {
          v334 = 0;
          goto LABEL_303;
        }

        v334 = *(v10 + 72) & 0x1F8;
        v299 = vdupq_lane_s32(v302, 0);
        v335 = &v618;
        v336 = v334;
        do
        {
          v335[-1] = v299;
          *v335 = v299;
          v335 += 2;
          v336 -= 8;
        }

        while (v336);
        if (v333 != v334)
        {
LABEL_303:
          v337 = v333 - v334;
          v338 = &v617[v334];
          do
          {
            *v338++ = v302.i32[0];
            --v337;
          }

          while (v337);
        }
      }

      v339 = v617;
      if (v247 > v333)
      {
        memcpy(&v617[v333], &v601, 4 * (v247 - v333));
        v302 = __na[0];
      }

      v340 = *(v10 + 80);
      if (v340 <= 0x16F)
      {
        if (!v340)
        {
          goto LABEL_317;
        }

        if (v340 >= 8)
        {
          v341 = *(v10 + 80) & 0x1F8;
          v299 = vdupq_lane_s32(v302, 0);
          v342 = &v620;
          v343 = v341;
          do
          {
            v342[-1] = v299;
            *v342 = v299;
            v342 += 2;
            v343 -= 8;
          }

          while (v343);
          if (v340 == v341)
          {
LABEL_317:
            v346 = v619;
            if (v260 > v340)
            {
              memcpy(&v619[v340], &v601, 4 * (v260 - v340));
            }

            v299.f32[0] = *(v10 + 192) / v117;
            v347 = *v11;
            v348 = v11[3];
            v349 = *v588;
            v350 = v588[3];
            v351 = **v11;
            v352 = *(v351 + 8);
            v353 = *(*v348 + 8);
            v354 = *(**v588 + 8);
            v355 = *(*v350 + 8);
            v356 = *(v10 + 40);
            v357 = v582;
            if (v356)
            {
              if (v356 > 7 && ((v353 - v352) >= 0x10 ? (v358 = (v352 - v354) >= 0x10) : (v358 = 0), v358 ? (v359 = (v355 - v352) >= 0x10) : (v359 = 0), v359 ? (v360 = (v353 - v354) >= 0x10) : (v360 = 0), v360 ? (v361 = (v353 - v355) >= 0x10) : (v361 = 0), v361))
              {
                v362 = v356 & 0xFFFFFFFFFFFFFFFCLL;
                v527 = v615;
                v528 = *(**v588 + 8);
                v529 = vdupq_lane_s32(*v299.f32, 0);
                v530 = *(v351 + 8);
                v531 = *(*v350 + 8);
                v532 = *(*v348 + 8);
                v533 = v356 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v534 = *v528++;
                  v535 = v534;
                  v536 = *v527++;
                  v537 = v536;
                  *v530++ = vsubq_f32(v535, v536);
                  v538 = vcgtq_f32(v529, v536);
                  v539 = *v531++;
                  *v532++ = vmulq_f32(vmulq_n_f32(v539, v582), vbslq_s8(v538, v529, v537));
                  v533 -= 4;
                }

                while (v533);
                if (v356 == v362)
                {
                  goto LABEL_339;
                }
              }

              else
              {
                v362 = 0;
              }

              v363 = v356 - v362;
              v364 = 4 * v362;
              v365 = (v353 + 4 * v362);
              v366 = (v355 + v364);
              v367 = (v352 + v364);
              v368 = &v615[v364];
              v369 = (v354 + v364);
              do
              {
                v370 = *v369++;
                v371 = v370;
                v372 = *v368++;
                v373 = v372;
                *v367++ = v371 - v372;
                v374 = v372 < v299.f32[0];
                v375 = *v366++;
                v376 = v375;
                if (v374)
                {
                  v373 = v299.f32[0];
                }

                *v365++ = (v376 * v582) * v373;
                --v363;
              }

              while (v363);
            }

LABEL_339:
            v377 = v327 - v356;
            if (v327 <= v356)
            {
              goto LABEL_348;
            }

            if (v377 >= 8 && (v353 - v352) > 0x1F)
            {
              v378 = v377 & 0xFFFFFFFFFFFFFFF8;
              v379 = (4 * v356 + v353 + 16);
              v380 = (v352 + 4 * v356);
              v381 = vdupq_n_s32(0x49742400u);
              v382 = v377 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                *v380 = 0uLL;
                v380[1] = 0uLL;
                v380 += 2;
                v379[-1] = v381;
                *v379 = v381;
                v379 += 2;
                v382 -= 8;
              }

              while (v382);
              if (v377 == v378)
              {
LABEL_348:
                v387 = *(v351 + 16);
                v388 = v387 - v327;
                if (v387 <= v327)
                {
                  goto LABEL_354;
                }

                if (v388 > 7 && (v353 - v352) >= 0x10)
                {
                  if ((v352 - v354) < 0x10 || (v355 - v352) < 0x10 || (v353 - v354) < 0x10)
                  {
                    v234 = v10;
                    v357 = v582;
                  }

                  else
                  {
                    v234 = v10;
                    v357 = v582;
                    if ((v353 - v355) >= 0x10)
                    {
                      v499 = v388 & 0xFFFFFFFFFFFFFFFCLL;
                      v500 = vdupq_lane_s32(*v299.f32, 0);
                      v501 = (v353 + 4 * v327);
                      v502 = (v355 + 4 * v327);
                      v503 = (v352 + 4 * v327);
                      v504 = &v615[4 * v327];
                      v505 = (v354 + 4 * v327);
                      v506 = v388 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v507 = *v505++;
                        v508 = v507;
                        v509 = *v504++;
                        v510 = v509;
                        *v503++ = vsubq_f32(v508, v509);
                        v511 = vcgtq_f32(v500, v509);
                        v512 = *v502++;
                        *v501++ = vmulq_f32(vmulq_n_f32(v512, v582), vbslq_s8(v511, v500, v510));
                        v506 -= 4;
                      }

                      while (v506);
                      v234 = v10;
                      if (v388 == v499)
                      {
                        goto LABEL_354;
                      }

                      v327 += v499;
                    }
                  }
                }

                v389 = v387 - v327;
                v390 = (v353 + 4 * v327);
                v391 = (v355 + 4 * v327);
                v392 = (v352 + 4 * v327);
                v393 = &v615[4 * v327];
                v394 = (v354 + 4 * v327);
                do
                {
                  v395 = *v394++;
                  v396 = v395;
                  v397 = *v393++;
                  v398 = v397;
                  *v392++ = v396 - v397;
                  v374 = v397 < v299.f32[0];
                  v399 = *v391++;
                  v400 = v399;
                  if (v374)
                  {
                    v398 = v299.f32[0];
                  }

                  *v390++ = (v400 * v357) * v398;
                  --v389;
                }

                while (v389);
LABEL_354:
                v401 = v347[1];
                v402 = *(v401 + 8);
                v403 = *(v348[1] + 8);
                v404 = *(*(v349 + 8) + 8);
                v405 = *(v350[1] + 8);
                v406 = *(v234 + 48);
                if (!v406)
                {
                  goto LABEL_374;
                }

                if (v406 >= 8 && ((v403 - v402) >= 0x10 ? (v407 = (v402 - v404) >= 0x10) : (v407 = 0), v407 ? (v408 = (v405 - v402) >= 0x10) : (v408 = 0), v408 ? (v409 = (v403 - v404) >= 0x10) : (v409 = 0), v409 ? (v410 = (v403 - v405) >= 0x10) : (v410 = 0), v410))
                {
                  v411 = v406 & 0xFFFFFFFFFFFFFFFCLL;
                  v540 = *(*(v349 + 8) + 8);
                  v541 = vdupq_lane_s32(*v299.f32, 0);
                  v542 = *(v401 + 8);
                  v543 = *(v350[1] + 8);
                  v544 = *(v348[1] + 8);
                  v545 = v406 & 0xFFFFFFFFFFFFFFFCLL;
                  do
                  {
                    v546 = *v540++;
                    v547 = v546;
                    v548 = *v339++;
                    v549 = v548;
                    *v542++ = vsubq_f32(v547, v548);
                    v550 = vcgtq_f32(v541, v548);
                    v551 = *v543++;
                    *v544++ = vmulq_f32(vmulq_n_f32(v551, v357), vbslq_s8(v550, v541, v549));
                    v545 -= 4;
                  }

                  while (v545);
                  if (v406 == v411)
                  {
                    goto LABEL_374;
                  }
                }

                else
                {
                  v411 = 0;
                }

                v412 = v406 - v411;
                v413 = 4 * v411;
                v414 = (v403 + 4 * v411);
                v415 = (v405 + v413);
                v416 = (v402 + v413);
                v417 = &v615[v413 + 1472];
                v418 = (v404 + v413);
                do
                {
                  v419 = *v418++;
                  v420 = v419;
                  v421 = *v417++;
                  v422 = v421;
                  *v416++ = v420 - v421;
                  v374 = v421 < v299.f32[0];
                  v423 = *v415++;
                  v424 = v423;
                  if (v374)
                  {
                    v422 = v299.f32[0];
                  }

                  *v414++ = (v424 * v357) * v422;
                  --v412;
                }

                while (v412);
LABEL_374:
                v425 = v333 - v406;
                if (v333 <= v406)
                {
                  goto LABEL_383;
                }

                if (v425 >= 8 && (v403 - v402) >= 0x20)
                {
                  v426 = v425 & 0xFFFFFFFFFFFFFFF8;
                  v427 = (4 * v406 + v403 + 16);
                  v428 = (v402 + 4 * v406);
                  v429 = vdupq_n_s32(0x49742400u);
                  v430 = v425 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    *v428 = 0uLL;
                    v428[1] = 0uLL;
                    v428 += 2;
                    v427[-1] = v429;
                    *v427 = v429;
                    v427 += 2;
                    v430 -= 8;
                  }

                  while (v430);
                  if (v425 == v426)
                  {
LABEL_383:
                    v435 = *(v401 + 16);
                    v436 = v435 - v333;
                    if (v435 <= v333)
                    {
                      goto LABEL_389;
                    }

                    if (v436 >= 8 && (v403 - v402) >= 0x10)
                    {
                      if ((v402 - v404) < 0x10 || (v405 - v402) < 0x10 || (v403 - v404) < 0x10)
                      {
                        v234 = v10;
                        v357 = v582;
                      }

                      else
                      {
                        v234 = v10;
                        v357 = v582;
                        if ((v403 - v405) >= 0x10)
                        {
                          v513 = v436 & 0xFFFFFFFFFFFFFFFCLL;
                          v514 = vdupq_lane_s32(*v299.f32, 0);
                          v515 = (v403 + 4 * v333);
                          v516 = (v405 + 4 * v333);
                          v517 = (v402 + 4 * v333);
                          v518 = &v615[4 * v333 + 1472];
                          v519 = (v404 + 4 * v333);
                          v520 = v436 & 0xFFFFFFFFFFFFFFFCLL;
                          do
                          {
                            v521 = *v519++;
                            v522 = v521;
                            v523 = *v518++;
                            v524 = v523;
                            *v517++ = vsubq_f32(v522, v523);
                            v525 = vcgtq_f32(v514, v523);
                            v526 = *v516++;
                            *v515++ = vmulq_f32(vmulq_n_f32(v526, v582), vbslq_s8(v525, v514, v524));
                            v520 -= 4;
                          }

                          while (v520);
                          v234 = v10;
                          if (v436 == v513)
                          {
                            goto LABEL_389;
                          }

                          v333 += v513;
                        }
                      }
                    }

                    v437 = v435 - v333;
                    v438 = (v403 + 4 * v333);
                    v439 = (v405 + 4 * v333);
                    v440 = (v402 + 4 * v333);
                    v441 = &v615[4 * v333 + 1472];
                    v442 = (v404 + 4 * v333);
                    do
                    {
                      v443 = *v442++;
                      v444 = v443;
                      v445 = *v441++;
                      v446 = v445;
                      *v440++ = v444 - v445;
                      v374 = v445 < v299.f32[0];
                      v447 = *v439++;
                      v448 = v447;
                      if (v374)
                      {
                        v446 = v299.f32[0];
                      }

                      *v438++ = (v448 * v357) * v446;
                      --v437;
                    }

                    while (v437);
LABEL_389:
                    v449 = v347[2];
                    v450 = *(v449 + 8);
                    v451 = *(v348[2] + 8);
                    v452 = *(*(v349 + 16) + 8);
                    v453 = *(v350[2] + 8);
                    v454 = *(v234 + 56);
                    if (!v454)
                    {
                      goto LABEL_409;
                    }

                    if (v454 >= 8 && (v451 - v450 >= 0x10 ? (v455 = (v450 - v452) >= 0x10) : (v455 = 0), v455 ? (v456 = v453 - v450 >= 0x10) : (v456 = 0), v456 ? (v457 = (v451 - v452) >= 0x10) : (v457 = 0), v457 ? (v458 = (v451 - v453) >= 0x10) : (v458 = 0), v458))
                    {
                      v459 = v454 & 0xFFFFFFFFFFFFFFFCLL;
                      v552 = v452;
                      v553 = vdupq_lane_s32(*v299.f32, 0);
                      v554 = *(v449 + 8);
                      v555 = v453;
                      v556 = v451;
                      v557 = v454 & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v558 = *v552++;
                        v559 = v558;
                        v560 = *v346++;
                        v561 = v560;
                        *v554++ = vsubq_f32(v559, v560);
                        v562 = vcgtq_f32(v553, v560);
                        v563 = *v555++;
                        *v556++ = vmulq_f32(vmulq_n_f32(v563, v357), vbslq_s8(v562, v553, v561));
                        v557 -= 4;
                      }

                      while (v557);
                      if (v454 == v459)
                      {
                        goto LABEL_409;
                      }
                    }

                    else
                    {
                      v459 = 0;
                    }

                    v460 = v454 - v459;
                    v461 = v459;
                    v462 = &v451->f32[v459];
                    v463 = &v453->f32[v461];
                    v464 = (v450 + v461 * 4);
                    v465 = &v615[v461 * 4 + 2944];
                    v466 = &v452->f32[v461];
                    do
                    {
                      v467 = *v466++;
                      v468 = v467;
                      v469 = *v465++;
                      v470 = v469;
                      *v464++ = v468 - v469;
                      v374 = v469 < v299.f32[0];
                      v471 = *v463++;
                      v472 = v471;
                      if (v374)
                      {
                        v470 = v299.f32[0];
                      }

                      *v462++ = (v472 * v357) * v470;
                      --v460;
                    }

                    while (v460);
LABEL_409:
                    v473 = v340 - v454;
                    if (v340 <= v454)
                    {
                      goto LABEL_418;
                    }

                    if (v473 >= 8 && v451 - v450 >= 0x20)
                    {
                      v474 = v473 & 0xFFFFFFFFFFFFFFF8;
                      v475 = &v451[1].f32[v454];
                      v476 = (v450 + 4 * v454);
                      v477 = vdupq_n_s32(0x49742400u);
                      v478 = v473 & 0xFFFFFFFFFFFFFFF8;
                      do
                      {
                        *v476 = 0uLL;
                        v476[1] = 0uLL;
                        v476 += 2;
                        v475[-1] = v477;
                        *v475 = v477;
                        v475 += 2;
                        v478 -= 8;
                      }

                      while (v478);
                      if (v473 == v474)
                      {
LABEL_418:
                        v483 = *(v449 + 16);
                        v484 = v483 - v340;
                        if (v483 <= v340)
                        {
                          return 0;
                        }

                        if (v484 >= 8 && v451 - v450 >= 0x10)
                        {
                          if ((v450 - v452) >= 0x10 && v453 - v450 >= 0x10 && (v451 - v452) >= 0x10)
                          {
                            v357 = v582;
                            if ((v451 - v453) < 0x10)
                            {
                              goto LABEL_461;
                            }

                            v485 = v484 & 0xFFFFFFFFFFFFFFFCLL;
                            v486 = vdupq_lane_s32(*v299.f32, 0);
                            v487 = (v451 + 4 * v340);
                            v488 = (v453 + 4 * v340);
                            v489 = (v450 + 4 * v340);
                            v490 = &v615[4 * v340 + 2944];
                            v491 = (v452 + 4 * v340);
                            v492 = v484 & 0xFFFFFFFFFFFFFFFCLL;
                            do
                            {
                              v493 = *v491++;
                              v494 = v493;
                              v495 = *v490++;
                              v496 = v495;
                              *v489++ = vsubq_f32(v494, v495);
                              v497 = vcgtq_f32(v486, v495);
                              v498 = *v488++;
                              *v487++ = vmulq_f32(vmulq_n_f32(v498, v582), vbslq_s8(v497, v486, v496));
                              v492 -= 4;
                            }

                            while (v492);
                            if (v484 == v485)
                            {
                              return 0;
                            }

                            v340 += v485;
                          }

                          v357 = v582;
                        }

LABEL_461:
                        v564 = v483 - v340;
                        v565 = &v451->f32[v340];
                        v566 = &v453->f32[v340];
                        v567 = (v450 + 4 * v340);
                        v568 = &v615[4 * v340 + 2944];
                        v569 = &v452->f32[v340];
                        result = 0;
                        do
                        {
                          v570 = *v569++;
                          v571 = v570;
                          v572 = *v568++;
                          v573 = v572;
                          *v567++ = v571 - v572;
                          v374 = v572 < v299.f32[0];
                          v574 = *v566++;
                          v575 = v574;
                          if (v374)
                          {
                            v573 = v299.f32[0];
                          }

                          *v565++ = (v575 * v357) * v573;
                          --v564;
                        }

                        while (v564);
                        return result;
                      }

                      v454 += v474;
                    }

                    v479 = v340 - v454;
                    v480 = 4 * v454;
                    v481 = &v451->i32[v454];
                    v482 = (v450 + v480);
                    do
                    {
                      *v482++ = 0;
                      *v481++ = 1232348160;
                      --v479;
                    }

                    while (v479);
                    goto LABEL_418;
                  }

                  v406 += v426;
                }

                v431 = v333 - v406;
                v432 = 4 * v406;
                v433 = (v403 + 4 * v406);
                v434 = (v402 + v432);
                do
                {
                  *v434++ = 0;
                  *v433++ = 1232348160;
                  --v431;
                }

                while (v431);
                goto LABEL_383;
              }

              v356 += v378;
            }

            v383 = v327 - v356;
            v384 = 4 * v356;
            v385 = (v353 + 4 * v356);
            v386 = (v352 + v384);
            do
            {
              *v386++ = 0;
              *v385++ = 1232348160;
              --v383;
            }

            while (v383);
            goto LABEL_348;
          }
        }

        else
        {
          v341 = 0;
        }

        v344 = v340 - v341;
        v345 = &v619[v341];
        do
        {
          *v345++ = v302.i32[0];
          --v344;
        }

        while (v344);
        goto LABEL_317;
      }
    }
  }

  peridot_depth_log("Wrong Configuration: LEDTailStart");
  return 4;
}

double peridot::PeridotDXPPreProcessor::PeridotDXPPreProcessor(peridot::PeridotDXPPreProcessor *this)
{
  *this = 257;
  *(this + 2) = 0;
  *(this + 97) = 0;
  *(this + 99) = 0;
  *(this + 98) = 0;
  *(this + 402) = 257;
  *(this + 806) = 0;
  result = 0.0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1048) = 0u;
  *(this + 2279) = 0u;
  *(this + 2280) = 0u;
  *(this + 2281) = 0u;
  *(this + 2333) = 0u;
  *(this + 2334) = 0u;
  *(this + 2335) = 0u;
  *(this + 2336) = 0u;
  *(this + 2337) = 0u;
  *(this + 2338) = 0u;
  *(this + 2339) = 0u;
  *(this + 2340) = 0u;
  *(this + 2341) = 0u;
  *(this + 2342) = 0u;
  *(this + 2343) = 0u;
  *(this + 2344) = 0u;
  *(this + 2345) = 0u;
  *(this + 2346) = 0u;
  *(this + 2347) = 0u;
  *(this + 2348) = 0u;
  *(this + 2349) = 0u;
  *(this + 2350) = 0u;
  *(this + 2351) = 0u;
  *(this + 2352) = 0u;
  *(this + 2353) = 0u;
  *(this + 2354) = 0u;
  *(this + 2355) = 0u;
  *(this + 2356) = 0u;
  *(this + 2357) = 0u;
  *(this + 2358) = 0u;
  *(this + 2359) = 0u;
  return result;
}

{
  *this = 257;
  *(this + 2) = 0;
  *(this + 97) = 0;
  *(this + 99) = 0;
  *(this + 98) = 0;
  *(this + 402) = 257;
  *(this + 806) = 0;
  result = 0.0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1048) = 0u;
  *(this + 2279) = 0u;
  *(this + 2280) = 0u;
  *(this + 2281) = 0u;
  *(this + 2333) = 0u;
  *(this + 2334) = 0u;
  *(this + 2335) = 0u;
  *(this + 2336) = 0u;
  *(this + 2337) = 0u;
  *(this + 2338) = 0u;
  *(this + 2339) = 0u;
  *(this + 2340) = 0u;
  *(this + 2341) = 0u;
  *(this + 2342) = 0u;
  *(this + 2343) = 0u;
  *(this + 2344) = 0u;
  *(this + 2345) = 0u;
  *(this + 2346) = 0u;
  *(this + 2347) = 0u;
  *(this + 2348) = 0u;
  *(this + 2349) = 0u;
  *(this + 2350) = 0u;
  *(this + 2351) = 0u;
  *(this + 2352) = 0u;
  *(this + 2353) = 0u;
  *(this + 2354) = 0u;
  *(this + 2355) = 0u;
  *(this + 2356) = 0u;
  *(this + 2357) = 0u;
  *(this + 2358) = 0u;
  *(this + 2359) = 0u;
  return result;
}

void peridot::PeridotDXPPreProcessor::~PeridotDXPPreProcessor(peridot::PeridotDXPPreProcessor *this)
{
  v2 = this + 36464;
  v3 = *(this + 4717);
  if (v3)
  {
    v4 = *(this + 4718);
    v5 = *(this + 4717);
    if (v4 != v3)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v3;
        v7 = v8;
      }

      while (!v10);
      v5 = *(v2 + 159);
    }

    *(v2 + 160) = v3;
    operator delete(v5);
  }

  v11 = *(v2 + 156);
  if (v11)
  {
    v12 = *(v2 + 157);
    v13 = *(v2 + 156);
    if (v12 != v11)
    {
      v14 = v12 - 3;
      v15 = v12 - 3;
      v16 = v12 - 3;
      do
      {
        v17 = *v16;
        v16 -= 3;
        (*v17)(v15);
        v14 -= 3;
        v10 = v15 == v11;
        v15 = v16;
      }

      while (!v10);
      v13 = *(v2 + 156);
    }

    *(v2 + 157) = v11;
    operator delete(v13);
  }

  v18 = *(v2 + 153);
  if (v18)
  {
    v19 = *(v2 + 154);
    v20 = *(v2 + 153);
    if (v19 != v18)
    {
      v21 = v19 - 3;
      v22 = v19 - 3;
      v23 = v19 - 3;
      do
      {
        v24 = *v23;
        v23 -= 3;
        (*v24)(v22);
        v21 -= 3;
        v10 = v22 == v18;
        v22 = v23;
      }

      while (!v10);
      v20 = *(v2 + 153);
    }

    *(v2 + 154) = v18;
    operator delete(v20);
  }

  v25 = *(v2 + 150);
  if (v25)
  {
    v26 = *(v2 + 151);
    v27 = *(v2 + 150);
    if (v26 != v25)
    {
      v28 = v26 - 3;
      v29 = v26 - 3;
      v30 = v26 - 3;
      do
      {
        v31 = *v30;
        v30 -= 3;
        (*v31)(v29);
        v28 -= 3;
        v10 = v29 == v25;
        v29 = v30;
      }

      while (!v10);
      v27 = *(v2 + 150);
    }

    *(v2 + 151) = v25;
    operator delete(v27);
  }

  v32 = *(v2 + 147);
  if (v32)
  {
    v33 = *(v2 + 148);
    v34 = *(v2 + 147);
    if (v33 != v32)
    {
      v35 = v33 - 3;
      v36 = v33 - 3;
      v37 = v33 - 3;
      do
      {
        v38 = *v37;
        v37 -= 3;
        (*v38)(v36);
        v35 -= 3;
        v10 = v36 == v32;
        v36 = v37;
      }

      while (!v10);
      v34 = *(v2 + 147);
    }

    *(v2 + 148) = v32;
    operator delete(v34);
  }

  v39 = *(v2 + 144);
  if (v39)
  {
    v40 = *(v2 + 145);
    v41 = *(v2 + 144);
    if (v40 != v39)
    {
      v42 = v40 - 3;
      v43 = v40 - 3;
      v44 = v40 - 3;
      do
      {
        v45 = *v44;
        v44 -= 3;
        (*v45)(v43);
        v42 -= 3;
        v10 = v43 == v39;
        v43 = v44;
      }

      while (!v10);
      v41 = *(v2 + 144);
    }

    *(v2 + 145) = v39;
    operator delete(v41);
  }

  v46 = *(v2 + 141);
  if (v46)
  {
    v47 = *(v2 + 142);
    v48 = *(v2 + 141);
    if (v47 != v46)
    {
      v49 = v47 - 3;
      v50 = v47 - 3;
      v51 = v47 - 3;
      do
      {
        v52 = *v51;
        v51 -= 3;
        (*v52)(v50);
        v49 -= 3;
        v10 = v50 == v46;
        v50 = v51;
      }

      while (!v10);
      v48 = *(v2 + 141);
    }

    *(v2 + 142) = v46;
    operator delete(v48);
  }

  v53 = *(v2 + 138);
  if (v53)
  {
    v54 = *(v2 + 139);
    v55 = *(v2 + 138);
    if (v54 != v53)
    {
      v56 = v54 - 3;
      v57 = v54 - 3;
      v58 = v54 - 3;
      do
      {
        v59 = *v58;
        v58 -= 3;
        (*v59)(v57);
        v56 -= 3;
        v10 = v57 == v53;
        v57 = v58;
      }

      while (!v10);
      v55 = *(v2 + 138);
    }

    *(v2 + 139) = v53;
    operator delete(v55);
  }

  v60 = *(v2 + 135);
  if (v60)
  {
    v61 = *(v2 + 136);
    v62 = *(v2 + 135);
    if (v61 != v60)
    {
      v63 = v61 - 3;
      v64 = v61 - 3;
      v65 = v61 - 3;
      do
      {
        v66 = *v65;
        v65 -= 3;
        (*v66)(v64);
        v63 -= 3;
        v10 = v64 == v60;
        v64 = v65;
      }

      while (!v10);
      v62 = *(v2 + 135);
    }

    *(v2 + 136) = v60;
    operator delete(v62);
  }

  v67 = *(v2 + 132);
  if (v67)
  {
    v68 = *(v2 + 133);
    v69 = *(v2 + 132);
    if (v68 != v67)
    {
      v70 = v68 - 3;
      v71 = v68 - 3;
      v72 = v68 - 3;
      do
      {
        v73 = *v72;
        v72 -= 3;
        (*v73)(v71);
        v70 -= 3;
        v10 = v71 == v67;
        v71 = v72;
      }

      while (!v10);
      v69 = *(v2 + 132);
    }

    *(v2 + 133) = v67;
    operator delete(v69);
  }

  v74 = *(v2 + 129);
  if (v74)
  {
    v75 = *(v2 + 130);
    v76 = *(v2 + 129);
    if (v75 != v74)
    {
      v77 = v75 - 3;
      v78 = v75 - 3;
      v79 = v75 - 3;
      do
      {
        v80 = *v79;
        v79 -= 3;
        (*v80)(v78);
        v77 -= 3;
        v10 = v78 == v74;
        v78 = v79;
      }

      while (!v10);
      v76 = *(v2 + 129);
    }

    *(v2 + 130) = v74;
    operator delete(v76);
  }

  v81 = *(v2 + 126);
  if (v81)
  {
    v82 = *(v2 + 127);
    v83 = *(v2 + 126);
    if (v82 != v81)
    {
      v84 = v82 - 3;
      v85 = v82 - 3;
      v86 = v82 - 3;
      do
      {
        v87 = *v86;
        v86 -= 3;
        (*v87)(v85);
        v84 -= 3;
        v10 = v85 == v81;
        v85 = v86;
      }

      while (!v10);
      v83 = *(v2 + 126);
    }

    *(v2 + 127) = v81;
    operator delete(v83);
  }

  v88 = *(v2 + 123);
  if (v88)
  {
    v89 = *(v2 + 124);
    v90 = *(v2 + 123);
    if (v89 != v88)
    {
      v91 = v89 - 3;
      v92 = v89 - 3;
      v93 = v89 - 3;
      do
      {
        v94 = *v93;
        v93 -= 3;
        (*v94)(v92);
        v91 -= 3;
        v10 = v92 == v88;
        v92 = v93;
      }

      while (!v10);
      v90 = *(v2 + 123);
    }

    *(v2 + 124) = v88;
    operator delete(v90);
  }

  v95 = *(v2 + 120);
  if (v95)
  {
    v96 = *(v2 + 121);
    v97 = *(v2 + 120);
    if (v96 != v95)
    {
      v98 = v96 - 3;
      v99 = v96 - 3;
      v100 = v96 - 3;
      do
      {
        v101 = *v100;
        v100 -= 3;
        (*v101)(v99);
        v98 -= 3;
        v10 = v99 == v95;
        v99 = v100;
      }

      while (!v10);
      v97 = *(v2 + 120);
    }

    *(v2 + 121) = v95;
    operator delete(v97);
  }

  v102 = *(v2 + 117);
  if (v102)
  {
    v103 = *(v2 + 118);
    v104 = *(v2 + 117);
    if (v103 != v102)
    {
      v105 = v103 - 3;
      v106 = v103 - 3;
      v107 = v103 - 3;
      do
      {
        v108 = *v107;
        v107 -= 3;
        (*v108)(v106);
        v105 -= 3;
        v10 = v106 == v102;
        v106 = v107;
      }

      while (!v10);
      v104 = *(v2 + 117);
    }

    *(v2 + 118) = v102;
    operator delete(v104);
  }

  v109 = *(v2 + 114);
  if (v109)
  {
    v110 = *(v2 + 115);
    v111 = *(v2 + 114);
    if (v110 != v109)
    {
      v112 = v110 - 3;
      v113 = v110 - 3;
      v114 = v110 - 3;
      do
      {
        v115 = *v114;
        v114 -= 3;
        (*v115)(v113);
        v112 -= 3;
        v10 = v113 == v109;
        v113 = v114;
      }

      while (!v10);
      v111 = *(v2 + 114);
    }

    *(v2 + 115) = v109;
    operator delete(v111);
  }

  v116 = *(v2 + 111);
  if (v116)
  {
    v117 = *(v2 + 112);
    v118 = *(v2 + 111);
    if (v117 != v116)
    {
      v119 = v117 - 3;
      v120 = v117 - 3;
      v121 = v117 - 3;
      do
      {
        v122 = *v121;
        v121 -= 3;
        (*v122)(v120);
        v119 -= 3;
        v10 = v120 == v116;
        v120 = v121;
      }

      while (!v10);
      v118 = *(v2 + 111);
    }

    *(v2 + 112) = v116;
    operator delete(v118);
  }

  v123 = *(v2 + 108);
  if (v123)
  {
    v124 = *(v2 + 109);
    v125 = *(v2 + 108);
    if (v124 != v123)
    {
      v126 = v124 - 3;
      v127 = v124 - 3;
      v128 = v124 - 3;
      do
      {
        v129 = *v128;
        v128 -= 3;
        (*v129)(v127);
        v126 -= 3;
        v10 = v127 == v123;
        v127 = v128;
      }

      while (!v10);
      v125 = *(v2 + 108);
    }

    *(v2 + 109) = v123;
    operator delete(v125);
  }

  v130 = *(v2 + 3);
  if (v130)
  {
    *(v2 + 4) = v130;
    operator delete(v130);
  }

  v131 = *v2;
  if (*v2)
  {
    *(v2 + 1) = v131;
    operator delete(v131);
  }

  peridot::PeridotDXPBaselineRemoval::~PeridotDXPBaselineRemoval((this + 56));
}

uint64_t peridot::PeridotDXPPreProcessor::init(uint64_t a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = a3;
  *(a1 + 2) = BYTE2(a3);
  *(a1 + 8) = xmmword_2247A45F0;
  *(a1 + 24) = xmmword_2247A50D0;
  *(a1 + 40) = vdupq_n_s64(1uLL);
  *(a1 + 804) = a3;
  *(a1 + 806) = BYTE2(a3);
  LODWORD(v19) = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v4 = (a1 + 296);
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  result = peridot::PeridotDXPBaselineRemoval::strayPeakUpdate((a1 + 56), flt_2247B946C, &v18, flt_2247B9478, &v21);
  if (!result)
  {
    *(a1 + 456) = 1082130432;
    *(a1 + 488) = xmmword_2247A5080;
    *(a1 + 504) = xmmword_2247A5090;
    *(a1 + 520) = xmmword_2247A5070;
    v6 = v4[9];
    *(a1 + 664) = v4[8];
    *(a1 + 680) = v6;
    v7 = v4[5];
    *(a1 + 600) = v4[4];
    *(a1 + 616) = v7;
    v8 = v4[7];
    *(a1 + 632) = v4[6];
    *(a1 + 648) = v8;
    v9 = v4[1];
    *(a1 + 536) = *v4;
    *(a1 + 552) = v9;
    v10 = v4[3];
    *(a1 + 568) = v4[2];
    *(a1 + 584) = v10;
    v11 = v4[11];
    *(a1 + 696) = v4[10];
    *(a1 + 712) = v11;
    v12 = v4[13];
    *(a1 + 728) = v4[12];
    *(a1 + 744) = v12;
    *(a1 + 760) = v4[14];
    *(a1 + 216) = 1082130432;
    *(a1 + 224) = vdupq_n_s64(0x5CuLL);
    *(a1 + 240) = xmmword_2247A50A0;
    *(a1 + 288) = 12;
    *(a1 + 256) = xmmword_2247A50C0;
    *(a1 + 272) = xmmword_2247A50B0;
    *(a1 + 1096) = 1058642330;
    v13 = xmmword_2247A4650;
    v14 = (a1 + 1120);
    v15 = 368;
    v16 = vdupq_n_s64(2uLL);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v14[-1] = v13;
      *v14 = vaddq_s64(v13, v16);
      v13 = vaddq_s64(v13, v17);
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v18;
    LOBYTE(v22) = 0;
    operator new();
  }

  return result;
}

void sub_2247631FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXPPreProcessor::setRunMode(uint64_t result, int a2)
{
  *result = a2;
  *(result + 2) = BYTE2(a2);
  *(result + 804) = a2;
  *(result + 806) = BYTE2(a2);
  return result;
}

uint64_t peridot::PeridotDXPPreProcessor::configure(peridot::PeridotDXPPreProcessor *this, const peridot::PeridotDXPCalib *a2)
{
  v4 = this + 36432;
  *(this + 9330) = *a2;
  *(this + 37325) = *(a2 + 5);
  v5 = *(a2 + 4);
  *(this + 37324) = v5;
  *(this + 9108) = *(a2 + 862) * v5;
  *(this + 9109) = *(a2 + 863) * v5;
  v6 = *(a2 + 864);
  *(this + 9110) = v6 * v5;
  v7 = *(a2 + 431);
  *(this + 9113) = *(a2 + 864);
  *(this + 36444) = v7;
  LOBYTE(v6) = *(a2 + 6);
  v8 = *(a2 + 874) * LODWORD(v6);
  *(this + 9114) = v8;
  *(this + 9115) = v8;
  *(this + 37317) = *(a2 + 3525);
  *(this + 9328) = *(a2 + 880);
  *(this + 37316) = *(a2 + 3524);
  v9 = (this + 36464);
  if (v9 != (a2 + 3920))
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v9, *(a2 + 490), *(a2 + 491), (*(a2 + 491) - *(a2 + 490)) >> 2);
  }

  v10 = *(a2 + 484);
  if (*(a2 + 485) - v10 != 800 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v63[0] = 0;
    _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "PeridotDXPPreProcessor::configure: _DTMmod_LSB wrong size", v63, 2u);
    v10 = *(a2 + 484);
  }

  if (((this + 36512) - v10) > 0x1F)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v17 = vsubq_f32(_Q0, v10[1]);
    *(this + 2282) = vsubq_f32(_Q0, *v10);
    *(this + 2283) = v17;
    v18 = vsubq_f32(_Q0, v10[3]);
    *(this + 2284) = vsubq_f32(_Q0, v10[2]);
    *(this + 2285) = v18;
    v19 = vsubq_f32(_Q0, v10[5]);
    *(this + 2286) = vsubq_f32(_Q0, v10[4]);
    *(this + 2287) = v19;
    v20 = vsubq_f32(_Q0, v10[7]);
    *(this + 2288) = vsubq_f32(_Q0, v10[6]);
    *(this + 2289) = v20;
    v21 = vsubq_f32(_Q0, v10[9]);
    *(this + 2290) = vsubq_f32(_Q0, v10[8]);
    *(this + 2291) = v21;
    v22 = vsubq_f32(_Q0, v10[11]);
    *(this + 2292) = vsubq_f32(_Q0, v10[10]);
    *(this + 2293) = v22;
    v23 = vsubq_f32(_Q0, v10[13]);
    *(this + 2294) = vsubq_f32(_Q0, v10[12]);
    *(this + 2295) = v23;
    v24 = vsubq_f32(_Q0, v10[15]);
    *(this + 2296) = vsubq_f32(_Q0, v10[14]);
    *(this + 2297) = v24;
    v25 = vsubq_f32(_Q0, v10[17]);
    *(this + 2298) = vsubq_f32(_Q0, v10[16]);
    *(this + 2299) = v25;
    v26 = vsubq_f32(_Q0, v10[19]);
    *(this + 2300) = vsubq_f32(_Q0, v10[18]);
    *(this + 2301) = v26;
    v27 = vsubq_f32(_Q0, v10[21]);
    *(this + 2302) = vsubq_f32(_Q0, v10[20]);
    *(this + 2303) = v27;
    v28 = vsubq_f32(_Q0, v10[23]);
    *(this + 2304) = vsubq_f32(_Q0, v10[22]);
    *(this + 2305) = v28;
    v29 = vsubq_f32(_Q0, v10[25]);
    *(this + 2306) = vsubq_f32(_Q0, v10[24]);
    *(this + 2307) = v29;
    v30 = vsubq_f32(_Q0, v10[27]);
    *(this + 2308) = vsubq_f32(_Q0, v10[26]);
    *(this + 2309) = v30;
    v31 = vsubq_f32(_Q0, v10[29]);
    *(this + 2310) = vsubq_f32(_Q0, v10[28]);
    *(this + 2311) = v31;
    v32 = vsubq_f32(_Q0, v10[31]);
    *(this + 2312) = vsubq_f32(_Q0, v10[30]);
    *(this + 2313) = v32;
    v33 = vsubq_f32(_Q0, v10[33]);
    *(this + 2314) = vsubq_f32(_Q0, v10[32]);
    *(this + 2315) = v33;
    v34 = vsubq_f32(_Q0, v10[35]);
    *(this + 2316) = vsubq_f32(_Q0, v10[34]);
    *(this + 2317) = v34;
    v35 = vsubq_f32(_Q0, v10[37]);
    *(this + 2318) = vsubq_f32(_Q0, v10[36]);
    *(this + 2319) = v35;
    v36 = vsubq_f32(_Q0, v10[39]);
    *(this + 2320) = vsubq_f32(_Q0, v10[38]);
    *(this + 2321) = v36;
    v37 = vsubq_f32(_Q0, v10[41]);
    *(this + 2322) = vsubq_f32(_Q0, v10[40]);
    *(this + 2323) = v37;
    v38 = vsubq_f32(_Q0, v10[43]);
    *(this + 2324) = vsubq_f32(_Q0, v10[42]);
    *(this + 2325) = v38;
    v39 = vsubq_f32(_Q0, v10[45]);
    *(this + 2326) = vsubq_f32(_Q0, v10[44]);
    *(this + 2327) = v39;
    v40 = vsubq_f32(_Q0, v10[47]);
    *(this + 2328) = vsubq_f32(_Q0, v10[46]);
    *(this + 2329) = v40;
    v41 = vsubq_f32(_Q0, v10[48]);
    v42 = vsubq_f32(_Q0, v10[49]);
    *(this + 2330) = v41;
    *(this + 2331) = v42;
  }

  else
  {
    for (i = 0; i != 200; ++i)
    {
      *(this + i * 4 + 36512) = 1.0 - v10->f32[i];
    }
  }

  v43 = *(v4 + 7);
  v44 = *(a2 + 487);
  v45 = *(a2 + 488) - v44;
  v46 = (*(v4 + 8) - v43) >> 2;
  if (v45 >> 2 <= v46)
  {
    if (v45 >> 2 < v46)
    {
      *(v4 + 8) = v43 + v45;
    }
  }

  else
  {
    std::vector<float>::__append((v4 + 56), (v45 >> 2) - v46);
    v44 = *(a2 + 487);
  }

  v47 = *(a2 + 488);
  if (v47 != v44)
  {
    v48 = 0;
    v49 = (v47 - v44) >> 2;
    v50 = *(v4 + 7);
    if (v49 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v49;
    }

    if (v49 < 8)
    {
      goto LABEL_24;
    }

    if ((v50 - v44) <= 0x1F)
    {
      goto LABEL_24;
    }

    v48 = v51 & 0xFFFFFFFFFFFFFFF8;
    v52 = v50 + 1;
    v53 = v44 + 1;
    __asm { FMOV            V0.4S, #1.0 }

    v55 = v51 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v56 = vsubq_f32(_Q0, *v53);
      v52[-1] = vsubq_f32(_Q0, v53[-1]);
      *v52 = v56;
      v52 += 2;
      v53 += 2;
      v55 -= 8;
    }

    while (v55);
    if (v49 != v48)
    {
LABEL_24:
      v57 = v51 - v48;
      v58 = v48;
      v59 = &v50->f32[v48];
      v60 = &v44->f32[v58];
      do
      {
        v61 = *v60++;
        *v59++ = 1.0 - v61;
        --v57;
      }

      while (v57);
    }
  }

  return peridot::PeridotDXPBaselineRemoval::configure((this + 56), a2);
}

void peridot::PeridotDXPPreProcessor::process(uint64_t a1)
{
  if (*(a1 + 37325))
  {
    operator new();
  }

  operator new();
}

void sub_2247648A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  std::__exception_guard_exceptions<std::vector<peridot::ImgHistogram>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a28);
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100](&a34);
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 192));
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 168));
  std::vector<peridot::ImgHistogram>::~vector[abi:ne200100]((v34 - 144));
  _Unwind_Resume(a1);
}

uint64_t peridot::PeridotDXPPreProcessor::process_inner(peridot::PeridotDXPPreProcessor *this, void *a2, void *a3, void *a4, const peridot::ImgHistogram **a5, const peridot::ImgHistogram **a6, int a7, int *a8, float a9, uint64_t *a10)
{
  v10 = a2;
  v11 = this;
  v89 = *MEMORY[0x277D85DE8];
  v12 = this + 36456;
  v13 = 0.0;
  if ((a9 + -3.0) < -2.0)
  {
    v14 = *(this + 37325);
    if (*(this + 37325))
    {
      v15 = *a2;
      v16 = v14;
      if (v14 == 1)
      {
        v17 = 0;
        v18 = 1.0 / v16;
LABEL_8:
        v25 = v14 - v17;
        v26 = (v15 + 24 * v17 + 8);
        do
        {
          v27 = *v26;
          v26 += 3;
          v13 = v13 + (*v27 * v18);
          --v25;
        }

        while (v25);
        goto LABEL_10;
      }

      v17 = v14 & 0xFE;
      v19 = (v15 + 32);
      v20 = 0.0;
      v21 = v17;
      v22 = 0.0;
      v18 = 1.0 / v16;
      do
      {
        v23 = *(v19 - 3);
        v24 = *v19;
        v19 += 6;
        v20 = v20 + (*v23 * v18);
        v22 = v22 + (*v24 * v18);
        v21 -= 2;
      }

      while (v21);
      v13 = v22 + v20;
      if (v17 != v14)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v28 = fminf(*a8, a8[1]);
  v29 = *(this + 9330);
  v30 = 0.0;
  if (v29 == 2)
  {
    v31 = 0.0;
    if (v28 >= -2.0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v30 = **(*a5 + 1);
    v31 = **(*a6 + 1);
    goto LABEL_19;
  }

  v32 = v29 == 1 && v28 < -2.0;
  v31 = 0.0;
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_19:
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v88 = 0;
  __src = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v72 = 0;
  v71 = 0.0;
  LODWORD(v33) = *(this + 37325);
  if (*(this + 37325))
  {
    v61 = a5;
    v62 = a6;
    v34 = 0;
    v64 = this + 36432;
    v35 = this + 36444;
    while (1)
    {
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*v10 + 24 * v34), a3, v12[858], *&v64[4 * v34], *(v11 + 8), v13, 0, (*(v12 + 127) + 24 * v34), (*(v12 + 130) + 24 * v34), &v72, &v71);
      *(&v77 + v34) = v72;
      *(&__src + v34) = v71 - **(*(v12 + 127) + 24 * v34 + 8);
      v36 = v12[868];
      if (v12[868])
      {
        break;
      }

      v46 = *(&v85 + v34);
      v40 = *(&v83 + v34);
      v48 = 0.0;
      v39 = 0.0;
      v38 = 0.0;
LABEL_29:
      *(&v85 + v34) = v46 - (v38 / v48);
      *(&v83 + v34++) = v40 - (v39 / v48);
      v33 = v12[869];
      if (v34 >= v33)
      {
        v29 = *(v12 + 216);
        a5 = v61;
        a6 = v62;
        goto LABEL_31;
      }
    }

    v37 = 0;
    v38 = 0.0;
    v39 = 0.0;
    while (1)
    {
      v41 = *(v11 + 97);
      if (v34 >= (*(v11 + 98) - v41) >> 3)
      {
        break;
      }

      v42 = v37 + v34 * v36;
      v43 = *(v41 + 8 * v34) / v36;
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*a4 + 24 * v42), a3, v12[857] + v12[856], *&v35[4 * v34], *(v11 + 16), 0.0, v43, (*(v12 + 133) + 24 * v42), (*(v12 + 136) + 24 * v42), &v72, &v71);
      v44 = v72;
      *(&v75 + v34) = (*(&v75 + v34) | v72) & 1;
      v45 = v71;
      v46 = fmaxf(*(&v85 + v34), v71);
      *(&v85 + v34) = v46;
      v47 = **(*(v12 + 133) + 24 * v42 + 8);
      if (*v11 == 1)
      {
        LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, (*a3 + 24 * v42), a3, v12[857], *&v35[4 * v34], *(v11 + 16), 0.0, v43, (*(v12 + 139) + 24 * v42), (*(v12 + 142) + 24 * v42), &v72, &v71);
        v45 = v71;
        v44 = v72;
      }

      *(&v73 + v34) = (*(&v73 + v34) | v44) & 1;
      v38 = v47 + v38;
      v40 = fmaxf(*(&v83 + v34), v45);
      *(&v83 + v34) = v40;
      v39 = **(*(v12 + 139) + 24 * v42 + 8) + v39;
      ++v37;
      v36 = v12[868];
      if (v37 >= v36)
      {
        v48 = v36;
        v10 = a2;
        goto LABEL_29;
      }
    }

    peridot_depth_log("Error in _baselineRemovalBlock.getBlrParams().priBins size");
    return 1;
  }

  else
  {
LABEL_31:
    v49 = a6;
    v70 = 0;
    v69 = 0;
    v82 = 0;
    v81 = 0;
    v68 = 0;
    v67 = 0;
    v80 = 0;
    v79 = 0;
    v50 = a5;
    if ((v29 - 1) <= 1 && *(v11 + 1) == 1)
    {
      peridot::PeridotDXPPreProcessor::equalizer(v11, *a5, a3, v12[860], *v12, *(v11 + 40), v30, 0, *(v12 + 157), *(v12 + 160), &v72, &v71);
      LOBYTE(v69) = v72;
      *&v81 = v71 - **(*(v12 + 157) + 8);
      LODWORD(this) = peridot::PeridotDXPPreProcessor::equalizer(v11, *v49, v51, v12[861], *v12, *(v11 + 40), v31, 0, *(v12 + 145), *(v12 + 148), &v72, &v71);
      LOBYTE(v67) = v72;
      *&v79 = v71 - **(*(v12 + 145) + 8);
      LODWORD(v33) = v12[869];
    }

    v52 = peridot::PeridotDXPPreProcessor::interleave(this, a2, v11 + 4687, v11 + 4684, &v77, &__src, v10, *(v11 + 3), v33, v12[858], a10);
    v54 = peridot::PeridotDXPPreProcessor::interleave(v52, v53, v11 + 4693, v11 + 4690, &v75, &v85, a4, *(v11 + 4), v12[869], v12[857] + v12[856], a10 + 25);
    if (*v11 == 1)
    {
      v54 = peridot::PeridotDXPPreProcessor::interleave(v54, v55, v11 + 4699, v11 + 4696, &v73, &v83, a3, *(v11 + 4), v12[869], v12[857], a10 + 50);
    }

    if ((*(v12 + 216) - 1) <= 1 && *(v11 + 1) == 1)
    {
      v58 = peridot::PeridotDXPPreProcessor::interleave(v54, v55, v11 + 4717, v11 + 4714, &v69, &v81, v50, *(v11 + 6), 1, v12[860], a10 + 100);
      peridot::PeridotDXPPreProcessor::interleave(v58, v59, v11 + 4705, v11 + 4702, &v67, &v79, v49, *(v11 + 6), 1, v12[861], a10 + 75);
    }

    return peridot::PeridotDXPBaselineRemoval::process((v11 + 56), a10, v56, v57);
  }
}

uint64_t peridot::PeridotDXPPreProcessor::equalizer(peridot::PeridotDXPPreProcessor *this, const peridot::ImgHistogram *a2, uint64_t a3, unsigned __int8 a4, float a5, unsigned __int8 a6, float a7, unsigned int a8, peridot::ImgHistogram *a9, peridot::ImgHistogram *a10, float32x4_t *a11, float *a12)
{
  v12 = MEMORY[0x28223BE20](this, a2, a3, a5);
  v22 = v18;
  v23 = v17;
  v24 = a12;
  v235 = *MEMORY[0x277D85DE8];
  a11->i8[0] = 0;
  if (v14)
  {
    v210 = 92;
    *v21.i32 = v14 * v19;
    v25 = *(v13 + 8);
    if ((&__src - v25) > 0x1F)
    {
      __asm { FMOV            V6.4S, #1.0 }

      v32 = vdivq_f32(_Q6, vdupq_lane_s32(v21, 0));
      v33 = vmulq_f32(v25[1], v32);
      __src = vmulq_f32(*v25, v32);
      v188 = v33;
      v34 = vmulq_f32(v25[3], v32);
      v189 = vmulq_f32(v25[2], v32);
      v190 = v34;
      v35 = vmulq_f32(v25[5], v32);
      v191 = vmulq_f32(v25[4], v32);
      v192 = v35;
      v36 = vmulq_f32(v25[7], v32);
      v193 = vmulq_f32(v25[6], v32);
      v194 = v36;
      v37 = vmulq_f32(v25[9], v32);
      v195 = vmulq_f32(v25[8], v32);
      v196 = v37;
      v38 = vmulq_f32(v25[11], v32);
      v197 = vmulq_f32(v25[10], v32);
      v198 = v38;
      v39 = vmulq_f32(v25[13], v32);
      v199 = vmulq_f32(v25[12], v32);
      v200 = v39;
      v40 = vmulq_f32(v25[15], v32);
      v201 = vmulq_f32(v25[14], v32);
      v202 = v40;
      v41 = vmulq_f32(v25[17], v32);
      v203 = vmulq_f32(v25[16], v32);
      v204 = v41;
      v42 = vmulq_f32(v25[19], v32);
      v205 = vmulq_f32(v25[18], v32);
      v206 = v42;
      v43 = vmulq_f32(v25[20], v32);
      v44 = vmulq_f32(v25[21], v32);
      v26 = 88;
      v207 = v43;
      v208 = v44;
    }

    else
    {
      v26 = 0;
    }

    v45 = v26;
    v46 = 1.0 / *v21.i32;
    do
    {
      __src.f32[v45] = v25->f32[v45] * v46;
      ++v45;
    }

    while (v45 != 92);
    v186 = 92;
    if (v15 == 1)
    {
      v47 = 0;
      v48 = v12[4558];
      v49 = *(v17 + 8);
      v50 = v20 * v46;
      v51 = 0.0;
      v52 = 0.0;
      do
      {
        v53 = __src.f32[v47];
        v54 = 1.0 / (1.0 - fminf(v52 + (*(v48 + v47 * 4) * v50), 0.99));
        v49->f32[v47] = v54;
        v52 = v53 + v52;
        if (v54 > v51)
        {
          v51 = v54;
        }

        ++v47;
      }

      while (v47 != 92);
      v55 = 0;
      if ((&v213 - &__src) >= 0x20 && (&v213 - v49) > 0x1F)
      {
        __asm { FMOV            V1.4S, #1.0 }

        v57 = vdupq_n_s32(0x3C23D700u);
        v58 = vmaxnmq_f32(vmlsq_f32(_Q1, v188, v49[1]), v57);
        v213 = vmaxnmq_f32(vmlsq_f32(_Q1, __src, *v49), v57);
        v214 = v58;
        v59 = vmaxnmq_f32(vmlsq_f32(_Q1, v190, v49[3]), v57);
        v215 = vmaxnmq_f32(vmlsq_f32(_Q1, v189, v49[2]), v57);
        v216 = v59;
        v60 = vmaxnmq_f32(vmlsq_f32(_Q1, v192, v49[5]), v57);
        v217 = vmaxnmq_f32(vmlsq_f32(_Q1, v191, v49[4]), v57);
        v218 = v60;
        v61 = vmaxnmq_f32(vmlsq_f32(_Q1, v194, v49[7]), v57);
        v219 = vmaxnmq_f32(vmlsq_f32(_Q1, v193, v49[6]), v57);
        v220 = v61;
        v62 = vmaxnmq_f32(vmlsq_f32(_Q1, v196, v49[9]), v57);
        v221 = vmaxnmq_f32(vmlsq_f32(_Q1, v195, v49[8]), v57);
        v222 = v62;
        v63 = vmaxnmq_f32(vmlsq_f32(_Q1, v198, v49[11]), v57);
        v223 = vmaxnmq_f32(vmlsq_f32(_Q1, v197, v49[10]), v57);
        v224 = v63;
        v64 = vmaxnmq_f32(vmlsq_f32(_Q1, v200, v49[13]), v57);
        v225 = vmaxnmq_f32(vmlsq_f32(_Q1, v199, v49[12]), v57);
        v226 = v64;
        v65 = vmaxnmq_f32(vmlsq_f32(_Q1, v202, v49[15]), v57);
        v227 = vmaxnmq_f32(vmlsq_f32(_Q1, v201, v49[14]), v57);
        v228 = v65;
        v66 = vmaxnmq_f32(vmlsq_f32(_Q1, v204, v49[17]), v57);
        v229 = vmaxnmq_f32(vmlsq_f32(_Q1, v203, v49[16]), v57);
        v230 = v66;
        v67 = vmaxnmq_f32(vmlsq_f32(_Q1, v206, v49[19]), v57);
        v231 = vmaxnmq_f32(vmlsq_f32(_Q1, v205, v49[18]), v57);
        v232 = v67;
        v68 = vmlsq_f32(_Q1, v207, v49[20]);
        v69 = vmaxnmq_f32(vmlsq_f32(_Q1, v208, v49[21]), v57);
        v55 = 88;
        v233 = vmaxnmq_f32(v68, v57);
        v234 = v69;
      }

      v70 = v19;
      v71 = v55;
      do
      {
        v213.f32[v71] = fmaxf(-((v49->f32[v71] * __src.f32[v71]) + -1.0), 0.01);
        ++v71;
      }

      while (v71 != 92);
      vvlogf(v213.f32, v213.f32, &v186);
      v72 = -v70;
      v73 = *(v22 + 8);
      if ((v73 - &v213) > 0x1F)
      {
        v93 = vmulq_n_f32(v214, v72);
        *v73 = vmulq_n_f32(v213, v72);
        v73[1] = v93;
        v94 = vmulq_n_f32(v216, v72);
        v73[2] = vmulq_n_f32(v215, v72);
        v73[3] = v94;
        v95 = vmulq_n_f32(v218, v72);
        v73[4] = vmulq_n_f32(v217, v72);
        v73[5] = v95;
        v96 = vmulq_n_f32(v220, v72);
        v73[6] = vmulq_n_f32(v219, v72);
        v73[7] = v96;
        v97 = vmulq_n_f32(v222, v72);
        v73[8] = vmulq_n_f32(v221, v72);
        v73[9] = v97;
        v98 = vmulq_n_f32(v224, v72);
        v73[10] = vmulq_n_f32(v223, v72);
        v73[11] = v98;
        v99 = vmulq_n_f32(v226, v72);
        v73[12] = vmulq_n_f32(v225, v72);
        v73[13] = v99;
        v100 = vmulq_n_f32(v228, v72);
        v73[14] = vmulq_n_f32(v227, v72);
        v73[15] = v100;
        v101 = vmulq_n_f32(v230, v72);
        v73[16] = vmulq_n_f32(v229, v72);
        v73[17] = v101;
        v102 = vmulq_n_f32(v232, v72);
        v73[18] = vmulq_n_f32(v231, v72);
        v73[19] = v102;
        v103 = vmulq_n_f32(v234, v72);
        v73[20] = vmulq_n_f32(v233, v72);
        v73[21] = v103;
        v74 = 88;
      }

      else
      {
        v74 = 0;
      }

      v104 = v74;
      do
      {
        v73->f32[v104] = v213.f32[v104] * v72;
        ++v104;
      }

      while (v104 != 92);
      v105 = 0;
      v106 = *(v23 + 8);
      v107 = &a11->i8[1];
      v109 = &v106[23] > a11 && v106 < v107;
      v110 = &__src < v107 && v209 > a11;
      if (!v110 && !v109)
      {
        v111 = vdupq_n_s32(0x3F7D70A4u);
        v112 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(*v106, v112), vcgtq_f32(v106[1], v112)), vuzp1q_s16(vcgtq_f32(vmulq_f32(*v106, __src), v111), vcgtq_f32(vmulq_f32(v106[1], v188), v111))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[2], v112), vcgtq_f32(v106[3], v112)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[2], v189), v111), vcgtq_f32(vmulq_f32(v106[3], v190), v111))))))
        {
          a11->i8[0] = 1;
        }

        v113 = vdupq_n_s32(0x3F7D70A4u);
        v114 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[4], v114), vcgtq_f32(v106[5], v114)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[4], v191), v113), vcgtq_f32(vmulq_f32(v106[5], v192), v113))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[6], v114), vcgtq_f32(v106[7], v114)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[6], v193), v113), vcgtq_f32(vmulq_f32(v106[7], v194), v113))))))
        {
          a11->i8[0] = 1;
        }

        v115 = vdupq_n_s32(0x3F7D70A4u);
        v116 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[8], v116), vcgtq_f32(v106[9], v116)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[8], v195), v115), vcgtq_f32(vmulq_f32(v106[9], v196), v115))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[10], v116), vcgtq_f32(v106[11], v116)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[10], v197), v115), vcgtq_f32(vmulq_f32(v106[11], v198), v115))))))
        {
          a11->i8[0] = 1;
        }

        v117 = vdupq_n_s32(0x3F7D70A4u);
        v118 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[12], v118), vcgtq_f32(v106[13], v118)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[12], v199), v117), vcgtq_f32(vmulq_f32(v106[13], v200), v117))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[14], v118), vcgtq_f32(v106[15], v118)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[14], v201), v117), vcgtq_f32(vmulq_f32(v106[15], v202), v117))))))
        {
          a11->i8[0] = 1;
        }

        v119 = vdupq_n_s32(0x3F7D70A4u);
        v120 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[16], v120), vcgtq_f32(v106[17], v120)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[16], v203), v119), vcgtq_f32(vmulq_f32(v106[17], v204), v119))))))
        {
          a11->i8[0] = 1;
        }

        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[18], v120), vcgtq_f32(v106[19], v120)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[18], v205), v119), vcgtq_f32(vmulq_f32(v106[19], v206), v119))))))
        {
          a11->i8[0] = 1;
        }

        v121 = vdupq_n_s32(0x3F7D70A4u);
        v122 = vdupq_n_s32(0x42C8000Du);
        if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v106[20], v122), vcgtq_f32(v106[21], v122)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v106[20], v207), v121), vcgtq_f32(vmulq_f32(v106[21], v208), v121))))))
        {
          a11->i8[0] = 1;
        }

        v105 = 88;
      }

      v123 = v105;
      do
      {
        v124 = v106->f32[v123];
        if (v124 > 100.0 || (v124 * __src.f32[v123]) > 0.99)
        {
          a11->i8[0] = 1;
        }

        ++v123;
      }

      while (v123 != 92);
LABEL_143:
      result = 0;
      *v24 = v51;
      return result;
    }

    v75 = v12[4561];
    v76 = v12[4562] - v75;
    v77 = v76 >> 2;
    v78 = v16;
    v79 = (v76 >> 2) + v16;
    if (v79 >= 0x171)
    {
      peridot_depth_log("Wrong configuration (_oneMinus_DTMmod_4LSB size)");
      return 4;
    }

    v185 = v77 + v16;
    if ((v76 >> 2) <= 0)
    {
      v80 = 0;
    }

    else
    {
      v80 = v16;
    }

    v81 = v80 - (v76 >> 2);
    if ((v81 & 0x80000000) != 0 || v210 <= v81)
    {
      peridot_depth_log("Wrong configuration (DTMmod_4LSB size)");
      return 4;
    }

    v182 = v18;
    v183 = v17;
    v82 = v19;
    v83 = v16 - v81;
    v84 = v16 - v81;
    v85 = v16;
    memcpy(__dst, &__src.f32[v81], v84 * 4);
    memcpy(&__dst[v84], &__src, 4 * v78);
    v86 = v79 - (v83 + v85);
    v87 = 4 * v78;
    memcpy(&__dst[v84 + v78], &__src, 4 * v86);
    if (v77 <= 3)
    {
      peridot_depth_log("Wrong Configuration: DTMmod_4LSB size");
      return 4;
    }

    vDSP_conv(__dst, 1, (v75 + v76 - 4), -1, &__C, 1, v85 + 1, v77);
    v24 = a12;
    v88 = *(v183 + 8);
    if (v85)
    {
      v89 = &v212;
      v51 = 1.0;
      v90 = *(v183 + 8);
      do
      {
        v91 = *v89++;
        v92 = 1.0 / (1.0 - fmin(v91, 0.99));
        *v90++ = v92;
        if (v51 < v92)
        {
          v51 = v92;
        }

        --v78;
      }

      while (v78);
      if (v85 > 0x5B)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v51 = 1.0;
    }

    memset_pattern16(v88 + v87, &xmmword_2247A54C0, 368 - v87);
LABEL_92:
    v130 = 0;
    if ((&v213 - &__src) >= 0x20 && (&v213 - v88) > 0x1F)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v132 = vdupq_n_s32(0x3C23D700u);
      v133 = vmaxnmq_f32(vmlsq_f32(_Q0, v188, v88[1]), v132);
      v213 = vmaxnmq_f32(vmlsq_f32(_Q0, __src, *v88), v132);
      v214 = v133;
      v134 = vmaxnmq_f32(vmlsq_f32(_Q0, v190, v88[3]), v132);
      v215 = vmaxnmq_f32(vmlsq_f32(_Q0, v189, v88[2]), v132);
      v216 = v134;
      v135 = vmaxnmq_f32(vmlsq_f32(_Q0, v192, v88[5]), v132);
      v217 = vmaxnmq_f32(vmlsq_f32(_Q0, v191, v88[4]), v132);
      v218 = v135;
      v136 = vmaxnmq_f32(vmlsq_f32(_Q0, v194, v88[7]), v132);
      v219 = vmaxnmq_f32(vmlsq_f32(_Q0, v193, v88[6]), v132);
      v220 = v136;
      v137 = vmaxnmq_f32(vmlsq_f32(_Q0, v196, v88[9]), v132);
      v221 = vmaxnmq_f32(vmlsq_f32(_Q0, v195, v88[8]), v132);
      v222 = v137;
      v138 = vmaxnmq_f32(vmlsq_f32(_Q0, v198, v88[11]), v132);
      v223 = vmaxnmq_f32(vmlsq_f32(_Q0, v197, v88[10]), v132);
      v224 = v138;
      v139 = vmaxnmq_f32(vmlsq_f32(_Q0, v200, v88[13]), v132);
      v225 = vmaxnmq_f32(vmlsq_f32(_Q0, v199, v88[12]), v132);
      v226 = v139;
      v140 = vmaxnmq_f32(vmlsq_f32(_Q0, v202, v88[15]), v132);
      v227 = vmaxnmq_f32(vmlsq_f32(_Q0, v201, v88[14]), v132);
      v228 = v140;
      v141 = vmaxnmq_f32(vmlsq_f32(_Q0, v204, v88[17]), v132);
      v229 = vmaxnmq_f32(vmlsq_f32(_Q0, v203, v88[16]), v132);
      v230 = v141;
      v142 = vmaxnmq_f32(vmlsq_f32(_Q0, v206, v88[19]), v132);
      v231 = vmaxnmq_f32(vmlsq_f32(_Q0, v205, v88[18]), v132);
      v232 = v142;
      v143 = vmlsq_f32(_Q0, v207, v88[20]);
      v144 = vmaxnmq_f32(vmlsq_f32(_Q0, v208, v88[21]), v132);
      v130 = 88;
      v233 = vmaxnmq_f32(v143, v132);
      v234 = v144;
    }

    v145 = v130;
    do
    {
      v213.f32[v145] = fmaxf(-((v88->f32[v145] * __src.f32[v145]) + -1.0), 0.01);
      ++v145;
    }

    while (v145 != 92);
    vvlogf(v213.f32, v213.f32, &v186);
    v146 = -v82;
    v147 = *(v182 + 8);
    if ((v147 - &v213) > 0x1F)
    {
      v149 = vmulq_n_f32(v214, v146);
      *v147 = vmulq_n_f32(v213, v146);
      v147[1] = v149;
      v150 = vmulq_n_f32(v216, v146);
      v147[2] = vmulq_n_f32(v215, v146);
      v147[3] = v150;
      v151 = vmulq_n_f32(v218, v146);
      v147[4] = vmulq_n_f32(v217, v146);
      v147[5] = v151;
      v152 = vmulq_n_f32(v220, v146);
      v147[6] = vmulq_n_f32(v219, v146);
      v147[7] = v152;
      v153 = vmulq_n_f32(v222, v146);
      v147[8] = vmulq_n_f32(v221, v146);
      v147[9] = v153;
      v154 = vmulq_n_f32(v224, v146);
      v147[10] = vmulq_n_f32(v223, v146);
      v147[11] = v154;
      v155 = vmulq_n_f32(v226, v146);
      v147[12] = vmulq_n_f32(v225, v146);
      v147[13] = v155;
      v156 = vmulq_n_f32(v228, v146);
      v147[14] = vmulq_n_f32(v227, v146);
      v147[15] = v156;
      v157 = vmulq_n_f32(v230, v146);
      v147[16] = vmulq_n_f32(v229, v146);
      v147[17] = v157;
      v158 = vmulq_n_f32(v232, v146);
      v147[18] = vmulq_n_f32(v231, v146);
      v147[19] = v158;
      v159 = vmulq_n_f32(v234, v146);
      v147[20] = vmulq_n_f32(v233, v146);
      v147[21] = v159;
      v148 = 88;
    }

    else
    {
      v148 = 0;
    }

    v160 = v148;
    do
    {
      v147->f32[v160] = v213.f32[v160] * v146;
      ++v160;
    }

    while (v160 != 92);
    v161 = 0;
    v162 = *(v183 + 8);
    v163 = &a11->i8[1];
    v165 = &v162[23] > a11 && v162 < v163;
    v166 = &__src < v163 && v209 > a11;
    if (!v166 && !v165)
    {
      v167 = vdupq_n_s32(0x3F7D70A4u);
      v168 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(*v162, v168), vcgtq_f32(v162[1], v168)), vuzp1q_s16(vcgtq_f32(vmulq_f32(*v162, __src), v167), vcgtq_f32(vmulq_f32(v162[1], v188), v167))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[2], v168), vcgtq_f32(v162[3], v168)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[2], v189), v167), vcgtq_f32(vmulq_f32(v162[3], v190), v167))))))
      {
        a11->i8[0] = 1;
      }

      v169 = vdupq_n_s32(0x3F7D70A4u);
      v170 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[4], v170), vcgtq_f32(v162[5], v170)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[4], v191), v169), vcgtq_f32(vmulq_f32(v162[5], v192), v169))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[6], v170), vcgtq_f32(v162[7], v170)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[6], v193), v169), vcgtq_f32(vmulq_f32(v162[7], v194), v169))))))
      {
        a11->i8[0] = 1;
      }

      v171 = vdupq_n_s32(0x3F7D70A4u);
      v172 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[8], v172), vcgtq_f32(v162[9], v172)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[8], v195), v171), vcgtq_f32(vmulq_f32(v162[9], v196), v171))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[10], v172), vcgtq_f32(v162[11], v172)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[10], v197), v171), vcgtq_f32(vmulq_f32(v162[11], v198), v171))))))
      {
        a11->i8[0] = 1;
      }

      v173 = vdupq_n_s32(0x3F7D70A4u);
      v174 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[12], v174), vcgtq_f32(v162[13], v174)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[12], v199), v173), vcgtq_f32(vmulq_f32(v162[13], v200), v173))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[14], v174), vcgtq_f32(v162[15], v174)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[14], v201), v173), vcgtq_f32(vmulq_f32(v162[15], v202), v173))))))
      {
        a11->i8[0] = 1;
      }

      v175 = vdupq_n_s32(0x3F7D70A4u);
      v176 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[16], v176), vcgtq_f32(v162[17], v176)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[16], v203), v175), vcgtq_f32(vmulq_f32(v162[17], v204), v175))))))
      {
        a11->i8[0] = 1;
      }

      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[18], v176), vcgtq_f32(v162[19], v176)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[18], v205), v175), vcgtq_f32(vmulq_f32(v162[19], v206), v175))))))
      {
        a11->i8[0] = 1;
      }

      v177 = vdupq_n_s32(0x3F7D70A4u);
      v178 = vdupq_n_s32(0x42C8000Du);
      if (vmaxv_u8(vmovn_s16(vorrq_s8(vuzp1q_s16(vcgtq_f32(v162[20], v178), vcgtq_f32(v162[21], v178)), vuzp1q_s16(vcgtq_f32(vmulq_f32(v162[20], v207), v177), vcgtq_f32(vmulq_f32(v162[21], v208), v177))))))
      {
        a11->i8[0] = 1;
      }

      v161 = 88;
    }

    v179 = v161;
    do
    {
      v180 = v162->f32[v179];
      if (v180 > 100.0 || (v180 * __src.f32[v179]) > 0.99)
      {
        a11->i8[0] = 1;
      }

      ++v179;
    }

    while (v179 != 92);
    goto LABEL_143;
  }

  if (v18 != v13)
  {
    v27 = *(v13 + 16);
    if (v27 != *(v18 + 16))
    {
      v126 = v13;
      peridot_depth_log("Trying to copy histogram of different size");
      v127 = *(v22 + 8);
      if (v127)
      {
        MEMORY[0x22AA53170](v127, 0x1000C8052888210);
      }

      *(v22 + 16) = *(v126 + 16);
      operator new[]();
    }

    memcpy(*(v18 + 8), *(v13 + 8), 4 * v27);
  }

  v128 = *(v23 + 16);
  if (v128)
  {
    memset_pattern16(*(v23 + 8), &xmmword_2247A54C0, 4 * v128);
  }

  result = 0;
  *a12 = 0.0;
  return result;
}

uint64_t peridot::PeridotDXPPreProcessor::interleave(int a1, int a2, void *a3, uint64_t *a4, unsigned __int8 *a5, _DWORD *__src, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t *a11)
{
  v11 = a3[1] - *a3;
  if (v11 != a4[1] - *a4 || a7[1] - *a7 != v11)
  {
    peridot_depth_log("PeridotDXPPreProcessor::interleave: histogram sizes do not match");
    return 1;
  }

  v12 = a10;
  v13 = a9;
  v14 = a11[9];
  a11[10] = 0;
  if ((a11[11] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    if (v14)
    {
      operator delete(v14);
      a11[9] = 0;
      a11[10] = 0;
      a11[11] = 0;
    }

    operator new();
  }

  v15 = a11[12];
  a11[10] = 3;
  v16 = *a5;
  if (a5[1])
  {
    v16 |= 2uLL;
  }

  if (a5[2])
  {
    v16 |= 4uLL;
  }

  *v14 = v16;
  v17 = a11[14];
  if ((v17 - v15) < 9)
  {
    if (v15)
    {
      a11[13] = v15;
      operator delete(v15);
      v17 = 0;
      a11[12] = 0;
      a11[13] = 0;
      a11[14] = 0;
    }

    v18 = v17 >> 1;
    if ((v17 >> 1) <= 3)
    {
      v18 = 3;
    }

    v19 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v18;
    }

    if (!(v20 >> 62))
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v22 = a11[13];
  if (&v22[-v15] > 8)
  {
    v30 = *__src;
    *(v15 + 8) = __src[2];
    *v15 = v30;
    v31 = (v15 + 12);
    goto LABEL_37;
  }

  v23 = (__src + 3);
  v24 = &v22[__src - v15];
  if (v22 != v15)
  {
    v41 = a3;
    v25 = a7;
    v26 = a4;
    v27 = a8;
    v28 = __src;
    v14 = memmove(v15, __src, &v22[-v15]);
    __src = v28;
    v13 = a9;
    a8 = v27;
    a3 = v41;
    a4 = v26;
    v12 = a10;
    a7 = v25;
  }

  v29 = a11[13];
  v32 = &v23[v15] - (__src + v22) - 4;
  if (v32 >= 0x1C)
  {
    v33 = a11[13];
    if (v29 + v15 - (__src + v22) >= 0x20)
    {
      v34 = (v32 >> 2) + 1;
      v35 = 4 * (v34 & 0x7FFFFFFFFFFFFFF8);
      v24 += v35;
      v36 = (v29 + 16);
      v37 = &v22[__src - v15 + 16];
      v38 = v34 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v39 = *v37;
        *(v36 - 1) = *(v37 - 1);
        *v36 = v39;
        v36 += 2;
        v37 += 32;
        v38 -= 8;
      }

      while (v38);
      v33 = (v29 + v35);
      if (v34 == (v34 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v33 = a11[13];
  }

  do
  {
    v40 = *v24;
    v24 += 4;
    *v33++ = v40;
  }

  while (v24 != v23);
LABEL_36:
  v31 = v33;
LABEL_37:
  a11[13] = v31;
  if (a8 != 1)
  {
    if (a8 == 4)
    {

      return peridot::interleave_neon<4ul>(v14, a3, a4, a7, v13, v12, a11);
    }

    peridot_depth_log("PeridotDXPPreProcessor::interleave: unexpected tdc size");
    return 1;
  }

  return peridot::interleave_neon<1ul>(v14, a3, a4, a7, v13, v12, a11);
}

uint64_t peridot::interleave_neon<4ul>(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned int a6, void *a7)
{
  if (!a5)
  {
    return 0;
  }

  v7 = 0;
  v8 = 1.0 / a6 * (1.0 / a6);
  *&v8 = v8;
  v9 = "interleave_neon<4> interlHist.size() <= priIdx";
  do
  {
    if (v7 >= (a7[1] - *a7) >> 3)
    {
      goto LABEL_15;
    }

    if (*(*(*a7 + 8 * v7) + 16) < 0x170uLL)
    {
      v9 = "interleave_neon<4> getBinsNum() < CISP_PERIDOT_NUM_HISTOGRAM_BINS*4";
LABEL_15:
      peridot_depth_log(v9, v8);
      return 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = -4;
    do
    {
      v30.val[0] = *(*(*a2 + 96 * v7 + 8) + v10);
      v30.val[1] = *(*(*a2 + 24 * ((4 * v7) | 1) + 8) + v10);
      v30.val[2] = *(*(*a2 + 24 * ((4 * v7) | 2) + 8) + v10);
      v30.val[3] = *(*(*a2 + 24 * ((4 * v7) | 3) + 8) + v10);
      v13 = (*(*(*a7 + 8 * v7) + 8) + v11);
      vst4q_f32(v13, v30);
      v12 += 4;
      v11 += 64;
      v10 += 16;
    }

    while (v12 < 0x58);
    ++v7;
  }

  while (v7 != a5);
  v14 = 0;
  if (a6)
  {
    do
    {
      v15 = 0;
      v16 = 0;
      v17 = -4;
      v18 = 96 * v14;
      v19 = 24 * ((4 * v14) | 1);
      v20 = 24 * ((4 * v14) | 2);
      v21 = 24 * ((4 * v14) | 3);
      do
      {
        v31.val[0] = *(*(*a3 + v18 + 8) + v16);
        v31.val[1] = *(*(*a3 + v19 + 8) + v16);
        v31.val[2] = *(*(*a3 + v20 + 8) + v16);
        v31.val[3] = *(*(*a3 + v21 + 8) + v16);
        v22 = (*(*(a7[3] + 8 * v14) + 8) + v15);
        vst4q_f32(v22, v31);
        v32.val[0] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[0], v31.val[0]), *&v8), *(*(*a4 + v18 + 8) + v16));
        v32.val[1] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[1], v31.val[1]), *&v8), *(*(*a4 + v19 + 8) + v16));
        v32.val[2] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[2], v31.val[2]), *&v8), *(*(*a4 + v20 + 8) + v16));
        v32.val[3] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31.val[3], v31.val[3]), *&v8), *(*(*a4 + v21 + 8) + v16));
        v23 = (*(*(a7[6] + 8 * v14) + 8) + v15);
        vst4q_f32(v23, v32);
        v17 += 4;
        v16 += 16;
        v15 += 64;
      }

      while (v17 < 0x58);
      ++v14;
    }

    while (v14 != a5);
  }

  else
  {
    do
    {
      v25 = 0;
      v26 = 0;
      v27 = -4;
      do
      {
        v29.val[0] = *(*(*a3 + 96 * v14 + 8) + v25);
        v29.val[1] = *(*(*a3 + 24 * ((4 * v14) | 1) + 8) + v25);
        v29.val[2] = *(*(*a3 + 24 * ((4 * v14) | 2) + 8) + v25);
        v29.val[3] = *(*(*a3 + 24 * ((4 * v14) | 3) + 8) + v25);
        v28 = (*(*(a7[3] + 8 * v14) + 8) + v26);
        vst4q_f32(v28, v29);
        v27 += 4;
        v26 += 64;
        v25 += 16;
      }

      while (v27 < 0x58);
      ++v14;
    }

    while (v14 != a5);
  }

  return 0;
}

uint64_t peridot::interleave_neon<1ul>(uint64_t a1, void *a2, uint64_t *a3, void *a4, unint64_t a5, unsigned int a6, uint64_t *a7)
{
  v7 = *a7;
  if (a5 > (a7[1] - *a7) >> 3)
  {
    v8 = "interleave_neon<1> interlHist.size() < priNum";
LABEL_3:
    peridot_depth_log(v8);
    return 1;
  }

  if (a5)
  {
    v10 = 0;
    v11 = 1.0 / a6 * (1.0 / a6);
    v12 = (*a2 + 8);
    v8 = "interleave_neon<1> getBinsNum() < CISP_PERIDOT_NUM_HISTOGRAM_BINS";
    while (1)
    {
      v13 = *(v7 + 8 * v10);
      if (*(v13 + 16) < 0x5CuLL)
      {
        break;
      }

      v14 = *v12;
      v12 += 3;
      v15 = *(v13 + 8);
      *v15 = *v14;
      v15[1] = v14[1];
      v15[2] = v14[2];
      v15[3] = v14[3];
      v15[4] = v14[4];
      v15[5] = v14[5];
      v15[6] = v14[6];
      v15[7] = v14[7];
      v15[8] = v14[8];
      v15[9] = v14[9];
      v15[10] = v14[10];
      v15[11] = v14[11];
      v15[12] = v14[12];
      v15[13] = v14[13];
      v15[14] = v14[14];
      v15[15] = v14[15];
      v15[16] = v14[16];
      v15[17] = v14[17];
      v15[18] = v14[18];
      v15[19] = v14[19];
      v15[20] = v14[20];
      v15[21] = v14[21];
      v15[22] = v14[22];
      v15[23] = v14[23];
      v15[24] = v14[24];
      v15[25] = v14[25];
      v15[26] = v14[26];
      v15[27] = v14[27];
      v15[28] = v14[28];
      v15[29] = v14[29];
      v15[30] = v14[30];
      v15[31] = v14[31];
      v15[32] = v14[32];
      v15[33] = v14[33];
      v15[34] = v14[34];
      v15[35] = v14[35];
      v15[36] = v14[36];
      v15[37] = v14[37];
      v15[38] = v14[38];
      v15[39] = v14[39];
      v15[40] = v14[40];
      v15[41] = v14[41];
      v15[42] = v14[42];
      v15[43] = v14[43];
      v15[44] = v14[44];
      v15[45] = v14[45];
      v15[46] = v14[46];
      v15[47] = v14[47];
      v15[48] = v14[48];
      v15[49] = v14[49];
      v15[50] = v14[50];
      v15[51] = v14[51];
      v15[52] = v14[52];
      v15[53] = v14[53];
      v15[54] = v14[54];
      v15[55] = v14[55];
      v15[56] = v14[56];
      v15[57] = v14[57];
      v15[58] = v14[58];
      v15[59] = v14[59];
      v15[60] = v14[60];
      v15[61] = v14[61];
      v15[62] = v14[62];
      v15[63] = v14[63];
      v15[64] = v14[64];
      v15[65] = v14[65];
      v15[66] = v14[66];
      v15[67] = v14[67];
      v15[68] = v14[68];
      v15[69] = v14[69];
      v15[70] = v14[70];
      v15[71] = v14[71];
      v15[72] = v14[72];
      v15[73] = v14[73];
      v15[74] = v14[74];
      v15[75] = v14[75];
      v15[76] = v14[76];
      v15[77] = v14[77];
      v15[78] = v14[78];
      v15[79] = v14[79];
      v15[80] = v14[80];
      v15[81] = v14[81];
      v15[82] = v14[82];
      v15[83] = v14[83];
      v15[84] = v14[84];
      v15[85] = v14[85];
      v15[86] = v14[86];
      v15[87] = v14[87];
      v15[88] = v14[88];
      v15[89] = v14[89];
      v15[90] = v14[90];
      v15[91] = v14[91];
      if (a5 == ++v10)
      {
        v16 = *a3;
        v17 = a7[3];
        if (a6)
        {
          for (i = 0; i != a5; ++i)
          {
            v42 = *(v16 + 24 * i + 8);
            v43 = *(v17[i] + 8);
            v44 = *(*a4 + 24 * i + 8);
            v45 = *(*(a7[6] + 8 * i) + 8);
            if ((v45 - v43) >= 0x10 && (v43 - v42) >= 0x10 && (v44 - v43) >= 0x10 && (v45 - v42) >= 0x10 && (v45 - v44) > 0xF)
            {
              v19 = *v42;
              *v43 = *v42;
              *v45 = vmulq_f32(vmulq_n_f32(vmulq_f32(v19, v19), v11), *v44);
              v20 = v42[1];
              *(v43 + 1) = v20;
              v45[1] = vmulq_f32(vmulq_n_f32(vmulq_f32(v20, v20), v11), v44[1]);
              v21 = v42[2];
              *(v43 + 2) = v21;
              v45[2] = vmulq_f32(vmulq_n_f32(vmulq_f32(v21, v21), v11), v44[2]);
              v22 = v42[3];
              *(v43 + 3) = v22;
              v45[3] = vmulq_f32(vmulq_n_f32(vmulq_f32(v22, v22), v11), v44[3]);
              v23 = v42[4];
              *(v43 + 4) = v23;
              v45[4] = vmulq_f32(vmulq_n_f32(vmulq_f32(v23, v23), v11), v44[4]);
              v24 = v42[5];
              *(v43 + 5) = v24;
              v45[5] = vmulq_f32(vmulq_n_f32(vmulq_f32(v24, v24), v11), v44[5]);
              v25 = v42[6];
              *(v43 + 6) = v25;
              v45[6] = vmulq_f32(vmulq_n_f32(vmulq_f32(v25, v25), v11), v44[6]);
              v26 = v42[7];
              *(v43 + 7) = v26;
              v45[7] = vmulq_f32(vmulq_n_f32(vmulq_f32(v26, v26), v11), v44[7]);
              v27 = v42[8];
              *(v43 + 8) = v27;
              v45[8] = vmulq_f32(vmulq_n_f32(vmulq_f32(v27, v27), v11), v44[8]);
              v28 = v42[9];
              *(v43 + 9) = v28;
              v45[9] = vmulq_f32(vmulq_n_f32(vmulq_f32(v28, v28), v11), v44[9]);
              v29 = v42[10];
              *(v43 + 10) = v29;
              v45[10] = vmulq_f32(vmulq_n_f32(vmulq_f32(v29, v29), v11), v44[10]);
              v30 = v42[11];
              *(v43 + 11) = v30;
              v45[11] = vmulq_f32(vmulq_n_f32(vmulq_f32(v30, v30), v11), v44[11]);
              v31 = v42[12];
              *(v43 + 12) = v31;
              v45[12] = vmulq_f32(vmulq_n_f32(vmulq_f32(v31, v31), v11), v44[12]);
              v32 = v42[13];
              *(v43 + 13) = v32;
              v45[13] = vmulq_f32(vmulq_n_f32(vmulq_f32(v32, v32), v11), v44[13]);
              v33 = v42[14];
              *(v43 + 14) = v33;
              v45[14] = vmulq_f32(vmulq_n_f32(vmulq_f32(v33, v33), v11), v44[14]);
              v34 = v42[15];
              *(v43 + 15) = v34;
              v45[15] = vmulq_f32(vmulq_n_f32(vmulq_f32(v34, v34), v11), v44[15]);
              v35 = v42[16];
              *(v43 + 16) = v35;
              v45[16] = vmulq_f32(vmulq_n_f32(vmulq_f32(v35, v35), v11), v44[16]);
              v36 = v42[17];
              *(v43 + 17) = v36;
              v45[17] = vmulq_f32(vmulq_n_f32(vmulq_f32(v36, v36), v11), v44[17]);
              v37 = v42[18];
              *(v43 + 18) = v37;
              v45[18] = vmulq_f32(vmulq_n_f32(vmulq_f32(v37, v37), v11), v44[18]);
              v38 = v42[19];
              *(v43 + 19) = v38;
              v45[19] = vmulq_f32(vmulq_n_f32(vmulq_f32(v38, v38), v11), v44[19]);
              v39 = v42[20];
              *(v43 + 20) = v39;
              v45[20] = vmulq_f32(vmulq_n_f32(vmulq_f32(v39, v39), v11), v44[20]);
              v40 = v42[21];
              *(v43 + 21) = v40;
              v45[21] = vmulq_f32(vmulq_n_f32(vmulq_f32(v40, v40), v11), v44[21]);
              v41 = v42[22];
              *(v43 + 22) = v41;
              v45[22] = vmulq_f32(vmulq_n_f32(vmulq_f32(v41, v41), v11), v44[22]);
            }

            else
            {
              for (j = 0; j != 92; ++j)
              {
                v51 = v42->f32[j];
                *&v43[j * 4] = v51;
                v45->f32[j] = (v51 * v51) * (v11 * v44->f32[j]);
              }
            }
          }
        }

        else
        {
          v52 = (v16 + 8);
          do
          {
            v54 = *v52;
            v52 += 3;
            v53 = v54;
            v55 = *v17++;
            v56 = *(v55 + 8);
            *v56 = *v53;
            v56[1] = v53[1];
            v56[2] = v53[2];
            v56[3] = v53[3];
            v56[4] = v53[4];
            v56[5] = v53[5];
            v56[6] = v53[6];
            v56[7] = v53[7];
            v56[8] = v53[8];
            v56[9] = v53[9];
            v56[10] = v53[10];
            v56[11] = v53[11];
            v56[12] = v53[12];
            v56[13] = v53[13];
            v56[14] = v53[14];
            v56[15] = v53[15];
            v56[16] = v53[16];
            v56[17] = v53[17];
            v56[18] = v53[18];
            v56[19] = v53[19];
            v56[20] = v53[20];
            v56[21] = v53[21];
            v56[22] = v53[22];
            v56[23] = v53[23];
            v56[24] = v53[24];
            v56[25] = v53[25];
            v56[26] = v53[26];
            v56[27] = v53[27];
            v56[28] = v53[28];
            v56[29] = v53[29];
            v56[30] = v53[30];
            v56[31] = v53[31];
            v56[32] = v53[32];
            v56[33] = v53[33];
            v56[34] = v53[34];
            v56[35] = v53[35];
            v56[36] = v53[36];
            v56[37] = v53[37];
            v56[38] = v53[38];
            v56[39] = v53[39];
            v56[40] = v53[40];
            v56[41] = v53[41];
            v56[42] = v53[42];
            v56[43] = v53[43];
            v56[44] = v53[44];
            v56[45] = v53[45];
            v56[46] = v53[46];
            v56[47] = v53[47];
            v56[48] = v53[48];
            v56[49] = v53[49];
            v56[50] = v53[50];
            v56[51] = v53[51];
            v56[52] = v53[52];
            v56[53] = v53[53];
            v56[54] = v53[54];
            v56[55] = v53[55];
            v56[56] = v53[56];
            v56[57] = v53[57];
            v56[58] = v53[58];
            v56[59] = v53[59];
            v56[60] = v53[60];
            v56[61] = v53[61];
            v56[62] = v53[62];
            v56[63] = v53[63];
            v56[64] = v53[64];
            v56[65] = v53[65];
            v56[66] = v53[66];
            v56[67] = v53[67];
            v56[68] = v53[68];
            v56[69] = v53[69];
            v56[70] = v53[70];
            v56[71] = v53[71];
            v56[72] = v53[72];
            v56[73] = v53[73];
            v56[74] = v53[74];
            v56[75] = v53[75];
            v56[76] = v53[76];
            v56[77] = v53[77];
            v56[78] = v53[78];
            v56[79] = v53[79];
            v56[80] = v53[80];
            v56[81] = v53[81];
            v56[82] = v53[82];
            v56[83] = v53[83];
            v56[84] = v53[84];
            v56[85] = v53[85];
            v56[86] = v53[86];
            v56[87] = v53[87];
            v56[88] = v53[88];
            v56[89] = v53[89];
            v56[90] = v53[90];
            v56[91] = v53[91];
            --a5;
          }

          while (a5);
        }

        return 0;
      }
    }

    goto LABEL_3;
  }

  return 0;
}

uint64_t peridot::PeridotDXPPreProcessor::process(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, float a7, float a8)
{
  v8 = a4;
  v9 = a3;
  v10 = *(a1 + 37325);
  if (*(a1 + 37325))
  {
    v11 = *(a1 + 37324);
    if (*(a1 + 37324))
    {
      v12 = 0;
      v13 = *a2;
      v14 = *(a1 + 37328);
      v15 = *a2 + 640 * a3 + 9776;
      do
      {
        v16 = *(v14 + 24 * v12 + 8);
        v17 = v13 + 9280 * v12 * v11 + 640 * a3;
        v18 = *(v17 + 320);
        v19 = *(v17 + 336);
        v20 = vcvtq_f32_u32(vmovl_u16(*v18.i8));
        v21 = vcvtq_f32_u32(vmovl_high_u16(v18));
        *v16 = v20;
        v16[1] = v21;
        v22 = vcvtq_f32_u32(vmovl_u16(*v19.i8));
        v23 = vcvtq_f32_u32(vmovl_high_u16(v19));
        v16[2] = v22;
        v16[3] = v23;
        v24 = *(v17 + 352);
        v25 = *(v17 + 368);
        v26 = vcvtq_f32_u32(vmovl_u16(*v24.i8));
        v27 = vcvtq_f32_u32(vmovl_high_u16(v24));
        v28 = vcvtq_f32_u32(vmovl_u16(*v25.i8));
        v29 = vcvtq_f32_u32(vmovl_high_u16(v25));
        v16[4] = v26;
        v16[5] = v27;
        v16[6] = v28;
        v16[7] = v29;
        v30 = *(v17 + 384);
        v31 = *(v17 + 400);
        v32 = vcvtq_f32_u32(vmovl_u16(*v30.i8));
        v33 = vcvtq_f32_u32(vmovl_high_u16(v30));
        v34 = vcvtq_f32_u32(vmovl_u16(*v31.i8));
        v35 = vcvtq_f32_u32(vmovl_high_u16(v31));
        v16[8] = v32;
        v16[9] = v33;
        v16[10] = v34;
        v16[11] = v35;
        v36 = *(v17 + 416);
        v37 = *(v17 + 432);
        v38 = vcvtq_f32_u32(vmovl_u16(*v36.i8));
        v39 = vcvtq_f32_u32(vmovl_high_u16(v36));
        v40 = vcvtq_f32_u32(vmovl_u16(*v37.i8));
        v41 = vcvtq_f32_u32(vmovl_high_u16(v37));
        v16[12] = v38;
        v16[13] = v39;
        v16[14] = v40;
        v16[15] = v41;
        v42 = *(v17 + 448);
        v43 = *(v17 + 464);
        v44 = vcvtq_f32_u32(vmovl_u16(*v42.i8));
        v45 = vcvtq_f32_u32(vmovl_high_u16(v42));
        v46 = vcvtq_f32_u32(vmovl_u16(*v43.i8));
        v47 = vcvtq_f32_u32(vmovl_high_u16(v43));
        v16[16] = v44;
        v16[17] = v45;
        v16[18] = v46;
        v16[19] = v47;
        v48 = vcvtq_f32_u32(vmovl_u16(*(v17 + 480)));
        v49 = vcvtq_f32_u32(vmovl_u16(*(v17 + 488)));
        v16[20] = v48;
        v16[21] = v49;
        v50 = vcvtq_f32_u32(vmovl_u16(*(v17 + 496)));
        v16[22] = v50;
        if (v11 != 1)
        {
          v51 = v15;
          v52 = v11 - 1;
          do
          {
            v53 = *v51[-22].i8;
            v54 = *v51[-20].i8;
            v21 = vaddq_f32(v21, vcvtq_f32_u32(vmovl_high_u16(v53)));
            v20 = vaddq_f32(v20, vcvtq_f32_u32(vmovl_u16(*v53.i8)));
            v23 = vaddq_f32(v23, vcvtq_f32_u32(vmovl_high_u16(v54)));
            v22 = vaddq_f32(v22, vcvtq_f32_u32(vmovl_u16(*v54.i8)));
            v55 = *v51[-18].i8;
            v56 = *v51[-16].i8;
            v27 = vaddq_f32(v27, vcvtq_f32_u32(vmovl_high_u16(v55)));
            v26 = vaddq_f32(v26, vcvtq_f32_u32(vmovl_u16(*v55.i8)));
            v29 = vaddq_f32(v29, vcvtq_f32_u32(vmovl_high_u16(v56)));
            v28 = vaddq_f32(v28, vcvtq_f32_u32(vmovl_u16(*v56.i8)));
            v57 = *v51[-14].i8;
            v58 = *v51[-12].i8;
            v33 = vaddq_f32(v33, vcvtq_f32_u32(vmovl_high_u16(v57)));
            v32 = vaddq_f32(v32, vcvtq_f32_u32(vmovl_u16(*v57.i8)));
            v35 = vaddq_f32(v35, vcvtq_f32_u32(vmovl_high_u16(v58)));
            v34 = vaddq_f32(v34, vcvtq_f32_u32(vmovl_u16(*v58.i8)));
            v59 = *v51[-10].i8;
            v60 = *v51[-8].i8;
            v39 = vaddq_f32(v39, vcvtq_f32_u32(vmovl_high_u16(v59)));
            v38 = vaddq_f32(v38, vcvtq_f32_u32(vmovl_u16(*v59.i8)));
            v41 = vaddq_f32(v41, vcvtq_f32_u32(vmovl_high_u16(v60)));
            v40 = vaddq_f32(v40, vcvtq_f32_u32(vmovl_u16(*v60.i8)));
            v61 = *v51[-6].i8;
            v62 = *v51[-4].i8;
            v45 = vaddq_f32(v45, vcvtq_f32_u32(vmovl_high_u16(v61)));
            v44 = vaddq_f32(v44, vcvtq_f32_u32(vmovl_u16(*v61.i8)));
            v47 = vaddq_f32(v47, vcvtq_f32_u32(vmovl_high_u16(v62)));
            v46 = vaddq_f32(v46, vcvtq_f32_u32(vmovl_u16(*v62.i8)));
            v48 = vaddq_f32(v48, vcvtq_f32_u32(vmovl_u16(v51[-2])));
            v49 = vaddq_f32(v49, vcvtq_f32_u32(vmovl_u16(v51[-1])));
            v63 = vcvtq_f32_u32(vmovl_u16(*v51));
            v51 += 1160;
            v50 = vaddq_f32(v50, v63);
            --v52;
          }

          while (v52);
          *v16 = v20;
          v16[1] = v21;
          v16[2] = v22;
          v16[3] = v23;
          v16[4] = v26;
          v16[5] = v27;
          v16[6] = v28;
          v16[7] = v29;
          v16[8] = v32;
          v16[9] = v33;
          v16[10] = v34;
          v16[11] = v35;
          v16[12] = v38;
          v16[13] = v39;
          v16[14] = v40;
          v16[15] = v41;
          v16[16] = v44;
          v16[17] = v45;
          v16[18] = v46;
          v16[19] = v47;
          v16[20] = v48;
          v16[21] = v49;
          v16[22] = v50;
        }

        ++v12;
        v15 += 9280 * v11;
      }

      while (v12 != v10);
      v64 = 0;
      v65 = *(a1 + 37352);
      v66 = *(a1 + 37376);
      v67 = *(a1 + 37400);
      v68 = *a2 + 640 * a3 + 512;
      do
      {
        a3 = 0;
        a4 = (v64 * v11);
        v69 = v68;
        do
        {
          v70 = 24 * (a4 + a3);
          v71 = *(v65 + v70 + 8);
          v72 = *(v66 + v70 + 8);
          v73 = *(v67 + v70 + 8);
          v74 = v71 + 92;
          v75 = v72 + 92;
          v77 = v71 < v73 + 92 && v73 < v74;
          v79 = v72 < v73 + 92 && v73 < v75;
          v80 = v72 >= v74 || v71 >= v75;
          if (!v80 || v77 || v79)
          {
            for (i = 0; i != 92; ++i)
            {
              v20.i16[0] = v69->i16[i];
              v86 = v20.u32[0];
              *v71 = v86;
              LOWORD(v86) = v69[24].i16[i];
              v87 = LODWORD(v86);
              *v72++ = v87;
              v88 = *v71++;
              v20.f32[0] = v88 + v87;
              *v73++ = v20.f32[0];
            }
          }

          else
          {
            v81 = 0;
            v82 = v69;
            do
            {
              v83 = vcvtq_f32_u32(vmovl_u16(*v82));
              *&v71[v81] = v83;
              v84 = vcvtq_f32_u32(vmovl_u16(v82[24]));
              *&v72[v81] = v84;
              v20 = vaddq_f32(v83, v84);
              *&v73[v81] = v20;
              v81 += 4;
              ++v82;
            }

            while (v81 != 92);
          }

          ++a3;
          v69 += 1160;
        }

        while (a3 != v11);
        ++v64;
        v68 += 9280 * v11;
      }

      while (v64 != v10);
    }
  }

  if (a8 < 0.0)
  {
    peridot_depth_log("Error: global T0 is negative", a2, a3, a4, a5, a6, v9, v8);
    return 5;
  }

  *v90.i64 = ceil(a8 * 1.0e10) + 45.0;
  v91 = *v90.i64;
  if (*v90.i64 >= 0x5B)
  {
    v92 = 91;
  }

  else
  {
    v92 = *v90.i64;
  }

  if ((*(a1 + 37320) - 1) > 1)
  {
    return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
  }

  v93 = a2[1];
  v94 = *(*(a1 + 37448) + 8);
  v95 = *(*(a1 + 37424) + 8);
  v96 = v92 + 1;
  v97 = v94 - v95;
  v99 = v91 < 7 || v97 < 0x20;
  if ((a5 & 1) == 0)
  {
    if (v99)
    {
      v101 = 0;
    }

    else
    {
      v101 = v96 & 0xF8;
      v113 = (v93 + 640 * v9);
      v114 = *(*(a1 + 37424) + 8);
      v115 = *(*(a1 + 37448) + 8);
      v116 = v101;
      do
      {
        v117 = v113[44];
        *v114 = vcvtq_f32_u32(vmovl_u16(*v117.i8));
        v114[1] = vcvtq_f32_u32(vmovl_high_u16(v117));
        v114 += 2;
        v118 = v113[20];
        v119 = vcvtq_f32_u32(vmovl_high_u16(v118));
        v90 = vcvtq_f32_u32(vmovl_u16(*v118.i8));
        *v115 = v90;
        v115[1] = v119;
        v115 += 2;
        ++v113;
        v116 -= 8;
      }

      while (v116);
      if (v96 == v101)
      {
        goto LABEL_66;
      }
    }

    v120 = v92 - v101 + 1;
    v121 = (v94 + 4 * v101);
    v122 = v93 + 640 * v9 + 2 * v101;
    v123 = (v95 + 4 * v101);
    do
    {
      v90.i16[0] = *(v122 + 704);
      v124 = v90.u32[0];
      *v123++ = v124;
      LOWORD(v124) = *(v122 + 320);
      v90.f32[0] = LODWORD(v124);
      *v121++ = v90.i32[0];
      v122 += 2;
      --v120;
    }

    while (v120);
    goto LABEL_66;
  }

  if (v99)
  {
    v100 = 0;
LABEL_58:
    v108 = v92 - v100 + 1;
    v109 = (v94 + 4 * v100);
    v110 = (640 * v9 + 2 * v100 + v93 + 512);
    v111 = (v95 + 4 * v100);
    do
    {
      v90.i16[0] = *v110;
      v112 = v90.u32[0];
      *v111++ = v112;
      LOWORD(v112) = *(v110 - 96);
      v90.f32[0] = LODWORD(v112);
      *v109++ = v90.i32[0];
      ++v110;
      --v108;
    }

    while (v108);
    goto LABEL_66;
  }

  v102 = (v93 + 640 * v9 + 320);
  v100 = v96 & 0xF8;
  v103 = *(*(a1 + 37424) + 8);
  v104 = *(*(a1 + 37448) + 8);
  v105 = v100;
  do
  {
    v106 = v102[12];
    *v103 = vcvtq_f32_u32(vmovl_u16(*v106.i8));
    v103[1] = vcvtq_f32_u32(vmovl_high_u16(v106));
    v103 += 2;
    v107 = *v102++;
    v90 = vcvtq_f32_u32(vmovl_u16(*v107.i8));
    *v104 = v90;
    v104[1] = vcvtq_f32_u32(vmovl_high_u16(v107));
    v104 += 2;
    v105 -= 8;
  }

  while (v105);
  if (v96 != v100)
  {
    goto LABEL_58;
  }

LABEL_66:
  if (v91 <= 0x5A)
  {
    if (v91 <= 0x53 && v97 > 0x1F)
    {
      v125 = 91 - v92;
      v126 = (91 - v92) & 0x78;
      v127 = 4 * v92 + 4;
      v128 = (v94 + v127);
      v129 = (v95 + v127);
      v130 = v126;
      do
      {
        *v129 = 0uLL;
        v129[1] = 0uLL;
        v129 += 2;
        *v128 = 0uLL;
        v128[1] = 0uLL;
        v128 += 2;
        v130 -= 8;
      }

      while (v130);
      if (v125 == v126)
      {
        return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
      }

      v96 += v126;
    }

    v131 = 4 * v96;
    do
    {
      *(v95 + v131) = 0;
      *(v94 + v131) = 0;
      v131 += 4;
    }

    while (v131 != 368);
  }

  return peridot::PeridotDXPPreProcessor::process_inner(a1, (a1 + 37328), (a1 + 37376), (a1 + 37400), (a1 + 37424), (a1 + 37448), v9, v8, a7, a6);
}

void conv<float,float const>(const float *a1, vDSP_Length __N, uint64_t a3, vDSP_Length a4, float *a5, int a6)
{
  if (a4 <= 3)
  {
    __assert_rtn("conv", "MatlabUtils.cpp", 30, "coeffLen>=4");
  }

  v9 = a1;
  if (a6 > 1)
  {
    if (a6 == 2)
    {
      v17 = a4 - 1;
      v18 = a4 - 1 + __N;
      if (v18 <= 0x1F)
      {
        __assert_rtn("conv", "MatlabUtils.cpp", 69, "(arrLen+coeffLen-1)>=32");
      }

      {
        v58 = a5;
        a5 = v58;
        if (v59)
        {
          conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr = 0;
          unk_28134C3E0 = 0;
          qword_28134C3E8 = 0;
          a5 = v58;
        }
      }

      v19 = a5;
      v20 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v21 = (unk_28134C3E0 - conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr) >> 2;
      if (v18 > v21)
      {
        std::vector<float>::__append(&conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr, v18 - v21);
        v20 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      }

      bzero(v20, 4 * v18);
      memcpy((conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr + 4 * (v17 >> 1)), v9, 4 * __N);
      a1 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v14 = (a3 + 4 * a4 - 4);
      a5 = v19;
    }

    else
    {
      if (a6 != 3)
      {
        goto LABEL_52;
      }

      v14 = (a3 + 4 * a4 - 4);
    }

    v15 = __N;
LABEL_22:

    vDSP_conv(a1, 1, v14, -1, a5, 1, v15, a4);
    return;
  }

  if (a6)
  {
    if (a6 == 1)
    {
      if (a4 + __N - 1 <= 0x1F)
      {
        __assert_rtn("conv", "MatlabUtils.cpp", 57, "(arrLen+coeffLen-1)>=32");
      }

      {
        v56 = a5;
        a5 = v56;
        if (v57)
        {
          conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr = 0;
          unk_28134C400 = 0;
          qword_28134C408 = 0;
          a5 = v56;
        }
      }

      v10 = a5;
      v11 = __N + 2 * a4 - 2;
      v12 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v13 = (unk_28134C400 - conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr) >> 2;
      if (v11 > v13)
      {
        std::vector<float>::__append(&conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr, v11 - v13);
        v12 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      }

      bzero(v12, 4 * v11);
      memcpy((conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr + 4 * a4 - 4), v9, 4 * __N);
      a1 = conv<float,float const>(float const*,unsigned long,float const *,unsigned long,float*,ConvType)::paddedArr;
      v14 = (a3 + 4 * a4 - 4);
      a5 = v10;
      v15 = a4 + __N - 1;
      goto LABEL_22;
    }

LABEL_52:
    v55 = std::operator<<[abi:ne200100]<std::char_traits<char>>();
    std::endl[abi:ne200100]<char,std::char_traits<char>>(v55);
    exit(-1);
  }

  v16 = __N - a4 + 1;
  if (__N - a4 != -1)
  {
    if (v16 >= a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = __N - a4 + 1;
    }

    v23 = a3 + 4 * a4;
    if (a4 > 7)
    {
      if (a4 == (a4 & 0xFFFFFFFFFFFFFFF8))
      {
        v29 = 0;
        v30 = (v23 - 16);
        v31 = (a1 + 4);
        do
        {
          v32 = 0uLL;
          v33 = v31;
          v34 = v30;
          v35 = a4;
          v36 = 0uLL;
          do
          {
            v37 = vrev64q_s32(*v34);
            v38 = vrev64q_s32(v34[-1]);
            v32 = vmlaq_f32(v32, v33[-1], vextq_s8(v37, v37, 8uLL));
            v36 = vmlaq_f32(v36, *v33, vextq_s8(v38, v38, 8uLL));
            v34 -= 2;
            v33 += 2;
            v35 -= 8;
          }

          while (v35);
          v39 = vaddq_f32(v36, v32);
          a5[v29++] = vaddv_f32(*&vpaddq_f32(v39, v39));
          v31 = (v31 + 4);
        }

        while (v29 != v22);
      }

      else
      {
        v40 = 0;
        v41 = (a1 + 4);
        v42 = (a1 + ((4 * a4) & 0xFFFFFFFFFFFFFFE0));
        do
        {
          v43 = 0uLL;
          v44 = v41;
          v45 = (4 * a4 + a3 - 16);
          v46 = a4 & 0xFFFFFFFFFFFFFFF8;
          v47 = 0uLL;
          do
          {
            v48 = vrev64q_s32(*v45);
            v49 = vrev64q_s32(v45[-1]);
            v43 = vmlaq_f32(v43, v44[-1], vextq_s8(v48, v48, 8uLL));
            v47 = vmlaq_f32(v47, *v44, vextq_s8(v49, v49, 8uLL));
            v45 -= 2;
            v44 += 2;
            v46 -= 8;
          }

          while (v46);
          v50 = vaddq_f32(v47, v43);
          v51 = vaddv_f32(*&vpaddq_f32(v50, v50));
          v52 = v42;
          v53 = a4 - (a4 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v54 = *v52++;
            v51 = v51 + (*(a3 - 4 + 4 * v53--) * v54);
          }

          while (v53);
          a5[v40++] = v51;
          v41 = (v41 + 4);
          ++v42;
        }

        while (v40 != v22);
      }
    }

    else
    {
      v24 = (a1 + 6);
      v25 = a5;
      do
      {
        v26 = vrev64q_s32(*(v24 - 6));
        v27 = vmulq_f32(*(v23 - 16), vextq_s8(v26, v26, 8uLL));
        v28 = vaddv_f32(*&vpaddq_f32(v27, v27));
        if (a4 != 4)
        {
          v28 = v28 + (*(v23 - 20) * *(v24 - 2));
          if (a4 != 5)
          {
            v28 = v28 + (*(v23 - 24) * *(v24 - 1));
            if (a4 != 6)
            {
              v28 = v28 + (*(v23 - 28) * *v24);
            }
          }
        }

        *v25++ = v28;
        ++v24;
        --v22;
      }

      while (v22);
    }
  }

  v15 = v16 - a4;
  if (v16 > a4)
  {
    v14 = (a3 + 4 * a4 - 4);
    a1 = &v9[a4];
    a5 += a4;
    goto LABEL_22;
  }
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void cConv(const float *a1, vDSP_Length a2, const float *a3, vDSP_Length __P, uint64_t a5, float *a6)
{
  v11 = __P - 1;
  v12 = ((__P - 1) >> 1);
  {
    v77 = a3;
    a3 = v77;
    if (v78)
    {
      cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr = 0;
      unk_28134C3C0 = 0;
      qword_28134C3C8 = 0;
      a3 = v77;
    }
  }

  v13 = a5 + 1;
  v14 = a5 + 1 + v12 + v12;
  v15 = cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr;
  v16 = (unk_28134C3C0 - cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr) >> 2;
  v17 = v14 - v16;
  if (v14 > v16)
  {
    v79 = v12;
    v18 = a6;
    v19 = a1;
    v20 = a5;
    v21 = v14;
    v22 = v11;
    v23 = a2;
    v24 = a3;
    std::vector<float>::__append(&cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr, v17);
    a3 = v24;
    a2 = v23;
    v11 = v22;
    v14 = v21;
    a5 = v20;
    a1 = v19;
    a6 = v18;
    v12 = v79;
    v15 = cConv(float const*,unsigned long,float const*,unsigned long,unsigned long,float *)::paddedArr;
  }

  if (v12)
  {
    if (v12 <= 0xB || 4 * v12 + v15 - &a1[a5] - 4 < 0x20)
    {
      v25 = 0;
LABEL_8:
      v26 = v25 - v12;
      v27 = (v15 + 4 * v25);
      do
      {
        *v27++ = a1[a5 + 1 + v26];
      }

      while (!__CFADD__(v26++, 1));
      goto LABEL_11;
    }

    v25 = v12 & 0xFFFFFFFFFFFFFFF8;
    v65 = (v15 + 16);
    v66 = (a1 + 4 * a5 - 4 * v12 + 20);
    v67 = v12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v68 = *v66;
      *(v65 - 1) = *(v66 - 1);
      *v65 = v68;
      v65 += 2;
      v66 += 2;
      v67 -= 8;
    }

    while (v67);
    if (v25 != v12)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (!v13)
  {
    goto LABEL_17;
  }

  if (v13 <= 7 || 4 * v12 + v15 - a1 < 0x20)
  {
    v29 = 0;
LABEL_15:
    v30 = a5 - v29 + 1;
    v31 = v29;
    v32 = (v15 + 4 * v29 + 4 * v12);
    v33 = &a1[v31];
    do
    {
      v34 = *v33++;
      *v32++ = v34;
      --v30;
    }

    while (v30);
    goto LABEL_17;
  }

  v29 = v13 & 0xFFFFFFFFFFFFFFF8;
  v69 = (4 * v12 + v15 + 16);
  v70 = a1 + 4;
  v71 = v13 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v72 = *v70;
    *(v69 - 1) = *(v70 - 1);
    *v69 = v72;
    v69 += 2;
    v70 += 8;
    v71 -= 8;
  }

  while (v71);
  if (v13 != v29)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12 <= 0xB || (v35 = 4 * (v12 + a5), (v35 + v15 - a1 + 4) < 0x20))
  {
    v36 = 0;
LABEL_21:
    v37 = v12 - v36;
    v38 = v36;
    v39 = (4 * v36 + 4 * (v12 + a5) + v15 + 4);
    v40 = &a1[v38];
    do
    {
      v41 = *v40++;
      *v39++ = v41;
      --v37;
    }

    while (v37);
    goto LABEL_23;
  }

  v36 = v12 & 0xFFFFFFFFFFFFFFF8;
  v73 = (v35 + v15 + 20);
  v74 = a1 + 4;
  v75 = v12 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v76 = *v74;
    *(v73 - 1) = *(v74 - 1);
    *v73 = v76;
    v73 += 2;
    v74 += 8;
    v75 -= 8;
  }

  while (v75);
  if (v36 != v12)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (__P <= 3)
  {
    __assert_rtn("conv", "MatlabUtils.cpp", 30, "coeffLen>=4");
  }

  v42 = v14 - __P + 1;
  if (v14 - __P != -1)
  {
    if (v42 >= __P)
    {
      v43 = __P;
    }

    else
    {
      v43 = v14 - __P + 1;
    }

    if (__P >= 8)
    {
      v50 = 0;
      v51 = (v15 + 16);
      v52 = (v15 + ((4 * __P) & 0xFFFFFFFFFFFFFFE0));
      do
      {
        v53 = 0uLL;
        v54 = v51;
        v55 = &a3[__P - 4];
        v56 = __P & 0xFFFFFFFFFFFFFFF8;
        v57 = 0uLL;
        do
        {
          v58 = vrev64q_s32(*v55);
          v59 = vrev64q_s32(v55[-1]);
          v53 = vmlaq_f32(v53, v54[-1], vextq_s8(v58, v58, 8uLL));
          v57 = vmlaq_f32(v57, *v54, vextq_s8(v59, v59, 8uLL));
          v55 -= 2;
          v54 += 2;
          v56 -= 8;
        }

        while (v56);
        v60 = vaddq_f32(v57, v53);
        v61 = vaddv_f32(*&vpaddq_f32(v60, v60));
        if (__P != (__P & 0xFFFFFFFFFFFFFFF8))
        {
          v62 = v52;
          v63 = __P - (__P & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v64 = *v62++;
            v61 = v61 + (a3[--v63] * v64);
          }

          while (v63);
        }

        a6[v50++] = v61;
        v51 = (v51 + 4);
        ++v52;
      }

      while (v50 != v43);
    }

    else
    {
      v44 = &a3[__P];
      v45 = (v15 + 24);
      v46 = a6;
      do
      {
        v47 = vrev64q_s32(*(v45 - 6));
        v48 = vmulq_f32(*(v44 - 4), vextq_s8(v47, v47, 8uLL));
        v49 = vaddv_f32(*&vpaddq_f32(v48, v48));
        if (__P != 4)
        {
          v49 = v49 + (*(v44 - 5) * *(v45 - 2));
          if (__P != 5)
          {
            v49 = v49 + (*(v44 - 6) * *(v45 - 1));
            if (__P != 6)
            {
              v49 = v49 + (*(v44 - 7) * *v45);
            }
          }
        }

        *v46++ = v49;
        ++v45;
        --v43;
      }

      while (v43);
    }
  }

  if (v42 > __P)
  {
    vDSP_conv((v15 + 4 * __P), 1, &a3[__P - 1], -1, &a6[__P], 1, v42 - __P, __P);
  }

  if (v14 - v11 < a2)
  {

    bzero(a6 + 8 * v12 + 4 * a5 - 4 * __P + 8, 4 * (__P + a2 - (a5 + 2 * v12)) - 8);
  }
}

double peridot::PeridotDxpMacroSpatial::PeridotDxpMacroSpatial(peridot::PeridotDxpMacroSpatial *this)
{
  result = 32.0000076;
  *this = xmmword_2247A4B60;
  *(this + 4) = 1092616192;
  *(this + 6) = 0;
  return result;
}

{
  result = 32.0000076;
  *this = xmmword_2247A4B60;
  *(this + 4) = 1092616192;
  *(this + 6) = 0;
  return result;
}

void peridot::PeridotDxpMacroSpatial::~PeridotDxpMacroSpatial(id *this)
{
}

{
}

void *peridot::PeridotDxpMacroSpatial::configure(void *this, const peridot::PeridotDXPCalib *a2)
{
  v2 = *(a2 + 503);
  *(this + 26) = *(a2 + 4030);
  *(this + 20) = v2;
  v3 = *(a2 + 4038);
  this[5] = *(a2 + 4044);
  *(this + 34) = v3;
  return this;
}

void peridot::PeridotDxpMacroSpatial::runPolyFit(float *a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, int a6)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*(a2 + 108) == 1)
  {
    peridot::PeridotDxpMacroSpatial::detector(a1, a2, (a5 + 8), (a5 + 16));
    v12 = 0.0;
    if (*(a5 + 16) > a1[3])
    {
      v12 = 1.0;
    }

    v13 = 1.0 / (expf((a1[2] - (*(a5 + 8) * v12)) * a1[1]) + 1.0);
    *(a5 + 4) = v13;
    if (v13 <= 0.5)
    {
      *a5 = 0;
      return;
    }

    v16 = *a2;
    v17 = (*(a2 + 4) + *a2) + *(a2 + 8);
    if (v17 > *a2)
    {
      v16 = (*(a2 + 4) + *a2) + *(a2 + 8);
    }

    v18 = (*(a2 + 16) + *(a2 + 12)) + *(a2 + 20);
    v19 = v18 > v16;
    if (v18 > v16)
    {
      v16 = (*(a2 + 16) + *(a2 + 12)) + *(a2 + 20);
    }

    v20 = (*(a2 + 28) + *(a2 + 24)) + *(a2 + 32);
    if (v20 > v16)
    {
      v19 = 2;
      v16 = (*(a2 + 28) + *(a2 + 24)) + *(a2 + 32);
    }

    v21 = *(a2 + 44);
    v22 = *(a2 + 40) + *(a2 + 36);
    v23 = v22 + v21;
    if ((v22 + v21) > v16)
    {
      v19 = 3;
      v16 = v22 + v21;
    }

    v24 = (*(a2 + 52) + *(a2 + 48)) + *(a2 + 56);
    if (v24 > v16)
    {
      v19 = 4;
      v16 = (*(a2 + 52) + *(a2 + 48)) + *(a2 + 56);
    }

    v25 = *(a2 + 68);
    v26 = *(a2 + 64) + *(a2 + 60);
    v27 = v26 + v25;
    if ((v26 + v25) > v16)
    {
      v19 = 5;
      v16 = v26 + v25;
    }

    v28 = *(a2 + 72);
    v29 = *(a2 + 76);
    v30 = *(a2 + 80);
    v31 = *(a2 + 84);
    v32 = (v29 + v28) + v30;
    if (v32 > v16)
    {
      v19 = 6;
      v16 = (v29 + v28) + v30;
    }

    v33 = *(a2 + 88);
    v34 = *(a2 + 92);
    v35 = (v33 + v31) + v34;
    v36 = 7;
    if (v35 > v16)
    {
      v37 = (v33 + v31) + v34;
    }

    else
    {
      v36 = v19;
      v37 = v16;
    }

    v38 = *(a2 + 96);
    v39 = *(a2 + 100);
    v40 = *(a2 + 104);
    *v14.i32 = (v39 + v38) + v40;
    v41 = 8;
    if (*v14.i32 <= v37)
    {
      v41 = v36;
    }

    v42 = 2.0;
    if (*v14.i32 <= v37)
    {
      if (!v36)
      {
LABEL_74:
        *(a5 + 4) = 0;
        return;
      }

      v43 = (a2 + 12 * v36);
      v28 = *(v43 - 3);
      v29 = *(v43 - 2);
      v30 = *(v43 - 1);
      v31 = *v43;
      v33 = v43[1];
      v34 = v43[2];
      v38 = v43[3];
      v39 = v43[4];
      v40 = v43[5];
      v42 = 1.0;
    }

    v44 = (v31 + v28) + v38;
    v45 = (v33 + v29) + v39;
    v46 = (v34 + v30) + v40;
    v47 = v45 > v44;
    if (v45 <= v44)
    {
      v48 = (v31 + v28) + v38;
    }

    else
    {
      v48 = (v33 + v29) + v39;
    }

    if (v46 > v48)
    {
      v47 = 2;
    }

    if (v47)
    {
      v49 = 0.0;
      if (v47 == 1)
      {
        v50 = -(v45 + (v46 + v44) * -0.5);
        *v15.i32 = ((v46 + (v44 * 2.0)) + (v45 * -3.0)) / (v50 + v50);
LABEL_40:
        v51 = (v29 + v28) + v30;
        v52 = (v33 + v31) + v34;
        v53 = (v39 + v38) + v40;
        if (a6)
        {
          v54 = v35;
          v55 = (*v14.i32 + v35 * 0.5) * 0.5;
          v56 = v17;
          v57 = v18;
          v58 = (v56 + v57 * 0.5) * 0.5;
          v59 = v20;
          v60 = (v57 + (v59 + v56) * 0.5) * 0.5;
          *v81 = v58;
          *&v81[1] = v60;
          v61 = v60 > v58;
          if (v60 <= v58)
          {
            v60 = v58;
          }

          v62 = v23;
          v63 = (v59 + (v62 + v57) * 0.5) * 0.5;
          if (v60 < v63)
          {
            v61 = 2;
            v60 = v63;
          }

          v64 = v24;
          v65 = (v62 + (v64 + v59) * 0.5) * 0.5;
          *&v81[2] = v63;
          *&v81[3] = v65;
          if (v60 < v65)
          {
            v61 = 3;
            v60 = v65;
          }

          v66 = v27;
          v67 = (v64 + (v27 + v62) * 0.5) * 0.5;
          if (v60 < v67)
          {
            v61 = 4;
            v60 = v67;
          }

          v68 = v32;
          v69 = (v66 + (v32 + v64) * 0.5) * 0.5;
          *&v81[4] = v67;
          *&v81[5] = v69;
          if (v60 < v69)
          {
            v61 = 5;
            v60 = (v66 + (v32 + v64) * 0.5) * 0.5;
          }

          v70 = (v68 + (v54 + v66) * 0.5) * 0.5;
          if (v60 < v70)
          {
            v61 = 6;
            v60 = v70;
          }

          v71 = (v54 + (*v14.i32 + v68) * 0.5) * 0.5;
          *&v81[6] = v70;
          *&v81[7] = v71;
          if (v60 < v71)
          {
            v61 = 7;
            v60 = (v54 + (*v14.i32 + v68) * 0.5) * 0.5;
          }

          *&v81[8] = v55;
          if (v60 < v55)
          {
            v61 = 8;
          }

          if (v41 - 1 <= 6)
          {
            if ((v61 & 0xFFFFFFFFFFFFFFF7) != 0)
            {
              v72 = &v81[v61];
              v51 = *(v72 - 1);
              v52 = *v72;
              v53 = v72[1];
            }

            else
            {
              v51 = 0.0;
              v52 = 0.0;
              v53 = 0.0;
            }

            v41 = v61;
          }
        }

        if (v52 > v51 && v52 > v53)
        {
          v73 = -(v52 + (v53 + v51) * -0.5);
          v74 = ((v53 + (v51 * 2.0)) + (v52 * -3.0)) / (v73 + v73);
          v14.i32[1] = 0;
          if (v74 < 0.0)
          {
            v74 = 0.0;
          }

          v14.i32[0] = 3.0;
          if (v74 <= 3.0)
          {
            v75 = v74;
          }

          else
          {
            v75 = 3.0;
          }

LABEL_75:
          v14.i8[0] = *(a1 + a3 + 20);
          v77 = *v15.i32 + (vmovl_s16(*&vmovl_s8(v14)).i32[0] + -1.0);
          v15.i8[0] = *(a1 + a3 + 34);
          v78 = (((-1.0 - v42) + v75) + vmovl_s16(*&vmovl_s8(v15)).i32[0]) + v41;
          v79 = *a4;
          v80 = a4[1];
          *(a5 + 20) = v80 - v78;
          *(a5 + 12) = -(v80 - v78);
          peridot::PeridotDxpMacroSpatial::shiftToDistance(a1, v79, v80, v77, v78);
        }

        v75 = 2.5;
        v76 = *v14.i32 <= v37 || v53 <= v52;
        if (!v76)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v49 = 0.5;
    }

    v76 = v46 <= v48;
    v15.i32[0] = 2.5;
    if (v76)
    {
      *v15.i32 = v49;
    }

    goto LABEL_40;
  }
}

float peridot::PeridotDxpMacroSpatial::detector(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v4.i32[0] = *(a2 + 4);
  v5 = *(a2 + 12);
  if (((*&v5 + *a2) + (v4.f32[0] + *(&v5 + 1))) <= *a2)
  {
    v6 = *a2;
  }

  else
  {
    v6 = (*&v5 + *a2) + (v4.f32[0] + *(&v5 + 1));
  }

  v7 = *(a2 + 20);
  v8 = (*(&v5 + 1) + v7.f32[0]) + (v4.f32[0] + *(a2 + 8));
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = (*(&v5 + 1) + v7.f32[0]) + (v4.f32[0] + *(a2 + 8));
  }

  v10 = (v7.f32[1] + *&v5) + (*(&v5 + 1) + v7.f32[2]);
  if (v10 > v9)
  {
    v11 = (v7.f32[1] + *&v5) + (*(&v5 + 1) + v7.f32[2]);
  }

  else
  {
    v11 = v9;
  }

  v12 = (v7.f32[2] + *(&v5 + 1)) + (v7.f32[0] + v7.f32[3]);
  v13 = v12 > v11;
  v14 = v10 > v9 || v12 > v11;
  if (v12 > v11)
  {
    v11 = (v7.f32[2] + *(&v5 + 1)) + (v7.f32[0] + v7.f32[3]);
  }

  v15 = *(a2 + 36);
  v17 = v8 > v6 && v10 <= v9;
  v18 = (v15.f32[0] + v7.f32[1]) + (v7.f32[2] + v15.f32[1]);
  v19 = v18 <= v11 && (v13 || v17);
  if (v18 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v14 = 2;
  }

  v20 = (v15.f32[1] + v7.f32[2]) + (v7.f32[3] + v15.f32[2]);
  if (v20 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v14 = 2;
  }

  v21 = *(a2 + 52);
  if (((v15.f32[3] + v15.f32[0]) + (v15.f32[1] + v21.f32[0])) > v20)
  {
    v19 = 0;
    v14 = 3;
    v20 = (v15.f32[3] + v15.f32[0]) + (v15.f32[1] + v21.f32[0]);
  }

  v22 = (v21.f32[0] + v15.f32[1]) + (v15.f32[2] + v21.f32[1]);
  if (v22 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v19 = 1;
    v14 = 3;
  }

  v23 = (v21.f32[2] + v15.f32[3]) + (v21.f32[0] + v21.f32[3]);
  if (v23 <= v22)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v25 = 4;
  if (v23 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v14 = 4;
  }

  v26 = *(a2 + 68);
  v27 = (v21.f32[3] + v21.f32[0]) + (v21.f32[1] + v26);
  if (v27 <= v23)
  {
    v27 = v23;
  }

  else
  {
    v24 = 1;
    v14 = 4;
  }

  v28 = *(a2 + 72);
  if (((*&v28 + v21.f32[2]) + (v21.f32[3] + *(&v28 + 1))) > v27)
  {
    v24 = 0;
    v14 = 5;
    v27 = (*&v28 + v21.f32[2]) + (v21.f32[3] + *(&v28 + 1));
  }

  v29 = *(a2 + 80);
  v30 = (*(&v28 + 1) + v21.f32[3]) + (v26 + v29.f32[0]);
  if (v30 <= v27)
  {
    v30 = v27;
  }

  else
  {
    v24 = 1;
    v14 = 5;
  }

  if (((v29.f32[1] + *&v28) + (*(&v28 + 1) + v29.f32[2])) > v30)
  {
    v24 = 0;
    v14 = 6;
    v30 = (v29.f32[1] + *&v28) + (*(&v28 + 1) + v29.f32[2]);
  }

  if (((v29.f32[2] + *(&v28 + 1)) + (v29.f32[0] + v29.f32[3])) > v30)
  {
    v24 = 1;
    v14 = 6;
    v30 = (v29.f32[2] + *(&v28 + 1)) + (v29.f32[0] + v29.f32[3]);
  }

  v31 = *(a2 + 96);
  v32 = *(a2 + 100);
  if (((v31 + v29.f32[1]) + (v29.f32[2] + v32)) > v30)
  {
    v24 = 0;
    v14 = 7;
    v30 = (v31 + v29.f32[1]) + (v29.f32[2] + v32);
  }

  v33 = *(a2 + 104);
  if (((v32 + v29.f32[2]) + (v29.f32[3] + v33)) > v30)
  {
    v24 = 1;
    v14 = 7;
  }

  v34 = 12 * v14;
  v35 = a2 + 12 + v34;
  v36 = a2 + v34;
  if (v24)
  {
    v25 = 8;
  }

  v37.i32[1] = *(a2 + 8);
  v37.i64[1] = *(a2 + 12);
  v4.i32[1] = *(a2 + 68);
  v4.i64[1] = *(a2 + 72);
  v38 = vaddq_f32(v4, v29);
  v37.i32[0] = *a2;
  v39 = vaddq_f32(v37, vaddq_f32(v15, vaddq_f32(v7, v21)));
  v39.f32[0] = ((v31 + (v32 + v33)) + vaddv_f32(*&vpaddq_f32(v38, v38))) + vaddv_f32(*&vpaddq_f32(v39, v39));
  v38.f32[0] = (*(v36 + 4 * v24) + *(v35 + 4 * v24)) + (*(v35 + v25) + *(v36 + v25));
  v39.f32[0] = (v39.f32[0] - v38.f32[0]) * 0.043478;
  *a3 = (v38.f32[0] * 0.25) / v39.f32[0];
  result = (v38.f32[0] * 0.25) - v39.f32[0];
  *a4 = result;
  return result;
}

void peridot::PeridotDxpMacroSpatial::shiftToDistance(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v10[0] = 84.0 - a2;
  v10[1] = a3;
  v9[0] = 84.0 - a4;
  v9[1] = a5;
  [*(a1 + 48) undistort:1 distortedPixels:v10 outUndistorted:&v8];
  [*(a1 + 48) undistort:1 distortedPixels:v9 outUndistorted:v7];
  v6 = &unk_283809D60;
  operator new[]();
}

void sub_224769428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  Matrix<float>::~Matrix(&a15);
  Matrix<float>::~Matrix(&a25);
  Matrix<float>::~Matrix(&a30);
  _Unwind_Resume(a1);
}

uint64_t Matrix<float>::Inverse(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  *a1 = &unk_283809D60;
  if (v4 * v5)
  {
    operator new[]();
  }

  result = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 4 * v5 * v4;
  v7 = *(a2 + 8);
  v8 = *v7;
  if (v5 == 3)
  {
    v9 = ((-((v7[7] * v7[5]) - (v7[8] * v7[4])) * v8) + (-((v7[6] * v7[4]) - (v7[3] * v7[7])) * v7[2])) + (-((v7[3] * v7[8]) - (v7[6] * v7[5])) * v7[1]);
    if (v9 == 0.0)
    {
      return result;
    }
  }

  else
  {
    v10 = v7[3];
    v9 = -((v7[2] * v7[1]) - (v10 * v8));
    if (v9 == 0.0)
    {
      return result;
    }

    if (v5 == 2)
    {
      v11 = 1.0 / v9;
      MEMORY[0] = v10 * v11;
      MEMORY[4] = -(v7[1] * v11);
      MEMORY[8] = -(v7[2] * v11);
      MEMORY[0xC] = *v7 * v11;
      return result;
    }
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = 0;
    v14 = 5;
    v15 = 1;
    v16 = 8;
    v17 = 2;
    v18 = 7;
    v19 = 4;
    v20 = 1.0 / v9;
    do
    {
      LODWORD(result) = 0;
      v21 = 0;
      v22 = 9 * (v15 / 3);
      v23 = 9 * (v17 / 3);
      v24 = v13 + 1;
      v25 = v14 - v22;
      v26 = v16 - v23;
      v27 = v18 - v23;
      v28 = v19 - v22;
      v29 = 2;
      v30 = 1;
      do
      {
        v31 = *(a2 + 8);
        *(*(a1 + 8) + 4 * v13 + 4 * result) = -((*(v31 + 4 * (v21 + v27 - 3 * (v30 / 3))) * *(v31 + 4 * (v21 + v25 - 3 * (v29 / 3)))) - (*(v31 + 4 * (v21 + v26 - 3 * (v29 / 3))) * *(v31 + 4 * (v21 + v28 - 3 * (v30 / 3))))) * v20;
        result = result + v4;
        ++v29;
        ++v30;
        ++v21;
      }

      while (v12 != v21);
      v14 += 3;
      ++v15;
      v16 += 3;
      ++v17;
      v18 += 3;
      v19 += 3;
      ++v13;
    }

    while (v24 != v12);
  }

  return result;
}

void sub_224769DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  Matrix<float>::~Matrix(&a22);
  Matrix<float>::~Matrix(&a27);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a32);
  MatrixNxPts<1u,float>::~MatrixNxPts(&a37);
  MatrixNxPts<1u,float>::~MatrixNxPts(v37 - 232);
  operator delete(__p);
  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_22476A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 == 1)
  {
    if (a22)
    {
      MEMORY[0x22AA53170](a22, 0x1000C8052888210);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t coder::array_base<float,int,2>::ensureCapacity(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    if (v2 <= 16)
    {
      v2 = 16;
    }

    if (a2 >= 17)
    {
      do
      {
        if (v2 <= 0x3FFFFFFF)
        {
          v2 *= 2;
        }

        else
        {
          v2 = 0x7FFFFFFF;
        }
      }

      while (v2 < a2);
    }

    operator new[]();
  }

  *(result + 8) = a2;
  return result;
}

uint64_t Buckets::Buckets(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  v3 = *(a2 + 8);
  v4 = (v3 - *a2) >> 2;
  if (v4 <= 1)
  {
    __assert_rtn("Buckets", "PeridotTelemetry.mm", 87, "false");
  }

  if (a1 + 16 == a2)
  {
LABEL_37:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 16), *a2, v3, v4);
  v5 = ((*(a1 + 24) - *(a1 + 16)) >> 2) - 1;
  if (v5 > (*(a1 + 56) - *(a1 + 40)) >> 3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    goto LABEL_37;
  }

  v6 = *(a1 + 16);
  v7 = 0x277CCA000uLL;
  if (*(a1 + 24) - v6 != 4)
  {
    v17 = 0;
    while (1)
    {
      v19 = v6[v17++];
      v20 = v6[v17];
      v21 = *(v7 + 3240);
      v22 = floatToStringScientific(v19);
      v23 = floatToStringScientific(v20);
      v24 = objc_msgSend(v21, "stringWithFormat:", @"(%@,%@]"), v22, v23;

      v26 = *(a1 + 48);
      v25 = *(a1 + 56);
      if (v26 >= v25)
      {
        break;
      }

      *v26 = v24;
      v18 = (v26 + 1);
LABEL_10:
      *(a1 + 48) = v18;

      v6 = *(a1 + 16);
      if (v17 >= ((*(a1 + 24) - v6) >> 2) - 1)
      {
        goto LABEL_7;
      }
    }

    v27 = *(a1 + 40);
    v28 = v26 - v27;
    v29 = (v26 - v27) >> 3;
    if ((v29 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v30 = v25 - v27;
    v31 = v30 >> 2;
    if (v30 >> 2 <= (v29 + 1))
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      v32 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v32 = v31;
    }

    if (v32)
    {
      if (!(v32 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = v24;
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    v36 = 8 * v29 - (v35 - v34);
    *(8 * v29) = v33;
    v18 = 8 * v29 + 8;
    v37 = v35 - v34;
    if (v35 == v34)
    {
LABEL_33:
      *(a1 + 40) = v36;
      *(a1 + 48) = v18;
      *(a1 + 56) = 0;
      v7 = 0x277CCA000;
      if (v34)
      {
        operator delete(v34);
      }

      goto LABEL_10;
    }

    v38 = v37 - 8;
    v39 = v34;
    v40 = (8 * v29 - (v35 - v34));
    if ((v37 - 8) >= 0x98)
    {
      if (v34 >= &v28[(v38 & 0xFFFFFFFFFFFFFFF8) - v37 + 8] || (v39 = v34, v40 = (8 * v29 - (v35 - v34)), v36 >= v34 + (v38 & 0xFFFFFFFFFFFFFFF8) + 8))
      {
        v41 = v37 >> 3;
        v42 = (v38 >> 3) + 1;
        v43 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        v39 = &v34[v43];
        v44 = (-8 * v41 + 8 * v29 + 16);
        v45 = v34;
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *v45;
          v48 = *(v45 + 1);
          *v45 = 0uLL;
          *(v45 + 1) = 0uLL;
          v45 += 4;
          *(v44 - 1) = v47;
          *v44 = v48;
          v44 += 2;
          v46 -= 4;
        }

        while (v46);
        if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_30;
        }

        v40 = (v36 + v43 * 8);
      }
    }

    do
    {
      v49 = *v39;
      *v39++ = 0;
      *v40++ = v49;
    }

    while (v39 != v35);
LABEL_30:
    v50 = 8 * v29 - (v35 - v34);
    do
    {
      v51 = *v34++;
    }

    while (v34 != v35);
    v34 = *(a1 + 40);
    v36 = v50;
    goto LABEL_33;
  }

LABEL_7:
  v8 = *(v7 + 3240);
  v9 = floatToStringScientific(*v6);
  v10 = objc_msgSend(v8, "stringWithFormat:", @"(-Inf,%@]"), v9;
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  v12 = *(v7 + 3240);
  v13 = floatToStringScientific(*(*(a1 + 24) - 4));
  v14 = objc_msgSend(v12, "stringWithFormat:", @"(%@,Inf]"), v13;
  v15 = *a1;
  *a1 = v14;

  return a1;
}

void sub_22476B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::vector<NSString * {__strong}>::~vector[abi:ne200100]((v12 + 40));
  v15 = *a12;
  if (*a12)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

id floatToStringScientific(float a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::ostream::operator<<();
  std::stringbuf::str();
  v1 = HIBYTE(v16);
  v2 = HIBYTE(v16);
  if (v16 < 0)
  {
    v1 = __p[1];
  }

  v3 = MEMORY[0x277D82828];
  if (v1 >= 5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::ostream::operator<<();
    *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 0x100;
    std::stringbuf::str();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v8;
    v16 = v9;
    v10 = *v3;
    *(&v10 + *(v10 - 24)) = v3[3];
    v11 = MEMORY[0x277D82878] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    MEMORY[0x22AA53140](&v14);
    v2 = HIBYTE(v16);
  }

  v4 = v2 < 0;
  v5 = __p;
  if (v4)
  {
    v5 = __p[0];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v5];
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *v3;
  *(&v17 + *(v17 - 24)) = v3[3];
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x22AA53140](&v21);

  return v6;
}

void sub_22476B3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  std::ostringstream::~ostringstream(&a14);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a53);
  _Unwind_Resume(a1);
}

void **std::vector<NSString * {__strong}>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AA530C0](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_22476B64C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x22AA53140](v2);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x22AA53140](a1 + 112);
  return a1;
}

__CFString *Buckets::getBucketName(Buckets *this, float a2)
{
  v2 = *(this + 2);
  v3 = *v2;
  if (*v2 >= a2)
  {
    this = (this + 8);
    goto LABEL_11;
  }

  v4 = *(this + 3);
  if (*(v4 - 4) < a2)
  {
LABEL_11:
    v9 = *this;
    goto LABEL_12;
  }

  v5 = (v4 - v2) >> 2;
  v6 = 1;
  while (v5 != v6)
  {
    v7 = v6;
    v8 = v3 < a2;
    v3 = v2[v6++];
    v8 = !v8 || v3 < a2;
    if (!v8)
    {
      this = (*(this + 5) + 8 * (v7 - 1));
      goto LABEL_11;
    }
  }

  v9 = @"N/A";
LABEL_12:

  return v9;
}

void sub_22476BACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v17;
  operator delete(v18);
  Buckets::~Buckets((v16 + 256));
  Buckets::~Buckets((v16 + 192));
  Buckets::~Buckets((v16 + 128));
  Buckets::~Buckets((v16 + 64));
  Buckets::~Buckets(v16);
  _Unwind_Resume(a1);
}

void sub_22476BB78()
{
  *(v1 - 56) = v0;
  operator delete(v0);
  JUMPOUT(0x22476BB48);
}

void sub_22476BB90()
{
  v1 = *(v0 - 64);
  if (v1)
  {
    *(v0 - 56) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x22476BB48);
}

void sub_22476BBA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Buckets::~Buckets(Buckets *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

uint64_t *Filters::filters(Filters *this)
{
  {
    Filters::Filters(&Filters::filters(void)::inst);
  }

  return &Filters::filters(void)::inst;
}

void PeridotTelemetry::reportEvent(PeridotTelemetry *this, NSString *a2, NSDictionary *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = this;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a2;
  v6 = [(NSString *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSString *)v5 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 doubleValue];
          if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            NSLog(&cfstr_EventContainsI.isa, v4, v9, v10);

            goto LABEL_17;
          }
        }
      }

      v6 = [(NSString *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (PeridotTelemetry::sendToCoreAnalytics == 1)
  {
    v12 = v5;
    if ((AnalyticsSendEventLazy() & 1) == 0)
    {
      NSLog(&cfstr_FailedSendingE.isa, v4);
    }
  }

  if (PeridotTelemetry::printToConsole == 1)
  {
    NSLog(&stru_28380D3B0.isa, v4, v5);
  }

LABEL_17:
}

void PeridotTelemetry::PeridotTelemetry(PeridotTelemetry *this)
{
  *this = 0;
}

{
  *this = 0;
}

uint64_t PeridotTelemetry::startSession(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 3792) = a3;
  bzero((a1 + 16), 0xEC0uLL);
  *(a1 + 184) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 192) = arc4random_uniform(0x29u) + 10;
  *(a1 + 656) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 664) = arc4random_uniform(0x29u) + 10;
  *(a1 + 1128) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 1136) = arc4random_uniform(0x29u) + 10;
  *(a1 + 1600) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 1608) = arc4random_uniform(0x29u) + 10;
  *(a1 + 2072) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 2080) = arc4random_uniform(0x29u) + 10;
  *(a1 + 2544) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 2552) = arc4random_uniform(0x29u) + 10;
  *(a1 + 3016) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 3024) = arc4random_uniform(0x29u) + 10;
  *(a1 + 3488) = arc4random_uniform(0x10Fu) + 30;
  *(a1 + 3496) = arc4random_uniform(0x29u) + 10;
  *a1 = [MEMORY[0x277CBEAA8] now];

  return MEMORY[0x2821F96F8]();
}

void PeridotTelemetry::endSession(PeridotTelemetry *this)
{
  if (*this)
  {
    PeridotTelemetry::reportSessionStatistics(this);
    v2 = *this;
    *this = 0;
  }
}

void PeridotTelemetry::reportSessionStatistics(PeridotTelemetry *this)
{
  v57[25] = *MEMORY[0x277D85DE8];
  v35 = [MEMORY[0x277CBEAA8] now];
  [v35 timeIntervalSinceDate:*this];
  v3 = v2;
  if (v2 >= 2.0)
  {
    v4 = 0;
    v55 = 0;
    do
    {
      v5 = *(this + v4 + 24);
      if (v5)
      {
        v56[0] = @"BankId";
        v57[0] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v55];
        v56[1] = @"OperatingMode";
        v54 = v57[0];
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
        v57[1] = v53;
        v56[2] = @"Preset";
        v52 = [PDUtils getPresetName:*(this + 2)];
        v57[2] = v52;
        v56[3] = @"NumberOfFrames";
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + v4 + 24)];
        v57[3] = v51;
        v56[4] = @"SessionTime";
        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
        v57[4] = v50;
        v56[5] = @"MaxVSpad";
        LODWORD(v6) = *(this + v4 + 44);
        v49 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
        v57[5] = v49;
        v56[6] = @"MinVSpad";
        LODWORD(v7) = *(this + v4 + 40);
        v48 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
        v57[6] = v48;
        v56[7] = @"MaxVSpadDiff";
        *&v8 = *(this + v4 + 44) - *(this + v4 + 40);
        v47 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        v57[7] = v47;
        v56[8] = @"SessionVSpadDiff";
        *&v9 = *(this + v4 + 60) - *(this + v4 + 56);
        v46 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        v57[8] = v46;
        v56[9] = @"MaxPeriscopeTemperature";
        LODWORD(v10) = *(this + v4 + 68);
        v45 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v57[9] = v45;
        v56[10] = @"MinPeriscopeTemperature";
        LODWORD(v11) = *(this + v4 + 64);
        v44 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        v57[10] = v44;
        v56[11] = @"MaxPeriscopeTemperatureDiff";
        *&v12 = *(this + v4 + 68) - *(this + v4 + 64);
        v43 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v57[11] = v43;
        v56[12] = @"SessionPeriscopeTemperatureDiff";
        *&v13 = *(this + v4 + 84) - *(this + v4 + 80);
        [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v42 = v14 = 14 * v5;
        v57[12] = v42;
        v56[13] = @"HighConfSpotsPercentage";
        if (14 * v5)
        {
          v15 = *(this + v4 + 88) * 100.0 / v14;
        }

        else
        {
          v15 = 0.0;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        v57[13] = v41;
        v56[14] = @"EdgeOrReflectionPercentage";
        if (v14)
        {
          v16 = *(this + v4 + 96) * 100.0 / v14;
        }

        else
        {
          v16 = 0.0;
        }

        v40 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        v57[14] = v40;
        v56[15] = @"GlarePercentage";
        if (v14)
        {
          v17 = *(this + v4 + 104) * 100.0 / v14;
        }

        else
        {
          v17 = 0.0;
        }

        v39 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v57[15] = v39;
        v56[16] = @"RegularGlareFAPercentage";
        if (v14)
        {
          v18 = *(this + v4 + 112) * 100.0 / v14;
        }

        else
        {
          v18 = 0.0;
        }

        v38 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v57[16] = v38;
        v56[17] = @"GroupGlareFAPercentage";
        if (v14)
        {
          v19 = *(this + v4 + 120) * 100.0 / v14;
        }

        else
        {
          v19 = 0.0;
        }

        v37 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
        v57[17] = v37;
        v56[18] = @"SaturatedPercentage";
        if (v14)
        {
          v20 = *(this + v4 + 136) * 100.0 / v14;
        }

        else
        {
          v20 = 0.0;
        }

        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
        v57[18] = v36;
        v56[19] = @"ExtremeAmbPercentage";
        if (v14)
        {
          v21 = *(this + v4 + 144) * 100.0 / v14;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
        v57[19] = v22;
        v56[20] = @"HighStrayPercentage";
        if (v14)
        {
          v23 = *(this + v4 + 152) * 100.0 / v14;
        }

        else
        {
          v23 = 0.0;
        }

        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        v57[20] = v24;
        v56[21] = @"ReflectivityFilteredSpotsPercentage";
        if (v14)
        {
          v25 = *(this + v4 + 160) * 100.0 / v14;
        }

        else
        {
          v25 = 0.0;
        }

        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
        v57[21] = v26;
        v56[22] = @"SecondEchoFiltered";
        if (v14)
        {
          v27 = *(this + v4 + 168) * 100.0 / v14;
        }

        else
        {
          v27 = 0.0;
        }

        v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
        v57[22] = v28;
        v56[23] = @"DRfilterPercentage";
        if (v14)
        {
          v29 = *(this + v4 + 128) * 100.0 / v14;
        }

        else
        {
          v29 = 0.0;
        }

        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
        v57[23] = v30;
        v56[24] = @"OverallFiltered";
        if (v14)
        {
          v31 = *(this + v4 + 176) * 100.0 / v14;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
        v57[24] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:25];

        PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.SessionStatistics", v33, v34);
      }

      ++v55;
      v4 += 472;
    }

    while (v4 != 3776);
  }
}

float PeridotTelemetry::MeasurementStatistics::add(PeridotTelemetry::MeasurementStatistics *this, float a2)
{
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    *(this + 4) = a2;
    *this = a2;
    *(this + 1) = a2;
  }

  else
  {
    v3 = *this;
    v4 = *(this + 1);
    if (*this > a2)
    {
      v3 = a2;
    }

    if (v4 < a2)
    {
      v4 = a2;
    }

    *this = v3;
    *(this + 1) = v4;
  }

  *(this + 5) = a2;
  result = *(this + 2) + a2;
  *(this + 2) = result;
  *(this + 3) = v2 + 1.0;
  return result;
}

uint64_t PeridotTelemetry::aggregateBankOutputStats(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[7];
  v7 = a3[8];
  v8 = a3[9];
  v9 = a3[10];
  v11 = a3[5];
  result = a3[6];
  v12 = a3[11];
  v13 = a2 + 92;
  v14 = 14;
  do
  {
    v15 = *(v13 - 88);
    v16 = *v13;
    if (v15 > 0.8 || v16 > 0.8)
    {
      *a3 = ++v3;
    }

    if (v15 > 0.8 && v16 > 0.8)
    {
      a3[1] = ++v4;
    }

    v17 = *(v13 - 8);
    v18 = *(v13 + 80);
    if (((v17 | v18) & 0x800) != 0)
    {
      a3[2] = ++v5;
    }

    v19 = a3 + 4;
    if (((v17 | v18) & 0x100) != 0 || (v19 = a3 + 3, ((v17 | v18) & 0x40) != 0))
    {
      ++*v19;
      v20 = v17 | v18;
      if (((v17 | v18) & 0x1000) == 0)
      {
LABEL_14:
        if ((v20 & 0x40000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v20 = v17 | v18;
      if (((v17 | v18) & 0x1000) == 0)
      {
        goto LABEL_14;
      }
    }

    a3[6] = ++result;
    if ((v20 & 0x40000) == 0)
    {
LABEL_15:
      v21 = v17 | v18;
      if (((v17 | v18) & 0x400000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:
    a3[7] = ++v6;
    v21 = v17 | v18;
    if (((v17 | v18) & 0x400000) == 0)
    {
LABEL_16:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      a3[9] = ++v8;
      goto LABEL_18;
    }

LABEL_27:
    a3[8] = ++v7;
    if ((v21 & 0x400) != 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (((v17 | v18) & 0xC000) != 0)
    {
      a3[10] = ++v9;
    }

    if (((v17 | v18) & 0x20000) != 0)
    {
      a3[5] = ++v11;
    }

    if (((v17 | v18) & 0x46C540) != 0)
    {
      a3[11] = ++v12;
    }

    v13 += 308;
    --v14;
  }

  while (v14);
  return result;
}

const peridot::PeridotUserOutput *PeridotTelemetry::saveBankUserOutputData(PeridotTelemetry *this, const peridot::PeridotUserOutput *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = this + 16;
  v6 = this + 472 * a3;
  v7 = v6 + 316;
  v8 = v6 + 204;
  v9 = 0.0;
  v10 = 14;
  result = a2;
  do
  {
    *(v8 - 1) = *(result + 66);
    *v8 = *(result + 67);
    *(v7 - 1) = *(result + 68);
    *v7 = *(result + 69);
    if (*(result + 1) >= 0.8)
    {
      v12 = *(result + 23) >= 0.8 && *(result + 22) < *result;
      if (*(result + 45) >= 0.8 && *(result + 44) < *(result + 22 * v12))
      {
        v12 = 2;
      }

      goto LABEL_5;
    }

    v14 = *(result + 45);
    if (*(result + 23) >= 0.8)
    {
      if (v14 >= 0.8)
      {
        if (*(result + 44) < *(result + 22))
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 1;
      }

LABEL_5:
      v13 = (a2 + 308 * v3 + 88 * v12 + 12);
LABEL_6:
      v9 = *v13 + v9;
      ++v4;
      goto LABEL_7;
    }

    if (v14 >= 0.8)
    {
      v13 = (result + 188);
      goto LABEL_6;
    }

LABEL_7:
    ++v3;
    result = (result + 308);
    v7 += 3;
    v8 += 2;
    --v10;
  }

  while (v10);
  if (v4)
  {
    v9 = v9 / v4;
  }

  *&v5[472 * a3 + 464] = v9;
  return result;
}

void PeridotTelemetry::frameProcessed(PeridotTelemetry *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3)
{
  if (*this)
  {
    v5 = this;
    v6 = 0;
    v30 = this + 16;
    v7 = a2 + 920;
    v8 = a2 + 3728;
    while (1)
    {
      if (v6 >= *(a2 + 1))
      {
        return;
      }

      v9 = v6;
      v10 = (*(*&v7[8 * *&v8[8 * v6]] + 2) - 1);
      v11 = &v30[472 * v10];
      ++*(v11 + 1);
      this = PeridotTelemetry::aggregateBankOutputStats(this, a3 + 4504 * v6, v11 + 9);
      v13 = *&v8[8 * v6];
      v14 = (v11 + 60);
      v15 = (v11 + 36);
      ++v6;
      if (*(a2 + 1) - 1 <= v9)
      {
        v16 = a2;
      }

      else
      {
        v16 = &v8[8 * v6];
      }

      v17 = (*(a2 + 2) + 9280 * v13 + 12);
      while (v13 < *v16)
      {
        ++*(v11 + 2);
        v22 = *v17 & 7;
        if (v22 == 5)
        {
          v23 = *(*(a2 + v13 + 339) + 8);
          v24 = *v14;
          if (*v14 == 0.0)
          {
            *(v11 + 16) = v23;
            v25 = v23;
            v26 = v23;
          }

          else
          {
            v25 = *(v11 + 12);
            v26 = *(v11 + 13);
            if (v25 > v23)
            {
              v25 = *(*(a2 + v13 + 339) + 8);
            }

            if (v26 < v23)
            {
              v26 = *(*(a2 + v13 + 339) + 8);
            }
          }

          *(v11 + 12) = v25;
          *(v11 + 13) = v26;
          v20 = (v11 + 56);
          v21 = (v11 + 60);
          *(v11 + 17) = v23;
          goto LABEL_13;
        }

        if (v22 == 4)
        {
          v23 = *(*(a2 + v13 + 339) + 8);
          v24 = *v15;
          if (*v15 == 0.0)
          {
            *(v11 + 10) = v23;
            v18 = v23;
            v19 = v23;
          }

          else
          {
            v18 = *(v11 + 6);
            v19 = *(v11 + 7);
            if (v18 > v23)
            {
              v18 = *(*(a2 + v13 + 339) + 8);
            }

            if (v19 < v23)
            {
              v19 = *(*(a2 + v13 + 339) + 8);
            }
          }

          *(v11 + 6) = v18;
          *(v11 + 7) = v19;
          v20 = (v11 + 32);
          v21 = (v11 + 36);
          *(v11 + 11) = v23;
LABEL_13:
          *v20 = *v20 + v23;
          *v21 = v24 + 1.0;
        }

        ++v13;
        v17 += 9280;
      }

      if (*(v11 + 1) == *(v11 + 21))
      {
        PeridotTelemetry::saveBankUserOutputData(v5, a3, v10);
        PeridotTelemetry::reportFrameStatistics(v5, a2, a3, v9);
        if ((v10 & 0xFFFFFFFB) == 3)
        {
          v29 = *(v5 + 3);
          if (*(v5 + 62) == v29 && *(v5 + 121) == v29 && *(v5 + 180) == v29 && *(v5 + 239) == v29 && *(v5 + 298) == v29 && *(v5 + 357) == v29 && *(v5 + 416) == v29)
          {
            PeridotTelemetry::reportFrameStatisticsAllBanks(v5, v12, v27, v28);
          }
        }
      }

      if (*(v11 + 1) == *(v11 + 22))
      {
        PeridotTelemetry::reportSpotStatistics(v5, v12, a3, v9, *(v11 + 17));
      }
    }
  }
}

void PeridotTelemetry::reportFrameStatistics(PeridotTelemetry *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3, uint64_t a4)
{
  v62[13] = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v7 = a3 + 4504 * a4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  PeridotTelemetry::aggregateBankOutputStats(this, v7, &v55);
  v8 = *(a2 + 451);
  if (v8)
  {
    v9 = *(v8 + 22) + *(v8 + 26);
    v10 = v9 * 0.0625;
    v11 = *(v8 + 6);
    v12 = *(v8 + 10);
    v13 = *(v8 + 14);
    v14 = *(v8 + 18);
    v15 = (v12 - (v9 * 0.0625)) * 0.98;
    v16 = (v13 - (v9 * 0.0625)) * 1.01;
    v17 = (v14 - (v9 * 0.0625)) * 1.05;
    v18 = (v17 + (v16 + v15)) * 0.333333333;
    if (v18 < 0.01)
    {
      v18 = 0.01;
    }

    v19 = fmaxf((vabds_f32(v11, v10) * 0.99) / v18, 0.0) + -1.0;
    v20 = (v11 - v10) * 0.99;
    v21 = (v17 + (v16 + v20)) * 0.333333333;
    if (v21 < 0.01)
    {
      v21 = 0.01;
    }

    v22 = (vabds_f32(v12, v10) * 0.98) / v21;
    if (v19 >= v22)
    {
      v22 = v19;
    }

    v23 = v22 + -1.0;
    v24 = v15 + v20;
    v25 = (v17 + v24) * 0.333333333;
    if (v25 < 0.01)
    {
      v25 = 0.01;
    }

    v26 = (vabds_f32(v13, v10) * 1.01) / v25;
    if (v23 < v26)
    {
      v23 = v26;
    }

    v27 = v23 + -1.0;
    v28 = (v16 + v24) * 0.333333333;
    if (v28 < 0.01)
    {
      v28 = 0.01;
    }

    v29 = (vabds_f32(v14, v10) * 1.05) / v28;
    if (v27 >= v29)
    {
      v29 = v27;
    }

    v30 = v29 + -1.0;
    v31 = ((v14 + v13) + (v12 + v11)) + (v9 * -0.25);
    v32 = *(v8 + 2) * 184.0;
    if (v32 < 0.01)
    {
      v32 = 0.01;
    }

    v33 = v31 / v32;
  }

  else
  {
    v30 = 0.0;
    v33 = 0.0;
    v10 = 0.0;
  }

  v34 = *(a2 + *(a2 + a4 + 466) + 3);
  v35 = v34[32] > 100;
  if (v34[33] > 100)
  {
    ++v35;
  }

  if (v34[34] > 100)
  {
    ++v35;
  }

  if (v34[35] > 100)
  {
    ++v35;
  }

  if (v34[36] > 100)
  {
    ++v35;
  }

  if (v34[37] > 100)
  {
    ++v35;
  }

  if (v34[38] > 100)
  {
    ++v35;
  }

  if (v34[39] > 100)
  {
    ++v35;
  }

  if (v34[40] > 100)
  {
    ++v35;
  }

  if (v34[41] > 100)
  {
    ++v35;
  }

  if (v34[42] > 100)
  {
    ++v35;
  }

  if (v34[43] > 100)
  {
    ++v35;
  }

  if (v34[44] > 100)
  {
    ++v35;
  }

  if (v34[45] <= 100)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 + 1;
  }

  v61[0] = @"BankId";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7[4312]];
  v62[0] = v54;
  v61[1] = @"FrameId";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(this + 59 * v7[4312] + 3)];
  v62[1] = v53;
  v61[2] = @"OperatingMode";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
  v62[2] = v52;
  v61[3] = @"Preset";
  v51 = [PDUtils getPresetName:*(this + 2)];
  v62[3] = v51;
  v61[4] = @"HighConfSpotsPercentage";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v55 * 7.14285714];
  v62[4] = v37;
  v61[5] = @"EdgeOrReflectionPercentage";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v55 + 1) * 7.14285714];
  v62[5] = v38;
  v61[6] = @"GrimaldiBaseline";
  *&v39 = v10;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v62[6] = v40;
  v61[7] = @"GrimaldiBeta";
  *&v41 = v30;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v62[7] = v42;
  v61[8] = @"GrimaldiBetaSNR";
  *&v43 = v33;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v62[8] = v44;
  v61[9] = @"NumDisabledMacroTwo";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v36];
  v62[9] = v45;
  v61[10] = @"RegularGlareFAPercentage";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v56 + 1) * 7.14285714];
  v62[10] = v46;
  v61[11] = @"GroupGlareFAPercentage";
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v57 * 7.14285714];
  v62[11] = v47;
  v61[12] = @"ReflectivityFilteredSpotsPercentage";
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v59 + 1) * 7.14285714];
  v62[12] = v48;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:13];

  PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.FrameStatistics", v49, v50);
}

void PeridotTelemetry::reportFrameStatisticsAllBanks(PeridotTelemetry *this, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](this, a2, a3, a4);
  v5 = 0;
  v222 = v4 + 16;
  v281 = *MEMORY[0x277D85DE8];
  v6 = (v4 + 204);
  v220 = v4;
  v7 = (v4 + 316);
  v8 = 0.0;
  v9 = &v225;
  v10 = &v229;
  v11 = &v233;
  v12 = &v237;
  while (2)
  {
    v13 = *(v222 + 472 * v5 + 464);
    v14 = 2 * v5;
    v15 = (2 * v5) & 0xC;
    if ((v5 & 1) == 0)
    {
      v16 = 0;
      v17 = v7;
      v18 = v6;
      while (1)
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v22 = *(v17 - 1);
        v21 = *v17;
        *&v12[4 * v16] = v20;
        *&v11[4 * v16] = v22;
        *&v10[4 * v16] = v19;
        *&v9[4 * v16] = v21;
        if ((v16 & 9) == 1)
        {
          break;
        }

        if ((v16 & 9) != 0)
        {
          goto LABEL_9;
        }

        v27 = v14 | (v16 >> 1);
        v236[v27 + 96] = v20;
        v232[v27 + 96] = v22;
        v228[v27 + 96] = v19;
        v224[v27 + 96] = v21;
        if (v16 >= 6)
        {
          goto LABEL_13;
        }

LABEL_5:
        ++v16;
        v18 += 2;
        v17 += 3;
        if (v16 == 14)
        {
          goto LABEL_2;
        }
      }

      v23 = v14 | (v16 >> 1);
      v236[v23 + 112] = v20;
      v232[v23 + 112] = v22;
      v228[v23 + 112] = v19;
      v224[v23 + 112] = v21;
LABEL_9:
      v24 = v16 < 6;
      if (v16 >= 6 && (v16 & 1) != 0)
      {
        v24 = 0;
        v25 = v15 + ((v16 - 6) >> 1);
        v236[v25 + 80] = v20;
        v232[v25 + 80] = v22;
        v228[v25 + 80] = v19;
        v224[v25 + 80] = v21;
      }

      if (v24)
      {
        goto LABEL_5;
      }

LABEL_13:
      if ((v16 & 1) == 0)
      {
        v26 = v15 + ((v16 - 6) >> 1);
        v236[v26 + 64] = v20;
        v232[v26 + 64] = v22;
        v228[v26 + 64] = v19;
        v224[v26 + 64] = v21;
      }

      goto LABEL_5;
    }

    v28 = 0;
    v29 = v7;
    v30 = v6;
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      v34 = *(v29 - 1);
      v33 = *v29;
      *&v12[4 * v28] = v32;
      *&v11[4 * v28] = v34;
      *&v10[4 * v28] = v31;
      *&v9[4 * v28] = v33;
      if ((v28 & 9) == 1)
      {
        v35 = v15 | (v28 >> 1);
        v236[v35 + 48] = v32;
        v232[v35 + 48] = v34;
        v228[v35 + 48] = v31;
        v224[v35 + 48] = v33;
      }

      else if ((v28 & 9) == 0)
      {
        v39 = v15 | (v28 >> 1);
        v236[v39 + 32] = v32;
        v232[v39 + 32] = v34;
        v228[v39 + 32] = v31;
        v224[v39 + 32] = v33;
        if (v28 < 6)
        {
          goto LABEL_18;
        }

LABEL_26:
        if ((v28 & 1) == 0)
        {
          v38 = v15 + ((v28 - 6) >> 1);
          v236[v38] = v32;
          v232[v38] = v34;
          v228[v38] = v31;
          v224[v38] = v33;
        }

        goto LABEL_18;
      }

      v36 = v28 < 6;
      if (v28 >= 6 && (v28 & 1) != 0)
      {
        v36 = 0;
        v37 = v15 + ((v28 - 6) >> 1);
        v236[v37 + 16] = v32;
        v232[v37 + 16] = v34;
        v228[v37 + 16] = v31;
        v224[v37 + 16] = v33;
      }

      if (!v36)
      {
        goto LABEL_26;
      }

LABEL_18:
      ++v28;
      v30 += 2;
      v29 += 3;
    }

    while (v28 != 14);
LABEL_2:
    v8 = v13 + v8;
    ++v5;
    v9 += 56;
    v10 += 56;
    v11 += 56;
    v12 += 56;
    v6 += 118;
    v7 += 118;
    if (v5 != 8)
    {
      continue;
    }

    break;
  }

  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  v40 = v238;
  v41 = v239;
  v42 = v234;
  v43 = v235;
  v44 = v230;
  v45 = v231;
  v218 = v226;
  v46 = v227;
  std::__sort<std::__less<float,float> &,float *>();
  v216 = *&v236[119];
  v214 = *&v236[120];
  std::__sort<std::__less<float,float> &,float *>();
  v212 = *&v236[103];
  v210 = *&v236[104];
  std::__sort<std::__less<float,float> &,float *>();
  v208 = *&v236[87];
  v206 = *&v236[88];
  std::__sort<std::__less<float,float> &,float *>();
  v204 = *&v236[71];
  v202 = *&v236[72];
  std::__sort<std::__less<float,float> &,float *>();
  v200 = *&v236[55];
  v198 = *&v236[56];
  std::__sort<std::__less<float,float> &,float *>();
  v196 = *&v236[39];
  v194 = *&v236[40];
  std::__sort<std::__less<float,float> &,float *>();
  v192 = *&v236[23];
  v190 = *&v236[24];
  std::__sort<std::__less<float,float> &,float *>();
  v188 = *&v236[7];
  v186 = *&v236[8];
  std::__sort<std::__less<float,float> &,float *>();
  v184 = *&v232[119];
  v182 = *&v232[120];
  std::__sort<std::__less<float,float> &,float *>();
  v180 = *&v232[103];
  v178 = *&v232[104];
  std::__sort<std::__less<float,float> &,float *>();
  v176 = *&v232[87];
  v174 = *&v232[88];
  std::__sort<std::__less<float,float> &,float *>();
  v172 = *&v232[71];
  v170 = *&v232[72];
  std::__sort<std::__less<float,float> &,float *>();
  v167 = *&v232[56];
  v168 = *&v232[55];
  std::__sort<std::__less<float,float> &,float *>();
  v165 = *&v232[40];
  v166 = *&v232[39];
  std::__sort<std::__less<float,float> &,float *>();
  v163 = *&v232[24];
  v164 = *&v232[23];
  std::__sort<std::__less<float,float> &,float *>();
  v161 = *&v232[8];
  v162 = *&v232[7];
  std::__sort<std::__less<float,float> &,float *>();
  v159 = *&v228[120];
  v160 = *&v228[119];
  std::__sort<std::__less<float,float> &,float *>();
  v157 = *&v228[104];
  v158 = *&v228[103];
  std::__sort<std::__less<float,float> &,float *>();
  v155 = *&v228[88];
  v156 = *&v228[87];
  std::__sort<std::__less<float,float> &,float *>();
  v153 = *&v228[72];
  v154 = *&v228[71];
  std::__sort<std::__less<float,float> &,float *>();
  v151 = *&v228[56];
  v152 = *&v228[55];
  std::__sort<std::__less<float,float> &,float *>();
  v149 = *&v228[40];
  v150 = *&v228[39];
  std::__sort<std::__less<float,float> &,float *>();
  v147 = *&v228[24];
  v148 = *&v228[23];
  std::__sort<std::__less<float,float> &,float *>();
  v145 = *&v228[8];
  v146 = *&v228[7];
  std::__sort<std::__less<float,float> &,float *>();
  v143 = *&v224[120];
  v144 = *&v224[119];
  std::__sort<std::__less<float,float> &,float *>();
  v141 = *&v224[104];
  v142 = *&v224[103];
  std::__sort<std::__less<float,float> &,float *>();
  v139 = *&v224[88];
  v140 = *&v224[87];
  std::__sort<std::__less<float,float> &,float *>();
  v137 = *&v224[72];
  v138 = *&v224[71];
  std::__sort<std::__less<float,float> &,float *>();
  v135 = *&v224[56];
  v136 = *&v224[55];
  std::__sort<std::__less<float,float> &,float *>();
  v133 = *&v224[40];
  v134 = *&v224[39];
  std::__sort<std::__less<float,float> &,float *>();
  v131 = *&v224[24];
  v132 = *&v224[23];
  std::__sort<std::__less<float,float> &,float *>();
  v129 = *&v224[8];
  v130 = *&v224[7];
  v240[0] = @"FrameId";
  v223 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v220 + 24)];
  v241 = v223;
  v240[1] = @"OperatingMode";
  v242 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v220 + 8)];
  v240[2] = @"Preset";
  v128 = v242;
  v47 = [PDUtils getPresetName:*(v220 + 8)];
  *&v48 = v8 * 0.125;
  v243 = v47;
  v240[3] = @"MeanIntensityForIndicator";
  v127 = v47;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  *&v50 = (v41 + v40) * 0.5;
  v221 = v49;
  v244 = v49;
  v240[4] = @"StrayEstNormalAllFoV";
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  *&v52 = (v43 + v42) * 0.5;
  v245 = v51;
  v240[5] = @"StrayChangeNormalAllFoV";
  v126 = v51;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  *&v54 = (v45 + v44) * 0.5;
  v125 = v53;
  v246 = v53;
  v240[6] = @"StrayEstM1AllFoV";
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  *&v56 = (v46 + v218) * 0.5;
  v124 = v55;
  v247 = v55;
  v240[7] = @"StrayChangeM1AllFoV";
  v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  *&v58 = (v214 + v216) * 0.5;
  v217 = v57;
  v248 = v57;
  v240[8] = @"StrayEstNormalRegion0";
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  *&v60 = (v210 + v212) * 0.5;
  v215 = v59;
  v249 = v59;
  v240[9] = @"StrayEstNormalRegion1";
  v61 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
  *&v62 = (v206 + v208) * 0.5;
  v213 = v61;
  v250 = v61;
  v240[10] = @"StrayEstNormalRegion2";
  v63 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
  *&v64 = (v202 + v204) * 0.5;
  v211 = v63;
  v251 = v63;
  v240[11] = @"StrayEstNormalRegion3";
  v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
  *&v66 = (v198 + v200) * 0.5;
  v209 = v65;
  v252 = v65;
  v240[12] = @"StrayEstNormalRegion4";
  v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  *&v68 = (v194 + v196) * 0.5;
  v207 = v67;
  v253 = v67;
  v240[13] = @"StrayEstNormalRegion5";
  v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  *&v70 = (v190 + v192) * 0.5;
  v205 = v69;
  v254 = v69;
  v240[14] = @"StrayEstNormalRegion6";
  v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
  *&v72 = (v186 + v188) * 0.5;
  v203 = v71;
  v255 = v71;
  v240[15] = @"StrayEstNormalRegion7";
  v73 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
  *&v74 = (v182 + v184) * 0.5;
  v201 = v73;
  v256 = v73;
  v240[16] = @"StrayChangeNormalRegion0";
  v75 = [MEMORY[0x277CCABB0] numberWithFloat:v74];
  *&v76 = (v178 + v180) * 0.5;
  v199 = v75;
  v257 = v75;
  v240[17] = @"StrayChangeNormalRegion1";
  v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
  *&v78 = (v174 + v176) * 0.5;
  v197 = v77;
  v258 = v77;
  v240[18] = @"StrayChangeNormalRegion2";
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
  *&v80 = (v170 + v172) * 0.5;
  v195 = v79;
  v259 = v79;
  v240[19] = @"StrayChangeNormalRegion3";
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
  *&v82 = (v167 + v168) * 0.5;
  v193 = v81;
  v260 = v81;
  v240[20] = @"StrayChangeNormalRegion4";
  v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
  *&v84 = (v165 + v166) * 0.5;
  v191 = v83;
  v261 = v83;
  v240[21] = @"StrayChangeNormalRegion5";
  v85 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
  *&v86 = (v163 + v164) * 0.5;
  v189 = v85;
  v262 = v85;
  v240[22] = @"StrayChangeNormalRegion6";
  v87 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
  *&v88 = (v161 + v162) * 0.5;
  v187 = v87;
  v263 = v87;
  v240[23] = @"StrayChangeNormalRegion7";
  v89 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
  *&v90 = (v159 + v160) * 0.5;
  v185 = v89;
  v264 = v89;
  v240[24] = @"StrayEstM1Region0";
  v91 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
  *&v92 = (v157 + v158) * 0.5;
  v219 = v91;
  v265 = v91;
  v240[25] = @"StrayEstM1Region1";
  v93 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
  *&v94 = (v155 + v156) * 0.5;
  v183 = v93;
  v266 = v93;
  v240[26] = @"StrayEstM1Region2";
  v95 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
  *&v96 = (v153 + v154) * 0.5;
  v181 = v95;
  v267 = v95;
  v240[27] = @"StrayEstM1Region3";
  v97 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
  *&v98 = (v151 + v152) * 0.5;
  v179 = v97;
  v268 = v97;
  v240[28] = @"StrayEstM1Region4";
  v99 = [MEMORY[0x277CCABB0] numberWithFloat:v98];
  *&v100 = (v149 + v150) * 0.5;
  v177 = v99;
  v269 = v99;
  v240[29] = @"StrayEstM1Region5";
  v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
  *&v102 = (v147 + v148) * 0.5;
  v175 = v101;
  v270 = v101;
  v240[30] = @"StrayEstM1Region6";
  v103 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
  *&v104 = (v145 + v146) * 0.5;
  v173 = v103;
  v271 = v103;
  v240[31] = @"StrayEstM1Region7";
  v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
  *&v106 = (v143 + v144) * 0.5;
  v171 = v105;
  v272 = v105;
  v240[32] = @"StrayChangeM1Region0";
  v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
  *&v108 = (v141 + v142) * 0.5;
  v169 = v107;
  v273 = v107;
  v240[33] = @"StrayChangeM1Region1";
  v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
  *&v110 = (v139 + v140) * 0.5;
  v274 = v109;
  v240[34] = @"StrayChangeM1Region2";
  v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
  *&v112 = (v137 + v138) * 0.5;
  v275 = v111;
  v240[35] = @"StrayChangeM1Region3";
  v113 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
  *&v114 = (v135 + v136) * 0.5;
  v276 = v113;
  v240[36] = @"StrayChangeM1Region4";
  v115 = [MEMORY[0x277CCABB0] numberWithFloat:v114];
  *&v116 = (v133 + v134) * 0.5;
  v277 = v115;
  v240[37] = @"StrayChangeM1Region5";
  v117 = [MEMORY[0x277CCABB0] numberWithFloat:v116];
  *&v118 = (v131 + v132) * 0.5;
  v278 = v117;
  v240[38] = @"StrayChangeM1Region6";
  v119 = [MEMORY[0x277CCABB0] numberWithFloat:v118];
  *&v120 = (v129 + v130) * 0.5;
  v279 = v119;
  v240[39] = @"StrayChangeM1Region7";
  v121 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
  v280 = v121;
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v241 forKeys:v240 count:40];

  PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.FrameStatisticsAllBanks", v122, v123);
}

void PeridotTelemetry::reportSpotStatistics(PeridotTelemetry *this, const PeridotSuperFrame *a2, const peridot::PeridotUserOutput *a3, uint64_t a4, float a5)
{
  v125 = *MEMORY[0x277D85DE8];
  {
    Filters::Filters(&Filters::filters(void)::inst);
  }

  v9 = 0;
  v114 = (a3 + 4504 * a4);
  v10 = v114 + 23;
  v11 = 0.0;
  v12 = 14;
  do
  {
    if (*(v10 - 22) > 0.8)
    {
      v11 = (*(v10 - 16) / *(v10 - 20)) + v11;
      ++v9;
    }

    if (*v10 > 0.8)
    {
      v11 = (v10[6] / v10[2]) + v11;
      ++v9;
    }

    v10 += 77;
    --v12;
  }

  while (v12);
  if (v9)
  {
    v13 = v11 / v9;
  }

  else
  {
    v13 = 0.0;
  }

  v90 = v13;
  v119 = xmmword_2247A50F0;
  v120 = 13;
  v121 = 0;
  v122 = 13;
  v123 = 0;
  v124 = xmmword_2247A50F0;
  v118[0] = 0;
  v118[2] = 0;
  v118[4] = 0;
  v118[1] = 12;
  v118[3] = 12;
  v118[6] = 0;
  v118[5] = 12;
  v14 = *(v114 + 4312);
  v15 = *(&v119 + v14);
  v118[7] = 12;
  v16 = v118[v14];
  v117[0] = v15;
  v117[1] = v16;
  v17 = arc4random_uniform(0xCu);
  v18 = 0;
  if (v17)
  {
    v19 = v17;
    do
    {
      v21 = v15 != v18 && v16 != v18;
      ++v18;
      v19 -= v21;
    }

    while (v19);
  }

  v22 = 0;
  v117[2] = v18;
  v89 = this + 16;
  v23 = ((v114[1067] + (v114[990] + v114[913])) + ((v114[836] + (v114[759] + (v114[682] + v114[605]))) + ((v114[528] + (v114[451] + v114[374])) + ((v114[297] + v114[220]) + (v114[143] + v114[66]))))) * 0.071429;
  do
  {
    v92 = v117[v22];
    v24 = &v114[77 * v92];
    v88 = v22;
    v91 = *(v24 + 1) > 0.8 && *(v24 + 23) > 0.8;
    v25 = 0;
    v26 = 0;
    v27 = *(v24 + 66);
    v28 = *(v24 + 67);
    v29 = *(v24 + 68);
    v30 = 1;
    v31 = *(v24 + 69);
    do
    {
      if ((v25 & 1) != 0 && *(v24 + 23) < 0.3)
      {
        break;
      }

      v93 = v30;
      v32 = &v24[88 * v26];
      v33 = *(v32 + 3);
      v115[0] = @"BankId";
      v113 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v114 + 4312)];
      v116[0] = v113;
      v115[1] = @"FrameId";
      v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*&v89[472 * *(v114 + 4312) + 8]];
      v116[1] = v108;
      v115[2] = @"OperatingMode";
      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 2)];
      v116[2] = v107;
      v115[3] = @"Preset";
      v100 = [PDUtils getPresetName:*(this + 2)];
      v116[3] = v100;
      v115[4] = @"SpotId";
      v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
      v116[4] = v106;
      v115[5] = @"TileId";
      v105 = [MEMORY[0x277CCABB0] numberWithInt:v114[1078] & 1];
      v116[5] = v105;
      v115[6] = @"Echo";
      v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
      v116[6] = v104;
      v115[7] = @"StrayEstNormal";
      LODWORD(v34) = v27;
      v99 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
      v116[7] = v99;
      v115[8] = @"StrayEstM1";
      LODWORD(v35) = v28;
      v103 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
      v116[8] = v103;
      v115[9] = @"StrayChangeNormal";
      LODWORD(v36) = v29;
      v102 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
      v116[9] = v102;
      v115[10] = @"StrayChangeM1";
      LODWORD(v37) = v31;
      v101 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
      v116[10] = v101;
      v115[11] = @"BankMeanStrayEstNormal";
      *&v38 = v23;
      v98 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
      v116[11] = v98;
      v115[12] = @"SuspectedBlockedAperture";
      v97 = [MEMORY[0x277CCABB0] numberWithBool:v23 > 0.5];
      v116[12] = v97;
      v115[13] = @"TwoEchos";
      v95 = [MEMORY[0x277CCABB0] numberWithBool:v91];
      v116[13] = v95;
      v115[14] = @"TimeOfFlight";
      v94 = [MEMORY[0x277CCABB0] numberWithDouble:*v32 * 149852322.0];
      v116[14] = v94;
      v115[15] = @"RangeBucket";
      v39 = *v32 * 149852322.0;
      *&v39 = v39;
      v40 = &qword_28134C240;
      v41 = *qword_28134C248;
      if (*qword_28134C248 >= *&v39 || (v40 = &Filters::filters(void)::inst, *(qword_28134C250 - 4) < *&v39))
      {
LABEL_37:
        v46 = *v40;
      }

      else
      {
        v42 = 1;
        while ((qword_28134C250 - qword_28134C248) >> 2 != v42)
        {
          v43 = v42;
          v44 = v41 < *&v39;
          v41 = *(qword_28134C248 + 4 * v42++);
          if (v44 && v41 >= *&v39)
          {
            v40 = (qword_28134C260 + 8 * (v43 - 1));
            goto LABEL_37;
          }
        }

        v46 = @"N/A";
      }

      v109 = v46;
      v116[15] = v46;
      v115[16] = @"SNR";
      LODWORD(v39) = *(v32 + 2);
      v96 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
      v116[16] = v96;
      v115[17] = @"SnrBucket";
      LODWORD(v47) = *(v32 + 2);
      v48 = &qword_28134C300;
      v49 = *qword_28134C308;
      if (*qword_28134C308 >= *&v47 || (v48 = &qword_28134C2F8, *(qword_28134C310 - 4) < *&v47))
      {
LABEL_47:
        v53 = *v48;
      }

      else
      {
        v50 = 1;
        while ((qword_28134C310 - qword_28134C308) >> 2 != v50)
        {
          v51 = v50;
          v44 = v49 < *&v47;
          v49 = *(qword_28134C308 + 4 * v50++);
          if (v44 && v49 >= *&v47)
          {
            v48 = (qword_28134C320 + 8 * (v51 - 1));
            goto LABEL_47;
          }
        }

        v53 = @"N/A";
      }

      v110 = v53;
      v116[17] = v53;
      v115[18] = @"Confidence";
      LODWORD(v47) = *(v32 + 1);
      v54 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
      v116[18] = v54;
      v115[19] = @"ConfidenceBucket";
      LODWORD(v55) = *(v32 + 1);
      v56 = &qword_28134C280;
      v57 = *qword_28134C288;
      if (*qword_28134C288 >= *&v55 || (v56 = &qword_28134C278, *(qword_28134C290 - 4) < *&v55))
      {
LABEL_57:
        v61 = *v56;
      }

      else
      {
        v58 = 1;
        while ((qword_28134C290 - qword_28134C288) >> 2 != v58)
        {
          v59 = v58;
          v44 = v57 < *&v55;
          v57 = *(qword_28134C288 + 4 * v58++);
          if (v44 && v57 >= *&v55)
          {
            v56 = (qword_28134C2A0 + 8 * (v59 - 1));
            goto LABEL_57;
          }
        }

        v61 = @"N/A";
      }

      v111 = v61;
      v116[19] = v61;
      v115[20] = @"Reflectivity";
      *&v55 = v33;
      v62 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
      v116[20] = v62;
      v115[21] = @"ReflectivityBucket";
      v63 = &qword_28134C2C0;
      LODWORD(v64) = *qword_28134C2C8;
      if (*qword_28134C2C8 >= v33 || (v63 = &qword_28134C2B8, *(qword_28134C2D0 - 4) < v33))
      {
LABEL_67:
        v68 = *v63;
      }

      else
      {
        v65 = 1;
        while ((qword_28134C2D0 - qword_28134C2C8) >> 2 != v65)
        {
          v66 = v65;
          v44 = *&v64 < v33;
          LODWORD(v64) = *(qword_28134C2C8 + 4 * v65++);
          if (v44 && *&v64 >= v33)
          {
            v63 = (qword_28134C2E0 + 8 * (v66 - 1));
            goto LABEL_67;
          }
        }

        v68 = @"N/A";
      }

      v116[21] = v68;
      v115[22] = @"TempBucket";
      v69 = &qword_28134C340;
      v70 = *qword_28134C348;
      if (*qword_28134C348 >= a5 || (v69 = &qword_28134C338, *(qword_28134C350 - 4) < a5))
      {
LABEL_77:
        v74 = *v69;
      }

      else
      {
        v71 = 1;
        while ((qword_28134C350 - qword_28134C348) >> 2 != v71)
        {
          v72 = v71;
          v44 = v70 < a5;
          v70 = *(qword_28134C348 + 4 * v71++);
          if (v44 && v70 >= a5)
          {
            v69 = (qword_28134C360 + 8 * (v72 - 1));
            goto LABEL_77;
          }
        }

        v74 = @"N/A";
      }

      v116[22] = v74;
      v115[23] = @"Na";
      LODWORD(v64) = *(v32 + 7);
      v75 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
      v116[23] = v75;
      v115[24] = @"NaBucket";
      v76 = *(v32 + 7);
      v77 = &qword_28134C380;
      v78 = *qword_28134C388;
      if (*qword_28134C388 >= v76 || (v77 = &qword_28134C378, *(qword_28134C390 - 4) < v76))
      {
LABEL_87:
        v82 = *v77;
      }

      else
      {
        v79 = 1;
        while ((qword_28134C390 - qword_28134C388) >> 2 != v79)
        {
          v80 = v79;
          v44 = v78 < v76;
          v78 = *(qword_28134C388 + 4 * v79++);
          if (v44 && v78 >= v76)
          {
            v77 = (qword_28134C3A0 + 8 * (v80 - 1));
            goto LABEL_87;
          }
        }

        v82 = @"N/A";
      }

      v116[24] = v82;
      v115[25] = @"AmbToNaRatio";
      v83 = 0.0;
      if (v90 > 0.0)
      {
        *&v83 = *(v32 + 7) * (1.0 / v90);
      }

      v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
      v116[25] = v84;
      v115[26] = @"BgReplacedDevice";
      v85 = [MEMORY[0x277CCABB0] numberWithBool:*(*(this + 474) + 4) & 1];
      v116[26] = v85;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:27];

      PeridotTelemetry::reportEvent(@"com.apple.JasperDepth.SpotStatistics", v86, v87);
      v30 = 0;
      v25 = 1;
      v26 = 1;
      v24 = &v114[77 * v92];
    }

    while ((v93 & 1) != 0);
    v22 = v88 + 1;
  }

  while (v88 != 2);
}

double PeridotTelemetry::calcBankAmbient(PeridotTelemetry *this, const peridot::PeridotUserOutput *a2)
{
  v2 = 0;
  v3 = (a2 + 92);
  result = 0.0;
  v5 = 14;
  do
  {
    if (*(v3 - 22) > 0.8)
    {
      *&result = (*(v3 - 16) / *(v3 - 20)) + *&result;
      ++v2;
    }

    if (*v3 > 0.8)
    {
      *&result = (v3[6] / v3[2]) + *&result;
      ++v2;
    }

    v3 += 77;
    --v5;
  }

  while (v5);
  if (!v2)
  {
    return 0.0;
  }

  *&result = *&result / v2;
  return result;
}

double peridot::PeridotT0::PeridotT0(peridot::PeridotT0 *this)
{
  *(this + 600) = xmmword_2247B9640;
  *(this + 616) = unk_2247B9650;
  *(this + 632) = xmmword_2247B9660;
  *(this + 536) = xmmword_2247B9600;
  *(this + 552) = unk_2247B9610;
  *(this + 568) = xmmword_2247B9620;
  *(this + 584) = unk_2247B9630;
  *(this + 81) = 6;
  *(this + 84) = 0;
  *(this + 680) = xmmword_2247A48F0;
  *(this + 696) = xmmword_2247A4900;
  *(this + 712) = xmmword_2247A4910;
  result = 1.79440326e15;
  *(this + 91) = 0x4319800042F48000;
  *(this + 184) = 1128611840;
  return result;
}

{
  *(this + 600) = xmmword_2247B9640;
  *(this + 616) = unk_2247B9650;
  *(this + 632) = xmmword_2247B9660;
  *(this + 536) = xmmword_2247B9600;
  *(this + 552) = unk_2247B9610;
  *(this + 568) = xmmword_2247B9620;
  *(this + 584) = unk_2247B9630;
  *(this + 81) = 6;
  *(this + 84) = 0;
  *(this + 680) = xmmword_2247A48F0;
  *(this + 696) = xmmword_2247A4900;
  *(this + 712) = xmmword_2247A4910;
  result = 1.79440326e15;
  *(this + 91) = 0x4319800042F48000;
  *(this + 184) = 1128611840;
  return result;
}

float peridot::PeridotT0::init(peridot::PeridotT0 *this, const _PeridotCalib *a2, const peridot::PeridotDXPCalib *a3, uint64_t a4)
{
  *(this + 764) = 0;
  *(this + 8) = xmmword_2247A4650;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 66) = 0;
  if (a2)
  {
    p_refTimingWide = &a2->skews.refSkews.banks[0].refs[0].refTimingWide;
    v5 = &a2->skews.absSkews.banks[a4];
    v6 = *v5->widePulse;
    *(this + 12) = *&a2->skews.absSkews.banks[a4].widePulse[6];
    *this = v6;
    v8 = *v5->widePulse;
    *(this + 40) = *&a2->skews.absSkews.banks[a4].widePulse[6];
    *(this + 28) = v8;
    v7 = *this;
    v8.i64[0] = *(this + 2);
    if (*(this + 13) || ((v9 = vrev64q_s16(v7), *v10.i8 = vrev64_s16(*v8.i8), v10.i64[1] = vextq_s8(v9, v9, 8uLL).u64[0], !vaddvq_s16(vbicq_s8(xmmword_2247A5060, vceqzq_s16(v10)))) ? (v11 = v7.i64[0] == 0) : (v11 = 0), v11 ? (v12 = *(this + 12) == 0) : (v12 = 0), !v12))
    {
      v13.i64[0] = 0x96009600960096;
      v13.i64[1] = 0x96009600960096;
      v14 = vaddq_s16(*(this + 2), v13);
      v8.i64[1] = *(this + 3);
      *this = vaddq_s16(v7, v13);
      *(this + 1) = vaddq_s16(v8, v13);
      *(this + 2) = v14;
      *(this + 6) = vadd_s16(*(this + 48), 0x96009600960096);
    }

    jlskVersion = a2->additionalParams.jlskVersion;
    refTimingWide = a2->skews.refSkews.banks[a4].refs[0].refTimingWide;
    v17 = (refTimingWide - a2->skews.refSkews.banks[a4].refs[1].refTimingWide);
    *(this + 14) = v17;
    if (jlskVersion > 0x64)
    {
      v22 = (refTimingWide - a2->skews.refSkews.banks[1].refs[0].refTimingWide);
      v23 = (refTimingWide - a2->skews.refSkews.banks[2].refs[0].refTimingWide);
      v24 = (refTimingWide - a2->skews.refSkews.banks[3].refs[0].refTimingWide);
      *(this + 15) = (refTimingWide - *p_refTimingWide);
      *(this + 16) = v22;
      v25 = (refTimingWide - a2->skews.refSkews.banks[4].refs[0].refTimingWide);
      *(this + 17) = v23;
      *(this + 18) = v24;
      v26 = (refTimingWide - a2->skews.refSkews.banks[5].refs[0].refTimingWide);
      *(this + 19) = v25;
      *(this + 20) = v26;
      v27 = (refTimingWide - a2->skews.refSkews.banks[7].refs[0].refTimingWide);
      *(this + 21) = (refTimingWide - a2->skews.refSkews.banks[6].refs[0].refTimingWide);
      *(this + 22) = v27;
      if (jlskVersion == 101)
      {
        *(this + 14) += a2->skews.absSkews.banks[a4].narrowPulse[0] - a2->skews.absSkews.banks[a4].widePulse[0];
        *(this + 15) += a2->skews.absSkews.banks[a4].narrowPulse[1] - a2->skews.absSkews.banks[a4].widePulse[1];
        *(this + 16) += a2->skews.absSkews.banks[a4].narrowPulse[2] - a2->skews.absSkews.banks[a4].widePulse[2];
        *(this + 17) += a2->skews.absSkews.banks[a4].narrowPulse[3] - a2->skews.absSkews.banks[a4].widePulse[3];
        *(this + 18) += a2->skews.absSkews.banks[a4].narrowPulse[4] - a2->skews.absSkews.banks[a4].widePulse[4];
        *(this + 19) += a2->skews.absSkews.banks[a4].narrowPulse[5] - a2->skews.absSkews.banks[a4].widePulse[5];
        *(this + 20) += a2->skews.absSkews.banks[a4].narrowPulse[6] - a2->skews.absSkews.banks[a4].widePulse[6];
        *(this + 21) += a2->skews.absSkews.banks[a4].narrowPulse[7] - a2->skews.absSkews.banks[a4].widePulse[7];
        *(this + 22) += a2->skews.absSkews.banks[a4].narrowPulse[8] - a2->skews.absSkews.banks[a4].widePulse[8];
        *(this + 23) += a2->skews.absSkews.banks[a4].narrowPulse[9] - a2->skews.absSkews.banks[a4].widePulse[9];
        *(this + 24) += a2->skews.absSkews.banks[a4].narrowPulse[10] - a2->skews.absSkews.banks[a4].widePulse[10];
        *(this + 25) += a2->skews.absSkews.banks[a4].narrowPulse[11] - a2->skews.absSkews.banks[a4].widePulse[11];
        *(this + 26) += a2->skews.absSkews.banks[a4].narrowPulse[12] - a2->skews.absSkews.banks[a4].widePulse[12];
        *(this + 27) += a2->skews.absSkews.banks[a4].narrowPulse[13] - a2->skews.absSkews.banks[a4].widePulse[13];
        *(this + 31) = v17;
        refTimingNarrow = a2->skews.refSkews.banks[a4].refs[1].refTimingWide;
        v29 = (refTimingNarrow - a2->skews.refSkews.banks[1].refs[1].refTimingWide);
        *(this + 23) = (refTimingNarrow - a2->skews.refSkews.banks[0].refs[1].refTimingWide);
        *(this + 24) = v29;
        v30 = (refTimingNarrow - a2->skews.refSkews.banks[3].refs[1].refTimingWide);
        *(this + 25) = (refTimingNarrow - a2->skews.refSkews.banks[2].refs[1].refTimingWide);
        *(this + 26) = v30;
        v31 = (refTimingNarrow - a2->skews.refSkews.banks[5].refs[1].refTimingWide);
        *(this + 27) = (refTimingNarrow - a2->skews.refSkews.banks[4].refs[1].refTimingWide);
        *(this + 28) = v31;
        v32 = (refTimingNarrow - a2->skews.refSkews.banks[6].refs[1].refTimingWide);
        v33 = a2->skews.refSkews.banks[7].refs[1].refTimingWide;
      }

      else
      {
        *(this + 764) = 1;
        *(this + 14) = a2->skews.absSkews.banks[a4].narrowPulse[0];
        *(this + 15) = a2->skews.absSkews.banks[a4].narrowPulse[1];
        *(this + 16) = a2->skews.absSkews.banks[a4].narrowPulse[2];
        *(this + 17) = a2->skews.absSkews.banks[a4].narrowPulse[3];
        *(this + 18) = a2->skews.absSkews.banks[a4].narrowPulse[4];
        *(this + 19) = a2->skews.absSkews.banks[a4].narrowPulse[5];
        *(this + 20) = a2->skews.absSkews.banks[a4].narrowPulse[6];
        *(this + 21) = a2->skews.absSkews.banks[a4].narrowPulse[7];
        *(this + 22) = a2->skews.absSkews.banks[a4].narrowPulse[8];
        *(this + 23) = a2->skews.absSkews.banks[a4].narrowPulse[9];
        *(this + 24) = a2->skews.absSkews.banks[a4].narrowPulse[10];
        *(this + 25) = a2->skews.absSkews.banks[a4].narrowPulse[11];
        *(this + 26) = a2->skews.absSkews.banks[a4].narrowPulse[12];
        *(this + 27) = a2->skews.absSkews.banks[a4].narrowPulse[13];
        refTimingNarrow = a2->skews.refSkews.banks[a4].refs[1].refTimingNarrow;
        *(this + 31) = (refTimingNarrow - a2->skews.refSkews.banks[a4].refs[0].refTimingNarrow);
        *(this + 8) = xmmword_2247A4A50;
        v34 = (refTimingNarrow - a2->skews.refSkews.banks[1].refs[1].refTimingNarrow);
        *(this + 23) = (refTimingNarrow - a2->skews.refSkews.banks[0].refs[1].refTimingNarrow);
        *(this + 24) = v34;
        v35 = (refTimingNarrow - a2->skews.refSkews.banks[3].refs[1].refTimingNarrow);
        *(this + 25) = (refTimingNarrow - a2->skews.refSkews.banks[2].refs[1].refTimingNarrow);
        *(this + 26) = v35;
        v36 = (refTimingNarrow - a2->skews.refSkews.banks[5].refs[1].refTimingNarrow);
        *(this + 27) = (refTimingNarrow - a2->skews.refSkews.banks[4].refs[1].refTimingNarrow);
        *(this + 28) = v36;
        v32 = (refTimingNarrow - a2->skews.refSkews.banks[6].refs[1].refTimingNarrow);
        v33 = a2->skews.refSkews.banks[7].refs[1].refTimingNarrow;
      }

      *(this + 29) = v32;
      *(this + 30) = (refTimingNarrow - v33);
    }

    else
    {
      *(this + 31) = v17;
      v18 = (refTimingWide - a2->skews.refSkews.banks[1].refs[0].refTimingWide);
      *(this + 15) = (refTimingWide - *p_refTimingWide);
      *(this + 16) = v18;
      v19 = (refTimingWide - a2->skews.refSkews.banks[3].refs[0].refTimingWide);
      *(this + 17) = (refTimingWide - a2->skews.refSkews.banks[2].refs[0].refTimingWide);
      *(this + 18) = v19;
      v20 = (refTimingWide - a2->skews.refSkews.banks[5].refs[0].refTimingWide);
      *(this + 19) = (refTimingWide - a2->skews.refSkews.banks[4].refs[0].refTimingWide);
      *(this + 20) = v20;
      v21 = (refTimingWide - a2->skews.refSkews.banks[7].refs[0].refTimingWide);
      *(this + 21) = (refTimingWide - a2->skews.refSkews.banks[6].refs[0].refTimingWide);
      *(this + 22) = v21;
    }
  }

  else
  {
    *(this + 31) = 0;
    *this = 0uLL;
    *(this + 1) = 0uLL;
    *(this + 2) = 0uLL;
    *(this + 3) = 0uLL;
    *(this + 4) = 0uLL;
    *(this + 76) = 0uLL;
  }

  *(this + 185) = *(this + 180);
  *(this + 186) = *(this + 182);
  result = *(this + 184);
  *(this + 187) = result;
  *(this + 188) = *(this + 181);
  *(this + 189) = *(this + 183);
  *(this + 190) = result;
  *(this + 96) = a3;
  return result;
}

float32x2_t peridot::PeridotT0::calcP2P(void *a1, unsigned int a2, char a3, double a4, float a5)
{
  v7 = a1[96];
  v8 = a1 + 18;
  if (a3)
  {
    LODWORD(a4) = 2.0;
    v9 = peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(v7 + 3521), 0, &a1[7 * a1[80] + 18], a4, a5);
    LODWORD(v9) = 3.0;
    peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(a1[96] + 3522), 0, &v8[7 * a1[81]], v9, v10);
    v11 = &v8[7 * a1[80]];
    v12 = &v8[7 * a1[81]];
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = vmulq_f32(vaddq_f32(v12[1], v11[1]), v13);
    *v11 = vmulq_f32(vaddq_f32(*v12, *v11), v13);
    v11[1] = v14;
    v11[2] = vmulq_f32(vaddq_f32(v12[2], v11[2]), v13);
    result = vmul_f32(vadd_f32(*v12[3].f32, *v11[3].f32), 0x3F0000003F000000);
    *v11[3].f32 = result;
  }

  else
  {
    LODWORD(a4) = 1.0;
    v16 = peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(v7 + 3520), *(v7 + 3521), &a1[7 * a1[67] + 18], a4, a5);
    LODWORD(v16) = 3.0;
    v18 = peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(a1[96] + 3522), 0, &v8[7 * a1[68]], v16, v17);
    LODWORD(v18) = 2.0;
    peridot::PeridotT0::calcP2PPerChannel(a1, a2, *(a1[96] + 3521), 0, &v8[7 * a1[69]], v18, v19);
    v20 = &v8[7 * a1[68]];
    v21 = &v8[7 * a1[78]];
    v22 = *(v20 + 1);
    *v21 = *v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = *(v20 + 2);
    result = v20[6];
    v21[6] = result;
  }

  return result;
}

double peridot::PeridotT0::calcP2PPerChannel(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double result, float a7)
{
  if (a4 + a3 == 1)
  {
    v7 = 0;
    v8 = *(a1 + 768);
    v9 = v8 + 504 * a2;
    v10 = v8 + 126 * a2 + 40484;
    while (1)
    {
      LOBYTE(a7) = *(v10 + v7 - 4);
      v11 = LODWORD(a7);
      if (v11 == *&result)
      {
        v12 = 0;
      }

      else
      {
        LOBYTE(v11) = *(v10 + v7 - 3);
        v13 = LODWORD(v11);
        if (v13 == *&result)
        {
          v12 = 1;
        }

        else
        {
          LOBYTE(v13) = *(v10 + v7 - 2);
          v14 = LODWORD(v13);
          if (v14 != *&result)
          {
            goto LABEL_10;
          }

          v12 = 2;
        }
      }

      v14 = *(v9 + 4 * v12 + 4 * v7 + 1840);
      *a5 = v14;
LABEL_10:
      LOBYTE(v14) = *(v10 + v7 - 1);
      v15 = LODWORD(v14);
      if (v15 == *&result)
      {
        v16 = 0;
      }

      else
      {
        LOBYTE(v15) = *(v10 + v7);
        v17 = LODWORD(v15);
        if (v17 == *&result)
        {
          v16 = 1;
        }

        else
        {
          LOBYTE(v17) = *(v10 + v7 + 1);
          v18 = LODWORD(v17);
          if (v18 != *&result)
          {
            goto LABEL_17;
          }

          v16 = 2;
        }
      }

      v18 = *(v9 + 4 * v16 + 4 * v7 + 1852);
      *a5 = v18;
LABEL_17:
      LOBYTE(v18) = *(v10 + v7 + 2);
      v19 = LODWORD(v18);
      if (v19 == *&result)
      {
        v20 = 0;
LABEL_23:
        a7 = *(v9 + 4 * v20 + 4 * v7 + 1864);
        *a5 = a7;
        goto LABEL_24;
      }

      LOBYTE(v19) = *(v10 + v7 + 3);
      v21 = LODWORD(v19);
      if (v21 == *&result)
      {
        v20 = 1;
        goto LABEL_23;
      }

      LOBYTE(v21) = *(v10 + v7 + 4);
      a7 = LODWORD(v21);
      if (a7 == *&result)
      {
        v20 = 2;
        goto LABEL_23;
      }

LABEL_24:
      v7 += 9;
      a5 += 4;
      if (v7 == 126)
      {
        return result;
      }
    }
  }

  *(a5 + 48) = 0;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  return result;
}

__n128 peridot::PeridotT0::getAbsSkew(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *this;
  *(a2 + 6) = *(this + 12);
  *a2 = result;
  return result;
}

__n128 peridot::PeridotT0::getAbsSkewM1(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *(this + 28);
  *(a2 + 6) = *(this + 40);
  *a2 = result;
  return result;
}

__n128 peridot::PeridotT0::setAbsSkew(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *a2;
  *(this + 12) = *(a2 + 6);
  *this = result;
  return result;
}

__n128 peridot::PeridotT0::setAbsSkewM1(peridot::PeridotT0 *this, __int16 *a2)
{
  result = *a2;
  *(this + 40) = *(a2 + 6);
  *(this + 28) = result;
  return result;
}

__n128 peridot::PeridotT0::getRsps_p2p_b2b(peridot::PeridotT0 *this, float *a2)
{
  result = *(this + 60);
  v3 = *(this + 76);
  *a2 = result;
  *(a2 + 1) = v3;
  return result;
}

__n128 peridot::PeridotT0::setRsps_p2p_b2b(peridot::PeridotT0 *this, float *a2)
{
  result = *a2;
  *(this + 76) = *(a2 + 1);
  *(this + 60) = result;
  return result;
}

float32x2_t peridot::PeridotT0::configure(peridot::PeridotT0 *this, const PeridotSuperFrame *a2, uint64_t a3, BOOL *a4, float32x2_t result, double a6, float a7)
{
  v7 = *(a2 + *(a2 + a3 + 494) + 227);
  result.i16[0] = *(v7 + 4);
  LOBYTE(a7) = *(a2 + 3616);
  *&v8 = 0.000000020833 / (result.u32[0] + (((*(v7 + 6) << 8) + LODWORD(a7)) * 0.000015259));
  *(this + 164) = *&v8;
  LOWORD(v8) = *(v7 + 16);
  v9 = v8;
  *(this + 165) = v9;
  LOWORD(v9) = *(v7 + 22);
  result.f32[0] = LODWORD(v9);
  *(this + 166) = result.i32[0];
  if (*a4)
  {
    v10 = this + 144;
    result.i32[0] = 1.0;
    v12 = peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3520), *(*(this + 96) + 3521), this + 56 * *(this + 67) + 144, *&result, 0.000000020833);
    LODWORD(v12) = 3.0;
    v14 = peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3522), 0, &v10[56 * *(this + 68)], v12, v13);
    LODWORD(v14) = 2.0;
    peridot::PeridotT0::calcP2PPerChannel(this, 0, *(*(this + 96) + 3521), 0, &v10[56 * *(this + 69)], v14, v15);
    v16 = &v10[56 * *(this + 68)];
    v17 = &v10[56 * *(this + 78)];
    v18 = *(v16 + 1);
    *v17 = *v16;
    *(v17 + 1) = v18;
    *(v17 + 2) = *(v16 + 2);
    v19 = *(v16 + 6);
    *(v17 + 6) = v19;
    LODWORD(v19) = 2.0;
    v20 = peridot::PeridotT0::calcP2PPerChannel(this, 1u, *(*(this + 96) + 3521), 0, &v10[56 * *(this + 80)], v19, *&v18);
    LODWORD(v20) = 3.0;
    peridot::PeridotT0::calcP2PPerChannel(this, 1u, *(*(this + 96) + 3522), 0, &v10[56 * *(this + 81)], v20, v21);
    v22 = &v10[56 * *(this + 80)];
    v23 = &v10[56 * *(this + 81)];
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    v25 = vmulq_f32(vaddq_f32(*(v23 + 1), *(v22 + 1)), v24);
    *v22 = vmulq_f32(vaddq_f32(*v23, *v22), v24);
    *(v22 + 1) = v25;
    *(v22 + 2) = vmulq_f32(vaddq_f32(*(v23 + 2), *(v22 + 2)), v24);
    result = vmul_f32(vadd_f32(*(v23 + 48), *(v22 + 48)), 0x3F0000003F000000);
    *(v22 + 6) = result;
  }

  return result;
}

uint64_t peridot::PeridotT0::getAbsDepth(uint64_t this, peridot::PeridotDepth *a2, const peridot::PeridotSpotRefDepth *a3, const peridot::PeridotSpotRefDepth *a4, double a5, double a6, double a7, double a8)
{
  v8 = 0;
  v9 = 112 * *(this + 672);
  v10 = *(a3 + v9);
  v11 = *(a4 + v9);
  do
  {
    LOWORD(a8) = *(this + 2 * v8);
    a8 = vmovl_s16(*&a8).i32[0] * 1.0e-12;
    *&a8 = a8;
    v12 = (a2 + 192 * v8);
    v13 = *v12;
    v14 = v12[1] - *v12;
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14 >> 4;
    v16 = 0xCCCCCCCCCCCCCCCDLL * v15;
    v17 = (*(this + 660) - *(this + 664)) * *(this + 656);
    v18 = *&a8 - v10;
    v19 = 0xCCCCCCCCCCCCCCCDLL * v15 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v15 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * v15;
    }

    if (!v19)
    {
      v21 = 0;
LABEL_12:
      v25 = v20 - v21;
      v26 = (v13 + 80 * v21 + 16);
      do
      {
        *v26 = (v18 + *(v26 - 4)) + v17;
        v26 += 20;
        --v25;
      }

      while (v25);
      goto LABEL_14;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    v22 = (v13 + 96);
    v23 = v20 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v24 = (v18 + *(v22 - 4)) + v17;
      *(v22 - 20) = (v18 + *(v22 - 24)) + v17;
      *v22 = v24;
      v22 += 40;
      v23 -= 2;
    }

    while (v23);
    if (v16 != v21)
    {
      goto LABEL_12;
    }

LABEL_14:
    v27 = v12[8];
    v28 = v12[9] - v27;
    if (!v28)
    {
      goto LABEL_25;
    }

    v29 = v28 >> 4;
    v30 = 0xCCCCCCCCCCCCCCCDLL * v29;
    v31 = (*(this + 660) - *(this + 664)) * *(this + 656);
    v32 = *&a8 - v10;
    v33 = 0xCCCCCCCCCCCCCCCDLL * v29 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v29 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xCCCCCCCCCCCCCCCDLL * v29;
    }

    if (!v33)
    {
      v35 = 0;
LABEL_23:
      v39 = v34 - v35;
      v40 = (v27 + 80 * v35 + 16);
      do
      {
        *v40 = (v32 + *(v40 - 4)) + v31;
        v40 += 20;
        --v39;
      }

      while (v39);
      goto LABEL_25;
    }

    v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v36 = (v27 + 96);
    v37 = v34 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v38 = (v32 + *(v36 - 4)) + v31;
      *(v36 - 20) = (v32 + *(v36 - 24)) + v31;
      *v36 = v38;
      v36 += 40;
      v37 -= 2;
    }

    while (v37);
    if (v30 != v35)
    {
      goto LABEL_23;
    }

LABEL_25:
    v41 = v12[12];
    v42 = v12[13] - v41;
    if (!v42)
    {
      goto LABEL_36;
    }

    v43 = v42 >> 4;
    v44 = 0xCCCCCCCCCCCCCCCDLL * v43;
    v45 = (*(this + 660) - *(this + 664)) * *(this + 656);
    *&a8 = *&a8 - v10;
    v46 = 0xCCCCCCCCCCCCCCCDLL * v43 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v43 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * v43;
    }

    if (!v46)
    {
      v48 = 0;
LABEL_34:
      v52 = v47 - v48;
      v53 = (v41 + 80 * v48 + 16);
      do
      {
        *v53 = (*&a8 + *(v53 - 4)) + v45;
        v53 += 20;
        --v52;
      }

      while (v52);
      goto LABEL_36;
    }

    v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    v49 = (v41 + 96);
    v50 = v47 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v51 = (*&a8 + *(v49 - 4)) + v45;
      *(v49 - 20) = (*&a8 + *(v49 - 24)) + v45;
      *v49 = v51;
      v49 += 40;
      v50 -= 2;
    }

    while (v50);
    if (v44 != v48)
    {
      goto LABEL_34;
    }

LABEL_36:
    v55 = v12 + 16;
    v54 = v12[16];
    v56 = v55[1] - v54;
    if (!v56)
    {
      goto LABEL_2;
    }

    v57 = 0xCCCCCCCCCCCCCCCDLL * (v56 >> 4);
    LOWORD(a8) = *(this + 28 + 2 * v8);
    a8 = vmovl_s16(*&a8).i32[0] * 1.0e-12;
    *&a8 = a8;
    v58 = (*(this + 660) - *(this + 664)) * *(this + 656);
    if (v57 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = v57;
    }

    if (v57 <= 1)
    {
      v60 = 0;
LABEL_45:
      v64 = v59 - v60;
      v65 = (v54 + 80 * v60 + 16);
      do
      {
        *v65 = ((*(v65 - 4) - v11) + *&a8) + v58;
        v65 += 20;
        --v64;
      }

      while (v64);
      goto LABEL_2;
    }

    v60 = v59 & 0xFFFFFFFFFFFFFFFELL;
    v61 = (v54 + 96);
    v62 = v59 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v63 = ((*(v61 - 4) - v11) + *&a8) + v58;
      *(v61 - 20) = ((*(v61 - 24) - v11) + *&a8) + v58;
      *v61 = v63;
      v61 += 40;
      v62 -= 2;
    }

    while (v62);
    if (v57 != v60)
    {
      goto LABEL_45;
    }

LABEL_2:
    ++v8;
  }

  while (v8 != 14);
  return this;
}

float *peridot::PeridotT0::getAbsDepthWithT0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 688;
  v5 = a3 + 856;
  v6 = a3 + 1024;
  v7 = (a3 + 576);
  v8 = a3 + 632;
  v9 = a3 + 520;
  do
  {
    v10 = (a2 + 192 * v3);
    v11 = v10[1] - *v10;
    if (v11)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 4);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = v4 + 4 * v3;
      v14 = (v13 + 56);
      v15 = (v13 + 112);
      v16 = (*v10 + 72);
      do
      {
        v17 = *(v16 - 18);
        *(v16 - 14) = v17;
        if (v17 != 0.0)
        {
          *(v16 - 14) = v17 - (((*(v4 + 4 * v3) * *(v16 - 2)) + (*v14 * *(v16 - 1))) + (*v15 * *v16));
        }

        v16 += 20;
        --v12;
      }

      while (v12);
    }

    v18 = v10[4];
    v19 = v10[5] - v18;
    if (v19)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 >> 4);
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = v5 + 4 * v3;
      v22 = (v21 + 56);
      v23 = (v21 + 112);
      v24 = (v18 + 72);
      do
      {
        v25 = *(v24 - 18);
        *(v24 - 14) = v25;
        if (v25 != 0.0)
        {
          *(v24 - 14) = v25 - (((*(v5 + 4 * v3) * *(v24 - 2)) + (*v22 * *(v24 - 1))) + (*v23 * *v24));
        }

        v24 += 20;
        --v20;
      }

      while (v20);
    }

    v26 = v10[8];
    v27 = v10[9] - v26;
    if (v27)
    {
      v28 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 4);
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v29 = v6 + 4 * v3;
      v30 = (v29 + 56);
      v31 = (v29 + 112);
      v32 = (v26 + 72);
      do
      {
        v33 = *(v32 - 18);
        *(v32 - 14) = v33;
        if (v33 != 0.0)
        {
          *(v32 - 14) = v33 - (((*(v6 + 4 * v3) * *(v32 - 2)) + (*v30 * *(v32 - 1))) + (*v31 * *v32));
        }

        v32 += 20;
        --v28;
      }

      while (v28);
    }

    v34 = v10[12];
    v35 = v10[13] - v34;
    if (v35)
    {
      v36 = 0xCCCCCCCCCCCCCCCDLL * (v35 >> 4);
      if (v36 <= 1)
      {
        v36 = 1;
      }

      v37 = (v34 + 16);
      v38 = v7;
      do
      {
        v39 = *(v37 - 4);
        *v37 = v39;
        if (v39 != 0.0)
        {
          *v37 = v39 - *v38;
        }

        v38 += 14;
        v37 += 20;
        --v36;
      }

      while (v36);
    }

    v40 = v10[16];
    v41 = v10[17] - v40;
    if (v41)
    {
      v42 = 0xCCCCCCCCCCCCCCCDLL * (v41 >> 4);
      if (v42 <= 1)
      {
        v42 = 1;
      }

      v43 = (v40 + 16);
      do
      {
        v44 = *(v43 - 4);
        *v43 = v44;
        if (v44 != 0.0)
        {
          *v43 = v44 - *(v8 + 4 * v3);
        }

        v43 += 20;
        --v42;
      }

      while (v42);
    }

    result = v10[20];
    v46 = v10[21];
    if (v46 != result)
    {
      v47 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - result) >> 4);
      if (v47 <= 1)
      {
        v47 = 1;
      }

      result += 4;
      do
      {
        v48 = *(result - 4);
        *result = v48;
        if (v48 != 0.0)
        {
          *result = v48 - *(v9 + 4 * v3);
        }

        result += 20;
        --v47;
      }

      while (v47);
    }

    ++v3;
    ++v7;
  }

  while (v3 != 14);
  return result;
}

float peridot::PeridotT0::getBaseOffset(peridot::PeridotT0 *this, int a2, float *a3, double a4, double a5, double a6, int16x4_t a7, int16x4_t a8, int16x4_t a9, int16x4_t a10, int16x4_t a11)
{
  LODWORD(a5) = *(this + 166);
  v19 = 24;
  v20 = 22;
  v21 = 20;
  v22 = 18;
  v23 = 16;
  v24 = 14;
  v25 = 12;
  v26 = 10;
  v27 = 8;
  v28 = 6;
  v29 = 4;
  v30 = 2;
  v31 = (this + 28);
  if (a2)
  {
    v30 = 30;
  }

  else
  {
    v31 = this;
  }

  if (a2)
  {
    v29 = 32;
    v28 = 34;
    v27 = 36;
    v26 = 38;
    v25 = 40;
    v24 = 42;
    v23 = 44;
    v22 = 46;
    v21 = 48;
    v20 = 50;
    v19 = 52;
  }

  v32 = 26;
  if (a2)
  {
    v32 = 54;
  }

  v33 = ((*(this + 165) - *&a5) * *(this + 164));
  LOWORD(a5) = *v31;
  a7.i16[0] = *(this + v30);
  a8.i16[0] = *(this + v29);
  a9.i16[0] = *(this + v28);
  a10.i16[0] = *(this + v27);
  a11.i16[0] = *(this + v26);
  v11.i16[0] = *(this + v25);
  v12.i16[0] = *(this + v24);
  v13.i16[0] = *(this + v23);
  v14.i16[0] = *(this + v22);
  v15.i16[0] = *(this + v21);
  v16.i16[0] = *(this + v20);
  v17.i16[0] = *(this + v19);
  v18.i16[0] = *(this + v32);
  v34 = v33 + vmovl_s16(*&a5).i32[0] * 1.0e-12;
  v35 = v33 + vmovl_s16(a7).i32[0] * 1.0e-12;
  *a3 = v34;
  a3[1] = v35;
  v36 = v33 + vmovl_s16(a8).i32[0] * 1.0e-12;
  v37 = v33 + vmovl_s16(a9).i32[0] * 1.0e-12;
  a3[2] = v36;
  a3[3] = v37;
  v38 = v33 + vmovl_s16(a10).i32[0] * 1.0e-12;
  v39 = v33 + vmovl_s16(a11).i32[0] * 1.0e-12;
  a3[4] = v38;
  a3[5] = v39;
  v40 = v33 + vmovl_s16(v11).i32[0] * 1.0e-12;
  v41 = v33 + vmovl_s16(v12).i32[0] * 1.0e-12;
  a3[6] = v40;
  a3[7] = v41;
  v42 = v33 + vmovl_s16(v13).i32[0] * 1.0e-12;
  v43 = v33 + vmovl_s16(v14).i32[0] * 1.0e-12;
  a3[8] = v42;
  a3[9] = v43;
  v44 = v33 + vmovl_s16(v15).i32[0] * 1.0e-12;
  v45 = v33 + vmovl_s16(v16).i32[0] * 1.0e-12;
  a3[10] = v44;
  a3[11] = v45;
  v46 = v33 + vmovl_s16(v17).i32[0] * 1.0e-12;
  result = v33 + vmovl_s16(v18).i32[0] * 1.0e-12;
  a3[12] = v46;
  a3[13] = result;
  return result;
}

uint64_t peridot::PeridotT0::calcT0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8)
{
  v8 = 0;
  v220 = *MEMORY[0x277D85DE8];
  *(a8 + 1224) = 0;
  *(a8 + 1192) = 0u;
  *(a8 + 1208) = 0u;
  v9 = *(a1 + 680);
  v10.i32[0] = *(a2 + 4);
  v11 = *(a2 + 16);
  *v12.f32 = *v11;
  v10.i32[1] = *(a2 + 116);
  v13 = vcvtq_f64_f32(v10);
  v14 = vdupq_n_s64(0x3FB999999999999AuLL);
  v15 = vdupq_lane_s64(COERCE__INT64(*(a1 + 692)), 0);
  v16 = vdupq_lane_s64(COERCE__INT64(*(a1 + 696)), 0);
  v17 = vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(v13, v14), v9)), v16);
  v18 = *(a2 + 128);
  v12.i32[2] = v11[1].i32[0];
  v12.i32[3] = *v18;
  v22 = vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvt_hight_f64_f32(v12), v14), v9)), v16);
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*v11), v14), v9)), v16)), v22);
  v22.f64[0] = *(a1 + 740);
  v20 = vzip1q_s32(v22, v22);
  v20.i32[2] = LODWORD(v22.f64[0]);
  v21 = vmlaq_f32(v20, v19, v19);
  *&v15.f64[0] = vcvt_f32_f64(vaddq_f64(vdivq_f64(v15, vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*(v18 + 4)), v14), v9)), v16));
  *&v22.f64[0] = vmla_f32(vdup_lane_s32(*&v22.f64[0], 1), *&v15.f64[0], *&v15.f64[0]);
  v23 = vdupq_laneq_s32(v21, 3);
  __asm { FMOV            V6.4S, #1.0 }

  v29 = vdivq_f32(_Q6, vextq_s8(vextq_s8(v23, v23, 4uLL), v22, 0xCuLL));
  *v19.i64 = ((*(a1 + 660) - *(a1 + 664)) * *(a1 + 656));
  v30 = vmovl_s16(*a1);
  v31.i64[0] = v30.i32[0];
  v31.i64[1] = v30.i32[1];
  v32 = vcvtq_f64_s64(v31);
  v31.i64[0] = v30.i32[2];
  v31.i64[1] = v30.i32[3];
  v33 = vdupq_n_s64(0x3D719799812DEA11uLL);
  v34 = vdupq_lane_s64(v19.i64[0], 0);
  v35 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v34, v33, v32)), vmlaq_f64(v34, v33, vcvtq_f64_s64(v31)));
  v36 = vmovl_s16(*(a1 + 8));
  v31.i64[0] = v36.i32[0];
  v31.i64[1] = v36.i32[1];
  v37 = vcvtq_f64_s64(v31);
  v31.i64[0] = v36.i32[2];
  v31.i64[1] = v36.i32[3];
  v38 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v34, v33, v37)), vmlaq_f64(v34, v33, vcvtq_f64_s64(v31)));
  v216 = v35;
  v217 = v38;
  v39 = vmovl_s16(*(a1 + 16));
  v31.i64[0] = v39.i32[0];
  v31.i64[1] = v39.i32[1];
  v40 = vcvtq_f64_s64(v31);
  v31.i64[0] = v39.i32[2];
  v31.i64[1] = v39.i32[3];
  v41 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v42 = vmlaq_f64(v34, v33, v40);
  v43 = vcvt_hight_f32_f64(vcvt_f32_f64(v42), v41);
  v218 = v43;
  LOWORD(v42.f64[0]) = *(a1 + 24);
  *v40.f64 = *v19.i64 + vmovl_s16(*&v42.f64[0]).i32[0] * 1.0e-12;
  LOWORD(v41.f64[0]) = *(a1 + 26);
  *v41.f64 = *v19.i64 + vmovl_s16(*&v41.f64[0]).i32[0] * 1.0e-12;
  v219 = __PAIR64__(LODWORD(v41.f64[0]), LODWORD(v40.f64[0]));
  v44 = vmovl_s16(*(a1 + 28));
  v31.i64[0] = v44.i32[0];
  v31.i64[1] = v44.i32[1];
  v45 = vcvtq_f64_s64(v31);
  v31.i64[0] = v44.i32[2];
  v31.i64[1] = v44.i32[3];
  v46 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v47 = vmlaq_f64(v34, v33, v45);
  v48 = vmovl_s16(*(a1 + 36));
  v31.i64[0] = v48.i32[0];
  v31.i64[1] = v48.i32[1];
  v49 = vcvtq_f64_s64(v31);
  v31.i64[0] = v48.i32[2];
  v31.i64[1] = v48.i32[3];
  v50 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v51 = vmlaq_f64(v34, v33, v49);
  v52 = vmovl_s16(*(a1 + 44));
  v31.i64[0] = v52.i32[0];
  v31.i64[1] = v52.i32[1];
  v53 = vcvtq_f64_s64(v31);
  v31.i64[0] = v52.i32[2];
  v31.i64[1] = v52.i32[3];
  v54 = vmlaq_f64(v34, v33, vcvtq_f64_s64(v31));
  v55 = vmlaq_f64(v34, v33, v53);
  LOWORD(v33.f64[0]) = *(a1 + 52);
  v33.f64[0] = vmovl_s16(*&v33.f64[0]).i32[0];
  v56 = *v19.i64 + v33.f64[0] * 1.0e-12;
  LOWORD(v33.f64[0]) = *(a1 + 54);
  v57 = *v19.i64 + vmovl_s16(*&v33.f64[0]).i32[0] * 1.0e-12;
  v58 = *a2;
  v59 = *(a2 + 112);
  v60 = *(a1 + 56) * 1.0e-12;
  v61 = *(a2 + 40);
  v62 = *(a2 + 152);
  v63 = *v61;
  v64 = v61[1];
  v65 = *v62;
  v66 = v62[1];
  v67 = v61[2];
  v68 = v62[2];
  do
  {
    v69 = v216.f32[v8];
    v215[v8] = v58 - v69;
    v70 = v60 + (v59 - v69);
    v214[v8] = v70;
    v71 = &v204[0].f32[v8];
    *v71 = v63 - v69;
    v72 = v60 + (v65 - v69);
    v73 = &v194[0].f32[v8];
    *v73 = v72;
    v71[14] = v64 - v69;
    v74 = v60 + (v66 - v69);
    v73[14] = v74;
    v71[28] = v67 - v69;
    v75 = v60 + (v68 - v69);
    v73[28] = v75;
    ++v8;
  }

  while (v8 != 14);
  v76 = vcvt_f32_f64(v17);
  v77 = vcvt_f32_f64(v47);
  v78 = vcvt_f32_f64(v51);
  v79 = vcvt_f32_f64(v55);
  v80 = v214[0];
  v81 = v215[0];
  v82 = vabds_f32(v194[0].f32[0], v204[0].f32[0]);
  v83 = vabds_f32(v196.f32[0], v206.f32[0]);
  v84 = vabds_f32(v200.f32[0], v210.f32[0]);
  v85 = vabds_f32(v214[0], v215[0]);
  *(a8 + 1192) = v85 > 5.0e-12;
  *(a8 + 1196) = v85 > 1.0e-11;
  *(a8 + 1200) = v85 > 2.0e-11;
  v86 = v82;
  *(a8 + 1193) = v86 > 5.0e-12;
  *(a8 + 1197) = v86 > 1.0e-11;
  *(a8 + 1201) = v86 > 2.0e-11;
  v87 = v83;
  *(a8 + 1205) = v87 > 5.0e-12;
  *(a8 + 1209) = v87 > 1.0e-11;
  *(a8 + 1213) = v87 > 2.0e-11;
  *(a8 + 1217) = v84 > 5.0e-12;
  *(a8 + 1221) = v84 > 1.0e-11;
  *(a8 + 1225) = v84 > 2.0e-11;
  if (a4)
  {
    v88 = *(a1 + 692) / (fmax(*(a4 + 4), 0.1) * *(a1 + 680)) + *(a1 + 696);
  }

  else
  {
    v88 = 0.0;
  }

  v89 = vdivq_f32(_Q6, v21);
  v90 = vmla_f32(*(a1 + 740), v76, v76);
  v91 = (1.0 / v90.f32[1]) + (1.0 / v90.f32[0]);
  v92 = a1 + 4 * a6;
  if (a4)
  {
    v93 = *(a1 + 748) + (v88 * v88);
    v91 = (1.0 / v93) + v91;
    v94 = vld1q_dup_f32(a4);
    v95 = vsubq_f32(v94, v35);
    v96 = vdupq_lane_s64(COERCE__INT64(*(v92 + 60) * 1.0e-12), 0);
    v97 = vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v95.f32)));
    v98 = vsubq_f32(v94, v38);
    v190 = vcvt_hight_f32_f64(v97, vaddq_f64(v96, vcvt_hight_f64_f32(v95)));
    v191 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v98.f32))), vaddq_f64(v96, vcvt_hight_f64_f32(v98)));
    v99 = vsubq_f32(v94, v43);
    v192 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(*v99.f32))), vaddq_f64(v96, vcvt_hight_f64_f32(v99)));
    v193 = vcvt_f32_f64(vaddq_f64(v96, vcvtq_f64_f32(vsub_f32(*v94.f32, v219))));
    *v99.i64 = vabds_f32(*v97.i32, v81);
    *(a8 + 1204) = *v99.i64 > 1.0e-11;
    v43.i32[1] = 1034976799;
    *(a8 + 1208) = *v99.i64 > 1.5e-11;
    *(a8 + 1212) = *v99.i64 > 2.0e-11;
    *v99.i64 = vabds_f32(*v97.i32, v80);
    *(a8 + 1216) = *v99.i64 > 1.0e-11;
    *(a8 + 1220) = *v99.i64 > 1.5e-11;
    *(a8 + 1224) = *v99.i64 > 2.0e-11;
  }

  else
  {
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v93 = 0.0;
  }

  v100 = 0;
  v101 = vaddq_f32(v29, v89);
  v102 = vcvt_hight_f32_f64(v77, v46);
  v103 = vcvt_hight_f32_f64(v78, v50);
  v104 = vcvt_hight_f32_f64(v79, v54);
  v105 = v56;
  v106 = v57;
  __asm { FMOV            V22.2S, #1.0 }

  v108 = vdiv_f32(_D22, v90);
  do
  {
    v109.f32[0] = v215[v100];
    v109.f32[1] = v214[v100];
    v110 = vaddv_f32(vmul_f32(v109, v108));
    if (a4)
    {
      v110 = v110 + (v190.f32[v100] * (1.0 / v93));
    }

    *(a8 + 16 + v100 * 4) = v110 * (1.0 / v91);
    ++v100;
  }

  while (v100 != 14);
  v43.f32[0] = 1.0 / v101.f32[0];
  v111 = v204[1];
  v112 = vdupq_lane_s32(*v21.f32, 0);
  v113 = vdivq_f32(_Q6, v112);
  v114 = v194[1];
  v115 = vdivq_f32(_Q6, v23);
  v116 = vdupq_lane_s32(*v43.f32, 0).u64[0];
  *(a8 + 72) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v204[0], 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v194[0], 1.0 / v101.f32[0]));
  *(a8 + 88) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v111, 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v114, 1.0 / v101.f32[0]));
  *(a8 + 104) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v204[2], 1.0 / v101.f32[0]), v113), v115, vmulq_n_f32(v194[2], 1.0 / v101.f32[0]));
  v117 = vdiv_f32(vmul_f32(v116, v205), *v112.f32);
  v112.i64[0] = v199;
  v118 = vmul_f32(v116, v195);
  *(a8 + 120) = vadd_f32(vdiv_f32(v118, *v23.f32), v117);
  v118.f32[0] = 1.0 / v101.f32[1];
  v119 = vdupq_lane_s32(*v21.f32, 1);
  v120 = vdivq_f32(_Q6, v119);
  v121 = vdupq_lane_s32(*&v22.f64[0], 0);
  v122 = vdivq_f32(_Q6, v121);
  v123 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v206, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v196, 1.0 / v101.f32[1]));
  v124 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v207, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v197, 1.0 / v101.f32[1]));
  v115.i64[0] = vdupq_lane_s32(v118, 0).u64[0];
  *(a8 + 128) = v123;
  *(a8 + 144) = v124;
  *(a8 + 160) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v208, 1.0 / v101.f32[1]), v120), v122, vmulq_n_f32(v198, 1.0 / v101.f32[1]));
  *(a8 + 176) = vadd_f32(vdiv_f32(vmul_f32(*v115.f32, *v112.f32), *v121.f32), vdiv_f32(vmul_f32(*v115.f32, v209), *v119.f32));
  v108.f32[0] = 1.0 / v101.f32[2];
  v101.i64[0] = vdupq_lane_s32(v108, 0).u64[0];
  v125 = v211;
  v126 = vdupq_laneq_s32(v21, 2);
  v127 = vdivq_f32(_Q6, v126);
  v128 = v201;
  v129 = vdupq_lane_s32(*&v22.f64[0], 1);
  v130 = vdivq_f32(_Q6, v129);
  v131 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v210, v108.f32[0]), v127), v130, vmulq_n_f32(v200, v108.f32[0]));
  *(a8 + 184) = v131;
  *(a8 + 200) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v125, 1.0 / v101.f32[2]), v127), v130, vmulq_n_f32(v128, 1.0 / v101.f32[2]));
  *(a8 + 216) = vmlaq_f32(vmulq_f32(vmulq_n_f32(v212, 1.0 / v101.f32[2]), v127), v130, vmulq_n_f32(v202, 1.0 / v101.f32[2]));
  *(a8 + 232) = vadd_f32(vdiv_f32(vmul_f32(*v101.f32, v203), *v129.f32), vdiv_f32(vmul_f32(*v101.f32, v213), *v126.f32));
  v126.i32[0] = *(a8 + 72);
  *v129.i64 = vabds_f32(v123.f32[0], v126.f32[0]);
  *(a8 + 1194) = *v129.i64 > 2.0e-11;
  *(a8 + 1198) = *v129.i64 > 3.5e-11;
  *(a8 + 1202) = *v129.i64 > 5.0e-11;
  *v129.i64 = fabsf(vsubq_f32(v131, v123).f32[0]);
  *(a8 + 1206) = *v129.i64 > 2.0e-11;
  *(a8 + 1210) = *v129.i64 > 3.5e-11;
  *(a8 + 1214) = *v129.i64 > 5.0e-11;
  *v126.i64 = vabds_f32(v126.f32[0], v131.f32[0]);
  *(a8 + 1218) = *v126.i64 > 2.0e-11;
  *(a8 + 1222) = *v126.i64 > 3.5e-11;
  *(a8 + 1226) = *v126.i64 > 5.0e-11;
  v126.i32[0] = *(a3 + 4);
  v126.i32[1] = *(a3 + 116);
  v133 = *(a1 + 128);
  v132 = *(a1 + 136);
  v129.i32[0] = *(a3 + 112 * v133);
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0u;
  v134 = vdupq_lane_s64(COERCE__INT64(*(a1 + 696)), 0);
  v135 = vcvt_f32_f64(vaddq_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(*(a1 + 692)), 0), vmulq_n_f64(vmaxnmq_f64(vcvtq_f64_f32(*v126.f32), v14), *(a1 + 684))), v134));
  LODWORD(v134.f64[0]) = *(a3 + 112 * v132);
  v189 = v135;
  *v123.i64 = *(a1 + 124) * 1.0e-12;
  v136 = vdupq_lane_s32(*v129.f32, 0);
  v137 = vsubq_f32(v136, v102);
  v138 = vdupq_lane_s32(*&v134.f64[0], 0);
  v139 = vsubq_f32(v138, v102);
  v140 = vdupq_lane_s64(v123.i64[0], 0);
  v141 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v139.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v139)));
  v182[0] = v137;
  v182[1] = vsubq_f32(v136, v103);
  v142 = vsubq_f32(v138, v103);
  v179[0] = v141;
  v179[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v142.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v142)));
  v182[2] = vsubq_f32(v136, v104);
  v143 = vsubq_f32(v138, v104);
  v179[2] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v140, vcvtq_f64_f32(*v143.f32))), vaddq_f64(v140, vcvt_hight_f64_f32(v143)));
  v142.f32[0] = *v123.i64 + (*v134.f64 - v105);
  v183 = v129.f32[0] - v105;
  v184 = v129.f32[0] - v106;
  v129.f32[0] = *v123.i64 + (*v134.f64 - v106);
  v180 = v142.i32[0];
  v181 = v129.i32[0];
  *v129.i64 = fabsf(vsubq_f32(v141, v137).f32[0]);
  *(a8 + 1195) = *v129.i64 > 5.0e-12;
  *(a8 + 1199) = *v129.i64 > 1.0e-11;
  *(a8 + 1203) = *v129.i64 > 2.0e-11;
  if (a4 && (*(a1 + 764) & 1) != 0)
  {
    v144 = (*(a1 + 692) / (fmaxf(*(a5 + 116), 1.0) * *(a1 + 684))) + *(a1 + 696);
    v145 = &v189;
    v146 = *(a1 + 752) + (v145[v133] * v145[v133]);
    v147 = *(a1 + 756) + (v145[v132] * v145[v132]);
    v148 = *(a1 + 760) + (v144 * v144);
    v149 = (a5 + 112);
    v150 = vld1q_dup_f32(v149);
    v151 = vsubq_f32(v150, v216);
    v152 = vdupq_lane_s64(COERCE__INT64(*(v92 + 92) * 1.0e-12), 0);
    v153 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v151.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v151)));
    v154 = vsubq_f32(v150, v217);
    v185 = v153;
    v186 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v154.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v154)));
    v155 = vsubq_f32(v150, v218);
    v187 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(*v155.f32))), vaddq_f64(v152, vcvt_hight_f64_f32(v155)));
    v188 = vcvt_f32_f64(vaddq_f64(v152, vcvtq_f64_f32(vsub_f32(*v150.f32, v219))));
    v156 = fabsf(vsubq_f32(v153, v137).f32[0]);
    *(a8 + 1207) = v156 > 1.0e-11;
    *(a8 + 1211) = v156 > 1.5e-11;
    *(a8 + 1215) = v156 > 2.0e-11;
    v157 = fabsf(vsubq_f32(v153, v141).f32[0]);
    *(a8 + 1219) = v157 > 1.0e-11;
    *(a8 + 1223) = v157 > 1.5e-11;
    *(a8 + 1227) = v157 > 2.0e-11;
  }

  else
  {
    v146 = *(a1 + 752) + (v189.f32[v133] * v189.f32[v133]);
    v147 = *(a1 + 756) + (v189.f32[v132] * v189.f32[v132]);
    v148 = 0.0;
  }

  v158 = 0;
  if (v146 <= 0.0)
  {
    v159 = 0.0;
  }

  else
  {
    v159 = 1.0 / v146;
  }

  if (v147 > 0.0)
  {
    v159 = (1.0 / v147) + v159;
  }

  if (v148 > 0.0)
  {
    v159 = (1.0 / v148) + v159;
  }

  v160 = 1.0 / v159;
  v161 = a8 + 240;
  v162 = (1.0 / v159) * (1.0 / v146);
  v163 = (1.0 / v159) * (1.0 / v148);
  do
  {
    v164 = (v162 * *(v182 + v158)) + ((v160 * *(v179 + v158)) * (1.0 / v147));
    *(v161 + v158) = v164;
    if (v148 > 0.0)
    {
      *(v161 + v158) = v164 + (v163 * v185.f32[v158 / 4]);
    }

    v158 += 4;
  }

  while (v158 != 56);
  v165 = 0;
  v166 = 1.0e-12;
  if (a7)
  {
    v166 = 0.0;
  }

  v167 = a1 + 56 * *(a1 + 536) + 144;
  v168 = a1 + 56 * *(a1 + 552) + 144;
  v169 = a1 + 56 * *(a1 + 544) + 144;
  v170 = a1 + 56 * *(a1 + 640) + 144;
  do
  {
    v171 = a8 + v165;
    v172 = *(a8 + v165 + 16);
    *(v171 + 296) = v172 - (*(v167 + v165) * v166);
    *(v171 + 352) = v172 - (*(v168 + v165) * v166);
    v173 = v172 - (*(v169 + v165) * v166);
    *(v171 + 408) = v173;
    v174 = v172 - (*(v170 + v165) * v166);
    *(v171 + 464) = v174;
    *(v171 + 520) = 0;
    *(v171 + 576) = v173;
    *(v171 + 632) = v174;
    v175 = *(a8 + v165 + 72);
    *(v171 + 688) = v175 - (*(v167 + v165) * v166);
    *(v171 + 856) = v175 - (*(v168 + v165) * v166);
    *(v171 + 1024) = v175 - (*(v169 + v165) * v166);
    v176 = *(a8 + v165 + 128);
    *(v171 + 744) = v176 - (*(v167 + v165) * v166);
    *(v171 + 912) = v176 - (*(v168 + v165) * v166);
    *(v171 + 1080) = v176 - (*(v169 + v165) * v166);
    v177 = *(a8 + v165 + 184);
    *(v171 + 800) = v177 - (*(v167 + v165) * v166);
    *(v171 + 968) = v177 - (*(v168 + v165) * v166);
    *(v171 + 1136) = v177 - (*(v169 + v165) * v166);
    v165 += 4;
  }

  while (v165 != 56);
  return 0;
}

uint64_t peridot::AggressorsClassifier::AggressorsClassifier(uint64_t this, float a2)
{
  *(this + 152) = xmmword_2247A4920;
  *(this + 168) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 16) = 0xBF8000003F4CCCCDLL;
  *(this + 24) = (1.0 / a2) * 3.0;
  *(this + 36) = 1061997773;
  *(this + 28) = 0x3D4CCCCD3F800000;
  v2 = vmul_n_f32(0x3F19999A40800000, a2);
  *(this + 40) = v2;
  v3 = a2 * 1.2;
  *(this + 68) = a2 * 3.0;
  *(this + 72) = v3;
  v4 = 1.0 / a2;
  v5 = v4 * 5.0e-10;
  *(this + 52) = a2;
  *(this + 56) = v5;
  v6 = v4 * 0.03;
  *(this + 60) = (1.0 / a2) * 0.005;
  *(this + 64) = v6;
  *(this + 76) = 1061997773;
  *(this + 80) = a2 * 1.7;
  v7 = vcvt_f32_f64(vmulq_n_f64(xmmword_2247A5100, a2));
  *(this + 48) = v7.i32[1];
  *(this + 84) = v7;
  *(this + 92) = a2 + a2;
  *(this + 96) = v5;
  v8 = v4 * 0.02;
  *(this + 100) = (1.0 / a2) * 0.0066667;
  *(this + 104) = v8;
  *(this + 108) = 1061997773;
  v9 = v4 * 7.5e-10;
  *(this + 112) = v9;
  *(this + 116) = v9;
  *(this + 120) = fminf(v2.f32[0], a2 * 1.7);
  *(this + 124) = a2 * 1.5;
  *(this + 128) = v7.i32[1];
  v2.f32[0] = v4 * 1.2;
  *(this + 132) = v2.i32[0];
  *(this + 136) = (1.0 / a2) * 0.00625;
  *(this + 140) = a2 + a2;
  *(this + 144) = a2;
  return this;
}

{
  *(this + 152) = xmmword_2247A4920;
  *(this + 168) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 16) = 0xBF8000003F4CCCCDLL;
  *(this + 24) = (1.0 / a2) * 3.0;
  *(this + 36) = 1061997773;
  *(this + 28) = 0x3D4CCCCD3F800000;
  v2 = vmul_n_f32(0x3F19999A40800000, a2);
  *(this + 40) = v2;
  v3 = a2 * 1.2;
  *(this + 68) = a2 * 3.0;
  *(this + 72) = v3;
  v4 = 1.0 / a2;
  v5 = v4 * 5.0e-10;
  *(this + 52) = a2;
  *(this + 56) = v5;
  v6 = v4 * 0.03;
  *(this + 60) = (1.0 / a2) * 0.005;
  *(this + 64) = v6;
  *(this + 76) = 1061997773;
  *(this + 80) = a2 * 1.7;
  v7 = vcvt_f32_f64(vmulq_n_f64(xmmword_2247A5100, a2));
  *(this + 48) = v7.i32[1];
  *(this + 84) = v7;
  *(this + 92) = a2 + a2;
  *(this + 96) = v5;
  v8 = v4 * 0.02;
  *(this + 100) = (1.0 / a2) * 0.0066667;
  *(this + 104) = v8;
  *(this + 108) = 1061997773;
  v9 = v4 * 7.5e-10;
  *(this + 112) = v9;
  *(this + 116) = v9;
  *(this + 120) = fminf(v2.f32[0], a2 * 1.7);
  *(this + 124) = a2 * 1.5;
  *(this + 128) = v7.i32[1];
  v2.f32[0] = v4 * 1.2;
  *(this + 132) = v2.i32[0];
  *(this + 136) = (1.0 / a2) * 0.00625;
  *(this + 140) = a2 + a2;
  *(this + 144) = a2;
  return this;
}

double peridot::AggressorsClassifier::AggressorsClassifier(peridot::AggressorsClassifier *this)
{
  *(this + 152) = xmmword_2247A4920;
  *(this + 21) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 1) = xmmword_2247A5110;
  *(this + 2) = xmmword_2247A5120;
  *(this + 3) = xmmword_2247A4950;
  *(this + 4) = xmmword_2247A4940;
  *(this + 5) = xmmword_2247A5130;
  *(this + 6) = xmmword_2247A5140;
  result = 5.20906654e-76;
  *(this + 7) = xmmword_2247A5150;
  *(this + 8) = xmmword_2247A5160;
  *(this + 36) = 1065353216;
  return result;
}

{
  *(this + 152) = xmmword_2247A4920;
  *(this + 21) = 0x1C0000001CLL;
  *(this + 148) = 0;
  *(this + 1) = xmmword_2247A5110;
  *(this + 2) = xmmword_2247A5120;
  *(this + 3) = xmmword_2247A4950;
  *(this + 4) = xmmword_2247A4940;
  *(this + 5) = xmmword_2247A5130;
  *(this + 6) = xmmword_2247A5140;
  result = 5.20906654e-76;
  *(this + 7) = xmmword_2247A5150;
  *(this + 8) = xmmword_2247A5160;
  *(this + 36) = 1065353216;
  return result;
}

void peridot::AggressorsClassifier::classifyBankAggressors(uint64_t a1, peridot::PeridotUserOutput *a2, uint64_t a3, _DWORD *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, 42);
  peridot::AggressorsClassifier::findGlareSpots(a1, a2, 0, v47, v46);
  for (i = 0; i != 14; ++i)
  {
    v12 = &v45[i * 3];
    *v12 = v46[i][0] || v47[i][0];
    v12[1] = v46[i][1] || v47[i][1];
    v12[2] = v46[i][2] || v47[i][2];
  }

  if (v45[0])
  {
    *a4 = 6;
  }

  if (v45[1])
  {
    a4[1] = 6;
  }

  if (v45[2])
  {
    a4[2] = 6;
  }

  if (v45[3])
  {
    a4[3] = 6;
  }

  if (v45[4])
  {
    a4[4] = 6;
  }

  if (v45[5])
  {
    a4[5] = 6;
  }

  if (v45[6])
  {
    a4[6] = 6;
  }

  if (v45[7])
  {
    a4[7] = 6;
  }

  if (v45[8])
  {
    a4[8] = 6;
  }

  if (v45[9])
  {
    a4[9] = 6;
  }

  if (v45[10])
  {
    a4[10] = 6;
  }

  if (v45[11])
  {
    a4[11] = 6;
  }

  if (v45[12])
  {
    a4[12] = 6;
  }

  if (v45[13])
  {
    a4[13] = 6;
  }

  if (v45[14])
  {
    a4[14] = 6;
  }

  if (v45[15])
  {
    a4[15] = 6;
  }

  if (v45[16])
  {
    a4[16] = 6;
  }

  if (v45[17])
  {
    a4[17] = 6;
  }

  if (v45[18])
  {
    a4[18] = 6;
  }

  if (v45[19])
  {
    a4[19] = 6;
  }

  if (v45[20])
  {
    a4[20] = 6;
  }

  if (v45[21])
  {
    a4[21] = 6;
  }

  if (v45[22])
  {
    a4[22] = 6;
  }

  if (v45[23])
  {
    a4[23] = 6;
  }

  if (v45[24])
  {
    a4[24] = 6;
  }

  if (v45[25])
  {
    a4[25] = 6;
  }

  if (v45[26])
  {
    a4[26] = 6;
  }

  if (v45[27])
  {
    a4[27] = 6;
  }

  if (v45[28])
  {
    a4[28] = 6;
  }

  if (v45[29])
  {
    a4[29] = 6;
  }

  if (v45[30])
  {
    a4[30] = 6;
  }

  if (v45[31])
  {
    a4[31] = 6;
  }

  if (v45[32])
  {
    a4[32] = 6;
  }

  if (v45[33])
  {
    a4[33] = 6;
  }

  if (v45[34])
  {
    a4[34] = 6;
  }

  if (v45[35])
  {
    a4[35] = 6;
  }

  if (v45[36])
  {
    a4[36] = 6;
  }

  if (v45[37])
  {
    a4[37] = 6;
  }

  if (v45[38])
  {
    a4[38] = 6;
  }

  if (v45[39])
  {
    a4[39] = 6;
  }

  if (v45[40])
  {
    a4[40] = 6;
  }

  if (v45[41])
  {
    a4[41] = 6;
  }

  memset(v44, 0, 42);
  peridot::AggressorsClassifier::findGlareFa(a1, a2, v44, 0.0, v7, v8, v9, v10, 0, v47, 0);
  peridot::AggressorsClassifier::findGlareFa(a1, a2, v44, v13, v14, v15, v16, v17, 0, v46, 1);
  memset(v43, 0, sizeof(v43));
  v38 = 0.0;
  peridot::AggressorsClassifier::findGroupGlareFa(a1, a2, 0, v45, v43, &v38);
  v18 = 0;
  v19 = a4 + 2;
  do
  {
    if (v43[v18 / 3][0])
    {
      if (v44[v18])
      {
        *(v19 - 2) = 5;
      }

      else
      {
        *(v19 - 2) = 4;
      }
    }

    else if (v44[v18])
    {
      *(v19 - 2) = 1;
    }

    if (v43[v18 / 3][1])
    {
      if (v44[v18 + 1])
      {
        *(v19 - 1) = 5;
      }

      else
      {
        *(v19 - 1) = 4;
      }
    }

    else if (v44[v18 + 1])
    {
      *(v19 - 1) = 1;
    }

    if (v43[v18 / 3][2])
    {
      if (v44[v18 + 2])
      {
        *v19 = 5;
      }

      else
      {
        *v19 = 4;
      }
    }

    else if (v44[v18 + 2])
    {
      *v19 = 1;
    }

    v18 += 3;
    v19 += 3;
  }

  while (v18 != 42);
  v20 = 0;
  v21 = *(a1 + 16);
  do
  {
    memset(v39, 0, 24);
    v25 = (a2 + 308 * v20);
    if (v21 <= v25[1])
    {
      v26 = a4[3 * v20] != 0;
      v27 = v39 + 1;
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v27 = v39;
    }

    if (v21 <= v25[23])
    {
      ++v24;
      *v27 = 1;
      v26 |= a4[3 * v20 + 1] != 0;
    }

    if (v21 <= v25[45])
    {
      *(v39 + v24++) = 2;
      v26 |= a4[3 * v20 + 2] != 0;
    }

    if (v24 && (v26 & 1) == 0)
    {
      if (v24 == 2)
      {
        v28 = *&v39[0];
        if (v25[22 * *&v39[0]] > v25[22 * *(&v39[0] + 1)])
        {
          *&v39[0] = *(&v39[0] + 1);
          *(&v39[0] + 1) = v28;
        }
      }

      for (j = 0; j != v24; ++j)
      {
        v30 = &v25[22 * *(v39 + j)];
        v42[j] = v30[5];
        *(&v40 + j) = v30[3];
      }

      v31 = *(a1 + 20);
      if (v24 != 1)
      {
        if (v41 == 0.0 || v41 >= v31)
        {
          if (*(a1 + 28) >= (v42[1] / v42[0]))
          {
            v23 = *(&v39[0] + 1);
            v34 = *&v39[0];
          }

          else
          {
            v23 = *(&v39[0] + 1);
            v34 = *&v39[0];
            if (v40 != 0.0 && v40 < *(a1 + 32))
            {
              a4[3 * v20 + *&v39[0]] = 12;
              v22 = 13;
              goto LABEL_109;
            }
          }

          v22 = 10;
          a4[3 * v20 + v34] = 10;
          goto LABEL_109;
        }

        v22 = 8;
        v23 = *(&v39[0] + 1);
LABEL_109:
        v24 = &a4[3 * v20];
        *(v24 + 4 * v23) = v22;
        goto LABEL_110;
      }

      v32 = v40 != 0.0 && v40 < v31;
      if (v32 && *(a1 + 148) == 1)
      {
        v22 = 8;
        v23 = *&v39[0];
        goto LABEL_109;
      }
    }

LABEL_110:
    ++v20;
  }

  while (v20 != 14);
  v35 = 0;
  v36 = 0;
  memset(v39, 0, 42);
  v37 = a4 + 1;
  do
  {
    if (*(v37 - 1) == 8)
    {
      *(v39 + v35) = 1;
      ++v36;
    }

    if (*v37 == 8)
    {
      *(v39 + v35 + 1) = 1;
      ++v36;
    }

    if (v37[1] == 8)
    {
      *(v39 + v35 + 2) = 1;
      ++v36;
    }

    v35 += 3;
    v37 += 3;
  }

  while (v35 != 42);
  if (*(a1 + 24) < v36)
  {
    if (v39[0])
    {
      *a4 = 0;
    }

    if (BYTE1(v39[0]) == 1)
    {
      a4[1] = 0;
    }

    if (BYTE2(v39[0]) == 1)
    {
      a4[2] = 0;
    }

    if (BYTE3(v39[0]) == 1)
    {
      a4[3] = 0;
    }

    if (BYTE4(v39[0]) == 1)
    {
      a4[4] = 0;
    }

    if (BYTE5(v39[0]) == 1)
    {
      a4[5] = 0;
    }

    if (BYTE6(v39[0]) == 1)
    {
      a4[6] = 0;
    }

    if (BYTE7(v39[0]) == 1)
    {
      a4[7] = 0;
    }

    if (BYTE8(v39[0]) == 1)
    {
      a4[8] = 0;
    }

    if (BYTE9(v39[0]) == 1)
    {
      a4[9] = 0;
    }

    if (BYTE10(v39[0]) == 1)
    {
      a4[10] = 0;
    }

    if (BYTE11(v39[0]) == 1)
    {
      a4[11] = 0;
    }

    if (BYTE12(v39[0]) == 1)
    {
      a4[12] = 0;
    }

    if (BYTE13(v39[0]) == 1)
    {
      a4[13] = 0;
    }

    if (BYTE14(v39[0]) == 1)
    {
      a4[14] = 0;
    }

    if (HIBYTE(v39[0]) == 1)
    {
      a4[15] = 0;
    }

    if (LOBYTE(v39[1]) == 1)
    {
      a4[16] = 0;
    }

    if (BYTE1(v39[1]) == 1)
    {
      a4[17] = 0;
    }

    if (BYTE2(v39[1]) == 1)
    {
      a4[18] = 0;
    }

    if (BYTE3(v39[1]) == 1)
    {
      a4[19] = 0;
    }

    if (BYTE4(v39[1]) == 1)
    {
      a4[20] = 0;
    }

    if (BYTE5(v39[1]) == 1)
    {
      a4[21] = 0;
    }

    if (BYTE6(v39[1]) == 1)
    {
      a4[22] = 0;
    }

    if (BYTE7(v39[1]) == 1)
    {
      a4[23] = 0;
    }

    if (BYTE8(v39[1]) == 1)
    {
      a4[24] = 0;
    }

    if (BYTE9(v39[1]) == 1)
    {
      a4[25] = 0;
    }

    if (BYTE10(v39[1]) == 1)
    {
      a4[26] = 0;
    }

    if (BYTE11(v39[1]) == 1)
    {
      a4[27] = 0;
    }

    if (BYTE12(v39[1]) == 1)
    {
      a4[28] = 0;
    }

    if (BYTE13(v39[1]) == 1)
    {
      a4[29] = 0;
    }

    if (BYTE14(v39[1]) == 1)
    {
      a4[30] = 0;
    }

    if (HIBYTE(v39[1]) == 1)
    {
      a4[31] = 0;
    }

    if (LOBYTE(v39[2]) == 1)
    {
      a4[32] = 0;
    }

    if (BYTE1(v39[2]) == 1)
    {
      a4[33] = 0;
    }

    if (BYTE2(v39[2]) == 1)
    {
      a4[34] = 0;
    }

    if (BYTE3(v39[2]) == 1)
    {
      a4[35] = 0;
    }

    if (BYTE4(v39[2]) == 1)
    {
      a4[36] = 0;
    }

    if (BYTE5(v39[2]) == 1)
    {
      a4[37] = 0;
    }

    if (BYTE6(v39[2]) == 1)
    {
      a4[38] = 0;
    }

    if (BYTE7(v39[2]) == 1)
    {
      a4[39] = 0;
    }

    if (BYTE8(v39[2]) == 1)
    {
      a4[40] = 0;
    }

    if (BYTE9(v39[2]) == 1)
    {
      a4[41] = 0;
    }
  }

  peridot::AggressorsClassifier::setAggressorsFlags(v24, a2, a4);
}

double peridot::AggressorsClassifier::findGlareSpots(peridot::AggressorsClassifier *this, peridot::PeridotUserOutput *a2, unsigned __int8 a3, BOOL (*a4)[14][3], BOOL (*a5)[14][3])
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  LODWORD(result) = *(this + 9);
  v9 = *(this + 19);
  v10 = (a2 + 100);
  do
  {
    v11 = *(v10 - 24);
    if (*&result <= v11)
    {
      if ((v12 = *(v10 - 20), *(this + 10) <= v12) && ((v13 = *(v10 - 22), *(this + 11) <= v13) || v13 == 0.0) || *(this + 17) <= v12 && ((v14 = *(v10 - 22), *(this + 18) <= v14) || v14 == 0.0))
      {
        ++v7;
        (*a4)[v5][0] = 1;
      }
    }

    if (v9 <= v11 && *(this + 20) <= *(v10 - 20))
    {
      v15 = *(v10 - 22);
      if (*(this + 21) <= v15 || v15 == 0.0)
      {
        ++v6;
        (*a5)[v5][0] = 1;
      }
    }

    v16 = *(v10 - 2);
    if (*&result <= v16)
    {
      if ((v17 = v10[2], *(this + 10) <= v17) && (*(this + 11) <= *v10 || *v10 == 0.0) || *(this + 17) <= v17 && (*(this + 18) <= *v10 || *v10 == 0.0))
      {
        ++v7;
        (*a4)[v5][1] = 1;
      }
    }

    if (v9 <= v16 && *(this + 20) <= v10[2] && (*(this + 21) <= *v10 || *v10 == 0.0))
    {
      ++v6;
      (*a5)[v5][1] = 1;
    }

    v18 = v10[20];
    if (*&result <= v18)
    {
      if ((v19 = v10[24], *(this + 10) <= v19) && ((v20 = v10[22], *(this + 11) <= v20) || v20 == 0.0) || *(this + 17) <= v19 && ((v21 = v10[22], *(this + 18) <= v21) || v21 == 0.0))
      {
        ++v7;
        (*a4)[v5][2] = 1;
      }
    }

    if (v9 <= v18 && *(this + 20) <= v10[24])
    {
      v22 = v10[22];
      if (*(this + 21) <= v22 || v22 == 0.0)
      {
        ++v6;
        (*a5)[v5][2] = 1;
      }
    }

    ++v5;
    v10 += 77;
  }

  while (v5 != 14);
  if (v7)
  {
    *&result = v7;
    if (*(this + 13) > v7)
    {
      result = 0.0;
      *&(*a4)[8][2] = 0u;
      *a4 = 0u;
      *&(*a4)[5][1] = 0u;
    }
  }

  if (v6)
  {
    *&result = v6;
    if (*(this + 23) > v6)
    {
      result = 0.0;
      *&(*a5)[8][2] = 0u;
      *a5 = 0u;
      *&(*a5)[5][1] = 0u;
    }
  }

  return result;
}

char *peridot::AggressorsClassifier::findGlareFa(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, int a11)
{
  v66[84] = *MEMORY[0x277D85DE8];
  if (a11 == 1)
  {
    v15 = 88;
    v16 = 104;
    v17 = 100;
    v18 = 96;
    v19 = 76;
    goto LABEL_5;
  }

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  a8 = 0.0;
  if (!a11)
  {
    v15 = 48;
    v16 = 64;
    v17 = 60;
    v18 = 56;
    v19 = 36;
LABEL_5:
    LODWORD(a8) = *(a1 + v19);
    v14 = *(a1 + v18);
    v13 = *(a1 + v17);
    v12 = *(a1 + v16);
    v11 = *(a1 + v15);
  }

  v20 = 0;
  v21 = 0;
  v22 = (a10 + 2);
  do
  {
    if (*(v22 - 2))
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 0;
    }

    if (*(v22 - 1) == 1)
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 1;
    }

    if (*v22 == 1)
    {
      v66[v21 + 42] = v20;
      v66[v21++] = 2;
    }

    ++v20;
    v22 += 3;
  }

  while (v20 != 14);
  v23.i64[0] = *(a2 + 4);
  v24.i32[0] = *(a2 + 400);
  v25.i32[0] = *(a2 + 796);
  v26.i32[0] = *(a2 + 1236);
  v23.i32[1] = *(a2 + 92);
  v23.i32[2] = *(a2 + 180);
  v23.i32[3] = *(a2 + 312);
  v24.i32[1] = *(a2 + 488);
  v24.i32[2] = *(a2 + 620);
  v24.i32[3] = *(a2 + 708);
  v25.i32[1] = *(a2 + 928);
  v25.i32[2] = *(a2 + 1016);
  v25.i32[3] = *(a2 + 1104);
  v26.i32[1] = *(a2 + 1324);
  v26.i32[2] = *(a2 + 1412);
  v26.i32[3] = *(a2 + 1544);
  v27 = vdupq_lane_s32(*&a8, 0);
  v28 = vuzp1q_s8(vuzp1q_s16(vcgeq_f32(v23, v27), vcgeq_f32(v24, v27)), vuzp1q_s16(vcgeq_f32(v25, v27), vcgeq_f32(v26, v27)));
  v24.i64[0] = 0x101010101010101;
  v24.i64[1] = 0x101010101010101;
  v25.i64[0] = *(a2 + 1632);
  v26.i32[0] = *(a2 + 2468);
  v29.i32[0] = *(a2 + 2864);
  result = (a2 + 3172);
  v26.i32[1] = *(a2 + 2556);
  v26.i32[2] = *(a2 + 2644);
  v26.i32[3] = *(a2 + 2776);
  v29.i32[1] = *(a2 + 2952);
  v29.i32[2] = *(a2 + 3084);
  v29.i32[3] = *(a2 + 3172);
  v31 = vuzp1q_s16(vcgeq_f32(v26, v27), vcgeq_f32(v29, v27));
  v29.i32[0] = *(a2 + 2028);
  v25.i32[1] = *(a2 + 1720);
  v25.i32[2] = *(a2 + 1852);
  v25.i32[3] = *(a2 + 1940);
  v29.i32[1] = *(a2 + 2160);
  v29.i32[2] = *(a2 + 2248);
  v29.i32[3] = *(a2 + 2336);
  v62[0] = vandq_s8(v28, v24);
  v62[1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgeq_f32(v25, v27), vcgeq_f32(v29, v27)), v31), v24);
  v28.i64[0] = *(a2 + 3260);
  v24.i32[0] = *(a2 + 3700);
  v28.i32[1] = *(a2 + 3392);
  v28.i32[2] = *(a2 + 3480);
  v28.i32[3] = *(a2 + 3568);
  v24.i32[1] = *(a2 + 3788);
  v24.i32[2] = *(a2 + 3876);
  v24.i32[3] = *(a2 + 4008);
  v63 = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(v28, v27), vcgeq_f32(v24, v27))), 0x101010101010101);
  v64 = *&a8 <= *(a2 + 4096);
  v65 = *&a8 <= *(a2 + 4184);
  if (v21)
  {
    v32 = 0;
    v33 = v14 * -0.5;
    result = v62 + 2;
    v34 = a3 + 1;
    do
    {
      v35 = 0;
      v36 = (a2 + 308 * v66[v32 + 42] + 88 * v66[v32]);
      memset(v61, 0, 42);
      memset(v60, 0, 42);
      v37 = *v36;
      v38 = 1.0 / v36[5];
      v39 = (a2 + 108);
      do
      {
        v40 = *(v39 - 27) - v37;
        if (v33 <= v40 && v40 <= v14)
        {
          *(v61 + v35) = 1;
        }

        if ((*(v39 - 22) * v38) < v13)
        {
          *(v60 + v35) = 1;
        }

        v42 = *(v39 - 5) - v37;
        if (v33 <= v42 && v42 <= v14)
        {
          *(v61 + v35 + 1) = 1;
        }

        if ((*v39 * v38) < v13)
        {
          *(v60 + v35 + 1) = 1;
        }

        v44 = v39[17] - v37;
        if (v33 <= v44 && v44 <= v14)
        {
          *(v61 + v35 + 2) = 1;
        }

        if ((v39[22] * v38) < v13)
        {
          *(v60 + v35 + 2) = 1;
        }

        v35 += 3;
        v39 += 77;
      }

      while (v35 != 42);
      memset(v59, 0, sizeof(v59));
      v58 = 1;
      v46 = &v59[1];
      v47 = (a2 + 100);
      v48 = 14;
      do
      {
        v50 = *(v47 - 22);
        v51 = v50 < v12 && (v50 != 0.0 || *(v47 - 20) < v11);
        *(v46 - 2) = v51;
        v52 = *v47 < v12 && (*v47 != 0.0 || v47[2] < v11);
        *(v46 - 1) = v52;
        v53 = v47[22];
        v49 = v53 < v12 && (v53 != 0.0 || v47[24] < v11);
        *v46 = v49;
        v46 += 3;
        v47 += 77;
        --v48;
      }

      while (v48);
      for (i = 0; i != 42; i += 3)
      {
        if ((*(v62 + i) & 1) != 0 && *(v61 + i) == 1 && *(v60 + i) == 1)
        {
          v56 = v59[i - 1];
        }

        else
        {
          v56 = 0;
        }

        *(v34 + i - 1) |= v56;
        if (*(v62 + i + 1) == 1 && *(v61 + i + 1) == 1 && *(v60 + i + 1) == 1)
        {
          v57 = v59[i];
        }

        else
        {
          v57 = 0;
        }

        *(v34 + i) |= v57;
        if (*(v62 + i + 2) == 1 && *(v61 + i + 2) == 1 && *(v60 + i + 2) == 1)
        {
          v55 = v59[i + 1];
        }

        else
        {
          v55 = 0;
        }

        *(v34 + i + 1) |= v55;
      }

      ++v32;
    }

    while (v32 != v21);
  }

  return result;
}

uint64_t peridot::AggressorsClassifier::findGroupGlareFa(peridot::AggressorsClassifier *this, peridot::PeridotUserOutput *a2, unsigned __int8 a3, BOOL (*a4)[3], BOOL (*a5)[14][3], float *a6)
{
  v10 = 0;
  v11 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v12 = &(*a4)[2];
  memset(v136, 0, 42);
  do
  {
    if (*(v12 - 2))
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 0;
    }

    if (*(v12 - 1))
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 1;
    }

    if (*v12)
    {
      *&v135[2 * v10 + 126] = v11;
      *&v135[2 * v10++ + 42] = 2;
    }

    ++v11;
    v12 += 3;
  }

  while (v11 != 14);
  if (v10)
  {
    v13 = 0;
    v14 = *(this + 29);
    do
    {
      v15 = *(a2 + 77 * *&v135[2 * v13 + 126] + 22 * *&v135[2 * v13 + 42]);
      v16 = &v136[0].i8[2];
      v17 = (a2 + 88);
      v18 = 14;
      do
      {
        *(v16 - 2) |= vabds_f32(*(v17 - 22), v15) < v14;
        *(v16 - 1) |= vabds_f32(*v17, v15) < v14;
        *v16 |= vabds_f32(v17[22], v15) < v14;
        v16 += 3;
        v17 += 77;
        --v18;
      }

      while (v18);
      ++v13;
    }

    while (v13 != v10);
  }

  v19 = 0;
  v20 = *(this + 27);
  v21 = (a2 + 92);
  do
  {
    v22 = &v136[0].i8[v19];
    if (v136[0].i8[v19])
    {
      v23 = v20 > *(v21 - 22);
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    *v22 = v24;
    if (v22[1])
    {
      v25 = v20 > *v21;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    v22[1] = v26;
    if (v22[2])
    {
      v27 = v20 > v21[22];
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    v22[2] = v28;
    v19 += 3;
    v21 += 77;
  }

  while (v19 != 42);
  v29 = 0;
  v30 = 0;
  v31 = (a2 + 88);
  do
  {
    if (v136[0].i8[v29])
    {
      v135[v30++] = *(v31 - 22);
    }

    if (v136[0].i8[v29 + 1] == 1)
    {
      v135[v30++] = *v31;
    }

    if (v136[0].i8[v29 + 2] == 1)
    {
      v135[v30++] = v31[22];
    }

    v29 += 3;
    v31 += 77;
  }

  while (v29 != 42);
  result = std::__sort<std::__less<float,float> &,float *>();
  v133[0] = 0;
  if (v30 >= 2)
  {
    v33 = 0;
    v34 = 0;
    v35 = *(this + 28);
    v36 = *v135;
    v37 = 1;
    do
    {
      v38 = v36;
      v36 = *&v135[v33 + 1];
      if (v35 <= (v36 - v38))
      {
        ++v34;
        v133[v37++] = v33;
      }

      ++v33;
    }

    while (v30 - 1 != v33);
    v133[v37] = v30;
    if (v34)
    {
      if (!v37)
      {
        v41 = 0;
        v42 = 0;
LABEL_62:
        v56 = v133[v42];
        v57 = *&v135[v56];
        v58 = *&v135[v56 + v41];
        v59 = (a2 + 88);
        v60 = &v136[0].i8[2];
        v61 = 14;
        do
        {
          v62 = *(v59 - 22);
          v63 = v58 < v62 || v57 > v62;
          v64 = *(v60 - 2);
          if (v63)
          {
            v64 = 0;
          }

          *(v60 - 2) = v64;
          v65 = v58 < *v59 || v57 > *v59;
          v66 = *(v60 - 1);
          if (v65)
          {
            v66 = 0;
          }

          *(v60 - 1) = v66;
          v67 = v59[22];
          v68 = v58 < v67 || v57 > v67;
          v69 = *v60;
          if (v68)
          {
            v69 = 0;
          }

          *v60 = v69;
          v60 += 3;
          v59 += 77;
          --v61;
        }

        while (v61);
        goto LABEL_82;
      }

      v39 = v133[0];
      if (v37 > 3)
      {
        v43 = vdupq_n_s64(v133[0]);
        v40 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        v44 = &v132;
        v45 = &v134;
        v46 = v37 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v47 = v45[-1];
          v48 = vextq_s8(v43, v47, 8uLL);
          v49 = *v45;
          v45 += 2;
          v43 = v49;
          v44[-1] = vsubq_s64(v47, v48);
          *v44 = vsubq_s64(v49, vextq_s8(v47, v49, 8uLL));
          v44 += 2;
          v46 -= 4;
        }

        while (v46);
        if (v37 == v40)
        {
LABEL_58:
          v55 = 0;
          v42 = 0;
          v41 = 0;
          do
          {
            if (*&v131[8 * v55 + 148] > v41)
            {
              v41 = *&v131[8 * v55 + 148];
              v42 = v55;
            }

            ++v55;
          }

          while (v37 != v55);
          goto LABEL_62;
        }

        v39 = v43.u64[1];
      }

      else
      {
        v40 = 0;
      }

      v50 = v40;
      v51 = &v131[8 * v40 + 148];
      v52 = v37 - v40;
      v53 = &v133[v50 + 1];
      do
      {
        v54 = *v53++;
        *v51++ = v54 - v39;
        v39 = v54;
        --v52;
      }

      while (v52);
      goto LABEL_58;
    }
  }

LABEL_82:
  v70 = vandq_s8(vcltzq_s8(vshlq_n_s8(*(&v136[1] + 10), 7uLL)), xmmword_2247A4660);
  v71 = vaddvq_s16(vzip1q_s8(v70, vextq_s8(v70, v70, 8uLL)));
  v72 = vandq_s8(vcltzq_s8(vshlq_n_s8(*(v136 + 10), 7uLL)), xmmword_2247A4660);
  v73 = vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(*&v136[0].i16[1], 7uLL)), 0x8040201008040201));
  if (vaddvq_s16(vzip1q_s8(v72, vextq_s8(v72, v72, 8uLL))) | v71)
  {
    v74 = 0;
  }

  else
  {
    v74 = v73 == 0;
  }

  if (v74 && (v136[0].i8[1] & 1) == 0 && (v136[0].i8[0] & 1) == 0)
  {
    return result;
  }

  v75 = 0;
  v76 = (a2 + 108);
  v77 = &v136[0].i8[2];
  v78 = 14;
  do
  {
    if (*(v77 - 2))
    {
      v130[v75++] = *(v76 - 22);
    }

    if (*(v77 - 1) == 1)
    {
      v130[v75++] = *v76;
    }

    if (*v77 == 1)
    {
      v130[v75++] = v76[22];
    }

    v77 += 3;
    v76 += 77;
    --v78;
  }

  while (v78);
  result = std::__sort<std::__less<float,float> &,float *>();
  if (v75)
  {
    v80 = 4 * v75;
    v81 = v130;
    v82 = 4 * v75;
    while (*(this + 30) > *v81)
    {
      v81 += 4;
      v82 -= 4;
      if (!v82)
      {
        v83 = v75;
        goto LABEL_104;
      }
    }
  }

  else
  {
    v81 = v130;
  }

  v80 = v81 - v130;
  v83 = (v81 - v130) >> 2;
  if (v81 == &v130[v75])
  {
LABEL_104:
    v81 = &v130[v75];
    if (*v81 != 1.0)
    {
      return result;
    }
  }

  if (v81 != v130)
  {
    v79.i32[0] = v130[0];
    if (v83 >= 8)
    {
      v79 = vdupq_lane_s32(*v79.i8, 0);
      v84 = v83 & 0xFFFFFFFFFFFFFFF8;
      v86 = &v129;
      v87 = v131;
      v88 = v83 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v89 = v87[-1];
        v90 = vextq_s8(v79, v89, 0xCuLL);
        v91 = *v87;
        v87 += 2;
        v79 = v91;
        v86[-1] = vsubq_f32(v89, v90);
        *v86 = vsubq_f32(v91, vextq_s8(v89, v91, 0xCuLL));
        v86 += 2;
        v88 -= 8;
      }

      while (v88);
      if (v83 == v84)
      {
LABEL_115:
        v85 = &v127;
        v96 = v80 - 4;
        if (v96)
        {
          v97 = v128;
          v98 = v127;
          v99 = v128;
          do
          {
            v100 = *v99++;
            v101 = v100;
            if (v98 < v100)
            {
              v98 = v101;
              v85 = v97;
            }

            v97 = v99;
            v96 -= 4;
          }

          while (v96);
        }

        goto LABEL_120;
      }

      v79.i32[0] = v79.i32[3];
    }

    else
    {
      v84 = 0;
    }

    v92 = &v128[4 * v84 - 4];
    v93 = v83 - v84;
    v94 = &v130[v84 + 1];
    do
    {
      v95 = *v94++;
      *v92++ = v95 - *v79.i32;
      *v79.i32 = v95;
      --v93;
    }

    while (v93);
    goto LABEL_115;
  }

  v85 = &v127;
LABEL_120:
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = *(v130 + v85 - &v127);
  v106 = fminf(v105, *(this + 33));
  memset(v126, 0, 42);
  v107 = (a2 + 100);
  memset(v125, 0, 42);
  do
  {
    if (v136[0].i8[v102])
    {
      v108 = *(v107 - 20);
      if (v108 <= v106)
      {
        v109 = *(v107 - 22) != 0.0 || v108 < *(this + 32);
      }

      else
      {
        v109 = 0;
      }

      *(v126 + v102) = v109;
      if (v108 <= v105)
      {
        result = 0;
      }

      else
      {
        v110 = *(v107 - 22);
        result = v110 > *(this + 31) || v110 == 0.0;
      }

      *(v125 + v102) = result;
      v104 += v109;
      v103 += result;
    }

    if (v136[0].i8[v102 + 1] == 1)
    {
      v111 = v107[2];
      if (v111 <= v106)
      {
        v112 = *v107 != 0.0 || v111 < *(this + 32);
      }

      else
      {
        v112 = 0;
      }

      *(v126 + v102 + 1) = v112;
      if (v111 <= v105)
      {
        result = 0;
      }

      else
      {
        result = *v107 > *(this + 31) || *v107 == 0.0;
      }

      *(v125 + v102 + 1) = result;
      v104 += v112;
      v103 += result;
    }

    if (v136[0].i8[v102 + 2] == 1)
    {
      v113 = v107[24];
      if (v113 <= v106)
      {
        v114 = v107[22] != 0.0 || v113 < *(this + 32);
      }

      else
      {
        v114 = 0;
      }

      *(v126 + v102 + 2) = v114;
      if (v113 <= v105)
      {
        result = 0;
      }

      else
      {
        v115 = v107[22];
        result = v115 > *(this + 31) || v115 == 0.0;
      }

      *(v125 + v102 + 2) = result;
      v104 += v114;
      v103 += result;
    }

    v102 += 3;
    v107 += 77;
  }

  while (v102 != 42);
  if (*(this + 35) <= v104 && *(this + 36) <= v103)
  {
    v116 = 0;
    v117 = (a2 + 108);
    v118 = 0.0;
    v119 = 0.0;
    do
    {
      if ((*(v126 + v116) & 1) != 0 && v136[0].i8[v116] == 1)
      {
        v119 = *(v117 - 22) + v119;
      }

      if (*(v125 + v116) == 1 && v136[0].i8[v116] == 1)
      {
        v118 = *(v117 - 22) + v118;
      }

      if (*(v126 + v116 + 1) == 1 && v136[0].i8[v116 + 1] == 1)
      {
        v119 = *v117 + v119;
      }

      if (*(v125 + v116 + 1) == 1 && v136[0].i8[v116 + 1] == 1)
      {
        v118 = *v117 + v118;
      }

      if (*(v126 + v116 + 2) == 1 && v136[0].i8[v116 + 2] == 1)
      {
        v119 = v117[22] + v119;
      }

      if (*(v125 + v116 + 2) == 1 && v136[0].i8[v116 + 2] == 1)
      {
        v118 = v117[22] + v118;
      }

      v116 += 3;
      v117 += 77;
    }

    while (v116 != 42);
    v120 = v119 / (v118 * v104);
    *a6 = v120;
    if (v120 < *(this + 34))
    {
      v121 = &(*a5)[0][1];
      v122 = &v136[0].i8[2];
      v123 = v126 + 2;
      v124 = 14;
      do
      {
        if (*(v123 - 2) == 1 && *(v122 - 2) == 1)
        {
          *(v121 - 1) = 1;
        }

        if (*(v123 - 1) == 1 && *(v122 - 1) == 1)
        {
          *v121 = 1;
        }

        if (*v123 == 1 && *v122 == 1)
        {
          v121[1] = 1;
        }

        v121 += 3;
        v122 += 3;
        v123 += 3;
        --v124;
      }

      while (v124);
    }
  }

  return result;
}

void peridot::AggressorsClassifier::setAggressorsFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v50 = *MEMORY[0x277D85DE8];
  memset(v49, 0, 42);
  v5 = (a3 + 4);
  do
  {
    if (*(v5 - 1))
    {
      *(v49 + v3) = 1;
      ++v4;
    }

    if (*v5)
    {
      *(v49 + v3 + 1) = 1;
      ++v4;
    }

    if (v5[1])
    {
      *(v49 + v3 + 2) = 1;
      ++v4;
    }

    v3 += 3;
    v5 += 3;
  }

  while (v3 != 42);
  if (v4)
  {
    v6 = 0;
    memset(v48, 0, 42);
    memset(v47, 0, 42);
    memset(v46, 0, 42);
    memset(v45, 0, 42);
    memset(v44, 0, 42);
    v7 = (a3 + 4);
    memset(v43, 0, 42);
    while (1)
    {
      v9 = *(v7 - 1);
      if (v9 > 5)
      {
        switch(v9)
        {
          case 6:
            v11 = v45;
            goto LABEL_30;
          case 8:
            v11 = v46;
            goto LABEL_30;
          case 10:
            v11 = v44;
            goto LABEL_30;
        }
      }

      else if ((v9 - 4) < 2 || v9 == 1)
      {
        *(v48 + v6) = 1;
        if ((v9 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_31;
        }

        v11 = v47;
        goto LABEL_30;
      }

      if ((v9 & 0xFFFFFFFE) != 0xC)
      {
        goto LABEL_31;
      }

      v11 = v43;
LABEL_30:
      *(v11 + v6) = 1;
LABEL_31:
      v12 = *v7;
      if (*v7 > 5)
      {
        switch(v12)
        {
          case 10:
            v13 = v44;
            goto LABEL_44;
          case 8:
            v13 = v46;
            goto LABEL_44;
          case 6:
            v13 = v45;
            goto LABEL_44;
        }
      }

      else if ((v12 - 4) < 2 || v12 == 1)
      {
        *(v48 + v6 + 1) = 1;
        if ((v12 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_45;
        }

        v13 = v47;
        goto LABEL_44;
      }

      if ((v12 & 0xFFFFFFFE) != 0xC)
      {
        goto LABEL_45;
      }

      v13 = v43;
LABEL_44:
      *(v13 + v6 + 1) = 1;
LABEL_45:
      v14 = v7[1];
      if (v14 > 5)
      {
        switch(v14)
        {
          case 10:
            v8 = v44;
            break;
          case 8:
            v8 = v46;
            break;
          case 6:
            v8 = v45;
            break;
          default:
            goto LABEL_54;
        }
      }

      else
      {
        if ((v14 - 4) >= 2 && v14 != 1)
        {
LABEL_54:
          if ((v14 & 0xFFFFFFFE) != 0xC)
          {
            goto LABEL_13;
          }

          v8 = v43;
          goto LABEL_12;
        }

        *(v48 + v6 + 2) = 1;
        if ((v14 & 0xFFFFFFFE) != 4)
        {
          goto LABEL_13;
        }

        v8 = v47;
      }

LABEL_12:
      *(v8 + v6 + 2) = 1;
LABEL_13:
      v6 += 3;
      v7 += 3;
      if (v6 == 42)
      {
        v15 = 0;
        v16 = (a2 + 172);
        do
        {
          if (*(v48 + v15) == 1)
          {
            *(v16 - 22) |= 0x40u;
          }

          if (*(v48 + v15 + 1) == 1)
          {
            *v16 |= 0x40u;
          }

          if (*(v48 + v15 + 2) == 1)
          {
            v16[22] |= 0x40u;
          }

          v15 += 3;
          v16 += 77;
        }

        while (v15 != 42);
        v17 = 0;
        v18 = (a2 + 172);
        do
        {
          if (*(v47 + v17) == 1)
          {
            *(v18 - 22) |= 0x100u;
          }

          if (*(v47 + v17 + 1) == 1)
          {
            *v18 |= 0x100u;
          }

          if (*(v47 + v17 + 2) == 1)
          {
            v18[22] |= 0x100u;
          }

          v17 += 3;
          v18 += 77;
        }

        while (v17 != 42);
        v19 = 0;
        v20 = (a2 + 172);
        do
        {
          if (*(v46 + v19) == 1)
          {
            *(v20 - 22) |= 0x400u;
          }

          if (*(v46 + v19 + 1) == 1)
          {
            *v20 |= 0x400u;
          }

          if (*(v46 + v19 + 2) == 1)
          {
            v20[22] |= 0x400u;
          }

          v19 += 3;
          v20 += 77;
        }

        while (v19 != 42);
        v21 = 0;
        v22 = (a2 + 172);
        do
        {
          if (*(v45 + v21) == 1)
          {
            *(v22 - 22) |= 0x800u;
          }

          if (*(v45 + v21 + 1) == 1)
          {
            *v22 |= 0x800u;
          }

          if (*(v45 + v21 + 2) == 1)
          {
            v22[22] |= 0x800u;
          }

          v21 += 3;
          v22 += 77;
        }

        while (v21 != 42);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = v44 + 2;
        do
        {
          if (*(v26 - 2))
          {
            *(&v49[24] + ++v23) = 0;
            *(&v49[3] + ++v25) = v24;
          }

          if (*(v26 - 1) == 1)
          {
            *(&v49[24] + ++v23) = 1;
            *(&v49[3] + ++v25) = v24;
          }

          if (*v26 == 1)
          {
            *(&v49[24] + ++v23) = 2;
            *(&v49[3] + ++v25) = v24;
          }

          ++v24;
          v26 += 3;
        }

        while (v24 != 14);
        if (v23)
        {
          for (i = 0; i < v23; i += 2)
          {
            v29 = &v49[i / 2 + 24] + 1;
            v30 = &v49[i / 2 + 3] + 1;
            if (*(a3 + 12 * *v30 + 4 * *v29) == 10)
            {
              v31 = a2 + 308 * *v30 + 88 * *v29;
              *(v31 + 84) |= 0x10000000u;
            }

            v28 = a2 + 308 * v30[1] + 88 * v29[1];
            *(v28 + 84) |= 0x10000000u;
          }
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v43 + 2;
        do
        {
          if (*(v35 - 2))
          {
            *(&v49[24] + ++v32) = 0;
            *(&v49[3] + ++v34) = v33;
          }

          if (*(v35 - 1) == 1)
          {
            *(&v49[24] + ++v32) = 1;
            *(&v49[3] + ++v34) = v33;
          }

          if (*v35 == 1)
          {
            *(&v49[24] + ++v32) = 2;
            *(&v49[3] + ++v34) = v33;
          }

          ++v33;
          v35 += 3;
        }

        while (v33 != 14);
        if (v32)
        {
          for (j = 0; j < v32; j += 2)
          {
            v38 = &v49[j / 2 + 24] + 1;
            v39 = &v49[j / 2 + 3] + 1;
            if (*(a3 + 12 * *v39 + 4 * *v38) == 10)
            {
              v40 = a2 + 308 * *v39 + 88 * *v38;
              *(v40 + 84) |= 0x10000000u;
            }

            v37 = a2 + 308 * v39[1] + 88 * v38[1];
            *(v37 + 84) |= 0x10000000u;
          }
        }

        v41 = 0;
        v42 = a2 + 176;
        do
        {
          if ((*(v48 + v41) & 1) != 0 && *(v49 + v41) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *(v42 - 176)) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          if (*(v48 + v41 + 1) == 1 && *(v49 + v41 + 1) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *(v42 - 88)) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          if (*(v48 + v41 + 2) == 1 && *(v49 + v41 + 2) == 1 && *(v42 + 4) >= 0.6 && vabds_f32(*v42, *v42) < 0.000000001)
          {
            *(v42 + 84) |= 0x40u;
          }

          v41 += 3;
          v42 += 308;
        }

        while (v41 != 42);
        return;
      }
    }
  }
}

void peridot::AggressorsClassifier::setAggressorFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18[84] = *MEMORY[0x277D85DE8];
  if (a5 == 28)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a4 + 2);
    do
    {
      if (*(v8 - 2))
      {
        v18[v5++ + 42] = 0;
        v18[v7++] = v6;
      }

      if (*(v8 - 1) == 1)
      {
        v18[v5++ + 42] = 1;
        v18[v7++] = v6;
      }

      if (*v8 == 1)
      {
        v18[v5++ + 42] = 2;
        v18[v7++] = v6;
      }

      ++v6;
      v8 += 3;
    }

    while (v6 != 14);
    if (v5)
    {
      for (i = 0; i < v5; i += 2)
      {
        v15 = &v18[i + 42];
        v16 = &v18[i];
        if (*(a3 + 12 * *v16 + 4 * *v15) == 10)
        {
          v17 = a2 + 308 * *v16 + 88 * *v15;
          *(v17 + 84) |= 0x10000000u;
        }

        v14 = a2 + 308 * v16[1] + 88 * v15[1];
        *(v14 + 84) |= 0x10000000u;
      }
    }
  }

  else
  {
    v9 = 1 << a5;
    v10 = (a2 + 172);
    v11 = (a4 + 2);
    v12 = 14;
    do
    {
      if (*(v11 - 2) == 1)
      {
        *(v10 - 22) |= v9;
      }

      if (*(v11 - 1) == 1)
      {
        *v10 |= v9;
      }

      if (*v11 == 1)
      {
        v10[22] |= v9;
      }

      v11 += 3;
      v10 += 77;
      --v12;
    }

    while (v12);
  }
}

double afdr_package::bufferClass::b_getData(afdr_package::bufferClass *this, const unint64_t *a2, const char *a3, double *a4, int *a5)
{
  if ((*a3 != 1953393013 || *(a3 + 2) != 13873) && (*a3 != 1953393013 || *(a3 + 2) != 12851) && (*a3 != 1735289203 || *(a3 + 2) != 25964) && *a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    v9 = *(this + *a2) | (*(this + *(a2 + 2)) << 8) | (*(this + *(a2 + 4)) << 16) | (*(this + *(a2 + 6)) << 24) | (*(this + *(a2 + 8)) << 32) | (*(this + *(a2 + 10)) << 40) | (*(this + *(a2 + 12)) << 48) | (*(this + *(a2 + 14)) << 56);
    v10 = *(this + *(a2 + 30));
    v11 = *(this + *(a2 + 16)) | (*(this + *(a2 + 18)) << 8) | (*(this + *(a2 + 20)) << 16) | (*(this + *(a2 + 22)) << 24) | (*(this + *(a2 + 24)) << 32) | (*(this + *(a2 + 26)) << 40) | (*(this + *(a2 + 28)) << 48);
    *&result = 0x100000002;
    *a5 = 0x100000002;
    *a4 = v9;
    *(a4 + 1) = v11 | (v10 << 56);
  }

  return result;
}

_BYTE *afdr_package::bufferClass::getData(_BYTE *this, const unint64_t *a2, const char *a3, double *__dst, int *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a3 == 1953393013 && *(a3 + 2) == 13873)
  {
    v13 = &__src[1];
    v14 = a2 + 1;
    v15 = 2048;
    do
    {
      v16 = this[*v14];
      *(v13 - 1) = this[*(v14 - 2)];
      *v13 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
  }

  else if (*a3 == 1953393013 && *(a3 + 2) == 12851)
  {
    v17 = &__src[1];
    v18 = a2 + 1;
    v19 = 2048;
    do
    {
      v20 = this[*v18];
      *(v17 - 1) = this[*(v18 - 2)];
      *v17 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 2;
    }

    while (v19);
  }

  else if (*a3 == 1735289203 && *(a3 + 2) == 25964)
  {
    v21 = &__src[1];
    v22 = a2 + 1;
    v23 = 2048;
    do
    {
      v24 = this[*v22];
      *(v21 - 1) = this[*(v22 - 2)];
      *v21 = v24;
      v21 += 2;
      v22 += 2;
      v23 -= 2;
    }

    while (v23);
  }

  else if (*a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    for (i = 0; i != 2048; i += 2)
    {
      v10 = &a2[i];
      v11 = this[*v10];
      LOBYTE(v10) = this[*(v10 + 2)];
      v12 = &__src[i];
      *v12 = v11;
      v12[1] = v10;
    }

    *a5 = 0x100000100;
    return memcpy(__dst, __src, 0x800uLL);
  }

  return this;
}

double afdr_package::jlin_v100::jlinClass::get_efl(afdr_package::jlin_v100::jlinClass *this, double *a2, int *a3)
{
  v3 = *(this + 1) << 32;
  v4 = *(*this + ((v3 + 0x400000000) >> 32)) | (*(*this + ((v3 + 0x500000000) >> 32)) << 8) | (*(*this + ((v3 + 0x600000000) >> 32)) << 16) | (*(*this + ((v3 + 0x700000000) >> 32)) << 24) | (*(*this + ((v3 + 0x800000000) >> 32)) << 32) | (*(*this + ((v3 + 0x900000000) >> 32)) << 40) | (*(*this + ((v3 + 0xA00000000) >> 32)) << 48) | (*(*this + ((v3 + 0xB00000000) >> 32)) << 56);
  *&result = 0x100000001;
  *a3 = 0x100000001;
  *a2 = v4;
  return result;
}

uint64_t *afdr_package::jlin_v100::jlinClass::set_pixelSize(uint64_t *this)
{
  v1 = *this;
  v2 = this[1] << 32;
  *(v1 + ((v2 + 0xC00000000) >> 32)) = 77;
  *(v1 + ((v2 + 0xD00000000) >> 32)) = -37;
  *(v1 + ((v2 + 0xE00000000) >> 32)) = -65;
  *(v1 + ((v2 + 0xF00000000) >> 32)) = -78;
  *(v1 + ((v2 + 0x1000000000) >> 32)) = -46;
  *(v1 + ((v2 + 0x1100000000) >> 32)) = -92;
  *(v1 + ((v2 + 0x1200000000) >> 32)) = -124;
  *(v1 + ((v2 + 0x1300000000) >> 32)) = 63;
  return this;
}

uint64_t afdr_package::bufferClass::setData(uint64_t this, const unint64_t *a2, const char *a3)
{
  if (*a3 == 1953393013 && *(a3 + 2) == 13873)
  {
    v8 = 4;
LABEL_23:
    v7 = 1;
    goto LABEL_24;
  }

  if (*a3 == 1735289203 && *(a3 + 2) == 25964)
  {
    v8 = 8;
    goto LABEL_23;
  }

  if (*a3 == 1651863396 && *(a3 + 2) == 25964)
  {
    v8 = 16;
    goto LABEL_23;
  }

  v7 = *a3 == 1953393013 && *(a3 + 2) == 12851;
  v8 = 8 * v7;
LABEL_24:
  if (v8 * v7 == 16)
  {
    *(this + *a2) = 0;
    *(this + *(a2 + 2)) = 0;
    *(this + *(a2 + 4)) = 0;
    *(this + *(a2 + 6)) = 0;
    *(this + *(a2 + 8)) = 0;
    *(this + *(a2 + 10)) = 0;
    *(this + *(a2 + 12)) = 0;
    *(this + *(a2 + 14)) = 0;
    *(this + *(a2 + 16)) = 0;
    *(this + *(a2 + 18)) = 0;
    *(this + *(a2 + 20)) = 0;
    *(this + *(a2 + 22)) = 0;
    *(this + *(a2 + 24)) = 0;
    *(this + *(a2 + 26)) = 0;
    *(this + *(a2 + 28)) = 0;
    *(this + *(a2 + 30)) = 0;
  }

  return this;
}

float *coder::internal::FFTImplementationCallback::doHalfLengthRadix2(uint64_t a1, char *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x2A000uLL);
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    *&v91[4 * v4] = v6;
    v7 = 128;
    do
    {
      v8 = v5;
      v7 >>= 1;
      v5 ^= v7;
    }

    while ((v7 & ~v8) == 0);
    v6 = v5 + 1;
    ++v4;
  }

  while (v4 != 127);
  v9 = 0;
  v10 = 0;
  v92 = v6;
  v11 = (a1 + 4);
  v12 = (a2 + 12);
  v13 = 1;
  result = a2;
  do
  {
    v15 = 0;
    v16 = v9 << 8;
    v17 = v11;
    do
    {
      v18 = &a2[8 * *&v91[v15] + 8 * v16];
      *(v18 - 2) = *(v17 - 1);
      v19 = *v17;
      v17 += 2;
      *(v18 - 1) = v19;
      v15 += 4;
    }

    while (v15 != 216);
    for (i = 0; i != 256; i += 16)
    {
      v21 = &result[i];
      v94 = vld4q_f32(v21);
      v95.val[2] = vsubq_f32(v94.val[0], v94.val[2]);
      v95.val[3] = vsubq_f32(v94.val[1], v94.val[3]);
      v95.val[0] = vaddq_f32(v94.val[0], v94.val[2]);
      v95.val[1] = vaddq_f32(v94.val[1], v94.val[3]);
      vst4q_f32(v21, v95);
    }

    v22 = 125;
    v23 = 4;
    v24 = 2;
    v25 = 32;
    do
    {
      if (v22 >= 1)
      {
        v27 = 8 * v23;
        v28 = 2 * v24;
        v29 = result;
        v30 = v10;
        do
        {
          v31 = &v29[v28];
          v32 = v29[2 * v24];
          v33 = v29[v28 + 1];
          v34 = *v29;
          v35 = v29[1];
          *v31 = *v29 - v32;
          v31[1] = v35 - v33;
          *v29 = v34 + v32;
          v29[1] = v35 + v33;
          v30 += v23;
          v29 = (v29 + v27);
        }

        while (v30 < v22 + v16);
        v36 = 2 * v24;
        v37 = v12;
        v38 = v25;
        v39 = v13;
        do
        {
          v40 = coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::b_fv[v38];
          v41 = coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::fv1[v38];
          v42 = v37;
          v43 = v39;
          do
          {
            v44 = &v42[v36];
            v46 = v42[v36 - 1];
            v45 = v42[2 * v24];
            v47 = -((v45 * v41) - (v46 * v40));
            v48 = (v45 * v40) + (v46 * v41);
            v49 = *(v42 - 1);
            v50 = *v42;
            v51 = *v42 - v48;
            *(v44 - 1) = v49 - v47;
            *v44 = v51;
            *(v42 - 1) = v47 + v49;
            *v42 = v50 + v48;
            v43 += v23;
            v42 = (v42 + v27);
          }

          while (v43 < v39 + v22);
          ++v39;
          v38 += v25;
          v37 += 2;
        }

        while (v38 < 0x40);
      }

      v22 -= v23;
      v24 = v23;
      v23 *= 2;
      v26 = v25 > 1;
      v25 >>= 1;
    }

    while (v26);
    v52 = 0;
    v53 = &a2[2048 * v9];
    v54 = *v53;
    v55 = v53[1];
    *v53 = v55 + *v53;
    v53[1] = 0.0;
    v53[256] = v54 - v55;
    v53[257] = 0.0;
    v56 = &byte_2247BA081;
    do
    {
      v57 = &result[v52];
      v58 = *v56++;
      v60 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v52 * 4 + 8);
      v59 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v52 * 4 + 12);
      v61 = 8 * v58 - 8;
      v62 = (&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar2 + v61);
      v63 = vld1_dup_f32(v62++);
      v64 = &a2[8 * (v16 | v58)];
      v65 = *&result[v52 + 2];
      v66 = v64[-1];
      v67 = vmul_n_f32(v66, v60);
      v68 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar1 + v52 * 4 + 8);
      v69 = vrev64_s32(vmul_lane_f32(v65, v68, 1));
      v70 = vmul_n_f32(v65, v68.f32[0]);
      v71 = *v62;
      v72.i32[0] = vsub_f32(v70, v69).u32[0];
      v72.i32[1] = vadd_f32(v70, v69).i32[1];
      v73 = vadd_f32(v72, vrev64_s32(vmul_n_f32(v66, v59)));
      v69.i32[0] = vadd_f32(v73, v67).u32[0];
      v74 = vsub_f32(v73, v67);
      v75 = vrev64_s32(vmul_n_f32(v65, v59));
      v76 = vmul_n_f32(v68, v66.f32[0]);
      v69.i32[1] = v74.i32[1];
      v77 = vrev64_s32(vmul_lane_f32(v68, v66, 1));
      v78 = vadd_f32(v76, v77);
      v79 = vsub_f32(v76, v77);
      v76.i32[0] = vsub_f32(v78, v75).u32[0];
      v76.i32[1] = vadd_f32(v79, v75).i32[1];
      v57[1] = vmul_f32(v69, 0x3F0000003F000000);
      v57[129] = vmul_f32(vmla_n_f32(v76, v65, v60), 0x3F0000003F000000);
      v80 = *(&coder::internal::FFTImplementationCallback::doHalfLengthRadix2(float const*,creal32_T *)::reconVar1 + v61);
      v81 = vrev64_s32(vmul_lane_f32(v66, v80, 1));
      v82 = vmul_n_f32(v66, v80.f32[0]);
      v78.i32[0] = vsub_f32(v82, v81).u32[0];
      v78.i32[1] = vadd_f32(v82, v81).i32[1];
      v83 = vmul_f32(v63, v65);
      v84 = vadd_f32(v78, vrev64_s32(vmul_n_f32(v65, v71)));
      v82.i32[0] = vadd_f32(v84, v83).u32[0];
      v85 = vrev64_s32(vmul_n_f32(v66, v71));
      v86 = vsub_f32(v84, v83);
      v87 = vmul_n_f32(v80, v65.f32[0]);
      v88 = vrev64_s32(vmul_lane_f32(v80, v65, 1));
      v82.i32[1] = v86.i32[1];
      v86.i32[0] = vsub_f32(vadd_f32(v87, v88), v85).u32[0];
      v86.i32[1] = vadd_f32(vsub_f32(v87, v88), v85).i32[1];
      v64[-1] = vmul_f32(v82, 0x3F0000003F000000);
      v64[127] = vmul_f32(vmla_f32(v86, v66, v63), 0x3F0000003F000000);
      v52 += 2;
    }

    while (v52 != 126);
    v89 = v53[128];
    v90 = v53[129];
    v53[129] = (v89 * 0.0) - v90;
    v53[384] = v89;
    ++v9;
    v10 += 256;
    v13 += 256;
    v53[385] = (v89 * 0.0) + v90;
    v11 += 108;
    result += 512;
    v12 += 512;
  }

  while (v9 != 84);
  return result;
}

uint64_t coder::internal::FFTImplementationCallback::r2br_r2dit_trig(uint64_t result, float32x4_t *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &a2->f32[3];
  v5 = 1;
  v6 = a2;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = v2 << 8;
    v10 = v2 << 8;
    do
    {
      a2->i64[v10] = *(result + 8 * (v7 | v9));
      v11 = 256;
      do
      {
        v12 = v8;
        v11 >>= 1;
        v8 ^= v11;
      }

      while ((v11 & ~v12) == 0);
      v10 = v8 + v9;
      ++v7;
    }

    while (v7 != 255);
    v13 = 0;
    a2->i64[v10] = *(result + (v2 << 11) + 2040);
    do
    {
      v14 = &v6[v13];
      v52 = vld4q_f32(v14);
      v53.val[2] = vsubq_f32(v52.val[0], v52.val[2]);
      v53.val[3] = vsubq_f32(v52.val[1], v52.val[3]);
      v53.val[0] = vaddq_f32(v52.val[0], v52.val[2]);
      v53.val[1] = vaddq_f32(v52.val[1], v52.val[3]);
      vst4q_f32(v14, v53);
      v13 += 16;
    }

    while (v13 != 512);
    v15 = 2;
    v16 = 253;
    v17 = 4;
    v18 = 64;
    do
    {
      v20 = v15;
      v15 = v17;
      if (v16 >= 1)
      {
        v21 = 8 * v17;
        v22 = 2 * v20;
        v23 = v6;
        v24 = v3;
        do
        {
          v25 = &v23[v22];
          v26 = v23[2 * v20];
          v27 = v23[v22 + 1];
          v28 = *v23;
          v29 = v23[1];
          *v25 = *v23 - v26;
          v25[1] = v29 - v27;
          *v23 = v28 + v26;
          v23[1] = v29 + v27;
          v24 += v15;
          v23 = (v23 + v21);
        }

        while (v24 < v16 + v9);
        v30 = 2 * v20;
        v31 = v4;
        v32 = v18;
        v33 = v5;
        do
        {
          v34 = fv[v32];
          v35 = coder::internal::FFTImplementationCallback::r2br_r2dit_trig(creal32_T const*,creal32_T*)::b_fv[v32];
          v36 = v31;
          v37 = v33;
          do
          {
            v38 = &v36[v30];
            v40 = v36[v30 - 1];
            v39 = v36[2 * v20];
            v41 = -((v39 * v35) - (v40 * v34));
            v42 = (v39 * v34) + (v40 * v35);
            v43 = *(v36 - 1);
            v44 = *v36;
            v45 = *v36 - v42;
            *(v38 - 1) = v43 - v41;
            *v38 = v45;
            *(v36 - 1) = v41 + v43;
            *v36 = v44 + v42;
            v37 += v15;
            v36 = (v36 + v21);
          }

          while (v37 < v33 + v16);
          ++v33;
          v32 += v18;
          v31 += 2;
        }

        while (v32 < 0x80);
      }

      v17 = 2 * v15;
      v16 -= v15;
      v19 = v18 > 1;
      v18 >>= 1;
    }

    while (v19);
    ++v2;
    v3 += 256;
    v5 += 256;
    v6 += 512;
    v4 += 512;
  }

  while (v2 != 256);
  v46 = a2 + 2;
  v47 = 0x10000;
  v48 = vdupq_n_s32(0x3B800000u);
  do
  {
    v49 = *v46;
    v50 = v46[1];
    v51 = vmulq_f32(v46[-1], v48);
    v46[-2] = vmulq_f32(v46[-2], v48);
    v46[-1] = v51;
    *v46 = vmulq_f32(v49, v48);
    v46[1] = vmulq_f32(v50, v48);
    v46 += 4;
    v47 -= 8;
  }

  while (v47);
  return result;
}

unint64_t spot_finder_peridot(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v969 = v5;
  v970 = v6;
  v962 = v8;
  v963 = v7;
  v973 = v9;
  v968 = v10;
  v966 = v11;
  v12 = v4;
  v1060[4536] = *MEMORY[0x277D85DE8];
  v1029 = 0;
  v1030 = 0;
  v1031 = 0;
  v1032 = 0;
  v1025 = 0;
  v1026 = 0;
  v1027 = 0;
  v1028 = 0;
  v1021[0] = 0;
  v1021[1] = 0;
  v1022 = 0;
  v1023 = 0;
  v1024 = 0;
  v1017[0] = 0;
  v1017[1] = 0;
  v1018 = 0;
  v1019 = 0;
  v1020 = 0;
  v1013[0] = 0;
  v1013[1] = 0;
  v1014 = 0;
  v1015 = 0;
  v1016 = 0;
  v1009[0] = 0;
  v1009[1] = 0;
  v1010 = 0;
  v1011 = 0;
  v1012 = 0;
  __src = 0;
  v1006 = 0;
  v1007 = 0;
  v1008 = 0;
  v1002[0] = 0;
  v1002[1] = 0;
  v1003 = 0;
  v1004 = 0;
  v999[0] = 0;
  v999[1] = 0;
  v1000 = 0;
  v1001 = 0;
  if ((isInitialized_spot_finder_peridot[0] & 1) == 0)
  {
    memcpy(&state, &uv, 0x9C4uLL);
    isInitialized_spot_finder_peridot[0] = 1;
  }

  v13 = *(v973 + 4);
  v1015 = 0x6C00000054;
  v1016 = v13;
  v981 = v13;
  coder::array_base<float,int,2>::ensureCapacity(v1013, 9072 * v13);
  v14 = *(v973 + 4);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 9072 * v14;
    v17 = *v12;
    v18 = v1013[0];
    v19 = v16 <= 1 ? 1 : v16;
    if (v16 < 8)
    {
      goto LABEL_12;
    }

    if (v1013[0] - v17 < 0x20uLL)
    {
      goto LABEL_12;
    }

    v15 = v19 & 0x7FFFFFF0;
    v20 = (v1013[0] + 16);
    v21 = v17 + 1;
    __asm { FMOV            V0.4S, #1.0 }

    v25 = v15;
    do
    {
      v26 = vminnmq_f32(*v21, _Q0);
      v20[-1] = vminnmq_f32(v21[-1], _Q0);
      *v20 = v26;
      v20 += 2;
      v21 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v15 != v19)
    {
LABEL_12:
      v27 = v19 - v15;
      v28 = v15;
      v29 = (v18 + 4 * v15);
      v30 = &v17->f32[v28];
      do
      {
        v31 = *v30++;
        *v29++ = fminf(v31, 1.0);
        --v27;
      }

      while (v27);
    }
  }

  v32 = (9072 * v1016);
  v1015 = 0x6C00000054;
  coder::array_base<float,int,2>::ensureCapacity(v1013, 9072 * v1016);
  if (v32 >= 1)
  {
    v33 = (v1013[0] + 16);
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v35 = vsubq_f32(_Q0, *v33);
      v33[-1] = vsubq_f32(_Q0, v33[-1]);
      *v33 = v35;
      v33 += 2;
      v32 -= 8;
    }

    while (v32);
  }

  v36 = v1016;
  v37 = 9072 * v1016;
  if (v1016 >= 1)
  {
    v38 = v1013[0];
    if (v37 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v37;
    }

    if (v37 < 2)
    {
      v40 = 0;
LABEL_26:
      v44 = v39 - v40;
      v45 = (v38 + 4 * v40);
      do
      {
        *v45 = logf(*v45);
        ++v45;
        --v44;
      }

      while (v44);
      goto LABEL_28;
    }

    v40 = v39 & 0x7FFFFFF0;
    v41 = v1013[0];
    v42 = v40;
    do
    {
      LODWORD(__dstc) = *v41;
      v989 = logf(COERCE_FLOAT(HIDWORD(*v41)));
      *&v43 = logf(__dstc);
      *(&v43 + 1) = v989;
      *v41++ = v43;
      v42 -= 2;
    }

    while (v42);
    if (v40 != v39)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  v1015 = 0x6C00000054;
  v1016 = v36;
  coder::array_base<float,int,2>::ensureCapacity(v1013, v37);
  v46 = v966;
  if (v36 >= 1)
  {
    v47 = v1013[0];
    if (v37 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v37;
    }

    if (v37 >= 8)
    {
      v49 = v48 & 0x7FFFFFF0;
      v50 = (v1013[0] + 16);
      v51 = v49;
      do
      {
        v52 = vnegq_f32(*v50);
        v50[-1] = vnegq_f32(v50[-1]);
        *v50 = v52;
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (v49 == v48)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v49 = 0;
    }

    v53 = v48 - v49;
    v54 = (v47 + 4 * v49);
    do
    {
      *v54 = -*v54;
      ++v54;
      --v53;
    }

    while (v53);
  }

LABEL_39:
  if (v966 < 301)
  {
    goto LABEL_277;
  }

  v55 = *(v973 + 4);
  if (v55 <= 1)
  {
LABEL_278:
    for (i = 0; i != 180; ++i)
    {
      LODWORD(__dstd) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b_fv[i];
      v992 = expf(COERCE_FLOAT(HIDWORD(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b_fv[i])));
      *&v290 = expf(__dstd);
      *(&v290 + 1) = v992;
      *&v1042[i * 8] = v290;
    }

    v291 = expf(-1972.0);
    v292 = 1.0;
    v293 = 1;
    goto LABEL_284;
  }

  v56 = (v55 >> 1) + (v55 & 1) + ((v55 >> 1) & 0x3FFFFF80);
  if (v56 < 4)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56 - 2;
  }

  memset(v1060, 0, 17);
  memset(v1033, 0, 17);
  *&v1033[24] = 0;
  v1055 = 0;
  v1056 = 0;
  v1057 = 0;
  v1058 = 0;
  v1051 = 0;
  v1052 = 0;
  v1053 = 0;
  v1054 = 0;
  v1048 = 0uLL;
  v1049 = 0;
  v1050[0] = 0;
  v58 = v1016;
  if (v57 <= v1016)
  {
    v59 = v57;
  }

  else
  {
    v59 = v1016;
  }

  v1011 = 0x6C00000054;
  v1012 = v59;
  coder::array_base<float,int,2>::ensureCapacity(v1009, 9072 * v59);
  v60 = v1009[0];
  if (9072 * v59 >= 1)
  {
    bzero(v1009[0], 4 * (9072 * v59));
  }

  v61 = 0;
  v62 = 0;
  v63 = 4 * v58;
  v64 = v59 - 2;
  if (v59 < 2)
  {
    v64 = 0;
  }

  v974 = v64;
  v972 = v64 + 1;
  v971 = v59 - ((v64 + 1) & 0xFFFFFFFC);
  v964 = 4 * v59 - 20;
  v958 = v60;
  v959 = v1013[0];
  v65 = v60;
  v979 = v1013[0];
  v960 = 4 * v58;
  v961 = v58;
  v965 = (v64 + 1) & 0xFFFFFFFC;
  while (2)
  {
    v976 = v65;
    LODWORD(v1060[3]) = v58;
    coder::array_base<float,int,2>::ensureCapacity(v1060, v58);
    if (v58 >= 1)
    {
      v66 = v1060[0];
      bzero(v1060[0], v63);
      v67 = v979;
      v68 = v58;
      do
      {
        *v66++ = *v67;
        v67 += 9072;
        --v68;
      }

      while (v68);
    }

    v69 = LODWORD(v1060[3]);
    v1058 = v59;
    coder::array_base<float,int,2>::ensureCapacity(&v1055, v59);
    *&v1033[24] = v59;
    coder::array_base<float,int,2>::ensureCapacity(v1033, v59);
    if (v59 >= 1)
    {
      v72 = v1055;
      v73 = *v1033;
      if (v59 < 8)
      {
        v74 = 0;
LABEL_62:
        v78 = v59 - v74;
        v79 = 4 * v74;
        v80 = (v73 + v79);
        v81 = (v72 + v79);
        do
        {
          *v81++ = 0;
          *v80++ = 0;
          --v78;
        }

        while (v78);
        goto LABEL_64;
      }

      v75 = v1055;
      v76 = *v1033;
      v77 = v59 & 0x7FFFFFF8;
      do
      {
        *v75 = 0uLL;
        v75[1] = 0uLL;
        v75 += 2;
        *v76 = 0uLL;
        v76[1] = 0uLL;
        v76 += 2;
        v77 -= 8;
      }

      while (v77);
      v74 = v59 & 0x7FFFFFF8;
      if (v74 != v59)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    if (!v59)
    {
      goto LABEL_200;
    }

    if (v59 < 65)
    {
      if (v59 >= 1)
      {
LABEL_70:
        v82 = 0;
        v83 = v1060[0];
        v84 = *v1033;
        v85 = *v1033 - 4;
        v86 = v1055;
        v87 = v1055 - 1;
        v88 = *v1033 - 16;
        v89 = v1055 - 4;
        v90 = 1;
        do
        {
          v91 = v82++;
          v92 = v83[v91];
          if (v91)
          {
            if (*v84 > v92)
            {
              v93 = v82;
              if (v91 <= 3)
              {
LABEL_80:
                v96 = v93 + 1;
                v97 = 4 * v93;
                v70 = v85 + v97;
                v71 = (v89 + v97);
                v98 = (v89 + v97);
                v99 = v70;
                do
                {
                  v100 = *--v98;
                  *v71 = v100;
                  v101 = *(v99 - 4);
                  v99 -= 4;
                  *v70 = v101;
                  --v96;
                  v71 = v98;
                  v70 = v99;
                }

                while (v96 > 2);
              }

              else
              {
                v94 = v91 & 0x7FFFFFFFFFFFFFFCLL;
                v95 = v91 & 0x7FFFFFFFFFFFFFFCLL;
                v70 = v87;
                v71 = v88;
                do
                {
                  *(v70 + 4) = *v70;
                  *(v71 + 1) = *v71;
                  v71 -= 4;
                  v70 -= 16;
                  v94 -= 4;
                }

                while (v94);
                if (v91 != v95)
                {
                  v93 = v82 - v95;
                  goto LABEL_80;
                }
              }

              *v84 = v92;
              *v86 = v82;
              goto LABEL_72;
            }

            if (v91 != 1 && *(v85 + 4 * v91) > v92)
            {
              v102 = 1;
              v103 = v91;
              while (1)
              {
                v70 = (v103 - v102);
                if (v70 < 2)
                {
                  break;
                }

                v70 = (v102 + (v70 >> 1));
                if (*(v85 + 4 * v70) > v92)
                {
                  v103 = v70;
                }

                else
                {
                  v102 = v70;
                }

                if (v102 >= v103)
                {
                  goto LABEL_94;
                }
              }

              v102 = v103;
LABEL_94:
              if (v91 >= v102)
              {
                v104 = v82 - v102;
                v105 = v82;
                if (v104 < 4)
                {
LABEL_100:
                  v71 = (v89 + 4 * v105);
                  v108 = (v85 + 4 * v105);
                  v109 = v108;
                  v70 = v71;
                  do
                  {
                    v110 = *--v109;
                    --v105;
                    *v108 = v110;
                    v111 = *(v70 - 4);
                    v70 -= 4;
                    *v71 = v111;
                    v108 = v109;
                    v71 = v70;
                  }

                  while (v105 > v102);
                }

                else
                {
                  v106 = v104 & 0xFFFFFFFFFFFFFFFCLL;
                  v70 = (v90 - v102) & 0xFFFFFFFFFFFFFFFCLL;
                  v71 = v88;
                  v107 = v87;
                  do
                  {
                    *(v71 + 1) = *v71;
                    *(v107 + 4) = *v107;
                    --v107;
                    v71 -= 4;
                    v70 -= 4;
                  }

                  while (v70);
                  if (v104 != v106)
                  {
                    v105 = v82 - v106;
                    goto LABEL_100;
                  }
                }
              }

              v112 = 4 * v102 - 4;
              *(v84 + v112) = v92;
              *(v86 + v112) = v82;
              goto LABEL_72;
            }

            v84[v91] = v92;
            v86[v91] = v82;
          }

          else
          {
            *v86 = 1;
            *v84 = v92;
          }

LABEL_72:
          ++v90;
          v87 = (v87 + 4);
          v88 += 4;
        }

        while (v82 != v59);
      }

      if (v59 >= v69)
      {
        goto LABEL_200;
      }

      v113 = v1060[0];
      v114 = *v1033;
      v115 = *v1033 + 4 * v59;
      v116 = *v1033 - 4;
      v117 = v1055;
      v118 = (v1055 + v964);
      v119 = (*v1033 + v964);
      v120 = v1055 - 4;
      v121 = v59;
      v122 = v976;
      while (1)
      {
        v124 = v113[v121++];
        if (*v114 > v124)
        {
          if (v59 >= 2)
          {
            v70 = v59;
            v125 = v118;
            v126 = v119;
            v127 = v965;
            v71 = v974;
            if (v974 < 3)
            {
              goto LABEL_113;
            }

            do
            {
              *(v125 + 4) = *v125;
              *(v126 + 4) = *v126;
              --v126;
              --v125;
              v127 -= 4;
            }

            while (v127);
            v70 = v971;
            if (v972 != v965)
            {
LABEL_113:
              v128 = v70 + 1;
              v129 = 4 * v70;
              v70 = v116 + 4 * v70;
              v71 = (v120 + v129);
              v130 = (v120 + v129);
              v131 = v70;
              do
              {
                v132 = *--v130;
                *v71 = v132;
                v133 = *(v131 - 4);
                v131 -= 4;
                *v70 = v133;
                --v128;
                v71 = v130;
                v70 = v131;
              }

              while (v128 > 2);
            }
          }

          *v114 = v124;
          v123 = v117;
          goto LABEL_106;
        }

        if (v59 < 2 || *(v115 - 4) <= v124)
        {
          goto LABEL_107;
        }

        v134 = 1;
        v135 = v59;
        do
        {
          if ((v135 - v134) < 2)
          {
            v134 = v135;
            if (v59 <= v135)
            {
              goto LABEL_134;
            }

            goto LABEL_127;
          }

          if (*(v116 + 4 * (v134 + ((v135 - v134) >> 1))) > v124)
          {
            v135 = v134 + ((v135 - v134) >> 1);
          }

          else
          {
            v134 += (v135 - v134) >> 1;
          }
        }

        while (v134 < v135);
        if (v59 <= v134)
        {
          goto LABEL_134;
        }

LABEL_127:
        v70 = v59 - v134;
        v136 = v59;
        if (v70 >= 4)
        {
          v137 = v70 & 0xFFFFFFFFFFFFFFFCLL;
          v71 = v119;
          v138 = v118;
          v139 = v70 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            *(v71 + 1) = *v71;
            *(v138 + 4) = *v138;
            --v138;
            v71 -= 4;
            v139 -= 4;
          }

          while (v139);
          if (v70 == v137)
          {
            goto LABEL_134;
          }

          v136 = v59 - v137;
        }

        v140 = (v120 + 4 * v136);
        v141 = (v116 + 4 * v136);
        v70 = v141;
        v71 = v140;
        do
        {
          v142 = *(v70 - 4);
          v70 -= 4;
          --v136;
          *v141 = v142;
          v143 = *--v71;
          *v140 = v143;
          v141 = v70;
          v140 = v71;
        }

        while (v136 > v134);
LABEL_134:
        v144 = 4 * v134 - 4;
        *(v114 + v144) = v124;
        v123 = (v117 + v144);
LABEL_106:
        *v123 = v121;
LABEL_107:
        if (v121 == v69)
        {
          goto LABEL_201;
        }
      }
    }

    if (v59 <= v69 >> 6)
    {
      goto LABEL_70;
    }

    v1054 = v69;
    coder::array_base<float,int,2>::ensureCapacity(&v1051, v69);
    v967 = v62;
    if (v69 < 1)
    {
      if (!v69)
      {
        goto LABEL_198;
      }
    }

    else
    {
      bzero(v1051, 4 * v69);
    }

    v1050[0] = v69;
    coder::array_base<float,int,2>::ensureCapacity(&v1048, v69);
    v145.i64[0] = 0x100000001;
    v145.i64[1] = 0x100000001;
    v146.i64[0] = 0x800000008;
    v146.i64[1] = 0x800000008;
    if (v69 < 2)
    {
      goto LABEL_148;
    }

    v147 = v1060[0];
    v148 = v1051;
    if (v69 - 2 < 6)
    {
      v149 = 1;
      goto LABEL_144;
    }

    v150 = ((v69 - 2) >> 1) + 1;
    v151 = v1060[0];
    v152 = v1051;
    v153 = v150 & 0x7FFFFFFFFFFFFFFCLL;
    v154 = xmmword_2247A5170;
    do
    {
      v1061 = vld2q_f32(v151);
      v151 += 8;
      v1061.val[0] = vbicq_s8(vceqq_f32(v1061.val[1], v1061.val[1]), vcgeq_f32(v1061.val[1], v1061.val[0]));
      v1062.val[0] = vsubq_s32(v154, v1061.val[0]);
      v1062.val[1] = vaddq_s32(v154, vandq_s8(vmovl_u16(vmvn_s8(vmovn_s32(v1061.val[0]))), v145));
      vst2q_f32(v152, v1062);
      v152 += 8;
      v154 = vaddq_s32(v154, v146);
      v153 -= 4;
    }

    while (v153);
    if (v150 != (v150 & 0x7FFFFFFFFFFFFFFCLL))
    {
      v149 = (2 * (v150 & 0x7FFFFFFFFFFFFFFCLL)) | 1;
LABEL_144:
      v155 = &v148[4 * v149];
      v156 = &v147[4 * v149];
      do
      {
        v157 = *(v156 - 1) > *v156;
        v158 = v157;
        if (*(v156 - 1) > *v156)
        {
          v157 = 1;
        }

        *(v155 - 1) = v157 + v149;
        *v155 = v149 + !v158;
        v149 += 2;
        v155 += 8;
        v156 += 2;
      }

      while (v149 < v69);
    }

LABEL_148:
    if (v69)
    {
      *&v1051[4 * v69 - 4] = v69;
    }

    if (v69 < 3)
    {
      goto LABEL_198;
    }

    v159 = v1051;
    v160 = v1060[0] - 4;
    v161 = v1051 - 4;
    v162 = v1048;
    v990 = &v1051[-v1048 - 4];
    v163 = v1048 - v1051 + 4;
    v164 = v1048 - v1051 + 8;
    v165 = v1048 + 20;
    v166 = v1051 + 12;
    v167 = v1048 + 4;
    __dst = (v1048 + 16);
    v168 = 2;
    while (2)
    {
      v169 = 2 * v168;
      if (v168 >= v69)
      {
        goto LABEL_152;
      }

      v170 = v168 | 1;
      v171 = 1;
      while (2)
      {
        if (v171 + v169 >= v69 + 1)
        {
          v172 = v69 + 1;
        }

        else
        {
          v172 = v171 + v169;
        }

        v173 = (v172 - v171);
        if (v173 < 1)
        {
          goto LABEL_155;
        }

        v174 = 0;
        v175 = (v170 - 1);
        v176 = v172 - 2;
        LODWORD(v177) = v171;
        do
        {
          v179 = *&v159[4 * v175];
          v180 = *&v161[4 * v177];
          v181 = v174;
          if (*&v160[4 * v180] <= *&v160[4 * v179])
          {
            *(v162 + 4 * v174) = v180;
            LODWORD(v177) = v177 + 1;
            v182 = v175 + 1;
            if (v175 + 1 >= v172 || v177 != v170)
            {
              goto LABEL_162;
            }

            v183 = (v176 - v175);
            if (v183 >= 7 && v176 >= v175)
            {
              v184 = 4 * v174;
              if ((v163 + v184 - 4 * v175) >= 0x20)
              {
                v185 = v183 + 1;
                v186 = (v183 + 1) & 0x1FFFFFFF8;
                v181 += v186;
                v187 = (v165 + v184);
                v188 = v175;
                v189 = v186;
                do
                {
                  v190 = &v159[4 * v188];
                  v191 = *(v190 + 1);
                  *(v187 - 1) = *v190;
                  *v187 = v191;
                  v187 += 2;
                  v188 += 8;
                  v189 -= 8;
                }

                while (v189);
                v175 = (v175 + v186);
                if (v185 == v186)
                {
LABEL_161:
                  v174 = v181;
                  LODWORD(v177) = v170;
LABEL_162:
                  v178 = v175;
                  goto LABEL_163;
                }

                v182 += v186;
              }
            }

            do
            {
              *(v167 + 4 * v181++) = *&v159[4 * v175];
              LODWORD(v175) = v182++;
            }

            while (v172 != v182);
            v175 = (v182 - 1);
            goto LABEL_161;
          }

          *(v162 + 4 * v174) = v179;
          v178 = (v175 + 1);
          if (v175 + 2 == v172 && v177 < v170)
          {
            v177 = v177;
            v192 = v170 - v177;
            if (v192 >= 8)
            {
              v193 = 4 * v181;
              if ((v164 + 4 * v181 - 4 * v177) >= 0x20)
              {
                v194 = v192 & 0xFFFFFFFFFFFFFFF8;
                v181 += v192 & 0xFFFFFFFFFFFFFFF8;
                v195 = (v165 + v193);
                v196 = &v166[4 * v177];
                v197 = v192 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v198 = *v196;
                  *(v195 - 1) = *(v196 - 1);
                  *v195 = v198;
                  v195 += 2;
                  v196 += 32;
                  v197 -= 8;
                }

                while (v197);
                if (v192 == v194)
                {
                  goto LABEL_186;
                }

                v177 = v194 + v177;
              }
            }

            v199 = v170 - v177;
            v200 = &v161[4 * v177];
            v201 = v181;
            do
            {
              LODWORD(v181) = v201 + 1;
              v202 = *v200;
              v200 += 4;
              *(v167 + 4 * v201++) = v202;
              --v199;
            }

            while (v199);
LABEL_186:
            v174 = v181;
            LODWORD(v177) = v170;
          }

LABEL_163:
          ++v174;
          v175 = v178;
        }

        while (v174 < v173);
        v203 = v171;
        if (v173 <= 7 || &v990[4 * v171] < 0x20)
        {
          v204 = 0;
          goto LABEL_190;
        }

        v204 = v173 & 0x7FFFFFF8;
        v210 = &v166[4 * v203];
        v211 = __dst;
        v212 = v204;
        do
        {
          v213 = *v211;
          *(v210 - 1) = *(v211 - 1);
          *v210 = v213;
          v210 += 32;
          v211 += 2;
          v212 -= 8;
        }

        while (v212);
        if (v204 != v173)
        {
LABEL_190:
          v205 = v204 - v173;
          v206 = 4 * v204;
          v207 = &v161[4 * v203 + v206];
          v208 = (v162 + v206);
          do
          {
            v209 = *v208++;
            *v207 = v209;
            v207 += 4;
            _CF = __CFADD__(v205++, 1);
          }

          while (!_CF);
        }

LABEL_155:
        v170 = v172 + v168;
        v171 = v172;
        if (v172 + v168 <= v69)
        {
          continue;
        }

        break;
      }

LABEL_152:
      v168 *= 2;
      if (v169 < v69)
      {
        continue;
      }

      break;
    }

LABEL_198:
    *&v1033[24] = v59;
    coder::array_base<float,int,2>::ensureCapacity(v1033, v59);
    v63 = v960;
    v58 = v961;
    v62 = v967;
    v214 = 0;
    v61 = v1051;
    v215 = v1060[0] - 4;
    v216 = *v1033;
    do
    {
      *(v216 + 4 * v214) = *&v215[4 * *&v61[4 * v214]];
      ++v214;
    }

    while (v59 != v214);
LABEL_200:
    v122 = v976;
LABEL_201:
    v217 = *&v1033[24];
    if (*&v1033[24] >= 1)
    {
      v218 = *v1033;
      v219 = v122;
      do
      {
        v220 = *v218++;
        *v219 = v220;
        v219 += 9072;
        --v217;
      }

      while (v217);
    }

    ++v62;
    ++v979;
    v65 = v122 + 4;
    if (v62 != 9072)
    {
      continue;
    }

    break;
  }

  if (v1049 == 1 && v1048)
  {
    MEMORY[0x22AA53170](v1048, 0x1000C8052888210, v70, v71);
  }

  if (v1053 == 1 && v61)
  {
    MEMORY[0x22AA53170](v61, 0x1000C8052888210, v70, v71);
  }

  if (v1057 == 1 && v1055)
  {
    MEMORY[0x22AA53170](v1055, 0x1000C8052888210, v70, v71);
  }

  if (v1033[16] == 1 && *v1033)
  {
    MEMORY[0x22AA53170](*v1033, 0x1000C8052888210, v70, v71);
  }

  if (LOBYTE(v1060[2]) == 1 && v1060[0])
  {
    MEMORY[0x22AA53170](v1060[0], 0x1000C8052888210, v70, v71);
  }

  v221 = v1012;
  v980 = v1012;
  if (v1012)
  {
    if (v1012 >= 1025)
    {
      v222 = v1012 >> 10;
      v223 = v1012 & 0x3FF;
      v221 = 1024;
      if ((v1012 & 0x3FF) == 0)
      {
        v223 = 1024;
      }

      __dsta = v223;
      if ((v1012 & 0x3FF) != 0)
      {
        ++v222;
      }
    }

    else
    {
      __dsta = 0;
      v222 = 1;
    }

    v991 = v222;
    if ((spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b - v958) >= 0x20)
    {
      v228 = (v958 + 16);
      v229 = &unk_27D0FB850;
      v230 = 9072;
      do
      {
        v231 = *v228;
        *(v229 - 1) = *(v228 - 1);
        *v229 = v231;
        v229 += 2;
        v228 += 2;
        v230 -= 8;
      }

      while (v230);
    }

    else
    {
      v224 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
      v225 = 9072;
      v226 = v958;
      do
      {
        v227 = *v226++;
        *v224 = v227;
        v224 = (v224 + 4);
        --v225;
      }

      while (v225);
    }

    if (v221 >= 2)
    {
      v506 = (v221 + 1);
      v507 = 2;
      do
      {
        v508 = (0x237000000000 * v507 - 0x237000000000) >> 30;
        v509 = &v958[v508];
        if (&v958[v508 + 36288] <= spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b || v509 >= isInitialized_spot_finder_peridot)
        {
          v511 = &v958[v508 + 16];
          v512 = &unk_27D0FB850;
          v513 = 9072;
          do
          {
            v514 = vaddq_f32(*v512, *v511);
            v512[-1] = vaddq_f32(v512[-1], v511[-1]);
            *v512 = v514;
            v512 += 2;
            v511 += 2;
            v513 -= 8;
          }

          while (v513);
        }

        else
        {
          v515 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
          v516 = 9072;
          do
          {
            v517 = *v509++;
            *v515 = *v515 + v517;
            ++v515;
            --v516;
          }

          while (v516);
        }

        ++v507;
      }

      while (v507 != v506);
    }

    if (v991 >= 2)
    {
      v232 = 0;
      v233 = 2;
      v234 = 9298800;
      do
      {
        memcpy(v1060, &v958[(0x8DC00000000000 * v232 + 0x8DC00000000000) >> 30], 0x8DC0uLL);
        v235 = __dsta;
        if (v233 != v991)
        {
          v235 = 1024;
        }

        if (v235 > 1)
        {
          v236 = (v235 + 1);
          v237 = v234;
          v238 = 2;
          do
          {
            v239 = &v958[4 * v237 + 16];
            v240 = &v1060[2];
            v241 = 9072;
            do
            {
              v242 = vaddq_f32(*v240, *v239);
              v240[-1] = vaddq_f32(v240[-1], v239[-1]);
              *v240 = v242;
              v240 += 2;
              v239 += 2;
              v241 -= 8;
            }

            while (v241);
            ++v238;
            v237 += 9072;
          }

          while (v238 != v236);
        }

        v243 = 0xFFFFFFFFFFFF7240;
        do
        {
          v244 = &spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v243 / 0x10];
          v245 = vaddq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v243 / 0x10 + 2269], *&v1060[v243 / 8 + 4538]);
          v244[2268] = vaddq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v243 / 0x10 + 2268], *&v1060[v243 / 8 + 4536]);
          v244[2269] = v245;
          v243 += 32;
        }

        while (v243);
        ++v233;
        ++v232;
        v234 += 9289728;
      }

      while (v232 != v991 - 1);
    }
  }

  else
  {
    bzero(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, 0x8DC0uLL);
  }

  v246 = 1.0 / v980;
  v247 = &unk_27D0FB850;
  v248 = 9072;
  do
  {
    v249 = vmulq_n_f32(*v247, v246);
    v247[-1] = vmulq_n_f32(v247[-1], v246);
    *v247 = v249;
    v247 += 2;
    v248 -= 8;
  }

  while (v248);
  v1011 = 0x6C00000054;
  v1012 = v961;
  coder::array_base<float,int,2>::ensureCapacity(v1009, 9072 * v961);
  if (v961 > 0)
  {
    v250 = 0;
    v251 = v1009[0];
    v252 = v1009[0] - spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
    v253 = v1009[0];
    do
    {
      v254 = (9072 * v250);
      if (v961 == 1)
      {
        v254 = 0;
      }

      v255 = v959 + 4 * v254;
      _CF = (v252 + 36288 * v250) >= 0x20 && v251 + 36288 * v250 - v255 >= 0x20;
      if (_CF)
      {
        v261 = 0;
        v262 = 108;
        do
        {
          v263 = vsubq_f32(*(v255 + v261 * 16 + 16), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 1]);
          v264 = &v253[v261 * 16];
          *v264 = vsubq_f32(*(v255 + v261 * 16), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261]);
          v264[1] = v263;
          v265 = vsubq_f32(*(v255 + v261 * 16 + 48), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 3]);
          v264[2] = vsubq_f32(*(v255 + v261 * 16 + 32), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 2]);
          v264[3] = v265;
          v266 = vsubq_f32(*(v255 + v261 * 16 + 80), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 5]);
          v264[4] = vsubq_f32(*(v255 + v261 * 16 + 64), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 4]);
          v264[5] = v266;
          v267 = vsubq_f32(*(v255 + v261 * 16 + 112), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 7]);
          v264[6] = vsubq_f32(*(v255 + v261 * 16 + 96), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 6]);
          v264[7] = v267;
          v268 = vsubq_f32(*(v255 + v261 * 16 + 144), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 9]);
          v264[8] = vsubq_f32(*(v255 + v261 * 16 + 128), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 8]);
          v264[9] = v268;
          v269 = vsubq_f32(*(v255 + v261 * 16 + 176), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 11]);
          v264[10] = vsubq_f32(*(v255 + v261 * 16 + 160), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 10]);
          v264[11] = v269;
          v270 = vsubq_f32(*(v255 + v261 * 16 + 208), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 13]);
          v264[12] = vsubq_f32(*(v255 + v261 * 16 + 192), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 12]);
          v264[13] = v270;
          v271 = vsubq_f32(*(v255 + v261 * 16 + 240), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 15]);
          v264[14] = vsubq_f32(*(v255 + v261 * 16 + 224), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 14]);
          v264[15] = v271;
          v272 = vsubq_f32(*(v255 + v261 * 16 + 272), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 17]);
          v264[16] = vsubq_f32(*(v255 + v261 * 16 + 256), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 16]);
          v264[17] = v272;
          v273 = vsubq_f32(*(v255 + v261 * 16 + 304), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 19]);
          v264[18] = vsubq_f32(*(v255 + v261 * 16 + 288), spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 18]);
          v264[19] = v273;
          v264[20].f32[0] = *(v255 + v261 * 16 + 320) - *&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 20];
          v264[20].f32[1] = *(v255 + v261 * 16 + 324) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 20] + 1);
          v264[20].f32[2] = *(v255 + v261 * 16 + 328) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 20] + 2);
          v264[20].f32[3] = *(v255 + v261 * 16 + 332) - *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v261 + 20] + 3);
          v261 += 21;
          --v262;
        }

        while (v262);
      }

      else
      {
        v257 = 0;
        v258 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b;
        v259 = v253;
        do
        {
          for (j = 0; j != 336; j += 4)
          {
            *&v259[j] = *(v255 + j) - *(v258 + j);
          }

          ++v257;
          v259 += 336;
          v258 += 21;
          v255 += 336;
        }

        while (v257 != 108);
      }

      ++v250;
      v253 += 36288;
    }

    while (v250 != v961);
  }

  v274 = v1012;
  v1015 = 0x6C00000054;
  v1016 = v1012;
  v275 = 9072 * v1012;
  coder::array_base<float,int,2>::ensureCapacity(v1013, 9072 * v1012);
  v46 = v966;
  if (v274 >= 1)
  {
    v276 = 0;
    v277 = v1009[0];
    v278 = v1013[0];
    v279 = v275 <= 1 ? 1 : v275;
    if (v275 < 8)
    {
      goto LABEL_275;
    }

    if (v1013[0] - v1009[0] < 0x20)
    {
      goto LABEL_275;
    }

    v276 = v279 & 0x7FFFFFF0;
    v280 = (v1013[0] + 16);
    v281 = (v1009[0] + 16);
    v282 = v276;
    do
    {
      v283 = vmaxnmq_f32(*v281, 0);
      v280[-1] = vmaxnmq_f32(v281[-1], 0);
      *v280 = v283;
      v280 += 2;
      v281 += 2;
      v282 -= 8;
    }

    while (v282);
    if (v276 != v279)
    {
LABEL_275:
      v284 = v279 - v276;
      v285 = 4 * v276;
      v286 = (v278 + v285);
      v287 = &v277[v285];
      do
      {
        v288 = *v287++;
        *v286++ = fmaxf(v288, 0.0);
        --v284;
      }

      while (v284);
    }
  }

LABEL_277:
  if (v46 > 199)
  {
    goto LABEL_278;
  }

  for (k = 0; k != 180; ++k)
  {
    LODWORD(__dste) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv1[k];
    v993 = expf(COERCE_FLOAT(HIDWORD(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv1[k])));
    *&v295 = expf(__dste);
    *(&v295 + 1) = v993;
    *&v1042[k * 8] = v295;
  }

  v291 = expf(-950.98);
  v293 = 0;
  v292 = 2.0;
LABEL_284:
  v1043 = v291;
  v296 = *(v973 + 4);
  LODWORD(v1032) = 1;
  HIDWORD(v1032) = v296;
  if (SHIDWORD(v1030) < v296)
  {
    if (SHIDWORD(v1030) <= 16)
    {
      v297 = 16;
    }

    else
    {
      v297 = HIDWORD(v1030);
    }

    if (v296 >= 17)
    {
      do
      {
        if (v297 <= 0x3FFFFFFF)
        {
          v297 *= 2;
        }

        else
        {
          v297 = 0x7FFFFFFF;
        }
      }

      while (v297 < v296);
    }

    coder::detail::data_ptr<cell_wrap_0,int>::reserve(&v1029, v297);
  }

  coder::detail::data_ptr<cell_wrap_0,int>::reserve(&v1029, v296);
  LODWORD(v1030) = v296;
  v298 = *(v973 + 4);
  LODWORD(v1028) = 1;
  HIDWORD(v1028) = v298;
  if (SHIDWORD(v1026) < v298)
  {
    if (SHIDWORD(v1026) <= 16)
    {
      v299 = 16;
    }

    else
    {
      v299 = HIDWORD(v1026);
    }

    if (v298 >= 17)
    {
      do
      {
        if (v299 <= 0x3FFFFFFF)
        {
          v299 *= 2;
        }

        else
        {
          v299 = 0x7FFFFFFF;
        }
      }

      while (v299 < v298);
    }

    coder::detail::data_ptr<cell_wrap_1,int>::reserve(&v1025, v299);
  }

  coder::detail::data_ptr<cell_wrap_1,int>::reserve(&v1025, v298);
  v994 = v293;
  LODWORD(v1026) = v298;
  if (v981 >= 1)
  {
    v301 = v1013[0];
    v302 = v1029;
    v303 = 1;
    do
    {
      v304 = v303 - 1;
      memmove(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, (v301 + 36288 * v304), 0x8DC0uLL);
      findSpotsPeaksDan(v1042, v1002, v302 + 32 * v304, v292);
      v305 = v1025;
      v306 = v1025 + 32 * v1028 * v304;
      v307 = v1004;
      *(v306 + 24) = v1004;
      *(v306 + 28) = 2;
      v308 = 2 * v307;
      coder::array_base<float,int,2>::ensureCapacity(v306, 2 * v307);
      v300.i64[0] = 0xBF000000BF000000;
      v300.i64[1] = 0xBF000000BF000000;
      if (v307 >= 1)
      {
        v309 = 0;
        v310 = v1002[0];
        v311 = *(v305 + 32 * v304);
        v312 = v308 <= 1 ? 1 : v308;
        if (v308 < 8)
        {
          goto LABEL_316;
        }

        if (v311 - v1002[0] < 0x20)
        {
          goto LABEL_316;
        }

        v309 = v312 & 0x7FFFFFF8;
        v313 = v311 + 1;
        v314 = (v1002[0] + 16);
        v315 = v309;
        do
        {
          v316 = vaddq_f32(*v314, v300);
          v313[-1] = vaddq_f32(v314[-1], v300);
          *v313 = v316;
          v313 += 2;
          v314 += 2;
          v315 -= 8;
        }

        while (v315);
        if (v309 != v312)
        {
LABEL_316:
          v317 = v312 - v309;
          v318 = 4 * v309;
          v319 = &v311->f32[v309];
          v320 = (v310 + v318);
          do
          {
            v321 = *v320++;
            *v319++ = v321 + -0.5;
            --v317;
          }

          while (v317);
        }
      }

      _ZF = v303++ == v981;
    }

    while (!_ZF);
  }

  v322 = 0;
  v1044 = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv2;
  v1045 = unk_2247BB290;
  v1046 = xmmword_2247BB2A0;
  v323.i32[1] = unk_2247BB4C4;
  *(v1047 + 8) = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv3;
  v324 = 1568;
  *&v1047[0] = 0x42922508420B62C1;
  *(&v1047[1] + 8) = unk_2247BB4C0;
  v325 = 0x421450EF421455ACLL;
  *(&v1047[2] + 8) = xmmword_2247BB4D0;
  *(&v1047[3] + 1) = 0x424CB5AE424CA9E1;
  do
  {
    v325.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv[v322];
    v326 = vmovl_s16(*&vmovl_s8(v325)).u64[0];
    *v326.i32 = v326.i32[0];
    v327 = &v1044 + 4 * v322;
    *(v327 + 28) = v326.i32[0];
    v326.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv1[v322];
    v328 = vmovl_s16(*&vmovl_s8(v326)).u64[0];
    *v328.i32 = v328.i32[0];
    *(v327 + 42) = v328.i32[0];
    v328.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv2[v322];
    v329 = vmovl_s16(*&vmovl_s8(v328)).u64[0];
    *v329.i32 = v329.i32[0];
    *(v327 + 56) = v329.i32[0];
    v300.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv5 + v322);
    *(v327 + 70) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv4 + v322);
    *(v327 + 84) = v300.i32[0];
    v323.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv6 + v322);
    v300.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv7 + v322);
    *(v327 + 98) = v323.i32[0];
    *(v327 + 112) = v300.i32[0];
    v323.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv3[v322];
    v330 = vmovl_s16(*&vmovl_s8(v323)).u64[0];
    *v330.i32 = v330.i32[0];
    *(v327 + 126) = v330.i32[0];
    v330.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv4[v322];
    v331 = vmovl_s16(*&vmovl_s8(v330)).u64[0];
    *v331.i32 = v331.i32[0];
    *(v327 + 140) = v331.i32[0];
    v331.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv5[v322];
    v323 = vmovl_s16(*&vmovl_s8(v331)).u64[0];
    *v323.i32 = v323.i32[0];
    *(v327 + 154) = v323.i32[0];
    v332 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv9 + v322);
    *(v327 + 168) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv8 + v322);
    *(v327 + 182) = v332;
    v300.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv10 + v322);
    v333 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv11 + v322);
    *(v327 + 196) = v300.i32[0];
    *(v327 + 210) = v333;
    v300.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv6[v322];
    v334 = vmovl_s16(*&vmovl_s8(*v300.f32)).u64[0];
    *v334.i32 = v334.i32[0];
    *(v327 + 224) = v334.i32[0];
    v334.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv7[v322];
    v335 = vmovl_s16(*&vmovl_s8(v334)).u64[0];
    *(v327 + 238) = v335.i32[0];
    *(v327 + 252) = v329.i32[0];
    *(v327 + 266) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv12 + v322);
    *(v327 + 280) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv13 + v322);
    *(v327 + 294) = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv14 + v322);
    v335.i32[0] = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv15 + v322);
    *(v327 + 308) = v335.i32[0];
    v335.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv8[v322];
    v336 = vmovl_s16(*&vmovl_s8(v335)).u64[0];
    *v336.i32 = v336.i32[0];
    *(v327 + 322) = v336.i32[0];
    v336.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv9[v322];
    v337 = vmovl_s16(*&vmovl_s8(v336)).u64[0];
    *v337.i32 = v337.i32[0];
    v338 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv16 + v322);
    v339 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv17 + v322);
    v340 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv18 + v322);
    v341 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv19 + v322);
    v342 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv20 + v322);
    v343 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv21 + v322);
    v344 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv22 + v322);
    v345 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv23 + v322);
    v346 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv25 + v322);
    v347 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv26 + v322);
    v348 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv27 + v322);
    v349 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv28 + v322);
    v350 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv29 + v322);
    v351 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv30 + v322);
    v352 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv31 + v322);
    v353 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv32 + v322);
    v354 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv33 + v322);
    v355 = *(&spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::fv34 + v322);
    v356 = &v1044 + v324;
    *(v356 - 56) = v337.i32[0];
    *(v356 - 28) = v338;
    *(v356 - 14) = v339;
    *v356 = v340;
    *(v356 + 14) = v341;
    v337.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv10[v322];
    v357 = vmovl_s16(*&vmovl_s8(v337)).u64[0];
    *v357.i32 = v357.i32[0];
    *(v356 + 28) = v357.i32[0];
    v357.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv11[v322];
    v358 = vmovl_s16(*&vmovl_s8(v357)).u64[0];
    *v358.i32 = v358.i32[0];
    *(v356 + 42) = v358.i32[0];
    *(v356 + 70) = v342;
    *(v356 + 84) = v343;
    *(v356 + 98) = v344;
    *(v356 + 112) = v345;
    v358.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv12[v322];
    v359 = vmovl_s16(*&vmovl_s8(v358)).u64[0];
    *v359.i32 = v359.i32[0];
    *(v356 + 126) = v359.i32[0];
    v359.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv13[v322];
    v360 = vmovl_s16(*&vmovl_s8(v359)).u64[0];
    *v360.i32 = v360.i32[0];
    *(v356 + 140) = v360.i32[0];
    *(v356 + 168) = v346;
    *(v356 + 182) = v347;
    *(v356 + 196) = v348;
    *(v356 + 210) = v349;
    v360.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv14[v322];
    v361 = vmovl_s16(*&vmovl_s8(v360)).u64[0];
    *v361.i32 = v361.i32[0];
    *(v356 + 224) = v361.i32[0];
    v361.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv15[v322];
    v300.i64[0] = vmovl_s16(*&vmovl_s8(v361)).u64[0];
    *(v356 + 238) = v300.i32[0];
    *(v356 + 56) = v329.i32[0];
    *(v356 + 252) = v329.i32[0];
    *(v356 + 266) = v350;
    *(v356 + 280) = v351;
    *(v356 + 294) = v352;
    *(v356 + 308) = v353;
    v329.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv16[v322];
    v362 = vmovl_s16(*&vmovl_s8(v329)).u64[0];
    *v362.i32 = v362.i32[0];
    *(v356 + 322) = v362.i32[0];
    v362.i8[0] = spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::iv17[v322];
    v325 = vmovl_s16(*&vmovl_s8(v362)).u64[0];
    *v325.i32 = v325.i32[0];
    *(v356 + 336) = v325.i32[0];
    *(v356 - 42) = v323.i32[0];
    *(v356 + 154) = v323.i32[0];
    *(v356 + 350) = v323.i32[0];
    *(v356 + 364) = v354;
    *(v356 + 378) = v355;
    ++v322;
    v324 += 4;
  }

  while (v322 != 14);
  if ((v994 & 1) == 0)
  {
    v1044 = *(&v1047[14] + 8);
    v1045 = *(&v1047[15] + 8);
    v1047[1] = *(&v1047[18] + 8);
    v1047[2] = *(&v1047[19] + 8);
    v1046 = *(&v1047[16] + 8);
    v1047[0] = *(&v1047[17] + 8);
    v1047[3] = *(&v1047[20] + 8);
    *(&v1047[21] + 8) = v1047[39];
    *(&v1047[22] + 8) = v1047[40];
    *(&v1047[25] + 8) = v1047[43];
    *(&v1047[26] + 8) = v1047[44];
    *(&v1047[23] + 8) = v1047[41];
    *(&v1047[24] + 8) = v1047[42];
    *(&v1047[27] + 8) = v1047[45];
    v1047[46] = *(&v1047[63] + 8);
    v1047[47] = *(&v1047[64] + 8);
    v1047[50] = *(&v1047[67] + 8);
    v1047[51] = *(&v1047[68] + 8);
    v1047[48] = *(&v1047[65] + 8);
    v1047[49] = *(&v1047[66] + 8);
    v1047[52] = *(&v1047[69] + 8);
    *(&v1047[70] + 8) = v1047[88];
    *(&v1047[71] + 8) = v1047[89];
    *(&v1047[74] + 8) = v1047[92];
    *(&v1047[75] + 8) = v1047[93];
    *(&v1047[72] + 8) = v1047[90];
    *(&v1047[73] + 8) = v1047[91];
    *(&v1047[76] + 8) = v1047[94];
    v1047[95] = *(&v1047[112] + 8);
    v1047[99] = *(&v1047[116] + 8);
    v1047[96] = *(&v1047[113] + 8);
    v1047[100] = *(&v1047[117] + 8);
    v1047[97] = *(&v1047[114] + 8);
    v1047[98] = *(&v1047[115] + 8);
    v1047[101] = *(&v1047[118] + 8);
    *(&v1047[119] + 8) = v1047[137];
    *(&v1047[123] + 8) = v1047[141];
    *(&v1047[120] + 8) = v1047[138];
    *(&v1047[124] + 8) = v1047[142];
    *(&v1047[121] + 8) = v1047[139];
    *(&v1047[122] + 8) = v1047[140];
    *(&v1047[125] + 8) = v1047[143];
    v1047[144] = *(&v1047[161] + 8);
    v1047[148] = *(&v1047[165] + 8);
    v1047[145] = *(&v1047[162] + 8);
    v1047[149] = *(&v1047[166] + 8);
    v1047[146] = *(&v1047[163] + 8);
    v1047[147] = *(&v1047[164] + 8);
    v1047[150] = *(&v1047[167] + 8);
    *(&v1047[168] + 8) = v1047[186];
    *(&v1047[172] + 8) = v1047[190];
    *(&v1047[169] + 8) = v1047[187];
    *(&v1047[173] + 8) = v1047[191];
    *(&v1047[170] + 8) = v1047[188];
    *(&v1047[171] + 8) = v1047[189];
    *(&v1047[174] + 8) = v1047[192];
  }

  (runHomography)(&v1025, &v1044, &v1029, v968, v973, v969, v963, v1037, &v1039, v999, v962, &v1034, v970 + 72);
  v364 = 0;
  v365 = 0;
  v366 = &v1051 + 1;
  do
  {
    v367 = *&v1037[4 * v364];
    if (v367 == 0.0)
    {
      v368 = v365;
    }

    else
    {
      v368 = 1;
    }

    v365 = v368;
    if (v367 < 0.0)
    {
      break;
    }

    if (v367 > 0.0)
    {
      break;
    }

    v364 += v367 == 0.0;
  }

  while (v364 < 3);
  v369 = 0;
  v998[0] = v368;
  for (m = 3; m < 6; m += v371 == 0.0)
  {
    v371 = *&v1037[4 * m];
    if (v371 == 0.0)
    {
      v372 = v369;
    }

    else
    {
      v372 = 1;
    }

    v369 = v372;
    if (v371 < 0.0)
    {
      break;
    }

    if (v371 > 0.0)
    {
      break;
    }
  }

  v373 = 0;
  v998[1] = v372;
  for (n = 6; n < 9; n += v375 == 0.0)
  {
    v375 = *&v1037[4 * n];
    if (v375 == 0.0)
    {
      v376 = v373;
    }

    else
    {
      v376 = 1;
    }

    v373 = v376;
    if (v375 < 0.0)
    {
      break;
    }

    if (v375 > 0.0)
    {
      break;
    }
  }

  v377 = 0;
  v998[2] = v376;
  v378 = 1;
  do
  {
    v379 = v998[v377];
    if (v998[v377])
    {
      ++v377;
    }

    if (v379)
    {
      v380 = v377 >= 3;
    }

    else
    {
      v378 = 0;
      v380 = 1;
    }
  }

  while (!v380);
  if (!v378)
  {
    v1036 = 0.0;
    memset(v1035, 0, sizeof(v1035));
    v477 = 0.0;
    goto LABEL_633;
  }

  v381 = v1038;
  v382 = vmul_f32(*v1037, 0);
  v383 = vdup_n_s32(0x3F8C035Cu);
  v391.i32[1] = -1088918396;
  v384 = vmla_n_f32(vmla_f32(vrev64_s32(v382), v383, *v1037), 0xBF186C84BEED1A95, *&v1037[8]);
  v385 = vmul_f32(*&v1037[12], 0);
  v386 = vmla_n_f32(vmla_f32(vrev64_s32(v385), v383, *&v1037[12]), 0xBF186C84BEED1A95, *&v1037[20]);
  v387 = vaddv_f32(v382) + *&v1037[8];
  v388 = vaddv_f32(v385) + *&v1037[20];
  v389 = fabsf(v384.f32[0]);
  v390 = (v389 * 7.7371e25) * (v389 * 7.7371e25);
  *v391.i32 = fmaxf(v389, 1.2925e-26);
  if (v389 > 1.2925e-26)
  {
    v390 = 1.0;
  }

  v392 = fabsf(v384.f32[1]);
  v393 = v390 + ((v392 / *v391.i32) * (v392 / *v391.i32));
  v394 = (((*v391.i32 / v392) * (*v391.i32 / v392)) * v390) + 1.0;
  if (v392 <= *v391.i32)
  {
    v392 = *v391.i32;
    v394 = v393;
  }

  v395 = fabsf(v387);
  v396 = v394 + ((v395 / v392) * (v395 / v392));
  v397 = (((v392 / v395) * (v392 / v395)) * v394) + 1.0;
  if (v395 <= v392)
  {
    v397 = v396;
  }

  else
  {
    v392 = v395;
  }

  *v363.i32 = sqrtf(v397) * v392;
  v398 = fabsf(v386.f32[0]);
  v399 = fmaxf(v398, 1.2925e-26);
  if (v398 <= 1.2925e-26)
  {
    v400 = (v398 * 7.7371e25) * (v398 * 7.7371e25);
  }

  else
  {
    v400 = 1.0;
  }

  v401 = fabsf(v386.f32[1]);
  v402 = v400 + ((v401 / v399) * (v401 / v399));
  v403 = (((v399 / v401) * (v399 / v401)) * v400) + 1.0;
  if (v401 <= v399)
  {
    v401 = v399;
    v403 = v402;
  }

  v404 = fabsf(v388);
  v405 = v403 + ((v404 / v401) * (v404 / v401));
  v406 = (((v401 / v404) * (v401 / v404)) * v403) + 1.0;
  if (v404 > v401)
  {
    v407 = v404;
  }

  else
  {
    v407 = v401;
  }

  if (v404 <= v401)
  {
    v406 = v405;
  }

  *v391.i32 = sqrtf(v406) * v407;
  _D4 = vdiv_f32(v384, vdup_lane_s32(v363, 0));
  _D0 = vdup_lane_s32(v391, 0);
  v409 = vdiv_f32(v386, _D0);
  v975 = *v391.i32;
  v977 = *v363.i32;
  v410 = v387 / *v363.i32;
  _D0.f32[0] = v388 / *v391.i32;
  v412 = vdup_lane_s32(_D4, 0);
  __asm { FMLA            S1, S0, V4.S[1] }

  v412.f32[0] = v387 / *v363.i32;
  v414 = vdup_lane_s32(v409, 0);
  v415.i32[3] = v414.i32[1];
  v414.i32[0] = _D0.i32[0];
  v416 = vmla_f32(vneg_f32(vmul_f32(v414, _D4)), v412, v409);
  v417.i32[0] = vdup_lane_s32(v409, 1).u32[0] & 0x7FFFFFFF;
  v417.i32[1] = _D0.i32[0] & 0x7FFFFFFF;
  v417.i32[2] = _S1 & 0x7FFFFFFF;
  v417.i32[3] = vdup_lane_s32(v416, 0).i32[1] & 0x7FFFFFFF;
  v415.i64[0] = *&_D4 & 0x7FFFFFFF7FFFFFFFLL;
  v415.i32[2] = LODWORD(v410) & 0x7FFFFFFF;
  v415.i32[3] &= ~0x80000000;
  v418.i64[0] = 0x7F0000007FLL;
  v418.i64[1] = 0x7F0000007FLL;
  v419 = vnegq_f32(v418);
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v415, v419), vcgeq_s32(v417, v419)))) & 1) != 0 || (HIDWORD(v416) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    _D0.i32[0] = rtNaNF;
    v478 = vdupq_lane_s32(_D0, 0);
    LODWORD(v479) = rtNaNF;
    v1035[0] = v478;
    v1035[1] = v478;
    v1036 = *&rtNaNF;
    v480 = v478;
    v481 = v478;
    v482 = *v478.f32;
    v483 = *v478.f32;
    goto LABEL_583;
  }

  v420 = 0;
  v421 = 0;
  v422 = 0;
  LODWORD(v1056) = 0;
  v1055 = 0;
  v423 = &v1055;
  LODWORD(v1052) = 0;
  v1051 = 0;
  DWORD2(v1048) = 0;
  *&v1048 = 0;
  v1060[0] = _D4;
  *&v1060[1] = v410;
  memset(v1035, 0, 28);
  *(&v1060[1] + 4) = v409;
  HIDWORD(v1060[2]) = _D0.i32[0];
  LODWORD(v1060[3]) = _S1;
  v424 = 1;
  v425 = 3;
  v426 = 4;
  memset(v1033, 0, sizeof(v1033));
  *(&v1060[3] + 4) = v416;
  v427 = 0.0;
  while (2)
  {
    v428 = 4 * v422;
    v429 = 4 * v422 + 4;
    v430 = v422;
    v431 = (4 * v422) | 1;
    v432 = v431 + (v422 ^ 3);
    v433 = &v1060[2 * v422];
    v434 = fabsf(*v433);
    v435 = (v434 * 7.7371e25) * (v434 * 7.7371e25);
    if (v434 <= 1.2925e-26)
    {
      v434 = 1.2925e-26;
    }

    else
    {
      v435 = 1.0;
    }

    if ((v428 | 2) < v432)
    {
      v436 = fabsf(*&v1059[4 * (v428 | 2)]);
      v437 = (((v434 / v436) * (v434 / v436)) * v435) + 1.0;
      v435 = v435 + ((v436 / v434) * (v436 / v434));
      if (v436 > v434)
      {
        v435 = v437;
        v434 = v436;
      }

      if ((v428 | 3) < v432)
      {
        v438 = fabsf(*&v1059[4 * (v428 | 3)]);
        v439 = (((v434 / v438) * (v434 / v438)) * v435) + 1.0;
        v435 = v435 + ((v438 / v434) * (v438 / v434));
        if (v438 > v434)
        {
          v435 = v439;
          v434 = v438;
        }

        if (v429 < v432)
        {
          v440 = fabsf(*&v1059[4 * v429]);
          v441 = (((v434 / v440) * (v434 / v440)) * v435) + 1.0;
          v435 = v435 + ((v440 / v434) * (v440 / v434));
          if (v440 > v434)
          {
            v435 = v441;
            v434 = v440;
          }

          if (v428 + 5 < v432)
          {
            v442 = fabsf(*&v1059[4 * v428 + 20]);
            v443 = (((v434 / v442) * (v434 / v442)) * v435) + 1.0;
            v435 = v435 + ((v442 / v434) * (v442 / v434));
            if (v442 > v434)
            {
              v435 = v443;
              v434 = v442;
            }

            if (v428 + 6 < v432)
            {
              v444 = fabsf(*&v1059[4 * v428 + 24]);
              v445 = (((v434 / v444) * (v434 / v444)) * v435) + 1.0;
              v435 = v435 + ((v444 / v434) * (v444 / v434));
              if (v444 > v434)
              {
                v435 = v445;
                v434 = v444;
              }

              if (v428 + 7 < v432)
              {
                v446 = fabsf(*&v1059[4 * v428 + 28]);
                if (v446 <= v434)
                {
                  v435 = v435 + ((v446 / v434) * (v446 / v434));
                }

                else
                {
                  v435 = (((v434 / v446) * (v434 / v446)) * v435) + 1.0;
                  v434 = v446;
                }
              }
            }
          }
        }
      }
    }

    v447 = -4 * v422;
    v448 = v434 * sqrtf(v435);
    if (v448 <= 0.0)
    {
      *v423 = 0.0;
      *v366 = *(v1060 + v425 + v422);
      if (v421)
      {
        goto LABEL_437;
      }

      v449 = v422 | 6;
      goto LABEL_422;
    }

    if (*v433 >= 0.0)
    {
      v450 = v448;
    }

    else
    {
      v450 = -v448;
    }

    v451 = (v431 - v422) | 2;
    if (v448 < 9.8608e-32)
    {
      if (v428 >= v451)
      {
        goto LABEL_413;
      }

      *&v1060[v420] = *&v1060[v420] / v450;
      v452 = v420 * 2 + 2;
      if (v420 * 2 + 2 == v426)
      {
        goto LABEL_413;
      }

      *(&v1060[v420] + 1) = *(&v1060[v420] + 1) / v450;
      if (v420 * 2 + 3 == v426)
      {
        goto LABEL_413;
      }

LABEL_412:
      *(v1060 + v452) = *(v1060 + v452) / v450;
      goto LABEL_413;
    }

    if (v428 < v451)
    {
      *&v1060[v420] = *&v1060[v420] / v450;
      if (v420 * 2 + 2 != v426)
      {
        *(&v1060[v420] + 1) = *(&v1060[v420] + 1) / v450;
        if (v420 * 2 + 3 != v426)
        {
          v452 = v424 + 1;
          goto LABEL_412;
        }
      }
    }

LABEL_413:
    v453.i32[0] = *(v433 + 1);
    v454 = *v433 + 1.0;
    *v433 = v454;
    *v423 = -v450;
    v455 = v1060 + v425 + v422;
    v456 = *v455;
    v457 = v455[1];
    v458 = (*v455 * v454) + (v457 * v453.f32[0]);
    if ((v421 & 1) == 0)
    {
      v460 = *(v433 + 2);
      v459 = -(v458 + (v455[2] * v460)) / v454;
      if (v459 != 0.0)
      {
        goto LABEL_418;
      }

      *v366 = v456;
      v453.f32[1] = v460;
LABEL_420:
      v449 = v422 | 6;
      v461 = v1060 + 4 * v449;
      v462 = *(v461 + 4);
      v463 = vmul_f32(v462, v453);
      v464 = -(v463.f32[1] + (v463.f32[0] + (*v461 * v454))) / v454;
      if (v464 != 0.0)
      {
        *v461 = *v461 + (v454 * v464);
        *(v461 + 4) = vmla_n_f32(v462, *(v433 + 4), v464);
      }

LABEL_422:
      v465 = *(v1060 + v449);
      *&v1052 = v465;
      memcpy(&v1035[v430], v433, v447 + 12);
      v467 = fabsf(*(&v1051 + 1));
      v468.f32[0] = (v467 * 7.7371e25) * (v467 * 7.7371e25);
      if (v467 <= 1.2925e-26)
      {
        v467 = 1.2925e-26;
      }

      else
      {
        v468.f32[0] = 1.0;
      }

      v469 = fabsf(v465);
      v470 = (((v467 / v469) * (v467 / v469)) * v468.f32[0]) + 1.0;
      v471 = v468.f32[0] + ((v469 / v467) * (v469 / v467));
      if (v469 > v467)
      {
        v471 = v470;
        v467 = v469;
      }

      v472 = v467 * sqrtf(v471);
      if (v472 == 0.0)
      {
        LODWORD(v1051) = 0;
        v427 = 0.0;
      }

      else
      {
        if (*(&v1051 + 1) < 0.0)
        {
          v472 = -v472;
        }

        v468.f32[0] = v465 / v472;
        v466.f32[0] = (*(&v1051 + 1) / v472) + 1.0;
        __dstb = v466;
        v995 = v468;
        v427 = -v472;
        *(&v1051 + 1) = v466.f32[0];
        LODWORD(v1052) = v468.i32[0];
        *&v1051 = -v472;
        bzero(&v1048 + v429, v447 + 8);
        v473 = vbsl_s8(vdup_lane_s32(vceq_f32(__dstb, 0), 0), *(&v1048 + 4), vmla_n_f32(*(&v1048 + 4), v1060[2], __dstb.f32[0]));
        v474 = vbsl_s8(vdup_lane_s32(vceq_f32(v995, 0), 0), v473, vmla_n_f32(v473, *(&v1060[3] + 4), v995.f32[0]));
        *(&v1048 + 4) = v474;
        v475 = -__dstb.f32[0] / __dstb.f32[0];
        if (v475 != 0.0)
        {
          v1060[2] = vmla_n_f32(v1060[2], v474, v475);
        }

        v476 = -v995.f32[0] / __dstb.f32[0];
        if (v476 != 0.0)
        {
          *(&v1060[3] + 4) = vmla_n_f32(*(&v1060[3] + 4), v474, v476);
        }
      }

      memcpy(&v1033[v429], &v1051 + v429, v447 + 8);
      v424 += 4;
      v426 += 3;
      v420 += 2;
      v421 = 1;
      v423 = &v1055 + 1;
      v422 = 1;
      v366 = &v1052;
      v425 = 6;
      continue;
    }

    break;
  }

  v459 = -v458 / v454;
  if (v459 == 0.0)
  {
    goto LABEL_436;
  }

LABEL_418:
  v456 = v456 + (v454 * v459);
  *v455 = v456;
  v455[1] = v457 + (*(v433 + 1) * v459);
  if ((v421 & 1) == 0)
  {
    v455[2] = v455[2] + (*(v433 + 2) * v459);
    *v366 = v456;
    v454 = *v433;
    v453 = *(v433 + 4);
    goto LABEL_420;
  }

LABEL_436:
  *v366 = v456;
LABEL_437:
  memcpy(&v1035[v430], v433, v447 + 12);
  v493 = *(&v1060[3] + 1);
  v492 = *&v1060[4];
  LODWORD(v1056) = v1060[4];
  HIDWORD(v1051) = HIDWORD(v1060[3]);
  LODWORD(v1052) = 0;
  v1036 = 1.0;
  *(&v1035[1] + 1) = 0;
  v494 = *(&v1055 + 1);
  if (*(&v1055 + 1) == 0.0)
  {
    DWORD1(v1035[1]) = 0;
    *(v1035 + 12) = 0x3F80000000000000;
    v498 = 1.0;
    v495 = 0.0;
    v497 = 0.0;
    v499 = 1.0;
  }

  else
  {
    v495 = -*(&v1035[1] + 1);
    v496 = -*(&v1035[1] + 1) / *&v1035[1];
    v497 = 0.0;
    v498 = 1.0;
    if (v496 != 0.0)
    {
      v497 = v496 * *&v1035[1];
      *(&v1035[1] + 3) = v496 * *&v1035[1];
      v498 = (v496 * *(&v1035[1] + 1)) + 1.0;
      v1036 = v498;
    }

    *(&v1035[1] + 1) = -*(&v1035[1] + 1);
    v499 = 1.0 - *&v1035[1];
    *&v1035[1] = 1.0 - *&v1035[1];
    HIDWORD(v1035[0]) = 0;
  }

  v500 = *&v1055;
  if (*&v1055 == 0.0)
  {
    *(v1035 + 4) = 0;
    v504 = 1.0;
    v501 = 0.0;
    v503 = 0.0;
    v505 = 0.0;
    v489.i64[0] = 0;
  }

  else
  {
    v501 = 0.0;
    v502 = -(((*v1035 * 0.0) + (*(v1035 + 1) * v499)) + (*(v1035 + 2) * v495)) / *v1035;
    if (v502 == 0.0)
    {
      v503 = 0.0;
    }

    else
    {
      v503 = v502 * *v1035;
      v499 = v499 + (v502 * *(v1035 + 1));
      *(v1035 + 3) = v502 * *v1035;
      *&v1035[1] = v499;
      v495 = v495 + (v502 * *(v1035 + 2));
      *(&v1035[1] + 1) = v495;
    }

    v518 = -(((*v1035 * 0.0) + (*(v1035 + 1) * v497)) + (*(v1035 + 2) * v498)) / *v1035;
    if (v518 != 0.0)
    {
      v501 = v518 * *v1035;
      v497 = v497 + (v518 * *(v1035 + 1));
      *(&v1035[1] + 2) = v518 * *v1035;
      *(&v1035[1] + 3) = v497;
      v498 = v498 + (v518 * *(v1035 + 2));
      v1036 = v498;
    }

    *v489.i32 = -*(v1035 + 1);
    v505 = -*(v1035 + 2);
    *(v1035 + 1) = -*(v1035 + 1);
    *(v1035 + 2) = -*(v1035 + 2);
    v504 = 1.0 - *v1035;
  }

  *v1035 = v504;
  *&v1033[28] = 0x3F80000000000000;
  *&v1033[12] = xmmword_2247A5180;
  if (v427 == 0.0)
  {
    v487.i64[0] = 0;
    v520 = 1.0;
    v521 = 0.0;
    v522 = 1.0;
  }

  else
  {
    v519 = -*&v1033[4] / *&v1033[4];
    v520 = 1.0;
    v487.i64[0] = 0;
    v521 = 0.0;
    v522 = 1.0;
    if (v519 != 0.0)
    {
      v522 = (v519 * *&v1033[4]) + 1.0;
      v521 = v519 * *&v1033[8];
      *&v1033[16] = v522;
      *&v1033[20] = v519 * *&v1033[8];
    }

    v523 = -*&v1033[8] / *&v1033[4];
    if (v523 != 0.0)
    {
      *v487.i32 = v523 * *&v1033[4];
      v520 = (v523 * *&v1033[8]) + 1.0;
      *&v1033[28] = v523 * *&v1033[4];
      *&v1033[32] = v520;
    }
  }

  *&v1033[8] = 0;
  *v1033 = 1065353216;
  if (*&v1055 == 0.0)
  {
    if (v427 != 0.0)
    {
LABEL_470:
      LODWORD(v1051) = fabsf(v427);
      v494 = (*&v1051 / v427) * *(&v1055 + 1);
      *(&v1055 + 1) = v494;
      v489.i32[1] = 0;
      *&v1033[12] = (*&v1051 / v427) * 0.0;
      *&v1033[16] = v522 * (*&v1051 / v427);
      *&v1033[20] = v521 * (*&v1051 / v427);
      v427 = *&v1051;
    }
  }

  else
  {
    v524 = fabsf(*&v1055);
    v525 = *&v1055 / v524;
    *&v1055 = v524;
    v427 = v427 / v525;
    *&v1051 = v427;
    *v1035 = v504 * v525;
    *(v1035 + 1) = *v489.i32 * v525;
    *(v1035 + 2) = v505 * v525;
    v500 = v524;
    if (v427 != 0.0)
    {
      goto LABEL_470;
    }
  }

  v526 = fmaxf(fabsf(v500), fabsf(v427));
  if (v494 != 0.0)
  {
    v527 = fabsf(v494);
    v528 = v494 / v527;
    *(&v1055 + 1) = v527;
    v493 = *(&v1060[3] + 1) / v528;
    *(&v1051 + 1) = *(&v1060[3] + 1) / v528;
    *(v1035 + 3) = v503 * v528;
    *&v1035[1] = v499 * v528;
    *(&v1035[1] + 1) = v495 * v528;
    v494 = v527;
  }

  v529 = fmaxf(v526, 0.0);
  if (v493 != 0.0)
  {
    v530 = fabsf(v493);
    v531 = v530 / v493;
    *(&v1051 + 1) = v530;
    v492 = v531 * *&v1060[4];
    *&v1056 = v531 * *&v1060[4];
    _Q17.i32[1] = 0;
    *&v1033[24] = v531 * 0.0;
    *&v1033[28] = *v487.i32 * v531;
    *&v1033[32] = v520 * v531;
    v493 = v530;
  }

  v532 = fmaxf(v529, fmaxf(fabsf(v494), fabsf(v493)));
  if (v492 != 0.0)
  {
    LODWORD(v1056) = fabsf(v492);
    v533 = v492 / *&v1056;
    *(&v1035[1] + 2) = v501 * v533;
    *(&v1035[1] + 3) = v497 * v533;
    v1036 = v498 * v533;
    v492 = *&v1056;
  }

  v534 = 0;
  v535 = fmaxf(v532, fmaxf(fabsf(v492), 0.0)) * 0.00000011921;
  v536 = 1;
  v537 = 3;
  while (2)
  {
    v538 = v536 + 1;
    if (v536 == -1)
    {
LABEL_495:
      v547 = 0;
      if (v536 != -1)
      {
        goto LABEL_505;
      }

      goto LABEL_496;
    }

    v539 = v536;
    v540 = *(&v1055 + v536 + 1);
    while (1)
    {
      v541 = fabsf(*(&v1051 + v539));
      v542 = fabsf(v540);
      v540 = *(&v1055 + v539);
      v543 = (fabsf(v540) + v542) * 0.00000011921;
      v544 = v541 > v535 || v534 < 21;
      v545 = v544;
      v546 = v541 > 9.8608e-32 && v541 > v543;
      if (!v546 || !v545)
      {
        break;
      }

      if (--v539 == -1)
      {
        goto LABEL_495;
      }
    }

    v547 = v539 + 1;
    *(&v1051 + v539) = 0;
    if (v539 + 1 == v538)
    {
LABEL_496:
      v548 = *(&v1055 + v538);
      if (v548 < 0.0)
      {
        v548 = -v548;
        *(&v1055 + v538) = v548;
        v549 = &v1033[12 * v538];
        _Q16.i64[0] = *v549;
        _Q16.i32[2] = *(v549 + 2);
        _Q16 = vnegq_f32(_Q16);
        *(v549 + 2) = _Q16.i32[2];
        *v549 = _Q16.i64[0];
      }

      if (v536 <= 0)
      {
        v550 = v536 - 1;
        v551 = 12 * v536;
        v552 = &v1056 + v536;
        v553 = v1035;
        v554 = v1033;
        do
        {
          if (v548 >= *v552)
          {
            break;
          }

          v555 = &v554[v551];
          v557 = *&v554[v551 + 16];
          v556 = *&v554[v551 + 24];
          _Q17.i32[2] = *&v554[v551 + 32];
          _Q17.i32[3] = *&v554[v551 + 12];
          *(v552 - 1) = *v552;
          *v552 = v548;
          *(v555 + 12) = _Q17;
          *(v555 + 28) = v557;
          v558 = v553 + v551;
          _Q17.i64[0] = *(v553 + v551 + 16);
          _Q16.i64[0] = *(v553 + v551 + 24);
          _Q16.i32[2] = *(v553 + v551 + 32);
          _Q16.i32[3] = *(v553 + v551 + 12);
          *(v558 + 12) = _Q16;
          *(v558 + 28) = _Q17.i64[0];
          v553 = (v553 + 12);
          ++v552;
          v554 += 12;
          _CF = __CFADD__(v550++, 1);
        }

        while (!_CF);
      }

      v534 = 0;
      --v536;
      goto LABEL_563;
    }

LABEL_505:
    v559 = v537;
    if (v537 >= v547)
    {
      LODWORD(v573) = v537;
      while (v573 != v547)
      {
        v559 = v573;
        v579 = 0.0;
        if (v573 < v537)
        {
          v579 = fabsf(*(&v1051 + v573 - 1));
        }

        if (v573 > v547 + 1)
        {
          v579 = fabsf(*&v1050[v573]) + v579;
        }

        v573 = v573 - 1;
        v574 = fabsf(*(&v1055 + v573));
        v575 = fmaxf(v579 * 0.00000011921, 9.8608e-32);
        v576 = v575 < v574;
        if (v575 >= v574)
        {
          v577 = 0.0;
        }

        else
        {
          v577 = *(&v1055 + v573);
        }

        *(&v1055 + v573) = v577;
        if (v576)
        {
          v578 = v573 < v547;
        }

        else
        {
          LODWORD(v573) = v559;
          v578 = 1;
        }

        if (v578)
        {
          goto LABEL_506;
        }
      }

LABEL_507:
      v560 = *(&v1055 + v538);
      v561 = *(&v1055 + v536);
      v562 = *(&v1051 + v536);
      v563 = *(&v1055 + v547);
      v564 = *(&v1051 + v547);
      v565 = fmaxf(fmaxf(fmaxf(fmaxf(fabsf(v560), fabsf(v561)), fabsf(v562)), fabsf(v563)), fabsf(v564));
      v566 = v560 * (1.0 / v565);
      v567 = v562 * (1.0 / v565);
      v568 = ((v567 * v567) + (((v561 * (1.0 / v565)) + v566) * ((v561 * (1.0 / v565)) - v566))) * 0.5;
      v569 = (v566 * v567) * (v566 * v567);
      if (v569 != 0.0 || (v488.i64[0] = 0, v568 != 0.0))
      {
        v570 = sqrtf(v569 + (v568 * v568));
        if (v568 < 0.0)
        {
          v570 = -v570;
        }

        v488.f32[0] = v569 / (v570 + v568);
      }

      v571 = v563 * (1.0 / v565);
      v572 = v488.f32[0] + ((v571 + v566) * (v571 - v566));
      if (v547 > v536)
      {
LABEL_513:
        *(&v1051 + v536) = v572;
        ++v534;
        goto LABEL_563;
      }

      v584.f32[0] = (v571 * v564) / v565;
      v582 = v547 + 1;
      v583 = 12 * v582;
      v584.f32[1] = v488.f32[0] + ((v571 + v566) * (v571 - v566));
      v585 = 4 * v582 - 4;
      v586 = v1035;
      v587 = v1033;
      v588 = v582;
      while (1)
      {
        v606 = vabs_f32(v584);
        *_Q17.i32 = vaddv_f32(v606);
        v607 = 0;
        _Q16.i64[0] = 0x3F80000000000000;
        if (*_Q17.i32 != 0.0)
        {
          break;
        }

        if (v588 > v582)
        {
          goto LABEL_550;
        }

LABEL_531:
        _S19 = *(&v1051 + v585);
        _S20 = *(&v1055 + v585);
        _Q17.i32[0] = *(&v1055 + v585 + 4);
        __asm { FMLA            S7, S19, V16.S[1] }

        *(&v1051 + v585) = _S7;
        v592 = &v587[v583];
        v488.i32[0] = *&v587[12 * v582];
        v489.i32[0] = *&v587[v583 - 12];
        v490.i64[0] = *&v587[v583 + 4];
        v491.i64[0] = *&v587[v583 - 8];
        *(v592 + 4) = vmla_lane_f32(vneg_f32(vmul_n_f32(*v491.i8, _Q16.f32[0])), *v490.i8, *_Q16.f32, 1);
        v593.i64[0] = vzip1q_s32(v488, v490).u64[0];
        v593.i64[1] = __PAIR64__(v593.u32[0], v491.u32[1]);
        v489.i32[2] = v490.i32[1];
        v594 = vmulq_f32(v593, vzip1q_s32(_Q16, _Q16));
        v595 = vtrn1q_s32(v489, v491);
        v595.i32[3] = v595.i32[0];
        v596 = vrev64q_s32(_Q16);
        v488 = vmulq_f32(v595, vzip1q_s32(v596, v596));
        v489 = vaddq_f32(v594, v488);
        v598 = vsubq_f32(v594, v488);
        v489.i32[3] = v598.i32[3];
        *(v592 - 12) = v489;
        __asm { FMLA            S19, S20, V16.S[1] }

        *v598.i32 = fabsf(_S19);
        v488.f32[0] = fabsf(*_Q17.i32 * _Q16.f32[0]);
        if ((v488.f32[0] + *v598.i32) == 0.0)
        {
          _Q18.i64[0] = 0x3F80000000000000;
          v487.i64[0] = 0;
        }

        else
        {
          if (*v598.i32 <= v488.f32[0])
          {
            v608 = *_Q17.i32 * _Q16.f32[0];
          }

          else
          {
            v608 = _S19;
          }

          v609 = sqrtf(((v488.f32[0] / (v488.f32[0] + *v598.i32)) * (v488.f32[0] / (v488.f32[0] + *v598.i32))) + ((*v598.i32 / (v488.f32[0] + *v598.i32)) * (*v598.i32 / (v488.f32[0] + *v598.i32)))) * (v488.f32[0] + *v598.i32);
          *v487.i32 = -v609;
          if (v608 >= 0.0)
          {
            *v487.i32 = v609;
          }

          v610.f32[1] = _S19;
          v610.f32[0] = *_Q17.i32 * _Q16.f32[0];
          *_Q18.f32 = vdiv_f32(v610, vdup_lane_s32(*v487.i8, 0));
        }

        *_Q17.i32 = vmuls_lane_f32(*_Q17.i32, *_Q16.f32, 1);
        *(&v1055 + v585) = v487.i32[0];
        v572 = vmuls_lane_f32(_S7, *_Q18.f32, 1) + (_Q18.f32[0] * *_Q17.i32);
        __asm { FMLA            S7, S17, V18.S[1] }

        *(&v1055 + v585 + 4) = _S7;
        _Q17.i32[0] = *(&v1051 + v585 + 4);
        v584.f32[0] = *_Q17.i32 * _Q18.f32[0];
        *(&v1051 + v585 + 4) = vmuls_lane_f32(*_Q17.i32, *_Q18.f32, 1);
        v600 = v586 + v583;
        _Q17.i32[0] = *(v586 + 3 * v582);
        v487.i32[0] = *(v586 + v583 - 12);
        v598.i64[0] = *(v586 + v583 + 4);
        v488.i64[0] = *(v586 + v583 - 8);
        *v489.i8 = vmla_lane_f32(vneg_f32(vmul_n_f32(*v488.f32, _Q18.f32[0])), *v598.i8, *_Q18.f32, 1);
        *(v600 + 4) = v489.i64[0];
        v601.i64[0] = vzip1q_s32(_Q17, v598).u64[0];
        v601.i64[1] = __PAIR64__(v601.u32[0], v488.u32[1]);
        v602 = vmulq_f32(v601, vzip1q_s32(_Q18, _Q18));
        v487.i32[2] = v598.i32[1];
        v603 = vtrn1q_s32(v487, v488);
        v603.i32[3] = v603.i32[0];
        v604 = vrev64q_s32(_Q18);
        _Q18 = vmulq_f32(v603, vzip1q_s32(v604, v604));
        v605 = vaddq_f32(v602, _Q18);
        _Q17 = vsubq_f32(v602, _Q18);
        v605.i32[3] = _Q17.i32[3];
        *(v600 - 12) = v605;
        v584.f32[1] = v572;
        v586 = (v586 + 12);
        v587 += 12;
        v585 += 4;
        v544 = v588++ <= v536;
        if (!v544)
        {
          goto LABEL_513;
        }
      }

      v611 = v584.f32[1];
      v612 = vdup_lane_s32(*_Q17.i8, 0);
      if (v606.f32[1] <= v606.f32[0])
      {
        v611 = v584.f32[0];
      }

      v613 = vdiv_f32(v606, v612);
      v614 = sqrtf(vaddv_f32(vmul_f32(v613, v613))) * *_Q17.i32;
      if (v611 >= 0.0)
      {
        *v607.i32 = v614;
      }

      else
      {
        *v607.i32 = -v614;
      }

      *_Q16.f32 = vdiv_f32(v584, vdup_lane_s32(v607, 0));
      if (v588 <= v582)
      {
        goto LABEL_531;
      }

LABEL_550:
      LODWORD(v1051) = v607.i32[0];
      goto LABEL_531;
    }

LABEL_506:
    if (v559 == v547)
    {
      goto LABEL_507;
    }

    if (v559 == v537)
    {
      v580 = *(&v1051 + v536);
      *(&v1051 + v536) = 0;
      v581 = *&v1051;
      if (v536 >= v547)
      {
        v636 = &v1033[12 * v538];
        v637 = v536 + 1;
        v638 = &v1033[12 * v536 + 8];
        v639 = &v1055 + v536;
        do
        {
          v651 = fabsf(*v639);
          v652 = fabsf(v580);
          if ((v651 + v652) == 0.0)
          {
            v640 = 1.0;
            v641 = 0.0;
            v580 = 0.0;
            v642 = 0.0;
          }

          else
          {
            if (v651 <= v652)
            {
              v653 = v580;
            }

            else
            {
              v653 = *v639;
            }

            v654 = sqrtf(((v652 / (v651 + v652)) * (v652 / (v651 + v652))) + ((v651 / (v651 + v652)) * (v651 / (v651 + v652)))) * (v651 + v652);
            v641 = -v654;
            if (v653 >= 0.0)
            {
              v641 = v654;
            }

            v544 = v651 <= v652;
            v640 = *v639 / v641;
            v642 = v580 / v641;
            if (v544)
            {
              if (v640 == 0.0)
              {
                v580 = 1.0;
              }

              else
              {
                v580 = 1.0 / v640;
              }
            }

            else
            {
              v580 = v580 / v641;
            }
          }

          v643 = v637 - 1;
          *v639-- = v641;
          v644 = -(v581 * v642);
          if (v637 > v547 + 1)
          {
            v581 = v640 * v581;
            v580 = v644;
          }

          v645 = *v636;
          v646 = *(v638 - 2);
          *v636 = -((v646 * v642) - (*v636 * v640));
          *(v638 - 2) = (v645 * v642) + (v646 * v640);
          v647 = *(v638 - 1);
          v648 = v636[1];
          v636[1] = -((v647 * v642) - (v648 * v640));
          *(v638 - 1) = (v647 * v640) + (v648 * v642);
          v649 = v636[2];
          v650 = *v638;
          v636[2] = -((*v638 * v642) - (v649 * v640));
          *v638 = (v649 * v642) + (v650 * v640);
          v638 -= 3;
          --v637;
        }

        while (v643 > v547);
      }

      *&v1051 = v581;
    }

    else
    {
      v615 = v559 - 1;
      v616 = *(&v1051 + v615);
      *(&v1051 + v615) = 0;
      if (v559 < v537)
      {
        v617 = 3 * v615;
        v618 = v537 - v559;
        v619 = 4 * v559;
        v620 = (&v1055 + v619);
        v621 = v1035 + 3 * v559 + 1;
        v622 = (&v1051 + v619);
        v623 = v1035 + v617;
        do
        {
          v634 = fabsf(*v620);
          v635 = fabsf(v616);
          if ((v634 + v635) == 0.0)
          {
            v627 = 1.0;
            v626 = 0.0;
            _Q17.i64[0] = 0;
          }

          else
          {
            if (v634 <= v635)
            {
              v624 = v616;
            }

            else
            {
              v624 = *v620;
            }

            v625 = sqrtf(((v635 / (v634 + v635)) * (v635 / (v634 + v635))) + ((v634 / (v634 + v635)) * (v634 / (v634 + v635)))) * (v634 + v635);
            if (v624 >= 0.0)
            {
              v626 = v625;
            }

            else
            {
              v626 = -v625;
            }

            v627 = *v620 / v626;
            *_Q17.i32 = v616 / v626;
          }

          *v620++ = v626;
          v616 = -(*_Q17.i32 * *v622);
          *v622 = *v622 * v627;
          ++v622;
          v628 = *v623;
          v629 = *(v621 - 1);
          *v623 = -((v629 * *_Q17.i32) - (*v623 * v627));
          *(v621 - 1) = (v628 * *_Q17.i32) + (v629 * v627);
          v630 = v623[1];
          v631 = (*v621 * v627) + (v630 * *_Q17.i32);
          v623[1] = -((*v621 * *_Q17.i32) - (v630 * v627));
          *v621 = v631;
          v632 = v623[2];
          v633 = v621[1];
          v623[2] = -((v633 * *_Q17.i32) - (v632 * v627));
          v621[1] = (v632 * *_Q17.i32) + (v633 * v627);
          v621 += 3;
          --v618;
        }

        while (v618);
      }
    }

LABEL_563:
    if (v536 >= -1)
    {
      v537 = v536 + 2;
      if (v534 < 75)
      {
        continue;
      }
    }

    break;
  }

  v479 = *&v1033[32];
  v480 = v1035[0];
  v478 = *(v1035 + 12);
  v481.i64[0] = *(&v1035[1] + 1);
  _D0.f32[0] = v1036;
  v655 = vextq_s8(v478, v478, 8uLL).u64[0];
  v478.i64[1] = *&v1033[12];
  v656 = vextq_s8(v480, v480, 8uLL).u64[0];
  v480.i64[1] = *v1033;
  v481.i64[1] = *&v1033[24];
  v482 = vzip1_s32(*&vextq_s8(*&v1033[12], *&v1033[12], 8uLL), v655);
  v483 = vzip1_s32(*&vextq_s8(*v1033, *v1033, 8uLL), v656);
LABEL_583:
  v657 = vextq_s8(v480, v480, 4uLL);
  v658 = vtrn2q_s32(v657, v657);
  v658.i32[2] = v483.i32[1];
  v659.i32[0] = v483.i32[0];
  v660 = vextq_s8(v478, v478, 4uLL);
  v661 = vtrn2q_s32(v660, v660);
  v661.i32[2] = v482.i32[1];
  v662.i32[0] = v482.i32[0];
  v663 = vmulq_f32(v480, v658);
  v664 = vextq_s8(v481, v481, 4uLL);
  v665 = vtrn2q_s32(v664, v664);
  v665.i32[2] = _D0.i32[0];
  v666 = vmlaq_f32(v663, v661, v478);
  v667 = vdupq_laneq_s32(v480, 3);
  v480.i32[2] = v480.i32[1];
  v659.i32[1] = v667.i32[1];
  v668 = vmlaq_f32(v666, v665, v481);
  *&v659.u32[2] = v483;
  v669 = vdupq_laneq_s32(v478, 3);
  v478.i32[2] = v478.i32[1];
  v662.i32[1] = v669.i32[1];
  *&v662.u32[2] = v482;
  v670 = vdupq_laneq_s32(v481, 3);
  v481.i32[2] = v481.i32[1];
  v670.f32[0] = v479;
  v670.i64[1] = __PAIR64__(_D0.u32[0], LODWORD(v479));
  v671 = vmlaq_f32(vmlaq_f32(vmulq_f32(v480, v659), v662, v478), v670, v481);
  *v1037 = v668;
  *&v1037[16] = vuzp2q_s32(v671, vrev64q_s32(v671));
  v672 = vaddv_f32(vmul_f32(vzip1_s32(v482, v483), vzip2_s32(v482, v483))) + (v479 * _D0.f32[0]);
  v1038 = v672;
  v673 = *&v671.i32[3];
  v996 = v668;
  v674 = fabsf(v672) == INFINITY;
  _ZF = fabsf(*&v671.i32[3]) != INFINITY || !v674;
  if (_ZF)
  {
    if (v672 != 0.0)
    {
      v679 = *&v671.i32[3];
      v678 = v672;
      goto LABEL_600;
    }

    v676 = 1.5708;
    v677 = -1.5708;
    if (*&v671.i32[3] >= 0.0)
    {
      v677 = 0.0;
    }

    if (*&v671.i32[3] <= 0.0)
    {
      v676 = v677;
    }
  }

  else
  {
    v678 = -1.0;
    if (*&v671.i32[3] <= 0.0)
    {
      v679 = -1.0;
    }

    else
    {
      v679 = 1.0;
    }

    if (v672 > 0.0)
    {
      v678 = 1.0;
    }

LABEL_600:
    v676 = atan2f(v679, v678);
    v668.i32[2] = v996.i32[2];
  }

  *v1035 = v676 * 1000.0;
  v680 = -v668.f32[2];
  v681 = sqrtf((v673 * v673) + (v672 * v672));
  v682 = fabsf(v668.f32[2]) == INFINITY;
  if (fabsf(v681) != INFINITY || !v682)
  {
    if (v681 != 0.0)
    {
      goto LABEL_615;
    }

    if (v668.f32[2] >= 0.0)
    {
      v684 = -1.5708;
      if (v668.f32[2] <= 0.0)
      {
        v684 = 0.0;
      }
    }

    else
    {
      v684 = 1.5708;
    }
  }

  else
  {
    if (v668.f32[2] >= 0.0)
    {
      v680 = -1.0;
    }

    else
    {
      v680 = 1.0;
    }

    if (v681 <= 0.0)
    {
      v681 = -1.0;
    }

    else
    {
      v681 = 1.0;
    }

LABEL_615:
    v684 = atan2f(v680, v681);
  }

  *(v1035 + 1) = v684 * 1000.0;
  v685 = v996.f32[1];
  v686 = sqrtf(v975 * v977);
  v687 = fabsf(v996.f32[0]) == INFINITY;
  if (fabsf(v996.f32[1]) != INFINITY || !v687)
  {
    if (v996.f32[0] != 0.0)
    {
      v690 = v996.f32[0];
      goto LABEL_631;
    }

    if (v996.f32[1] <= 0.0)
    {
      v689 = -1.5708;
      if (v996.f32[1] >= 0.0)
      {
        v689 = 0.0;
      }
    }

    else
    {
      v689 = 1.5708;
    }
  }

  else
  {
    v690 = -1.0;
    if (v996.f32[1] <= 0.0)
    {
      v685 = -1.0;
    }

    else
    {
      v685 = 1.0;
    }

    if (v996.f32[0] > 0.0)
    {
      v690 = 1.0;
    }

LABEL_631:
    v689 = atan2f(v685, v690);
  }

  *(v1035 + 2) = v689 * 1000.0;
  v477 = (((v381 * 0.01008) / v686) + -0.9142);
LABEL_633:
  v691 = *(v973 + 4);
  LODWORD(v1023) = 14;
  HIDWORD(v1023) = v691;
  v1024 = 2;
  coder::array_base<float,int,2>::ensureCapacity(v1021, 28 * v691);
  v692 = *(v973 + 4);
  v693 = (28 * v692);
  if (v693 >= 1)
  {
    bzero(v1021[0], 4 * (28 * v692));
  }

  v694 = v981;
  if (v981 >= 1)
  {
    v695 = v1047 + 2;
    v696 = v1021[0] + 52;
    v697 = v1021[0] + 56 * SHIDWORD(v1023) + 28;
    do
    {
      *(v696 - 13) = *(v695 - 14);
      *(v697 - 7) = *v695;
      *(v696 - 12) = *(v695 - 13);
      *(v697 - 6) = v695[1];
      *(v696 - 11) = *(v695 - 12);
      *(v697 - 5) = v695[2];
      *(v696 - 10) = *(v695 - 11);
      *(v697 - 4) = v695[3];
      *(v696 - 9) = *(v695 - 10);
      *(v697 - 3) = v695[4];
      *(v696 - 8) = *(v695 - 9);
      *(v697 - 2) = v695[5];
      *(v696 - 7) = *(v695 - 8);
      *(v697 - 1) = v695[6];
      *(v696 - 6) = *(v695 - 7);
      *v697 = v695[7];
      *(v696 - 5) = *(v695 - 6);
      v697[1] = v695[8];
      *(v696 - 4) = *(v695 - 5);
      v697[2] = v695[9];
      *(v696 - 3) = *(v695 - 4);
      v697[3] = v695[10];
      *(v696 - 2) = *(v695 - 3);
      v697[4] = v695[11];
      *(v696 - 1) = *(v695 - 2);
      v697[5] = v695[12];
      *v696 = *(v695 - 1);
      v696 += 14;
      v697[6] = v695[13];
      v695 += 98;
      v697 += 14;
      --v694;
    }

    while (v694);
  }

  v698 = v968;
  if (v692 >= 1)
  {
    v699 = 0;
    v700 = 14 * v692;
    v701 = v968;
    do
    {
      v702 = *v701;
      v701 += 2;
      *&v1040[4 * v699] = *(v969 + 4 * (14 * v702 - 14));
      *&v1040[4 * v699 + 8] = *(v969 + 4 * (14 * v702 - 12));
      *&v1040[4 * v699 + 16] = *(v969 + 4 * (14 * v702 - 10));
      *&v1040[4 * v699 + 24] = *(v969 + 4 * (14 * v702 - 8));
      *&v1040[4 * v699 + 32] = *(v969 + 4 * (14 * v702 - 6));
      *&v1040[4 * v699 + 40] = *(v969 + 4 * (14 * v702 - 4));
      v703 = 4 * (v699 + 12);
      v699 += 14;
      *&v1040[v703] = *(v969 + 4 * (14 * v702 - 2));
    }

    while (v700 != v699);
    v704 = 0;
    v705 = 14 * v692;
    do
    {
      v706 = *v698;
      v698 += 2;
      *&v1040[4 * v705 + 4 * v704] = *(v969 + 4 * (14 * v706 + 98));
      *&v1040[4 * v705 + 4 + 4 * v704] = *(v969 + 4 * (14 * v706 + 99));
      *&v1040[4 * v705 + 8 + 4 * v704] = *(v969 + 4 * (14 * v706 + 100));
      *&v1040[4 * v705 + 12 + 4 * v704] = *(v969 + 4 * (14 * v706 + 101));
      *&v1040[4 * v705 + 16 + 4 * v704] = *(v969 + 4 * (14 * v706 + 102));
      *&v1040[4 * v705 + 20 + 4 * v704] = *(v969 + 4 * (14 * v706 + 103));
      *&v1040[4 * v705 + 24 + 4 * v704] = *(v969 + 4 * (14 * v706 + 104));
      *&v1040[4 * v705 + 28 + 4 * v704] = *(v969 + 4 * (14 * v706 + 105));
      *&v1040[4 * v705 + 32 + 4 * v704] = *(v969 + 4 * (14 * v706 + 106));
      *&v1040[4 * v705 + 36 + 4 * v704] = *(v969 + 4 * (14 * v706 + 107));
      *&v1040[4 * v705 + 40 + 4 * v704] = *(v969 + 4 * (14 * v706 + 108));
      *&v1040[4 * v705 + 44 + 4 * v704] = *(v969 + 4 * (14 * v706 + 109));
      *&v1040[4 * v705 + 48 + 4 * v704] = *(v969 + 4 * (14 * v706 + 110));
      v707 = v705 + v704 + 13;
      v704 += 14;
      *&v1040[4 * v707] = *(v969 + 4 * (14 * v706 + 111));
    }

    while (v700 != v704);
  }

  v708 = HIDWORD(v1023);
  if (v692 == HIDWORD(v1023))
  {
    LODWORD(v1023) = 14;
    v1024 = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1021, 28 * v692);
    if (v693 >= 1)
    {
      v709 = v1021[0];
      if (v693 < 8 || v1021[0] < &v1040[4 * v693] && v1040 < v1021[0] + 4 * v693)
      {
        v710 = 0;
        goto LABEL_649;
      }

      v710 = v693 & 0x7FFFFFF8;
      v853 = (v1021[0] + 16);
      v854 = &v1041;
      v855 = v710;
      do
      {
        v856 = vsubq_f32(*v854, *v853);
        v853[-1] = vsubq_f32(v854[-1], v853[-1]);
        *v853 = v856;
        v853 += 2;
        v854 += 2;
        v855 -= 8;
      }

      while (v855);
      if (v710 != v693)
      {
LABEL_649:
        v711 = v693 - v710;
        v712 = 4 * v710;
        v713 = &v709[v712];
        v714 = &v1040[v712];
        do
        {
          v715 = *v714++;
          *v713 = v715 - *v713;
          ++v713;
          --v711;
        }

        while (v711);
      }
    }
  }

  else
  {
    memset(v1060, 0, 17);
    if (HIDWORD(v1023) == 1)
    {
      v716 = v692;
    }

    else
    {
      v716 = HIDWORD(v1023);
    }

    LODWORD(v1060[3]) = 14;
    HIDWORD(v1060[3]) = v716;
    LODWORD(v1060[4]) = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1060, 28 * v716);
    v717 = HIDWORD(v1060[3]);
    if (v716 >= 1)
    {
      v718 = 0;
      v719 = v1021[0];
      v720 = v1060[0];
      v721 = 13;
      v722 = 13;
      do
      {
        v720[v718] = *&v1040[4 * v722 - 52] - v719[v721 - 13];
        v720[v718 + 1] = *&v1040[4 * v722 - 48] - v719[v721 - 12];
        v720[v718 + 2] = *&v1040[4 * v722 - 44] - v719[v721 - 11];
        v720[v718 + 3] = *&v1040[4 * v722 - 40] - v719[v721 - 10];
        v720[v718 + 4] = *&v1040[4 * v722 - 36] - v719[v721 - 9];
        v720[v718 + 5] = *&v1040[4 * v722 - 32] - v719[v721 - 8];
        v720[v718 + 6] = *&v1040[4 * v722 - 28] - v719[v721 - 7];
        v720[v718 + 7] = *&v1040[4 * v722 - 24] - v719[v721 - 6];
        v720[v718 + 8] = *&v1040[4 * v722 - 20] - v719[v721 - 5];
        v720[v718 + 9] = *&v1040[4 * v722 - 16] - v719[v721 - 4];
        v720[v718 + 10] = *&v1040[4 * v722 - 12] - v719[v721 - 3];
        v720[v718 + 11] = *&v1040[4 * v722 - 8] - v719[v721 - 2];
        v720[v718 + 12] = *&v1040[4 * v722 - 4] - v719[v721 - 1];
        v720[v718 + 13] = *&v1040[4 * v722] - v719[v721];
        v722 += 14 * (v692 != 1);
        v721 += 14 * (v708 != 1);
        v718 += 14;
      }

      while (14 * v716 != v718);
      v723 = 0;
      v724 = 14 * v692 + 13;
      v725 = 14 * v708 + 13;
      v726 = 14 * v717;
      do
      {
        v720[v726 + v723] = *&v1040[4 * v724 - 52] - v719[v725 - 13];
        v720[v726 + 1 + v723] = *&v1040[4 * v724 - 48] - v719[v725 - 12];
        v720[v726 + 2 + v723] = *&v1040[4 * v724 - 44] - v719[v725 - 11];
        v720[v726 + 3 + v723] = *&v1040[4 * v724 - 40] - v719[v725 - 10];
        v720[v726 + 4 + v723] = *&v1040[4 * v724 - 36] - v719[v725 - 9];
        v720[v726 + 5 + v723] = *&v1040[4 * v724 - 32] - v719[v725 - 8];
        v720[v726 + 6 + v723] = *&v1040[4 * v724 - 28] - v719[v725 - 7];
        v720[v726 + 7 + v723] = *&v1040[4 * v724 - 24] - v719[v725 - 6];
        v720[v726 + 8 + v723] = *&v1040[4 * v724 - 20] - v719[v725 - 5];
        v720[v726 + 9 + v723] = *&v1040[4 * v724 - 16] - v719[v725 - 4];
        v720[v726 + 10 + v723] = *&v1040[4 * v724 - 12] - v719[v725 - 3];
        v720[v726 + 11 + v723] = *&v1040[4 * v724 - 8] - v719[v725 - 2];
        v720[v726 + 12 + v723] = *&v1040[4 * v724 - 4] - v719[v725 - 1];
        v720[v726 + 13 + v723] = *&v1040[4 * v724] - v719[v725];
        v724 += 14 * (v692 != 1);
        v725 += 14 * (v708 != 1);
        v723 += 14;
      }

      while (14 * v716 != v723);
    }

    LODWORD(v1023) = 14;
    HIDWORD(v1023) = v717;
    v1024 = 2;
    coder::array_base<float,int,2>::ensureCapacity(v1021, 28 * v717);
    v727 = HIDWORD(v1060[3]);
    v728 = v1060[0];
    if (SHIDWORD(v1060[3]) >= 1)
    {
      v729 = v1021[0];
      v730 = HIDWORD(v1023);
      v731 = v1021[0] + 28;
      v732 = v1060[0] + 28;
      v733 = HIDWORD(v1060[3]);
      do
      {
        *(v731 - 7) = *(v732 - 7);
        *(v731 - 6) = *(v732 - 6);
        *(v731 - 5) = *(v732 - 5);
        *(v731 - 4) = *(v732 - 4);
        *(v731 - 3) = *(v732 - 3);
        *(v731 - 2) = *(v732 - 2);
        *(v731 - 1) = *(v732 - 1);
        *v731 = *v732;
        v731[1] = v732[1];
        v731[2] = v732[2];
        v731[3] = v732[3];
        v731[4] = v732[4];
        v731[5] = v732[5];
        v731[6] = v732[6];
        v731 += 14;
        v732 += 14;
        --v733;
      }

      while (v733);
      v734 = &v729[56 * v730 + 28];
      v735 = &v728[56 * v727 + 28];
      do
      {
        *(v734 - 7) = *(v735 - 7);
        *(v734 - 6) = *(v735 - 6);
        *(v734 - 5) = *(v735 - 5);
        *(v734 - 4) = *(v735 - 4);
        *(v734 - 3) = *(v735 - 3);
        *(v734 - 2) = *(v735 - 2);
        *(v734 - 1) = *(v735 - 1);
        *v734 = *v735;
        *(v734 + 1) = *(v735 + 1);
        *(v734 + 2) = *(v735 + 2);
        *(v734 + 3) = *(v735 + 3);
        *(v734 + 4) = *(v735 + 4);
        *(v734 + 5) = *(v735 + 5);
        *(v734 + 6) = *(v735 + 6);
        v734 += 56;
        v735 += 56;
        --v727;
      }

      while (v727);
    }

    if (LOBYTE(v1060[2]) == 1 && v728)
    {
      MEMORY[0x22AA53170](v728, 0x1000C8052888210);
    }
  }

  LODWORD(v1019) = 14;
  HIDWORD(v1019) = HIDWORD(v1023);
  v1020 = 2;
  v736 = (28 * HIDWORD(v1023));
  result = coder::array_base<float,int,2>::ensureCapacity(v1017, 28 * HIDWORD(v1023));
  if (v736 >= 1)
  {
    v739 = 0;
    v740 = v1021[0];
    v741 = v1017[0];
    if (v736 < 8)
    {
      goto LABEL_674;
    }

    if (v1017[0] - v1021[0] < 0x20)
    {
      goto LABEL_674;
    }

    v739 = v736 & 0x7FFFFFF8;
    v742 = (v1017[0] + 16);
    v743 = (v1021[0] + 16);
    v744 = v739;
    do
    {
      v738 = vmulq_f32(*v743, *v743);
      v742[-1] = vmulq_f32(v743[-1], v743[-1]);
      *v742 = v738;
      v742 += 2;
      v743 += 2;
      v744 -= 8;
    }

    while (v744);
    if (v739 != v736)
    {
LABEL_674:
      v745 = v736 - v739;
      v746 = 4 * v739;
      v747 = (v741 + v746);
      v748 = &v740[v746];
      do
      {
        v749 = *v748++;
        *v747++ = v749 * v749;
        --v745;
      }

      while (v745);
    }
  }

  v750 = HIDWORD(v1019);
  if (HIDWORD(v1019))
  {
    v751 = (14 * HIDWORD(v1019));
    LODWORD(v1008) = 14;
    HIDWORD(v1008) = HIDWORD(v1019);
    result = coder::array_base<float,int,2>::ensureCapacity(&__src, 14 * HIDWORD(v1019));
    if (v750 >= 1)
    {
      v752 = v1017[0];
      v753 = __src;
      if (__src - v1017[0] <= 0x1F)
      {
        v754 = 0;
        goto LABEL_686;
      }

      v754 = v751 & 0x7FFFFFF8;
      v755 = (__src + 16);
      v756 = (v1017[0] + 16);
      v757 = v754;
      do
      {
        v738 = *v756;
        v755[-1] = v756[-1];
        *v755 = v738;
        v755 += 2;
        v756 += 2;
        v757 -= 8;
      }

      while (v757);
      if (v754 != v751)
      {
LABEL_686:
        v758 = v751 - v754;
        v759 = 4 * v754;
        v760 = &v753->i32[v754];
        v761 = (v752 + v759);
        do
        {
          v762 = *v761++;
          *v760++ = v762;
          --v758;
        }

        while (v758);
      }

      v763 = 4 * v751;
      if (v753 < v752 + 8 * v751 && v752 + v763 < v753 + v763)
      {
        v764 = 0;
        goto LABEL_694;
      }

      v764 = v751 & 0x7FFFFFF8;
      v765 = (v763 + v752 + 16);
      v766 = v753 + 1;
      v767 = v764;
      do
      {
        v738 = vaddq_f32(*v765, *v766);
        v766[-1] = vaddq_f32(v765[-1], v766[-1]);
        *v766 = v738;
        v765 += 2;
        v766 += 2;
        v767 -= 8;
      }

      while (v767);
      if (v764 != v751)
      {
LABEL_694:
        v768 = v751 - v764;
        v769 = v764;
        v770 = (v752 + v769 * 4 + v763);
        v771 = &v753->f32[v769];
        do
        {
          v772 = *v770++;
          WORD1(v738.f64[0]) = HIWORD(v772);
          *v771 = v772 + *v771;
          ++v771;
          --v768;
        }

        while (v768);
      }
    }
  }

  else
  {
    v1008 = 14;
    if (v1006 < 0)
    {
      operator new[]();
    }

    LODWORD(v1006) = 0;
  }

  v773 = HIDWORD(v1008);
  v774 = 16 * HIDWORD(v1008);
  if (SHIDWORD(v1008) >= 1)
  {
    v775 = 14 * HIDWORD(v1008);
    v776 = __src;
    if (14 * HIDWORD(v1008) <= 1)
    {
      v777 = 1;
    }

    else
    {
      v777 = v775;
    }

    if (v775 < 8)
    {
      v778 = 0;
      goto LABEL_705;
    }

    v778 = v777 & 0x7FFFFFF8;
    v779 = (__src + 16);
    v780 = v778;
    do
    {
      v738 = vsqrtq_f32(*v779);
      v779[-1] = vsqrtq_f32(v779[-1]);
      *v779 = v738;
      v779 += 2;
      v780 -= 8;
    }

    while (v780);
    if (v778 != v777)
    {
LABEL_705:
      v781 = v777 - v778;
      v782 = &v776[4 * v778];
      do
      {
        *v782 = sqrtf(*v782);
        ++v782;
        --v781;
      }

      while (v781);
    }
  }

  v978 = v774;
  v982 = v773;
  if (v1021[0])
  {
    operator new[]();
  }

  memset(v1060, 0, 17);
  memset(v1033, 0, 17);
  if (!v736)
  {
    v783 = 0;
    v785 = *&rtNaNF;
    goto LABEL_787;
  }

  LODWORD(v1060[3]) = v736;
  coder::array_base<float,int,2>::ensureCapacity(v1060, v736);
  if (v736 >= 1)
  {
    bzero(v1060[0], 4 * v736);
  }

  *&v1033[24] = v736;
  result = coder::array_base<float,int,2>::ensureCapacity(v1033, v736);
  v783 = v1060[0];
  if (v736 < 2)
  {
    goto LABEL_770;
  }

  if (v736 - 2 >= 6)
  {
    v786 = ((v736 - 2) >> 1) + 1;
    v787 = xmmword_2247A5170;
    *&v738.f64[0] = 0x100000001;
    *&v738.f64[1] = 0x100000001;
    v788.i64[0] = 0x800000008;
    v788.i64[1] = 0x800000008;
    v789 = 0;
    v790 = v1060[0];
    v791 = v786 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v1063 = vld2q_f32(v789);
      v789 += 8;
      v1063.val[0] = vbicq_s8(vceqq_f32(v1063.val[1], v1063.val[1]), vcgeq_f32(v1063.val[1], v1063.val[0]));
      v1064.val[0] = vsubq_s32(v787, v1063.val[0]);
      v1064.val[1] = vaddq_s32(v787, vandq_s8(vmovl_u16(vmvn_s8(vmovn_s32(v1063.val[0]))), v738));
      vst2q_f32(v790, v1064);
      v790 += 8;
      v787 = vaddq_s32(v787, v788);
      v791 -= 4;
    }

    while (v791);
    if (v786 != (v786 & 0x7FFFFFFFFFFFFFFCLL))
    {
      v784 = (2 * (v786 & 0x7FFFFFFFFFFFFFFCLL)) | 1;
      goto LABEL_720;
    }
  }

  else
  {
    v784 = 1;
LABEL_720:
    v792 = &v783[v784];
    v793 = (4 * v784);
    do
    {
      *v738.f64 = *v793;
      v794 = *(v793 - 1) > *v793;
      v795 = v794;
      if (*(v793 - 1) > *v793)
      {
        v794 = 1;
      }

      *(v792 - 1) = v794 + v784;
      *v792 = v784 + !v795;
      v784 += 2;
      v792 += 2;
      v793 += 2;
    }

    while (v784 < v736);
  }

  v796 = v783 - 1;
  v797 = *v1033;
  v798 = v783 - *v1033 - 4;
  v799 = *v1033 - v783 + 4;
  v800 = *v1033 - v783 + 8;
  v801 = *v1033 + 20;
  v802 = v783 + 3;
  v803 = *v1033 + 4;
  result = *v1033 + 16;
  v997 = *v1033 + 16;
  v804 = 2;
  while (2)
  {
    v805 = 2 * v804;
    if (v804 >= v736)
    {
      goto LABEL_725;
    }

    v806 = v804 | 1;
    v807 = 1;
    while (2)
    {
      v808 = v807 + v805;
      if (v807 + v805 >= (v736 | 1))
      {
        v808 = v736 | 1;
      }

      v809 = (v808 - v807);
      if (v809 < 1)
      {
        goto LABEL_728;
      }

      v810 = 0;
      v811 = (v806 - 1);
      v812 = v808 - 2;
      LODWORD(v813) = v807;
      while (2)
      {
        v815 = v783[v811];
        v816 = v796[v813];
        LODWORD(v738.f64[0]) = *(4 * v816 - 4);
        v817 = v810;
        if (*v738.f64 > *(4 * v815 - 4))
        {
          *(v797 + 4 * v810) = v815;
          v814 = (v811 + 1);
          result = (v811 + 2);
          if (result != v808 || v813 >= v806)
          {
            goto LABEL_735;
          }

          v813 = v813;
          v826 = v806 - v813;
          if (v826 >= 8)
          {
            v827 = 4 * v810;
            result = v800 + v827 - 4 * v813;
            if (result >= 0x20)
            {
              v828 = v826 & 0xFFFFFFFFFFFFFFF8;
              v817 += v826 & 0xFFFFFFFFFFFFFFF8;
              v829 = (v801 + v827);
              v830 = &v802[v813];
              v831 = v826 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v738 = *v830;
                v829[-1] = v830[-1];
                *v829 = v738;
                v829 += 2;
                v830 += 2;
                v831 -= 8;
              }

              while (v831);
              if (v826 == v828)
              {
                goto LABEL_758;
              }

              v813 = v828 + v813;
            }
          }

          v832 = v806 - v813;
          v833 = &v796[v813];
          v834 = v817;
          do
          {
            LODWORD(v817) = v834 + 1;
            v835 = *v833++;
            result = v835;
            *(v803 + 4 * v834++) = v835;
            --v832;
          }

          while (v832);
LABEL_758:
          v810 = v817;
          LODWORD(v813) = v806;
          goto LABEL_735;
        }

        *(v797 + 4 * v810) = v816;
        LODWORD(v813) = v813 + 1;
        v818 = v811 + 1;
        if (v811 + 1 < v808 && v813 == v806)
        {
          v819 = (v812 - v811);
          if (v819 < 7)
          {
            goto LABEL_746;
          }

          if (v812 < v811)
          {
            goto LABEL_746;
          }

          v820 = 4 * v810;
          if ((v799 + v820 - 4 * v811) < 0x20)
          {
            goto LABEL_746;
          }

          v821 = v819 + 1;
          v822 = (v819 + 1) & 0x1FFFFFFF8;
          v817 += v822;
          v823 = (v801 + v820);
          v824 = v811;
          v825 = v822;
          do
          {
            result = &v783[v824];
            v738 = *(result + 16);
            v823[-1] = *result;
            *v823 = v738;
            v823 += 2;
            v824 += 8;
            v825 -= 8;
          }

          while (v825);
          v811 = (v811 + v822);
          if (v821 != v822)
          {
            v818 += v822;
            do
            {
LABEL_746:
              *(v803 + 4 * v817++) = v783[v811];
              LODWORD(v811) = v818++;
            }

            while (v808 != v818);
            v811 = (v818 - 1);
          }

          v810 = v817;
          LODWORD(v813) = v806;
        }

        v814 = v811;
LABEL_735:
        ++v810;
        v811 = v814;
        if (v810 < v809)
        {
          continue;
        }

        break;
      }

      v836 = v807;
      if (v809 <= 7 || (v837 = v807, (v798 + v837 * 4) < 0x20))
      {
        v838 = 0;
        goto LABEL_762;
      }

      v838 = v809 & 0x7FFFFFF8;
      v844 = &v802[v837];
      v845 = v997;
      v846 = v838;
      do
      {
        v738 = *v845;
        v844[-1] = v845[-1];
        *v844 = v738;
        v844 += 2;
        v845 += 2;
        v846 -= 8;
      }

      while (v846);
      if (v838 != v809)
      {
LABEL_762:
        v839 = v838 - v809;
        v840 = v838;
        v841 = &v796[v836 + v840];
        v842 = (v797 + v840 * 4);
        do
        {
          v843 = *v842++;
          result = v843;
          *v841++ = v843;
          _CF = __CFADD__(v839++, 1);
        }

        while (!_CF);
      }

LABEL_728:
      v806 = v808 + v804;
      v807 = v808;
      if (v808 + v804 <= v736)
      {
        continue;
      }

      break;
    }

LABEL_725:
    v804 *= 2;
    if (v805 < v736)
    {
      continue;
    }

    break;
  }

LABEL_770:
  if (v736 < 1)
  {
    v785 = *&rtNaNF;
  }

  else
  {
    if (v736 == 1)
    {
      v847 = *v783;
      goto LABEL_786;
    }

    v738.f64[0] = 0.99;
    v848 = v736 * 0.99;
    v849 = llround(v848);
    if (v736 <= v849)
    {
      v847 = v783[(v736 & 0x7FFFFFFF) - 1];
LABEL_786:
      v785 = *(4 * v847 - 4);
    }

    else
    {
      v850 = &v783[v849];
      v851 = v848 - v849;
      v738.f64[0] = 0.5;
      v852 = v851 + 0.5;
      *&v851 = 0.5 - v851;
      LODWORD(v738.f64[0]) = *(4 * *v850 - 4);
      v785 = (*(4 * *(v850 - 1) - 4) * *&v851) + (*v738.f64 * v852);
    }
  }

LABEL_787:
  if (v1033[16] == 1)
  {
    result = *v1033;
    if (*v1033)
    {
      result = MEMORY[0x22AA53170](*v1033, 0x1000C8052888210);
    }
  }

  if (LOBYTE(v1060[2]) == 1 && v783 != 0)
  {
    result = MEMORY[0x22AA53170](v783, 0x1000C8052888210);
  }

  *v970 = v785;
  v858 = v978 - 2 * v982;
  if (v858 >= 1)
  {
    v859 = 16;
    if (v982 >= 2)
    {
      do
      {
        if (v859 <= 0x3FFFFFFF)
        {
          v859 *= 2;
        }

        else
        {
          v859 = 0x7FFFFFFF;
        }
      }

      while (v859 < v858);
    }

    operator new[]();
  }

  if (v982 >= 1)
  {
    v860 = 0;
    do
    {
      LODWORD(v738.f64[0]) = *(__src + v860);
      *v860++ = *v738.f64 > 5.0;
    }

    while (v860 != 1);
  }

  if (v858)
  {
    v861 = MEMORY[0];
  }

  else
  {
    v861 = 0;
  }

  v862 = v861;
  *(v970 + 8) = v861;
  if (!HIDWORD(v1001))
  {
    v863 = 0.0;
    goto LABEL_831;
  }

  if (SHIDWORD(v1001) >= 1025)
  {
    v866 = WORD2(v1001) & 0x3FF;
    if ((v1001 & 0x3FF00000000) != 0)
    {
      v867 = (HIDWORD(v1001) >> 10) + 1;
    }

    else
    {
      v866 = 1024;
      v867 = HIDWORD(v1001) >> 10;
    }

    v864 = v999[0] - 2;
    v863 = *v999[0];
    v869 = 1023;
    v865 = 1025;
    goto LABEL_818;
  }

  LOWORD(v862) = *v999[0];
  v863 = *&v862;
  if (SHIDWORD(v1001) < 2)
  {
    goto LABEL_831;
  }

  v864 = v999[0] - 2;
  v865 = HIDWORD(v1001) + 1;
  if (HIDWORD(v1001) >= 5)
  {
    v866 = 0;
    v869 = HIDWORD(v1001) - 1;
    v867 = 1;
    if (HIDWORD(v1001) < 0x11)
    {
      v870 = 0;
LABEL_825:
      v895 = v869 & 0xFFFFFFFFFFFFFFFCLL;
      v738 = 0uLL;
      v896 = *&v863;
      v897 = v870 - (v869 & 0xFFFFFFFFFFFFFFFCLL);
      v898 = 2 * v870 + 4;
      do
      {
        v899 = vmovl_u16(*(v864 + v898));
        v900.i64[0] = v899.u32[0];
        v900.i64[1] = v899.u32[1];
        v901 = vcvtq_f64_u64(v900);
        v900.i64[0] = v899.u32[2];
        v900.i64[1] = v899.u32[3];
        v738 = vaddq_f64(v738, vcvtq_f64_u64(v900));
        v896 = vaddq_f64(v896, v901);
        v898 += 8;
        v897 += 4;
      }

      while (v897);
      v863 = vaddvq_f64(vaddq_f64(v896, v738));
      if (v869 != v895)
      {
        v868 = v895 | 2;
        goto LABEL_829;
      }

      goto LABEL_830;
    }

LABEL_818:
    v870 = v869 & 0xFFFFFFFFFFFFFFF0;
    v871 = 0uLL;
    v872 = *&v863;
    v873 = (v999[0] + 18);
    v874 = v869 & 0xFFFFFFFFFFFFFFF0;
    v875 = 0uLL;
    v876 = 0uLL;
    v877 = 0uLL;
    v878 = 0uLL;
    v879 = 0uLL;
    v880 = 0uLL;
    do
    {
      v881 = *v873[-2].i8;
      v882 = vmovl_u16(*v881.i8);
      v883.i64[0] = v882.u32[0];
      v883.i64[1] = v882.u32[1];
      v884 = vcvtq_f64_u64(v883);
      v883.i64[0] = v882.u32[2];
      v883.i64[1] = v882.u32[3];
      v885 = vcvtq_f64_u64(v883);
      v886 = vmovl_high_u16(v881);
      v883.i64[0] = v886.u32[0];
      v883.i64[1] = v886.u32[1];
      v887 = vcvtq_f64_u64(v883);
      v883.i64[0] = v886.u32[2];
      v883.i64[1] = v886.u32[3];
      v888 = vcvtq_f64_u64(v883);
      v889 = vmovl_u16(*v873);
      v883.i64[0] = v889.u32[0];
      v883.i64[1] = v889.u32[1];
      v890 = vcvtq_f64_u64(v883);
      v883.i64[0] = v889.u32[2];
      v883.i64[1] = v889.u32[3];
      v891 = vcvtq_f64_u64(v883);
      v892 = vmovl_high_u16(*v873->i8);
      v883.i64[0] = v892.u32[0];
      v883.i64[1] = v892.u32[1];
      v893 = vcvtq_f64_u64(v883);
      v883.i64[0] = v892.u32[2];
      v883.i64[1] = v892.u32[3];
      v876 = vaddq_f64(v876, v888);
      v875 = vaddq_f64(v875, v887);
      v871 = vaddq_f64(v871, v885);
      v872 = vaddq_f64(v872, v884);
      v880 = vaddq_f64(v880, vcvtq_f64_u64(v883));
      v879 = vaddq_f64(v879, v893);
      v878 = vaddq_f64(v878, v891);
      v877 = vaddq_f64(v877, v890);
      v873 += 4;
      v874 -= 16;
    }

    while (v874);
    v894 = vaddq_f64(vaddq_f64(v877, v872), vaddq_f64(v879, v875));
    v738 = vaddq_f64(vaddq_f64(v878, v871), vaddq_f64(v880, v876));
    v863 = vaddvq_f64(vaddq_f64(v894, v738));
    if (v869 == v870)
    {
      goto LABEL_830;
    }

    if ((v869 & 0xC) == 0)
    {
      v868 = v870 | 2;
      goto LABEL_829;
    }

    goto LABEL_825;
  }

  v866 = 0;
  v867 = 1;
  v868 = 2;
  do
  {
LABEL_829:
    LOWORD(v738.f64[0]) = *(v864 + 2 * v868);
    v738.f64[0] = *&v738.f64[0];
    v863 = v863 + v738.f64[0];
    ++v868;
  }

  while (v865 != v868);
LABEL_830:
  if (v867 >= 2)
  {
    v918 = 2;
    v919 = 1024;
    do
    {
      result = ((v918 << 10) - 1024);
      LOWORD(v738.f64[0]) = *(v999[0] + 2 * result);
      v738.f64[0] = *&v738.f64[0];
      if (v918 == v867)
      {
        v920 = v866;
      }

      else
      {
        v920 = 1024;
      }

      if (v920 < 2)
      {
        goto LABEL_872;
      }

      result = 2 * v919;
      v921 = (v920 + 1);
      v922 = v921 - 2;
      if ((v921 - 2) <= 3)
      {
        v923 = 2;
        goto LABEL_890;
      }

      if (v922 >= 0x10)
      {
        v925 = (v864 + 20 + result);
        v926 = 0uLL;
        v927 = *&v738.f64[0];
        v924 = v922 & 0xFFFFFFFFFFFFFFF0;
        v928 = v922 & 0xFFFFFFFFFFFFFFF0;
        v738 = 0uLL;
        v929 = 0uLL;
        v930 = 0uLL;
        v931 = 0uLL;
        v932 = 0uLL;
        v933 = 0uLL;
        do
        {
          v934 = *v925[-2].i8;
          v935 = vmovl_u16(*v934.i8);
          v936.i64[0] = v935.u32[0];
          v936.i64[1] = v935.u32[1];
          v937 = vcvtq_f64_u64(v936);
          v936.i64[0] = v935.u32[2];
          v936.i64[1] = v935.u32[3];
          v938 = vcvtq_f64_u64(v936);
          v939 = vmovl_high_u16(v934);
          v936.i64[0] = v939.u32[0];
          v936.i64[1] = v939.u32[1];
          v940 = vcvtq_f64_u64(v936);
          v936.i64[0] = v939.u32[2];
          v936.i64[1] = v939.u32[3];
          v941 = vcvtq_f64_u64(v936);
          v942 = vmovl_u16(*v925);
          v936.i64[0] = v942.u32[0];
          v936.i64[1] = v942.u32[1];
          v943 = vcvtq_f64_u64(v936);
          v936.i64[0] = v942.u32[2];
          v936.i64[1] = v942.u32[3];
          v944 = vcvtq_f64_u64(v936);
          v945 = vmovl_high_u16(*v925->i8);
          v936.i64[0] = v945.u32[0];
          v936.i64[1] = v945.u32[1];
          v946 = vcvtq_f64_u64(v936);
          v936.i64[0] = v945.u32[2];
          v936.i64[1] = v945.u32[3];
          v929 = vaddq_f64(v929, v941);
          v738 = vaddq_f64(v738, v940);
          v926 = vaddq_f64(v926, v938);
          v927 = vaddq_f64(v927, v937);
          v933 = vaddq_f64(v933, vcvtq_f64_u64(v936));
          v932 = vaddq_f64(v932, v946);
          v931 = vaddq_f64(v931, v944);
          v930 = vaddq_f64(v930, v943);
          v925 += 4;
          v928 -= 16;
        }

        while (v928);
        v738.f64[0] = vaddvq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v930, v927), vaddq_f64(v932, v738)), vaddq_f64(vaddq_f64(v931, v926), vaddq_f64(v933, v929))));
        if (v922 == v924)
        {
          goto LABEL_872;
        }

        if ((v922 & 0xC) == 0)
        {
          v923 = v924 | 2;
          goto LABEL_890;
        }
      }

      else
      {
        v924 = 0;
      }

      v947 = v922 & 0xFFFFFFFFFFFFFFFCLL;
      v948 = 0uLL;
      v949 = *&v738.f64[0];
      v950 = v924 - (v922 & 0xFFFFFFFFFFFFFFFCLL);
      v951 = (v864 + 4 + result + 2 * v924);
      do
      {
        v952 = *v951++;
        v953 = vmovl_u16(v952);
        v954.i64[0] = v953.u32[0];
        v954.i64[1] = v953.u32[1];
        v955 = vcvtq_f64_u64(v954);
        v954.i64[0] = v953.u32[2];
        v954.i64[1] = v953.u32[3];
        v948 = vaddq_f64(v948, vcvtq_f64_u64(v954));
        v949 = vaddq_f64(v949, v955);
        v950 += 4;
      }

      while (v950);
      v738.f64[0] = vaddvq_f64(vaddq_f64(v949, v948));
      if (v922 == v947)
      {
        goto LABEL_872;
      }

      v923 = v947 | 2;
LABEL_890:
      v956 = v921 - v923;
      result += v864 + 2 * v923;
      do
      {
        v957 = *result;
        result += 2;
        v738.f64[0] = v738.f64[0] + v957;
        --v956;
      }

      while (v956);
LABEL_872:
      v863 = v738.f64[0] + v863;
      ++v918;
      v919 += 1024;
    }

    while (v918 != v867 + 1);
  }

LABEL_831:
  *(v970 + 16) = v863;
  *(v970 + 24) = v477;
  *(v970 + 32) = vcvtq_f64_f32(*&v1035[0]);
  *(v970 + 48) = *(v1035 + 2);
  *(v970 + 56) = vcvtq_f64_f32(vmul_f32(v1034, vdup_n_s32(0x3A83126Fu)));
  if (v1000 == 1)
  {
    result = v999[0];
    if (v999[0])
    {
      result = MEMORY[0x22AA53170](v999[0], 0x1000C80BDFB0063);
    }
  }

  if (v1003 == 1)
  {
    result = v1002[0];
    if (v1002[0])
    {
      result = MEMORY[0x22AA53170](v1002[0], 0x1000C8052888210);
    }
  }

  if (v1007 == 1)
  {
    result = __src;
    if (__src)
    {
      result = MEMORY[0x22AA53170](__src, 0x1000C8052888210);
    }
  }

  if (v1010 == 1)
  {
    result = v1009[0];
    if (v1009[0])
    {
      result = MEMORY[0x22AA53170](v1009[0], 0x1000C8052888210);
    }
  }

  if (v1014 == 1)
  {
    result = v1013[0];
    if (v1013[0])
    {
      result = MEMORY[0x22AA53170](v1013[0], 0x1000C8052888210);
    }
  }

  if (v1018 == 1)
  {
    result = v1017[0];
    if (v1017[0])
    {
      result = MEMORY[0x22AA53170](v1017[0], 0x1000C8052888210);
    }
  }

  if (v1022 == 1)
  {
    result = v1021[0];
    if (v1021[0])
    {
      result = MEMORY[0x22AA53170](v1021[0], 0x1000C8052888210);
    }
  }

  if (v1027 == 1 && v1025)
  {
    v902 = v1025 - 16;
    v903 = *(v1025 - 8);
    if (v903)
    {
      v904 = 32 * v903;
      v905 = v904 + v1025 - 16;
      v906 = -v904;
      v907 = v905;
      do
      {
        v908 = *v907;
        v907 -= 32;
        if (v908 == 1)
        {
          v909 = *(v905 - 16);
          if (v909)
          {
            MEMORY[0x22AA53170](v909, 0x1000C8052888210);
          }
        }

        v905 = v907;
        v906 += 32;
      }

      while (v906);
    }

    result = MEMORY[0x22AA53170](v902, 0x1080C8075AFF985);
  }

  if (v1031 == 1 && v1029)
  {
    v910 = v1029 - 16;
    v911 = *(v1029 - 8);
    if (v911)
    {
      v912 = 32 * v911;
      v913 = v912 + v1029 - 16;
      v914 = -v912;
      v915 = v913;
      do
      {
        v916 = *v915;
        v915 -= 32;
        if (v916 == 1)
        {
          v917 = *(v913 - 16);
          if (v917)
          {
            MEMORY[0x22AA53170](v917, 0x1000C8052888210);
          }
        }

        v913 = v915;
        v914 += 32;
      }

      while (v914);
    }

    return MEMORY[0x22AA53170](v910, 0x1080C808A25AF7CLL);
  }

  return result;
}

void sub_22477DB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x18B0]) == 1 && STACK[0x18A0])
  {
    MEMORY[0x22AA53170](STACK[0x18A0], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x18D0]) == 1 && STACK[0x18C0])
  {
    MEMORY[0x22AA53170](STACK[0x18C0], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x18F0]) == 1 && STACK[0x18E0])
  {
    MEMORY[0x22AA53170](STACK[0x18E0], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x280]) == 1 && STACK[0x270])
  {
    MEMORY[0x22AA53170](STACK[0x270], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x1918]) == 1 && STACK[0x1908])
  {
    MEMORY[0x22AA53170]();
  }

  if (a49 == 1 && a47)
  {
    MEMORY[0x22AA53170](a47, 0x1000C80BDFB0063);
  }

  if (a53 == 1 && a51)
  {
    MEMORY[0x22AA53170](a51, 0x1000C8052888210);
  }

  if (a57 == 1 && a55)
  {
    MEMORY[0x22AA53170](a55, 0x1000C8052888210);
  }

  if (a61 == 1 && a59)
  {
    MEMORY[0x22AA53170](a59, 0x1000C8052888210);
  }

  if (a66 == 1 && a64)
  {
    MEMORY[0x22AA53170](a64, 0x1000C8052888210);
  }

  if (a71 == 1 && a69)
  {
    MEMORY[0x22AA53170](a69, 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x218]) == 1)
  {
    if (STACK[0x208])
    {
      MEMORY[0x22AA53170](STACK[0x208], 0x1000C8052888210);
    }
  }

  coder::array<cell_wrap_1,2>::~array(&STACK[0x230]);
  coder::array<cell_wrap_0,2>::~array(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t coder::detail::data_ptr<cell_wrap_0,int>::reserve(uint64_t result, int a2)
{
  if (*(result + 12) < a2)
  {
    operator new[]();
  }

  return result;
}

uint64_t coder::detail::data_ptr<cell_wrap_1,int>::reserve(uint64_t result, int a2)
{
  if (*(result + 12) < a2)
  {
    operator new[]();
  }

  return result;
}

void *findSpotsPeaksDan(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v1417 = v5;
  v1367 = v6;
  v7 = v10.f32[0];
  v8 = v4;
  v1526 = *MEMORY[0x277D85DE8];
  v1453[0] = 0;
  v1453[1] = 0;
  v1454 = 0;
  v1455 = 0;
  v1450[0] = 0;
  v1450[1] = 0;
  v1451 = 0;
  v1452 = 0;
  v1447[0] = 0;
  v1447[1] = 0;
  v1448 = 0;
  v1449 = 0;
  v1444[1] = 0;
  v1444[0] = 0;
  v1445 = 0;
  v1446 = 0;
  v1441[1] = 0;
  v1441[0] = 0;
  v1442 = 0;
  v1443 = 0;
  v1438[1] = 0;
  v1438[0] = 0;
  v1439 = 0;
  v1440 = 0;
  v1435[1] = 0;
  v1435[0] = 0;
  v1436 = 0;
  *v10.i64 = v9 * 14.0;
  v1437 = 0;
  v11 = (v9 * 14.0);
  v12 = 4 * v11;
  if (v11 < 1)
  {
LABEL_29:
    v35 = v11;
    v36 = v11 - 2;
    if (v11 < 2)
    {
      v36 = 0;
    }

    v37 = (v36 + 1) & 0xFFFFFFFC;
    while (1)
    {
      v38 = *(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + v35++);
      if (v11)
      {
        if (v1474 < v38)
        {
          if (v11 >= 2)
          {
            v39 = v11;
            v40 = (&v1468 + v12 - 20);
            v41 = (&v1474 + v12 - 20);
            v42 = (v36 + 1) & 0xFFFFFFFC;
            if (v36 < 3)
            {
              goto LABEL_40;
            }

            do
            {
              *(v40 + 4) = *v40;
              *(v41 + 4) = *v41;
              --v41;
              --v40;
              v42 -= 4;
            }

            while (v42);
            v39 = v11 - v37;
            if (v36 + 1 != v37)
            {
LABEL_40:
              v43 = v39 + 1;
              v44 = 4 * v39;
              v45 = &v1473[4 * v39 + 12];
              v46 = &v1467[v44];
              v47 = &v1467[v44];
              v48 = v45;
              do
              {
                v50 = *(v47 - 1);
                v47 -= 4;
                v49 = v50;
                v51 = *--v48;
                *v46 = v49;
                *v45 = v51;
                --v43;
                v46 = v47;
                v45 = v48;
              }

              while (v43 > 2);
            }
          }

          v1474 = v38;
          v1468 = v35;
          goto LABEL_33;
        }

        if (v11 >= 2 && *&v1473[4 * v11 + 12] < v38)
        {
          v52 = 1;
          v53 = v11;
          while ((v53 - v52) >= 2)
          {
            if (*&v1473[4 * v52 + 12 + 4 * ((v53 - v52) >> 1)] < v38)
            {
              v53 = v52 + ((v53 - v52) >> 1);
            }

            else
            {
              v52 += (v53 - v52) >> 1;
            }

            if (v52 >= v53)
            {
              if (v52 >= v11)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            }
          }

          v52 = v53;
          if (v53 >= v11)
          {
            goto LABEL_61;
          }

LABEL_54:
          v54 = v11 - v52;
          v55 = v11;
          if (v54 < 4)
          {
LABEL_59:
            v60 = &v1467[4 * v55];
            v61 = &v1473[4 * v55 + 12];
            v62 = v61;
            v63 = v60;
            do
            {
              v64 = *--v62;
              --v55;
              *v61 = v64;
              v65 = *--v63;
              *v60 = v65;
              v61 = v62;
              v60 = v63;
            }

            while (v55 > v52);
          }

          else
          {
            v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            v57 = (&v1474 + v12 - 20);
            v58 = (&v1468 + v12 - 20);
            v59 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              *(v57 + 4) = *v57;
              *(v58 + 4) = *v58;
              --v58;
              --v57;
              v59 -= 4;
            }

            while (v59);
            if (v54 != v56)
            {
              v55 = v11 - v56;
              goto LABEL_59;
            }
          }

LABEL_61:
          v66 = 4 * v52 - 4;
          *(&v1474 + v66) = v38;
          *(&v1468 + v66) = v35;
        }
      }

      else
      {
        v1468 = v35;
        v1474 = v38;
      }

LABEL_33:
      if (v35 == 9072)
      {
        goto LABEL_62;
      }
    }
  }

  bzero(&v1468, 4 * v11);
  v1433.i64[0] = 4 * v11;
  bzero(&v1474, 4 * v11);
  v13 = 0;
  v14 = &v1466;
  v15 = v1473;
  __n[0] = v1467;
  v16 = 1;
  do
  {
    v17 = v13++;
    v18 = 4 * v17;
    v19 = *(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + v17);
    if (!v17)
    {
      v1468 = 1;
      v1474 = v19;
      goto LABEL_4;
    }

    if (v1474 < v19)
    {
      memmove(&v1469, &v1468, 4 * v17);
      memmove(&v1475, &v1474, v18);
      v1474 = v19;
      v1468 = v13;
      goto LABEL_4;
    }

    if (v17 == 1 || *&v1473[4 * v17 + 12] >= v19)
    {
      *(&v1474 + v17) = v19;
      *(&v1468 + v17) = v13;
      goto LABEL_4;
    }

    v20 = 1;
    v21 = v17;
    while ((v21 - v20) >= 2)
    {
      if (*&v1473[4 * v20 + 12 + 4 * ((v21 - v20) >> 1)] < v19)
      {
        v21 = v20 + ((v21 - v20) >> 1);
      }

      else
      {
        v20 += (v21 - v20) >> 1;
      }

      if (v20 >= v21)
      {
        goto LABEL_19;
      }
    }

    v20 = v21;
LABEL_19:
    if (v17 >= v20)
    {
      v22 = v13 - v20;
      v23 = v13;
      if (v22 >= 4)
      {
        v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
        v25 = (v16 - v20) & 0xFFFFFFFFFFFFFFFCLL;
        v26 = v15;
        v27 = v14;
        do
        {
          *(v26 + 4) = *v26;
          v10 = *v27;
          *(v27 + 4) = *v27;
          v27 -= 2;
          --v26;
          v25 -= 4;
        }

        while (v25);
        if (v22 == v24)
        {
          goto LABEL_27;
        }

        v23 = v13 - v24;
      }

      v28 = (__n[0] + 4 * v23);
      v29 = &v1473[4 * v23 + 12];
      v30 = v29;
      v31 = v28;
      do
      {
        v32 = *--v30;
        --v23;
        *v29 = v32;
        v33 = *--v31;
        *v28 = v33;
        v29 = v30;
        v28 = v31;
      }

      while (v23 > v20);
    }

LABEL_27:
    v34 = 4 * v20 - 4;
    *(&v1474 + v34) = v19;
    *(&v1468 + v34) = v13;
LABEL_4:
    ++v16;
    v14 = (v14 + 4);
    v15 += 4;
  }

  while (v13 != v11);
  v12 = v1433.i64[0];
  if (v11 <= 9071)
  {
    goto LABEL_29;
  }

LABEL_62:
  v67 = 0;
  v68 = (v8 + 65);
  v10.f32[0] = *(&v1474 + v11 - 1);
  v1433 = v10;
  v69 = v1500;
  do
  {
    v70 = vrev64q_s32(*&v8[v67 + 357]);
    v71 = vrev64q_s32(*&v8[v67 + 353]);
    *(v69 - 3) = vextq_s8(v70, v70, 8uLL);
    *(v69 - 2) = vextq_s8(v71, v71, 8uLL);
    v72 = vrev64q_s32(*&v8[v67 + 349]);
    v73 = vrev64q_s32(*&v8[v67 + 345]);
    *(v69 - 1) = vextq_s8(v72, v72, 8uLL);
    *v69 = vextq_s8(v73, v73, 8uLL);
    *(v69 + 2) = vrev64_s32(*&v8[v67 + 343]);
    *(v69 + 6) = v8[v67 + 342];
    v67 -= 19;
    v69 = (v69 + 76);
  }

  while (v67 != -361);
  bzero(utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA, 0xC8D0uLL);
  v74 = 0;
  v75 = utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA;
  do
  {
    LODWORD(v76) = 18 - v74;
    if (v74 <= 0x12)
    {
      v76 = v76;
    }

    else
    {
      v76 = 0;
    }

    LODWORD(v77) = 125 - v74;
    if (v74 <= 0x6B)
    {
      v77 = 18;
    }

    else
    {
      v77 = v77;
    }

    if (v76 <= v77)
    {
      v78 = 0x16800000000 - 0x1300000000 * v76;
      do
      {
        v79 = 0;
        v80 = (spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b + ((0x5400000000 * (v76 + v74) - 0x5E800000000) >> 30));
        v81 = *v80;
        v82 = v80[1];
        v83 = v80[2];
        v84 = v80[3];
        v85 = v80[4];
        v86 = v80[5];
        v87 = v80[6];
        v88 = v80[7];
        v89 = v80[8];
        v90 = v80[9];
        v91 = v80[10];
        v92 = v80[11];
        v93 = v80[12];
        v94 = v80[13];
        v95 = v80[14];
        v96 = v80[15];
        v97 = v80[16];
        v98 = v80[17];
        v99 = v80[18];
        v100 = v80[19];
        v101 = v80[20];
        v102 = v78;
        do
        {
          v103 = *&v1498[v102 >> 30];
          v104 = &v75[v79];
          v105 = vmlaq_n_f32(*&v75[v79 + 22], v82, v103);
          *(v104 + 72) = vmlaq_n_f32(*&v75[v79 + 18], v81, v103);
          *(v104 + 88) = v105;
          v106 = vmlaq_n_f32(*&v75[v79 + 30], v84, v103);
          *(v104 + 104) = vmlaq_n_f32(*&v75[v79 + 26], v83, v103);
          *(v104 + 120) = v106;
          v107 = vmlaq_n_f32(*&v75[v79 + 38], v86, v103);
          *(v104 + 136) = vmlaq_n_f32(*&v75[v79 + 34], v85, v103);
          *(v104 + 152) = v107;
          v108 = vmlaq_n_f32(*&v75[v79 + 46], v88, v103);
          *(v104 + 168) = vmlaq_n_f32(*&v75[v79 + 42], v87, v103);
          *(v104 + 184) = v108;
          v109 = vmlaq_n_f32(*&v75[v79 + 54], v90, v103);
          *(v104 + 200) = vmlaq_n_f32(*&v75[v79 + 50], v89, v103);
          *(v104 + 216) = v109;
          v110 = vmlaq_n_f32(*&v75[v79 + 62], v92, v103);
          *(v104 + 232) = vmlaq_n_f32(*&v75[v79 + 58], v91, v103);
          *(v104 + 248) = v110;
          v111 = &v75[v79 + 70];
          v112 = vmlaq_n_f32(*v111, v94, v103);
          *&v75[v79 + 66] = vmlaq_n_f32(*&v75[v79 + 66], v93, v103);
          *v111 = v112;
          v113 = &v75[v79 + 78];
          v114 = vmlaq_n_f32(*v113, v96, v103);
          *&v75[v79 + 74] = vmlaq_n_f32(*&v75[v79 + 74], v95, v103);
          *v113 = v114;
          v115 = &v75[v79 + 86];
          v116 = vmlaq_n_f32(*v115, v98, v103);
          *&v75[v79 + 82] = vmlaq_n_f32(*&v75[v79 + 82], v97, v103);
          *v115 = v116;
          v117 = &v75[v79 + 94];
          v118 = vmlaq_n_f32(*v117, v100, v103);
          *&v75[v79 + 90] = vmlaq_n_f32(*&v75[v79 + 90], v99, v103);
          v119 = &v75[v79 + 98];
          v120 = vmlaq_n_f32(*v119, v101, v103);
          *v117 = v118;
          --v79;
          v102 -= 0x100000000;
          *v119 = v120;
        }

        while (v79 != -19);
        v78 -= 0x1300000000;
        _CF = v76++ >= v77;
      }

      while (!_CF);
    }

    ++v74;
    v75 += 102;
  }

  while (v74 != 126);
  utils::local_sum(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b, &utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A, v77);
  v122 = &unk_27D15A058;
  v123 = &unk_27D166928;
  v124 = 12848;
  do
  {
    v125 = vmulq_f32(*v122, *v122);
    v123[-1] = vmulq_f32(v122[-1], v122[-1]);
    *v123 = v125;
    v123 += 2;
    v122 += 2;
    v124 -= 8;
  }

  while (v124);
  xmmword_27D1731D8 = vmulq_f32(xmmword_27D166908, xmmword_27D166908);
  v126 = 0xFFFFFFFFFFFF7240;
  do
  {
    v127 = vmulq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v126 / 0x10 + 2269], spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v126 / 0x10 + 2269]);
    v128 = &v1511[v126 / 4];
    v128[2268] = vmulq_f32(spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v126 / 0x10 + 2268], spot_finder_peridot(coder::array<float,2> const&,short,long const*,int const*,float *,unsigned short *,float *,struct0_T *)::b[v126 / 0x10 + 2268]);
    v128[2269] = v127;
    v126 += 32;
  }

  while (v126);
  v129 = utils::normxcorr2_lim(float const*,float const*,float,double *)::diff_local_sums;
  utils::local_sum(v1511, utils::normxcorr2_lim(float const*,float const*,float,double *)::diff_local_sums, v121);
  v130 = 3213;
  v131 = vdupq_n_s32(0xBB358A48);
  v132 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::x;
  v133 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A;
  do
  {
    v134 = *v132++;
    v135 = vmlaq_f32(*v129, v131, v134);
    *v129++ = v135;
    *v133++ = vsqrtq_f32(vmaxnmq_f32(v135, 0));
    --v130;
  }

  while (v130 * 4);
  v136 = *v8;
  v137 = vaddq_f32(vaddq_f32(*(v8 + 293), vaddq_f32(*(v8 + 285), vaddq_f32(*(v8 + 277), vaddq_f32(*(v8 + 269), vaddq_f32(*(v8 + 261), vaddq_f32(*(v8 + 253), vaddq_f32(*(v8 + 245), *(v8 + 237)))))))), vaddq_f32(vaddq_f32(*(v8 + 229), vaddq_f32(*(v8 + 221), vaddq_f32(*(v8 + 213), vaddq_f32(*(v8 + 205), vaddq_f32(*(v8 + 197), vaddq_f32(*(v8 + 189), *(v8 + 181))))))), vaddq_f32(vaddq_f32(*(v8 + 173), vaddq_f32(*(v8 + 165), vaddq_f32(*(v8 + 157), vaddq_f32(*(v8 + 149), vaddq_f32(*(v8 + 141), *(v8 + 133)))))), vaddq_f32(vaddq_f32(*(v8 + 125), vaddq_f32(*(v8 + 117), vaddq_f32(*(v8 + 109), vaddq_f32(*(v8 + 101), *(v8 + 93))))), vaddq_f32(vaddq_f32(*(v8 + 85), vaddq_f32(*(v8 + 77), vaddq_f32(*(v8 + 69), *(v8 + 61)))), vaddq_f32(vaddq_f32(*(v8 + 53), vaddq_f32(*(v8 + 45), *(v8 + 37))), vaddq_f32(vaddq_f32(*(v8 + 29), *(v8 + 21)), vaddq_f32(*(v8 + 13), *(v8 + 5)))))))));
  v139 = *(v8 + 353);
  v138 = vaddq_f32(v139, vaddq_f32(*(v8 + 337), vaddq_f32(*(v8 + 321), vaddq_f32(*(v8 + 305), vaddq_f32(*(v8 + 289), vaddq_f32(*(v8 + 273), vaddq_f32(*(v8 + 257), vaddq_f32(*(v8 + 241), vaddq_f32(*(v8 + 225), vaddq_f32(*(v8 + 209), vaddq_f32(*(v8 + 193), vaddq_f32(*(v8 + 177), vaddq_f32(*(v8 + 161), vaddq_f32(*(v8 + 145), vaddq_f32(*(v8 + 129), vaddq_f32(*(v8 + 113), vaddq_f32(*(v8 + 97), vaddq_f32(*(v8 + 81), vaddq_f32(*v68, vaddq_f32(*(v8 + 49), vaddq_f32(*(v8 + 33), vaddq_f32(*(v8 + 17), vaddq_f32(*(v8 + 9), v136)))))))))))))))))))))));
  v139.i32[0] = 343932928;
  v140 = vaddq_f32(vaddq_f32(vaddq_f32(*(v8 + 357), vaddq_f32(*(v8 + 349), vaddq_f32(*(v8 + 341), vaddq_f32(*(v8 + 333), vaddq_f32(*(v8 + 325), vaddq_f32(*(v8 + 317), vaddq_f32(*(v8 + 309), *(v8 + 301)))))))), v137), vaddq_f32(v138, vaddq_f32(*(v8 + 345), vaddq_f32(*(v8 + 329), vaddq_f32(*(v8 + 313), vaddq_f32(*(v8 + 297), vaddq_f32(*(v8 + 281), vaddq_f32(*(v8 + 265), vaddq_f32(*(v8 + 249), vaddq_f32(*(v8 + 233), vaddq_f32(*(v8 + 217), vaddq_f32(*(v8 + 201), vaddq_f32(*(v8 + 185), vaddq_f32(*(v8 + 169), vaddq_f32(*(v8 + 153), vaddq_f32(*(v8 + 137), vaddq_f32(*(v8 + 121), vaddq_f32(*(v8 + 105), vaddq_f32(*(v8 + 89), vaddq_f32(*(v8 + 73), vaddq_f32(*(v8 + 57), vaddq_f32(*(v8 + 41), vaddq_f32(*(v8 + 25), *(v8 + 1))))))))))))))))))))))));
  v141 = vaddv_f32(*&vpaddq_f32(v140, v140)) * 0.0027701;
  v142 = 0.0;
  do
  {
    v143 = vabds_f32(*&v8[v130], v141);
    v144 = v142 + ((v143 / v139.f32[0]) * (v143 / v139.f32[0]));
    v142 = (((v139.f32[0] / v143) * (v139.f32[0] / v143)) * v142) + 1.0;
    if (v143 <= v139.f32[0])
    {
      v142 = v144;
    }

    else
    {
      v139.f32[0] = v143;
    }

    ++v130;
  }

  while (v130 != 361);
  v139.f32[0] = sqrtf(v142) * v139.f32[0];
  v145 = vdupq_lane_s32(*v139.f32, 0);
  v146 = *v1433.f32;
  v147 = vdupq_lane_s32(*v1433.f32, 0);
  v148 = &unk_27D140EB8;
  v149 = 12848;
  v150 = &unk_27D140EB8;
  do
  {
    v151 = vmlaq_f32(v147, *v150, v145);
    v150[-1] = vmlaq_f32(v147, v150[-1], v145);
    *v150 = v151;
    v150 += 2;
    v149 -= 8;
  }

  while (v149);
  xmmword_27D14D768 = vmlaq_n_f32(vdupq_lane_s32(v146, 0), xmmword_27D14D768, v139.f32[0]);
  v152 = vaddq_f32(vaddq_f32(*(v8 + 281), vaddq_f32(*(v8 + 273), vaddq_f32(*(v8 + 265), vaddq_f32(*(v8 + 257), vaddq_f32(*(v8 + 249), vaddq_f32(*(v8 + 241), vaddq_f32(*(v8 + 233), *(v8 + 225)))))))), vaddq_f32(vaddq_f32(*(v8 + 217), vaddq_f32(*(v8 + 209), vaddq_f32(*(v8 + 201), vaddq_f32(*(v8 + 193), vaddq_f32(*(v8 + 185), vaddq_f32(*(v8 + 177), *(v8 + 169))))))), vaddq_f32(vaddq_f32(*(v8 + 161), vaddq_f32(*(v8 + 153), vaddq_f32(*(v8 + 145), vaddq_f32(*(v8 + 137), vaddq_f32(*(v8 + 129), *(v8 + 121)))))), vaddq_f32(vaddq_f32(*(v8 + 113), vaddq_f32(*(v8 + 105), vaddq_f32(*(v8 + 97), vaddq_f32(*(v8 + 89), *(v8 + 81))))), vaddq_f32(vaddq_f32(*(v8 + 73), vaddq_f32(*v68, vaddq_f32(*(v8 + 57), *(v8 + 49)))), vaddq_f32(vaddq_f32(*(v8 + 41), vaddq_f32(*(v8 + 33), *(v8 + 25))), vaddq_f32(vaddq_f32(*(v8 + 17), *(v8 + 9)), vaddq_f32(*(v8 + 1), v136))))))));
  v153 = vaddq_f32(vaddq_f32(*(v8 + 293), vaddq_f32(*(v8 + 285), vaddq_f32(*(v8 + 277), vaddq_f32(*(v8 + 269), vaddq_f32(*(v8 + 261), vaddq_f32(*(v8 + 253), vaddq_f32(*(v8 + 245), *(v8 + 237)))))))), vaddq_f32(vaddq_f32(*(v8 + 229), vaddq_f32(*(v8 + 221), vaddq_f32(*(v8 + 213), vaddq_f32(*(v8 + 205), vaddq_f32(*(v8 + 197), vaddq_f32(*(v8 + 189), *(v8 + 181))))))), vaddq_f32(vaddq_f32(*(v8 + 173), vaddq_f32(*(v8 + 165), vaddq_f32(*(v8 + 157), vaddq_f32(*(v8 + 149), vaddq_f32(*(v8 + 141), *(v8 + 133)))))), vaddq_f32(vaddq_f32(*(v8 + 125), vaddq_f32(*(v8 + 117), vaddq_f32(*(v8 + 109), vaddq_f32(*(v8 + 101), *(v8 + 93))))), vaddq_f32(vaddq_f32(*(v8 + 85), vaddq_f32(*(v8 + 77), vaddq_f32(*(v8 + 69), *(v8 + 61)))), vaddq_f32(vaddq_f32(*(v8 + 53), vaddq_f32(*(v8 + 45), *(v8 + 37))), vaddq_f32(vaddq_f32(*(v8 + 29), *(v8 + 21)), vaddq_f32(*(v8 + 13), *(v8 + 5)))))))));
  v1433 = vaddq_f32(vaddq_f32(vaddq_f32(*(v8 + 357), vaddq_f32(*(v8 + 349), vaddq_f32(*(v8 + 341), vaddq_f32(*(v8 + 333), vaddq_f32(*(v8 + 325), vaddq_f32(*(v8 + 317), vaddq_f32(*(v8 + 309), *(v8 + 301)))))))), v153), vaddq_f32(vaddq_f32(*(v8 + 353), vaddq_f32(*(v8 + 345), vaddq_f32(*(v8 + 337), vaddq_f32(*(v8 + 329), vaddq_f32(*(v8 + 321), vaddq_f32(*(v8 + 313), vaddq_f32(*(v8 + 305), vaddq_f32(*(v8 + 297), *(v8 + 289))))))))), v152));
  bzero(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC, 0x191A0uLL);
  v154 = &unk_27D166928;
  v155 = 12848;
  do
  {
    v156 = vabsq_f32(*v148);
    v154[-1] = vabsq_f32(v148[-1]);
    *v154 = v156;
    v154 += 2;
    v148 += 2;
    v155 -= 8;
  }

  while (v155);
  v157 = vpaddq_f32(v1433, v1433);
  xmmword_27D1731D8 = vabsq_f32(xmmword_27D14D768);
  v158 = *&utils::normxcorr2_lim(float const*,float const*,float,double *)::x;
  v159 = &utils::normxcorr2_lim(float const*,float const*,float,double *)::x + 1;
  v160 = 2;
  do
  {
    v161 = *v159++;
    v162 = v161;
    if (v158 < v161)
    {
      v158 = v162;
    }

    _ZF = v160++ == 12852;
  }

  while (!_ZF);
  if ((LODWORD(v158) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (v158 <= 1.1755e-38)
    {
      v163 = 1;
    }

    else
    {
      v1433 = v157;
      frexpf(v158, &v1434);
      *&v163 = ldexpf(1.0, v1434 - 24);
      v157.i64[0] = v1433.i64[0];
    }
  }

  else
  {
    v163 = rtNaNF;
  }

  v164 = 0;
  v165 = 0;
  v166 = vaddv_f32(*v157.f32);
  v167 = sqrtf(*&v163);
  while (2)
  {
    if (*(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v164) <= v167)
    {
      ++v164;
      goto LABEL_106;
    }

    v1503.i16[v165] = v164 + 1;
    v168 = v165++ < 12851;
    v169 = v168;
    if (v168)
    {
      ++v164;
    }

    if (v169)
    {
LABEL_106:
      if (v164 >= 12852)
      {
        break;
      }

      continue;
    }

    break;
  }

  if (v165 > 0)
  {
    v170 = v166 * 0.0027701;
    v171 = v165;
    if (v165 == 1)
    {
      v172 = 0;
      goto LABEL_120;
    }

    v172 = v165 & 0x7FFFFFFE;
    v173 = &v1503.i16[1];
    v174 = v171 & 0x7FFFFFFE;
    do
    {
      v175 = *v173 - 1;
      v176 = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[v175] - (v170 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + v175))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v175));
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[*(v173 - 1) - 1] = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[*(v173 - 1) - 1] - (v170 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + *(v173 - 1) - 1))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + *(v173 - 1) - 1));
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v175] = v176;
      v173 += 2;
      v174 -= 2;
    }

    while (v174);
    if (v172 != v171)
    {
LABEL_120:
      v177 = v171 - v172;
      v178 = &v1503 + v172;
      do
      {
        v179 = *v178++;
        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v179 - 1] = ((utils::normxcorr2_lim(float const*,float const*,float,double *)::xcorr_TA[v179 - 1] - (v170 * *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::local_sum_A + v179 - 1))) / *(&utils::normxcorr2_lim(float const*,float const*,float,double *)::denom_A + v179 - 1));
        --v177;
      }

      while (v177);
    }
  }

  v180 = 0;
  v181 = 0;
  v182 = 0;
  do
  {
    if (fabs(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v180]) + -1.0 > 0.0000000149011612)
    {
      ++v182;
      *&v1495[2 * v181++] = v180 + 1;
    }

    ++v180;
  }

  while (v180 != 12852);
  if (v182 >= 1)
  {
    v183 = v182;
    if (v182 == 1)
    {
      v184 = 0;
      goto LABEL_132;
    }

    v184 = v182 & 0x7FFFFFFE;
    v185 = v1496;
    v186 = v183 & 0x7FFFFFFE;
    do
    {
      v187 = *v185;
      *&isInitialized_spot_finder_peridot[8 * *(v185 - 1)] = 0;
      *&isInitialized_spot_finder_peridot[8 * v187] = 0;
      v185 += 2;
      v186 -= 2;
    }

    while (v186);
    if (v184 != v183)
    {
LABEL_132:
      v188 = v183 - v184;
      v189 = &v1495[2 * v184];
      do
      {
        v190 = *v189++;
        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::XC[v190 - 1] = 0.0;
        --v188;
      }

      while (v188);
    }
  }

  v191 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L;
  v192 = &xmmword_27D106300;
  v193 = 108;
  do
  {
    memcpy(v191, v192, 0x2A0uLL);
    v191 += 84;
    v192 += 51;
    --v193;
  }

  while (v193);
  v1460 = 0u;
  v1461 = 0u;
  v1458[0] = 0;
  bzero(v1511, 0x8DC0uLL);
  bzero(coder::internal::sort(double *)::xwork, 0x11B80uLL);
  v198 = 0;
  LODWORD(v199) = 0;
  do
  {
    v200 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v198];
    *(v1458 + v199) = v198 + 1;
    *(&v1460 + v199) = v200;
    if (v199 == 3)
    {
      if (*&v1460 >= *(&v1460 + 1))
      {
        v197 = 1;
      }

      else
      {
        v197 = 2;
      }

      if (*&v1460 < *(&v1460 + 1))
      {
        v194 = 1;
      }

      else
      {
        v194 = 2;
      }

      if (*&v1461 >= *(&v1461 + 1))
      {
        v201 = 3;
      }

      else
      {
        v201 = 4;
      }

      if (*&v1461 >= *(&v1461 + 1))
      {
        v202 = 4;
      }

      else
      {
        v202 = 3;
      }

      v203 = *(&v1460 + v197 - 1);
      v204 = *(&v1460 + (v201 - 1));
      if (v203 >= v204)
      {
        v206 = *(&v1460 + v194 - 1);
        if (v206 >= v204)
        {
          v195 = v202;
          v196 = v201;
        }

        else
        {
          if (v206 >= *(&v1460 + (v202 - 1)))
          {
            v195 = v202;
            v196 = v194;
          }

          else
          {
            v195 = v194;
            v196 = v202;
          }

          v194 = v201;
        }
      }

      else
      {
        v205 = *(&v1460 + (v202 - 1));
        if (v203 >= v205)
        {
          if (*(&v1460 + v194 - 1) >= v205)
          {
            v195 = v202;
            v196 = v194;
          }

          else
          {
            v195 = v194;
            v196 = v202;
          }

          v194 = v197;
        }

        else
        {
          v195 = v194;
          v196 = v197;
          v194 = v202;
        }

        v197 = v201;
      }

      LODWORD(v199) = 0;
      v207 = v197 - 1;
      v208 = v198 - 3;
      v1511[v208] = *(v1458 + v207);
      v209 = v194 - 1;
      v210 = v198 - 2;
      v1511[v210] = *(v1458 + v209);
      v211 = v196 - 1;
      v212 = v198 - 1;
      v1511[v212] = *(v1458 + v211);
      v213 = v195 - 1;
      v1511[v198] = *(v1458 + v213);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v208] = *(&v1460 + v207);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v210] = *(&v1460 + v209);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v212] = *(&v1460 + v211);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v198] = *(&v1460 + v213);
    }

    else
    {
      LODWORD(v199) = v199 + 1;
    }

    ++v198;
  }

  while (v198 != 9072);
  v1524[1] = v194;
  v1524[2] = v196;
  v1525 = v195;
  v1524[0] = v197;
  if (v199 > 0)
  {
    *&v1524[1] = 0;
    v1525 = 0;
    if (v199 != 2)
    {
      if (v199 == 1)
      {
        v1524[0] = 1;
        goto LABEL_189;
      }

      if (*&v1460 >= *(&v1460 + 1))
      {
        if (*(&v1460 + 1) < *&v1461)
        {
          if (*&v1460 >= *&v1461)
          {
            v215 = 769;
          }

          else
          {
            v215 = 259;
          }

          *v1524 = v215;
          v217 = 2;
          goto LABEL_188;
        }

        v216 = 513;
      }

      else
      {
        if (*&v1460 < *&v1461)
        {
          if (*(&v1460 + 1) >= *&v1461)
          {
            v214 = 770;
          }

          else
          {
            v214 = 515;
          }

          *v1524 = v214;
          v217 = 1;
          goto LABEL_188;
        }

        v216 = 258;
      }

      *v1524 = v216;
      v217 = 3;
LABEL_188:
      v1524[2] = v217;
      goto LABEL_189;
    }

    if (*&v1460 >= *(&v1460 + 1))
    {
      *v1524 = 513;
    }

    else
    {
      *v1524 = 258;
    }

LABEL_189:
    v218 = 9072 - v199;
    v219 = v1524;
    v199 = v199;
    do
    {
      v220 = *v219++;
      v1511[v218] = *(v1458 + v220 - 1);
      findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v218++] = *(&v1460 + v220 - 1);
      --v199;
    }

    while (v199);
  }

  bzero(&v1503, 0x8DC0uLL);
  LODWORD(v1412) = 0;
  v1414 = 9072;
  v1427 = 0;
  v221 = 0;
  LODWORD(v1413) = 35;
  v1415 = 35;
  v1422 = &v1514;
  __n[0] = &v1514 + 4;
  v1418 = &v1511[1];
  v1424 = &v1498[16];
  while (2)
  {
    v222 = 0;
    v1416 = v221;
    LODWORD(v1426) = v221 << 8;
    v1425 = (v221 << 8) - 1;
    while (2)
    {
      v223 = 0;
      v224 = (4 << v222);
      v225 = 0x20u >> v222;
      LODWORD(__src) = v222;
      LODWORD(v1430) = v222 + 3;
      if (0x20u >> v222 <= 1)
      {
        v225 = 1;
      }

      LODWORD(v1429) = v225;
      v1428 = 8 * (8 << v222);
      v1423 = ((8 << v222) & 0x7FFFFFF0);
      v1431 = (8 << v222);
      while (2)
      {
        v1433.i32[0] = v223;
        v226 = v223 << v1430;
        memcpy(v1495, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[(v223 << v1430) + v1426], v1428);
        v227 = v1431;
        if (v1431 >= 0x10)
        {
          v234 = v1423;
          v235 = (v1422 + 4 * (v1427 + v226));
          v231 = v1424;
          v236 = v1424;
          do
          {
            v238 = v235[-2];
            v237 = v235[-1];
            v240 = *v235;
            v239 = v235[1];
            v235 += 4;
            v236[-1] = vuzp1q_s16(v238, v237);
            *v236 = vuzp1q_s16(v240, v239);
            v236 += 2;
            v234 -= 16;
          }

          while (v234);
        }

        else
        {
          v228 = &v1511[v1427 + v226];
          v229 = v1498;
          v230 = v1431;
          v231 = v1424;
          do
          {
            v233 = *v228;
            v232 = v228[1];
            v228 += 2;
            *v229++ = vuzp1q_s16(v233, v232);
            v230 -= 8;
          }

          while (v230);
        }

        v241 = 0;
        v242 = v1425 + v226;
        v243 = v224;
        do
        {
          v244 = *&v1495[8 * v243];
          v245 = v241 << 32;
          v246 = v241;
          v247 = v242;
          v248 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v242];
          v249 = &v1511[v242];
          v250 = v241 + 1;
          v251 = -v241;
          v252 = (v231 + 2 * v241);
          v253 = v241 + (v242 - v241 + 1);
          v254 = v253 + 1;
          v255 = 1;
          v256 = v241;
          v257 = (__n[0] + 4 * v253);
          while (1)
          {
            v258 = *&v1495[8 * v256];
            if (v258 < v244)
            {
              break;
            }

            v249[v255] = *&v1498[2 * v256];
            *&v248[v255] = v258;
            ++v256;
            ++v255;
            ++v250;
            --v251;
            v252 = (v252 + 2);
            v257 = (v257 + 4);
            ++v254;
            if (v241 + v255 - 1 >= v224)
            {
              goto LABEL_198;
            }
          }

          v259 = v255 - 1;
          v241 = v255 - 1 + v241;
          v242 = v247 + v255;
          v1511[v242] = *&v1498[2 * v243];
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v242] = v244;
          ++v243;
        }

        while (v243 < v227);
        if (v224 > v241)
        {
          v1420 = v242 - v241;
          v260 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v259 + v1420 + v246];
          v261 = &v1495[8 * v259 + (v245 >> 29)];
          v262 = v259 + v246;
          if (v259 + v246 + 1 > v224)
          {
            v263 = v262 + 1;
          }

          else
          {
            v263 = v224;
          }

          v1419 = v263 - v262;
          memcpy(v260 + 1, v261, 8 * (v263 - v262));
          v265 = v1419;
          v264 = v1420;
          if (v1419 < 4)
          {
LABEL_233:
            v278 = &v1418[v264];
            do
            {
              v278[v241] = *&v1498[2 * v241];
              ++v241;
            }

            while (v241 < v224);
          }

          else
          {
            if (v1419 < 0x10)
            {
              v266 = 0;
              goto LABEL_225;
            }

            v266 = v1419 & 0xFFFFFFFFFFFFFFF0;
            if (v250 <= v224)
            {
              v267 = v224;
            }

            else
            {
              v267 = v250;
            }

            v268 = (v267 + v251) & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v269 = *v252[-2].i8;
              v270 = vmovl_s16(*v252);
              v271 = vmovl_high_s16(*v252->i8);
              v257[-2] = vmovl_s16(*v269.i8);
              v257[-1] = vmovl_high_s16(v269);
              *v257 = v270;
              v257[1] = v271;
              v257 += 4;
              v252 += 4;
              v268 -= 16;
            }

            while (v268);
            if (v265 != v266)
            {
              if ((v265 & 0xC) == 0)
              {
                v241 += v266;
                goto LABEL_233;
              }

LABEL_225:
              v272 = v265 & 0xFFFFFFFFFFFFFFFCLL;
              v273 = v250 <= v224 ? v224 : v250;
              v274 = v266 - ((v273 + v251) & 0xFFFFFFFFFFFFFFFCLL);
              v275 = &v1498[2 * v266 + 2 * v256];
              v276 = &v1511[v266 + v254];
              do
              {
                v277 = *v275++;
                *v276++ = vmovl_s16(v277);
                v274 += 4;
              }

              while (v274);
              if (v265 != v272)
              {
                v241 += v272;
                goto LABEL_233;
              }
            }
          }
        }

LABEL_198:
        v223 = v1433.i32[0] + 1;
        if (v1433.i32[0] + 1 != v1429)
        {
          continue;
        }

        break;
      }

      v222 = __src + 1;
      if (__src != 5)
      {
        continue;
      }

      break;
    }

    v221 = v1416 + 1;
    v1427 += 256;
    if (v1416 + 1 != v1415)
    {
      continue;
    }

    break;
  }

  v279 = v1414;
  LODWORD(__n[0]) = v1414 & 0xFFFFFF00;
  v280 = (v1414 & 0xFFFFFF00) + v1412;
  LODWORD(v281) = v1413;
  if (v280 < 9072)
  {
    v282 = (9072 - v280);
    v1426 = v282;
    if (v282 < 8)
    {
      v254 = 4;
    }

    else
    {
      v283 = v282 >> 2;
      v284 = LODWORD(__n[0]) - 1;
      LODWORD(v254) = 4;
      do
      {
        v285 = v254;
        if (v283)
        {
          v286 = v1426 - --v283 * v254;
          if (v286 > v254)
          {
            v287 = v283 * v254 + LODWORD(__n[0]);
            if (v286 >= 1)
            {
              memcpy(&v1503, &v1511[v287], 4 * (v1426 - v283 * v254));
              memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v287], 8 * (v1426 - v283 * v254));
            }

            v288 = 0;
            v289 = v287 - 1;
            if (v285 <= 1)
            {
              v290 = 1;
            }

            else
            {
              v290 = v285;
            }

            LODWORD(v291) = v285;
            while (2)
            {
              v292 = coder::internal::sort(double *)::xwork[v288];
              v291 = v291;
              v293 = v289 + 1;
              while (1)
              {
                v289 = v293;
                v294 = coder::internal::sort(double *)::xwork[v291];
                if (v292 >= v294)
                {
                  break;
                }

                v1511[v293] = v1503.i32[v291];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v293] = v294;
                ++v291;
                ++v293;
                if (v291 >= v286)
                {
                  if (v285 > v288)
                  {
                    v295 = v288 + v289 - v288 + 1;
                    v296 = v285 - v288;
                    memcpy(&v1511[v295], &v1503.f32[v288], 4 * v296);
                    memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v295], &coder::internal::sort(double *)::xwork[v288], 8 * v296);
                  }

                  goto LABEL_256;
                }
              }

              v1511[v293] = v1503.i32[v288];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v293] = v292;
              if (++v288 != v290)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_256:
        v254 = (2 * v285);
        if (v283 < 2)
        {
          break;
        }

        v1427 = v283;
        if (v285 <= 1)
        {
          v297 = 1;
        }

        else
        {
          v297 = v285;
        }

        v1433.i64[0] = v297;
        if (v285)
        {
          v298 = 0;
          v1431 = 4 * (2 * v285);
          v1430 = 8 * (2 * v285);
          v1428 = v285;
          LODWORD(v1429) = v285;
          do
          {
            v299 = v254 * v298;
            if (v285 >= 1)
            {
              memcpy(&v1503, &v1511[v299 + LODWORD(__n[0])], v1431);
              memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v299 + LODWORD(__n[0])], v1430);
            }

            v300 = 0;
            v301 = v284 + v299;
            LODWORD(v302) = v285;
            while (2)
            {
              v303 = coder::internal::sort(double *)::xwork[v300];
              v302 = v302;
              v304 = v301 + 1;
              while (1)
              {
                v301 = v304;
                v305 = coder::internal::sort(double *)::xwork[v302];
                if (v303 >= v305)
                {
                  break;
                }

                v1511[v304] = v1503.i32[v302];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v304] = v305;
                ++v302;
                ++v304;
                if (v302 >= v254)
                {
                  if (v285 > v300)
                  {
                    v306 = v300 + v301 - v300 + 1;
                    memcpy(&v1511[v306], &v1503.f32[v300], 4 * (v1428 - v300));
                    v285 = v1429;
                    memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v306], &coder::internal::sort(double *)::xwork[v300], 8 * (v1428 - v300));
                  }

                  goto LABEL_262;
                }
              }

              v1511[v304] = v1503.i32[v300];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v304] = v303;
              if (++v300 != v1433.i64[0])
              {
                continue;
              }

              break;
            }

LABEL_262:
            ++v298;
          }

          while (v298 != v283 >> 1);
        }

        v283 >>= 1;
      }

      while (v1427 >= 4);
    }

    v307 = v1426;
    v279 = v1414;
    LODWORD(v281) = v1413;
    if (v254 < v1426)
    {
      v308 = v254;
      memcpy(&v1503, &v1511[SLODWORD(__n[0])], 4 * v1426);
      memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[SLODWORD(__n[0])], 8 * v1426);
      v254 = 0;
      v309 = LODWORD(__n[0]) - 1;
      LODWORD(v310) = v308;
      if (v308 <= 1)
      {
        v311 = 1;
      }

      else
      {
        v311 = v308;
      }

      while (2)
      {
        v312 = coder::internal::sort(double *)::xwork[v254];
        v310 = v310;
        v313 = v309 + 1;
        while (1)
        {
          v309 = v313;
          v314 = coder::internal::sort(double *)::xwork[v310];
          if (v312 >= v314)
          {
            break;
          }

          v1511[v313] = v1503.i32[v310];
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v313] = v314;
          ++v310;
          ++v313;
          if (v310 >= v307)
          {
            if (v308 > v254)
            {
              v315 = v254 + v309 - v254 + 1;
              v316 = v308 - v254;
              memcpy(&v1511[v315], &v1503.f32[v254], 4 * v316);
              memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v315], &coder::internal::sort(double *)::xwork[v254], 8 * v316);
            }

            goto LABEL_287;
          }
        }

        v1511[v313] = v1503.i32[v254];
        *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v313] = v312;
        if (++v254 != v311)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_287:
  if (v279 < 0x200)
  {
    v1433.i64[0] = 256;
  }

  else
  {
    v1433.i64[0] = 256;
    v254 = v1511;
    do
    {
      v317 = v1433.i32[0];
      if (v281)
      {
        LODWORD(v281) = v281 - 1;
        v318 = v281 * v1433.i32[0];
        v319 = v279 - v281 * v1433.i32[0];
        if (v319 > v1433.i32[0])
        {
          if (v319 >= 1)
          {
            memcpy(&v1503, &v1511[v318], 4 * (v279 - v281 * v1433.i32[0]));
            memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v318], 8 * (v279 - v281 * v1433.i32[0]));
          }

          v320 = 0;
          v321 = v318 - 1;
          if (v1433.i32[0] <= 1)
          {
            v322 = 1;
          }

          else
          {
            v322 = v1433.u32[0];
          }

          LODWORD(v323) = v1433.i32[0];
          while (2)
          {
            v324 = coder::internal::sort(double *)::xwork[v320];
            v323 = v323;
            v325 = v321 + 1;
            while (1)
            {
              v321 = v325;
              v326 = coder::internal::sort(double *)::xwork[v323];
              if (v324 >= v326)
              {
                break;
              }

              v1511[v325] = v1503.i32[v323];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v325] = v326;
              ++v323;
              ++v325;
              if (v323 >= v319)
              {
                if (v317 > v320)
                {
                  v327 = v320 + v321 - v320 + 1;
                  v328 = v317 - v320;
                  memcpy(&v1511[v327], &v1503.f32[v320], 4 * v328);
                  memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v327], &coder::internal::sort(double *)::xwork[v320], 8 * v328);
                }

                goto LABEL_307;
              }
            }

            v1511[v325] = v1503.i32[v320];
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v325] = v324;
            if (++v320 != v322)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_307:
      v1433.i64[0] = (2 * v317);
      if (v281 < 2)
      {
        break;
      }

      LODWORD(v1413) = v281;
      v281 = v281 >> 1;
      if (v317 <= 1)
      {
        v329 = 1;
      }

      else
      {
        v329 = v317;
      }

      if (v317)
      {
        v330 = 0;
        v331 = v1433.i32[0];
        __n[0] = 4 * v1433.u32[0];
        v1431 = 8 * v1433.u32[0];
        v1430 = v317;
        do
        {
          v332 = v1433.i32[0] * v330;
          if (v317 >= 1)
          {
            memcpy(&v1503, &v1511[v332], __n[0]);
            memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v332], v1431);
          }

          v333 = 0;
          v334 = v332 - 1;
          LODWORD(v335) = v317;
          while (2)
          {
            v336 = coder::internal::sort(double *)::xwork[v333];
            v335 = v335;
            v337 = v334 + 1;
            while (1)
            {
              v334 = v337;
              v338 = coder::internal::sort(double *)::xwork[v335];
              if (v336 >= v338)
              {
                break;
              }

              v1511[v337] = v1503.i32[v335];
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v337] = v338;
              ++v335;
              ++v337;
              if (v335 >= v331)
              {
                if (v317 > v333)
                {
                  v339 = v333 + v334 - v333 + 1;
                  memcpy(&v1511[v339], &v1503.f32[v333], 4 * (v1430 - v333));
                  memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v339], &coder::internal::sort(double *)::xwork[v333], 8 * (v1430 - v333));
                }

                goto LABEL_313;
              }
            }

            v1511[v337] = v1503.i32[v333];
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v337] = v336;
            if (++v333 != v329)
            {
              continue;
            }

            break;
          }

LABEL_313:
          ++v330;
        }

        while (v330 != v281);
      }

      v279 = v1414;
    }

    while (v1413 >= 4);
  }

  if (v1433.i32[0] < v279)
  {
    v254 = &v1503;
    memcpy(&v1503, v1511, 4 * v279);
    memcpy(coder::internal::sort(double *)::xwork, findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L, 8 * v279);
    v340 = 0;
    LODWORD(v341) = v1433.i32[0];
    if (v1433.i32[0] <= 1)
    {
      v342 = 1;
    }

    else
    {
      v342 = v1433.u32[0];
    }

    v343 = -1;
    while (2)
    {
      v344 = coder::internal::sort(double *)::xwork[v340];
      v341 = v341;
      v345 = v343 + 1;
      while (1)
      {
        v343 = v345;
        v346 = coder::internal::sort(double *)::xwork[v341];
        if (v344 >= v346)
        {
          break;
        }

        v1511[v345] = v1503.i32[v341];
        *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v345] = v346;
        ++v341;
        ++v345;
        if (v341 >= v279)
        {
          if (v1433.i32[0] > v340)
          {
            memcpy(&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v340 + 1 + v343 - v340], &coder::internal::sort(double *)::xwork[v340], 8 * (v1433.u32[0] - v340));
          }

          goto LABEL_339;
        }
      }

      v1511[v345] = v1503.i32[v340];
      *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v345] = v344;
      if (++v340 != v342)
      {
        continue;
      }

      break;
    }
  }

LABEL_339:
  v347 = v1412;
  if ((v1412 - 1) <= 0x236E)
  {
    v254 = v1412;
    memcpy(coder::internal::sort(double *)::xwork, &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[-v1412 + 9072], (8 * v1412));
    if (v279 >= 1)
    {
      v348 = 1;
    }

    else
    {
      v348 = v279;
    }

    v349 = (9072 - v1412 - v348);
    if (v349 <= 2)
    {
LABEL_348:
      v357 = v279 + 1;
      v358 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v279 - 1];
      do
      {
        v358[v347] = *v358;
        --v357;
        --v358;
      }

      while (v357 > 1);
    }

    else
    {
      v350 = v349 + 1;
      v351 = (v349 + 1) & 0x1FFFFFFFCLL;
      v352 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v279 - 4];
      v353 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v279 - 2 + v1412];
      v354 = v351;
      do
      {
        v356 = *v352;
        v355 = *(v352 + 1);
        v352 -= 4;
        *(v353 - 1) = v356;
        *v353 = v355;
        v353 -= 4;
        v354 -= 4;
      }

      while (v354);
      if (v350 != v351)
      {
        v279 -= v351;
        goto LABEL_348;
      }
    }

    if (v1412)
    {
      memcpy(findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L, coder::internal::sort(double *)::xwork, (8 * v347));
    }
  }

  v359 = vdupq_lane_s64(COERCE__INT64(fmax(*&qword_27D11DC00, 0.45)), 0);
  v360 = -9072;
  v361 = &xmmword_27D106300;
  v362.i64[0] = 0x101010101010101;
  v362.i64[1] = 0x101010101010101;
  do
  {
    v363 = &v1462[v360];
    v363[567] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(*v361, v359), vcgtq_f64(v361[1], v359)), vuzp1q_s32(vcgtq_f64(v361[2], v359), vcgtq_f64(v361[3], v359))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[4], v359), vcgtq_f64(v361[5], v359)), vuzp1q_s32(vcgtq_f64(v361[6], v359), vcgtq_f64(v361[7], v359)))), v362);
    v363[568] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[8], v359), vcgtq_f64(v361[9], v359)), vuzp1q_s32(vcgtq_f64(v361[10], v359), vcgtq_f64(v361[11], v359))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[12], v359), vcgtq_f64(v361[13], v359)), vuzp1q_s32(vcgtq_f64(v361[14], v359), vcgtq_f64(v361[15], v359)))), v362);
    v363[569] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[16], v359), vcgtq_f64(v361[17], v359)), vuzp1q_s32(vcgtq_f64(v361[18], v359), vcgtq_f64(v361[19], v359))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[20], v359), vcgtq_f64(v361[21], v359)), vuzp1q_s32(vcgtq_f64(v361[22], v359), vcgtq_f64(v361[23], v359)))), v362);
    v363[570] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[24], v359), vcgtq_f64(v361[25], v359)), vuzp1q_s32(vcgtq_f64(v361[26], v359), vcgtq_f64(v361[27], v359))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[28], v359), vcgtq_f64(v361[29], v359)), vuzp1q_s32(vcgtq_f64(v361[30], v359), vcgtq_f64(v361[31], v359)))), v362);
    v363[571] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[32], v359), vcgtq_f64(v361[33], v359)), vuzp1q_s32(vcgtq_f64(v361[34], v359), vcgtq_f64(v361[35], v359))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v361[36], v359), vcgtq_f64(v361[37], v359)), vuzp1q_s32(vcgtq_f64(v361[38], v359), vcgtq_f64(v361[39], v359)))), v362);
    v363[572].i32[0] = vuzp1_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v361[40], v359), vcgtq_f64(v361[41], v359))), 0x1000100010001), *&v359.f64[0]).u32[0];
    v361 += 51;
    v360 += 84;
  }

  while (v360);
  v364 = 0;
  *v1511 = 0;
  v365 = v1463;
  v366 = &qword_27D11D7B0;
  while (2)
  {
    v367 = 14 * v364;
    v368 = (14 * v364) | 1;
    v369 = v364 + 1;
    v370 = 14 * (v364 + 1);
    v1503.i32[14 * v364] = fmin((v370 | 1), 109.0);
    v371 = floor(vcvtd_n_f64_u32(v368, 1uLL)) * 42.0 + 1.0;
    v372 = fmin(v370, 108.0);
    v373 = v371;
    if (v372 - 14 * v364 >= 1)
    {
      v374 = 0;
      v375 = (v360 + v372);
      v376 = v366;
      v377 = v365;
      v373 = v371;
      while (1)
      {
        v378 = 84 * (v374 + v367);
        if (v374)
        {
          break;
        }

        if (v1462[v378])
        {
          *&v1511[2 * (v373 + 1.0) - 2] = v373;
          v427 = *&v373;
          v373 = v373 + 1.0;
        }

        else
        {
          v427 = 0;
        }

        findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[84 * v367] = v427;
        v428 = v376;
        v254 = v377;
        v429 = 83;
        do
        {
          if (*v254)
          {
            if (*(v254 - 1))
            {
              *v428 = *(v428 - 1);
            }

            else
            {
              *v428 = v373;
              *&v1511[2 * (v373 + 1.0) - 2] = v373;
              v373 = v373 + 1.0;
            }
          }

          else
          {
            *v428 = 0.0;
          }

          ++v254;
          ++v428;
          --v429;
        }

        while (v429);
LABEL_358:
        ++v374;
        v377 += 84;
        v376 += 84;
        if (v374 == v375)
        {
          goto LABEL_355;
        }
      }

      v254 = 0;
      v379 = v378 - 84;
      v380 = v378 - 85;
      while (2)
      {
        v381 = v254 + v378;
        if (!v1462[v254 + v378])
        {
          findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = 0;
          goto LABEL_362;
        }

        v382 = v379 + v254;
        if (v1462[v379 + v254])
        {
          findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v382];
          goto LABEL_362;
        }

        if (v254 == 83)
        {
LABEL_367:
          if (v1462[v380 + v254])
          {
            findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v380 + v254];
            goto LABEL_362;
          }

          v383 = v381 - 1;
          if (v1462[v381 - 1])
          {
LABEL_388:
            findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            goto LABEL_362;
          }

LABEL_390:
          *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = v373;
          *&v1511[2 * (v373 + 1.0) - 2] = v373;
          v373 = v373 + 1.0;
        }

        else
        {
          v383 = v382 + 1;
          if (!v1462[v382 + 1])
          {
            if (v254)
            {
              goto LABEL_367;
            }

            goto LABEL_390;
          }

          if (!v254)
          {
            goto LABEL_388;
          }

          v384 = v382 - 1;
          if (v1462[v384])
          {
            v385 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v384];
            do
            {
              v386 = v385;
              v385 = *&v1511[2 * (v385 + 1.0) - 2];
            }

            while (v385 < v386);
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = v386;
            v387 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v384];
            v388 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            if (v387 != v388)
            {
              v389 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
              do
              {
                v390 = v389;
                v389 = *&v1511[2 * (v389 + 1.0) - 2];
              }

              while (v389 < v390);
              if (v386 > v390)
              {
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = v390;
                v388 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
                v386 = v390;
              }

              v391 = &v1511[2 * (v388 + 1.0)];
              v393 = *(v391 - 1);
              v392 = (v391 - 1);
              v394 = v393;
              if (v393 < v388)
              {
                do
                {
                  v395 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
                  *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383] = v394;
                  *v392 = v395;
                  v396 = &v1511[2 * (v394 + 1.0)];
                  v397 = *(v396 - 1);
                  v392 = (v396 - 1);
                  _NF = v397 < v394;
                  v394 = v397;
                }

                while (_NF);
                v386 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
              }

              *v392 = v386;
              v387 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v384];
            }

            v399 = &v1511[2 * (v387 + 1.0)];
            v401 = *(v399 - 1);
            v400 = (v399 - 1);
            v402 = v401;
            if (v401 < v387)
            {
              do
              {
                v403 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v384] = v402;
                *v400 = v403;
                v404 = &v1511[2 * (v402 + 1.0)];
                v405 = *(v404 - 1);
                v400 = (v404 - 1);
                _NF = v405 < v402;
                v402 = v405;
              }

              while (_NF);
              v386 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
            }

            *v400 = v386;
          }

          else
          {
            v406 = v381 - 1;
            if (!v1462[v381 - 1])
            {
              goto LABEL_388;
            }

            v407 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v406];
            v408 = v407;
            do
            {
              v409 = v408;
              v408 = *&v1511[2 * (v408 + 1.0) - 2];
            }

            while (v408 < v409);
            *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = v409;
            v410 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
            if (v407 != v410)
            {
              v411 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
              do
              {
                v412 = v411;
                v411 = *&v1511[2 * (v411 + 1.0) - 2];
              }

              while (v411 < v412);
              if (v409 > v412)
              {
                *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381] = v412;
                v410 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383];
                v409 = v412;
              }

              v413 = &v1511[2 * (v410 + 1.0)];
              v415 = *(v413 - 1);
              v414 = (v413 - 1);
              v416 = v415;
              if (v415 < v410)
              {
                do
                {
                  v417 = findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
                  *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v383] = v416;
                  *v414 = v417;
                  v418 = &v1511[2 * (v416 + 1.0)];
                  v419 = *(v418 - 1);
                  v414 = (v418 - 1);
                  _NF = v419 < v416;
                  v416 = v419;
                }

                while (_NF);
                v409 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v381];
                v407 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v406];
              }

              *v414 = v409;
            }

            v420 = &v1511[2 * (v407 + 1.0)];
            v422 = *(v420 - 1);
            v421 = v420 - 1;
            v423 = v422;
            if (v422 < v407)
            {
              do
              {
                v424 = v423;
                *v421 = v409;
                v425 = &v1511[2 * (v423 + 1.0)];
                v426 = *(v425 - 1);
                v421 = v425 - 1;
                v423 = v426;
              }

              while (v426 < v424);
              *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v406] = v424;
            }

            *v421 = v409;
          }
        }

LABEL_362:
        if (++v254 == 84)
        {
          goto LABEL_358;
        }

        continue;
      }
    }

LABEL_355:
    v1503.i32[v368] = (v373 - v371);
    LODWORD(v360) = v360 - 14;
    v365 += 1176;
    v366 += 1176;
    v364 = v369;
    if (v369 != 8)
    {
      continue;
    }

    break;
  }

  v430 = v1503.i32[0];
  if (v1503.i32[0] > 108)
  {
    goto LABEL_471;
  }

  while (2)
  {
    v431 = 0;
    v432 = v430 - 1;
    v433 = 84 * v430 - 168;
    v434 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[84 * v432];
    while (2)
    {
      v435 = *&v434[v431];
      if (v435 != 0.0)
      {
        if (v431)
        {
          v436 = v431 + v433;
          v437 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v431 - 1 + v433];
          if (v437 == 0.0)
          {
            v439 = *&v434[v431];
            if (v431 == 83)
            {
              goto LABEL_457;
            }
          }

          else
          {
            v438 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v431 - 1 + v433];
            do
            {
              v439 = v438;
              v438 = *&v1511[2 * (v438 + 1.0) - 2];
            }

            while (v438 < v439);
            if (v437 != v435)
            {
              v440 = *&v434[v431];
              do
              {
                v441 = v440;
                v440 = *&v1511[2 * (v440 + 1.0) - 2];
              }

              while (v440 < v441);
              if (v439 > v441)
              {
                v439 = v441;
              }

              v442 = (v435 + 1.0) - 1;
              v443 = &v1511[2 * v442];
              v444 = *v443;
              if (*v443 < v435)
              {
                do
                {
                  *v443 = v439;
                  v442 = (v444 + 1.0) - 1;
                  v443 = &v1511[2 * v442];
                  _NF = *v443 < v444;
                  v444 = *v443;
                }

                while (_NF);
              }

              *&v1511[2 * v442] = v439;
            }

            v445 = (v437 + 1.0) - 1;
            v446 = &v1511[2 * v445];
            v447 = *v446;
            if (*v446 < v437)
            {
              do
              {
                *v446 = v439;
                v445 = (v447 + 1.0) - 1;
                v446 = &v1511[2 * v445];
                _NF = *v446 < v447;
                v447 = *v446;
              }

              while (_NF);
            }

            *&v1511[2 * v445] = v439;
            *&v434[v431] = v439;
            v435 = v439;
            if (v431 == 83)
            {
LABEL_457:
              v458 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v436];
              if (v458 != 0.0)
              {
                v459 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v436];
                do
                {
                  v460 = v459;
                  v459 = *&v1511[2 * (v459 + 1.0) - 2];
                }

                while (v459 < v460);
                if (v458 != v439)
                {
                  v461 = v439;
                  do
                  {
                    v462 = v461;
                    v461 = *&v1511[2 * (v461 + 1.0) - 2];
                  }

                  while (v461 < v462);
                  if (v460 > v462)
                  {
                    v460 = v462;
                  }

                  v463 = (v439 + 1.0) - 1;
                  v464 = &v1511[2 * v463];
                  v465 = *v464;
                  if (*v464 < v439)
                  {
                    do
                    {
                      *v464 = v460;
                      v463 = (v465 + 1.0) - 1;
                      v464 = &v1511[2 * v463];
                      _NF = *v464 < v465;
                      v465 = *v464;
                    }

                    while (_NF);
                  }

                  *&v1511[2 * v463] = v460;
                }

                v466 = (v458 + 1.0) - 1;
                v467 = &v1511[2 * v466];
                v468 = *v467;
                if (*v467 < v458)
                {
                  do
                  {
                    *v467 = v460;
                    v466 = (v468 + 1.0) - 1;
                    v467 = &v1511[2 * v466];
                    _NF = *v467 < v468;
                    v468 = *v467;
                  }

                  while (_NF);
                }

                *&v1511[2 * v466] = v460;
                *&v434[v431] = v460;
              }

              goto LABEL_422;
            }
          }
        }

        else
        {
          v436 = v433;
        }

        v448 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v436 + 1];
        if (v448 == 0.0)
        {
          v439 = v435;
        }

        else
        {
          v449 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v436 + 1];
          do
          {
            v439 = v449;
            v449 = *&v1511[2 * (v449 + 1.0) - 2];
          }

          while (v449 < v439);
          if (v448 != v435)
          {
            v450 = v435;
            do
            {
              v451 = v450;
              v450 = *&v1511[2 * (v450 + 1.0) - 2];
            }

            while (v450 < v451);
            if (v439 > v451)
            {
              v439 = v451;
            }

            v452 = (v435 + 1.0) - 1;
            v453 = &v1511[2 * v452];
            v454 = *v453;
            if (*v453 < v435)
            {
              do
              {
                *v453 = v439;
                v452 = (v454 + 1.0) - 1;
                v453 = &v1511[2 * v452];
                _NF = *v453 < v454;
                v454 = *v453;
              }

              while (_NF);
            }

            *&v1511[2 * v452] = v439;
          }

          v455 = (v448 + 1.0) - 1;
          v456 = &v1511[2 * v455];
          v457 = *v456;
          if (*v456 < v448)
          {
            do
            {
              *v456 = v439;
              v455 = (v457 + 1.0) - 1;
              v456 = &v1511[2 * v455];
              _NF = *v456 < v457;
              v457 = *v456;
            }

            while (_NF);
          }

          *&v1511[2 * v455] = v439;
          *&v434[v431] = v439;
        }

        goto LABEL_457;
      }

LABEL_422:
      if (++v431 != 84)
      {
        continue;
      }

      break;
    }

    v430 = v1503.i32[v432];
    if (v430 < 109)
    {
      continue;
    }

    break;
  }

LABEL_471:
  v469 = 1;
  v470 = 1.0;
  do
  {
    v471 = v469 - 1;
    v472 = 42 * llround(vcvtd_n_f64_s32(v471, 1uLL));
    v473 = v472 + 2;
    v474 = v1503.i32[v469];
    if ((v472 + 2) <= (v474 + v472 + 1))
    {
      v475 = &v1511[2 * v472 + 2];
      v476 = v470;
      do
      {
        if (*v475 >= v473 + -1.0)
        {
          v470 = v476 + 1.0;
        }

        else
        {
          v470 = v476;
          v476 = *&v1511[2 * (*v475 + 1.0) - 2];
        }

        *v475++ = v476;
        ++v473;
        v476 = v470;
        --v474;
      }

      while (v474);
    }

    v469 = v1503.i32[v471];
  }

  while (v469 < 109);
  v477 = 0;
  v478 = &qword_27D11D7B0;
  do
  {
    v479 = v478;
    v480 = 84;
    do
    {
      v481 = *&v1511[2 * (*v479 + 1.0) - 2];
      *(v479 - 1) = *&v1511[2 * (*(v479 - 1) + 1.0) - 2];
      *v479 = v481;
      v479 += 2;
      v480 -= 2;
    }

    while (v480);
    ++v477;
    v478 += 84;
  }

  while (v477 != 108);
  LODWORD(v254) = vcvtad_u64_f64(v470 + -1.0);
  v1417[6] = v254;
  __src = 0;
  coder::array_base<float,int,2>::ensureCapacity(v1417, v254);
  v1452 = v254;
  __src = 0;
  coder::array_base<float,int,2>::ensureCapacity(v1450, v254);
  if (v254 < 1)
  {
    LODWORD(v1420) = 0;
  }

  else
  {
    v482 = &xmmword_27D106300;
    v483 = 108;
    v484 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC;
    do
    {
      memcpy(v484, v482, 0x2A0uLL);
      v484 += 42;
      v482 += 51;
      --v483;
    }

    while (v483);
    LODWORD(v1420) = 0;
    v485 = 0;
    __n[0] = v1450[0];
    v1431 = v254;
    do
    {
      v486 = 0;
      v487 = 0;
      v488 = 0;
      v1433.i64[0] = v485 + 1;
      v489 = (v485 + 1);
      do
      {
        v490 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v486];
        if (v490 == v489)
        {
          ++v487;
          *&v1465[2 * v488++ + 24] = v486 + 1;
        }

        ++v486;
      }

      while (v486 != 9072);
      if (v487 > 0)
      {
        v491 = 16;
        __src = 0;
        if (v487 >= 17)
        {
          do
          {
            if (v491 <= 0x3FFFFFFF)
            {
              v491 *= 2;
            }

            else
            {
              v491 = 0x7FFFFFFF;
            }
          }

          while (v491 < v487);
        }

        operator new[]();
      }

      v492 = MEMORY[0];
      v493 = 1;
      if (MEMORY[0] < *(8 * v487 - 8))
      {
        v492 = *(8 * v487 - 8);
        v493 = v487;
      }

      v494 = 0;
      v495 = 0;
      do
      {
        v496 = *&findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::L[v494];
        if (v496 == v489)
        {
          *&v1465[2 * v495++ + 18168] = v494 + 1;
        }

        ++v494;
      }

      while (v494 != 9072);
      *&v492 = v492;
      *(*v1417 + 4 * v485) = LODWORD(v492);
      LOWORD(v492) = *&v1465[2 * v493 + 18166];
      *(__n[0] + 4 * v485) = vmovl_s16(*&v492).i32[0];
      v485 = v1433.i64[0];
    }

    while (v1433.i64[0] != v254);
  }

  __src = 0;
  v497 = v1452;
  if (v1452 >= 1)
  {
    v498 = 16;
    if (v1452 >= 0x11)
    {
      do
      {
        if (v498 <= 0x3FFFFFFF)
        {
          v498 *= 2;
        }

        else
        {
          v498 = 0x7FFFFFFF;
        }
      }

      while (v498 < v1452);
    }

    operator new[]();
  }

  v499 = 0;
  v500 = v1367;
  v501 = v1420;
  v502 = 0;
  v503 = 0;
  v504 = v1452 > 0;
  coder::array_base<float,int,2>::ensureCapacity(v1450, v1452);
  v1449 = v497;
  coder::array_base<float,int,2>::ensureCapacity(v1447, v497);
  v505 = v7 + v7;
  v506 = (v7 + v7) + 108.0;
  v1394 = ((v7 + v7) + 84.0);
  if (v1394 * v506 >= 1)
  {
    memset_pattern16(v1478, &unk_2247A54D0, 4 * (v1394 * v506));
  }

  __asm { FMOV            V0.4S, #1.0 }

  v1375 = _Q0;
  v509 = &xmmword_27D106300;
  v510 = 108;
  v511 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC;
  do
  {
    memcpy(v511, v509, 0x2A0uLL);
    v511 += 42;
    v509 += 51;
    --v510;
  }

  while (v510);
  v513 = (v7 + 1.0);
  v514 = (v7 + 108.0);
  v515 = v514 - v513;
  v516 = v1394;
  if (v514 >= v513)
  {
    v523 = 0;
    v524 = 0;
    v525 = (v7 + 84.0) - v513;
    v526 = (v525 + 1);
    v527 = (v515 + 1);
    v528 = v513 - 1 + (v513 - 1) * v1394;
    v529 = &xmmword_27D12F348;
    v530 = v528;
    do
    {
      if ((v525 & 0x80000000) == 0)
      {
        if ((v525 + 1) >= 8 && (v528 + v524 * v516 + v525 >= v528 + v524 * v516 ? (_ZF = (v526 - 1) >> 32 == 0) : (_ZF = 0), _ZF))
        {
          v538 = v530;
          v539 = v529;
          v540 = v526 & 0xFFFFFFF8;
          do
          {
            v542 = v539[-2];
            v541 = v539[-1];
            v544 = *v539;
            v543 = v539[1];
            v539 += 4;
            v545 = vcvt_hight_f32_f64(vcvt_f32_f64(v542), v541);
            v512 = vcvt_hight_f32_f64(vcvt_f32_f64(v544), v543);
            v546 = &v1478[v538];
            *v546 = v545;
            v546[1] = v512;
            v538 += 8;
            v540 -= 8;
          }

          while (v540);
          v532 = v526 & 0xFFFFFFF8;
          if (v532 == v526)
          {
            goto LABEL_526;
          }
        }

        else
        {
          v532 = 0;
        }

        v533 = v526 - v532;
        v534 = v530 + v532;
        v535 = &findSpotsPeaksDan(float const*,float const*,float,double,coder::array<float,2> &,coder::array<float,1> &)::c_XC + v532 + v523;
        do
        {
          v536 = *v535++;
          v537 = v536;
          *&v1478[v534++] = v537;
          --v533;
        }

        while (v533);
      }

LABEL_526:
      ++v524;
      v529 = (v529 + 8 * v526);
      v530 += v516;
      v523 += v526;
    }

    while (v524 != v527);
  }

  v1391 = v1452;
  if (v1452 >= 1)
  {
    v517 = (v505 + 1);
    v1389 = (v517 * v517);
    v518 = v505;
    v519 = vcvtd_n_f64_s32(v505, 1uLL);
    *v520.i64 = -(v518 * 0.5);
    v521 = floor(*v520.i64);
    v1390 = v505;
    v1364 = 0;
    v1362 = v504;
    v1363 = 0;
    v1361 = 0;
    if (v521 == *v520.i64)
    {
      if (v505 < 0)
      {
        v550 = v1389;
        v551 = v1389;
        v552 = v1390;
        goto LABEL_600;
      }

      if (v517 < 4)
      {
        v522 = 0;
        do
        {
LABEL_548:
          v1479[v522] = v522 - v519;
          ++v522;
        }

        while (v517 != v522);
        v560 = v505 + 1;
        if (v521 != *v520.i64)
        {
LABEL_550:
          v561 = floor(v518 + 0.5);
          v562 = v561 - v519;
          if (vabdd_f64(v561 - v519, v519) >= fabs(v519) * 4.4408921e-16)
          {
            if (v562 - v519 <= 0.0)
            {
              v561 = v561 + 1.0;
            }

            else
            {
              v562 = v562 + -1.0;
            }
          }

          else
          {
            v561 = v561 + 1.0;
            v562 = v519;
          }

          v568 = v561;
          v1481[0] = -(v505 * 0.5);
          v576 = v561 - 1;
          v1481[v576] = v562;
          v577 = v576 / 2;
          if (v561 >= 5)
          {
            if (v577 <= 2)
            {
              v578 = 2;
            }

            else
            {
              v578 = v576 / 2;
            }

            v579 = v578 - 1;
            do
            {
              v1481[1] = 1.0 - v519;
              *&v1480[8 * v568 + 8] = v562 + -1.0;
              --v579;
            }

            while (v579);
          }

          v580 = &v1481[v577];
          if (v576 == 2 * v577)
          {
            v520.i64[0] = 0.5;
            *v580 = (v562 - v519) * 0.5;
          }

          else
          {
            *v520.i64 = v562 - v577;
            *v580 = v577 - v519;
            v580[1] = *v520.i64;
          }

          v552 = v1390;
          v550 = v1389;
          goto LABEL_587;
        }

LABEL_566:
        v568 = v505 + 1;
        v552 = v1390;
        v550 = v1389;
        if (v1390 < 0)
        {
          goto LABEL_587;
        }

        if (v517 >= 4)
        {
          v569 = v517 & 0xFFFFFFFC;
          v520 = vdupq_lane_s64(*&v519, 0);
          v570 = 0x100000000;
          v571 = &v1482;
          v572 = v569;
          do
          {
            v573 = vadd_s32(v570, 0x200000002);
            v574.i64[0] = v570.u32[0];
            v574.i64[1] = v570.u32[1];
            v575 = vcvtq_f64_u64(v574);
            v574.i64[0] = v573.u32[0];
            v574.i64[1] = v573.u32[1];
            v571[-1] = vsubq_f64(v575, v520);
            *v571 = vsubq_f64(vcvtq_f64_u64(v574), v520);
            v570 = vadd_s32(v570, 0x400000004);
            v571 += 2;
            v572 -= 4;
          }

          while (v572);
          v568 = v505 + 1;
          if (v569 == v517)
          {
            goto LABEL_587;
          }
        }

        else
        {
          v569 = 0;
        }

        do
        {
          *v520.i64 = v569 - v519;
          v1481[v569++] = *v520.i64;
        }

        while (v517 != v569);
        v568 = v505 + 1;
LABEL_587:
        v551 = v568 * v560;
        if (v560 < 1)
        {
          goto LABEL_600;
        }

        LODWORD(__n[0]) = v568 * v560;
        v581 = 0;
        v582 = 0;
        v583 = v560;
        v584 = v1490;
        while (2)
        {
          if (v568 >= 1)
          {
            *v512.i64 = v1479[v582];
            v1433 = v512;
            memcpy(&v1487[8 * v568 * v582], v1481, 8 * v568);
            if (v568 <= 3)
            {
              v585 = 0;
              v520.i64[0] = v1433.i64[0];
              goto LABEL_596;
            }

            v520.i64[0] = v1433.i64[0];
            v512 = vdupq_lane_s64(v1433.i64[0], 0);
            v586 = v584;
            v587 = v568 & 0x7FFFFFFC;
            do
            {
              v586[-1] = v512;
              *v586 = v512;
              v586 += 2;
              v587 -= 4;
            }

            while (v587);
            v585 = v568 & 0x7FFFFFFC;
            if (v585 != v568)
            {
LABEL_596:
              v588 = v568 - v585;
              v589 = &v1489[8 * v585 + 8 * v581];
              do
              {
                *v589++ = v520.i64[0];
                --v588;
              }

              while (v588);
            }
          }

          ++v582;
          v584 = (v584 + 8 * v568);
          v581 += v568;
          if (v582 != v583)
          {
            continue;
          }

          break;
        }

        v516 = v1394;
        v552 = v1390;
        v550 = v1389;
        v551 = __n[0];
LABEL_600:
        v590 = v551;
        v591 = v1391;
        if (v551 >= 1)
        {
          if (v551 <= 3)
          {
            v592 = 0;
            goto LABEL_606;
          }

          v592 = v551 & 0x7FFFFFFC;
          v593 = &v1486;
          v594 = v1490;
          v595 = v590 & 0x7FFFFFFC;
          do
          {
            v512 = vmulq_f64(v594[-1], v594[-1]);
            v520 = vmulq_f64(*v594, *v594);
            v593[-1] = v512;
            *v593 = v520;
            v593 += 2;
            v594 += 2;
            v595 -= 4;
          }

          while (v595);
          if (v592 != v590)
          {
LABEL_606:
            v596 = v590 - v592;
            v597 = 8 * v592;
            v598 = &v1485[v592];
            v599 = &v1489[v597];
            do
            {
              v600 = *v599++;
              *v598++ = v600 * v600;
              --v596;
            }

            while (v596);
          }

          if (v590 <= 3)
          {
            v601 = 0;
            goto LABEL_613;
          }

          v601 = v590 & 0x7FFFFFFC;
          v602 = &v1484;
          v603 = &v1488;
          v604 = v601;
          do
          {
            v512 = vmulq_f64(v603[-1], v603[-1]);
            v520 = vmulq_f64(*v603, *v603);
            v602[-1] = v512;
            *v602 = v520;
            v602 += 2;
            v603 += 2;
            v604 -= 4;
          }

          while (v604);
          if (v601 != v590)
          {
LABEL_613:
            v605 = v590 - v601;
            v606 = 8 * v601;
            v607 = &v1483[v601];
            v608 = &v1487[v606];
            do
            {
              v609 = *v608++;
              *v607++ = v609 * v609;
              --v605;
            }

            while (v605);
          }
        }

        v610 = 0;
        v1376 = v550 - 1;
        v1403 = 8 * v590;
        v1423 = v1510;
        v1374 = &v1515;
        v1373 = &v1470;
        v1401 = &v1493[8 * (3 * v590)];
        __dst = &v1493[8 * (2 * v590)];
        __b = &v1493[8 * (4 * v590)];
        v1384 = 2 * v590 - 1;
        v1385 = v590 - 1;
        v1382 = 4 * v590 - 1;
        v1383 = 3 * v590 - 1;
        v1428 = &v1511[1];
        v611 = v517 & 0xFFFFFFFE;
        v1393 = v550 & 0xFFFFFFF8;
        v1407 = v550 & 0xFFFFFFE0;
        v612 = 4 * (v505 + 1);
        v1398 = &v1471[1];
        v1399 = v1471 + 4;
        v1378 = &v1459;
        v1368 = &v1472;
        v1369 = v550 & 0x1C;
        v1388 = v550 & 0xFFFFFFFC;
        v1387 = -v1388;
        v512.i64[0] = 67305985;
        v1372 = v512;
        v1377 = v1465;
        v1380 = v1464;
        v1381 = &v1492;
        v1371 = &v1460 + 4;
        v1379 = &v1477;
        v1395 = &v1513;
        v1411 = &v1512;
        v1417 = &v1497;
        v1422 = &v1494;
        v1365 = &v1496[2];
        v1366 = &v1457;
        v1370 = &v1499.i8[8];
        v1386 = v590;
        v1405 = v611;
        v1406 = v612;
LABEL_618:
        if ((v552 & 0x80000000) == 0)
        {
          v616 = 0;
          v617 = *(v1450[0] + 4 * v610);
          v618 = *(v1447[0] + 4 * v610);
          v619 = v1471;
          v620 = v1399;
          do
          {
            v621 = ((v618 + v616) - 1) * v516;
            if (v517 >= 2)
            {
              v623 = 0;
              v624 = v620;
              v625 = v611;
              do
              {
                v626 = v1478[(v617 + (v623 + 1)) - 1 + v621];
                *(v624 - 1) = v1478[(v617 + v623) - 1 + v621];
                *v624 = v626;
                v624 += 2;
                v623 += 2;
                v625 -= 2;
              }

              while (v625);
              v622 = v611;
              if (v611 == v517)
              {
                goto LABEL_620;
              }
            }

            else
            {
              v622 = 0;
            }

            do
            {
              *(v619 + v622) = v1478[(v617 + v622) - 1 + v621];
              ++v622;
            }

            while (v517 != v622);
LABEL_620:
            ++v616;
            v620 = (v620 + v612);
            v619 = (v619 + v612);
          }

          while (v616 != v517);
        }

        if (v550 > 2)
        {
          v627 = v1450[0];
          v629 = v1447[0];
          v512.i32[0] = v1478[(*(v1450[0] + 4 * v610) + (0 % v517)) - 1 + ((*(v1447[0] + 4 * v610) + (0 / v517)) - 1) * v516];
          if (v550 > 1)
          {
            v632 = v1471 + 1;
            v633 = v550 - 1;
            do
            {
              v634 = *v632++;
              v635 = v634;
              if (*v512.i32 > v634)
              {
                *v512.i32 = v635;
              }

              --v633;
            }

            while (v633);
          }
        }

        else
        {
          v627 = v1450[0];
          v628 = *(v1450[0] + 4 * v610);
          v629 = v1447[0];
          v630 = *(v1447[0] + 4 * v610);
          v512.i32[0] = v1478[v628 - 1 + (v630 - 1) * v516];
          if (v550 == 1)
          {
            goto LABEL_640;
          }

          v631 = (v628 + (v1376 % v517)) + ((v630 + (v1376 / v517)) - 1) * v516 - 1;
          if (*v512.i32 > *&v1478[v631])
          {
            v512.i32[0] = v1478[v631];
            if (v505 == -1)
            {
              goto LABEL_643;
            }

LABEL_639:
            if (v550 < 8)
            {
LABEL_640:
              v636 = 0;
              goto LABEL_641;
            }

            v520 = vdupq_lane_s32(*v512.i8, 0);
            v645 = v1398;
            v646 = v1393;
            do
            {
              v647 = vsubq_f32(*v645, v520);
              v645[-1] = vsubq_f32(v645[-1], v520);
              *v645 = v647;
              v645 += 2;
              v646 -= 8;
            }

            while (v646);
            v636 = v1393;
            if (v1393 != v550)
            {
LABEL_641:
              v637 = v550 - v636;
              v638 = v1471 + v636;
              do
              {
                *v638 = *v638 - *v512.i32;
                ++v638;
                --v637;
              }

              while (v637);
            }

LABEL_643:
            v1430 = v629;
            v1431 = v627;
            v1418 = v610;
            if (v590 >= 1)
            {
              v639 = v1403;
              memcpy(v1493, v1485, v1403);
              memcpy(&v1493[v639], v1483, v639);
              memcpy(__dst, v1489, v639);
              memcpy(v1401, v1487, v639);
              memset_pattern16(__b, &unk_2247A3FB0, v639);
            }

            v640.i64[0] = 0x100000001;
            v640.i64[1] = 0x100000001;
            v641.i64[0] = 0x101010101010101;
            v641.i64[1] = 0x101010101010101;
            if (v505 == -1)
            {
LABEL_616:
              memset(v1471, 0, 20);
              v520.i64[0] = 0;
              v512.i64[0] = 0;
              v613 = v1418;
              v611 = v1405;
              v614 = v1431;
              v615 = v1430;
              goto LABEL_617;
            }

            if (v550 < 4)
            {
              v642 = 0;
              v643 = v1407;
              goto LABEL_661;
            }

            v643 = v1407;
            if (v550 >= 0x20)
            {
              v648 = v1368;
              v649 = v1378;
              v650 = v1407;
              do
              {
                v512 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(v648[-4]), vcgtzq_f32(v648[-3])), vuzp1q_s16(vcgtzq_f32(v648[-2]), vcgtzq_f32(v648[-1]))), v641);
                v520 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtzq_f32(*v648), vcgtzq_f32(v648[1])), vuzp1q_s16(vcgtzq_f32(v648[2]), vcgtzq_f32(v648[3]))), v641);
                v649[-1] = v512;
                *v649 = v520;
                v649 += 2;
                v648 += 8;
                v650 -= 32;
              }

              while (v650);
              if (v643 != v550)
              {
                v644 = v643;
                v642 = v643;
                if (!v1369)
                {
                  goto LABEL_661;
                }

                goto LABEL_658;
              }
            }

            else
            {
              v644 = 0;
LABEL_658:
              v651 = v1387 + v644;
              v652 = (v1458 + v644);
              v653 = (v1471 + 4 * v644);
              do
              {
                v654 = *v653++;
                v512 = vcgtzq_f32(v654);
                *v512.i8 = vand_s8(vmovn_s32(v512), 0x1000100010001);
                *v652++ = vuzp1_s8(*v512.i8, *v512.i8).u32[0];
                v651 += 4;
              }

              while (v651);
              v642 = v1388;
              if (v1388 != v550)
              {
LABEL_661:
                v655 = v550 - v642;
                v656 = v1458 + v642;
                v657 = v1471 + v642;
                do
                {
                  v658 = *v657++;
                  *v656++ = v658 > 0.0;
                  --v655;
                }

                while (v655);
              }
            }

            LODWORD(v659) = 0;
            v660 = v1458;
            v661 = v550;
            do
            {
              v662 = v659;
              v664 = *v660++;
              v663 = v664;
              v665 = v664 != 0;
              if (v664)
              {
                v659 = (v659 + 1);
              }

              else
              {
                v659 = v659;
              }

              --v661;
            }

            while (v661);
            v1404 = v665;
            v666 = 0;
            do
            {
              if (*(v1458 + v666))
              {
                v1464[v661 + 24] = v666 + 1;
                LODWORD(v661) = v661 + 1;
              }

              ++v666;
            }

            while (v550 != v666);
            v1410 = v662;
            if (v659)
            {
              bzero(v1476, 4 * (v659 * v659));
              v667 = v659 + 1;
              v668 = 0;
              if (v659 == 1)
              {
                goto LABEL_674;
              }

              v676 = ~v1410 - (v663 != 0);
              if (v667 >= 0)
              {
                v676 = v659 + 1;
              }

              v677 = v676 * (v659 - 1);
              v678 = (v677 & 0x80000000) != 0;
              if (v667 < 0)
              {
                v678 = v677 > 0x80000000;
              }

              v679 = (v677 & 0xFFFFFFFF00000000) != 0;
              if (v678)
              {
LABEL_674:
                v643 = v1407;
                v640.i64[0] = 0x100000001;
                v640.i64[1] = 0x100000001;
              }

              else
              {
                v643 = v1407;
                v640.i64[0] = 0x100000001;
                v640.i64[1] = 0x100000001;
                if (!v679)
                {
                  v680 = 0;
                  v668 = v659 & 0x7FFFFFFE;
                  v681 = v1377;
                  v682 = v668;
                  do
                  {
                    v683 = v1471 + 4 * *v681;
                    v1476[v680] = *(v1471 + *(v681 - 1) - 1);
                    v1476[v667 + v680] = *(v683 - 1);
                    v681 += 2;
                    v680 += 2 * v667;
                    v682 -= 2;
                  }

                  while (v682);
                  if (v668 == v659)
                  {
                    goto LABEL_677;
                  }
                }
              }

              v669 = v659 - v668;
              v670 = v668 * v667;
              v671 = &v1464[v668 + 24];
              do
              {
                v672 = *v671++;
                v1476[v670] = *(v1471 + v672 - 1);
                v670 += v667;
                --v669;
              }

              while (v669);
            }

LABEL_677:
            if (v550 > 3)
            {
              if (v550 >= 0x20)
              {
                v684 = 0uLL;
                v685 = v1378;
                v686 = 0uLL;
                v687 = v643;
                v688 = 0uLL;
                v689 = 0uLL;
                v690 = 0uLL;
                v691 = 0uLL;
                v692 = 0uLL;
                v693 = 0uLL;
                do
                {
                  v694 = vtstq_s8(v685[-1], v685[-1]);
                  v695 = vmovl_u8(*v694.i8);
                  v696 = vmovl_high_u8(v694);
                  v697 = vtstq_s8(*v685, *v685);
                  v698 = vmovl_u8(*v697.i8);
                  v699 = vmovl_high_u8(v697);
                  v689 = vaddq_s32(v689, vandq_s8(vmovl_high_u16(v696), v640));
                  v688 = vaddq_s32(v688, vandq_s8(vmovl_u16(*v696.i8), v640));
                  v686 = vaddq_s32(v686, vandq_s8(vmovl_high_u16(v695), v640));
                  v684 = vaddq_s32(v684, vandq_s8(vmovl_u16(*v695.i8), v640));
                  v693 = vaddq_s32(v693, vandq_s8(vmovl_high_u16(v699), v640));
                  v692 = vaddq_s32(v692, vandq_s8(vmovl_u16(*v699.i8), v640));
                  v691 = vaddq_s32(v691, vandq_s8(vmovl_high_u16(v698), v640));
                  v690 = vaddq_s32(v690, vandq_s8(vmovl_u16(*v698.i8), v640));
                  v685 += 2;
                  v687 -= 32;
                }

                while (v687);
                v700 = vaddq_s32(vaddq_s32(v690, v684), vaddq_s32(v692, v688));
                v520 = vaddq_s32(vaddq_s32(v691, v686), vaddq_s32(v693, v689));
                v512 = vaddq_s32(v700, v520);
                v674 = vaddvq_s32(v512);
                if (v643 == v550)
                {
                  goto LABEL_702;
                }

                v673 = v643;
                v675 = v643;
                if (!v1369)
                {
                  goto LABEL_698;
                }
              }

              else
              {
                v674 = 0;
                v675 = 0;
              }

              v512 = v674;
              v701 = v1387 + v675;
              v702 = (v1458 + v675);
              do
              {
                v703 = *v702++;
                v520.i32[0] = v703;
                v704 = vmovl_u8(*v520.f32).u64[0];
                v520 = vandq_s8(vmovl_u16(vtst_s16(v704, v704)), v640);
                v512 = vaddq_s32(v512, v520);
                v701 += 4;
              }

              while (v701);
              v674 = vaddvq_s32(v512);
              v673 = v1388;
              if (v1388 != v550)
              {
                goto LABEL_698;
              }
            }

            else
            {
              v673 = 0;
              v674 = 0;
LABEL_698:
              v705 = v550 - v673;
              v706 = v1458 + v673;
              do
              {
                if (*v706++)
                {
                  ++v674;
                }

                --v705;
              }

              while (v705);
            }

LABEL_702:
            v708 = 0;
            v709 = 0;
            do
            {
              if (*(v1458 + v708))
              {
                v1463[v709++ + 9071] = v708 + 1;
              }

              ++v708;
            }

            while (v550 != v708);
            v710 = v674;
            if (v674)
            {
              if (v674 == 1)
              {
                v711 = 0;
                v713 = v1384;
                v712 = v1385;
                v715 = v1380;
                v714 = v1381;
                goto LABEL_712;
              }

              v711 = v674 & 0xFFFFFFFE;
              v715 = v1380;
              v714 = v1381;
              v716 = v1380;
              v717 = v1381;
              v718 = v711;
              v713 = v1384;
              v712 = v1385;
              do
              {
                v719 = *&v1493[8 * *v716 - 8];
                *(v717 - 1) = *&v1493[8 * *(v716 - 1) - 8];
                *v717 = v719;
                v717 += 2;
                v716 += 2;
                v718 -= 2;
              }

              while (v718);
              if (v711 != v674)
              {
LABEL_712:
                v720 = v674 - v711;
                v721 = &v1491[8 * v711];
                v722 = &v1463[v711 + 9071];
                do
                {
                  v723 = *v722++;
                  *v721++ = *&v1493[8 * v723 - 8];
                  --v720;
                }

                while (v720);
              }

              if (v674 == 1)
              {
                v724 = 0;
                goto LABEL_719;
              }

              v724 = v674 & 0xFFFFFFFE;
              v725 = &v714[v674];
              v726 = v715;
              v727 = v724;
              do
              {
                v728 = *&v1493[8 * v712 + 8 * *v726];
                *(v725 - 1) = *&v1493[8 * v712 + 8 * *(v726 - 1)];
                *v725 = v728;
                v725 += 2;
                v726 += 2;
                v727 -= 2;
              }

              while (v727);
              if (v724 != v674)
              {
LABEL_719:
                v729 = v674 - v724;
                v730 = &v1491[8 * v724 + 8 * v674];
                v731 = &v1463[v724 + 9071];
                do
                {
                  v732 = *v731++;
                  *v730++ = *&v1493[8 * v712 + 8 * v732];
                  --v729;
                }

                while (v729);
              }

              if (v674 == 1)
              {
                v733 = 0;
                goto LABEL_726;
              }

              v733 = v674 & 0xFFFFFFFE;
              v734 = &v714[2 * v674];
              v735 = v715;
              v736 = v733;
              do
              {
                v737 = *&v1493[8 * v713 + 8 * *v735];
                *(v734 - 1) = *&v1493[8 * v713 + 8 * *(v735 - 1)];
                *v734 = v737;
                v734 += 2;
                v735 += 2;
                v736 -= 2;
              }

              while (v736);
              if (v733 != v674)
              {
LABEL_726:
                v738 = v674 - v733;
                v739 = &v1491[16 * v674 + 8 * v733];
                v740 = &v1463[v733 + 9071];
                do
                {
                  v741 = *v740++;
                  *v739++ = *&v1493[8 * v713 + 8 * v741];
                  --v738;
                }

                while (v738);
              }

              if (v674 == 1)
              {
                v742 = 0;
                v744 = v1382;
                v743 = v1383;
                goto LABEL_733;
              }

              v742 = v674 & 0xFFFFFFFE;
              v745 = &v714[3 * v674];
              v746 = v715;
              v747 = v742;
              v744 = v1382;
              v743 = v1383;
              do
              {
                v748 = *&v1493[8 * v743 + 8 * *v746];
                *(v745 - 1) = *&v1493[8 * v743 + 8 * *(v746 - 1)];
                *v745 = v748;
                v745 += 2;
                v746 += 2;
                v747 -= 2;
              }

              while (v747);
              if (v742 != v674)
              {
LABEL_733:
                v749 = v674 - v742;
                v750 = &v1491[24 * v674 + 8 * v742];
                v751 = &v1463[v742 + 9071];
                do
                {
                  v752 = *v751++;
                  *v750++ = *&v1493[8 * v743 + 8 * v752];
                  --v749;
                }

                while (v749);
              }

              if (v674 == 1)
              {
                v753 = 0;
                goto LABEL_740;
              }

              v753 = v674 & 0xFFFFFFFE;
              v754 = &v714[4 * v674];
              v755 = v715;
              v756 = v753;
              do
              {
                v757 = *&v1493[8 * v744 + 8 * *v755];
                *(v754 - 1) = *&v1493[8 * v744 + 8 * *(v755 - 1)];
                *v754 = v757;
                v754 += 2;
                v755 += 2;
                v756 -= 2;
              }

              while (v756);
              if (v753 != v674)
              {
LABEL_740:
                v758 = v674 - v753;
                v759 = &v1491[32 * v674 + 8 * v753];
                v760 = &v1463[v753 + 9071];
                do
                {
                  v761 = *v760++;
                  *v759++ = *&v1493[8 * v744 + 8 * v761];
                  --v758;
                }

                while (v758);
              }

              memcpy(v1493, v1491, 40 * v674);
            }

            if (!v659)
            {
              goto LABEL_616;
            }

            if (v659 <= 1)
            {
              v762 = 0;
              goto LABEL_749;
            }

            v762 = v659 & 0xFFFFFFFE;
            v763 = v1377;
            v764 = v1371;
            v765 = v762;
            do
            {
              v766 = *(v1471 + *v763 - 1);
              *(v764 - 1) = *(v1471 + *(v763 - 1) - 1);
              *v764 = v766;
              v764 += 2;
              v763 += 2;
              v765 -= 2;
            }

            while (v765);
            if (v762 != v659)
            {
LABEL_749:
              v767 = v659 - v762;
              v768 = &v1460 + v762;
              v769 = &v1464[v762 + 24];
              do
              {
                v770 = *v769++;
                *v768++ = *(v1471 + v770 - 1);
                --v767;
              }

              while (v767);
            }

            if (v659 <= 1)
            {
              v771 = 0;
              goto LABEL_756;
            }

            v771 = v659 & 0xFFFFFFFE;
            v772 = &v1460;
            v773 = v771;
            do
            {
              v512.i64[0] = *v772;
              *__n = v512;
              v774.f32[0] = logf(COERCE_FLOAT(HIDWORD(*v772)));
              v1433 = v774;
              *v512.i32 = logf(*__n);
              v512.i32[1] = v1433.i32[0];
              *v772++ = v512.i64[0];
              v773 -= 2;
            }

            while (v773);
            if (v771 != v659)
            {
LABEL_756:
              v775 = v659 - v771;
              v776 = &v1460 + v771;
              do
              {
                *v776 = logf(*v776);
                ++v776;
                --v775;
              }

              while (v775);
            }

            v777 = 4 * v659;
            bzero(v1471, 4 * v659);
            v781 = 0;
            v782 = 0;
            v783 = v1379;
            v784 = v1398;
            while (2)
            {
              v778.i32[0] = *(&v1460 + v782);
              if (v659 < 8)
              {
                v785 = 0;
                goto LABEL_765;
              }

              v786 = vdupq_lane_s32(v778, 0);
              v787 = v783;
              v788 = v784;
              v789 = v659 & 0xFFFFFFF8;
              do
              {
                v779 = *v787;
                v780 = vmlaq_f32(v788[-1], v787[-1], v786);
                v790 = vmlaq_f32(*v788, *v787, v786);
                v788[-1] = v780;
                *v788 = v790;
                v788 += 2;
                v787 += 2;
                v789 -= 8;
              }

              while (v789);
              v785 = v659 & 0xFFFFFFF8;
              if (v785 != v659)
              {
LABEL_765:
                v791 = v659 - v785;
                v792 = v1471 + v785;
                v793 = &v1476[v785 + v781];
                do
                {
                  v794 = *v793++;
                  *v792 = *v792 + (*v778.i32 * v794);
                  ++v792;
                  --v791;
                }

                while (v791);
              }

              ++v782;
              v783 = (v783 + v777);
              v781 += v659;
              if (v782 != v659)
              {
                continue;
              }

              break;
            }

            v795 = 0;
            v796 = 2 * v659;
            v797 = 3 * v659;
            v798 = v659 & 0xFFFFFFFE;
            v799 = 8 * v659;
            v800 = v1476;
            while (2)
            {
              if (v659 < 2)
              {
                v801 = 0;
                v802 = 0.0;
                goto LABEL_775;
              }

              v803 = 0;
              v804 = v1493;
              v805 = v800;
              v806 = v659 & 0xFFFFFFFE;
              do
              {
                v807.i32[0] = *v805;
                v808 = *v804++;
                v807.i32[1] = v805[v659];
                v803 = vmla_f32(v803, vcvt_f32_f64(v808), v807);
                v805 = (v805 + v799);
                v806 -= 2;
              }

              while (v806);
              v802 = vaddv_f32(v803);
              v801 = v659 & 0xFFFFFFFE;
              if (v798 != v659)
              {
LABEL_775:
                v809 = v659 - v801;
                v810 = &v1493[8 * v801];
                v811 = v777 * v801;
                do
                {
                  v812 = *v810++;
                  v813 = v812;
                  v802 = v802 + (*(v800 + v811) * v813);
                  v811 += v777;
                  --v809;
                }

                while (v809);
              }

              v1503.f32[v795] = v802;
              if (v659 < 2)
              {
                v814 = 0;
                v815 = 0.0;
                goto LABEL_782;
              }

              v816 = 0;
              v817 = v800;
              v818 = &v1493[8 * v710];
              v819 = v659 & 0xFFFFFFFE;
              do
              {
                v820.i32[0] = *v817;
                v821 = *v818++;
                v820.i32[1] = v817[v659];
                v816 = vmla_f32(v816, vcvt_f32_f64(v821), v820);
                v817 = (v817 + v799);
                v819 -= 2;
              }

              while (v819);
              v815 = vaddv_f32(v816);
              v814 = v659 & 0xFFFFFFFE;
              if (v798 != v659)
              {
LABEL_782:
                v822 = v659 - v814;
                v823 = &v1493[8 * v710 + 8 * v814];
                v824 = v777 * v814;
                do
                {
                  v825 = *v823++;
                  v826 = v825;
                  v815 = v815 + (*(v800 + v824) * v826);
                  v824 += v777;
                  --v822;
                }

                while (v822);
              }

              v1503.f32[v795 + v659] = v815;
              if (v659 < 2)
              {
                v827 = 0;
                v828 = 0.0;
                goto LABEL_789;
              }

              v829 = 0;
              v830 = v800;
              v831 = &v1493[16 * v710];
              v832 = v659 & 0xFFFFFFFE;
              do
              {
                v833.i32[0] = *v830;
                v834 = *v831++;
                v833.i32[1] = v830[v659];
                v829 = vmla_f32(v829, vcvt_f32_f64(v834), v833);
                v830 = (v830 + v799);
                v832 -= 2;
              }

              while (v832);
              v828 = vaddv_f32(v829);
              v827 = v659 & 0xFFFFFFFE;
              if (v798 != v659)
              {
LABEL_789:
                v835 = v659 - v827;
                v836 = &v1493[16 * v710 + 8 * v827];
                v837 = v777 * v827;
                do
                {
                  v838 = *v836++;
                  v839 = v838;
                  v828 = v828 + (*(v800 + v837) * v839);
                  v837 += v777;
                  --v835;
                }

                while (v835);
              }

              v1503.f32[v796 + v795] = v828;
              if (v659 < 2)
              {
                v840 = 0;
                v841 = 0.0;
                goto LABEL_796;
              }

              v842 = 0;
              v843 = v800;
              v844 = &v1493[24 * v710];
              v845 = v659 & 0xFFFFFFFE;
              do
              {
                v846.i32[0] = *v843;
                v847 = *v844++;
                v846.i32[1] = v843[v659];
                v842 = vmla_f32(v842, vcvt_f32_f64(v847), v846);
                v843 = (v843 + v799);
                v845 -= 2;
              }

              while (v845);
              v841 = vaddv_f32(v842);
              v840 = v659 & 0xFFFFFFFE;
              if (v798 != v659)
              {
LABEL_796:
                v848 = v659 - v840;
                v849 = &v1493[24 * v710 + 8 * v840];
                v850 = v777 * v840;
                do
                {
                  v851 = *v849++;
                  v852 = v851;
                  v841 = v841 + (*(v800 + v850) * v852);
                  v850 += v777;
                  --v848;
                }

                while (v848);
              }

              v1503.f32[v797 + v795] = v841;
              if (v659 < 2)
              {
                v853 = 0;
                v854 = 0.0;
                goto LABEL_803;
              }

              v855 = 0;
              v856 = v800;
              v857 = &v1493[32 * v710];
              v858 = v659 & 0xFFFFFFFE;
              do
              {
                v859.i32[0] = *v856;
                v860 = *v857++;
                v859.i32[1] = v856[v659];
                v855 = vmla_f32(v855, vcvt_f32_f64(v860), v859);
                v856 = (v856 + v799);
                v858 -= 2;
              }

              while (v858);
              v854 = vaddv_f32(v855);
              v853 = v659 & 0xFFFFFFFE;
              if (v798 != v659)
              {
LABEL_803:
                v861 = v659 - v853;
                v862 = &v1493[32 * v710 + 8 * v853];
                v863 = v777 * v853;
                do
                {
                  v864 = *v862++;
                  v865 = v864;
                  v854 = v854 + (*(v800 + v863) * v865);
                  v863 += v777;
                  --v861;
                }

                while (v861);
              }

              v1503.f32[v777 + v795++] = v854;
              ++v800;
              if (v795 != v659)
              {
                continue;
              }

              break;
            }

            if (v659 == 5)
            {
              v866 = 0;
              v867 = 0;
              v1500[1] = v1507;
              v1501 = v1508;
              v1502 = v1509;
              *v1498 = v1503;
              *&v1498[16] = v1504;
              v520 = v1505;
              v1499 = v1505;
              v1500[0] = v1506;
              v512 = v1372;
              v1511[0] = v1372.i32[0];
              v868 = v1498;
              v869 = v1370;
              v870 = 6;
              LOBYTE(v1511[1]) = 5;
              v516 = v1394;
              v591 = v1391;
              v552 = v1390;
              v550 = v1389;
              LODWORD(v590) = v1386;
              v613 = v1418;
              v871 = v1373;
              v611 = v1405;
              do
              {
                v872 = *v868;
                v873 = fabsf(*v868);
                v874 = fabsf(v868[1]);
                v875 = v874 > v873;
                if (v866 != 18)
                {
                  if (v874 > v873)
                  {
                    v873 = v874;
                  }

                  v876 = fabsf(v868[2]);
                  if (v876 > v873)
                  {
                    v875 = 2;
                  }

                  if (v866 != 12)
                  {
                    if (v876 > v873)
                    {
                      v873 = v876;
                    }

                    v877 = fabsf(v868[3]);
                    if (v877 > v873)
                    {
                      v875 = 3;
                    }

                    if (v866 != 6)
                    {
                      if (v877 > v873)
                      {
                        v873 = v877;
                      }

                      if (fabsf(v868[4]) > v873)
                      {
                        v875 = 4;
                      }
                    }
                  }
                }

                if (*&v1498[4 * v866 + 4 * v875] != 0.0)
                {
                  if (v875)
                  {
                    v878 = v867 + v875;
                    *(v1511 + v867) = v878 + 1;
                    v879 = *(v869 - 10);
                    v880 = &v1498[4 * v878];
                    *(v869 - 10) = *v880;
                    *v880 = v879;
                    v881 = *(v869 - 5);
                    *(v869 - 5) = v880[5];
                    v880[5] = v881;
                    v882 = *v869;
                    *v869 = v880[10];
                    v880[10] = v882;
                    v883 = v869[5];
                    v869[5] = v880[15];
                    v880[15] = v883;
                    v884 = v869[10];
                    v869[10] = v880[20];
                    v880[20] = v884;
                    v872 = *v868;
                  }

                  v868[1] = v868[1] / v872;
                  if (v866 + 3 != v870)
                  {
                    v868[2] = v868[2] / *v868;
                    if (v866 + 4 != v870)
                    {
                      v868[3] = v868[3] / *v868;
                      if (v866 + 5 != v870)
                      {
                        v868[4] = v868[4] / *v868;
                      }
                    }
                  }
                }

                v885 = v870 + 5;
                v886 = v868[5];
                if (v886 != 0.0)
                {
                  v868[6] = v868[6] - (v868[1] * v886);
                  if (v866 + 8 != v885)
                  {
                    v868[7] = v868[7] - (v868[2] * v886);
                    if (v866 + 9 != v885)
                    {
                      v868[8] = v868[8] - (v868[3] * v886);
                      if (v866 + 10 != v885)
                      {
                        v868[9] = v868[9] - (v868[4] * v886);
                      }
                    }
                  }
                }

                if (v866 != 18)
                {
                  v887 = v868[10];
                  if (v887 != 0.0)
                  {
                    v868[11] = v868[11] - (v868[1] * v887);
                    if (v866 + 13 != v870 + 10)
                    {
                      v868[12] = v868[12] - (v868[2] * v887);
                      if (v866 + 14 != v870 + 10)
                      {
                        v868[13] = v868[13] - (v868[3] * v887);
                        if (v866 + 10 != v885)
                        {
                          v868[14] = v868[14] - (v868[4] * v887);
                        }
                      }
                    }
                  }

                  if (v866 != 12)
                  {
                    v888 = v868[15];
                    if (v888 != 0.0)
                    {
                      v868[16] = v868[16] - (v868[1] * v888);
                      if (v866 + 18 != v870 + 15)
                      {
                        v868[17] = v868[17] - (v868[2] * v888);
                        if (v866 + 19 != v870 + 15)
                        {
                          v868[18] = v868[18] - (v868[3] * v888);
                          if (v866 + 10 != v885)
                          {
                            v868[19] = v868[19] - (v868[4] * v888);
                          }
                        }
                      }
                    }

                    if (v866 != 6)
                    {
                      v889 = v868[20];
                      if (v889 != 0.0)
                      {
                        v868[21] = v868[21] - (v868[1] * v889);
                        if (v866 + 23 != v870 + 20)
                        {
                          v868[22] = v868[22] - (v868[2] * v889);
                          if (v866 + 24 != v870 + 20)
                          {
                            v868[23] = v868[23] - (v868[3] * v889);
                            if (v866 + 10 != v885)
                            {
                              v868[24] = v868[24] - (v868[4] * v889);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v890 = *(v1511 + v867);
                if (v867 + 1 != v890)
                {
                  v891 = *(v1471 + v867);
                  *(v1471 + v867) = v871[v890];
                  v871[v890] = v891;
                }

                v870 += 5;
                v866 += 6;
                ++v869;
                v868 += 6;
                ++v867;
              }

              while (v866 != 24);
              v520.i32[0] = v1471[0];
              v779.i64[0] = *(v1471 + 4);
              v896 = *(v1471 + 12);
              if (*v1471 != 0.0)
              {
                *v779.i8 = vmls_lane_f32(*(v1471 + 4), *&v1498[4], *v520.f32, 0);
                *(v1471 + 4) = v779.i64[0];
                v512.i32[1] = *&v1498[16];
                v896 = vmls_lane_f32(*(v1471 + 12), *&v1498[12], *v520.f32, 0);
                *(v1471 + 12) = v896;
              }

              v614 = v1431;
              v615 = v1430;
              v512.i32[0] = v779.i32[1];
              if (*v779.i32 != 0.0)
              {
                *v512.i32 = *&v779.i32[1] - (*&v1498[28] * *v779.i32);
                *(v1471 + 2) = *v512.i32;
                v780.i32[1] = v1499.i32[1];
                v896 = vmls_lane_f32(v896, *v1499.f32, *v779.i8, 0);
                *(v1471 + 12) = v896;
              }

              if (*v512.i32 != 0.0)
              {
                v780.i32[1] = DWORD2(v1500[0]);
                v896 = vmls_lane_f32(v896, *(v1500 + 4), *v512.i8, 0);
                *(v1471 + 12) = v896;
              }

              v780.i32[0] = v896.i32[1];
              if (v896.f32[0] != 0.0)
              {
                v780.f32[0] = v896.f32[1] - (*(&v1500[1] + 3) * v896.f32[0]);
                *&v1471[1] = v780.f32[0];
              }

              if (v780.f32[0] == 0.0)
              {
                *v520.f32 = vzip1_s32(*v520.f32, *v779.i8);
                if (v896.f32[0] != 0.0)
                {
LABEL_871:
                  v896.f32[0] = v896.f32[0] / *(&v1500[1] + 2);
                  *v520.f32 = vmls_lane_f32(*v520.f32, *(v1500 + 12), v896, 0);
                  *&v1471[0] = v520.i64[0];
                  *v512.i32 = *v512.i32 - (*(&v1500[1] + 1) * v896.f32[0]);
                  *(&v1471[0] + 1) = __PAIR64__(v896.u32[0], v512.u32[0]);
                }
              }

              else
              {
                v780.f32[0] = v780.f32[0] / v1502;
                LODWORD(v1471[1]) = v780.i32[0];
                v897.i64[0] = vzip1q_s32(v520, v779).u64[0];
                v897.i64[1] = __PAIR64__(v896.u32[0], v512.u32[0]);
                v520 = vmlsq_lane_f32(v897, v1501, *v780.f32, 0);
                v1471[0] = v520;
                v896.i32[0] = v520.i32[3];
                v512.i32[0] = v520.i32[2];
                if (v520.f32[3] != 0.0)
                {
                  goto LABEL_871;
                }
              }

              if (*v512.i32 != 0.0)
              {
                *v512.i32 = *v512.i32 / *v1500;
                DWORD2(v1471[0]) = v512.i32[0];
                *v520.f32 = vmls_lane_f32(*v520.f32, *&v1499.u32[2], *v512.i8, 0);
                *&v1471[0] = v520.i64[0];
              }

              if (v520.f32[1] != 0.0)
              {
                v520.f32[0] = v520.f32[0] - (*&v1498[20] * (v520.f32[1] / *&v1498[24]));
                LODWORD(v1471[0]) = v520.i32[0];
                *(v1471 + 1) = v520.f32[1] / *&v1498[24];
              }

              if (v520.f32[0] != 0.0)
              {
                v520.f32[0] = v520.f32[0] / *v1498;
                LODWORD(v1471[0]) = v520.i32[0];
              }

              goto LABEL_617;
            }

            v1409 = v659 & 0xFFFFFFF8;
            memcpy(v1511, &v1503, 4 * (5 * v659));
            if (v659 >= 5)
            {
              v892 = 5;
            }

            else
            {
              v892 = v659;
            }

            v1433.i64[0] = v892;
            bzero(v1524, (4 * v892));
            v1522[0] = 0;
            v1522[1] = 0;
            v1523 = 0;
            v1456 = 1;
            if (v659 == 1)
            {
              v1520 = vabsq_f32(v1503);
              v1518 = v1520;
              v1457 = 84148994;
              v893 = fabsf(*&v1504);
              v894 = v1423;
              v895.i64[0] = 0x7300000073000000;
              v895.i64[1] = 0x7300000073000000;
            }

            else
            {
              v898 = 0.0;
              v899 = &v1503;
              v900 = 1.2925e-26;
              v901 = v659;
              v894 = v1423;
              v895.i64[0] = 0x7300000073000000;
              v895.i64[1] = 0x7300000073000000;
              do
              {
                v902 = v899->f32[0];
                v899 = (v899 + 4);
                v903 = fabsf(v902);
                v904 = (((v900 / v903) * (v900 / v903)) * v898) + 1.0;
                v898 = v898 + ((v903 / v900) * (v903 / v900));
                if (v903 > v900)
                {
                  v900 = v903;
                  v898 = v904;
                }

                --v901;
              }

              while (v901);
              v905 = v659 + 1;
              v1520.f32[0] = sqrtf(v898) * v900;
              v1518.f32[0] = v1520.f32[0];
              LOBYTE(v1457) = 2;
              v906 = &v1503.f32[v777 / 4];
              v907 = 0.0;
              v908 = 1.2925e-26;
              do
              {
                v909 = *v906++;
                v910 = fabsf(v909);
                v911 = (((v908 / v910) * (v908 / v910)) * v907) + 1.0;
                v907 = v907 + ((v910 / v908) * (v910 / v908));
                if (v910 > v908)
                {
                  v908 = v910;
                  v907 = v911;
                }

                ++v905;
              }

              while (v905 < v659 + 1 + v659);
              v1520.f32[1] = sqrtf(v907) * v908;
              v1518.f32[1] = v1520.f32[1];
              BYTE1(v1457) = 3;
              v912 = v796 | 1;
              v913 = &v1503.f32[v799 / 4];
              v914 = 0.0;
              v915 = 1.2925e-26;
              do
              {
                v916 = *v913++;
                v917 = fabsf(v916);
                v918 = (((v915 / v917) * (v915 / v917)) * v914) + 1.0;
                v914 = v914 + ((v917 / v915) * (v917 / v915));
                if (v917 > v915)
                {
                  v915 = v917;
                  v914 = v918;
                }

                ++v912;
              }

              while (v912 < (v796 | 1uLL) + v659);
              v1520.f32[2] = sqrtf(v914) * v915;
              v1518.f32[2] = v1520.f32[2];
              BYTE2(v1457) = 4;
              v919 = v797 + 1;
              v920 = &v1503.f32[3 * v659];
              v921 = 0.0;
              v922 = 1.2925e-26;
              do
              {
                v923 = *v920++;
                v924 = fabsf(v923);
                v925 = (((v922 / v924) * (v922 / v924)) * v921) + 1.0;
                v921 = v921 + ((v924 / v922) * (v924 / v922));
                if (v924 > v922)
                {
                  v922 = v924;
                  v921 = v925;
                }

                ++v919;
              }

              while (v919 < v797 + 1 + v659);
              v1520.f32[3] = sqrtf(v921) * v922;
              v1518.f32[3] = v1520.f32[3];
              HIBYTE(v1457) = 5;
              v926 = v777 | 1;
              v927 = &v1503 + v659;
              v928 = 0.0;
              v929 = 1.2925e-26;
              do
              {
                v930 = v927->f32[0];
                v927 = (v927 + 4);
                v931 = fabsf(v930);
                v932 = (((v929 / v931) * (v929 / v931)) * v928) + 1.0;
                v928 = v928 + ((v931 / v929) * (v931 / v929));
                if (v931 > v929)
                {
                  v929 = v931;
                  v928 = v932;
                }

                ++v926;
              }

              while (v926 < (v777 | 1) + v659);
              v893 = sqrtf(v928) * v929;
            }

            v933 = 0;
            v934 = 0;
            v1521 = v893;
            v935 = v659 + 1;
            v1519 = v893;
            v1408 = &v1511[v777 / 4];
            v936 = 2;
            v937 = ~(v1410 + v1404);
            v1427 = v1410 + v1404 - 2;
            v938 = v1427;
            v939 = v659 + 1;
            v940 = v659;
            v941 = v659 + 1;
            v942 = 2;
            LODWORD(__n[0]) = v659 + 1;
            LODWORD(v1431) = v937;
            while (2)
            {
              v943 = v936;
              v944 = v939;
              v945 = v942;
              v946 = v659 * v934;
              v947 = (v659 * v934 + v934);
              v948 = v659 - v934;
              if (v934 > 3)
              {
                v951 = (v934 + 1);
                if ((v934 + 1) < v659)
                {
                  goto LABEL_935;
                }

                *&v1524[4 * v934] = 0;
                goto LABEL_900;
              }

              v949 = v1520.f32[v934];
              v950 = fabsf(v949);
              v951 = (v934 + 1);
              v952 = fabsf(v1520.f32[v934 + 1]);
              v953 = v952 > v950;
              if (v934 != 3)
              {
                if (v952 > v950)
                {
                  v950 = v952;
                }

                v954 = &v1520.f32[v934];
                v955 = fabsf(v954[2]);
                if (v955 > v950)
                {
                  v953 = 2;
                }

                if (v934 != 2)
                {
                  if (v955 > v950)
                  {
                    v950 = v955;
                  }

                  v956 = fabsf(v954[3]);
                  if (v956 > v950)
                  {
                    v953 = 3;
                  }

                  if (v934 != 1)
                  {
                    if (v956 > v950)
                    {
                      v950 = v956;
                    }

                    if (fabsf(v1521) > v950)
                    {
                      v957 = v934 | 4;
                      goto LABEL_921;
                    }
                  }
                }
              }

              if (v953)
              {
                v957 = v953 + v934;
LABEL_921:
                v958 = v957 * v659;
                if (v659 < 8)
                {
                  v959 = 0;
                  goto LABEL_931;
                }

                v1429 = v942;
                v1430 = v939;
                _CF = &v1511[v958] >= (v1511 + (4 * v934 + 4) * v659) || (v1511 + v777 * v934) >= &v1408[v958];
                if (!_CF)
                {
                  v959 = 0;
                  v943 = v936;
                  v944 = v1430;
                  v945 = v1429;
                  goto LABEL_931;
                }

                v961 = (v1395 + v777 * v934);
                v962 = (v1395 + 4 * v958);
                v963 = v1409;
                do
                {
                  v964 = *(v962 - 1);
                  v965 = *v962;
                  v966 = *v961;
                  *(v962 - 1) = *(v961 - 1);
                  *v962 = v966;
                  *(v961 - 1) = v964;
                  *v961 = v965;
                  v961 += 2;
                  v962 += 2;
                  v963 -= 8;
                }

                while (v963);
                v959 = v1409;
                v943 = v936;
                v944 = v1430;
                v945 = v1429;
                if (v1409 != v659)
                {
LABEL_931:
                  v967 = v659 - v959;
                  v968 = &v1511[v959 + v934 * v659];
                  v969 = &v1511[v959 + v958];
                  do
                  {
                    v970 = *v969;
                    *v969++ = *v968;
                    *v968++ = v970;
                    --v967;
                  }

                  while (v967);
                }

                v971 = *(&v1456 + v957);
                *(&v1456 + v957) = *(&v1456 + v934);
                *(&v1456 + v934) = v971;
                v1520.f32[v957] = v949;
                v1518.i32[v957] = v1518.i32[v934];
                v948 = v659 - v934;
                v947 = (v946 + v934);
                v894 = v1423;
              }

              if (v951 >= v659)
              {
                v1008 = 0;
                *&v1524[4 * v934] = 0;
                v1009 = &v1511[v947];
                v973 = *v1009;
                *v1009 = 1.0;
              }

              else
              {
LABEL_935:
                v972 = v947;
                v973 = *&v1511[v947];
                v974 = 0.0;
                *&v1524[4 * v934] = 0;
                v975 = v948 - 1;
                if (v948 < 1 || v948 == 1)
                {
                  v935 = __n[0];
                  goto LABEL_1013;
                }

                v1429 = v947;
                v1430 = v944;
                v976 = v947 + 2;
                if (v948 == 2)
                {
                  v977 = v943;
                  v978 = v940;
                  v979 = fabsf(*&v894[4 * v976]);
                  if (v979 != 0.0)
                  {
                    goto LABEL_939;
                  }

LABEL_968:
                  v935 = __n[0];
LABEL_971:
                  v940 = v978;
                  v943 = v977;
                  v944 = v1430;
                  LODWORD(v947) = v1429;
                }

                else
                {
                  v977 = v943;
                  v1010 = v976;
                  v1011 = 0.0;
                  v1012 = 1.2925e-26;
                  do
                  {
                    v1013 = fabsf(*&v894[4 * v1010]);
                    v1014 = v1011 + ((v1013 / v1012) * (v1013 / v1012));
                    v1011 = (((v1012 / v1013) * (v1012 / v1013)) * v1011) + 1.0;
                    if (v1013 <= v1012)
                    {
                      v1011 = v1014;
                    }

                    else
                    {
                      v1012 = v1013;
                    }

                    ++v1010;
                  }

                  while (v1010 < v975 + v976);
                  v978 = v940;
                  v979 = sqrtf(v1011) * v1012;
                  if (v979 == 0.0)
                  {
                    goto LABEL_968;
                  }

LABEL_939:
                  v980 = v948;
                  v981 = (v938 + 1) & 0x1FFFFFFF8;
                  v982 = &v1411[v942];
                  v983 = v1427 - v933;
                  v984 = v983 + 1;
                  v985 = fabsf(v973);
                  v986 = fabsf(v979);
                  v987 = v985 * 1.4142;
                  v988 = sqrtf(((v986 / v985) * (v986 / v985)) + 1.0) * v985;
                  if (v985 > v986)
                  {
                    v987 = v988;
                  }

                  v989 = sqrtf(((v985 / v986) * (v985 / v986)) + 1.0) * v986;
                  if (v985 < v986)
                  {
                    v990 = v989;
                  }

                  else
                  {
                    v990 = v987;
                  }

                  v991 = -v990;
                  if (v973 < 0.0)
                  {
                    v991 = v990;
                  }

                  if (fabsf(v990) >= 9.8608e-32)
                  {
                    v974 = (v991 - v973) / v991;
                    *&v1524[4 * v934] = v974;
                    v935 = __n[0];
                    if (v976 > v946 + v659)
                    {
                      v973 = v991;
                      goto LABEL_971;
                    }

                    v1017 = v973 - v991;
                    v1018 = v945;
                    _CF = v983 >= 7;
                    v940 = v978;
                    v943 = v977;
                    v944 = v1430;
                    if (_CF)
                    {
                      v1019 = v984 & 0x1FFFFFFF8;
                      v1020 = 1.0 / v1017;
                      do
                      {
                        v1021 = vmulq_n_f32(*v982, v1020);
                        v982[-1] = vmulq_n_f32(v982[-1], v1020);
                        *v982 = v1021;
                        v982 += 2;
                        v981 -= 8;
                      }

                      while (v981);
                      if (v984 == v1019)
                      {
                        v973 = v991;
                        LODWORD(v947) = v1429;
                        goto LABEL_1013;
                      }

                      v1018 = v1019 + v945;
                    }

                    v1046 = v941 - v1018;
                    v1047 = &v894[4 * v1018];
                    v1048 = 1.0 / v1017;
                    LODWORD(v947) = v1429;
                    do
                    {
                      *v1047 = *v1047 * v1048;
                      ++v1047;
                      --v1046;
                    }

                    while (v1046);
                    v973 = v991;
                  }

                  else
                  {
                    v1424 = v951;
                    v1425 = v938;
                    LODWORD(v1426) = v937;
                    v992 = v933;
                    v993 = 0;
                    v994 = v946 + v659;
                    v995 = v984 & 0x1FFFFFFF8;
                    v996 = v945;
                    v997 = (v984 & 0x1FFFFFFF8) + v945;
                    v998 = 1;
                    do
                    {
                      v1000 = v993;
                      v1001 = v998;
                      if (v976 <= v994)
                      {
                        v1002 = v996;
                        if (v983 < 7)
                        {
                          goto LABEL_957;
                        }

                        v1003 = v982;
                        v1004 = v981;
                        do
                        {
                          v1005 = vmulq_f32(*v1003, v895);
                          v1003[-1] = vmulq_f32(v1003[-1], v895);
                          *v1003 = v1005;
                          v1003 += 2;
                          v1004 -= 8;
                        }

                        while (v1004);
                        v1002 = v997;
                        if (v984 != v995)
                        {
LABEL_957:
                          v1006 = v941 - v1002;
                          v1007 = &v894[4 * v1002];
                          do
                          {
                            *v1007 = *v1007 * 1.0141e31;
                            ++v1007;
                            --v1006;
                          }

                          while (v1006);
                        }
                      }

                      v993 = v1000 + 1;
                      v991 = v991 * 1.0141e31;
                      v973 = v973 * 1.0141e31;
                      v998 = v1001 + 1;
                    }

                    while (fabsf(v991) < 9.8608e-32 && v1000 < 0x13);
                    v1015 = v976;
                    if (v975 == 1)
                    {
                      v1016 = fabsf(*&v894[4 * v976]);
                    }

                    else
                    {
                      v1022 = v975 + v976;
                      v1023 = 0.0;
                      v1024 = 1.2925e-26;
                      do
                      {
                        v1025 = fabsf(*&v894[4 * v1015]);
                        v1026 = v1023 + ((v1025 / v1024) * (v1025 / v1024));
                        v1023 = (((v1024 / v1025) * (v1024 / v1025)) * v1023) + 1.0;
                        if (v1025 <= v1024)
                        {
                          v1023 = v1026;
                        }

                        else
                        {
                          v1024 = v1025;
                        }

                        ++v1015;
                      }

                      while (v1015 < v1022);
                      v1016 = sqrtf(v1023) * v1024;
                    }

                    v945 = v996;
                    v1027 = fabsf(v973);
                    v1028 = fabsf(v1016);
                    v1029 = v1027 * 1.4142;
                    v1030 = sqrtf(((v1028 / v1027) * (v1028 / v1027)) + 1.0) * v1027;
                    if (v1027 > v1028)
                    {
                      v1029 = v1030;
                    }

                    v1031 = sqrtf(((v1027 / v1028) * (v1027 / v1028)) + 1.0) * v1028;
                    if (v1027 < v1028)
                    {
                      v1029 = v1031;
                    }

                    if (v973 >= 0.0)
                    {
                      v1029 = -v1029;
                    }

                    v974 = (v1029 - v973) / v1029;
                    *&v1524[4 * v934] = v974;
                    v935 = __n[0];
                    if (v976 <= v994)
                    {
                      v1032 = v973 - v1029;
                      v1033 = v996;
                      if (v983 <= 6)
                      {
                        goto LABEL_997;
                      }

                      v1034 = 1.0 / v1032;
                      do
                      {
                        v1035 = vmulq_n_f32(*v982, v1034);
                        v982[-1] = vmulq_n_f32(v982[-1], v1034);
                        *v982 = v1035;
                        v982 += 2;
                        v981 -= 8;
                      }

                      while (v981);
                      v1033 = v997;
                      if (v984 != v995)
                      {
LABEL_997:
                        v1036 = v941 - v1033;
                        v1037 = &v894[4 * v1033];
                        v1038 = 1.0 / v1032;
                        do
                        {
                          *v1037 = *v1037 * v1038;
                          ++v1037;
                          --v1036;
                        }

                        while (v1036);
                      }
                    }

                    if (v1001 > 7)
                    {
                      v1039 = v1001 & 0x7FFFFFF8;
                      v1040 = v1375;
                      v1040.f32[0] = v1029;
                      v1041 = v1001 & 0xFFFFFFF8;
                      v1042 = v1375;
                      v1043.i64[0] = 0xC0000000C000000;
                      v1043.i64[1] = 0xC0000000C000000;
                      v933 = v992;
                      v940 = v978;
                      v951 = v1424;
                      LODWORD(v947) = v1429;
                      do
                      {
                        v1040 = vmulq_f32(v1040, v1043);
                        v1042 = vmulq_f32(v1042, v1043);
                        v1041 -= 8;
                      }

                      while (v1041);
                      v1044 = vmulq_f32(v1042, v1040);
                      *v1044.i8 = vmul_f32(*v1044.i8, *&vextq_s8(v1044, v1044, 8uLL));
                      v1029 = vmuls_lane_f32(*v1044.i32, *v1044.i8, 1);
                      v937 = v1426;
                      v943 = v977;
                      if (v1001 == v1039)
                      {
                        v973 = v1029;
                        v938 = v1425;
                        v944 = v1430;
                        v948 = v980;
                        goto LABEL_1013;
                      }
                    }

                    else
                    {
                      v1039 = 0;
                      v933 = v992;
                      v937 = v1426;
                      v940 = v978;
                      v943 = v977;
                      v951 = v1424;
                      LODWORD(v947) = v1429;
                    }

                    v1045 = ~v1000 + v1039;
                    v973 = v1029;
                    v938 = v1425;
                    v944 = v1430;
                    v948 = v980;
                    do
                    {
                      v973 = v973 * 9.8608e-32;
                      _CF = __CFADD__(v1045++, 1);
                    }

                    while (!_CF);
                  }
                }

LABEL_1013:
                *&v1511[v972] = v973;
                if (v934 >= 4)
                {
                  goto LABEL_900;
                }

                v1009 = &v1511[v947];
                *v1009 = 1.0;
                if (v974 != 0.0)
                {
                  v1412 = &v1511[v947];
                  v1425 = v938;
                  LODWORD(v1426) = v937;
                  v1049 = 1 - v944;
                  v1050 = v939;
                  v1051 = &v1411[v1050];
                  v1052 = &v894[4 * v940];
                  v1053 = v947 + v935;
                  v1054 = v948;
                  while (1)
                  {
                    v1055 = v1054;
                    _VF = __OFSUB__(v1054--, 1);
                    if (v1054 < 0 != _VF)
                    {
                      break;
                    }

                    v1056 = *v1052--;
                    if (v1056 != 0.0)
                    {
                      goto LABEL_1022;
                    }
                  }

                  v1054 = (v948 & (v948 >> 31)) - 1;
LABEL_1022:
                  v1429 = v945;
                  v1413 = v948;
                  v1414 = v943;
                  v1057 = 3 - v934;
                  v1058 = v944 + v659 * (3 - v934);
                  v1416 = v933;
                  v1415 = v940;
                  v1424 = v951;
                  while (v1055 < 1)
                  {
LABEL_1023:
                    v1058 -= v659;
                    v168 = v1057-- <= 0;
                    if (v168)
                    {
                      LODWORD(v1057) = -1;
                      goto LABEL_1030;
                    }
                  }

                  v1059 = v1058 - 1;
                  while (*&v1511[v1059] == 0.0)
                  {
                    if (++v1059 >= v1054 + v1053 + v659 * v1057)
                    {
                      goto LABEL_1023;
                    }
                  }

LABEL_1030:
                  if (v1055 >= 1 && v1057 != -1)
                  {
                    v1392 = v1053;
                    v1396 = v1050 * 4;
                    v1397 = v941;
                    v1419 = (v1057 + 1);
                    v1430 = v944;
                    bzero(v1522, 4 * (v1057 + 1));
                    LODWORD(v944) = v1430;
                    v894 = v1423;
                    if (((v1057 * v659) & 0x80000000) == 0)
                    {
                      v1061 = 0;
                      v1062 = v1057 * v659 + v1392;
                      v1063 = LODWORD(__n[0]) * v934;
                      v1064 = v1426 + LODWORD(__n[0]) * v934;
                      v1065 = v1051;
                      v1066 = v1049;
                      v1067 = v1430 + v1054;
                      v1068 = v1430;
                      while (1)
                      {
                        if (v1067 <= v1068)
                        {
                          v1069 = v1068;
                        }

                        else
                        {
                          v1069 = v1067;
                        }

                        v1070 = v1430 + v1054 + v1061 * v659;
                        if (v1070 <= v1068)
                        {
                          v1070 = v1068;
                        }

                        v1071 = v1070 - (v1061 * v659 + v1430);
                        v1072 = v1071 + 1;
                        v1060 = 0;
                        if (v1071 + 1 < 8)
                        {
                          break;
                        }

                        v1074 = v1063 + v1071;
                        _NF = (v1071 & 0x80000000) != 0;
                        v1075 = HIDWORD(v1071);
                        v1076 = _NF == __OFSUB__(v1074, v1063) && v1075 == 0;
                        v1073 = v1068;
                        if (!v1076)
                        {
                          goto LABEL_1051;
                        }

                        v1077 = (v1069 + v1066) & 0x1FFFFFFF8;
                        v1078 = v1072 & 0x1FFFFFFF8;
                        v1079 = 0uLL;
                        v1080 = v1063;
                        v1081 = v1065;
                        v1082 = 0uLL;
                        do
                        {
                          v1083 = &v1511[v1080];
                          v1079 = vmlaq_f32(v1079, v1081[-1], *v1083);
                          v1082 = vmlaq_f32(v1082, *v1081, v1083[1]);
                          v1081 += 2;
                          v1080 += 8;
                          v1077 -= 8;
                        }

                        while (v1077);
                        v1084 = vaddq_f32(v1082, v1079);
                        v1060 = vpaddq_f32(v1084, v1084).u64[0];
                        v1060.f32[0] = vaddv_f32(v1060);
                        if (v1072 != v1078)
                        {
                          v1073 = v1068 + v1078;
                          goto LABEL_1051;
                        }

LABEL_1034:
                        *(v1522 + v1061) = *(v1522 + v1061) + v1060.f32[0];
                        ++v1061;
                        v1068 += v659;
                        v1067 += v659;
                        v1066 -= v659;
                        v1065 = (v1065 + v777);
                        v1064 -= v659;
                        if (v1068 > v1062)
                        {
                          goto LABEL_1057;
                        }
                      }

                      v1073 = v1068;
LABEL_1051:
                      if (v1073 <= v1067)
                      {
                        v1085 = v1067;
                      }

                      else
                      {
                        v1085 = v1073;
                      }

                      v1086 = v1085 - v1073 + 1;
                      v1087 = v1064 + v1073;
                      v1088 = &v894[4 * v1073];
                      do
                      {
                        v1089 = *v1088++;
                        v1060.f32[0] = v1060.f32[0] + (*&v1511[v1087++] * v1089);
                        --v1086;
                      }

                      while (v1086);
                      goto LABEL_1034;
                    }

LABEL_1057:
                    v895.i64[0] = 0x7300000073000000;
                    v895.i64[1] = 0x7300000073000000;
                    v941 = v1397;
                    v1090 = v1419;
                    if ((v1057 & 0x80000000) == 0)
                    {
                      v1091 = 0;
                      v1092 = LODWORD(__n[0]) * v934;
                      v1093 = LODWORD(__n[0]) * v934;
                      v1094 = &v1511[v1093];
                      v1095 = v1428 + v1093 * 4;
                      v1096 = v1511 + v1396;
                      v1097 = &v1510[v1396];
                      v1098 = v1426 + LODWORD(__n[0]) * v934;
                      v1099 = v1430 + v1054;
                      v1100 = v1430;
                      while (1)
                      {
                        if (v1099 <= v1100)
                        {
                          v1101 = v1100;
                        }

                        else
                        {
                          v1101 = v1099;
                        }

                        v1102 = v1430 + v1054 + v1091 * v659;
                        if (v1102 <= v1100)
                        {
                          v1102 = v1100;
                        }

                        v1103 = *(v1522 + v1091);
                        if (v1103 == 0.0)
                        {
                          goto LABEL_1059;
                        }

                        v1104 = v1102 - (v1091 * v659 + v1430);
                        v1105 = v1104 + 1;
                        v1060.f32[0] = v1103 * v974;
                        v1107 = v1104 + 1 >= 8 && v1092 + v1104 >= v1092 && HIDWORD(v1104) == 0;
                        v1108 = v1100;
                        if (!v1107)
                        {
                          goto LABEL_1073;
                        }

                        v1113 = 4 * v1104;
                        v1090 = v1419;
                        v1114 = &v1097[v777 * v1091] >= v1095 + v1113 || v1094 >= &v1096[v777 * v1091 + v1113];
                        v1108 = v1100;
                        if (!v1114)
                        {
                          goto LABEL_1073;
                        }

                        v1115 = (v1101 + v1049) & 0x1FFFFFFF8;
                        v1116 = v1105 & 0x1FFFFFFF8;
                        v1117 = vdupq_lane_s32(v1060, 0);
                        v1118 = v1092;
                        v1119 = v1051;
                        do
                        {
                          v1120 = &v1511[v1118];
                          v1121 = vmlsq_f32(*v1119, v1120[1], v1117);
                          v1119[-1] = vmlsq_f32(v1119[-1], *v1120, v1117);
                          *v1119 = v1121;
                          v1119 += 2;
                          v1118 += 8;
                          v1115 -= 8;
                        }

                        while (v1115);
                        v1090 = v1419;
                        if (v1105 != v1116)
                        {
                          break;
                        }

LABEL_1059:
                        v1100 += v659;
                        ++v1091;
                        v1099 += v659;
                        v1049 -= v659;
                        v1051 = (v1051 + v777);
                        v1098 -= v659;
                        if (v1091 == v1090)
                        {
                          goto LABEL_1088;
                        }
                      }

                      v1108 = v1100 + v1116;
LABEL_1073:
                      if (v1108 <= v1099)
                      {
                        v1109 = v1099;
                      }

                      else
                      {
                        v1109 = v1108;
                      }

                      v1110 = v1109 - v1108 + 1;
                      v1111 = &v894[4 * v1108];
                      v1112 = v1098 + v1108;
                      do
                      {
                        *v1111 = *v1111 - (v1060.f32[0] * *&v1511[v1112]);
                        ++v1111;
                        ++v1112;
                        --v1110;
                      }

                      while (v1110);
                      goto LABEL_1059;
                    }
                  }

LABEL_1088:
                  v948 = v1413;
                  *v1412 = v973;
                  v1008 = 1;
                  v935 = __n[0];
                  v933 = v1416;
                  v937 = v1426;
                  v938 = v1425;
                  v940 = v1415;
                  v943 = v1414;
                  v951 = v1424;
                  LODWORD(v945) = v1429;
LABEL_1089:
                  v1122 = v1428 + v777 * (v943 - 1) + 4 * v934;
                  v1123 = v943;
                  do
                  {
                    v1124 = v1123 - 1;
                    v1125 = v1520.f32[v1123 - 1];
                    if (v1125 != 0.0)
                    {
                      v1126 = v934 + v1124 * v659;
                      v1127 = fabsf(*&v1511[v1126]);
                      v1128 = 1.0 - ((v1127 / v1125) * (v1127 / v1125));
                      if (v1128 < 0.0)
                      {
                        v1128 = 0.0;
                      }

                      if ((((v1125 / v1518.f32[v1124]) * (v1125 / v1518.f32[v1124])) * v1128) > 0.00034527)
                      {
                        v1520.f32[v1124] = sqrtf(v1128) * v1125;
                      }

                      else if (v1008)
                      {
                        v1129 = 0.0;
                        if (v948 >= 2)
                        {
                          v1130 = v1126 + 2;
                          if (v948 == 2)
                          {
                            v1129 = fabsf(*&v894[4 * v1130]);
                          }

                          else
                          {
                            v1131 = v1130 + v948 - 1;
                            v1132 = 0.0;
                            v1133 = 1.2925e-26;
                            v1134 = v1122;
                            do
                            {
                              v1135 = *v1134++;
                              v1136 = fabsf(v1135);
                              v1137 = v1132 + ((v1136 / v1133) * (v1136 / v1133));
                              v1132 = (((v1133 / v1136) * (v1133 / v1136)) * v1132) + 1.0;
                              if (v1136 <= v1133)
                              {
                                v1132 = v1137;
                              }

                              else
                              {
                                v1133 = v1136;
                              }

                              ++v1130;
                            }

                            while (v1130 < v1131);
                            v1129 = sqrtf(v1132) * v1133;
                          }
                        }

                        v1520.f32[v1124] = v1129;
                        v1518.f32[v1124] = v1129;
                      }

                      else
                      {
                        v1520.i32[v1124] = 0;
                        v1518.i32[v1124] = 0;
                      }
                    }

                    ++v1123;
                    v1122 += v777;
                  }

                  while (v1123 != 6);
LABEL_900:
                  v942 = v945 + v935;
                  v941 += v659;
                  v940 += v659;
                  v939 = v944 + v935;
                  v936 = v943 + 1;
                  ++v933;
                  --v938;
                  v937 += v1431;
                  v934 = v951;
                  if (v951 != v1433.i64[0])
                  {
                    continue;
                  }

                  v1138 = 0;
                  v1139 = 0;
                  if (v659 >= 5)
                  {
                    v1140 = 5;
                  }

                  else
                  {
                    v1140 = v659;
                  }

                  v1141 = v659 * 0.0000011921;
                  if (v659 < 5)
                  {
                    v1141 = 0.0000059605;
                  }

                  v1142 = fabsf(*v1511) * v1141;
                  v516 = v1394;
                  while (fabsf(*&v1511[v1138]) > v1142)
                  {
                    ++v1139;
                    v1138 += v935;
                    if (v1140 == v1139)
                    {
                      goto LABEL_1118;
                    }
                  }

                  LODWORD(v1140) = v1139;
LABEL_1118:
                  memcpy(v1495, v1471, 4 * v659);
                  v1143 = 0;
                  v1144 = v1410 + v1404 + 1;
                  v1516 = 0uLL;
                  v1517 = 0;
                  v1145 = 2;
                  v1146 = 1;
                  v1147 = -1;
                  v1148 = v1427;
                  v591 = v1391;
                  v552 = v1390;
                  v550 = v1389;
                  LODWORD(v590) = v1386;
                  v1149 = __n[0];
                  while (2)
                  {
                    v1150 = v1145;
                    v1151 = *&v1524[4 * v1143];
                    if (v1151 == 0.0)
                    {
LABEL_1119:
                      ++v1143;
                      v1145 = v1150 + 1;
                      --v1148;
                      v1146 += v1149;
                      v1147 += v659;
                      if (v1143 == v1433.i64[0])
                      {
                        v1185 = v1374;
                        if (v1140)
                        {
                          if (v1140 == 1)
                          {
                            v1186 = 0;
                            goto LABEL_1154;
                          }

                          v1186 = v1140 & 0xFFFFFFFE;
                          v1187 = v1365;
                          v1188 = v1366;
                          v1189 = v1186;
                          do
                          {
                            v1190 = *v1187;
                            v1185[*(v1188 - 1)] = *(v1187 - 1);
                            v1185[*v1188] = v1190;
                            v1188 += 2;
                            v1187 += 2;
                            v1189 -= 2;
                          }

                          while (v1189);
                          if (v1186 != v1140)
                          {
LABEL_1154:
                            v1191 = v1140 - v1186;
                            v1192 = &v1456 + v1186;
                            v1193 = &v1495[4 * v1186];
                            do
                            {
                              v1194 = *v1193++;
                              v1195 = v1194;
                              v1196 = *v1192++;
                              v1185[v1196] = v1195;
                              --v1191;
                            }

                            while (v1191);
                          }

                          if (v1140 >= 1)
                          {
                            v1197 = v1140 - 1;
                            v1198 = &v1185[*(&v1456 + v1197)];
                            *v1198 = *v1198 / *&v1511[v1140 - 1 + (v1140 - 1) * v659];
                            v1199 = (v1140 - 1);
                            if (v1140 != 1)
                            {
                              v1200 = &v1511[v1197 * v659];
                              do
                              {
                                v1201 = 0;
                                do
                                {
                                  *&v1185[*(&v1456 + v1201)] = *&v1185[*(&v1456 + v1201)] - (*&v1200[v1201] * *v1198);
                                  ++v1201;
                                }

                                while (v1199 != v1201);
                                --v1199;
                                v1198 = &v1185[*(&v1456 + v1197 - 1)];
                                *v1198 = *v1198 / *&v1511[v1197 - 1 + (v1197 - 1) * v659];
                                v1200 -= v659;
                                _CF = v1197-- >= 2;
                              }

                              while (_CF);
                            }
                          }
                        }

                        v512 = v1516;
                        v1471[0] = v1516;
                        LODWORD(v1471[1]) = v1517;
                        v615 = v1447[0];
                        v512.i32[0] = v1516.i32[2];
                        v520.i32[0] = v1516.i32[0];
                        v614 = v1450[0];
                        v613 = v1418;
                        v611 = v1405;
LABEL_617:
                        *(v615 + 4 * v613) = *(v615 + 4 * v613) - (*v512.i32 / (v520.f32[0] + v520.f32[0]));
                        *(v614 + 4 * v613) = *(v614 + 4 * v613) - (*(v1471 + 3) / (*(v1471 + 1) + *(v1471 + 1)));
                        v610 = (v613 + 1);
                        v612 = v1406;
                        if (v610 == v591)
                        {
                          v547 = v1452;
                          v500 = v1367;
                          v501 = v1420;
                          v499 = v1364;
                          v504 = v1362;
                          v502 = v1363;
                          v503 = v1361;
                          goto LABEL_1164;
                        }

                        goto LABEL_618;
                      }

                      continue;
                    }

                    break;
                  }

                  v1152 = *&v1495[4 * v1143];
                  if (v1143 + 2 > v659)
                  {
                    v1153 = v1152 * v1151;
                    if (v1153 != 0.0)
                    {
                      *&v1495[4 * v1143] = v1152 - v1153;
                    }

                    goto LABEL_1119;
                  }

                  v1154 = (v1148 + 1) & 0x1FFFFFFF8;
                  v1155 = &v1417[v1145];
                  v1156 = v1427 - v1143;
                  v1157 = v1156 + 1;
                  v1158 = v1149 * v1143 + 1;
                  _CF = v1156 >= 7;
                  v1159 = v1158 + v1156;
                  v1161 = !_CF || v1159 < v1158;
                  v1162 = v1150;
                  v1163 = *&v1495[4 * v1143];
                  if (v1161 == 1)
                  {
LABEL_1135:
                    v1172 = v1144 - v1162;
                    v1173 = v1422 + v1162;
                    v1174 = v1147 + v1162;
                    do
                    {
                      v1175 = *v1173++;
                      v1163 = v1163 + (v1175 * *&v1511[v1174++]);
                      --v1172;
                    }

                    while (v1172);
                  }

                  else
                  {
                    v1164 = v1157 & 0x1FFFFFFF8;
                    v1165 = 0uLL;
                    v1166 = *&v1495[4 * v1143];
                    v1167 = v1155;
                    v1168 = v1146;
                    v1169 = (v1148 + 1) & 0x1FFFFFFF8;
                    do
                    {
                      v1170 = &v1511[v1168];
                      v1166 = vmlaq_f32(v1166, *v1170, v1167[-1]);
                      v1165 = vmlaq_f32(v1165, v1170[1], *v1167);
                      v1168 += 8;
                      v1167 += 2;
                      v1169 -= 8;
                    }

                    while (v1169);
                    v1171 = vaddq_f32(v1165, v1166);
                    v1163 = vaddv_f32(*&vpaddq_f32(v1171, v1171));
                    if (v1157 != v1164)
                    {
                      v1162 = v1164 + v1150;
                      goto LABEL_1135;
                    }
                  }

                  v520.f32[0] = v1163 * v1151;
                  v1149 = __n[0];
                  if (v520.f32[0] == 0.0)
                  {
                    goto LABEL_1119;
                  }

                  *&v1495[4 * v1143] = v1152 - v520.f32[0];
                  v1176 = v1150;
                  if ((v1161 & 1) == 0)
                  {
                    v1177 = v1157 & 0x1FFFFFFF8;
                    v1178 = vdupq_lane_s32(*v520.f32, 0);
                    v1179 = v1146;
                    do
                    {
                      v1180 = &v1511[v1179];
                      v1181 = vmlsq_f32(*v1155, v1178, v1180[1]);
                      v1155[-1] = vmlsq_f32(v1155[-1], v1178, *v1180);
                      *v1155 = v1181;
                      v1179 += 8;
                      v1155 += 2;
                      v1154 -= 8;
                    }

                    while (v1154);
                    v1149 = __n[0];
                    if (v1157 == v1177)
                    {
                      goto LABEL_1119;
                    }

                    v1176 = v1177 + v1150;
                  }

                  v1182 = v1144 - v1176;
                  v1183 = v1422 + v1176;
                  v1184 = v1147 + v1176;
                  do
                  {
                    *v1183 = *v1183 - (*&v1511[v1184] * v520.f32[0]);
                    ++v1183;
                    ++v1184;
                    --v1182;
                  }

                  while (v1182);
                  goto LABEL_1119;
                }

                v1008 = 1;
              }

              break;
            }

            *v1009 = v973;
            goto LABEL_1089;
          }
        }

        if (v505 == -1)
        {
          goto LABEL_643;
        }

        goto LABEL_639;
      }

      v522 = v517 & 0xFFFFFFFC;
      v553 = vdupq_lane_s64(*&v519, 0);
      v554 = 0x100000000;
      v555 = v1480;
      v556 = v522;
      do
      {
        v557 = vadd_s32(v554, 0x200000002);
        v558.i64[0] = v554.u32[0];
        v558.i64[1] = v554.u32[1];
        v559 = vcvtq_f64_u64(v558);
        v558.i64[0] = v557.u32[0];
        v558.i64[1] = v557.u32[1];
        v555[-1] = vsubq_f64(v559, v553);
        *v555 = vsubq_f64(vcvtq_f64_u64(v558), v553);
        v554 = vadd_s32(v554, 0x400000004);
        v555 += 2;
        v556 -= 4;
      }

      while (v556);
      v560 = v505 + 1;
      if (v522 != v517)
      {
        goto LABEL_548;
      }
    }

    else
    {
      v548 = floor(v518 + 0.5);
      v549 = v548 - v519;
      if (vabdd_f64(v548 - v519, v519) >= fabs(v519) * 4.4408921e-16)
      {
        if (v549 - v519 <= 0.0)
        {
          v548 = v548 + 1.0;
        }

        else
        {
          v549 = v549 + -1.0;
        }
      }

      else
      {
        v548 = v548 + 1.0;
        v549 = v519;
      }

      v560 = v548;
      v1479[0] = -(v505 * 0.5);
      v563 = v548 - 1;
      v1479[v563] = v549;
      v564 = v563 / 2;
      if (v548 >= 5)
      {
        if (v564 <= 2)
        {
          v565 = 2;
        }

        else
        {
          v565 = v563 / 2;
        }

        v566 = v565 - 1;
        do
        {
          v1479[1] = 1.0 - v519;
          *&v1478[2 * v560 + 9852] = v549 + -1.0;
          --v566;
        }

        while (v566);
      }

      v567 = &v1479[v564];
      if (v563 != 2 * v564)
      {
        *v567 = v564 - v519;
        v567[1] = v549 - v564;
        if (v521 != *v520.i64)
        {
          goto LABEL_550;
        }

        goto LABEL_566;
      }

      *v567 = (v549 - v519) * 0.5;
    }

    if (v521 != *v520.i64)
    {
      goto LABEL_550;
    }

    goto LABEL_566;
  }

  v547 = v1391;
LABEL_1164:
  v1446 = v547;
  coder::array_base<float,int,2>::ensureCapacity(v1444, v547);
  if (v547 >= 1)
  {
    v1202 = 0;
    v1203 = v1450[0];
    v1204 = v1444[0];
    if (v547 < 8)
    {
      goto LABEL_1170;
    }

    if (v1444[0] - v1450[0] < 0x20uLL)
    {
      goto LABEL_1170;
    }

    v1202 = v547 & 0x7FFFFFF8;
    v1205 = (v1444[0] + 16);
    v1206 = (v1450[0] + 16);
    v1207.i64[0] = 0x3F0000003F000000;
    v1207.i64[1] = 0x3F0000003F000000;
    v1208 = v1202;
    do
    {
      v1209 = vmaxnmq_f32(*v1206, v1207);
      v1205[-1] = vmaxnmq_f32(v1206[-1], v1207);
      *v1205 = v1209;
      v1205 += 2;
      v1206 += 2;
      v1208 -= 8;
    }

    while (v1208);
    if (v1202 != v547)
    {
LABEL_1170:
      v1210 = v547 - v1202;
      v1211 = 4 * v1202;
      v1212 = (v1204 + v1211);
      v1213 = (v1203 + v1211);
      do
      {
        v1214 = *v1213++;
        *v1212++ = fmaxf(v1214, 0.5);
        --v1210;
      }

      while (v1210);
    }
  }

  v1215 = v1446;
  if (v1446 >= 1)
  {
    v1216 = v1444[0];
    if (v1446 < 8)
    {
      v1217 = 0;
      goto LABEL_1178;
    }

    v1217 = v1446 & 0x7FFFFFF8;
    v1218 = (v1444[0] + 16);
    v1219 = vdupq_n_s32(0x42A90000u);
    v1220 = v1217;
    do
    {
      v1221 = vminnmq_f32(*v1218, v1219);
      v1218[-1] = vminnmq_f32(v1218[-1], v1219);
      *v1218 = v1221;
      v1218 += 2;
      v1220 -= 8;
    }

    while (v1220);
    if (v1217 != v1215)
    {
LABEL_1178:
      v1222 = v1215 - v1217;
      v1223 = (v1216 + 4 * v1217);
      do
      {
        *v1223 = fminf(*v1223, 84.5);
        ++v1223;
        --v1222;
      }

      while (v1222);
    }
  }

  v1224 = v1449;
  v1452 = v1449;
  coder::array_base<float,int,2>::ensureCapacity(v1450, v1449);
  if (v1224 >= 1)
  {
    v1225 = 0;
    v1226 = v1447[0];
    v1227 = v1450[0];
    if (v1224 < 8)
    {
      goto LABEL_1186;
    }

    if (v1450[0] - v1447[0] < 0x20uLL)
    {
      goto LABEL_1186;
    }

    v1225 = v1224 & 0x7FFFFFF8;
    v1228 = (v1450[0] + 16);
    v1229 = (v1447[0] + 16);
    v1230.i64[0] = 0x3F0000003F000000;
    v1230.i64[1] = 0x3F0000003F000000;
    v1231 = v1225;
    do
    {
      v1232 = vmaxnmq_f32(*v1229, v1230);
      v1228[-1] = vmaxnmq_f32(v1229[-1], v1230);
      *v1228 = v1232;
      v1228 += 2;
      v1229 += 2;
      v1231 -= 8;
    }

    while (v1231);
    if (v1225 != v1224)
    {
LABEL_1186:
      v1233 = v1224 - v1225;
      v1234 = 4 * v1225;
      v1235 = (v1227 + 4 * v1225);
      v1236 = (v1226 + v1234);
      do
      {
        v1237 = *v1236++;
        *v1235++ = fmaxf(v1237, 0.5);
        --v1233;
      }

      while (v1233);
    }
  }

  v1238 = v1452;
  if (v1452 >= 1)
  {
    v1239 = v1450[0];
    if (v1452 < 8)
    {
      v1240 = 0;
      goto LABEL_1194;
    }

    v1240 = v1452 & 0x7FFFFFF8;
    v1241 = (v1450[0] + 16);
    v1242 = vdupq_n_s32(0x42D90000u);
    v1243 = v1240;
    do
    {
      v1244 = vminnmq_f32(*v1241, v1242);
      v1241[-1] = vminnmq_f32(v1241[-1], v1242);
      *v1241 = v1244;
      v1241 += 2;
      v1243 -= 8;
    }

    while (v1243);
    if (v1240 != v1238)
    {
LABEL_1194:
      v1245 = v1238 - v1240;
      v1246 = (v1239 + 4 * v1240);
      do
      {
        *v1246 = fminf(*v1246, 108.5);
        ++v1246;
        --v1245;
      }

      while (v1245);
    }
  }

  *(v500 + 24) = v1215;
  *(v500 + 28) = 2;
  coder::array_base<float,int,2>::ensureCapacity(v500, 2 * v1215);
  if (v1215 >= 1)
  {
    v1247 = 0;
    v1248 = v1444[0];
    v1249 = *v500;
    if (v1215 < 8)
    {
      goto LABEL_1202;
    }

    if ((v1249 - v1444[0]) < 0x20)
    {
      goto LABEL_1202;
    }

    v1247 = v1215 & 0x7FFFFFF8;
    v1250 = (v1249 + 16);
    v1251 = (v1444[0] + 16);
    v1252 = v1247;
    do
    {
      v1253 = *v1251;
      *(v1250 - 1) = *(v1251 - 1);
      *v1250 = v1253;
      v1250 += 2;
      v1251 += 2;
      v1252 -= 8;
    }

    while (v1252);
    if (v1247 != v1215)
    {
LABEL_1202:
      v1254 = v1215 - v1247;
      v1255 = 4 * v1247;
      v1256 = (v1249 + v1255);
      v1257 = (v1248 + v1255);
      do
      {
        v1258 = *v1257++;
        *v1256++ = v1258;
        --v1254;
      }

      while (v1254);
    }
  }

  v1259 = *(v500 + 24);
  if (v1238 >= 1)
  {
    v1260 = v1450[0];
    v1261 = *v500;
    if (v1238 < 8 || (v1262 = 4 * v1259 + v1261, (v1262 - v1450[0]) < 0x20))
    {
      v1263 = 0;
      goto LABEL_1208;
    }

    v1263 = v1238 & 0x7FFFFFF8;
    v1357 = (v1262 + 16);
    v1358 = (v1450[0] + 16);
    v1359 = v1263;
    do
    {
      v1360 = *v1358;
      *(v1357 - 1) = *(v1358 - 1);
      *v1357 = v1360;
      v1357 += 2;
      v1358 += 2;
      v1359 -= 8;
    }

    while (v1359);
    if (v1263 != v1238)
    {
LABEL_1208:
      v1264 = v1238 - v1263;
      v1265 = 4 * v1263;
      v1266 = (v1261 + v1265 + 4 * v1259);
      v1267 = (v1260 + v1265);
      do
      {
        v1268 = *v1267++;
        *v1266++ = v1268;
        --v1264;
      }

      while (v1264);
    }
  }

  v1437 = v1259 | 0x200000000;
  coder::array_base<unsigned char,int,2>::ensureCapacity(v1435, 2 * v1259);
  v1269 = *(v500 + 24);
  if (v1269 >= 1)
  {
    v1270 = 0;
    LODWORD(v1271) = 2 * v1269;
    if (v1271 <= 1)
    {
      v1271 = 1;
    }

    else
    {
      v1271 = v1271;
    }

    v1272 = v1435[0];
    do
    {
      *(v1272 + v1270++) = 0;
    }

    while (v1271 != v1270);
  }

  v1273 = v1437;
  v1443 = v1437 & ~(v1437 >> 31);
  coder::array_base<float,int,2>::ensureCapacity(v1441, v1443);
  if (v1273 >= 1)
  {
    v1274 = v1441[0];
    if (v1273 < 8)
    {
      v1275 = 0;
      goto LABEL_1222;
    }

    v1275 = v1273 & 0x7FFFFFF8;
    v1276 = xmmword_2247A48C0;
    v1277 = (v1441[0] + 16);
    v1278.i64[0] = 0x100000001;
    v1278.i64[1] = 0x100000001;
    v1279.i64[0] = 0x500000005;
    v1279.i64[1] = 0x500000005;
    v1280.i64[0] = 0x800000008;
    v1280.i64[1] = 0x800000008;
    v1281 = v1275;
    do
    {
      v1277[-1] = vaddq_s32(v1276, v1278);
      *v1277 = vaddq_s32(v1276, v1279);
      v1276 = vaddq_s32(v1276, v1280);
      v1277 += 2;
      v1281 -= 8;
    }

    while (v1281);
    if (v1275 != v1273)
    {
LABEL_1222:
      v1282 = v1273 - v1275;
      v1283 = v1275 + 1;
      v1284 = (v1274 + 4 * v1275);
      do
      {
        *v1284++ = v1283++;
        --v1282;
      }

      while (v1282);
    }
  }

  v1285 = v1443;
  v1455 = v1443 | 0x200000000;
  coder::array_base<float,int,2>::ensureCapacity(v1453, 2 * v1443);
  v1286 = v1455;
  v1287 = v1453[0];
  if (v1285 >= 1)
  {
    v1288 = v1441[0];
    v1289 = *v500 - 4;
    v1290 = *(v500 + 24);
    v1291 = v1441[0];
    v1292 = v1453[0];
    v1293 = v1285;
    do
    {
      v1294 = *v1291++;
      *v1292++ = *(v1289 + 4 * v1294);
      --v1293;
    }

    while (v1293);
    v1295 = v1289 + 4 * v1290;
    v1296 = (v1287 + 4 * v1286);
    do
    {
      v1297 = *v1288++;
      *v1296++ = *(v1295 + 4 * v1297);
      --v1285;
    }

    while (v1285);
  }

  *(v500 + 24) = v1286;
  *(v500 + 28) = 2;
  v1298 = 2 * v1286;
  coder::array_base<float,int,2>::ensureCapacity(v500, 2 * v1286);
  if (v1286 >= 1)
  {
    v1299 = 0;
    v1300 = *v500;
    v1301 = v1298 <= 1 ? 1 : v1298;
    if (v1298 < 8)
    {
      goto LABEL_1238;
    }

    if ((v1300 - v1287) < 0x20)
    {
      goto LABEL_1238;
    }

    v1299 = v1301 & 0x7FFFFFF8;
    v1302 = (v1300 + 16);
    v1303 = (v1287 + 16);
    v1304 = v1299;
    do
    {
      v1305 = *v1303;
      *(v1302 - 1) = *(v1303 - 1);
      *v1302 = v1305;
      v1302 += 2;
      v1303 += 2;
      v1304 -= 8;
    }

    while (v1304);
    if (v1299 != v1301)
    {
LABEL_1238:
      v1306 = v1301 - v1299;
      v1307 = 4 * v1299;
      v1308 = (v1300 + v1307);
      v1309 = (v1287 + v1307);
      do
      {
        v1310 = *v1309++;
        *v1308++ = v1310;
        --v1306;
      }

      while (v1306);
    }
  }

  LODWORD(v1437) = *(v500 + 24);
  HIDWORD(v1437) = 2;
  coder::array_base<unsigned char,int,2>::ensureCapacity(v1435, 2 * v1437);
  v1311 = *(v500 + 24);
  if (v1311 >= 1)
  {
    v1312 = 0;
    LODWORD(v1313) = 2 * v1311;
    if (v1313 <= 1)
    {
      v1313 = 1;
    }

    else
    {
      v1313 = v1313;
    }

    v1314 = v1435[0];
    do
    {
      *(v1314 + v1312) = fabsf(*(*v500 + 4 * v1312)) == INFINITY;
      ++v1312;
    }

    while (v1313 != v1312);
  }

  v1315 = v1437;
  v1440 = v1437 & ~(v1437 >> 31);
  coder::array_base<float,int,2>::ensureCapacity(v1438, v1440);
  if (v1315 >= 1)
  {
    v1316 = v1438[0];
    if (v1315 < 8)
    {
      v1317 = 0;
      goto LABEL_1252;
    }

    v1317 = v1315 & 0x7FFFFFF8;
    v1318 = xmmword_2247A48C0;
    v1319 = (v1438[0] + 16);
    v1320.i64[0] = 0x100000001;
    v1320.i64[1] = 0x100000001;
    v1321.i64[0] = 0x500000005;
    v1321.i64[1] = 0x500000005;
    v1322.i64[0] = 0x800000008;
    v1322.i64[1] = 0x800000008;
    v1323 = v1317;
    do
    {
      v1319[-1] = vaddq_s32(v1318, v1320);
      *v1319 = vaddq_s32(v1318, v1321);
      v1318 = vaddq_s32(v1318, v1322);
      v1319 += 2;
      v1323 -= 8;
    }

    while (v1323);
    if (v1317 != v1315)
    {
LABEL_1252:
      v1324 = v1315 - v1317;
      v1325 = v1317 + 1;
      v1326 = (v1316 + 4 * v1317);
      do
      {
        *v1326++ = v1325++;
        --v1324;
      }

      while (v1324);
    }
  }

  v1327 = v1440;
  v1455 = v1440 | 0x200000000;
  coder::array_base<float,int,2>::ensureCapacity(v1453, 2 * v1440);
  v1328 = v1455;
  if (v1327 >= 1)
  {
    v1329 = v1438[0];
    v1330 = *(v500 + 24);
    v1331 = *v500 - 4;
    v1332 = v1453[0];
    v1333 = v1438[0];
    v1334 = v1453[0];
    v1335 = v1327;
    do
    {
      v1336 = *v1333++;
      *v1334++ = *(v1331 + 4 * v1336);
      --v1335;
    }

    while (v1335);
    v1337 = v1331 + 4 * v1330;
    v1338 = (v1332 + 4 * v1328);
    do
    {
      v1339 = *v1329++;
      *v1338++ = *(v1337 + 4 * v1339);
      --v1327;
    }

    while (v1327);
  }

  *(v500 + 24) = v1328;
  *(v500 + 28) = 2;
  v1340 = 2 * v1328;
  coder::array_base<float,int,2>::ensureCapacity(v500, 2 * v1328);
  if (v1328 >= 1)
  {
    v1341 = 0;
    v1342 = v1453[0];
    v1343 = *v500;
    v1344 = v1340 <= 1 ? 1 : v1340;
    if (v1340 < 8)
    {
      goto LABEL_1268;
    }

    if ((v1343 - v1453[0]) < 0x20)
    {
      goto LABEL_1268;
    }

    v1341 = v1344 & 0x7FFFFFF8;
    v1345 = (v1343 + 16);
    v1346 = (v1453[0] + 16);
    v1347 = v1341;
    do
    {
      v1348 = *v1346;
      *(v1345 - 1) = *(v1346 - 1);
      *v1345 = v1348;
      v1345 += 2;
      v1346 += 2;
      v1347 -= 8;
    }

    while (v1347);
    if (v1341 != v1344)
    {
LABEL_1268:
      v1349 = v1344 - v1341;
      v1350 = 4 * v1341;
      v1351 = (v1343 + v1350);
      v1352 = (v1342 + v1350);
      do
      {
        v1353 = *v1352++;
        *v1351++ = v1353;
        --v1349;
      }

      while (v1349);
    }
  }

  if (v1436 == 1 && v1435[0])
  {
    MEMORY[0x22AA53170](v1435[0], 0x1000C8077774924);
  }

  if (v503)
  {
    v1354 = v504;
  }

  else
  {
    v1354 = 0;
  }

  if (v1354)
  {
    MEMORY[0x22AA53170](v503, 0x1000C8077774924);
  }

  if (v499)
  {
    v1355 = v502;
  }

  else
  {
    v1355 = 0;
  }

  if (v1355 == 1)
  {
    MEMORY[0x22AA53170](v499, 0x1000C80BDFB0063);
  }

  if (v1439 == 1 && v1438[0])
  {
    MEMORY[0x22AA53170](v1438[0], 0x1000C8052888210);
  }

  if (v1442 == 1 && v1441[0])
  {
    MEMORY[0x22AA53170](v1441[0], 0x1000C8052888210);
  }

  if (v1445 == 1 && v1444[0])
  {
    MEMORY[0x22AA53170](v1444[0], 0x1000C8052888210);
  }

  if (v1448 == 1 && v1447[0])
  {
    MEMORY[0x22AA53170](v1447[0], 0x1000C8052888210);
  }

  if (v1451 == 1 && v1450[0])
  {
    MEMORY[0x22AA53170](v1450[0], 0x1000C8052888210);
  }

  if (v1454 == 1 && v1453[0])
  {
    MEMORY[0x22AA53170](v1453[0], 0x1000C8052888210);
  }

  result = __src;
  if ((v501 & (__src != 0)) == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_224785B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x268]) == 1 && STACK[0x258])
  {
    MEMORY[0x22AA53170](STACK[0x258], 0x1000C8077774924);
  }

  if (v72)
  {
    v74 = v71 ^ 1;
  }

  else
  {
    v74 = 1;
  }

  if ((v74 & 1) == 0)
  {
    MEMORY[0x22AA53170](v72, 0x1000C8077774924);
  }

  if (v69)
  {
    v75 = v70 ^ 1;
  }

  else
  {
    v75 = 1;
  }

  if ((v75 & 1) == 0)
  {
    MEMORY[0x22AA53170](v69, 0x1000C80BDFB0063);
  }

  if (LOBYTE(STACK[0x288]) == 1 && STACK[0x278])
  {
    MEMORY[0x22AA53170](STACK[0x278], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x2A8]) == 1 && STACK[0x298])
  {
    MEMORY[0x22AA53170](STACK[0x298], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x2C8]) == 1 && STACK[0x2B8])
  {
    MEMORY[0x22AA53170](STACK[0x2B8], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x2E8]) == 1 && STACK[0x2D8])
  {
    MEMORY[0x22AA53170](STACK[0x2D8], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x308]) == 1 && STACK[0x2F8])
  {
    MEMORY[0x22AA53170](STACK[0x2F8], 0x1000C8052888210);
  }

  if (LOBYTE(STACK[0x328]) == 1 && STACK[0x318])
  {
    MEMORY[0x22AA53170](STACK[0x318], 0x1000C8052888210);
  }

  if ((v68 & (a68 != 0)) == 1)
  {
    MEMORY[0x22AA53170](a68, 0x1000C8000313F17);
  }

  _Unwind_Resume(a1);
}

uint64_t *coder::array<cell_wrap_1,2>::~array(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result;
      v3 = v1 - 16;
      v4 = *(v1 - 8);
      if (v4)
      {
        v5 = 32 * v4;
        v6 = v5 + v1 - 16;
        v7 = -v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 32;
          if (v9 == 1)
          {
            v10 = *(v6 - 16);
            if (v10)
            {
              MEMORY[0x22AA53170](v10, 0x1000C8052888210);
            }
          }

          v6 = v8;
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x22AA53170](v3, 0x1080C8075AFF985);
      return v2;
    }
  }

  return result;
}

uint64_t *coder::array<cell_wrap_0,2>::~array(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result;
      v3 = v1 - 16;
      v4 = *(v1 - 8);
      if (v4)
      {
        v5 = 32 * v4;
        v6 = v5 + v1 - 16;
        v7 = -v5;
        v8 = v6;
        do
        {
          v9 = *v8;
          v8 -= 32;
          if (v9 == 1)
          {
            v10 = *(v6 - 16);
            if (v10)
            {
              MEMORY[0x22AA53170](v10, 0x1000C8052888210);
            }
          }

          v6 = v8;
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x22AA53170](v3, 0x1080C808A25AF7CLL);
      return v2;
    }
  }

  return result;
}

uint64_t coder::fft2(uint64_t a1, uint64_t a2)
{
  v3 = coder::fft2(float const*,creal32_T *)::fcv;
  coder::internal::FFTImplementationCallback::doHalfLengthRadix2(a1, coder::fft2(float const*,creal32_T *)::fcv);
  v4 = 0;
  v5 = &unk_27D35B548;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = 84;
    do
    {
      v9 = v6[256];
      *(v7 - 1) = *v6;
      *v7 = v9;
      v7 += 2;
      v6 += 512;
      v8 -= 2;
    }

    while (v8);
    ++v4;
    v5 += 84;
    ++v3;
  }

  while (v4 != 256);
  bzero(coder::fft2(float const*,creal32_T *)::yPerm, 0x80000uLL);
  v10 = 0;
  v11 = 0;
  v12 = &unk_27D2B154C;
  v13 = 1;
  v14 = coder::fft2(float const*,creal32_T *)::yPerm;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = v10 << 8;
    v18 = v10 << 8;
    do
    {
      coder::fft2(float const*,creal32_T *)::yPerm[v18] = coder::fft2(float const*,creal32_T *)::xPerm[84 * v10 + v15];
      v19 = 256;
      do
      {
        v20 = v16;
        v19 >>= 1;
        v16 ^= v19;
      }

      while ((v19 & ~v20) == 0);
      v18 = v16 + v17;
      ++v15;
    }

    while (v15 != 83);
    v21 = 0;
    coder::fft2(float const*,creal32_T *)::yPerm[v18] = coder::fft2(float const*,creal32_T *)::xPerm[84 * v10 + 83];
    do
    {
      v22 = &v14[v21];
      v62 = vld4q_f32(v22);
      v63.val[2] = vsubq_f32(v62.val[0], v62.val[2]);
      v63.val[3] = vsubq_f32(v62.val[1], v62.val[3]);
      v63.val[0] = vaddq_f32(v62.val[0], v62.val[2]);
      v63.val[1] = vaddq_f32(v62.val[1], v62.val[3]);
      vst4q_f32(v22, v63);
      v21 += 8;
    }

    while (v21 != 256);
    LODWORD(result) = 2;
    v24 = 4;
    v25 = 253;
    v26 = 64;
    do
    {
      v28 = result;
      result = v24;
      if (v25 >= 1)
      {
        v29 = 0;
        v30 = v28;
        v31 = 8 * v24;
        v32 = v11;
        v33 = &v14[v28];
        do
        {
          v34 = (v33 + v29);
          v35 = *(v33 + v29);
          v36 = *(v33 + v29 + 4);
          v37 = (v14 + v29);
          v38 = *(v14 + v29);
          v39 = *(v14 + v29 + 4);
          *v34 = v38 - v35;
          v34[1] = v39 - v36;
          *v37 = v38 + v35;
          v37[1] = v39 + v36;
          v32 += v24;
          v29 += v31;
        }

        while (v32 < v25 + v17);
        v40 = &coder::fft2(float const*,creal32_T *)::yPerm[v13 + v30] + 1;
        v41 = v12;
        v42 = v26;
        v43 = v13;
        do
        {
          v44 = fv[v42];
          v45 = coder::fft2(float const*,creal32_T *)::b_fv[v42];
          v46 = v41;
          v47 = v40;
          v48 = v43;
          do
          {
            v49 = *(v47 - 1);
            v50 = -((*v47 * v45) - (v49 * v44));
            v51 = (*v47 * v44) + (v49 * v45);
            v52 = *(v46 - 1);
            v53 = *v46;
            v54 = *v46 - v51;
            *(v47 - 1) = v52 - v50;
            *v47 = v54;
            *(v46 - 1) = v50 + v52;
            *v46 = v53 + v51;
            v48 += v24;
            v47 = (v47 + v31);
            v46 = (v46 + v31);
          }

          while (v48 < v43 + v25);
          ++v43;
          v42 += v26;
          v40 += 2;
          v41 += 2;
        }

        while (v42 < 0x80);
      }

      v24 = (2 * v24);
      v25 -= result;
      v27 = v26 > 1;
      v26 >>= 1;
    }

    while (v27);
    ++v10;
    v11 += 256;
    v13 += 256;
    v14 += 256;
    v12 += 512;
  }

  while (v10 != 256);
  v55 = 0;
  v56 = (a2 + 8);
  v57 = coder::fft2(float const*,creal32_T *)::yPerm;
  do
  {
    v58 = v57;
    v59 = v56;
    v60 = 256;
    do
    {
      v61 = v58[256];
      *(v59 - 1) = *v58;
      *v59 = v61;
      v59 += 2;
      v58 += 512;
      v60 -= 2;
    }

    while (v60);
    ++v55;
    v56 += 256;
    ++v57;
  }

  while (v55 != 256);
  return result;
}

uint64_t coder::array_base<unsigned char,int,2>::ensureCapacity(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    if (v2 <= 16)
    {
      v2 = 16;
    }

    if (a2 >= 17)
    {
      do
      {
        if (v2 <= 0x3FFFFFFF)
        {
          v2 *= 2;
        }

        else
        {
          v2 = 0x7FFFFFFF;
        }
      }

      while (v2 < a2);
    }

    operator new[]();
  }

  *(result + 8) = a2;
  return result;
}

float coder::cat(coder *this, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  *a9 = *this;
  a9[14] = *a2;
  a9[28] = *a3;
  a9[42] = *a4;
  a9[56] = *a5;
  a9[70] = *a6;
  a9[84] = *a7;
  a9[98] = *a8;
  a9[1] = *(this + 1);
  a9[15] = a2[1];
  a9[29] = a3[1];
  a9[43] = a4[1];
  a9[57] = a5[1];
  a9[71] = a6[1];
  a9[85] = a7[1];
  a9[99] = a8[1];
  a9[2] = *(this + 2);
  a9[16] = a2[2];
  a9[30] = a3[2];
  a9[44] = a4[2];
  a9[58] = a5[2];
  a9[72] = a6[2];
  a9[86] = a7[2];
  a9[100] = a8[2];
  a9[3] = *(this + 3);
  a9[17] = a2[3];
  a9[31] = a3[3];
  a9[45] = a4[3];
  a9[59] = a5[3];
  a9[73] = a6[3];
  a9[87] = a7[3];
  a9[101] = a8[3];
  a9[4] = *(this + 4);
  a9[18] = a2[4];
  a9[32] = a3[4];
  a9[46] = a4[4];
  a9[60] = a5[4];
  a9[74] = a6[4];
  a9[88] = a7[4];
  a9[102] = a8[4];
  a9[5] = *(this + 5);
  a9[19] = a2[5];
  a9[33] = a3[5];
  a9[47] = a4[5];
  a9[61] = a5[5];
  a9[75] = a6[5];
  a9[89] = a7[5];
  a9[103] = a8[5];
  a9[6] = *(this + 6);
  a9[20] = a2[6];
  a9[34] = a3[6];
  a9[48] = a4[6];
  a9[62] = a5[6];
  a9[76] = a6[6];
  a9[90] = a7[6];
  a9[104] = a8[6];
  a9[7] = *(this + 7);
  a9[21] = a2[7];
  a9[35] = a3[7];
  a9[49] = a4[7];
  a9[63] = a5[7];
  a9[77] = a6[7];
  a9[91] = a7[7];
  a9[105] = a8[7];
  a9[8] = *(this + 8);
  a9[22] = a2[8];
  a9[36] = a3[8];
  a9[50] = a4[8];
  a9[64] = a5[8];
  a9[78] = a6[8];
  a9[92] = a7[8];
  a9[106] = a8[8];
  a9[9] = *(this + 9);
  a9[23] = a2[9];
  a9[37] = a3[9];
  a9[51] = a4[9];
  a9[65] = a5[9];
  a9[79] = a6[9];
  a9[93] = a7[9];
  a9[107] = a8[9];
  a9[10] = *(this + 10);
  a9[24] = a2[10];
  a9[38] = a3[10];
  a9[52] = a4[10];
  a9[66] = a5[10];
  a9[80] = a6[10];
  a9[94] = a7[10];
  a9[108] = a8[10];
  a9[11] = *(this + 11);
  a9[25] = a2[11];
  a9[39] = a3[11];
  a9[53] = a4[11];
  a9[67] = a5[11];
  a9[81] = a6[11];
  a9[95] = a7[11];
  a9[109] = a8[11];
  a9[12] = *(this + 12);
  a9[26] = a2[12];
  a9[40] = a3[12];
  a9[54] = a4[12];
  a9[68] = a5[12];
  a9[82] = a6[12];
  a9[96] = a7[12];
  a9[110] = a8[12];
  a9[13] = *(this + 13);
  a9[27] = a2[13];
  a9[41] = a3[13];
  a9[55] = a4[13];
  a9[69] = a5[13];
  a9[83] = a6[13];
  a9[97] = a7[13];
  result = a8[13];
  a9[111] = result;
  return result;
}

uint64_t *get_peridot_nominal_jlin(afdr_package::bufferClass *a1, afdr_package::jlin_v100::jlinClass *a2, uint64_t a3, float a4)
{
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v68 = *MEMORY[0x277D85DE8];
  bzero((v4 + 4), 0x1048uLL);
  *v6 = v7;
  v6[1] = 0;
  *v7 = 100;
  v8 = *v6;
  v9 = v6[1] << 32;
  *(v8 + ((v9 + 0x400000000) >> 32)) = 55;
  *(v8 + ((v9 + 0x500000000) >> 32)) = 26;
  *(v8 + ((v9 + 0x600000000) >> 32)) = -64;
  *(v8 + ((v9 + 0x700000000) >> 32)) = 91;
  *(v8 + ((v9 + 0x800000000) >> 32)) = 32;
  *(v8 + ((v9 + 0x900000000) >> 32)) = 65;
  *(v8 + ((v9 + 0xA00000000) >> 32)) = -19;
  *(v8 + ((v9 + 0xB00000000) >> 32)) = 63;
  v10 = *v6;
  v11 = v6[1] << 32;
  *(v10 + ((v11 + 0xC00000000) >> 32)) = 77;
  *(v10 + ((v11 + 0xD00000000) >> 32)) = -37;
  *(v10 + ((v11 + 0xE00000000) >> 32)) = -65;
  *(v10 + ((v11 + 0xF00000000) >> 32)) = -78;
  *(v10 + ((v11 + 0x1000000000) >> 32)) = -46;
  *(v10 + ((v11 + 0x1100000000) >> 32)) = -92;
  *(v10 + ((v11 + 0x1200000000) >> 32)) = -124;
  *(v10 + ((v11 + 0x1300000000) >> 32)) = 63;
  v12 = *v6;
  v13 = v6[1];
  v14 = vdupq_n_s64(v13);
  v15 = vaddq_s64(v14, xmmword_2247A53A0);
  v16 = vaddq_s64(v14, xmmword_2247A53B0);
  v17 = vaddq_s64(v14, xmmword_2247A53C0);
  v18 = vaddq_s64(v14, xmmword_2247A53D0);
  v19 = vaddq_s64(v14, xmmword_2247A53E0);
  v20 = vaddq_s64(v14, xmmword_2247A53F0);
  v13 <<= 32;
  *(v12 + ((v13 + 0x1400000000) >> 32)) = -43;
  *(v12 + v15.i32[0]) = -49;
  *(v12 + v15.i32[2]) = -101;
  *(v12 + v16.i32[0]) = -118;
  *(v12 + v16.i32[2]) = 84;
  *(v12 + v17.i32[0]) = 24;
  *(v12 + v17.i32[2]) = -37;
  *(v12 + v18.i32[0]) = 63;
  *(v12 + v18.i32[2]) = 9;
  *(v12 + v19.i32[0]) = -31;
  *(v12 + v19.i32[2]) = -47;
  *(v12 + v20.i32[0]) = -58;
  v21 = vaddq_s64(v14, xmmword_2247A5400);
  *(v12 + v20.i32[2]) = 17;
  *(v12 + v21.i32[0]) = 107;
  *(v12 + v21.i32[2]) = -31;
  *(v12 + ((v13 + 0x2300000000) >> 32)) = 63;
  v22 = vdupq_lane_s64(v6[1], 0);
  *v59 = vaddq_s64(v22, xmmword_2247A5290);
  v60 = vaddq_s64(v22, xmmword_2247A52A0);
  v61 = vaddq_s64(v22, xmmword_2247A52B0);
  v62 = vaddq_s64(v22, xmmword_2247A52C0);
  v63 = vaddq_s64(v22, xmmword_2247A52D0);
  v64 = vaddq_s64(v22, xmmword_2247A52E0);
  v65 = vaddq_s64(v22, xmmword_2247A52F0);
  v66 = vaddq_s64(v22, xmmword_2247A5300);
  afdr_package::bufferClass::setData(*v6, v59, get_peridot_nominal_jlin(afdr_package::bufferClass *,afdr_package::jlin_v100::jlinClass *)::S_type);
  v23 = (v6 + 1);
  v24 = vld1q_dup_f64(v23);
  *v59 = vaddq_s64(v24, xmmword_2247A5410);
  v60 = vaddq_s64(v24, xmmword_2247A5420);
  v61 = vaddq_s64(v24, xmmword_2247A5430);
  v62 = vaddq_s64(v24, xmmword_2247A5440);
  v63 = vaddq_s64(v24, xmmword_2247A5450);
  v64 = vaddq_s64(v24, xmmword_2247A5460);
  v65 = vaddq_s64(v24, xmmword_2247A5470);
  v66 = vaddq_s64(v24, xmmword_2247A5480);
  afdr_package::bufferClass::setData(*v6, v59, get_peridot_nominal_jlin(afdr_package::bufferClass *,afdr_package::jlin_v100::jlinClass *)::S_type);
  v25 = 0;
  v26 = xmmword_2247A4650;
  v27 = vdupq_n_s64(v6[1] + 36);
  v28 = vdupq_n_s64(2uLL);
  v29 = vdupq_n_s64(4uLL);
  do
  {
    v30 = vaddq_s64(v27, v26);
    v31 = &v67[v25];
    *v31 = v30;
    v31[1] = vaddq_s64(v30, v28);
    v26 = vaddq_s64(v26, v29);
    v25 += 32;
  }

  while (v25 != 0x4000);
  v32 = *v6;
  v33 = 0x100000000;
  v34 = &v58;
  v35 = 256;
  v36 = vdupq_n_s64(0x3F6F03A5C468173AuLL);
  do
  {
    v37 = vadd_s32(v33, 0x200000002);
    v38.i64[0] = v33.u32[0];
    v38.i64[1] = v33.u32[1];
    v39 = vcvtq_f64_u64(v38);
    v38.i64[0] = v37.u32[0];
    v38.i64[1] = v37.u32[1];
    v34[-1] = vmulq_f64(v39, v36);
    *v34 = vmulq_f64(vcvtq_f64_u64(v38), v36);
    v33 = vadd_s32(v33, 0x400000004);
    v34 += 2;
    v35 -= 4;
  }

  while (v35);
  v40 = 0;
  v41 = v57;
  do
  {
    v42 = *(v41 - 1);
    v43 = *v41;
    v41 += 2;
    *(v32 + *&v67[v40]) = v42;
    *(v32 + *&v67[v40 + 8]) = v43;
    v40 += 16;
  }

  while (v40 != 0x4000);
  v44 = 0;
  v45 = xmmword_2247A4650;
  v46 = vdupq_n_s64(v6[1] + 2084);
  v47 = vdupq_n_s64(2uLL);
  v48 = vdupq_n_s64(4uLL);
  do
  {
    v49 = vaddq_s64(v46, v45);
    v50 = &v67[v44];
    *v50 = v49;
    v50[1] = vaddq_s64(v49, v47);
    v45 = vaddq_s64(v45, v48);
    v44 += 32;
  }

  while (v44 != 0x4000);
  v51 = 0;
  v52 = *v6;
  v53 = &byte_2247BBA59;
  do
  {
    v54 = *(v53 - 1);
    v55 = *v53;
    v53 += 2;
    *(v52 + *&v67[v51]) = v54;
    *(v52 + *&v67[v51 + 8]) = v55;
    v51 += 16;
  }

  while (v51 != 0x4000);
  return v6;
}

void *coder::interp1(coder *this, const float *a2, const float *a3, const float *a4, float *a5, int *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, sizeof(__dst));
  result = memcpy(v36, this, sizeof(v36));
  v11 = 0;
  *a5 = 0x100000070;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 6) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 9) = 0u;
  *(a4 + 10) = 0u;
  *(a4 + 11) = 0u;
  *(a4 + 12) = 0u;
  *(a4 + 13) = 0u;
  *(a4 + 14) = 0u;
  *(a4 + 15) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 17) = 0u;
  *(a4 + 18) = 0u;
  *(a4 + 19) = 0u;
  *(a4 + 20) = 0u;
  *(a4 + 21) = 0u;
  *(a4 + 22) = 0u;
  *(a4 + 23) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 25) = 0u;
  *(a4 + 26) = 0u;
  *(a4 + 27) = 0u;
  while (v11 != 1024)
  {
    v11 += 4;
  }

  if (*(this + 1) < *this)
  {
    v12 = 0;
    for (i = 255; i != 127; --i)
    {
      v14 = v36[v12];
      v36[v12] = v36[i];
      v36[i] = v14;
      v15 = __dst[v12];
      __dst[v12] = __dst[i];
      __dst[i] = v15;
      ++v12;
    }
  }

  v16 = 0;
  v17 = v36[255];
  *a5 = 0x100000070;
  v18 = v36[0];
  v19 = __dst[0];
  v20 = __dst[1] - __dst[0];
  v21 = __dst[255];
  v22 = __dst[255] - __dst[254];
  v23 = 1.0 / (v36[1] - v36[0]);
  v24 = 1.0 / (v17 - v36[254]);
  do
  {
    v26 = a3[v16];
    if (v26 > v17)
    {
      v25 = v21 + ((v22 * (v26 - v17)) * v24);
    }

    else if (v26 >= v18)
    {
      v27 = 256;
      v28 = 2;
      v29 = 1;
      do
      {
        v30 = (v27 >> 1) + (v29 >> 1) + (v29 & v27 & 1);
        v31 = __dst[v30 + 255];
        if (v31 <= v26)
        {
          v28 = v30 + 1;
        }

        else
        {
          v27 = (v27 >> 1) + (v29 >> 1) + (v29 & v27 & 1);
        }

        if (v31 <= v26)
        {
          v29 = v30;
        }
      }

      while (v27 > v28);
      v32 = v29 - 1;
      v33 = (v26 - v36[v32]) / (v36[v29] - v36[v32]);
      if (v33 == 0.0)
      {
        v25 = __dst[v32];
      }

      else if (v33 == 1.0)
      {
        v25 = __dst[v29];
      }

      else
      {
        v25 = __dst[v32];
        v34 = __dst[v29];
        if (v25 != v34)
        {
          v25 = v25 + ((v34 - v25) * v33);
        }
      }
    }

    else
    {
      v25 = v19 + ((v20 * (v26 - v18)) * v23);
    }

    a4[v16++] = v25;
  }

  while (v16 != 112);
  return result;
}

float32x4_t *ransac::ransacComputeHomography(ransac *this, const float *a2, const int *a3, const float *a4, const int *a5, float *a6, float a7)
{
  v8 = MEMORY[0x28223BE20](this, a2, a3, a7);
  v2607 = v12;
  v14 = v13;
  v16 = v15;
  v17 = v9;
  v2936 = *MEMORY[0x277D85DE8];
  if (v9 < 1)
  {
    v20.i32[0] = 2143289344;
    v21.i32[0] = 2143289344;
    v19.i32[0] = 2143289344;
    goto LABEL_141;
  }

  v18 = v8;
  memcpy(&v2790, v8, 4 * (3 * v9));
  if (v17 > 8)
  {
    v23 = v17 & 7;
    if (!v23)
    {
      v23 = 8;
    }

    v22 = v17 - v23;
    v24 = v2767;
    v25 = (v18 + 56);
    v26 = v22;
    do
    {
      v27 = v25 - 12;
      v28 = vld3q_f32(v27);
      v29 = vld3q_f32(v25);
      v10 = vabsq_f32(v28);
      v11 = vabsq_f32(v29);
      v24[-1] = v10;
      *v24 = v11;
      v24 += 2;
      v25 += 24;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

  v30 = &v18[12 * v22 + 8];
  do
  {
    v31 = *v30;
    v30 += 3;
    *&v2766[4 * v22++ - 4] = fabsf(v31);
  }

  while (v17 != v22);
  if (v17 > 3)
  {
    if (v17 >= 0x20)
    {
      v32 = v17 & 0x7FFFFFE0;
      v33 = v2743;
      v34 = v2769;
      v10 = vdupq_n_s32(0x25800000u);
      v11.i64[0] = 0x101010101010101;
      v11.i64[1] = 0x101010101010101;
      v35 = v32;
      do
      {
        v36 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(*v34, v10), vcgtq_f32(v34[1], v10)), vuzp1q_s16(vcgtq_f32(v34[2], v10), vcgtq_f32(v34[3], v10))), v11);
        v33[-1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v34[-4], v10), vcgtq_f32(v34[-3], v10)), vuzp1q_s16(vcgtq_f32(v34[-2], v10), vcgtq_f32(v34[-1], v10))), v11);
        *v33 = v36;
        v33 += 2;
        v34 += 8;
        v35 -= 32;
      }

      while (v35);
      if (v32 == v17)
      {
        goto LABEL_24;
      }

      if ((v17 & 0x1C) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 0;
    }

    v37 = v32;
    v32 = v17 & 0x7FFFFFFC;
    v38 = v37 - v32;
    v39 = &v2742[v37 + 9];
    v10 = vdupq_n_s32(0x25800000u);
    v11.i32[1] = 65537;
    v40 = &v2766[4 * v37 - 4];
    do
    {
      v41 = *v40++;
      *v39++ = vuzp1_s8(vand_s8(vmovn_s32(vcgtq_f32(v41, v10)), 0x1000100010001), *v10.f32).u32[0];
      v38 += 4;
    }

    while (v38);
    if (v32 == v17)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v32 = 0;
LABEL_22:
  v42 = v17 - v32;
  v43 = &v2742[v32 + 9];
  v44 = &v2766[4 * v32 - 4];
  do
  {
    v45 = *v44++;
    *v43++ = v45 > 2.2204e-16;
    --v42;
  }

  while (v42);
LABEL_24:
  v46 = 0;
  v47 = 0;
  while (!v2742[v46 + 9])
  {
    ++v46;
LABEL_26:
    if (v46 >= v17)
    {
      goto LABEL_31;
    }
  }

  __src[v47] = v46 + 1;
  v48 = (v47 + 1) < v17;
  if ((v47 + 1) < v17)
  {
    ++v46;
  }

  ++v47;
  if (v48)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v17 == 1)
  {
    if (v47)
    {
      v49 = 0;
      __dst = __src[0];
      v50 = 1;
      v51 = 1;
      v47 = 1;
      goto LABEL_42;
    }

    v52 = 0;
    v19.i32[0] = 2143289344;
    v21.i32[0] = 2143289344;
    v20.i32[0] = 2143289344;
    goto LABEL_139;
  }

  if (v47 < 1)
  {
    v10.i64[0] = 0;
    v53 = NAN;
    v54 = NAN;
    v55 = 0.0;
  }

  else
  {
    v51 = v47;
    memcpy(&__dst, __src, 4 * v47);
    if (v47 == 1)
    {
      v49 = 0;
      v50 = 1;
      do
      {
LABEL_42:
        *(&v2790 + 3 * *&v2749[4 * v49 - 4] - 3) = *&v18[12 * *&v2749[4 * v49 - 4] - 12] / *&v18[12 * *&v2749[4 * v49 - 4] - 4];
        ++v49;
      }

      while (v51 != v49);
      if (v50)
      {
        v60 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v49 = v47 & 0x7FFFFFFE;
      v56 = v2749;
      v57 = v49;
      do
      {
        v58 = 3 * *v56;
        v59 = *&v18[4 * v58 - 12] / *&v18[4 * v58 - 4];
        *(&v2790 + 3 * *(v56 - 1) - 3) = *&v18[12 * *(v56 - 1) - 12] / *&v18[12 * *(v56 - 1) - 4];
        *(&v2790 + v58 - 3) = v59;
        v56 += 2;
        v57 -= 2;
      }

      while (v57);
      v50 = 0;
      if (v49 != v47)
      {
        goto LABEL_42;
      }
    }

    v60 = v51 & 0x7FFFFFFE;
    v61 = v2773;
    v62 = v2749;
    v63 = v60;
    do
    {
      v64 = *(&v2790 + 3 * *v62 - 2) / *(&v2790 + 3 * *v62 - 1);
      *(v61 - 1) = *(&v2790 + 3 * *(v62 - 1) - 2) / *(&v2790 + 3 * *(v62 - 1) - 1);
      *v61 = v64;
      v61 += 2;
      v62 += 2;
      v63 -= 2;
    }

    while (v63);
    for (; v51 != v60; ++v60)
    {
LABEL_48:
      *&v2773[4 * v60 - 4] = *(&v2790 + 3 * *&v2749[4 * v60 - 4] - 2) / *(&v2790 + 3 * *&v2749[4 * v60 - 4] - 1);
    }

    if (v50)
    {
      v65 = 0;
      goto LABEL_54;
    }

    v65 = v51 & 0x7FFFFFFE;
    v66 = v2749;
    v67 = v2773;
    v68 = v65;
    do
    {
      v69 = *v67;
      v70 = 3 * *v66;
      *(&v2790 + 3 * *(v66 - 1) - 2) = *(v67 - 1);
      *(&v2790 + v70 - 2) = v69;
      v66 += 2;
      v67 += 2;
      v68 -= 2;
    }

    while (v68);
    if (v65 != v51)
    {
LABEL_54:
      v71 = v51 - v65;
      v72 = 4 * v65;
      v73 = &v2749[4 * v65 - 4];
      v74 = &v2773[v72 - 4];
      do
      {
        v75 = *v74++;
        v76 = v75;
        v77 = *v73++;
        *(&v2790 + 3 * v77 - 2) = v76;
        --v71;
      }

      while (v71);
    }

    if (v47 <= 3)
    {
      v78 = 0;
      goto LABEL_67;
    }

    if (v47 >= 0x20)
    {
      v78 = v51 & 0x7FFFFFE0;
      v79 = v2745;
      v80 = v2750;
      v10 = xmmword_2247A4600;
      v81 = v78;
      do
      {
        v82 = v80->val[0];
        v83 = v80->val[1];
        v11 = vqtbl4q_s8(v80[-1], xmmword_2247A4600);
        v84 = v80->val[2];
        v19 = v80->val[3];
        v79[-1] = v11;
        *v79 = vqtbl4q_s8(*(&v19 - 3), xmmword_2247A4600);
        v79 += 2;
        v80 += 2;
        v81 -= 32;
      }

      while (v81);
      if (v78 != v51)
      {
        if ((v51 & 0x1C) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v78 = 0;
LABEL_64:
      v85 = v78;
      v78 = v51 & 0x7FFFFFFC;
      v86 = v85 - v78;
      v87 = &v2743[v85 + 96];
      v88 = &v2749[4 * v85 - 4];
      do
      {
        v89 = *v88++;
        v10.i64[1] = v89.i64[1];
        *v10.f32 = vmovn_s32(v89);
        *v10.f32 = vuzp1_s8(*v10.f32, *v10.f32);
        *v87++ = v10.i32[0];
        v86 += 4;
      }

      while (v86);
      if (v78 != v51)
      {
LABEL_67:
        v90 = v51 - v78;
        v91 = &v2743[v78 + 96];
        v92 = &v2749[4 * v78 - 4];
        do
        {
          v93 = *v92++;
          *v91++ = v93;
          --v90;
        }

        while (v90);
      }
    }

    if (v50)
    {
      v94 = 0;
      goto LABEL_74;
    }

    v94 = v51 & 0x7FFFFFFE;
    v95 = v2744;
    v96 = v94;
    do
    {
      v97 = &v2790 + 3 * *v95;
      *(&v2790 + 3 * *(v95 - 1) - 1) = 1.0;
      *(v97 - 1) = 1.0;
      v95 += 2;
      v96 -= 2;
    }

    while (v96);
    if (v94 != v51)
    {
LABEL_74:
      v98 = v51 - v94;
      v99 = &v2743[v94 + 96];
      do
      {
        v100 = *v99++;
        *(&v2790 + 3 * v100 - 1) = 1.0;
        --v98;
      }

      while (v98);
    }

    v101 = 0;
    v102 = v2776;
    do
    {
      v103 = 3 * *&v2749[4 * v101 - 4];
      v104 = *(&v2790 + v103 - 2);
      *(v102 - 1) = *(&v2790 + v103 - 3);
      *v102 = v104;
      ++v101;
      v102 += 2;
    }

    while (v51 != v101);
    v105 = v2775;
    v106 = v2776[0];
    if ((v50 & 1) == 0)
    {
      if (v47 < 0x15)
      {
        v107 = 2;
        goto LABEL_88;
      }

      v108 = v51 - 2;
      v107 = 2;
      if (((v51 - 2) & 0x7FFFFFFFu) > 0x3FFFFFFE || (2 * v108) > 0x7FFFFFFD || v108 >> 31)
      {
LABEL_88:
        v119 = v47 + 1 - v107;
        v120 = 2 * v107 - 1;
        v121 = (v107 << 33) - 0x200000000;
        do
        {
          v105 = *(&v2776[-1] + (v121 >> 30)) + v105;
          v106 = v2776[v120 - 1] + v106;
          v120 += 2;
          v121 += 0x200000000;
          --v119;
        }

        while (v119);
      }

      else
      {
        v109 = 0;
        v110 = (v51 - 1) & 0xFFFFFFFFFFFFFFF8;
        v111 = 0uLL;
        v112 = LODWORD(v2776[0]);
        v113 = LODWORD(v2775);
        v114 = v110;
        v11 = 0uLL;
        do
        {
          v115 = (&v2776[-1] + (v109 >> 30));
          v116 = v115 + 2;
          v2937 = vld2q_f32(v116);
          v115 += 10;
          v2939 = vld2q_f32(v115);
          v113 = vaddq_f32(v2937.val[0], v113);
          v11 = vaddq_f32(v2939.val[0], v11);
          v112 = vaddq_f32(v2937.val[1], v112);
          v111 = vaddq_f32(v2939.val[1], v111);
          v109 += 0x1000000000;
          v114 -= 8;
        }

        while (v114);
        v117 = vaddq_f32(v111, v112);
        v106 = vaddv_f32(*&vpaddq_f32(v117, v117));
        v118 = vaddq_f32(v11, v113);
        v10 = vpaddq_f32(v118, v118);
        v105 = vaddv_f32(*v10.f32);
        if (v51 - 1 != v110)
        {
          v107 = v110 | 2;
          goto LABEL_88;
        }
      }
    }

    v122 = 0;
    v10.f32[0] = v47;
    v53 = v105 / v47;
    v123 = v2776;
    v54 = v106 / v47;
    do
    {
      v124 = v122;
      if (v47 == 1)
      {
        v124 = 0;
      }

      v125 = 3 * *&v2749[4 * v124 - 4];
      v126 = *(&v2790 + v125 - 2) - v54;
      *(v123 - 1) = *(&v2790 + v125 - 3) - v53;
      *v123 = v126;
      ++v122;
      v123 += 2;
    }

    while (v51 != v122);
    if (v47 > 8)
    {
      v128 = v51 & 7;
      if ((v51 & 7) == 0)
      {
        v128 = 8;
      }

      v127 = v51 - v128;
      v129 = v2767;
      v130 = v2777;
      v131 = v127;
      do
      {
        v132 = v130 - 8;
        v133 = vld2q_f32(v132);
        v134 = vld2q_f32(v130);
        v129[-1] = vmulq_f32(v133, v133);
        *v129 = vmulq_f32(v134, v134);
        v129 += 2;
        v130 += 16;
        v131 -= 8;
      }

      while (v131);
    }

    else
    {
      v127 = 0;
    }

    v135 = &v2776[2 * v127 - 1];
    do
    {
      v136 = *v135;
      v135 += 2;
      *&v2766[4 * v127++ - 4] = v136 * v136;
    }

    while (v51 != v127);
    if (v47 > 8)
    {
      v138 = v51 & 7;
      if ((v51 & 7) == 0)
      {
        v138 = 8;
      }

      v137 = v51 - v138;
      v139 = v2774;
      v140 = v2778;
      v141 = v137;
      do
      {
        v142 = v140 - 8;
        v143 = vld2q_f32(v142);
        v144 = vld2q_f32(v140);
        v139[-1] = vmulq_f32(v143, v143);
        *v139 = vmulq_f32(v144, v144);
        v139 += 2;
        v140 += 16;
        v141 -= 8;
      }

      while (v141);
    }

    else
    {
      v137 = 0;
    }

    v145 = v51 - v137;
    v146 = &v2773[4 * v137 - 4];
    v147 = &v2776[2 * v137];
    do
    {
      v148 = *v147;
      v147 += 2;
      *v146++ = v148 * v148;
      --v145;
    }

    while (v145);
    if (v47 <= 7)
    {
      v149 = 0;
      goto LABEL_115;
    }

    v149 = v51 & 0x7FFFFFF8;
    v150 = v2767;
    v151 = v2774;
    v152 = v149;
    do
    {
      v153 = vaddq_f32(*v150, *v151);
      v150[-1] = vaddq_f32(v150[-1], v151[-1]);
      *v150 = v153;
      v150 += 2;
      v151 += 2;
      v152 -= 8;
    }

    while (v152);
    if (v149 != v51)
    {
LABEL_115:
      v154 = v51 - v149;
      v155 = 4 * v149;
      v156 = &v2766[4 * v149 - 4];
      v157 = &v2773[v155 - 4];
      do
      {
        v158 = *v157++;
        *v156 = *v156 + v158;
        ++v156;
        --v154;
      }

      while (v154);
    }

    if (v47 <= 7)
    {
      v159 = 0;
      goto LABEL_122;
    }

    v159 = v51 & 0x7FFFFFF8;
    v160 = v2767;
    v161 = v159;
    do
    {
      v162 = vsqrtq_f32(*v160);
      v160[-1] = vsqrtq_f32(v160[-1]);
      *v160 = v162;
      v160 += 2;
      v161 -= 8;
    }

    while (v161);
    if (v159 != v51)
    {
LABEL_122:
      v163 = v51 - v159;
      v164 = &v2766[4 * v159 - 4];
      do
      {
        *v164 = sqrtf(*v164);
        ++v164;
        --v163;
      }

      while (v163);
    }

    v55 = v2765;
    if ((v50 & 1) == 0)
    {
      if (v47 >= 9)
      {
        v166 = (v51 - 1) & 0xFFFFFFFFFFFFFFF8;
        v167 = 0uLL;
        v168 = LODWORD(v2765);
        v169 = v2768;
        v170 = v166;
        do
        {
          v168 = vaddq_f32(v169[-1], v168);
          v167 = vaddq_f32(*v169, v167);
          v169 += 2;
          v170 -= 8;
        }

        while (v170);
        v171 = vaddq_f32(v167, v168);
        v55 = vaddv_f32(*&vpaddq_f32(v171, v171));
        if (v51 - 1 != v166)
        {
          v165 = v166 | 2;
          goto LABEL_131;
        }
      }

      else
      {
        v165 = 2;
LABEL_131:
        v172 = v47 + 1 - v165;
        v173 = &v2766[4 * v165 - 8];
        do
        {
          v174 = *v173++;
          v55 = v174 + v55;
          --v172;
        }

        while (v172);
      }
    }
  }

  *v19.i32 = (v10.f32[0] * 1.4142) / v55;
  *v21.i32 = -(*v19.i32 * v53);
  *v20.i32 = -(*v19.i32 * v54);
  if (v17 >= 1)
  {
    if (v17 < 4)
    {
      v52 = 0;
      goto LABEL_139;
    }

    v52 = v17 & 0x7FFFFFFC;
    v10 = vdupq_lane_s32(*v19.i8, 0);
    v11 = vdupq_lane_s32(v21, 0);
    v175 = vdupq_lane_s32(v20, 0);
    v176 = v2789;
    v177 = &v2790;
    v178 = v52;
    do
    {
      v2946 = vld3q_f32(v177);
      v177 += 12;
      v179 = vmulq_f32(v2946.val[1], 0);
      v2950.val[0] = vmlaq_f32(vmlaq_f32(v179, v10, v2946.val[0]), v11, v2946.val[2]);
      v180 = vmulq_f32(v2946.val[0], 0);
      v181 = vaddq_f32(v179, v180);
      v2950.val[1] = vmlaq_f32(vmlaq_f32(v180, v10, v2946.val[1]), v175, v2946.val[2]);
      v2950.val[2] = vaddq_f32(v181, v2946.val[2]);
      vst3q_f32(v176, v2950);
      v176 += 12;
      v178 -= 4;
    }

    while (v178);
    if (v52 != v17)
    {
LABEL_139:
      v182 = v17 - v52;
      v183 = 12 * v52;
      v184 = &v2789[12 * v52 + 8];
      v185 = &v2789[12 * v52 + 4];
      v186 = &v2789[12 * v52];
      v187 = (&v2790 + v183 + 8);
      v10.i32[1] = 0;
      do
      {
        v188 = *(v187 - 2);
        v189 = *(v187 - 1);
        v190 = *v187;
        v187 += 3;
        *v186 = ((v189 * 0.0) + (v188 * *v19.i32)) + (v190 * *v21.i32);
        v186 += 3;
        v191 = v188 * 0.0;
        *v185 = (v191 + (v189 * *v19.i32)) + (v190 * *v20.i32);
        v185 += 3;
        *v184 = ((v189 * 0.0) + v191) + v190;
        v184 += 3;
        --v182;
      }

      while (v182);
    }
  }

LABEL_141:
  v2604 = *v21.i32;
  v2605 = *v20.i32;
  v2606 = *v19.i32;
  v2746 = 3;
  v2747 = v14;
  v192 = v14 > 0;
  v193 = 0.0;
  if (v14 < 1)
  {
    goto LABEL_171;
  }

  memcpy(v2795, v16, 12 * v14);
  v195 = 0;
  v196 = v16 + 2;
  do
  {
    v197 = *v196;
    v196 += 3;
    *&v2766[v195 - 4] = fabsf(v197);
    v195 += 4;
  }

  while (4 * v14 != v195);
  if (v14 <= 3)
  {
    v198 = 0;
    goto LABEL_155;
  }

  if (v14 >= 0x20)
  {
    v198 = v14 & 0x7FFFFFE0;
    v199 = v2743;
    v200 = v2769;
    v10 = vdupq_n_s32(0x25800000u);
    v11.i64[0] = 0x101010101010101;
    v11.i64[1] = 0x101010101010101;
    v201 = v198;
    do
    {
      v194 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v200[-4], v10), vcgtq_f32(v200[-3], v10)), vuzp1q_s16(vcgtq_f32(v200[-2], v10), vcgtq_f32(v200[-1], v10))), v11);
      v202 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(*v200, v10), vcgtq_f32(v200[1], v10)), vuzp1q_s16(vcgtq_f32(v200[2], v10), vcgtq_f32(v200[3], v10))), v11);
      v199[-1] = v194;
      *v199 = v202;
      v199 += 2;
      v200 += 8;
      v201 -= 32;
    }

    while (v201);
    if (v198 != v14)
    {
      if ((v14 & 0x1C) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_152;
    }
  }

  else
  {
    v198 = 0;
LABEL_152:
    v203 = v198;
    v198 = v14 & 0x7FFFFFFC;
    v204 = v203 - v198;
    v205 = &v2742[v203 + 9];
    v10 = vdupq_n_s32(0x25800000u);
    v11.i32[1] = 65537;
    v206 = &v2766[4 * v203 - 4];
    do
    {
      v207 = *v206++;
      *v194.f32 = vuzp1_s8(vand_s8(vmovn_s32(vcgtq_f32(v207, v10)), 0x1000100010001), *v10.f32);
      *v205++ = v194.i32[0];
      v204 += 4;
    }

    while (v204);
    if (v198 != v14)
    {
LABEL_155:
      v208 = v14 - v198;
      v209 = &v2742[v198 + 9];
      v210 = &v2766[4 * v198 - 4];
      do
      {
        v211 = *v210++;
        *v209++ = v211 > 2.2204e-16;
        --v208;
      }

      while (v208);
    }
  }

  v212 = 0;
  v213 = 0;
  while (2)
  {
    if (!v2742[v212 + 9])
    {
      ++v212;
      goto LABEL_159;
    }

    __src[v213] = v212 + 1;
    v214 = (v213 + 1) < v14;
    if ((v213 + 1) < v14)
    {
      ++v212;
    }

    ++v213;
    if (v214)
    {
LABEL_159:
      if (v212 >= v14)
      {
        break;
      }

      continue;
    }

    break;
  }

  if (v14 != 1)
  {
    if (v213 < 1)
    {
      goto LABEL_170;
    }

    v217 = v213;
    memcpy(&__dst, __src, 4 * v213);
    if (v213 == 1)
    {
      v215 = 0;
      v216 = 1;
      do
      {
LABEL_175:
        v225 = 3 * *&v2749[4 * v215 - 4] - 3;
        *&v2795[v225 * 4] = v16[v225] / v16[v225 + 2];
        ++v215;
      }

      while (v217 != v215);
      if (v216)
      {
        v226 = 0;
        goto LABEL_181;
      }
    }

    else
    {
      v215 = v213 & 0x7FFFFFFE;
      p_dst = &__dst;
      v221 = v215;
      do
      {
        v222 = *p_dst++;
        v11.i32[1] = v222.i32[1];
        *v194.f32 = vmla_s32(0x200000002, v222, 0x300000003);
        v223 = v194.i32[0];
        v224 = v194.i32[1];
        v194.f32[0] = v16[v224] / v16[v224 + 2];
        *&v2795[v223 * 4] = v16[v223] / v16[v223 + 2];
        *&v2795[v224 * 4] = v194.i32[0];
        v221 -= 2;
      }

      while (v221);
      v216 = 0;
      if (v215 != v213)
      {
        goto LABEL_175;
      }
    }

    v226 = v217 & 0x7FFFFFFE;
    v227 = v2773;
    v228 = v2749;
    v229 = v226;
    do
    {
      v230 = *&v2795[12 * *v228 - 8] / *&v2795[12 * *v228 - 4];
      *(v227 - 1) = *&v2795[12 * *(v228 - 1) - 8] / *&v2795[12 * *(v228 - 1) - 4];
      *v227 = v230;
      v227 += 2;
      v228 += 2;
      v229 -= 2;
    }

    while (v229);
    if (v226 == v217)
    {
LABEL_182:
      if (v216)
      {
        v231 = 0;
      }

      else
      {
        v231 = v217 & 0x7FFFFFFE;
        v232 = v2749;
        v233 = v2773;
        v234 = v231;
        do
        {
          v235 = *v233;
          v236 = 3 * *v232;
          *&v2795[12 * *(v232 - 1) - 8] = *(v233 - 1);
          *&v2795[4 * v236 - 8] = v235;
          v232 += 2;
          v233 += 2;
          v234 -= 2;
        }

        while (v234);
        if (v231 == v217)
        {
LABEL_189:
          if (v213 <= 3)
          {
            v244 = 0;
            goto LABEL_200;
          }

          if (v213 >= 0x20)
          {
            v244 = v217 & 0x7FFFFFE0;
            v245 = v2745;
            v246 = v2750;
            v10.i64[1] = 0x3C3834302C282420;
            v247 = v244;
            do
            {
              v11 = vqtbl4q_s8(v246[-1], xmmword_2247A4600);
              v194 = vqtbl4q_s8(*v246, xmmword_2247A4600);
              v245[-1] = v11;
              *v245 = v194;
              v245 += 2;
              v246 += 2;
              v247 -= 32;
            }

            while (v247);
            if (v244 == v217)
            {
              goto LABEL_202;
            }

            if ((v217 & 0x1C) == 0)
            {
LABEL_200:
              v253 = v217 - v244;
              v254 = &v2743[v244 + 96];
              v255 = &v2749[4 * v244 - 4];
              do
              {
                v256 = *v255++;
                *v254++ = v256;
                --v253;
              }

              while (v253);
              goto LABEL_202;
            }
          }

          else
          {
            v244 = 0;
          }

          v248 = v244;
          v244 = v217 & 0x7FFFFFFC;
          v249 = v248 - v244;
          v250 = &v2743[v248 + 96];
          v251 = &v2749[4 * v248 - 4];
          do
          {
            v252 = *v251++;
            v10.i64[1] = v252.i64[1];
            *v10.f32 = vmovn_s32(v252);
            *v250++ = vuzp1_s8(*v10.f32, *v10.f32).u32[0];
            v249 += 4;
          }

          while (v249);
          if (v244 != v217)
          {
            goto LABEL_200;
          }

LABEL_202:
          if (v216)
          {
            v257 = 0;
          }

          else
          {
            v257 = v217 & 0x7FFFFFFE;
            v258 = v2744;
            v259 = v257;
            do
            {
              v260 = &v2795[12 * *v258];
              *&v2795[12 * *(v258 - 1) - 4] = 1065353216;
              *(v260 - 1) = 1065353216;
              v258 += 2;
              v259 -= 2;
            }

            while (v259);
            if (v257 == v217)
            {
LABEL_209:
              for (i = 0; i != v217; ++i)
              {
                v10.i64[0] = *&v2795[12 * *&v2749[4 * i - 4] - 12];
                *&v2776[2 * i - 1] = v10.i64[0];
              }

              v10.f32[0] = v2775;
              v11.f32[0] = v2776[0];
              if (v216)
              {
                goto LABEL_223;
              }

              if (v213 >= 0x15)
              {
                v266 = v217 - 2;
                v265 = 2;
                if (((v217 - 2) & 0x7FFFFFFFu) <= 0x3FFFFFFE && (2 * v266) <= 0x7FFFFFFD && !(v266 >> 31))
                {
                  v267 = 0;
                  v268 = (v217 - 1) & 0xFFFFFFFFFFFFFFF8;
                  v194 = 0uLL;
                  v269 = LODWORD(v2776[0]);
                  v270 = LODWORD(v2775);
                  v271 = v268;
                  v272 = 0uLL;
                  do
                  {
                    v273 = (&v2776[-1] + (v267 >> 30));
                    v274 = v273 + 2;
                    v2938 = vld2q_f32(v274);
                    v273 += 10;
                    v2940 = vld2q_f32(v273);
                    v270 = vaddq_f32(v2938.val[0], v270);
                    v272 = vaddq_f32(v2940.val[0], v272);
                    v269 = vaddq_f32(v2938.val[1], v269);
                    v194 = vaddq_f32(v2940.val[1], v194);
                    v267 += 0x1000000000;
                    v271 -= 8;
                  }

                  while (v271);
                  v11 = vaddq_f32(v194, v269);
                  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
                  v11.f32[0] = vaddv_f32(*v11.f32);
                  v275 = vaddq_f32(v272, v270);
                  v10 = vpaddq_f32(v275, v275);
                  v10.f32[0] = vaddv_f32(*v10.f32);
                  if (v217 - 1 == v268)
                  {
                    goto LABEL_223;
                  }

                  v265 = v268 | 2;
                }
              }

              else
              {
                v265 = 2;
              }

              v276 = v213 + 1 - v265;
              v277 = 2 * v265 - 1;
              v278 = (v265 << 33) - 0x200000000;
              do
              {
                v10.f32[0] = *(&v2776[-1] + (v278 >> 30)) + v10.f32[0];
                v11.f32[0] = v2776[v277 - 1] + v11.f32[0];
                v277 += 2;
                v278 += 0x200000000;
                --v276;
              }

              while (v276);
LABEL_223:
              v279 = 0;
              v193 = v213;
              v218 = v10.f32[0] / v213;
              v280 = v2776;
              v219 = v11.f32[0] / v213;
              do
              {
                v281 = v279;
                if (v213 == 1)
                {
                  v281 = 0;
                }

                v282 = 3 * *&v2749[4 * v281 - 4];
                v283 = *&v2795[4 * v282 - 8] - v219;
                *(v280 - 1) = *&v2795[4 * v282 - 12] - v218;
                *v280 = v283;
                ++v279;
                v280 += 2;
              }

              while (v217 != v279);
              if (v213 > 8)
              {
                v285 = v217 & 7;
                if ((v217 & 7) == 0)
                {
                  v285 = 8;
                }

                v284 = v217 - v285;
                v286 = v2767;
                v287 = v2777;
                v288 = v284;
                do
                {
                  v289 = v287 - 8;
                  v290 = vld2q_f32(v289);
                  v291 = vld2q_f32(v287);
                  v194 = vmulq_f32(v290, v290);
                  v286[-1] = v194;
                  *v286 = vmulq_f32(v291, v291);
                  v286 += 2;
                  v287 += 16;
                  v288 -= 8;
                }

                while (v288);
              }

              else
              {
                v284 = 0;
              }

              v292 = &v2776[2 * v284 - 1];
              do
              {
                v293 = *v292;
                v292 += 2;
                *&v2766[4 * v284++ - 4] = v293 * v293;
              }

              while (v217 != v284);
              if (v213 > 8)
              {
                v295 = v217 & 7;
                if ((v217 & 7) == 0)
                {
                  v295 = 8;
                }

                v294 = v217 - v295;
                v296 = v2774;
                v297 = v2778;
                v298 = v294;
                do
                {
                  v299 = v297 - 8;
                  v300 = vld2q_f32(v299);
                  v301 = vld2q_f32(v297);
                  v194 = vmulq_f32(v300, v300);
                  v296[-1] = v194;
                  *v296 = vmulq_f32(v301, v301);
                  v296 += 2;
                  v297 += 16;
                  v298 -= 8;
                }

                while (v298);
              }

              else
              {
                v294 = 0;
              }

              v302 = v217 - v294;
              v303 = &v2773[4 * v294 - 4];
              v304 = &v2776[2 * v294];
              do
              {
                v305 = *v304;
                v304 += 2;
                *v303++ = v305 * v305;
                --v302;
              }

              while (v302);
              if (v213 > 7)
              {
                v306 = v217 & 0x7FFFFFF8;
                v307 = v2767;
                v308 = v2774;
                v309 = v306;
                do
                {
                  v194 = vaddq_f32(v307[-1], v308[-1]);
                  v310 = vaddq_f32(*v307, *v308);
                  v307[-1] = v194;
                  *v307 = v310;
                  v307 += 2;
                  v308 += 2;
                  v309 -= 8;
                }

                while (v309);
                if (v306 == v217)
                {
LABEL_250:
                  if (v213 > 7)
                  {
                    v316 = v217 & 0x7FFFFFF8;
                    v317 = v2767;
                    v318 = v316;
                    do
                    {
                      v194 = vsqrtq_f32(v317[-1]);
                      v319 = vsqrtq_f32(*v317);
                      v317[-1] = v194;
                      *v317 = v319;
                      v317 += 2;
                      v318 -= 8;
                    }

                    while (v318);
                    if (v316 == v217)
                    {
LABEL_257:
                      v194.f32[0] = v2765;
                      if ((v216 & 1) == 0)
                      {
                        if (v213 >= 9)
                        {
                          v323 = (v217 - 1) & 0xFFFFFFFFFFFFFFF8;
                          v324 = 0uLL;
                          v325 = LODWORD(v2765);
                          v326 = v2768;
                          v327 = v323;
                          do
                          {
                            v325 = vaddq_f32(v326[-1], v325);
                            v324 = vaddq_f32(*v326, v324);
                            v326 += 2;
                            v327 -= 8;
                          }

                          while (v327);
                          v194 = vaddq_f32(v324, v325);
                          v194.i64[0] = vpaddq_f32(v194, v194).u64[0];
                          v194.f32[0] = vaddv_f32(*v194.f32);
                          if (v217 - 1 == v323)
                          {
                            goto LABEL_266;
                          }

                          v322 = v323 | 2;
                        }

                        else
                        {
                          v322 = 2;
                        }

                        v328 = v213 + 1 - v322;
                        v329 = &v2766[4 * v322 - 8];
                        do
                        {
                          v330 = *v329++;
                          v194.f32[0] = v330 + v194.f32[0];
                          --v328;
                        }

                        while (v328);
                      }

LABEL_266:
                      v192 = 1;
                      goto LABEL_267;
                    }
                  }

                  else
                  {
                    v316 = 0;
                  }

                  v320 = v217 - v316;
                  v321 = &v2766[4 * v316 - 4];
                  do
                  {
                    *v321 = sqrtf(*v321);
                    ++v321;
                    --v320;
                  }

                  while (v320);
                  goto LABEL_257;
                }
              }

              else
              {
                v306 = 0;
              }

              v311 = v217 - v306;
              v312 = 4 * v306;
              v313 = &v2766[4 * v306 - 4];
              v314 = &v2773[v312 - 4];
              do
              {
                v315 = *v314++;
                *v313 = *v313 + v315;
                ++v313;
                --v311;
              }

              while (v311);
              goto LABEL_250;
            }
          }

          v261 = v217 - v257;
          v262 = &v2743[v257 + 96];
          do
          {
            v263 = *v262++;
            *&v2795[12 * v263 - 4] = 1065353216;
            --v261;
          }

          while (v261);
          goto LABEL_209;
        }
      }

      v237 = v217 - v231;
      v238 = 4 * v231;
      v239 = &v2749[4 * v231 - 4];
      v240 = &v2773[v238 - 4];
      do
      {
        v241 = *v240++;
        v242 = v241;
        v243 = *v239++;
        *&v2795[12 * v243 - 8] = v242;
        --v237;
      }

      while (v237);
      goto LABEL_189;
    }

    do
    {
LABEL_181:
      *&v2773[4 * v226 - 4] = *&v2795[12 * *&v2749[4 * v226 - 4] - 8] / *&v2795[12 * *&v2749[4 * v226 - 4] - 4];
      ++v226;
    }

    while (v217 != v226);
    goto LABEL_182;
  }

  if (v213)
  {
    v215 = 0;
    __dst = __src[0];
    v216 = 1;
    v217 = 1;
    v213 = 1;
    goto LABEL_175;
  }

LABEL_170:
  v192 = 1;
LABEL_171:
  v218 = NAN;
  v219 = NAN;
  v194.i64[0] = 0;
LABEL_267:
  v194.f32[0] = (v193 * 1.4142) / v194.f32[0];
  LODWORD(v2759) = v194.i32[0];
  v10.f32[0] = -(v194.f32[0] * v218);
  *&v2760 = v194.u32[0];
  v11.f32[0] = -(v194.f32[0] * v219);
  *(&v2760 + 1) = __PAIR64__(v11.u32[0], v10.u32[0]);
  HIDWORD(v2759) = 0;
  *(&v2759 + 4) = 0;
  v2761 = 1065353216;
  if (v192)
  {
    if (v14 < 4)
    {
      v331 = 0;
      goto LABEL_273;
    }

    v331 = v14 & 0x7FFFFFFC;
    v332 = vdupq_lane_s32(*v194.f32, 0);
    v333 = vdupq_lane_s32(*v10.f32, 0);
    v334 = vdupq_lane_s32(*v11.f32, 0);
    v335 = v2788;
    v336 = v2795;
    v337 = v331;
    do
    {
      v2951 = vld3q_f32(v336);
      v336 += 12;
      v338 = vmulq_f32(v2951.val[1], 0);
      v2955.val[0] = vmlaq_f32(vmlaq_f32(v338, v332, v2951.val[0]), v333, v2951.val[2]);
      v339 = vmulq_f32(v2951.val[0], 0);
      v340 = vaddq_f32(v338, v339);
      v2955.val[1] = vmlaq_f32(vmlaq_f32(v339, v332, v2951.val[1]), v334, v2951.val[2]);
      v2955.val[2] = vaddq_f32(v340, v2951.val[2]);
      vst3q_f32(v335, v2955);
      v335 += 12;
      v337 -= 4;
    }

    while (v337);
    if (v331 != v14)
    {
LABEL_273:
      v341 = v14 - v331;
      v342 = 12 * v331 + 8;
      v343 = &v2795[v342];
      v344 = &v2788[v342];
      do
      {
        v345 = *(v343 - 2);
        v346 = *(v343 - 1);
        v347 = *v343;
        v343 += 3;
        v348 = ((v346 * 0.0) + (v345 * v194.f32[0])) + (v347 * v10.f32[0]);
        v349 = v345 * 0.0;
        *(v344 - 2) = v348;
        *(v344 - 1) = (v349 + (v346 * v194.f32[0])) + (v347 * v11.f32[0]);
        *v344 = ((v346 * 0.0) + v349) + v347;
        v344 += 3;
        --v341;
      }

      while (v341);
    }
  }

  if (v17)
  {
    v350 = v17;
  }

  else
  {
    v350 = v14;
  }

  v10.f32[0] = (v194.f32[0] * 0.5) * (v194.f32[0] * 0.5);
  v2621 = v10;
  if (v17)
  {
    v351 = 1;
  }

  else
  {
    v351 = v350 == 0;
  }

  if (v351)
  {
    v352 = 3;
  }

  else
  {
    v352 = 0;
  }

  if (v14)
  {
    v353 = 1;
  }

  else
  {
    v353 = v350 == 0;
  }

  if (v353)
  {
    v354 = 3;
  }

  else
  {
    v354 = 0;
  }

  v355 = v352 + v354;
  v2715 = v350;
  v2718 = v352 + v354;
  if (v350 >= 1)
  {
    v356 = 0;
    v357 = 0;
    if (v352 <= 1)
    {
      v358 = 1;
    }

    else
    {
      v358 = v352;
    }

    v359 = (4 * v358);
    v360 = 4 * (v350 + 2 * v350);
    do
    {
      if (v351)
      {
        memcpy(&v2797[4 * v356], &v2789[v357 & 0x3FFFFFFFCLL], v359);
        v355 = v352 + v354;
        v350 = v2715;
      }

      v357 += 12;
      v356 += v355;
    }

    while (v360 != v357);
    v361 = 0;
    if (v354 <= 1)
    {
      v362 = 1;
    }

    else
    {
      v362 = v354;
    }

    v363 = (4 * v362);
    v364 = 12 * v350;
    do
    {
      if (v353)
      {
        memcpy(&v2797[4 * v352], &v2788[v361 & 0x3FFFFFFFCLL], v363);
        v355 = v2718;
      }

      v361 += 12;
      v352 += v355;
    }

    while (v364 != v361);
  }

  memcpy(&state, &uv, 0x9C4uLL);
  v2620 = 0;
  v2617 = 0;
  v2636 = 0;
  v2661 = 0;
  v2754[0] = rtNaNF;
  v373 = v2715;
  *v374.i64 = v2715;
  v375 = v2718;
  v2713 = 4 * (v2718 - 1);
  v376 = v2718 + 2 * v2718;
  v2678 = &v2899 + v376;
  v2676 = v376 + 3;
  v2674 = v376 + 4;
  v2630 = v376 + 5;
  v377 = v2715 & 3;
  if ((v2715 & 3) == 0)
  {
    v377 = 4;
  }

  v2637 = v2715 - v377;
  v378 = v2715 & 7;
  if ((v2715 & 7) == 0)
  {
    v378 = 8;
  }

  v2629 = v2715 - v378;
  v2614 = vdupq_lane_s32(*v2621.f32, 0);
  v2663 = vdup_n_s32(v2718);
  v2680 = v374;
  v2616 = 1.0 / *v374.i64;
  v379.i64[0] = 0x100000001;
  v379.i64[1] = 0x100000001;
  v2672 = vnegq_f32(v379);
  v2670 = vdupq_n_s32(0x9908B0DF);
  v380 = vneg_f32(0x100000001);
  v381 = 0;
  v382 = 1.0;
  v2635 = 1.0;
  v2631 = 4 * v2718;
  v2684 = (&v2899 + v2631);
  v2667 = (&v2899 + v2631 + 12);
  v2682 = &v2899 + 2 * v2718;
  v2665 = v2682 + 3;
  v2664 = &v2899 + 12 * v2718;
  v2632 = v2715 & 0xFFFFFFE0;
  v2624 = v2715 & 0xFFFFFFFC;
  v383 = 629145600;
  v2618 = 1;
  v2619 = 1;
  while (2)
  {
    v2639 = v381;
    v384 = 1;
    while (1)
    {
      v2721 = v384;
      v390 = 0;
      v391 = dword_27D385F00;
      v392.i64[0] = 0x8000000080000000;
      v392.i64[1] = 0x8000000080000000;
      v393.i64[0] = 0x100000001;
      v393.i64[1] = 0x100000001;
      while (1)
      {
        v398 = v391 + 1;
        v399 = vdup_n_s32(0x9908B0DF);
        if ((v391 + 1) <= 0x270)
        {
          v414 = *(&state + v391);
        }

        else
        {
          v400 = vld1q_dup_f32(&state);
          v401 = &state;
          v402 = 224;
          do
          {
            v403 = *(v401 + 4);
            v404 = vextq_s8(v400, v403, 0xCuLL);
            v400 = *(v401 + 20);
            v405 = vshrq_n_u32(vorrq_s8(vandq_s8(v403, v2672), vandq_s8(v404, v392)), 1uLL);
            v406 = vshrq_n_u32(vorrq_s8(vandq_s8(v400, v2672), vandq_s8(vextq_s8(v403, v400, 0xCuLL), v392)), 1uLL);
            v367 = veorq_s8(v406, v2670);
            v366 = *(v401 + 1604);
            *v401 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v403, v393)), v405, veorq_s8(v405, v2670)), *(v401 + 1588));
            v401[1] = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v400, v393)), v406, v367), v366);
            v401 += 2;
            v402 -= 8;
          }

          while (v402);
          v407 = vshr_n_u32(vorr_s8(vand_s8(*(&qword_27D3858C0 + 4), v380), vand_s8(vzip1_s32(vdup_laneq_s32(v400, 3), *(&qword_27D3858C0 + 4)), 0x8000000080000000)), 1uLL);
          v408 = &xmmword_27D3858CC;
          qword_27D3858C0 = veor_s8(vbsl_s8(vceqz_s32(vand_s8(*(&qword_27D3858C0 + 4), 0x100000001)), v407, veor_s8(v407, v399)), qword_27D385EF4);
          v409 = (dword_27D3858C8 & 0x80000000 | xmmword_27D3858CC & 0x7FFFFFFF) >> 1;
          if (xmmword_27D3858CC)
          {
            v409 ^= 0x9908B0DF;
          }

          dword_27D3858C8 = v409 ^ dword_27D385EFC;
          v410 = vdupq_n_s32(xmmword_27D3858CC);
          v411 = 396;
          do
          {
            v412 = *(v408 + 4);
            v413 = vshrq_n_u32(vorrq_s8(vandq_s8(v412, v2672), vandq_s8(vextq_s8(v410, v412, 0xCuLL), v392)), 1uLL);
            v365 = veorq_s8(v413, v2670);
            *v408 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v412, v393)), v413, v365), *(v408 - 908));
            ++v408;
            v410 = v412;
            v411 -= 4;
          }

          while (v411);
          v414 = state;
          v415 = (dword_27D385EFC & 0x80000000 | state & 0x7FFFFFFF) >> 1;
          if (state)
          {
            v415 ^= 0x9908B0DF;
          }

          dword_27D385EFC = v415 ^ dword_27D385B70;
          v398 = 1;
        }

        dword_27D385F00 = v398;
        if (v398 <= 0x26F)
        {
          v391 = v398 + 1;
          v394 = *(&state + v398);
        }

        else
        {
          v416 = vld1q_dup_f32(&state);
          v417 = &state;
          v418 = 224;
          do
          {
            v419 = *(v417 + 4);
            v420 = vextq_s8(v416, v419, 0xCuLL);
            v416 = *(v417 + 20);
            v421 = vshrq_n_u32(vorrq_s8(vandq_s8(v419, v2672), vandq_s8(v420, v392)), 1uLL);
            v422 = vshrq_n_u32(vorrq_s8(vandq_s8(v416, v2672), vandq_s8(vextq_s8(v419, v416, 0xCuLL), v392)), 1uLL);
            v367 = veorq_s8(v422, v2670);
            v423 = vbslq_s8(vceqzq_s32(vandq_s8(v419, v393)), v421, veorq_s8(v421, v2670));
            v424 = vbslq_s8(vceqzq_s32(vandq_s8(v416, v393)), v422, v367);
            v365 = *(v417 + 1588);
            v366 = *(v417 + 1604);
            *v417 = veorq_s8(v423, v365);
            v417[1] = veorq_s8(v424, v366);
            v417 += 2;
            v418 -= 8;
          }

          while (v418);
          v425 = vshr_n_u32(vorr_s8(vand_s8(*(&qword_27D3858C0 + 4), v380), vand_s8(vzip1_s32(vdup_laneq_s32(v416, 3), *(&qword_27D3858C0 + 4)), 0x8000000080000000)), 1uLL);
          v426 = &xmmword_27D3858CC;
          qword_27D3858C0 = veor_s8(vbsl_s8(vceqz_s32(vand_s8(*(&qword_27D3858C0 + 4), 0x100000001)), v425, veor_s8(v425, v399)), qword_27D385EF4);
          v427 = (dword_27D3858C8 & 0x80000000 | xmmword_27D3858CC & 0x7FFFFFFF) >> 1;
          if (xmmword_27D3858CC)
          {
            v427 ^= 0x9908B0DF;
          }

          dword_27D3858C8 = v427 ^ dword_27D385EFC;
          v428 = vdupq_n_s32(xmmword_27D3858CC);
          v429 = 396;
          do
          {
            v430 = *(v426 + 4);
            v431 = vshrq_n_u32(vorrq_s8(vandq_s8(v430, v2672), vandq_s8(vextq_s8(v428, v430, 0xCuLL), v392)), 1uLL);
            *v426 = veorq_s8(vbslq_s8(vceqzq_s32(vandq_s8(v430, v393)), v431, veorq_s8(v431, v2670)), *(v426 - 908));
            ++v426;
            v428 = v430;
            v429 -= 4;
          }

          while (v429);
          v394 = state;
          v432 = (dword_27D385EFC & 0x80000000 | state & 0x7FFFFFFF) >> 1;
          if (state)
          {
            v432 ^= 0x9908B0DF;
          }

          dword_27D385EFC = v432 ^ dword_27D385B70;
          v391 = 1;
        }

        v395 = ((v414 ^ (v414 >> 11)) << 7) & 0x9D2C5680 ^ v414 ^ (v414 >> 11);
        v396 = ((v394 ^ (v394 >> 11)) << 7) & 0x9D2C5680 ^ v394 ^ (v394 >> 11);
        dword_27D385F00 = v391;
        v397 = (((((v396 << 15) & 0xEFC60000 ^ v396) >> 24) ^ (((v396 << 15) & 0xEFC60000 ^ v396) >> 6)) + ((((v395 << 15) & 0xEFC60000 ^ v395) >> 23) ^ (((v395 << 15) & 0xEFC60000 ^ v395) >> 5)) * 67108864.0) * 1.11022302e-16;
        if (v397 != 0.0)
        {
          v2928.f64[v390++] = v397;
          if (v390 == 4)
          {
            break;
          }
        }
      }

      v433 = v2680;
      __asm { FMOV            V1.2D, #1.0 }

      v436 = vaddq_f64(vrndmq_f64(vmulq_n_f64(v2928, *v2680.i64)), _Q1);
      v2928 = v436;
      v437 = vaddq_f64(vrndmq_f64(vmulq_n_f64(v2929, *v2680.i64)), _Q1);
      v2729 = v437;
      v2929 = v437;
      if (v375)
      {
        v2706 = v436;
        memcpy(&v2899, &v2797[4 * (*v436.i64 - 1) * v375], v2713 + 4);
        v436 = v2706;
        v383 = 629145600;
        v382 = 1.0;
        v375 = v2718;
        v373 = v2715;
        LODWORD(v7) = v2899;
      }

      v2835 = *&v7;
      v2690 = *(&v2899 + 3);
      *v2833 = HIDWORD(v2899);
      v438 = *(&v2899 + 1);
      v2836 = *(&v2899 + 4);
      v439 = *&v2900;
      *&v2833[4] = v2900;
      v440 = *(&v2899 + 2);
      v441 = *(&v2900 + 1);
      if (v375)
      {
        v2695 = vshll_n_s32(vmul_s32(vadd_s32(vmovn_s64(vcvtq_s64_f64(vextq_s8(v436, v2729, 8uLL))), -1), v2663), 2uLL);
        memcpy(v2684, &v2797[v2695.i64[0]], v2713 + 4);
        v442.i64[0] = *v2684;
        v442.i32[2] = v2684[2];
        v2707 = v442;
        v442.i64[0] = *v2667;
        v442.i32[2] = *(&v2900 + v2718 + 1);
        v2700 = v442;
        memcpy(v2682, &v2797[v2695.i64[1]], v2713 + 4);
        *&v443 = *v2682;
        DWORD2(v443) = v2682[2];
        *v2696 = v443;
        LODWORD(v443) = v2682[5];
        *&v2833[24] = *v2665;
        v444.i64[0] = *&v2833[24];
        v444.i32[2] = v443;
        v2686 = v444;
        LODWORD(v2834) = v443;
        memcpy(v2664, &v2797[4 * (*&v2729.i64[1] - 1) * v2718], v2713 + 4);
        v370 = *v2696;
        v372 = v2707;
        v371 = v2700;
        v383 = 629145600;
        v382 = 1.0;
        v375 = v2718;
        v373 = v2715;
      }

      else
      {
        v372.i64[0] = *v2684;
        v372.i32[2] = v2684[2];
        v371.i64[0] = *v2667;
        v371.i32[2] = *(&v2900 + v2718 + 1);
        v370.i64[0] = *v2682;
        v370.i32[2] = v2682[2];
        v437.f64[0] = *v2665;
        LODWORD(v437.f64[1]) = v2682[5];
        v2686 = v437;
      }

      v2838 = v372.f32[2];
      v2837 = v372.i64[0];
      v433.i32[0] = v372.i32[2];
      *&v2833[20] = v371.i32[2];
      *&v2833[12] = v371.i64[0];
      v2840 = v370.f32[2];
      v2839 = v370.i64[0];
      _Q1.i32[0] = *(&v2899 + v2676);
      v445 = *(&v2899 + v2674);
      v446 = *v2678;
      v447 = v2678[2];
      v2842 = v447;
      v2841 = v446;
      v448 = v372.f32[0] - *&v7;
      v449 = v370.f32[0] - *&v7;
      v450 = v372.f32[1] - v438;
      v451 = v370.f32[1] - v438;
      v452 = v372.f32[2] - v440;
      v453 = v370.f32[2] - v440;
      v454 = fabsf(-(((v372.f32[2] - v440) * (v370.f32[1] - v438)) - ((v370.f32[2] - v440) * (v372.f32[1] - v438))));
      v455 = fmaxf(v454, 1.2925e-26);
      if (v454 <= 1.2925e-26)
      {
        v456 = (v454 * 7.7371e25) * (v454 * 7.7371e25);
      }

      else
      {
        v456 = v382;
      }

      v457 = fabsf(-(((v370.f32[2] - v440) * (v372.f32[0] - *&v7)) - ((v372.f32[2] - v440) * (v370.f32[0] - *&v7))));
      v458 = v456 + ((v457 / v455) * (v457 / v455));
      v459 = v382 + (((v455 / v457) * (v455 / v457)) * v456);
      if (v457 <= v455)
      {
        v457 = v455;
        v459 = v458;
      }

      v460 = fabsf(-(((v372.f32[1] - v438) * (v370.f32[0] - *&v7)) - ((v370.f32[1] - v438) * (v372.f32[0] - *&v7))));
      v461 = v459 + ((v460 / v457) * (v460 / v457));
      v462 = v382 + (((v457 / v460) * (v457 / v460)) * v459);
      if (v460 <= v457)
      {
        v462 = v461;
      }

      else
      {
        v457 = v460;
      }

      v389 = v2721;
      if ((sqrtf(v462) * v457) >= 2.2204e-16)
      {
        v393.i64[0] = v446;
        v463 = *&v446 - *&v7;
        v464 = *(&v446 + 1) - v438;
        v465 = v447 - v440;
        v466 = -((v452 * (*(&v446 + 1) - v438)) - ((v447 - v440) * v450));
        v467 = -(((v447 - v440) * v448) - (v452 * (*&v446 - *&v7)));
        v468 = -((v450 * (*&v446 - *&v7)) - ((*(&v446 + 1) - v438) * v448));
        v469 = fabsf(v466);
        v470 = fmaxf(v469, 1.2925e-26);
        if (v469 <= 1.2925e-26)
        {
          v471 = (v469 * 7.7371e25) * (v469 * 7.7371e25);
        }

        else
        {
          v471 = v382;
        }

        v472 = fabsf(v467);
        v473 = v471 + ((v472 / v470) * (v472 / v470));
        v474 = v382 + (((v470 / v472) * (v470 / v472)) * v471);
        if (v472 <= v470)
        {
          v472 = v470;
          v474 = v473;
        }

        v475 = fabsf(v468);
        v476 = v474 + ((v475 / v472) * (v475 / v472));
        v477 = v382 + (((v472 / v475) * (v472 / v475)) * v474);
        if (v475 <= v472)
        {
          v475 = v472;
          v477 = v476;
        }

        if ((sqrtf(v477) * v475) >= 2.2204e-16)
        {
          v478 = -((v453 * v464) - (v465 * v451));
          v479 = -((v465 * v449) - (v453 * v463));
          v480 = -((v451 * v463) - (v464 * v449));
          v481 = fabsf(v478);
          v482 = fmaxf(v481, 1.2925e-26);
          if (v481 <= 1.2925e-26)
          {
            v483 = (v481 * 7.7371e25) * (v481 * 7.7371e25);
          }

          else
          {
            v483 = v382;
          }

          v484 = fabsf(v479);
          v485 = v483 + ((v484 / v482) * (v484 / v482));
          v486 = v382 + (((v482 / v484) * (v482 / v484)) * v483);
          if (v484 <= v482)
          {
            v484 = v482;
            v486 = v485;
          }

          v487 = fabsf(v480);
          v488 = v486 + ((v487 / v484) * (v487 / v484));
          v489 = v382 + (((v484 / v487) * (v484 / v487)) * v486);
          if (v487 <= v484)
          {
            v487 = v484;
            v489 = v488;
          }

          if ((sqrtf(v489) * v487) >= 2.2204e-16)
          {
            v367 = vsubq_f32(v370, v372);
            v392 = vsubq_f32(v393, v372);
            v490 = -(((v447 - v372.f32[2]) * v367.f32[0]) - ((v370.f32[2] - v372.f32[2]) * v392.f32[0]));
            v491 = fabsf(-(((v370.f32[2] - v372.f32[2]) * (*(&v446 + 1) - v372.f32[1])) - ((v447 - v372.f32[2]) * (v370.f32[1] - v372.f32[1]))));
            v492 = fmaxf(v491, 1.2925e-26);
            v493 = v491 <= 1.2925e-26 ? (v491 * 7.7371e25) * (v491 * 7.7371e25) : v382;
            v494 = fabsf(v490);
            if (v494 <= v492)
            {
              v495 = v493 + ((v494 / v492) * (v494 / v492));
              v494 = v492;
            }

            else
            {
              v495 = v382 + (((v492 / v494) * (v492 / v494)) * v493);
            }

            v496 = fabsf(-(((v370.f32[1] - v372.f32[1]) * v392.f32[0]) - ((*(&v446 + 1) - v372.f32[1]) * v367.f32[0])));
            if (v496 <= v494)
            {
              v497 = v495 + ((v496 / v494) * (v496 / v494));
              v496 = v494;
            }

            else
            {
              v497 = v382 + (((v494 / v496) * (v494 / v496)) * v495);
            }

            v433.f32[0] = sqrtf(v497) * v496;
            v389 = v2721;
            if (v433.f32[0] >= 2.2204e-16)
            {
              v498 = v371.f32[0] - v2690;
              v366.i32[1] = v2686.i32[1];
              v499 = v2686.f32[0] - v2690;
              v433.i32[0] = v371.i32[1];
              v500 = v371.f32[1] - v439;
              v501 = v2686.f32[1] - v439;
              v502 = v371.f32[2] - v441;
              v503 = v2686.f32[2] - v441;
              v504 = fabsf(-(((v371.f32[2] - v441) * (v2686.f32[1] - v439)) - ((v2686.f32[2] - v441) * (v371.f32[1] - v439))));
              v505 = (v504 * 7.7371e25) * (v504 * 7.7371e25);
              v506 = fmaxf(v504, 1.2925e-26);
              if (v504 > 1.2925e-26)
              {
                v505 = v382;
              }

              v507 = fabsf(-(((v2686.f32[2] - v441) * (v371.f32[0] - v2690)) - ((v371.f32[2] - v441) * (v2686.f32[0] - v2690))));
              if (v507 <= v506)
              {
                v508 = v505 + ((v507 / v506) * (v507 / v506));
                v507 = v506;
              }

              else
              {
                v508 = v382 + (((v506 / v507) * (v506 / v507)) * v505);
              }

              v509 = fabsf(-((v500 * v499) - (v501 * v498)));
              if (v509 <= v507)
              {
                v510 = v508 + ((v509 / v507) * (v509 / v507));
                v509 = v507;
              }

              else
              {
                v510 = v382 + (((v507 / v509) * (v507 / v509)) * v508);
              }

              v389 = v2721;
              if ((sqrtf(v510) * v509) >= 2.2204e-16)
              {
                v511 = *(&v2899 + v2630);
                v512 = _Q1.f32[0] - v2690;
                v513 = v445 - v439;
                v514 = v511 - v441;
                v515 = -((v502 * (v445 - v439)) - ((v511 - v441) * v500));
                v516 = -(((v511 - v441) * v498) - (v502 * (_Q1.f32[0] - v2690)));
                v517 = fabsf(v515);
                v518 = fmaxf(v517, 1.2925e-26);
                v519 = v517 <= 1.2925e-26 ? (v517 * 7.7371e25) * (v517 * 7.7371e25) : v382;
                v520 = fabsf(v516);
                if (v520 <= v518)
                {
                  v521 = v519 + ((v520 / v518) * (v520 / v518));
                  v520 = v518;
                }

                else
                {
                  v521 = v382 + (((v518 / v520) * (v518 / v520)) * v519);
                }

                v522 = fabsf(-((v500 * v512) - (v513 * v498)));
                if (v522 <= v520)
                {
                  v523 = v521 + ((v522 / v520) * (v522 / v520));
                  v522 = v520;
                }

                else
                {
                  v523 = v382 + (((v520 / v522) * (v520 / v522)) * v521);
                }

                v389 = v2721;
                if ((sqrtf(v523) * v522) >= 2.2204e-16)
                {
                  v524 = -((v503 * v513) - (v514 * v501));
                  v525 = -((v514 * v499) - (v503 * v512));
                  v526 = fabsf(v524);
                  v527 = fmaxf(v526, 1.2925e-26);
                  v528 = v526 <= 1.2925e-26 ? (v526 * 7.7371e25) * (v526 * 7.7371e25) : v382;
                  v529 = fabsf(v525);
                  if (v529 <= v527)
                  {
                    v530 = v528 + ((v529 / v527) * (v529 / v527));
                    v529 = v527;
                  }

                  else
                  {
                    v530 = v382 + (((v527 / v529) * (v527 / v529)) * v528);
                  }

                  v531 = fabsf(-((v501 * v512) - (v513 * v499)));
                  if (v531 <= v529)
                  {
                    v532 = v530 + ((v531 / v529) * (v531 / v529));
                    v531 = v529;
                  }

                  else
                  {
                    v532 = v382 + (((v529 / v531) * (v529 / v531)) * v530);
                  }

                  v389 = v2721;
                  if ((sqrtf(v532) * v531) >= 2.2204e-16)
                  {
                    v533 = vsubq_f32(v2686, v371).f32[0];
                    v534 = _Q1.f32[0] - v371.f32[0];
                    v535 = v445 - v371.f32[1];
                    v536 = fabsf(-(((v2686.f32[2] - v371.f32[2]) * v535) - ((v511 - v371.f32[2]) * (v2686.f32[1] - v371.f32[1]))));
                    v537 = fmaxf(v536, 1.2925e-26);
                    v538 = v536 <= 1.2925e-26 ? (v536 * 7.7371e25) * (v536 * 7.7371e25) : v382;
                    v433.f32[0] = fabsf(-(((v511 - v371.f32[2]) * v533) - ((v2686.f32[2] - v371.f32[2]) * v534)));
                    if (v433.f32[0] <= v537)
                    {
                      v539 = v538 + ((v433.f32[0] / v537) * (v433.f32[0] / v537));
                      v433.f32[0] = v537;
                    }

                    else
                    {
                      v539 = v382 + (((v537 / v433.f32[0]) * (v537 / v433.f32[0])) * v538);
                    }

                    v386 = fabsf(-(((v2686.f32[1] - v371.f32[1]) * v534) - (v535 * v533)));
                    if (v386 <= v433.f32[0])
                    {
                      v385 = v539 + ((v386 / v433.f32[0]) * (v386 / v433.f32[0]));
                      v386 = v433.f32[0];
                    }

                    else
                    {
                      v385 = v382 + (((v433.f32[0] / v386) * (v433.f32[0] / v386)) * v539);
                    }

                    v387 = sqrtf(v385) * v386;
                    _Q1.i32[0] = 629145600;
                    v389 = v2721;
                    if (v387 >= 2.2204e-16)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v384 = v389 + 1;
      v7 = 1.0;
      if (v384 == 101)
      {
        v540 = v2661;
        goto LABEL_417;
      }
    }

    if (v375)
    {
      v1069 = v375;
      memcpy(&v2899, &v2797[4 * (v2928.f64[0] - 1) * v375], v2713 + 4);
      memcpy(v2684, &v2797[4 * (v2928.f64[1] - 1) * v1069], v2713 + 4);
      memcpy(v2682, &v2797[4 * (v2929.f64[0] - 1) * v2718], v2713 + 4);
      memcpy(v2664, &v2797[4 * (v2929.f64[1] - 1) * v2718], v2713 + 4);
      v1071 = v2599;
      v1070 = v2600;
      v1073 = v2597;
      v1072 = v2598;
      v1075 = v2595;
      v1074 = v2596;
      v1076 = v2594;
      if (v2718 == 6)
      {
        v1070 = HIDWORD(v2899);
        v1074 = v2899;
        *&v1077 = v2900;
        v1072 = v2903;
        v1071 = v2906;
        *&v1075 = __PAIR64__(v2908, v2905);
        *&v1078 = v2907;
        v1073 = v2911;
        HIDWORD(v1074) = v2901;
        *&v1076 = v2902[0];
        *(&v1076 + 1) = v2904;
        *(&v1075 + 1) = v2909;
        *(&v1077 + 1) = v2902[1];
        *(&v1078 + 1) = v2910;
        v2592 = v1078;
        v2593 = v1077;
      }
    }

    else
    {
      v1071 = v2599;
      v1070 = v2600;
      v1073 = v2597;
      v1072 = v2598;
      v1075 = v2595;
      v1074 = v2596;
      v1076 = v2594;
    }

    v2595 = v1075;
    v2596 = v1074;
    *v2833 = v1074;
    *&v2833[16] = v1076;
    v2594 = v1076;
    v2834 = v1075;
    ransac::normalise2dpts(v2833, &v2835, &v2755, v383);
    v2599 = v1071;
    v2600 = v1070;
    v2826 = v1070;
    v2827 = v2593;
    v2597 = v1073;
    v2598 = v1072;
    v2828 = v1072;
    v2829 = v1071;
    v2830 = v2592;
    v2831 = v1073;
    ransac::normalise2dpts(&v2826, v2833, v2823.f32, v1079);
    v1080 = 0;
    v1081 = 0;
    *&v2926[18] = -(*&v2833[8] * v2835);
    v1082.i32[0] = *&v2833[4];
    v1082.f32[1] = -*v2833;
    v2926[36] = vcvtq_f64_f32(vmul_n_f32(v1082, v2835));
    v367 = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2833[4], *&v2833[8]), v2835));
    *(v2926 + 8) = v367;
    v2926[42] = vcvtq_f64_f32(vmul_n_f32(v1082, *&v2836));
    *(&v2926[6] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2833[4], *&v2833[8]), *&v2836));
    v2926[48] = vcvtq_f64_f32(vmul_n_f32(v1082, *(&v2836 + 1)));
    *(&v2926[12] + 8) = vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-*&v2833[4], *&v2833[8]), *(&v2836 + 1)));
    *&v2926[19] = (v2835 * *v2833);
    *(&v2926[19] + 1) = -(*&v2833[20] * *&v2837);
    *(&v2926[37] + 1) = (*&v2837 * *&v2833[16]);
    *&v2926[38] = -(*&v2833[12] * *&v2837);
    v1083.i32[0] = *&v2833[20];
    v1083.f32[1] = -*&v2833[16];
    v2926[2] = vcvtq_f64_f32(vmul_n_f32(v1083, *&v2837));
    *&v2926[25] = (*&v2836 * *v2833);
    *(&v2926[25] + 1) = -(*&v2833[20] * *(&v2837 + 1));
    *(&v2926[43] + 1) = (*(&v2837 + 1) * *&v2833[16]);
    *&v2926[44] = -(*&v2833[12] * *(&v2837 + 1));
    v2926[8] = vcvtq_f64_f32(vmul_n_f32(v1083, *(&v2837 + 1)));
    *&v2926[31] = (*(&v2836 + 1) * *v2833);
    *(&v2926[31] + 1) = -(*&v2833[20] * v2838);
    *(&v2926[49] + 1) = (v2838 * *&v2833[16]);
    *&v2926[50] = -(*&v2833[12] * v2838);
    v2926[14] = vcvtq_f64_f32(vmul_n_f32(v1083, v2838));
    *(&v2926[32] + 1) = (v2838 * *&v2833[12]);
    v1082.i32[0] = v2834;
    *(&v2926[20] + 1) = (*&v2837 * *&v2833[12]);
    *&v2926[21] = -(*&v2834 * *&v2839);
    v1084.i32[0] = *&v2833[28];
    v1084.f32[1] = -*&v2833[24];
    v2926[39] = vcvtq_f64_f32(vmul_n_f32(v1084, *&v2839));
    v1082.f32[1] = -*&v2833[28];
    *(&v2926[3] + 8) = vcvtq_f64_f32(vmul_n_f32(v1082, *&v2839));
    *(&v2926[26] + 1) = (*(&v2837 + 1) * *&v2833[12]);
    *&v2926[27] = -(*&v2834 * *(&v2839 + 1));
    v2926[45] = vcvtq_f64_f32(vmul_n_f32(v1084, *(&v2839 + 1)));
    *(&v2926[9] + 8) = vcvtq_f64_f32(vmul_n_f32(v1082, *(&v2839 + 1)));
    *&v2926[33] = -(*&v2834 * v2840);
    v2926[51] = vcvtq_f64_f32(vmul_n_f32(v1084, v2840));
    *(&v2926[15] + 8) = vcvtq_f64_f32(vmul_n_f32(v1082, v2840));
    *&v2926[34] = (v2840 * *&v2833[24]);
    v392.i32[0] = HIDWORD(v2834);
    *&v2926[22] = (*&v2839 * *&v2833[24]);
    *(&v2926[22] + 1) = -(*(&v2834 + 3) * *&v2841);
    *(&v2926[40] + 1) = (*&v2841 * *(&v2834 + 2));
    *&v2926[41] = -(*(&v2834 + 1) * *&v2841);
    v392.f32[1] = -*(&v2834 + 2);
    v2926[5] = vcvtq_f64_f32(vmul_n_f32(*v392.f32, *&v2841));
    *(&v2926[23] + 1) = (*&v2841 * *(&v2834 + 1));
    *&v2926[24] = -(*&v2833[8] * *&v2836);
    *&v2926[28] = (*(&v2839 + 1) * *&v2833[24]);
    *(&v2926[28] + 1) = -(*(&v2834 + 3) * *(&v2841 + 1));
    *(&v2926[46] + 1) = (*(&v2841 + 1) * *(&v2834 + 2));
    *&v2926[47] = -(*(&v2834 + 1) * *(&v2841 + 1));
    v2926[11] = vcvtq_f64_f32(vmul_n_f32(*v392.f32, *(&v2841 + 1)));
    *&v2926[0] = 0;
    *(&v2926[18] + 1) = 0;
    *&v2926[37] = 0;
    *&v2926[6] = 0;
    *(&v2926[24] + 1) = 0;
    *&v2926[43] = 0;
    *&v2926[12] = 0;
    *(&v2926[30] + 1) = 0;
    *&v2926[49] = 0;
    *(&v2926[1] + 1) = 0;
    *&v2926[20] = 0;
    *(&v2926[38] + 1) = 0;
    *(&v2926[7] + 1) = 0;
    *&v2926[26] = 0;
    *(&v2926[44] + 1) = 0;
    *(&v2926[13] + 1) = 0;
    *&v2926[32] = 0;
    *(&v2926[50] + 1) = 0;
    *&v2926[3] = 0;
    *(&v2926[21] + 1) = 0;
    *&v2926[40] = 0;
    *&v2926[9] = 0;
    *(&v2926[27] + 1) = 0;
    *&v2926[46] = 0;
    *&v2926[15] = 0;
    *(&v2926[33] + 1) = 0;
    *&v2926[52] = 0;
    *(&v2926[4] + 1) = 0;
    *&v2926[23] = 0;
    *(&v2926[41] + 1) = 0;
    *(&v2926[10] + 1) = 0;
    *&v2926[29] = 0;
    *(&v2926[29] + 1) = (*(&v2841 + 1) * *(&v2834 + 1));
    *&v2926[30] = -(*&v2833[8] * *(&v2836 + 1));
    *(&v2926[47] + 1) = 0;
    *(&v2926[16] + 1) = 0;
    *(&v2926[34] + 1) = -(*(&v2834 + 3) * v2842);
    *(&v2926[52] + 1) = (v2842 * *(&v2834 + 2));
    *&v2926[35] = 0;
    *&v2926[53] = -(*(&v2834 + 1) * v2842);
    v2926[17] = vcvtq_f64_f32(vmul_n_f32(*v392.f32, v2842));
    *(&v2926[35] + 1) = (v2842 * *(&v2834 + 1));
    *(&v2926[53] + 1) = 0;
    v373 = v2715;
    v7 = 1.0;
    v1085 = 1.0;
    do
    {
      while ((v1081 & 1) != 0 || (*(v2926 + v1080) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        ++v1080;
        v1081 = 1;
        if (v1080 == 108)
        {
          v1322 = rtNaN;
          v2919[0] = rtNaN;
          v2919[1] = rtNaN;
          v2920[0] = rtNaN;
          v2920[1] = rtNaN;
          v2920[2] = rtNaN;
          v2920[3] = rtNaN;
          v2921[0] = rtNaN;
          v2921[1] = rtNaN;
          v2921[2] = rtNaN;
          v2921[3] = rtNaN;
          v2921[4] = rtNaN;
          v2921[5] = rtNaN;
          v2921[6] = rtNaN;
          v2921[7] = rtNaN;
          v2921[8] = rtNaN;
          v2921[9] = rtNaN;
          v2921[10] = rtNaN;
          v2921[11] = rtNaN;
          v2922[0] = rtNaN;
          v2922[1] = rtNaN;
          v2922[2] = rtNaN;
          v2922[3] = rtNaN;
          v2922[4] = rtNaN;
          v2922[5] = rtNaN;
          v2922[6] = rtNaN;
          v2922[7] = rtNaN;
          v2922[8] = rtNaN;
          v2922[9] = rtNaN;
          v2922[10] = rtNaN;
          v2922[11] = rtNaN;
          v2922[12] = rtNaN;
          v2922[13] = rtNaN;
          v2922[14] = rtNaN;
          v2922[15] = rtNaN;
          v2922[16] = rtNaN;
          v2922[17] = rtNaN;
          v2922[18] = rtNaN;
          v2922[19] = rtNaN;
          v2922[20] = rtNaN;
          v2922[21] = rtNaN;
          v2922[22] = rtNaN;
          v2922[23] = rtNaN;
          v2922[24] = rtNaN;
          v2922[25] = rtNaN;
          v2922[26] = rtNaN;
          v2922[27] = rtNaN;
          v2922[28] = rtNaN;
          v2922[29] = rtNaN;
          v2922[30] = rtNaN;
          v2922[31] = rtNaN;
          v2922[32] = rtNaN;
          v2922[33] = rtNaN;
          v2922[34] = rtNaN;
          v2922[35] = rtNaN;
          v2922[36] = rtNaN;
          v2922[37] = rtNaN;
          v2922[38] = rtNaN;
          v2922[39] = rtNaN;
          v2922[40] = rtNaN;
          v2922[41] = rtNaN;
          v2922[42] = rtNaN;
          v2922[43] = rtNaN;
          v2922[44] = rtNaN;
          v2922[45] = rtNaN;
          v2922[46] = rtNaN;
          v2922[47] = rtNaN;
          v2922[48] = rtNaN;
          v2922[49] = rtNaN;
          v2922[50] = rtNaN;
          v2922[51] = rtNaN;
          v2922[52] = rtNaN;
          v2922[53] = rtNaN;
          v2922[54] = rtNaN;
          v2922[55] = rtNaN;
          v2922[56] = rtNaN;
          v2922[57] = rtNaN;
          v2922[58] = rtNaN;
          v2922[59] = rtNaN;
          v2922[60] = rtNaN;
          v2922[61] = rtNaN;
          v2922[62] = rtNaN;
          v2922[63] = rtNaN;
          v2922[64] = rtNaN;
          v2922[65] = rtNaN;
          v2922[66] = rtNaN;
          v2922[67] = rtNaN;
          v2922[68] = rtNaN;
          v2922[69] = rtNaN;
          v2922[70] = rtNaN;
          v2922[71] = rtNaN;
          v2922[72] = rtNaN;
          v2922[73] = rtNaN;
          v2922[74] = rtNaN;
          v2922[75] = rtNaN;
          v2922[76] = rtNaN;
          v2922[77] = rtNaN;
          v2923[0] = rtNaN;
          v2923[1] = rtNaN;
          v2923[2] = rtNaN;
          v2923[3] = rtNaN;
          v2923[4] = rtNaN;
          v2923[5] = rtNaN;
          v2923[6] = rtNaN;
          v2923[7] = rtNaN;
          v2924[0] = rtNaN;
          v2924[1] = rtNaN;
          v2924[2] = rtNaN;
          v2924[3] = rtNaN;
          *&v2845 = rtNaN;
          *(&v2845 + 1) = rtNaN;
          *&v2846 = rtNaN;
          *(&v2846 + 1) = rtNaN;
          *&v2847 = rtNaN;
          *(&v2847 + 1) = rtNaN;
          *&v2848 = rtNaN;
          *(&v2848 + 1) = rtNaN;
          v2849 = rtNaN;
          v2798[0] = rtNaN;
          v2798[1] = rtNaN;
          v2799[0] = rtNaN;
          v2799[1] = rtNaN;
          v2800[0] = rtNaN;
          v2800[1] = rtNaN;
          v2801[0] = rtNaN;
          v2801[1] = rtNaN;
          v2802[0] = rtNaN;
          v2802[1] = rtNaN;
          v2802[2] = rtNaN;
          v2802[3] = rtNaN;
          v2802[4] = rtNaN;
          v2803[0] = rtNaN;
          v2803[1] = rtNaN;
          v2803[2] = rtNaN;
          v2803[3] = rtNaN;
          v2804[0] = rtNaN;
          v2804[1] = rtNaN;
          v2804[2] = rtNaN;
          v2804[3] = rtNaN;
          v2804[4] = rtNaN;
          v2804[5] = rtNaN;
          v2804[6] = rtNaN;
          v2804[7] = rtNaN;
          v2804[8] = rtNaN;
          v2804[9] = rtNaN;
          v2804[10] = rtNaN;
          v2804[11] = rtNaN;
          v2804[12] = rtNaN;
          v2804[13] = rtNaN;
          v2804[14] = rtNaN;
          v2804[15] = rtNaN;
          v2804[16] = rtNaN;
          v2804[17] = rtNaN;
          v2804[18] = rtNaN;
          v2804[19] = rtNaN;
          v2804[20] = rtNaN;
          v2804[21] = rtNaN;
          v2804[22] = rtNaN;
          v2804[23] = rtNaN;
          v2804[24] = rtNaN;
          v2804[25] = rtNaN;
          v2804[26] = rtNaN;
          v2804[27] = rtNaN;
          v2804[28] = rtNaN;
          v2804[29] = rtNaN;
          v2804[30] = rtNaN;
          v2804[31] = rtNaN;
          v2804[32] = rtNaN;
          v2804[33] = rtNaN;
          v2804[34] = rtNaN;
          v2804[35] = rtNaN;
          v2804[36] = rtNaN;
          v2804[37] = rtNaN;
          v2804[38] = rtNaN;
          v2804[39] = rtNaN;
          v2804[40] = rtNaN;
          v2804[41] = rtNaN;
          v2804[42] = rtNaN;
          v2804[43] = rtNaN;
          v2804[44] = rtNaN;
          v2804[45] = rtNaN;
          v2804[46] = rtNaN;
          v2804[47] = rtNaN;
          v2804[48] = rtNaN;
          v2804[49] = rtNaN;
          v2804[50] = rtNaN;
          v2804[51] = rtNaN;
          v2804[52] = rtNaN;
          v2804[53] = rtNaN;
          v2804[54] = rtNaN;
          v2805 = rtNaN;
          v2806 = rtNaN;
          v2807 = rtNaN;
          v2808 = rtNaN;
          v2809 = rtNaN;
          v1323 = rtNaN;
          v2810 = rtNaN;
          v366.i64[0] = rtNaN;
          v1324 = rtNaN;
          v2811 = rtNaN;
          v1325 = rtNaN;
          v1326 = rtNaN;
          v2812 = rtNaN;
          v1327 = rtNaN;
          v1328 = rtNaN;
          v1329 = rtNaN;
          v2813 = rtNaN;
          goto LABEL_1299;
        }
      }

      v1081 = 0;
      ++v1080;
    }

    while (v1080 != 108);
    memcpy(v2935, v2926, 0x360uLL);
    v2845 = 0u;
    v2846 = 0u;
    v2847 = 0u;
    v2848 = 0u;
    v2849 = 0;
    v2851 = 0u;
    memset(v2852, 0, sizeof(v2852));
    v2853 = 0u;
    v2854 = 0.0;
    v2912 = 0u;
    v2913 = 0u;
    v2914 = 0u;
    v2915 = 0u;
    v2916 = 0u;
    v2917 = 0u;
    bzero(v2919, 0x360uLL);
    bzero(v2798, 0x288uLL);
    v1086 = 0;
    v1087 = 0;
    v2610 = 0;
    v1088 = &v2935[43] + 8;
    v2652 = &v2935[49] + 8;
    v1089 = &v2935[37] + 8;
    v1090 = &v2935[31] + 8;
    v1091 = &v2935[25] + 8;
    v1092 = &v2935[19] + 8;
    v1093 = &v2935[48] + 8;
    v1094 = &v2935[42] + 8;
    v1095 = &v2935[30] + 8;
    v2654 = &v2935[36] + 8;
    v1096 = &v2935[24] + 8;
    v2703 = &v2935[18] + 8;
    v1097 = &v2935[12] + 8;
    v2656 = &v2935[13] + 8;
    v1098 = &v2935[6] + 8;
    v1099 = &v2935[7] + 8;
    v1100 = &v2935[6];
    v1101 = &v2935[1];
    v1102 = 12;
    v2725 = 13;
    v1103 = 2;
    v2710 = 1;
    while (2)
    {
      v2641 = v1094;
      v2649 = v1093;
      v2647 = v1092;
      v2643 = v1091;
      v2640 = v1090;
      v2638 = v1089;
      v2634 = v1088;
      v2613 = v1102;
      v1120 = v1102 & 0xFFFFFFFFFFFFFFFCLL;
      if (v1103 <= 9)
      {
        v1121 = 9;
      }

      else
      {
        v1121 = v1103;
      }

      v2609 = 8 * (v1121 - v1087 - 2);
      v1122 = 13 * v1087;
      v1123 = 13 * v1087;
      v2736 = v1087;
      v1124 = 0.0;
      v1125 = 3.31216864e-170;
      v1126 = 13 * v1087;
      v1127 = v1103;
      do
      {
        v1128 = fabs(*(v2935 + v1126));
        v1129 = v1124 + v1128 / v1125 * (v1128 / v1125);
        v1124 = v1125 / v1128 * (v1125 / v1128) * v1124 + 1.0;
        if (v1128 > v1125)
        {
          v1125 = v1128;
        }

        else
        {
          v1124 = v1129;
        }

        v1130 = v1126 + 2;
        ++v1126;
      }

      while (v1130 < 12 * v1087 + 13);
      v1131 = v1125 * sqrt(v1124);
      v2693 = v1096;
      if (v1131 <= 0.0)
      {
        v1132 = v1087;
        *(&v2845 + v1087) = 0;
        goto LABEL_953;
      }

      v1133 = 12 - v1086;
      if (*(v2935 + 13 * v1087) >= 0.0)
      {
        v1134 = v1131;
      }

      else
      {
        v1134 = -v1131;
      }

      v1135 = (v1123 + v2610 + 12);
      if (v1131 >= 1.00208418e-292)
      {
        if (v1123 < v1135)
        {
          v1141 = v2710;
          if (v1133 >= 4)
          {
            v1142 = v1133 & 0xFFFFFFFFFFFFFFFCLL;
            v1143 = v1101;
            v1144 = 1.0 / v1134;
            do
            {
              v1145 = vmulq_n_f64(*v1143, v1144);
              v1143[-1] = vmulq_n_f64(v1143[-1], v1144);
              *v1143 = v1145;
              v1143 += 2;
              v1120 -= 4;
            }

            while (v1120);
            if (v1133 == v1142)
            {
              goto LABEL_952;
            }

            v1141 = v2710 + v1142;
          }

          do
          {
            *&v2934[8 * v1141 + 16104] = *&v2934[8 * v1141 + 16104] * (1.0 / v1134);
            ++v1141;
          }

          while (v2725 != v1141);
        }
      }

      else if (v1123 < v1135)
      {
        v1136 = v2710;
        if (v1133 < 4)
        {
          do
          {
LABEL_943:
            *&v2934[8 * v1136 + 16104] = *&v2934[8 * v1136 + 16104] * (1.0 / v1134);
            ++v1136;
          }

          while (v2725 != v1136);
        }

        else
        {
          v1137 = v1133 & 0xFFFFFFFFFFFFFFFCLL;
          v1138 = v1101;
          v1139 = 1.0 / v1134;
          do
          {
            v1140 = vmulq_n_f64(*v1138, v1139);
            v1138[-1] = vmulq_n_f64(v1138[-1], v1139);
            *v1138 = v1140;
            v1138 += 2;
            v1120 -= 4;
          }

          while (v1120);
          if (v1133 != v1137)
          {
            v1136 = v2710 + v1137;
            goto LABEL_943;
          }
        }
      }

LABEL_952:
      *(v2935 + 13 * v1087) = *(v2935 + 13 * v1087) + 1.0;
      v1132 = v1087;
      *(&v2845 + v1087) = -v1134;
LABEL_953:
      v1146 = 8 * v1132;
      v1147 = 96 - 8 * v1132;
      v2633 = v1086;
      v2688 = v1095;
      v2698 = v1097;
      v2662 = v1098;
      v2658 = v1099;
      v2615 = v1100;
      if (v1132 >= 8)
      {
        v2611 = v1132 + 1;
        memcpy(&v2919[v1122], v2935 + v1122 * 8, v1147);
        v1104 = v2611;
        v1105 = v2736;
        v1106 = v2658;
        v1107 = v2662;
        v1108 = v2698;
        v1109 = v2703;
        v1110 = v2688;
        v1111 = v2633;
        v1112 = v2640;
        v1113 = v2643;
        v1114 = v2647;
        v1115 = v2649;
        v1116 = v2641;
        v1117 = v2654;
        v1118 = v2693;
        goto LABEL_921;
      }

      v2603 = v1146 + 8;
      v2602 = &v2798[10 * v1087];
      v2608 = 88 - v1146;
      v2612 = v1132 + 2;
      v1148 = v1100;
      v1149 = v1127;
      do
      {
        if (v1131 > 0.0)
        {
          v1150 = 0.0;
          v1151 = v2935 + 13 * v1087;
          for (j = v1132; j != 12; ++j)
          {
            v1153 = *v1151++;
            v1150 = v1150 + v1148[j] * v1153;
          }

          v1154 = -v1150 / *(v2935 + 13 * v1087);
          if (v1154 != 0.0)
          {
            v1155 = v2935 + 13 * v1087;
            for (k = v1132; k != 12; ++k)
            {
              v1157 = *v1155++;
              v1148[k] = v1148[k] + v1157 * v1154;
            }
          }
        }

        *(&v2851 + v1149 - 1) = *(&v2935[6 * v1149 - 6] + v1132);
        ++v1149;
        v1148 += 12;
      }

      while (v1149 != 10);
      v2601 = 8 * v1132;
      memcpy(&v2919[v1122], v2935 + v1122 * 8, v1147);
      v1105 = v2736;
      if (v2736 != 7)
      {
        v1158 = *&v2850[8 * v2612 + 16];
        v1159 = fabs(v1158);
        if (v1159 <= 3.31216864e-170)
        {
          v1160 = v1159 * 3.01916994e169 * (v1159 * 3.01916994e169);
          v1159 = 3.31216864e-170;
        }

        else
        {
          v1160 = 1.0;
        }

        v1161 = fabs(*&v2852[v2736]);
        v1162 = v1159 / v1161 * (v1159 / v1161) * v1160 + 1.0;
        v1163 = v1160 + v1161 / v1159 * (v1161 / v1159);
        if (v1161 > v1159)
        {
          v1163 = v1162;
          v1159 = v1161;
        }

        if (v2736 != 6)
        {
          v1164 = fabs(*&v2850[8 * v2736 + 48]);
          v1165 = v1159 / v1164 * (v1159 / v1164) * v1163 + 1.0;
          v1163 = v1163 + v1164 / v1159 * (v1164 / v1159);
          if (v1164 > v1159)
          {
            v1163 = v1165;
            v1159 = v1164;
          }

          if (v2736 != 5)
          {
            v1166 = fabs(*&v2850[8 * v2736 + 56]);
            v1167 = v1159 / v1166 * (v1159 / v1166) * v1163 + 1.0;
            v1163 = v1163 + v1166 / v1159 * (v1166 / v1159);
            if (v1166 > v1159)
            {
              v1163 = v1167;
              v1159 = v1166;
            }

            if (v2736 != 4)
            {
              v1168 = fabs(*&v2850[8 * v2736 + 64]);
              v1169 = v1159 / v1168 * (v1159 / v1168) * v1163 + 1.0;
              v1163 = v1163 + v1168 / v1159 * (v1168 / v1159);
              if (v1168 > v1159)
              {
                v1163 = v1169;
                v1159 = v1168;
              }

              if (v2736 != 3)
              {
                v1170 = fabs(*&v2850[8 * v2736 + 72]);
                v1171 = v1159 / v1170 * (v1159 / v1170) * v1163 + 1.0;
                v1163 = v1163 + v1170 / v1159 * (v1170 / v1159);
                if (v1170 > v1159)
                {
                  v1163 = v1171;
                  v1159 = v1170;
                }

                if (v2736 != 2)
                {
                  v1172 = fabs(*(&v2853 + v2736 + 1));
                  v1173 = v1159 / v1172 * (v1159 / v1172) * v1163 + 1.0;
                  v1163 = v1163 + v1172 / v1159 * (v1172 / v1159);
                  if (v1172 > v1159)
                  {
                    v1163 = v1173;
                    v1159 = v1172;
                  }

                  if (v2736 != 1)
                  {
                    v1174 = fabs(*&v2850[8 * v2736 + 88]);
                    if (v1174 <= v1159)
                    {
                      v1163 = v1163 + v1174 / v1159 * (v1174 / v1159);
                    }

                    else
                    {
                      v1163 = v1159 / v1174 * (v1159 / v1174) * v1163 + 1.0;
                      v1159 = v1174;
                    }
                  }
                }
              }
            }
          }
        }

        v1175 = v1159 * sqrt(v1163);
        if (v1175 == 0.0)
        {
          v2852[v2736 - 2] = 0;
LABEL_1121:
          memcpy(v2602 + 1, &v2852[-2] + v2603, v2609 + 8);
          v1105 = v2736;
          v1111 = v2633;
          v1112 = v2640;
          v1113 = v2643;
          v1114 = v2647;
          v1115 = v2649;
          v1116 = v2641;
          v1117 = v2654;
          v1110 = v2688;
          v1118 = v2693;
          v1109 = v2703;
          v1108 = v2698;
          v1107 = v2662;
          v1106 = v2658;
          v1119 = v2613;
          v1104 = v2736 + 1;
          goto LABEL_922;
        }

        if (v1158 >= 0.0)
        {
          v1176 = v1175;
        }

        else
        {
          v1176 = -v1175;
        }

        *&v2852[v2736 - 2] = v1176;
        v1177 = 1.0 / v1176;
        *(&v2851 + v1127 - 1) = *(&v2851 + v1127 - 1) * v1177;
        if (fabs(v1175) >= 1.00208418e-292)
        {
          v1178 = v2736 + 1;
          if (v1127 > 8)
          {
            goto LABEL_1011;
          }

          *&v2852[v1127 - 2] = *&v2852[v1127 - 2] * v1177;
          if (v1127 == 8)
          {
            goto LABEL_1011;
          }

          v1180 = &v2852[v1127 - 2];
          v1180[1] = v1180[1] * v1177;
          if (v1127 > 6)
          {
            goto LABEL_1011;
          }

          v1180[2] = v1180[2] * v1177;
          if (v1127 == 6)
          {
            goto LABEL_1011;
          }

          v1180[3] = v1180[3] * v1177;
          if (v1127 > 4)
          {
            goto LABEL_1011;
          }

          v1180[4] = v1180[4] * v1177;
          if (v1127 == 4)
          {
            goto LABEL_1011;
          }

          v1180[5] = v1180[5] * v1177;
          if (v1127 >= 3)
          {
            goto LABEL_1011;
          }
        }

        else
        {
          v1178 = v2736 + 1;
          if (v1127 > 8)
          {
            goto LABEL_1011;
          }

          *&v2852[v1127 - 2] = *&v2852[v1127 - 2] * v1177;
          if (v1127 == 8)
          {
            goto LABEL_1011;
          }

          v1179 = &v2852[v1127 - 2];
          v1179[1] = v1179[1] * v1177;
          if (v1127 > 6)
          {
            goto LABEL_1011;
          }

          v1179[2] = v1179[2] * v1177;
          if (v1127 == 6)
          {
            goto LABEL_1011;
          }

          v1179[3] = v1179[3] * v1177;
          if (v1127 > 4)
          {
            goto LABEL_1011;
          }

          v1179[4] = v1179[4] * v1177;
          if (v1127 == 4)
          {
            goto LABEL_1011;
          }

          v1179[5] = v1179[5] * v1177;
          if (v1127 > 2)
          {
            goto LABEL_1011;
          }
        }

        *(&v2853 + v1127) = *(&v2853 + v1127) * v1177;
LABEL_1011:
        v1181 = *&v2852[v1178 - 2] + 1.0;
        *&v2852[v1178 - 2] = v1181;
        *&v2852[v2736 - 2] = -*&v2852[v2736 - 2];
        bzero(&v2912 + v2603, v2608);
        v1182 = 11 - v2736;
        v1183 = (11 - v2736) & 0xC;
        v1184 = *(&v2851 + v1127 - 1);
        if (*&v1184 != 0.0)
        {
          v1185 = vdupq_lane_s64(v1184, 0);
          v1186 = &v2658[v2601];
          v1187 = &v2913.u32[v2601 / 4 + 2];
          v1188 = &v2662[v2601];
          v1189 = v1182 & 0xC;
          do
          {
            v1190 = *v1188;
            v1188 += 2;
            v1191 = v1190;
            v1192 = *v1186;
            v1186 += 2;
            v1193 = vmlaq_f64(*v1187, v1185, v1192);
            v1187[-1] = vmlaq_f64(v1187[-1], v1185, v1191);
            *v1187 = v1193;
            v1187 += 2;
            v1189 -= 4;
          }

          while (v1189);
          if (v1182 != v1183)
          {
            v1194 = v2736 + v1183;
            do
            {
              *&v2912.i64[v1194 + 1] = *&v2912.i64[v1194 + 1] + *&v2662[8 * v1194] * *&v1184;
              ++v1194;
            }

            while (v1194 != 11);
          }
        }

        if (v1127 <= 8)
        {
          v1195 = v2852[v1127 - 2];
          if (*&v1195 != 0.0)
          {
            v1196 = vdupq_lane_s64(v1195, 0);
            v1197 = &v2656[v2601];
            v1198 = &v2913.u32[v2601 / 4 + 2];
            v1199 = &v2698[v2601];
            v1200 = v1182 & 0xC;
            do
            {
              v1201 = *v1199;
              v1199 += 2;
              v1202 = v1201;
              v1203 = *v1197;
              v1197 += 2;
              v1204 = vmlaq_f64(*v1198, v1196, v1203);
              v1198[-1] = vmlaq_f64(v1198[-1], v1196, v1202);
              *v1198 = v1204;
              v1198 += 2;
              v1200 -= 4;
            }

            while (v1200);
            if (v1182 != v1183)
            {
              v1205 = v2736 + v1183;
              do
              {
                *&v2912.i64[v1205 + 1] = *&v2912.i64[v1205 + 1] + *&v2698[8 * v1205] * *&v1195;
                ++v1205;
              }

              while (v1205 != 11);
            }
          }

          if (v1127 != 8)
          {
            v1206 = &v2852[v1127 - 2];
            v1207 = *(v1206 + 1);
            if (*&v1207 != 0.0)
            {
              v1208 = vdupq_lane_s64(v1207, 0);
              v1209 = &v2703[v2601];
              v1210 = &v2913.u32[v2601 / 4 + 2];
              v1211 = v1182 & 0xC;
              do
              {
                v1212 = *v1209;
                v1213 = v1209[1];
                v1209 += 2;
                v1214 = vmlaq_f64(*v1210, v1208, v1213);
                v1210[-1] = vmlaq_f64(v1210[-1], v1208, v1212);
                *v1210 = v1214;
                v1210 += 2;
                v1211 -= 4;
              }

              while (v1211);
              if (v1182 != v1183)
              {
                v1215 = v2736 + v1183;
                do
                {
                  *&v2912.i64[v1215 + 1] = *&v2912.i64[v1215 + 1] + *&v2703[8 * v1215] * *&v1207;
                  ++v1215;
                }

                while (v1215 != 11);
              }
            }

            if (v1127 <= 6)
            {
              v1216 = *(v1206 + 2);
              if (*&v1216 != 0.0)
              {
                v1217 = vdupq_lane_s64(v1216, 0);
                v1218 = &v2693[v2601];
                v1219 = &v2913.u32[v2601 / 4 + 2];
                v1220 = v1182 & 0xC;
                do
                {
                  v1221 = *v1218;
                  v1222 = v1218[1];
                  v1218 += 2;
                  v1223 = vmlaq_f64(*v1219, v1217, v1222);
                  v1219[-1] = vmlaq_f64(v1219[-1], v1217, v1221);
                  *v1219 = v1223;
                  v1219 += 2;
                  v1220 -= 4;
                }

                while (v1220);
                if (v1182 != v1183)
                {
                  v1224 = v2736 + v1183;
                  do
                  {
                    *&v2912.i64[v1224 + 1] = *&v2912.i64[v1224 + 1] + *&v2693[8 * v1224] * *&v1216;
                    ++v1224;
                  }

                  while (v1224 != 11);
                }
              }

              if (v1127 != 6)
              {
                v1225 = *(v1206 + 3);
                if (*&v1225 != 0.0)
                {
                  v1226 = vdupq_lane_s64(v1225, 0);
                  v1227 = &v2688[v2601];
                  v1228 = &v2913.u32[v2601 / 4 + 2];
                  v1229 = v1182 & 0xC;
                  do
                  {
                    v1230 = *v1227;
                    v1231 = v1227[1];
                    v1227 += 2;
                    v1232 = vmlaq_f64(*v1228, v1226, v1231);
                    v1228[-1] = vmlaq_f64(v1228[-1], v1226, v1230);
                    *v1228 = v1232;
                    v1228 += 2;
                    v1229 -= 4;
                  }

                  while (v1229);
                  if (v1182 != v1183)
                  {
                    v1233 = v2736 + v1183;
                    do
                    {
                      *&v2912.i64[v1233 + 1] = *&v2912.i64[v1233 + 1] + *&v2688[8 * v1233] * *&v1225;
                      ++v1233;
                    }

                    while (v1233 != 11);
                  }
                }

                if (v1127 <= 4)
                {
                  v1234 = *(v1206 + 4);
                  if (*&v1234 != 0.0)
                  {
                    v1235 = vdupq_lane_s64(v1234, 0);
                    v1236 = &v2654[v2601];
                    v1237 = &v2913.u32[v2601 / 4 + 2];
                    v1238 = v1182 & 0xC;
                    do
                    {
                      v1239 = *v1236;
                      v1240 = v1236[1];
                      v1236 += 2;
                      v1241 = vmlaq_f64(*v1237, v1235, v1240);
                      v1237[-1] = vmlaq_f64(v1237[-1], v1235, v1239);
                      *v1237 = v1241;
                      v1237 += 2;
                      v1238 -= 4;
                    }

                    while (v1238);
                    if (v1182 != v1183)
                    {
                      v1242 = v2736 + v1183;
                      do
                      {
                        *&v2912.i64[v1242 + 1] = *&v2912.i64[v1242 + 1] + *&v2654[8 * v1242] * *&v1234;
                        ++v1242;
                      }

                      while (v1242 != 11);
                    }
                  }

                  if (v1127 != 4)
                  {
                    v1243 = *(v1206 + 5);
                    if (*&v1243 != 0.0)
                    {
                      v1244 = vdupq_lane_s64(v1243, 0);
                      v1245 = &v2641[v2601];
                      v1246 = &v2913.u32[v2601 / 4 + 2];
                      v1247 = v1182 & 0xC;
                      do
                      {
                        v1248 = *v1245;
                        v1249 = v1245[1];
                        v1245 += 2;
                        v1250 = vmlaq_f64(*v1246, v1244, v1249);
                        v1246[-1] = vmlaq_f64(v1246[-1], v1244, v1248);
                        *v1246 = v1250;
                        v1246 += 2;
                        v1247 -= 4;
                      }

                      while (v1247);
                      if (v1182 != v1183)
                      {
                        v1251 = v2736 + v1183;
                        do
                        {
                          *&v2912.i64[v1251 + 1] = *&v2912.i64[v1251 + 1] + *&v2641[8 * v1251] * *&v1243;
                          ++v1251;
                        }

                        while (v1251 != 11);
                      }
                    }

                    if (v1127 <= 2)
                    {
                      v1252 = *(v1206 + 6);
                      if (*&v1252 != 0.0)
                      {
                        v1253 = vdupq_lane_s64(v1252, 0);
                        v1254 = &v2649[v2601];
                        v1255 = &v2913.u32[v2601 / 4 + 2];
                        v1256 = v1182 & 0xC;
                        do
                        {
                          v1257 = *v1254;
                          v1258 = v1254[1];
                          v1254 += 2;
                          v1259 = vmlaq_f64(*v1255, v1253, v1258);
                          v1255[-1] = vmlaq_f64(v1255[-1], v1253, v1257);
                          *v1255 = v1259;
                          v1255 += 2;
                          v1256 -= 4;
                        }

                        while (v1256);
                        if (v1182 != v1183)
                        {
                          v1260 = v2736 + v1183;
                          do
                          {
                            *&v2912.i64[v1260 + 1] = *&v2912.i64[v1260 + 1] + *&v2649[8 * v1260] * *&v1252;
                            ++v1260;
                          }

                          while (v1260 != 11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v1261 = -*&v1184 / v1181;
        if (v1261 != 0.0)
        {
          v1262 = vdupq_lane_s64(*&v1261, 0);
          v1263 = v2601;
          v1264 = v1182 & 0xC;
          do
          {
            v1265 = vmlaq_f64(*&v2658[v1263], v1262, *(&v2913 + v1263 + 8));
            *&v2662[v1263] = vmlaq_f64(*&v2662[v1263], v1262, *(&v2912 + v1263 + 8));
            *&v2658[v1263] = v1265;
            v1263 += 32;
            v1264 -= 4;
          }

          while (v1264);
          if (v1182 != v1183)
          {
            v1266 = v2736 + v1183;
            do
            {
              *&v2662[8 * v1266] = *&v2662[8 * v1266] + *&v2912.i64[v1266 + 1] * v1261;
              ++v1266;
            }

            while (v1266 != 11);
          }
        }

        if (v1127 <= 8)
        {
          v1267 = -*&v2852[v1127 - 2] / v1181;
          if (v1267 != 0.0)
          {
            v1268 = vdupq_lane_s64(*&v1267, 0);
            v1269 = v2601;
            v1270 = v1182 & 0xC;
            do
            {
              v1271 = vmlaq_f64(*&v2656[v1269], v1268, *(&v2913 + v1269 + 8));
              *&v2698[v1269] = vmlaq_f64(*&v2698[v1269], v1268, *(&v2912 + v1269 + 8));
              *&v2656[v1269] = v1271;
              v1269 += 32;
              v1270 -= 4;
            }

            while (v1270);
            if (v1182 != v1183)
            {
              v1272 = v2736 + v1183;
              do
              {
                *&v2698[8 * v1272] = *&v2698[8 * v1272] + *&v2912.i64[v1272 + 1] * v1267;
                ++v1272;
              }

              while (v1272 != 11);
            }
          }

          if (v1127 != 8)
          {
            v1273 = &v2852[v1127 - 2];
            v1274 = -v1273[1] / v1181;
            if (v1274 != 0.0)
            {
              v1275 = vdupq_lane_s64(*&v1274, 0);
              v1276 = &v2703[v2601];
              v1277 = &v2647[v2601];
              v1278 = &v2913.u32[v2601 / 4 + 2];
              v1279 = v1182 & 0xC;
              do
              {
                v1280 = vmlaq_f64(*v1277, v1275, *v1278);
                *v1276 = vmlaq_f64(*v1276, v1275, v1278[-1]);
                v1276 += 2;
                *v1277 = v1280;
                v1277 += 2;
                v1278 += 2;
                v1279 -= 4;
              }

              while (v1279);
              if (v1182 != v1183)
              {
                v1281 = v2736 + v1183;
                do
                {
                  *&v2703[8 * v1281] = *&v2703[8 * v1281] + *&v2912.i64[v1281 + 1] * v1274;
                  ++v1281;
                }

                while (v1281 != 11);
              }
            }

            if (v1127 <= 6)
            {
              v1282 = -v1273[2] / v1181;
              if (v1282 != 0.0)
              {
                v1283 = vdupq_lane_s64(*&v1282, 0);
                v1284 = &v2693[v2601];
                v1285 = &v2643[v2601];
                v1286 = &v2913.u32[v2601 / 4 + 2];
                v1287 = v1182 & 0xC;
                do
                {
                  v1288 = vmlaq_f64(*v1285, v1283, *v1286);
                  *v1284 = vmlaq_f64(*v1284, v1283, v1286[-1]);
                  v1284 += 2;
                  *v1285 = v1288;
                  v1285 += 2;
                  v1286 += 2;
                  v1287 -= 4;
                }

                while (v1287);
                if (v1182 != v1183)
                {
                  v1289 = v2736 + v1183;
                  do
                  {
                    *&v2693[8 * v1289] = *&v2693[8 * v1289] + *&v2912.i64[v1289 + 1] * v1282;
                    ++v1289;
                  }

                  while (v1289 != 11);
                }
              }

              if (v1127 != 6)
              {
                v1290 = -v1273[3] / v1181;
                if (v1290 != 0.0)
                {
                  v1291 = vdupq_lane_s64(*&v1290, 0);
                  v1292 = &v2688[v2601];
                  v1293 = (v2640 + v2601);
                  v1294 = &v2913.u32[v2601 / 4 + 2];
                  v1295 = v1182 & 0xC;
                  do
                  {
                    v1296 = vmlaq_f64(*v1293, v1291, *v1294);
                    *v1292 = vmlaq_f64(*v1292, v1291, v1294[-1]);
                    v1292 += 2;
                    *v1293 = v1296;
                    v1293 += 2;
                    v1294 += 2;
                    v1295 -= 4;
                  }

                  while (v1295);
                  if (v1182 != v1183)
                  {
                    v1297 = v2736 + v1183;
                    do
                    {
                      *&v2688[8 * v1297] = *&v2688[8 * v1297] + *&v2912.i64[v1297 + 1] * v1290;
                      ++v1297;
                    }

                    while (v1297 != 11);
                  }
                }

                if (v1127 <= 4)
                {
                  v1298 = -v1273[4] / v1181;
                  if (v1298 != 0.0)
                  {
                    v1299 = vdupq_lane_s64(*&v1298, 0);
                    v1300 = &v2654[v2601];
                    v1301 = &v2638[v2601];
                    v1302 = &v2913.u32[v2601 / 4 + 2];
                    v1303 = v1182 & 0xC;
                    do
                    {
                      v1304 = vmlaq_f64(*v1301, v1299, *v1302);
                      *v1300 = vmlaq_f64(*v1300, v1299, v1302[-1]);
                      v1300 += 2;
                      *v1301 = v1304;
                      v1301 += 2;
                      v1302 += 2;
                      v1303 -= 4;
                    }

                    while (v1303);
                    if (v1182 != v1183)
                    {
                      v1305 = v2736 + v1183;
                      do
                      {
                        *&v2654[8 * v1305] = *&v2654[8 * v1305] + *&v2912.i64[v1305 + 1] * v1298;
                        ++v1305;
                      }

                      while (v1305 != 11);
                    }
                  }

                  if (v1127 != 4)
                  {
                    v1306 = -v1273[5] / v1181;
                    if (v1306 != 0.0)
                    {
                      v1307 = vdupq_lane_s64(*&v1306, 0);
                      v1308 = &v2641[v2601];
                      v1309 = &v2634[v2601];
                      v1310 = &v2913.u32[v2601 / 4 + 2];
                      v1311 = v1182 & 0xC;
                      do
                      {
                        v1312 = vmlaq_f64(*v1309, v1307, *v1310);
                        *v1308 = vmlaq_f64(*v1308, v1307, v1310[-1]);
                        v1308 += 2;
                        *v1309 = v1312;
                        v1309 += 2;
                        v1310 += 2;
                        v1311 -= 4;
                      }

                      while (v1311);
                      if (v1182 != v1183)
                      {
                        v1313 = v2736 + v1183;
                        do
                        {
                          *&v2641[8 * v1313] = *&v2641[8 * v1313] + *&v2912.i64[v1313 + 1] * v1306;
                          ++v1313;
                        }

                        while (v1313 != 11);
                      }
                    }

                    if (v1127 <= 2)
                    {
                      v1314 = -v1273[6] / v1181;
                      if (v1314 != 0.0)
                      {
                        v1315 = vdupq_lane_s64(*&v1314, 0);
                        v1316 = &v2649[v2601];
                        v1317 = &v2652[v2601];
                        v1318 = &v2913.u32[v2601 / 4 + 2];
                        v1319 = v1182 & 0xC;
                        do
                        {
                          v1320 = vmlaq_f64(*v1317, v1315, *v1318);
                          *v1316 = vmlaq_f64(*v1316, v1315, v1318[-1]);
                          v1316 += 2;
                          *v1317 = v1320;
                          v1317 += 2;
                          v1318 += 2;
                          v1319 -= 4;
                        }

                        while (v1319);
                        if (v1182 != v1183)
                        {
                          v1321 = v2736 + v1183;
                          do
                          {
                            *&v2649[8 * v1321] = *&v2649[8 * v1321] + *&v2912.i64[v1321 + 1] * v1314;
                            ++v1321;
                          }

                          while (v1321 != 11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_1121;
      }

      v1104 = 8;
      v1111 = v2633;
      v1112 = v2640;
      v1113 = v2643;
      v1114 = v2647;
      v1115 = v2649;
      v1116 = v2641;
      v1117 = v2654;
      v1110 = v2688;
      v1118 = v2693;
      v1109 = v2703;
      v1108 = v2698;
      v1107 = v2662;
      v1106 = v2658;
LABEL_921:
      v1119 = v2613;
LABEL_922:
      v2710 += 13;
      v2725 += 12;
      v2610 = ~v1105;
      v1086 = v1111 + 1;
      v1101 = (v1101 + 104);
      v1100 = v2615 + 6;
      v1099 = v1106 + 96;
      v1098 = v1107 + 96;
      v2656 += 96;
      v1097 = v1108 + 96;
      v2703 = v1109 + 96;
      v1096 = v1118 + 96;
      v1095 = v1110 + 96;
      v2654 = v1117 + 96;
      v1094 = v1116 + 96;
      v1093 = v1115 + 96;
      v1092 = v1114 + 96;
      v1091 = v1113 + 96;
      v1090 = (v1112 + 96);
      v1089 = v2638 + 96;
      v1088 = v2634 + 96;
      v1103 = v1127 + 1;
      v2652 += 96;
      v1087 = v1104;
      v1102 = v1119 - 1;
      if (v1104 != 9)
      {
        continue;
      }

      break;
    }

    v1330 = 0;
    *(&v2853 + 1) = *(&v2935[51] + 1);
    v2854 = 0.0;
    v1332 = v2924;
    v1331 = &v2925;
    v1333 = 8;
    v1334 = 10;
    v373 = v2715;
    v1085 = 1.0;
    do
    {
      if (*(&v2845 + v1333) == 0.0)
      {
        v1335 = &v2919[12 * v1333];
        v1335[4] = 0u;
        v1335[5] = 0u;
        v1335[2] = 0u;
        v1335[3] = 0u;
        *v1335 = 0u;
        v1335[1] = 0u;
        v2919[13 * v1333] = 0x3FF0000000000000;
      }

      else
      {
        if (v1333 <= 7)
        {
          v1336 = v1330 + 4;
          v1337 = v1331;
          v1338 = v1334;
          do
          {
            v1339 = 0;
            v1340 = 0.0;
            do
            {
              v1340 = v1340 + *&v1337[v1339] * *&v1332[v1339];
              ++v1339;
            }

            while (v1336 != v1339);
            v1341 = -v1340 / *&v2919[13 * v1333];
            if (v1341 != 0.0)
            {
              v1342 = 0;
              do
              {
                *&v1337[v1342] = *&v1337[v1342] + *&v1332[v1342] * v1341;
                ++v1342;
              }

              while (v1336 != v1342);
            }

            ++v1338;
            v1337 += 12;
          }

          while (v1338 != 10);
        }

        v1343 = 0;
        do
        {
          *&v1332[v1343] = -*&v1332[v1343];
          ++v1343;
        }

        while (v1330 + 4 != v1343);
        *&v2919[13 * v1333] = *&v2919[13 * v1333] + 1.0;
        if (v1333)
        {
          v2737 = v1330;
          v2726 = v1331;
          v2711 = v1333;
          v2704 = v1334;
          bzero(&v2923[-12 * v1330], 64 - 8 * v1330);
          v1334 = v2704;
          v1333 = v2711;
          v1331 = v2726;
          v1330 = v2737;
          v1085 = 1.0;
          v373 = v2715;
        }
      }

      --v1333;
      --v1334;
      ++v1330;
      v1331 -= 13;
      v1332 -= 13;
    }

    while (v1330 != 9);
    v1344 = 0;
    v1345 = &v2814;
    v1346 = &v2819;
    v1347 = v2820;
    v1348 = v2816;
    v1349 = 8;
    v1350 = 10;
    while (2)
    {
      v1352 = v1349;
      if (v1349 <= 6 && *&v2852[v1349 - 2] != 0.0)
      {
        v1353 = &v2798[-10 * v1344];
        v1354 = (10 * v1349) | 1;
        _CF = v1353 + 90 >= &v2814 - 9 * v1344 || v1353 >= v2798;
        v1356 = !_CF;
        v2738 = v1356;
        if (v1344 < 4)
        {
          v1357 = v1346;
          v1358 = v1350;
          do
          {
            v1359 = 0;
            v1360 = 0.0;
            do
            {
              v1360 = v1360 + *&v1357[v1359] * *&v1345[v1359];
              ++v1359;
            }

            while (v1344 != v1359);
            v1361 = -v1360 / *&v2798[v1354];
            if (v1361 != 0.0)
            {
              v1362 = 0;
              do
              {
                *&v1357[v1362] = *&v1357[v1362] + *&v1345[v1362] * v1361;
                ++v1362;
              }

              while (v1344 != v1362);
            }

            ++v1358;
            v1357 += 9;
          }

          while (v1358 != 10);
          goto LABEL_1141;
        }

        v1363 = 4 * (v1344 >> 2);
        v1364 = &v1346[v1363];
        v1365 = &v1345[v1363];
        v1366 = v1344 & 0x7FFFFFFFFFFFFFFCLL;
        v1367 = v1346;
        v1368 = v1347;
        v1369 = v1350;
        while (2)
        {
          v1370 = 0uLL;
          v1371 = v1368;
          v1372 = v1348;
          v1373 = 4 * (v1344 >> 2);
          v1374 = 0uLL;
          do
          {
            v1370 = vmlaq_f64(v1370, v1372[-1], v1371[-1]);
            v1374 = vmlaq_f64(v1374, *v1372, *v1371);
            v1372 += 2;
            v1371 += 2;
            v1373 -= 4;
          }

          while (v1373);
          v1375 = vaddvq_f64(vaddq_f64(v1374, v1370));
          if (v1344 != v1366)
          {
            v1376 = v1365;
            v1377 = v1364;
            v1378 = v1344 - 4 * (v1344 >> 2);
            do
            {
              v1379 = *v1376++;
              v1380 = v1379;
              v1381 = *v1377++;
              v1375 = v1375 + v1381 * v1380;
              --v1378;
            }

            while (v1378);
          }

          v1382 = -v1375 / *&v2798[v1354];
          if (v1382 != 0.0)
          {
            if (v2738)
            {
              v1383 = 0;
              goto LABEL_1172;
            }

            v1384 = 0;
            v1385 = vdupq_lane_s64(*&v1382, 0);
            v1386 = 4 * (v1344 >> 2);
            do
            {
              v1387 = &v1368[v1384 / 2];
              v1388 = vmlaq_f64(v1368[v1384 / 2], v1385, v1348[v1384 / 2]);
              v1387[-1] = vmlaq_f64(v1368[v1384 / 2 - 1], v1385, *&v1345[v1384]);
              *v1387 = v1388;
              v1384 += 4;
              v1386 -= 4;
            }

            while (v1386);
            v1383 = v1344 & 0x7FFFFFFFFFFFFFFCLL;
            if (v1344 != v1366)
            {
              do
              {
LABEL_1172:
                *&v1367[v1383] = *&v1367[v1383] + *&v1345[v1383] * v1382;
                ++v1383;
              }

              while (v1344 != v1383);
            }
          }

          ++v1369;
          v1368 = (v1368 + 72);
          v1364 += 9;
          v1367 += 9;
          if (v1369 == 10)
          {
            break;
          }

          continue;
        }
      }

LABEL_1141:
      v1351 = &v2798[9 * v1352];
      v1351[8] = 0;
      *(v1351 + 2) = 0u;
      *(v1351 + 3) = 0u;
      *v1351 = 0u;
      *(v1351 + 1) = 0u;
      v2798[10 * v1352] = 0x3FF0000000000000;
      v1349 = v1352 - 1;
      --v1350;
      ++v1344;
      v1348 -= 5;
      v1347 -= 5;
      v1346 -= 10;
      v1345 -= 10;
      if (v1352)
      {
        continue;
      }

      break;
    }

    v1389 = 0;
    v1390 = 0.0;
    v1391 = v2921;
    v1392 = v2804;
    while (2)
    {
      v1394 = *(&v2845 + v1389 * 8);
      if (v1394 == 0.0)
      {
        v1395 = *(&v2845 + v1389 * 8);
        if (v1389 != 8)
        {
          goto LABEL_1183;
        }

LABEL_1175:
        v1393 = v2854;
        goto LABEL_1176;
      }

      v1395 = fabs(v1394);
      *(&v2845 + v1389 * 8) = v1395;
      v1396 = v1394 / v1395;
      if (v1389 != 8)
      {
        *&v2852[v1389 - 2] = *&v2852[v1389 - 2] / v1396;
      }

      v1397 = vmulq_n_f64(v1391[-2], v1396);
      v1391[-3] = vmulq_n_f64(v1391[-3], v1396);
      v1391[-2] = v1397;
      v1398 = vmulq_n_f64(*v1391, v1396);
      v1391[-1] = vmulq_n_f64(v1391[-1], v1396);
      *v1391 = v1398;
      v1399 = vmulq_n_f64(v1391[1], v1396);
      v1400 = vmulq_n_f64(v1391[2], v1396);
      v1391[1] = v1399;
      v1391[2] = v1400;
      if (v1389 == 8)
      {
        goto LABEL_1175;
      }

LABEL_1183:
      v1393 = *&v2852[v1389 - 2];
      if (v1393 != 0.0)
      {
        v1401 = fabs(v1393);
        v1402 = v1401 / v1393;
        *&v2852[v1389 - 2] = v1401;
        *(&v2845 + v1389 * 8 + 8) = *(&v2845 + v1389 * 8 + 8) * v1402;
        v1403 = vmulq_n_f64(*(v1392 - 6), v1402);
        *(v1392 - 4) = vmulq_n_f64(*(v1392 - 8), v1402);
        *(v1392 - 3) = v1403;
        v1404 = vmulq_n_f64(*(v1392 - 2), v1402);
        *(v1392 - 2) = vmulq_n_f64(*(v1392 - 4), v1402);
        *(v1392 - 1) = v1404;
        *v1392 = *v1392 * v1402;
        v1393 = v1401;
      }

LABEL_1176:
      v1390 = fmax(v1390, fmax(fabs(v1395), fabs(v1393)));
      ++v1389;
      v1392 += 9;
      v1391 += 6;
      if (v1389 != 9)
      {
        continue;
      }

      break;
    }

    v1405 = 0;
    v1406 = v1390 * 2.22044605e-16;
    v1407 = 7;
    v1408 = 9;
    while (2)
    {
      v1409 = v1407 + 1;
      if (v1407 == -1)
      {
LABEL_1201:
        v1418 = 0;
        if (v1407 != -1)
        {
          goto LABEL_1212;
        }

LABEL_1202:
        v1419 = *(&v2845 + v1409);
        if (v1419 < 0.0)
        {
          v1419 = -v1419;
          *(&v2845 + v1409) = v1419;
          v1420 = 9 * v1409;
          *&v2798[v1420] = vnegq_f64(*&v2798[v1420]);
          *&v2799[v1420] = vnegq_f64(*&v2799[v1420]);
          *&v2800[v1420] = vnegq_f64(*&v2800[v1420]);
          *&v2801[v1420] = vnegq_f64(*&v2801[v1420]);
          *&v2802[v1420] = -*&v2802[v1420];
        }

        if (v1407 <= 6)
        {
          v1421 = &v2803[9 * v1407];
          v1422 = v1407 - 7;
          v1423 = &v2922[12 * v1407];
          v1424 = &v2846 + v1407;
          do
          {
            v1425 = *v1424;
            if (v1419 >= *v1424)
            {
              break;
            }

            v1426 = *(v1421 + 5);
            v1427 = *(v1421 - 1);
            *(v1421 + 5) = *(v1421 - 2);
            v1428 = *(v1421 + 7);
            *(v1421 - 2) = v1426;
            *(v1421 - 1) = v1428;
            *(v1421 + 7) = v1427;
            v1429 = *(v1421 + 9);
            v1430 = *(v1421 + 1);
            *(v1421 + 9) = *v1421;
            v1431 = *(v1421 + 11);
            *v1421 = v1429;
            *(v1421 + 1) = v1431;
            *(v1421 + 11) = v1430;
            *&v1429 = v1421[4];
            v1421[4] = v1421[13];
            v1421[13] = v1429;
            v1432 = v1423[4];
            v1433 = v1423[-3];
            v1434 = v1423[-2];
            v1423[-3] = v1423[3];
            v1423[-2] = v1432;
            v1423[3] = v1433;
            v1423[4] = v1434;
            v1435 = v1423[5];
            v1436 = v1423[6];
            v1437 = *v1423;
            v1423[5] = v1423[-1];
            v1423[-1] = v1435;
            *v1423 = v1436;
            v1438 = v1423[8];
            v1439 = v1423[1];
            v367 = v1423[2];
            v1423[1] = v1423[7];
            v1423[2] = v1438;
            *(v1424 - 1) = v1425;
            *v1424++ = v1419;
            v1423[7] = v1439;
            v1423[8] = v367;
            v1423 += 6;
            v1421 += 9;
            *v1423 = v1437;
            _CF = __CFADD__(v1422++, 1);
          }

          while (!_CF);
        }

        v1405 = 0;
        --v1407;
        goto LABEL_1243;
      }

      v1410 = v1407;
      v1411 = *(&v2845 + v1407 + 1);
      while (1)
      {
        v1412 = fabs(*&v2852[v1410 - 2]);
        v1413 = fabs(v1411);
        v1411 = *(&v2845 + v1410);
        v1414 = (fabs(v1411) + v1413) * 2.22044605e-16;
        v1415 = v1412 > v1406 || v1405 < 21;
        v1416 = v1415;
        v1417 = v1412 > 1.00208418e-292 && v1412 > v1414;
        if (!v1417 || !v1416)
        {
          break;
        }

        if (--v1410 == -1)
        {
          goto LABEL_1201;
        }
      }

      v1418 = v1410 + 1;
      v2852[v1410 - 2] = 0;
      if (v1410 + 1 == v1409)
      {
        goto LABEL_1202;
      }

LABEL_1212:
      LODWORD(v1440) = v1408;
      if (v1408 <= v1418)
      {
        goto LABEL_1235;
      }

      v1441 = 0.0;
      if (v1408 > v1418 + 1)
      {
        v1441 = fabs(*&v2850[8 * v1408 + 8]) * 2.22044605e-16;
      }

      v1442 = fabs(*&v2844[8 * v1408 + 1280]);
      v1443 = v1442 > v1441 && v1442 > 1.00208418e-292;
      v1440 = v1408;
      if (!v1443)
      {
        goto LABEL_1234;
      }

      v1440 = v1408 - 1;
      if (v1418 == v1408 - 1)
      {
        goto LABEL_1236;
      }

      v1444 = &v2850[8 * v1408];
      v1445 = &v2844[8 * v1408 + 1272];
      v1446 = v1418 - v1408 + 1;
      while (1)
      {
        v1447 = 0.0;
        if (v1440 < v1408)
        {
          v1447 = fabs(v1444[1]);
        }

        if (v1440 > v1418 + 1)
        {
          v1447 = fabs(*v1444) + v1447;
        }

        v1448 = fabs(*v1445);
        if (v1448 <= v1447 * 2.22044605e-16 || v1448 <= 1.00208418e-292)
        {
          break;
        }

        --v1440;
        --v1444;
        --v1445;
        _CF = __CFADD__(v1446++, 1);
        if (_CF)
        {
          goto LABEL_1236;
        }
      }

LABEL_1234:
      *&v2844[8 * v1440 + 1280] = 0;
LABEL_1235:
      if (v1440 == v1418)
      {
LABEL_1236:
        v1450 = *(&v2845 + v1409);
        v1451 = *(&v2845 + v1407);
        v1452 = *&v2852[v1407 - 2];
        v1453 = *(&v2845 + v1418);
        v1454 = *&v2852[v1418 - 2];
        v1455 = fmax(fmax(fmax(fmax(fabs(v1450), fabs(v1451)), fabs(v1452)), fabs(v1453)), fabs(v1454));
        v1456 = v1450 * (1.0 / v1455);
        v1457 = v1452 * (1.0 / v1455);
        v1458 = (v1457 * v1457 + (v1451 * (1.0 / v1455) + v1456) * (v1451 * (1.0 / v1455) - v1456)) * 0.5;
        v1459 = v1456 * v1457 * (v1456 * v1457);
        if (v1459 != 0.0 || (v1460 = 0.0, v1458 != 0.0))
        {
          v1461 = sqrt(v1459 + v1458 * v1458);
          if (v1458 < 0.0)
          {
            v1461 = -v1461;
          }

          v1460 = v1459 / (v1461 + v1458);
        }

        v1462 = v1453 * (1.0 / v1455);
        v1463 = v1460 + (v1462 + v1456) * (v1462 - v1456);
        if (v1418 > v1407)
        {
LABEL_1242:
          *&v2852[v1407 - 2] = v1463;
          ++v1405;
          goto LABEL_1243;
        }

        v1496 = v1418 + 1;
        v1497 = &v2845 + v1496;
        v1498 = &v2798[9 * v1496];
        v1499 = &v2852[v1496 - 2];
        v1500 = &v2919[12 * v1496];
        v1501 = v1496;
        v1502 = v1462 * v1454 / v1455;
        while (2)
        {
          v1522 = fabs(v1463);
          v1523 = fabs(v1502);
          if (v1523 + v1522 == 0.0)
          {
            v1524 = 1.0;
            v1525 = 0.0;
            v1526 = 0.0;
            if (v1501 > v1496)
            {
              goto LABEL_1275;
            }
          }

          else
          {
            if (v1522 <= v1523)
            {
              v1544 = v1502;
            }

            else
            {
              v1544 = v1463;
            }

            v1545 = sqrt(v1523 / (v1523 + v1522) * (v1523 / (v1523 + v1522)) + v1522 / (v1523 + v1522) * (v1522 / (v1523 + v1522))) * (v1523 + v1522);
            if (v1544 >= 0.0)
            {
              v1525 = v1545;
            }

            else
            {
              v1525 = -v1545;
            }

            v1524 = v1463 / v1525;
            v1526 = v1502 / v1525;
            if (v1501 > v1496)
            {
LABEL_1275:
              *(v1499 - 2) = v1525;
            }
          }

          v1527 = *(v1499 - 1);
          v1529 = *(v1497 - 1);
          v1528 = *v1497;
          v1530 = -(v1529 * v1526 - v1527 * v1524);
          *(v1499 - 1) = v1530;
          v1531 = v1528 * v1526;
          v1532 = *(v1498 - 72);
          v1533 = v1498[1];
          v1534 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1532, v1526)), *v1498, v1524);
          *(v1498 - 72) = vmlaq_n_f64(vmulq_n_f64(*v1498, v1526), v1532, v1524);
          v1535 = *(v1498 - 56);
          *v1498 = v1534;
          v1498[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1535, v1526)), v1533, v1524);
          *(v1498 - 56) = vmlaq_n_f64(vmulq_n_f64(v1533, v1526), v1535, v1524);
          v1536 = *(v1498 - 40);
          v1537 = v1498[2];
          v1538 = v1498[3];
          v1539 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1536, v1526)), v1537, v1524);
          *(v1498 - 40) = vmlaq_n_f64(vmulq_n_f64(v1537, v1526), v1536, v1524);
          v1540 = *(v1498 - 24);
          v1498[2] = v1539;
          v1498[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1540, v1526)), v1538, v1524);
          *(v1498 - 24) = vmlaq_n_f64(vmulq_n_f64(v1538, v1526), v1540, v1524);
          v1540.f64[0] = v1498[4].f64[0];
          v1539.f64[0] = v1498[-1].f64[1];
          v1498[4].f64[0] = -(v1539.f64[0] * v1526 - v1540.f64[0] * v1524);
          v1498[-1].f64[1] = v1540.f64[0] * v1526 + v1539.f64[0] * v1524;
          v1541 = v1527 * v1526 + v1529 * v1524;
          v1542 = fabs(v1541);
          v1543 = fabs(v1531);
          if (v1543 + v1542 == 0.0)
          {
            v1506 = 1.0;
            v1505 = 0.0;
            v1507 = 0.0;
          }

          else
          {
            if (v1542 <= v1543)
            {
              v1503 = v1531;
            }

            else
            {
              v1503 = v1541;
            }

            v1504 = sqrt(v1543 / (v1543 + v1542) * (v1543 / (v1543 + v1542)) + v1542 / (v1543 + v1542) * (v1542 / (v1543 + v1542))) * (v1543 + v1542);
            v1505 = -v1504;
            if (v1503 >= 0.0)
            {
              v1505 = v1504;
            }

            v1506 = v1541 / v1505;
            v1507 = v1531 / v1505;
          }

          v1508 = v1528 * v1524;
          v1463 = v1506 * v1530 + v1507 * v1508;
          *(v1497 - 1) = v1505;
          *v1497 = -(v1507 * v1530 - v1506 * v1508);
          v1509 = *v1499;
          *v1499 = *v1499 * v1506;
          ++v1499;
          v1510 = v1500[-6];
          v1511 = v1500[-5];
          v1512 = v1500[1];
          v1513 = vmlaq_n_f64(vmulq_n_f64(*v1500, v1507), v1510, v1506);
          *v1500 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1510, v1507)), *v1500, v1506);
          v1500[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1511, v1507)), v1512, v1506);
          v1500[-6] = v1513;
          v1500[-5] = vmlaq_n_f64(vmulq_n_f64(v1512, v1507), v1511, v1506);
          v1514 = v1500[-4];
          v1515 = v1500[-3];
          v1516 = v1500[2];
          v1517 = v1500[3];
          v1500[2] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1514, v1507)), v1516, v1506);
          v1500[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1515, v1507)), v1517, v1506);
          v1500[-4] = vmlaq_n_f64(vmulq_n_f64(v1516, v1507), v1514, v1506);
          v1500[-3] = vmlaq_n_f64(vmulq_n_f64(v1517, v1507), v1515, v1506);
          v1518 = v1500[-2];
          v1519 = v1500[-1];
          v1520 = v1500[4];
          v1521 = v1500[5];
          v367 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1518, v1507)), v1520, v1506);
          v392 = vmlaq_n_f64(vmulq_n_f64(v1520, v1507), v1518, v1506);
          v1500[4] = v367;
          v1500[5] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1519, v1507)), v1521, v1506);
          v1502 = v1509 * v1507;
          v1500[-2] = v392;
          v1500[-1] = vmlaq_n_f64(vmulq_n_f64(v1521, v1507), v1519, v1506);
          ++v1497;
          v1498 = (v1498 + 72);
          v1500 += 6;
          v1415 = v1501++ <= v1407;
          if (!v1415)
          {
            goto LABEL_1242;
          }

          continue;
        }
      }

      if (v1440 == v1408)
      {
        v1464 = *&v2852[v1407 - 2];
        v2852[v1407 - 2] = 0;
        if (v1407 >= v1418)
        {
          v1465 = v1407;
          v1466 = 9 * v1409 + 1;
          v1467 = &v2797[8 * v1466 + 2680];
          v1468 = &v2800[9 * v1407];
          do
          {
            v1487 = *(&v2845 + v1465);
            v1488 = fabs(v1487);
            v1489 = fabs(v1464);
            if (v1488 + v1489 == 0.0)
            {
              v1490 = 1.0;
              v1491 = 0.0;
              v1464 = 0.0;
              v1492 = 0.0;
            }

            else
            {
              if (v1488 <= v1489)
              {
                v1493 = v1464;
              }

              else
              {
                v1493 = *(&v2845 + v1465);
              }

              v1494 = sqrt(v1489 / (v1488 + v1489) * (v1489 / (v1488 + v1489)) + v1488 / (v1488 + v1489) * (v1488 / (v1488 + v1489))) * (v1488 + v1489);
              v1491 = -v1494;
              if (v1493 >= 0.0)
              {
                v1491 = v1494;
              }

              v1415 = v1488 <= v1489;
              v1490 = v1487 / v1491;
              v1492 = v1464 / v1491;
              if (v1415)
              {
                if (v1490 == 0.0)
                {
                  v1464 = 1.0;
                }

                else
                {
                  v1464 = 1.0 / v1490;
                }
              }

              else
              {
                v1464 = v1464 / v1491;
              }
            }

            *(&v2845 + v1465) = v1491;
            if (v1465 + 1 > v1418 + 1)
            {
              v1495 = *&v2850[8 * v1465 + 16];
              v1464 = -(v1492 * v1495);
              *&v2850[8 * v1465 + 16] = v1495 * v1490;
            }

            v1469 = *v1467;
            v1470 = *(v1468 - 4);
            *v1467 = -(v1470 * v1492 - *v1467 * v1490);
            *(v1468 - 4) = v1469 * v1492 + v1470 * v1490;
            v1471 = *&v2798[v1466];
            v1472 = *(v1468 - 3);
            *&v2798[v1466] = -(v1472 * v1492 - v1471 * v1490);
            *(v1468 - 3) = v1471 * v1492 + v1472 * v1490;
            v1473 = v1467[2];
            v1474 = *(v1468 - 2);
            v1467[2] = -(v1474 * v1492 - v1473 * v1490);
            *(v1468 - 2) = v1473 * v1492 + v1474 * v1490;
            v1475 = v1467[3];
            v1476 = *(v1468 - 1);
            v1467[3] = -(v1476 * v1492 - v1475 * v1490);
            *(v1468 - 1) = v1475 * v1492 + v1476 * v1490;
            v1477 = v1467[4];
            v1478 = *v1468;
            v1467[4] = -(*v1468 * v1492 - v1477 * v1490);
            *v1468 = v1477 * v1492 + v1478 * v1490;
            v1479 = v1467[5];
            v1480 = v1468[1];
            v1467[5] = -(v1480 * v1492 - v1479 * v1490);
            v1468[1] = v1479 * v1492 + v1480 * v1490;
            v1481 = v1467[6];
            v1482 = v1468[2];
            v1467[6] = -(v1482 * v1492 - v1481 * v1490);
            v1468[2] = v1481 * v1492 + v1482 * v1490;
            v1483 = v1467[7];
            v1484 = v1468[3];
            v1467[7] = -(v1484 * v1492 - v1483 * v1490);
            v1468[3] = v1483 * v1492 + v1484 * v1490;
            v1485 = v1467[8];
            v1486 = v1468[4];
            v1467[8] = -(v1486 * v1492 - v1485 * v1490);
            v1468[4] = v1485 * v1492 + v1486 * v1490;
            v1468 -= 9;
            v1415 = v1465-- <= v1418;
          }

          while (!v1415);
        }
      }

      else
      {
        v1546 = v1440 - 1;
        v1547 = *&v2852[v1546 - 2];
        v2852[v1546 - 2] = 0;
        if (v1440 < v1408)
        {
          v1548 = &v2919[((12 * v1546) | 1) - 1];
          v1549 = v1408 - v1440;
          v1550 = v1440;
          v1551 = (&v2845 + v1550 * 8);
          v1552 = &v2852[v1550 - 2];
          v1553 = &v2921[12 * v1440];
          do
          {
            v1571 = fabs(*v1551);
            v1572 = fabs(v1547);
            if (v1571 + v1572 == 0.0)
            {
              v1557 = 1.0;
              v1556 = 0.0;
              v1558 = 0.0;
            }

            else
            {
              if (v1571 <= v1572)
              {
                v1554 = v1547;
              }

              else
              {
                v1554 = *v1551;
              }

              v1555 = sqrt(v1572 / (v1571 + v1572) * (v1572 / (v1571 + v1572)) + v1571 / (v1571 + v1572) * (v1571 / (v1571 + v1572))) * (v1571 + v1572);
              if (v1554 >= 0.0)
              {
                v1556 = v1555;
              }

              else
              {
                v1556 = -v1555;
              }

              v1557 = *v1551 / v1556;
              v1558 = v1547 / v1556;
            }

            *v1551++ = v1556;
            v1547 = -(v1558 * *v1552);
            *v1552 = *v1552 * v1557;
            ++v1552;
            v1559 = *v1548;
            v1560 = v1553[-3];
            *v1548 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1560, v1558)), *v1548, v1557);
            v1553[-3] = vmlaq_n_f64(vmulq_n_f64(v1559, v1558), v1560, v1557);
            v1561 = v1548[1];
            v1562 = v1553[-2];
            v1548[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1562, v1558)), v1561, v1557);
            v1553[-2] = vmlaq_n_f64(vmulq_n_f64(v1561, v1558), v1562, v1557);
            v1563 = v1548[2];
            v1564 = v1553[-1];
            v1548[2] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1564, v1558)), v1563, v1557);
            v1553[-1] = vmlaq_n_f64(vmulq_n_f64(v1563, v1558), v1564, v1557);
            v1565 = v1548[3];
            v1566 = *v1553;
            v1548[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(*v1553, v1558)), v1565, v1557);
            *v1553 = vmlaq_n_f64(vmulq_n_f64(v1565, v1558), v1566, v1557);
            v1567 = v1548[4];
            v1568 = v1553[1];
            v1548[4] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1568, v1558)), v1567, v1557);
            v1553[1] = vmlaq_n_f64(vmulq_n_f64(v1567, v1558), v1568, v1557);
            v1569 = v1548[5];
            v1570 = v1553[2];
            v1548[5] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v1570, v1558)), v1569, v1557);
            v1553[2] = vmlaq_n_f64(vmulq_n_f64(v1569, v1558), v1570, v1557);
            v1553 += 6;
            --v1549;
          }

          while (v1549);
        }
      }

LABEL_1243:
      if (v1407 >= -1)
      {
        v1408 = v1407 + 2;
        if (v1405 < 75)
        {
          continue;
        }
      }

      break;
    }

    v1329 = v2805;
    v1328 = v2806;
    v1327 = v2807;
    v1326 = v2808;
    v1325 = v2809;
    v1324 = v2810;
    v366.i64[0] = v2811;
    v1323 = v2812;
    v1322 = v2813;
LABEL_1299:
    v1573 = fabsf(v2823.f32[0]);
    v1574 = fabsf(v2823.f32[1]);
    if (v1574 <= v1573)
    {
      v1575 = v1573;
    }

    else
    {
      v1575 = v1574;
    }

    v1576 = fabsf(v2823.f32[2]);
    if (v1576 <= v1575)
    {
      v1577 = v1574 > v1573;
    }

    else
    {
      v1577 = 2;
    }

    *&v2935[0] = v1329;
    *(&v2935[0] + 1) = v1326;
    *&v2935[1] = v366.i64[0];
    *(&v2935[1] + 1) = v1328;
    *&v2935[2] = v1325;
    *(&v2935[2] + 1) = v1323;
    *&v2935[3] = v1327;
    *(&v2935[3] + 1) = v1324;
    v2912 = v2823;
    v2913 = v2824;
    *&v2914 = v2825;
    v1578 = v1574 <= v1573 || v1576 > v1575;
    v1579 = 2 * (v1576 <= v1575);
    v1580 = *(&v2823 | (4 * v1578)) / *(&v2823 | (4 * v1577));
    *(&v2912 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v1578 & 1))) = v1580;
    v1581 = (&v2912 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v1579 >> 1) & 1)));
    v1582 = v1085 / *(&v2912 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1577 & 3)));
    v1583 = *v1581 * v1582;
    *v1581 = v1583;
    v1584 = v2912.f32[(v1577 + 3)];
    v1585 = 4;
    if (!v1578)
    {
      v1585 = 3;
    }

    v1586 = v2912.f32[v1585] - (v1584 * v1580);
    v2912.f32[v1585] = v1586;
    v1587 = v2912.f32[(v1579 + 3)] - (v1584 * v1583);
    v2912.f32[(v1579 + 3)] = v1587;
    v1588 = v2912.f32[(v1577 + 6)];
    v1589 = 6;
    if (v1578)
    {
      v1589 = 7;
    }

    v2912.f32[v1589] = v2912.f32[v1589] - (v1588 * v1580);
    v2912.f32[(v1579 + 6)] = v2912.f32[(v1579 + 6)] - (v1588 * v1583);
    v1590 = fabsf(v1587);
    v1591 = fabsf(v1586);
    if (v1590 <= v1591)
    {
      v1592 = v1578;
    }

    else
    {
      v1592 = v1579;
    }

    if (v1590 <= v1591)
    {
      v1578 = v1579;
    }

    else
    {
      v1578 = v1578;
    }

    v1593 = v1085 / v2912.f32[(v1592 + 3)];
    v1594 = v2912.f32[(v1578 + 3)] * v1593;
    v2912.f32[(v1578 + 3)] = v1594;
    v1595 = v2912.f32[(v1592 + 6)];
    v1596 = v2912.f32[(v1578 + 6)];
    *&v2935[4] = v1322;
    v1597 = v1596 - (v1595 * v1594);
    v1598 = *(v2935 + v1577);
    v1599 = *(v2935 + v1592);
    v1600 = *(&v2912 | (4 * v1592));
    v1601 = v1599 - (v1600 * v1598);
    v1602 = *(v2935 + v1578);
    v1603 = *(&v2912 | (4 * v1578));
    v1604 = v1602 - ((v1601 * v1594) + (v1603 * v1598));
    v1605 = *(v2935 + (v1577 + 3));
    v1606 = *(v2935 + (v1592 + 3));
    v1607 = v1606 - (v1600 * v1605);
    v1608 = *(v2935 + (v1578 + 3));
    v1609 = v1608 - ((v1603 * v1605) + (v1607 * v1594));
    v367.i64[0] = *(v2935 + (v1577 + 6));
    v369.i64[0] = *(v2935 + (v1592 + 6));
    v1610 = *v367.i64;
    v367.f32[0] = *v369.i64;
    v367.f32[0] = v367.f32[0] - (v1600 * v1610);
    v392.i64[0] = *(v2935 + (v1578 + 6));
    v392.f32[0] = *v392.i64;
    v369.f32[0] = v1085 / v1597;
    *&v1611 = (v392.f32[0] - ((v1603 * v1610) + (v367.f32[0] * v1594))) * (v1085 / v1597);
    v367.f32[0] = (v367.f32[0] - (*&v1611 * v1595)) * v1593;
    v392.f32[0] = (v1610 - ((*&v1611 * v1588) + (v367.f32[0] * v1584))) * v1582;
    *v1612.f32 = v2755;
    v1613 = v2756;
    _V6.S[1] = v2757.i32[1];
    *v368.f32 = vrev64_s32(v2755);
    v1612.i64[1] = __PAIR64__(v2756.u32[1], v2755.u32[0]);
    v368.i64[1] = __PAIR64__(v2756.u32[2], v368.u32[0]);
    v370.i64[0] = __PAIR64__(v2756.u32[1], v2756.u32[2]);
    *&v370.u32[2] = vrev64_s32(v2757);
    v1615 = vzip2q_s32(v370, vtrn1q_s32(v2756, v370));
    v1615.i32[0] = v2756.i32[1];
    v371.i32[0] = vdup_laneq_s32(v2756, 3).u32[0];
    v1613.i32[1] = v2756.i32[3];
    v372 = vzip1q_s32(v1613, v1613);
    v372.i32[2] = v2756.i32[0];
    *&v1616 = v1604 * v369.f32[0];
    v1617.f32[0] = (v1601 - (*&v1616 * v1595)) * v1593;
    v1613.i64[0] = __PAIR64__(v367.u32[0], v392.u32[0]);
    v1613.i64[1] = __PAIR64__(v392.u32[0], v1611);
    *&_S22 = v1609 * v369.f32[0];
    *&v1619 = (v1598 - ((*&v1616 * v1588) + (v1617.f32[0] * v1584))) * v1582;
    *&v1620 = (v1607 - (*&_S22 * v1595)) * v1593;
    v1621 = v1605 - ((*&_S22 * v1588) + (*&v1620 * v1584));
    v1622.i64[0] = __PAIR64__(v1620, v1619);
    *&v1623 = v1621 * v1582;
    v1622.i64[1] = __PAIR64__(v1619, v1616);
    v1624.i64[0] = __PAIR64__(v1617.u32[0], v1623);
    v1624.i64[1] = __PAIR64__(v1623, _S22);
    v436 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1612, v1622), v1624, v368), v1613, v372);
    v1624.i64[0] = __PAIR64__(v1616, v1620);
    v1624.i64[1] = __PAIR64__(v1617.u32[0], v1623);
    v1617.i32[1] = _S22;
    v1617.i64[1] = __PAIR64__(v1620, v1619);
    _Q1 = vmlaq_f32(vmulq_f32(v370, v1624), v1617, v1615);
    v371.f32[1] = v2758;
    v433 = vzip1q_s32(v371, v371);
    v365.i64[0] = __PAIR64__(v1611, v367.u32[0]);
    v365.i64[1] = __PAIR64__(v367.u32[0], v392.u32[0]);
    v2823 = v436;
    v2824 = vmlaq_f32(_Q1, v365, v433);
    __asm { FMLA            S1, S22, V6.S[1] }

    v2825 = _Q1.f32[0] + (v2758 * *&v1611);
    _Q1 = v2824;
    v2764 = v2825;
    v2763 = v2824;
    v2762 = v436;
    v540 = 3;
LABEL_417:
    v2701 = v540;
    v541 = vdupq_n_s32(0x25800000u);
    v2642 = v541;
    v2661 = v540;
    if (v373 < 1)
    {
      v2746 = v540;
      v2747 = v373;
      v547 = v540;
    }

    else
    {
      v542 = 0;
      v543 = &v2790;
      v544 = v2783;
      v545 = v2797;
      do
      {
        *(v544 + 2) = *(v545 + 2);
        v541.i32[0] = *(v545 + 5);
        _Q1.f32[0] = fabsf(v541.f32[0]);
        *&v2766[4 * v542 - 4] = _Q1.f32[0];
        *v544 = *v545;
        v544 += 12;
        v546 = *(v545 + 12);
        ++v542;
        v543[2] = v541.f32[0];
        *v543 = v546;
        v543 += 3;
        v545 += v2631;
      }

      while (v373 != v542);
      v547 = v2661;
      v2746 = v2661;
      v2747 = v373;
      if (v2661 >= 1)
      {
        v548 = 0;
        v549 = v2783;
        do
        {
          v2722 = v549;
          v2730 = v548;
          v550 = &v2795[4 * v548 * v2661];
          bzero(v550, 4 * v2661);
          v547 = v2661;
          v373 = v2715;
          v541.f32[0] = *v550;
          v551 = &v2762.f32[2];
          v552 = v2722;
          v553 = v2701;
          do
          {
            _Q1.i32[0] = *v552;
            v433.f32[0] = *(v551 - 2);
            v550[1] = v550[1] + (*(v551 - 1) * *v552);
            v550[2] = v550[2] + (*v551 * _Q1.f32[0]);
            v541.f32[0] = v541.f32[0] + (v433.f32[0] * _Q1.f32[0]);
            ++v552;
            v551 += v2661;
            --v553;
          }

          while (v553);
          *v550 = v541.f32[0];
          v548 = v2730 + 1;
          v549 = v2722 + 12;
        }

        while (v2730 + 1 != v2715);
      }
    }

    v554 = 1.0;
    if (!v373 || !v547)
    {
      v585 = v547;
      if (v547 * v373 < 1)
      {
        if (v373 >= 1)
        {
          goto LABEL_455;
        }
      }

      else
      {
        bzero(v2779, 4 * (v547 * v373));
        v373 = v2715;
        v585 = v2661;
        if (v2715 >= 1)
        {
          goto LABEL_455;
        }
      }

LABEL_502:
      v621 = 0;
      v2697 = 0;
      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
      v383 = 629145600;
      v587 = v2642;
      goto LABEL_524;
    }

    v555 = fabsf(v2762.f32[0]);
    v556 = fabsf(v2762.f32[1]);
    if (v556 <= v555)
    {
      v557 = v555;
    }

    else
    {
      v557 = v556;
    }

    v558 = fabsf(v2762.f32[2]);
    if (v558 <= v557)
    {
      v559 = v556 > v555;
    }

    else
    {
      v559 = 2;
    }

    v560.i32[1] = v2763.i32[1];
    v2926[0] = v2762;
    v2926[1] = v2763;
    *&v2926[2] = v2764;
    v561 = v556 <= v555 || v558 > v557;
    v562 = 2 * (v558 <= v557);
    v563 = *(&v2762 | (4 * v561)) / *(&v2762 | (4 * v559));
    *(v2926 & 0xFFFFFFFFFFFFFFFBLL | (4 * v561)) = v563;
    v564 = (v2926 & 0xFFFFFFFFFFFFFFF3 | (4 * (v559 & 3)));
    v565 = (v2926 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v562 >> 1) & 1)));
    v566 = *v565 / *v564;
    *v565 = v566;
    v567 = (v559 + 3);
    v568 = *(v2926 + v567);
    v569 = 12;
    if (v561)
    {
      v569 = 16;
    }

    v570 = *(v2926 + v569) - (v568 * v563);
    *(v2926 + v569) = v570;
    v571 = *(v2926 + (v562 + 3)) - (v568 * v566);
    *(v2926 + (v562 + 3)) = v571;
    v572 = (v559 + 6);
    v573 = *(v2926 + v572);
    v574 = 24;
    if (v561)
    {
      v574 = 28;
    }

    *(v2926 + v574) = *(v2926 + v574) - (v573 * v563);
    *(v2926 + (v562 + 6)) = *(v2926 + (v562 + 6)) - (v573 * v566);
    v575 = fabsf(v571);
    v576 = fabsf(v570);
    if (v575 <= v576)
    {
      v577 = v561;
    }

    else
    {
      v577 = v562;
    }

    if (v575 <= v576)
    {
      v562 = v562;
    }

    else
    {
      v562 = v561;
    }

    v578 = (v577 + 3);
    v579 = *(v2926 + (v562 + 3)) / *(v2926 + v578);
    *(v2926 + (v562 + 3)) = v579;
    v580 = (v577 + 6);
    v581 = *(v2926 + (v562 + 6)) - (*(v2926 + v580) * v579);
    *(v2926 + (v562 + 6)) = v581;
    if (v373 >= 1)
    {
      v560.i32[0] = *(v2926 & 0xFFFFFFFFFFFFFFF3 | (4 * (v577 & 3)));
      v433.i32[0] = *(v2926 + v580);
      v392.i32[0] = *(v2926 + v578);
      v582 = *(v2926 + v567);
      v367.f32[0] = *v564;
      v365.f32[0] = -*(v2926 & 0xFFFFFFFFFFFFFFF3 | (4 * (v562 & 3)));
      v366.f32[0] = -*(v2926 + v572);
      v583 = 1.0 / v581;
      if (v373 > 4)
      {
        v623 = &v2790 + v559;
        v624 = &v2790 + v577;
        v625 = vdupq_lane_s32(v560, 0);
        v626 = vdupq_lane_s32(*v365.f32, 0);
        v627 = vdupq_lane_s32(*v433.f32, 0);
        v628 = vdupq_lane_s32(*v366.f32, 0);
        v629 = &v2790 + v562;
        __asm { FMOV            V22.4S, #1.0 }

        LODWORD(v631) = vdivq_f32(_Q22, v392).u32[0];
        LODWORD(v632) = vdivq_f32(_Q22, v367).u32[0];
        v633 = v2935;
        v634 = v2637;
        do
        {
          v635 = vld3q_f32(v623);
          v623 += 12;
          v636 = vld3q_f32(v624);
          v624 += 12;
          v637 = vmlsq_f32(v636, v625, v635);
          v638 = vld3q_f32(v629);
          v629 += 12;
          v2958.val[2] = vmulq_n_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vmulq_n_f32(v637, v579)), v626, v635), v638), v583);
          v2958.val[1] = vmulq_n_f32(vmlsq_f32(v637, v627, v2958.val[2]), v631);
          v2958.val[0] = vmulq_n_f32(vaddq_f32(vmlaq_f32(vnegq_f32(vmulq_n_f32(v2958.val[1], v582)), v628, v2958.val[2]), v635), v632);
          vst3q_f32(v633, v2958);
          v633 += 12;
          v634 -= 4;
        }

        while (v634);
        v584 = v2637;
        v554 = 1.0;
      }

      else
      {
        v584 = 0;
      }

      v639 = v554 / v392.f32[0];
      v640 = v373 - v584;
      v641 = 12 * v584;
      v642 = &v2790 + 3 * v584 + v559;
      v643 = &v2790 + 3 * v584 + v577;
      v644 = v2935 + 3 * v584 + 2;
      v645 = (&v2790 + 4 * v562 + v641);
      v646 = v554 / v367.f32[0];
      do
      {
        v647 = *v642;
        v642 += 3;
        v648 = v647;
        v649 = *v643;
        v643 += 3;
        v650 = v649 - (v648 * *v560.i32);
        v651 = *v645;
        v645 += 3;
        v652 = (v651 - ((v579 * v650) - (v648 * v365.f32[0]))) * v583;
        v653 = (v650 - (v652 * v433.f32[0])) * v639;
        *(v644 - 1) = v653;
        *v644 = v652;
        *(v644 - 2) = (v648 - ((v582 * v653) - (v652 * v366.f32[0]))) * v646;
        v644 += 3;
        --v640;
      }

      while (v640);
    }

    memcpy(v2779, v2935, 12 * v2715);
    v373 = v2715;
    v585 = 3;
    if (v2715 < 1)
    {
      goto LABEL_502;
    }

LABEL_455:
    v586.i64[0] = 0x101010101010101;
    v586.i64[1] = 0x101010101010101;
    v383 = 629145600;
    v587 = v2642;
    if (v373 < 4)
    {
      v588 = 0;
      goto LABEL_466;
    }

    if (v373 >= 0x20)
    {
      v590 = v2769;
      v591 = v2743;
      v592 = v2715 & 0xFFFFFFE0;
      do
      {
        v365 = *v590;
        v366 = v590[1];
        v367 = v590[3];
        v541 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v590[-4], v2642), vcgtq_f32(v590[-3], v2642)), vuzp1q_s16(vcgtq_f32(v590[-2], v2642), vcgtq_f32(v590[-1], v2642))), v586);
        v436 = vcgtq_f32(*v590, v2642);
        v433 = vuzp1q_s16(v436, vcgtq_f32(v366, v2642));
        _Q1 = vandq_s8(vuzp1q_s8(v433, vuzp1q_s16(vcgtq_f32(v590[2], v2642), vcgtq_f32(v367, v2642))), v586);
        v591[-1] = v541;
        *v591 = _Q1;
        v591 += 2;
        v590 += 8;
        v592 -= 32;
      }

      while (v592);
      if (v373 != v2632)
      {
        v588 = v2715 & 0xFFFFFFE0;
        v589 = v588;
        if ((v2715 & 0x1C) == 0)
        {
          goto LABEL_466;
        }

        goto LABEL_463;
      }
    }

    else
    {
      v589 = 0;
LABEL_463:
      v593 = v589 - (v2715 & 0xFFFFFFFC);
      v594 = &v2742[v589 + 9];
      v595 = &v2766[4 * v589 - 4];
      do
      {
        v596 = *v595++;
        v541 = vcgtq_f32(v596, v2642);
        *v541.f32 = vand_s8(vmovn_s32(v541), 0x1000100010001);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v594++ = v541.i32[0];
        v593 += 4;
      }

      while (v593);
      v588 = v2715 & 0xFFFFFFFC;
      if (v373 != v2624)
      {
LABEL_466:
        v597 = v373 - v588;
        v598 = &v2742[v588 + 9];
        v599 = &v2766[4 * v588 - 4];
        do
        {
          v600 = *v599++;
          v541.f32[0] = v600;
          _Q1.i32[0] = 629145600;
          *v598++ = v600 > 2.2204e-16;
          --v597;
        }

        while (v597);
      }
    }

    v601 = 0;
    v602 = 0;
    while (2)
    {
      if (!v2742[v601 + 9])
      {
        ++v601;
        goto LABEL_470;
      }

      __src[v602] = v601 + 1;
      v602 = (v602 + 1);
      if (v602 < v373)
      {
        ++v601;
LABEL_470:
        if (v601 >= v373)
        {
          break;
        }

        continue;
      }

      break;
    }

    v2723 = v585;
    if (v373 != 1)
    {
      if (v602 < 1)
      {
        v621 = 0;
        v2697 = 0;
        goto LABEL_524;
      }

      v604 = v602;
      v605 = v602;
      memcpy(&__dst, __src, 4 * v602);
      if (v605 == 1)
      {
        v603 = 0;
        m = 1;
        goto LABEL_480;
      }

      v603 = v604 & 0x7FFFFFFE;
      v654 = v2749;
      v655 = v2766;
      v656 = v603;
      do
      {
        v657 = *(&v2790 + 3 * *v654 - 1);
        *(v655 - 1) = *(&v2790 + 3 * *(v654 - 1) - 1);
        *v655 = v657;
        v655 += 2;
        v654 += 2;
        v656 -= 2;
      }

      while (v656);
      for (m = 0; v604 != v603; ++v603)
      {
LABEL_480:
        *&v2766[4 * v603 - 4] = *(&v2790 + 3 * *&v2749[4 * v603 - 4] - 1);
      }

      if (v605 <= 7)
      {
        v606 = 0;
        goto LABEL_486;
      }

      v606 = v604 & 0x7FFFFFF8;
      v607 = v2933;
      v608 = v2767;
      v609 = v606;
      do
      {
        v541 = v608[-1];
        v2943.val[0] = *v608;
        v610 = v541;
        v611 = v541;
        v2943.val[1] = *v608;
        v2943.val[2] = *v608;
        v612 = v607 + 24;
        vst3q_f32(v607, *v541.f32);
        v613 = v607 + 12;
        vst3q_f32(v613, v2943);
        v608 += 2;
        v607 = v612;
        v609 -= 8;
      }

      while (v609);
      if (v606 != v604)
      {
LABEL_486:
        v614 = v604 - v606;
        v615 = &v2766[4 * v606 - 4];
        v616 = &v2933[3 * v606];
        do
        {
          v617 = *v615++;
          v541.i32[0] = v617;
          v610 = vdupq_lane_s32(*v541.f32, 0);
          *(v616 + 2) = v617;
          *v616 = v610.i64[0];
          v616 += 3;
          --v614;
        }

        while (v614);
      }

      v618 = 0;
      for (n = 0; n != v604; ++n)
      {
        v620 = 3 * *&v2749[4 * n - 4];
        v541.i64[0] = *&v2933[v618];
        v541.f32[2] = v2933[v618 + 2];
        v610.f32[0] = *(&v2790 + v620 - 3);
        v610.f32[1] = *(&v2790 + v620 - 2);
        v610.f32[2] = *(&v2790 + v620 - 1);
        v541 = vdivq_f32(v610, v541);
        *&v2781[v618 * 4 + 8] = v541.i32[2];
        *&v2781[v618 * 4] = v541.i64[0];
        v618 += 3;
      }

      memcpy(&v2790, v2781, 4 * (3 * v605));
      v621 = v605;
      if (v605 <= 3)
      {
        v622 = 0;
        v373 = v2715;
        v586.i64[0] = 0x101010101010101;
        v586.i64[1] = 0x101010101010101;
        v383 = 629145600;
        v587 = v2642;
        v585 = v2723;
        goto LABEL_514;
      }

      v373 = v2715;
      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
      v383 = 629145600;
      v587 = v2642;
      v585 = v2723;
      if (v605 >= 0x20)
      {
        v622 = v604 & 0x7FFFFFE0;
        v658 = v2750;
        v659 = v2745;
        v660 = v622;
        do
        {
          v661 = v658[-1].val[0];
          v662 = v658[-1].val[1];
          v433 = v658[-1].val[2];
          v436 = v658[-1].val[3];
          v365.i32[1] = 471340048;
          v541 = vqtbl4q_s8(*(&v433 - 2), xmmword_2247A4600);
          _Q1 = vqtbl4q_s8(*v658, xmmword_2247A4600);
          v659[-1] = v541;
          *v659 = _Q1;
          v659 += 2;
          v658 += 2;
          v660 -= 32;
        }

        while (v660);
        if (v622 != v604)
        {
          if ((v604 & 0x1C) == 0)
          {
            goto LABEL_514;
          }

          goto LABEL_511;
        }
      }

      else
      {
        v622 = 0;
LABEL_511:
        v663 = v622;
        v622 = v604 & 0x7FFFFFFC;
        v664 = v663 - v622;
        v665 = &v2743[v663 + 96];
        v666 = &v2749[4 * v663 - 4];
        do
        {
          v667 = *v666++;
          v541.i64[1] = v667.i64[1];
          *v541.f32 = vmovn_s32(v667);
          *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
          *v665++ = v541.i32[0];
          v664 += 4;
        }

        while (v664);
        if (v622 != v604)
        {
LABEL_514:
          v668 = v604 - v622;
          v669 = &v2743[v622 + 96];
          v670 = &v2749[4 * v622 - 4];
          do
          {
            v671 = *v670++;
            *v669++ = v671;
            --v668;
          }

          while (v668);
        }
      }

      if (m)
      {
        v672 = 0;
        goto LABEL_521;
      }

      v672 = v604 & 0x7FFFFFFE;
      v673 = v2744;
      v674 = v672;
      do
      {
        v675 = &v2790 + 3 * *v673;
        *(&v2790 + 3 * *(v673 - 1) - 1) = 1.0;
        *(v675 - 1) = 1.0;
        v673 += 2;
        v674 -= 2;
      }

      while (v674);
      if (v672 != v604)
      {
LABEL_521:
        v676 = v604 - v672;
        v677 = &v2743[v672 + 96];
        do
        {
          v678 = *v677++;
          *(&v2790 + 3 * v678 - 1) = 1.0;
          --v676;
        }

        while (v676);
      }

      v2697 = 1;
      goto LABEL_524;
    }

    if (v602)
    {
      v603 = 0;
      __dst = __src[0];
      v604 = 1;
      m = 1;
      v605 = 1;
      goto LABEL_480;
    }

    v621 = 0;
    v2697 = 0;
LABEL_524:
    v679 = v2747;
    v2708 = v2746;
    v680 = v2746;
    v2702 = v621;
    v2724 = v585;
    if (v2747 < 1)
    {
      goto LABEL_561;
    }

    if (v2747 < 8 || v2746 != 1)
    {
      v682 = 0;
      goto LABEL_533;
    }

    v682 = v2747 & 0x7FFFFFF8;
    v683 = v2796;
    v684 = v2767;
    v685 = v682;
    do
    {
      v541 = vabsq_f32(v683[-1]);
      _Q1 = vabsq_f32(*v683);
      v684[-1] = v541;
      *v684 = _Q1;
      v684 += 2;
      v683 += 2;
      v685 -= 8;
    }

    while (v685);
    if (v682 != v679)
    {
LABEL_533:
      v686 = &v2766[4 * v682 - 4];
      v687 = v679 - v682;
      v688 = v2708 + v2708 * v682 - 1;
      do
      {
        *v686++ = fabsf(*&v2795[4 * v688]);
        v688 += v680;
        --v687;
      }

      while (v687);
    }

    if (v679 <= 3)
    {
      v689 = 0;
      goto LABEL_546;
    }

    if (v679 >= 0x20)
    {
      v689 = v679 & 0x7FFFFFE0;
      v690 = v2769;
      v691 = v2743;
      v692 = v689;
      do
      {
        v365 = *v690;
        v366 = v690[1];
        v367 = v690[3];
        v541 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v690[-4], v587), vcgtq_f32(v690[-3], v587)), vuzp1q_s16(vcgtq_f32(v690[-2], v587), vcgtq_f32(v690[-1], v587))), v586);
        v436 = vcgtq_f32(*v690, v587);
        v433 = vuzp1q_s16(v436, vcgtq_f32(v366, v587));
        _Q1 = vandq_s8(vuzp1q_s8(v433, vuzp1q_s16(vcgtq_f32(v690[2], v587), vcgtq_f32(v367, v587))), v586);
        v691[-1] = v541;
        *v691 = _Q1;
        v691 += 2;
        v690 += 8;
        v692 -= 32;
      }

      while (v692);
      if (v689 != v679)
      {
        if ((v679 & 0x1C) == 0)
        {
          goto LABEL_546;
        }

        goto LABEL_543;
      }
    }

    else
    {
      v689 = 0;
LABEL_543:
      v693 = v689;
      v689 = v679 & 0x7FFFFFFC;
      v694 = v693 - v689;
      v695 = &v2742[v693 + 9];
      v696 = &v2766[4 * v693 - 4];
      do
      {
        v697 = *v696++;
        v541 = vcgtq_f32(v697, v587);
        *v541.f32 = vand_s8(vmovn_s32(v541), 0x1000100010001);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v695++ = v541.i32[0];
        v694 += 4;
      }

      while (v694);
      if (v689 != v679)
      {
LABEL_546:
        v698 = v679 - v689;
        v699 = &v2742[v689 + 9];
        v700 = &v2766[4 * v689 - 4];
        do
        {
          v701 = *v700++;
          v541.f32[0] = v701;
          _Q1.i32[0] = 629145600;
          *v699++ = v701 > 2.2204e-16;
          --v698;
        }

        while (v698);
      }
    }

    v702 = 0;
    v703 = 0;
    while (2)
    {
      if (!v2742[v702 + 9])
      {
        ++v702;
LABEL_550:
        if (v702 >= v679)
        {
          goto LABEL_555;
        }

        continue;
      }

      break;
    }

    __src[v703] = v702 + 1;
    v704 = v703 + 1 < v679;
    if (v703 + 1 < v679)
    {
      ++v702;
    }

    v703 = (v703 + 1);
    if (v704)
    {
      goto LABEL_550;
    }

LABEL_555:
    v705 = v680;
    if (v679 == 1)
    {
      if (v703)
      {
        v706 = 0;
        __dst = __src[0];
        v703 = 1;
        v707 = 1;
        v2691 = 1;
        v708 = v2708;
        goto LABEL_567;
      }

LABEL_561:
      v709 = v680;
      if (v680 == v709)
      {
        v2747 = 0;
      }

      else
      {
        binary_expand_op(v2795, &v2746, &__dst, 0, v2933, v709, 0, *v541.i64, *_Q1.i64, v433);
        v585 = v2724;
        v621 = v2702;
        v587 = v2642;
        v383 = 629145600;
        v586.i64[0] = 0x101010101010101;
        v586.i64[1] = 0x101010101010101;
        v373 = v2715;
      }

      goto LABEL_615;
    }

    if (v703 < 1)
    {
      goto LABEL_561;
    }

    memcpy(&__dst, __src, 4 * v703);
    if (v703 == 1)
    {
      v706 = 0;
      v2691 = 1;
      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
      v587 = v2642;
      v621 = v2702;
      v708 = v2708;
      v680 = v705;
      v707 = 1;
      goto LABEL_567;
    }

    v707 = v703;
    v706 = v703 & 0x7FFFFFFE;
    v710 = v2749;
    v711 = v2773;
    v712 = v706;
    v708 = v2708;
    v680 = v705;
    do
    {
      v541.i32[0] = *&v2795[4 * *(v710 - 1) * v705 - 4];
      _Q1.i32[0] = *&v2795[4 * *v710 * v705 - 4];
      *(v711 - 1) = v541.i32[0];
      *v711 = _Q1.i32[0];
      v711 += 2;
      v710 += 2;
      v712 -= 2;
    }

    while (v712);
    v2691 = 0;
    v586.i64[0] = 0x101010101010101;
    v586.i64[1] = 0x101010101010101;
    v587 = v2642;
    v621 = v2702;
    if (v706 != v703)
    {
      do
      {
LABEL_567:
        v541.i32[0] = *&v2795[4 * *&v2749[4 * v706 - 4] * v708 - 4];
        *&v2773[4 * v706++ - 4] = v541.f32[0];
      }

      while (v707 != v706);
    }

    if (v680 >= 1)
    {
      v713 = 0;
      v714 = 4 * v680;
      v715 = v2933;
      v716 = v2934;
      do
      {
        v541.f32[0] = *&v2773[4 * v713 - 4];
        if (v708 >= 8)
        {
          _Q1 = vdupq_lane_s32(*v541.f32, 0);
          v718 = v716;
          v719 = v680 & 0x7FFFFFF8;
          do
          {
            v718[-1] = _Q1;
            *v718 = _Q1;
            v718 += 2;
            v719 -= 8;
          }

          while (v719);
          v717 = v680 & 0x7FFFFFF8;
          if (v717 == v680)
          {
            goto LABEL_570;
          }
        }

        else
        {
          v717 = 0;
        }

        v720 = v680 - v717;
        v721 = &v715[v717];
        do
        {
          *v721++ = v541.f32[0];
          --v720;
        }

        while (v720);
LABEL_570:
        ++v713;
        v716 = (v716 + v714);
        v715 = (v715 + v714);
      }

      while (v713 != v707);
    }

    v2732 = v707;
    v722 = v680;
    if (v708 != v722)
    {
      binary_expand_op(v2795, &v2746, &__dst, v703, v2933, v722, v703, *v541.i64, *_Q1.i64, v433);
      goto LABEL_594;
    }

    v723 = 0;
    v724 = 0;
    v725 = v680 & 0x7FFFFFF8;
    v726 = 4 * v708;
    v727 = v2934;
    v728 = &v2782;
    while (2)
    {
      if (v680 >= 1)
      {
        v729 = (*&v2749[4 * v724 - 4] - 1) * v705;
        if (v705 < 8)
        {
          v730 = 0;
          goto LABEL_588;
        }

        v731 = v727;
        v732 = v728;
        v733 = v725;
        v734 = &v2796[v729];
        do
        {
          v433 = v731[-1];
          v436 = *v731;
          v541 = vdivq_f32(v734[-1], v433);
          _Q1 = vdivq_f32(*v734, *v731);
          v732[-1] = v541;
          *v732 = _Q1;
          v734 += 2;
          v732 += 2;
          v731 += 2;
          v733 -= 8;
        }

        while (v733);
        v730 = v725;
        if (v725 != v705)
        {
LABEL_588:
          v735 = v705 - v730;
          v736 = v730 + v723;
          v737 = &v2781[v736 * 4];
          v738 = &v2933[v736];
          v739 = &v2795[4 * v730 + 4 * v729];
          do
          {
            v740 = *v739;
            v739 += 4;
            v741 = v740;
            v742 = *v738++;
            *v737++ = v741 / v742;
            --v735;
          }

          while (v735);
        }
      }

      ++v724;
      v728 = (v728 + v726);
      v727 = (v727 + v726);
      v723 += v708;
      LODWORD(v680) = v705;
      if (v724 != v2732)
      {
        continue;
      }

      break;
    }

    v2747 = v703;
    if (v703 * v705 > 0)
    {
      memcpy(v2795, v2781, 4 * (v703 * v705));
LABEL_594:
      v621 = v2702;
      v587 = v2642;
      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
    }

    if (v703 <= 3)
    {
      v743 = 0;
      v373 = v2715;
      v383 = 629145600;
      v585 = v2724;
      v744 = v2732;
      goto LABEL_606;
    }

    v373 = v2715;
    v383 = 629145600;
    v585 = v2724;
    v744 = v2732;
    if (v703 >= 0x20)
    {
      v743 = v2732 & 0x7FFFFFE0;
      v745 = v2750;
      v746 = v2745;
      v747 = v743;
      do
      {
        v748 = v745[-1].val[0];
        v749 = v745[-1].val[1];
        v433 = v745[-1].val[2];
        v436 = v745[-1].val[3];
        v365.i32[1] = 471340048;
        v541 = vqtbl4q_s8(*(&v433 - 2), xmmword_2247A4600);
        _Q1 = vqtbl4q_s8(*v745, xmmword_2247A4600);
        v746[-1] = v541;
        *v746 = _Q1;
        v746 += 2;
        v745 += 2;
        v747 -= 32;
      }

      while (v747);
      if (v743 != v2732)
      {
        if ((v2732 & 0x1C) == 0)
        {
          goto LABEL_606;
        }

        goto LABEL_603;
      }
    }

    else
    {
      v743 = 0;
LABEL_603:
      v750 = v743;
      v743 = v2732 & 0x7FFFFFFC;
      v751 = v750 - v743;
      v752 = &v2743[v750 + 96];
      v753 = &v2749[4 * v750 - 4];
      do
      {
        v754 = *v753++;
        v541.i64[1] = v754.i64[1];
        *v541.f32 = vmovn_s32(v754);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v752++ = v541.i32[0];
        v751 += 4;
      }

      while (v751);
      if (v743 != v2732)
      {
LABEL_606:
        v755 = v744 - v743;
        v756 = &v2743[v743 + 96];
        v757 = &v2749[4 * v743 - 4];
        do
        {
          v758 = *v757++;
          *v756++ = v758;
          --v755;
        }

        while (v755);
      }
    }

    v759 = v2746;
    v760 = v2708 - 1;
    if (v2691)
    {
      v761 = 0;
      goto LABEL_613;
    }

    v761 = v744 & 0x7FFFFFFE;
    v762 = v2744;
    v763 = v761;
    do
    {
      v764 = v760 + (*v762 - 1) * v759;
      *&v2795[4 * v760 + 4 * (*(v762 - 1) - 1) * v759] = 1065353216;
      *&v2795[4 * v764] = 1065353216;
      v762 += 2;
      v763 -= 2;
    }

    while (v763);
    if (v761 != v744)
    {
LABEL_613:
      v765 = v744 - v761;
      v766 = &v2743[v761 + 96];
      do
      {
        v767 = *v766++;
        *&v2795[4 * v760 + 4 * (v767 - 1) * v759] = 1065353216;
        --v765;
      }

      while (v765);
    }

LABEL_615:
    if (v373 < 1)
    {
      v776 = 0;
      v777 = 0;
      v778 = 0;
      goto LABEL_751;
    }

    v768 = v2787;
    v769 = v2767;
    v770 = v2629;
    if (v373 >= 9)
    {
      do
      {
        v772 = v768 - 12;
        *(&v433 - 2) = vld3q_f32(v772);
        *(&v365 - 1) = vld3q_f32(v768);
        v541 = vabsq_f32(v773);
        _Q1 = vabsq_f32(v436);
        v769[-1] = v541;
        *v769 = _Q1;
        v769 += 2;
        v768 += 24;
        v770 -= 8;
      }

      while (v770);
      v771 = v2629;
    }

    else
    {
      v771 = 0;
    }

    v774 = 12 * v771 + 8;
    do
    {
      *&v2766[4 * v771++ - 4] = fabsf(*&v2783[v774]);
      v774 += 12;
    }

    while (v373 != v771);
    if (v373 <= 3)
    {
      v775 = 0;
      goto LABEL_634;
    }

    if (v373 >= 0x20)
    {
      v780 = v2769;
      v781 = v2743;
      v782 = v2715 & 0xFFFFFFE0;
      do
      {
        v365 = *v780;
        v366 = v780[1];
        v367 = v780[3];
        v541 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v780[-4], v587), vcgtq_f32(v780[-3], v587)), vuzp1q_s16(vcgtq_f32(v780[-2], v587), vcgtq_f32(v780[-1], v587))), v586);
        v436 = vcgtq_f32(*v780, v587);
        v433 = vuzp1q_s16(v436, vcgtq_f32(v366, v587));
        _Q1 = vandq_s8(vuzp1q_s8(v433, vuzp1q_s16(vcgtq_f32(v780[2], v587), vcgtq_f32(v367, v587))), v586);
        v781[-1] = v541;
        *v781 = _Q1;
        v781 += 2;
        v780 += 8;
        v782 -= 32;
      }

      while (v782);
      if (v373 != v2632)
      {
        v779 = v2715 & 0xFFFFFFE0;
        v775 = v779;
        if ((v2715 & 0x1C) == 0)
        {
          goto LABEL_634;
        }

        goto LABEL_631;
      }
    }

    else
    {
      v779 = 0;
LABEL_631:
      v783 = v779 - (v2715 & 0xFFFFFFFC);
      v784 = &v2742[v779 + 9];
      v785 = &v2766[4 * v779 - 4];
      do
      {
        v786 = *v785++;
        v541 = vcgtq_f32(v786, v587);
        *v541.f32 = vand_s8(vmovn_s32(v541), 0x1000100010001);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v784++ = v541.i32[0];
        v783 += 4;
      }

      while (v783);
      v775 = v2715 & 0xFFFFFFFC;
      if (v373 != v2624)
      {
LABEL_634:
        v787 = v373 - v775;
        v788 = &v2742[v775 + 9];
        v789 = &v2766[4 * v775 - 4];
        do
        {
          v790 = *v789++;
          *v788++ = v790 > 2.2204e-16;
          --v787;
        }

        while (v787);
      }
    }

    v791 = 0;
    v792 = 0;
    while (2)
    {
      if (!v2742[v791 + 9])
      {
        ++v791;
        goto LABEL_638;
      }

      __src[v792++] = v791 + 1;
      if (v792 < v373)
      {
        ++v791;
LABEL_638:
        if (v791 >= v373)
        {
          break;
        }

        continue;
      }

      break;
    }

    if (v373 != 1)
    {
      if (v792 < 1)
      {
        goto LABEL_651;
      }

      v794 = v792;
      v795 = v792;
      memcpy(&__dst, __src, 4 * v792);
      if (v795 == 1)
      {
        v793 = 0;
        ii = 1;
        goto LABEL_648;
      }

      v793 = v794 & 0x7FFFFFFE;
      v812 = v2749;
      v813 = v2766;
      v814 = v793;
      do
      {
        v815 = *&v2783[12 * *v812 - 4];
        *(v813 - 1) = *&v2783[12 * *(v812 - 1) - 4];
        *v813 = v815;
        v813 += 2;
        v812 += 2;
        v814 -= 2;
      }

      while (v814);
      for (ii = 0; v794 != v793; ++v793)
      {
LABEL_648:
        *&v2766[4 * v793 - 4] = *&v2783[12 * *&v2749[4 * v793 - 4] - 4];
      }

      if (v795 > 7)
      {
        v796 = v794 & 0x7FFFFFF8;
        v797 = v2933;
        v798 = v2767;
        v799 = v796;
        do
        {
          v541 = v798[-1];
          v2944.val[0] = *v798;
          v800 = v541;
          v801 = v541;
          v2944.val[1] = *v798;
          v2944.val[2] = *v798;
          v802 = v797 + 24;
          vst3q_f32(v797, *v541.f32);
          v803 = v797 + 12;
          vst3q_f32(v803, v2944);
          v798 += 2;
          v797 = v802;
          v799 -= 8;
        }

        while (v799);
        if (v796 == v794)
        {
LABEL_657:
          v808 = 0;
          for (jj = 0; jj != v794; ++jj)
          {
            v810 = 3 * *&v2749[4 * jj - 4];
            v541.i64[0] = *&v2933[v808];
            v541.f32[2] = v2933[v808 + 2];
            v800.i32[0] = *&v2783[4 * v810 - 12];
            v800.i32[1] = *&v2783[4 * v810 - 8];
            v800.i32[2] = *&v2783[4 * v810 - 4];
            v541 = vdivq_f32(v800, v541);
            *&v2781[v808 * 4 + 8] = v541.i32[2];
            *&v2781[v808 * 4] = v541.i64[0];
            v808 += 3;
          }

          memcpy(v2783, v2781, 12 * v795);
          v777 = v795;
          if (v795 <= 3)
          {
            v811 = 0;
            v373 = v2715;
            v586.i64[0] = 0x101010101010101;
            v586.i64[1] = 0x101010101010101;
            v383 = 629145600;
            v587 = v2642;
            v621 = v2702;
            v585 = v2724;
            goto LABEL_674;
          }

          v373 = v2715;
          v586.i64[0] = 0x101010101010101;
          v586.i64[1] = 0x101010101010101;
          v383 = 629145600;
          v587 = v2642;
          v621 = v2702;
          v585 = v2724;
          if (v795 >= 0x20)
          {
            v811 = v794 & 0x7FFFFFE0;
            v816 = v2750;
            v817 = v2745;
            v818 = v811;
            do
            {
              v819 = v816[-1].val[0];
              v820 = v816[-1].val[1];
              v433 = v816[-1].val[2];
              v436 = v816[-1].val[3];
              v365.i32[1] = 471340048;
              v541 = vqtbl4q_s8(*(&v433 - 2), xmmword_2247A4600);
              _Q1 = vqtbl4q_s8(*v816, xmmword_2247A4600);
              v817[-1] = v541;
              *v817 = _Q1;
              v817 += 2;
              v816 += 2;
              v818 -= 32;
            }

            while (v818);
            if (v811 == v794)
            {
              goto LABEL_676;
            }

            if ((v794 & 0x1C) == 0)
            {
LABEL_674:
              v826 = v794 - v811;
              v827 = &v2743[v811 + 96];
              v828 = &v2749[4 * v811 - 4];
              do
              {
                v829 = *v828++;
                *v827++ = v829;
                --v826;
              }

              while (v826);
              goto LABEL_676;
            }
          }

          else
          {
            v811 = 0;
          }

          v821 = v811;
          v811 = v794 & 0x7FFFFFFC;
          v822 = v821 - v811;
          v823 = &v2743[v821 + 96];
          v824 = &v2749[4 * v821 - 4];
          do
          {
            v825 = *v824++;
            v541.i64[1] = v825.i64[1];
            *v541.f32 = vmovn_s32(v825);
            *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
            *v823++ = v541.i32[0];
            v822 += 4;
          }

          while (v822);
          if (v811 != v794)
          {
            goto LABEL_674;
          }

LABEL_676:
          if (ii)
          {
            v830 = 0;
          }

          else
          {
            v830 = v794 & 0x7FFFFFFE;
            v831 = v2744;
            v832 = v830;
            do
            {
              v833 = &v2783[12 * *v831];
              *&v2783[12 * *(v831 - 1) - 4] = 1065353216;
              *(v833 - 1) = 1065353216;
              v831 += 2;
              v832 -= 2;
            }

            while (v832);
            if (v830 == v794)
            {
              goto LABEL_683;
            }
          }

          v834 = v794 - v830;
          v835 = &v2743[v830 + 96];
          do
          {
            v836 = *v835++;
            *&v2783[12 * v836 - 4] = 1065353216;
            --v834;
          }

          while (v834);
LABEL_683:
          v778 = 1;
          goto LABEL_684;
        }
      }

      else
      {
        v796 = 0;
      }

      v804 = v794 - v796;
      v805 = &v2766[4 * v796 - 4];
      v806 = &v2933[3 * v796];
      do
      {
        v807 = *v805++;
        v541.i32[0] = v807;
        v800 = vdupq_lane_s32(*v541.f32, 0);
        *(v806 + 2) = v807;
        *v806 = v800.i64[0];
        v806 += 3;
        --v804;
      }

      while (v804);
      goto LABEL_657;
    }

    if (v792)
    {
      v793 = 0;
      __dst = __src[0];
      v794 = 1;
      ii = 1;
      v795 = 1;
      goto LABEL_648;
    }

LABEL_651:
    v778 = 0;
    v777 = 0;
    v585 = v2724;
LABEL_684:
    v837 = &v2765;
    v838 = v373;
    v839 = v585 - 1;
    do
    {
      *v837++ = fabsf(*&v2779[4 * v839]);
      v839 += v585;
      --v838;
    }

    while (v838);
    if (v373 <= 3)
    {
      v840 = 0;
      goto LABEL_697;
    }

    if (v373 >= 0x20)
    {
      v842 = v2769;
      v843 = v2743;
      v844 = v2715 & 0xFFFFFFE0;
      do
      {
        v365 = *v842;
        v366 = v842[1];
        v367 = v842[3];
        v541 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v842[-4], v587), vcgtq_f32(v842[-3], v587)), vuzp1q_s16(vcgtq_f32(v842[-2], v587), vcgtq_f32(v842[-1], v587))), v586);
        v436 = vcgtq_f32(*v842, v587);
        v433 = vuzp1q_s16(v436, vcgtq_f32(v366, v587));
        _Q1 = vandq_s8(vuzp1q_s8(v433, vuzp1q_s16(vcgtq_f32(v842[2], v587), vcgtq_f32(v367, v587))), v586);
        v843[-1] = v541;
        *v843 = _Q1;
        v843 += 2;
        v842 += 8;
        v844 -= 32;
      }

      while (v844);
      if (v373 != v2632)
      {
        v841 = v2715 & 0xFFFFFFE0;
        v840 = v841;
        if ((v2715 & 0x1C) == 0)
        {
          goto LABEL_697;
        }

        goto LABEL_694;
      }
    }

    else
    {
      v841 = 0;
LABEL_694:
      v845 = v841 - (v2715 & 0xFFFFFFFC);
      v846 = &v2742[v841 + 9];
      v847 = &v2766[4 * v841 - 4];
      do
      {
        v848 = *v847++;
        v541 = vcgtq_f32(v848, v587);
        *v541.f32 = vand_s8(vmovn_s32(v541), 0x1000100010001);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v846++ = v541.i32[0];
        v845 += 4;
      }

      while (v845);
      v840 = v2715 & 0xFFFFFFFC;
      if (v373 != v2624)
      {
LABEL_697:
        v849 = v373 - v840;
        v850 = &v2742[v840 + 9];
        v851 = &v2766[4 * v840 - 4];
        do
        {
          v852 = *v851++;
          *v850++ = v852 > 2.2204e-16;
          --v849;
        }

        while (v849);
      }
    }

    v853 = 0;
    v854 = 0;
    while (2)
    {
      if (!v2742[v853 + 9])
      {
        ++v853;
LABEL_701:
        if (v853 >= v373)
        {
          goto LABEL_706;
        }

        continue;
      }

      break;
    }

    __src[v854] = v853 + 1;
    v855 = v854 + 1 < v373;
    if (v854 + 1 < v373)
    {
      ++v853;
    }

    ++v854;
    if (v855)
    {
      goto LABEL_701;
    }

LABEL_706:
    v2709 = v778;
    if (v373 != 1)
    {
      if (v854 < 1)
      {
        goto LABEL_712;
      }

      v2734 = v777;
      memcpy(&__dst, __src, 4 * v854);
      v776 = v854;
      if (v854 == 1)
      {
        v856 = 0;
        v2687 = 1;
        v373 = v2715;
        v621 = v2702;
        v585 = v2724;
        v777 = v2734;
        v857 = 1;
        goto LABEL_716;
      }

      v857 = v854;
      v856 = v854 & 0x7FFFFFFE;
      v858 = v2749;
      v859 = v2773;
      v860 = v856;
      v585 = v2724;
      do
      {
        v861 = *&v2779[4 * *v858 * v2724 - 4];
        *(v859 - 1) = *&v2779[4 * *(v858 - 1) * v2724 - 4];
        *v859 = v861;
        v859 += 2;
        v858 += 2;
        v860 -= 2;
      }

      while (v860);
      v2687 = 0;
      v373 = v2715;
      v621 = v2702;
      v777 = v2734;
      if (v856 != v854)
      {
        do
        {
LABEL_716:
          *&v2773[4 * v856 - 4] = *&v2779[4 * *&v2749[4 * v856 - 4] * v585 - 4];
          ++v856;
        }

        while (v857 != v856);
      }

      v862 = 4 * v585;
      if (v585 >= 1)
      {
        v863 = 0;
        v864 = v2933;
        do
        {
          v865 = *&v2773[4 * v863 - 4];
          v866 = v864;
          v867 = v585;
          do
          {
            *v866++ = v865;
            --v867;
          }

          while (v867);
          ++v863;
          v864 = (v864 + v862);
        }

        while (v863 != v857);
      }

      v868 = 0;
      v869 = v2781;
      v870 = v2933;
      do
      {
        v871 = v585 - 1;
        if (v585 >= 1)
        {
          v872 = &v2779[4 * (*&v2749[4 * v868 - 4] - 1) * v585];
          v873 = v870;
          v874 = v869;
          v875 = v585;
          do
          {
            v876 = *v872++;
            v877 = v876;
            v878 = *v873++;
            *v874++ = v877 / v878;
            --v875;
          }

          while (v875);
        }

        ++v868;
        v869 = (v869 + v862);
        v870 = (v870 + v862);
      }

      while (v868 != v857);
      if ((v776 * v585) >= 1)
      {
        v2657 = v776;
        v2735 = v777;
        v2692 = v857;
        memcpy(v2779, v2781, 4 * v776 * v585);
        v857 = v2692;
        v776 = v2657;
        v777 = v2735;
        v585 = v2724;
        v621 = v2702;
        v373 = v2715;
      }

      if (v776 <= 3)
      {
        v879 = 0;
        v586.i64[0] = 0x101010101010101;
        v586.i64[1] = 0x101010101010101;
        v383 = 629145600;
        goto LABEL_741;
      }

      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
      v383 = 629145600;
      if (v776 >= 0x20)
      {
        v879 = v857 & 0x7FFFFFE0;
        v880 = v2750;
        v881 = v2745;
        v882 = v879;
        do
        {
          v883 = v880[-1].val[0];
          v884 = v880[-1].val[1];
          v433 = v880[-1].val[2];
          v436 = v880[-1].val[3];
          v365.i32[1] = 471340048;
          v541 = vqtbl4q_s8(*(&v433 - 2), xmmword_2247A4600);
          _Q1 = vqtbl4q_s8(*v880, xmmword_2247A4600);
          v881[-1] = v541;
          *v881 = _Q1;
          v881 += 2;
          v880 += 2;
          v882 -= 32;
        }

        while (v882);
        if (v879 == v857)
        {
          goto LABEL_743;
        }

        if ((v857 & 0x1C) == 0)
        {
LABEL_741:
          v890 = v857 - v879;
          v891 = &v2743[v879 + 96];
          v892 = &v2749[4 * v879 - 4];
          do
          {
            v893 = *v892++;
            *v891++ = v893;
            --v890;
          }

          while (v890);
          goto LABEL_743;
        }
      }

      else
      {
        v879 = 0;
      }

      v885 = v879;
      v879 = v857 & 0x7FFFFFFC;
      v886 = v885 - v879;
      v887 = &v2743[v885 + 96];
      v888 = &v2749[4 * v885 - 4];
      do
      {
        v889 = *v888++;
        v541.i64[1] = v889.i64[1];
        *v541.f32 = vmovn_s32(v889);
        *v541.f32 = vuzp1_s8(*v541.f32, *v541.f32);
        *v887++ = v541.i32[0];
        v886 += 4;
      }

      while (v886);
      if (v879 != v857)
      {
        goto LABEL_741;
      }

LABEL_743:
      if (v2687)
      {
        v894 = 0;
      }

      else
      {
        v894 = v857 & 0x7FFFFFFE;
        v895 = v2744;
        v896 = v894;
        do
        {
          v897 = v871 + (*v895 - 1) * v585;
          *&v2779[4 * v871 + 4 * (*(v895 - 1) - 1) * v585] = 1065353216;
          *&v2779[4 * v897] = 1065353216;
          v895 += 2;
          v896 -= 2;
        }

        while (v896);
        if (v894 == v857)
        {
          goto LABEL_750;
        }
      }

      v898 = v857 - v894;
      v899 = &v2743[v894 + 96];
      do
      {
        v900 = *v899++;
        *&v2779[4 * v871 + 4 * (v900 - 1) * v585] = 1065353216;
        --v898;
      }

      while (v898);
LABEL_750:
      v778 = v2709;
      goto LABEL_751;
    }

    if (v854)
    {
      v856 = 0;
      __dst = __src[0];
      v776 = 1;
      v857 = 1;
      v2687 = 1;
      goto LABEL_716;
    }

LABEL_712:
    v776 = 0;
LABEL_751:
    if (v2746 == 3 && v621 == v2747)
    {
      if (!v2697)
      {
        goto LABEL_787;
      }

      v911 = 3 * v621;
      if (3 * v621 <= 1)
      {
        v912 = 1;
      }

      else
      {
        v912 = v911;
      }

      if (v911 >= 8)
      {
        v913 = v912 & 0x7FFFFFF8;
        v927 = v2793;
        v928 = v2796;
        v929 = v913;
        do
        {
          v433 = v928[-1];
          v436 = *v928;
          v930 = vsubq_f32(v927[-1], v433);
          v931 = vsubq_f32(*v927, *v928);
          v541 = vmulq_f32(v930, v930);
          _Q1 = vmulq_f32(v931, v931);
          v927[-1] = v541;
          *v927 = _Q1;
          v928 += 2;
          v927 += 2;
          v929 -= 8;
        }

        while (v929);
        if (v913 == v912)
        {
          goto LABEL_787;
        }
      }

      else
      {
        v913 = 0;
      }

      v932 = v912 - v913;
      v933 = 4 * v913;
      v934 = &v2795[4 * v913];
      v935 = (&v2790 + v933);
      do
      {
        v936 = *v934++;
        *v935 = (*v935 - v936) * (*v935 - v936);
        ++v935;
        --v932;
      }

      while (v932);
      goto LABEL_787;
    }

    if (v2747 == 1)
    {
      v902 = v621;
    }

    else
    {
      v902 = v2747;
    }

    if (v902 >= 1)
    {
      v903 = v778;
      v904 = v2746 != 1;
      v905 = 4 * v2746 * (v2747 != 1);
      v906 = v2935;
      v907 = v2795;
      v908 = &v2790;
      v909 = v902;
      do
      {
        v541.i32[0] = *v907;
        _Q1.i64[0] = *v908;
        _Q1.f32[2] = v908[2];
        v541.i32[1] = *&v907[4 * v904];
        v541.i32[2] = *&v907[8 * v904];
        v541 = vsubq_f32(_Q1, v541);
        *(v906 + 2) = v541.i32[2];
        *v906 = v541.i64[0];
        v906 = (v906 + 12);
        v907 += v905;
        v908 += 3 * (v621 != 1);
        v909 = (v909 - 1);
      }

      while (v909);
      if (v902 < 8)
      {
        v910 = 0;
        v585 = v2724;
        v778 = v903;
        goto LABEL_772;
      }

      v910 = (v902 & 0x7FFFFFF8);
      v914 = &v2790;
      v915 = v2935;
      v916 = v910;
      v778 = v903;
      do
      {
        v541 = *v915;
        _Q1 = v915[1];
        v433 = v915[2];
        v436 = v915[3];
        v365 = v915[4];
        v366 = v915[5];
        *v914 = *v915;
        *(v914 + 1) = _Q1;
        *(v914 + 4) = v365;
        *(v914 + 5) = v366;
        *(v914 + 2) = v433;
        *(v914 + 3) = v436;
        v914 += 24;
        v915 += 6;
        --v916;
      }

      while (v916);
      v585 = v2724;
      if (v910 != v902)
      {
LABEL_772:
        v917 = (v902 - v910);
        v918 = 12 * v910;
        v919 = &v2790 + 3 * v910;
        v920 = (v2935 + v918);
        do
        {
          v921 = *v920;
          v919[2] = v920[2];
          *v919 = v921;
          v919 += 3;
          v920 += 3;
          --v917;
        }

        while (v917);
      }

      if (v902 < 4)
      {
        v922 = 0;
        goto LABEL_779;
      }

      v922 = (v902 & 0x7FFFFFFC);
      v923 = &v2790;
      v924 = v922;
      do
      {
        v433 = vmulq_f32(v923[2], v923[2]);
        _Q1 = vmulq_f32(v923[1], v923[1]);
        v541 = vmulq_f32(*v923, *v923);
        *v923 = v541;
        v923[1] = _Q1;
        v923[2] = v433;
        v923 += 3;
        v924 = (v924 - 4);
      }

      while (v924);
      if (v922 != v902)
      {
LABEL_779:
        v925 = (v902 - v922);
        v926 = &v2790 + 3 * v922;
        do
        {
          v541.i64[0] = *v926;
          v541.f32[2] = v926[2];
          v541 = vmulq_f32(v541, v541);
          v926[2] = v541.f32[2];
          *v926 = v541.i64[0];
          v926 += 3;
          --v925;
        }

        while (v925);
      }
    }

    v621 = v902;
LABEL_787:
    if (v621 >= 1)
    {
      if (v621 < 8)
      {
        v937 = 0;
        goto LABEL_793;
      }

      v937 = v621 & 0x7FFFFFF8;
      v938 = &v2790;
      v939 = v2771;
      v940 = v937;
      do
      {
        v941 = v938;
        v938 += 24;
        v2941 = vld3q_f32(v941);
        v941 += 12;
        v541 = vaddq_f32(vaddq_f32(v2941.val[1], v2941.val[0]), v2941.val[2]);
        *(&v433 - 1) = vld3q_f32(v941);
        v365 = vaddq_f32(v433, v2941.val[1]);
        _Q1 = vaddq_f32(v365, v436);
        v939[-1] = v541;
        *v939 = _Q1;
        v939 += 2;
        v940 -= 8;
      }

      while (v940);
      if (v937 != v621)
      {
LABEL_793:
        v942 = v621 - v937;
        v943 = &v2770[v937];
        v944 = &v2792[3 * v937];
        do
        {
          v945 = *(v944 - 1) + *(v944 - 2);
          v946 = *v944;
          v944 += 3;
          *v943++ = v945 + v946;
          --v942;
        }

        while (v942);
      }
    }

    if (v585 != 3 || v777 != v776)
    {
      if (v776 == 1)
      {
        v950 = v777;
      }

      else
      {
        v950 = v776;
      }

      if (v950 < 1)
      {
        goto LABEL_816;
      }

      v951 = v2935;
      v952 = v2779;
      v953 = v2783;
      v954 = v950;
      do
      {
        v541.i32[0] = *v952;
        _Q1.i64[0] = *v953;
        _Q1.i32[2] = *(v953 + 2);
        v541.i32[1] = v952[v585 != 1];
        v541.i32[2] = v952[2 * (v585 != 1)];
        v541 = vsubq_f32(_Q1, v541);
        *(v951 + 2) = v541.i32[2];
        *v951 = v541.i64[0];
        v951 = (v951 + 12);
        v952 += v585 * (v776 != 1);
        v953 += 12 * (v777 != 1);
        --v954;
      }

      while (v954);
      if (v950 >= 4)
      {
        v955 = v950 & 0x7FFFFFFC;
        v956 = &v2790;
        v957 = v2935;
        v958 = v955;
        do
        {
          v960 = v957[1];
          v959 = v957[2];
          v961 = *v957;
          v957 += 3;
          v433 = vmulq_f32(v961, v961);
          _Q1 = vmulq_f32(v960, v960);
          v541 = vmulq_f32(v959, v959);
          *(v956 + 1) = _Q1;
          *(v956 + 2) = v541;
          *v956 = v433;
          v956 += 12;
          v958 -= 4;
        }

        while (v958);
        if (v955 == v950)
        {
          goto LABEL_816;
        }
      }

      else
      {
        v955 = 0;
      }

      v962 = v950 - v955;
      v963 = 12 * v955;
      v964 = &v2790 + 3 * v955;
      v965 = v2935 + v963;
      do
      {
        v541.i64[0] = *v965;
        v541.i32[2] = *(v965 + 2);
        v541 = vmulq_f32(v541, v541);
        v964[2] = v541.f32[2];
        *v964 = v541.i64[0];
        v964 += 3;
        v965 += 12;
        --v962;
      }

      while (v962);
LABEL_816:
      v776 = v950;
      goto LABEL_822;
    }

    if (v778)
    {
      v947 = 3 * v776;
      if ((3 * v776) <= 1)
      {
        v948 = 1;
      }

      else
      {
        v948 = v947;
      }

      if (v947 < 8)
      {
        v949 = 0;
        goto LABEL_820;
      }

      v949 = v948 & 0x7FFFFFF8;
      v966 = &v2785;
      v967 = &v2780;
      v968 = v2793;
      v969 = v949;
      do
      {
        v433 = v967[-1];
        v436 = *v967;
        v970 = vsubq_f32(v966[-1], v433);
        v971 = vsubq_f32(*v966, *v967);
        v541 = vmulq_f32(v970, v970);
        _Q1 = vmulq_f32(v971, v971);
        v968[-1] = v541;
        *v968 = _Q1;
        v968 += 2;
        v967 += 2;
        v966 += 2;
        v969 -= 8;
      }

      while (v969);
      if (v949 != v948)
      {
LABEL_820:
        v972 = v948 - v949;
        v973 = 4 * v949;
        v974 = &v2790 + v949;
        v975 = &v2779[v973];
        v976 = &v2783[v973];
        do
        {
          v977 = *v976++;
          v978 = v977;
          v979 = *v975++;
          *v974++ = (v978 - v979) * (v978 - v979);
          --v972;
        }

        while (v972);
      }
    }

LABEL_822:
    if (v776 >= 1)
    {
      if (v776 < 8)
      {
        v980 = 0;
        goto LABEL_828;
      }

      v980 = v776 & 0x7FFFFFF8;
      v981 = &v2790;
      v982 = v2774;
      v983 = v980;
      do
      {
        v984 = v981;
        v981 += 24;
        v2942 = vld3q_f32(v984);
        v984 += 12;
        v541 = vaddq_f32(vaddq_f32(v2942.val[1], v2942.val[0]), v2942.val[2]);
        *(&v433 - 1) = vld3q_f32(v984);
        v365 = vaddq_f32(v433, v2942.val[1]);
        _Q1 = vaddq_f32(v365, v436);
        v982[-1] = v541;
        *v982 = _Q1;
        v982 += 2;
        v983 -= 8;
      }

      while (v983);
      if (v980 != v776)
      {
LABEL_828:
        v985 = v776 - v980;
        v986 = &v2773[4 * v980 - 4];
        v987 = &v2792[3 * v980];
        do
        {
          v988 = *(v987 - 1) + *(v987 - 2);
          v989 = *v987;
          v987 += 3;
          *v986++ = v988 + v989;
          --v985;
        }

        while (v985);
      }
    }

    if (v621 != v776)
    {
      if (v776 == 1)
      {
        v991 = v621;
      }

      else
      {
        v991 = v776;
      }

      if (v991 < 1)
      {
LABEL_900:
        v621 = v991;
        if (v991 >= 1)
        {
          goto LABEL_846;
        }

LABEL_901:
        v1033 = 0;
        goto LABEL_902;
      }

      if (v621 == 1)
      {
        v541.f32[0] = v2770[0];
        if (v776 == 1)
        {
          *v2935 = v2772 + v2770[0];
        }

        else
        {
          if (v776 > 7)
          {
            v1034 = v776 & 0x7FFFFFF8;
            v1046 = vdupq_lane_s32(*v541.f32, 0);
            v1047 = v2774;
            v1048 = &v2935[1];
            v1049 = v1034;
            do
            {
              v1050 = vaddq_f32(*v1047, v1046);
              v1048[-1] = vaddq_f32(v1047[-1], v1046);
              *v1048 = v1050;
              v1048 += 2;
              v1047 += 2;
              v1049 -= 8;
            }

            while (v1049);
            if (v1034 == v776)
            {
              goto LABEL_899;
            }
          }

          else
          {
            v1034 = 0;
          }

          v1051 = v776 - v1034;
          v1052 = 4 * v1034;
          v1053 = v2935 + v1034;
          v1054 = &v2773[v1052 - 4];
          do
          {
            v1055 = *v1054++;
            *v1053++ = v1055 + v541.f32[0];
            --v1051;
          }

          while (v1051);
        }
      }

      else if (v776 == 1)
      {
        v541.f32[0] = v2772;
        if (v621 >= 8)
        {
          v1012 = v621 & 0x7FFFFFF8;
          v1036 = vdupq_lane_s32(*v541.f32, 0);
          v1037 = v2771;
          v1038 = &v2935[1];
          v1039 = v1012;
          do
          {
            v1040 = vaddq_f32(*v1037, v1036);
            v1038[-1] = vaddq_f32(v1037[-1], v1036);
            *v1038 = v1040;
            v1038 += 2;
            v1037 += 2;
            v1039 -= 8;
          }

          while (v1039);
          if (v1012 == v621)
          {
            goto LABEL_899;
          }
        }

        else
        {
          v1012 = 0;
        }

        v1041 = v621 - v1012;
        v1042 = v1012;
        v1043 = v2935 + v1012;
        v1044 = &v2770[v1042];
        do
        {
          v1045 = *v1044++;
          *v1043++ = v1045 + v541.f32[0];
          --v1041;
        }

        while (v1041);
      }

      else
      {
        if (v776 > 7)
        {
          v1035 = v776 & 0x7FFFFFF8;
          v1056 = v2771;
          v1057 = v2774;
          v1058 = &v2935[1];
          v1059 = v1035;
          do
          {
            v1060 = vaddq_f32(*v1057, *v1056);
            v1058[-1] = vaddq_f32(v1057[-1], v1056[-1]);
            *v1058 = v1060;
            v1058 += 2;
            v1057 += 2;
            v1056 += 2;
            v1059 -= 8;
          }

          while (v1059);
          if (v1035 == v776)
          {
            goto LABEL_899;
          }
        }

        else
        {
          v1035 = 0;
        }

        v1061 = v776 - v1035;
        v1062 = v1035;
        v1063 = v2935 + v1035;
        v1064 = &v2773[v1062 * 4 - 4];
        v1065 = &v2770[v1062];
        do
        {
          v1066 = *v1065++;
          v1067 = v1066;
          v1068 = *v1064++;
          *v1063++ = v1068 + v1067;
          --v1061;
        }

        while (v1061);
      }

LABEL_899:
      memcpy(v2770, v2935, 4 * v991);
      v373 = v2715;
      v586.i64[0] = 0x101010101010101;
      v586.i64[1] = 0x101010101010101;
      v383 = 629145600;
      goto LABEL_900;
    }

    if (v621 < 1)
    {
      goto LABEL_901;
    }

    if (v621 < 8)
    {
      v990 = 0;
      goto LABEL_844;
    }

    v990 = v621 & 0x7FFFFFF8;
    v992 = v2774;
    v993 = v2771;
    v994 = v990;
    do
    {
      v433 = v993[-1];
      v436 = *v993;
      v541 = vaddq_f32(v433, v992[-1]);
      v995 = vaddq_f32(*v993, *v992);
      v993[-1] = v541;
      *v993 = v995;
      v993 += 2;
      v992 += 2;
      v994 -= 8;
    }

    while (v994);
    if (v990 != v621)
    {
LABEL_844:
      v996 = v621 - v990;
      v997 = 4 * v990;
      v998 = &v2770[v990];
      v999 = &v2773[v997 - 4];
      do
      {
        v1000 = *v999++;
        *v998 = *v998 + v1000;
        ++v998;
        --v996;
      }

      while (v996);
    }

LABEL_846:
    if (v621 <= 7)
    {
      v1001 = 0;
      goto LABEL_851;
    }

    v1001 = v621 & 0x7FFFFFF8;
    v1002 = v2771;
    v1003 = v2767;
    v1004 = v1001;
    do
    {
      v541 = vabsq_f32(v1002[-1]);
      v1005 = vabsq_f32(*v1002);
      v1003[-1] = v541;
      *v1003 = v1005;
      v1003 += 2;
      v1002 += 2;
      v1004 -= 8;
    }

    while (v1004);
    if (v1001 != v621)
    {
LABEL_851:
      v1006 = v621 - v1001;
      v1007 = v1001;
      v1008 = &v2766[4 * v1001 - 4];
      v1009 = &v2770[v1007];
      do
      {
        v1010 = *v1009++;
        *v1008++ = fabsf(v1010);
        --v1006;
      }

      while (v1006);
    }

    if (v621 <= 3)
    {
      v1011 = 0;
      _Q1 = v2621;
      goto LABEL_867;
    }

    if (v621 >= 0x20)
    {
      v1011 = v621 & 0x7FFFFFE0;
      v1013 = v2769;
      v1014 = v2743;
      v1015 = v1011;
      do
      {
        v1017 = v1013[-2];
        v1016 = v1013[-1];
        v1018 = v1013[-4];
        v1019 = v1013[-3];
        v366 = v1013[2];
        v365 = v1013[3];
        v1020 = *v1013;
        v367 = v1013[1];
        v1013 += 8;
        v541 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v2614, v1018), vcgtq_f32(v2614, v1019)), vuzp1q_s16(vcgtq_f32(v2614, v1017), vcgtq_f32(v2614, v1016))), v586);
        v436 = vcgtq_f32(v2614, v365);
        v433 = vuzp1q_s16(vcgtq_f32(v2614, v366), v436);
        v1014[-1] = v541;
        *v1014 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v2614, v1020), vcgtq_f32(v2614, v367)), v433), v586);
        v1014 += 2;
        v1015 -= 32;
      }

      while (v1015);
      _Q1 = v2621;
      if (v1011 != v621)
      {
        if ((v621 & 0x1C) == 0)
        {
          goto LABEL_867;
        }

        goto LABEL_864;
      }
    }

    else
    {
      v1011 = 0;
LABEL_864:
      v1021 = v1011;
      v1011 = v621 & 0x7FFFFFFC;
      v1022 = v1021 - v1011;
      v1023 = &v2742[v1021 + 9];
      v1024 = &v2766[4 * v1021 - 4];
      do
      {
        v1025 = *v1024++;
        v541 = vcgtq_f32(v2614, v1025);
        *v541.f32 = vand_s8(vmovn_s32(v541), 0x1000100010001);
        *v1023++ = vuzp1_s8(*v541.f32, *v541.f32).u32[0];
        v1022 += 4;
      }

      while (v1022);
      _Q1 = v2621;
      if (v1011 != v621)
      {
LABEL_867:
        v1026 = v621 - v1011;
        v1027 = &v2742[v1011 + 9];
        v1028 = &v2766[4 * v1011 - 4];
        do
        {
          v1029 = *v1028++;
          *v1027++ = v1029 < _Q1.f32[0];
          --v1026;
        }

        while (v1026);
      }
    }

    v1030 = 0;
    v1031 = 0;
    while (2)
    {
      if (!v2742[v1030 + 9])
      {
        ++v1030;
        goto LABEL_871;
      }

      __src[v1031++] = v1030 + 1;
      if (v1031 < v621)
      {
        ++v1030;
LABEL_871:
        if (v1030 >= v621)
        {
          break;
        }

        continue;
      }

      break;
    }

    if (v621 == 1)
    {
      v1032 = v2639;
      v1033 = v1031 != 0;
      goto LABEL_903;
    }

    v1033 = v1031 & ~(v1031 >> 31);
LABEL_902:
    v1032 = v2639;
LABEL_903:
    if (v1033 > v2636)
    {
      memcpy(v2753, __src, 4 * v1033);
      if (v2661 * v2661 >= 1)
      {
        memcpy(v2754, &v2762, 4 * (v2661 * v2661));
      }

      v2620 = 1;
      v2636 = v1033;
      v2617 = v1033;
      v2619 = v2661;
      v2618 = v2661;
      v2635 = -4.60517019 / log(fmax(v7 - v1033 * v2616 * (v1033 * v2616) * (v1033 * v2616 * (v1033 * v2616)), 2.22044605e-16));
      v373 = v2715;
      v1032 = v2639;
      v383 = 629145600;
    }

    v375 = v2718;
    v382 = 1.0;
    if (v1032 <= 0x3E7)
    {
      v381 = v1032 + 1;
      if (v2635 > v381)
      {
        continue;
      }
    }

    break;
  }

  v1626 = (v2618 * v2619);
  if (v1626 < 1)
  {
    v1630 = 0;
    v1627 = v2620;
    v1631 = 0;
    if (v2618)
    {
      v1629 = v2617;
      if (v2619)
      {
        goto LABEL_1349;
      }
    }
  }

  else
  {
    v1627 = v2620;
    if (v1626 <= 3)
    {
      v1628 = 0;
      v1629 = v2617;
      goto LABEL_1328;
    }

    v1628 = v1626 & 0x7FFFFFFC;
    v1632 = v2742;
    v1633 = v2754;
    v1634 = v1628;
    do
    {
      v1635 = *v1633++;
      _Q1 = vmvnq_s8(vceqq_f32(v1635, v1635));
      *v1632++ = vuzp1_s8(vand_s8(vmovn_s32(_Q1), 0x1000100010001), 0x1000100010001).u32[0];
      v1634 -= 4;
    }

    while (v1634);
    v1629 = v2617;
    if (v1628 != v1626)
    {
LABEL_1328:
      v1636 = v1626 - v1628;
      v1637 = &v2742[v1628];
      v1638 = &v2754[v1628];
      do
      {
        ++v1638;
        *v1637++ = 0;
        --v1636;
      }

      while (v1636);
    }

    if (v1626 > 7)
    {
      v1640 = v1626 & 0x7FFFFFF8;
      v1641 = (&v2741 + 6);
      v1642 = v2742;
      do
      {
        v1643 = *v1642++;
        *v1641++ = vand_s8(vceqz_s8(v1643), 0x101010101010101);
        v1640 -= 8;
      }

      while (v1640);
      if (v1626 != 8)
      {
        v1639 = 8;
        goto LABEL_1336;
      }
    }

    else
    {
      v1639 = 0;
LABEL_1336:
      v1644 = v1626 - v1639;
      v1645 = v2742 + v1639 + 5;
      v1646 = &v2742[v1639];
      do
      {
        v1647 = *v1646++;
        *v1645++ = v1647 == 0;
        --v1644;
      }

      while (v1644);
    }

    v1630 = 0;
    v1631 = 0;
    if (v2618 && v2619)
    {
      v1648 = 0;
      v1649 = 1;
      do
      {
        v1650 = *(v2742 + v1648 + 5);
        if (*(v2742 + v1648 + 5))
        {
          ++v1648;
        }

        else
        {
          v1649 = 0;
        }

        if (v1650)
        {
          v1651 = v1648 < v1626;
        }

        else
        {
          v1651 = 0;
        }
      }

      while (v1651);
      if (v1649)
      {
LABEL_1349:
        if ((v1627 * v1629) >= 1)
        {
          memcpy(v2752, v2753, 4 * v1627 * v1629);
        }

        v1630 = v1629;
        v1631 = v1627;
      }

      else
      {
        v1630 = 0;
        v1631 = 0;
      }
    }
  }

  v1652 = v1631 * v1630;
  v1653 = 3 * v1652;
  if (v1652 >= 1)
  {
    v1654 = v2784;
    v1655 = v2752;
    v1656 = v1652;
    do
    {
      v1657 = *v1655++;
      v1658 = *&v2789[12 * v1657 - 8];
      *(v1654 - 2) = *&v2789[12 * v1657 - 12];
      *(v1654 - 1) = v1658;
      *v1654 = *&v2789[12 * v1657 - 4];
      v1654 += 3;
      --v1656;
    }

    while (v1656);
    v1659 = v2792;
    v1660 = v2752;
    v1661 = v1652;
    do
    {
      v1662 = *v1660++;
      v1663 = *&v2788[12 * v1662 - 8];
      *(v1659 - 2) = *&v2788[12 * v1662 - 12];
      *(v1659 - 1) = v1663;
      *v1659 = *&v2788[12 * v1662 - 4];
      v1659 += 3;
      --v1661;
    }

    while (v1661);
    if (v1652 < 4)
    {
      v1664 = 0;
      goto LABEL_1363;
    }

    v1664 = v1652 & 0x7FFFFFFC;
    v1665 = &v2790;
    v1666 = v2833;
    __asm { FMOV            V0.4S, #1.0 }

    v1668 = v1664;
    do
    {
      *_Q1.f32 = vld3q_f32(v1665);
      v1665 += 12;
      v1670 = vdivq_f32(_Q0, v1669);
      v2947.val[0] = vmulq_f32(_Q1, v1670);
      v2947.val[1] = vmulq_f32(v1671, v1670);
      v2947.val[2] = vmulq_f32(v1669, v1670);
      vst3q_f32(v1666, v2947);
      v1666 += 12;
      v1668 -= 4;
    }

    while (v1668);
    if (v1664 != v1652)
    {
LABEL_1363:
      v1672 = v1652 - v1664;
      v1673 = 12 * v1664;
      v1674 = &v2833[12 * v1664];
      v1675 = &v2790 + v1673;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        _Q1.i64[0] = *v1675;
        _Q1.i32[2] = *(v1675 + 2);
        _Q1 = vmulq_f32(_Q1, vdivq_f32(_Q0, vdupq_laneq_s32(_Q1, 2)));
        *(v1674 + 2) = _Q1.i32[2];
        *v1674 = _Q1.i64[0];
        v1674 += 12;
        v1675 += 12;
        --v1672;
      }

      while (v1672);
    }

    memcpy(&v2790, v2833, 4 * (3 * v1652));
    if (v1652 < 4)
    {
      v1678 = 0;
      goto LABEL_1370;
    }

    v1678 = v1652 & 0x7FFFFFFC;
    v1679 = v2783;
    v1680 = v2833;
    __asm { FMOV            V0.4S, #1.0 }

    v1682 = v1678;
    do
    {
      *v1677.f32 = vld3q_f32(v1679);
      v1679 += 12;
      v1684 = vdivq_f32(_Q0, v1683);
      v2948.val[0] = vmulq_f32(v1677, v1684);
      v2948.val[1] = vmulq_f32(v1685, v1684);
      v2948.val[2] = vmulq_f32(v1683, v1684);
      vst3q_f32(v1680, v2948);
      v1680 += 12;
      v1682 -= 4;
    }

    while (v1682);
    if (v1678 != v1652)
    {
LABEL_1370:
      v1686 = v1652 - v1678;
      v1687 = 12 * v1678;
      v1688 = &v2833[12 * v1678];
      v1689 = &v2783[v1687];
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v1677.i64[0] = *v1689;
        v1677.i32[2] = *(v1689 + 2);
        v1677 = vmulq_f32(v1677, vdivq_f32(_Q0, vdupq_laneq_s32(v1677, 2)));
        *(v1688 + 2) = v1677.i32[2];
        *v1688 = v1677.i64[0];
        v1688 += 12;
        v1689 += 12;
        --v1686;
      }

      while (v1686);
    }

    memcpy(v2783, v2833, 4 * (3 * v1652));
  }

  v1691 = (2 * v1652);
  if (!v1652)
  {
    v1694 = 0;
    v1695 = 0;
    v1696 = 0;
    v1697 = 0;
    v2660 = 0;
    LODWORD(v1698) = 0;
    v541.i64[0] = 0x97FC00000;
    v433.i32[0] = 2143289344;
    v2815 = 0x900000000;
    v2814 = 0x300000000;
    v2716 = v541;
    *&v2727 = NAN;
    v2719 = v433;
    *&v2739 = NAN;
    goto LABEL_1638;
  }

  v1692 = v2790;
  if (v1652 <= 1)
  {
    v541.f32[0] = v1652;
    v587.f32[0] = v2790 / v1652;
    v1693 = v2791;
    goto LABEL_1394;
  }

  v1699 = (v1652 + 1);
  v1700 = v1699 - 2;
  if ((v1699 - 2) <= 1)
  {
    v1701 = 2;
    goto LABEL_1383;
  }

  v1702 = v1700 & 0xFFFFFFFFFFFFFFFELL;
  v1703 = 0.0;
  v1704 = 0x300000000;
  v1705 = 0x600000000;
  v1706 = v1700 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v1692 = *(&v2790 + (v1704 >> 30)) + v1692;
    v1703 = *(&v2790 + (v1705 >> 30)) + v1703;
    v1705 += 0x600000000;
    v1704 += 0x600000000;
    v1706 -= 2;
  }

  while (v1706);
  v1701 = v1702 + 2;
  v1692 = v1703 + v1692;
  if (v1700 == v1702)
  {
    v541.f32[0] = v1652;
    v1693 = v2791;
LABEL_1388:
    v1709 = 0x700000000;
    v436.i64[0] = 0;
    v1710 = 0x400000000;
    v1711 = v1702;
    do
    {
      v1693 = *(&v2790 + (v1710 >> 30)) + v1693;
      v436.f32[0] = *(&v2790 + (v1709 >> 30)) + v436.f32[0];
      v1709 += 0x600000000;
      v1710 += 0x600000000;
      v1711 -= 2;
    }

    while (v1711);
    v1693 = v436.f32[0] + v1693;
    if (v1700 != v1702)
    {
      goto LABEL_1391;
    }
  }

  else
  {
LABEL_1383:
    v1707 = v1699 - v1701;
    v1708 = 0x300000000 * v1701 - 0x300000000;
    do
    {
      v1692 = *(&v2790 + (v1708 >> 30)) + v1692;
      v1708 += 0x300000000;
      --v1707;
    }

    while (v1707);
    v541.f32[0] = v1652;
    v1693 = v2791;
    if (v1700 >= 2)
    {
      v1702 = v1700 & 0xFFFFFFFFFFFFFFFELL;
      v1701 = (v1700 & 0xFFFFFFFFFFFFFFFELL) + 2;
      goto LABEL_1388;
    }

    v1701 = 2;
LABEL_1391:
    v1712 = v1699 - v1701;
    v1713 = 0x300000000 * v1701 - 0x200000000;
    do
    {
      v1693 = *(&v2790 + (v1713 >> 30)) + v1693;
      v1713 += 0x300000000;
      --v1712;
    }

    while (v1712);
  }

  v587.f32[0] = v1692 / v541.f32[0];
LABEL_1394:
  v368.f32[0] = v1693 / v541.f32[0];
  if (v1652 < 1)
  {
    v367.i32[0] = 2143289344;
    v369.i32[0] = 2143289344;
  }

  else
  {
    if (v1652 > 8)
    {
      v1715 = v1652 & 7;
      if ((v1652 & 7) == 0)
      {
        v1715 = 8;
      }

      v1714 = v1652 - v1715;
      v1716 = vdupq_lane_s32(*v587.f32, 0);
      v1717 = v2822;
      v1718 = &v2790;
      v1719 = v1714;
      do
      {
        v1720 = v1718;
        v1718 += 24;
        v1721 = vld3q_f32(v1720);
        v1720 += 12;
        v433 = vsubq_f32(v1721, v1716);
        v1722 = vld3q_f32(v1720);
        v436 = vsubq_f32(v1722, v1716);
        v1717[-1] = v433;
        *v1717 = v436;
        v1717 += 2;
        v1719 -= 8;
      }

      while (v1719);
    }

    else
    {
      v1714 = 0;
    }

    v1723 = v1652 - v1714;
    v1724 = &v2821[4 * v1714 + 432];
    v1725 = &v2790 + 3 * v1714;
    do
    {
      v1726 = *v1725;
      v1725 += 3;
      *v1724++ = v1726 - v587.f32[0];
      --v1723;
    }

    while (v1723);
    if (v1652 > 8)
    {
      v1728 = v1652 & 7;
      if ((v1652 & 7) == 0)
      {
        v1728 = 8;
      }

      v1729 = vdupq_lane_s32(*v368.f32, 0);
      v1727 = v1652 - v1728;
      v1730 = v2821;
      v1731 = &v2794;
      v1732 = v1727;
      do
      {
        v1733 = v1731 - 12;
        v1734 = vld3q_f32(v1733);
        *(&v367 - 2) = vld3q_f32(v1731);
        v433 = vsubq_f32(v1734, v1729);
        v436 = vsubq_f32(v1735, v1729);
        v1730[-1] = v433;
        *v1730 = v436;
        v1730 += 2;
        v1731 += 24;
        v1732 -= 8;
      }

      while (v1732);
    }

    else
    {
      v1727 = 0;
    }

    v1736 = v1652 - v1727;
    v1737 = &v2820[4 * v1727 + 376];
    v1738 = &v2790 + 3 * v1727 + 1;
    do
    {
      v1739 = *v1738;
      v1738 += 3;
      *v1737++ = v1739 - v368.f32[0];
      --v1736;
    }

    while (v1736);
    if (v1652 < 8)
    {
      v1740 = 0;
      goto LABEL_1417;
    }

    v1740 = v1652 & 0x7FFFFFF8;
    v1741 = v2817;
    v1742 = v2822;
    v1743 = v1740;
    do
    {
      v433 = vabsq_f32(*v1742);
      v1741[-1] = vabsq_f32(v1742[-1]);
      *v1741 = v433;
      v1741 += 2;
      v1742 += 2;
      v1743 -= 8;
    }

    while (v1743);
    if (v1740 != v1652)
    {
LABEL_1417:
      v1744 = v1652 - v1740;
      v1745 = 4 * v1740;
      v1746 = &v2816[v1740];
      v1747 = &v2821[v1745 + 432];
      do
      {
        v1748 = *v1747++;
        *v1746++ = fabsf(v1748);
        --v1744;
      }

      while (v1744);
    }

    v1749 = *v2816;
    if (v1652 >= 2)
    {
      v1750 = (v1652 + 1);
      v1751 = v1750 - 2;
      if ((v1750 - 2) >= 8)
      {
        v1753 = v1751 & 0xFFFFFFFFFFFFFFF8;
        v433 = 0uLL;
        v436 = v2816[0];
        v1754 = v2818;
        v1755 = v1751 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v436 = vaddq_f32(v1754[-1], v436);
          v433 = vaddq_f32(*v1754, v433);
          v1754 += 2;
          v1755 -= 8;
        }

        while (v1755);
        v1756 = vaddq_f32(v433, v436);
        v1749 = vaddv_f32(*&vpaddq_f32(v1756, v1756));
        if (v1751 != v1753)
        {
          v1752 = v1753 | 2;
          goto LABEL_1426;
        }
      }

      else
      {
        v1752 = 2;
LABEL_1426:
        v1757 = v1750 - v1752;
        v1758 = &v2816[v1752 - 1];
        do
        {
          v1759 = *v1758++;
          v1749 = v1759 + v1749;
          --v1757;
        }

        while (v1757);
      }
    }

    if (v1652 < 8)
    {
      v1760 = 0;
      goto LABEL_1433;
    }

    v1760 = v1652 & 0x7FFFFFF8;
    v1761 = v2817;
    v1762 = v2821;
    v1763 = v1760;
    do
    {
      v433 = vabsq_f32(v1762[-1]);
      v436 = vabsq_f32(*v1762);
      v1761[-1] = v433;
      *v1761 = v436;
      v1761 += 2;
      v1762 += 2;
      v1763 -= 8;
    }

    while (v1763);
    if (v1760 != v1652)
    {
LABEL_1433:
      v1764 = v1652 - v1760;
      v1765 = 4 * v1760;
      v1766 = &v2816[v1760];
      v1767 = &v2820[v1765 + 376];
      do
      {
        v1768 = *v1767++;
        *v1766++ = fabsf(v1768);
        --v1764;
      }

      while (v1764);
    }

    v433.i32[0] = v2816[0];
    if (v1652 >= 2)
    {
      v1769 = (v1652 + 1);
      v1770 = v1769 - 2;
      if ((v1769 - 2) >= 8)
      {
        v1772 = v1770 & 0xFFFFFFFFFFFFFFF8;
        v436 = 0uLL;
        v1773 = v2816[0];
        v1774 = v2818;
        v1775 = v1770 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v1773 = vaddq_f32(v1774[-1], v1773);
          v436 = vaddq_f32(*v1774, v436);
          v1774 += 2;
          v1775 -= 8;
        }

        while (v1775);
        v433 = vaddq_f32(v436, v1773);
        v433.i64[0] = vpaddq_f32(v433, v433).u64[0];
        v433.f32[0] = vaddv_f32(*v433.f32);
        if (v1770 != v1772)
        {
          v1771 = v1772 | 2;
          goto LABEL_1442;
        }
      }

      else
      {
        v1771 = 2;
LABEL_1442:
        v1776 = v1769 - v1771;
        v1777 = &v2816[v1771 - 1];
        do
        {
          v1778 = *v1777++;
          v433.f32[0] = v1778 + v433.f32[0];
          --v1776;
        }

        while (v1776);
      }
    }

    v369.f32[0] = v1749 / v541.f32[0];
    v1779 = v587;
    v1779.i32[1] = v368.i32[0];
    *v1779.f32 = vneg_f32(*v1779.f32);
    v367.f32[0] = v433.f32[0] / v541.f32[0];
    if (v1652 <= 3)
    {
      v1780 = 0;
      goto LABEL_1449;
    }

    v436.f32[0] = 1.0 / v369.f32[0];
    v541 = vdupq_lane_s32(*v436.f32, 0);
    v433.f32[0] = 1.0 / v367.f32[0];
    v1781 = vdupq_lane_s32(*v433.f32, 0);
    v1782 = vdupq_lane_s32(*&vmulq_f32(v1779, v436), 0);
    v1780 = v1652 & 0x7FFFFFFC;
    v1783 = vmulq_lane_f32(v1781, *v1779.f32, 1);
    v1784 = &v2826;
    v1785 = &v2790;
    v1786 = v1780;
    do
    {
      v2952 = vld3q_f32(v1785);
      v1785 += 12;
      v1787 = vmulq_f32(v2952.val[1], 0);
      v2956.val[0] = vmlaq_f32(vmlaq_f32(v1787, v541, v2952.val[0]), v1782, v2952.val[2]);
      v1788 = vmulq_f32(v2952.val[0], 0);
      v1789 = vaddq_f32(v1787, v1788);
      v2956.val[1] = vmlaq_f32(vmlaq_f32(v1788, v1781, v2952.val[1]), v1783, v2952.val[2]);
      v2956.val[2] = vaddq_f32(v1789, v2952.val[2]);
      vst3q_f32(v1784, v2956);
      v1784 += 12;
      v1786 -= 4;
    }

    while (v1786);
    if (v1780 != v1652)
    {
LABEL_1449:
      __asm { FMOV            V2.2S, #1.0 }

      *v541.f32 = vdiv_f32(_D2, __PAIR64__(v367.u32[0], v369.u32[0]));
      v1791 = vmul_f32(*v1779.f32, *v541.f32);
      v1792 = v1652 - v1780;
      v1793 = 12 * v1780 + 8;
      v1794 = (&v2826 + v1793);
      v1795 = (&v2790 + v1793);
      do
      {
        v1796 = *v1795;
        v1797 = *(v1795 - 2);
        v1798 = vmul_f32(v1797, 0);
        *(v1794 - 1) = vmla_n_f32(vmla_f32(vrev64_s32(v1798), *v541.f32, v1797), v1791, *v1795);
        *v1794 = vaddv_f32(v1798) + v1796;
        v1794 += 3;
        v1795 += 3;
        --v1792;
      }

      while (v1792);
    }
  }

  v2716 = v369;
  v2719 = v367;
  v2815 = v1691 | 0x900000000;
  v2739 = v587.i32[0];
  v2727 = v368.i32[0];
  if (18 * v1652 > 0)
  {
    bzero(v2926, 8 * (18 * v1652));
  }

  v2814 = v1652 | 0x300000000;
  if (v1652 < 1)
  {
    v1800 = v1691;
    if (v1691 <= 0)
    {
      goto LABEL_1626;
    }

LABEL_1457:
    v1694 = 0;
    v1801 = 1;
    v1802 = 2 * v1652;
LABEL_1628:
    v2072 = 0;
    v2073 = 0;
    LODWORD(v1698) = 9 * v1802;
    if (9 * v1802 <= 1)
    {
      v1698 = 1;
    }

    else
    {
      v1698 = v1698;
    }

    v2660 = v1801;
    do
    {
      while ((v2073 & 1) == 0 && (*(v2926 + v2072) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v2073 = 0;
        if (++v2072 == v1698)
        {
          v1697 = v1800;
          goto LABEL_1637;
        }
      }

      ++v2072;
      v2073 = 1;
    }

    while (v2072 != v1698);
    v2093 = v1800;
    LODWORD(v2741) = v1698;
    LODWORD(v2930) = v1802;
    HIDWORD(v2930) = 9;
    if (v1802)
    {
      bzero(v2933, 72 * v1802);
    }

    coder::internal::b_svd(v2933, &v2930, v2935, &v2927, v2931, &v2741, &v2928, v621, v541.f32[0]);
    v2814 = v2927;
    v2094 = (HIDWORD(v2927) * v2927);
    v2087 = *&rtNaN;
    v2089 = *&v2739;
    v2090 = *&v2727;
    v2091 = v2719;
    v2092 = v2716;
    if (v2094 >= 1)
    {
      if (v2094 <= 3)
      {
        v2095 = 0;
LABEL_1647:
        v2099 = v2094 - v2095;
        v2100 = &v2919[v2095];
        do
        {
          *v2100++ = v2087;
          --v2099;
        }

        while (v2099);
        goto LABEL_1649;
      }

      v2095 = v2094 & 0x7FFFFFFC;
      v2096 = vdupq_lane_s64(rtNaN, 0);
      v2097 = v2920;
      v2098 = v2095;
      do
      {
        v2097[-1] = v2096;
        *v2097 = v2096;
        v2097 += 2;
        v2098 -= 4;
      }

      while (v2098);
      if (v2095 != v2094)
      {
        goto LABEL_1647;
      }
    }

LABEL_1649:
    v2101 = LODWORD(v2741);
    v2088 = v2093;
    if (SLODWORD(v2741) >= 1)
    {
      if (LODWORD(v2741) > 3)
      {
        v2102 = LODWORD(v2741) & 0x7FFFFFFC;
        v2103 = vdupq_lane_s64(*&v2087, 0);
        v2104 = &v2932;
        v2105 = v2102;
        do
        {
          v2104[-1] = v2103;
          *v2104 = v2103;
          v2104 += 2;
          v2105 -= 4;
        }

        while (v2105);
        if (v2102 == v2101)
        {
          goto LABEL_1657;
        }
      }

      else
      {
        v2102 = 0;
      }

      v2106 = v2101 - v2102;
      v2107 = &v2931[v2102];
      do
      {
        *v2107++ = v2087;
        --v2106;
      }

      while (v2106);
    }

LABEL_1657:
    *v2898 = v2087;
    *&v2898[1] = v2087;
    *&v2898[2] = v2087;
    *&v2898[3] = v2087;
    *&v2898[4] = v2087;
    *&v2898[5] = v2087;
    *&v2898[6] = v2087;
    *&v2898[7] = v2087;
    *&v2898[8] = v2087;
    *&v2898[9] = v2087;
    *&v2898[10] = v2087;
    *&v2898[11] = v2087;
    *&v2898[12] = v2087;
    *&v2898[13] = v2087;
    *&v2898[14] = v2087;
    *&v2898[15] = v2087;
    *&v2898[16] = v2087;
    *&v2898[17] = v2087;
    *&v2898[18] = v2087;
    *&v2898[19] = v2087;
    *&v2898[20] = v2087;
    *&v2898[21] = v2087;
    *&v2898[22] = v2087;
    *&v2898[23] = v2087;
    *&v2898[24] = v2087;
    *&v2898[25] = v2087;
    *&v2898[26] = v2087;
    *&v2898[27] = v2087;
    *&v2898[28] = v2087;
    *&v2898[29] = v2087;
    *&v2898[30] = v2087;
    *&v2898[31] = v2087;
    *&v2898[32] = v2087;
    *&v2898[33] = v2087;
    *&v2898[34] = v2087;
    *&v2898[35] = v2087;
    *&v2898[36] = v2087;
    *&v2898[37] = v2087;
    *&v2898[38] = v2087;
    *&v2898[39] = v2087;
    *&v2898[40] = v2087;
    *&v2898[41] = v2087;
    *&v2898[42] = v2087;
    *&v2898[43] = v2087;
    *&v2898[44] = v2087;
    *&v2898[45] = v2087;
    *&v2898[46] = v2087;
    *&v2898[47] = v2087;
    *&v2898[48] = v2087;
    *&v2898[49] = v2087;
    *&v2898[50] = v2087;
    *&v2898[51] = v2087;
    *&v2898[52] = v2087;
    *&v2898[53] = v2087;
    *&v2898[54] = v2087;
    *&v2898[55] = v2087;
    *&v2898[56] = v2087;
    *&v2898[57] = v2087;
    *&v2898[58] = v2087;
    *&v2898[59] = v2087;
    *&v2898[60] = v2087;
    *&v2898[61] = v2087;
    *&v2898[62] = v2087;
    *&v2898[63] = v2087;
    *&v2898[64] = v2087;
    *&v2898[65] = v2087;
    *&v2898[66] = v2087;
    *&v2898[67] = v2087;
    *&v2898[68] = v2087;
    *&v2898[69] = v2087;
    *&v2898[70] = v2087;
    *&v2898[71] = v2087;
    *&v2898[72] = v2087;
    *&v2898[73] = v2087;
    *&v2898[74] = v2087;
    *&v2898[75] = v2087;
    v1695 = v1652;
    *&v2898[76] = v2087;
    v1696 = 2 * v1652;
    v2086 = v2087;
    *&v2898[77] = v2087;
    *&v2085 = v2087;
    v2084 = v2087;
    *&v2898[78] = v2087;
    v2083 = v2087;
    v2082 = v2087;
    *&v2898[79] = v2087;
    *v2081.i64 = v2087;
    *v2080.i64 = v2087;
    v2079 = v2087;
    *&v2898[80] = v2087;
    goto LABEL_1658;
  }

  if (v1652 >= 9)
  {
    v1803 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1803 = 8;
    }

    v1799 = v1652 - v1803;
    v1804 = &v2833[16];
    v1805 = v2783;
    v1806 = v1799;
    do
    {
      v1807 = v1805 + 24;
      v1809 = vld3q_f32(v1805);
      v1808 = v1805 + 12;
      v1810 = vld3q_f32(v1808);
      *(v1804 - 1) = v1809;
      *v1804 = v1810;
      v1804 += 2;
      v1805 = v1807;
      v1806 -= 8;
    }

    while (v1806);
  }

  else
  {
    v1799 = 0;
  }

  v1811 = v1652 - v1799;
  v1812 = &v2833[4 * v1799];
  v1813 = &v2783[12 * v1799];
  do
  {
    v1814 = *v1813;
    v1813 += 3;
    *v1812++ = v1814;
    --v1811;
  }

  while (v1811);
  if (v1652 >= 9)
  {
    v1816 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1816 = 8;
    }

    v1815 = v1652 - v1816;
    v1817 = &v2833[4 * v1652 + 16];
    v1818 = &v2786;
    v1819 = v1815;
    do
    {
      v1820 = v1818 - 12;
      v1821 = vld3q_f32(v1820);
      v1822 = vld3q_f32(v1818);
      *(v1817 - 1) = v1821;
      *v1817 = v1822;
      v1817 += 2;
      v1818 += 24;
      v1819 -= 8;
    }

    while (v1819);
  }

  else
  {
    v1815 = 0;
  }

  v1823 = v1652 - v1815;
  v1824 = &v2833[4 * v1815 + 4 * v1652];
  v1825 = &v2783[12 * v1815 + 4];
  do
  {
    v1826 = *v1825;
    v1825 += 3;
    *v1824++ = v1826;
    --v1823;
  }

  while (v1823);
  if (v1652 >= 9)
  {
    v1828 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1828 = 8;
    }

    v1827 = v1652 - v1828;
    v1829 = &v2833[8 * v1652 + 16];
    v1830 = v2787;
    v1831 = v1827;
    do
    {
      v1832 = v1830 - 12;
      v1833 = vld3q_f32(v1832);
      v1834 = vld3q_f32(v1830);
      *(v1829 - 1) = v1833;
      *v1829 = v1834;
      v1829 += 2;
      v1830 += 24;
      v1831 -= 8;
    }

    while (v1831);
  }

  else
  {
    v1827 = 0;
  }

  v1835 = v1652 - v1827;
  v1836 = 8 * v1652;
  v1837 = &v2833[8 * v1652 + 4 * v1827];
  v1838 = &v2783[12 * v1827 + 8];
  do
  {
    v1839 = *v1838;
    v1838 += 3;
    *v1837++ = v1839;
    --v1835;
  }

  while (v1835);
  if (v1653 <= 1)
  {
    v1840 = 1;
  }

  else
  {
    v1840 = v1653;
  }

  if (v1653 <= 7)
  {
    v1841 = 0;
    goto LABEL_1488;
  }

  v1841 = v1840 & 0x7FFFFFF8;
  v1842 = (v2902 + 4);
  v1843 = &v2833[16];
  v1844 = v1841;
  do
  {
    v1845 = *v1843[-2].f32;
    v1846 = vcvtq_f64_f32(*v1843);
    v1847 = vcvt_hight_f64_f32(*v1843->f32);
    v1842[-2] = vcvtq_f64_f32(*v1845.f32);
    v1842[-1] = vcvt_hight_f64_f32(v1845);
    *v1842 = v1846;
    v1842[1] = v1847;
    v1842 += 4;
    v1843 += 4;
    v1844 -= 8;
  }

  while (v1844);
  if (v1841 != v1840)
  {
LABEL_1488:
    v1848 = v1840 - v1841;
    v1849 = &v2899 + v1841;
    v1850 = &v2833[4 * v1841];
    do
    {
      v1851 = *v1850++;
      *v1849++ = v1851;
      --v1848;
    }

    while (v1848);
  }

  v1852 = v1691 > 0;
  if (v1652 == 1)
  {
    v1853 = 0;
    goto LABEL_1495;
  }

  v1854 = 0;
  v1853 = v1652 & 0x7FFFFFFE;
  v1855 = &v2899 + 1;
  v1856 = v1853;
  do
  {
    v1857 = *v1855;
    *(v2926 + (v1854 << v1852)) = *(v1855 - 1);
    *(v2926 + ((v1854 + 1) << v1852)) = v1857;
    v1855 += 2;
    v1854 += 2;
    v1856 -= 2;
  }

  while (v1856);
  for (; v1652 != v1853; ++v1853)
  {
LABEL_1495:
    *(v2926 + (v1853 << v1852)) = *(&v2899 + v1853);
  }

  v1800 = v1691;
  if (v1652 == 1)
  {
    v1858 = 0;
    goto LABEL_1501;
  }

  v1859 = 0;
  v1858 = v1652 & 0x7FFFFFFE;
  v1860 = &v2899 + v1652 + 1;
  v1861 = v1858;
  do
  {
    v1862 = *v1860;
    *(v2926 + v1691 + (v1859 << v1852)) = *(v1860 - 1);
    *(v2926 + v1691 + ((v1859 + 1) << v1852)) = v1862;
    v1860 += 2;
    v1859 += 2;
    v1861 -= 2;
  }

  while (v1861);
  for (; v1652 != v1858; ++v1858)
  {
LABEL_1501:
    *(v2926 + v1691 + (v1858 << v1852)) = *(&v2899 + v1652 + v1858);
  }

  v1863 = v1691;
  if (v1652 == 1)
  {
    v1864 = 0;
    goto LABEL_1507;
  }

  v1865 = 0;
  v1864 = v1652 & 0x7FFFFFFE;
  v1866 = &v2899 + 2 * v1652 + 1;
  v1867 = v1864;
  do
  {
    v1868 = *v1866;
    *(&v2926[v1863] + (v1865 << v1852)) = *(v1866 - 1);
    *(&v2926[v1863] + ((v1865 + 1) << v1852)) = v1868;
    v1866 += 2;
    v1865 += 2;
    v1867 -= 2;
  }

  while (v1867);
  for (; v1652 != v1864; ++v1864)
  {
LABEL_1507:
    *(&v2926[v1863] + (v1864 << v1852)) = *(&v2899 + 2 * v1652 + v1864);
  }

  v1869 = v1691 > 1;
  v1870 = (6 * v1652) | v1869;
  if (v1652 == 1)
  {
    v1871 = 0;
    goto LABEL_1513;
  }

  v1872 = 0;
  v1871 = v1652 & 0x7FFFFFFE;
  v1873 = &v2899 + 1;
  v1874 = v1871;
  do
  {
    v1875 = *v1873;
    *(v2926 + (v1872 << v1869) + v1870) = *(v1873 - 1);
    *(v2926 + ((v1872 + 1) << v1869) + v1870) = v1875;
    v1873 += 2;
    v1872 += 2;
    v1874 -= 2;
  }

  while (v1874);
  for (; v1652 != v1871; ++v1871)
  {
LABEL_1513:
    *(v2926 + (v1871 << v1869) + v1870) = *(&v2899 + v1871);
  }

  v1876 = v1869 | (8 * v1652);
  if (v1652 == 1)
  {
    v1877 = 0;
    goto LABEL_1519;
  }

  v1878 = 0;
  v1877 = v1652 & 0x7FFFFFFE;
  v1879 = &v2899 + v1652 + 1;
  v1880 = v1877;
  do
  {
    v1881 = *v1879;
    *(v2926 + (v1878 << v1869) + v1876) = *(v1879 - 1);
    *(v2926 + ((v1878 + 1) << v1869) + v1876) = v1881;
    v1879 += 2;
    v1878 += 2;
    v1880 -= 2;
  }

  while (v1880);
  for (; v1652 != v1877; ++v1877)
  {
LABEL_1519:
    *(v2926 + (v1877 << v1869) + v1876) = *(&v2899 + v1652 + v1877);
  }

  v1882 = (10 * v1652) | v1869;
  if (v1652 == 1)
  {
    v1883 = 0;
    goto LABEL_1525;
  }

  v1884 = 0;
  v1883 = v1652 & 0x7FFFFFFE;
  v1885 = &v2899 + 2 * v1652 + 1;
  v1886 = v1883;
  do
  {
    v1887 = *v1885;
    *(v2926 + (v1884 << v1869) + v1882) = *(v1885 - 1);
    *(v2926 + ((v1884 + 1) << v1869) + v1882) = v1887;
    v1885 += 2;
    v1884 += 2;
    v1886 -= 2;
  }

  while (v1886);
  for (; v1652 != v1883; ++v1883)
  {
LABEL_1525:
    *(v2926 + (v1883 << v1869) + v1882) = *(&v2899 + 2 * v1652 + v1883);
  }

  if (v1652 >= 9)
  {
    v1889 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1889 = 8;
    }

    v1888 = v1652 - v1889;
    v1890 = (&v2837 + 4);
    v1891 = &v2826;
    v1892 = v1888;
    do
    {
      v1893 = v1891 + 24;
      v1895 = vld3q_f32(v1891);
      v1894 = v1891 + 12;
      v1896 = vld3q_f32(v1894);
      *(v1890 - 1) = v1895;
      *v1890 = v1896;
      v1890 += 2;
      v1891 = v1893;
      v1892 -= 8;
    }

    while (v1892);
  }

  else
  {
    v1888 = 0;
  }

  v1897 = v1652 - v1888;
  v1898 = &v2835 + v1888;
  v1899 = &v2826 + 3 * v1888;
  do
  {
    v1900 = *v1899;
    v1899 += 3;
    *v1898++ = v1900;
    --v1897;
  }

  while (v1897);
  if (v1652 >= 9)
  {
    v1902 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1902 = 8;
    }

    v1901 = v1652 - v1902;
    v1903 = (&v2837 + 4 * v1652 + 4);
    v1904 = &v2826;
    v1905 = v1901;
    do
    {
      v1906 = v1904 + 24;
      v1908 = vld3q_f32(v1904);
      v1907 = v1904 + 12;
      v1909 = vld3q_f32(v1907);
      *(v1903 - 1) = v1908;
      *v1903 = v1909;
      v1903 += 2;
      v1904 = v1906;
      v1905 -= 8;
    }

    while (v1905);
  }

  else
  {
    v1901 = 0;
  }

  v1910 = v1652 - v1901;
  v1911 = &v2835 + v1901 + v1652;
  v1912 = &v2826 + 3 * v1901;
  do
  {
    v1913 = *v1912;
    v1912 += 3;
    *v1911++ = v1913;
    --v1910;
  }

  while (v1910);
  if (v1652 >= 9)
  {
    v1915 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1915 = 8;
    }

    v1914 = v1652 - v1915;
    v1916 = (&v2837 + 8 * v1652 + 4);
    v1917 = &v2826;
    v1918 = v1914;
    do
    {
      v1919 = v1917 + 24;
      v1921 = vld3q_f32(v1917);
      v1920 = v1917 + 12;
      v1922 = vld3q_f32(v1920);
      *(v1916 - 1) = v1921;
      *v1916 = v1922;
      v1916 += 2;
      v1917 = v1919;
      v1918 -= 8;
    }

    while (v1918);
  }

  else
  {
    v1914 = 0;
  }

  v1923 = v1652 - v1914;
  v1924 = (&v2835 + 4 * v1914 + v1836);
  v1925 = &v2826 + 3 * v1914;
  do
  {
    v1926 = *v1925;
    v1925 += 3;
    *v1924++ = v1926;
    --v1923;
  }

  while (v1923);
  v1927 = 3 * v1691;
  if (v1652 == 1)
  {
    v1928 = 0;
    goto LABEL_1555;
  }

  v1929 = 0;
  v1928 = v1652 & 0x7FFFFFFE;
  v1930 = &v2833[4];
  v1931 = &v2836;
  v1932 = v1928;
  do
  {
    v1933 = -(*v1931 * *v1930);
    *(&v2926[v1927] + (v1929 << v1852)) = -(*(v1931 - 1) * *(v1930 - 1));
    *(&v2926[v1927] + ((v1929 + 1) << v1852)) = v1933;
    v1930 += 2;
    v1931 += 2;
    v1929 += 2;
    v1932 -= 2;
  }

  while (v1932);
  for (; v1652 != v1928; ++v1928)
  {
LABEL_1555:
    *(&v2926[v1927] + (v1928 << v1852)) = -(*(&v2835 + v1928) * *&v2833[4 * v1928]);
  }

  v1934 = 4 * v1691;
  v1935 = 7 * v1691;
  v1936 = 4 * v1652;
  if (v1652 == 1)
  {
    v1937 = 0;
    goto LABEL_1561;
  }

  v1938 = 0;
  v1937 = v1652 & 0x7FFFFFFE;
  v1939 = &v2833[v1936 + 4];
  v1940 = (&v2835 + v1936 + 4);
  do
  {
    v1941 = -(*v1940 * *v1939);
    *(v2926 + v1935 + (v1938 << v1852)) = -(*(v1940 - 1) * *(v1939 - 1));
    *(v2926 + v1935 + ((v1938 + 1) << v1852)) = v1941;
    v1938 += 2;
    v1939 += 2;
    v1940 += 2;
  }

  while (v1937 != v1938);
  for (; v1652 != v1937; ++v1937)
  {
LABEL_1561:
    *(v2926 + v1935 + (v1937 << v1852)) = -(*(&v2835 + 4 * v1937 + v1936) * *&v2833[4 * v1937 + v1936]);
  }

  if (v1652 == 1)
  {
    v1942 = 0;
    goto LABEL_1567;
  }

  v1943 = 0;
  v1942 = v1652 & 0x7FFFFFFE;
  v1944 = (8 * v1652) | 4;
  v1945 = &v2833[v1944];
  v1946 = (&v2835 + v1944);
  do
  {
    v1947 = -(*v1946 * *v1945);
    *(&v2926[v1934] + (v1943 << v1852)) = -(*(v1946 - 1) * *(v1945 - 1));
    *(&v2926[v1934] + ((v1943 + 1) << v1852)) = v1947;
    v1943 += 2;
    v1945 += 2;
    v1946 += 2;
  }

  while (v1942 != v1943);
  for (; v1652 != v1942; ++v1942)
  {
LABEL_1567:
    *(&v2926[v1934] + (v1942 << v1852)) = -(*(&v2835 + 4 * v1942 + v1836) * *&v2833[4 * v1942 + v1836]);
  }

  if (v1652 >= 9)
  {
    v1949 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1949 = 8;
    }

    v1948 = v1652 - v1949;
    v1950 = (&v2837 + 4);
    v1951 = v2832;
    v1952 = v1948;
    do
    {
      v1953 = v1951 - 12;
      v1954 = vld3q_f32(v1953);
      v1955 = vld3q_f32(v1951);
      *(v1950 - 1) = v1954;
      *v1950 = v1955;
      v1950 += 2;
      v1951 += 24;
      v1952 -= 8;
    }

    while (v1952);
  }

  else
  {
    v1948 = 0;
  }

  v1956 = v1652 - v1948;
  v1957 = &v2835 + v1948;
  v1958 = &v2826 + 3 * v1948 + 1;
  do
  {
    v1959 = *v1958;
    v1958 += 3;
    *v1957++ = v1959;
    --v1956;
  }

  while (v1956);
  if (v1652 >= 9)
  {
    v1961 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1961 = 8;
    }

    v1960 = v1652 - v1961;
    v1962 = (&v2837 + 4 * v1652 + 4);
    v1963 = v2832;
    v1964 = v1960;
    do
    {
      v1965 = v1963 - 12;
      v1966 = vld3q_f32(v1965);
      v1967 = vld3q_f32(v1963);
      *(v1962 - 1) = v1966;
      *v1962 = v1967;
      v1962 += 2;
      v1963 += 24;
      v1964 -= 8;
    }

    while (v1964);
  }

  else
  {
    v1960 = 0;
  }

  v1968 = v1652 - v1960;
  v1969 = &v2835 + v1960 + v1652;
  v1970 = &v2826 + 3 * v1960 + 1;
  do
  {
    v1971 = *v1970;
    v1970 += 3;
    *v1969++ = v1971;
    --v1968;
  }

  while (v1968);
  if (v1652 >= 9)
  {
    v1973 = v1652 & 7;
    if ((v1652 & 7) == 0)
    {
      v1973 = 8;
    }

    v1972 = v1652 - v1973;
    v1974 = (&v2837 + 8 * v1652 + 4);
    v1975 = v2832;
    v1976 = v1972;
    do
    {
      v1977 = v1975 - 12;
      v1978 = vld3q_f32(v1977);
      v1979 = vld3q_f32(v1975);
      *(v1974 - 1) = v1978;
      *v1974 = v1979;
      v1974 += 2;
      v1975 += 24;
      v1976 -= 8;
    }

    while (v1976);
  }

  else
  {
    v1972 = 0;
  }

  v1980 = v1652 - v1972;
  v1981 = (&v2835 + 4 * v1972 + v1836);
  v1982 = &v2826 + 3 * v1972 + 1;
  do
  {
    v1983 = *v1982;
    v1982 += 3;
    *v1981++ = v1983;
    --v1980;
  }

  while (v1980);
  v1984 = (v1927 * 2) | v1869;
  if (v1652 == 1)
  {
    v1985 = 0;
    goto LABEL_1597;
  }

  v1986 = 0;
  v1985 = v1652 & 0x7FFFFFFE;
  v1987 = &v2833[4];
  v1988 = &v2836;
  v1989 = v1985;
  do
  {
    v1990 = -(*v1988 * *v1987);
    *(v2926 + (v1986 << v1869) + v1984) = -(*(v1988 - 1) * *(v1987 - 1));
    *(v2926 + ((v1986 + 1) << v1869) + v1984) = v1990;
    v1987 += 2;
    v1988 += 2;
    v1986 += 2;
    v1989 -= 2;
  }

  while (v1989);
  for (; v1652 != v1985; ++v1985)
  {
LABEL_1597:
    *(v2926 + (v1985 << v1869) + v1984) = -(*(&v2835 + v1985) * *&v2833[4 * v1985]);
  }

  v1991 = v1935 | v1869;
  if (v1652 == 1)
  {
    v1992 = 0;
    goto LABEL_1603;
  }

  v1993 = 0;
  v1992 = v1652 & 0x7FFFFFFE;
  v1994 = &v2833[v1936 + 4];
  v1995 = (&v2835 + v1936 + 4);
  do
  {
    v1996 = -(*v1995 * *v1994);
    *(v2926 + (v1993 << v1869) + v1991) = -(*(v1995 - 1) * *(v1994 - 1));
    *(v2926 + ((v1993 + 1) << v1869) + v1991) = v1996;
    v1993 += 2;
    v1994 += 2;
    v1995 += 2;
  }

  while (v1992 != v1993);
  if (v1992 != v1652)
  {
LABEL_1603:
    v1997 = &v2833[v1936];
    v1998 = &v2835 + v1936;
    do
    {
      *(v2926 + (v1992 << v1869) + v1991) = -(*&v1998[4 * v1992] * *&v1997[4 * v1992]);
      ++v1992;
    }

    while (v1652 != v1992);
  }

  v1999 = (v1934 * 2) | v1869;
  if (v1652 == 1)
  {
    v2000 = 0;
    goto LABEL_1610;
  }

  v2001 = 0;
  v2000 = v1652 & 0x7FFFFFFE;
  v2002 = (8 * v1652) | 4;
  v2003 = &v2833[v2002];
  v2004 = (&v2835 + v2002);
  do
  {
    *v541.i64 = -(*(v2004 - 1) * *(v2003 - 1));
    v2005 = -(*v2004 * *v2003);
    *(v2926 + (v2001 << v1869) + v1999) = v541.i64[0];
    *(v2926 + ((v2001 + 1) << v1869) + v1999) = v2005;
    v2001 += 2;
    v2003 += 2;
    v2004 += 2;
  }

  while (v2000 != v2001);
  if (v2000 != v1652)
  {
LABEL_1610:
    v2006 = &v2833[v1836];
    v2007 = &v2835 + v1836;
    do
    {
      *v541.i64 = -(*&v2007[4 * v2000] * *&v2006[4 * v2000]);
      *(v2926 + (v2000++ << v1869) + v1999) = v541.i64[0];
    }

    while (v1652 != v2000);
  }

  if (v1652 >= 5)
  {
    v1801 = v1691 > 0;
    v2008 = 0;
    v2009 = 0;
    v2010 = 8 * (2 * v1652);
    while (2)
    {
      v2011 = 9 * v2009;
      v2012 = &v2898[9 * v2009];
      v2012[8] = 0;
      *(v2012 + 2) = 0uLL;
      *(v2012 + 3) = 0uLL;
      v2013 = v2008;
      *v2012 = 0uLL;
      *(v2012 + 1) = 0uLL;
      if (v1691 < 1)
      {
        goto LABEL_1615;
      }

      v2014 = 8 * v2008;
      v2015 = v2011 + 1;
      v2016 = v2011 + 2;
      v2017 = v2011 + 3;
      v2018 = v2011 + 4;
      v2019 = v2011 + 5;
      v2020 = v2011 + 6;
      v2021 = v2011 + 7;
      v2022 = *&v2898[v2011 + 1];
      v2023 = *&v2898[v2011 + 2];
      v2024 = *&v2898[v2011 + 3];
      v2025 = *&v2898[v2011 + 4];
      v2026 = *&v2898[v2011 + 5];
      v2027 = *&v2898[v2011 + 6];
      v2028 = v2011 + 8;
      v2029 = *&v2898[v2021];
      v2030 = *&v2898[v2028];
      if (v1691 <= 3)
      {
        v2031 = 0;
        v2032 = 0.0;
        goto LABEL_1622;
      }

      v2033 = v2898[v2028];
      v2034 = v2898[v2021];
      v2035 = *&v2027;
      v2036 = *&v2026;
      v2037 = *&v2025;
      v2038 = *&v2024;
      v2039 = *&v2023;
      v2040 = *&v2022;
      v2041 = 0uLL;
      v2042 = v2926;
      v2043 = v1691 & 0xFFFFFFFC;
      v2044 = 0uLL;
      v2045 = 0uLL;
      v2046 = 0uLL;
      v2047 = 0uLL;
      v2048 = 0uLL;
      v2049 = 0uLL;
      v2050 = 0uLL;
      v2051 = 0uLL;
      v2052 = 0uLL;
      do
      {
        v2053 = *(v2042 + v2014);
        v2054 = *(v2042 + v2014 + 16);
        v2051 = vmlaq_f64(v2051, v2053, *v2042);
        v2052 = vmlaq_f64(v2052, v2054, v2042[1]);
        v2040 = vmlaq_f64(v2040, v2053, *(v2042 + 8 * (2 * v1652)));
        v2050 = vmlaq_f64(v2050, v2054, *(v2042 + v2010 + 16));
        v2055 = (v2042 + v2010 + v2010);
        v2039 = vmlaq_f64(v2039, v2053, *v2055);
        v2049 = vmlaq_f64(v2049, v2054, v2055[1]);
        v2056 = (v2055 + v2010);
        v2038 = vmlaq_f64(v2038, v2053, *v2056);
        v2048 = vmlaq_f64(v2048, v2054, v2056[1]);
        v2057 = (v2056 + v2010);
        v2037 = vmlaq_f64(v2037, v2053, *v2057);
        v2047 = vmlaq_f64(v2047, v2054, v2057[1]);
        v2058 = (v2057 + v2010);
        v2036 = vmlaq_f64(v2036, v2053, *v2058);
        v2046 = vmlaq_f64(v2046, v2054, v2058[1]);
        v2059 = (v2058 + v2010);
        v2035 = vmlaq_f64(v2035, v2053, *v2059);
        v2045 = vmlaq_f64(v2045, v2054, v2059[1]);
        v2060 = (v2059 + v2010);
        v2034 = vmlaq_f64(v2034, v2053, *v2060);
        v2044 = vmlaq_f64(v2044, v2054, v2060[1]);
        v2061 = (v2060 + v2010);
        v2033 = vmlaq_f64(v2033, v2053, *v2061);
        v2041 = vmlaq_f64(v2041, v2054, v2061[1]);
        v2042 += 2;
        v2043 -= 4;
      }

      while (v2043);
      v2030 = vaddvq_f64(vaddq_f64(v2041, v2033));
      v2029 = vaddvq_f64(vaddq_f64(v2044, v2034));
      v2027 = vaddvq_f64(vaddq_f64(v2045, v2035));
      v2026 = vaddvq_f64(vaddq_f64(v2046, v2036));
      v2025 = vaddvq_f64(vaddq_f64(v2047, v2037));
      v2024 = vaddvq_f64(vaddq_f64(v2048, v2038));
      v2023 = vaddvq_f64(vaddq_f64(v2049, v2039));
      v2022 = vaddvq_f64(vaddq_f64(v2050, v2040));
      v2032 = vaddvq_f64(vaddq_f64(v2052, v2051));
      v2031 = v1691 & 0xFFFFFFFC;
      if (v2031 != v1691)
      {
LABEL_1622:
        v2062 = -v2014;
        v2063 = v1691 - v2031;
        v2064 = v2926 + v2031 + v2013;
        do
        {
          v2032 = v2032 + *(v2064 + v2062) * *v2064;
          v2065 = (v2064 + v2062 + v2010);
          v2022 = v2022 + *v2065 * *v2064;
          v2066 = &v2065[v2010 / 8];
          v2023 = v2023 + *v2066 * *v2064;
          v2067 = &v2066[v2010 / 8];
          v2024 = v2024 + *v2067 * *v2064;
          v2068 = &v2067[v2010 / 8];
          v2025 = v2025 + *v2068 * *v2064;
          v2069 = &v2068[v2010 / 8];
          v2026 = v2026 + *v2069 * *v2064;
          v2070 = &v2069[v2010 / 8];
          v2027 = v2027 + *v2070 * *v2064;
          v2071 = &v2070[v2010 / 8];
          v2029 = v2029 + *v2071 * *v2064;
          v2030 = v2030 + v2071[(2 * v1652)] * *v2064++;
          --v2063;
        }

        while (v2063);
      }

      *&v2898[v2015] = v2022;
      *&v2898[v2016] = v2023;
      *&v2898[v2017] = v2024;
      *&v2898[v2018] = v2025;
      *&v2898[v2019] = v2026;
      *&v2898[v2020] = v2027;
      *v2012 = v2032;
      *&v2898[v2021] = v2029;
      *&v2898[v2028] = v2030;
LABEL_1615:
      ++v2009;
      v2008 = v2013 + v1691;
      if (v2009 == 9)
      {
        v2815 = 0x900000009;
        memcpy(v2926, v2898, 0x288uLL);
        v1802 = 9;
        v1694 = 1;
        v1800 = v1691;
        goto LABEL_1628;
      }

      continue;
    }
  }

  if (v1691 >= 1)
  {
    goto LABEL_1457;
  }

LABEL_1626:
  v1697 = v1800;
  v1694 = 0;
  v2660 = 0;
  LODWORD(v1698) = 0;
LABEL_1637:
  v1695 = v1652;
  v1696 = 2 * v1652;
LABEL_1638:
  LODWORD(v2741) = v1698;
  coder::internal::b_svd(v2926, &v2815, v2919, &v2814, v2931, &v2741, v2898, v621, v541.f32[0]);
  v2079 = *&v2898[80];
  v2080.i64[0] = v2898[72];
  v2081.i64[0] = v2898[73];
  v2082 = *&v2898[74];
  v2083 = *&v2898[75];
  v2084 = *&v2898[76];
  *&v2085 = v2898[77];
  v2086 = *&v2898[78];
  v2087 = *&v2898[79];
  v2088 = v1697;
  v2089 = *&v2739;
  v2090 = *&v2727;
  v2091 = v2719;
  v2092 = v2716;
LABEL_1658:
  *&v2074 = 1.0 / v2079;
  *v2081.i64 = *v2081.i64 * (1.0 / v2079);
  v2121 = v2084 * (1.0 / v2079);
  *&v2085 = *&v2085 * (1.0 / v2079);
  v2112 = v2087 * (1.0 / v2079);
  v2108 = *v2080.i64 * (1.0 / v2079);
  v2109 = v2083 * (1.0 / v2079);
  v2110 = v2086 * (1.0 / v2079);
  *&v2075 = ((v2109 * 0.0) + (v2092.f32[0] * v2108)) + (v2089 * v2110);
  *v2081.i32 = *v2081.i64;
  *&v2121 = v2121;
  v2111 = *&v2121 * 0.0;
  *&v2112 = v2112;
  v2113 = ((*&v2121 * 0.0) + (v2092.f32[0] * *v2081.i32)) + (v2089 * *&v2112);
  v2114 = v2082 * (1.0 / v2079);
  *&v2085 = *&v2085;
  v2115 = *&v2085 * 0.0;
  v2116 = v2079 * (1.0 / v2079);
  v2117 = ((*&v2085 * 0.0) + (v2089 * v2116)) + (v2092.f32[0] * v2114);
  v2118 = v2108 * 0.0;
  v2119 = (v2118 + (v2091.f32[0] * v2109)) + (v2090 * v2110);
  v2120 = ((*v2081.i32 * 0.0) + (v2091.f32[0] * *&v2121)) + (v2090 * *&v2112);
  *&v2121 = v2114 * 0.0;
  v2122 = ((v2114 * 0.0) + (v2090 * v2116)) + (v2091.f32[0] * *&v2085);
  v2123 = ((v2109 * 0.0) + v2118) + v2110;
  v2124 = (v2111 + (*v2081.i32 * 0.0)) + *&v2112;
  v2125 = ((v2114 * 0.0) + v2116) + (*&v2085 * 0.0);
  if (!v1694)
  {
    v2521 = (*&v2121 + v2116) + v2115;
    *&v2076 = ((v2114 * 0.0) + (v2090 * v2116)) + (v2091.f32[0] * *&v2085);
    *&v2078 = ((*&v2085 * 0.0) + (v2089 * v2116)) + (v2092.f32[0] * v2114);
    *&v2077 = v2124;
    *v2080.i32 = v2120;
    *&v2074 = v2113;
    v2091.f32[0] = v2123;
    v2092.f32[0] = v2119;
    v2522 = v2607;
    goto LABEL_1942;
  }

  v2126 = 0;
  if (3 * v1652 <= 1)
  {
    v2127 = 1;
  }

  else
  {
    v2127 = (3 * v1652);
  }

  v2655 = 2 * v2088;
  v2653 = 6 * v2088;
  v2651 = 7 * v2088;
  v2128 = 14 * v1652;
  v2129 = v1695 - 1;
  v2130 = v1695 & 3;
  if ((v1695 & 3) == 0)
  {
    v2130 = 4;
  }

  v2689 = v1695 - v2130;
  v2131 = v1695 & 7;
  if ((v1695 & 7) == 0)
  {
    v2131 = 8;
  }

  v2685 = (v1695 - v2131);
  v2132 = v1695 < 2;
  v2668 = (6 * v1652) | 1;
  v2133 = v2668 + 2 * v2129 <= 6 * v1652;
  v2134 = (((8 * v1652) | 1) + 2 * v2129) <= 8 * v1652;
  v2135 = (((10 * v1652) | 1) + 2 * v2129) <= 10 * v1652;
  v2666 = (12 * v1652) | 1;
  v2136 = v2666 + 2 * v2129 <= 12 * v1652;
  v2669 = v2128 | 1;
  v2137 = (v2128 | 1) + 2 * v2129 <= v2128;
  if ((v2129 & 0xFFFFFFFF80000000) != 0)
  {
    v2133 = 1;
    v2134 = 1;
    v2135 = 1;
    v2136 = 1;
    v2137 = 1;
  }

  v2717 = v1695 - 1073741825;
  v2650 = v2132 || v2133;
  v2648 = v2132 || v2134;
  v2646 = v2132 || v2135;
  v2645 = v2132 || v2136;
  v2644 = v2132 || v2137;
  v2628 = &v2913 + 8 * v2088;
  v2138 = (&v2899 + v1695);
  v2627 = &v2913.i64[6 * v2088];
  v2626 = &v2913.i64[7 * v2088];
  *&v2112 = (*&v2121 + v2116) + v2115;
  *&v2077 = v2124;
  v2091.f32[0] = ((v2109 * 0.0) + v2118) + v2110;
  *&v2076 = v2122;
  *v2081.i32 = v2120;
  v2092.f32[0] = v2119;
  *&v2078 = v2117;
  v2622 = v2113;
  *&v2074 = v2113;
  v2623 = *&v2075;
  v2694 = 3 * v1652;
  v2683 = (v1695 & 0xFFFFFFFC);
  v2714 = v1695 & 0x7FFFFFFE;
  v2712 = v1695 & 0xFFFFFFFE;
  v2705 = v2127;
  v2681 = v2127 & 0x7FFFFFF8;
  v2139 = 8 * v1696;
  v2625 = &v2913.f32[4 * v2088];
  v2659 = v2088;
  while (2)
  {
    *v2699 = v2074;
    v2671 = v2126;
    if (v1695 <= 3)
    {
      v2140 = 0;
      goto LABEL_1675;
    }

    v2141 = vdupq_lane_s32(*&v2074, 0);
    v2142 = vdupq_lane_s32(*&v2078, 0);
    v2143 = vdupq_lane_s32(*v2081.i8, 0);
    v2144 = vdupq_lane_s32(*&v2076, 0);
    v2145 = vdupq_lane_s32(*&v2077, 0);
    v2146 = &v2826;
    v2147 = v2783;
    v2148 = v1695 & 0xFFFFFFFC;
    v2149 = vdupq_lane_s32(*&v2112, 0);
    do
    {
      v2953 = vld3q_f32(v2147);
      v2147 += 12;
      v2957.val[0] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2953.val[0], *&v2075), v2141, v2953.val[1]), v2142, v2953.val[2]);
      v2957.val[1] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2953.val[0], v2092.f32[0]), v2143, v2953.val[1]), v2144, v2953.val[2]);
      v2957.val[2] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v2953.val[0], v2091.f32[0]), v2145, v2953.val[1]), v2149, v2953.val[2]);
      vst3q_f32(v2146, v2957);
      v2146 += 12;
      v2148 -= 4;
    }

    while (v2148);
    v2140 = v1695 & 0xFFFFFFFC;
    LODWORD(v2074) = v2699[0];
    if (v1695 != v2683)
    {
LABEL_1675:
      v2150 = v1695 - v2140;
      v2151 = 12 * v2140;
      v2152 = &v2784[3 * v2140];
      v2153 = (&v2827 + v2151 + 4);
      do
      {
        v2154 = *(v2152 - 2);
        v2155 = *(v2152 - 1);
        v2156 = *v2152;
        v2152 += 3;
        *(v2153 - 2) = ((v2154 * *&v2075) + (v2155 * *&v2074)) + (v2156 * *&v2078);
        *(v2153 - 1) = ((v2154 * v2092.f32[0]) + (v2155 * *v2081.i32)) + (v2156 * *&v2076);
        *v2153 = ((v2154 * v2091.f32[0]) + (v2155 * *&v2077)) + (v2156 * *&v2112);
        v2153 += 3;
        --v2150;
      }

      while (v2150);
    }

    v2720 = v2075;
    v2728 = v2092;
    v2740 = v2091;
    v2673 = v2081;
    v2675 = v2078;
    v2677 = v2077;
    v2679 = v2076;
    bzero(&v2912, 128 * v1652);
    if (v1695 >= 5)
    {
      v2161 = v2783;
      v2162 = &v2835;
      v2163 = &v2827 + 1;
      v2164 = v2689;
      v2160 = v2685;
      do
      {
        *(&v2157 - 1) = vld3q_f32(v2163);
        v2163 += 12;
        v2945 = vld3q_f32(v2161);
        v2161 += 12;
        __asm { FMOV            V6.4S, #1.0 }

        v2167 = vdivq_f32(_Q6, v2166);
        v2954.val[0] = vmulq_f32(v2945.val[0], v2167);
        v2954.val[1] = vmulq_f32(v2945.val[1], v2167);
        v2954.val[2] = vmulq_f32(v2945.val[2], v2167);
        vst3q_f32(v2162, v2954);
        v2162 += 12;
        v2164 -= 4;
      }

      while (v2164);
      v2158 = v2689;
      v2159 = v2659;
    }

    else
    {
      v2158 = 0;
      v2159 = v2659;
      v2160 = v2685;
    }

    v2168 = v1695 - v2158;
    v2169 = 12 * v2158;
    do
    {
      v2170 = (&v2827 + v2169 + 4);
      v2157.i64[0] = *&v2783[v2169];
      v2157.i32[2] = *&v2783[v2169 + 8];
      v2171 = vld1q_dup_f32(v2170);
      __asm { FMOV            V0.4S, #1.0 }

      v2157 = vmulq_f32(v2157, vdivq_f32(_Q0, v2171));
      *(&v2836 + v2169 + 4) = v2157.i32[2];
      *(&v2835 + v2169) = v2157.i64[0];
      v2169 += 12;
      --v2168;
    }

    while (v2168);
    if (v1695 >= 9)
    {
      v2174 = &v2835;
      v2175 = (v2902 + 4);
      v2176 = v2160;
      do
      {
        v2177 = v2174;
        v2174 += 24;
        v2178 = vld3q_f32(v2177);
        v2177 += 12;
        v2179 = vnegq_f32(v2178);
        v2180 = vcvtq_f64_f32(*v2179.f32);
        v2181 = vld3q_f32(v2177);
        v2182 = vnegq_f32(v2181);
        v2157 = vcvt_hight_f64_f32(v2179);
        v2175[-2] = v2180;
        v2175[-1] = v2157;
        *v2175 = vcvtq_f64_f32(*v2182.f32);
        v2175[1] = vcvt_hight_f64_f32(v2182);
        v2175 += 4;
        v2176 -= 8;
      }

      while (v2176);
      v2173 = v2160;
    }

    else
    {
      v2173 = 0;
    }

    v2183 = &v2835 + 3 * v2173;
    do
    {
      v2184 = *v2183;
      v2183 += 3;
      *(&v2899 + v2173) = -v2184;
      v2173 = v2173 + 1;
    }

    while (v1695 != v2173);
    if (v1695 >= 9)
    {
      v2186 = &v2843;
      v2187 = (&v2902[v1695] + 4);
      v2188 = v2160;
      do
      {
        v2189 = v2186 - 12;
        v2190 = vld3q_f32(v2189);
        v2191 = vld3q_f32(v2186);
        v2192 = vnegq_f32(v2190);
        v2193 = vnegq_f32(v2191);
        v2194 = vcvtq_f64_f32(*v2192.f32);
        v2157 = vcvt_hight_f64_f32(v2192);
        v2187[-2] = v2194;
        v2187[-1] = v2157;
        *v2187 = vcvtq_f64_f32(*v2193.f32);
        v2187[1] = vcvt_hight_f64_f32(v2193);
        v2187 += 4;
        v2186 += 24;
        v2188 -= 8;
      }

      while (v2188);
      v2185 = v2160;
    }

    else
    {
      v2185 = 0;
    }

    v2195 = &v2836 + 3 * v2185;
    do
    {
      v2196 = *v2195;
      v2195 += 3;
      *(&v2899 + v1695 + v2185) = -v2196;
      v2185 = v2185 + 1;
    }

    while (v1695 != v2185);
    if (v1695 >= 9)
    {
      v2198 = v2844;
      v2199 = (&v2902[2 * v1695] + 4);
      v2200 = v2160;
      do
      {
        v2201 = v2198 - 12;
        v2202 = vld3q_f32(v2201);
        v2203 = vld3q_f32(v2198);
        v2204 = vnegq_f32(v2202);
        v2205 = vnegq_f32(v2203);
        v2206 = vcvtq_f64_f32(*v2204.f32);
        v2157 = vcvt_hight_f64_f32(v2204);
        v2199[-2] = v2206;
        v2199[-1] = v2157;
        *v2199 = vcvtq_f64_f32(*v2205.f32);
        v2199[1] = vcvt_hight_f64_f32(v2205);
        v2199 += 4;
        v2198 += 24;
        v2200 -= 8;
      }

      while (v2200);
      v2197 = v2160;
    }

    else
    {
      v2197 = 0;
    }

    v2207 = &v2836 + 3 * v2197 + 1;
    do
    {
      v2208 = *v2207;
      v2207 += 3;
      v2138[v2197] = -v2208;
      v2197 = v2197 + 1;
    }

    while (v1695 != v2197);
    if (v2717 < 0xFFFFFFFFC0000001)
    {
      v2209 = 0;
      goto LABEL_1710;
    }

    v2210 = &v2913;
    v2211 = &v2899 + 1;
    v2212 = v1695 & 0x7FFFFFFE;
    do
    {
      v2213 = *v2211;
      v2210[-1].i64[0] = *(v2211 - 1);
      v2210->i64[0] = v2213;
      v2210 += 2;
      v2211 += 2;
      v2212 -= 2;
    }

    while (v2212);
    v2209 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1710:
      v2214 = v1695 - v2209;
      v2215 = 2 * v2209;
      v2216 = &v2899 + v2209;
      do
      {
        v2217 = *v2216++;
        v2912.i64[v2215] = v2217;
        v2215 += 2;
        --v2214;
      }

      while (v2214);
    }

    if (v2650)
    {
      v2218 = 0;
      goto LABEL_1717;
    }

    v2219 = v2668;
    v2220 = &v2899 + 1;
    v2221 = v1695 & 0xFFFFFFFE;
    do
    {
      v2222 = *v2220;
      v2912.i64[v2219] = *(v2220 - 1);
      *(&v2912 + v2219 + 2) = v2222;
      v2220 += 2;
      v2219 += 4;
      v2221 -= 2;
    }

    while (v2221);
    v2218 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2712)
    {
LABEL_1717:
      v2223 = v1695 - v2218;
      v2224 = v2668 + 2 * v2218;
      v2225 = &v2899 + v2218;
      do
      {
        v2226 = *v2225++;
        v2912.i64[v2224] = v2226;
        v2224 += 2;
        --v2223;
      }

      while (v2223);
    }

    if (v2717 < 0xFFFFFFFFC0000001)
    {
      v2227 = 0;
      goto LABEL_1724;
    }

    v2228 = v2628;
    v2229 = &v2899 + v1695 + 1;
    v2230 = v1695 & 0x7FFFFFFE;
    do
    {
      v2231 = *v2229;
      *(v2228 - 2) = *(v2229 - 1);
      *v2228 = v2231;
      v2228 += 4;
      v2229 += 2;
      v2230 -= 2;
    }

    while (v2230);
    v2227 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1724:
      v2232 = v1695 - v2227;
      v2233 = 2 * v2227;
      v2234 = &v2899 + v1695 + v2227;
      do
      {
        v2235 = *v2234++;
        v2912.i64[v2159 + v2233] = v2235;
        v2233 += 2;
        --v2232;
      }

      while (v2232);
    }

    if (v2648)
    {
      v2236 = 0;
      v2237 = v2655;
      goto LABEL_1731;
    }

    v2238 = (8 * v1652) | 1;
    v2239 = &v2899 + v1695 + 1;
    v2240 = v1695 & 0xFFFFFFFE;
    v2237 = v2655;
    do
    {
      v2241 = *v2239;
      v2912.i64[v2238] = *(v2239 - 1);
      *(&v2912 + v2238 + 2) = v2241;
      v2239 += 2;
      v2238 += 4;
      v2240 -= 2;
    }

    while (v2240);
    v2236 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2712)
    {
LABEL_1731:
      v2242 = v1695 - v2236;
      v2243 = ((8 * v1652) | 1) + 2 * v2236;
      v2244 = &v2899 + v1695 + v2236;
      do
      {
        v2245 = *v2244++;
        v2912.i64[v2243] = v2245;
        v2243 += 2;
        --v2242;
      }

      while (v2242);
    }

    if (v2717 < 0xFFFFFFFFC0000001)
    {
      v2246 = 0;
      goto LABEL_1738;
    }

    v2247 = v2625;
    v2248 = &v2899 + 2 * v1695 + 1;
    v2249 = v1695 & 0x7FFFFFFE;
    do
    {
      v2250 = *v2248;
      *(v2247 - 2) = *(v2248 - 1);
      *v2247 = v2250;
      v2247 += 4;
      v2248 += 2;
      v2249 -= 2;
    }

    while (v2249);
    v2246 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1738:
      v2251 = v1695 - v2246;
      v2252 = 2 * v2246;
      v2253 = &v2138[v2246];
      do
      {
        v2254 = *v2253++;
        v2912.i64[v2237 + v2252] = v2254;
        v2252 += 2;
        --v2251;
      }

      while (v2251);
    }

    if (v2646)
    {
      v2255 = 0;
      goto LABEL_1745;
    }

    v2256 = (10 * v1652) | 1;
    v2257 = &v2899 + 2 * v1695 + 1;
    v2258 = v1695 & 0xFFFFFFFE;
    do
    {
      v2259 = *v2257;
      v2912.i64[v2256] = *(v2257 - 1);
      *(&v2912 + v2256 + 2) = v2259;
      v2257 += 2;
      v2256 += 4;
      v2258 -= 2;
    }

    while (v2258);
    v2255 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2712)
    {
LABEL_1745:
      v2260 = v1695 - v2255;
      v2261 = ((10 * v1652) | 1) + 2 * v2255;
      v2262 = &v2138[v2255];
      do
      {
        v2263 = *v2262++;
        v2912.i64[v2261] = v2263;
        v2261 += 2;
        --v2260;
      }

      while (v2260);
    }

    if (v1695 < 4)
    {
      v2264 = 0;
      goto LABEL_1752;
    }

    v2265 = v2833;
    v2266 = &v2826;
    v2267 = v1695 & 0xFFFFFFFC;
    do
    {
      *v2157.f32 = vld3q_f32(v2266);
      v2266 += 12;
      v2269 = vdivq_f32(_Q0, v2268);
      v2949.val[0] = vmulq_f32(v2157, v2269);
      v2949.val[1] = vmulq_f32(v2270, v2269);
      v2949.val[2] = vmulq_f32(v2268, v2269);
      vst3q_f32(v2265, v2949);
      v2265 += 12;
      v2267 -= 4;
    }

    while (v2267);
    v2264 = v1695 & 0xFFFFFFFC;
    if (v1695 != v2683)
    {
LABEL_1752:
      v2271 = v1695 - v2264;
      v2272 = 12 * v2264;
      v2273 = &v2833[12 * v2264];
      v2274 = &v2826 + v2272;
      do
      {
        v2157.i64[0] = *v2274;
        v2157.i32[2] = *(v2274 + 2);
        v2157 = vmulq_f32(v2157, vdivq_f32(_Q0, vdupq_laneq_s32(v2157, 2)));
        *(v2273 + 2) = v2157.i32[2];
        *v2273 = v2157.i64[0];
        v2273 += 12;
        v2274 += 12;
        --v2271;
      }

      while (v2271);
    }

    memcpy(&v2826, v2833, 4 * (3 * v1652));
    if (v1695 >= 5)
    {
      v2284 = &v2823;
      v2285 = &v2826;
      v2286 = &v2790;
      v2287 = v2689;
      v2278 = v2660;
      v2076 = v2679;
      v2077 = v2677;
      v2078 = v2675;
      v2091 = v2740;
      v2092 = v2728;
      v2075 = v2720;
      v2279 = v2653;
      v2280 = v2651;
      v2281 = v2685;
      v2282 = 0uLL;
      v2283 = v1696 & 0xFFFFFFFC;
      do
      {
        v2288 = vsubq_f32(v2286[1], v2285[1]);
        v2289 = vsubq_f32(*v2286, *v2285);
        v2085 = vextq_s8(v2289, v2288, 4uLL);
        *&v2085 = v2289.i64[0];
        v2290 = vextq_s8(v2288, vextq_s8(vsubq_f32(v2286[2], v2285[2]), v2288, 4uLL), 8uLL);
        *v2284 = v2085;
        v2284[1] = v2290;
        v2284 += 2;
        v2285 += 3;
        v2286 += 3;
        v2287 -= 4;
      }

      while (v2287);
      v2277 = v2689;
    }

    else
    {
      v2277 = 0;
      v2278 = v2660;
      v2076 = v2679;
      v2077 = v2677;
      v2078 = v2675;
      v2091 = v2740;
      v2092 = v2728;
      v2075 = v2720;
      v2279 = v2653;
      v2280 = v2651;
      v2281 = v2685;
      v2282 = 0uLL;
      v2283 = v1696 & 0xFFFFFFFC;
    }

    v2291 = &v2826 + 3 * v2277;
    v2292 = &v2790 + 3 * v2277;
    do
    {
      v2293 = *v2292;
      v2292 += 3;
      v2294 = v2293;
      v2295 = *v2291;
      v2291 += 3;
      *&v2296 = vsub_f32(v2294, v2295);
      v2823.i64[v2277++] = v2296;
    }

    while (v1695 != v2277);
    if (v1695 >= 9)
    {
      v2298 = v2833;
      v2299 = &v2826;
      v2300 = v2281;
      do
      {
        v2301 = v2299;
        v2296 = vld3q_f32(v2301);
        v2301 += 12;
        v2302 = v2296;
        v2303 = v2296;
        v2085 = vld3q_f32(v2301);
        v2304 = v2085;
        v2305 = v2085;
        v2306 = v2298 + 24;
        vst3q_f32(v2298, *&v2296);
        v2307 = v2298 + 12;
        vst3q_f32(v2307, *&v2085);
        v2299 += 24;
        v2298 = v2306;
        v2300 -= 8;
      }

      while (v2300);
      v2297 = v2281;
    }

    else
    {
      v2297 = 0;
    }

    v2308 = v1695 - v2297;
    v2309 = 12 * v2297;
    v2310 = &v2833[12 * v2297];
    v2311 = (&v2826 + v2309);
    do
    {
      v2312 = *v2311;
      v2311 += 3;
      LODWORD(v2296) = v2312;
      *(v2310 + 2) = v2312;
      *v2310 = vdupq_lane_s32(*&v2296, 0).u64[0];
      v2310 += 12;
      --v2308;
    }

    while (v2308);
    if (v2694 < 8)
    {
      v2313 = 0;
      goto LABEL_1773;
    }

    v2314 = &v2833[16];
    v2315 = (&v2837 + 4);
    v2316 = v2852;
    v2317 = v2681;
    do
    {
      v2085 = *v2315;
      v2296 = vmulq_f32(v2315[-1], v2314[-1]);
      v2318 = vmulq_f32(*v2315, *v2314);
      v2316[-1] = v2296;
      *v2316 = v2318;
      v2316 += 2;
      v2315 += 2;
      v2314 += 2;
      v2317 -= 8;
    }

    while (v2317);
    v2313 = v2681;
    if (v2681 != v2705)
    {
LABEL_1773:
      v2319 = v2705 - v2313;
      v2320 = 4 * v2313;
      v2321 = &v2852[-2] + v2313;
      v2322 = (&v2835 + v2320);
      v2323 = &v2833[v2320];
      do
      {
        v2324 = *v2323++;
        v2325 = v2324;
        v2326 = *v2322++;
        *v2321++ = v2326 * v2325;
        --v2319;
      }

      while (v2319);
    }

    if (v1695 >= 9)
    {
      v2328 = v2833;
      v2329 = v2832;
      v2330 = v2281;
      do
      {
        v2331 = v2329 - 12;
        v2296 = vld3q_f32(v2331);
        v2085 = vld3q_f32(v2329);
        v2332 = v2296;
        v2333 = v2296;
        v2334 = v2085;
        v2335 = v2085;
        v2336 = v2328 + 24;
        vst3q_f32(v2328, *&v2296);
        v2337 = v2328 + 12;
        vst3q_f32(v2337, *&v2085);
        v2329 += 24;
        v2328 = v2336;
        v2330 -= 8;
      }

      while (v2330);
      v2327 = v2281;
    }

    else
    {
      v2327 = 0;
    }

    v2338 = v1695 - v2327;
    v2339 = 12 * v2327;
    v2340 = &v2833[12 * v2327];
    v2341 = (&v2827 + v2339);
    do
    {
      v2342 = *v2341;
      v2341 += 3;
      LODWORD(v2296) = v2342;
      *(v2340 + 2) = v2342;
      *v2340 = vdupq_lane_s32(*&v2296, 0).u64[0];
      v2340 += 12;
      --v2338;
    }

    while (v2338);
    if (v2694 < 8)
    {
      v2343 = 0;
      goto LABEL_1787;
    }

    v2344 = &v2833[16];
    v2345 = (&v2837 + 4);
    v2346 = &v2846;
    v2347 = v2681;
    do
    {
      v2085 = *v2345;
      v2348 = vmulq_f32(*v2345, *v2344);
      v2346[-1] = vmulq_f32(v2345[-1], v2344[-1]);
      *v2346 = v2348;
      v2346 += 2;
      v2345 += 2;
      v2344 += 2;
      v2347 -= 8;
    }

    while (v2347);
    v2343 = v2681;
    if (v2681 != v2705)
    {
LABEL_1787:
      v2349 = v2705 - v2343;
      v2350 = 4 * v2343;
      v2351 = &v2845 + v2343;
      v2352 = (&v2835 + v2350);
      v2353 = &v2833[v2350];
      do
      {
        v2354 = *v2353++;
        v2355 = v2354;
        v2356 = *v2352++;
        *v2351++ = v2356 * v2355;
        --v2349;
      }

      while (v2349);
    }

    if (v2717 < 0xFFFFFFFFC0000001)
    {
      v2357 = 0;
      goto LABEL_1794;
    }

    v2358 = &v2851;
    v2359 = v2627;
    v2360 = v1695 & 0x7FFFFFFE;
    do
    {
      v2361 = v2358[3];
      *(v2359 - 2) = *v2358;
      *v2359 = v2361;
      v2359 += 4;
      v2358 += 6;
      v2360 -= 2;
    }

    while (v2360);
    v2357 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1794:
      v2362 = v1695 - v2357;
      v2363 = 2 * v2357;
      v2364 = &v2852[-2] + 3 * v2357;
      do
      {
        v2365 = *v2364;
        v2364 += 3;
        *&v2912.i64[v2279 + v2363] = v2365;
        v2363 += 2;
        --v2362;
      }

      while (v2362);
    }

    if (v2645)
    {
      v2366 = 0;
      goto LABEL_1801;
    }

    v2367 = &v2845;
    v2368 = v2666;
    v2369 = v1695 & 0xFFFFFFFE;
    do
    {
      v2370 = v2367[3];
      *&v2912.i64[v2368] = *v2367;
      *(&v2912 + v2368 + 2) = v2370;
      v2367 += 6;
      v2368 += 4;
      v2369 -= 2;
    }

    while (v2369);
    v2366 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2712)
    {
LABEL_1801:
      v2371 = v1695 - v2366;
      v2372 = v2666 + 2 * v2366;
      v2373 = &v2845 + 3 * v2366;
      do
      {
        v2374 = *v2373;
        v2373 += 3;
        *&v2912.i64[v2372] = v2374;
        v2372 += 2;
        --v2371;
      }

      while (v2371);
    }

    if (v2717 < 0xFFFFFFFFC0000001)
    {
      v2375 = 0;
      goto LABEL_1808;
    }

    v2376 = v2626;
    v2377 = v2852;
    v2378 = v1695 & 0x7FFFFFFE;
    do
    {
      v2379 = *(v2377 - 3);
      v2380 = *v2377;
      v2377 += 6;
      *(v2376 - 2) = v2379;
      *v2376 = v2380;
      v2376 += 4;
      v2378 -= 2;
    }

    while (v2378);
    v2375 = v1695 & 0x7FFFFFFE;
    if (v1695 != v2714)
    {
LABEL_1808:
      v2381 = v1695 - v2375;
      v2382 = 2 * v2375;
      v2383 = &v2851 + 3 * v2375 + 1;
      do
      {
        v2384 = *v2383;
        v2383 += 3;
        *&v2912.i64[v2280 + v2382] = v2384;
        v2382 += 2;
        --v2381;
      }

      while (v2381);
    }

    if (v2644)
    {
      v2385 = 0;
      goto LABEL_1815;
    }

    v2386 = v2669;
    v2387 = &v2846;
    v2388 = v1695 & 0xFFFFFFFE;
    do
    {
      v2389 = *(v2387 - 3);
      v2390 = *v2387;
      v2387 += 6;
      *&v2912.i64[v2386] = v2389;
      *(&v2912 + v2386 + 2) = v2390;
      v2386 += 4;
      v2388 -= 2;
    }

    while (v2388);
    v2385 = v1695 & 0xFFFFFFFE;
    if (v1695 != v2712)
    {
LABEL_1815:
      v2391 = v1695 - v2385;
      v2392 = v2669 + 2 * v2385;
      v2393 = &v2845 + 3 * v2385 + 1;
      do
      {
        v2394 = *v2393;
        v2393 += 3;
        *&v2912.i64[v2392] = v2394;
        v2392 += 2;
        --v2391;
      }

      while (v2391);
    }

    v2395 = 0;
    v2396 = 0;
    while (2)
    {
      v2397 = &v2855 + 8 * v2396;
      *(v2397 + 2) = v2282;
      *(v2397 + 3) = v2282;
      v2398 = v2395;
      *v2397 = v2282;
      *(v2397 + 1) = v2282;
      *(v2935 + v2396) = 0;
      if (v2278)
      {
        v2399 = 8 * v2395;
        v2400 = (8 * v2396) | 1;
        v2401 = (8 * v2396) | 2;
        v2402 = (8 * v2396) | 3;
        v2403 = (8 * v2396) | 4;
        v2404 = (8 * v2396) | 5;
        v2405 = (8 * v2396) | 6;
        v2406 = *(&v2855 + v2400);
        v2407 = *(&v2855 + v2401);
        v2408 = *(&v2855 + v2402);
        *&v2085 = *(&v2855 + v2403);
        v2409 = *(&v2855 + v2404);
        v2410 = (8 * v2396) | 7;
        v2275 = *(&v2855 + v2405);
        v2411 = *(&v2855 + v2410);
        if (v1696 <= 3)
        {
          v2412 = 0;
          v2276 = 0;
          v2413 = 0.0;
          goto LABEL_1826;
        }

        v2414 = 0uLL;
        v2415 = *(&v2855 + v2410);
        v2416 = *(&v2855 + v2405);
        v2417 = *(&v2855 + v2404);
        v2418 = *(&v2855 + v2403);
        v2419 = *(&v2855 + v2402);
        v2420 = *(&v2855 + v2401);
        v2421 = *(&v2855 + v2400);
        v2422 = &v2823;
        v2423 = &v2912;
        v2424 = v2283;
        v2425 = 0uLL;
        v2426 = 0uLL;
        v2427 = 0uLL;
        v2428 = 0uLL;
        v2429 = 0uLL;
        v2430 = 0uLL;
        v2431 = 0uLL;
        v2432 = 0uLL;
        v2433 = 0uLL;
        do
        {
          v2434 = *(v2423 + v2399);
          v2435 = *(v2423 + v2399 + 16);
          v2432 = vmlaq_f64(v2432, v2435, v2423[1]);
          v2431 = vmlaq_f64(v2431, v2434, *v2423);
          v2430 = vmlaq_f64(v2430, v2435, *(v2423 + v2139 + 16));
          v2421 = vmlaq_f64(v2421, v2434, v2423[v1696 / 2]);
          v2436 = (v2423 + v2139 + v2139);
          v2429 = vmlaq_f64(v2429, v2435, v2436[1]);
          v2420 = vmlaq_f64(v2420, v2434, *v2436);
          v2437 = (v2436 + v2139);
          v2428 = vmlaq_f64(v2428, v2435, v2437[1]);
          v2419 = vmlaq_f64(v2419, v2434, *v2437);
          v2438 = (v2437 + v2139);
          v2427 = vmlaq_f64(v2427, v2435, v2438[1]);
          v2418 = vmlaq_f64(v2418, v2434, *v2438);
          v2439 = (v2438 + v2139);
          v2426 = vmlaq_f64(v2426, v2435, v2439[1]);
          v2417 = vmlaq_f64(v2417, v2434, *v2439);
          v2440 = (v2439 + v2139);
          v2425 = vmlaq_f64(v2425, v2435, v2440[1]);
          v2416 = vmlaq_f64(v2416, v2434, *v2440);
          v2441 = (v2440 + v2139);
          v2414 = vmlaq_f64(v2414, v2435, v2441[1]);
          v2415 = vmlaq_f64(v2415, v2434, *v2441);
          v2442 = *v2422++;
          v2433 = vmlaq_f32(v2433, vcvt_hight_f32_f64(vcvt_f32_f64(v2434), v2435), v2442);
          v2423 += 2;
          v2424 -= 4;
        }

        while (v2424);
        v2085 = vaddq_f64(v2415, v2414);
        v2411 = vaddvq_f64(v2085);
        v2275 = vaddvq_f64(vaddq_f64(v2416, v2425));
        v2409 = vaddvq_f64(vaddq_f64(v2417, v2426));
        *&v2085 = vaddvq_f64(vaddq_f64(v2418, v2427));
        v2408 = vaddvq_f64(vaddq_f64(v2419, v2428));
        v2407 = vaddvq_f64(vaddq_f64(v2420, v2429));
        v2406 = vaddvq_f64(vaddq_f64(v2421, v2430));
        v2413 = vaddvq_f64(vaddq_f64(v2431, v2432));
        v2276 = vpaddq_f32(v2433, v2433).u64[0];
        v2276.f32[0] = vaddv_f32(v2276);
        v2412 = v2283;
        v2091 = v2740;
        v2092 = v2728;
        v2075 = v2720;
        v2282 = 0uLL;
        if (v2283 != v1696)
        {
LABEL_1826:
          v2443 = -v2399;
          v2444 = v1696 - v2412;
          v2445 = &v2823.f32[v2412];
          v2446 = &v2912.i64[v2412 + v2398];
          do
          {
            v2413 = v2413 + *(v2446 + v2443) * *v2446;
            v2447 = (&v2446[v1696] + v2443);
            v2406 = v2406 + *v2447 * *v2446;
            v2448 = &v2447[v2139 / 8];
            v2407 = v2407 + *v2448 * *v2446;
            v2449 = &v2448[v2139 / 8];
            v2408 = v2408 + *v2449 * *v2446;
            v2450 = &v2449[v2139 / 8];
            *&v2085 = *&v2085 + *v2450 * *v2446;
            v2451 = &v2450[v2139 / 8];
            v2409 = v2409 + *v2451 * *v2446;
            v2452 = &v2451[v2139 / 8];
            v2275 = v2275 + *v2452 * *v2446;
            v2411 = v2411 + v2452[v1696] * *v2446;
            v2453 = *v2446;
            v2454 = *v2445++;
            v2276.f32[0] = v2276.f32[0] + (v2454 * v2453);
            ++v2446;
            --v2444;
          }

          while (v2444);
        }

        *(&v2855 + v2400) = v2406;
        *(&v2855 + v2401) = v2407;
        *(&v2855 + v2402) = v2408;
        *(&v2855 + v2403) = v2085;
        *(&v2855 + v2404) = v2409;
        *(&v2855 + v2405) = v2275;
        *v2397 = v2413;
        *(&v2855 + v2410) = v2411;
        *(v2935 + v2396) = v2276.i32[0];
      }

      *(v2933 + v2396) = v2396 + 1;
      v2395 = v2398 + v1696;
      if (++v2396 != 8)
      {
        continue;
      }

      break;
    }

    v2455 = 0;
    v2456 = 0;
    v2457 = 0;
    v2458 = 11;
    v2459 = &v2865;
    v2460 = 7;
    v2461 = 6;
    v2462 = 5;
    v2463 = 4;
    v2464 = 3;
    v2465 = 1;
    v2466 = 9;
    v2467 = 9;
    v2468 = 2;
    do
    {
      v2469 = &v2855 + 9 * v2457;
      v2470 = *v2469;
      v2471 = fabs(*v2469);
      v2472 = fabs(v2469[1]);
      v2473 = v2472 > v2471;
      if (v2466 != 3)
      {
        if (v2472 > v2471)
        {
          v2471 = v2472;
        }

        v2474 = fabs(v2469[2]);
        if (v2474 > v2471)
        {
          v2473 = 2;
        }

        if (v2466 != 4)
        {
          if (v2474 > v2471)
          {
            v2471 = v2474;
          }

          v2475 = fabs(v2469[3]);
          if (v2475 > v2471)
          {
            v2473 = 3;
          }

          if (v2466 != 5)
          {
            if (v2475 > v2471)
            {
              v2471 = v2475;
            }

            v2476 = fabs(v2469[4]);
            if (v2476 > v2471)
            {
              v2473 = 4;
            }

            if (v2466 != 6)
            {
              if (v2476 > v2471)
              {
                v2471 = v2476;
              }

              v2477 = fabs(v2469[5]);
              if (v2477 > v2471)
              {
                v2473 = 5;
              }

              if (v2466 != 7)
              {
                if (v2477 > v2471)
                {
                  v2471 = v2477;
                }

                v2478 = fabs(v2469[6]);
                if (v2478 > v2471)
                {
                  v2473 = 6;
                }

                if (v2466 != 8)
                {
                  if (v2478 > v2471)
                  {
                    v2471 = v2478;
                  }

                  if (fabs(v2469[7]) > v2471)
                  {
                    v2473 = 7;
                  }
                }
              }
            }
          }
        }
      }

      v2479 = *(&v2855 + 9 * v2457 + v2473);
      if (v2479 != 0.0)
      {
        if (v2473)
        {
          v2480 = v2473 + v2457;
          *(v2933 + v2457) = v2480 + 1;
          v2481 = &v2855 + v2457;
          v2482 = *v2481;
          v2483 = &v2855 + v2480;
          *v2481 = *v2483;
          *v2483 = v2482;
          v2484 = *(v2481 + 8);
          v2481[8] = v2483[8];
          *(v2483 + 8) = v2484;
          v2485 = *(v2481 + 16);
          v2481[16] = v2483[16];
          *(v2483 + 16) = v2485;
          v2486 = *(v2481 + 24);
          v2481[24] = v2483[24];
          *(v2483 + 24) = v2486;
          v2487 = *(v2481 + 32);
          v2481[32] = v2483[32];
          *(v2483 + 32) = v2487;
          v2488 = *(v2481 + 40);
          v2481[40] = v2483[40];
          *(v2483 + 40) = v2488;
          v2489 = *(v2481 + 48);
          v2481[48] = v2483[48];
          *(v2483 + 48) = v2489;
          v2490 = *(v2481 + 56);
          v2481[56] = v2483[56];
          *(v2483 + 56) = v2490;
          v2470 = *(&v2855 + 9 * v2457);
        }

        v2491 = &v2855 + v2468;
        v2479 = *(v2491 - 1);
        *(v2491 - 1) = v2479 / v2470;
        v2492 = v2468 + 1;
        if (v2468 + 1 != v2467)
        {
          v2479 = *(&v2855 + v2468);
          *(&v2855 + v2468) = v2479 / *(&v2855 + 9 * v2457);
          v2493 = v2468 + 2;
          if (v2468 + 2 != v2467)
          {
            v2479 = *(&v2855 + v2492);
            *(&v2855 + v2492) = v2479 / *(&v2855 + 9 * v2457);
            v2494 = v2468 + 3;
            if (v2468 + 3 != v2467)
            {
              v2479 = *(&v2855 + v2493);
              *(&v2855 + v2493) = v2479 / *(&v2855 + 9 * v2457);
              v2495 = v2468 + 4;
              if (v2468 + 4 != v2467)
              {
                v2479 = *(&v2855 + v2494);
                *(&v2855 + v2494) = v2479 / *(&v2855 + 9 * v2457);
                v2496 = v2468 + 5;
                if (v2468 + 5 != v2467)
                {
                  v2479 = *(&v2855 + v2495);
                  *(&v2855 + v2495) = v2479 / *(&v2855 + 9 * v2457);
                  if (v2468 + 6 != v2467)
                  {
                    v2479 = *(&v2855 + v2496);
                    *(&v2855 + v2496) = v2479 / *(&v2855 + 9 * v2457);
                  }
                }
              }
            }
          }
        }
      }

      v2497 = 0;
      v2498 = v2459;
      do
      {
        v2112 = *(v2498 - 7);
        if (v2112 != 0.0)
        {
          v2499 = v2456 + v2497 + 17;
          v2479 = *(v2498 - 6) - *(&v2855 + v2465) * v2112;
          *(v2498 - 6) = v2479;
          if (v2458 + v2497 != v2499)
          {
            v2479 = *(v2498 - 5) - *(&v2855 + v2468) * v2112;
            *(v2498 - 5) = v2479;
            if (v2455 + v2497 + 12 != v2499)
            {
              v2479 = *(v2498 - 4) - *(&v2855 + v2464) * v2112;
              *(v2498 - 4) = v2479;
              if (v2455 + v2497 + 13 != v2499)
              {
                v2479 = *(v2498 - 3) - *(&v2855 + v2463) * v2112;
                *(v2498 - 3) = v2479;
                if (v2455 + v2497 + 14 != v2499)
                {
                  v2479 = *(v2498 - 2) - *(&v2855 + v2462) * v2112;
                  *(v2498 - 2) = v2479;
                  if (v2455 + v2497 + 15 != v2499)
                  {
                    v2479 = *(v2498 - 1) - *(&v2855 + v2461) * v2112;
                    *(v2498 - 1) = v2479;
                    if (v2455 + v2497 + 16 != v2499)
                    {
                      v2479 = *(&v2855 + v2460);
                      v2112 = *v2498 - v2479 * v2112;
                      *v2498 = v2112;
                    }
                  }
                }
              }
            }
          }
        }

        v2497 += 8;
        v2498 += 8;
      }

      while (v2456 + v2497 != 56);
      v2500 = v2457 + 1;
      if (v2457 + 1 != *(v2933 + v2457))
      {
        v2501 = *(v2935 + v2457);
        v2502 = v2935 + 4 * *(v2933 + v2457);
        *(v2935 + v2457) = *(v2502 - 1);
        *(v2502 - 1) = v2501;
      }

      --v2466;
      v2468 += 9;
      v2467 += 8;
      v2465 += 9;
      v2464 += 9;
      v2463 += 9;
      v2462 += 9;
      v2461 += 9;
      v2460 += 9;
      v2456 += 8;
      v2455 += 9;
      v2459 += 9;
      v2458 += 9;
      ++v2457;
    }

    while (v2500 != 7);
    LODWORD(v2085) = v2935[0];
    v2503 = *(v2935 + 4);
    v2504 = *(v2935 + 12);
    v2505 = *(&v2935[1] + 4);
    if (*v2935 != 0.0)
    {
      v2503 = vmls_lane_f32(*(v2935 + 4), vcvt_f32_f64(v2856), *&v2085, 0);
      DWORD1(v2935[0]) = v2503.i32[0];
      v2504 = vmls_lane_f32(*(v2935 + 12), vcvt_f32_f64(v2857), *&v2085, 0);
      v2505 = vmls_lane_f32(*(&v2935[1] + 4), vcvt_f32_f64(v2858), *&v2085, 0);
      HIDWORD(v2112) = HIDWORD(v2859);
      *&v2112 = v2859;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (*v2935 * *&v2112);
    }

    LODWORD(v2275) = v2503.i32[1];
    if (v2503.f32[0] != 0.0)
    {
      v2506 = v2862;
      *&v2275 = v2503.f32[1] - (v2503.f32[0] * v2506);
      *(v2935 + 2) = *&v2275;
      v2504 = vmls_lane_f32(v2504, vcvt_f32_f64(v2863), v2503, 0);
      v2505 = vmls_lane_f32(v2505, vcvt_f32_f64(v2864), v2503, 0);
      HIDWORD(v2112) = HIDWORD(v2865);
      *&v2112 = v2865;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (v2503.f32[0] * *&v2112);
    }

    if (*&v2275 != 0.0)
    {
      v2504 = vmls_lane_f32(v2504, vcvt_f32_f64(v2868), *&v2275, 0);
      HIDWORD(v2935[0]) = v2504.i32[0];
      v2505 = vmls_lane_f32(v2505, vcvt_f32_f64(v2869), *&v2275, 0);
      HIDWORD(v2112) = HIDWORD(v2870);
      *&v2112 = v2870;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (*&v2275 * *&v2112);
    }

    v2276.i32[0] = v2504.i32[1];
    if (v2504.f32[0] != 0.0)
    {
      v2507 = v2874;
      v2276.f32[0] = v2504.f32[1] - (v2504.f32[0] * v2507);
      v2505 = vmls_lane_f32(v2505, vcvt_f32_f64(v2875), v2504, 0);
      DWORD2(v2935[1]) = v2505.i32[1];
      *&v2935[1] = v2276.f32[0];
      HIDWORD(v2112) = HIDWORD(v2876);
      *&v2112 = v2876;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (v2504.f32[0] * *&v2112);
    }

    if (v2276.f32[0] != 0.0)
    {
      v2505 = vmls_lane_f32(v2505, vcvt_f32_f64(v2880), v2276, 0);
      DWORD1(v2935[1]) = v2505.i32[0];
      HIDWORD(v2112) = HIDWORD(v2881);
      *&v2112 = v2881;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (v2276.f32[0] * *&v2112);
    }

    LODWORD(v2112) = v2505.i32[1];
    if (v2505.f32[0] != 0.0)
    {
      HIDWORD(v2479) = HIDWORD(v2886);
      *&v2479 = v2886;
      *&v2112 = v2505.f32[1] - (v2505.f32[0] * *&v2479);
      *&v2479 = v2887;
      *(&v2935[1] + 3) = *(&v2935[1] + 3) - (v2505.f32[0] * *&v2479);
    }

    if (*&v2112 == 0.0)
    {
      LODWORD(v2479) = HIDWORD(v2935[1]);
    }

    else
    {
      HIDWORD(v2479) = HIDWORD(v2892);
      *&v2479 = v2892;
      *&v2479 = *(&v2935[1] + 3) - (*&v2112 * *&v2479);
    }

    *&v2121 = vzip1_s32(*&v2085, v2503);
    *&v2085 = vzip1_s32(*&v2275, v2504);
    v2508 = vzip1_s32(v2276, v2505);
    if (*&v2479 != 0.0)
    {
      HIDWORD(v2275) = HIDWORD(v2896);
      v2509 = v2897;
      *&v2479 = *&v2479 / v2509;
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2893), *&v2479, 0);
      *&v2085 = vmls_lane_f32(*&v2085, vcvt_f32_f64(v2894), *&v2479, 0);
      v2504 = vcvt_f32_f64(v2895);
      v2508 = vmls_lane_f32(v2508, v2504, *&v2479, 0);
      v2504.f32[0] = v2896;
      *&v2112 = *&v2112 - (*&v2479 * v2504.f32[0]);
    }

    if (*&v2112 != 0.0)
    {
      v2510 = v2891;
      *&v2112 = *&v2112 / v2510;
      HIDWORD(v2275) = HIDWORD(v2889.f64[0]);
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2888), *&v2112, 0);
      *&v2085 = vmls_lane_f32(*&v2085, vcvt_f32_f64(v2889), *&v2112, 0);
      v2504 = vcvt_f32_f64(v2890);
      v2508 = vmls_lane_f32(v2508, v2504, *&v2112, 0);
    }

    v2504.i32[0] = v2508.i32[1];
    if (v2508.f32[1] != 0.0)
    {
      v2511 = v2885;
      v2504.f32[0] = v2508.f32[1] / v2511;
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2882), v2504, 0);
      v2275 = COERCE_DOUBLE(vcvt_f32_f64(v2883));
      *&v2085 = vmls_lane_f32(*&v2085, *&v2275, v2504, 0);
      *&v2275 = v2884;
      v2508.f32[0] = v2508.f32[0] - (v2504.f32[0] * *&v2275);
    }

    if (v2508.f32[0] != 0.0)
    {
      v2512 = v2879;
      v2508.f32[0] = v2508.f32[0] / v2512;
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2877), v2508, 0);
      v2275 = COERCE_DOUBLE(vcvt_f32_f64(v2878));
      *&v2085 = vmls_lane_f32(*&v2085, *&v2275, v2508, 0);
    }

    if (*(&v2085 + 1) != 0.0)
    {
      v2513 = v2873;
      *&v2275 = *(&v2085 + 1) / v2513;
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2871), *&v2275, 0);
      v2514 = v2872;
      *&v2085 = *&v2085 - (*&v2275 * v2514);
      DWORD1(v2085) = LODWORD(v2275);
    }

    LODWORD(v2275) = v2085;
    if (*&v2085 != 0.0)
    {
      v2515 = v2867;
      *&v2275 = *&v2085 / v2515;
      *&v2121 = vmls_lane_f32(*&v2121, vcvt_f32_f64(v2866), *&v2275, 0);
    }

    if (*(&v2121 + 1) != 0.0)
    {
      v2516 = v2861;
      v2517 = *(&v2121 + 1) / v2516;
      v2518 = v2860;
      *&v2121 = *&v2121 - (v2517 * v2518);
      *(&v2121 + 1) = v2517;
    }

    v2074 = *v2699;
    v2519 = *&v2121;
    if (*&v2121 != 0.0)
    {
      v2520 = v2855;
      v2519 = *&v2121 / v2520;
    }

    *&v2075 = *&v2075 - v2519;
    *&v2074 = *v2699 - *(&v2121 + 1);
    *&v2078 = *&v2078 - *&v2275;
    v2092.f32[0] = v2092.f32[0] - *(&v2085 + 1);
    v2081 = v2673;
    *v2081.i32 = *v2673.i32 - v2508.f32[0];
    *&v2076 = *&v2076 - v2504.f32[0];
    v2091.f32[0] = v2091.f32[0] - *&v2112;
    *&v2077 = *&v2077 - *&v2479;
    v2126 = v2671 + 1;
    LODWORD(v2112) = 1.0;
    if (v2671 != 9)
    {
      continue;
    }

    break;
  }

  v2080 = v2081;
  v2523 = vabds_f32(*&v2075, v2623);
  if (v2523 <= 1.2925e-26)
  {
    v2524 = (v2523 * 7.7371e25) * (v2523 * 7.7371e25);
    v2523 = 1.2925e-26;
  }

  else
  {
    v2524 = 1.0;
  }

  v2522 = v2607;
  v2525 = fabsf(v2092.f32[0] - v2119);
  if (v2525 <= v2523)
  {
    v2526 = v2524 + ((v2525 / v2523) * (v2525 / v2523));
  }

  else
  {
    v2526 = (((v2523 / v2525) * (v2523 / v2525)) * v2524) + 1.0;
    v2523 = v2525;
  }

  v2527 = fabsf(v2091.f32[0] - v2123);
  if (v2527 <= v2523)
  {
    v2528 = v2526 + ((v2527 / v2523) * (v2527 / v2523));
  }

  else
  {
    v2528 = (((v2523 / v2527) * (v2523 / v2527)) * v2526) + 1.0;
    v2523 = v2527;
  }

  v2529 = fabsf(*&v2074 - v2622);
  if (v2529 <= v2523)
  {
    v2530 = v2528 + ((v2529 / v2523) * (v2529 / v2523));
  }

  else
  {
    v2530 = (((v2523 / v2529) * (v2523 / v2529)) * v2528) + 1.0;
    v2523 = v2529;
  }

  v2531 = fabsf(*v2081.i32 - v2120);
  if (v2531 <= v2523)
  {
    v2532 = v2530 + ((v2531 / v2523) * (v2531 / v2523));
  }

  else
  {
    v2532 = (((v2523 / v2531) * (v2523 / v2531)) * v2530) + 1.0;
    v2523 = v2531;
  }

  v2533 = fabsf(*&v2077 - v2124);
  if (v2533 <= v2523)
  {
    v2534 = v2532 + ((v2533 / v2523) * (v2533 / v2523));
  }

  else
  {
    v2534 = (((v2523 / v2533) * (v2523 / v2533)) * v2532) + 1.0;
    v2523 = v2533;
  }

  v2535 = fabsf(*&v2078 - v2117);
  if (v2535 <= v2523)
  {
    v2536 = v2534 + ((v2535 / v2523) * (v2535 / v2523));
  }

  else
  {
    v2536 = (((v2523 / v2535) * (v2523 / v2535)) * v2534) + 1.0;
    v2523 = v2535;
  }

  v2537 = fabsf(*&v2076 - v2122);
  v2521 = 1.0;
  v2538 = (((v2523 / v2537) * (v2523 / v2537)) * v2536) + 1.0;
  v2539 = v2536 + ((v2537 / v2523) * (v2537 / v2523));
  if (v2537 > v2523)
  {
    v2539 = v2538;
    v2523 = v2537;
  }

  v2540 = fabsf(1.0 - v2125);
  v2541 = (((v2523 / v2540) * (v2523 / v2540)) * v2539) + 1.0;
  v2542 = v2539 + ((v2540 / v2523) * (v2540 / v2523));
  if (v2540 > v2523)
  {
    v2542 = v2541;
    v2523 = v2540;
  }

  if ((v2523 * sqrtf(v2542)) > 700.0)
  {
    v2521 = v2125;
    *&v2076 = v2122;
    *&v2078 = v2117;
    *&v2077 = v2124;
    *v2080.i32 = v2120;
    *&v2074 = v2622;
    v2091.f32[0] = v2123;
    v2092.f32[0] = v2119;
    *&v2075 = v2623;
  }

LABEL_1942:
  v2762.i64[0] = __PAIR64__(v2092.u32[0], v2075);
  v2762.i64[1] = __PAIR64__(v2074, v2091.u32[0]);
  v2763.i64[0] = __PAIR64__(v2077, v2080.u32[0]);
  v2763.i64[1] = __PAIR64__(v2076, v2078);
  v2764 = v2521;
  v2935[0] = v2759;
  v2935[1] = v2760;
  LODWORD(v2935[2]) = v2761;
  v2543 = fabsf(*&v2759);
  v2544 = fabsf(*(&v2759 + 1));
  v2545 = v2544 > v2543;
  if (v2544 <= v2543)
  {
    v2546 = v2543;
  }

  else
  {
    v2546 = v2544;
  }

  v2547 = fabsf(*(&v2759 + 2));
  if (v2547 > v2546)
  {
    v2545 = 2;
  }

  LODWORD(v2548) = v2544 <= v2543 || v2547 > v2546;
  v2549 = 2 * (v2547 <= v2546);
  v2550 = *(&v2759 + v2548) / *(&v2759 + v2545);
  *(v2935 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v2548 & 1))) = v2550;
  v2551 = (v2935 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v2549 >> 1) & 1)));
  v2552 = 1.0 / *(v2935 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2545 & 3)));
  v2553 = *v2551 * v2552;
  v2554 = *(v2935 + v2545 + 3);
  v2555 = 12;
  if (v2548)
  {
    v2555 = 16;
  }

  v2556 = *(v2935 + v2555) - (v2554 * v2550);
  *(v2935 + v2555) = v2556;
  v2557 = *(v2935 + (v2549 + 3)) - (v2554 * v2553);
  *(v2935 + (v2549 + 3)) = v2557;
  LODWORD(v2085) = *(&v2935[1] + v2545 + 2);
  *v2551 = v2553;
  v2558 = 24;
  if (v2548)
  {
    v2558 = 28;
  }

  *(v2935 + v2558) = *(v2935 + v2558) - (*&v2085 * v2550);
  *(v2935 + (v2549 + 6)) = *(v2935 + (v2549 + 6)) - (*&v2085 * v2553);
  v2559 = fabsf(v2557);
  v2560 = fabsf(v2556);
  if (v2559 <= v2560)
  {
    v2561 = v2548;
  }

  else
  {
    v2561 = v2549;
  }

  if (v2559 <= v2560)
  {
    v2548 = v2549;
  }

  else
  {
    v2548 = v2548;
  }

  *v2080.i32 = 1.0 / *(v2935 + (v2561 + 3));
  v2562 = *(v2935 + (v2548 + 3)) * *v2080.i32;
  *(v2935 + (v2548 + 3)) = v2562;
  v2563 = *(v2935 + (v2561 + 6));
  result = &v2762;
  v2565 = (&v2762 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2545 & 3)));
  v2566 = *(v2935 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2561 & 3)));
  v2567 = *(&v2762 | (4 * v2561)) - (v2566 * *v2565);
  v2568 = *(v2935 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2548 & 3)));
  v2569 = 1.0 / (*(v2935 + (v2548 + 6)) - (v2563 * v2562));
  *&v2121 = (*(&v2762 | (4 * v2548)) - ((v2567 * v2562) + (v2568 * *v2565))) * v2569;
  v2570.f32[0] = (v2567 - (*&v2121 * v2563)) * *v2080.i32;
  v2571 = v2762.f32[v2545 + 3];
  v2572 = v2762.f32[(v2561 + 3)] - (v2571 * v2566);
  v2573 = v2762.f32[(v2548 + 3)] - ((v2571 * v2568) + (v2572 * v2562));
  v2574 = *(&v2762 + v2545 + 6);
  v2575 = v2762.f32[(v2561 + 6)] - (v2574 * v2566);
  v2576 = v2762.f32[(v2548 + 6)] - ((v2574 * v2568) + (v2575 * v2562));
  v2577.i64[0] = 0;
  v2577.i32[2] = 0;
  v2578 = vzip1q_s32(LODWORD(v2606), LODWORD(v2606));
  v2578.f32[2] = v2606;
  v2579.f32[0] = (*v2565 - ((*&v2121 * *&v2085) + (v2570.f32[0] * v2554))) * v2552;
  v2579.i32[1] = v2570.i32[0];
  v2579.i64[1] = __PAIR64__(v2579.u32[0], LODWORD(v2121));
  v2577.f32[3] = v2606;
  *&v2580 = v2573 * v2569;
  v2581.f32[0] = (v2572 - (*&v2580 * v2563)) * *v2080.i32;
  *&v2582 = (v2571 - ((*&v2580 * *&v2085) + (v2581.f32[0] * v2554))) * v2552;
  *&v2583 = v2576 * v2569;
  *v2080.i32 = (v2575 - (*&v2583 * v2563)) * *v2080.i32;
  v2584 = (v2574 - ((*&v2583 * *&v2085) + (*v2080.i32 * v2554))) * v2552;
  *&v2085 = v2584 * 0.0;
  v2585 = (*v2080.i32 + (v2604 * v2570.f32[0])) + (v2605 * v2581.f32[0]);
  v2080.i32[1] = v2583;
  *v2080.i8 = vmul_f32(*v2080.i8, 0);
  v2570.i32[1] = LODWORD(v2121);
  v2586.i64[0] = __PAIR64__(v2581.u32[0], v2582);
  v2581.i32[1] = v2580;
  v2587 = vextq_s8(vextq_s8(v2085, v2085, 4uLL), v2080, 0xCuLL);
  v2588 = vmla_n_f32(vmla_f32(*v2080.i8, 0, v2570), v2581, v2606);
  *&v2121 = (*&v2583 + (v2604 * *&v2121)) + (v2605 * *&v2580);
  v2586.i64[1] = __PAIR64__(v2582, v2580);
  v2587.i32[3] = v2587.i32[0];
  v2589 = vmlaq_f32(vmlaq_f32(v2587, v2579, v2578), v2586, v2577);
  v2590 = vdupq_lane_s32(*&v2121, 0);
  __asm { FMOV            V6.4S, #1.0 }

  *v2522 = vmulq_f32(v2589, vdivq_f32(_Q6, v2590));
  *(v2522 + 16) = vdiv_f32(v2588, *v2590.f32);
  *(v2522 + 24) = ((v2584 + (v2604 * v2579.f32[0])) + (v2605 * *&v2582)) * (1.0 / *&v2121);
  *(v2522 + 28) = v2585 * (1.0 / *&v2121);
  *(v2522 + 32) = *&v2121 * (1.0 / *&v2121);
  return result;
}

float ransac::normalise2dpts(ransac *this, float *a2, float *a3, float *a4)
{
  v7 = 0;
  v8 = 0;
  *&v183[864] = *MEMORY[0x277D85DE8];
  v9.i32[0] = *(this + 2);
  v9.i32[1] = *(this + 5);
  v9.i32[2] = *(this + 8);
  v9.i32[3] = *(this + 11);
  *v9.f32 = vand_s8(vmovn_s32(vcgtq_f32(vabsq_f32(v9), vdupq_n_s32(0x25800000u))), 0x1000100010001);
  v169 = vuzp1_s8(*v9.f32, *v9.f32).u32[0];
  while (!*(&v169 + v8))
  {
    ++v8;
LABEL_3:
    if (v8 >= 4)
    {
      goto LABEL_11;
    }
  }

  v173[v7 - 1] = v8 + 1;
  v10 = v7++ < 3;
  v11 = v10;
  if (v10)
  {
    ++v8;
  }

  if (v11)
  {
    goto LABEL_3;
  }

LABEL_11:
  v12 = v7 & ~(v7 >> 31);
  if (v7 <= 0)
  {
    v14 = v12;
    v15 = 0.0;
    v16 = 0.0 / v12;
    v17 = v16;
  }

  else
  {
    memcpy(&__dst, &__src, v7 & ~(v7 >> 31));
    if (v7 <= 7)
    {
      v13 = 0;
      goto LABEL_24;
    }

    if (v7 >= 0x20)
    {
      v13 = v7 & 0x7FFFFFE0;
      v18 = v176;
      v19 = &v175;
      v20.i64[0] = -1;
      v20.i64[1] = -1;
      v21 = v13;
      do
      {
        v22 = vaddq_s8(*v19, v20);
        v18[-1] = vaddq_s8(v19[-1], v20);
        *v18 = v22;
        v18 += 2;
        v19 += 2;
        v21 -= 32;
      }

      while (v21);
      if (v13 != v7)
      {
        if ((v7 & 0x18) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
LABEL_21:
      v23 = v13;
      v13 = v7 & 0x7FFFFFF8;
      v24 = v23 - v13;
      v25 = &v173[v23 + 3];
      v26 = &v171[v23 - 1];
      do
      {
        v27 = *v26++;
        *v25++ = vadd_s8(v27, -1);
        v24 += 8;
      }

      while (v24);
      if (v13 != v7)
      {
LABEL_24:
        v28 = v7 - v13;
        v29 = &v173[v13 + 3];
        v30 = &v171[v13 - 1];
        do
        {
          v31 = *v30++;
          *v29++ = v31 - 1;
          --v28;
        }

        while (v28);
      }
    }

    v32 = this - 12;
    v33 = this - 4;
    if (v7 == 1)
    {
      v34 = 0;
      goto LABEL_31;
    }

    v34 = v7 & 0x7FFFFFFE;
    v35 = &v175;
    v36 = v173;
    v37 = v34;
    do
    {
      v38 = *&v32[12 * *v36] / *&v33[12 * *v36];
      *(v35 - 1) = *&v32[12 * *(v36 - 1)] / *&v33[12 * *(v36 - 1)];
      *v35 = v38;
      v35 += 2;
      v36 += 2;
      v37 -= 2;
    }

    while (v37);
    if (v34 != v7)
    {
LABEL_31:
      v39 = v7 - v34;
      v40 = &v174[4 * v34 + 3];
      v41 = &v173[v34 - 1];
      do
      {
        v42 = *v41++;
        *v40++ = *&v32[12 * v42] / *&v33[12 * v42];
        --v39;
      }

      while (v39);
    }

    if (v7 == 1)
    {
      v43 = 0;
      goto LABEL_38;
    }

    v43 = v7 & 0x7FFFFFFE;
    v44 = v174;
    v45 = &v175;
    v46 = v43;
    do
    {
      v47 = *v45;
      v48 = *v44;
      *(this + 3 * *(v44 - 1)) = *(v45 - 1);
      *(this + 3 * v48) = v47;
      v44 += 2;
      v45 += 2;
      v46 -= 2;
    }

    while (v46);
    if (v43 != v7)
    {
LABEL_38:
      v49 = v7 - v43;
      v50 = &v173[v43 + 3];
      v51 = &v174[4 * v43 + 3];
      do
      {
        v52 = *v51++;
        v53 = v52;
        v54 = *v50++;
        *(this + 3 * v54) = v53;
        --v49;
      }

      while (v49);
    }

    if (v7 == 1)
    {
      v55 = 0;
      goto LABEL_45;
    }

    v55 = v7 & 0x7FFFFFFE;
    v56 = &v175;
    v57 = v173;
    v58 = v55;
    do
    {
      v59 = (this + 12 * *(v57 - 1));
      v60 = *(this + 3 * *v57 - 2) / *(this + 3 * *v57 - 1);
      *(v56 - 1) = *(v59 - 2) / *(v59 - 1);
      *v56 = v60;
      v56 += 2;
      v57 += 2;
      v58 -= 2;
    }

    while (v58);
    if (v55 != v7)
    {
LABEL_45:
      v61 = v7 - v55;
      v62 = &v174[4 * v55 + 3];
      v63 = &v173[v55 - 1];
      do
      {
        v64 = *v63++;
        *v62++ = *(this + 3 * v64 - 2) / *(this + 3 * v64 - 1);
        --v61;
      }

      while (v61);
    }

    v65 = this + 4;
    if (v7 == 1)
    {
      v66 = 0;
      goto LABEL_52;
    }

    v66 = v7 & 0x7FFFFFFE;
    v67 = v174;
    v68 = &v175;
    v69 = v66;
    do
    {
      v70 = *v68;
      v71 = *v67;
      *&v65[12 * *(v67 - 1)] = *(v68 - 1);
      *&v65[12 * v71] = v70;
      v67 += 2;
      v68 += 2;
      v69 -= 2;
    }

    while (v69);
    if (v66 != v7)
    {
LABEL_52:
      v72 = v7 - v66;
      v73 = &v173[v66 + 3];
      v74 = &v174[4 * v66 + 3];
      do
      {
        v75 = *v74++;
        v76 = v75;
        v77 = *v73++;
        *&v65[12 * v77] = v76;
        --v72;
      }

      while (v72);
    }

    if (v7 == 1)
    {
      v78 = 0;
      goto LABEL_59;
    }

    v78 = v7 & 0x7FFFFFFE;
    v79 = v171;
    v80 = v78;
    do
    {
      v81 = 12 * *v79;
      *&v33[12 * *(v79 - 1)] = 1065353216;
      *&v33[v81] = 1065353216;
      v79 += 2;
      v80 -= 2;
    }

    while (v80);
    if (v78 != v7)
    {
LABEL_59:
      v82 = v7 - v78;
      v83 = &v171[v78 - 1];
      do
      {
        v84 = *v83++;
        *&v33[12 * v84] = 1065353216;
        --v82;
      }

      while (v82);
    }

    for (i = 0; i != v7; ++i)
    {
      *(&v181 + i) = *&v32[12 * v173[i - 1]];
    }

    v86 = v181;
    v87 = v182;
    if (v7 != 1)
    {
      v88 = v7 + 1;
      v89 = v88 - 2;
      if ((v88 - 2) >= 8 && 2 * v7 + 2147483646 >= 0x80000002)
      {
        v158 = 0;
        v159 = v89 & 0xFFFFFFFFFFFFFFF8;
        v160 = 0uLL;
        v161 = LODWORD(v181);
        v162 = LODWORD(v182);
        v163 = v89 & 0xFFFFFFFFFFFFFFF8;
        v164 = 0uLL;
        do
        {
          v165 = (&v181 + (v158 >> 30));
          v166 = v165 + 2;
          v184 = vld2q_f32(v166);
          v165 += 10;
          v185 = vld2q_f32(v165);
          v161 = vaddq_f32(v184.val[0], v161);
          v160 = vaddq_f32(v185.val[0], v160);
          v162 = vaddq_f32(v184.val[1], v162);
          v164 = vaddq_f32(v185.val[1], v164);
          v158 += 0x1000000000;
          v163 -= 8;
        }

        while (v163);
        v167 = vaddq_f32(v160, v161);
        v86 = vaddv_f32(*&vpaddq_f32(v167, v167));
        v168 = vaddq_f32(v164, v162);
        v87 = vaddv_f32(*&vpaddq_f32(v168, v168));
        if (v89 != v159)
        {
          v90 = v159 | 2;
          goto LABEL_67;
        }
      }

      else
      {
        v90 = 2;
LABEL_67:
        v91 = v88 - v90;
        v92 = 2 * v90 - 1;
        v93 = (v90 << 33) - 0x200000000;
        do
        {
          v86 = *(&v181 + (v93 >> 30)) + v86;
          v87 = *(&v181 + v92) + v87;
          v92 += 2;
          v93 += 0x200000000;
          --v91;
        }

        while (v91);
      }
    }

    v94 = 0;
    v14 = v12;
    v16 = v86 / v12;
    v95 = &v182;
    v17 = v87 / v12;
    do
    {
      v96 = v94;
      if (v7 == 1)
      {
        v96 = 0;
      }

      v97 = 3 * v173[v96 - 1];
      v98 = *(this + v97 - 2) - v17;
      *(v95 - 1) = *&v32[4 * v97] - v16;
      *v95 = v98;
      ++v94;
      v95 += 2;
    }

    while (v7 != v94);
    if (v7 > 8)
    {
      v100 = v7 & 7;
      if (!v100)
      {
        v100 = 8;
      }

      v99 = v7 - v100;
      v101 = v179;
      v102 = v183;
      v103 = v99;
      do
      {
        v104 = v102 - 8;
        v105 = vld2q_f32(v104);
        v106 = vld2q_f32(v102);
        v101[-1] = vmulq_f32(v105, v105);
        *v101 = vmulq_f32(v106, v106);
        v101 += 2;
        v102 += 16;
        v103 -= 8;
      }

      while (v103);
    }

    else
    {
      v99 = 0;
    }

    v107 = &v181 + 2 * v99;
    do
    {
      v108 = *v107;
      v107 += 2;
      v178[v99++] = v108 * v108;
    }

    while (v7 != v99);
    if (v7 > 8)
    {
      v110 = v7 & 7;
      if (!v110)
      {
        v110 = 8;
      }

      v109 = v7 - v110;
      v111 = v177;
      v112 = &v183[4];
      v113 = v109;
      do
      {
        v114 = v112 - 8;
        v115 = vld2q_f32(v114);
        v116 = vld2q_f32(v112);
        v111[-1] = vmulq_f32(v115, v115);
        *v111 = vmulq_f32(v116, v116);
        v111 += 2;
        v112 += 16;
        v113 -= 8;
      }

      while (v113);
    }

    else
    {
      v109 = 0;
    }

    v117 = v7 - v109;
    v118 = &v176[4 * v109 + 4];
    v119 = &v181 + 2 * v109 + 1;
    do
    {
      v120 = *v119;
      v119 += 2;
      *v118++ = v120 * v120;
      --v117;
    }

    while (v117);
    if (v7 <= 7)
    {
      v121 = 0;
      goto LABEL_94;
    }

    v121 = v7 & 0x7FFFFFF8;
    v122 = v179;
    v123 = v177;
    v124 = v121;
    do
    {
      v125 = vaddq_f32(*v122, *v123);
      v122[-1] = vaddq_f32(v122[-1], v123[-1]);
      *v122 = v125;
      v122 += 2;
      v123 += 2;
      v124 -= 8;
    }

    while (v124);
    if (v121 != v7)
    {
LABEL_94:
      v126 = v7 - v121;
      v127 = 4 * v121;
      v128 = &v178[v121];
      v129 = &v176[v127 + 4];
      do
      {
        v130 = *v129++;
        *v128 = *v128 + v130;
        ++v128;
        --v126;
      }

      while (v126);
    }

    if (v7 <= 7)
    {
      v131 = 0;
      goto LABEL_101;
    }

    v131 = v7 & 0x7FFFFFF8;
    v132 = v179;
    v133 = v131;
    do
    {
      v134 = vsqrtq_f32(*v132);
      v132[-1] = vsqrtq_f32(v132[-1]);
      *v132 = v134;
      v132 += 2;
      v133 -= 8;
    }

    while (v133);
    if (v131 != v7)
    {
LABEL_101:
      v135 = v7 - v131;
      v136 = &v178[v131];
      do
      {
        *v136 = sqrtf(*v136);
        ++v136;
        --v135;
      }

      while (v135);
    }

    v15 = v178[0];
    if (v7 != 1)
    {
      v137 = v7 + 1;
      v138 = v137 - 2;
      if ((v137 - 2) >= 8)
      {
        v140 = v138 & 0xFFFFFFFFFFFFFFF8;
        v141 = 0uLL;
        v142 = LODWORD(v178[0]);
        v143 = &v180;
        v144 = v138 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v142 = vaddq_f32(v143[-1], v142);
          v141 = vaddq_f32(*v143, v141);
          v143 += 2;
          v144 -= 8;
        }

        while (v144);
        v145 = vaddq_f32(v141, v142);
        v15 = vaddv_f32(*&vpaddq_f32(v145, v145));
        if (v138 != v140)
        {
          v139 = v140 | 2;
          goto LABEL_110;
        }
      }

      else
      {
        v139 = 2;
LABEL_110:
        v146 = v137 - v139;
        v147 = &v178[v139 - 1];
        do
        {
          v148 = *v147++;
          v15 = v148 + v15;
          --v146;
        }

        while (v146);
      }
    }
  }

  v149 = (v14 * 1.4142) / v15;
  *a3 = v149;
  v150 = -(v149 * v16);
  a3[4] = v149;
  a3[6] = v150;
  a3[7] = -(v149 * v17);
  *(a3 + 1) = 0;
  a3[1] = 0.0;
  a3[5] = 0.0;
  a3[8] = 1.0;
  *a2 = (*this * v149) + (*(this + 2) * v150);
  a2[3] = (*(this + 3) * v149) + (*(this + 5) * v150);
  a2[6] = (*(this + 6) * v149) + (*(this + 8) * v150);
  a2[9] = (*(this + 9) * v149) + (*(this + 11) * v150);
  v151 = a3[1];
  v152 = a3[4];
  v153 = a3[7];
  a2[1] = ((*this * v151) + (*(this + 1) * v152)) + (*(this + 2) * v153);
  a2[4] = ((*(this + 3) * v151) + (*(this + 4) * v152)) + (*(this + 5) * v153);
  a2[7] = ((*(this + 6) * v151) + (*(this + 7) * v152)) + (*(this + 8) * v153);
  a2[10] = ((*(this + 9) * v151) + (*(this + 10) * v152)) + (*(this + 11) * v153);
  v154 = a3[2];
  v155 = a3[5];
  v156 = a3[8];
  a2[2] = ((*this * v154) + (*(this + 1) * v155)) + (*(this + 2) * v156);
  a2[5] = ((*(this + 3) * v154) + (*(this + 4) * v155)) + (*(this + 5) * v156);
  a2[8] = ((*(this + 6) * v154) + (*(this + 7) * v155)) + (*(this + 8) * v156);
  result = ((*(this + 9) * v154) + (*(this + 10) * v155)) + (*(this + 11) * v156);
  a2[11] = result;
  return result;
}

char *binary_expand_op(char *result, unsigned int *a2, const int *a3, const int *a4, float *a5, const int *a6, unsigned int a7, double a8, double a9, float32x4_t a10)
{
  v102[166] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (a6 == 1)
  {
    v11 = *a2;
  }

  else
  {
    v11 = a6;
  }

  if (a7 == 1)
  {
    v12 = a4;
  }

  else
  {
    v12 = a7;
  }

  if (v12 < 1 || v11 < 1)
  {
    *a2 = v11;
    a2[1] = v12;
    return result;
  }

  v14 = result;
  v15 = a7 != 1;
  if (v10 != 1)
  {
    if (a6 == 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v102;
      __asm { FMOV            V1.4S, #1.0 }

      while (1)
      {
        a10.f32[0] = a5[v34];
        v42 = (a3[v33] - 1) * v10;
        if (v11 >= 8)
        {
          LODWORD(v44) = vdivq_f32(_Q1, a10).u32[0];
          v45 = &v14[v42 + 4];
          v46 = v36;
          v47 = v10 & 0x7FFFFFF8;
          do
          {
            v48 = vmulq_n_f32(*v45, v44);
            v46[-1] = vmulq_n_f32(v45[-1], v44);
            *v46 = v48;
            v46 += 2;
            v45 += 2;
            v47 -= 8;
          }

          while (v47);
          v43 = v10 & 0x7FFFFFF8;
          if (v43 == v10)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = 0;
        }

        v49 = v10 - v43;
        v50 = &v100[4 * v43 + 4 * v32];
        v51 = &v14[v43 + v42];
        v52 = 1.0 / a10.f32[0];
        do
        {
          v53 = *v51++;
          *v50++ = v53 * v52;
          --v49;
        }

        while (v49);
LABEL_28:
        v34 += v15;
        v33 += a4 != 1;
        ++v35;
        v36 = (v36 + 4 * v10);
        v32 += v10;
        if (v35 == v12)
        {
          goto LABEL_23;
        }
      }
    }

    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = a4 != 1;
    v78 = a6;
    v79 = a6 & 0x7FFFFFF8;
    v80 = v102;
    v81 = 4 * a6;
    v82 = v15 * a6;
    v83 = a5 + 4;
    v84 = 4 * v82;
    while (1)
    {
      v85 = (a3[v75] - 1) * v10;
      if (v11 >= 8)
      {
        v87 = v83;
        v88 = v80;
        v89 = v79;
        v90 = &result[4 * v85 + 16];
        do
        {
          v91 = vdivq_f32(*v90, *v87);
          v88[-1] = vdivq_f32(v90[-1], v87[-1]);
          *v88 = v91;
          v90 += 2;
          v88 += 2;
          v87 += 2;
          v89 -= 8;
        }

        while (v89);
        v86 = v79;
        if (v79 == v78)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v86 = 0;
      }

      v92 = v78 - v86;
      v93 = &v100[4 * v86 + 4 * v74];
      v94 = 4 * v86;
      v95 = &a5[v86];
      v96 = &result[4 * v85 + v94];
      do
      {
        v97 = *v96++;
        v98 = v97;
        v99 = *v95++;
        *v93++ = v98 / v99;
        --v92;
      }

      while (v92);
LABEL_48:
      v75 += v77;
      ++v76;
      v80 = (v80 + v81);
      v83 = (v83 + v84);
      v74 += v78;
      a5 = (a5 + v84);
      if (v76 == v12)
      {
        goto LABEL_23;
      }
    }
  }

  if (a6 != 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = a4 != 1;
    v58 = a6;
    v59 = a6 & 0x7FFFFFF8;
    v60 = v102;
    v61 = 4 * a6;
    v62 = a5 + 4;
    v63 = 4 * v15 * a6;
    while (1)
    {
      LODWORD(a8) = v14[a3[v55] - 1];
      if (v11 >= 8)
      {
        v65 = vdupq_lane_s32(*&a8, 0);
        v66 = v62;
        v67 = v60;
        v68 = v59;
        do
        {
          v69 = vdivq_f32(v65, *v66);
          v67[-1] = vdivq_f32(v65, v66[-1]);
          *v67 = v69;
          v67 += 2;
          v66 += 2;
          v68 -= 8;
        }

        while (v68);
        v64 = v59;
        if (v59 == v58)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v64 = 0;
      }

      v70 = v58 - v64;
      v71 = &v100[4 * v64 + 4 * v54];
      v72 = &a5[v64];
      do
      {
        v73 = *v72++;
        *v71++ = *&a8 / v73;
        --v70;
      }

      while (v70);
LABEL_38:
      v55 += v57;
      ++v56;
      v60 = (v60 + v61);
      v62 = (v62 + v63);
      v54 += v58;
      a5 = (a5 + v63);
      if (v56 == v12)
      {
        goto LABEL_23;
      }
    }
  }

  v16 = 0;
  v17 = a4 != 1;
  v18 = result - 4;
  if (v12 < 2)
  {
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    goto LABEL_21;
  }

  if (a7 == 1)
  {
    goto LABEL_21;
  }

  v16 = v12 & 0x7FFFFFFE;
  v19 = &v101;
  v20 = a5;
  v21 = a3;
  v22 = v16;
  do
  {
    v23 = *&v18[4 * v21[v17]] / v20[v15];
    *(v19 - 1) = *&v18[4 * *v21] / *v20;
    *v19 = v23;
    v21 += 2;
    v20 += 2;
    v19 += 2;
    v22 -= 2;
  }

  while (v22);
  if (v16 != v12)
  {
LABEL_21:
    v24 = &a3[v16];
    v25 = 4 * v17;
    v26 = &a5[v16];
    v27 = 4 * v15;
    v28 = v12 - v16;
    v29 = &v100[4 * v16];
    do
    {
      *v29++ = *&v18[4 * *v24] / *v26;
      v24 = (v24 + v25);
      v26 = (v26 + v27);
      --v28;
    }

    while (v28);
  }

LABEL_23:
  v30 = 0;
  *a2 = v11;
  a2[1] = v12;
  v31 = 4 * v11;
  do
  {
    result = memcpy(v14 + v30, &v100[v30], v31);
    v30 += v31;
    --v12;
  }

  while (v12);
  return result;
}

void coder::internal::b_svd(coder::internal *this, const double *a2, const int *a3, double *a4, int *a5, double *a6, int *a7, double *a8, float a9)
{
  v9 = MEMORY[0x28223BE20](this, a2, a3, a9);
  v11 = v10;
  v13 = v12;
  v528 = v14;
  v540 = v15;
  v545 = v16;
  v18 = v17;
  v593[2013] = *MEMORY[0x277D85DE8];
  v19 = *v17;
  v20 = v19;
  if (v19 >= 1)
  {
    memcpy(__dst, v9, 72 * v19);
  }

  if (v19 >= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v19;
  }

  if (v19 >= 9)
  {
    v22 = 9;
  }

  else
  {
    v22 = v19;
  }

  *v13 = v22;
  bzero(__src, 8 * v21 + 8);
  v585 = 0.0;
  v583 = 0u;
  v584 = 0u;
  v581 = 0u;
  v582 = 0u;
  v23 = *v18;
  if (v23 >= 1)
  {
    bzero(v587, 8 * v23);
  }

  *v540 = v23;
  v24 = *v13;
  v540[1] = *v13;
  v25 = v24 * *v18;
  if (v25 >= 1)
  {
    bzero(v545, 8 * v25);
  }

  v534 = v13;
  bzero(v11, 0x288uLL);
  v26 = *v18;
  if (!*v18)
  {
    *v11 = 0x3FF0000000000000;
    v11[10] = 0x3FF0000000000000;
    v11[20] = 0x3FF0000000000000;
    v11[30] = 0x3FF0000000000000;
    v11[40] = 0x3FF0000000000000;
    v11[50] = 0x3FF0000000000000;
    v11[60] = 0x3FF0000000000000;
    v11[70] = 0x3FF0000000000000;
    v11[80] = 0x3FF0000000000000;
    goto LABEL_454;
  }

  if (v26 >= 10)
  {
    v27 = 10;
  }

  else
  {
    v27 = *v18;
  }

  v529 = v27;
  v28 = v27 - 1;
  v533 = *v18;
  if (v26 >= 7)
  {
    LODWORD(v29) = 7;
  }

  else
  {
    LODWORD(v29) = *v18;
  }

  v531 = v29;
  v530 = v28;
  if (v26 <= 7)
  {
    v29 = v29;
  }

  else
  {
    v29 = v28;
  }

  v538 = v29;
  v30 = v545;
  if (v29 >= 1)
  {
    v563 = 0;
    v579 = 0;
    v31 = 0;
    v32 = (v19 + 1);
    v535 = v32 - 2;
    v33 = 8 * v19;
    v575 = &v592;
    v559 = v545 + 16;
    v561 = v32 - 1;
    v34 = v19 - 1;
    v551 = v591;
    v553 = v593;
    v35 = v589;
    v36 = &v588;
    v37 = 1;
    v38 = 2;
    v570 = -1;
    v564 = 8;
    v557 = v545;
    v572 = __dst;
    v39 = v19;
    v555 = v19 + 1;
    v40 = 1;
    v541 = v32;
    do
    {
      v566 = v37;
      v568 = v35;
      v41 = v31;
      v42 = v40;
      v43 = 8 * v40;
      v44 = &v591[v43];
      v45 = (v19 + ~v31);
      v46 = v19 - v31;
      v47 = v32 * v31;
      v549 = v42;
      if (v31 < v530)
      {
        if (v46 >= 1)
        {
          v48 = v47 + 1;
          if (v46 == 1)
          {
            v49 = fabs(*&v589[8 * v48 + 1760]);
            if (v49 > 0.0)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v105 = v46 + v48;
            v106 = 0.0;
            v107 = 3.31216864e-170;
            do
            {
              v108 = fabs(*&v589[8 * v48 + 1760]);
              v109 = v106 + v108 / v107 * (v108 / v107);
              v106 = v107 / v108 * (v107 / v108) * v106 + 1.0;
              if (v108 <= v107)
              {
                v106 = v109;
              }

              else
              {
                v107 = v108;
              }

              ++v48;
            }

            while (v48 < v105);
            v49 = sqrt(v106) * v107;
            if (v49 > 0.0)
            {
LABEL_97:
              v110 = (v34 + 1) & 0x1FFFFFFFCLL;
              v111 = v45 + 1;
              if (*&__dst[8 * v47] >= 0.0)
              {
                v112 = v49;
              }

              else
              {
                v112 = -v49;
              }

              v113 = v47 + v19 - v31;
              if (v49 >= 1.00208418e-292)
              {
                if (v47 < v113)
                {
                  v121 = v42;
                  if (v45 >= 3)
                  {
                    v122 = v111 & 0x1FFFFFFFCLL;
                    v123 = &v591[v43];
                    v124 = 1.0 / v112;
                    do
                    {
                      v125 = vmulq_n_f64(*v123, v124);
                      v123[-1] = vmulq_n_f64(v123[-1], v124);
                      *v123 = v125;
                      v123 += 2;
                      v110 -= 4;
                    }

                    while (v110);
                    if (v111 == v122)
                    {
                      goto LABEL_118;
                    }

                    v121 = v122 + v42;
                  }

                  v126 = v555 - v121;
                  v127 = &v589[8 * v121 + 1760];
                  do
                  {
                    *v127 = *v127 * (1.0 / v112);
                    ++v127;
                    --v126;
                  }

                  while (v126);
                }
              }

              else if (v47 < v113)
              {
                v114 = v42;
                if (v45 < 3)
                {
LABEL_107:
                  v119 = v555 - v114;
                  v120 = &v589[8 * v114 + 1760];
                  do
                  {
                    *v120 = *v120 * (1.0 / v112);
                    ++v120;
                    --v119;
                  }

                  while (v119);
                }

                else
                {
                  v115 = v111 & 0x1FFFFFFFCLL;
                  v116 = &v591[v43];
                  v117 = 1.0 / v112;
                  do
                  {
                    v118 = vmulq_n_f64(*v116, v117);
                    v116[-1] = vmulq_n_f64(v116[-1], v117);
                    *v116 = v118;
                    v116 += 2;
                    v110 -= 4;
                  }

                  while (v110);
                  if (v111 != v115)
                  {
                    v114 = v115 + v42;
                    goto LABEL_107;
                  }
                }
              }

LABEL_118:
              v50 = 0;
              *&__dst[8 * v47] = *&__dst[8 * v47] + 1.0;
              __src[v31] = -v112;
              goto LABEL_33;
            }
          }
        }

        __src[v31] = 0.0;
      }

      v50 = 1;
LABEL_33:
      v580 = v38;
      v543 = v38 - 1;
      v546 = 8 * v31;
      if (v31 <= 7)
      {
        v51 = 0;
        v52 = &v589[v43 + 1760];
        v53 = &v572[v33 * v543];
        v54 = (v575 + v33 * v543);
        v55 = v580;
        v56 = &__dst[v43 + 8 * v19 - 8 - v546];
        v57 = &__dst[v33 * v580];
        if (v46 < 1)
        {
          v50 = 1;
        }

        v58 = v46 & 0x7FFFFFFFFFFFFFFCLL;
        while (2)
        {
          if (v50)
          {
            goto LABEL_37;
          }

          if (v46 < 4)
          {
            v59 = 0;
            v60 = 0.0;
            goto LABEL_44;
          }

          v61 = 0uLL;
          v62 = v54;
          v63 = v44;
          v64 = v39 & 0x7FFFFFFFFFFFFFFCLL;
          v65 = 0uLL;
          do
          {
            v61 = vmlaq_f64(v61, v63[-1], v62[-1]);
            v65 = vmlaq_f64(v65, *v63, *v62);
            v63 += 2;
            v62 += 2;
            v64 -= 4;
          }

          while (v64);
          v60 = vaddvq_f64(vaddq_f64(v65, v61));
          v59 = v46 & 0x7FFFFFFFFFFFFFFCLL;
          if (v46 != v58)
          {
            do
            {
LABEL_44:
              v60 = v60 + *&v53[8 * v59] * *&v52[8 * v59];
              ++v59;
            }

            while (v39 != v59);
          }

          v66 = -v60 / *&__dst[8 * v47];
          if (v66 != 0.0)
          {
            if (v46 >= 4)
            {
              if (&__dst[v546 + v33 * v543 + v33 * v51] >= v56 || v52 >= &v57[v33 * v51])
              {
                v68 = vdupq_lane_s64(*&v66, 0);
                v69 = v54;
                v70 = v44;
                v71 = v39 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v72 = vmlaq_f64(*v69, v68, *v70);
                  v69[-1] = vmlaq_f64(v69[-1], v68, v70[-1]);
                  *v69 = v72;
                  v70 += 2;
                  v69 += 2;
                  v71 -= 4;
                }

                while (v71);
                v67 = v46 & 0x7FFFFFFFFFFFFFFCLL;
                if (v46 == v58)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                v67 = 0;
              }
            }

            else
            {
              v67 = 0;
            }

            do
            {
              *&v53[8 * v67] = *&v53[8 * v67] + *&v52[8 * v67] * v66;
              ++v67;
            }

            while (v39 != v67);
          }

LABEL_37:
          *(&v581 + v55 - 1) = *&__dst[8 * v41 + 8 * (v55 - 1) * v19];
          ++v55;
          ++v51;
          v54 = (v54 + v33);
          v53 += v33;
          if (v55 == 10)
          {
            break;
          }

          continue;
        }
      }

      v73 = ~v41;
      LODWORD(v32) = v541;
      v75 = v566;
      v74 = v568;
      if (v41 < v530 && v19 > v41)
      {
        v76 = v73 + v541;
        v77 = *v540;
        v78 = v566;
        if (v73 + v541 <= 5)
        {
          goto LABEL_59;
        }

        v78 = v566;
        if (v47 + v535 - v41 < v47)
        {
          goto LABEL_59;
        }

        v78 = v566;
        if ((v535 - v41) >> 32)
        {
          goto LABEL_59;
        }

        v98 = v561 & 0xFFFFFFFFFFFFFFFCLL;
        v99 = v76 & 0xFFFFFFFFFFFFFFFCLL;
        v100 = &v557[v579 * v77];
        v101 = &v559[v579 * v77];
        v102 = v563;
        do
        {
          v103 = &__dst[8 * v102];
          v104 = v103[1];
          *v100 = *v103;
          v100 += 32;
          *v101 = v104;
          v101 += 32;
          v102 += 4;
          v98 -= 4;
        }

        while (v98);
        if (v76 != v99)
        {
          v78 = v566 + v99;
LABEL_59:
          v79 = v541 - v78;
          v80 = &v545[8 * v78 - 8 + v579 * v77];
          v81 = v570 + v78;
          do
          {
            *v80 = *&__dst[8 * v81];
            v80 += 8;
            ++v81;
            --v79;
          }

          while (v79);
        }
      }

      v31 = v41 + 1;
      if (v41 >= v531)
      {
        goto LABEL_25;
      }

      v82 = *(&v580 + v41 + 2);
      v83 = fabs(v82);
      v84 = v83 * 3.01916994e169 * (v83 * 3.01916994e169);
      if (v83 <= 3.31216864e-170)
      {
        v83 = 3.31216864e-170;
      }

      else
      {
        v84 = 1.0;
      }

      if (v41 <= 6)
      {
        v85 = fabs(*(&v582 + v41));
        v86 = v83 / v85 * (v83 / v85) * v84 + 1.0;
        v84 = v84 + v85 / v83 * (v85 / v83);
        if (v85 > v83)
        {
          v84 = v86;
          v83 = v85;
        }

        if (v41 != 6)
        {
          v87 = fabs(*(&v582 + v41 + 1));
          v88 = v83 / v87 * (v83 / v87) * v84 + 1.0;
          v84 = v84 + v87 / v83 * (v87 / v83);
          if (v87 > v83)
          {
            v84 = v88;
            v83 = v87;
          }

          if (v41 <= 4)
          {
            v89 = fabs(*(&v583 + v41));
            v90 = v83 / v89 * (v83 / v89) * v84 + 1.0;
            v84 = v84 + v89 / v83 * (v89 / v83);
            if (v89 > v83)
            {
              v84 = v90;
              v83 = v89;
            }

            if (v41 != 4)
            {
              v91 = fabs(*(&v583 + v41 + 1));
              v92 = v83 / v91 * (v83 / v91) * v84 + 1.0;
              v84 = v84 + v91 / v83 * (v91 / v83);
              if (v91 > v83)
              {
                v84 = v92;
                v83 = v91;
              }

              if (v41 <= 2)
              {
                v93 = fabs(*(&v584 + v41));
                v94 = v83 / v93 * (v83 / v93) * v84 + 1.0;
                v84 = v84 + v93 / v83 * (v93 / v83);
                if (v93 > v83)
                {
                  v84 = v94;
                  v83 = v93;
                }

                if (v41 != 2)
                {
                  v95 = fabs(*(&v584 + v41 + 1));
                  v96 = v83 / v95 * (v83 / v95) * v84 + 1.0;
                  v84 = v84 + v95 / v83 * (v95 / v83);
                  if (v95 > v83)
                  {
                    v84 = v96;
                    v83 = v95;
                  }

                  if (!v41)
                  {
                    v97 = fabs(v585);
                    if (v97 <= v83)
                    {
                      v84 = v84 + v97 / v83 * (v97 / v83);
                    }

                    else
                    {
                      v84 = v83 / v97 * (v83 / v97) * v84 + 1.0;
                      v83 = v97;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v128 = v83 * sqrt(v84);
      if (v128 == 0.0)
      {
        *(&v581 + v41) = 0;
LABEL_146:
        if (v41 <= 7)
        {
          v149 = v31;
          memcpy(v11 + ((80 * v41 + 16) & 0x7FFFFFFF0) - 8, &v581 + v546 + 8, ((56 - v546) & 0x7FFFFFFF8) + 8);
          v31 = v149;
          v75 = v566;
          v74 = v568;
          LODWORD(v32) = v541;
          v30 = v545;
        }

        goto LABEL_25;
      }

      v129 = v564 & 0xC;
      v130 = (&v581 + 8 * v38 + 8);
      v131 = 8 - v41;
      if (v82 >= 0.0)
      {
        v132 = v128;
      }

      else
      {
        v132 = -v128;
      }

      *(&v581 + v41) = v132;
      if (fabs(v128) >= 1.00208418e-292)
      {
        if (v41 <= 7)
        {
          v141 = v580;
          if (v131 > 3)
          {
            v142 = v131 & 0xC;
            v143 = 1.0 / v132;
            do
            {
              v144 = vmulq_n_f64(*v130, v143);
              v130[-1] = vmulq_n_f64(v130[-1], v143);
              *v130 = v144;
              v130 += 2;
              v129 -= 4;
            }

            while (v129);
            if (v131 == v142)
            {
              goto LABEL_145;
            }

            v141 = v142 + v580;
          }

          v145 = v141 + 1;
          v146 = (&v580 + v141);
          v147 = 1.0 / v132;
          do
          {
            *v146 = *v146 * v147;
            ++v146;
            v140 = v145++ == 10;
          }

          while (!v140);
        }
      }

      else if (v41 <= 7)
      {
        v133 = v580;
        if (v131 > 3)
        {
          v134 = v131 & 0xC;
          v135 = 1.0 / v132;
          do
          {
            v136 = vmulq_n_f64(*v130, v135);
            v130[-1] = vmulq_n_f64(v130[-1], v135);
            *v130 = v136;
            v130 += 2;
            v129 -= 4;
          }

          while (v129);
          if (v131 == v134)
          {
            goto LABEL_145;
          }

          v133 = v134 + v580;
        }

        v137 = v133 + 1;
        v138 = (&v580 + v133);
        v139 = 1.0 / v132;
        do
        {
          *v138 = *v138 * v139;
          ++v138;
          v140 = v137++ == 10;
        }

        while (!v140);
      }

LABEL_145:
      v148 = *(&v581 + v31) + 1.0;
      *(&v581 + v31) = v148;
      *(&v581 + v41) = -*(&v581 + v41);
      if ((v41 + 2) > v19)
      {
        goto LABEL_146;
      }

      v532 = ~v41;
      bzero(&v587[8 * v31], 8 * v45);
      v31 = v41 + 1;
      v75 = v566;
      v74 = v568;
      LODWORD(v32) = v541;
      v30 = v545;
      if (v41 <= 7)
      {
        v150 = &v551[v33 * v543];
        v151 = (v553 + v33 * v543);
        v152 = v532 + v19;
        v153 = (v532 + v19) & 0xFFFFFFFFFFFFFFFCLL;
        v154 = v150;
        v155 = v151;
        v156 = v580;
        while (2)
        {
          if (v46 >= 2)
          {
            v157 = *(&v581 + v156 - 1);
            if (*&v157 != 0.0)
            {
              if (v152 < 4)
              {
                v158 = 0;
                goto LABEL_158;
              }

              v159 = vdupq_lane_s64(v157, 0);
              v160 = v568;
              v161 = v155;
              v162 = v34 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v163 = vmlaq_f64(*v160, v159, *v161);
                v160[-1] = vmlaq_f64(v160[-1], v159, v161[-1]);
                *v160 = v163;
                v161 += 2;
                v160 += 2;
                v162 -= 4;
              }

              while (v162);
              v158 = (v532 + v19) & 0xFFFFFFFFFFFFFFFCLL;
              if (v152 != v153)
              {
                do
                {
LABEL_158:
                  *&v36[v158] = *&v36[v158] + *&v154[8 * v158] * *&v157;
                  ++v158;
                }

                while (v34 != v158);
              }
            }
          }

          ++v156;
          v155 = (v155 + v33);
          v154 += v33;
          if (v156 != 10)
          {
            continue;
          }

          break;
        }

        v164 = v580;
        while (2)
        {
          if (v46 >= 2)
          {
            v165 = -(*(&v581 + v164 - 1) * (1.0 / v148));
            if (v165 != 0.0)
            {
              if (v152 < 4)
              {
                v166 = 0;
                goto LABEL_169;
              }

              v167 = vdupq_lane_s64(*&v165, 0);
              v168 = v151;
              v169 = v568;
              v170 = v34 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v171 = vmlaq_f64(*v168, v167, *v169);
                v168[-1] = vmlaq_f64(v168[-1], v167, v169[-1]);
                *v168 = v171;
                v169 += 2;
                v168 += 2;
                v170 -= 4;
              }

              while (v170);
              v166 = (v532 + v19) & 0xFFFFFFFFFFFFFFFCLL;
              if (v152 != v153)
              {
                do
                {
LABEL_169:
                  *&v150[8 * v166] = *&v150[8 * v166] + *&v36[v166] * v165;
                  ++v166;
                }

                while (v34 != v166);
              }
            }
          }

          ++v164;
          v151 = (v151 + v33);
          v150 += v33;
          if (v164 == 10)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

LABEL_25:
      v40 = v549 + v32;
      v555 += v19;
      v38 = v580 + 1;
      v37 = v75 + 1;
      --v34;
      --v39;
      v572 += 8;
      ++v575;
      v557 += 8;
      v579 += 8;
      v559 += 8;
      --v561;
      v563 += v32;
      v570 += v19;
      --v564;
      v35 = &v74->f64[1];
      ++v36;
      v551 += 8;
      ++v553;
    }

    while (v31 != v538);
  }

  if (v533 >= 8)
  {
    v172 = 8;
  }

  else
  {
    v172 = v533;
  }

  v579 = v172;
  if (v533 >= 10 || (__src[v530] = *&__dst[8 * (v530 + v530 * v533)], v533 == 9) || (__src[v172] = 0.0, v533 >= 8))
  {
    *(&v581 + v531) = *&__dst[8 * v531 + 8 * v172 * v533];
  }

  v580 = v172;
  *(&v581 + v172) = 0;
  v569 = *v13;
  if (v569 >= v529)
  {
    v173 = *v540;
    if (v19 > 0)
    {
      v174 = v569 - v529 + 1;
      v175 = &v30[8 * (v529 - 1) * v173 - 8 + 8 * v529];
      v176 = v173 * v530;
      do
      {
        bzero(&v30[8 * v176], 8 * v19);
        v30 = v545;
        *v175 = 0x3FF0000000000000;
        v175 += 8 * v173 + 8;
        v176 += v173;
        --v174;
      }

      while (v174);
      goto LABEL_188;
    }

    v177 = v529;
    v178 = *v13;
    v179 = (v569 - v529);
    if (v569 == v529)
    {
      goto LABEL_185;
    }

    v515 = v173 * v530;
    if (v173 >= 0)
    {
      v516 = *v540;
    }

    else
    {
      v516 = -v173;
    }

    v517 = v516 * v179;
    v518 = v515 + v517 < v515;
    v519 = v515 - v517 > v515;
    if (v173 >= 0)
    {
      v519 = v518;
    }

    if (v519)
    {
LABEL_185:
      v180 = v529;
      goto LABEL_186;
    }

    v180 = v529;
    if ((v517 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_186:
      v181 = &v30[8 * (v180 - 1) * v173 - 8 + 8 * v177];
      v182 = v178 - v177 + 1;
      do
      {
        *v181 = 0x3FF0000000000000;
        v181 += 8 * v173 + 8;
        --v182;
      }

      while (v182);
      goto LABEL_188;
    }

    v520 = v179 + 1;
    v521 = (v179 + 1) & 0x1FFFFFFFELL;
    v522 = v173 * v529;
    v523 = 2 * v173;
    v524 = v173 * v530;
    v525 = &v30[8 * v529];
    v526 = v525 - 8;
    v527 = v521;
    do
    {
      *&v526[8 * v524] = 0x3FF0000000000000;
      *&v525[8 * v522] = 0x3FF0000000000000;
      v522 += v523;
      v524 += v523;
      v525 += 16;
      v526 += 16;
      v527 -= 2;
    }

    while (v527);
    if (v520 != v521)
    {
      v177 = v521 + v529;
      v180 = v529 + v521;
      v178 = v569;
      goto LABEL_186;
    }
  }

LABEL_188:
  v183 = v569;
  if (v533 >= 2)
  {
    v184 = 0;
    v552 = 8 * v19;
    v185 = v530;
    v186 = v19 - v530 + 1;
    v187 = 8 * v19;
    v188 = (8 * v19 + 8) * v530;
    v573 = (8 * v19) ^ 0xFFFFFFFFFFFFFFF8;
    v189 = 8 * v530;
    v550 = -8 * v19;
    v548 = v529 + v19 * (v529 - 2) - 1;
    v571 = ~v19;
    v547 = &v30[v188 - 8];
    v542 = &v30[8 * v19 - v189];
    v544 = &v30[(v189 + 8) * v19];
    if (v530 <= 1)
    {
      v190 = 1;
    }

    else
    {
      v190 = v530;
    }

    v565 = v19 - v530 + 1;
    v567 = v190;
    v562 = 8 * v19;
    v191 = v529 + v19 * (v529 - 2) - 1;
    v539 = v30 + 8;
    v192 = &v30[v188 + 8];
    v560 = v30 - 8;
    v193 = &v30[v188 - 8];
    v194 = v189 - 8;
    v195 = &v30[v189 - 8];
    v196 = &v30[v189 + 8];
    v536 = v11;
    v537 = v19;
    while (1)
    {
      v197 = v185 - 1;
      v198 = v185 + v20 * (v185 - 1) - 1;
      if (__src[v185 - 1] == 0.0)
      {
        if (v20 >= 1)
        {
          v247 = &v30[8 * v197 * *v540];
          v577 = v194;
          v556 = v185 - 1;
          v558 = v193;
          v248 = v191;
          v249 = v192;
          v554 = v196;
          v250 = v195;
          v251 = v185 + v20 * (v185 - 1) - 1;
          bzero(v247, v552);
          v198 = v251;
          v195 = v250;
          v192 = v249;
          v196 = v554;
          v197 = v556;
          v191 = v248;
          v193 = v558;
          v194 = v577;
          v183 = v569;
          v30 = v545;
        }

        *&v30[8 * v198] = 0x3FF0000000000000;
        goto LABEL_194;
      }

      v576 = v185 + v20 * (v185 - 1) - 1;
      v199 = v186 & 0xFFFFFFFFFFFFFFFCLL;
      v200 = v565 + v184;
      if (v185 < v183 && ((v19 - v185) & 0x8000000000000000) == 0)
      {
        v201 = 8 * v191;
        v202 = &v560[v201];
        v203 = &v539[v201];
        v204 = 8 * (v548 + v184 * v571);
        v205 = v200 & 0xFFFFFFFFFFFFFFFCLL;
        v207 = v547 + v573 * v184 < &v542[8 * v184 + v204] && &v560[v204] < &v544[v550 * v184 + v187 * (v569 - v529 + v184)] || v19 < 0;
        v209 = v207 || v200 < 4;
        v210 = v193;
        v211 = v192;
        v212 = v185;
        while (v200 >= 4)
        {
          v215 = 0uLL;
          v216 = v211;
          v217 = v203;
          v218 = v186 & 0xFFFFFFFFFFFFFFFCLL;
          v219 = 0uLL;
          do
          {
            v215 = vmlaq_f64(v215, v217[-1], v216[-1]);
            v219 = vmlaq_f64(v219, *v217, *v216);
            v217 += 2;
            v216 += 2;
            v218 -= 4;
          }

          while (v218);
          v214 = vaddvq_f64(vaddq_f64(v219, v215));
          v213 = v200 & 0xFFFFFFFFFFFFFFFCLL;
          if (v200 != v205)
          {
            goto LABEL_217;
          }

LABEL_218:
          v220 = -v214 / *&v30[8 * v576];
          if (v220 != 0.0)
          {
            if (v209)
            {
              v221 = 0;
            }

            else
            {
              v222 = vdupq_lane_s64(*&v220, 0);
              v223 = v211;
              v224 = v203;
              v225 = v186 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v226 = vmlaq_f64(*v223, v222, *v224);
                v223[-1] = vmlaq_f64(v223[-1], v222, v224[-1]);
                *v223 = v226;
                v224 += 2;
                v223 += 2;
                v225 -= 4;
              }

              while (v225);
              v221 = v200 & 0xFFFFFFFFFFFFFFFCLL;
              if (v200 == v205)
              {
                goto LABEL_211;
              }
            }

            do
            {
              *(v210 + 8 * v221) = *(v210 + 8 * v221) + *&v202[8 * v221] * v220;
              ++v221;
            }

            while (v186 != v221);
          }

LABEL_211:
          ++v212;
          v211 = (v211 + v187);
          v210 += v187;
          if (v183 == v212)
          {
            goto LABEL_226;
          }
        }

        v213 = 0;
        v214 = 0.0;
        do
        {
LABEL_217:
          v214 = v214 + *(v210 + 8 * v213) * *&v202[8 * v213];
          ++v213;
        }

        while (v186 != v213);
        goto LABEL_218;
      }

LABEL_226:
      if (v19 >= v185)
      {
        v227 = *v540;
        v228 = v185;
        if (v200 < 4)
        {
          goto LABEL_232;
        }

        v229 = v200 & 0xFFFFFFFFFFFFFFFCLL;
        v230 = &v195[v194 * v227];
        v231 = &v196[v194 * v227];
        do
        {
          v232 = vnegq_f64(*v231);
          *v230 = vnegq_f64(*v230);
          v230 += 2;
          *v231 = v232;
          v231 += 2;
          v199 -= 4;
        }

        while (v199);
        if (v200 != v229)
        {
          break;
        }
      }

LABEL_237:
      *&v30[8 * v576] = *&v30[8 * v576] + 1.0;
      if (v185 < 2)
      {
        goto LABEL_241;
      }

      v236 = 8 * ((v529 - 2) - v184);
      v237 = &v30[8 * v197 * *v540];
      v238 = v184;
      v239 = v19;
      v240 = v194;
      v241 = v193;
      v242 = v191;
      v243 = v185 - 1;
      v244 = v192;
      v245 = v196;
      v246 = v195;
      bzero(v237, v236);
      v195 = v246;
      v196 = v245;
      v192 = v244;
      v197 = v243;
      v191 = v242;
      v193 = v241;
      v194 = v240;
      v19 = v239;
      v184 = v238;
      v11 = v536;
      v20 = v537;
      v187 = v562;
      v183 = v569;
      v30 = v545;
LABEL_194:
      ++v184;
      ++v186;
      v191 += v571;
      v192 += v573;
      v193 += v573;
      v195 -= 8;
      v194 -= 8;
      v196 -= 8;
      v185 = v197;
      if (v184 == v567)
      {
        goto LABEL_241;
      }
    }

    v228 = v185 + v229;
LABEL_232:
    if (v228 <= v19)
    {
      v233 = v19;
    }

    else
    {
      v233 = v228;
    }

    v234 = v233 - v228 + 1;
    v235 = &v560[8 * v228 + v194 * v227];
    do
    {
      *v235 = -*v235;
      ++v235;
      --v234;
    }

    while (v234);
    goto LABEL_237;
  }

LABEL_241:
  v252 = 0;
  v253 = (v11 + 83);
  v254 = (v11 + 92);
  v255 = v11 + 90;
  v256 = 10;
  v257 = 8;
  v258 = v11 + 81;
  do
  {
    v260 = v257;
    if (v257 < v531 && *(&v581 + v257) != 0.0)
    {
      v261 = &v11[-10 * v252];
      v262 = (10 * v257) | 1;
      v264 = v261 + 90 < &v11[-9 * v252 + 81] && v261 < v11;
      if (v252 >= 4)
      {
        v271 = 4 * (v252 >> 2);
        v272 = &v255[v271];
        v273 = &v258[v271];
        v274 = v252 & 0x7FFFFFFFFFFFFFFCLL;
        v275 = v255;
        v276 = v254;
        v277 = v256;
        do
        {
          v279 = 0uLL;
          v280 = v276;
          v281 = v253;
          v282 = 4 * (v252 >> 2);
          v283 = 0uLL;
          do
          {
            v279 = vmlaq_f64(v279, v281[-1], v280[-1]);
            v283 = vmlaq_f64(v283, *v281, *v280);
            v281 += 2;
            v280 += 2;
            v282 -= 4;
          }

          while (v282);
          v284 = vaddvq_f64(vaddq_f64(v283, v279));
          if (v252 != v274)
          {
            v285 = v273;
            v286 = v272;
            v287 = v252 - 4 * (v252 >> 2);
            do
            {
              v288 = *v285++;
              v289 = v288;
              v290 = *v286++;
              v284 = v284 + v290 * v289;
              --v287;
            }

            while (v287);
          }

          v278 = -v284 / *&v11[v262];
          if (v278 != 0.0)
          {
            v291 = 0;
            if (v264)
            {
              goto LABEL_470;
            }

            v292 = vdupq_lane_s64(*&v278, 0);
            v293 = 4 * (v252 >> 2);
            do
            {
              v294 = (v276 + v291);
              v295 = vmlaq_f64(*(v276 + v291), v292, *(v253 + v291));
              v294[-1] = vmlaq_f64(*(v276 + v291 - 16), v292, *(v258 + v291));
              *v294 = v295;
              v291 += 32;
              v293 -= 4;
            }

            while (v293);
            v291 = v252 & 0x7FFFFFFFFFFFFFFCLL;
            if (v252 != v274)
            {
LABEL_470:
              do
              {
                *&v275[v291] = *&v275[v291] + *&v258[v291] * v278;
                ++v291;
              }

              while (v252 != v291);
            }
          }

          ++v277;
          v276 = (v276 + 72);
          v272 += 9;
          v275 += 9;
        }

        while (v277 != 10);
      }

      else
      {
        v265 = v255;
        v266 = v256;
        do
        {
          v267 = 0;
          v268 = 0.0;
          do
          {
            v268 = v268 + *&v265[v267] * *&v258[v267];
            ++v267;
          }

          while (v252 != v267);
          v269 = -v268 / *&v11[v262];
          if (v269 != 0.0)
          {
            v270 = 0;
            do
            {
              *&v265[v270] = *&v265[v270] + *&v258[v270] * v269;
              ++v270;
            }

            while (v252 != v270);
          }

          ++v266;
          v265 += 9;
        }

        while (v266 != 10);
      }
    }

    v259 = &v11[9 * v260];
    v259[8] = 0;
    *(v259 + 2) = 0uLL;
    *(v259 + 3) = 0uLL;
    *v259 = 0uLL;
    *(v259 + 1) = 0uLL;
    v11[10 * v260] = 0x3FF0000000000000;
    v257 = v260 - 1;
    --v256;
    ++v252;
    v253 -= 5;
    v254 -= 5;
    v255 -= 10;
    v258 -= 10;
  }

  while (v260);
  v296 = v545;
  if ((v533 & 0x80000000) == 0)
  {
    v297 = 0;
    v298 = 0;
    v299 = v579;
    v300 = v580;
    v301 = (v579 + 1);
    v302 = 0.0;
    v303 = 9;
    v304 = v19;
    while (1)
    {
      v305 = v297;
      v306 = v298;
      v307 = v298 + 1;
      if (v304 <= v307)
      {
        v308 = v298 + 1;
      }

      else
      {
        v308 = v304;
      }

      if (++v297 * v19 <= v307)
      {
        v309 = v298 + 1;
      }

      else
      {
        v309 = v297 * v19;
      }

      v310 = __src[v305];
      if (v310 == 0.0)
      {
        goto LABEL_295;
      }

      v311 = fabs(v310);
      __src[v305] = v311;
      v312 = v310 / v311;
      if (v305 < v300)
      {
        *(&v581 + v305) = *(&v581 + v305) / v312;
      }

      if (v305 < v19)
      {
        v313 = v309 - v298;
        v314 = v298;
        if (v313 >= 4)
        {
          v315 = (v308 - v298) & 0xFFFFFFFFFFFFFFFCLL;
          v316 = &v545[8 * v298 + 16];
          v317 = v313 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v318 = vmulq_n_f64(*v316, v312);
            v316[-1] = vmulq_n_f64(v316[-1], v312);
            *v316 = v318;
            v316 += 2;
            v315 -= 4;
          }

          while (v315);
          if (v313 == v317)
          {
            goto LABEL_294;
          }

          v314 = v317 + v306;
        }

        do
        {
          *&v545[8 * v314] = *&v545[8 * v314] * v312;
          ++v314;
        }

        while (v314 < v297 * v19);
      }

LABEL_294:
      v310 = v311;
LABEL_295:
      v319 = *(&v581 + v305);
      if (v305 < v300 && v319 != 0.0)
      {
        v320 = fabs(v319);
        *(&v581 + v305) = v320;
        v321 = v320 / v319;
        __src[v297] = __src[v297] * v321;
        v322 = v303;
        *&v11[v322] = vmulq_n_f64(*&v11[v303], v321);
        *&v11[v322 + 2] = vmulq_n_f64(*&v11[v303 + 2], v321);
        *&v11[v322 + 4] = vmulq_n_f64(*&v11[v303 + 4], v321);
        *&v11[v322 + 6] = vmulq_n_f64(*&v11[v303 + 6], v321);
        *&v11[v322 + 8] = *&v11[v303 + 8] * v321;
        v319 = v320;
      }

      v302 = fmax(v302, fmax(fabs(v310), fabs(v319)));
      v298 = v306 + v19;
      v303 += 9;
      v304 += v19;
      if (v297 == v301)
      {
        v323 = 0;
        v324 = v302 * 2.22044605e-16;
        v325 = 8 * v19;
        v574 = &v545[8 * v20];
        v326 = &v574[(8 * v300 - 8) * v19];
        v327 = v20 & 0x7FFFFFFE;
        v328 = v545 + 16;
        v329 = v299;
        v578 = &v545[8 * v20 + 8 * v300 * v19];
        while (1)
        {
          if (!v329)
          {
            v331 = 0;
            v332 = __src[0];
            if (__src[0] >= 0.0)
            {
              goto LABEL_328;
            }

            goto LABEL_318;
          }

          v330 = v329 + 1;
          v331 = v329;
          v332 = __src[v329];
          v333 = v329;
          v334 = v332;
          while (1)
          {
            v335 = v333 - 1;
            v336 = fabs(*(&v580 + v333));
            v337 = fabs(v334);
            v334 = __src[v333 - 1];
            v338 = (v337 + fabs(v334)) * 2.22044605e-16;
            v339 = v336 > v324 || v323 < 21;
            v340 = v339;
            v341 = v336 > 1.00208418e-292 && v336 > v338;
            if (!v341 || !v340)
            {
              break;
            }

            --v333;
            if (!v335)
            {
              goto LABEL_350;
            }
          }

          *(&v581 + v335) = 0;
          if (v333 == v329)
          {
            break;
          }

LABEL_350:
          if (v330 >= v333)
          {
            LODWORD(v446) = v329 + 1;
            while (v446 != v333)
            {
              v383 = v446;
              v452 = 0.0;
              if (v446 <= v329)
              {
                v452 = fabs(*(&v581 + v446 - 1));
              }

              if (v446 > v333 + 1)
              {
                v452 = fabs(*(&v579 + v446)) + v452;
              }

              v446 = v446 - 1;
              v447 = fabs(__src[v446]);
              v448 = fmax(v452 * 2.22044605e-16, 1.00208418e-292);
              v449 = v448 < v447;
              if (v448 >= v447)
              {
                v450 = 0.0;
              }

              else
              {
                v450 = __src[v446];
              }

              __src[v446] = v450;
              if (v449)
              {
                v451 = v446 < v333;
              }

              else
              {
                LODWORD(v446) = v383;
                v451 = 1;
              }

              if (v451)
              {
                goto LABEL_352;
              }
            }

LABEL_353:
            v384 = __src[v329 - 1];
            v385 = *(&v581 + v329 - 1);
            v386 = __src[v329];
            v387 = __src[v333];
            v388 = *(&v581 + v333);
            v389 = fmax(fmax(fmax(fmax(fabs(v386), fabs(v384)), fabs(v385)), fabs(v387)), fabs(v388));
            v390 = v386 * (1.0 / v389);
            v391 = v385 * (1.0 / v389);
            v392 = (v391 * v391 + (v384 * (1.0 / v389) + v390) * (v384 * (1.0 / v389) - v390)) * 0.5;
            v393 = v390 * v391 * (v390 * v391);
            if (v393 != 0.0 || (v394 = 0.0, v392 != 0.0))
            {
              v395 = sqrt(v393 + v392 * v392);
              if (v392 < 0.0)
              {
                v395 = -v395;
              }

              v394 = v393 / (v395 + v392);
            }

            v396 = v387 * (1.0 / v389);
            v397 = v394 + (v396 + v390) * (v396 - v390);
            if (v333 < v329)
            {
              v398 = v333;
              v399 = v396 * v388 / v389;
              v400 = v333 + 1;
              v401 = v333 + 1;
              v402 = &v296[v325 * v400];
              v403 = 8 * v333 + 8 * (v329 + ~v333);
              v404 = &v296[v325 * v398];
              v406 = v402 < &v574[v403 * v19] && v404 < &v574[(v403 + 8) * v19];
              v407 = v19 < 2 || v406;
              while (1)
              {
                v408 = fabs(v397);
                v409 = fabs(v399);
                if (v408 + v409 == 0.0)
                {
                  break;
                }

                if (v408 <= v409)
                {
                  v432 = v399;
                }

                else
                {
                  v432 = v397;
                }

                v411 = sqrt(v409 / (v408 + v409) * (v409 / (v408 + v409)) + v408 / (v408 + v409) * (v408 / (v408 + v409))) * (v408 + v409);
                if (v432 < 0.0)
                {
                  v411 = -v411;
                }

                v410 = v397 / v411;
                v412 = v399 / v411;
                if (v400 > v401)
                {
                  goto LABEL_369;
                }

LABEL_370:
                v413 = -(v387 * v412 - v388 * v410);
                *(&v581 + v400 - 1) = v413;
                v414 = __src[v400];
                v415 = v414 * v412;
                v416 = &v11[9 * v400];
                v417 = *(v416 - 72);
                v418 = v416[1];
                v419 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v417, v412)), *v416, v410);
                *(v416 - 72) = vmlaq_n_f64(vmulq_n_f64(*v416, v412), v417, v410);
                v420 = *(v416 - 56);
                *v416 = v419;
                v416[1] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v420, v412)), v418, v410);
                *(v416 - 56) = vmlaq_n_f64(vmulq_n_f64(v418, v412), v420, v410);
                v421 = *(v416 - 40);
                v422 = v416[2];
                v423 = v416[3];
                v424 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v421, v412)), v422, v410);
                *(v416 - 40) = vmlaq_n_f64(vmulq_n_f64(v422, v412), v421, v410);
                v425 = *(v416 - 24);
                v416[2] = v424;
                v416[3] = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v425, v412)), v423, v410);
                *(v416 - 24) = vmlaq_n_f64(vmulq_n_f64(v423, v412), v425, v410);
                v425.f64[0] = v416[4].f64[0];
                v424.f64[0] = v416[-1].f64[1];
                v416[4].f64[0] = -(v424.f64[0] * v412 - v425.f64[0] * v410);
                v416[-1].f64[1] = v425.f64[0] * v412 + v424.f64[0] * v410;
                v426 = v388 * v412 + v387 * v410;
                v427 = fabs(v426);
                v428 = fabs(v415);
                if (v428 + v427 == 0.0)
                {
                  v429 = 1.0;
                  v430 = 0.0;
                  v431 = 0.0;
                }

                else
                {
                  if (v427 <= v428)
                  {
                    v433 = v415;
                  }

                  else
                  {
                    v433 = v426;
                  }

                  v434 = sqrt(v428 / (v428 + v427) * (v428 / (v428 + v427)) + v427 / (v428 + v427) * (v427 / (v428 + v427))) * (v428 + v427);
                  v430 = -v434;
                  if (v433 >= 0.0)
                  {
                    v430 = v434;
                  }

                  v429 = v426 / v430;
                  v431 = v415 / v430;
                }

                v435 = v414 * v410;
                __src[v400 - 1] = v430;
                v387 = -(v431 * v413 - v435 * v429);
                __src[v400] = v387;
                v436 = *(&v581 + v400);
                v388 = v436 * v429;
                *(&v581 + v400) = v436 * v429;
                if (v19 < 1 || v400 >= v19)
                {
                  goto LABEL_366;
                }

                if (v407)
                {
                  v437 = 0;
                }

                else
                {
                  v438 = vdupq_lane_s64(*&v429, 0);
                  v439 = vdupq_lane_s64(*&v431, 0);
                  v440 = v404;
                  v441 = v402;
                  v442 = v20 & 0x7FFFFFFE;
                  do
                  {
                    v443 = vmlaq_f64(vmulq_n_f64(*v440, v429), v439, *v441);
                    *v441 = vmlaq_f64(vnegq_f64(vmulq_n_f64(*v440, v431)), v438, *v441);
                    ++v441;
                    *v440++ = v443;
                    v442 -= 2;
                  }

                  while (v442);
                  v437 = v20 & 0x7FFFFFFE;
                  if (v327 == v20)
                  {
                    goto LABEL_366;
                  }
                }

                do
                {
                  v444 = *(v404 + 8 * v437);
                  v445 = v402->f64[v437];
                  v402->f64[v437] = -(v444 * v431 - v445 * v429);
                  *(v404 + 8 * v437++) = v444 * v429 + v445 * v431;
                }

                while (v20 != v437);
LABEL_366:
                v397 = v429 * v413 + v435 * v431;
                v399 = v436 * v431;
                ++v400;
                v402 = (v402 + v325);
                v404 += v325;
                if (v330 == v400)
                {
                  goto LABEL_394;
                }
              }

              v410 = 1.0;
              v411 = 0.0;
              v412 = 0.0;
              if (v400 <= v401)
              {
                goto LABEL_370;
              }

LABEL_369:
              *(&v579 + v400) = v411;
              goto LABEL_370;
            }

LABEL_394:
            *(&v581 + v329 - 1) = v397;
            ++v323;
            v296 = v545;
            goto LABEL_395;
          }

          v383 = v329 + 1;
LABEL_352:
          if (v383 == v333)
          {
            goto LABEL_353;
          }

          if (v383 == v330)
          {
            v453 = &v581 + v329;
            v454 = *(v453 - 1);
            *(v453 - 1) = 0.0;
            if (v329 > v333)
            {
              v455 = 9 * v329 + 1;
              v456 = &v11[v455 - 1];
              v457 = &v11[9 * v329 - 4];
              do
              {
                v476 = __src[v331 - 1];
                v477 = fabs(v476);
                v478 = fabs(v454);
                if (v477 + v478 == 0.0)
                {
                  v479 = 1.0;
                  v480 = 0.0;
                  v454 = 0.0;
                  v481 = 0.0;
                }

                else
                {
                  if (v477 <= v478)
                  {
                    v482 = v454;
                  }

                  else
                  {
                    v482 = __src[v331 - 1];
                  }

                  v483 = sqrt(v478 / (v477 + v478) * (v478 / (v477 + v478)) + v477 / (v477 + v478) * (v477 / (v477 + v478))) * (v477 + v478);
                  v480 = -v483;
                  if (v482 >= 0.0)
                  {
                    v480 = v483;
                  }

                  v207 = v477 <= v478;
                  v479 = v476 / v480;
                  v481 = v454 / v480;
                  if (v207)
                  {
                    if (v479 == 0.0)
                    {
                      v454 = 1.0;
                    }

                    else
                    {
                      v454 = 1.0 / v479;
                    }
                  }

                  else
                  {
                    v454 = v454 / v480;
                  }
                }

                __src[v331 - 1] = v480;
                if (v331 > v333 + 1)
                {
                  v484 = *(&v579 + v331);
                  v454 = -(v481 * v484);
                  *(&v579 + v331) = v484 * v479;
                }

                --v331;
                v458 = *v456;
                v459 = *(v457 - 5);
                *v456 = -(v459 * v481 - *v456 * v479);
                *(v457 - 5) = v458 * v481 + v459 * v479;
                v460 = *&v11[v455];
                v461 = *(v457 - 4);
                *&v11[v455] = -(v461 * v481 - v460 * v479);
                *(v457 - 4) = v460 * v481 + v461 * v479;
                v462 = v456[2];
                v463 = *(v457 - 3);
                v456[2] = -(v463 * v481 - v462 * v479);
                *(v457 - 3) = v462 * v481 + v463 * v479;
                v464 = v456[3];
                v465 = *(v457 - 2);
                v456[3] = -(v465 * v481 - v464 * v479);
                *(v457 - 2) = v464 * v481 + v465 * v479;
                v466 = v456[4];
                v467 = *(v457 - 1);
                v456[4] = -(v467 * v481 - v466 * v479);
                *(v457 - 1) = v466 * v481 + v467 * v479;
                v468 = v456[5];
                v469 = *v457;
                v456[5] = -(*v457 * v481 - v468 * v479);
                *v457 = v468 * v481 + v469 * v479;
                v470 = v456[6];
                v471 = v457[1];
                v456[6] = -(v471 * v481 - v470 * v479);
                v457[1] = v470 * v481 + v471 * v479;
                v472 = v456[7];
                v473 = v457[2];
                v456[7] = -(v473 * v481 - v472 * v479);
                v457[2] = v472 * v481 + v473 * v479;
                v474 = v456[8];
                v475 = v457[3];
                v456[8] = -(v475 * v481 - v474 * v479);
                v457[3] = v474 * v481 + v475 * v479;
                v457 -= 9;
              }

              while (v331 > v333);
            }

            goto LABEL_395;
          }

          v485 = v383 - 1;
          v486 = *(&v581 + v485);
          *(&v581 + v485) = 0;
          v487 = (v329 - v383);
          if (v329 >= v383)
          {
            v488 = 8 * v485 * v20;
            v489 = &v296[v488];
            v490 = v383;
            v491 = &v574[v488];
            v492 = &v296[v325 * v490];
            v494 = v489 < &v574[8 * (v490 + v487) * v19] && v492 < v491;
            v495 = v19 == 1 || v494;
            do
            {
              v496 = __src[v490];
              v497 = fabs(v496);
              v498 = fabs(v486);
              if (v497 + v498 == 0.0)
              {
                v499 = 1.0;
                v500 = 0.0;
                v501 = 0.0;
              }

              else
              {
                if (v497 <= v498)
                {
                  v502 = v486;
                }

                else
                {
                  v502 = __src[v490];
                }

                v503 = sqrt(v498 / (v497 + v498) * (v498 / (v497 + v498)) + v497 / (v497 + v498) * (v497 / (v497 + v498))) * (v497 + v498);
                v500 = -v503;
                if (v502 >= 0.0)
                {
                  v500 = v503;
                }

                v499 = v496 / v500;
                v501 = v486 / v500;
              }

              __src[v490] = v500;
              v504 = *(&v581 + v490);
              *(&v581 + v490) = v504 * v499;
              if (v20 < 1)
              {
                goto LABEL_437;
              }

              if (v495)
              {
                v505 = 0;
              }

              else
              {
                v506 = vdupq_lane_s64(*&v499, 0);
                v507 = vdupq_lane_s64(*&v501, 0);
                v508 = v492;
                v509 = v489;
                v510 = v20 & 0x7FFFFFFE;
                do
                {
                  v511 = vmlaq_f64(vmulq_n_f64(*v508, v499), v507, *v509);
                  *v509 = vmlaq_f64(vnegq_f64(vmulq_n_f64(*v508, v501)), v506, *v509);
                  ++v509;
                  *v508++ = v511;
                  v510 -= 2;
                }

                while (v510);
                v505 = v20 & 0x7FFFFFFE;
                if (v327 == v20)
                {
                  goto LABEL_437;
                }
              }

              do
              {
                v512 = v492->f64[v505];
                v513 = *(v489 + 8 * v505);
                *(v489 + 8 * v505) = -(v512 * v501 - v513 * v499);
                v492->f64[v505++] = v512 * v499 + v513 * v501;
              }

              while (v20 != v505);
LABEL_437:
              ++v490;
              v486 = -(v501 * v504);
              v492 = (v492 + v325);
            }

            while (v330 != v490);
          }

LABEL_395:
          if (v329 < 0 || v323 >= 75)
          {
            goto LABEL_454;
          }
        }

        if (v332 >= 0.0)
        {
          goto LABEL_328;
        }

LABEL_318:
        v332 = -v332;
        __src[v331] = v332;
        v342 = 9 * v329;
        v343 = 9 * v329 + 8;
        v344 = v343 - v342 + 1;
        if (v344 < 4)
        {
LABEL_323:
          if (v342 <= v343)
          {
            v349 = 9 * v329 + 8;
          }

          else
          {
            v349 = v342;
          }

          v350 = v349 - v342 + 1;
          v351 = &v11[v342];
          do
          {
            *v351 = -*v351;
            ++v351;
            --v350;
          }

          while (v350);
        }

        else
        {
          v345 = v344 & 0xFFFFFFFFFFFFFFFCLL;
          v346 = &v11[v342 + 2];
          v347 = v344 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v348 = vnegq_f64(*v346);
            v346[-1] = vnegq_f64(v346[-1]);
            *v346 = v348;
            v346 += 2;
            v347 -= 4;
          }

          while (v347);
          if (v344 != v345)
          {
            v342 += v345;
            goto LABEL_323;
          }
        }

LABEL_328:
        if (v329 >= v579)
        {
LABEL_348:
          v323 = 0;
          --v329;
          goto LABEL_395;
        }

        v353 = &v296[v325 * v331] < v578 && &v296[v325 * (v331 + 1)] < v326;
        v354 = v20 < 4 || v353;
        v355 = &v328[v325 * v331];
        v356 = v325 * (v331 + 1);
        v357 = &v328[v356];
        v358 = &v296[v356];
        v359 = &v296[v325 * v331];
        while (2)
        {
          v360 = v331++;
          v361 = __src[v331];
          if (v332 >= v361)
          {
            goto LABEL_348;
          }

          __src[v360] = v361;
          v362 = &v11[9 * v331];
          v363 = *(v362 + 1);
          v364 = &v11[9 * v360];
          v365 = *v364;
          v366 = *(v364 + 1);
          *v364 = *v362;
          *(v364 + 1) = v363;
          *v362 = v365;
          *(v362 + 1) = v366;
          v367 = *(v362 + 3);
          v368 = *(v364 + 2);
          v369 = *(v364 + 3);
          *(v364 + 2) = *(v362 + 2);
          *(v364 + 3) = v367;
          __src[v331] = v332;
          *(v362 + 2) = v368;
          *(v362 + 3) = v369;
          v370 = v364[8];
          v364[8] = v362[8];
          v362[8] = v370;
          if (v20 >= 1 && v331 < v19)
          {
            if (v354)
            {
              v371 = 0;
              goto LABEL_345;
            }

            v372 = v357;
            v373 = v355;
            v374 = v20 & 0x7FFFFFFC;
            do
            {
              v375 = *(v373 - 1);
              v376 = *v373;
              v377 = *v372;
              *(v373 - 1) = *(v372 - 1);
              *v373 = v377;
              *(v372 - 1) = v375;
              *v372 = v376;
              v373 += 32;
              v372 += 32;
              v374 -= 4;
            }

            while (v374);
            v371 = v20 & 0x7FFFFFFC;
            if (v371 != v20)
            {
LABEL_345:
              v378 = v20 - v371;
              v379 = 8 * v371;
              v380 = &v358[8 * v371];
              v381 = &v359[v379];
              do
              {
                v382 = *v381;
                *v381++ = *v380;
                *v380 = v382;
                v380 += 8;
                --v378;
              }

              while (v378);
            }
          }

          v355 += v325;
          v357 += v325;
          v358 += v325;
          v359 += v325;
          if (v331 == v580)
          {
            goto LABEL_348;
          }

          continue;
        }
      }
    }
  }

LABEL_454:
  v514 = *v534;
  if (v514 >= 1)
  {
    memcpy(v528, __src, 8 * v514);
  }
}

void *utils::local_sum(utils *this, const float *a2, float *a3)
{
  bzero(&utils::local_sum(float const*,float *)::B, 0x2438uLL);
  bzero(&utils::local_sum(float const*,float *)::B + 61976, 0x2438uLL);
  v5 = &utils::local_sum(float const*,float *)::B + 2439;
  v6 = 108;
  do
  {
    *(v5 - 121) = 0u;
    *(v5 - 18) = 0u;
    *(v5 - 117) = 0u;
    *(v5 - 14) = 0u;
    *(v5 - 113) = 0u;
    *(v5 - 10) = 0u;
    *(v5 - 109) = 0u;
    *(v5 - 6) = 0u;
    *(v5 - 105) = 0;
    *(v5 - 1) = 0;
    *(v5 - 103) = 0;
    *v5 = 0;
    result = memcpy(v5 - 102, this, 0x150uLL);
    this = (this + 336);
    v5 += 122;
    --v6;
  }

  while (v6);
  v8 = 0;
  v9 = &utils::local_sum(float const*,float *)::B;
  do
  {
    v10 = *(&utils::local_sum(float const*,float *)::B + 122 * v8);
    for (i = 4; i != 488; i += 4)
    {
      v10 = *(v9 + i) + v10;
      *(v9 + i) = v10;
    }

    ++v8;
    v9 = (v9 + 488);
  }

  while (v8 != 146);
  v12 = &unk_27D1911E0;
  v13 = 146;
  v14 = &unk_27D17FBB0;
  do
  {
    v15 = vsubq_f32(*(v14 - 148), *(v14 - 14));
    v12[-13] = vsubq_f32(*(v14 - 164), *(v14 - 15));
    v12[-12] = v15;
    v16 = vsubq_f32(*(v14 - 116), *(v14 - 12));
    v12[-11] = vsubq_f32(*(v14 - 132), *(v14 - 13));
    v12[-10] = v16;
    v17 = vsubq_f32(*(v14 - 84), *(v14 - 10));
    v12[-9] = vsubq_f32(*(v14 - 100), *(v14 - 11));
    v12[-8] = v17;
    v18 = vsubq_f32(*(v14 - 52), *(v14 - 8));
    v12[-7] = vsubq_f32(*(v14 - 68), *(v14 - 9));
    v12[-6] = v18;
    v19 = vsubq_f32(*(v14 - 20), *(v14 - 6));
    v12[-5] = vsubq_f32(*(v14 - 36), *(v14 - 7));
    v12[-4] = v19;
    v20 = vsubq_f32(*(v14 + 12), *(v14 - 4));
    v12[-3] = vsubq_f32(*(v14 - 4), *(v14 - 5));
    v12[-2] = v20;
    v21 = vsubq_f32(*(v14 + 44), *(v14 - 2));
    v12[-1] = vsubq_f32(*(v14 + 28), *(v14 - 3));
    *v12 = v21;
    v22 = vsubq_f32(*(v14 + 76), *v14);
    v12[1] = vsubq_f32(*(v14 + 60), *(v14 - 1));
    v12[2] = v22;
    v23 = vsubq_f32(*(v14 + 108), *(v14 + 2));
    v12[3] = vsubq_f32(*(v14 + 92), *(v14 + 1));
    v12[4] = v23;
    v24 = *(v14 + 140);
    v25 = vsubq_f32(v24, *(v14 + 4));
    v12[5] = vsubq_f32(*(v14 + 124), *(v14 + 3));
    v12[6] = v25;
    v26 = *(v14 + 156);
    v27 = vsubq_f32(*(v14 + 172), *(v14 + 6));
    v12[7] = vsubq_f32(v26, *(v14 + 5));
    v12[8] = v27;
    v28 = vsubq_f32(*(v14 + 204), *(v14 + 8));
    v12[9] = vsubq_f32(*(v14 + 188), *(v14 + 7));
    v12[10] = v28;
    v29 = vsubq_f32(*(v14 + 220), vextq_s8(v24, v26, 4uLL));
    *v26.f32 = vsub_f32(*(v14 + 236), vext_s8(*v26.f32, *&vextq_s8(v26, v26, 8uLL), 4uLL));
    v12[11] = v29;
    v12[12].i64[0] = v26.i64[0];
    v12 = (v12 + 408);
    v14 += 488;
    --v13;
  }

  while (v13);
  v30 = &utils::local_sum(float const*,float *)::c;
  v31 = 145;
  v32 = &utils::local_sum(float const*,float *)::c;
  do
  {
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v36 = v32[3];
    v37 = v32[4];
    v38 = v32[5];
    v39 = v32[6];
    v40 = v32[7];
    v41 = v32[8];
    v42 = v32[9];
    v43 = v32[10];
    v44 = v32[11];
    v45 = v32[12];
    v46 = v32[13];
    v47 = v32[14];
    v48 = v32[15];
    v49 = v32[16];
    v50 = v32[17];
    v51 = v32[18];
    v52 = v32[19];
    v53 = v32[20];
    v54 = v32[21];
    v55 = v32[22];
    v56 = v32[23];
    v57 = v32[24];
    *(v32 + 101) = vadd_f32(*(v32 + 808), v32[25]);
    v32 = (v32 + 408);
    v58 = v32[1];
    *v32 = vaddq_f32(*v32, v33);
    v32[1] = vaddq_f32(v58, v34);
    v59 = vaddq_f32(*(v32 + 3), v36);
    v32[2] = vaddq_f32(*(v32 + 2), v35);
    v32[3] = v59;
    v60 = vaddq_f32(*(v32 + 5), v38);
    v32[4] = vaddq_f32(*(v32 + 4), v37);
    v32[5] = v60;
    v61 = vaddq_f32(*(v32 + 7), v40);
    v32[6] = vaddq_f32(*(v32 + 6), v39);
    v32[7] = v61;
    v62 = vaddq_f32(*(v32 + 9), v42);
    v32[8] = vaddq_f32(*(v32 + 8), v41);
    v32[9] = v62;
    v63 = vaddq_f32(*(v32 + 11), v44);
    v32[10] = vaddq_f32(*(v32 + 10), v43);
    v32[11] = v63;
    v64 = vaddq_f32(*(v32 + 13), v46);
    v32[12] = vaddq_f32(*(v32 + 12), v45);
    v32[13] = v64;
    v65 = vaddq_f32(*(v32 + 15), v48);
    v32[14] = vaddq_f32(*(v32 + 14), v47);
    v32[15] = v65;
    v66 = vaddq_f32(*(v32 + 17), v50);
    v32[16] = vaddq_f32(*(v32 + 16), v49);
    v32[17] = v66;
    v67 = vaddq_f32(*(v32 + 19), v52);
    v32[18] = vaddq_f32(*(v32 + 18), v51);
    v32[19] = v67;
    v68 = vaddq_f32(*(v32 + 21), v54);
    v32[20] = vaddq_f32(*(v32 + 20), v53);
    v32[21] = v68;
    v69 = vaddq_f32(*(v32 + 23), v56);
    v70 = vaddq_f32(*(v32 + 24), v57);
    v32[22] = vaddq_f32(*(v32 + 22), v55);
    v32[23] = v69;
    v32[24] = v70;
    --v31;
  }

  while (v31);
  v71 = (&utils::local_sum(float const*,float *)::c + 7752);
  v72 = (a2 + 52);
  v73 = 126;
  do
  {
    v74 = vsubq_f32(v71[1], *(v30 + 1));
    *(v72 - 13) = vsubq_f32(*v71, *v30);
    *(v72 - 12) = v74;
    v75 = vsubq_f32(v71[3], *(v30 + 3));
    *(v72 - 11) = vsubq_f32(v71[2], *(v30 + 2));
    *(v72 - 10) = v75;
    v76 = vsubq_f32(v71[5], *(v30 + 5));
    *(v72 - 9) = vsubq_f32(v71[4], *(v30 + 4));
    *(v72 - 8) = v76;
    v77 = vsubq_f32(v71[7], *(v30 + 7));
    *(v72 - 7) = vsubq_f32(v71[6], *(v30 + 6));
    *(v72 - 6) = v77;
    v78 = vsubq_f32(v71[9], *(v30 + 9));
    *(v72 - 5) = vsubq_f32(v71[8], *(v30 + 8));
    *(v72 - 4) = v78;
    v79 = vsubq_f32(v71[11], *(v30 + 11));
    *(v72 - 3) = vsubq_f32(v71[10], *(v30 + 10));
    *(v72 - 2) = v79;
    v80 = vsubq_f32(v71[13], *(v30 + 13));
    *(v72 - 1) = vsubq_f32(v71[12], *(v30 + 12));
    *v72 = v80;
    v81 = vsubq_f32(v71[15], *(v30 + 15));
    *(v72 + 1) = vsubq_f32(v71[14], *(v30 + 14));
    *(v72 + 2) = v81;
    v82 = vsubq_f32(v71[17], *(v30 + 17));
    *(v72 + 3) = vsubq_f32(v71[16], *(v30 + 16));
    *(v72 + 4) = v82;
    v83 = vsubq_f32(v71[19], *(v30 + 19));
    *(v72 + 5) = vsubq_f32(v71[18], *(v30 + 18));
    *(v72 + 6) = v83;
    v84 = vsubq_f32(v71[21], *(v30 + 21));
    *(v72 + 7) = vsubq_f32(v71[20], *(v30 + 20));
    *(v72 + 8) = v84;
    v85 = vsubq_f32(v71[23], *(v30 + 23));
    *(v72 + 9) = vsubq_f32(v71[22], *(v30 + 22));
    *(v72 + 10) = v85;
    *(v72 + 11) = vsubq_f32(v71[24], *(v30 + 24));
    *(v72 + 24) = vsub_f32(*v71[25].f32, v30[25]);
    v71 = (v71 + 408);
    v72 += 102;
    v30 = (v30 + 408);
    --v73;
  }

  while (v73);
  return result;
}

void *spot_finder_peridot_initialize(void)
{
  result = memcpy(&state, &uv, 0x9C4uLL);
  isInitialized_spot_finder_peridot[0] = 1;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void ImageUtils::ConnectedComp<BOOL>()
{
    ;
  }
}

void ImageUtils::IntegralImage<double>()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}