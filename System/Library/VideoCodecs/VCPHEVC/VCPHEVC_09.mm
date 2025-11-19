void sub_277434180(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2773C07DC(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

uint64_t sub_2774341A8(uint64_t a1)
{
  v2 = *(a1 + 2336);
  if (*(a1 + 56) == 1)
  {
    *(a1 + 648) = *(v2 + 648);
    *(a1 + 1385) = *(v2 + 1385);
    *(a1 + 57) = *(v2 + 57);
    *(a1 + 64) = *(v2 + 64);
    v3 = *(v2 + 68);
    *(a1 + 68) = v3;
    if (v3)
    {
      *(a1 + 320) = *(v2 + 320);
    }

    else
    {
      v4 = *(v2 + 72);
      v5 = *(v2 + 88);
      v6 = *(v2 + 104);
      *(a1 + 120) = *(v2 + 120);
      *(a1 + 104) = v6;
      *(a1 + 88) = v5;
      *(a1 + 72) = v4;
      v7 = *(v2 + 136);
      v8 = *(v2 + 152);
      v9 = *(v2 + 168);
      *(a1 + 184) = *(v2 + 184);
      *(a1 + 168) = v9;
      *(a1 + 152) = v8;
      *(a1 + 136) = v7;
      v10 = *(v2 + 200);
      v11 = *(v2 + 216);
      v12 = *(v2 + 232);
      *(a1 + 248) = *(v2 + 248);
      *(a1 + 232) = v12;
      *(a1 + 216) = v11;
      *(a1 + 200) = v10;
      v13 = *(v2 + 264);
      v14 = *(v2 + 280);
      v15 = *(v2 + 296);
      *(a1 + 310) = *(v2 + 310);
      *(a1 + 280) = v14;
      *(a1 + 296) = v15;
      *(a1 + 264) = v13;
    }

    if (*(*(a1 + 16) + 320) == 1)
    {
      v16 = *(v2 + 324);
      v17 = *(v2 + 340);
      v18 = *(v2 + 372);
      *(a1 + 356) = *(v2 + 356);
      *(a1 + 372) = v18;
      *(a1 + 324) = v16;
      *(a1 + 340) = v17;
      v19 = *(v2 + 388);
      v20 = *(v2 + 404);
      v21 = *(v2 + 436);
      *(a1 + 420) = *(v2 + 420);
      *(a1 + 436) = v21;
      *(a1 + 388) = v19;
      *(a1 + 404) = v20;
      v22 = *(v2 + 452);
      v23 = *(v2 + 468);
      v24 = *(v2 + 484);
      *(a1 + 496) = *(v2 + 496);
      *(a1 + 468) = v23;
      *(a1 + 484) = v24;
      *(a1 + 452) = v22;
    }

    else
    {
      *(a1 + 324) = 0;
      *(a1 + 508) = 0;
    }

    *(a1 + 513) = *(v2 + 513);
    *(a1 + 512) = *(v2 + 512);
    *(a1 + 516) = *(v2 + 516);
    *(a1 + 515) = *(v2 + 515);
    *(a1 + 518) = *(v2 + 518);
    v25 = *(v2 + 536);
    *(a1 + 520) = *(v2 + 520);
    *(a1 + 536) = v25;
    *(a1 + 552) = *(v2 + 552);
    *(a1 + 556) = *(v2 + 556);
    *(a1 + 662) = *(v2 + 662);
    *(a1 + 664) = *(v2 + 664);
    memcpy((a1 + 672), (v2 + 672), 0x200uLL);
    *(a1 + 558) = *(v2 + 558);
    *(a1 + 566) = *(v2 + 566);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 640) = *(v2 + 640);
    *(a1 + 2256) = *(v2 + 2256);
    v26 = *(v2 + 2224);
    *(a1 + 2240) = *(v2 + 2240);
    *(a1 + 2224) = v26;
  }

  *(a1 + 652) = 5 - *(a1 + 558);
  *(a1 + 660) = 2 * *(a1 + 565);
  *(a1 + 661) = 2 * *(a1 + 566);
  sub_2773FA1E4(a1);
  v27 = *(a1 + 52);
  v28 = *(a1 + 16);
  v29 = *(v28 + 2120);
  v30 = *(v28 + 2124);
  if (v27 < 0 || v27 >= v30 * v29)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "slice_segment_address_ of %lld is out of range (%lld, %lld)\n", v27, 0, v30 * v29 - 1);
      syslog(27, "slice_segment_address_ of %lld is out of range (%lld, %lld)\n");
    }

    return 4294954387;
  }

  if (*(a1 + 56))
  {
    goto LABEL_14;
  }

  if (*(v28 + 202) == 1)
  {
    v33 = *(a1 + 60);
    if (v33 >= 3)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v45 = 2;
      v36 = "colour_plane_id_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "colour_plane_id_ of %lld is out of range (%lld, %lld)\n", v33, 0, 2);
      v37 = *(a1 + 60);
LABEL_82:
      v61 = v45;
      goto LABEL_83;
    }
  }

  if ((*(a1 + 632) & 1) == 0)
  {
    v39 = *(a1 + 64);
    v40 = *(v28 + 2108);
    if (v39 < 0 || v39 >= v40)
    {
      if (dword_280B9A880 >= 3)
      {
        v36 = "slice_pic_order_cnt_lsb_ of %lld is out of range (%lld, %lld)\n";
        fprintf(*MEMORY[0x277D85DF8], "slice_pic_order_cnt_lsb_ of %lld is out of range (%lld, %lld)\n", v39, 0, v40 - 1);
        v37 = *(a1 + 64);
        v38 = *(*(a1 + 16) + 2108);
        goto LABEL_62;
      }

      return 4294954387;
    }

    if (*(a1 + 68) == 1)
    {
      v41 = *(a1 + 320);
      v42 = *(v28 + 288);
      if ((v41 & 0x80000000) != 0 || v41 > (v42 - 1))
      {
        if (dword_280B9A880 >= 3)
        {
          v36 = "short_term_ref_pic_set_idx_ of %lld is out of range (%lld, %lld)\n";
          fprintf(*MEMORY[0x277D85DF8], "short_term_ref_pic_set_idx_ of %lld is out of range (%lld, %lld)\n", v41, 0, v42 - 1);
          v37 = *(a1 + 320);
          v38 = *(*(a1 + 16) + 288);
          goto LABEL_62;
        }

        return 4294954387;
      }
    }
  }

  if (*(a1 + 58) <= 1u)
  {
    if (*(a1 + 514) == 1)
    {
      v34 = *(a1 + 555);
      if (*(a1 + 554) == 1)
      {
        v35 = *(a1 + 516);
        if (v35 <= v34)
        {
          if (dword_280B9A880 >= 3)
          {
            v36 = "collocated_ref_idx_ of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "collocated_ref_idx_ of %lld is out of range (%lld, %lld)\n", v34, 0, v35 - 1);
            v37 = *(a1 + 555);
            v38 = *(a1 + 516);
LABEL_62:
            v61 = v38 - 1;
LABEL_83:
            v60 = 0;
            goto LABEL_84;
          }

          return 4294954387;
        }
      }

      else
      {
        v46 = *(a1 + 517);
        if (v46 <= v34)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v36 = "collocated_ref_idx_ of %lld is out of range (%lld, %lld)\n";
          fprintf(*MEMORY[0x277D85DF8], "collocated_ref_idx_ of %lld is out of range (%lld, %lld)\n", v34, 0, v46 - 1);
          v37 = *(a1 + 555);
          v38 = *(a1 + 517);
          goto LABEL_62;
        }
      }
    }

    v47 = *(a1 + 558);
    if (v47 >= 5)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v45 = 4;
      v36 = "five_minus_max_num_merge_cand_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "five_minus_max_num_merge_cand_ of %lld is out of range (%lld, %lld)\n", v47, 0, 4);
      v37 = *(a1 + 558);
      goto LABEL_82;
    }
  }

  v48 = *(a1 + 32);
  v49 = v48[9] + *(a1 + 559) + 26;
  v50 = -*(v28 + 2097);
  if (v49 > 51 || v49 < v50)
  {
    if (dword_280B9A880 >= 3)
    {
      v36 = "26+pps_->init_qp_minus26_+slice_qp_delta_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "26+pps_->init_qp_minus26_+slice_qp_delta_ of %lld is out of range (%lld, %lld)\n", v49, v50, 51);
      v37 = *(*(a1 + 32) + 9) + *(a1 + 559) + 26;
      v60 = -*(*(a1 + 16) + 2097);
      v61 = 51;
LABEL_84:
      syslog(27, v36, v37, v60, v61);
      return 4294954387;
    }

    return 4294954387;
  }

  if (v48[16] != 1)
  {
    goto LABEL_75;
  }

  v52 = *(a1 + 560) + v48[14];
  if ((v52 + 12) >= 0x19)
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v56 = 12;
    v57 = -12;
    v36 = "pps_->pps_cb_qp_offset_+slice_cb_qp_offset_ of %lld is out of range (%lld, %lld)\n";
    fprintf(*MEMORY[0x277D85DF8], "pps_->pps_cb_qp_offset_+slice_cb_qp_offset_ of %lld is out of range (%lld, %lld)\n", v52, -12, 12);
    v58 = *(*(a1 + 32) + 14);
    v59 = *(a1 + 560);
    goto LABEL_95;
  }

  v53 = *(a1 + 561) + v48[15];
  if ((v53 + 12) >= 0x19)
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v56 = 12;
    v57 = -12;
    v36 = "pps_->pps_cr_qp_offset_+slice_cr_qp_offset_ of %lld is out of range (%lld, %lld)\n";
    fprintf(*MEMORY[0x277D85DF8], "pps_->pps_cr_qp_offset_+slice_cr_qp_offset_ of %lld is out of range (%lld, %lld)\n", v53, -12, 12);
    v58 = *(*(a1 + 32) + 15);
    v59 = *(a1 + 561);
LABEL_95:
    v37 = v59 + v58;
    goto LABEL_96;
  }

LABEL_75:
  if (v48[29] == 1)
  {
    v54 = *(a1 + 565);
    if ((v54 + 6) >= 0xDu)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v56 = 6;
      v57 = -6;
      v36 = "slice_beta_offset_div2_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "slice_beta_offset_div2_ of %lld is out of range (%lld, %lld)\n", v54, -6, 6);
      v37 = *(a1 + 565);
      goto LABEL_96;
    }

    v55 = *(a1 + 566);
    if ((v55 + 6) >= 0xDu)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v56 = 6;
      v57 = -6;
      v36 = "slice_tc_offset_div2_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "slice_tc_offset_div2_ of %lld is out of range (%lld, %lld)\n", v55, -6, 6);
      v37 = *(a1 + 566);
LABEL_96:
      v60 = v57;
      v61 = v56;
      goto LABEL_84;
    }
  }

LABEL_14:
  v31 = *(a1 + 2280);
  if (v31)
  {
    if (*(a1 + 635) == 1 && *(v31 + 2049) == 1)
    {
      *(a1 + 59) = 0;
    }

    if (*(a1 + 48) == 1)
    {
      result = sub_27740284C(v31 + 8, a1);
      if (result)
      {
        return result;
      }

      result = sub_277400640((*(a1 + 2280) + 552), a1);
      if (result)
      {
        return result;
      }

      result = sub_277411E8C((*(a1 + 2280) + 952), *(*(a1 + 16) + 2096), *(*(a1 + 16) + 2098), 1);
      if (result)
      {
        return result;
      }

      result = sub_277442944(*(a1 + 2280) + 1128, a1, 1);
      if (result)
      {
        return result;
      }

      result = sub_2774A8744(*(a1 + 2280) + 1264, a1);
      if (result)
      {
        return result;
      }

      v31 = *(a1 + 2280);
      *(v31 + 2050) = 0;
    }

    else if (*(v2 + 565) != *(a1 + 565) || *(v2 + 566) != *(a1 + 566))
    {
      *(v31 + 1176) = *(v31 + 1184);
    }

    if ((*(a1 + 512) & 1) != 0 || *(a1 + 513) == 1)
    {
      *(v31 + 2050) = 1;
    }

    if ((*(a1 + 564) & 1) == 0)
    {
      *(v31 + 2051) = 1;
    }
  }

  v43 = *(a1 + 32);
  if (*(v43 + 17) == 1 && *(a1 + 58) == 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = *(v43 + 18) == 1 && *(a1 + 58) == 0;
  }

  result = 0;
  *(a1 + 2288) = *(&off_288662160 + 4 * *(*(a1 + 16) + 2148) + 2 * v44);
  *(a1 + 2296) = 0;
  return result;
}

uint64_t sub_277434A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = MEMORY[0x28223BE20](a1);
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  STACK[0x40B8] = *MEMORY[0x277D85DE8];
  v31 = *(v20 + 8);
  if (v31 > 0xEF || (v32 = *(v20 + 9), v32 > 0xEF))
  {
    v37 = v31 > 0xEF;
    v38 = v31 > 0xEF;
    v39 = *(v19 + 8);
    v40 = *(v39 + 416);
    v41 = *(v39 + 531);
    v54 = (v40 * v22 + v21) << v41;
    vars8 = *(v39 + 400);
    v56 = *(v39 + 408);
    v57 = *(v39 + 424);
    v55 = (v57 * v22 + 2 * v21) << v41;
    if (v37)
    {
      v42 = v20 + 9;
    }

    else
    {
      v42 = v20 + 2;
    }

    v43 = v19 + (v38 << 8) + (*v42 & 0xF0);
    v44 = *(v43 + 1672);
    a15 = 0;
    a17 = 0;
    sub_277434E00(v44, v20[v38], v21, v22, v23, v24, &a15, &a17, &a14);
    v45 = *(v30 + 2280);
    v46 = v29[v38];
    v47 = *(v30 + 664);
    (*(v45 + ((8 * ((v46 & 3) != 0)) | (16 * ((*&v46 & 0x30000) != 0))) + 1016))(v26, v25);
    (*(v45 + 1080))(v26, v25, v47, v43 + 672, v26, &a18, v40, vars8 + v54);
    v48 = *(v30 + 2280);
    v49 = *(v30 + 668);
    v50 = (2 * v26);
    (*(v48 + ((8 * ((a14 & 7) != 0)) | (16 * ((a14 & 0x70000) != 0))) + 1048))(v50, v25);
    return (*(v48 + 1088))(v50, v25, v49, v43 + 680, v50, &a18, v57, v56 + v55);
  }

  else
  {
    vars0 = *(*(v19 + 8) + 400) + ((*(*(v19 + 8) + 416) * v22 + v21) << *(*(v19 + 8) + 531));
    vars8a = v19 + (v31 & 0xF0);
    v33 = *(vars8a + 1672);
    v34 = v19 + (v32 & 0xF0);
    v35 = *(v34 + 1928);
    a18 = 0;
    a19 = 0;
    a15 = 0;
    a16 = 0;
    sub_277434E00(v33, *v20, v21, v22, v23, v24, &a18, &a15, &a17);
    sub_277434E00(v35, v29[1], v28, v27, v26, v25, &a19, &a16, &a17 + 2);
    sub_277411B9C(*(v30 + 2280) + 952, v26, v25, *(v30 + 664), vars8a + 672, *v29, *(v33 + 416), a18, v34 + 928, v29[1], *(v35 + 416), a19);
    return sub_277411D10(*(v30 + 2280) + 952, v26, v25, *(v30 + 668), vars8a + 680, a17, *(v33 + 424), a15, v34 + 936, HIDWORD(a17), *(v35 + 424), a16);
  }
}

uint64_t sub_277434E00(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, _WORD *a9)
{
  v12 = -3 - a5;
  v13 = *(a1 + 520) + 2;
  v14 = a3 + (a2 >> 2);
  if (v14 < v13)
  {
    v13 = a3 + (a2 >> 2);
  }

  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = -3 - a6;
  v17 = *(a1 + 524) + 2;
  v18 = a4 + (a2 >> 18);
  if (v18 < v17)
  {
    v17 = a4 + (a2 >> 18);
  }

  if (v18 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  *a7 = *(a1 + 400) + ((*(a1 + 416) * v19 + v15) << *(a1 + 531));
  *a9 = 2 * a2;
  a9[1] = (a2 >> 15) & 0xFFFE;
  v20 = *(a1 + 520);
  if (v14 < v20)
  {
    v20 = a3 + (a2 >> 2);
  }

  if (v14 <= ~a5)
  {
    v21 = ~a5;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(a1 + 524);
  if (v18 < v22)
  {
    v22 = a4 + (a2 >> 18);
  }

  if (v18 <= ~a6)
  {
    v23 = ~a6;
  }

  else
  {
    v23 = v22;
  }

  *a8 = *(a1 + 408) + ((*(a1 + 424) * v23 + 2 * v21) << *(a1 + 531));
  v24 = a6 + v19 + 4;
  v25 = (a1 + 1032);
  if (atomic_load_explicit((a1 + 1032), memory_order_acquire) < v24)
  {
    v28.__m_ = (a1 + 1040);
    v28.__owns_ = 1;
    std::mutex::lock((a1 + 1040));
    for (i = atomic_load_explicit(v25, memory_order_acquire); i < v24; i = atomic_load_explicit((a1 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((a1 + 1104), &v28);
    }

    if (v28.__owns_)
    {
      std::mutex::unlock(v28.__m_);
    }
  }

  return (*(&off_2886621E0[2 * *(a1 + 532)] + *(a1 + 531)))(v15, v19, v21, v23, a5, a6, a1);
}

uint64_t sub_277434FC8(uint64_t a1, unsigned int *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 8);
  if (v10 > 0xEF || (v11 = *(a2 + 9), v11 > 0xEF))
  {
    v20 = v10 > 0xEF;
    if (v10 <= 0xEF)
    {
      v21 = a2 + 2;
    }

    else
    {
      v21 = a2 + 9;
    }

    v22 = *(a1 + (v20 << 8) + (*v21 & 0xF0) + 1672);
    v32 = 0;
    v30 = 0;
    sub_277434E00(v22, a2[v10 > 0xEF], a3, a4, a5, a6, &v32, &v30, &v28);
    (*(*(a1 + 2280) + ((8 * ((a2[v20] & 3) != 0)) | (16 * ((a2[v20] & 0x30000) != 0))) + 952))(a5, a6);
    return (*(*(a1 + 2280) + ((8 * ((v28 & 7) != 0)) | (16 * ((v28 & 0x70000) != 0))) + 984))((2 * a5), a6);
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = *(v12 + 416);
    v14 = *(v12 + 531);
    v25 = *(v12 + 400) + ((v13 * a4 + a3) << v14);
    v26 = *(v12 + 408) + ((*(v12 + 424) * a4 + 2 * a3) << v14);
    v27 = *(v12 + 424);
    v15 = *(a1 + (v10 & 0xF0) + 1672);
    v16 = *(a1 + (v11 & 0xF0) + 1928);
    v32 = 0;
    v33[0] = 0;
    v30 = 0;
    v31 = 0;
    sub_277434E00(v15, *a2, a3, a4, a5, a6, &v32, &v30, &v28);
    sub_277434E00(v16, a2[1], a3, a4, a5, a6, v33, &v31, &v29);
    sub_2774118E4(*(a1 + 2280) + 952, a5, a6, *a2, *(v15 + 416), v32, a2[1], *(v16 + 416), v33[0], v13, v25);
    return sub_277411A3C(*(a1 + 2280) + 952, a5, a6, v28, *(v15 + 424), v30, v29, *(v16 + 424), v31, v27, v26);
  }
}

uint64_t sub_2774352A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = MEMORY[0x28223BE20](a1);
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  STACK[0x40B8] = *MEMORY[0x277D85DE8];
  v31 = *(v20 + 8);
  if (v31 > 0xEF || (v32 = *(v20 + 9), v32 > 0xEF))
  {
    v37 = v31 > 0xEF;
    v38 = v31 > 0xEF;
    v39 = *(v19 + 8);
    v40 = *(v39 + 416);
    v41 = *(v39 + 531);
    v54 = (v40 * v22 + v21) << v41;
    vars8 = *(v39 + 400);
    v56 = *(v39 + 408);
    v57 = *(v39 + 424);
    v55 = (v57 * v22 + (v21 & 0xFFFFFFFE)) << v41;
    if (v37)
    {
      v42 = v20 + 9;
    }

    else
    {
      v42 = v20 + 2;
    }

    v43 = v19 + (v38 << 8) + (*v42 & 0xF0);
    v44 = *(v43 + 1672);
    a15 = 0;
    a17 = 0;
    sub_277435648(v44, v20[v38], v21, v22, v23, v24, &a15, &a17, &a14);
    v45 = *(v30 + 2280);
    v46 = v29[v38];
    v47 = *(v30 + 664);
    (*(v45 + ((8 * ((v46 & 3) != 0)) | (16 * ((*&v46 & 0x30000) != 0))) + 1016))(v26, v25);
    (*(v45 + 1080))(v26, v25, v47, v43 + 672, v26, &a18, v40, vars8 + v54);
    v48 = *(v30 + 2280);
    v49 = *(v30 + 668);
    v50 = v26 & 0xFFFFFFFE;
    (*(v48 + ((8 * ((a14 & 7) != 0)) | (16 * ((a14 & 0x70000) != 0))) + 1048))(v50, v25);
    return (*(v48 + 1088))(v50, v25, v49, v43 + 680, v50, &a18, v57, v56 + v55);
  }

  else
  {
    vars0 = *(*(v19 + 8) + 400) + ((*(*(v19 + 8) + 416) * v22 + v21) << *(*(v19 + 8) + 531));
    vars8a = v19 + (v31 & 0xF0);
    v33 = *(vars8a + 1672);
    v34 = v19 + (v32 & 0xF0);
    v35 = *(v34 + 1928);
    a18 = 0;
    a19 = 0;
    a15 = 0;
    a16 = 0;
    sub_277435648(v33, *v20, v21, v22, v23, v24, &a18, &a15, &a17);
    sub_277435648(v35, v29[1], v28, v27, v26, v25, &a19, &a16, &a17 + 2);
    sub_277411B9C(*(v30 + 2280) + 952, v26, v25, *(v30 + 664), vars8a + 672, *v29, *(v33 + 416), a18, v34 + 928, v29[1], *(v35 + 416), a19);
    return sub_277411D10(*(v30 + 2280) + 952, (v26 >> 1), v25, *(v30 + 668), vars8a + 680, a17, *(v33 + 424), a15, v34 + 936, HIDWORD(a17), *(v35 + 424), a16);
  }
}

uint64_t sub_277435648(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, _WORD *a9)
{
  v12 = -3 - a5;
  v13 = *(a1 + 520) + 2;
  v14 = a3 + (a2 >> 2);
  if (v14 < v13)
  {
    v13 = a3 + (a2 >> 2);
  }

  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = -3 - a6;
  v17 = *(a1 + 524) + 2;
  v18 = a4 + (a2 >> 18);
  if (v18 < v17)
  {
    v17 = a4 + (a2 >> 18);
  }

  if (v18 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  *a7 = *(a1 + 400) + ((*(a1 + 416) * v19 + v15) << *(a1 + 531));
  *a9 = a2;
  a9[1] = (a2 >> 15) & 0xFFFE;
  v20 = (a2 >> 3) + (a3 >> 1);
  if (v20 >= *(a1 + 520) >> 1)
  {
    v21 = *(a1 + 520) >> 1;
  }

  else
  {
    v21 = (a2 >> 3) + (a3 >> 1);
  }

  if (v20 <= ~(a5 >> 1))
  {
    v22 = ~(a5 >> 1);
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 524);
  if (v18 < v23)
  {
    v23 = a4 + (a2 >> 18);
  }

  if (v18 <= ~a6)
  {
    v24 = ~a6;
  }

  else
  {
    v24 = v23;
  }

  *a8 = *(a1 + 408) + ((*(a1 + 424) * v24 + 2 * v22) << *(a1 + 531));
  v25 = a6 + v19 + 4;
  v26 = (a1 + 1032);
  if (atomic_load_explicit((a1 + 1032), memory_order_acquire) < v25)
  {
    v29.__m_ = (a1 + 1040);
    v29.__owns_ = 1;
    std::mutex::lock((a1 + 1040));
    for (i = atomic_load_explicit(v26, memory_order_acquire); i < v25; i = atomic_load_explicit((a1 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((a1 + 1104), &v29);
    }

    if (v29.__owns_)
    {
      std::mutex::unlock(v29.__m_);
    }
  }

  return (*(&off_2886621E0[2 * *(a1 + 532)] + *(a1 + 531)))(v15, v19, v22, v24, a5, a6, a1);
}

uint64_t sub_277435820(uint64_t a1, unsigned int *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 8);
  if (v10 > 0xEF || (v11 = *(a2 + 9), v11 > 0xEF))
  {
    v20 = v10 > 0xEF;
    if (v10 <= 0xEF)
    {
      v21 = a2 + 2;
    }

    else
    {
      v21 = a2 + 9;
    }

    v22 = *(a1 + (v20 << 8) + (*v21 & 0xF0) + 1672);
    v32 = 0;
    v30 = 0;
    sub_277435648(v22, a2[v10 > 0xEF], a3, a4, a5, a6, &v32, &v30, &v28);
    (*(*(a1 + 2280) + ((8 * ((a2[v20] & 3) != 0)) | (16 * ((a2[v20] & 0x30000) != 0))) + 952))(a5, a6);
    return (*(*(a1 + 2280) + ((8 * ((v28 & 7) != 0)) | (16 * ((v28 & 0x70000) != 0))) + 984))(a5 & 0xFFFFFFFE, a6);
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = *(v12 + 416);
    v14 = *(v12 + 531);
    v25 = *(v12 + 400) + ((v13 * a4 + a3) << v14);
    v26 = *(v12 + 408) + ((*(v12 + 424) * a4 + (a3 & 0xFFFFFFFE)) << v14);
    v27 = *(v12 + 424);
    v15 = *(a1 + (v10 & 0xF0) + 1672);
    v16 = *(a1 + (v11 & 0xF0) + 1928);
    v32 = 0;
    v33[0] = 0;
    v30 = 0;
    v31 = 0;
    sub_277435648(v15, *a2, a3, a4, a5, a6, &v32, &v30, &v28);
    sub_277435648(v16, a2[1], a3, a4, a5, a6, v33, &v31, &v29);
    sub_2774118E4(*(a1 + 2280) + 952, a5, a6, *a2, *(v15 + 416), v32, a2[1], *(v16 + 416), v33[0], v13, v25);
    return sub_277411A3C(*(a1 + 2280) + 952, (a5 >> 1), a6, v28, *(v15 + 424), v30, v29, *(v16 + 424), v31, v27, v26);
  }
}

uint64_t sub_277435AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = MEMORY[0x28223BE20](a1);
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  STACK[0x40B8] = *MEMORY[0x277D85DE8];
  v31 = *(v20 + 8);
  if (v31 > 0xEF || (v32 = *(v20 + 9), v32 > 0xEF))
  {
    v37 = v31 > 0xEF;
    v38 = v31 > 0xEF;
    v39 = *(v19 + 8);
    v40 = *(v39 + 416);
    v58 = *(v39 + 424);
    v41 = *(v39 + 531);
    v55 = (v40 * v22 + v21) << v41;
    vars8 = *(v39 + 400);
    v57 = *(v39 + 408);
    v56 = (v58 * (v22 >> 1) + (v21 & 0xFFFFFFFE)) << v41;
    if (v37)
    {
      v42 = v20 + 9;
    }

    else
    {
      v42 = v20 + 2;
    }

    v43 = v19 + (v38 << 8) + (*v42 & 0xF0);
    v44 = *(v43 + 1672);
    a15 = 0;
    a17 = 0;
    sub_277435EB0(v44, v20[v38], v21, v22, v23, v24, &a15, &a17, &a14);
    v45 = *(v30 + 2280);
    v46 = v29[v38];
    v47 = *(v30 + 664);
    (*(v45 + ((8 * ((v46 & 3) != 0)) | (16 * ((*&v46 & 0x30000) != 0))) + 1016))(v26, v25);
    (*(v45 + 1080))(v26, v25, v47, v43 + 672, v26, &a18, v40, vars8 + v55);
    v48 = *(v30 + 2280);
    v49 = (v25 >> 1);
    v50 = *(v30 + 668);
    v51 = v26 & 0xFFFFFFFE;
    (*(v48 + ((8 * ((a14 & 7) != 0)) | (16 * ((a14 & 0x70000) != 0))) + 1048))(v51, v49);
    return (*(v48 + 1088))(v51, v49, v50, v43 + 680, v51, &a18, v58, v57 + v56);
  }

  else
  {
    vars8a = *(*(v19 + 8) + 400) + ((*(*(v19 + 8) + 416) * v22 + v21) << *(*(v19 + 8) + 531));
    vars0 = v19 + (v31 & 0xF0);
    v33 = *(vars0 + 1672);
    v34 = v19 + (v32 & 0xF0);
    v35 = *(v34 + 1928);
    a18 = 0;
    a19 = 0;
    a15 = 0;
    a16 = 0;
    sub_277435EB0(v33, *v20, v21, v22, v23, v24, &a18, &a15, &a17);
    sub_277435EB0(v35, v29[1], v28, v27, v26, v25, &a19, &a16, &a17 + 1);
    sub_277411B9C(*(v30 + 2280) + 952, v26, v25, *(v30 + 664), vars0 + 672, *v29, *(v33 + 416), a18, v34 + 928, v29[1], *(v35 + 416), a19);
    return sub_277411D10(*(v30 + 2280) + 952, (v26 >> 1), (v25 >> 1), *(v30 + 668), vars0 + 680, a17, *(v33 + 424), a15, v34 + 936, HIDWORD(a17), *(v35 + 424), a16);
  }
}

uint64_t sub_277435EB0(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, int *a9)
{
  v12 = -3 - a5;
  v13 = *(a1 + 520) + 2;
  v14 = a3 + (a2 >> 2);
  if (v14 < v13)
  {
    v13 = a3 + (a2 >> 2);
  }

  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = -3 - a6;
  v17 = *(a1 + 524) + 2;
  v18 = a4 + (a2 >> 18);
  if (v18 < v17)
  {
    v17 = a4 + (a2 >> 18);
  }

  if (v18 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  *a7 = *(a1 + 400) + ((*(a1 + 416) * v19 + v15) << *(a1 + 531));
  *a9 = a2;
  v20 = (a2 >> 3) + (a3 >> 1);
  if (v20 >= *(a1 + 520) >> 1)
  {
    v21 = *(a1 + 520) >> 1;
  }

  else
  {
    v21 = (a2 >> 3) + (a3 >> 1);
  }

  if (v20 <= ~(a5 >> 1))
  {
    v22 = ~(a5 >> 1);
  }

  else
  {
    v22 = v21;
  }

  v23 = (a4 >> 1) + (a2 >> 19);
  if (v23 >= *(a1 + 524) >> 1)
  {
    v24 = *(a1 + 524) >> 1;
  }

  else
  {
    v24 = (a4 >> 1) + (a2 >> 19);
  }

  if (v23 <= ~(a6 >> 1))
  {
    v25 = ~(a6 >> 1);
  }

  else
  {
    v25 = v24;
  }

  *a8 = *(a1 + 408) + ((*(a1 + 424) * v25 + 2 * v22) << *(a1 + 531));
  v26 = a6 + v19 + 4;
  v27 = (a1 + 1032);
  if (atomic_load_explicit((a1 + 1032), memory_order_acquire) < v26)
  {
    v30.__m_ = (a1 + 1040);
    v30.__owns_ = 1;
    std::mutex::lock((a1 + 1040));
    for (i = atomic_load_explicit(v27, memory_order_acquire); i < v26; i = atomic_load_explicit((a1 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((a1 + 1104), &v30);
    }

    if (v30.__owns_)
    {
      std::mutex::unlock(v30.__m_);
    }
  }

  return (*(&off_2886621E0[2 * *(a1 + 532)] + *(a1 + 531)))(v15, v19, v22, v25, a5, a6, a1);
}

uint64_t sub_277436094(uint64_t a1, unsigned int *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 8);
  if (v11 > 0xEF || (v12 = *(a2 + 9), v12 > 0xEF))
  {
    v20 = v11 > 0xEF;
    if (v11 <= 0xEF)
    {
      v21 = a2 + 2;
    }

    else
    {
      v21 = a2 + 9;
    }

    v22 = *(a1 + (v20 << 8) + (*v21 & 0xF0) + 1672);
    v31 = 0;
    v29 = 0;
    sub_277435EB0(v22, a2[v11 > 0xEF], a3, a4, a5, a6, &v31, &v29, &v27);
    (*(*(a1 + 2280) + ((8 * ((a2[v20] & 3) != 0)) | (16 * ((a2[v20] & 0x30000) != 0))) + 952))(a5, a6);
    return (*(*(a1 + 2280) + ((8 * ((v27 & 7) != 0)) | (16 * ((v27 & 0x70000) != 0))) + 984))(a5 & 0xFFFFFFFE, (a6 >> 1));
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(v13 + 416);
    v15 = *(v13 + 531);
    v24 = *(v13 + 400) + ((v14 * a4 + a3) << v15);
    v25 = *(v13 + 408) + ((*(v13 + 424) * (a4 >> 1) + (a3 & 0xFFFFFFFE)) << v15);
    v26 = *(v13 + 424);
    v16 = *(a1 + (v11 & 0xF0) + 1672);
    v17 = *(a1 + (v12 & 0xF0) + 1928);
    v31 = 0;
    v32[0] = 0;
    v29 = 0;
    v30 = 0;
    sub_277435EB0(v16, *a2, a3, a4, a5, a6, &v31, &v29, &v27);
    sub_277435EB0(v17, a2[1], a3, a4, a5, a6, v32, &v30, &v28);
    sub_2774118E4(*(a1 + 2280) + 952, a5, a6, *a2, *(v16 + 416), v31, a2[1], *(v17 + 416), v32[0], v14, v24);
    return sub_277411A3C(*(a1 + 2280) + 952, (a5 >> 1), (a6 >> 1), v27, *(v16 + 424), v29, v28, *(v17 + 424), v30, v26, v25);
  }
}

uint64_t sub_277436388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1);
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  STACK[0x2078] = *MEMORY[0x277D85DE8];
  v22 = v11 + 2;
  v23 = *(v11 + 8);
  if (v23 > 0xEF || (v24 = *(v11 + 9), v24 > 0xEF))
  {
    v30 = v23 > 0xEF;
    v31 = v23 > 0xEF;
    v32 = *(v10 + 8);
    v33 = *(v32 + 416);
    v39 = (v33 * v13 + v12) << *(v32 + 531);
    v41 = *(v32 + 400);
    if (v30)
    {
      v22 = v11 + 9;
    }

    v34 = v10 + (v31 << 8) + (*v22 & 0xF0);
    v35 = *(v34 + 1672);
    vars8 = 0;
    sub_277436610(v35, v11[v31], v12, v13, v14, v15, &vars8, &vars0 + 1);
    v36 = *(v21 + 2280);
    v37 = v20[v31];
    v38 = *(v21 + 664);
    (*(v36 + ((8 * ((v37 & 3) != 0)) | (16 * ((*&v37 & 0x30000) != 0))) + 1016))(v17, v16);
    return (*(v36 + 1080))(v17, v16, v38, v34 + 672, v17, &a9, v33, v41 + v39);
  }

  else
  {
    v25 = v10 + (v23 & 0xF0);
    v26 = *(v25 + 1672);
    v27 = v10 + (v24 & 0xF0);
    v28 = *(v27 + 1928);
    v40 = v27 + 928;
    a9 = 0;
    a10 = 0;
    sub_277436610(v26, *v11, v12, v13, v14, v15, &a9, &vars8);
    sub_277436610(v28, v20[1], v19, v18, v17, v16, &a10, &vars8 + 1);
    return sub_277411B9C(*(v21 + 2280) + 952, v17, v16, *(v21 + 664), v25 + 672, *v20, *(v26 + 416), a9, v40, v20[1], *(v28 + 416), a10);
  }
}

uint64_t sub_277436610(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, int *a8)
{
  v13 = -3 - a5;
  v14 = *(a1 + 520) + 2;
  v15 = a2 << 16;
  v16 = a3 + (a2 >> 2);
  if (v16 < v14)
  {
    v14 = a3 + (a2 >> 2);
  }

  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  v18 = -3 - a6;
  v19 = *(a1 + 524) + 2;
  v20 = a4 + (a2 >> 18);
  if (v20 < v19)
  {
    v19 = a4 + (a2 >> 18);
  }

  if (v20 <= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  *a7 = *(a1 + 400) + ((*(a1 + 416) * v21 + v17) << *(a1 + 531));
  *a8 = a2;
  v22 = *(a1 + 520);
  v23 = *(a1 + 524);
  v24 = a6 + v21 + 4;
  if (atomic_load_explicit((a1 + 1032), memory_order_acquire) < v24)
  {
    v33 = a2 << 16;
    v34 = a3;
    v35 = v17;
    __lk.__m_ = (a1 + 1040);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 1040));
    for (i = atomic_load_explicit((a1 + 1032), memory_order_acquire); i < v24; i = atomic_load_explicit((a1 + 1032), memory_order_acquire))
    {
      std::condition_variable::wait((a1 + 1104), &__lk);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    a3 = v34;
    v17 = v35;
    v15 = v33;
  }

  v26 = (a4 >> 1) + (a2 >> 19);
  v27 = v23 >> 1;
  if (v26 < v23 >> 1)
  {
    v27 = (a4 >> 1) + (a2 >> 19);
  }

  if (v26 <= ~(a6 >> 1))
  {
    v28 = ~(a6 >> 1);
  }

  else
  {
    v28 = v27;
  }

  v29 = (v15 >> 19) + (a3 >> 1);
  v30 = v22 >> 1;
  if (v29 < v22 >> 1)
  {
    v30 = (v15 >> 19) + (a3 >> 1);
  }

  if (v29 <= ~(a5 >> 1))
  {
    v31 = ~(a5 >> 1);
  }

  else
  {
    v31 = v30;
  }

  return (*(&off_2886621E0[2 * *(a1 + 532)] + *(a1 + 531)))(v17, v21, v31, v28, a5, a6, a1);
}

uint64_t sub_2774367D4(uint64_t a1, unsigned int *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v11 = a2 + 2;
  v12 = *(a2 + 8);
  if (v12 > 0xEF || (v13 = *(a2 + 9), v13 > 0xEF))
  {
    v21 = v12 > 0xEF;
    if (v12 > 0xEF)
    {
      v11 = a2 + 9;
    }

    v22 = *(a1 + (v21 << 8) + (*v11 & 0xF0) + 1672);
    v26 = 0;
    sub_277436610(v22, a2[v12 > 0xEF], a3, a4, a5, a6, &v26, &v24);
    return (*(*(a1 + 2280) + ((8 * ((a2[v21] & 3) != 0)) | (16 * ((a2[v21] & 0x30000) != 0))) + 952))(a5, a6);
  }

  else
  {
    v14 = *(a1 + 8);
    v15 = *(v14 + 416);
    v16 = *(v14 + 400) + ((v15 * a4 + a3) << *(v14 + 531));
    v17 = *(a1 + (v12 & 0xF0) + 1672);
    v18 = *(a1 + (v13 & 0xF0) + 1928);
    v26 = 0;
    v27[0] = 0;
    sub_277436610(v17, *a2, a3, a4, a5, a6, &v26, &v24);
    sub_277436610(v18, a2[1], a3, a4, a5, a6, v27, &v25);
    return sub_2774118E4(*(a1 + 2280) + 952, a5, a6, *a2, *(v17 + 416), v26, a2[1], *(v18 + 416), v27[0], v15, v16);
  }
}

void sub_2774369E4(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 8) = a2;
  v4 = *(a1 + 52);
  v5 = *(*(a1 + 16) + 2120);
  v6 = v4 / v5;
  v7 = v4 / v5 * v5;
  v8 = v4 % v5;
  if (*(a1 + 58))
  {
    if (*(a1 + 58) == 1)
    {
      v9 = *(a1 + 553) ^ 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = *(a1 + 553);
  }

  v10 = *(a1 + 32);
  if (*(v10 + 1744) <= v8 || *(v10 + 1748) <= v6)
  {
    return;
  }

  v11 = (a1 + 2304);
  if (*(v10 + 1752) == 1)
  {
    v12 = *(v10 + 1696) + 12 * v8;
    v13 = *v12;
    *(a1 + 2324) = *(v12 + 8);
    *(a1 + 2316) = v13;
    v14 = *(v10 + 1720) + 12 * v6;
    v15 = *v14;
    *(a1 + 2312) = *(v14 + 8);
    *v11 = v15;
  }

  else
  {
    *v11 = 0;
    *(a1 + 2312) = 0;
    *(a1 + 2320) = 0;
    *(a1 + 2324) = *(v10 + 1744);
    *(a1 + 2312) = *(v10 + 1748);
  }

  *(a1 + 2328) = 0;
  if (*(*(a1 + 1576) + 34) != 255)
  {
    sub_2773FAF74(a1, a3);
    if (v16)
    {
      return;
    }

    v10 = *(a1 + 32);
  }

  if (*(v10 + 20) == 1)
  {
    v17 = *(v10 + 22) + 1 + (*(v10 + 22) + 1) * *(v10 + 24);
  }

  else
  {
    if (*(v10 + 21))
    {
      v17 = *(*(a1 + 16) + 2124);
      v65 = (a1 + 1184);
      sub_27742C5B0((a1 + 1184), v17);
      if (v17 < 1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v17 = 1;
  }

  v65 = (a1 + 1184);
  sub_27742C5B0((a1 + 1184), v17);
LABEL_21:
  v18 = *(a1 + 1184);
  do
  {
    *v18++ = *(a1 + 653);
    --v17;
  }

  while (v17);
LABEL_23:
  v19 = *(a1 + 568);
  v20 = v19 + 1;
  v21 = *(a1 + 2360);
  v22 = *(a1 + 2352);
  v23 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v22) >> 5);
  v24 = v19 + 1 - v23;
  if (v19 + 1 <= v23)
  {
    if (v19 + 1 >= v23)
    {
      goto LABEL_36;
    }

    v27 = v22 + 224 * v20;
  }

  else
  {
    v25 = *(a1 + 2368);
    if (0x6DB6DB6DB6DB6DB7 * ((v25 - v21) >> 5) < v24)
    {
      if (v19 > -2)
      {
        v26 = 0x6DB6DB6DB6DB6DB7 * ((v25 - v22) >> 5);
        if (2 * v26 > v20)
        {
          v20 = 2 * v26;
        }

        if (v26 >= 0x92492492492492)
        {
          v20 = 0x124924924924924;
        }

        if (v20 <= 0x124924924924924)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(*(a1 + 2360), 224 * ((((224 * v24 - 224) >> 5) * 0x2492492492492493uLL) >> 64) + 224);
    v27 = v21 + 224 * ((((224 * v24 - 224) >> 5) * 0x2492492492492493uLL) >> 64) + 224;
  }

  *(a1 + 2360) = v27;
LABEL_36:
  LODWORD(v28) = *(a1 + 568);
  if (v28 <= 0)
  {
LABEL_61:
    v38 = (*(a1 + 2352) + 224 * v28);
    sub_2773FBCD4(v38, v9, *(a1 + 653));
    v39 = *(a1 + 1640);
    v40 = *(a1 + 1648);
    v38[1] = 510;
    v38[3] = v39;
    v38[4] = v40;
    sub_2773FCF4C(v38, v39);
    if (*(a1 + 56) == 1)
    {
      v41 = *(a1 + 32);
      if ((v4 != v7 || (*(v41 + 21) & 1) == 0) && (v8 != *(a1 + 2320) || v6 != *(a1 + 2308)))
      {
        if (*(v41 + 20) == 1)
        {
          v42 = *(a1 + 2304) + *(a1 + 2304) * *(v41 + 22) + *(a1 + 2316);
        }

        else if (*(v41 + 21))
        {
          v42 = v6;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(a1 + 2336);
        v44 = *(v43 + 1184);
        if (v42 < ((*(v43 + 1192) - v44) >> 2))
        {
          *(*v65 + 4 * v42) = *(v44 + 4 * v42);
        }

        v45 = *(a1 + 2352);
        v46 = *(v43 + 1386);
        v47 = *(v43 + 1402);
        v48 = *(v43 + 1418);
        *(v45 + 88) = *(v43 + 1434);
        *(v45 + 72) = v48;
        *(v45 + 56) = v47;
        *(v45 + 40) = v46;
        v49 = *(v43 + 1450);
        v50 = *(v43 + 1466);
        v51 = *(v43 + 1482);
        *(v45 + 152) = *(v43 + 1498);
        *(v45 + 136) = v51;
        *(v45 + 120) = v50;
        *(v45 + 104) = v49;
        v52 = *(v43 + 1514);
        v53 = *(v43 + 1530);
        v54 = *(v43 + 1546);
        *(v45 + 216) = *(v43 + 1562);
        *(v45 + 200) = v54;
        *(v45 + 184) = v53;
        *(v45 + 168) = v52;
        v41 = *(a1 + 32);
        if ((*(v41 + 21) & 1) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      if (*(v41 + 21))
      {
LABEL_77:
        if ((*(v41 + 20) & 1) == 0)
        {
          v55 = *(a1 + 2336);
          v56 = *(v55 + 1256);
          v58 = *(v55 + 1208);
          v57 = *(v55 + 1224);
          *(a1 + 1240) = *(v55 + 1240);
          *(a1 + 1256) = v56;
          *(a1 + 1208) = v58;
          *(a1 + 1224) = v57;
          v59 = *(v55 + 1320);
          v61 = *(v55 + 1272);
          v60 = *(v55 + 1288);
          *(a1 + 1304) = *(v55 + 1304);
          *(a1 + 1320) = v59;
          *(a1 + 1272) = v61;
          *(a1 + 1288) = v60;
          v63 = *(v55 + 1352);
          v62 = *(v55 + 1368);
          v64 = *(v55 + 1336);
          *(a1 + 1384) = *(v55 + 1384);
          *(a1 + 1352) = v63;
          *(a1 + 1368) = v62;
          *(a1 + 1336) = v64;
          *(a1 + 1385) = *(v55 + 1385);
        }
      }
    }

LABEL_79:
    *(a1 + 2332) = 1;
    return;
  }

  v29 = 0;
  while (1)
  {
    v30 = (*(a1 + 2352) + 224 * v29);
    v31 = *(*(a1 + 576) + 4 * v29);
    sub_2773FBCD4(v30, v9, *(a1 + 653));
    v32 = *(a1 + 1640);
    v33 = &v32[-*(a1 + 1632)];
    if (v33 < 2)
    {
      if (v33 != 1)
      {
        LODWORD(v33) = 0;
        goto LABEL_46;
      }
    }

    else
    {
      LODWORD(v33) = *(v32 - 2) ? 1 : 2;
    }

    if (*(v32 - 1))
    {
      LODWORD(v33) = 0;
    }

LABEL_46:
    v34 = (v31 + 1);
    if (v34)
    {
      break;
    }

    v34 = 0;
LABEL_60:
    v30[1] = 510;
    v30[3] = v32;
    v30[4] = &v32[v34];
    sub_2773FCF4C(v30, v32);
    *(a1 + 1640) += v34;
    ++v29;
    v28 = *(a1 + 568);
    if (v29 >= v28)
    {
      goto LABEL_61;
    }
  }

  v35 = 0;
  while (*(a1 + 1648) - v32 != v35)
  {
    v36 = v33 == 2;
    if (v33 == 2)
    {
      LODWORD(v33) = 2 * (v32[v35] > 3u);
    }

    if (v32[v35])
    {
      LODWORD(v33) = 0;
    }

    else
    {
      LODWORD(v33) = v33 + 1;
    }

    v37 = v32[v35] < 4u && v36;
    v34 -= v37;
    if (++v35 >= v34)
    {
      goto LABEL_60;
    }
  }
}

uint64_t sub_277436FD0(uint64_t a1, void *a2, int *a3, int *a4)
{
  if (*(*(a1 + 1576) + 33) == 1)
  {
    v8 = *(*(a1 + 1568) + 52);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  v10 = *(a1 + 32);
  v11 = *(v10 + 1744);
  if (v11 <= *a3)
  {
    return 0;
  }

  v12 = *a4;
  v13 = *(v10 + 1748);
  if (v13 <= *a4)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(v14 + 2113);
  if (*(v10 + 1752) == 1)
  {
    v16 = (*(v10 + 1696) + 12 * v9);
    v18 = *v16;
    v17 = v16[1];
    v11 = v16[2];
    v19 = (*(v10 + 1720) + 12 * v12);
    v21 = *v19;
    v20 = v19[1];
    v13 = v19[2];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
  }

  v22 = *(a1 + 568);
  if (v22 < 1)
  {
    goto LABEL_16;
  }

  if (*(v10 + 20) == 1)
  {
    v23 = v18 - *(a1 + 2316) + *(a1 + 2328);
    if (v23 < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(v10 + 21) != 1)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v23 = v12 - *(a1 + 52) / *(v14 + 2120);
  if (v23 < 0)
  {
LABEL_18:
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Calculated substream index %d for CTB %dx%d is out of bounds (0, %d)\n", v23, v9, *a4, v22 + 1);
      syslog(27, "Calculated substream index %d for CTB %dx%d is out of bounds (0, %d)\n", v23, *a3, *a4, *(a1 + 568) + 1);
    }

    return 0;
  }

LABEL_17:
  if (v23 > v22)
  {
    goto LABEL_18;
  }

  v24 = *(a1 + 2352) + 224 * v23;
  a2[4] = a1;
  a2[5] = v24;
  a2[800] = off_288662428[2 * *(v14 + 2148)];
  a2[801] = 0;
  v25 = *(v14 + 408) == 0;
  if (*(v14 + 408))
  {
    v26 = sub_27742FB7C;
  }

  else
  {
    v26 = sub_27742F21C;
  }

  v27 = sub_27742D380;
  if (!v25)
  {
    v27 = sub_27742E250;
  }

  a2[796] = v26;
  a2[797] = 0;
  a2[798] = v27;
  a2[799] = 0;
  v28 = *(a1 + 1184);
  v29 = *(a1 + 32);
  v30 = *(v29 + 20);
  v320 = a4;
  v314 = v8;
  v317 = v13;
  v315 = v23;
  v318 = a3;
  if (v30 == 1)
  {
    v28 += v21 + v21 * *(v29 + 22) + v18;
    v31 = *a3;
    if ((*(v29 + 21) & 1) == 0)
    {
      LOBYTE(v30) = 1;
LABEL_36:
      v41 = *a4;
      goto LABEL_37;
    }
  }

  else
  {
    if (*(v29 + 21) != 1)
    {
      LOBYTE(v30) = 0;
LABEL_35:
      v31 = *a3;
      goto LABEL_36;
    }

    v28 += *a4;
    v31 = *a3;
  }

  if (v31)
  {
    goto LABEL_36;
  }

  if (*a4)
  {
    if (*(a1 + 1385) != 1)
    {
      v31 = 0;
      goto LABEL_36;
    }

    v32 = *(a1 + 1208);
    v33 = *(a1 + 1224);
    v34 = *(a1 + 1240);
    *(v24 + 88) = *(a1 + 1256);
    *(v24 + 72) = v34;
    *(v24 + 56) = v33;
    *(v24 + 40) = v32;
    v35 = *(a1 + 1272);
    v36 = *(a1 + 1288);
    v37 = *(a1 + 1304);
    *(v24 + 152) = *(a1 + 1320);
    *(v24 + 136) = v37;
    *(v24 + 120) = v36;
    *(v24 + 104) = v35;
    v38 = *(a1 + 1336);
    v39 = *(a1 + 1352);
    v40 = *(a1 + 1368);
    *(v24 + 216) = *(a1 + 1384);
    *(v24 + 200) = v40;
    *(v24 + 184) = v39;
    *(v24 + 168) = v38;
    v29 = *(a1 + 32);
    LOBYTE(v30) = *(v29 + 20);
    goto LABEL_35;
  }

  v41 = 0;
  v31 = 0;
LABEL_37:
  v316 = (v9 << v15);
  v319 = (v12 << v15);
  v42 = *(*(a1 + 16) + 2120);
  v43 = v31 + v42 * (v41 - 1);
  v44 = v43 + 1;
  v45 = *(a1 + 648);
  if (v31 != 0 && v31 + v42 * v41 > v45)
  {
    v46 = 240;
  }

  else
  {
    v46 = 0;
  }

  if (v43 >= v45)
  {
    v46 |= 0x1E00u;
  }

  if (v31 != 0 && v43 > v45)
  {
    v46 |= 0x100u;
  }

  v47 = v46 | 0x1E000;
  if (v31 + 1 >= v42)
  {
    v47 = v46;
  }

  if (v44 >= v45)
  {
    v48 = v47;
  }

  else
  {
    v48 = v46;
  }

  if ((v30 & 1) == 0)
  {
    v51 = v48;
    v52 = v318;
    goto LABEL_67;
  }

  v303 = v20;
  v306 = v17;
  v308 = v28;
  v311 = a2;
  v49 = sub_2773FB51C(v29 + 1648, v45 % v42, v45 / v42);
  if (v31)
  {
    if (sub_2773FB51C(*(a1 + 32) + 1648, v31 - 1, v41) >= v49)
    {
      v50 = 240;
    }

    else
    {
      v50 = 0;
    }

    if (!v41)
    {
      goto LABEL_66;
    }

LABEL_58:
    if (sub_2773FB51C(*(a1 + 32) + 1648, v31, v41 - 1) >= v49)
    {
      v50 |= 0x1E00u;
    }

    if (v31 && sub_2773FB51C(*(a1 + 32) + 1648, v31 - 1, v41 - 1) >= v49)
    {
      v50 |= 0x100u;
    }

    if (v31 + 1 < *(*(a1 + 16) + 2120) && sub_2773FB51C(*(a1 + 32) + 1648, v31 + 1, v41 - 1) >= v49)
    {
      v50 |= 0x1E000u;
    }

    goto LABEL_66;
  }

  v50 = 0;
  if (v41)
  {
    goto LABEL_58;
  }

LABEL_66:
  v28 = v308;
  a2 = v311;
  v20 = v303;
  v17 = v306;
  v51 = v50 & v48;
  v52 = v318;
  v31 = *v318;
  v41 = *v320;
  v29 = *(a1 + 32);
  v42 = *(*(a1 + 16) + 2120);
LABEL_67:
  if (v17 == v31)
  {
    v53 = 130560;
  }

  else
  {
    v53 = 131056;
  }

  if (v20 == v41)
  {
    v53 &= 0xF0u;
  }

  if (v11 - 1 == v31)
  {
    v53 &= 0x1FF0u;
  }

  v307 = v53;
  v54 = v53 & v51;
  memset(v322, 0, 5);
  LOBYTE(v322[0]) = *v28;
  BYTE1(v322[0]) = *(v29 + 12);
  BYTE2(v322[0]) = *(a1 + 562);
  v55 = *(*(a1 + 8) + 1000) + 16 * (v31 + v42 * v41);
  *v55 = 0;
  *(v55 + 8) = 0;
  v56 = v319;
  if ((*(a1 + 512) & 1) != 0 || *(a1 + 513) == 1)
  {
    if ((v53 & v51 & 0xF0) == 0)
    {
      goto LABEL_326;
    }

    v57 = *(v24 + 40);
    v59 = *v24;
    v58 = *(v24 + 8);
    v60 = byte_27750DDF3[(v58 & 0xC0) + (v57 >> 1)];
    LODWORD(v61) = v58 - v60;
    if (*v24 < ((v58 - v60) << 55))
    {
      v61 = v61;
    }

    else
    {
      v61 = byte_27750DDF3[(v58 & 0xC0) + (v57 >> 1)];
    }

    if (*v24 < ((v58 - v60) << 55))
    {
      v62 = 0;
    }

    else
    {
      v59 = *v24 - ((v58 - v60) << 55);
      v62 = 1;
    }

    if (*v24 < ((v58 - v60) << 55))
    {
      v63 = *(v24 + 40);
    }

    else
    {
      v63 = v57 + 1;
    }

    v64 = byte_27750DDF3[2 * v57 + 256 + v62];
    v65 = __clz(v61) - 55;
    v66 = v59 << v65;
    *(v24 + 8) = v61 << v65;
    *(v24 + 40) = v64;
    v67 = *(v24 + 16) + v65;
    if (v67 >= 0)
    {
      v68 = *(v24 + 24);
      v70 = *v68;
      v69 = v68 + 1;
      v66 += bswap32(v70) << v67;
      v67 -= 32;
      if (v69 >= *(v24 + 32))
      {
        v69 = *(v24 + 32);
      }

      *(v24 + 24) = v69;
    }

    *(v24 + 16) = v67;
    *v24 = v66;
    if (v63)
    {
      v138 = *(v55 - 16);
    }

    else
    {
LABEL_326:
      if ((v54 & 0x1E00) == 0)
      {
        goto LABEL_106;
      }

      v71 = *(v24 + 40);
      v73 = *v24;
      v72 = *(v24 + 8);
      v74 = byte_27750DDF3[(v72 & 0xC0) + (v71 >> 1)];
      LODWORD(v75) = v72 - v74;
      if (*v24 < ((v72 - v74) << 55))
      {
        v75 = v75;
      }

      else
      {
        v75 = byte_27750DDF3[(v72 & 0xC0) + (v71 >> 1)];
      }

      if (*v24 < ((v72 - v74) << 55))
      {
        v76 = 0;
      }

      else
      {
        v73 = *v24 - ((v72 - v74) << 55);
        v76 = 1;
      }

      if (*v24 < ((v72 - v74) << 55))
      {
        v77 = *(v24 + 40);
      }

      else
      {
        v77 = v71 + 1;
      }

      v78 = byte_27750DDF3[2 * v71 + 256 + v76];
      v79 = __clz(v75) - 55;
      v80 = v73 << v79;
      *(v24 + 8) = v75 << v79;
      *(v24 + 40) = v78;
      v81 = *(v24 + 16) + v79;
      if (v81 >= 0)
      {
        v82 = *(v24 + 24);
        v84 = *v82;
        v83 = v82 + 1;
        v80 += bswap32(v84) << v81;
        v81 -= 32;
        if (v83 >= *(v24 + 32))
        {
          v83 = *(v24 + 32);
        }

        *(v24 + 24) = v83;
      }

      *(v24 + 16) = v81;
      *v24 = v80;
      if ((v77 & 1) == 0)
      {
LABEL_106:
        if (*(a1 + 512) == 1)
        {
          v85 = *(v24 + 41);
          v87 = *v24;
          v86 = *(v24 + 8);
          v88 = byte_27750DDF3[(v86 & 0xC0) + (v85 >> 1)];
          LODWORD(v89) = v86 - v88;
          if (*v24 < ((v86 - v88) << 55))
          {
            v89 = v89;
          }

          else
          {
            v89 = byte_27750DDF3[(v86 & 0xC0) + (v85 >> 1)];
          }

          if (*v24 < ((v86 - v88) << 55))
          {
            v90 = 0;
          }

          else
          {
            v87 = *v24 - ((v86 - v88) << 55);
            v90 = 1;
          }

          if (*v24 < ((v86 - v88) << 55))
          {
            v91 = *(v24 + 41);
          }

          else
          {
            v91 = v85 + 1;
          }

          v92 = byte_27750DDF3[2 * v85 + 256 + v90];
          v93 = __clz(v89) - 55;
          v94 = v87 << v93;
          *(v24 + 8) = v89 << v93;
          *(v24 + 41) = v92;
          v95 = *(v24 + 16) + v93;
          if (v95 >= 0)
          {
            v96 = *(v24 + 24);
            v98 = *v96;
            v97 = v96 + 1;
            v94 += bswap32(v98) << v95;
            v95 -= 32;
            if (v97 >= *(v24 + 32))
            {
              v97 = *(v24 + 32);
            }

            *(v24 + 24) = v97;
          }

          *(v24 + 16) = v95;
          *v24 = v94;
          if (v91)
          {
            v309 = v28;
            v312 = a2;
            v99 = *(*(a1 + 2280) + 1294);
            *v55 |= 1u;
            v101 = *v24;
            v100 = *(v24 + 8);
            v102 = v100 << 54;
            if (*v24 >= (v100 << 54))
            {
              v103 = v100 << 54;
            }

            else
            {
              v103 = 0;
            }

            v104 = 2 * (v101 - v103);
            v105 = *(v24 + 16);
            v106 = v105 + 1;
            v301 = v51;
            v304 = v54;
            if (v105 >= -1)
            {
              v107 = *(v24 + 24);
              v109 = *v107;
              v108 = v107 + 1;
              v104 += bswap32(v109) << v106;
              v106 = v105 - 31;
              if (v108 >= *(v24 + 32))
              {
                v110 = *(v24 + 32);
              }

              else
              {
                v110 = v108;
              }

              *(v24 + 24) = v110;
            }

            v111 = 0;
            *(v24 + 16) = v106;
            *v24 = v104;
            v112 = *(*(a1 + 32) + 1632);
            v113 = v55 + 1;
            do
            {
              *(v113 + v111++) = sub_2773FD034(v24, v99) << v112;
            }

            while (v111 != 4);
            if (v101 >= v102)
            {
              v139 = 0;
              v140 = *v24;
              v141 = *(v24 + 8) << 54;
              v142 = 3;
              v28 = v309;
              a2 = v312;
              v56 = v319;
              LOWORD(v51) = v301;
              v54 = v304;
              do
              {
                v143 = v140 >= v141;
                if (v140 < v141)
                {
                  v144 = 0;
                }

                else
                {
                  v144 = *(v24 + 8) << 54;
                }

                v140 = 2 * (v140 - v144);
                v139 = v143 | (2 * v139);
                --v142;
              }

              while (v142 > 1);
              v145 = *(v24 + 16);
              v146 = v145 + 2;
              v52 = v318;
              if (v145 >= -2)
              {
                v147 = *(v24 + 24);
                v149 = *v147;
                v148 = v147 + 1;
                v140 += bswap32(v149) << v146;
                v146 = v145 - 30;
                if (v148 >= *(v24 + 32))
                {
                  v150 = *(v24 + 32);
                }

                else
                {
                  v150 = v148;
                }

                *(v24 + 24) = v150;
              }

              *(v24 + 16) = v146;
              *v24 = v140;
              *v55 = *v55 & 0xF1 | (2 * (v139 & 7));
              *(v55 + 3) = -*(v55 + 3);
              *(v55 + 4) = -*(v55 + 4);
            }

            else
            {
              v114 = 0;
              *v55 = *v55 & 0xF1 | 8;
              v28 = v309;
              a2 = v312;
              v52 = v318;
              v56 = v319;
              LOWORD(v51) = v301;
              v54 = v304;
              do
              {
                if (*(v113 + v114))
                {
                  v115 = *v24;
                  v116 = *(v24 + 8);
                  v117 = v116 << 54;
                  if (*v24 >= (v116 << 54))
                  {
                    v118 = v116 << 54;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  v119 = 2 * (v115 - v118);
                  v120 = *(v24 + 16);
                  v121 = v120 + 1;
                  if (v120 >= -1)
                  {
                    v122 = *(v24 + 24);
                    v124 = *v122;
                    v123 = v122 + 1;
                    v119 += bswap32(v124) << v121;
                    v121 = v120 - 31;
                    if (v123 >= *(v24 + 32))
                    {
                      v125 = *(v24 + 32);
                    }

                    else
                    {
                      v125 = v123;
                    }

                    *(v24 + 24) = v125;
                  }

                  *(v24 + 16) = v121;
                  *v24 = v119;
                  if (v115 >= v117)
                  {
                    *(v113 + v114) = -*(v113 + v114);
                  }
                }

                ++v114;
              }

              while (v114 != 4);
              v126 = 0;
              v127 = *v24;
              v128 = *(v24 + 8) << 54;
              for (i = 6; i > 1; --i)
              {
                v130 = v127 >= v128;
                if (v127 < v128)
                {
                  v131 = 0;
                }

                else
                {
                  v131 = *(v24 + 8) << 54;
                }

                v127 = 2 * (v127 - v131);
                v126 = v130 | (2 * v126);
              }

              v132 = *(v24 + 16);
              v133 = v132 + 5;
              if (v132 >= -5)
              {
                v134 = *(v24 + 24);
                v136 = *v134;
                v135 = v134 + 1;
                v127 += bswap32(v136) << v133;
                v133 = v132 - 27;
                if (v135 >= *(v24 + 32))
                {
                  v137 = *(v24 + 32);
                }

                else
                {
                  v137 = v135;
                }

                *(v24 + 24) = v137;
              }

              *(v24 + 16) = v133;
              *v24 = v127;
              *(v55 + 13) = v126;
            }
          }
        }

        if (*(a1 + 513) == 1)
        {
          v151 = *(v24 + 41);
          v153 = *v24;
          v152 = *(v24 + 8);
          v154 = byte_27750DDF3[(v152 & 0xC0) + (v151 >> 1)];
          LODWORD(v155) = v152 - v154;
          if (*v24 < ((v152 - v154) << 55))
          {
            v155 = v155;
          }

          else
          {
            v155 = byte_27750DDF3[(v152 & 0xC0) + (v151 >> 1)];
          }

          if (*v24 < ((v152 - v154) << 55))
          {
            v156 = 0;
          }

          else
          {
            v153 = *v24 - ((v152 - v154) << 55);
            v156 = 1;
          }

          if (*v24 < ((v152 - v154) << 55))
          {
            v157 = *(v24 + 41);
          }

          else
          {
            v157 = v151 + 1;
          }

          v158 = byte_27750DDF3[2 * v151 + 256 + v156];
          v159 = __clz(v155) - 55;
          v160 = v153 << v159;
          *(v24 + 8) = v155 << v159;
          *(v24 + 41) = v158;
          v161 = *(v24 + 16) + v159;
          if (v161 >= 0)
          {
            v162 = *(v24 + 24);
            v164 = *v162;
            v163 = v162 + 1;
            v160 += bswap32(v164) << v161;
            v161 -= 32;
            if (v163 >= *(v24 + 32))
            {
              v163 = *(v24 + 32);
            }

            *(v24 + 24) = v163;
          }

          *(v24 + 16) = v161;
          *v24 = v160;
          if (v157)
          {
            v302 = v51;
            v305 = v54;
            v165 = *(*(a1 + 2280) + 1295);
            *v55 |= 0x10u;
            v167 = *v24;
            v166 = *(v24 + 8);
            v168 = v166 << 54;
            if (*v24 >= (v166 << 54))
            {
              v169 = v166 << 54;
            }

            else
            {
              v169 = 0;
            }

            v170 = 2 * (v167 - v169);
            v171 = *(v24 + 16);
            v172 = v171 + 1;
            v310 = v28;
            v313 = a2;
            if (v171 >= -1)
            {
              v173 = *(v24 + 24);
              v175 = *v173;
              v174 = v173 + 1;
              v170 += bswap32(v175) << v172;
              v172 = v171 - 31;
              if (v174 >= *(v24 + 32))
              {
                v176 = *(v24 + 32);
              }

              else
              {
                v176 = v174;
              }

              *(v24 + 24) = v176;
            }

            v177 = 0;
            *(v24 + 16) = v172;
            *v24 = v170;
            v178 = *(*(a1 + 32) + 1633);
            v179 = v55 + 5;
            do
            {
              *(v179 + v177++) = sub_2773FD034(v24, v165) << v178;
            }

            while (v177 != 4);
            if (v167 >= v168)
            {
              v230 = 0;
              v231 = *v24;
              v232 = *(v24 + 8) << 54;
              v233 = 3;
              LOWORD(v51) = v302;
              do
              {
                v234 = v231 >= v232;
                if (v231 < v232)
                {
                  v235 = 0;
                }

                else
                {
                  v235 = *(v24 + 8) << 54;
                }

                v231 = 2 * (v231 - v235);
                v230 = v234 | (2 * v230);
                --v233;
              }

              while (v233 > 1);
              v236 = *(v24 + 16);
              v237 = v236 + 2;
              v52 = v318;
              if (v236 >= -2)
              {
                v238 = *(v24 + 24);
                v240 = *v238;
                v239 = v238 + 1;
                v231 += bswap32(v240) << v237;
                v237 = v236 - 30;
                if (v239 >= *(v24 + 32))
                {
                  v241 = *(v24 + 32);
                }

                else
                {
                  v241 = v239;
                }

                *(v24 + 24) = v241;
              }

              v242 = 0;
              *(v24 + 16) = v237;
              *v24 = v231;
              *v55 = *v55 & 0x1F | (32 * v230);
              do
              {
                *(v55 + 9 + v242++) = sub_2773FD034(v24, v165) << v178;
              }

              while (v242 != 4);
              *(v55 + 7) = -*(v55 + 7);
              *(v55 + 8) = -*(v55 + 8);
              *(v55 + 11) = -*(v55 + 11);
              *(v55 + 12) = -*(v55 + 12);
              v28 = v310;
              a2 = v313;
              v56 = v319;
              v54 = v305;
            }

            else
            {
              v180 = 0;
              *v55 = *v55 & 0x1F | 0x80;
              LOWORD(v51) = v302;
              v52 = v318;
              do
              {
                if (*(v179 + v180))
                {
                  v181 = *v24;
                  v182 = *(v24 + 8);
                  v183 = v182 << 54;
                  if (*v24 >= (v182 << 54))
                  {
                    v184 = v182 << 54;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  v185 = 2 * (v181 - v184);
                  v186 = *(v24 + 16);
                  v187 = v186 + 1;
                  if (v186 >= -1)
                  {
                    v188 = *(v24 + 24);
                    v190 = *v188;
                    v189 = v188 + 1;
                    v185 += bswap32(v190) << v187;
                    v187 = v186 - 31;
                    if (v189 >= *(v24 + 32))
                    {
                      v191 = *(v24 + 32);
                    }

                    else
                    {
                      v191 = v189;
                    }

                    *(v24 + 24) = v191;
                  }

                  *(v24 + 16) = v187;
                  *v24 = v185;
                  if (v181 >= v183)
                  {
                    *(v179 + v180) = -*(v179 + v180);
                  }
                }

                ++v180;
              }

              while (v180 != 4);
              v192 = 0;
              v193 = *v24;
              v194 = *(v24 + 8) << 54;
              for (j = 6; j > 1; --j)
              {
                v196 = v193 >= v194;
                if (v193 < v194)
                {
                  v197 = 0;
                }

                else
                {
                  v197 = *(v24 + 8) << 54;
                }

                v193 = 2 * (v193 - v197);
                v192 = v196 | (2 * v192);
              }

              v198 = *(v24 + 16);
              v199 = v198 + 5;
              if (v198 >= -5)
              {
                v200 = *(v24 + 24);
                v202 = *v200;
                v201 = v200 + 1;
                v193 += bswap32(v202) << v199;
                v199 = v198 - 27;
                if (v201 >= *(v24 + 32))
                {
                  v203 = *(v24 + 32);
                }

                else
                {
                  v203 = v201;
                }

                *(v24 + 24) = v203;
              }

              v204 = 0;
              *(v24 + 16) = v199;
              *v24 = v193;
              v205 = v55 + 9;
              *(v55 + 14) = v192;
              do
              {
                *(v205 + v204++) = sub_2773FD034(v24, v165) << v178;
              }

              while (v204 != 4);
              v206 = 0;
              a2 = v313;
              v56 = v319;
              v54 = v305;
              do
              {
                if (*(v205 + v206))
                {
                  v207 = *v24;
                  v208 = *(v24 + 8);
                  v209 = v208 << 54;
                  if (*v24 >= (v208 << 54))
                  {
                    v210 = v208 << 54;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  v211 = 2 * (v207 - v210);
                  v212 = *(v24 + 16);
                  v213 = v212 + 1;
                  if (v212 >= -1)
                  {
                    v214 = *(v24 + 24);
                    v216 = *v214;
                    v215 = v214 + 1;
                    v211 += bswap32(v216) << v213;
                    v213 = v212 - 31;
                    if (v215 >= *(v24 + 32))
                    {
                      v217 = *(v24 + 32);
                    }

                    else
                    {
                      v217 = v215;
                    }

                    *(v24 + 24) = v217;
                  }

                  *(v24 + 16) = v213;
                  *v24 = v211;
                  if (v207 >= v209)
                  {
                    *(v205 + v206) = -*(v205 + v206);
                  }
                }

                ++v206;
              }

              while (v206 != 4);
              v218 = 0;
              v219 = *v24;
              v220 = *(v24 + 8) << 54;
              for (k = 6; k > 1; --k)
              {
                v222 = v219 >= v220;
                if (v219 < v220)
                {
                  v223 = 0;
                }

                else
                {
                  v223 = *(v24 + 8) << 54;
                }

                v219 = 2 * (v219 - v223);
                v218 = v222 | (2 * v218);
              }

              v224 = *(v24 + 16);
              v225 = v224 + 5;
              v28 = v310;
              if (v224 >= -5)
              {
                v226 = *(v24 + 24);
                v228 = *v226;
                v227 = v226 + 1;
                v219 += bswap32(v228) << v225;
                v225 = v224 - 27;
                if (v227 >= *(v24 + 32))
                {
                  v229 = *(v24 + 32);
                }

                else
                {
                  v229 = v227;
                }

                *(v24 + 24) = v229;
              }

              *(v24 + 16) = v225;
              *v24 = v219;
              *(v55 + 15) = v218;
            }
          }
        }

        goto LABEL_260;
      }

      v138 = *(v55 - 16 * v42);
    }

    *v55 = v138;
  }

LABEL_260:
  v243 = sub_2774382E8(a1, v24, a2, v316, v56, *(*(a1 + 16) + 2113), 0, v54, v322);
  *v28 = SLOBYTE(v322[0]);
  if (*(a1 + 564) == 1)
  {
    v244 = *(a1 + 16);
    v245 = *(v244 + 2117);
    if (*(v244 + 2117))
    {
      v246 = 0;
      v247 = *(a1 + 8);
      v248 = v56;
      v249 = (v247[121] + v247[117] * (v316 >> 3) + (v56 >> 2));
      v250 = (v247[118] + v247[116] * (v248 >> 3) + (v316 >> 2));
      do
      {
        bzero(v250, v245 >> 2);
        bzero(v249, v245 >> 2);
        v251 = *(a1 + 8);
        v250 += *(v251 + 928);
        v249 += *(v251 + 936);
        v246 += 8;
      }

      while (v246 < v245);
    }
  }

  else
  {
    if ((*(a1 + 567) & 1) == 0)
    {
      sub_2773FB24C(a1, v316, v56, v51);
    }

    v252 = *(a1 + 32);
    if (*(v252 + 20) == 1 && (*(v252 + 27) & 1) == 0)
    {
      sub_2773FB24C(a1, v316, v56, v307);
    }
  }

  v253 = *(a1 + 32);
  v254 = *v52;
  if (*(v253 + 21) == 1 && v254 == 1)
  {
    v256 = *(v24 + 40);
    v257 = *(v24 + 56);
    v258 = *(v24 + 88);
    *(a1 + 1240) = *(v24 + 72);
    *(a1 + 1256) = v258;
    *(a1 + 1208) = v256;
    *(a1 + 1224) = v257;
    v259 = *(v24 + 104);
    v260 = *(v24 + 120);
    v261 = *(v24 + 152);
    *(a1 + 1304) = *(v24 + 136);
    *(a1 + 1320) = v261;
    *(a1 + 1272) = v259;
    *(a1 + 1288) = v260;
    v262 = *(v24 + 168);
    v263 = *(v24 + 184);
    v264 = *(v24 + 200);
    *(a1 + 1384) = *(v24 + 216);
    *(a1 + 1352) = v263;
    *(a1 + 1368) = v264;
    *(a1 + 1336) = v262;
    *(a1 + 1385) = 1;
    v254 = *v52;
  }

  v265 = *(a1 + 2280);
  if (*(v265 + 2052) == 1)
  {
    v266 = *(v265 + 1152);
    v267 = *(v265 + 1144);
    v268 = (v265 + (v266 >> 1) + 1128);
    if (v266)
    {
      v267 = *(*v268 + v267);
    }

    v267(v268, a1);
    v254 = *v52;
    v253 = *(a1 + 32);
  }

  v269 = v254 + 1;
  *v52 = v254 + 1;
  if (*(v253 + 20))
  {
    v270 = *(a1 + 2320);
    v271 = *(a1 + 16);
    if (v269 >= v11 && v269 < *(v271 + 2120) && v315 >= *(a1 + 568))
    {
      ++*v320;
      *v52 = v270;
      v269 = v270;
    }
  }

  else
  {
    v270 = 0;
    v271 = *(a1 + 16);
  }

  if (v269 >= *(v271 + 2120))
  {
    v272 = (*v320 + 1) << *(v271 + 2113);
    v273 = *(*(a1 + 8) + 524);
    if (v273 >= v272)
    {
      v274 = v272;
    }

    else
    {
      v274 = *(*(a1 + 8) + 524);
    }

    v321 = v274 - (v272 < v273);
    v275 = *(a1 + 2280);
    if (*(v275 + 2052) == 1)
    {
      v321 = *(v275 + 1248);
    }

    else if (*(v275 + 2051) == 1)
    {
      v276 = v275 + 1128;
      v277 = *(v275 + 1128);
      v278 = *(v275 + 1136);
      v279 = (v276 + (v278 >> 1));
      if (v278)
      {
        v277 = *(*v279 + v277);
      }

      v277(v279, a1, &v321);
      v275 = *(a1 + 2280);
    }

    sub_2774BA50C((v275 + 1264), a1, *(v275 + 2050), &v321);
    if (v314)
    {
      sub_277452C30(*(a1 + 2280) + 1128, *(a1 + 8), *(a1 + 653), &v321);
    }

    v280 = *(a1 + 8);
    atomic_store(v321, (v280 + 1032));
    std::condition_variable::notify_all((v280 + 1104));
    ++*v320;
    *v52 = v270;
  }

  if (*v320 >= v317)
  {
    *v52 = 0;
    if (v315 < *(a1 + 568))
    {
      *(a1 + 2328) = v315 + 1;
      v281 = *(a1 + 32);
      if (*(v281 + 1744) > *v52)
      {
        v282 = *v320;
        if (*(v281 + 1748) > *v320)
        {
          v283 = (a1 + 2304);
          if (*(v281 + 1752) == 1)
          {
            v284 = *(v281 + 1696) + 12 * *v52;
            v285 = *v284;
            *(a1 + 2324) = *(v284 + 8);
            *(a1 + 2316) = v285;
            v286 = *(v281 + 1720) + 12 * v282;
            v287 = *v286;
            *(a1 + 2312) = *(v286 + 8);
            *v283 = v287;
          }

          else
          {
            *v283 = 0;
            *(a1 + 2312) = 0;
            *(a1 + 2320) = 0;
            *(a1 + 2324) = *(v281 + 1744);
            *(a1 + 2312) = *(v281 + 1748);
          }

          goto LABEL_311;
        }
      }

      return 0;
    }

    if (dword_280B9A880 > 3)
    {
      v288 = v243;
    }

    else
    {
      v288 = 0;
    }

    if (v288 == 1)
    {
      fwrite("More data is signalled, but we don't know where to put it\n", 0x3AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(28, "More data is signalled, but we don't know where to put it\n");
    }

    LOBYTE(v243) = 0;
  }

LABEL_311:
  v289 = *(a1 + 32);
  if (*(v289 + 2) == 1 && (v243 & 1) == 0)
  {
    v290 = *(v24 + 40);
    v291 = *(v24 + 56);
    v292 = *(v24 + 88);
    *(a1 + 1418) = *(v24 + 72);
    *(a1 + 1434) = v292;
    *(a1 + 1386) = v290;
    *(a1 + 1402) = v291;
    v293 = *(v24 + 104);
    v294 = *(v24 + 120);
    v295 = *(v24 + 152);
    *(a1 + 1482) = *(v24 + 136);
    *(a1 + 1498) = v295;
    *(a1 + 1450) = v293;
    *(a1 + 1466) = v294;
    v296 = *(v24 + 168);
    v297 = *(v24 + 184);
    v298 = *(v24 + 200);
    *(a1 + 1562) = *(v24 + 216);
    *(a1 + 1530) = v297;
    *(a1 + 1546) = v298;
    *(a1 + 1514) = v296;
  }

  if (((*v320 < *(*(a1 + 16) + 2124)) & v243) != 1)
  {
    return 0;
  }

  if (*(v289 + 21) != 1 || *v52)
  {
    return 1;
  }

  v299 = 1;
  if (!sub_2773FCFB4(v24) && dword_280B9A880 >= 3)
  {
    v299 = 1;
    fwrite("end_of_sub_stream_one_bit is not 1\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "end_of_sub_stream_one_bit is not 1\n");
  }

  return v299;
}

uint64_t sub_2774382E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, char *a9)
{
  v9 = a8;
  v11 = a6;
  v14 = a1;
  v469 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 8);
  v16 = *(v15 + 520);
  v17 = *(v15 + 524);
  v18 = (1 << a6);
  v19 = *(*(a1 + 16) + 2112);
  v20 = v19 < a6;
  v22 = v18 + a4 <= v16 && v18 + a5 <= v17 && v19 < a6;
  v452 = v18 + a5;
  if (v22)
  {
    v23 = (a8 & 0xF0) != 0 && (*(*(v15 + 776) + 2 * *(v15 + 768) * (a5 >> 3) + 2 * ((a4 - v18) >> 3)) & 3) > a7;
    v24 = (a8 & 0x1E00) != 0 && (*(*(v15 + 776) + 2 * *(v15 + 768) * ((a5 - v18) >> 3) + 2 * (a4 >> 3)) & 3) > a7;
    v25 = a2 + v23 + v24;
    v26 = *(v25 + 42);
    v28 = *a2;
    v27 = *(a2 + 8);
    v29 = byte_27750DDF3[(v27 & 0xC0) + (v26 >> 1)];
    LODWORD(v30) = v27 - v29;
    if (*a2 < ((v27 - v29) << 55))
    {
      v30 = v30;
    }

    else
    {
      v30 = byte_27750DDF3[(v27 & 0xC0) + (v26 >> 1)];
    }

    if (*a2 < ((v27 - v29) << 55))
    {
      v31 = 0;
    }

    else
    {
      v28 = *a2 - ((v27 - v29) << 55);
      v31 = 1;
    }

    if (*a2 < ((v27 - v29) << 55))
    {
      v32 = *(v25 + 42);
    }

    else
    {
      v32 = v26 + 1;
    }

    v33 = byte_27750DDF3[2 * v26 + 256 + v31];
    v34 = __clz(v30) - 55;
    v35 = v28 << v34;
    *(a2 + 8) = v30 << v34;
    *(v25 + 42) = v33;
    v36 = *(a2 + 16) + v34;
    if (v36 >= 0)
    {
      v37 = *(a2 + 24);
      v39 = *v37;
      v38 = v37 + 1;
      v35 += bswap32(v39) << v36;
      v36 -= 32;
      if (v38 >= *(a2 + 32))
      {
        v38 = *(a2 + 32);
      }

      *(a2 + 24) = v38;
    }

    *(a2 + 16) = v36;
    *a2 = v35;
    v20 = v32 & 1;
  }

  v40 = *a9;
  LOWORD(v41) = *a9;
  v42 = *(a1 + 32);
  if (*(v42 + 12) == 1)
  {
    v43 = *(v42 + 1636);
    if (v43 <= a6)
    {
      v44 = *(a1 + 16);
      if (*(v44 + 2113) - a7 > v43)
      {
        LOBYTE(v43) = *(v44 + 2113) - a7;
      }

      v45 = -1 << v43;
      v46 = *(v44 + 2117) - 1;
      v47 = (-1 << v43) & a4;
      v48 = v45 & a5;
      v49 = *a9;
      if ((v47 & v46) != 0)
      {
        v49 = *(*(*(a1 + 8) + 776) + 2 * *(*(a1 + 8) + 768) * (v48 >> 3) + 2 * ((v47 - 1) >> 3)) >> 9;
      }

      if ((v48 & v46) != 0)
      {
        v40 = *(*(*(a1 + 8) + 776) + 2 * *(*(a1 + 8) + 768) * ((v48 - 1) >> 3) + 2 * (v47 >> 3)) >> 9;
      }

      v41 = (v49 + v40 + 1) >> 1;
      a9[1] = 1;
    }
  }

  if (*(a1 + 562) == 1 && *(v42 + 1640) <= a6)
  {
    a9[2] = 1;
  }

  v459 = a4;
  if (!v20)
  {
    v55 = a5 >> 3;
    v56 = (*(*(a1 + 8) + 776) + 2 * *(*(a1 + 8) + 768) * v55 + 2 * (a4 >> 3));
    v57 = a7 & 3 | (v41 << 9);
    *v56 = v57;
    if (*(*(a1 + 32) + 19) == 1)
    {
      v58 = *(a2 + 45);
      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = byte_27750DDF3[(v59 & 0xC0) + (v58 >> 1)];
      LODWORD(v62) = v59 - v61;
      if (*a2 < ((v59 - v61) << 55))
      {
        v62 = v62;
      }

      else
      {
        v62 = byte_27750DDF3[(v59 & 0xC0) + (v58 >> 1)];
      }

      if (*a2 < ((v59 - v61) << 55))
      {
        v63 = 0;
      }

      else
      {
        v60 = *a2 - ((v59 - v61) << 55);
        v63 = 1;
      }

      if (*a2 < ((v59 - v61) << 55))
      {
        v64 = *(a2 + 45);
      }

      else
      {
        v64 = v58 + 1;
      }

      v65 = byte_27750DDF3[2 * v58 + 256 + v63];
      v66 = __clz(v62) - 55;
      v67 = v60 << v66;
      *(a2 + 8) = v62 << v66;
      *(a2 + 45) = v65;
      v68 = *(a2 + 16) + v66;
      if (v68 >= 0)
      {
        v69 = *(a2 + 24);
        v71 = *v69;
        v70 = v69 + 1;
        v67 += bswap32(v71) << v68;
        v68 -= 32;
        if (v70 >= *(a2 + 32))
        {
          v70 = *(a2 + 32);
        }

        *(a2 + 24) = v70;
      }

      *(a2 + 16) = v68;
      *a2 = v67;
      v72 = (v64 & 1) << 8;
      v57 = *v56 & 0xFEFF;
    }

    else
    {
      v72 = 0;
    }

    v73 = v57 | v72;
    *v56 = v73;
    if (*(a1 + 58) == 2)
    {
      v74 = v73 & 0xFF7F;
    }

    else
    {
      if ((a8 & 0xF0) != 0)
      {
        v75 = (*(*(*(a1 + 8) + 776) + 2 * *(*(a1 + 8) + 768) * v55 + 2 * ((a4 - 1) >> 3)) >> 7) & 1;
      }

      else
      {
        v75 = 0;
      }

      if ((a8 & 0x1E00) != 0)
      {
        v76 = (*(*(*(a1 + 8) + 776) + 2 * *(*(a1 + 8) + 768) * ((a5 - 1) >> 3) + 2 * (a4 >> 3)) >> 7) & 1;
      }

      else
      {
        v76 = 0;
      }

      v77 = a2 + v76 + v75;
      v78 = *(v77 + 46);
      v80 = *a2;
      v79 = *(a2 + 8);
      v81 = byte_27750DDF3[(v79 & 0xC0) + (v78 >> 1)];
      LODWORD(v82) = v79 - v81;
      if (*a2 < ((v79 - v81) << 55))
      {
        v82 = v82;
      }

      else
      {
        v82 = byte_27750DDF3[(v79 & 0xC0) + (v78 >> 1)];
      }

      if (*a2 < ((v79 - v81) << 55))
      {
        v83 = 0;
      }

      else
      {
        v80 = *a2 - ((v79 - v81) << 55);
        v83 = 1;
      }

      if (*a2 < ((v79 - v81) << 55))
      {
        v84 = *(v77 + 46);
      }

      else
      {
        v84 = v78 + 1;
      }

      v85 = byte_27750DDF3[2 * v78 + 256 + v83];
      v86 = __clz(v82) - 55;
      v87 = v80 << v86;
      *(a2 + 8) = v82 << v86;
      *(v77 + 46) = v85;
      v88 = *(a2 + 16) + v86;
      if (v88 >= 0)
      {
        v89 = *(a2 + 24);
        v91 = *v89;
        v90 = v89 + 1;
        v87 += bswap32(v91) << v88;
        v88 -= 32;
        if (v90 >= *(a2 + 32))
        {
          v90 = *(a2 + 32);
        }

        *(a2 + 24) = v90;
      }

      *(a2 + 16) = v88;
      *a2 = v87;
      v74 = *v56 & 0xFF7F | ((v84 & 1) << 7);
    }

    *v56 = v74;
    v443 = v56;
    v444 = v18 + a4;
    v441 = a5;
    if ((v74 & 0x80) != 0)
    {
      sub_27743A1F8(a1, a2, (*(*(a1 + 8) + 856) + 12 * *(*(a1 + 8) + 848) * (a5 >> 2) + 12 * (a4 >> 2)), a4, a5, 1 << a6, v18, a8, a8, a7, 1);
      v125 = v444;
      v126 = a7;
      v127 = a9;
      goto LABEL_316;
    }

    v440 = a5 >> 3;
    v439 = a4 >> 3;
    if (*(a1 + 58) != 2)
    {
      v92 = *(a2 + 51);
      v93 = *a2;
      v94 = *(a2 + 8) - byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v92 >> 1)];
      v95 = *a2 >= v94 << 55;
      v96 = *a2 - (v94 << 55);
      if (*a2 < v94 << 55)
      {
        v94 = v94;
      }

      else
      {
        v94 = byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v92 >> 1)];
      }

      if (v95)
      {
        v93 = v96;
        v97 = 1;
      }

      else
      {
        v97 = 0;
      }

      if (v95)
      {
        v98 = v92 + 1;
      }

      else
      {
        v98 = *(a2 + 51);
      }

      v99 = byte_27750DDF3[2 * v92 + 256 + v97];
      v100 = __clz(v94) - 55;
      v101 = v94 << v100;
      v102 = v93 << v100;
      *(a2 + 8) = v101;
      *(a2 + 51) = v99;
      v103 = *(a2 + 16) + v100;
      if (v103 >= 0)
      {
        v104 = *(a2 + 24);
        v106 = *v104;
        v105 = v104 + 1;
        v102 += bswap32(v106) << v103;
        v103 -= 32;
        if (v105 >= *(a2 + 32))
        {
          v105 = *(a2 + 32);
        }

        *(a2 + 24) = v105;
      }

      *(a2 + 16) = v103;
      *a2 = v102;
      if ((v98 & 1) == 0)
      {
        v107 = 0;
        v108 = *(a1 + 16);
        v109 = *(v108 + 2112);
        v110 = *(v108 + 276);
        if (v109 != a6 || a6 <= 3)
        {
          v112 = 2;
        }

        else
        {
          v112 = 3;
        }

        while (1)
        {
          v113 = *(a2 + v107 + 52);
          v114 = byte_27750DDF3[(v101 & 0xC0) + (v113 >> 1)];
          v115 = v101 - v114;
          v116 = v102 >= v115 << 55;
          v117 = v102 - (v115 << 55);
          if (v102 < v115 << 55)
          {
            v115 = v115;
          }

          else
          {
            v115 = v114;
          }

          if (v116)
          {
            v102 = v117;
            v118 = 1;
          }

          else
          {
            v118 = 0;
          }

          if (v116)
          {
            v119 = v113 + 1;
          }

          else
          {
            v119 = *(a2 + v107 + 52);
          }

          v120 = byte_27750DDF3[2 * v113 + 256 + v118];
          v121 = __clz(v115) - 55;
          v101 = v115 << v121;
          v102 <<= v121;
          *(a2 + 8) = v101;
          *(a2 + v107 + 52) = v120;
          v103 += v121;
          if (v103 >= 0)
          {
            v122 = *(a2 + 24);
            v124 = *v122;
            v123 = v122 + 1;
            v102 += bswap32(v124) << v103;
            v103 -= 32;
            if (v123 >= *(a2 + 32))
            {
              v123 = *(a2 + 32);
            }

            *(a2 + 24) = v123;
          }

          *(a2 + 16) = v103;
          *a2 = v102;
          if (v119)
          {
            break;
          }

          if (v112 == ++v107)
          {
            goto LABEL_167;
          }
        }

        LODWORD(v112) = v107;
LABEL_167:
        if (v109 < a6 && v110)
        {
          if (v112 == 2)
          {
            v196 = *(a2 + 55);
            v197 = byte_27750DDF3[(v101 & 0xC0) + (v196 >> 1)];
            LODWORD(v198) = v101 - v197;
            v199 = v102 >= (v101 - v197) << 55;
            if (v102 < (v101 - v197) << 55)
            {
              v198 = v198;
            }

            else
            {
              v198 = byte_27750DDF3[(v101 & 0xC0) + (v196 >> 1)];
            }

            if (v102 < (v101 - v197) << 55)
            {
              v200 = 0;
            }

            else
            {
              v102 -= (v101 - v197) << 55;
              v200 = 1;
            }

            if (v199)
            {
              v201 = v196 + 1;
            }

            else
            {
              v201 = *(a2 + 55);
            }

            v202 = byte_27750DDF3[2 * v196 + 256 + v200];
            v203 = __clz(v198);
            v204 = v203 - 55;
            v205 = v198 << (v203 - 55);
            v206 = v102 << v204;
            *(a2 + 8) = v205;
            *(a2 + 55) = v202;
            v207 = v103 + v204;
            if (v207 >= 0)
            {
              v208 = *(a2 + 24);
              v210 = *v208;
              v209 = v208 + 1;
              v206 += bswap32(v210) << v207;
              v207 -= 32;
              if (v209 >= *(a2 + 32))
              {
                v209 = *(a2 + 32);
              }

              *(a2 + 24) = v209;
            }

            *(a2 + 16) = v207;
            *a2 = v206;
            if ((v201 & 1) == 0)
            {
              v211 = v205 << 54;
              if (v206 >= v205 << 54)
              {
                v212 = v205 << 54;
              }

              else
              {
                v212 = 0;
              }

              v213 = 2 * (v206 - v212);
              v214 = v207 + 1;
              if (v207 >= -1)
              {
                v215 = *(a2 + 24);
                v217 = *v215;
                v216 = v215 + 1;
                v213 += bswap32(v217) << v214;
                v214 = v207 - 31;
                if (v216 >= *(a2 + 32))
                {
                  v218 = *(a2 + 32);
                }

                else
                {
                  v218 = v216;
                }

                *(a2 + 24) = v218;
              }

              *(a2 + 16) = v214;
              *a2 = v213;
              v194 = v206 >= v211;
              v195 = 6;
              goto LABEL_217;
            }

            LODWORD(v112) = 2;
          }

          else if (v112 == 1)
          {
            v171 = *(a2 + 55);
            v172 = byte_27750DDF3[(v101 & 0xC0) + (v171 >> 1)];
            LODWORD(v173) = v101 - v172;
            v174 = v102 >= (v101 - v172) << 55;
            if (v102 < (v101 - v172) << 55)
            {
              v173 = v173;
            }

            else
            {
              v173 = byte_27750DDF3[(v101 & 0xC0) + (v171 >> 1)];
            }

            if (v102 < (v101 - v172) << 55)
            {
              v175 = 0;
            }

            else
            {
              v102 -= (v101 - v172) << 55;
              v175 = 1;
            }

            if (v174)
            {
              v176 = v171 + 1;
            }

            else
            {
              v176 = *(a2 + 55);
            }

            v177 = byte_27750DDF3[2 * v171 + 256 + v175];
            v178 = __clz(v173);
            v179 = v178 - 55;
            v180 = v173 << (v178 - 55);
            v181 = v102 << v179;
            *(a2 + 8) = v180;
            *(a2 + 55) = v177;
            v182 = v103 + v179;
            if (v182 >= 0)
            {
              v183 = *(a2 + 24);
              v185 = *v183;
              v184 = v183 + 1;
              v181 += bswap32(v185) << v182;
              v182 -= 32;
              if (v184 >= *(a2 + 32))
              {
                v184 = *(a2 + 32);
              }

              *(a2 + 24) = v184;
            }

            *(a2 + 16) = v182;
            *a2 = v181;
            if ((v176 & 1) == 0)
            {
              v186 = v180 << 54;
              if (v181 >= v180 << 54)
              {
                v187 = v180 << 54;
              }

              else
              {
                v187 = 0;
              }

              v188 = 2 * (v181 - v187);
              v189 = v182 + 1;
              if (v182 >= -1)
              {
                v190 = *(a2 + 24);
                v192 = *v190;
                v191 = v190 + 1;
                v188 += bswap32(v192) << v189;
                v189 = v182 - 31;
                if (v191 >= *(a2 + 32))
                {
                  v193 = *(a2 + 32);
                }

                else
                {
                  v193 = v191;
                }

                *(a2 + 24) = v193;
              }

              *(a2 + 16) = v189;
              *a2 = v188;
              v194 = v181 >= v186;
              v195 = 4;
LABEL_217:
              if (v194)
              {
                LODWORD(v112) = v195 + 1;
              }

              else
              {
                LODWORD(v112) = v195;
              }

              goto LABEL_345;
            }

            LODWORD(v112) = 1;
          }
        }

LABEL_345:
        v350 = *(a1 + 8);
        v351 = *(v350 + 848);
        v352 = a4 + (v18 >> 1);
        v353 = (*(v350 + 856) + 12 * v351 * (a5 >> 2) + 12 * (a4 >> 2));
        v354 = v18 >> 1;
        v355 = v18 >> 3;
        v356 = a5 + (v18 >> 1);
        v357 = a8 & 0x1FFF0;
        if ((a8 & 0xF0) != 0)
        {
          v358 = 15;
        }

        else
        {
          v358 = 0;
        }

        v359 = a8 | (((a8 & 0xF0) != 0) << 8);
        v360 = (a8 & 0x1E00) != 0;
        if ((a8 & 0x1E00) != 0)
        {
          v361 = 122880;
        }

        else
        {
          v361 = 0;
        }

        v362 = v361 & 0xFFFFE000 | a8 & 0x1FFF;
        v363 = v9 & 0x1FE00 | (v360 << 8);
        if (v112 <= 3)
        {
          if (!v112)
          {
            v380 = sub_27743A1F8(a1, a2, v353, a4, a5, 1 << a6, v18, v9, v9, a7, 0);
            v125 = v444;
            v126 = a7;
            v127 = a9;
            v11 = a6;
            if (v380)
            {
LABEL_386:
              v408 = *(a3 + 32);
              *a3 = v11;
              *(a3 + 4) = 3;
              *(a3 + 8) = v112;
              v409 = *(v408 + 16);
              v410 = (v11 - v409[2114]) & ~((v11 - v409[2114]) >> 31);
              if (v410 >= v409[272])
              {
                v410 = v409[272];
              }

              *(a3 + 12) = v410;
              *(a3 + 48) = *(*(v408 + 8) + 776) + 2 * *(*(v408 + 8) + 768) * v440 + 2 * v439;
              *(a3 + 24) = v127;
              v411 = v409[201];
              __c[0] = v11;
              __c[1] = 0;
              __c[2] = v9;
              v412 = *(a3 + 6400);
              v413 = *(a3 + 6408);
              v414 = (a3 + (v413 >> 1));
              v415 = v126;
              if (v413)
              {
                v412 = *(*v414 + v412);
              }

              if (v411)
              {
                v416 = 3;
              }

              else
              {
                v416 = 0;
              }

              v412(v414, v459, v441, 0, v9, v416, __c);
              v127 = a9;
              v126 = v415;
LABEL_315:
              v125 = v444;
              goto LABEL_316;
            }

LABEL_372:
            v394 = *(a2 + 70);
            v396 = *a2;
            v395 = *(a2 + 8);
            v397 = byte_27750DDF3[(v395 & 0xC0) + (v394 >> 1)];
            LODWORD(v398) = v395 - v397;
            if (*a2 < ((v395 - v397) << 55))
            {
              v398 = v398;
            }

            else
            {
              v398 = byte_27750DDF3[(v395 & 0xC0) + (v394 >> 1)];
            }

            if (*a2 < ((v395 - v397) << 55))
            {
              v399 = 0;
            }

            else
            {
              v396 = *a2 - ((v395 - v397) << 55);
              v399 = 1;
            }

            if (*a2 < ((v395 - v397) << 55))
            {
              v400 = *(a2 + 70);
            }

            else
            {
              v400 = v394 + 1;
            }

            v401 = byte_27750DDF3[2 * v394 + 256 + v399];
            v402 = __clz(v398) - 55;
            v403 = v396 << v402;
            *(a2 + 8) = v398 << v402;
            *(a2 + 70) = v401;
            v404 = *(a2 + 16) + v402;
            if (v404 >= 0)
            {
              v405 = *(a2 + 24);
              v407 = *v405;
              v406 = v405 + 1;
              v403 += bswap32(v407) << v404;
              v404 -= 32;
              if (v406 >= *(a2 + 32))
              {
                v406 = *(a2 + 32);
              }

              *(a2 + 24) = v406;
            }

            *(a2 + 16) = v404;
            *a2 = v403;
            if ((v400 & 1) == 0)
            {
              goto LABEL_316;
            }

            goto LABEL_386;
          }

          if (v112 == 1)
          {
            v425 = v9;
            v392 = v9;
            v393 = a4;
            v438 = a7;
            v434 = v359;
            v430 = a5 + (v18 >> 1);
            sub_27743A1F8(a1, a2, v353, a4, a5, 1 << a6, v18 >> 1, v358 | v357, v425, a7, 0);
            v373 = (v353 + 12 * v351 * (v18 >> 3));
            v376 = v434 | 0x1E00;
            v423 = __PAIR64__(a7, v392);
            v377 = a1;
            v378 = a2;
            v375 = v393;
            v9 = v392;
            v14 = a1;
            v379 = v430;
            v374 = v18;
            v391 = v18 >> 1;
            goto LABEL_370;
          }

          __ba = v363;
          if (v112 == 2)
          {
            v370 = a5;
            v368 = a7;
            v447 = a4 + (v18 >> 1);
            sub_27743A1F8(a1, a2, v353, a4, a5, v18 >> 1, v18, v362, v9, a7, 0);
            sub_27743A1F8(v14, a2, (v353 + 12 * (v18 >> 3)), v447, v370, v18 >> 1, v18, __ba | 0xF0, v9, a7, 0);
LABEL_366:
            v126 = v368;
            goto LABEL_371;
          }
        }

        else
        {
          v364 = v18 >> 2;
          v365 = v18 >> 4;
          if (v112 <= 5)
          {
            if (v112 == 4)
            {
              v456 = v356 - v364;
              v449 = (v353 + 12 * v351 * v365);
              v389 = a4;
              v368 = a7;
              v390 = v359;
              sub_27743A1F8(a1, a2, v353, a4, a5, 1 << a6, v18 >> 2, v358 | v357, v9, a7, 0);
              sub_27743A1F8(v14, a2, v449, v389, v456, v18, 3 * (v18 >> 2), v390 | 0x1E00, v9, v368, 0);
            }

            else
            {
              v454 = (v353 + 12 * v351 * 3 * v365);
              v366 = v353;
              v367 = a4;
              v368 = a7;
              v432 = v359;
              v369 = a5 + (v18 >> 1);
              sub_27743A1F8(a1, a2, v366, a4, a5, 1 << a6, 3 * v364, v358 | v357, v9, a7, 0);
              sub_27743A1F8(v14, a2, v454, v367, v369 + (v18 >> 2), v18, v18 >> 2, v432 | 0x1E00, v9, v368, 0);
            }

            goto LABEL_366;
          }

          __ba = v363;
          if (v112 == 6)
          {
            v457 = v352 - v364;
            v438 = a7;
            sub_27743A1F8(a1, a2, v353, a4, a5, v18 >> 2, v18, v362, v9, a7, 0);
            v373 = (v353 + 12 * v365);
            v374 = 3 * (v18 >> 2);
            v376 = __ba | 0xF0;
            v423 = __PAIR64__(a7, v9);
            v377 = v14;
            v378 = a2;
            v375 = v457;
            v379 = v441;
            goto LABEL_368;
          }

          if (v112 == 7)
          {
            v371 = a5;
            v438 = a7;
            v372 = a4 + (v18 >> 1);
            sub_27743A1F8(a1, a2, v353, a4, a5, 3 * v364, v18, v362, v9, a7, 0);
            v373 = (v353 + 36 * v365);
            v374 = v18 >> 2;
            v375 = v372 + (v18 >> 2);
            v376 = __ba | 0xF0;
            v423 = __PAIR64__(v438, v9);
            v377 = v14;
            v378 = a2;
            v379 = v371;
LABEL_368:
            v391 = v18;
LABEL_370:
            sub_27743A1F8(v377, v378, v373, v375, v379, v374, v391, v376, v423, SHIDWORD(v423), 0);
            v126 = v438;
            goto LABEL_371;
          }
        }

        v426 = v18 >> 3;
        v427 = (v353 + 12 * v355 * v351);
        v381 = v358 | v9 & 0x1FF0 | v361;
        v424 = v9;
        v448 = v9;
        v382 = a4;
        v383 = a5;
        v384 = v18 >> 1;
        v433 = v359;
        v429 = v356;
        v386 = v352;
        v387 = v355;
        sub_27743A1F8(a1, a2, v353, a4, a5, v384, v354, v381, v424, a7, 0);
        sub_27743A1F8(a1, a2, (v353 + 12 * v387), v386, v383, v384, v384, __ba | 0xF0, v448, a7, 0);
        v388 = v382;
        v9 = v448;
        v14 = a1;
        sub_27743A1F8(a1, a2, v427, v388, v429, v384, v384, v433 | 0x1FE00, v448, a7, 0);
        sub_27743A1F8(a1, a2, (v427 + 12 * v426), v386, v429, v384, v384, 8176, v448, a7, 0);
        v126 = a7;
LABEL_371:
        v127 = a9;
        v11 = a6;
        v125 = v444;
        goto LABEL_372;
      }
    }

    v128 = *(a1 + 16);
    if (v128[2112] == a6)
    {
      v129 = *(a2 + 52);
      v131 = *a2;
      v130 = *(a2 + 8);
      v132 = byte_27750DDF3[(v130 & 0xC0) + (v129 >> 1)];
      LODWORD(v133) = v130 - v132;
      if (*a2 < ((v130 - v132) << 55))
      {
        v133 = v133;
      }

      else
      {
        v133 = byte_27750DDF3[(v130 & 0xC0) + (v129 >> 1)];
      }

      if (*a2 < ((v130 - v132) << 55))
      {
        v134 = 0;
      }

      else
      {
        v131 = *a2 - ((v130 - v132) << 55);
        v134 = 1;
      }

      if (*a2 < ((v130 - v132) << 55))
      {
        v135 = *(a2 + 52);
      }

      else
      {
        v135 = v129 + 1;
      }

      v136 = byte_27750DDF3[2 * v129 + 256 + v134];
      v137 = __clz(v133) - 55;
      v138 = v131 << v137;
      *(a2 + 8) = v133 << v137;
      *(a2 + 52) = v136;
      v139 = *(a2 + 16) + v137;
      if (v139 >= 0)
      {
        v140 = *(a2 + 24);
        v142 = *v140;
        v141 = v140 + 1;
        v138 += bswap32(v142) << v139;
        v139 -= 32;
        if (v141 >= *(a2 + 32))
        {
          v141 = *(a2 + 32);
        }

        *(a2 + 24) = v141;
      }

      *(a2 + 16) = v139;
      *a2 = v138;
      if (v135)
      {
        v143 = 0;
      }

      else
      {
        v143 = 3;
      }

      v128 = *(a1 + 16);
    }

    else
    {
      v143 = 0;
    }

    if (v128[278] == 1 && !v143 && v128[286] <= a6 && v128[287] >= a6)
    {
      v145 = sub_2773FCFB4(a2);
      *v56 = *v56 & 0xFFF3 | (4 * (v145 != 0));
      v128 = v14[2];
      if (v145)
      {
        memset(__c, 0, sizeof(__c));
        v463 = 0;
        memset(&v464[8], 0, 24);
        v146 = v128[2148];
        v147 = v146 < 3;
        v148 = v146 < 2;
        v149 = v128[284] << (2 * v11);
        v150 = v128[285] << (2 * v11 - (v146 < 2) - (v146 < 3) + 1);
        if (!v146)
        {
          v150 = 0;
        }

        v151 = v150 + v149 + 7;
        v152 = *(a2 + 24);
        v153 = (v152 + ((*(a2 + 16) - 16) >> 3));
        if (*(a2 + 32) - v153 >= v151 >> 3 && (v154 = v151 >> 3, sub_2773FCF4C(a2, v153 + (v151 >> 3)), v152))
        {
          sub_2773FB67C(__c, v153, v154);
          (*(v14[285] + 528))(__c, v18, *(v14[2] + 284));
          v155 = v14[2];
          if (*(v155 + 2148))
          {
            (*(v14[285] + 536))(__c, (1 << (v11 - v147)), (1 << (v11 - v148)), *(v155 + 285));
          }

          v156 = v14[1];
          v157 = vshld_u64(0x202020202020202uLL, *&vdup_n_s32((2 << v11) - 64));
          v158 = v156[117];
          v159 = v441 >> 2;
          v160 = v156[121];
          v161 = v156[116];
          v162 = v459 >> 2;
          v163 = v156[118];
          if (v18 >= 5)
          {
            v164 = v163 + v161 * v440;
            v165 = vmax_s8(*(v164 + v162), v157);
            *(v160 + v158 * v439 + v159) = vmax_s8(*(v160 + v158 * v439 + v159), v157);
            *(v164 + v162) = v165;
          }

          v166 = v163 + v161 * (v452 >> 3);
          v167 = *(v166 + v162);
          *(v160 + v158 * (v444 >> 3) + v159) = vmax_s8(*(v160 + v158 * (v444 >> 3) + v159), v157);
          *(v166 + v162) = vmax_s8(v167, v157);
          v168 = v14[1];
          if (*(v168 + 712) == 1)
          {
            v169 = a3 + (((*(v14[2] + 2117) - 1) & v459) >> 2);
            v170 = 1;
            memset((*(v168 + 688) + v159), 1, v18 >> 2);
            memset((v169 + 6352), 1, v18 >> 2);
LABEL_401:
            v219 = 0;
            goto LABEL_402;
          }

          v417 = *(v168 + 856) + 12 * *(v168 + 848) * v159 + 12 * v162;
          v170 = 1;
          *(v417 + 10) = 1;
          *(v417 + 8) = -1;
          *v417 = 1;
          v418 = v18 >> 2;
          if (v18 >> 2 < 1)
          {
            goto LABEL_401;
          }

          v419 = 0;
          v420 = *v417;
          v421 = 12 * *(v14[1] + 848);
          do
          {
            v422 = 0;
            do
            {
              *(v417 + v422) = v420;
              v422 += 12;
            }

            while (12 * v418 != v422);
            ++v419;
            v417 += v421;
          }

          while (v419 != v418);
          v219 = 0;
          v170 = 1;
        }

        else if (dword_280B9A880 < 3)
        {
          v170 = 0;
          v219 = 1;
        }

        else
        {
          v219 = 1;
          fwrite("Ran out of bits for PCM\n", 0x18uLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "Ran out of bits for PCM\n");
          v170 = 0;
        }

LABEL_402:
        if (*__c)
        {
          *&__c[2] = *__c;
          operator delete(*__c);
        }

        v127 = a9;
        v126 = a7;
        v125 = v444;
        if (v219)
        {
          v334 = v452;
          if (!v170)
          {
            return 0;
          }

          goto LABEL_333;
        }

LABEL_316:
        v334 = v452;
        if (v127[1] == 1)
        {
          LOWORD(v335) = *v127;
          v336 = v14[2];
          v337 = *(v336 + 2113) - v126;
          if (v337 <= *(v14[4] + 1636))
          {
            LOBYTE(v337) = *(v14[4] + 1636);
          }

          v341 = -1 << v337;
          v338 = *(v336 + 2117) - 1;
          v339 = v341 & v459;
          v340 = v341 & v441;
          LOWORD(v341) = *v127;
          if ((v339 & v338) != 0)
          {
            v341 = *(*(v14[1] + 776) + 2 * *(v14[1] + 768) * (v340 >> 3) + 2 * ((v339 - 1) >> 3)) >> 9;
          }

          if ((v340 & v338) != 0)
          {
            v335 = *(*(v14[1] + 776) + 2 * *(v14[1] + 768) * ((v340 - 1) >> 3) + 2 * (v339 >> 3)) >> 9;
          }

          v342 = ((v341 + v335) << 8) + 256;
          *v443 = v342 & 0xFE00 | *v443 & 0x1FF;
          v343 = *(v14[4] + 1636);
          if ((v125 & ~(-1 << v343)) == 0 && v343 <= v11 && (v452 & ~(-1 << v343)) == 0)
          {
            *v127 = v342 >> 9;
          }
        }

        v344 = *(v14[1] + 768);
        v345 = vld1q_dup_s16(v443);
        v346 = *(v14[2] + 2113) - v126;
        switch(v346)
        {
          case 6:
            *v443 = v345;
            *&v443[v344] = v345;
            *&v443[2 * v344] = v345;
            *&v443[3 * v344] = v345;
            *&v443[4 * v344] = v345;
            *&v443[5 * v344] = v345;
            *&v443[6 * v344] = v345;
            *&v443[7 * v344] = v345;
            break;
          case 5:
            *v443 = v345.i64[0];
            *&v443[v344] = v345.i64[0];
            *&v443[2 * v344] = v345.i64[0];
            *&v443[3 * v344] = v345.i64[0];
            break;
          case 4:
            *v443 = v345.i32[0];
            *&v443[v344] = v345.i32[0];
            break;
        }

LABEL_333:
        v347 = *(v14[2] + 2117) - 1;
        v348 = (v347 & v125) != 0 && v125 != *(v14[1] + 520);
        v349 = (v347 & v334) != 0 && v334 != *(v14[1] + 524);
        return v348 || v349 || sub_2773FCFB4(a2) == 0;
      }

      a4 = v459;
      a5 = v441;
    }

    v220 = *(a3 + 32);
    *a3 = v11;
    *(a3 + 4) = 1;
    *(a3 + 8) = v143;
    v221 = *(*(v220 + 16) + 273);
    if (v143)
    {
      ++v221;
    }

    *(a3 + 12) = v221;
    v222 = v128[2117] - 1;
    v223 = v222 & a4;
    v224 = v222 & a5;
    v225 = 1 << (v11 - 3);
    v226 = (a3 + (v223 >> 2) + 6352);
    v227 = v14[1];
    v228 = (*(v227 + 688) + (a5 >> 2));
    v229 = *(v227 + 712);
    if (v229 == 1)
    {
      if (v224 < 1)
      {
        v230 = 1;
        v231 = 1;
      }

      else
      {
        v230 = *v226;
        v231 = v226[v225];
      }

      if ((v9 & 0xF0) != 0)
      {
        v235 = 0;
        v238 = *v228;
        v239 = v228[v225];
        goto LABEL_240;
      }

      v235 = 0;
    }

    else
    {
      v232 = *(v227 + 848);
      v233 = *(v227 + 856);
      v234 = v233 + 12 * v232 * (a5 >> 2);
      v235 = (v234 + 12 * (a4 >> 2));
      if (v224 >= 1 && (v236 = (v233 + 12 * v232 * ((a5 - 1) >> 2) + 12 * (a4 >> 2)), v236[10] == 1))
      {
        v230 = *v236;
        v231 = v236[12 * v225];
      }

      else
      {
        v230 = 1;
        v231 = 1;
      }

      if ((v9 & 0xF0) != 0)
      {
        v237 = (v234 + 12 * ((a4 - 1) >> 2));
        if (v237[10] == 1)
        {
          v238 = *v237;
          v239 = v237[12 * v232 * v225];
LABEL_240:
          v437 = a7;
          __b = (*(v227 + 688) + (a5 >> 2));
          if (v143 == 3)
          {
            v240 = *(v227 + 848);
            v465 = v235;
            v466 = &v235[3 * v225];
            v467 = v235 + 12 * v225 * v240;
            v468 = &v467[12 * v225];
            if (v229)
            {
              v235 = __c;
              v465 = __c;
              v466 = (__c | 0xC);
              v467 = v464;
              v468 = &v464[12];
            }

            v241 = v231;
            v242 = 0;
            v445 = a6 - 1;
            v428 = v225;
            v243 = *(a2 + 56);
            v244 = *a2;
            v245 = *(a2 + 8);
            do
            {
              v246 = byte_27750DDF3[(v245 & 0xC0) + (v243 >> 1)];
              v247 = v245 - v246;
              v248 = v244 >= v247 << 55;
              v249 = v244 - (v247 << 55);
              if (v244 < v247 << 55)
              {
                v247 = v247;
              }

              else
              {
                v247 = v246;
              }

              if (v248)
              {
                v244 = v249;
                v250 = 1;
              }

              else
              {
                v250 = 0;
              }

              if (v248)
              {
                v251 = v243 + 1;
              }

              else
              {
                v251 = v243;
              }

              LOBYTE(v243) = byte_27750DDF3[2 * v243 + 256 + v250];
              v252 = __clz(v247) - 55;
              v245 = v247 << v252;
              v244 <<= v252;
              *(a2 + 8) = v245;
              *(a2 + 56) = v243;
              v253 = *(a2 + 16) + v252;
              if (v253 >= 0)
              {
                v254 = *(a2 + 24);
                v256 = *v254;
                v255 = v254 + 1;
                v244 += bswap32(v256) << v253;
                v253 -= 32;
                if (v255 >= *(a2 + 32))
                {
                  v255 = *(a2 + 32);
                }

                *(a2 + 24) = v255;
              }

              v243 = v243;
              *(a2 + 16) = v253;
              *a2 = v244;
              v460[v242++] = v251 & 1;
            }

            while (v242 != 4);
            v431 = v226;
            *v235 = sub_27743AD04(a2, v230, v238, v460[0]);
            v257 = v465;
            v258 = sub_27743AD04(a2, v241, *v465, v460[1]);
            v259 = v466;
            *v466 = v258;
            v260 = sub_27743AD04(a2, *v257, v239, v460[2]);
            v261 = v467;
            *v467 = v260;
            v262 = sub_27743AD04(a2, *v259, v260, v460[3]);
            v263 = v468;
            *v468 = v262;
            if (*(v14[2] + 2148))
            {
              v264 = sub_27743AF28(a2, *v257);
            }

            else
            {
              v264 = 0;
            }

            for (i = 0; i != 4; ++i)
            {
              v286 = (&v465)[i];
              *(v286 + 10) = 1;
              *(v286 + 1) = v264;
              *(v286 + 4) = -1;
            }

            if (*(v14[2] + 2148) == 3)
            {
              for (j = 1; j != 4; ++j)
              {
                v288 = (&v465)[j];
                *(v288 + 1) = sub_27743AF28(a2, *v288);
              }
            }

            v289 = v14[1];
            if (*(v289 + 712) == 1)
            {
              v290 = (1 << v445) >> 2;
              memset(v228, *v259, v290);
              memset(&v228[v428], *v263, v290);
              memset(v431, *v261, v290);
              memset(&v431[v428], *v263, v290);
              v291 = v459;
              v292 = a9;
              v293 = v441;
              v295 = v439;
              v294 = v440;
            }

            else
            {
              v291 = v459;
              v292 = a9;
              v293 = v441;
              v295 = v439;
              v294 = v440;
              if (a6 >= 4)
              {
                v296 = (1 << v445 >> 2);
                if (v296 >= 1)
                {
                  v297 = 0;
                  v298 = *v257;
                  v299 = *v259;
                  v300 = *v261;
                  v301 = *v263;
                  v302 = 12 * *(v289 + 848);
                  do
                  {
                    v303 = 0;
                    do
                    {
                      *&v257[v303] = v298;
                      *&v261[v303] = v300;
                      v303 += 12;
                    }

                    while (12 * (1 << v445 >> 2) != v303);
                    ++v297;
                    v261 += v302;
                    v257 += v302;
                  }

                  while (v297 != v296);
                  v304 = 0;
                  do
                  {
                    v305 = 0;
                    do
                    {
                      *&v259[v305] = v299;
                      *&v263[v305 * 4] = v301;
                      v305 += 3;
                    }

                    while (3 * v296 != v305);
                    ++v304;
                    v263 += v302;
                    v259 = (v259 + v302);
                  }

                  while (v304 != v296);
                }
              }
            }

            v306 = 0;
            v307 = (a3 + 6417);
            do
            {
              v308 = (&v465)[v306];
              *(v307 - 1) = *v308;
              *v307 = *(v308 + 1);
              v307 += 2;
              ++v306;
            }

            while (v306 != 4);
            *(a3 + 6424) = *(a3 + 6416);
            v309 = *(a3 + 32);
            *(a3 + 48) = *(*(v309 + 8) + 776) + 2 * *(*(v309 + 8) + 768) * v294 + 2 * v295;
            *(a3 + 24) = v292;
            v310 = *(*(v309 + 16) + 201);
            v11 = a6;
            v461[0] = a6;
            v461[1] = 0;
            v461[2] = v9;
            v311 = *(a3 + 6400);
            v312 = *(a3 + 6408);
            v313 = (a3 + (v312 >> 1));
            if (v312)
            {
              v311 = *(*v313 + v311);
            }

            if (v310)
            {
              v314 = 3;
            }

            else
            {
              v314 = 0;
            }

            v311(v313, v291, v293, 0, v9, v314, v461);
            v127 = a9;
          }

          else
          {
            v446 = v9;
            BYTE2(__c[2]) = 1;
            LOWORD(__c[2]) = -1;
            v265 = *(a2 + 56);
            v267 = *a2;
            v266 = *(a2 + 8);
            v268 = byte_27750DDF3[(v266 & 0xC0) + (v265 >> 1)];
            LODWORD(v269) = v266 - v268;
            if (*a2 < ((v266 - v268) << 55))
            {
              v269 = v269;
            }

            else
            {
              v269 = byte_27750DDF3[(v266 & 0xC0) + (v265 >> 1)];
            }

            if (*a2 < ((v266 - v268) << 55))
            {
              v270 = 0;
            }

            else
            {
              v267 = *a2 - ((v266 - v268) << 55);
              v270 = 1;
            }

            if (*a2 < ((v266 - v268) << 55))
            {
              v271 = *(a2 + 56);
            }

            else
            {
              v271 = v265 + 1;
            }

            v272 = byte_27750DDF3[2 * v265 + 256 + v270];
            v273 = __clz(v269) - 55;
            v274 = v267 << v273;
            *(a2 + 8) = v269 << v273;
            *(a2 + 56) = v272;
            v275 = v226;
            v276 = a5;
            v277 = a4;
            v278 = *(a2 + 16) + v273;
            if (v278 >= 0)
            {
              v279 = *(a2 + 24);
              v281 = *v279;
              v280 = v279 + 1;
              v274 += bswap32(v281) << v278;
              v278 -= 32;
              if (v280 >= *(a2 + 32))
              {
                v280 = *(a2 + 32);
              }

              *(a2 + 24) = v280;
            }

            *(a2 + 16) = v278;
            *a2 = v274;
            v282 = sub_27743AD04(a2, v230, v238, v271 & 1);
            v283 = v282;
            LOWORD(__c[0]) = v282;
            if (*(v14[2] + 2148))
            {
              v284 = sub_27743AF28(a2, v282);
              BYTE1(__c[0]) = v284;
            }

            else
            {
              v284 = 0;
            }

            v315 = v14[1];
            if (*(v315 + 712) == 1)
            {
              v316 = v18 >> 2;
              memset(__b, v283, v316);
              v317 = __c[0];
              memset(v275, LOBYTE(__c[0]), v316);
              v318 = a9;
              v319 = a6;
              v320 = v277;
              v321 = v276;
              v322 = v446;
              v323 = a3 + 4096;
            }

            else
            {
              v324 = v18 >> 2;
              v325 = *__c;
              v318 = a9;
              v320 = v277;
              v321 = v276;
              v323 = a3 + 4096;
              if (v18 >> 2 < 1)
              {
                v317 = __c[0];
                v284 = BYTE1(__c[0]);
                v319 = a6;
                v322 = v446;
              }

              else
              {
                v326 = 0;
                v327 = 12 * *(v315 + 848);
                v319 = a6;
                v322 = v446;
                do
                {
                  v328 = 0;
                  do
                  {
                    *&v235[v328] = v325;
                    v328 += 3;
                  }

                  while (3 * v324 != v328);
                  ++v326;
                  v235 = (v235 + v327);
                }

                while (v326 != v324);
                v317 = __c[0];
                v284 = BYTE1(__c[0]);
              }
            }

            *(v323 + 2328) = v317;
            *(v323 + 2329) = v284;
            v329 = (a3 + 6424);
            v330 = vld1_dup_s16(v329);
            *(a3 + 6416) = v330;
            *(a3 + 48) = *(*(*(a3 + 32) + 8) + 776) + 2 * *(*(*(a3 + 32) + 8) + 768) * v440 + 2 * v439;
            *(a3 + 24) = v318;
            v465 = v319;
            LODWORD(v466) = v322;
            v331 = *(a3 + 6400);
            v332 = *(a3 + 6408);
            v333 = (a3 + (v332 >> 1));
            if (v332)
            {
              v331 = *(*v333 + v331);
            }

            v331(v333, v320, v321, 0);
            v127 = a9;
            v11 = v319;
          }

          v126 = v437;
          goto LABEL_315;
        }
      }
    }

    v238 = 1;
    v239 = 1;
    goto LABEL_240;
  }

  v442 = v41;
  v50 = a4 + (v18 >> 1);
  v51 = a5 + (v18 >> 1);
  v52 = v17;
  result = sub_2774382E8(a1, a2, a3);
  if (v50 < v16 && result)
  {
    result = sub_2774382E8(a1, a2, a3);
  }

  v54 = a9;
  if (v51 < v52 && result)
  {
    result = sub_2774382E8(a1, a2, a3);
    v54 = a9;
  }

  if (v51 < v52 && v50 < v16 && result)
  {
    result = sub_2774382E8(a1, a2, a3);
    v54 = a9;
  }

  if (v54[1] == 1 && *(*(a1 + 32) + 1636) == a6)
  {
    *v54 = v442;
  }

  return result;
}

void sub_27743A1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27743A1F8(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, int a9, int a10, char a11)
{
  v216[2] = *MEMORY[0x277D85DE8];
  if (a11)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *(a3 + 10) = v13;
  if (a11)
  {
    goto LABEL_49;
  }

  v14 = *(a2 + 58);
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = byte_27750DDF3[(v15 & 0xC0) + (v14 >> 1)];
  LODWORD(v18) = v15 - v17;
  if (*a2 < ((v15 - v17) << 55))
  {
    v18 = v18;
  }

  else
  {
    v18 = byte_27750DDF3[(v15 & 0xC0) + (v14 >> 1)];
  }

  if (*a2 < ((v15 - v17) << 55))
  {
    v19 = 0;
  }

  else
  {
    v16 = *a2 - ((v15 - v17) << 55);
    v19 = 1;
  }

  if (*a2 < ((v15 - v17) << 55))
  {
    v20 = *(a2 + 58);
  }

  else
  {
    v20 = v14 + 1;
  }

  v21 = byte_27750DDF3[2 * v14 + 256 + v19];
  v22 = __clz(v18) - 55;
  v23 = v16 << v22;
  *(a2 + 8) = v18 << v22;
  *(a2 + 58) = v21;
  v24 = *(a2 + 16) + v22;
  if (v24 >= 0)
  {
    v25 = *(a2 + 24);
    v27 = *v25;
    v26 = v25 + 1;
    v23 += bswap32(v27) << v24;
    v24 -= 32;
    if (v26 >= *(a2 + 32))
    {
      v26 = *(a2 + 32);
    }

    *(a2 + 24) = v26;
  }

  *(a2 + 16) = v24;
  *a2 = v23;
  if (v20)
  {
LABEL_49:
    v58 = *(a1 + 652);
    if (v58 < 2)
    {
      v74 = 0;
    }

    else
    {
      v59 = *a2;
      v60 = *(a2 + 24);
      v61 = *(a2 + 32);
      v62 = *(a2 + 16);
      v63 = *(a2 + 59);
      v64 = *(a2 + 8) - byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v63 >> 1)];
      v65 = *a2 >= v64 << 55;
      v66 = *a2 - (v64 << 55);
      if (*a2 < v64 << 55)
      {
        v64 = v64;
      }

      else
      {
        v64 = byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v63 >> 1)];
      }

      if (v65)
      {
        v59 = v66;
        v67 = 1;
      }

      else
      {
        v67 = 0;
      }

      if (v65)
      {
        v68 = v63 + 1;
      }

      else
      {
        v68 = *(a2 + 59);
      }

      v69 = byte_27750DDF3[2 * v63 + 256 + v67];
      v70 = __clz(v64);
      v71 = v70 - 55;
      v72 = v64 << (v70 - 55);
      v73 = v59 << (v70 - 55);
      *(a2 + 59) = v69;
      if (v68)
      {
        v75 = v58 - 2;
        if (v58 == 2)
        {
          v74 = 1;
        }

        else
        {
          v76 = v58 - 1;
          v77 = v72 << 54;
          v78 = v58 + v70 - 57;
          v74 = 1;
          while (v73 >= v77)
          {
            v73 = 2 * (v73 - v77);
            ++v71;
            ++v74;
            if (!--v75)
            {
              v71 = v78;
              v74 = v76;
              goto LABEL_69;
            }
          }

          v73 *= 2;
          ++v71;
        }
      }

      else
      {
        v74 = 0;
      }

LABEL_69:
      v79 = v62 + v71;
      if (v79 >= 0)
      {
        v80 = *v60++;
        v73 += bswap32(v80) << v79;
        v79 -= 32;
        if (v60 >= v61)
        {
          v60 = v61;
        }
      }

      *a2 = v73;
      *(a2 + 8) = v72;
      *(a2 + 16) = v79;
      *(a2 + 24) = v60;
    }

    if (*(*(a1 + 32) + 1610) && *(*(a1 + 16) + 2113) - a10 == 3)
    {
      sub_2773FA080(a1, a4 & 0xFFFFFFF8, a5 & 0xFFFFFFF8, 8, 8, a9, v213, v74 + 1);
    }

    else
    {
      sub_2773FA080(a1, a4, a5, a6, a7, a8, v213, v74 + 1);
    }

    v81 = &v213[3 * v74];
    v82 = *v81;
    *(a3 + 8) = 16 * *v81;
    v83 = *(v81 + 1);
    *(a3 + 9) = 16 * v83;
    v84 = *(a1 + (v82 & 0xF) + 520) + 16 * v82;
    *(a3 + 8) = v84;
    *(a3 + 9) = *(a1 + (v83 & 0xF) + 536) + 16 * v83;
    *a3 = *(v81 + 1);
    v85 = 1;
  }

  else
  {
    *(a3 + 4) = -1;
    v28 = a3 + 8;
    *a3 = 0;
    v29 = 1;
    if (!*(a1 + 58))
    {
      v30 = *a2;
      if (a7 + a6 == 12)
      {
        goto LABEL_35;
      }

      v31 = a2 + a10;
      v32 = *(v31 + 60);
      v33 = *(a2 + 8);
      v34 = byte_27750DDF3[(v33 & 0xC0) + (v32 >> 1)];
      LODWORD(v35) = v33 - v34;
      v36 = v30 >= (v33 - v34) << 55;
      if (v30 < (v33 - v34) << 55)
      {
        v35 = v35;
      }

      else
      {
        v35 = byte_27750DDF3[(v33 & 0xC0) + (v32 >> 1)];
      }

      if (v30 < (v33 - v34) << 55)
      {
        v37 = 0;
      }

      else
      {
        v30 -= (v33 - v34) << 55;
        v37 = 1;
      }

      if (v36)
      {
        v38 = v32 + 1;
      }

      else
      {
        v38 = *(v31 + 60);
      }

      v39 = byte_27750DDF3[2 * v32 + 256 + v37];
      v40 = __clz(v35) - 55;
      v30 <<= v40;
      *(a2 + 8) = v35 << v40;
      *(v31 + 60) = v39;
      v41 = *(a2 + 16) + v40;
      if (v41 >= 0)
      {
        v42 = *(a2 + 24);
        v44 = *v42;
        v43 = v42 + 1;
        v30 += bswap32(v44) << v41;
        v41 -= 32;
        if (v43 >= *(a2 + 32))
        {
          v43 = *(a2 + 32);
        }

        *(a2 + 24) = v43;
      }

      *(a2 + 16) = v41;
      *a2 = v30;
      if (v38)
      {
        v29 = 3;
      }

      else
      {
LABEL_35:
        v45 = *(a2 + 64);
        v46 = *(a2 + 8) - byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v45 >> 1)];
        v47 = v30 >= v46 << 55;
        v48 = v30 - (v46 << 55);
        if (v30 < v46 << 55)
        {
          v46 = v46;
        }

        else
        {
          v46 = byte_27750DDF3[(*(a2 + 8) & 0xC0) + (v45 >> 1)];
        }

        if (v47)
        {
          v30 = v48;
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        if (v47)
        {
          v50 = v45 + 1;
        }

        else
        {
          v50 = *(a2 + 64);
        }

        v51 = byte_27750DDF3[2 * v45 + 256 + v49];
        v52 = __clz(v46) - 55;
        v53 = v30 << v52;
        *(a2 + 8) = v46 << v52;
        *(a2 + 64) = v51;
        v54 = *(a2 + 16) + v52;
        if (v54 >= 0)
        {
          v55 = *(a2 + 24);
          v57 = *v55;
          v56 = v55 + 1;
          v53 += bswap32(v57) << v54;
          v54 -= 32;
          if (v56 >= *(a2 + 32))
          {
            v56 = *(a2 + 32);
          }

          *(a2 + 24) = v56;
        }

        *(a2 + 16) = v54;
        *a2 = v53;
        v29 = (v50 & 1u) + 1;
      }
    }

    v86 = 0;
    v87 = v29 == 2;
    v201 = a1 + 520;
    v202 = a1 + 516;
    do
    {
      v88 = *(v202 + v87);
      if (v88 < 2)
      {
        v90 = 0;
      }

      else
      {
        v89 = 0;
        v90 = 0;
        v91 = *a2;
        v92 = *(a2 + 8);
        if (v88 == 2)
        {
          v93 = 1;
        }

        else
        {
          v93 = 2;
        }

        v94 = 65;
        v95 = *(a2 + 24);
        v96 = *(a2 + 32);
        v97 = *(a2 + 16);
        do
        {
          v98 = *(a2 + v94);
          v99 = byte_27750DDF3[(v92 & 0xC0) + (v98 >> 1)];
          v100 = v92 - v99;
          v101 = v91 >= v100 << 55;
          v102 = v91 - (v100 << 55);
          if (v91 < v100 << 55)
          {
            v100 = v100;
          }

          else
          {
            v100 = v99;
          }

          if (v101)
          {
            v91 = v102;
            v103 = 1;
          }

          else
          {
            v103 = 0;
          }

          if (v101)
          {
            v104 = v98 + 1;
          }

          else
          {
            v104 = *(a2 + v94);
          }

          v105 = __clz(v100) - 55;
          v92 = v100 << v105;
          v91 <<= v105;
          v89 += v105;
          v90 += v104 & 1;
          *(a2 + v94) = byte_27750DDF3[2 * v98 + 256 + v103];
          if ((v104 & 1) == 0)
          {
            break;
          }

          ++v94;
        }

        while (v90 < v93);
        v106 = v97 + v89;
        if (v106 >= 0)
        {
          v107 = *v95++;
          v91 += bswap32(v107) << v106;
          v106 -= 32;
          if (v95 >= v96)
          {
            v95 = v96;
          }
        }

        v108 = v88 - 1;
        v109 = 0;
        if ((v104 & 1) != 0 && v90 < v108)
        {
          v111 = v92 << 54;
          do
          {
            if (v91 < v111)
            {
              v112 = 0;
            }

            else
            {
              v112 = v92 << 54;
            }

            ++v109;
            v36 = v91 >= v111;
            v91 = 2 * (v91 - v112);
            if (!v36)
            {
              break;
            }

            ++v90;
          }

          while (v90 < v108);
        }

        v113 = v106 + v109;
        if (v113 >= 0)
        {
          v114 = *v95++;
          v91 += bswap32(v114) << v113;
          v113 -= 32;
          if (v95 >= v96)
          {
            v95 = v96;
          }
        }

        *a2 = v91;
        *(a2 + 8) = v92;
        *(a2 + 16) = v113;
        *(a2 + 24) = v95;
      }

      v28[v87] = *(v201 + 16 * v87 + v90) + 16 * v90;
      v115 = *a2;
      v116 = *(a2 + 8);
      if ((v86 & 1) == 0)
      {
        v117 = 0;
        v118 = *(a2 + 24);
        v119 = *(a2 + 32);
        v120 = *(a2 + 16);
        v121 = v213;
        v122 = 1;
        v123 = *(a2 + 67);
        do
        {
          v124 = v122;
          v125 = byte_27750DDF3[(v116 & 0xC0) + (v123 >> 1)];
          v126 = v116 - v125;
          v127 = v115 >= v126 << 55;
          v128 = v115 - (v126 << 55);
          if (v115 < v126 << 55)
          {
            v126 = v126;
          }

          else
          {
            v126 = v125;
          }

          if (v127)
          {
            v115 = v128;
            v129 = 1;
          }

          else
          {
            v129 = 0;
          }

          if (v127)
          {
            v130 = v123 + 1;
          }

          else
          {
            v130 = v123;
          }

          v123 = byte_27750DDF3[2 * v123 + 256 + v129];
          v131 = __clz(v126) - 55;
          v116 = v126 << v131;
          v115 <<= v131;
          v117 += v131;
          *v121 = v130 & 1;
          v121 = v215;
          v122 = 0;
        }

        while ((v124 & 1) != 0);
        *(a2 + 67) = v123;
        v132 = *(a2 + 68);
        v133 = v213;
        v134 = v216;
        v135 = 1;
        do
        {
          v136 = v135;
          if (*v133 == 1)
          {
            v137 = byte_27750DDF3[(v116 & 0xC0) + (v132 >> 1)];
            v138 = v116 - v137;
            v139 = v115 >= v138 << 55;
            v140 = v115 - (v138 << 55);
            if (v115 < v138 << 55)
            {
              v138 = v138;
            }

            else
            {
              v138 = v137;
            }

            if (v139)
            {
              v115 = v140;
              v141 = 1;
            }

            else
            {
              v141 = 0;
            }

            if (v139)
            {
              v142 = v132 + 1;
            }

            else
            {
              v142 = v132;
            }

            v132 = byte_27750DDF3[2 * v132 + 256 + v141];
            v143 = __clz(v138) - 55;
            v116 = v138 << v143;
            v115 <<= v143;
            v117 += v143;
            *v134 = v142 & 1;
          }

          v135 = 0;
          v133 = v215;
          v134 = &v214;
        }

        while ((v136 & 1) != 0);
        *(a2 + 68) = v132;
        v144 = v120 + v117;
        if (v144 >= 0)
        {
          v145 = *v118++;
          v115 += bswap32(v145) << v144;
          v144 -= 32;
          if (v118 >= v119)
          {
            v118 = v119;
          }
        }

        v146 = 0;
        v147 = v116 << 54;
        v148 = v213;
        v149 = v216;
        v150 = 1;
        do
        {
          v151 = v150;
          if (*v148 == 1)
          {
            v152 = *v149;
            v153 = v152 + 1;
            if (v152 == 1)
            {
              v154 = 0;
              v155 = 0;
              do
              {
                v156 = v154;
                if (v115 < v147)
                {
                  v157 = 0;
                }

                else
                {
                  v157 = v116 << 54;
                }

                v158 = v115 - v157;
                v154 = v156 + 1;
                v36 = v115 >= v147;
                v159 = v115 >= v147;
                v115 = 2 * v158;
                v155 += v159 << (v156 + 1);
              }

              while (v36 && v154 < 0x18);
              v144 += v154;
              if (v144 >= 0)
              {
                v160 = *v118++;
                v115 += bswap32(v160) << v144;
                v144 -= 32;
                if (v118 >= v119)
                {
                  v118 = v119;
                }
              }

              v161 = v156 + 2;
              v153 += v155;
            }

            else
            {
              v161 = 1;
            }

            v162 = 0;
            v163 = v161 + 1;
            do
            {
              v164 = v162;
              v165 = v115;
              v166 = v115 >= v147;
              if (v115 < v147)
              {
                v167 = 0;
              }

              else
              {
                v167 = v116 << 54;
              }

              v115 = 2 * (v165 - v167);
              v162 = v166 | (2 * v164);
              --v163;
            }

            while (v163 > 1);
            v144 += v161;
            if (v144 >= 0)
            {
              v168 = *v118++;
              v115 += bswap32(v168) << v144;
              v144 -= 32;
              if (v118 >= v119)
              {
                v118 = v119;
              }
            }

            v169 = v164 + v153;
            if (v165 >= v147)
            {
              v169 = -v169;
            }

            *(a3 + 2 * v87 + v146) = v169;
          }

          v150 = 0;
          v148 = v215;
          v149 = &v214;
          v146 = 1;
        }

        while ((v151 & 1) != 0);
        *a2 = v115;
        *(a2 + 16) = v144;
        *(a2 + 24) = v118;
      }

      v170 = *(a2 + 69);
      v171 = byte_27750DDF3[(v116 & 0xC0) + (v170 >> 1)];
      v172 = v116 - v171;
      v173 = v115 >= v172 << 55;
      v174 = v115 - (v172 << 55);
      if (v115 < v172 << 55)
      {
        v172 = v172;
      }

      else
      {
        v172 = v171;
      }

      if (v173)
      {
        v115 = v174;
        v175 = 1;
      }

      else
      {
        v175 = 0;
      }

      if (v173)
      {
        v176 = v170 + 1;
      }

      else
      {
        v176 = *(a2 + 69);
      }

      v177 = byte_27750DDF3[2 * v170 + 256 + v175];
      v209 = v176;
      v210 = *(a1 + 552);
      v178 = __clz(v172) - 55;
      v179 = v115 << v178;
      *(a2 + 8) = v172 << v178;
      *(a2 + 69) = v177;
      v180 = *(a2 + 16) + v178;
      v211 = a3 + 2 * v87;
      if (v180 >= 0)
      {
        v181 = *(a2 + 24);
        v183 = *v181;
        v182 = v181 + 1;
        v179 += bswap32(v183) << v180;
        v180 -= 32;
        if (v182 >= *(a2 + 32))
        {
          v182 = *(a2 + 32);
        }

        *(a2 + 24) = v182;
      }

      v184 = v29;
      v185 = v29 > 1;
      *(a2 + 16) = v180;
      *a2 = v179;
      v186 = v28;
      v212 = v28[v87] >> 4;
      v216[0] = 0;
      v216[1] = 0;
      memset(v215, 0, sizeof(v215));
      sub_2773F8EA4(a1, a4, a5, a6, a7, a8, v216, v215);
      sub_2773F93C8(a1, a4, a5, v87, v212, a6, a7, v213, v216, v215, 0);
      v86 = v210;
      v187 = &v213[v209 & 1];
      *v211 += *v187;
      v211[1] += *(v187 + 1);
      v188 = !v87 && v185;
      v87 = 1;
      v28 = v186;
      v29 = v184;
    }

    while (v188);
    v85 = 0;
    v84 = *v186;
  }

  if (v84 <= 0xEFu && *(a3 + 9) <= 0xEFu && (a6 < 8 || a7 <= 7) && *(*(a1 + 16) + 2113) - a10 == 3)
  {
    *(a3 + 9) = -1;
    *(a3 + 1) = 0;
  }

  if (a7 >> 2 >= 1)
  {
    v189 = 0;
    v190 = a3;
    v191 = *a3;
    v192 = 12 * *(*(a1 + 8) + 848);
    do
    {
      if (a6 >> 2 >= 1)
      {
        v193 = 0;
        do
        {
          *(v190 + v193) = v191;
          v193 += 12;
        }

        while (12 * (a6 >> 2) != v193);
      }

      ++v189;
      v190 = (v190 + v192);
    }

    while (v189 != a7 >> 2);
  }

  v194 = *(a1 + 2264);
  v195 = *(a1 + 2272);
  v196 = (a1 + (v195 >> 1));
  if (v195)
  {
    v194 = *(*v196 + v194);
  }

  v194(v196, a3, a4, a5, a6, a7);
  v197 = *(a1 + 2288);
  v198 = *(a1 + 2296);
  v199 = (a1 + (v198 >> 1));
  if (v198)
  {
    v197 = *(*v199 + v197);
  }

  v197(v199, a3, a4, a5, a6, a7);
  return v85;
}

uint64_t sub_27743AD04(unint64_t *a1, int a2, uint64_t a3, char a4)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a3 == a2)
  {
    if (a3 < 2)
    {
      a3 = 0;
      v40 = 0x100000000;
      a2 = 1;
      v4 = 26;
    }

    else
    {
      a2 = ((a3 + 29) & 0x1F) + 2;
      v40 = __PAIR64__(a2, a3);
      v4 = ((a3 - 1) & 0x1F) + 2;
    }
  }

  else
  {
    v40 = __PAIR64__(a2, a3);
    if (a2 && a3)
    {
      v4 = 0;
    }

    else if (a3 + a2 > 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 26;
    }
  }

  v41 = v4;
  v5 = *a1;
  v6 = a1[1] << 54;
  if (a4)
  {
    v7 = v5 >= v6;
    if (v5 < v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = a1[1] << 54;
    }

    v9 = 2 * (v5 - v8);
    v10 = a1[2];
    v11 = v10 + 1;
    if (v10 >= -1)
    {
      v12 = a1[3];
      v14 = *v12;
      v13 = v12 + 1;
      v9 += bswap32(v14) << v11;
      v11 = v10 - 31;
      if (v13 >= a1[4])
      {
        v15 = a1[4];
      }

      else
      {
        v15 = v13;
      }

      a1[3] = v15;
    }

    a1[2] = v11;
    *a1 = v9;
    if (v5 >= v6)
    {
      v16 = v9 >= v6;
      if (v9 < v6)
      {
        v6 = 0;
      }

      v17 = 2 * (v9 - v6);
      v18 = v11 + 1;
      if (v11 >= -1)
      {
        v19 = a1[3];
        v21 = *v19;
        v20 = v19 + 1;
        v17 += bswap32(v21) << v18;
        v18 = v11 - 31;
        if (v20 >= a1[4])
        {
          v22 = a1[4];
        }

        else
        {
          v22 = v20;
        }

        a1[3] = v22;
      }

      a1[2] = v18;
      *a1 = v17;
      return *(&v40 + v16 + v7);
    }
  }

  else
  {
    v23 = 0;
    for (i = 6; i > 1; --i)
    {
      v25 = v5 >= v6;
      if (v5 < v6)
      {
        v26 = 0;
      }

      else
      {
        v26 = a1[1] << 54;
      }

      v5 = 2 * (v5 - v26);
      v23 = v25 | (2 * v23);
    }

    v27 = a1[2];
    v28 = v27 + 5;
    if (v27 >= -5)
    {
      v29 = a1[3];
      v31 = *v29;
      v30 = v29 + 1;
      v5 += bswap32(v31) << v28;
      v28 = v27 - 27;
      if (v30 >= a1[4])
      {
        v32 = a1[4];
      }

      else
      {
        v32 = v30;
      }

      a1[3] = v32;
    }

    a1[2] = v28;
    *a1 = v5;
    if (a3 <= a2)
    {
      v33 = a2;
    }

    else
    {
      v33 = a3;
    }

    if (a3 >= a2)
    {
      v34 = a2;
    }

    else
    {
      v34 = a3;
    }

    if (v34 >= v4)
    {
      v35 = v4;
    }

    else
    {
      v35 = v34;
    }

    if (v34 > v4)
    {
      v4 = v34;
    }

    if (v33 <= v4)
    {
      v36 = v4;
    }

    else
    {
      v36 = v33;
    }

    if (v33 >= v4)
    {
      v33 = v4;
    }

    if (v23 < v35)
    {
      v37 = v23;
    }

    else
    {
      v37 = v23 + 1;
    }

    if (v37 < v33)
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 + 1;
    }

    if (v38 < v36)
    {
      return v38;
    }

    else
    {
      return (v38 + 1);
    }
  }

  return a3;
}

uint64_t sub_27743AF28(uint64_t *a1, int a2)
{
  v2 = *(a1 + 57);
  v3 = *a1;
  v4 = a1[1];
  v5 = byte_27750DDF3[(v4 & 0xC0) + (v2 >> 1)];
  LODWORD(v6) = v4 - v5;
  if (*a1 < ((v4 - v5) << 55))
  {
    v6 = v6;
  }

  else
  {
    v6 = byte_27750DDF3[(v4 & 0xC0) + (v2 >> 1)];
  }

  if (*a1 < ((v4 - v5) << 55))
  {
    v7 = 0;
  }

  else
  {
    v3 = *a1 - ((v4 - v5) << 55);
    v7 = 1;
  }

  if (*a1 < ((v4 - v5) << 55))
  {
    v8 = *(a1 + 57);
  }

  else
  {
    v8 = v2 + 1;
  }

  v9 = byte_27750DDF3[2 * v2 + 256 + v7];
  v10 = __clz(v6);
  v11 = v10 - 55;
  v12 = v6 << (v10 - 55);
  v13 = v3 << v11;
  a1[1] = v12;
  *(a1 + 57) = v9;
  v14 = a1[2] + v11;
  if (v14 >= 0)
  {
    v15 = a1[3];
    v17 = *v15;
    v16 = v15 + 1;
    v13 += bswap32(v17) << v14;
    v14 -= 32;
    if (v16 >= a1[4])
    {
      v16 = a1[4];
    }

    a1[3] = v16;
  }

  a1[2] = v14;
  *a1 = v13;
  if ((v8 & 1) == 0)
  {
    return 35;
  }

  v19 = 0;
  v20 = v12 << 54;
  for (i = 3; i > 1; --i)
  {
    v22 = v13 >= v20;
    if (v13 < v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    v13 = 2 * (v13 - v23);
    v19 = v22 | (2 * v19);
  }

  v24 = v14 + 2;
  if (v14 >= -2)
  {
    v25 = a1[3];
    v27 = *v25;
    v26 = v25 + 1;
    v13 += bswap32(v27) << v24;
    v24 = v14 - 30;
    if (v26 >= a1[4])
    {
      v28 = a1[4];
    }

    else
    {
      v28 = v26;
    }

    a1[3] = v28;
  }

  a1[2] = v24;
  *a1 = v13;
  if (byte_27750DFF3[v19] == a2)
  {
    return 34;
  }

  else
  {
    return byte_27750DFF3[v19];
  }
}

uint64_t sub_27743B048(uint64_t a1, uint64_t a2, void *a3, int *a4, int *a5, double a6)
{
  if ((*(a1 + 2332) & 1) == 0)
  {
    if (*a4 + *(*(a1 + 16) + 2120) * *a5 == *(a1 + 52))
    {
      sub_2774369E4(a1, a2, a6);
      if (!v11)
      {
        goto LABEL_2;
      }

      if (dword_280B9A880 >= 3)
      {
        fwrite("Error starting decode\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Error starting decode\n");
      }

      return 0;
    }

    else
    {
      v12 = 1;
      if (dword_280B9A880 >= 3)
      {
        fwrite("First TB decoded in slice is not start of slice!\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "First TB decoded in slice is not start of slice!\n");
      }
    }

    return v12;
  }

LABEL_2:

  return sub_277436FD0(a1, a3, a4, a5);
}

uint64_t *sub_27743B178(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = atomic_load((v2 + 3440));
    if ((v3 & 1) != 0 && dword_280B9A880 >= 3)
    {
      fwrite("Deallocating a non-idle FrameDec!!\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Deallocating a non-idle FrameDec!!\n");
    }

    v4 = 3432;
    while (1)
    {
      v5 = *(v2 + v4);
      if (v5)
      {
        sub_2773CC26C(v5);
      }

      v4 -= 16;
      if (v4 == 3176)
      {
        while (1)
        {
          v6 = *(v2 + v4);
          if (v6)
          {
            sub_2773CC26C(v6);
          }

          v4 -= 16;
          if (v4 == 2920)
          {
            while (1)
            {
              v7 = *(v2 + v4);
              if (v7)
              {
                sub_2773CC26C(v7);
              }

              v4 -= 16;
              if (v4 == 2664)
              {
                while (1)
                {
                  v8 = *(v2 + v4);
                  if (v8)
                  {
                    sub_2773CC26C(v8);
                  }

                  v4 -= 16;
                  if (v4 == 2408)
                  {
                    while (1)
                    {
                      v9 = *(v2 + v4);
                      if (v9)
                      {
                        sub_2773CC26C(v9);
                      }

                      v4 -= 16;
                      if (v4 == 2152)
                      {
                        v10 = *(v2 + 2128);
                        if (v10)
                        {
                          sub_2773CC26C(v10);
                        }

                        v11 = *(v2 + 2088);
                        if (v11)
                        {
                          *(v2 + 2096) = v11;
                          MEMORY[0x277CAD360]();
                        }

                        v12 = *(v2 + 2064);
                        if (v12)
                        {
                          v13 = *(v2 + 2072);
                          v14 = *(v2 + 2064);
                          if (v13 != v12)
                          {
                            do
                            {
                              v16 = *--v13;
                              v15 = v16;
                              *v13 = 0;
                              if (v16)
                              {
                                (*(*v15 + 16))(v15);
                              }
                            }

                            while (v13 != v12);
                            v14 = *(v2 + 2064);
                          }

                          *(v2 + 2072) = v12;
                          operator delete(v14);
                        }

                        sub_2773F1650(v2 + 1728);
                        v17 = *(v2 + 1328);
                        *(v2 + 1328) = 0;
                        if (v17)
                        {
                          free(v17);
                        }

                        JUMPOUT(0x277CAD360);
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

  return result;
}

uint64_t sub_27743B330@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *(result + 8);
  *(v5 + 2584) = 1;
  if (!*(v5 + 184))
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (!*(v5 + 2576))
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, *(v5 + 324), 0);
    v7 = dispatch_queue_create("com.apple.vcphevc.missingref", v6);
    v8 = *(v5 + 2576);
    if (v8)
    {
      dispatch_release(v8);
    }

    *(v5 + 2576) = v7;
  }

  v9 = (v5 + 2560);
  result = *(v5 + 2560);
  if (!result)
  {
    v11 = *(v5 + 184);
    goto LABEL_14;
  }

  if (*(result + 1024) == v4)
  {
    v10 = *(v5 + 2568);
    *a3 = result;
LABEL_17:
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    return result;
  }

  v12 = (*(*result + 24))(result);
  v11 = *(v5 + 184);
  if (!v12)
  {
LABEL_14:
    result = (*(*v11 + 24))(v11, v4, v5 + 2560);
    if (*v9)
    {
      operator new();
    }

    v10 = *(v5 + 2568);
    *a3 = 0;
    goto LABEL_17;
  }

  v13 = *v9;
  *a3 = 0;
  a3[1] = 0;
  v14 = (*(*v13 + 24))(v13);
  result = (*(*v11 + 32))(v11, v4, v14, 0, a3);
  if (*a3)
  {
    operator new();
  }

  return result;
}

void sub_27743B59C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2773CC26C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27743B5B8(void *a1)
{
  v2 = *a1;
  std::mutex::lock((*a1 + 1040));
  atomic_store(0x7FFFFFFFu, (v2 + 1032));
  std::mutex::unlock((v2 + 1040));
  std::condition_variable::notify_all((v2 + 1104));
  v3 = a1[1];
  if (v3)
  {
    sub_2773CC26C(v3);
  }

  JUMPOUT(0x277CAD370);
}

void sub_27743B630(void *a1)
{
  v2 = *a1;
  if (*(*a1 + 531))
  {
    v3 = 1 << (*(v2 + 528) - 1);
    if (*(v2 + 534))
    {
      LOWORD(v3) = 0x8000;
    }

    v4 = *(v2 + 524);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(v2 + 400);
      v7 = *(v2 + 520);
      v8 = *(v2 + 416);
      do
      {
        v9 = v6;
        v10 = v7;
        if (v7 >= 1)
        {
          do
          {
            v9[v8] = v3;
            *v9++ = v3;
            --v10;
          }

          while (v10);
        }

        v6 += 2 * v8;
        v5 += 2;
      }

      while (v5 < v4);
    }
  }

  else
  {
    memset(*(v2 + 400), 128, *(v2 + 416) * *(v2 + 524));
  }

  sub_2773ECE34(v2);
  v11 = *a1;
  std::mutex::lock((*a1 + 1040));
  atomic_store(0x7FFFFFFFu, (v11 + 1032));
  std::mutex::unlock((v11 + 1040));
  std::condition_variable::notify_all((v11 + 1104));
  v12 = a1[1];
  if (v12)
  {
    sub_2773CC26C(v12);
  }

  JUMPOUT(0x277CAD370);
}

uint64_t sub_27743B750(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288662858;
  a2[1] = v2;
  return result;
}

void sub_27743B7E4(uint64_t a1)
{
  std::mutex::lock((a1 + 2472));
  v2 = sub_2773FF200(a1 + 1976);
  v4 = *v2;
  v3 = v2[1];
  *&v7 = *v2;
  *(&v7 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    do
    {
      if ((*(v4 + 42) & 1) == 0)
      {
        sub_27743B8F4((a1 + 2424), &v7);
        *(v4 + 42) = 1;
      }

      *(v4 + 43) = 1;
      v5 = sub_2773FF200(a1 + 1976);
      v4 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v7 = v4;
      *(&v7 + 1) = v6;
      if (v3)
      {
        sub_2773CC26C(v3);
      }

      v3 = v6;
    }

    while (v4);
  }

  else
  {
    v6 = v3;
  }

  sub_27743BE00(a1);
  if (v6)
  {
    sub_2773CC26C(v6);
  }

  std::mutex::unlock((a1 + 2472));
}

void sub_27743B8C8(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  std::mutex::unlock((v1 + 2472));
  _Unwind_Resume(a1);
}

void *sub_27743B8F4(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v8 = result[4];
  v7 = result[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x100)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_27743C088(v13);
    }

    result[4] = v8 - 256;
    v15 = *v5;
    result[1] = v5 + 8;
    result = sub_27743BF84(result, &v15);
    v5 = v3[1];
    v7 = v3[5];
    v9 = v7 + v3[4];
  }

  v14 = *a2;
  *(*&v5[(v9 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v9) = *a2;
  if (*(&v14 + 1))
  {
    atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void sub_27743BDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_27743BE00(uint64_t a1)
{
  do
  {
    if (!*(a1 + 2464))
    {
      break;
    }

    v2 = *(*(*(a1 + 2432) + ((*(a1 + 2456) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 2456));
    *v11 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v3 = *(v2 + 44);
    if (v3 == 1)
    {
      v4 = *(a1 + 2456);
      v5 = *(*(*(a1 + 2432) + ((v4 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v4 + 8);
      if (v5)
      {
        sub_2773CC26C(v5);
        v4 = *(a1 + 2456);
      }

      --*(a1 + 2464);
      v6 = v4 + 1;
      *(a1 + 2456) = v6;
      if (v6 >= 0x200)
      {
        operator delete(**(a1 + 2432));
        *(a1 + 2432) += 8;
        *(a1 + 2456) -= 256;
      }

      v7 = *(a1 + 328);
      if (v7)
      {
        v8 = *v11;
        if (*(a1 + 196) >= v7)
        {
          *(*v11 + 45) = 0;
        }
      }

      else
      {
        v8 = *v11;
      }

      if (*(v8 + 45) == 1)
      {
        v9 = *(a1 + 216);
        if (v9)
        {
          sub_2773ED190(v8, v9, *(a1 + 168), *(a1 + 359));
        }
      }

      v10 = *(a1 + 2408);
      if (v10 && !*(*v11 + 544))
      {
        v10(*(a1 + 2416), *(*v11 + 536), 0, v11);
      }

      ++*(a1 + 196);
    }

    if (*&v11[2])
    {
      sub_2773CC26C(*&v11[2]);
    }
  }

  while ((v3 & 1) != 0);
}

void sub_27743BF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2773CC26C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27743BF84(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_27743C088(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_27743C088(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_2773C5248();
}

uint64_t sub_27743C0D0(uint64_t a1)
{
  if ((*(a1 + 200) & 1) == 0)
  {
    if (*(a1 + 2392) >= 1)
    {
      v2 = 0;
      do
      {
        dispatch_semaphore_wait(*(a1 + 2400), 0xFFFFFFFFFFFFFFFFLL);
        ++v2;
      }

      while (v2 < *(a1 + 2392));
    }

    std::mutex::lock((a1 + 2472));
    sub_27743BE00(a1);
    std::mutex::unlock((a1 + 2472));
    if (*(a1 + 2392) >= 1)
    {
      v3 = 0;
      do
      {
        dispatch_semaphore_signal(*(a1 + 2400));
        ++v3;
      }

      while (v3 < *(a1 + 2392));
    }

    sub_27743B7E4(a1);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 208);
  if (v5 && fclose(v5) && dword_280B9A880 >= 3)
  {
    fwrite("Unable to close file\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Unable to close file\n");
  }

  v6 = *(a1 + 216);
  if (v6 && fclose(v6) && dword_280B9A880 >= 3)
  {
    fwrite("Unable to close file\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Unable to close file\n");
  }

  v7 = *(a1 + 2400);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 2576);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 2568);
  if (v9)
  {
    sub_2773CC26C(v9);
  }

  std::mutex::~mutex((a1 + 2472));
  v10 = *(a1 + 2432);
  v11 = *(a1 + 2440);
  if (v11 == v10)
  {
    v16 = (a1 + 2464);
    v20 = *(a1 + 2432);
  }

  else
  {
    v12 = *(a1 + 2456);
    v13 = &v10[v12 >> 8];
    v14 = *v13;
    v15 = *v13 + 16 * v12;
    v16 = (a1 + 2464);
    v17 = *(v10 + (((*(a1 + 2464) + v12) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 2464) + v12);
    if (v15 != v17)
    {
      do
      {
        v18 = *(v15 + 8);
        if (v18)
        {
          sub_2773CC26C(v18);
          v14 = *v13;
        }

        v15 += 16;
        if (v15 - v14 == 4096)
        {
          v19 = v13[1];
          ++v13;
          v14 = v19;
          v15 = v19;
        }
      }

      while (v15 != v17);
      v11 = *(a1 + 2440);
      v10 = *(a1 + 2432);
    }

    v20 = v11;
  }

  *v16 = 0;
  v21 = v20 - v10;
  if (v21 >= 3)
  {
    do
    {
      operator delete(*v10);
      v10 = (*(a1 + 2432) + 8);
      *(a1 + 2432) = v10;
      v11 = *(a1 + 2440);
      v21 = v11 - v10;
    }

    while (v21 > 2);
    v20 = *(a1 + 2440);
  }

  if (v21 == 1)
  {
    v22 = 128;
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_43;
    }

    v22 = 256;
  }

  *(a1 + 2456) = v22;
LABEL_43:
  if (v10 != v20)
  {
    do
    {
      v23 = *v10++;
      operator delete(v23);
    }

    while (v10 != v20);
    v20 = *(a1 + 2432);
    v11 = *(a1 + 2440);
  }

  if (v11 != v20)
  {
    *(a1 + 2440) = v11 + ((v20 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v24 = *(a1 + 2424);
  if (v24)
  {
    operator delete(v24);
  }

  for (i = 2272; i != 2000; i -= 16)
  {
    v26 = *(a1 + i);
    if (v26)
    {
      sub_2773CC26C(v26);
    }
  }

  sub_2773FE520(a1 + 1976);
  v27 = *(a1 + 1952);
  if (v27)
  {
    v28 = *(a1 + 1960);
    v29 = *(a1 + 1952);
    if (v28 != v27)
    {
      do
      {
        sub_27743B178(--v28, 0);
      }

      while (v28 != v27);
      v29 = *(a1 + 1952);
    }

    *(a1 + 1960) = v27;
    operator delete(v29);
  }

  v30 = *(a1 + 1944);
  if (v30)
  {
    sub_2773CC26C(v30);
  }

  v31 = *(a1 + 1928);
  if (v31)
  {
    sub_2773CC26C(v31);
  }

  v32 = *(a1 + 1912);
  if (v32)
  {
    sub_2773CC26C(v32);
  }

  for (j = 1896; j != 872; j -= 16)
  {
    v34 = *(a1 + j);
    if (v34)
    {
      sub_2773CC26C(v34);
    }
  }

  do
  {
    v35 = *(a1 + j);
    if (v35)
    {
      sub_2773CC26C(v35);
    }

    j -= 16;
  }

  while (j != 616);
  do
  {
    v36 = *(a1 + j);
    if (v36)
    {
      sub_2773CC26C(v36);
    }

    j -= 16;
  }

  while (j != 360);
  sub_27743FD90((a1 + 248));
  v37 = *(a1 + 232);
  if (v37)
  {
    sub_2773CC26C(v37);
  }

  v38 = *(a1 + 176);
  if (v38)
  {
    sub_2773CC26C(v38);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_27743C4C8(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    sub_2773CC26C(v3);
  }

  return a1;
}

uint64_t sub_27743C56C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_27743C59C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_27743C5D8(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x10uLL, "%d", a2);
  v4 = 0;
  return sub_27744140C(a1 + 248, 0xC0AB56BF45863635, "max-threads", __str, 0xFFFFFFFFLL, &v4);
}

void sub_27743C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2408))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Callback already set and can't be changed!\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Callback already set and can't be changed!\n");
    }
  }

  else
  {
    *(a1 + 2408) = a2;
    *(a1 + 2416) = a3;
  }
}

uint64_t sub_27743C6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if (fwrite(&unk_27750DFF7, 1uLL, 3uLL, v2) == 3 && fwrite(v4, 1uLL, v5, *(a1 + 208)) == v5)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

uint64_t sub_27743C774(char *__s1, uint64_t a2)
{
  v4 = *(__s1 + 26);
  if (v4 && __s1[200] == 1 && (__s1[240] & 1) == 0)
  {
    v5 = __s1;
    if (__s1[23] < 0)
    {
      v5 = *__s1;
    }

    v6 = *(__s1 + 3);
    if (strncmp(v5, "FLS;", 4uLL))
    {
      fwrite("FLS;", 1uLL, 4uLL, v4);
      v4 = *(__s1 + 26);
    }

    fwrite(v5, 1uLL, v6, v4);
    __s1[240] = 1;
  }

  if (*(a2 + 17))
  {
    if (dword_280B9A880 >= 6)
    {
      fprintf(*MEMORY[0x277D85DF8], "Discarding NALU from layer %d\n", *(a2 + 17));
      syslog(30, "Discarding NALU from layer %d\n");
    }

    return 0;
  }

  if (*(a2 + 16) - 32 > 2)
  {
    if (dword_280B9A880 >= 4)
    {
      fprintf(*MEMORY[0x277D85DF8], "Discarding NALU of unknown type %d\n", *(a2 + 16));
      syslog(28, "Discarding NALU of unknown type %d\n");
    }

    return 0;
  }

  v7 = sub_27743C6E8(__s1, a2);
  if (v7)
  {
    v8 = v7;
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Dump NALU type %d with error %d", *(a2 + 16), v7);
      syslog(27, "Dump NALU type %d with error %d", *(a2 + 16), v8);
    }

    return v8;
  }

  return sub_2773E8AB8((__s1 + 368), a2);
}

uint64_t sub_27743C968(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v322 = *MEMORY[0x277D85DE8];
  if (*(a1 + 200) == 1)
  {
    sub_27744264C(a1 + 248);
  }

  if (!*(a1 + 224))
  {
    sub_277481F64(__p, *(a1 + 312), *(a1 + 324));
  }

  if (*(a1 + 1960) != *(a1 + 1952))
  {
    goto LABEL_5;
  }

  if ((*(a1 + 308) & 2) != 0)
  {
    v18 = *(a1 + 316);
    *(a1 + 2392) = v18;
    v19 = *(a1 + 312);
    if (v18 < v19)
    {
      v19 = v18;
    }

    if (v18 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v19;
    }
  }

  else
  {
    v12 = 1;
    *(a1 + 2392) = 1;
  }

  *(a1 + 2392) = v12;
  v20 = dispatch_semaphore_create(v12);
  *(a1 + 2400) = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = *(a1 + 2392);
  v22 = *(a1 + 1960);
  v23 = *(a1 + 1952);
  v24 = (v22 - v23) >> 3;
  if (v21 > v24)
  {
    v25 = v21 - v24;
    v26 = *(a1 + 1968);
    if (v25 > (v26 - v22) >> 3)
    {
      if ((v21 & 0x80000000) == 0)
      {
        v27 = v26 - v23;
        if (v27 >> 2 > v21)
        {
          v21 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v21;
        }

        if (!(v28 >> 61))
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(*(a1 + 1960), 8 * v25);
    v213 = &v22[v25];
    goto LABEL_378;
  }

  if (v21 < v24)
  {
    v213 = (v23 + 8 * v21);
    while (v22 != v213)
    {
      sub_27743B178(--v22, 0);
    }

LABEL_378:
    *(a1 + 1960) = v213;
    goto LABEL_380;
  }

  v213 = *(a1 + 1960);
LABEL_380:
  for (i = *(a1 + 1952); i != v213; ++i)
  {
    v215 = operator new(0xD80uLL, 0x40uLL);
    *(v215 + 272) = 0;
    v215[546] = 1;
    *(v215 + 552) = 0u;
    *(v215 + 568) = 0u;
    *(v215 + 584) = 0u;
    *(v215 + 600) = 0u;
    *(v215 + 616) = 0u;
    *(v215 + 632) = 0u;
    *(v215 + 648) = 0u;
    *(v215 + 664) = 0u;
    *(v215 + 680) = 0u;
    *(v215 + 696) = 0u;
    *(v215 + 712) = 0u;
    *(v215 + 728) = 0u;
    *(v215 + 744) = 0u;
    *(v215 + 760) = 0u;
    *(v215 + 776) = 0u;
    *(v215 + 792) = 0u;
    *(v215 + 808) = 0u;
    *(v215 + 824) = 0u;
    *(v215 + 840) = 0u;
    *(v215 + 856) = 0u;
    *(v215 + 872) = 0u;
    *(v215 + 888) = 0u;
    *(v215 + 904) = 0u;
    *(v215 + 920) = 0u;
    *(v215 + 936) = 0u;
    *(v215 + 166) = 0;
    *(v215 + 646) = 256;
    *(v215 + 1272) = 0u;
    *(v215 + 81) = 0u;
    *(v215 + 82) = 0u;
    *(v215 + 217) = 0;
    *(v215 + 219) = 0;
    *(v215 + 218) = 0;
    *(v215 + 241) = 850045863;
    *(v215 + 121) = 0u;
    *(v215 + 122) = 0u;
    *(v215 + 123) = 0u;
    *(v215 + 248) = 0;
    *(v215 + 249) = 1018212795;
    *(v215 + 254) = 0;
    *(v215 + 126) = 0u;
    *(v215 + 125) = 0u;
    *(v215 + 481) = 0;
    bzero(v215 + 2160, 0x500uLL);
    *(v215 + 131) = 0u;
    *(v215 + 130) = 0u;
    *(v215 + 129) = 0u;
    *(v215 + 2120) = 0u;
    *(v215 + 2136) = 0u;
    atomic_store(0, v215 + 3440);
    *(v215 + 257) = a1;
    *(v215 + 431) = dispatch_get_global_queue(*(a1 + 324), 0);
    sub_27743B178(i, v215);
  }

LABEL_5:
  dispatch_semaphore_wait(*(a1 + 2400), 0xFFFFFFFFFFFFFFFFLL);
  for (j = *(a1 + 1952); ; ++j)
  {
    if (j == *(a1 + 1960))
    {
      *(a1 + 200) = 0;
      *(a1 + 203) = 0;
LABEL_10:
      if (dword_280B9A880 >= 3)
      {
        fwrite("!! Didn't decode frame !!\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "!! Didn't decode frame !!\n");
      }

      __p[0] = 0;
      __p[1] = 0;
      sub_27743F2C8(a1, a4, 4294954385, __p);
      if (__p[1])
      {
        sub_2773CC26C(__p[1]);
      }

      return 4294954385;
    }

    v10 = atomic_load(*j + 3440);
    if ((v10 & 1) == 0)
    {
      break;
    }
  }

  v13 = *j;
  v14 = *(*j + 257);
  sub_2773EC398(&v302);
  if ((*(v14 + 308) & 2) == 0 || *(*(v13 + 257) + 34) != 255)
  {
    *a7 = 0;
  }

  v16 = atomic_load(v13 + 3440);
  if (v16)
  {
    v17 = *(v13 + 257);
    __p[0] = 0;
    __p[1] = 0;
    sub_27743F2C8(v17, a4, 4294954385, __p);
    if (__p[1])
    {
      sub_2773CC26C(__p[1]);
    }

    if (dword_280B9A880 >= 3)
    {
      fwrite("Attempting to decode a second frame on the same FrameDec!!\n", 0x3BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Attempting to decode a second frame on the same FrameDec!!\n");
    }

    v11 = 4294954385;
    goto LABEL_396;
  }

  atomic_store(1u, v13 + 3440);
  if (a2)
  {
    v29 = a2 + a3;
  }

  else
  {
    v29 = 0;
  }

  *v13 = a4;
  v13[528] = 0;
  v30 = *(v13 + 257);
  *(v13 + 1024) = *(v30 + 201);
  *(v30 + 201) = 0;
  while (2)
  {
    v31 = *(v30 + 192);
    if ((v31 - 1) < 2 || v31 == 4)
    {
      v33 = a2 + v31;
      if (a2 + v31 + 2 >= v29)
      {
        goto LABEL_384;
      }

      LODWORD(v34) = 0;
      do
      {
        v35 = *a2;
        a2 = (a2 + 1);
        v34 = v35 | (v34 << 8);
        --v31;
      }

      while (v31);
      if (v34 < 2 || (v29 - v33) < v34)
      {
        goto LABEL_414;
      }

      v11 = (*(v302 + 16))(&v302, v33, v34);
      a2 = &v33[v34];
      if (v11)
      {
        break;
      }

      goto LABEL_60;
    }

    if (v31)
    {
      if (dword_280B9A880 < 3)
      {
        goto LABEL_394;
      }

      fprintf(*MEMORY[0x277D85DF8], "Invalid naluSizeLength %u - must be 1, 2, 4!\n", v31);
      syslog(27, "Invalid naluSizeLength %u - must be 1, 2, 4!\n", v31);
LABEL_414:
      v11 = 4294954387;
      goto LABEL_415;
    }

    v38 = (a2 + 1);
    if ((a2 + 1) >= v29)
    {
      goto LABEL_384;
    }

    v39 = __rev16(*a2);
    while (1)
    {
      v40 = *v38 | (v39 << 8);
      if (v40 == 1)
      {
        break;
      }

      ++v38;
      v39 = v40;
      if (v38 >= v29)
      {
        goto LABEL_384;
      }
    }

    v41 = v38 + 1;
    a2 = sub_27750BE08((v38 + 1), v29);
    v11 = (*(v302 + 16))(&v302, v41, a2 - v41);
    if (!v11)
    {
LABEL_60:
      if (v305)
      {
        if (dword_280B9A880 >= 6)
        {
          fprintf(*MEMORY[0x277D85DF8], "Ignoring NALU from layer %d\n", v305);
          syslog(30, "Ignoring NALU from layer %d\n", v305);
        }

        goto LABEL_67;
      }

      v37 = v304;
      if (v304 <= 0x15u && ((1 << v304) & 0x3F03FF) != 0)
      {
        v11 = sub_2774DD40C(v13, &v302, a5, a6);
        if (v11)
        {
          goto LABEL_395;
        }

        v11 = sub_27743C6E8(*(v13 + 257), &v302);
        if (v11)
        {
          if (dword_280B9A880 >= 3)
          {
            fprintf(*MEMORY[0x277D85DF8], "Dump Slice NALU: error %d", v11);
            syslog(27, "Dump Slice NALU: error %d", v11);
          }

          goto LABEL_395;
        }

LABEL_67:
        v30 = *(v13 + 257);
        continue;
      }

      if (v304 <= 0x28u)
      {
        if (((1 << v304) & 0x3000000000) != 0)
        {
          *(*(v13 + 257) + 201) = 1;
LABEL_347:
          v37 = v304;
          goto LABEL_348;
        }

        if (((1 << v304) & 0x4800000000) != 0)
        {
LABEL_348:
          if (v37 == 35 && *(*(v13 + 257) + 306) == 1 && dword_280B9A880 >= 6)
          {
            v197 = *(v303 + 2);
            v198 = *MEMORY[0x277D85DF8];
            fwrite("=========== Access Unit Delimiter ===========\n", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
            if (dword_280B9A880 >= 6)
            {
              fprintf(v198, "  pic_type : %d\n", v197 >> 5);
            }
          }

          goto LABEL_67;
        }

        if (((1 << v304) & 0x18000000000) != 0)
        {
          if (*(v303 + 2) == 255)
          {
            v42 = -1;
          }

          else
          {
            v42 = *(v303 + 2);
          }

          if (v42 > 131)
          {
            switch(v42)
            {
              case 144:
                v317 = 0;
                *&v307 = 0;
                if (v306 > 0x11)
                {
                  goto LABEL_340;
                }

                v53 = off_280B9A8D0(__p, v303, v306);
                if (sub_2774ED7E8(&v315, __p, v53, &v317, &v307) || v315 != 144 || v307 < 4)
                {
                  goto LABEL_340;
                }

                if (*(*(v13 + 257) + 306) != 1)
                {
                  goto LABEL_346;
                }

                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                v54 = *v317;
                v55 = *MEMORY[0x277D85DF8];
                fwrite("=========== SEI Content Light Level ===========\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                fprintf(v55, "  %-44s : %lld\n", "max_content_light_level", bswap32(v54) >> 16);
                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                break;
              case 137:
                v307 = 0uLL;
                v308 = 0;
                v314 = 0;
                v315 = 0;
                memset(__p, 0, 24);
                memset(&__p[4], 0, 24);
                if (v306 == -4)
                {
                  v60 = 0;
                  v61 = 0;
                  v62 = -4;
                }

                else
                {
                  sub_2773C07DC(&v307, v306 + 4);
                  v60 = *(&v307 + 1);
                  v61 = v307;
                  v62 = v306;
                }

                if (v62 > v60 - v61 || (v66 = off_280B9A8D0(v61, v303, v62), sub_2774ED7E8(&v317, v61, v66, &v315, &v314)))
                {
                  v67 = 0;
                }

                else
                {
                  v67 = 0;
                  if (v317 == 137 && v314 >= 0x18)
                  {
                    if (sub_2773FB67C(__p, v315, v314))
                    {
                      v67 = 0;
                    }

                    else
                    {
                      v90 = __p[6];
                      v91 = HIDWORD(__p[6]);
                      v93 = __p[4];
                      v92 = __p[5];
                      v94 = BYTE4(__p[6]) & 7;
                      v95 = &v318 + 1;
                      v96 = 3;
                      do
                      {
                        HIDWORD(__p[6]) = v94;
                        v97 = (v93 + ((v91 + 16) >> 3));
                        __p[4] = v97;
                        if (v97 >= v92)
                        {
                          v98 = 0;
                          LOBYTE(__p[7]) = 1;
                          v97 = v92;
                        }

                        else
                        {
                          v98 = bswap32(*v97);
                        }

                        v99 = HIWORD(v90);
                        v100 = v98 << v94;
                        *(v95 - 3) = v99;
                        LODWORD(__p[6]) = v98 << v94;
                        HIDWORD(__p[6]) = v94;
                        v93 = (v97 + 2);
                        __p[4] = v93;
                        if (v93 >= v92)
                        {
                          v101 = 0;
                          LOBYTE(__p[7]) = 1;
                          __p[4] = v92;
                          v93 = v92;
                        }

                        else
                        {
                          v101 = bswap32(*v93);
                        }

                        v102 = HIWORD(v100);
                        v90 = v101 << v94;
                        LODWORD(__p[6]) = v101 << v94;
                        *v95++ = v102;
                        v91 = v94;
                        --v96;
                      }

                      while (v96);
                      HIDWORD(__p[6]) = v94;
                      v103 = (v93 + 2);
                      __p[4] = v93 + 2;
                      if ((v93 + 2) >= v92)
                      {
                        v104 = 0;
                        LOBYTE(__p[7]) = 1;
                        v103 = v92;
                      }

                      else
                      {
                        v104 = bswap32(*v103);
                      }

                      v105 = HIWORD(v90);
                      v106 = v104 << v94;
                      WORD4(v318) = v105;
                      LODWORD(__p[6]) = v104 << v94;
                      HIDWORD(__p[6]) = v94;
                      v107 = (v103 + 2);
                      __p[4] = v107;
                      if (v107 >= v92)
                      {
                        v108 = 0;
                        LOBYTE(__p[7]) = 1;
                        v107 = v92;
                      }

                      else
                      {
                        v108 = bswap32(*v107);
                      }

                      v109 = HIWORD(v106);
                      v110 = v108 << v94;
                      WORD5(v318) = v109;
                      LODWORD(__p[6]) = v108 << v94;
                      HIDWORD(__p[6]) = v94;
                      v111 = (v107 + 2);
                      __p[4] = v107 + 2;
                      if ((v107 + 2) >= v92)
                      {
                        v112 = 0;
                        LOBYTE(__p[7]) = 1;
                        v111 = v92;
                      }

                      else
                      {
                        v112 = bswap32(*v111);
                      }

                      v113 = v112 << v94;
                      __p[6] = __PAIR64__(v94, v113);
                      v114 = (v111 + 2);
                      __p[4] = v114;
                      if (v114 >= v92)
                      {
                        v115 = 0;
                        LOBYTE(__p[7]) = 1;
                        v114 = v92;
                      }

                      else
                      {
                        v115 = bswap32(*v114);
                      }

                      HIDWORD(v318) = v110 & 0xFFFF0000 | HIWORD(v113);
                      LODWORD(__p[6]) = v115 << v94;
                      HIDWORD(__p[6]) = v94;
                      v116 = (v114 + 2);
                      __p[4] = v114 + 2;
                      if ((v114 + 2) >= v92)
                      {
                        v117 = 0;
                        v116 = v92;
                      }

                      else
                      {
                        v117 = bswap32(*v116);
                      }

                      v118 = v117 << v94;
                      __p[6] = __PAIR64__(v94, v118);
                      if ((v116 + 2) >= v92)
                      {
                        LOBYTE(__p[7]) = 1;
                        __p[4] = v92;
                      }

                      LODWORD(v319) = (v115 << v94) & 0xFFFF0000 | HIWORD(v118);
                      v67 = 1;
                    }
                  }
                }

                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if (v61)
                {
                  operator delete(v61);
                }

                if (!v67)
                {
                  goto LABEL_340;
                }

                if (*(*(v13 + 257) + 306) != 1)
                {
                  goto LABEL_346;
                }

                v55 = *MEMORY[0x277D85DF8];
                v68 = dword_280B9A880;
                if (dword_280B9A880 > 5)
                {
                  fwrite("=========== SEI Mastering Display Colour Volume ===========\n", 0x3CuLL, 1uLL, *MEMORY[0x277D85DF8]);
                  v68 = dword_280B9A880;
                }

                v69 = 3;
                v70 = &v318 + 1;
                do
                {
                  if (v68 >= 6)
                  {
                    fprintf(v55, "  %-44s : %lld\n", "display_primaries_x", *(v70 - 3));
                    v68 = dword_280B9A880;
                    if (dword_280B9A880 >= 6)
                    {
                      fprintf(v55, "  %-44s : %lld\n", "display_primaries_y", *v70);
                      v68 = dword_280B9A880;
                    }
                  }

                  ++v70;
                  --v69;
                }

                while (v69);
                if (v68 <= 5)
                {
                  goto LABEL_346;
                }

                fprintf(v55, "  %-44s : %lld\n", "white_point_x", WORD4(v318));
                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                fprintf(v55, "  %-44s : %lld\n", "white_point_y", WORD5(v318));
                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                fprintf(v55, "  %-44s : %lld\n", "max_display_mastering_luminance", HIDWORD(v318));
                if (dword_280B9A880 < 6)
                {
                  goto LABEL_346;
                }

                break;
              case 132:
                if (*(*(v13 + 257) + 304) != 1)
                {
                  goto LABEL_346;
                }

                if (!*(v13 + 265))
                {
                  if (dword_280B9A880 < 3)
                  {
                    goto LABEL_346;
                  }

                  fwrite("MD5 SEI before frame\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  syslog(27, "MD5 SEI before frame\n");
                  goto LABEL_340;
                }

                if (v306 <= 0x55)
                {
                  *&v307 = 0;
                  v315 = 0;
                  v44 = off_280B9A8D0(__p, v303, v306);
                  if (!sub_2774ED7E8(&v317, __p, v44, &v307, &v315) && v317 == 132)
                  {
                    if (v315)
                    {
                      v45 = *v307;
                      if (v45 <= 2)
                      {
                        v46 = byte_27753C778[*v307];
                        HIDWORD(v317) = *v307;
                        v318 = 0u;
                        v319 = 0u;
                        v320 = 0u;
                        if (v315 != (v46 + 1))
                        {
                          if (v315 != (3 * v46 + 1))
                          {
                            goto LABEL_340;
                          }

                          v46 = (3 * v46);
                        }

                        memcpy(&v318, (v307 + 1), v46);
                        if (*(*(v13 + 257) + 306) == 1)
                        {
                          sub_2774ED970(&v317, *MEMORY[0x277D85DF8]);
                        }

                        if (!v45)
                        {
                          v47 = *(v13 + 265);
                          if (*(v47 + 548) == 1 && dword_280B9A880 >= 4)
                          {
                            fwrite("Got multiple MD5 SEI for one frame\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
                            syslog(28, "Got multiple MD5 SEI for one frame\n");
                            v47 = *(v13 + 265);
                          }

                          v48 = (v47 + 549);
                          v49 = v319;
                          *v48 = v318;
                          v48[1] = v49;
                          v48[2] = v320;
                          *(*(v13 + 265) + 548) = 1;
                        }

                        goto LABEL_346;
                      }
                    }
                  }
                }

LABEL_340:
                if (dword_280B9A880 >= 4)
                {
                  v195 = *(v303 + 2);
                  if (v195 == 255)
                  {
                    v195 = -1;
                  }

                  fprintf(*MEMORY[0x277D85DF8], "Ignoring SEI of type %d (parse fail)\n", v195);
                  v196 = *(v303 + 2);
                  if (v196 == 255)
                  {
                    v196 = -1;
                  }

                  syslog(28, "Ignoring SEI of type %d (parse fail)\n", v196);
                }

                goto LABEL_346;
              default:
                goto LABEL_128;
            }

            fprintf(v55, "  %-44s : %lld\n");
            goto LABEL_346;
          }

          if (v42)
          {
            if (v42 != 1)
            {
              if (v42 == 5)
              {
                if (v306 <= 0x5F)
                {
                  *&v307 = 0;
                  v315 = 0;
                  v43 = off_280B9A8D0(__p, v303, v306);
                  if (!sub_2774ED7E8(&v317, __p, v43, &v307, &v315) && v317 == 5 && v315 - 62 >= 0xFFFFFFFFFFFFFFD2)
                  {
                    v72 = 0;
                    while (*(&xmmword_27753C760 + v72) == *(v307 + v72))
                    {
                      if (++v72 == 16)
                      {
                        v73 = v315 - 4;
                        if (v315 != 16)
                        {
                          v74 = 0;
                          v75 = v307 + 16;
                          do
                          {
                            *(v74 + &v317 + 4) = byte_27753C770[v74 & 7] ^ *(v74 + v75);
                            v74 = (v74 + 1);
                          }

                          while (v73 != v74);
                        }

                        *(v73 + &v317 + 4) = 0;
                        if (*(*(v13 + 257) + 306) == 1 && dword_280B9A880 >= 6)
                        {
                          v76 = *MEMORY[0x277D85DF8];
                          fwrite("=========== SEI User Data ===========\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
                          if (dword_280B9A880 >= 6)
                          {
                            fprintf(v76, "  message: %s\n");
                          }
                        }

                        goto LABEL_346;
                      }
                    }
                  }
                }

                if (dword_280B9A880 >= 6)
                {
                  fwrite("Ignoring user data SEI of unknown type\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  syslog(30, "Ignoring user data SEI of unknown type\n");
                }

LABEL_346:
                v11 = sub_27743C6E8(*(v13 + 257), &v302);
                if (v11)
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "Dump SEI NALU: error %d", v11);
                    syslog(27, "Dump SEI NALU: error %d", v11);
                  }

                  goto LABEL_395;
                }

                goto LABEL_347;
              }

LABEL_128:
              if (*(*(v13 + 257) + 306) != 1)
              {
                goto LABEL_346;
              }

              if (v304 == 39)
              {
                v56 = "=========== SEI Prefix ===========\n";
                if (dword_280B9A880 <= 5)
                {
                  goto LABEL_346;
                }
              }

              else
              {
                v71 = dword_280B9A880;
                if (v304 != 40 || (v56 = "=========== SEI Suffix ===========\n", dword_280B9A880 < 6))
                {
LABEL_184:
                  if (v71 >= 6)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "  %-44s : %d\n");
                  }

                  goto LABEL_346;
                }
              }

              fwrite(v56, 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
              v71 = dword_280B9A880;
              goto LABEL_184;
            }

            BYTE12(v307) = 0;
            *(&v307 + 4) = 0;
            v308 = -1;
            v309 = -1;
            LOBYTE(v310) = 0;
            HIDWORD(v310) = -1;
            v57 = *(v13 + 257);
            v317 = 0;
            v318 = 0uLL;
            v320 = 0uLL;
            *(&v319 + 1) = 0;
            if (v306 > 0x55)
            {
              v58 = 0;
              v59 = 0;
              goto LABEL_144;
            }

            v64 = off_280B9A8D0(__p, v303, v306);
            v314 = 0;
            v315 = 0;
            if (!sub_2774ED7E8(&v307, __p, v64, &v315, &v314))
            {
              v59 = 0;
              if (v307 != 1 || !v314)
              {
                goto LABEL_143;
              }

              if (!sub_2773FB67C(&v317, v315, v314))
              {
                v77 = *(v57 + 624);
                if (v77)
                {
                  if (v77[398] != 1 || v77[2028] != 1)
                  {
                    goto LABEL_357;
                  }

                  if (v77[1999] == 1)
                  {
                    v78 = SHIDWORD(v320) + 4;
                    v79 = (*(&v319 + 1) + (v78 >> 3));
                    if (v79 >= v320)
                    {
                      v80 = 0;
                      v321 = 1;
                      v79 = v320;
                    }

                    else
                    {
                      v80 = bswap32(*v79);
                    }

                    DWORD1(v307) = DWORD2(v320) >> 28;
                    v126 = (v78 & 7) + 2;
                    v127 = (v79 + (v126 >> 3));
                    if (v127 >= v320)
                    {
                      v128 = 0;
                      v321 = 1;
                      v127 = v320;
                    }

                    else
                    {
                      v128 = bswap32(*v127);
                    }

                    v129 = v80 << (v78 & 7) >> 30;
                    v130 = v128 << (v126 & 7);
                    DWORD2(v307) = v129;
                    v131 = (v126 & 7) + 1;
                    v132 = v131 & 7;
                    DWORD2(v320) = v130;
                    HIDWORD(v320) = v131 & 7;
                    v133 = (v127 + (v131 >> 3));
                    *(&v319 + 1) = v133;
                    if (v133 >= v320)
                    {
                      v134 = 0;
                      v321 = 1;
                      *(&v319 + 1) = v320;
                    }

                    else
                    {
                      v134 = bswap32(*v133);
                    }

                    DWORD2(v320) = v134 << v132;
                    BYTE12(v307) = v130 < 0;
                  }

                  if (((v77[2032] & 1) != 0 || v77[2033] == 1) && ((v135 = v77[2043], v136 = v135 + SHIDWORD(v320) + 1, v137 = (*(&v319 + 1) + (v136 >> 3)), v137 >= v320) ? (v138 = 0, v321 = 1, v137 = v320) : (v138 = bswap32(*v137)), (LODWORD(v308) = DWORD2(v320) >> ~v135, v139 = v77[2044], v140 = v139 + (v136 & 7) + 1, v141 = (v137 + (v140 >> 3)), v141 >= v320) ? (v142 = 0, v321 = 1, v141 = v320) : (v142 = bswap32(*v141)), (DWORD2(v320) = v142 << (v140 & 7), HIDWORD(v308) = v138 << (v136 & 7) >> ~v139, v77[2034] == 1) && ((v143 = v77[2038], v144 = v143 + (v140 & 7) + 1, HIDWORD(v320) = v144 & 7, v145 = (v141 + (v144 >> 3)), *(&v319 + 1) = v145, v145 >= v320) ? (v146 = 0, v321 = 1, *(&v319 + 1) = v320) : (v146 = bswap32(*v145)), DWORD2(v320) = v146 << (v144 & 7), LODWORD(v309) = v142 << (v140 & 7) >> ~v143, v77[2037] == 1)))
                  {
                    v293 = sub_2773FB90C(&v317);
                    HIDWORD(v309) = v293;
                    v199 = DWORD2(v320);
                    v200 = SHIDWORD(v320) + 1;
                    HIDWORD(v320) = v200 & 7;
                    v201 = (*(&v319 + 1) + (v200 >> 3));
                    *(&v319 + 1) = v201;
                    if (v201 >= v320)
                    {
                      v202 = 0;
                      v321 = 1;
                      *(&v319 + 1) = v320;
                      v201 = v320;
                    }

                    else
                    {
                      v202 = bswap32(*v201);
                    }

                    v203 = v202 << (v200 & 7);
                    DWORD2(v320) = v203;
                    LOBYTE(v310) = v199 < 0;
                    if (v199 < 0)
                    {
                      v204 = v77[2042];
                      v205 = v204 + (v200 & 7) + 1;
                      HIDWORD(v320) = v205 & 7;
                      v206 = (v201 + (v205 >> 3));
                      *(&v319 + 1) = v206;
                      if (v206 >= v320)
                      {
                        v207 = 0;
                        v321 = 1;
                        *(&v319 + 1) = v320;
                      }

                      else
                      {
                        v207 = bswap32(*v206);
                      }

                      DWORD2(v320) = v207 << (v205 & 7);
                      HIDWORD(v310) = v203 >> ~v204;
                    }

                    v208 = 0;
                    do
                    {
                      sub_2773FB90C(&v317);
                      if ((v199 & 0x80000000) == 0 && v208 < v293)
                      {
                        v209 = v77[2036] + SHIDWORD(v320) + 1;
                        v210 = v209 & 7;
                        HIDWORD(v320) = v209 & 7;
                        v211 = (*(&v319 + 1) + (v209 >> 3));
                        *(&v319 + 1) = v211;
                        if (v211 >= v320)
                        {
                          v212 = 0;
                          v321 = 1;
                          *(&v319 + 1) = v320;
                        }

                        else
                        {
                          v212 = bswap32(*v211);
                        }

                        DWORD2(v320) = v212 << v210;
                      }

                      ++v208;
                      v59 = 1;
                    }

                    while (v293 + 1 != v208);
                  }

                  else
                  {
LABEL_357:
                    v59 = 1;
                  }

                  goto LABEL_143;
                }

                if (dword_280B9A880 >= 4)
                {
                  fwrite("Our pic timing SEI parsing assumes active SPS is ID 0, but that wasn't found\n", 0x4DuLL, 1uLL, *MEMORY[0x277D85DF8]);
                  syslog(28, "Our pic timing SEI parsing assumes active SPS is ID 0, but that wasn't found\n");
                }
              }
            }

            v59 = 0;
LABEL_143:
            v58 = v317;
LABEL_144:
            if (v58)
            {
              operator delete(v58);
            }

            if (v59)
            {
              if (*(*(v13 + 257) + 306) == 1 && dword_280B9A880 >= 6)
              {
                v65 = *MEMORY[0x277D85DF8];
                fwrite("=========== SEI Pic Timing ===========\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
                if (dword_280B9A880 >= 6)
                {
                  fprintf(v65, "    %-42s : %lld\n", "pic_struct", SDWORD1(v307));
                  if (dword_280B9A880 >= 6)
                  {
                    fprintf(v65, "    %-42s : %lld\n", "source_scan_type", SDWORD2(v307));
                    if (dword_280B9A880 >= 6)
                    {
                      fprintf(v65, "    %-42s : %lld\n", "duplicate_flag", BYTE12(v307));
                      if (dword_280B9A880 >= 6)
                      {
                        fprintf(v65, "    %-42s : %lld\n", "au_cpb_removal_delay_minus1", v308);
                        if (dword_280B9A880 >= 6)
                        {
                          fprintf(v65, "    %-42s : %lld\n", "pic_dpb_output_delay", SHIDWORD(v308));
                          if (dword_280B9A880 >= 6)
                          {
                            fprintf(v65, "    %-42s : %lld\n", "pic_dpb_output_du_delay", v309);
                            if (dword_280B9A880 >= 6)
                            {
                              fprintf(v65, "    %-42s : %lld\n", "num_decoding_units_minus1", SHIDWORD(v309));
                              if (dword_280B9A880 >= 6)
                              {
                                fprintf(v65, "    %-42s : %lld\n", "du_common_cpb_removal_delay_flag", v310);
                                if (dword_280B9A880 >= 6)
                                {
                                  fprintf(v65, "    %-42s : %lld\n");
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

              goto LABEL_346;
            }

            goto LABEL_340;
          }

          WORD2(__p[0]) = -1;
          *(__p + 6) = 0;
          *(&__p[1] + 4) = 0;
          memset(&__p[2] + 4, 255, 0x400uLL);
          v50 = *(v13 + 257);
          v307 = 0uLL;
          v308 = 0;
          v311 = 0;
          v312 = 0;
          v310 = 0;
          if (v306 > 0x55)
          {
            v51 = 0;
            LODWORD(v52) = 0;
            goto LABEL_313;
          }

          v63 = off_280B9A8D0(&v317, v303, v306);
          v314 = 0;
          v315 = 0;
          LODWORD(v52) = 0;
          if (sub_2774ED7E8(__p, &v317, v63, &v315, &v314) || LODWORD(__p[0]) || !v314)
          {
LABEL_312:
            v51 = v307;
LABEL_313:
            if (v51)
            {
              operator delete(v51);
            }

            if (v52)
            {
              if (*(*(v13 + 257) + 306) == 1)
              {
                v187 = *MEMORY[0x277D85DF8];
                if (dword_280B9A880 >= 6)
                {
                  fwrite("=========== SEI Buffering Period ===========\n", 0x2DuLL, 1uLL, *MEMORY[0x277D85DF8]);
                  if (dword_280B9A880 >= 6)
                  {
                    fprintf(v187, "    %-42s : %lld\n", "bp_sps_id", SWORD2(__p[0]));
                    if (dword_280B9A880 >= 6)
                    {
                      fprintf(v187, "    %-42s : %lld\n", "irap_cpb_params_present_flag", BYTE6(__p[0]));
                      if (dword_280B9A880 >= 6)
                      {
                        fprintf(v187, "    %-42s : %lld\n", "concatenation_flag", HIBYTE(__p[0]));
                        if (dword_280B9A880 >= 6)
                        {
                          fprintf(v187, "    %-42s : %lld\n", "au_cpb_removal_delay_delta_minus1", SLODWORD(__p[1]));
                          if (dword_280B9A880 >= 6)
                          {
                            fprintf(v187, "    %-42s : %lld\n", "cpb_delay_offset", SHIDWORD(__p[1]));
                            if (dword_280B9A880 >= 6)
                            {
                              fprintf(v187, "    %-42s : %lld\n", "dpb_delay_offset", SLODWORD(__p[2]));
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v188 = 0;
                v189 = 1;
                do
                {
                  v190 = v189;
                  v191 = __p + v188;
                  v192 = 32;
                  do
                  {
                    if ((v191[5] & 0x80000000) == 0)
                    {
                      v193 = v191[69];
                      if ((v193 & 0x80000000) == 0 && dword_280B9A880 >= 6)
                      {
                        fprintf(v187, "    %-42s : %lld\n", "initial_cpb_removal_delay", v191[5]);
                        if (dword_280B9A880 >= 6)
                        {
                          fprintf(v187, "    %-42s : %lld\n", "initial_cpb_removal_delay_offset", v193);
                        }
                      }
                    }

                    if ((v191[133] & 0x80000000) == 0)
                    {
                      v194 = v191[197];
                      if ((v194 & 0x80000000) == 0 && dword_280B9A880 >= 6)
                      {
                        fprintf(v187, "    %-42s : %lld\n", "initial_alt_cpb_removal_delay", v191[133]);
                        if (dword_280B9A880 >= 6)
                        {
                          fprintf(v187, "    %-42s : %lld\n", "initial_alt_cpb_removal_delay_offset", v194);
                        }
                      }
                    }

                    v191 += 2;
                    --v192;
                  }

                  while (v192);
                  v189 = 0;
                  v188 = 1;
                }

                while ((v190 & 1) != 0);
              }

              goto LABEL_346;
            }

            goto LABEL_340;
          }

          if (sub_2773FB67C(&v307, v315, v314))
          {
LABEL_140:
            LODWORD(v52) = 0;
            goto LABEL_312;
          }

          v81 = sub_2773FB90C(&v307);
          WORD2(__p[0]) = v81;
          v82 = (v50 + 1920);
          if (v81 <= 0xF)
          {
            v82 = (v50 + 16 * v81 + 624);
          }

          v83 = *v82;
          if (!v83)
          {
            if (dword_280B9A880 >= 3)
            {
              fwrite("Buffering period SEI refers to nonexistant SPS\n", 0x2FuLL, 1uLL, *MEMORY[0x277D85DF8]);
              syslog(27, "Buffering period SEI refers to nonexistant SPS\n");
            }

            goto LABEL_140;
          }

          if (*(v83 + 398) != 1 || *(v83 + 2028) != 1)
          {
LABEL_311:
            LODWORD(v52) = 1;
            goto LABEL_312;
          }

          v84 = *(v83 + 2034);
          if (v84 == 1)
          {
            LOBYTE(v85) = BYTE6(__p[0]);
            v86 = v312;
            v87 = HIDWORD(v312);
            v89 = v310;
            v88 = v311;
            if ((BYTE6(__p[0]) & 1) == 0)
            {
LABEL_282:
              v153 = v87 + 1;
              HIDWORD(v312) = v153 & 7;
              v154 = (v89 + (v153 >> 3));
              v310 = v154;
              if (v154 >= v88)
              {
                v155 = 0;
                v313 = 1;
                v154 = v88;
              }

              else
              {
                v155 = bswap32(*v154);
              }

              v156 = v155 << (v153 & 7);
              HIBYTE(__p[0]) = v86 < 0;
              v157 = *(v83 + 2043);
              v158 = v157 + (v153 & 7) + 1;
              v159 = v158 & 7;
              v312 = __PAIR64__(v159, v156);
              v160 = (v154 + (v158 >> 3));
              v310 = v160;
              if (v160 >= v88)
              {
                v161 = 0;
                v313 = 1;
                v160 = v88;
              }

              else
              {
                v161 = bswap32(*v160);
              }

              v52 = 0;
              v162 = v161 << v159;
              LODWORD(v312) = v161 << v159;
              LODWORD(__p[1]) = v156 >> ~v157;
              v163 = v84 | v85;
              v164 = 1;
              while (1)
              {
                v165 = v164;
                if ((v164 & 1) == 0)
                {
                  break;
                }

                if (*(v83 + 2032))
                {
                  goto LABEL_293;
                }

LABEL_309:
                v164 = 0;
                v52 = 1;
                if ((v165 & 1) == 0)
                {
                  goto LABEL_312;
                }
              }

              if (*(v83 + 2033) != 1)
              {
                goto LABEL_311;
              }

LABEL_293:
              v166 = *(v83 + 2042);
              v167 = v166 + 1;
              v168 = 31 - v166;
              v169 = *(*(v83 + 2048) + 6) + 1;
              v170 = __p + v52;
              do
              {
                v171 = v167 + v159;
                HIDWORD(v312) = v171 & 7;
                v172 = (v160 + (v171 >> 3));
                v310 = v172;
                if (v172 >= v88)
                {
                  v173 = 0;
                  v313 = 1;
                  v172 = v88;
                }

                else
                {
                  v173 = bswap32(*v172);
                }

                v174 = v162 >> v168;
                v175 = v173 << (v171 & 7);
                v170[5] = v174;
                v176 = (v171 & 7) + v167;
                v159 = v176 & 7;
                v312 = __PAIR64__(v159, v175);
                v160 = (v172 + (v176 >> 3));
                v310 = v160;
                if (v160 >= v88)
                {
                  v177 = 0;
                  v313 = 1;
                  v310 = v88;
                  v160 = v88;
                }

                else
                {
                  v177 = bswap32(*v160);
                }

                v178 = v175 >> v168;
                v162 = v177 << v159;
                LODWORD(v312) = v177 << v159;
                v170[69] = v178;
                if (v163)
                {
                  v179 = (v176 & 7) + v167;
                  HIDWORD(v312) = v179 & 7;
                  v180 = (v160 + (v179 >> 3));
                  v310 = v180;
                  if (v180 >= v88)
                  {
                    v181 = 0;
                    v313 = 1;
                    v180 = v88;
                  }

                  else
                  {
                    v181 = bswap32(*v180);
                  }

                  v182 = v162 >> v168;
                  v183 = v181 << (v179 & 7);
                  v170[133] = v182;
                  v184 = (v179 & 7) + v167;
                  v159 = v184 & 7;
                  v312 = __PAIR64__(v159, v183);
                  v160 = (v180 + (v184 >> 3));
                  v310 = v160;
                  if (v160 >= v88)
                  {
                    v185 = 0;
                    v313 = 1;
                    v310 = v88;
                    v160 = v88;
                  }

                  else
                  {
                    v185 = bswap32(*v160);
                  }

                  v186 = v183 >> v168;
                  v162 = v185 << v159;
                  LODWORD(v312) = v185 << v159;
                  v170[197] = v186;
                }

                v170 += 2;
                --v169;
              }

              while (v169);
              goto LABEL_309;
            }

            LOBYTE(v85) = 1;
          }

          else
          {
            v119 = SHIDWORD(v312) + 1;
            v88 = v311;
            v89 = (v310 + (v119 >> 3));
            if (v89 >= v311)
            {
              v120 = 0;
              v313 = 1;
              v89 = v311;
            }

            else
            {
              v120 = bswap32(*v89);
            }

            v121 = v312;
            v87 = v119 & 7;
            v86 = v120 << (v119 & 7);
            LODWORD(v312) = v86;
            v85 = v121 >> 31;
            BYTE6(__p[0]) = v121 < 0;
            if ((v121 & 0x80000000) == 0)
            {
              goto LABEL_282;
            }
          }

          v122 = *(v83 + 2043);
          v123 = v122 + v87 + 1;
          HIDWORD(v312) = v123 & 7;
          v124 = (v89 + (v123 >> 3));
          v310 = v124;
          if (v124 >= v88)
          {
            v125 = 0;
            v313 = 1;
            v124 = v88;
          }

          else
          {
            v125 = bswap32(*v124);
          }

          v147 = v86 >> ~v122;
          v148 = v125 << (v123 & 7);
          HIDWORD(__p[1]) = v147;
          v149 = *(v83 + 2038);
          v150 = v149 + (v123 & 7) + 1;
          v87 = v150 & 7;
          v312 = __PAIR64__(v87, v148);
          v89 = (v124 + (v150 >> 3));
          v310 = v89;
          if (v89 >= v88)
          {
            v151 = 0;
            v313 = 1;
            v89 = v88;
          }

          else
          {
            v151 = bswap32(*v89);
          }

          v152 = v148 >> ~v149;
          v86 = v151 << v87;
          LODWORD(v312) = v151 << v87;
          LODWORD(__p[2]) = v152;
          goto LABEL_282;
        }
      }

      if (v304 - 32 >= 3)
      {
        if (dword_280B9A880 >= 4)
        {
          fprintf(*MEMORY[0x277D85DF8], "Discarding NALU of type %d\n", v304);
          syslog(28, "Discarding NALU of type %d\n", v304);
        }
      }

      else
      {
        v11 = sub_27743C774(*(v13 + 257), &v302);
        if (v11)
        {
          goto LABEL_395;
        }
      }

      goto LABEL_347;
    }

    break;
  }

  if (v11 != -26526)
  {
LABEL_415:
    if (dword_280B9A880 >= 3)
    {
      fwrite("PullNALU failed to get a valid NALU\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "PullNALU failed to get a valid NALU\n");
    }

LABEL_395:
    sub_2774DF7DC(v13, v11);
    goto LABEL_396;
  }

LABEL_384:
  v216 = *(v13 + 265);
  if (!v216 || (v217 = v13[528], !v217))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("No frame allocated or no slices found!\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No frame allocated or no slices found!\n");
    }

LABEL_394:
    v11 = 4294954387;
    goto LABEL_395;
  }

  if (v217 < 1)
  {
    v223 = 1;
  }

  else
  {
    v218 = 0;
    v219 = v217 != 1;
    v220 = *(v13 + 258);
    do
    {
      v221 = *v220++;
      *(v221 + 1600) = v219;
      v218 |= *(v221 + 58) != 2;
      --v217;
    }

    while (v217);
    if (((a5 != 0) & v218) != 0)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Got inter slice but tile API only supports intra for now!\n", 0x3AuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Got inter slice but tile API only supports intra for now!\n");
      }

      goto LABEL_394;
    }

    v223 = v218 ^ 1;
    if (((v218 ^ 1) & 1) == 0)
    {
      v224 = *(v216 + 848) * (*(v216 + 840) + 7);
      v225 = *(v216 + 864);
      v226 = *(v216 + 856);
      v227 = 0xAAAAAAAAAAAAAAABLL * ((v225 - v226) >> 2);
      v228 = v224 - v227;
      if (v224 <= v227)
      {
        if (v224 < v227)
        {
          v232 = v226 + 12 * v224;
          goto LABEL_420;
        }
      }

      else
      {
        v229 = *(v216 + 872);
        if (0xAAAAAAAAAAAAAAABLL * ((v229 - v225) >> 2) < v228)
        {
          if (v224 <= 0x1555555555555555)
          {
            v230 = 0xAAAAAAAAAAAAAAABLL * ((v229 - v226) >> 2);
            if (2 * v230 > v224)
            {
              v224 = 2 * v230;
            }

            if (v230 >= 0xAAAAAAAAAAAAAAALL)
            {
              v231 = 0x1555555555555555;
            }

            else
            {
              v231 = v224;
            }

            if (v231 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_2773C5248();
          }

          sub_2773C0914();
        }

        v233 = 12 * ((12 * v228 - 12) / 0xC) + 12;
        bzero(*(v216 + 864), v233);
        v232 = v225 + v233;
LABEL_420:
        *(v216 + 864) = v232;
      }
    }
  }

  *(v216 + 712) = v223 & 1;
  v234 = *(v13 + 257);
  if (*(v234 + 33) == 1)
  {
    v235 = *(*(v13 + 258) + 8 * v13[528] - 8);
    v236 = *(v235 + 1632);
    v237 = *(v235 + 1648);
    v238 = ~v236 + v237;
    v239 = *(v236 + v238);
    *(v234 + 48) = -1;
    v240 = (v234 + 48);
    *(v234 + 52) = -1;
    *(v234 + 100) = 0;
    *(v234 + 104) = 0u;
    *(v234 + 120) = 0u;
    *(v234 + 136) = 0u;
    *(v234 + 152) = 0u;
    v241 = *(v234 + 34);
    if (v241 != 255 && ((v239 >> v241) & 1) != 0)
    {
      *v240 = v241;
    }

    v242 = *(v234 + 38);
    if (v242 != 255 && ((v239 >> v242) & 1) != 0)
    {
      *(v234 + 51) = v242;
    }

    v243 = *(v234 + 36);
    if (v243 != 0xFFFF && ((v239 >> v243) & 1) != 0)
    {
      *(v234 + 50) = v243;
    }

    v244 = *(v234 + 35);
    if (v244 != 255 && ((v239 >> v244) & 1) != 0)
    {
      *(v234 + 49) = v244;
    }

    v245 = *(v234 + 39);
    if (v245 != 255)
    {
      *(v234 + 52) = v245;
    }

    if ((v239 & 0x80) != 0)
    {
      v238 = v238 != 0;
      v246 = v237 - v236;
      while (1)
      {
        v247 = v246 - 1;
        if ((v246 - 1) < 2)
        {
          break;
        }

        v248 = *(v236 - 2 + v246--);
        if ((v248 & 0x80000000) == 0)
        {
          v238 = v247 - 1;
          break;
        }
      }
    }

    sub_2774BCF5C((v234 + 48));
    v249 = *(v234 + 164);
    v250 = v238 >= v249;
    v251 = v238 - v249;
    if (v251 == 0 || !v250)
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("No RBSP after control data extraction", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "No RBSP after control data extraction");
      }

      goto LABEL_394;
    }

    v252 = v234 + 136;
    v253 = v236 + v251;
    v254 = *v240;
    if (v254 != -1)
    {
      v255 = *(v252 + 4 * v254);
      *(v234 + 56) = 8 * *(v253 + v255);
      *(v234 + 60) = 8 * *(v253 + (v255 + 1));
    }

    v256 = *(v234 + 51);
    if (v256 != -1)
    {
      v257 = *(v252 + 4 * v256);
      *(v234 + 68) = 16 * *(v253 + v257);
      *(v234 + 72) = 16 * *(v253 + (v257 + 1));
      *(v234 + 76) = 16 * *(v253 + (v257 + 2));
      *(v234 + 80) = 16 * *(v253 + (v257 + 3));
    }

    v258 = *(v234 + 50);
    if (v258 != -1)
    {
      v259 = *(v252 + 4 * v258);
      v260 = *(v253 + v259);
      *(v234 + 64) = v260 << 8;
      *(v234 + 64) = *(v253 + (v259 + 1)) | (v260 << 8);
    }

    v261 = *(v234 + 52);
    if (v261 != 255)
    {
      *(v234 + 100) = (v239 >> v261) & 1;
    }
  }

  v262 = *a7;
  v263 = *(v13 + 257);
  v264 = *(v13 + 258);
  v265 = *v264;
  v266 = v13[528];
  v301 = v263;
  if (v266 < 1)
  {
LABEL_454:
    if ((*(v263 + 308) & 4) == 0)
    {
      goto LABEL_457;
    }

    v267 = *(v265 + 32);
    if (*(v267 + 21) != 1 || (*(v267 + 20) & 1) != 0)
    {
      goto LABEL_457;
    }

    v287 = *(v265 + 16);
    v288 = *(v287 + 2120);
    v289 = *(v287 + 2124);
    if (v288 / 2 < v289)
    {
      v289 = v288 / 2;
    }

    v290 = *(v263 + 320);
    if (v290)
    {
      v291 = *(v263 + 320);
    }

    else
    {
      v291 = v289;
    }

    v292 = v288 / 15;
    if (v292 < v289)
    {
      v289 = v292;
    }

    if (!*a7)
    {
      v289 = v291;
    }

    if (v290)
    {
      v289 = v291;
    }

    if (*(v263 + 312) < v289)
    {
      v289 = *(v263 + 312);
    }

    if (v289 <= 1)
    {
      v268 = 1;
    }

    else
    {
      v268 = v289;
    }
  }

  else
  {
    while ((*(*v264 + 56) & 1) == 0)
    {
      ++v264;
      if (!--v266)
      {
        goto LABEL_454;
      }
    }

LABEL_457:
    v268 = 1;
  }

  v269 = *(v13 + 262);
  v270 = *(v13 + 261);
  v271 = 0x3A4C0A237C32B16DLL * ((v269 - v270) >> 6);
  v272 = v268 - v271;
  if (v268 <= v271)
  {
    if (v268 < v271)
    {
      *(v13 + 262) = v270 + 6464 * v268;
    }
  }

  else
  {
    v299 = v265;
    v273 = *(v13 + 263);
    if (0x3A4C0A237C32B16DLL * ((v273 - v269) >> 6) >= v272)
    {
      v284 = v269 + 6464 * v272;
      v285 = 6464 * v268 - ((v269 - v270) >> 6 << 6);
      do
      {
        bzero((v269 + 64), 0x1800uLL);
        *(v269 + 6416) = 0;
        *(v269 + 6424) = 0;
        v269 += 6464;
        v285 -= 6464;
      }

      while (v285);
      *(v13 + 262) = v284;
      v265 = v299;
    }

    else
    {
      v274 = 0x74981446F86562DALL * ((v273 - v270) >> 6);
      if (v274 <= v268)
      {
        v274 = v268;
      }

      if ((0x3A4C0A237C32B16DLL * ((v273 - v270) >> 6)) >= 0x511BE1958B67ELL)
      {
        v275 = 0xA237C32B16CFDLL;
      }

      else
      {
        v275 = v274;
      }

      if (v275 > 0xA237C32B16CFDLL)
      {
        sub_2773C5248();
      }

      v276 = operator new(6464 * v275, 0x40uLL);
      v277 = &v276[v269 - v270];
      v296 = &v276[6464 * v268];
      v278 = v270 + 6464 * v268 - v269;
      v279 = v277;
      do
      {
        bzero(v279 + 64, 0x1800uLL);
        *(v279 + 802) = 0;
        *(v279 + 3212) = 0;
        v279 += 6464;
        v278 -= 6464;
      }

      while (v278);
      v280 = &v276[6464 * v275];
      v281 = *(v13 + 261);
      v282 = *(v13 + 262) - v281;
      v283 = &v277[-v282];
      memcpy(&v277[-v282], v281, v282);
      *(v13 + 261) = v283;
      *(v13 + 262) = v296;
      *(v13 + 263) = v280;
      v265 = v299;
      if (v281)
      {
        MEMORY[0x277CAD360](v281, 64);
      }
    }
  }

  if (*(v13 + 2051) != 1)
  {
LABEL_481:
    v286 = 0;
    goto LABEL_483;
  }

  if (v268 > 1 || (*(v301 + 358) & 1) != 0)
  {
    if (*(*(v265 + 32) + 19))
    {
      goto LABEL_481;
    }

    v286 = *(*(v265 + 16) + 283) ^ 1;
LABEL_483:
    *(v13 + 2052) = v286 & 1;
    if (v268 >= 2)
    {
      sub_2773F16F4(v13 + 432, *(**(v13 + 258) + 16));
    }
  }

  else
  {
    *(v13 + 2052) = 0;
  }

  if (v262)
  {
    dispatch_async_f(*(v13 + 431), v13, sub_2774DFDD8);
    v11 = 0;
  }

  else
  {
    v11 = sub_2774DFAEC(v13, v15);
  }

LABEL_396:
  *(a1 + 200) = 0;
  *(a1 + 203) = 0;
  return v11;
}

void sub_27743F254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

intptr_t sub_27743F2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  std::mutex::lock((a1 + 2472));
  v8 = *a4;
  if (*a4)
  {
    *(v8 + 44) = 1;
    *(v8 + 544) = a3;
    *(v8 + 536) = a2;
  }

  v10 = v8 == 0;
  v9 = *(a1 + 2408);
  v10 = !v10 && a3 == 0;
  if (!v10 && v9 != 0)
  {
    v9(*(a1 + 2416), a2, a3, a4);
  }

  sub_27743BE00(a1);
  std::mutex::unlock((a1 + 2472));
  v12 = *(a1 + 2400);

  return dispatch_semaphore_signal(v12);
}

void sub_27743F37C(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 2472));
  v4 = 0;
  v5 = 0;
  for (i = 0; ; i = 0)
  {
    do
    {
      v7 = *(a1 + 2008 + 16 * v4);
      if (v7)
      {
        v8 = *(v7 + 43);
        v9 = v8 != 1 || *(a1 + 2280 + v4) != 0;
        i += v8 ^ 1;
        v5 += v9;
      }

      ++v4;
    }

    while (v4 != 17);
    if (!i)
    {
      break;
    }

    v10 = *(a1 + 2372);
    if ((a2 & 1) != 0 || i > v10)
    {
      if (i > v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = a2 ^ 1;
      }

      if (v11 != 1)
      {
        break;
      }
    }

    else if (v5 <= *(a1 + 2376))
    {
      break;
    }

    v12 = sub_2773FF200(a1 + 1976);
    v14 = *v12;
    v13 = v12[1];
    *&v15 = *v12;
    *(&v15 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v14 + 42) & 1) == 0)
    {
      sub_27743B8F4((a1 + 2424), &v15);
      *(v14 + 42) = 1;
    }

    *(v14 + 43) = 1;
    if (v13)
    {
      sub_2773CC26C(v13);
    }

    v4 = 0;
    v5 = 0;
  }

  std::mutex::unlock((a1 + 2472));
}

void sub_27743F4C4(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  std::mutex::unlock((v1 + 2472));
  _Unwind_Resume(a1);
}

uint64_t sub_27743F4E4(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + 184);
  v2 = *(a1 + 184);
  v4 = *a2;
  *(a1 + 2552) = *(a2 + 2);
  *(a1 + 2536) = v4;
  if (v2)
  {
    return 0;
  }

  v7 = (a1 + 1920);
  v8 = a1 + 624;
  v9 = -1;
  v10 = (a1 + 624);
  while (1)
  {
    v11 = *v10;
    if (*v10)
    {
      if (v11[51] - (v11[533] + v11[534]) == *(a1 + 2552) && v11[52] - (v11[535] + v11[536]) == *(a1 + 2556))
      {
        break;
      }
    }

    if (v9 < 0 && v11 != 0)
    {
      v9 = v2;
    }

    ++v2;
    v10 += 2;
    if (v2 == 16)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  result = sub_2773F2A64((v8 + 16 * v2), a1 + 2536, (a1 + 184));
  if (result)
  {
    return result;
  }

  v13 = *v3;
  if (*v3)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v9 & 0x80000000) == 0)
  {
    if (dword_280B9A880 >= 4)
    {
      fprintf(*MEMORY[0x277D85DF8], "Didn't find an SPS matching dimensions %dx%d, using SPS %d\n", *(a1 + 2552), *(a1 + 2556), v9);
      syslog(28, "Didn't find an SPS matching dimensions %dx%d, using SPS %d\n", *(a1 + 2552), *(a1 + 2556), v9);
    }

    if (v9 <= 0xF)
    {
      v14 = (v8 + 16 * v9);
    }

    else
    {
      v14 = v7;
    }

    result = sub_2773F2A64(v14, (v3 + 294), v3);
    if (result)
    {
      return result;
    }

    v13 = *v3;
  }

LABEL_23:
  if (v13 || !*(a1 + 2544))
  {
    return 0;
  }

  if (dword_280B9A880 >= 3)
  {
    fwrite("No SPS found in hvcC!\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "No SPS found in hvcC!\n");
  }

  return 4294954387;
}

void sub_27743F6A8(void *a1)
{
  sub_27743FD90(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_27743F6E4(uint64_t a1)
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

void *sub_27743F764(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[15];
  if (v5)
  {
    CFRelease(v5);
  }

  sub_27743F6E4((a1 + 16));
  return a1;
}

void *sub_27743F7C4(void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void sub_27743FA1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2773CCBA8(a1);
}

uint64_t sub_27743FA38(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2886627C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_27743FAD4(uint64_t a1, int *a2, int *a3, unsigned int *a4)
{
  if (*a4 >= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *a4;
  }

  if (*a4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  return *(*(a1 + 8) + 88 * (*(a1 + 16) * (*a3 >> 6) + (*a2 >> 6)) + byte_277533448[6 - v5] + ((*a3 & 0x3Fu) >> v5 << (6 - v5)) + ((*a2 & 0x3Fu) >> v5));
}

__n128 sub_27743FB50(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_288662810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_27743FBF4()
{
  if (atomic_load_explicit(&qword_280B9A8C8, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_27743FC68;
    std::__call_once(&qword_280B9A8C8, &v2, sub_27743FC5C);
  }
}

uint64_t sub_27743FC68()
{
  v4 = 0;
  v2 = 0;
  v3 = 8;
  if (sysctlbyname("hw.cachelinesize", &v2, &v3, 0, 0))
  {
    v0 = 0;
  }

  else
  {
    v0 = v3 == 8;
  }

  if (v0)
  {
    qword_280B9A898 = v2;
  }

  v3 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v4, &v3, 0, 0) && v3 == 4)
  {
    dword_280B9A8A4 = v4;
  }

  v3 = 4;
  result = sysctlbyname("hw.logicalcpu", &v4, &v3, 0, 0);
  if (!result && v3 == 4)
  {
    dword_280B9A8A8 = v4;
  }

  dword_280B9A8E0 |= 2u;
  return result;
}

void sub_27743FD58(void *a1)
{
  sub_27743FD90(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_27743FD90(void *a1)
{
  *a1 = &unk_288662B90;
  v2 = a1[1];
  v3 = a1 + 2;
  if (v2 != a1 + 2)
  {
    do
    {
      v4 = v2[6];
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_27743FE54(a1[2]);
  return a1;
}

void sub_27743FE54(void *a1)
{
  if (a1)
  {
    sub_27743FE54(*a1);
    sub_27743FE54(a1[1]);

    operator delete(a1);
  }
}

void sub_27743FEA4(uint64_t a1)
{
  *a1 = &unk_288662AB0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x277CAD370);
}

uint64_t sub_27743FF14(uint64_t a1)
{
  *a1 = &unk_288662AB0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_27743FF64(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  *a4 = 1;
  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  result = (*(a1 + 64))(*(a1 + 56), *(a1 + 16), *(a1 + 24), a2);
  if (!result)
  {
    MEMORY[0x277CAD120](a1 + 32, a2);
    return 0;
  }

  return result;
}

uint64_t sub_27743FFCC(uint64_t result, FILE *a2, uint64_t a3, const char *a4)
{
  v4 = (result + 32);
  if (*(result + 55) < 0)
  {
    if (*(result + 40))
    {
      v6 = dword_280B9A880 <= 5;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v4 = *v4;
      return fprintf(a2, "-%s %s\n", a4, v4);
    }
  }

  else
  {
    if (*(result + 55))
    {
      v5 = dword_280B9A880 <= 5;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      return fprintf(a2, "-%s %s\n", a4, v4);
    }
  }

  return result;
}

uint64_t sub_27744005C(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2)
  {
    v4 = 0xCBF29CE484222325;
    v5 = *a2;
    if (*a2)
    {
      v6 = a2 + 1;
      do
      {
        v4 = 0x100000001B3 * (v4 ^ v5);
        v7 = *v6++;
        v5 = v7;
      }

      while (v7);
    }

    if (v4 <= 1)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *a4 = 1;
  if (*(a1 + 8) != a3)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *v8;
  if (*v8)
  {
    while (v9 != v4)
    {
      v10 = v8[3];
      v8 += 3;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  if (!v4)
  {
LABEL_16:
    v11 = 0;
    **(a1 + 24) = *(v8 + 4);
    return v11;
  }

  return 4294954394;
}