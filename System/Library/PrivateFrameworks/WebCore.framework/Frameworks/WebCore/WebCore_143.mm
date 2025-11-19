uint64_t vp9_resize_one_pass_cbr(uint64_t a1)
{
  v1 = (a1 + 933796);
  v2 = a1 + 171988;
  *(a1 + 933804) = 0x100000001;
  if (!*(a1 + 172972))
  {
    result = 0;
    v1[4] = 0;
    v1[6] = 0;
    return result;
  }

  v3 = a1 + 738460;
  v4 = *(a1 + 171992) * *(a1 + 171988);
  if (*(a1 + 190048) <= 0)
  {
    v5 = 50;
  }

  else
  {
    v5 = 40;
  }

  if (*(a1 + 190048) <= 0)
  {
    v6 = 70;
  }

  else
  {
    v6 = 60;
  }

  v7 = *v1;
  if (*v1 == 1)
  {
    if (v4 < 518400 || *(a1 + 738600) > 9999)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v7 || v4 < 921600)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 738600);
  if (v8 <= 9999)
  {
LABEL_18:
    v11 = 2;
    *v1 = 2;
LABEL_19:
    v12 = 1;
    v9 = 2;
    goto LABEL_40;
  }

  if (v8 > 0x3414)
  {
LABEL_20:
    v13 = *(a1 + 739176);
    if (v13 >= *(a1 + 738576))
    {
      return 0;
    }

    v14 = llround(v13 + v13);
    if (v14 >= 30)
    {
      v15 = 30;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(a1 + 933812) + *(a1 + 738476);
    *(a1 + 933812) = v16;
    if (*(a1 + 738648) < 30 * *(a1 + 738752) / 100)
    {
      ++*(a1 + 933816);
    }

    v17 = *(a1 + 933820) + 1;
    *(a1 + 933820) = v17;
    if (v17 < v15)
    {
      return 0;
    }

    if (v4 < 102240 || *(a1 + 933816) <= v17 >> 2)
    {
      if (!v7)
      {
        goto LABEL_53;
      }

      v18 = v16 / v17;
      v19 = *(a1 + 738736);
      if (v18 >= v19 * v6 / 100)
      {
        goto LABEL_53;
      }

      if (v7 == 1 || v18 < v19 * v5 / 100)
      {
        *v1 = 0;
        *(a1 + 933820) = 0;
        v9 = 4294967294;
        v12 = 1;
        v11 = 1;
        *(a1 + 933812) = 0;
        goto LABEL_40;
      }

      if (v7 != 2)
      {
        goto LABEL_53;
      }

      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v11 = 2;
          *v1 = 2;
          *(a1 + 933820) = 0;
          *(a1 + 933812) = 0;
          goto LABEL_19;
        }

LABEL_53:
        result = 0;
        v1[6] = 0;
        *(v1 + 2) = 0;
        return result;
      }

      v9 = 1;
    }

    *v1 = 1;
    *(a1 + 933820) = 0;
    *(a1 + 933812) = 0;
    goto LABEL_39;
  }

  v9 = 1;
  *v1 = 1;
LABEL_39:
  v11 = 4;
  v12 = 3;
LABEL_40:
  *(a1 + 933804) = v12;
  *(a1 + 933808) = v11;
  v20 = v11 * v11;
  v21 = v12 * v12;
  v22 = *(a1 + 738752);
  *(a1 + 738648) = v22;
  *(a1 + 738656) = v22;
  v23 = v20 / v21;
  v25 = vp9_calc_pframe_target_size_one_pass_cbr(a1);
  *v3 = v25;
  v26 = v25 / v23;
  v27 = v25 * v23;
  v28 = v9;
  if (v9 >= 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = v26;
  }

  active = calc_active_worst_quality_one_pass_cbr(a1);
  v35 = vp9_rc_regulate_q(a1, v29, *(v3 + 280), active, v31, v32, v33, v34);
  result = v28;
  if (v28 < 1)
  {
    v39 = 178670639550 * *(v2 + 1040);
    if (v35 > ((v39 >> 37) + (v39 >> 63)))
    {
      v37 = *(v3 + 44);
      v38 = 0.9;
      goto LABEL_46;
    }
  }

  else
  {
    v36 = 123695058150 * *(v3 + 276);
    if (v35 > ((v36 >> 37) + (v36 >> 63)))
    {
      v37 = *(v3 + 44);
      v38 = 0.85;
LABEL_46:
      *(v3 + 44) = v37 * v38;
    }
  }

  return result;
}

uint64_t vp9_rc_get_one_pass_cbr_params(uint64_t a1)
{
  v2 = a1 + 738460;
  v3 = (a1 + 189844);
  v4 = (a1 + 171988);
  if (!*(a1 + 189844) || (*(a1 + 927160) & 1) != 0 || *(a1 + 190080) && !*(a1 + 738572) || *(a1 + 190072) != *(a1 + 942524))
  {
    v5 = 0;
    *(a1 + 172972) = 0;
    *(a1 + 738572) = *(a1 + 190084);
    *(a1 + 738496) = 2000;
    *(a1 + 738592) = 0;
    v6 = *(a1 + 190148);
    if (!*(a1 + 738548))
    {
      goto LABEL_12;
    }

LABEL_9:
    if (v6 == 3)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v5 = 1;
  *(a1 + 172972) = 1;
  v6 = *(a1 + 190148);
  if (*(a1 + 738548))
  {
    goto LABEL_9;
  }

LABEL_12:
  if (v6 != 3)
  {
    v8 = (*(a1 + 738556) + *(a1 + 738552)) / 2;
    goto LABEL_22;
  }

  v7 = *(a1 + 740272);
  v8 = 4 * (0x64u / *v7);
  if (*v7 < 11)
  {
    v8 = 40;
  }

  if (!*(a1 + 190092))
  {
    v8 = 20;
  }

  *(a1 + 738564) = v8;
  if (*(a1 + 739080) <= 49 && *(a1 + 738576) >= 41 && v7[33])
  {
    v8 = 10;
LABEL_22:
    *(a1 + 738564) = v8;
  }

  if (v8 >= *(a1 + 738572))
  {
    v8 = *(a1 + 738572);
  }

  *(a1 + 738548) = v8;
  *(a1 + 194560) = 1;
  *(a1 + 738488) = 2000;
  if (v6 == 3)
  {
LABEL_26:
    vp9_cyclic_refresh_update_parameters(a1);
    if (!v4[246])
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_10:
  if (!v5)
  {
LABEL_28:
    if (*v3)
    {
      v9 = *(v2 + 716);
      v10 = *(a1 + 754556);
      if (v10 >= 2 && v3[62] == 1)
      {
        v9 = *(a1 + 13936 * (*(a1 + 754548) + *(a1 + 754544) * v10) + 759664);
      }

      v11 = llround(v9 * 2.0 + -16.0);
      if (v11 <= 32)
      {
        v11 = 32;
      }

      v12 = *(v2 + 116);
      v13 = v9 * 0.5;
      if (v13 > v12)
      {
        v11 = llround((v11 * v12) / v13);
      }

      v14 = (*(v2 + 140) * (v11 + 16)) >> 4;
      if (v14 >= 0x7FFFFFFF)
      {
        LODWORD(v14) = 0x7FFFFFFF;
      }

      v15 = v3[54];
      if (v15)
      {
LABEL_39:
        v16 = *(v2 + 140) * v15;
        if (v16 / 100 < v14)
        {
          v14 = v16 / 100;
        }
      }
    }

    else
    {
      v14 = *(v2 + 284) / 2;
      if (v14 >= 0x7FFFFFFF)
      {
        LODWORD(v14) = 0x7FFFFFFF;
      }

      v15 = v3[54];
      if (v15)
      {
        goto LABEL_39;
      }
    }

    if (v14 >= *(v2 + 148))
    {
      v17 = *(v2 + 148);
    }

    else
    {
      v17 = v14;
    }

    *v2 = v17;
    v18 = v3[78];
    if (v18 != 2)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

LABEL_27:
  if (*(v4 + 1000))
  {
    goto LABEL_28;
  }

  v17 = vp9_calc_pframe_target_size_one_pass_cbr(a1);
  *v2 = v17;
  v18 = v3[78];
  if (v18 != 2)
  {
    goto LABEL_53;
  }

LABEL_51:
  v19 = *(v2 + 328);
  if (v19)
  {
    v17 = (rate_thresh_mult[v19] * v17);
    *v2 = v17;
  }

LABEL_53:
  v20 = (v17 << 12) / (v4[1] * *v4);
  if (v20 >= 0x7FFFFFFF)
  {
    LODWORD(v20) = 0x7FFFFFFF;
  }

  *(v2 + 8) = v20;
  if (v4[247])
  {
    v21 = *(v2 + 196) + *(v2 + 140);
    if (v21 >= *(v2 + 300))
    {
      v21 = *(v2 + 300);
    }

    *(v2 + 196) = v21;
    *(v2 + 188) = v21;
  }

  if (v18 == 2)
  {
    result = vp9_resize_one_pass_cbr(a1);
    *(a1 + 933792) = result;
  }

  else
  {
    result = 0;
    *(a1 + 933792) = 0;
  }

  return result;
}

uint64_t vp9_compute_qdelta(int a1, int a2, int a3, double a4, double a5)
{
  v5 = 0.015625;
  if (a3 == 10)
  {
    v5 = 0.0625;
  }

  v6 = 0.25;
  if (a3 == 8)
  {
    v5 = 0.25;
  }

  if (a2 >= a1)
  {
    return 0;
  }

  if (a3 != 8)
  {
    if (a3 == 10)
    {
      v7 = a2;
      do
      {
        if (v7 >= 0xFF)
        {
          v11 = 255;
        }

        else
        {
          v11 = v7;
        }

        if (v7 < 0)
        {
          v11 = 0;
        }

        LOWORD(v6) = ac_qlookup_10[v11];
        v6 = v5 * vmovl_s16(*&v6).i32[0];
        ++v7;
      }

      while (v6 < a4 && v7 < a1);
    }

    else
    {
      if (a3 != 12)
      {
        v13 = a2;
        if (-v5 < a4)
        {
          v13 = a1 - 1;
        }

        goto LABEL_58;
      }

      v7 = a2;
      do
      {
        if (v7 >= 0xFF)
        {
          v8 = 255;
        }

        else
        {
          v8 = v7;
        }

        if (v7 < 0)
        {
          v8 = 0;
        }

        LOWORD(v6) = ac_qlookup_12[v8];
        v6 = v5 * vmovl_s16(*&v6).i32[0];
        ++v7;
      }

      while (v6 < a4 && v7 < a1);
    }

    v13 = v7 - 1;
    goto LABEL_58;
  }

  v14 = a2;
  do
  {
    if (v14 >= 0xFF)
    {
      v15 = 255;
    }

    else
    {
      v15 = v14;
    }

    if (v14 < 0)
    {
      v15 = 0;
    }

    LOWORD(v6) = ac_qlookup_0[v15];
    v6 = v5 * vmovl_s16(*&v6).i32[0];
    ++v14;
  }

  while (v6 < a4 && v14 < a1);
  v13 = v14 - 1;
  do
  {
LABEL_58:
    if (a3 == 8)
    {
      v17 = ac_qlookup_0;
    }

    else if (a3 == 12)
    {
      v17 = ac_qlookup_12;
    }

    else
    {
      a4 = -1.0;
      if (a3 != 10)
      {
        goto LABEL_53;
      }

      v17 = ac_qlookup_10;
    }

    if (a2 >= 0xFF)
    {
      v18 = 255;
    }

    else
    {
      v18 = a2;
    }

    if (a2 < 0)
    {
      v18 = 0;
    }

    LOWORD(a4) = v17[v18];
    a4 = vmovl_s16(*&a4).i32[0];
LABEL_53:
    a4 = v5 * a4;
    ++a2;
  }

  while (a4 < a5 && a2 < a1);
  return (a2 - 1 - v13);
}

uint64_t vp9_rc_set_gf_interval_range(uint64_t result, uint64_t a2)
{
  if (!*(result + 190076) && *(result + 190092) == 3)
  {
    *(a2 + 96) = 0x800000008;
    *(a2 + 104) = 8;
    return result;
  }

  v2 = *(result + 739176);
  v3 = *(result + 190332);
  *(a2 + 100) = v3;
  v4 = *(result + 190328);
  if (!v4)
  {
    v5 = v2 * (*(result + 189996) * *(result + 189992));
    v4 = llround(v2 * 0.125);
    if (v4 >= 16)
    {
      v4 = 16;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    if (v5 > 165888000.0)
    {
      v6 = llround(v5 * 4.0 / 165888000.0);
      if (v4 <= v6)
      {
        v4 = v6;
      }
    }
  }

  if (v3)
  {
    *(a2 + 104) = 250;
    if (v3 < 251)
    {
      goto LABEL_14;
    }

LABEL_23:
    v3 = 250;
    if (v4 >= 250)
    {
      v4 = 250;
    }

    *(a2 + 96) = v4;
    *(a2 + 100) = 250;
    if (*(result + 190356) != 1)
    {
      return result;
    }

    goto LABEL_26;
  }

  v7 = llround(v2 * 0.75);
  if (v7 >= 16)
  {
    v7 = 16;
  }

  v3 = (v7 & 1) + v7;
  if (v3 <= v4)
  {
    v3 = v4;
  }

  *(a2 + 100) = v3;
  *(a2 + 104) = 250;
  if (v3 >= 251)
  {
    goto LABEL_23;
  }

LABEL_14:
  if (v4 >= v3)
  {
    v4 = v3;
  }

  *(a2 + 96) = v4;
  if (*(result + 190356) != 1)
  {
    return result;
  }

LABEL_26:
  v9 = *(result + 171988);
  v8 = *(result + 171992);
  v10 = v8 * v9;
  if (v9 <= v8)
  {
    v9 = *(result + 171992);
  }

  v11 = &vp9_level_defs;
  if (v10 > 0x9000 || v9 > 0x200)
  {
    if (v10 > 0x12000 || v9 >= 0x301)
    {
      if (v10 > 0x1E000 || v9 >= 0x3C1)
      {
        if (v10 > 0x3C000 || v9 >= 0x541)
        {
          if (v10 > 0x87000 || v9 >= 0x801)
          {
            if (v10 > 0xF0000 || v9 >= 0xAC1)
            {
              if (v10 > 0x220000 || v9 >= 0x1041)
              {
                if (v10 > 0x880000 || v9 >= 0x20C1)
                {
                  if (v10 > 0x2200000 || v9 >= 0x41C1)
                  {
                    return result;
                  }

                  v11 = &unk_273BCFFF0;
                }

                else
                {
                  v11 = &unk_273BCFF30;
                }
              }

              else
              {
                v11 = &unk_273BCFEB0;
              }
            }

            else
            {
              v11 = &unk_273BCFE70;
            }
          }

          else
          {
            v11 = &unk_273BCFE30;
          }
        }

        else
        {
          v11 = &unk_273BCFDF0;
        }
      }

      else
      {
        v11 = &unk_273BCFDB0;
      }
    }

    else
    {
      v11 = &unk_273BCFD70;
    }
  }

  v12 = v11[13];
  if (v4 <= v12)
  {
    if (v3 <= v12)
    {
      v3 = v12;
    }

    *(a2 + 96) = v12;
    *(a2 + 100) = v3;
  }

  return result;
}

uint64_t vp9_set_target_rate(uint64_t result, double a2, double a3)
{
  v3 = (result + 194560);
  LODWORD(v4) = *(result + 738456);
  v5 = *(result + 172972);
  if (v5)
  {
    v6 = *(result + 738604);
    v7 = *(result + 738600);
    if (v6 <= v7 >> 5)
    {
      v6 = v7 >> 5;
    }

    if (v6 > v4)
    {
      LODWORD(v4) = v6;
    }

    if (*v3 && *(result + 738596))
    {
      LODWORD(v4) = v6;
    }

    if (v4 >= *(result + 738608))
    {
      LODWORD(v4) = *(result + 738608);
    }

    v8 = *(result + 190064);
    if (v8 && v8 * v7 / 100 < v4)
    {
      v4 = v8 * v7 / 100;
    }

    if (!*(result + 190184))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = *(result + 190060);
    if (v9)
    {
      v10 = *(result + 738600) * v9;
      if (v10 / 100 < v4)
      {
        v4 = v10 / 100;
      }
    }

    if (v4 >= *(result + 738608))
    {
      LODWORD(v4) = *(result + 738608);
    }

    if (!*(result + 190184))
    {
LABEL_22:
      if ((*(result + 190092) | 2) != 2)
      {
        goto LABEL_58;
      }

      v11 = v4;
      LODWORD(a3) = *(result + 189844);
      v12 = *(result + 741504) - *&a3;
      if (v12 >= 16.0)
      {
        v12 = 16.0;
      }

      v13 = v12;
      if (v13 >= 1)
      {
        v14 = *(result + 738664);
        if (v14 < 1)
        {
          v23 = -v14 / v13;
          v24 = (v4 + (v4 >> 31)) >> 1;
          if (v23 < v24)
          {
            v24 = v23;
          }

          if (v24 >= -v14)
          {
            v24 = -v14;
          }

          v11 -= v24;
          if (!v5)
          {
            goto LABEL_55;
          }

          goto LABEL_33;
        }

        v15 = v14 / v13;
        v16 = (v4 + (v4 >> 31)) >> 1;
        if (v15 < v16)
        {
          v16 = v15;
        }

        if (v14 < v16)
        {
          v16 = *(result + 738664);
        }

        v11 += v16;
      }

      if (!v5)
      {
LABEL_55:
        if (v11 >= 0x7FFFFFFF)
        {
          LODWORD(v4) = 0x7FFFFFFF;
        }

        else
        {
          LODWORD(v4) = v11;
        }

        goto LABEL_58;
      }

LABEL_33:
      if (!*(result + 172988) && !*(result + 194564) && !*v3 && !*(result + 738596))
      {
        v17 = *(result + 738672);
        if (v17)
        {
          v18 = *(result + 738600);
          if (v11 > v18)
          {
            v18 = v11;
          }

          if (v17 >= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = *(result + 738672);
          }

          v20 = v18 / 8;
          v21 = v17 + 7;
          if (v17 >= 0)
          {
            v21 = *(result + 738672);
          }

          v22 = v21 >> 3;
          if (v20 <= v22)
          {
            v20 = v22;
          }

          if (v19 < v20)
          {
            v20 = v19;
          }

          v11 += v20;
          *(result + 738672) = v17 - v20;
        }
      }

      goto LABEL_55;
    }
  }

LABEL_58:
  *(result + 738460) = v4;
  if (*(result + 190156) == 2)
  {
    v25 = *(result + 738788);
    if (v25)
    {
      LODWORD(v4) = (rate_thresh_mult[v25] * v4);
      *(result + 738460) = v4;
    }
  }

  v26 = (v4 << 12) / (*(result + 171992) * *(result + 171988));
  if (v26 >= 0x7FFFFFFF)
  {
    LODWORD(v26) = 0x7FFFFFFF;
  }

  *(result + 738468) = v26;
  return result;
}

uint64_t calc_active_worst_quality_one_pass_cbr(uint64_t a1)
{
  if (!*(a1 + 172972) || *(a1 + 172988) || *(a1 + 739092) || *(a1 + 739104))
  {
    return *(a1 + 738736);
  }

  if (*(a1 + 189844) >= (5 * *(a1 + 754556)))
  {
    v2 = *(a1 + 738628);
  }

  else
  {
    v2 = *(a1 + 738628);
    if (v2 >= *(a1 + 738624))
    {
      v2 = *(a1 + 738624);
    }
  }

  v3 = *(a1 + 738752);
  v4 = *(a1 + 738736);
  LODWORD(v5) = v2 + (v2 >> 2);
  if (v4 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 754540) && *(a1 + 754544) >= 1 && *(a1 + 13936 * *(a1 + 754548) + 772756))
  {
    if (v2 >= *(a1 + 13936 * *(a1 + 754548) + 758952))
    {
      v2 = *(a1 + 13936 * *(a1 + 754548) + 758952);
    }

    LODWORD(v5) = v2 + (v2 >> 3);
    if (v4 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v4;
    }
  }

  v6 = *(a1 + 738648);
  if (v6 <= v3)
  {
    result = *(a1 + 738736);
    if (v6 > v3 >> 3)
    {
      result = v5;
      if (v3 >= 8)
      {
        v9 = v3 - (v3 >> 3);
        if (v9)
        {
          v9 = (v3 - v6) * (v4 - v2) / v9;
        }

        return (v9 + v2);
      }
    }
  }

  else
  {
    v7 = v5 / 3;
    if (*(a1 + 190380) == 1)
    {
      v7 = v5 >> 3;
    }

    if (v7)
    {
      v8 = (*(a1 + 738760) - v3) / v7;
      if (v8)
      {
        v8 = (v6 - v3) / v8;
      }

      return (v5 - v8);
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t vp9_scene_detection_onepass(uint64_t result)
{
  v168 = *MEMORY[0x277D85DE8];
  v1 = *(result + 190456);
  v2 = *(result + 190624);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return result;
  }

  v4 = (result + 754540);
  v5 = *(result + 754540);
  if (v5)
  {
    if (!*(result + 926392))
    {
      return result;
    }
  }

  v6 = (result + 171988);
  if (*(result + 172020))
  {
    return result;
  }

  v7 = *(v1 + 7);
  v8 = result + 738460;
  v165 = v1[4];
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v2 + 7);
  v164 = v2[4];
  v12 = *v2;
  v13 = *(*(result + 190624) + 4);
  *(result + 739064) = 0;
  *(result + 739052) = 0;
  if (*(result + 754544) != *(result + 927028))
  {
    return result;
  }

  if (v9 != v12 || v10 != v13)
  {
    return result;
  }

  v15 = (result + 189844);
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  v16 = *(result + 173016);
  v17 = *(result + 173008);
  if (*(result + 190056) >= 6)
  {
    v18 = 140000;
  }

  else
  {
    v18 = 240000;
  }

  v144 = v18;
  if (*(result + 190380) == 1)
  {
    v19 = 20000;
  }

  else
  {
    v19 = 65000;
  }

  v159 = v19;
  v20 = *(result + 190092);
  if (v20)
  {
    v21 = 8.0;
  }

  else
  {
    v21 = 2.1;
  }

  if (v5 && *(result + 754552) > 1)
  {
    v17 = (v10 + 7) >> 3;
    v16 = (v9 + 7) >> 3;
  }

  v154 = v17;
  v155 = v16;
  v145 = (result + 194560);
  v22 = *(result + 190088);
  v158 = result + 189844;
  v147 = result;
  if (v22 >= 1)
  {
    v23 = *v15;
    v24 = *(result + 190424);
    v25 = v24[1];
    v148 = v25;
    if (*v15 == 1)
    {
      v26 = v25 - 1;
      if (v25 < 2)
      {
        v27 = result;
        v28 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v26 = 2;
    }

    v29 = 0;
    v30 = v25 - 1;
    do
    {
      if ((v30 & 0x80000000) == 0)
      {
        if (v25 > v30)
        {
          v31 = v24[2];
          if (v30 + v31 >= *v24)
          {
            v32 = *v24;
          }

          else
          {
            v32 = 0;
          }

          v33 = *(v24 + 3) + 192 * (v30 + v31 - v32);
        }

        else
        {
          v33 = 0;
        }

        *(v166 + v29) = v33;
      }

      ++v29;
      --v30;
    }

    while (v26 != v29);
    v27 = result;
    v28 = 1;
LABEL_44:
    result += 738848;
    v34 = *(v8 + 388);
    v35 = *(v8 + 380);
    LODWORD(v36) = (v21 * v35);
    if (v159 <= v36)
    {
      v36 = v36;
    }

    else
    {
      v36 = v159;
    }

    v153 = *(v8 + 388);
    if (v34 <= v36)
    {
      v146 = 0;
      *(v8 + 604) = 0;
      if (!v34)
      {
LABEL_54:
        if (v22 < 3)
        {
          if (!v28)
          {
LABEL_56:
            if (v20 != 1)
            {
              goto LABEL_138;
            }

            goto LABEL_57;
          }
        }

        else
        {
          result = memmove(result, (v27 + 738856), 8 * (v22 - 2));
          if (!v28)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_68;
      }
    }

    else if (v23 <= v22)
    {
      v146 = 0;
      *(v8 + 604) = 0;
    }

    else
    {
      *(v8 + 604) = 1;
      v146 = v153 > v144;
    }

    *(v8 + 380) = (3 * v35 + v153) >> 2;
    goto LABEL_54;
  }

  v153 = 0;
  v146 = 0;
  v148 = 1;
  v26 = 1;
LABEL_68:
  v143 = v6;
  v43 = 0;
  v45 = v154;
  v44 = v155;
  v46 = v155 + 7;
  if (v155 < -7)
  {
    v46 = v155 + 14;
  }

  v47 = v46 >> 3;
  v48 = v154 + 7;
  if (v154 < -7)
  {
    v48 = v154 + 14;
  }

  result = (v48 >> 3);
  v49 = result - 1;
  if (result <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = result;
  }

  v162 = v50;
  v163 = (v8 + 2780);
  v51 = (v8 + 380);
  if (v47 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v47;
  }

  v53 = (v52 - 1) << 6;
  v54 = v26;
  v55 = v158;
  v151 = (v8 + 380);
  v152 = v8;
  v150 = result;
  v161 = result - 1;
  v160 = v53;
  v149 = v26;
  do
  {
    v56 = *(v55 + 244);
    if (v56)
    {
      v57 = *(v166 + v43);
      if (!v57)
      {
        goto LABEL_79;
      }

      v58 = *(v166 + v43 + 1);
      if (!v58 || *v57 != *v58 || *(v57 + 4) != *(v58 + 4))
      {
        goto LABEL_79;
      }

      v59 = v148 - v43;
      if (v56 >= 1)
      {
        v7 = *(v57 + 56);
        v11 = *(v58 + 56);
        v164 = *(v58 + 16);
        v165 = *(v57 + 16);
      }

      if (v45 < 1)
      {
LABEL_99:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        if (v59)
        {
          goto LABEL_100;
        }

        goto LABEL_102;
      }
    }

    else
    {
      v59 = 0;
      if (v45 < 1)
      {
        goto LABEL_99;
      }
    }

    v60 = ((v165 - v47) << 6);
    v61 = ((v164 - v47) << 6);
    if (v44 < 1)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v7 += v60 * v162;
      v11 += v61 * v162;
      if (v59)
      {
        goto LABEL_100;
      }
    }

    else if (v44 >= 9)
    {
      v157 = v59;
      v156 = v43;
      v68 = 0;
      v70 = 0;
      v74 = 0;
      v69 = 0;
      do
      {
        if (v74 && v74 < v49)
        {
          v75 = 1;
          do
          {
            v11 += 64;
            v7 += 64;
            if (v75 < v47 - 1 && ((v74 & 1 & v75) != 0 || ((v75 | v74) & 1) == 0))
            {
              v76 = (*v163)(v7, v165, v11, v164);
              v70 += v76;
              ++v68;
              if (!v76)
              {
                ++v69;
              }
            }

            ++v75;
          }

          while (v47 != v75);
        }

        else
        {
          v7 += v160;
          v11 += v160;
        }

        v7 += ((v165 - v47) << 6) + 64;
        v11 += ((v164 - v47) << 6) + 64;
        ++v74;
        v49 = v161;
      }

      while (v74 != v162);
      v43 = v156;
      result = v150;
      v54 = v149;
      if (v68 >= 1)
      {
        v70 /= v68;
      }

      v51 = v151;
      v8 = v152;
      v55 = v158;
      v45 = v154;
      v44 = v155;
      v53 = v160;
      v59 = v157;
      if (v157)
      {
LABEL_100:
        v51[v59] = v70;
        goto LABEL_135;
      }
    }

    else
    {
      v62 = v11 + v53;
      v63 = v7 + v53;
      if (v45 >= 9)
      {
        v64 = 1;
        do
        {
          v65 = v62 + v61;
          v66 = v63 + v60;
          if (v64 >= v49)
          {
            v67 = v53;
          }

          else
          {
            v67 = 0;
          }

          v62 = v65 + v67 + 64;
          v63 = v66 + v67 + 64;
          ++v64;
        }

        while (result != v64);
      }

      v68 = 0;
      v69 = 0;
      v70 = 0;
      v11 = v62 + v61 + 64;
      v7 = v63 + v60 + 64;
      if (v59)
      {
        goto LABEL_100;
      }
    }

LABEL_102:
    v71 = *v51;
    LODWORD(v72) = (v21 * *v51);
    if (v159 <= v72)
    {
      v72 = v72;
    }

    else
    {
      v72 = v159;
    }

    if (v70 > v72)
    {
      v73 = *(v8 + 116) > v4[3] + 1 && v69 < 3 * (v68 >> 2);
      if (v73)
      {
        *(v8 + 604) = 1;
        v77 = v146;
        if (v70 > v144)
        {
          v77 = 1;
        }

        v146 = v77;
      }

      else
      {
        *(v8 + 604) = 0;
      }

LABEL_134:
      *v51 = (3 * v71 + v70) >> 2;
      goto LABEL_135;
    }

    *(v8 + 604) = 0;
    if (v70 || *(v55 + 248) == 1)
    {
      goto LABEL_134;
    }

LABEL_135:
    if (v69 < (3 * v68) >> 2)
    {
      *(v8 + 592) = 1;
    }

LABEL_79:
    ++v43;
  }

  while (v43 != v54);
  v20 = *(v55 + 248);
  v6 = v143;
  if (v20 == 1)
  {
LABEL_57:
    v37 = v158;
    v38 = *v4;
    v39 = v147;
    if (*(v158 + 536) == 1)
    {
      goto LABEL_139;
    }

    v40 = v153;
    if (v38)
    {
      goto LABEL_140;
    }

    if (*(v8 + 604))
    {
      v41 = *(v8 + 16);
      if (v41 == *(v8 + 280) && *(v8 + 168) < 2 * v41 && *(v8 + 44) == 0.005)
      {
        *(v8 + 44) = 0x3FE0000000000000;
        *(v8 + 168) = *(v8 + 276);
        v42 = *(v8 + 292);
        *(v8 + 188) = v42;
        *(v8 + 196) = v42;
        *(v8 + 632) = 1;
      }
    }

    if (v6[246] && *(v8 + 632))
    {
      *v8 = *(v8 + 140);
    }

    goto LABEL_153;
  }

LABEL_138:
  v38 = *v4;
  v37 = v158;
  v39 = v147;
LABEL_139:
  v40 = v153;
  if (v38)
  {
LABEL_140:
    v78 = v4[3];
    if (v78 >= 1)
    {
      v79 = v4[4];
      if (v79 >= 1)
      {
        v80 = 0;
        v81 = v39 + 189830;
        v82 = *(v8 + 380);
        do
        {
          if (v79 == 1)
          {
            result = 0;
          }

          else
          {
            v83 = v79 & 0x7FFFFFFE;
            v84 = v81;
            do
            {
              *v84 = v82;
              *(v84 + 1742) = v82;
              v84 += 6968;
              v83 -= 2;
            }

            while (v83);
            result = v79 & 0x7FFFFFFE;
            if (result == v79)
            {
              goto LABEL_143;
            }
          }

          v85 = v79 - result;
          result = 13936 * result;
          do
          {
            *(v81 + result) = v82;
            result += 13936;
            --v85;
          }

          while (v85);
LABEL_143:
          ++v80;
          v81 += 3484 * v79;
        }

        while (v80 != v78);
      }
    }
  }

  if (v20 || !v6[246] || !*(v8 + 604) || (v112 = *(v8 + 112), v112 < 4) || *(v8 + 608) < 5 || v145[2])
  {
LABEL_153:
    ++*(v8 + 608);
    v86 = *(v37 + 244);
    v87 = v86 - 1;
    if (v86 < 1)
    {
      return result;
    }

    goto LABEL_154;
  }

  *v145 = 1;
  if (v146)
  {
    v6[246] = 0;
  }

  *(v8 + 128) = 0;
  if (*(v8 + 1680) && *(v37 + 460))
  {
    *(v8 + 128) = 1;
  }

  *(v8 + 28) = 1000;
  v113 = *(v8 + 104);
  if (v113 <= 10)
  {
    v113 = 10;
  }

  if (v113 >= 20)
  {
    v113 = 20;
  }

  *(v8 + 104) = v113;
  *(v8 + 108) = 0;
  if (v113 < v112 && (7 * v113) >> 2 >= v112)
  {
    v112 >>= 1;
    goto LABEL_315;
  }

  if (v113 > v112)
  {
LABEL_315:
    *(v8 + 104) = v112;
    *(v8 + 108) = 1;
    v113 = v112;
  }

  *(v8 + 88) = v113;
  v142 = vp9_calc_pframe_target_size_one_pass_vbr(v39);
  result = vp9_rc_set_frame_target(v39, v142);
  *(v8 + 608) = 0;
  v86 = *(v37 + 244);
  v87 = v86 - 1;
  if (v86 < 1)
  {
    return result;
  }

LABEL_154:
  v88 = *(*(v37 + 580) + 4);
  if (v88 < 2)
  {
    v96 = -1;
    v114 = 1;
    v94 = -1;
    goto LABEL_213;
  }

  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = (v88 - 1);
  v93 = v8 + 380;
  v94 = -1;
  result = 1;
  v95 = *(*(v37 + 580) + 4);
  v96 = -1;
  do
  {
    v97 = v40;
    --v95;
    v98 = *(v8 + 380);
    v99 = v92 - v95;
    if (v92 != v95)
    {
      v100 = (v8 + 388);
      v101 = v89;
      v98 = *(v8 + 380);
      do
      {
        v102 = *v100++;
        v103 = (v102 + 3 * v98) >> 2;
        if (v102)
        {
          v98 = v103;
        }

        --v101;
      }

      while (v101);
    }

    v104 = v99 + 1;
    if (v90)
    {
      v90 = 1;
      v105 = v97;
      if (v92 == v95)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v106 = *(v93 + 8 * v104);
      LODWORD(v107) = 2 * v98;
      if ((2 * v98) <= 0x11170)
      {
        v107 = 70000;
      }

      else
      {
        v107 = v107;
      }

      if (v106 <= v107 && ((LODWORD(v98) = 4 * v98, v98 <= 0xCD14) ? (v98 = 52500) : (v98 = v98), v106 <= v98))
      {
        v90 = 0;
        v105 = v97;
        if (v92 == v95)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v90 = 1;
        v96 = v99 + 1;
        v105 = v97;
        if (v92 == v95)
        {
          goto LABEL_157;
        }
      }
    }

    if (!v91)
    {
      if (v104 >= v92 || (v108 = *(v93 + 8 * v99), v108 < 0x445D))
      {
        v91 = 0;
      }

      else
      {
        v109 = v108 >> 1;
        v110 = 1;
        v111 = v104;
        do
        {
          if (*(v93 + 8 * v111) >= v109 || (*(v93 + 8 * v111) - 1) >= 0x445B)
          {
            v111 = v88 - 1;
            v110 = 0;
          }

          ++v111;
        }

        while (v111 < v92);
        v91 = v110 != 0;
        if (v110)
        {
          v94 = v104;
        }
      }
    }

LABEL_157:
    v40 = *(v93 + 8 * v104) + v105;
    ++result;
    ++v89;
  }

  while (result != v88);
  v40 /= v92;
  if (v96 == -1)
  {
    v114 = 1;
    v37 = v158;
  }

  else
  {
    v115 = *(v8 + 588);
    if (v96 == v115 - 1)
    {
      v114 = 0;
      v37 = v158;
    }

    else
    {
      v116 = v96 - v115;
      if (v116 < 0)
      {
        v116 = -v116;
      }

      v73 = v116 > 3;
      v37 = v158;
      v114 = 0;
      if (!v73)
      {
        v96 = -1;
      }
    }
  }

LABEL_213:
  *(v8 + 588) = v96;
  if (*v145 == 1 && v86 >= 9 && *v37 >= 0x1Fu)
  {
    v117 = *(v8 + 228);
    if (v117 < 1)
    {
      v118 = 1.0;
    }

    else
    {
      v118 = *(v8 + 232) / v117;
    }

    if (v114)
    {
      v119 = *(v8 + 580);
      v121 = v40 > 0x1D4C0 || v40 > 2 * v119;
      v122 = v119 >> 1;
      if (v40 < 0x11170 || v40 < v122)
      {
        *(v8 + 28) = 2000;
        v124 = *(v8 + 104) + (*(v8 + 104) >> 1);
        if (v124 >= 15)
        {
          v124 = 15;
        }

        *(v8 + 104) = v124;
        v125 = 1;
        if (v124 < v86)
        {
          goto LABEL_242;
        }

LABEL_241:
        *(v8 + 104) = v87;
        v124 = v87;
        goto LABEL_242;
      }

      if (!v121)
      {
        v125 = 0;
        v121 = 0;
        v124 = *(v8 + 104);
        if (v124 < v86)
        {
          goto LABEL_242;
        }

        goto LABEL_241;
      }
    }

    v125 = 0;
    *(v8 + 28) = 1000;
    v124 = *(v8 + 104) >> 1;
    if (v118 <= 3.0)
    {
      v126 = 6;
    }

    else
    {
      v126 = 10;
    }

    if (v126 > v124)
    {
      v124 = v126;
    }

    *(v8 + 104) = v124;
    v121 = 1;
    if (v124 >= v86)
    {
      goto LABEL_241;
    }

LABEL_242:
    v127 = *(v8 + 112);
    if (v127 >= v96)
    {
      v128 = v96;
    }

    else
    {
      v128 = *(v8 + 112);
    }

    if (v96 > 0)
    {
      v127 = v128;
    }

    if (v127 >= v94)
    {
      v129 = v94;
    }

    else
    {
      v129 = v127;
    }

    if (v94 > 3)
    {
      v127 = v129;
    }

    *(v8 + 108) = 0;
    if (v124 >= v127 || (7 * v124) >> 2 < v127)
    {
      if (v124 > v127)
      {
        goto LABEL_257;
      }
    }

    else
    {
      if (v127 >> 1 >= 5)
      {
        v127 >>= 1;
      }

LABEL_257:
      *(v8 + 104) = v127;
      *(v8 + 108) = 1;
      v124 = v127;
    }

    *(v8 + 88) = v124;
    v130 = (v8 + 372);
    *(v8 + 372) = 0x6400000096;
    if (v118 >= 2.0 || v121)
    {
      if (v118 > 8.0)
      {
        v131 = *(v8 + 168);
        if (v131 <= 15)
        {
          if (v131 >= 8)
          {
            v132 = 200;
          }

          else
          {
            v132 = 400;
          }

          *v130 = v132;
        }
      }
    }

    else
    {
      *v130 = 0x5A00000078;
    }

    if (v125 && *(v8 + 620) >= 81)
    {
      *(v8 + 624) = 15;
    }

    else if (v121 || *(v8 + 620) <= 29)
    {
      *(v8 + 624) = 5;
      *(v8 + 28) = 500;
    }

    if (*(v8 + 1680) && *(v37 + 460))
    {
      if (v6[246] && !*(v8 + 604) && *(v8 + 636) < 15.0 && *(v37 + 212) > 4)
      {
        goto LABEL_284;
      }

      if (v96 < 1)
      {
        if (v40 >= 0x668B)
        {
          goto LABEL_284;
        }

LABEL_281:
        *(v8 + 128) = 1;
        *(v8 + 596) = 1;
        if (v124 >= 13)
        {
          v124 = 12;
          *(v8 + 104) = 12;
          *(v8 + 88) = 12;
        }
      }

      else
      {
        if (v96 > v124 && v40 <= 0x668A)
        {
          goto LABEL_281;
        }

LABEL_284:
        *(v8 + 128) = 0;
        *(v8 + 596) = 0;
      }
    }

    v133 = *(v8 + 136);
    v134 = *(v8 + 140);
    if (v133)
    {
      v135 = 1;
    }

    else
    {
      v135 = *(v8 + 624);
    }

    if (*v4)
    {
      result = vp9_calc_pframe_target_size_one_pass_cbr(v39);
      v136 = result;
    }

    else
    {
      v136 = v134 * v124 * v135 / (v124 + *(v8 + 624) - 1);
    }

    if (v136 >= 0x7FFFFFFF)
    {
      LODWORD(v136) = 0x7FFFFFFF;
    }

    v137 = v134 >> 5;
    if (*(v8 + 144) > v134 >> 5)
    {
      v137 = *(v8 + 144);
    }

    if (v137 > v136)
    {
      LODWORD(v136) = v137;
    }

    if (v133)
    {
      LODWORD(v136) = v137;
    }

    if (v136 >= *(v8 + 148))
    {
      LODWORD(v136) = *(v8 + 148);
    }

    v138 = *(v37 + 220);
    v139 = v138 * v134 / 100;
    if (v139 >= v136)
    {
      LODWORD(v139) = v136;
    }

    if (v138)
    {
      LODWORD(v136) = v139;
    }

    *v8 = v136;
    if (*(v37 + 312) == 2)
    {
      v140 = *(v8 + 328);
      if (v140)
      {
        LODWORD(v136) = (rate_thresh_mult[v140] * v136);
        *v8 = v136;
      }
    }

    v141 = (v136 << 12) / (v6[1] * *v6);
    if (v141 >= 0x7FFFFFFF)
    {
      LODWORD(v141) = 0x7FFFFFFF;
    }

    *(v8 + 8) = v141;
  }

  *(v8 + 580) = v40;
  return result;
}

uint64_t vp9_encodedframe_overshoot(uint64_t a1, int a2, int *a3)
{
  v3 = (a1 + 738504);
  v4 = *(a1 + 738600);
  if (*(a1 + 740156) != 1 && 8 * v4 >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 738736);
  LODWORD(v7) = *(a1 + 190380);
  v8 = (v6 & 0xFFFFFFF8) - (v6 >> 3);
  if (v7 != 1)
  {
    v8 = 3 * (v6 >> 2);
  }

  if (*(a1 + 173028) >= v8)
  {
    return 0;
  }

  if (v7 != 1)
  {
    if (*(a1 + 171992) * *(a1 + 171988) < 921600 || *(a1 + 738648) <= (3 * *(a1 + 738752)) >> 2 || (v7 = *(a1 + 738840) >> 17) != 0)
    {
      LODWORD(v7) = 1;
    }

    else
    {
      v6 = (*a3 + v6) >> 1;
    }
  }

  v10 = *v3;
  *a3 = v6;
  *(*(a1 + 740272) + 124) = 0;
  *(a1 + 739076) = 1;
  if (*(a1 + 740156) != 2 || 16 * v4 >= a2 || *(a1 + 754544))
  {
    goto LABEL_40;
  }

  v11 = 0;
  v12 = *(a1 + 173008);
  v13 = *(a1 + 173016);
  if (v12 < 1 || v13 < 1)
  {
    goto LABEL_38;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(a1 + 173176);
  v17 = 8 * (v13 - 1);
  v18 = v16 + 1;
  do
  {
    if (v13 < 2)
    {
      v19 = 0;
      v20 = v16;
LABEL_32:
      v24 = v13 - v19;
      do
      {
        v25 = *v20++;
        if (!*(v25 + 8))
        {
          ++v15;
        }

        --v24;
      }

      while (v24);
      goto LABEL_22;
    }

    v21 = 0;
    v20 = &v16[v13 & 0x7FFFFFFE];
    v22 = v13 & 0x7FFFFFFE;
    v23 = v18;
    do
    {
      if (!*(*(v23 - 1) + 8))
      {
        ++v15;
      }

      if (!*(*v23 + 8))
      {
        ++v21;
      }

      v23 += 2;
      v22 -= 2;
    }

    while (v22);
    v15 += v21;
    v19 = v13 & 0x7FFFFFFE;
    if ((v13 & 0x7FFFFFFE) != v13)
    {
      goto LABEL_32;
    }

LABEL_22:
    v16 = (v16 + v17 + 72);
    ++v14;
    v18 = (v18 + v17 + 72);
  }

  while (v14 != v12);
  v11 = 100 * v15;
LABEL_38:
  if (v11 / (v13 * v12) >= 61)
  {
    *(a1 + 739072) = 1;
  }

LABEL_40:
  *(a1 + 738628) = *a3;
  v26 = *(a1 + 738752);
  *(a1 + 738648) = v26;
  *(a1 + 738656) = v26;
  *(a1 + 738768) = 0;
  v27 = v4 << 9;
  v28 = 0.015625;
  v29 = *a3;
  v30 = *(a1 + 189856);
  if (v30 == 10)
  {
    v28 = 0.0625;
  }

  v31 = 0.25;
  v32 = v27 / *(a1 + 173000);
  if (v30 == 8)
  {
    v28 = 0.25;
    v33 = ac_qlookup_0;
    goto LABEL_48;
  }

  if (v30 == 12)
  {
    v33 = ac_qlookup_12;
LABEL_48:
    if (v29 >= 0xFF)
    {
      v34 = 255;
    }

    else
    {
      v34 = *a3;
    }

    if (v29 >= 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    LOWORD(v31) = v33[v35];
    v31 = vmovl_s16(*&v31).i32[0];
  }

  else
  {
    v31 = -1.0;
    if (v30 == 10)
    {
      v33 = ac_qlookup_10;
      goto LABEL_48;
    }
  }

  v36 = v28 * v31 * v32 / (((v28 * v31 * 1800000.0) >> 12) + 1800000);
  if (v36 > v10)
  {
    v10 = v10 + v10;
    if (v10 >= v36)
    {
      v10 = v36;
    }

    if (v10 > 50.0)
    {
      v10 = 50.0;
    }

    *v3 = v10;
  }

  if (*(a1 + 754540))
  {
    v37 = *(a1 + 927028) <= 1 ? 1 : *(a1 + 927028);
    if (!*(a1 + 926852) || (v37 = *(a1 + 754552), v37 >= 1))
    {
      v38 = *(a1 + 754556);
      if (v38 >= 1)
      {
        v39 = 0;
        v40 = 13936 * v38;
        v41 = a1 + 759584;
        v42 = a1 + 758984;
        v43 = a1 + 759248;
        v44 = a1 + 759136;
        v45 = a1 + 759128;
        v46 = a1 + 759232;
        v47 = a1 + 759108;
        do
        {
          v48 = 0;
          do
          {
            *(v47 + v48) = *a3;
            v49 = *(v46 + v48);
            *(v45 + v48) = v49;
            *(v44 + v48) = v49;
            *(v43 + v48) = 0;
            *(v42 + v48) = v10;
            *(v41 + v48) = v7;
            v48 += 13936;
          }

          while (v40 != v48);
          ++v39;
          v41 += v40;
          v42 += v40;
          v43 += v40;
          v44 += v40;
          v45 += v40;
          v46 += v40;
          v47 += v40;
        }

        while (v39 != v37);
      }
    }
  }

  return 1;
}

uint64_t vp9_compute_rd_mult_based_on_qindex(uint64_t a1, int a2)
{
  v2 = (a1 + 942328);
  v3 = *(a1 + 189856);
  switch(v3)
  {
    case 8:
      v4 = &dc_qlookup_0;
      break;
    case 12:
      v4 = &dc_qlookup_12;
      break;
    case 10:
      v4 = &dc_qlookup_10;
      break;
    default:
      v6 = -1;
      if (!*v2)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
  }

  if (a2 >= 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = a2;
  }

  if (a2 < 0)
  {
    v5 = 0;
  }

  v6 = v4[v5];
  if (!*v2)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((*(a1 + 942344) & 4) != 0 && *(a1 + 942332) != -1)
  {
    return *(a1 + 942332);
  }

LABEL_18:
  v8 = (a1 + 198896);
  v9 = v6 * v6;
  if (*(a1 + 172972))
  {
    if (!*(a1 + 738596) && (*(a1 + 194560) || *(a1 + 194564)))
    {
      v10 = (a2 * 0.001 + 4.25) * v9;
      v8 = (a1 + 198904);
    }

    else
    {
      v10 = (a2 * 0.001 + 4.15) * v9;
    }
  }

  else
  {
    v10 = (a2 * 0.001 + 4.35) * v9;
    v8 = (a1 + 198912);
  }

  v11 = (v10 * *v8);
  v12 = (v11 + 128) >> 8;
  if (v3 == 10)
  {
    v11 = (v11 + 8) >> 4;
  }

  if (v3 == 12)
  {
    v11 = v12;
  }

  if (v11 <= 1)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

void vp9_initialize_rd_consts(_DWORD *a1)
{
  v196 = *MEMORY[0x277D85DE8];
  v2 = a1 + 235536;
  v3 = a1 + 184622;
  v4 = a1 + 52998;
  v5 = (a1 + 18648);
  a1[52999] = 7;
  v186 = a1 + 47461;
  v187 = a1 + 43243;
  v6 = vp9_compute_rd_mult_based_on_qindex(a1, a1[43258] + a1[43257]);
  if (!v2[46] || (v2[50] & 4) == 0 || (v8 = v2[47], v8 == -1))
  {
    if (v186[58] == 2)
    {
      v8 = v6;
      if (*v187)
      {
        v9 = &a1[*(v3 + 3668)];
        v10 = v9[185792];
        v11 = v9 + 186485;
        if (!*v2)
        {
          v11 = v3;
        }

        v12 = *v11;
        v13 = v12 <= 1599;
        v14 = v12 / 100;
        if (!v13)
        {
          v14 = 15;
        }

        v15 = (rd_frame_type_factor[v10] * v6) >> 7;
        v8 = ((v15 * rd_boost_factor[v14]) >> 7) + v15;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  v182 = a1 + 233372;
  v183 = v3;
  v16 = a1 + 49760;
  v17 = a1 + 49730;
  *v4 = v8;
  if (v8 >= 0x40)
  {
    v18 = v8 >> 6;
  }

  else
  {
    v18 = (v8 >> 6) + 1;
  }

  *(v5 + 57) = v18;
  if (v3[297] == 1)
  {
    v19 = v187;
    v20 = *v187 == 0;
  }

  else
  {
    v20 = 1;
    v19 = v187;
  }

  v21 = 0;
  v184 = v5;
  v185 = a1;
  *(v5 + 49) = v20;
  v22 = a1 + 49766;
  v23 = *(v19 + 3500);
  v189 = a1 + 44122;
  v191 = a1 + 44138;
  v24 = a1 + 49766;
  do
  {
    v25 = v19[14];
    if (v23 && (v191[v21] & 1) != 0)
    {
      v19 = v187;
      if (*(v187 + 3503) == 1)
      {
        v25 = 0;
      }

      v26 = v25 + SLOWORD(v189[2 * v21]);
      if (v26 >= 0xFF)
      {
        v27 = 255;
      }

      else
      {
        v27 = v26;
      }

      if (v26 >= 0)
      {
        v25 = v27;
      }

      else
      {
        v25 = 0;
      }
    }

    v28 = v19[15] + v25;
    if (v28 >= 0xFF)
    {
      v29 = 255;
    }

    else
    {
      v29 = v28;
    }

    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v186[3];
    if (v31 == 8)
    {
      v32 = 0.25;
    }

    else
    {
      v32 = 0.015625;
    }

    v33 = &dc_qlookup_12;
    if (v31 == 8)
    {
      v33 = dc_qlookup_0;
    }

    v34 = v31 == 10;
    if (v31 == 10)
    {
      v32 = 0.0625;
    }

    v35 = &dc_qlookup_10;
    if (!v34)
    {
      v35 = v33;
    }

    v7.i16[0] = v35[v30];
    v36 = pow(v32 * vmovl_s16(v7).i32[0], 1.25);
    v37 = 0;
    v38 = (v36 * 5.12);
    if (v38 <= 8)
    {
      v38 = 8;
    }

    v39 = v24;
    do
    {
      v41 = v38 * rd_thresh_block_size_factor[v37];
      v42 = 0x7FFFFFFF / v41;
      if (v37 < 3)
      {
        if (*v16 >= v42)
        {
          v45 = 0x7FFFFFFF;
        }

        else
        {
          v45 = (*v16 * v41) / 4;
        }

        v22[390 * v21 + 30 * v37] = v45;
        v46 = v16[1];
        v47 = v16[2];
        if (v46 < v42)
        {
          v48 = (v46 * v41) / 4;
        }

        else
        {
          v48 = 0x7FFFFFFF;
        }

        v22[390 * v21 + 1 + 30 * v37] = v48;
        v49 = (v47 * v41) / 4;
        if (v47 >= v42)
        {
          v49 = 0x7FFFFFFF;
        }

        v22[390 * v21 + 2 + 30 * v37] = v49;
        v50 = v16[3];
        v51 = v16[4];
        if (v50 < v42)
        {
          v52 = (v50 * v41) / 4;
        }

        else
        {
          v52 = 0x7FFFFFFF;
        }

        v22[390 * v21 + 3 + 30 * v37] = v52;
        v53 = (v51 * v41) / 4;
        if (v51 >= v42)
        {
          v53 = 0x7FFFFFFF;
        }

        v22[390 * v21 + 4 + 30 * v37] = v53;
        v54 = v16[5];
        if (v54 < v42)
        {
          v40 = (v54 * v41) / 4;
        }

        else
        {
          v40 = 0x7FFFFFFF;
        }

        v22[390 * v21 + 5 + 30 * v37] = v40;
      }

      else
      {
        for (i = 0; i != 30; ++i)
        {
          while (1)
          {
            v44 = v17[i];
            if (v44 >= v42)
            {
              break;
            }

            v39[i++] = (v44 * v41) / 4;
            if (i == 30)
            {
              goto LABEL_50;
            }
          }

          v39[i] = 0x7FFFFFFF;
        }
      }

LABEL_50:
      ++v37;
      v39 += 30;
    }

    while (v37 != 13);
    ++v21;
    v24 += 390;
    v19 = v187;
  }

  while (v21 != 8);
  if (!*v187)
  {
    v56 = v185;
    *v184 = &vp9_kf_partition_probs;
    if (v186[58] == 1)
    {
      return;
    }

    v57 = v183 + 363;
    goto LABEL_87;
  }

  v55 = v184;
  v56 = v185;
  if (*(v187 + 16))
  {
    *v184 = &vp9_kf_partition_probs;
    if (v186[58] == 1)
    {
      return;
    }

LABEL_84:
    v57 = v183 + 363;
    if (v183[363])
    {
      if (v183[302] != 3)
      {
        goto LABEL_196;
      }

LABEL_193:
      if (*v19)
      {
        if (*v57)
        {
LABEL_197:
          if ((*v186 & 7) != 1 && *v19)
          {
            return;
          }
        }

LABEL_199:
        v174 = 0;
        v175 = (v19 + 907);
        v176 = *(v19 + 907);
        v177 = (v56 + 232386);
        do
        {
          cost_0(v177 - 360, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174, 0, 0);
          cost_0(v177 - 320, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 9, 0, 0);
          cost_0(v177 - 280, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 18, 0, 0);
          cost_0(v177 - 240, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 27, 0, 0);
          cost_0(v177 - 200, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 36, 0, 0);
          cost_0(v177 - 160, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 45, 0, 0);
          cost_0(v177 - 120, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 54, 0, 0);
          cost_0(v177 - 80, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 63, 0, 0);
          cost_0(v177 - 40, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 72, 0, 0);
          cost_0(v177, vp9_intra_mode_tree, &vp9_kf_y_mode_prob + v174 + 81, 0, 0);
          v174 += 90;
          v177 += 400;
        }

        while (v174 != 900);
        cost_0((v56 + 232058), vp9_intra_mode_tree, (v176 + 9), 0, 0);
        cost_0((v56 + 232096), vp9_intra_mode_tree, &vp9_kf_uv_mode_prob, 0, 0);
        cost_0((v56 + 232196), vp9_intra_mode_tree, (v176 + 36), 0, 0);
        cost_0((v56 + 232106), vp9_intra_mode_tree, &unk_273BD17BD, 0, 0);
        cost_0((v56 + 232206), vp9_intra_mode_tree, (v176 + 45), 0, 0);
        cost_0((v56 + 232116), vp9_intra_mode_tree, &unk_273BD17C6, 0, 0);
        cost_0((v56 + 232216), vp9_intra_mode_tree, (v176 + 54), 0, 0);
        cost_0((v56 + 232126), vp9_intra_mode_tree, &unk_273BD17CF, 0, 0);
        cost_0((v56 + 232226), vp9_intra_mode_tree, (v176 + 63), 0, 0);
        cost_0((v56 + 232136), vp9_intra_mode_tree, &unk_273BD17D8, 0, 0);
        cost_0((v56 + 232236), vp9_intra_mode_tree, (v176 + 72), 0, 0);
        cost_0((v56 + 232146), vp9_intra_mode_tree, &unk_273BD17E1, 0, 0);
        cost_0((v56 + 232246), vp9_intra_mode_tree, (v176 + 81), 0, 0);
        cost_0((v56 + 232156), vp9_intra_mode_tree, &unk_273BD17EA, 0, 0);
        cost_0((v56 + 232256), vp9_intra_mode_tree, (v176 + 90), 0, 0);
        cost_0((v56 + 232166), vp9_intra_mode_tree, &unk_273BD17F3, 0, 0);
        cost_0((v56 + 232266), vp9_intra_mode_tree, (v176 + 99), 0, 0);
        cost_0((v56 + 232176), vp9_intra_mode_tree, &unk_273BD17FC, 0, 0);
        cost_0((v56 + 232276), vp9_intra_mode_tree, (v176 + 108), 0, 0);
        cost_0((v56 + 232186), vp9_intra_mode_tree, &unk_273BD1805, 0, 0);
        cost_0((v56 + 232286), vp9_intra_mode_tree, (v176 + 117), 0, 0);
        cost_0((v56 + 233296), vp9_switchable_interp_tree, (v176 + 1902), 0, 0);
        cost_0((v56 + 233299), vp9_switchable_interp_tree, (v176 + 1904), 0, 0);
        cost_0((v56 + 233302), vp9_switchable_interp_tree, (v176 + 1906), 0, 0);
        cost_0((v56 + 233305), vp9_switchable_interp_tree, (v176 + 1908), 0, 0);
        *v182 = vp9_prob_cost[v176[1965]];
        v182[1] = vp9_prob_cost[256 - v176[1965]];
        v182[4] = vp9_prob_cost[v176[1966]];
        v182[5] = vp9_prob_cost[256 - v176[1966]];
        v182[8] = vp9_prob_cost[v176[1961]];
        v182[9] = vp9_prob_cost[v176[1962]] + vp9_prob_cost[256 - v176[1961]];
        v182[10] = vp9_prob_cost[256 - v176[1962]] + vp9_prob_cost[256 - v176[1961]];
        v182[12] = vp9_prob_cost[v176[1963]];
        v182[13] = vp9_prob_cost[v176[1964]] + vp9_prob_cost[256 - v176[1963]];
        v182[14] = vp9_prob_cost[256 - v176[1964]] + vp9_prob_cost[256 - v176[1963]];
        v182[16] = vp9_prob_cost[v176[1955]];
        v182[17] = vp9_prob_cost[v176[1956]] + vp9_prob_cost[256 - v176[1955]];
        v182[18] = vp9_prob_cost[256 - v176[1956]] + vp9_prob_cost[256 - v176[1955]] + vp9_prob_cost[v176[1957]];
        v182[19] = vp9_prob_cost[256 - v176[1956]] + vp9_prob_cost[256 - v176[1955]] + vp9_prob_cost[256 - v176[1957]];
        v182[20] = vp9_prob_cost[v176[1958]];
        v182[21] = vp9_prob_cost[v176[1959]] + vp9_prob_cost[256 - v176[1958]];
        v182[22] = vp9_prob_cost[256 - v176[1959]] + vp9_prob_cost[256 - v176[1958]] + vp9_prob_cost[v176[1960]];
        v182[23] = vp9_prob_cost[256 - v176[1959]] + vp9_prob_cost[256 - v176[1958]] + vp9_prob_cost[256 - v176[1960]];
        if (*v187 && !*(v187 + 16))
        {
          v178 = v187[5];
          v179 = 18736;
          if (v178)
          {
            v179 = 18740;
          }

          v180 = &v56[v179];
          v181 = *v175;
          cost_0((v56 + 18731), vp9_mv_joint_tree, *v175 + 1970, 0, 0);
          build_nmv_component_cost_table(*v180, (v181 + 1973), v178);
          build_nmv_component_cost_table(v180[1], (v181 + 2006), v178);
          cost_0((v56 + 232068), vp9_inter_mode_tree, *v175 + 1910, 0, 0);
          cost_0((v56 + 232072), vp9_inter_mode_tree, *v175 + 1913, 0, 0);
          cost_0((v56 + 232076), vp9_inter_mode_tree, *v175 + 1916, 0, 0);
          cost_0((v56 + 232080), vp9_inter_mode_tree, *v175 + 1919, 0, 0);
          cost_0((v56 + 232084), vp9_inter_mode_tree, *v175 + 1922, 0, 0);
          cost_0((v56 + 232088), vp9_inter_mode_tree, *v175 + 1925, 0, 0);
          cost_0((v56 + 232092), vp9_inter_mode_tree, *v175 + 1928, 0, 0);
        }

        return;
      }

LABEL_196:
      cost_0((v56 + 233308), vp9_partition_tree, *v55, 0, 0);
      cost_0((v56 + 233312), vp9_partition_tree, *v55 + 3, 0, 0);
      cost_0((v56 + 233316), vp9_partition_tree, *v55 + 6, 0, 0);
      cost_0((v56 + 233320), vp9_partition_tree, *v55 + 9, 0, 0);
      cost_0((v56 + 233324), vp9_partition_tree, *v55 + 12, 0, 0);
      cost_0((v56 + 233328), vp9_partition_tree, *v55 + 15, 0, 0);
      cost_0((v56 + 233332), vp9_partition_tree, *v55 + 18, 0, 0);
      cost_0((v56 + 233336), vp9_partition_tree, *v55 + 21, 0, 0);
      cost_0((v56 + 233340), vp9_partition_tree, *v55 + 24, 0, 0);
      cost_0((v56 + 233344), vp9_partition_tree, *v55 + 27, 0, 0);
      cost_0((v56 + 233348), vp9_partition_tree, *v55 + 30, 0, 0);
      cost_0((v56 + 233352), vp9_partition_tree, *v55 + 33, 0, 0);
      cost_0((v56 + 233356), vp9_partition_tree, *v55 + 36, 0, 0);
      cost_0((v56 + 233360), vp9_partition_tree, *v55 + 39, 0, 0);
      cost_0((v56 + 233364), vp9_partition_tree, *v55 + 42, 0, 0);
      cost_0((v56 + 233368), vp9_partition_tree, *v55 + 45, 0, 0);
      v19 = v187;
      if (*v57)
      {
        goto LABEL_197;
      }

      goto LABEL_199;
    }

LABEL_87:
    v63 = 0;
    v192 = v56 + 19028;
    v64 = *(v187 + 907) + 174;
    do
    {
      v65 = 0;
      v66 = 1;
      do
      {
        v67 = 0;
        v188 = v66;
        v68 = 1;
        do
        {
          v190 = v68;
          v71 = v64 + 432 * v63 + 216 * v65 + 108 * v67;
          if (&v193 == v71)
          {
            v73 = 0;
          }

          else
          {
            v72 = *(v71 + 2);
            v193 = *v71;
            v194 = v72;
            v73 = v193;
          }

          v74 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v71 + 2) - 1];
          cost_0(v74, &vp9_coef_tree, &v193, 0, 0);
          v74[83] = vp9_prob_cost[v73];
          cost_0((v74 + 72), &vp9_coef_tree, &v193, 2, 0);
          v75 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 3);
          if (&v193 == v75)
          {
            v77 = 0;
          }

          else
          {
            v76 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 5);
            v193 = *v75;
            v194 = v76;
            v77 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 5) - 1];
          cost_0((v74 + 12), &vp9_coef_tree, &v193, 0, 0);
          v74[95] = vp9_prob_cost[v77];
          cost_0((v74 + 84), &vp9_coef_tree, &v193, 2, 0);
          v78 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 6);
          if (&v193 == v78)
          {
            v80 = 0;
          }

          else
          {
            v79 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 8);
            v193 = *v78;
            v194 = v79;
            v80 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 8) - 1];
          cost_0((v74 + 24), &vp9_coef_tree, &v193, 0, 0);
          v74[107] = vp9_prob_cost[v80];
          cost_0((v74 + 96), &vp9_coef_tree, &v193, 2, 0);
          v81 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 18);
          if (&v193 == v81)
          {
            v83 = 0;
          }

          else
          {
            v82 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 20);
            v193 = *v81;
            v194 = v82;
            v83 = v193;
          }

          v84 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 20) - 1];
          cost_0((v84 + 144), &vp9_coef_tree, &v193, 0, 0);
          v84[227] = vp9_prob_cost[v83];
          cost_0((v84 + 216), &vp9_coef_tree, &v193, 2, 0);
          v85 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 21);
          if (&v193 == v85)
          {
            v87 = 0;
          }

          else
          {
            v86 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 23);
            v193 = *v85;
            v194 = v86;
            v87 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 23) - 1];
          cost_0((v84 + 156), &vp9_coef_tree, &v193, 0, 0);
          v84[239] = vp9_prob_cost[v87];
          cost_0((v84 + 228), &vp9_coef_tree, &v193, 2, 0);
          v88 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 24);
          if (&v193 == v88)
          {
            v90 = 0;
          }

          else
          {
            v89 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 26);
            v193 = *v88;
            v194 = v89;
            v90 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 26) - 1];
          cost_0((v84 + 168), &vp9_coef_tree, &v193, 0, 0);
          v84[251] = vp9_prob_cost[v90];
          cost_0((v84 + 240), &vp9_coef_tree, &v193, 2, 0);
          v91 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 27);
          if (&v193 == v91)
          {
            v93 = 0;
          }

          else
          {
            v92 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 29);
            v193 = *v91;
            v194 = v92;
            v93 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 29) - 1];
          cost_0((v84 + 180), &vp9_coef_tree, &v193, 0, 0);
          v84[263] = vp9_prob_cost[v93];
          cost_0((v84 + 252), &vp9_coef_tree, &v193, 2, 0);
          v94 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 30);
          if (&v193 == v94)
          {
            v96 = 0;
          }

          else
          {
            v95 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 32);
            v193 = *v94;
            v194 = v95;
            v96 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 32) - 1];
          cost_0((v84 + 192), &vp9_coef_tree, &v193, 0, 0);
          v84[275] = vp9_prob_cost[v96];
          cost_0((v84 + 264), &vp9_coef_tree, &v193, 2, 0);
          v97 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 33);
          if (&v193 == v97)
          {
            v99 = 0;
          }

          else
          {
            v98 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 35);
            v193 = *v97;
            v194 = v98;
            v99 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 35) - 1];
          cost_0((v84 + 204), &vp9_coef_tree, &v193, 0, 0);
          v84[287] = vp9_prob_cost[v99];
          cost_0((v84 + 276), &vp9_coef_tree, &v193, 2, 0);
          v100 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 36);
          if (&v193 == v100)
          {
            v102 = 0;
          }

          else
          {
            v101 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 38);
            v193 = *v100;
            v194 = v101;
            v102 = v193;
          }

          v103 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 38) - 1];
          cost_0((v103 + 288), &vp9_coef_tree, &v193, 0, 0);
          v103[371] = vp9_prob_cost[v102];
          cost_0((v103 + 360), &vp9_coef_tree, &v193, 2, 0);
          v104 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 39);
          if (&v193 == v104)
          {
            v106 = 0;
          }

          else
          {
            v105 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 41);
            v193 = *v104;
            v194 = v105;
            v106 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 41) - 1];
          cost_0((v103 + 300), &vp9_coef_tree, &v193, 0, 0);
          v103[383] = vp9_prob_cost[v106];
          cost_0((v103 + 372), &vp9_coef_tree, &v193, 2, 0);
          v107 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 42);
          if (&v193 == v107)
          {
            v109 = 0;
          }

          else
          {
            v108 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 44);
            v193 = *v107;
            v194 = v108;
            v109 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 44) - 1];
          cost_0((v103 + 312), &vp9_coef_tree, &v193, 0, 0);
          v103[395] = vp9_prob_cost[v109];
          cost_0((v103 + 384), &vp9_coef_tree, &v193, 2, 0);
          v110 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 45);
          if (&v193 == v110)
          {
            v112 = 0;
          }

          else
          {
            v111 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 47);
            v193 = *v110;
            v194 = v111;
            v112 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 47) - 1];
          cost_0((v103 + 324), &vp9_coef_tree, &v193, 0, 0);
          v103[407] = vp9_prob_cost[v112];
          cost_0((v103 + 396), &vp9_coef_tree, &v193, 2, 0);
          v113 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 48);
          if (&v193 == v113)
          {
            v115 = 0;
          }

          else
          {
            v114 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 50);
            v193 = *v113;
            v194 = v114;
            v115 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 50) - 1];
          cost_0((v103 + 336), &vp9_coef_tree, &v193, 0, 0);
          v103[419] = vp9_prob_cost[v115];
          cost_0((v103 + 408), &vp9_coef_tree, &v193, 2, 0);
          v116 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 51);
          if (&v193 == v116)
          {
            v118 = 0;
          }

          else
          {
            v117 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 53);
            v193 = *v116;
            v194 = v117;
            v118 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 53) - 1];
          cost_0((v103 + 348), &vp9_coef_tree, &v193, 0, 0);
          v103[431] = vp9_prob_cost[v118];
          cost_0((v103 + 420), &vp9_coef_tree, &v193, 2, 0);
          v119 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 54);
          if (&v193 == v119)
          {
            v121 = 0;
          }

          else
          {
            v120 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 56);
            v193 = *v119;
            v194 = v120;
            v121 = v193;
          }

          v122 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 56) - 1];
          cost_0((v122 + 432), &vp9_coef_tree, &v193, 0, 0);
          v122[515] = vp9_prob_cost[v121];
          cost_0((v122 + 504), &vp9_coef_tree, &v193, 2, 0);
          v123 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 57);
          if (&v193 == v123)
          {
            v125 = 0;
          }

          else
          {
            v124 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 59);
            v193 = *v123;
            v194 = v124;
            v125 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 59) - 1];
          cost_0((v122 + 444), &vp9_coef_tree, &v193, 0, 0);
          v122[527] = vp9_prob_cost[v125];
          cost_0((v122 + 516), &vp9_coef_tree, &v193, 2, 0);
          v126 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 60);
          if (&v193 == v126)
          {
            v128 = 0;
          }

          else
          {
            v127 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 62);
            v193 = *v126;
            v194 = v127;
            v128 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 62) - 1];
          cost_0((v122 + 456), &vp9_coef_tree, &v193, 0, 0);
          v122[539] = vp9_prob_cost[v128];
          cost_0((v122 + 528), &vp9_coef_tree, &v193, 2, 0);
          v129 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 63);
          if (&v193 == v129)
          {
            v131 = 0;
          }

          else
          {
            v130 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 65);
            v193 = *v129;
            v194 = v130;
            v131 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 65) - 1];
          cost_0((v122 + 468), &vp9_coef_tree, &v193, 0, 0);
          v122[551] = vp9_prob_cost[v131];
          cost_0((v122 + 540), &vp9_coef_tree, &v193, 2, 0);
          v132 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 66);
          if (&v193 == v132)
          {
            v134 = 0;
          }

          else
          {
            v133 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 68);
            v193 = *v132;
            v194 = v133;
            v134 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 68) - 1];
          cost_0((v122 + 480), &vp9_coef_tree, &v193, 0, 0);
          v122[563] = vp9_prob_cost[v134];
          cost_0((v122 + 552), &vp9_coef_tree, &v193, 2, 0);
          v135 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 69);
          if (&v193 == v135)
          {
            v137 = 0;
          }

          else
          {
            v136 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 71);
            v193 = *v135;
            v194 = v136;
            v137 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 71) - 1];
          cost_0((v122 + 492), &vp9_coef_tree, &v193, 0, 0);
          v122[575] = vp9_prob_cost[v137];
          cost_0((v122 + 564), &vp9_coef_tree, &v193, 2, 0);
          v138 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 72);
          if (&v193 == v138)
          {
            v140 = 0;
          }

          else
          {
            v139 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 74);
            v193 = *v138;
            v194 = v139;
            v140 = v193;
          }

          v141 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 74) - 1];
          cost_0((v141 + 576), &vp9_coef_tree, &v193, 0, 0);
          v141[659] = vp9_prob_cost[v140];
          cost_0((v141 + 648), &vp9_coef_tree, &v193, 2, 0);
          v142 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 75);
          if (&v193 == v142)
          {
            v144 = 0;
          }

          else
          {
            v143 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 77);
            v193 = *v142;
            v194 = v143;
            v144 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 77) - 1];
          cost_0((v141 + 588), &vp9_coef_tree, &v193, 0, 0);
          v141[671] = vp9_prob_cost[v144];
          cost_0((v141 + 660), &vp9_coef_tree, &v193, 2, 0);
          v145 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 78);
          if (&v193 == v145)
          {
            v147 = 0;
          }

          else
          {
            v146 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 80);
            v193 = *v145;
            v194 = v146;
            v147 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 80) - 1];
          cost_0((v141 + 600), &vp9_coef_tree, &v193, 0, 0);
          v141[683] = vp9_prob_cost[v147];
          cost_0((v141 + 672), &vp9_coef_tree, &v193, 2, 0);
          v148 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 81);
          if (&v193 == v148)
          {
            v150 = 0;
          }

          else
          {
            v149 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 83);
            v193 = *v148;
            v194 = v149;
            v150 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 83) - 1];
          cost_0((v141 + 612), &vp9_coef_tree, &v193, 0, 0);
          v141[695] = vp9_prob_cost[v150];
          cost_0((v141 + 684), &vp9_coef_tree, &v193, 2, 0);
          v151 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 84);
          if (&v193 == v151)
          {
            v153 = 0;
          }

          else
          {
            v152 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 86);
            v193 = *v151;
            v194 = v152;
            v153 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 86) - 1];
          cost_0((v141 + 624), &vp9_coef_tree, &v193, 0, 0);
          v141[707] = vp9_prob_cost[v153];
          cost_0((v141 + 696), &vp9_coef_tree, &v193, 2, 0);
          v154 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 87);
          if (&v193 == v154)
          {
            v156 = 0;
          }

          else
          {
            v155 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 89);
            v193 = *v154;
            v194 = v155;
            v156 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 89) - 1];
          cost_0((v141 + 636), &vp9_coef_tree, &v193, 0, 0);
          v141[719] = vp9_prob_cost[v156];
          cost_0((v141 + 708), &vp9_coef_tree, &v193, 2, 0);
          v157 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 90);
          if (&v193 == v157)
          {
            v159 = 0;
          }

          else
          {
            v158 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 92);
            v193 = *v157;
            v194 = v158;
            v159 = v193;
          }

          v160 = &v192[3456 * v63 + 1728 * v65 + 864 * v67];
          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 92) - 1];
          cost_0((v160 + 720), &vp9_coef_tree, &v193, 0, 0);
          v160[803] = vp9_prob_cost[v159];
          cost_0((v160 + 792), &vp9_coef_tree, &v193, 2, 0);
          v161 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 93);
          if (&v193 == v161)
          {
            v163 = 0;
          }

          else
          {
            v162 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 95);
            v193 = *v161;
            v194 = v162;
            v163 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 95) - 1];
          cost_0((v160 + 732), &vp9_coef_tree, &v193, 0, 0);
          v160[815] = vp9_prob_cost[v163];
          cost_0((v160 + 804), &vp9_coef_tree, &v193, 2, 0);
          v164 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 96);
          if (&v193 == v164)
          {
            v166 = 0;
          }

          else
          {
            v165 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 98);
            v193 = *v164;
            v194 = v165;
            v166 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 98) - 1];
          cost_0((v160 + 744), &vp9_coef_tree, &v193, 0, 0);
          v160[827] = vp9_prob_cost[v166];
          cost_0((v160 + 816), &vp9_coef_tree, &v193, 2, 0);
          v167 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 99);
          if (&v193 == v167)
          {
            v169 = 0;
          }

          else
          {
            v168 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 101);
            v193 = *v167;
            v194 = v168;
            v169 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 101) - 1];
          cost_0((v160 + 756), &vp9_coef_tree, &v193, 0, 0);
          v160[839] = vp9_prob_cost[v169];
          cost_0((v160 + 828), &vp9_coef_tree, &v193, 2, 0);
          v170 = (v64 + 432 * v63 + 216 * v65 + 108 * v67 + 102);
          if (&v193 == v170)
          {
            v172 = 0;
          }

          else
          {
            v171 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 104);
            v193 = *v170;
            v194 = v171;
            v172 = v193;
          }

          v195 = vp9_pareto8_full[*(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 104) - 1];
          cost_0((v160 + 768), &vp9_coef_tree, &v193, 0, 0);
          v160[851] = vp9_prob_cost[v172];
          cost_0((v160 + 840), &vp9_coef_tree, &v193, 2, 0);
          v173 = v64 + 432 * v63 + 216 * v65 + 108 * v67 + 105;
          if (&v193 == v173)
          {
            v70 = 0;
          }

          else
          {
            v69 = *(v64 + 432 * v63 + 216 * v65 + 108 * v67 + 107);
            v193 = *v173;
            v194 = v69;
            v70 = v193;
          }

          v195 = vp9_pareto8_full[*(v173 + 2) - 1];
          cost_0((v160 + 780), &vp9_coef_tree, &v193, 0, 0);
          v160[863] = vp9_prob_cost[v70];
          cost_0((v160 + 852), &vp9_coef_tree, &v193, 2, 0);
          v68 = 0;
          v67 = 1;
        }

        while ((v190 & 1) != 0);
        v66 = 0;
        v65 = 1;
      }

      while ((v188 & 1) != 0);
      ++v63;
    }

    while (v63 != 4);
    v55 = v184;
    v56 = v185;
    v19 = v187;
    if (v183[302] != 3)
    {
      goto LABEL_196;
    }

    goto LABEL_193;
  }

  v58 = *(v187 + 907);
  *v184 = v58 + 126;
  if (v186[58] != 1)
  {
    goto LABEL_84;
  }

  v59 = v187[5];
  v60 = 18736;
  if (v59)
  {
    v60 = 18740;
  }

  v61 = &v185[v60];
  cost_0((v185 + 18731), vp9_mv_joint_tree, v58 + 1970, 0, 0);
  build_nmv_component_cost_table(*v61, (v58 + 1973), v59);
  v62 = v61[1];

  build_nmv_component_cost_table(v62, (v58 + 2006), v59);
}

uint64_t vp9_get_entropy_contexts(uint64_t result, int a2, uint64_t a3, char *__dst, _BYTE *a5)
{
  v7 = ss_size_lookup[4 * result + 2 * *(a3 + 8) + *(a3 + 12)];
  v8 = num_4x4_blocks_wide_lookup[v7];
  v9 = num_4x4_blocks_high_lookup[v7];
  v10 = *(a3 + 64);
  v11 = *(a3 + 72);
  if (!a2)
  {
    memcpy(__dst, v10, v8);

    return memcpy(a5, v11, v9);
  }

  if (a2 == 1)
  {
    v16 = 0;
    v17 = 2;
    if (v8 > 2)
    {
      v17 = num_4x4_blocks_wide_lookup[v7];
    }

    if (v8 < 0xF || (__dst - v10) < 0x20)
    {
      goto LABEL_38;
    }

    v18 = ((v17 - 1) >> 1) + 1;
    if (v8 >= 0x1F)
    {
      v19 = v18 & 0x7FFFFFFFFFFFFFF0;
      v36 = __dst + 16;
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v38 = v10;
      v39 = v18 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v40 = *v38;
        v41 = v38[1];
        v38 += 2;
        v42 = vbicq_s8(v37, vuzp1q_s8(vceqzq_s16(v40), vceqzq_s16(v41)));
        *(v36 - 16) = v42.i8[0];
        *(v36 - 14) = v42.i8[1];
        *(v36 - 12) = v42.i8[2];
        *(v36 - 10) = v42.i8[3];
        *(v36 - 8) = v42.i8[4];
        *(v36 - 6) = v42.i8[5];
        *(v36 - 4) = v42.i8[6];
        *(v36 - 2) = v42.i8[7];
        *v36 = v42.i8[8];
        v36[2] = v42.i8[9];
        v36[4] = v42.i8[10];
        v36[6] = v42.i8[11];
        v36[8] = v42.i8[12];
        v36[10] = v42.i8[13];
        v36[12] = v42.i8[14];
        v36[14] = v42.i8[15];
        v36 += 32;
        v39 -= 16;
      }

      while (v39);
      if (v18 == v19)
      {
LABEL_39:
        v43 = 0;
        v44 = 2;
        if (v9 > 2)
        {
          v44 = v9;
        }

        if (v9 < 0xF || (a5 - v11) < 0x20)
        {
          goto LABEL_54;
        }

        v45 = ((v44 - 1) >> 1) + 1;
        if (v9 >= 0x1F)
        {
          v46 = v45 & 0x7FFFFFFFFFFFFFF0;
          v53 = a5 + 16;
          v54.i64[0] = 0x101010101010101;
          v54.i64[1] = 0x101010101010101;
          v55 = v11;
          v56 = v45 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v57 = *v55;
            v58 = v55[1];
            v55 += 2;
            v59 = vbicq_s8(v54, vuzp1q_s8(vceqzq_s16(v57), vceqzq_s16(v58)));
            *(v53 - 16) = v59.i8[0];
            *(v53 - 14) = v59.i8[1];
            *(v53 - 12) = v59.i8[2];
            *(v53 - 10) = v59.i8[3];
            *(v53 - 8) = v59.i8[4];
            *(v53 - 6) = v59.i8[5];
            *(v53 - 4) = v59.i8[6];
            *(v53 - 2) = v59.i8[7];
            *v53 = v59.i8[8];
            v53[2] = v59.i8[9];
            v53[4] = v59.i8[10];
            v53[6] = v59.i8[11];
            v53[8] = v59.i8[12];
            v53[10] = v59.i8[13];
            v53[12] = v59.i8[14];
            v53[14] = v59.i8[15];
            v53 += 32;
            v56 -= 16;
          }

          while (v56);
          if (v45 == v46)
          {
            return result;
          }

          if ((v45 & 8) == 0)
          {
            v43 = 2 * v46;
            goto LABEL_54;
          }
        }

        else
        {
          v46 = 0;
        }

        v43 = 2 * (v45 & 0x7FFFFFFFFFFFFFF8);
        v47 = v46 - (v45 & 0x7FFFFFFFFFFFFFF8);
        v48 = 2 * v46;
        v49 = (v11 + 2 * v46);
        v50 = &a5[v48 + 8];
        do
        {
          v51 = *v49++;
          v52 = vand_s8(vmovn_s16(vtstq_s16(v51, v51)), 0x101010101010101);
          *(v50 - 8) = v52.i8[0];
          *(v50 - 6) = v52.i8[1];
          *(v50 - 4) = v52.i8[2];
          *(v50 - 2) = v52.i8[3];
          *v50 = v52.i8[4];
          v50[2] = v52.i8[5];
          v50[4] = v52.i8[6];
          v50[6] = v52.i8[7];
          v50 += 16;
          v47 += 8;
        }

        while (v47);
        if (v45 == (v45 & 0x7FFFFFFFFFFFFFF8))
        {
          return result;
        }

        do
        {
LABEL_54:
          a5[v43] = v11->i16[v43 / 2] != 0;
          v43 += 2;
        }

        while (v43 < v9);
        return result;
      }

      if ((v18 & 8) == 0)
      {
        v16 = 2 * v19;
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
    }

    v16 = 2 * (v18 & 0x7FFFFFFFFFFFFFF8);
    v20 = v19 - (v18 & 0x7FFFFFFFFFFFFFF8);
    v21 = 2 * v19;
    v22 = (v10 + 2 * v19);
    v23 = &__dst[v21 + 8];
    do
    {
      v24 = *v22++;
      v25 = vand_s8(vmovn_s16(vtstq_s16(v24, v24)), 0x101010101010101);
      *(v23 - 8) = v25.i8[0];
      *(v23 - 6) = v25.i8[1];
      *(v23 - 4) = v25.i8[2];
      *(v23 - 2) = v25.i8[3];
      *v23 = v25.i8[4];
      v23[2] = v25.i8[5];
      v23[4] = v25.i8[6];
      v23[6] = v25.i8[7];
      v23 += 16;
      v20 += 8;
    }

    while (v20);
    if (v18 == (v18 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_39;
    }

    do
    {
LABEL_38:
      __dst[v16] = v10->i16[v16 / 2] != 0;
      v16 += 2;
    }

    while (v16 < v8);
    goto LABEL_39;
  }

  if (a2 != 2)
  {
    v27 = 0;
    v28 = 8;
    if (v8 > 8)
    {
      v28 = v8;
    }

    if (v8 < 0x39 || (__dst - v10) < 0x80)
    {
      goto LABEL_71;
    }

    v29 = ((v28 - 1) >> 3) + 1;
    if (v8 >= 0x79)
    {
      v30 = v29 & 0x3FFFFFFFFFFFFFF0;
      v72.i64[0] = 0x101010101010101;
      v72.i64[1] = 0x101010101010101;
      v73 = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*v10), vceqzq_s64(v10[1])), vuzp1q_s32(vceqzq_s64(v10[2]), vceqzq_s64(v10[3])))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v10[4]), vceqzq_s64(v10[5])), vuzp1q_s32(vceqzq_s64(v10[6]), vceqzq_s64(v10[7]))))), v72);
      *__dst = v73.i8[0];
      __dst[8] = v73.i8[1];
      __dst[16] = v73.i8[2];
      __dst[24] = v73.i8[3];
      __dst[32] = v73.i8[4];
      __dst[40] = v73.i8[5];
      __dst[48] = v73.i8[6];
      __dst[56] = v73.i8[7];
      __dst[64] = v73.i8[8];
      __dst[72] = v73.i8[9];
      __dst[80] = v73.i8[10];
      __dst[88] = v73.i8[11];
      __dst[96] = v73.i8[12];
      __dst[104] = v73.i8[13];
      __dst[112] = v73.i8[14];
      __dst[120] = v73.i8[15];
      if ((v29 & 0x3FFFFFFFFFFFFFF0) != 0x10)
      {
        v74 = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v10[8]), vceqzq_s64(v10[9])), vuzp1q_s32(vceqzq_s64(v10[10]), vceqzq_s64(v10[11])))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v10[12]), vceqzq_s64(v10[13])), vuzp1q_s32(vceqzq_s64(v10[14]), vceqzq_s64(v10[15]))))), v72);
        __dst[128] = v74.i8[0];
        __dst[136] = v74.i8[1];
        __dst[144] = v74.i8[2];
        __dst[152] = v74.i8[3];
        __dst[160] = v74.i8[4];
        __dst[168] = v74.i8[5];
        __dst[176] = v74.i8[6];
        __dst[184] = v74.i8[7];
        __dst[192] = v74.i8[8];
        __dst[200] = v74.i8[9];
        __dst[208] = v74.i8[10];
        __dst[216] = v74.i8[11];
        __dst[224] = v74.i8[12];
        __dst[232] = v74.i8[13];
        __dst[240] = v74.i8[14];
        __dst[248] = v74.i8[15];
      }

      if (v29 == v30)
      {
LABEL_72:
        v75 = 0;
        v76 = 8;
        if (v9 > 8)
        {
          v76 = v9;
        }

        if (v9 < 0x39 || (a5 - v11) < 0x80)
        {
          goto LABEL_87;
        }

        v77 = ((v76 - 1) >> 3) + 1;
        if (v9 >= 0x79)
        {
          v78 = v77 & 0x3FFFFFFFFFFFFFF0;
          v84.i64[0] = 0x101010101010101;
          v84.i64[1] = 0x101010101010101;
          v85 = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*v11), vceqzq_s64(v11[1])), vuzp1q_s32(vceqzq_s64(v11[2]), vceqzq_s64(v11[3])))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v11[4]), vceqzq_s64(v11[5])), vuzp1q_s32(vceqzq_s64(v11[6]), vceqzq_s64(v11[7]))))), v84);
          *a5 = v85.i8[0];
          a5[8] = v85.i8[1];
          a5[16] = v85.i8[2];
          a5[24] = v85.i8[3];
          a5[32] = v85.i8[4];
          a5[40] = v85.i8[5];
          a5[48] = v85.i8[6];
          a5[56] = v85.i8[7];
          a5[64] = v85.i8[8];
          a5[72] = v85.i8[9];
          a5[80] = v85.i8[10];
          a5[88] = v85.i8[11];
          a5[96] = v85.i8[12];
          a5[104] = v85.i8[13];
          a5[112] = v85.i8[14];
          a5[120] = v85.i8[15];
          if ((v77 & 0x3FFFFFFFFFFFFFF0) != 0x10)
          {
            v86 = vandq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v11[8]), vceqzq_s64(v11[9])), vuzp1q_s32(vceqzq_s64(v11[10]), vceqzq_s64(v11[11])))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(v11[12]), vceqzq_s64(v11[13])), vuzp1q_s32(vceqzq_s64(v11[14]), vceqzq_s64(v11[15]))))), v84);
            a5[128] = v86.i8[0];
            a5[136] = v86.i8[1];
            a5[144] = v86.i8[2];
            a5[152] = v86.i8[3];
            a5[160] = v86.i8[4];
            a5[168] = v86.i8[5];
            a5[176] = v86.i8[6];
            a5[184] = v86.i8[7];
            a5[192] = v86.i8[8];
            a5[200] = v86.i8[9];
            a5[208] = v86.i8[10];
            a5[216] = v86.i8[11];
            a5[224] = v86.i8[12];
            a5[232] = v86.i8[13];
            a5[240] = v86.i8[14];
            a5[248] = v86.i8[15];
          }

          if (v77 == v78)
          {
            return result;
          }

          if ((v77 & 8) == 0)
          {
            v75 = 8 * v78;
            goto LABEL_87;
          }
        }

        else
        {
          v78 = 0;
        }

        v75 = 8 * (v77 & 0x3FFFFFFFFFFFFFF8);
        v79 = v78 - (v77 & 0x3FFFFFFFFFFFFFF8);
        v80 = 8 * v78;
        v81 = (v11 + 8 * v78);
        v82 = &a5[v80 + 32];
        do
        {
          v83 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*v81), vceqzq_s64(v81[1])), vuzp1q_s32(vceqzq_s64(v81[2]), vceqzq_s64(v81[3]))))), 0x101010101010101);
          *(v82 - 32) = v83.i8[0];
          *(v82 - 24) = v83.i8[1];
          *(v82 - 16) = v83.i8[2];
          *(v82 - 8) = v83.i8[3];
          *v82 = v83.i8[4];
          v82[8] = v83.i8[5];
          v82[16] = v83.i8[6];
          v82[24] = v83.i8[7];
          v81 += 4;
          v82 += 64;
          v79 += 8;
        }

        while (v79);
        if (v77 == (v77 & 0x3FFFFFFFFFFFFFF8))
        {
          return result;
        }

        do
        {
LABEL_87:
          a5[v75] = v11->i64[v75 / 8] != 0;
          v75 += 8;
        }

        while (v75 < v9);
        return result;
      }

      if ((v29 & 8) == 0)
      {
        v27 = 8 * v30;
        goto LABEL_71;
      }
    }

    else
    {
      v30 = 0;
    }

    v27 = 8 * (v29 & 0x3FFFFFFFFFFFFFF8);
    v31 = v30 - (v29 & 0x3FFFFFFFFFFFFFF8);
    v32 = 8 * v30;
    v33 = (v10 + 8 * v30);
    v34 = &__dst[v32 + 32];
    do
    {
      v35 = vand_s8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*v33), vceqzq_s64(v33[1])), vuzp1q_s32(vceqzq_s64(v33[2]), vceqzq_s64(v33[3]))))), 0x101010101010101);
      *(v34 - 32) = v35.i8[0];
      *(v34 - 24) = v35.i8[1];
      *(v34 - 16) = v35.i8[2];
      *(v34 - 8) = v35.i8[3];
      *v34 = v35.i8[4];
      v34[8] = v35.i8[5];
      v34[16] = v35.i8[6];
      v34[24] = v35.i8[7];
      v33 += 4;
      v34 += 64;
      v31 += 8;
    }

    while (v31);
    if (v29 == (v29 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_72;
    }

    do
    {
LABEL_71:
      __dst[v27] = v10->i64[v27 / 8] != 0;
      v27 += 8;
    }

    while (v27 < v8);
    goto LABEL_72;
  }

  v12 = 0;
  v13 = 4;
  if (v8 > 4)
  {
    v13 = v8;
  }

  if (v8 >= 0xD && (__dst - v10) >= 0x40)
  {
    v14 = ((v13 - 1) >> 2) + 1;
    if (v8 < 0x3D)
    {
      v15 = 0;
      goto LABEL_62;
    }

    v15 = v14 & 0x7FFFFFFFFFFFFFF0;
    v60.i64[0] = 0x101010101010101;
    v60.i64[1] = 0x101010101010101;
    v61 = vbicq_s8(v60, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(*v10), vceqzq_s32(v10[1])), vuzp1q_s16(vceqzq_s32(v10[2]), vceqzq_s32(v10[3]))));
    *__dst = v61.i8[0];
    __dst[4] = v61.i8[1];
    __dst[8] = v61.i8[2];
    __dst[12] = v61.i8[3];
    __dst[16] = v61.i8[4];
    __dst[20] = v61.i8[5];
    __dst[24] = v61.i8[6];
    __dst[28] = v61.i8[7];
    __dst[32] = v61.i8[8];
    __dst[36] = v61.i8[9];
    __dst[40] = v61.i8[10];
    __dst[44] = v61.i8[11];
    __dst[48] = v61.i8[12];
    __dst[52] = v61.i8[13];
    __dst[56] = v61.i8[14];
    __dst[60] = v61.i8[15];
    if ((v14 & 0x7FFFFFFFFFFFFFF0) != 0x10)
    {
      v62 = vbicq_s8(v60, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v10[4]), vceqzq_s32(v10[5])), vuzp1q_s16(vceqzq_s32(v10[6]), vceqzq_s32(v10[7]))));
      __dst[64] = v62.i8[0];
      __dst[68] = v62.i8[1];
      __dst[72] = v62.i8[2];
      __dst[76] = v62.i8[3];
      __dst[80] = v62.i8[4];
      __dst[84] = v62.i8[5];
      __dst[88] = v62.i8[6];
      __dst[92] = v62.i8[7];
      __dst[96] = v62.i8[8];
      __dst[100] = v62.i8[9];
      __dst[104] = v62.i8[10];
      __dst[108] = v62.i8[11];
      __dst[112] = v62.i8[12];
      __dst[116] = v62.i8[13];
      __dst[120] = v62.i8[14];
      __dst[124] = v62.i8[15];
      if (v15 != 32)
      {
        v63.i64[0] = 0x101010101010101;
        v63.i64[1] = 0x101010101010101;
        v64 = vbicq_s8(v63, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v10[8]), vceqzq_s32(v10[9])), vuzp1q_s16(vceqzq_s32(v10[10]), vceqzq_s32(v10[11]))));
        __dst[128] = v64.i8[0];
        __dst[132] = v64.i8[1];
        __dst[136] = v64.i8[2];
        __dst[140] = v64.i8[3];
        __dst[144] = v64.i8[4];
        __dst[148] = v64.i8[5];
        __dst[152] = v64.i8[6];
        __dst[156] = v64.i8[7];
        __dst[160] = v64.i8[8];
        __dst[164] = v64.i8[9];
        __dst[168] = v64.i8[10];
        __dst[172] = v64.i8[11];
        __dst[176] = v64.i8[12];
        __dst[180] = v64.i8[13];
        __dst[184] = v64.i8[14];
        __dst[188] = v64.i8[15];
        if (v15 != 48)
        {
          v65 = vbicq_s8(v63, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v10[12]), vceqzq_s32(v10[13])), vuzp1q_s16(vceqzq_s32(v10[14]), vceqzq_s32(v10[15]))));
          __dst[192] = v65.i8[0];
          __dst[196] = v65.i8[1];
          __dst[200] = v65.i8[2];
          __dst[204] = v65.i8[3];
          __dst[208] = v65.i8[4];
          __dst[212] = v65.i8[5];
          __dst[216] = v65.i8[6];
          __dst[220] = v65.i8[7];
          __dst[224] = v65.i8[8];
          __dst[228] = v65.i8[9];
          __dst[232] = v65.i8[10];
          __dst[236] = v65.i8[11];
          __dst[240] = v65.i8[12];
          __dst[244] = v65.i8[13];
          __dst[248] = v65.i8[14];
          __dst[252] = v65.i8[15];
        }
      }
    }

    if (v14 == v15)
    {
      goto LABEL_91;
    }

    if ((v14 & 0xC) != 0)
    {
LABEL_62:
      v12 = 4 * (v14 & 0x7FFFFFFFFFFFFFFCLL);
      v66 = v15 - (v14 & 0x7FFFFFFFFFFFFFFCLL);
      v67 = 4 * v15;
      v68 = &__dst[4 * v15 + 8];
      v69 = &v10->i8[v67];
      do
      {
        v70 = *v69++;
        v71 = vand_s8(vmovn_s32(vtstq_s32(v70, v70)), 0x1000100010001);
        *(v68 - 8) = v71.i8[0];
        *(v68 - 4) = v71.i8[2];
        *v68 = v71.i8[4];
        v68[4] = v71.i8[6];
        v68 += 16;
        v66 += 4;
      }

      while (v66);
      if (v14 == (v14 & 0x7FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v12 = 4 * v15;
  }

  do
  {
LABEL_90:
    __dst[v12] = v10->i32[v12 / 4] != 0;
    v12 += 4;
  }

  while (v12 < v8);
LABEL_91:
  v87 = 0;
  v88 = 4;
  if (v9 > 4)
  {
    v88 = v9;
  }

  if (v9 < 0xD || (a5 - v11) < 0x40)
  {
    goto LABEL_108;
  }

  v89 = ((v88 - 1) >> 2) + 1;
  if (v9 < 0x3D)
  {
    v90 = 0;
    goto LABEL_103;
  }

  v90 = v89 & 0x7FFFFFFFFFFFFFF0;
  v91.i64[0] = 0x101010101010101;
  v91.i64[1] = 0x101010101010101;
  v92 = vbicq_s8(v91, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(*v11), vceqzq_s32(v11[1])), vuzp1q_s16(vceqzq_s32(v11[2]), vceqzq_s32(v11[3]))));
  *a5 = v92.i8[0];
  a5[4] = v92.i8[1];
  a5[8] = v92.i8[2];
  a5[12] = v92.i8[3];
  a5[16] = v92.i8[4];
  a5[20] = v92.i8[5];
  a5[24] = v92.i8[6];
  a5[28] = v92.i8[7];
  a5[32] = v92.i8[8];
  a5[36] = v92.i8[9];
  a5[40] = v92.i8[10];
  a5[44] = v92.i8[11];
  a5[48] = v92.i8[12];
  a5[52] = v92.i8[13];
  a5[56] = v92.i8[14];
  a5[60] = v92.i8[15];
  if ((v89 & 0x7FFFFFFFFFFFFFF0) != 0x10)
  {
    v93 = vbicq_s8(v91, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v11[4]), vceqzq_s32(v11[5])), vuzp1q_s16(vceqzq_s32(v11[6]), vceqzq_s32(v11[7]))));
    a5[64] = v93.i8[0];
    a5[68] = v93.i8[1];
    a5[72] = v93.i8[2];
    a5[76] = v93.i8[3];
    a5[80] = v93.i8[4];
    a5[84] = v93.i8[5];
    a5[88] = v93.i8[6];
    a5[92] = v93.i8[7];
    a5[96] = v93.i8[8];
    a5[100] = v93.i8[9];
    a5[104] = v93.i8[10];
    a5[108] = v93.i8[11];
    a5[112] = v93.i8[12];
    a5[116] = v93.i8[13];
    a5[120] = v93.i8[14];
    a5[124] = v93.i8[15];
    if (v90 != 32)
    {
      v94.i64[0] = 0x101010101010101;
      v94.i64[1] = 0x101010101010101;
      v95 = vbicq_s8(v94, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v11[8]), vceqzq_s32(v11[9])), vuzp1q_s16(vceqzq_s32(v11[10]), vceqzq_s32(v11[11]))));
      a5[128] = v95.i8[0];
      a5[132] = v95.i8[1];
      a5[136] = v95.i8[2];
      a5[140] = v95.i8[3];
      a5[144] = v95.i8[4];
      a5[148] = v95.i8[5];
      a5[152] = v95.i8[6];
      a5[156] = v95.i8[7];
      a5[160] = v95.i8[8];
      a5[164] = v95.i8[9];
      a5[168] = v95.i8[10];
      a5[172] = v95.i8[11];
      a5[176] = v95.i8[12];
      a5[180] = v95.i8[13];
      a5[184] = v95.i8[14];
      a5[188] = v95.i8[15];
      if (v90 != 48)
      {
        v96 = vbicq_s8(v94, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(v11[12]), vceqzq_s32(v11[13])), vuzp1q_s16(vceqzq_s32(v11[14]), vceqzq_s32(v11[15]))));
        a5[192] = v96.i8[0];
        a5[196] = v96.i8[1];
        a5[200] = v96.i8[2];
        a5[204] = v96.i8[3];
        a5[208] = v96.i8[4];
        a5[212] = v96.i8[5];
        a5[216] = v96.i8[6];
        a5[220] = v96.i8[7];
        a5[224] = v96.i8[8];
        a5[228] = v96.i8[9];
        a5[232] = v96.i8[10];
        a5[236] = v96.i8[11];
        a5[240] = v96.i8[12];
        a5[244] = v96.i8[13];
        a5[248] = v96.i8[14];
        a5[252] = v96.i8[15];
      }
    }
  }

  if (v89 != v90)
  {
    if ((v89 & 0xC) == 0)
    {
      v87 = 4 * v90;
      goto LABEL_108;
    }

LABEL_103:
    v87 = 4 * (v89 & 0x7FFFFFFFFFFFFFFCLL);
    v97 = v90 - (v89 & 0x7FFFFFFFFFFFFFFCLL);
    v98 = 4 * v90;
    v99 = &a5[4 * v90 + 8];
    v100 = &v11->i8[v98];
    do
    {
      v101 = *v100++;
      v102 = vand_s8(vmovn_s32(vtstq_s32(v101, v101)), 0x1000100010001);
      *(v99 - 8) = v102.i8[0];
      *(v99 - 4) = v102.i8[2];
      *v99 = v102.i8[4];
      v99[4] = v102.i8[6];
      v99 += 16;
      v97 += 4;
    }

    while (v97);
    if (v89 == (v89 & 0x7FFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_108:
      a5[v87] = v11->i32[v87 / 4] != 0;
      v87 += 4;
    }

    while (v87 < v9);
  }

  return result;
}

uint64_t vp9_mv_pred(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  LODWORD(v7) = a5;
  v9 = *(a2 + 25653);
  v10 = *(*(a2 + 25568) + 8 * a5);
  v11 = *(a2 + 8216);
  v12 = *(a2 + 4 * a5 + 82336);
  v13 = a1 + (a6 << 6);
  if (v10.u16[0] == 0x7FFF || v10.u16[1] == 0x7FFF)
  {
    v14 = 0;
    result = 0;
    v16 = 0x7FFFFFFF;
    if (v10.u16[2] == 0x7FFF)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = v10.i16[0];
    v18 = v10.i16[1];
    v19 = v17 + ((v17 & 0x8000) == 0) + 3;
    v20 = v18 + ((v18 & 0x8000) == 0) + 3;
    if (v10.i16[0] < 0)
    {
      v17 = -v10.i16[0];
    }

    if (v10.i16[1] < 0)
    {
      v18 = -v10.i16[1];
    }

    if (v17 <= v18)
    {
      v17 = v18;
    }

    v50 = v17 >> 3;
    v22 = v19 < 8 && v20 < 8;
    v53 = v22;
    v23 = a3;
    v24 = v12;
    v25 = a4;
    v26 = a1 + (a6 << 6);
    v51 = v10;
    v27 = (*(v13 + 740472))(v11, *(a2 + 8224), a3 + (v19 >> 3) * a4 + (v20 >> 3));
    v10 = v51;
    v12 = v24;
    v13 = v26;
    v14 = v50;
    a3 = v23;
    a4 = v25;
    v16 = v27;
    result = v53;
    if (v51.u16[2] == 0x7FFF)
    {
LABEL_19:
      v28 = 0;
      v7 = v7;
      if (v9 <= a6)
      {
        goto LABEL_76;
      }

      goto LABEL_20;
    }
  }

  if ((v10.u16[3] == 0x7FFF) | vceq_s32(v10, vdup_lane_s32(v10, 1)).u32[0] & 1)
  {
    goto LABEL_19;
  }

  v35 = v10.i16[2];
  v36 = v10.i16[3];
  v37 = v35 + ((v35 & 0x8000) == 0) + 3;
  v38 = v36 + ((v36 & 0x8000) == 0) + 3;
  if (v10.i16[2] >= 0)
  {
    v39 = v10.i16[2];
  }

  else
  {
    v39 = -v10.i16[2];
  }

  if (v10.i16[3] >= 0)
  {
    v40 = v10.i16[3];
  }

  else
  {
    v40 = -v10.i16[3];
  }

  if (v39 <= v40)
  {
    v39 = v40;
  }

  if (v10.i16[2] < 0)
  {
    v35 = -v10.i16[2];
  }

  if (v10.i16[3] < 0)
  {
    v36 = -v10.i16[3];
  }

  if (v35 <= v36)
  {
    v35 = v36;
  }

  v41 = v35 >> 3;
  if (v14 <= (v39 >> 3))
  {
    v14 = v41;
  }

  v43 = v37 < 8 && v38 < 8;
  if (v43 && result != 0)
  {
    v28 = 0;
    result = 1;
    v7 = v7;
    if (v9 <= a6)
    {
      goto LABEL_76;
    }

    goto LABEL_20;
  }

  v54 = result | v43;
  v45 = a3;
  v52 = v12;
  v46 = a4;
  v47 = v13;
  v48 = (*(v13 + 740472))(v11, *(a2 + 8224), a3 + (v38 >> 3) + (v37 >> 3) * a4);
  v12 = v52;
  v13 = v47;
  a3 = v45;
  a4 = v46;
  v28 = v48 < v16;
  if (v48 < v16)
  {
    v16 = v48;
  }

  result = v54;
  v7 = v7;
  if (v9 > a6)
  {
LABEL_20:
    if (v12 != 0x7FFF && HIWORD(v12) != 0x7FFF)
    {
      v29 = v12;
      v30 = v12 >> 16;
      v31 = v12 + ((v12 & 0x8000) == 0) + 3;
      if ((v12 & 0x8000u) == 0)
      {
        v32 = v12;
      }

      else
      {
        v32 = -v12;
      }

      if (v30 >= 0)
      {
        v33 = v12 >> 16;
      }

      else
      {
        v33 = -v30;
      }

      if (v32 <= v33)
      {
        v32 = v33;
      }

      if (v14 <= (v32 >> 3))
      {
        if ((v12 & 0x8000u) != 0)
        {
          v29 = -v12;
        }

        if (v30 < 0)
        {
          v30 = -v30;
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        v14 = v30 >> 3;
      }

      v34 = (v12 >> 16) + (v12 >= 0) + 3;
      if (v31 > 7 || v34 > 7 || !result)
      {
        result = (*(v13 + 740472))(v11, *(a2 + 8224), a3 + (v34 >> 3) + (v31 >> 3) * a4);
        if (result < v16)
        {
          v16 = result;
          v28 = 2;
        }
      }
    }
  }

LABEL_76:
  v49 = (a2 + 4 * v7);
  v49[6414] = v28;
  v49[6418] = v14;
  v49[6427] = v16;
  return result;
}

uint64_t vp9_setup_pred_block(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  v10 = *(a3 + 56);
  v11 = *(a3 + 64);
  *a2 = v10;
  v12 = *(a3 + 16);
  *(a2 + 8) = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a3 + 72);
  v13 = *(a3 + 36);
  *(a2 + 40) = v13;
  v24 = 8 * a5;
  v25 = 8 * a4;
  v14 = ((8 * a5) >> *(result + 8));
  v15 = ((8 * a4) >> *(result + 12));
  *(a2 + 24) = v13;
  if (a6)
  {
    LODWORD(v14) = (*(a6 + 16))(v14, a6);
    result = (*(a6 + 24))(v15, a6);
    LODWORD(v15) = result;
    v11 = *(a2 + 16);
    v13 = *(a2 + 24);
  }

  *a2 = v10 + v12 * v15 + v14;
  *(a2 + 8) = v12;
  v17 = (v24 >> v9[36]);
  v18 = (v25 >> v9[37]);
  if (a7)
  {
    LODWORD(v17) = (*(a7 + 16))(v17, a7);
    result = (*(a7 + 24))(v18, a7);
    LODWORD(v18) = result;
  }

  *(a2 + 16) = v11 + v18 * v13 + v17;
  *(a2 + 24) = v13;
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = v9[71];
  v22 = (v24 >> v9[70]);
  v23 = (v25 >> v21);
  if (a7)
  {
    LODWORD(v22) = (*(a7 + 16))(v22, a7);
    result = (*(a7 + 24))(v23, a7);
    LODWORD(v23) = result;
  }

  *(a2 + 32) = v19 + v20 * v23 + v22;
  *(a2 + 40) = v20;
  return result;
}

uint64_t vp9_get_switchable_rate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 456);
  if (v2)
  {
    v3 = *(v2 + 7);
    v4 = *(a2 + 464);
    if (v4)
    {
LABEL_3:
      v5 = *(v4 + 7);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 3;
    v4 = *(a2 + 464);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 3;
LABEL_6:
  if (v5 == 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 3;
  }

  if (v3 == 3)
  {
    v6 = v5;
  }

  if (v3 != v5)
  {
    v3 = v6;
  }

  return *(a1 + 12 * v3 + 4 * *(**(a2 + 448) + 7) + 933184);
}

int64x2_t vp9_rd_pick_intra_mode_sb(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v536 = *MEMORY[0x277D85DE8];
  v7 = a1 + 739676;
  v377 = (a1 + 172972);
  v8 = (a2 + 24920);
  v522 = (a2 + 24912);
  v492 = (a2 + 82216);
  *(a2 + 82216) = 0;
  *(a5 + 696) = 0;
  *(**(a2 + 25360) + 8) = 0;
  *(**(a2 + 25360) + 9) = -1;
  v9 = **(a2 + 25360);
  v9[7] = 3;
  v10 = *(a2 + 25376);
  v11 = *(a2 + 25368);
  v521 = (a2 + 24920);
  v507 = a1 + 739676;
  v411 = v9;
  if (a4 < 3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v381 = 0;
    v370 = 0;
    v375 = 0;
    v374 = 0;
    v17 = v9 + 44;
    v18 = num_4x4_blocks_wide_lookup[*v9];
    v19 = num_4x4_blocks_high_lookup[*v9];
    v413 = v6 + 928232;
    v353 = v6 + 929184;
    v404 = 4 * v18;
    v20 = v9 + 20;
    v363 = *v9 & 0xFD;
    v364 = *v9;
    v350 = v10;
    v343 = v10 + 1;
    v344 = v10 + 20;
    v341 = v11 + 1;
    v342 = v11 + 20;
    v357 = (v19 - 1) & 0xFFFFFFFFFFFFFFFELL;
    v358 = v19 - 1;
    v352 = (v19 - 1) | 1;
    v340 = 2 * v19;
    v339 = 8 * (v340 + v19);
    v361 = 4 * (2 * v18 + v18);
    v362 = 2 * v18;
    v21 = 0;
    v355 = (v18 - 1) & 0xFFFFFFFFFFFFFFFELL;
    v356 = v18 - 1;
    v351 = (v18 - 1) | 1;
    v354 = 4 * v19;
    v338 = v19 << 7;
    v360 = v18 << 6;
    v430 = v19;
    v337 = 8 * v19;
    __n = v18;
    v359 = 4 * v18;
    v22 = v9 + 68;
    v23 = 20;
    v368 = v9 + 20;
    v398 = v11;
    v393 = 8 * v18;
    while (1)
    {
      v365 = 2 * v16;
      v378 = v17;
      v24 = v20;
      v345 = v23;
      v346 = v22;
      v380 = v22;
      v347 = v21;
      v409 = v21;
      v25 = 0;
      v408 = v13;
      v407 = v14;
      v406 = v23;
      v405 = v15;
      v402 = v14;
      v403 = v13;
      v400 = v17;
      v401 = v15;
      v431 = v16;
      v399 = v20;
      do
      {
        v26 = v25 + v365;
        v27 = v25;
        v369 = v25 + v365;
        if (!*v377)
        {
          if (v26 > 1)
          {
            v28 = v368[12 * v26 - 24];
            if ((v26 & 0xFFFFFFFD) != 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            if (!v350 || v350[8] > 0)
            {
              v28 = 0;
              if ((v26 & 0xFFFFFFFD) == 0)
              {
                goto LABEL_13;
              }

LABEL_17:
              v29 = v368[12 * v26 - 12];
LABEL_18:
              v413 = v353 + 400 * v28 + 40 * v29;
              goto LABEL_19;
            }

            v203 = &v344[12 * (v25 | 2)];
            if (*v350 >= 3u)
            {
              v203 = v343;
            }

            v28 = *v203;
            if ((v26 & 0xFFFFFFFD) != 0)
            {
              goto LABEL_17;
            }
          }

LABEL_13:
          if (v11 && v11[8] <= 0)
          {
            v204 = v341;
            if (*v11 < 3u)
            {
              v204 = &v342[12 * (v26 & 2 | 1)];
            }

            v29 = *v204;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_18;
        }

LABEL_19:
        v410 = v24;
        v30 = *(a2 + 24984);
        v31 = *(a2 + 8224);
        v32 = v8[4];
        v33 = *(a2 + 8216);
        v34 = *(a2 + 24928);
        v367 = *(a2 + 24976);
        __memcpy_chk();
        v366 = v30;
        __memcpy_chk();
        *(**(a2 + 25360) + 2) = 0;
        v396 = 4 * v31;
        v397 = 4 * v32;
        v379 = a6 - v381;
        v509 = v32;
        v392 = v34;
        v495 = v31;
        *v498 = v27;
        v36 = 0;
        v37 = 0;
        if ((*(*(a2 + 25440) + 152) & 8) != 0)
        {
          v47 = 4 * (v27 + v431 * v31);
          v388 = v34 + v47;
          v391 = (2 * (v34 + v47));
          v387 = v33 + v47;
          v386 = 2 * (v33 + v47);
          v383 = v31;
          v384 = v32;
          v448 = 2 * v32;
          v373 = 0x7FFFFFFFFFFFFFFFLL;
          v372 = 0x7FFFFFFF;
          v371 = 0x7FFFFFFF;
          v504 = a6 - v381;
          v41 = v402;
          v40 = v403;
          v43 = v400;
          v42 = v401;
          v48 = v393;
          v11 = v398;
          v44 = v399;
          v45 = v410;
          v8 = v521;
          v6 = a1;
          v46 = v411;
          while (2)
          {
            if (((*(v7 + 164) >> v37) & 1) == 0)
            {
              goto LABEL_90;
            }

            v105 = v37;
            if ((*(v7 + 156) & 0x10) == 0)
            {
              v106 = v431;
              goto LABEL_94;
            }

            v106 = v431;
            if (v37 == 8)
            {
              if (((v36 - 1) & 0xFD) != 0)
              {
                goto LABEL_89;
              }

              v105 = 8;
            }

            else if (v37 == 5)
            {
              v105 = 5;
              if (v36 != 1 && v36 != 4)
              {
LABEL_88:
                v8 = v521;
LABEL_89:
                v48 = v393;
                goto LABEL_90;
              }
            }

            else
            {
              if ((v36 - 4) <= 0xFDu && v37 == 7)
              {
                goto LABEL_89;
              }

              if (v37 == 6)
              {
                if (((v36 - 2) & 0xFD) != 0)
                {
                  goto LABEL_88;
                }

                v105 = 6;
              }
            }

LABEL_94:
            v385 = *(v413 + 4 * v37);
            v439 = v105;
            v395 = v37;
            v429 = v36;
            __memcpy_chk();
            __memcpy_chk();
            v107 = 0;
            v108 = 0;
            v452 = 0;
            v109 = v409;
            v444 = v408;
            v110 = v407;
            v111 = v406;
            v112 = v405;
            v114 = v386;
            v113 = v387;
            v116 = v388;
            v115 = v391;
            v117 = v509;
            v118 = v495;
LABEL_95:
            v443 = v112;
            v119 = 0;
            v120 = 0;
            v454 = v107;
            v441 = v107 + v106;
            v427 = v109;
            v425 = v110;
            v121 = v110;
            v423 = v111;
            v122 = v111;
            v421 = v113;
            v419 = v114;
            v123 = v114;
            v417 = v115;
            v415 = v116;
            v124 = v116;
LABEL_99:
            *v513 = v119;
            v517 = v121;
            v488 = v108;
            v130 = v444 + v120;
            v131 = *(a2 + 8200);
            v476 = *(a2 + 0x2000);
            v480 = *(a2 + 24912);
            v484 = *(a2 + 8208);
            v132 = v115;
            *(**(a2 + 25360) + v122) = v439;
            v133 = (a2 + 2 * (4 * (v109 & 0x3FFFFFF8 | (v444 + v120) & 1)));
            v468 = v113;
            if (*v492)
            {
              v134 = v113;
            }

            else
            {
              v134 = v124;
            }

            if (*v492)
            {
              v135 = v118;
            }

            else
            {
              v135 = v117;
            }

            v461 = v124;
            vp9_predict_intra_block(v522, 1, 0, v439, v134, v135, v124, v117, v498[0] + v120, v441, 0);
            *v133 = vsub_s16(*v123, *v132);
            v464 = v132;
            v472 = v123;
            v136 = (v123 + 2 * v118);
            v133[2] = vsub_s16(*v136, *(v132 + v448));
            v137 = (v136 + 2 * v118);
            v133[4] = vsub_s16(*v137, *(v132 + v448 + v448));
            *v138.i8 = *(v132 + v448 + v448 + v448);
            *v139.i8 = vsub_s16(*(v137 + 2 * v118), *v138.i8);
            v133[6] = *v139.i8;
            v457 = v109;
            if (v521[155])
            {
              if (v524[v454])
              {
                v140 = (__src[v120] != 0) + 1;
              }

              else
              {
                v140 = __src[v120] != 0;
              }

              vp9_fwht4x4_c(v133, (v131 + v121), 8);
              vpx_highbd_quantize_b_neon((v131 + v121), 16, a2, (v476 + v121), (v480 + v121), *(a2 + 25032), (v484 + v443 + *v513), &vp9_default_scan_orders);
              v108 = cost_coeffs(a2, 0, v130, 0, v140, &default_scan_4x4, &default_scan_4x4_neighbors, *(v507 + 320)) + v488;
              v141 = *(a2 + 8208) + v443;
              v142 = *(v141 + 2 * v120) != 0;
              v524[v454] = v142;
              __src[v120] = v142;
              v8 = v521;
              if ((v452 << v521[178]) + ((v521[179] * v108 + 256) >> 9) >= v504)
              {
                goto LABEL_140;
              }

              v143 = *v522;
              v144 = v521[154];
              v145 = v517;
              v146 = v509;
              if (*(v141 + 2 * v120) >= 2u)
              {
                vpx_highbd_iwht4x4_16_add_c((v143 + v517), v464, v509, v144);
              }

              else
              {
                vpx_highbd_iwht4x4_1_add_c((v143 + v517), v464, v509, v144);
              }

              v125 = v464;
              v118 = v495;
              v126 = *v513;
              v127 = v457;
              v128 = v468;
              v129 = v461;
LABEL_98:
              ++v120;
              v124 = v129 + 4;
              v115 = (v125 + 4);
              ++v123;
              v113 = v128 + 4;
              v122 += 12;
              v119 = v126 + 2;
              v121 = v145 + 64;
              v109 = v127 + 4;
              v117 = v146;
              if (__n == v120)
              {
                v107 = v454 + 1;
                v116 = v415 + v397;
                v115 = &v417[v384];
                v114 = &v419[v383];
                v113 = v421 + v396;
                v112 = v443 + 4;
                v110 = v425 + 128;
                v444 += 2;
                v109 = v427 + 8;
                v111 = v423 + 24;
                v106 = v431;
                if (v454 + 1 == v430)
                {
                  v8 = v521;
                  v184 = (v452 << v521[178]) + ((v521[179] * (v385 + v108) + 256) >> 9);
                  v6 = a1;
                  v7 = v507;
                  v46 = v411;
                  v11 = v398;
                  v44 = v399;
                  v41 = v402;
                  v40 = v403;
                  v43 = v400;
                  v42 = v401;
                  v34 = v392;
                  v48 = v393;
                  v45 = v410;
                  v36 = v429;
                  v37 = v395;
                  if (v184 < v504)
                  {
                    v518 = v385 + v108;
                    v489 = v108;
                    memcpy((v367 + *v498), __src, __n);
                    memcpy(&v431[v366], v524, v430);
                    p_dst = &__dst;
                    v186 = v391;
                    v187 = v354;
                    do
                    {
                      memcpy(p_dst, v186, v393);
                      v186 = (v186 + v448);
                      p_dst += 2;
                      --v187;
                    }

                    while (v187);
                    v36 = v439;
                    v372 = v518;
                    v371 = v489;
                    v373 = v452;
                    v504 = v184;
                    v11 = v398;
                    v44 = v399;
                    v41 = v402;
                    v40 = v403;
                    v43 = v400;
                    v42 = v401;
                    v45 = v410;
LABEL_141:
                    v34 = v392;
                    v37 = v395;
                  }

LABEL_90:
                  if (++v37 != 10)
                  {
                    continue;
                  }

                  v99 = a6 - v381;
                  if (v504 < v379)
                  {
                    v100 = v431;
                    if (!*v492)
                    {
                      v198 = v36;
                      v199 = v48;
                      v200 = (2 * (v34 + 4 * (v498[0] + v431 * v495)));
                      v201 = &__dst;
                      v202 = v354;
                      do
                      {
                        memcpy(v200, v201, v199);
                        v201 += 2;
                        v200 += v448;
                        --v202;
                      }

                      while (v202);
                      v11 = v398;
                      v44 = v399;
                      v41 = v402;
                      v40 = v403;
                      v43 = v400;
                      v42 = v401;
                      v100 = v431;
                      v45 = v410;
                      LOBYTE(v36) = v198;
                      if (v504 >= v379)
                      {
                        goto LABEL_352;
                      }

                      goto LABEL_159;
                    }

LABEL_156:
                    if (v504 < v379)
                    {
                      goto LABEL_159;
                    }

LABEL_352:
                    *a3 = 0x7FFFFFFF;
                    return result;
                  }

LABEL_158:
                  v100 = v431;
                  if (v504 < v99)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_352;
                }

                goto LABEL_95;
              }

              goto LABEL_99;
            }

            break;
          }

          v435 = (v132 + v448);
          *&v525[0] = 0;
          v147 = **(a2 + 25360);
          if (v147[8] <= 0)
          {
            v149 = v147 + 1;
            v150 = *v147;
            v151 = &v147[v122];
            if (v150 >= 3)
            {
              v151 = v149;
            }

            v148 = intra_mode_to_tx_type_lookup[*v151];
          }

          else
          {
            v148 = 0;
          }

          v433 = (v132 + v448 + v448);
          v152 = __src[v120] != 0;
          if (v524[v454])
          {
            ++v152;
          }

          v446 = v152;
          v153 = (v131 + v121);
          if (v148)
          {
            vp9_highbd_fht4x4_neon(v133, v153, 8, v148, v139, v138);
          }

          else
          {
            vpx_highbd_fdct4x4_neon(v133, v153, 8, v139, v138);
          }

          v437 = v148;
          vpx_highbd_quantize_b_neon((v131 + v121), 16, a2, (v476 + v121), (v480 + v121), *(a2 + 25032), (v484 + v443 + *v513), (&vp9_scan_orders + 3 * v148));
          v154 = cost_coeffs(a2, 0, v130, 0, v446, *(&vp9_scan_orders + 3 * v148), *(&vp9_scan_orders + 3 * v148 + 2), *(v507 + 320));
          v155 = (*(a2 + 24912) + v121);
          v8 = v521;
          v156 = v521[154];
          if (v156 == 8)
          {
            v157 = vp9_block_error(v131 + v517, v155, 16, v525);
          }

          else
          {
            v158 = *(v131 + v517);
            v159 = *(v131 + v517 + 16);
            v160 = vabdq_s32(v158, *v155);
            v161 = vmlal_high_u32(vmull_u32(*v160.i8, *v160.i8), v160, v160);
            v162 = vmlal_high_s32(vmull_s32(*v158.i8, *v158.i8), v158, v158);
            v163 = vabdq_s32(v159, v155[1]);
            v164 = vmlal_high_u32(vmlal_u32(v161, *v163.i8, *v163.i8), v163, v163);
            v165 = vmlal_high_s32(vmlal_s32(v162, *v159.i8, *v159.i8), v159, v159);
            v166 = *(v131 + v517 + 32);
            v167 = *(v131 + v517 + 48);
            v168 = vabdq_s32(v166, v155[2]);
            v169 = vmlal_high_s32(vmlal_s32(v165, *v166.i8, *v166.i8), v166, v166);
            result = vabdq_s32(v167, v155[3]);
            v170 = vmlal_high_u32(vmlal_u32(vmlal_high_u32(vmlal_u32(v164, *v168.i8, *v168.i8), v168, v168), *result.i8, *result.i8), result, result);
            v171 = vmlal_high_s32(vmlal_s32(v169, *v167.i8, *v167.i8), v167, v167);
            v172 = 2 * v156;
            v173 = v172 - 16;
            v174 = 1 << (v172 - 17);
            if (v173 <= 0)
            {
              v174 = 0;
            }

            *&v525[0] = (vaddvq_s64(v171) + v174) >> v173;
            result.i64[0] = vaddvq_s64(v170);
            v157 = (result.i64[0] + v174) >> v173;
          }

          v123 = v472;
          v108 = v154 + v488;
          v175 = *(a2 + 8208) + v443;
          v176 = *(v175 + 2 * v120) != 0;
          v524[v454] = v176;
          __src[v120] = v176;
          v452 += v157 >> 2;
          if ((v452 << v521[178]) + ((v521[179] * v108 + 256) >> 9) >= v504)
          {
LABEL_140:
            v6 = a1;
            v7 = v507;
            v46 = v411;
            v11 = v398;
            v44 = v399;
            v41 = v402;
            v40 = v403;
            v43 = v400;
            v42 = v401;
            v48 = v393;
            v45 = v410;
            v36 = v429;
            goto LABEL_141;
          }

          v177 = *v522;
          v178 = v521[154];
          if (v437)
          {
            v145 = v517;
            v179 = v132;
            v146 = v509;
            *result.i64 = vp9_highbd_iht4x4_16_add_neon((v177 + v517), v464, v509, v437, v178);
            goto LABEL_132;
          }

          v145 = v517;
          if (*(v175 + 2 * v120) < 2u)
          {
            v146 = v509;
            v180 = vdupq_n_s16(~(-1 << v178));
            v181 = vdupq_n_s16((((11585 * ((3036938240 * *(v177 + v517) + 0x80000000) >> 32) + 0x2000) >> 14) + 8) >> 4);
            v125 = v464;
            v182.i64[0] = *v464;
            v182.i64[1] = *v435;
            v183 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v181, v182), v180), 0);
            *v464 = v183.i64[0];
            *v435 = vextq_s8(v183, v183, 8uLL).u64[0];
            v183.i64[0] = *v433;
            v183.i64[1] = *(v433 + v448);
            result = vqshluq_n_s16(vminq_s16(vqaddq_s16(v181, v183), v180), 0);
            *v433 = result.i64[0];
            result.i64[0] = vextq_s8(result, result, 8uLL).u64[0];
            *(v433 + v448) = result.i64[0];
          }

          else
          {
            v179 = v132;
            v146 = v509;
            result.i64[0] = vpx_highbd_idct4x4_16_add_neon((v177 + v517), v464, v509, v178).u64[0];
LABEL_132:
            v125 = v179;
          }

          v128 = v468;
          v129 = v461;
          v126 = *v513;
          v127 = v457;
          v118 = v495;
          goto LABEL_98;
        }

        v38 = 4 * (v27 + v431 * v31);
        v418 = (v34 + v38);
        v39 = v38 + 2 * v32;
        v416 = v34 + v39;
        v414 = v34 + v32 + v39;
        v394 = v34 + v32 + v38;
        v390 = (v33 + v38);
        v373 = 0x7FFFFFFFFFFFFFFFLL;
        v372 = 0x7FFFFFFF;
        v371 = 0x7FFFFFFF;
        v504 = a6 - v381;
        v41 = v402;
        v40 = v403;
        v43 = v400;
        v42 = v401;
        v11 = v398;
        v44 = v399;
        v45 = v410;
        v8 = v521;
        v6 = a1;
        v46 = v411;
        while (2)
        {
          if (((*(v7 + 164) >> v37) & 1) == 0)
          {
            goto LABEL_24;
          }

          v49 = v37;
          if ((*(v7 + 156) & 0x10) != 0)
          {
            v50 = v431;
            if (v37 == 8)
            {
              if (((v36 - 1) & 0xFD) != 0)
              {
                goto LABEL_24;
              }

              v49 = 8;
            }

            else
            {
              if (v37 != 5)
              {
                if ((v36 - 4) <= 0xFDu && v37 == 7)
                {
                  goto LABEL_24;
                }

                v51 = a2;
                if (v37 == 6)
                {
                  if (((v36 - 2) & 0xFD) != 0)
                  {
                    goto LABEL_23;
                  }

                  v49 = 6;
                }

                goto LABEL_29;
              }

              v49 = 5;
              if (v36 != 1)
              {
                v51 = a2;
                if (v36 != 4)
                {
LABEL_23:
                  v8 = v521;
                  goto LABEL_24;
                }

                goto LABEL_29;
              }
            }
          }

          else
          {
            v50 = v431;
          }

          v51 = a2;
LABEL_29:
          v389 = *(v413 + 4 * v37);
          v445 = v49;
          v420 = v37;
          v428 = v36;
          __memcpy_chk();
          __memcpy_chk();
          v52 = 0;
          v512 = 0;
          v460 = 0;
          v456 = v408;
          v53 = v409;
          v54 = v407;
          v55 = v406;
          v56 = v405;
          v57 = v390;
          v440 = v394;
          v438 = v414;
          v436 = v416;
          v58 = v418;
          while (1)
          {
            v59 = 0;
            v60 = 0;
            v453 = v52;
            v451 = v52 + v50;
            v432 = v53;
            v426 = v54;
            v424 = v55;
            v422 = v57;
            v434 = v58;
            v449 = v56;
LABEL_34:
            v467 = v53;
            v65 = (v51 + 2 * (4 * (v53 & 0x3FFFFFF8 | (v456 + v60) & 1)));
            v66 = *(v51 + 8200);
            v475 = *(v51 + 0x2000);
            v483 = *(v51 + 24912);
            v487 = *(v51 + 8208);
            v516 = v55;
            *(**(v51 + 25360) + v55) = v445;
            v471 = v59;
            v479 = v56 + v59;
            v67 = v57;
            v68 = (*v492 ? v57 : v58);
            v69 = v51;
            v70 = *v492 ? v495 : v509;
            vp9_predict_intra_block(v522, 1, 0, v445, v68, v70, v58, v509, v498[0] + v60, v451, 0);
            v463 = v67;
            vpx_subtract_block_neon(4, 4, v65, 8, v67, v495, v58, v509);
            if (!v521[155])
            {
              break;
            }

            if (v524[v453])
            {
              v72 = (__src[v60] != 0) + 1;
            }

            else
            {
              v72 = __src[v60] != 0;
            }

            vp9_fwht4x4_c(v65->i16, (v66 + v54), 8);
            vpx_quantize_b_neon((v66 + v54), 16, v69, (v475 + v54), (v483 + v54), *(v69 + 25032), (v487 + v479), &vp9_default_scan_orders);
            v73 = v72;
            v8 = v521;
            v74 = cost_coeffs(v69, 0, v456 + v60, 0, v73, &default_scan_4x4, &default_scan_4x4_neighbors, *(v507 + 320)) + v512;
            v75 = *(v69 + 8208) + v449;
            v76 = *(v75 + 2 * v60) != 0;
            v524[v453] = v76;
            __src[v60] = v76;
            if ((v460 << v8[178]) + ((v8[179] * v74 + 256) >> 9) >= v504)
            {
              goto LABEL_72;
            }

            v77 = v69;
            v56 = v449;
            v512 = v74;
            v78 = (*v522 + v54);
            if (*(v75 + 2 * v60) >= 2u)
            {
              vpx_iwht4x4_16_add_c(v78, v58, v509);
            }

            else
            {
              vpx_iwht4x4_1_add_c(v78, v58, v509);
            }

            v51 = v77;
            v61 = v471;
            v62 = v467;
            v63 = v516;
            v64 = v463;
LABEL_33:
            ++v60;
            v58 = (v58 + 4);
            v57 = (v64 + 4);
            v55 = v63 + 12;
            v59 = v61 + 2;
            v54 += 64;
            v53 = v62 + 4;
            if (__n != v60)
            {
              goto LABEL_34;
            }

            v52 = v453 + 1;
            v58 = (v434 + v397);
            v436 += v397;
            v438 += v397;
            v440 += v397;
            v57 = (v422 + v396);
            v56 += 4;
            v55 = v424 + 24;
            v54 = v426 + 128;
            v53 = v432 + 8;
            v456 += 2;
            v50 = v431;
            if (v453 + 1 == v430)
            {
              v8 = v521;
              v95 = (v460 << v521[178]) + ((v521[179] * (v389 + v512) + 256) >> 9);
              v6 = a1;
              v7 = v507;
              v46 = v411;
              v11 = v398;
              v44 = v399;
              v41 = v402;
              v40 = v403;
              v43 = v400;
              v42 = v401;
              v45 = v410;
              v36 = v428;
              v37 = v420;
              if (v95 < v504)
              {
                memcpy((v367 + *v498), __src, __n);
                memcpy(&v431[v366], v524, v430);
                v96 = &__dst;
                v97 = v418;
                v98 = v354;
                do
                {
                  memcpy(v96, v97, v404);
                  v97 = (v97 + v509);
                  ++v96;
                  --v98;
                }

                while (v98);
                v36 = v445;
                v372 = v389 + v512;
                v371 = v512;
                v373 = v460;
                v504 = v95;
                v11 = v398;
                v44 = v399;
                v41 = v402;
                v40 = v403;
                v43 = v400;
                v42 = v401;
                v45 = v410;
                v8 = v521;
                goto LABEL_73;
              }

              goto LABEL_24;
            }
          }

          *&v525[0] = 0;
          v79 = **(v51 + 25360);
          if (v79[8] <= 0)
          {
            v81 = v79 + 1;
            v82 = *v79;
            v83 = &v79[v516];
            if (v82 >= 3)
            {
              v83 = v81;
            }

            v80 = intra_mode_to_tx_type_lookup[*v83];
          }

          else
          {
            v80 = 0;
          }

          v84 = (&vp9_scan_orders + 3 * v80);
          v85 = __src[v60] != 0;
          if (v524[v453])
          {
            ++v85;
          }

          v442 = v85;
          v86 = v80;
          vp9_fht4x4_neon(v65, (v66 + v54), 8, v80, v71);
          vpx_quantize_b_neon((v66 + v54), 16, a2, (v475 + v54), (v483 + v54), *(a2 + 25032), (v487 + v479), v84);
          v87 = cost_coeffs(a2, 0, v456 + v60, 0, v442, *v84, v84[2], *(v507 + 320)) + v512;
          v56 = v449;
          v88 = *(*(a2 + 8208) + v449 + 2 * v60) != 0;
          v524[v453] = v88;
          __src[v60] = v88;
          v460 += vp9_block_error(v66 + v54, *(a2 + 24912) + v54, 16, v525) >> 2;
          if ((v460 << v521[178]) + ((v521[179] * v87 + 256) >> 9) < v504)
          {
            v89 = *v522;
            if (v86)
            {
              *result.i8 = vp9_iht4x4_16_add_neon((v89 + v54), v58, v509, v86);
              v51 = a2;
            }

            else
            {
              v51 = a2;
              if (*(*(a2 + 8208) + v449 + 2 * v60) < 2u)
              {
                result = vdupq_n_s16((((46340 * ((46340 * *(v89 + v54) + 0x8000) >> 16) + 0x8000) >> 16) + 8) >> 4);
                v90 = v60;
                v91 = (v440 + 4 * v60);
                v92.i32[0] = v434->i32[v60];
                v92.i32[1] = *v91;
                v93 = vqmovun_s16(vaddw_u8(result, v92));
                v434->i32[v90] = v93.i32[0];
                *v91 = v93.i32[1];
                v94 = (v438 + 4 * v60);
                v93.i32[0] = *(v436 + 4 * v60);
                v93.i32[1] = *v94;
                *result.i8 = vqmovun_s16(vaddw_u8(result, v93));
                *(v436 + v90 * 4) = result.i32[0];
                *v94 = result.i32[1];
              }

              else
              {
                *result.i8 = vpx_idct4x4_16_add_neon((v89 + v54), v58, v509);
              }
            }

            v61 = v471;
            v62 = v467;
            v63 = v516;
            v64 = v463;
            v512 = v87;
            goto LABEL_33;
          }

          v8 = v521;
LABEL_72:
          v6 = a1;
          v7 = v507;
          v46 = v411;
          v11 = v398;
          v44 = v399;
          v41 = v402;
          v40 = v403;
          v43 = v400;
          v42 = v401;
          v45 = v410;
          v36 = v428;
LABEL_73:
          v37 = v420;
LABEL_24:
          if (++v37 != 10)
          {
            continue;
          }

          break;
        }

        v99 = a6 - v381;
        if (v504 >= v379)
        {
          goto LABEL_158;
        }

        v100 = v431;
        if (*v492)
        {
          goto LABEL_156;
        }

        v101 = v36;
        v102 = (v392 + 4 * (v498[0] + v431 * v495));
        v103 = &__dst;
        v104 = v354;
        do
        {
          memcpy(v102, v103++, v404);
          v102 += v509;
          --v104;
        }

        while (v104);
        v11 = v398;
        v44 = v399;
        v41 = v402;
        v40 = v403;
        v43 = v400;
        v42 = v401;
        v100 = v431;
        v45 = v410;
        LOBYTE(v36) = v101;
        if (v504 >= v379)
        {
          goto LABEL_352;
        }

LABEL_159:
        v368[12 * v369] = v36;
        if (v363)
        {
          v188 = v357;
          v189 = v380;
          if (v358 < 2)
          {
            v190 = 1;
            goto LABEL_164;
          }

          do
          {
            *(v189 - 24) = v36;
            *v189 = v36;
            v189 += 48;
            v188 -= 2;
          }

          while (v188);
          v190 = v352;
          if (v358 != v357)
          {
LABEL_164:
            v191 = &v45[24 * v190];
            v192 = v430 - v190;
            do
            {
              *v191 = v36;
              v191 += 24;
              --v192;
            }

            while (v192);
          }
        }

        if (v364 >= 2)
        {
          v193 = v355;
          v194 = v378;
          if (v356 < 2)
          {
            v195 = 1;
            goto LABEL_171;
          }

          do
          {
            *(v194 - 12) = v36;
            *v194 = v36;
            v194 += 24;
            v193 -= 2;
          }

          while (v193);
          v195 = v351;
          if (v356 != v355)
          {
LABEL_171:
            v196 = __n - v195;
            v197 = 12 * v195;
            do
            {
              v45[v197] = v36;
              v197 += 12;
              --v196;
            }

            while (v196);
          }
        }

        v381 += v504;
        if (v381 >= a6)
        {
          goto LABEL_352;
        }

        v374 += v372;
        v375 += v373;
        v370 += v371;
        v405 += v362;
        v406 += v361;
        v407 += v360;
        v408 += __n;
        v409 += v359;
        v25 = *v498 + __n;
        v380 += v361;
        v24 = &v45[v361];
        v378 += v361;
      }

      while (*v498 + __n <= 1);
      v16 = &v100[v430];
      v15 = v42 + v354;
      v14 = v41 + v338;
      v13 = v40 + v340;
      v21 = v347 + v337;
      v22 = &v346[v339];
      v20 = &v44[v339];
      v17 = &v43[v339];
      v23 = v345 + v339;
      if (v16 >= 2)
      {
        v46[1] = v46[56];
        if ((v375 << v8[178]) + ((v8[179] * v374 + 256) >> 9) < a6)
        {
          v462 = 0;
          v469 = a4;
          goto LABEL_315;
        }

        goto LABEL_352;
      }
    }
  }

  if (v10 && v10[8] <= 0)
  {
    v205 = v10 + 44;
    if (*v10 >= 3u)
    {
      v205 = v10 + 1;
    }

    v12 = *v205;
    if (!v11)
    {
      goto LABEL_194;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_194;
    }
  }

  if (v11[8] <= 0)
  {
    v207 = v11 + 32;
    if (*v11 >= 3u)
    {
      v207 = v11 + 1;
    }

    v206 = *v207;
    goto LABEL_198;
  }

LABEL_194:
  v206 = 0;
LABEL_198:
  v374 = 0;
  v370 = 0;
  v462 = 0;
  v375 = 0;
  v208 = 0;
  v473 = 0;
  v450 = 0;
  v455 = a1 + 400 * v12 + 40 * v206 + 929184;
  *(a2 + 82236) = 0;
  *(a2 + 82228) = 0;
  v447 = a1 + 933488;
  v469 = a4;
  v496 = &ss_size_lookup[4 * a4];
  v209.f64[0] = NAN;
  v209.f64[1] = NAN;
  result = vnegq_f64(v209);
  v465 = result;
  v477 = a6;
  do
  {
    __na = v208;
    if (*(v7 + 264))
    {
      if (v208 == 8)
      {
        if (((v473 - 1) & 0xFD) != 0)
        {
          goto LABEL_200;
        }
      }

      else if (v208 == 5)
      {
        if (v473 != 1 && v473 != 4)
        {
          goto LABEL_200;
        }
      }

      else if (v208 == 7 && (v473 - 4) < 0xFEu || v208 == 6 && ((v473 - 2) & 0xFD) != 0)
      {
        goto LABEL_200;
      }

      if (v462)
      {
        break;
      }
    }

    v9[1] = v208;
    if (*v7 == 1)
    {
      v210 = max_txsize_lookup[a4];
      v211 = a2;
      v212 = *(a2 + 25360);
      goto LABEL_218;
    }

    v493 = max_txsize_lookup[a4];
    v211 = a2;
    v212 = *(a2 + 25360);
    if (v8[155])
    {
      v210 = max_txsize_lookup[a4];
LABEL_218:
      v213 = *v212;
      if (v210 >= tx_mode_to_biggest_tx_size[v377[13]])
      {
        v214 = tx_mode_to_biggest_tx_size[v377[13]];
      }

      else
      {
        v214 = v210;
      }

      v215 = *(v7 + 320);
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v529 = 0u;
      v530 = 0u;
      __dst = v6;
      v528 = v211;
      *&v533 = v477;
      HIDWORD(v533) = v215;
      BYTE8(v534) = 1;
      v535 = 0;
      v213[2] = v214;
      vp9_get_entropy_contexts(a4, v214, v522, &v529, &v530);
      v216 = **(v211 + 25360);
      if (v216[8] > 0 || v8[155])
      {
        v217 = &vp9_default_scan_orders + 3 * v214;
      }

      else
      {
        v237 = v216 + 20;
        if (*v216 >= 3u)
        {
          v237 = v216 + 1;
        }

        v217 = &vp9_scan_orders + 12 * v214 + 3 * intra_mode_to_tx_type_lookup[*v237];
      }

      *&v534 = v217;
      v218 = *v8;
      v219 = v8[1];
      v220 = v496[2 * v218 + v219];
      v221 = ((v8[123] >> (v219 + 5)) & (v8[123] >> 31)) + num_4x4_blocks_high_lookup[v220];
      if (v221 >= 1)
      {
        v222 = (v521[121] >> (v218 + 5)) & (v521[121] >> 31);
        v223 = v222 + num_4x4_blocks_wide_lookup[v220];
        if (v223 >= 1)
        {
          v224 = 0;
          v225 = 0;
          v226 = v216[2];
          v227 = -v222 >> v226 << (2 * v226);
          v228 = 1 << v226;
          do
          {
            for (i = 0; i < v223; i += v228)
            {
              block_rd_txfm(0, v224, v225, i, v220, v226, &__dst);
              v224 += 1 << (2 * v226);
            }

            v224 += v227;
            v225 += v228;
          }

          while (v225 < v221);
        }
      }

      if (DWORD2(v533))
      {
        v8 = v521;
        v6 = a1;
        v7 = v507;
        v9 = v411;
      }

      else
      {
        v230 = *(&v531 + 1);
        v231 = v531;
        v232 = BYTE8(v534);
        v8 = v521;
        v6 = a1;
        v7 = v507;
        v9 = v411;
        if (v531 != 0x7FFFFFFF)
        {
          goto LABEL_312;
        }
      }

      goto LABEL_200;
    }

    v233 = *(a2 + 25376);
    if (v233)
    {
      v234 = *(v233 + 3);
      v235 = *(a2 + 25368);
      if (v235)
      {
        goto LABEL_235;
      }
    }

    else
    {
      v234 = 0;
      v235 = *(a2 + 25368);
      if (v235)
      {
LABEL_235:
        v236 = *(v235 + 3);
        goto LABEL_241;
      }
    }

    v236 = 0;
LABEL_241:
    v238 = *v212;
    v239 = *(*(v377 + 907) + v236 + v234 + 1967);
    v525[0] = xmmword_273BD4938;
    v525[1] = unk_273BD4948;
    result.i64[0] = 0x7FFFFFFFFFFFFFFFLL;
    v525[2] = xmmword_273BD4958;
    v525[3] = unk_273BD4968;
    *v499 = v238;
    v240 = max_txsize_lookup[*v238];
    v241 = v240;
    if (v233)
    {
      v241 = v240;
      if (!*(v233 + 3))
      {
        v241 = *(v233 + 2);
      }
    }

    v242 = v241;
    if (v235)
    {
      v242 = v240;
      if (!*(v235 + 3))
      {
        v242 = *(v235 + 2);
      }
    }

    v458 = vp9_prob_cost[v239];
    if (v233)
    {
      v243 = v241;
    }

    else
    {
      v243 = v242;
    }

    v244 = vp9_prob_cost[256 - v239];
    v245 = v377[13];
    if (v245 == 4)
    {
      v246 = v493;
      v247 = (v493 - *(v7 + 4)) & ~((v493 - *(v7 + 4)) >> 31);
      if (v247 + 1 < v493)
      {
        v248 = v247 + 1;
      }

      else
      {
        v248 = v493;
      }

      if (a4 > 9)
      {
        v247 = v248;
      }

      if (v247 > v493)
      {
        v249 = 1;
        goto LABEL_311;
      }

      v250 = v493;
    }

    else
    {
      v247 = tx_mode_to_biggest_tx_size[v245];
      v246 = v493;
      if (v493 < v247)
      {
        v247 = v493;
      }

      v250 = v247;
    }

    v251 = v250;
    v481 = v247;
    v485 = v447 + 32 * (v246 - 1) + 16 * (v243 + v242 > v240);
    v252 = v246;
    v253 = v477;
    v490 = v244;
    do
    {
      v519 = v252;
      v505 = *(v485 + 4 * v251);
      v254 = *(v7 + 320);
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v529 = 0u;
      v530 = 0u;
      __dst = v6;
      v528 = a2;
      v510 = v253;
      *&v533 = v253;
      HIDWORD(v533) = v254;
      BYTE8(v534) = 1;
      v535 = 0;
      *(**(a2 + 25360) + 2) = v251;
      vp9_get_entropy_contexts(a4, v251, v522, &v529, &v530);
      v255 = **(a2 + 25360);
      *v514 = v251;
      if (v255[8] > 0 || v8[155])
      {
        v256 = v251;
        v257 = &vp9_default_scan_orders;
      }

      else
      {
        v283 = v255 + 20;
        if (*v255 >= 3u)
        {
          v283 = v255 + 1;
        }

        v256 = intra_mode_to_tx_type_lookup[*v283];
        v257 = &vp9_scan_orders + 12 * v251;
      }

      *&v534 = &v257[3 * v256];
      v258 = *v8;
      v259 = v8[1];
      v260 = v496[2 * v258 + v259];
      v261 = (v8[121] >> (v258 + 5)) & (v8[121] >> 31);
      v262 = v261 + num_4x4_blocks_wide_lookup[v260];
      v263 = ((v8[123] >> (v259 + 5)) & (v8[123] >> 31)) + num_4x4_blocks_high_lookup[v260];
      if (v263 >= 1 && v262 >= 1)
      {
        v265 = 0;
        v266 = 0;
        v267 = v255[2];
        v268 = -v261 >> v267 << (2 * v267);
        v269 = 1 << v267;
        do
        {
          v270 = 0;
          do
          {
            block_rd_txfm(0, v265, v266, v270, v260, v267, &__dst);
            v265 += 1 << (2 * v267);
            v270 += v269;
          }

          while (v270 < v262);
          v265 += v268;
          v266 += v269;
        }

        while (v266 < v263);
      }

      if (DWORD2(v533))
      {
        v271 = 0;
        v272 = 0x7FFFFFFF;
        v273 = 0x7FFFFFFFFFFFFFFFLL;
        v274 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v272 = v531;
        v273 = *(&v531 + 1);
        v274 = v532;
        v271 = BYTE8(v534);
      }

      v6 = a1;
      v7 = v507;
      v275 = &__src[8 * *v514 + 48];
      *&__src[8 * *v514] = v273;
      *&__src[4 * *v514 + 32] = v271;
      if (v272 == 0x7FFFFFFF)
      {
        v276 = 0x7FFFFFFF;
      }

      else
      {
        v276 = v272 + v505;
      }

      *v275 = v272;
      v275[1] = v276;
      v8 = v521;
      v9 = v411;
      if (v273 == 0x7FFFFFFFFFFFFFFFLL || v272 == 0x7FFFFFFF)
      {
        result = v465;
        v525[*v514] = v465;
        v281 = 0x7FFFFFFFFFFFFFFFLL;
        v280 = 0x7FFFFFFFFFFFFFFFLL;
        if (*(*v499 + 8) < 1)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v277 = v521[179];
        v278 = v521[178];
        v279 = &v525[*v514];
        if (v271)
        {
          v280 = (v274 << v278) + ((v277 * v490 + 256) >> 9);
          if (*(*v499 + 8) < 1)
          {
            v281 = (v274 << v278) + ((v277 * (v505 + v490) + 256) >> 9);
            v279->i64[0] = v280;
            v279->i64[1] = v281;
            if (*(*v499 + 8) < 1)
            {
              goto LABEL_306;
            }
          }

          else
          {
            result = vdupq_n_s64(v280);
            *v279 = result;
            v275[1] = v272;
            v281 = (v274 << v278) + ((v277 * v490 + 256) >> 9);
            if (*(*v499 + 8) < 1)
            {
              goto LABEL_306;
            }
          }
        }

        else
        {
          v282 = v273 << v278;
          v280 = (v273 << v278) + ((v277 * (v458 + v272) + 256) >> 9);
          v281 = v282 + ((v277 * (v458 + v272 + v505) + 256) >> 9);
          v279->i64[0] = v280;
          v279->i64[1] = v281;
          if (*(*v499 + 8) < 1)
          {
            goto LABEL_306;
          }
        }
      }

      if (!v521[155] && !v271 && v274 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v284 = &v525[*v514];
        v285 = (v274 << v521[178]) + ((v521[179] * v490 + 256) >> 9);
        if (v280 >= v285)
        {
          v280 = v285;
        }

        if (v281 >= v285)
        {
          v281 = v285;
        }

        *v284 = v280;
        v284[1] = v281;
      }

LABEL_306:
      v252 = v519;
      v253 = v510;
      if (*(v507 + 352) && (v281 == 0x7FFFFFFFFFFFFFFFLL || *v514 < v493 && v281 > *(&v525[*v514 + 1] + 1) || v271 == 1))
      {
        break;
      }

      if (v281 < v510)
      {
        v253 = v281;
        v252 = v514[0];
      }

      v251 = *v514 - 1;
    }

    while (*v514 > v481);
    v249 = v377[13] == 4;
    LOBYTE(v246) = v252;
LABEL_311:
    *(*v499 + 2) = v246;
    v230 = *&__src[8 * v246];
    v231 = *&__src[8 * v246 + 48 + 4 * v249];
    v232 = *&__src[4 * v246 + 32];
    if (v231 != 0x7FFFFFFF)
    {
LABEL_312:
      v286 = *(v455 + 4 * __na) + v231;
      if ((v230 << v8[178]) + ((v286 * v8[179] + 256) >> 9) < v477)
      {
        v374 = *(v455 + 4 * __na) + v231;
        v370 = v231;
        v450 = v9[2];
        v462 = v232;
        v375 = v230;
        v473 = __na;
        v477 = (v230 << v8[178]) + ((v286 * v8[179] + 256) >> 9);
      }
    }

LABEL_200:
    v208 = __na + 1;
  }

  while (__na != 9);
  v9[1] = v473;
  v9[2] = v450;
  if (v477 >= a6)
  {
    goto LABEL_352;
  }

LABEL_315:
  v478 = 0;
  v459 = 0;
  v466 = 0;
  v482 = 0;
  v287 = 0;
  v474 = 0;
  v511 = uv_txsize_lookup[16 * v469 + 4 * *(**(a2 + 25360) + 2) + 2 * v8[34] + v8[35]];
  if (a4 <= 3)
  {
    v288 = 3;
  }

  else
  {
    v288 = a4;
  }

  *(a2 + 82228) = 0;
  *(a2 + 82236) = 0;
  v506 = v6 + 739856;
  v470 = v6 + 928384;
  v289 = 0x7FFFFFFFFFFFFFFFLL;
  v515 = v288;
  __nb = &ss_size_lookup[4 * v288];
  while (2)
  {
    if ((*(v506 + 4 * v511) >> v287))
    {
      v299 = **(a2 + 25360);
      v520 = v287;
      v299[6] = v287;
      v300 = uv_txsize_lookup[16 * *v299 + 4 * v299[2] + 2 * v8[34] + v8[35]];
      if ((v289 & 0x8000000000000000) == 0 && v299[8] >= 1)
      {
        vp9_subtract_plane(a2, v515, 1);
        vp9_subtract_plane(a2, v515, 2);
      }

      v301 = *(v7 + 320);
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v529 = 0u;
      v530 = 0u;
      __dst = v6;
      v528 = a2;
      *v523 = v289;
      *&v533 = v289;
      HIDWORD(v533) = v301;
      BYTE8(v534) = 1;
      v535 = 0;
      v500 = v300;
      vp9_get_entropy_contexts(v515, v300, a2 + 25048, &v529, &v530);
      v497 = &vp9_default_scan_orders + 3 * v300;
      *&v534 = v497;
      v303 = v8[34];
      v302 = v8[35];
      v304 = 2 * v303;
      v305 = __nb[2 * v303 + v302];
      v306 = ((v8[123] >> (v302 + 5)) & (v8[123] >> 31)) + num_4x4_blocks_high_lookup[v305];
      if (v306 >= 1)
      {
        v307 = (v521[121] >> (v303 + 5)) & (v521[121] >> 31);
        v308 = v307 + num_4x4_blocks_wide_lookup[v305];
        if (v308 >= 1)
        {
          v309 = 0;
          v310 = 0;
          v311 = uv_txsize_lookup[16 * ***(a2 + 25360) + 4 * *(**(a2 + 25360) + 2) + v304 + v302];
          v312 = -v307 >> v311 << (2 * v311);
          v313 = 1 << v311;
          do
          {
            for (j = 0; j < v308; j += v313)
            {
              block_rd_txfm(1, v309, v310, j, v305, v311, &__dst);
              v309 += 1 << (2 * v311);
            }

            v309 += v312;
            v310 += v313;
          }

          while (v310 < v306);
        }
      }

      if (DWORD2(v533))
      {
        goto LABEL_325;
      }

      v289 = *v523;
      if (v531 == 0x7FFFFFFF)
      {
        goto LABEL_339;
      }

      v494 = v531;
      v491 = *(&v531 + 1);
      v486 = BYTE8(v534);
      v290 = *(v507 + 320);
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v529 = 0u;
      v530 = 0u;
      __dst = a1;
      v528 = a2;
      *&v533 = *v523;
      HIDWORD(v533) = v290;
      BYTE8(v534) = 1;
      v535 = 0;
      vp9_get_entropy_contexts(v515, v500, a2 + 25184, &v529, &v530);
      *&v534 = v497;
      v291 = v521[68];
      v292 = v521[69];
      v293 = 2 * v291;
      v294 = __nb[2 * v291 + v292];
      v295 = (v521[121] >> (v291 + 5)) & (v521[121] >> 31);
      v296 = v295 + num_4x4_blocks_wide_lookup[v294];
      v297 = ((v521[123] >> (v292 + 5)) & (v521[123] >> 31)) + num_4x4_blocks_high_lookup[v294];
      if (v297 >= 1 && v296 >= 1)
      {
        v315 = 0;
        v316 = 0;
        v317 = uv_txsize_lookup[16 * ***(a2 + 25360) + 4 * *(**(a2 + 25360) + 2) + v293 + v292];
        v318 = -v295 >> v317 << (2 * v317);
        v319 = 1 << v317;
        do
        {
          v320 = 0;
          do
          {
            block_rd_txfm(2, v315, v316, v320, v294, v317, &__dst);
            v315 += 1 << (2 * v317);
            v320 += v319;
          }

          while (v320 < v296);
          v315 += v318;
          v316 += v319;
        }

        while (v316 < v297);
      }

      if (DWORD2(v533))
      {
LABEL_325:
        v8 = v521;
        v6 = a1;
        v7 = v507;
        v287 = v520;
        v289 = *v523;
      }

      else
      {
        v289 = *v523;
        if (v531 == 0x7FFFFFFF)
        {
LABEL_339:
          v8 = v521;
          v6 = a1;
          v7 = v507;
          v287 = v520;
        }

        else
        {
          v8 = v521;
          v287 = v520;
          if ((*v523 & 0x8000000000000000) != 0)
          {
            v6 = a1;
            v7 = v507;
          }

          else
          {
            v321 = v531 + v494;
            v322 = *(&v531 + 1) + v491;
            v323 = *(v470 + 400 * *v377 + 40 * *(**(a2 + 25360) + 1) + 4 * v520) + (v531 + v494);
            v324 = ((*(&v531 + 1) + v491) << v521[178]) + ((v323 * v521[179] + 256) >> 9);
            v6 = a1;
            v7 = v507;
            if (v324 < *v523)
            {
              v466 = v486 & 1 & BYTE8(v534);
              if (v521[167])
              {
                v478 = *(v470 + 400 * *v377 + 40 * *(**(a2 + 25360) + 1) + 4 * v520) + v531 + v494;
              }

              else
              {
                *(a2 + 16504) = *(a5 + 440);
                *(a2 + 16496) = *(a5 + 512);
                *(a2 + 25048) = *(a5 + 584);
                *(a2 + 16512) = *(a5 + 656);
                *(a5 + 440) = *(a5 + 424);
                *(a5 + 512) = *(a5 + 496);
                *(a5 + 584) = *(a5 + 568);
                *(a5 + 656) = *(a5 + 640);
                *(a5 + 424) = *(a2 + 16504);
                *(a5 + 496) = *(a2 + 16496);
                *(a5 + 568) = *(a2 + 25048);
                *(a5 + 640) = *(a2 + 16512);
                *(a2 + 24808) = *(a5 + 464);
                *(a2 + 24800) = *(a5 + 536);
                *(a2 + 25184) = *(a5 + 608);
                *(a2 + 24816) = *(a5 + 680);
                *(a5 + 464) = *(a5 + 448);
                *(a5 + 536) = *(a5 + 520);
                *(a5 + 608) = *(a5 + 592);
                *(a5 + 680) = *(a5 + 664);
                *(a5 + 448) = *(a2 + 24808);
                *(a5 + 520) = *(a2 + 24800);
                *(a5 + 592) = *(a2 + 25184);
                v478 = v323;
                *(a5 + 664) = *(a2 + 24816);
              }

              v459 = v321;
              v482 = v322;
              v474 = v520;
              v289 = v324;
            }
          }
        }
      }
    }

    if (++v287 != 10)
    {
      continue;
    }

    break;
  }

  v325 = **(a2 + 25360);
  *(v325 + 6) = v474;
  if (v462 && v466)
  {
    v326 = *(a2 + 25368);
    v327 = *(a2 + 25376);
    if (v327)
    {
      v327 = *(v327 + 3);
    }

    v328 = v482;
    if (v326)
    {
      v326 = *(v326 + 3);
    }

    v329 = v374 + v478 - (v370 + v459) + vp9_prob_cost[256 - *(*(v377 + 907) + v326 + v327 + 1967)];
  }

  else
  {
    v330 = *(a2 + 25368);
    v331 = *(a2 + 25376);
    if (v331)
    {
      v331 = *(v331 + 3);
    }

    if (v330)
    {
      v330 = *(v330 + 3);
    }

    v329 = v478 + v374 + vp9_prob_cost[*(*(v377 + 907) + v330 + v331 + 1967)];
    v328 = v482;
  }

  *a3 = v329;
  *(a3 + 1) = v328 + v375;
  *a5 = *v325;
  v332 = *(v325 + 16);
  v333 = *(v325 + 32);
  v334 = *(v325 + 48);
  *(a5 + 64) = *(v325 + 64);
  *(a5 + 32) = v333;
  *(a5 + 48) = v334;
  *(a5 + 16) = v332;
  v335 = *(a2 + 25568);
  result = *v335;
  v336 = *(v335 + 16);
  *(a5 + 100) = *(v335 + 32);
  *(a5 + 84) = v336;
  *(a5 + 68) = result;
  *(a3 + 2) = (*(a3 + 1) << v8[178]) + ((v8[179] * *a3 + 256) >> 9);
  return result;
}

uint64_t block_rd_txfm(int a1, int a2, int a3, int a4, int a5, unsigned int a6, uint64_t *a7)
{
  v10 = *a7;
  v11 = a7[1];
  v12 = **(v11 + 25360);
  v141 = 0x7FFFFFFFFFFFFFFFLL;
  v142 = 0x7FFFFFFFFFFFFFFFLL;
  result = (a7 + 4);
  v14 = a7 + 2;
  v15 = a7[14];
  v16 = txsize_to_bsize[a6];
  v17 = v11 + 24912 + 136 * a1;
  v18 = *(v17 + 24);
  if (*(a7 + a4 + 16))
  {
    v19 = (*(a7 + a3 + 32) != 0) + 1;
  }

  else
  {
    v19 = *(a7 + a3 + 32) != 0;
  }

  v20 = *(v17 + 16);
  v21 = v10 + 737280;
  v22 = *(v10 + 739632);
  v23 = *(v21 + 2360);
  v140 = 0;
  v139[0] = v11;
  v139[1] = v22;
  *&v139[2] = v23;
  v139[3] = &v140;
  v139[4] = &v141;
  v139[5] = a7 + 2;
  v139[6] = a7 + 4;
  v139[7] = v12 + 3;
  if (*(a7 + 22))
  {
    return result;
  }

  v24 = a7;
  v25 = a6;
  v137 = v11 + 24576;
  v132 = a1;
  v126 = a6;
  v127 = a1;
  if (*(v12 + 8) <= 0)
  {
    v118 = v16;
    v116 = v19;
    v128 = a7 + 2;
    v130 = (a7 + 4);
    v112 = v20;
    v114 = 4 * (a4 + v18 * a3);
    v123 = a2;
    v30 = a2;
    v133 = a5;
    vp9_encode_block_intra(a1, v30, a3, a4, a5, a6, v139);
    if (v15)
    {
      v33 = copy_block_visible(v11 + 24912, *(v17 + 8), *(v17 + 12), (v112 + v114), v18, (*v15 + 4 * (a4 + *(v15 + 8) * a3)), *(v15 + 8), a3, a4, v133, v118);
    }

    v27 = (v11 + 24576);
    if (*(v11 + 25616))
    {
      a2 = v123;
      v25 = a6;
      dist_block(*v24, v11, a1, v133, v123, a3, a4, a6, &v142, &v141, 0, v140);
      v14 = v128;
      result = v130;
    }

    else
    {
      v44 = v11 + 8304 * a1;
      v45 = *(v44 + 8224);
      v46 = *(v44 + 8216);
      v47 = a3;
      v48 = a4;
      v49 = 4 * (a4 + v45 * a3);
      a2 = v123;
      v25 = a6;
      v50 = v133;
      if (!v140)
      {
        v51 = 4 * num_4x4_blocks_wide_lookup[v133];
        v111 = *(v44 + 8216);
        v52 = sum_squares_visible(*(v11 + 25404), *(v11 + 25412), *(v17 + 8), *(v17 + 12), (v44 + 8 * (a4 + v51 * a3)), v51, a3, a4, v133, v118, v144, &v143);
        v46 = v111;
        v50 = v133;
        v48 = a4;
        v47 = a3;
        v141 = v52;
      }

      if ((*(*(v11 + 25440) + 152) & 8) != 0)
      {
        v66 = *(v11 + 25536);
        v53 = v141;
        v54 = v118;
        v55 = v114;
        if (v66 >= 9)
        {
          v53 = ((1 << (2 * v66 - 17)) + v141) >> (2 * v66 - 16);
        }
      }

      else
      {
        v53 = v141;
        v54 = v118;
        v55 = v114;
      }

      v67 = v49;
      v141 = 16 * v53;
      v68 = *v24;
      v69 = *(v11 + 25404);
      v70 = *(v11 + 25412);
      v72 = *(v17 + 8);
      v71 = *(v17 + 12);
      v144[0] = 0;
      if (a6 && ((LODWORD(v73) = num_4x4_blocks_wide_lookup[v54], v74 = num_4x4_blocks_high_lookup[v54], v75 = (v69 >> (v72 + 5)) - v48 + num_4x4_blocks_wide_lookup[v50], v76 = (v70 >> (v71 + 5)) - v47 + num_4x4_blocks_high_lookup[v50], v75 < v73) || v76 < v74))
      {
        v107 = v24;
        v108 = v11;
        v77 = 0;
        v78 = *(v68 + 740496);
        v143 = 0;
        if (v76 >= v74)
        {
          v79 = v74;
        }

        else
        {
          v79 = v76;
        }

        if (v75 >= v73)
        {
          v73 = v73;
        }

        else
        {
          v73 = v75;
        }

        v135 = v79;
        if (v79 >= 1 && v73 >= 1)
        {
          v80 = 0;
          v81 = 0;
          v77 = 0;
          v82 = 0;
          v113 = v112 + v55;
          v110 = v46 + v67;
          v120 = v73;
          do
          {
            v83 = v113 + v81;
            v84 = v73;
            v85 = v110 + v80;
            do
            {
              v78(v85, v45, v83, v18, &v143, v33);
              v77 += v143;
              v83 += 4;
              v85 += 4;
              --v84;
            }

            while (v84);
            ++v82;
            v81 += 4 * v18;
            v80 += 4 * v45;
            v73 = v120;
          }

          while (v82 != v135);
        }

        v24 = v107;
        v11 = v108;
        a2 = v123;
        v25 = a6;
      }

      else
      {
        (*(v68 + (v54 << 6) + 740496))(v46 + v49, v45, v112 + v55, v18, v144, v33);
        v77 = v144[0];
      }

      v142 = 16 * v77;
      v14 = v128;
      result = v130;
      v27 = v137;
    }

    v19 = v116;
    goto LABEL_66;
  }

  if (max_txsize_lookup[a5] == a6)
  {
    v26 = *(v11 + (a2 >> (2 * a6)) + 4 * a1 + 82228);
    v27 = (v11 + 24576);
    v28 = *(v21 + 2912);
    if (v26 == 1 && v28 == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
    v27 = (v11 + 24576);
  }

  if (v26 && (!v15 || v26 != 2))
  {
    if (v26 == 2)
    {
      v35 = v11;
      v36 = v11 + 8304 * a1;
      v124 = *(v36 + 8200);
      v37 = *v17;
      v38 = (a7 + 4);
      v39 = a7 + 2;
      v40 = v19;
      vp9_xform_quant_dc(v35, v127, a2, a3, a4, a5, a6);
      v19 = v40;
      v14 = v39;
      result = v38;
      v27 = v137;
      v41 = 16 * *(v35 + 8 * ((a2 >> (2 * v25)) + 4 * v127) + 82240);
      v141 = v41;
      v142 = v41;
      v42 = *(v36 + 8208);
      v11 = v35;
      if (*(v42 + 2 * a2))
      {
        v43 = ((*(v124 + (a2 << 6)) - *(v37 + (a2 << 6)) + *(v124 + (a2 << 6))) * *(v37 + (a2 << 6))) >> (2 * *(v137 + 960) - 16);
        if (v25 != 3)
        {
          v43 >>= 2;
        }

        v142 = (v41 - v43) & ~((v41 - v43) >> 63);
      }
    }

    goto LABEL_66;
  }

LABEL_21:
  v129 = a7 + 2;
  v131 = (a7 + 4);
  v134 = a5;
  if (v22 == 3)
  {
    if ((*(*(v11 + 25440) + 152) & 8) == 0)
    {
      v125 = a2;
      v57 = num_4x4_blocks_wide_lookup[a5];
      v58 = 4 * v57;
      v59 = v11 + 8304 * a1 + 8 * (a4 + 4 * v57 * a3);
      v60 = *(*(v17 + 120) + 2) >> 3;
      v61 = num_4x4_blocks_wide_lookup[v16];
      LODWORD(v119) = num_4x4_blocks_high_lookup[v16];
      if (a6 && ((v62 = (*(v11 + 25404) >> (*(v17 + 8) + 5)) + v57 - a4, v63 = (*(v11 + 25412) >> (*(v17 + 12) + 5)) - a3 + num_4x4_blocks_high_lookup[a5], v62 < v61) || v63 < v119))
      {
        v115 = *(*(v17 + 120) + 2) >> 3;
        v34 = v19;
        v109 = v11;
        v65 = 0;
        if (v63 >= v119)
        {
          v101 = num_4x4_blocks_high_lookup[v16];
        }

        else
        {
          v101 = v63;
        }

        if (v62 >= v61)
        {
          v102 = num_4x4_blocks_wide_lookup[v16];
        }

        else
        {
          v102 = v62;
        }

        v119 = v101;
        if (v101 >= 1 && v102 >= 1)
        {
          v103 = 0;
          v65 = 0;
          v117 = 32 * num_4x4_blocks_wide_lookup[a5];
          do
          {
            v104 = v59;
            v105 = v102;
            do
            {
              v65 += vpx_sum_squares_2d_i16_neon(v104++, v58, 4);
              --v102;
            }

            while (v102);
            ++v103;
            v59 += v117;
            v102 = v105;
          }

          while (v103 != v119);
        }

        v64 = 4 * v102;
        v11 = v109;
        a1 = v127;
        v60 = v115;
      }

      else
      {
        v34 = v19;
        v64 = 4 * v61;
        v65 = vpx_sum_squares_2d_i16_neon((v11 + 8304 * a1 + 8 * (a4 + v58 * a3)), 4 * v57, 4 * v61);
      }

      v141 = v65;
      v140 = 1;
      v106 = v65;
      a2 = v125;
      v25 = a6;
      vp9_xform_quant(v11, a1, v125, a3, a4, v134, a6);
      v27 = v137;
      if (v23 * (v60 * v60 * v64 * 4 * v119) < v106)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v22 == 2)
  {
    if (v23 > 0.0)
    {
      v34 = v19;
      v56 = *(v11 + 25608);
      vp9_xform_quant(v11, a1, a2, a3, a4, a5, a6);
      if (v56 > v23)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v22)
  {
LABEL_42:
    v34 = v19;
    vp9_xform_quant(v11, a1, a2, a3, a4, a5, a6);
LABEL_43:
    vp9_optimize_b(v11, a1, a2, v25, v34);
    goto LABEL_44;
  }

  v34 = v19;
  vp9_xform_quant(v11, a1, a2, a3, a4, a5, a6);
LABEL_44:
  dist_block(*v24, v11, a1, v134, a2, a3, a4, v25, &v142, &v141, v15, v140);
  v14 = v129;
  result = v131;
  v19 = v34;
LABEL_66:
  v86 = v142;
  if ((v142 << v27[264]) + v24[9] > v24[10])
  {
    goto LABEL_78;
  }

  v87 = result;
  v88 = v14;
  result = cost_coeffs(v24[1], v127, a2, v25, v19, *v24[12], *(v24[12] + 16), *(v24 + 23));
  v89 = v11 + 8304 * v132;
  *(v88 + a4) = *(*(v89 + 8208) + 2 * a2) != 0;
  *(v87 + a3) = *(*(v89 + 8208) + 2 * a2) != 0;
  v90 = v27[265] * result + 256;
  v91 = v27[264];
  v92 = (v86 << v91) + (v90 >> 9);
  v93 = v141;
  v94 = v141 << v91;
  if (v92 >= v141 << v91)
  {
    v95 = v141 << v91;
  }

  else
  {
    v95 = (v86 << v91) + (v90 >> 9);
  }

  if (!v127)
  {
    if (*(*(v89 + 8208) + 2 * a2))
    {
      v96 = 0;
      v97 = v126;
      if (!v27[316] && v92 > v94)
      {
        v96 = v27[241] == 0;
      }
    }

    else
    {
      v96 = 1;
      v97 = v126;
    }

    *(v11 + (v97 << 8) + a2 + 25864) = v96;
    *(v11 + 4 * v97 + 26888) += *(*(v89 + 8208) + 2 * a2);
  }

  *(v24 + 12) += result;
  v98 = v24[8];
  v24[7] += v86;
  v24[8] = v98 + v93;
  v99 = v24[10];
  v100 = v24[9] + v95;
  v24[9] = v100;
  if (v100 <= v99)
  {
    *(v24 + 104) &= *(*(v89 + 8208) + 2 * a2) == 0;
  }

  else
  {
LABEL_78:
    *(v24 + 22) = 1;
  }

  return result;
}

__n128 copy_block_visible(uint64_t a1, char a2, char a3, __n128 *a4, int a5, __n128 *a6, int a7, int a8, int a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v11 = a6;
  v12 = a4;
  v13 = num_4x4_blocks_wide_lookup[a11];
  v14 = num_4x4_blocks_high_lookup[a11];
  v15 = *(*(a1 + 528) + 152);
  if (!a11)
  {
    v28 = 4 * v14;
    if ((v15 & 8) == 0)
    {
      v29 = a5;
      v30 = a7;
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v16 = (*(a1 + 492) >> (a2 + 5)) - a9 + num_4x4_blocks_wide_lookup[a10];
  v17 = (*(a1 + 500) >> (a3 + 5)) - a8 + num_4x4_blocks_high_lookup[a10];
  if (v16 < v13 || v17 < v14)
  {
    if (v17 >= v14)
    {
      v19 = num_4x4_blocks_high_lookup[a11];
    }

    else
    {
      v19 = v17;
    }

    if (v16 >= v13)
    {
      v20 = num_4x4_blocks_wide_lookup[a11];
    }

    else
    {
      v20 = v16;
    }

    v57 = v20;
    if (v19 >= 1 && v20 >= 1)
    {
      v22 = a5;
      v23 = a7;
      if ((v15 & 8) != 0)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v56 = v19;
        v54 = 4 * a7;
        v55 = 4 * a5;
        do
        {
          v58 = v36;
          v59 = v35;
          v60 = v34;
          v37 = (2 * (v11 + v35));
          v38 = (2 * (v12 + v34));
          v39 = v57;
          do
          {
            result.n128_u64[0] = vpx_highbd_convolve_copy_neon(v38, v22, v37, v23, 0, 0, 0, 0, 0, 4, 4).n128_u64[0];
            v37 = (v37 + 8);
            v38 = (v38 + 8);
            --v39;
          }

          while (v39);
          v36 = v58 + 1;
          v35 = v59 + v54;
          v34 = v60 + v55;
        }

        while (v58 + 1 != v56);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = 0;
          do
          {
            a6->n128_u32[v25 / 4u + v27 / 4] = a4->n128_u32[v24 / 4u + v27 / 4];
            *(a6->n128_u32 + a7 + v25 + v27) = *(a4->n128_u32 + a5 + v24 + v27);
            *(a6->n128_u32 + 2 * a7 + v25 + v27) = *(a4->n128_u32 + 2 * a5 + v24 + v27);
            *(a6->n128_u32 + 2 * a7 + a7 + v25 + v27) = *(a4->n128_u32 + 2 * a5 + a5 + v24 + v27);
            v27 += 4;
          }

          while (4 * v57 != v27);
          ++v26;
          v25 += 4 * a7;
          v24 += 4 * a5;
        }

        while (v26 != v19);
      }
    }

    return result;
  }

  v28 = 4 * v14;
  if ((v15 & 8) != 0)
  {
LABEL_29:
    result.n128_u64[0] = vpx_highbd_convolve_copy_neon((2 * a4), a5, (2 * a6), a7, 0, 0, 0, 0, 0, 4 * v13, v28).n128_u64[0];
    return result;
  }

  v29 = a5;
  v30 = a7;
  if (a11 == 1)
  {
    do
    {
LABEL_27:
      v11->n128_u32[0] = v12->n128_u32[0];
      *(v11->n128_u32 + v30) = *(v12->n128_u32 + v29);
      v12 = (v12 + v29 + v29);
      v11 = (v11 + v30 + v30);
      v28 -= 2;
    }

    while (v28);
    return result;
  }

  if (a11 - 2 > 2)
  {
    if (a11 > 7u)
    {
      if (a11 - 8 >= 3)
      {
        v47 = -4 * v14;
        v48 = a4 + 2;
        v49 = a6 + 2;
        do
        {
          result = v48[-2];
          v50 = v48[-1];
          v51 = *v48;
          v52 = v48[1];
          v49[-2] = result;
          v49[-1] = v50;
          *v49 = v51;
          v49[1] = v52;
          v48 = (v48 + a5);
          v49 = (v49 + a7);
        }

        while (!__CFADD__(v47++, 1));
      }

      else
      {
        v42 = -4 * v14;
        do
        {
          result = *v12;
          v43 = v12[1];
          v44 = *(v12 + a5);
          v45 = *(&v12[1] + a5);
          *v11 = *v12;
          v11[1] = v43;
          v46 = v11 + a7;
          *v46 = v44;
          *(v46 + 1) = v45;
          v11 = &v46[a7];
          v12 = (v12 + a5 + a5);
          v42 += 2;
        }

        while (v42);
      }
    }

    else
    {
      v40 = -4 * v14;
      do
      {
        result = *v12;
        v41 = *(v12 + a5);
        v12 = (v12 + a5 + a5);
        *v11 = result;
        *(v11 + a7) = v41;
        v11 = (v11 + a7 + a7);
        v40 += 2;
      }

      while (v40);
    }
  }

  else
  {
    v32 = -4 * v14;
    do
    {
      result.n128_u64[0] = v12->n128_u64[0];
      v33 = *(v12->n128_u64 + a5);
      v12 = (v12 + a5 + a5);
      v11->n128_u64[0] = result.n128_u64[0];
      *(v11->n128_u64 + a7) = v33;
      v11 = (v11 + a7 + a7);
      v32 += 2;
    }

    while (v32);
  }

  return result;
}

void dist_block(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t *a10, uint64_t a11, int a12)
{
  v12 = a7;
  v13 = a6;
  v14 = a10;
  v15 = a11;
  v16 = a9;
  v318 = *MEMORY[0x277D85DE8];
  v17 = (a2 + 25404);
  v18 = a2 + 8304 * a3;
  v245 = a2 + 24912;
  v19 = a2 + 24912 + 136 * a3;
  if (a11 || (*(a2 + 25616) ? (v20 = *(*(v18 + 8208) + 2 * a5) == 0) : (v20 = 1), v20))
  {
    v237 = a5;
    v249 = *(*(v18 + 8208) + 2 * a5);
    v21 = txsize_to_bsize[a8];
    v251 = num_4x4_blocks_wide_lookup[v21];
    v22 = *(v18 + 8224);
    v23 = *(v19 + 24);
    v24 = *(v18 + 8216);
    v232 = 4 * (a7 + v23 * a6);
    v233 = *(v19 + 16);
    v25 = (v233 + v232);
    v236 = *v19;
    v241 = (a2 + 25404);
    v247 = v21;
    v248 = (v233 + v232);
    v234 = 4 * (a7 + v22 * a6);
    v235 = v24;
    if (a12)
    {
      v26 = a8;
      v27 = 16 * *a10;
      *a10 = v27;
      if (a11)
      {
        goto LABEL_9;
      }

LABEL_38:
      v243 = 0;
      v29 = v247;
      v30 = v249;
      if (v249)
      {
LABEL_10:
        v31 = (v236 + (v237 << 6));
        if ((*(*(a2 + 25440) + 152) & 8) == 0)
        {
          v32 = v26;
          v33 = (v233 + v232);
          if (v26)
          {
            v34 = v16;
            if ((v29 - 2) > 2)
            {
              v46 = v241;
              if (v32 == 3)
              {
                if ((v29 - 8) < 3)
                {
                  v85 = v248[1];
                  v86 = *(v248 + v23);
                  v87 = *(&v248[1] + v23);
                  v88 = (v248 + v23 + v23);
                  v255[0] = *v248;
                  v255[1] = v85;
                  v256 = v86;
                  v257 = v87;
                  v89 = *v88;
                  v90 = v88[1];
                  v91 = (v88 + v23);
                  v92 = *v91;
                  v93 = v91[1];
                  v94 = (v91 + v23);
                  v258 = v89;
                  v259 = v90;
                  v260 = v92;
                  v261 = v93;
                  v95 = *v94;
                  v96 = v94[1];
                  v97 = (v94 + v23);
                  v98 = *v97;
                  v99 = v97[1];
                  v100 = (v97 + v23);
                  v262 = v95;
                  v263 = v96;
                  v264 = v98;
                  v265 = v99;
                  v101 = *v100;
                  v102 = v100[1];
                  v103 = (v100 + v23);
                  v104 = *v103;
                  v105 = v103[1];
                  v106 = (v103 + v23);
                  v266 = v101;
                  v267 = v102;
                  v268 = v104;
                  v269 = v105;
                  v107 = *v106;
                  v108 = v106[1];
                  v109 = (v106 + v23);
                  v110 = *v109;
                  v111 = v109[1];
                  v112 = (v109 + v23);
                  v270 = v107;
                  v271 = v108;
                  v272 = v110;
                  v273 = v111;
                  v113 = *v112;
                  v114 = v112[1];
                  v115 = (v112 + v23);
                  v116 = *v115;
                  v117 = v115[1];
                  v118 = (v115 + v23);
                  v274 = v113;
                  v275 = v114;
                  v276 = v116;
                  v277 = v117;
                  v119 = *v118;
                  v120 = v118[1];
                  v121 = (v118 + v23);
                  v122 = *v121;
                  v123 = v121[1];
                  v124 = (v121 + v23);
                  v278 = v119;
                  v279 = v120;
                  v280 = v122;
                  v281 = v123;
                  v125 = *v124;
                  v126 = v124[1];
                  v127 = (v124 + v23);
                  v128 = *v127;
                  v129 = v127[1];
                  v130 = (v127 + v23);
                  v282 = v125;
                  v283 = v126;
                  v284 = v128;
                  v285 = v129;
                  v131 = *v130;
                  v132 = v130[1];
                  v133 = (v130 + v23);
                  v134 = *v133;
                  v135 = v133[1];
                  v136 = (v133 + v23);
                  v286 = v131;
                  v287 = v132;
                  v288 = v134;
                  v289 = v135;
                  v137 = *v136;
                  v138 = v136[1];
                  v139 = (v136 + v23);
                  v140 = *v139;
                  v141 = v139[1];
                  v142 = (v139 + v23);
                  v290 = v137;
                  v291 = v138;
                  v292 = v140;
                  v293 = v141;
                  v143 = *v142;
                  v144 = v142[1];
                  v145 = (v142 + v23);
                  v146 = *v145;
                  v147 = v145[1];
                  v148 = (v145 + v23);
                  v294 = v143;
                  v295 = v144;
                  v296 = v146;
                  v297 = v147;
                  v149 = *v148;
                  v150 = v148[1];
                  v151 = (v148 + v23);
                  v152 = *v151;
                  v153 = v151[1];
                  v154 = (v151 + v23);
                  v298 = v149;
                  v299 = v150;
                  v300 = v152;
                  v301 = v153;
                  v155 = *v154;
                  v156 = v154[1];
                  v157 = (v154 + v23);
                  v158 = *v157;
                  v159 = v157[1];
                  v160 = (v157 + v23);
                  v302 = v155;
                  v303 = v156;
                  v304 = v158;
                  v305 = v159;
                  v161 = *v160;
                  v162 = v160[1];
                  v163 = (v160 + v23);
                  v164 = *v163;
                  v165 = v163[1];
                  v166 = (v163 + v23);
                  v306 = v161;
                  v307 = v162;
                  v308 = v164;
                  v309 = v165;
                  v167 = *v166;
                  v168 = v166[1];
                  v169 = (v166 + v23);
                  v170 = *v169;
                  v171 = v169[1];
                  v172 = (v169 + v23);
                  v310 = v167;
                  v311 = v168;
                  v312 = v170;
                  v313 = v171;
                  v173 = *v172;
                  v174 = v172[1];
                  v175 = (v172 + v23);
                  v176 = *v175;
                  v177 = v175[1];
                  v314 = v173;
                  v315 = v174;
                  v316 = v176;
                  v317 = v177;
LABEL_83:
                  v242 = v255;
                  vp9_idct32x32_add(v31, v255, 32, v30);
                  goto LABEL_88;
                }

                v195 = -4 * v251;
                v196 = (v232 + v233 + 32);
                v197 = v255;
                v198 = v255;
                do
                {
                  v199 = v196[-1];
                  v200 = *v196;
                  v201 = v196[1];
                  *v197 = v196[-2];
                  v197[1] = v199;
                  v198[2] = v200;
                  v198 += 2;
                  v197[3] = v201;
                  v196 = (v196 + v23);
                  v197 = v198;
                }

                while (!__CFADD__(v195++, 1));
              }

              else
              {
                v190 = -4 * v251;
                v191 = v255;
                do
                {
                  v192 = *v33;
                  v193 = *(v33 + v23);
                  v33 = (v33 + v23 + v23);
                  *v191 = v192;
                  v191[2] = v193;
                  v191 += 4;
                  v190 += 2;
                }

                while (v190);
              }
            }

            else
            {
              v35 = *(v248->n128_i64 + v23);
              v36 = (v248 + v23 + v23);
              v255[0].n128_u64[0] = v248->n128_u64[0];
              *&v256 = v35;
              v37 = *v36;
              v38 = (v36 + v23);
              v39 = *v38;
              v40 = (v38 + v23);
              *&v258 = v37;
              *&v260 = v39;
              v41 = *v40;
              v42 = (v40 + v23);
              v43 = *v42;
              v44 = (v42 + v23);
              *&v262 = v41;
              *&v264 = v43;
              v45 = *(v44 + v23);
              *&v266 = *v44;
              *&v268 = v45;
              v46 = v241;
            }
          }

          else
          {
            v73 = -4 * v251;
            v74 = v255;
            v34 = v16;
            v46 = v241;
            do
            {
              v74->n128_u32[0] = v33->n128_u32[0];
              v74[2].n128_u32[0] = *(v33->n128_u32 + v23);
              v33 = (v33 + v23 + v23);
              v74 += 4;
              v73 += 2;
            }

            while (v73);
          }

          if (v32 == 1)
          {
            if (v30 == 1)
            {
              v242 = v255;
              vpx_idct8x8_1_add_neon(v31->i16, v255, 32);
            }

            else
            {
              v242 = v255;
              if (v30 > 0xC)
              {
                vpx_idct8x8_64_add_neon(v31, v255, 32);
              }

              else
              {
                vpx_idct8x8_12_add_neon(v31, v255, 32);
              }
            }

            goto LABEL_88;
          }

          if (v32 == 2)
          {
            v242 = v255;
            vp9_idct16x16_add(v31, v255, 32, v30);
            goto LABEL_88;
          }

          if (v32 != 3)
          {
            v242 = v255;
            (*(a2 + 82416))(v31, v255, 32);
            goto LABEL_88;
          }

          goto LABEL_83;
        }

        v63 = (v236 + (v237 << 6));
        vpx_highbd_convolve_copy_neon((2 * v248), v23, v255, 32, 0, 0, 0, 0, 0, 4 * v251, 4 * v251);
        v64 = v241[33];
        v32 = v26;
        if (v241[34])
        {
          v34 = v16;
          if (v249 == 1)
          {
            vpx_highbd_iwht4x4_1_add_c(v63, v255, 32, v64);
          }

          else
          {
            vpx_highbd_iwht4x4_16_add_c(v63, v255, 32, v64);
          }

          v46 = v241;
        }

        else
        {
          v34 = v16;
          if (v32 != 2)
          {
            v46 = v241;
            v75 = (v236 + (v237 << 6));
            if (v32 == 1)
            {
              v29 = v247;
              if (v249 == 1)
              {
                vpx_highbd_idct8x8_1_add_neon(v75->i32, v255, 32, v64);
              }

              else if (v249 > 0xC)
              {
                vpx_highbd_idct8x8_64_add_neon(v75, v255, 32, v64);
              }

              else
              {
                vpx_highbd_idct8x8_12_add_neon(v75, v255, 32, v64);
              }
            }

            else
            {
              v29 = v247;
              if (v32)
              {
                if (v249 == 1)
                {
                  vpx_highbd_idct32x32_1_add_neon(v75->i32, v255, 32, v64);
                }

                else if (v249 > 0x22)
                {
                  if (v249 > 0x87)
                  {
                    vpx_highbd_idct32x32_1024_add_neon(v75, v255, 32);
                  }

                  else
                  {
                    vpx_highbd_idct32x32_135_add_neon(v75, v255, 32, v64);
                  }
                }

                else
                {
                  vpx_highbd_idct32x32_34_add_neon(v75, v255, 32, v64);
                }
              }

              else if (v249 == 1)
              {
                v76 = vdupq_n_s16(~(-1 << v64));
                v77 = vdupq_n_s16((((11585 * ((3036938240 * v75->i32[0] + 0x80000000) >> 32) + 0x2000) >> 14) + 8) >> 4);
                v78.i64[0] = v255[0].n128_u64[0];
                v78.i64[1] = v258;
                v79 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v77, v78), v76), 0);
                v255[0].n128_u64[0] = v79.i64[0];
                *&v258 = vextq_s8(v79, v79, 8uLL).u64[0];
                v79.i64[0] = v262;
                v79.i64[1] = v266;
                v80 = vqshluq_n_s16(vminq_s16(vqaddq_s16(v77, v79), v76), 0);
                *&v262 = v80.i64[0];
                *&v266 = vextq_s8(v80, v80, 8uLL).u64[0];
              }

              else
              {
                vpx_highbd_idct4x4_16_add_neon(v75, v255, 32, v64);
              }
            }

            goto LABEL_60;
          }

          v46 = v241;
          v194 = (v236 + (v237 << 6));
          if (v249 != 1)
          {
            v29 = v247;
            if (v249 > 0xA)
            {
              if (v249 > 0x26)
              {
                vpx_highbd_idct16x16_256_add_neon(v194, v255, 32, v64);
              }

              else
              {
                vpx_highbd_idct16x16_38_add_neon(v194, v255, 32, v64);
              }
            }

            else
            {
              vpx_highbd_idct16x16_10_add_neon(v194, v255, 32, v64);
            }

            goto LABEL_60;
          }

          vpx_highbd_idct16x16_1_add_neon(v63, v255, 32, v64);
        }

        v29 = v247;
LABEL_60:
        v242 = (v255 >> 1);
LABEL_88:
        v203 = *v46;
        v204 = v46[2];
        v206 = *(v19 + 8);
        v205 = *(v19 + 12);
        v254 = 0;
        v207 = a4;
        if (v32 && ((v208 = num_4x4_blocks_high_lookup[v29], v209 = (v203 >> (v206 + 5)) - v12 + num_4x4_blocks_wide_lookup[a4], LODWORD(v210) = (v204 >> (v205 + 5)) - v13 + num_4x4_blocks_high_lookup[a4], v209 >= v251) ? (v211 = v210 < v208) : (v211 = 1), v211))
        {
          v225 = v15;
          v227 = v12;
          v229 = v13;
          v231 = v19;
          v212 = 0;
          v213 = *(a1 + 740496);
          v253 = 0;
          if (v210 >= v208)
          {
            v210 = v208;
          }

          else
          {
            v210 = v210;
          }

          if (v209 >= v251)
          {
            v214 = v251;
          }

          else
          {
            v214 = v209;
          }

          v250 = v214;
          v252 = v210;
          if (v210 >= 1 && v214 >= 1)
          {
            v216 = 0;
            v212 = 0;
            v217 = 0;
            v218 = v242;
            do
            {
              v219 = v235 + v234 + v216;
              v220 = v218;
              v221 = v250;
              do
              {
                v213(v219, v22, v220, 32, &v253);
                v212 += v253;
                v220 = (v220 + 4);
                v219 += 4;
                --v221;
              }

              while (v221);
              ++v217;
              v218 += 8;
              v216 += 4 * v22;
            }

            while (v217 != v252);
          }

          v19 = v231;
          v12 = v227;
          v13 = v229;
          v207 = a4;
          v15 = v225;
          LOBYTE(v29) = v247;
          v222 = v242;
          if (!v225)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v223 = v22;
          v222 = v242;
          (*(a1 + (v29 << 6) + 740496))(v235 + v234, v223, v242, 32, &v254);
          v212 = v254;
          if (!v15)
          {
LABEL_112:
            v27 = 16 * v212;
            goto LABEL_113;
          }
        }

        copy_block_visible(v245, *(v19 + 8), *(v19 + 12), v222, 32, v243, *(v15 + 8), v13, v12, v207, v29);
        goto LABEL_112;
      }

LABEL_39:
      v34 = v16;
LABEL_113:
      *v34 = v27;
      return;
    }

    v47 = *v17;
    v48 = *(a2 + 25412);
    v50 = *(v19 + 8);
    v49 = *(v19 + 12);
    v255[0].n128_u32[0] = 0;
    if (a8 && ((v51 = num_4x4_blocks_high_lookup[v21], v52 = (v47 >> (v50 + 5)) - a7 + num_4x4_blocks_wide_lookup[a4], LODWORD(v53) = (v48 >> (v49 + 5)) - a6 + num_4x4_blocks_high_lookup[a4], v52 >= v251) ? (v54 = v53 < v51) : (v54 = 1), v54))
    {
      v230 = a2 + 24912 + 136 * a3;
      v55 = 0;
      v56 = *(a1 + 740496);
      v254 = 0;
      if (v53 >= v51)
      {
        v53 = v51;
      }

      else
      {
        v53 = v53;
      }

      if (v52 >= v251)
      {
        v57 = v251;
      }

      else
      {
        v57 = v52;
      }

      v244 = v53;
      if (v53 >= 1 && v57 >= 1)
      {
        v58 = 0;
        v59 = 0;
        v55 = 0;
        v60 = 0;
        v240 = v57;
        do
        {
          v61 = v233 + v232 + v59;
          v62 = v235 + v234 + v58;
          do
          {
            v56(v62, v22, v61, v23, &v254);
            v55 += v254;
            v61 += 4;
            v62 += 4;
            --v57;
          }

          while (v57);
          ++v60;
          v59 += 4 * v23;
          v58 += 4 * v22;
          v57 = v240;
        }

        while (v60 != v244);
      }

      v19 = v230;
      v16 = a9;
      v12 = a7;
      v13 = a6;
      v15 = a11;
      v26 = a8;
      v25 = (v233 + v232);
      v27 = 16 * v55;
      *a10 = v27;
      if (!a11)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v26 = a8;
      (*(a1 + (v21 << 6) + 740496))(v24 + 4 * (a7 + v22 * a6), v22, v25, v23, v255);
      v25 = (v233 + v232);
      v27 = 16 * v255[0].n128_u32[0];
      *a10 = v27;
      if (!a11)
      {
        goto LABEL_38;
      }
    }

LABEL_9:
    v28 = *(v15 + 8);
    v29 = v247;
    v243 = (*v15 + 4 * (v12 + v28 * v13));
    copy_block_visible(v245, *(v19 + 8), *(v19 + 12), v25, v23, v243, v28, v13, v12, a4, v247);
    v30 = v249;
    if (v249)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

  v65 = 2 * a8;
  v255[0].n128_u64[0] = 0;
  v66 = 2 * (a8 != 3);
  v67 = (*(v18 + 8200) + (a5 << 6));
  v69 = (*v19 + (a5 << 6));
  v70 = a2;
  if ((*(*(a2 + 25440) + 152) & 8) == 0)
  {
    v71 = a10;
    v72 = (16 << v65);
    goto LABEL_52;
  }

  v81 = v17[33];
  v72 = (16 << v65);
  if (v81 == 8)
  {
    v71 = a10;
LABEL_52:
    v82 = vp9_block_error(v67, v69, v72, v255);
    LOBYTE(v83) = 16;
    v84 = v255[0].n128_u64[0];
    v14 = v71;
    *a9 = v82 >> v66;
    *v71 = v84 >> v66;
    if (!*(v70 + 82216))
    {
      return;
    }

    goto LABEL_66;
  }

  v178 = 0uLL;
  v179 = 0uLL;
  do
  {
    v180 = *v67++;
    v181 = v180;
    v182 = *v69++;
    v183 = vabdq_s32(v181, v182);
    v179 = vmlal_high_u32(vmlal_u32(v179, *v183.i8, *v183.i8), v183, v183);
    v178 = vmlal_high_s32(vmlal_s32(v178, *v181.i8, *v181.i8), v181, v181);
    v72 -= 4;
  }

  while (v72);
  v83 = 2 * v81;
  v184 = v83 - 16;
  v185 = 1 << (v83 - 17);
  if (v83 - 16 <= 0)
  {
    v185 = 0;
  }

  v186 = v185;
  v187 = (vaddvq_s64(v178) + v185) >> v184;
  v255[0].n128_u64[0] = v187;
  *a9 = (vaddvq_s64(v179) + v186) >> v184 >> v66;
  *a10 = v187 >> v66;
  if (*(v70 + 82216))
  {
LABEL_66:
    if (*(**(v70 + 25360) + 8) <= 0)
    {
      v188 = *(*(v19 + 120) + 2);
      v189 = (v188 * v188) << v65 >> (v66 + v83 - 14);
      *a9 += v189 >> 4;
      *v14 += v189;
    }
  }
}

uint64_t sum_squares_visible(int a1, int a2, char a3, char a4, int16x4_t *a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, int *a11, _DWORD *a12)
{
  v15 = a11;
  v14 = a12;
  v16 = num_4x4_blocks_wide_lookup[a10];
  LODWORD(v17) = num_4x4_blocks_high_lookup[a10];
  if (a10 && ((v18 = (a1 >> (a3 + 5)) - a8 + num_4x4_blocks_wide_lookup[a9], v19 = (a2 >> (a4 + 5)) - a7 + num_4x4_blocks_high_lookup[a9], v18 >= v16) ? (v20 = v19 < v17) : (v20 = 1), v20))
  {
    if (v19 >= v17)
    {
      v17 = num_4x4_blocks_high_lookup[a10];
    }

    else
    {
      v17 = v19;
    }

    if (v18 >= v16)
    {
      v21 = num_4x4_blocks_wide_lookup[a10];
    }

    else
    {
      v21 = v18;
    }

    if (v17 < 1 || v21 < 1)
    {
      v26 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 4 * a6;
      do
      {
        v28 = (a5 + 2 * v24);
        v29 = v21;
        do
        {
          v26 += vpx_sum_squares_2d_i16_neon(v28++, a6, 4);
          --v29;
        }

        while (v29);
        ++v25;
        v24 += v27;
      }

      while (v25 != v17);
    }

    v23 = 4 * v21;
    v15 = a11;
    v14 = a12;
  }

  else
  {
    v23 = 4 * v16;
    v26 = vpx_sum_squares_2d_i16_neon(a5, a6, 4 * v16);
  }

  *v15 = v23;
  *v14 = 4 * v17;
  return v26;
}

uint64_t cost_coeffs(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a1 + 8304 * a2;
  LODWORD(v9) = *(*(v8 + 8208) + 2 * a3);
  v10 = a1 + 13824 * a4 + 6912 * (a2 > 0) + 3456 * (*(**(a1 + 25360) + 8) > 0) + 26912;
  v11 = *(a1 + 25536);
  v12 = &vp9_cat6_high12_high_cost;
  if (v11 == 10)
  {
    v12 = &vp9_cat6_high10_high_cost;
  }

  if (v11 == 8)
  {
    v13 = &vp9_cat6_high_cost;
  }

  else
  {
    v13 = v12;
  }

  if (!*(*(v8 + 8208) + 2 * a3))
  {
    return *(v10 + 48 * a5 + 44);
  }

  v14 = (*(v8 + 0x2000) + (a3 << 6));
  v15 = (&band_counts + 16 * a4 + 4);
  v16 = *v14;
  v17 = v16 - 67;
  if (a8)
  {
    if (v17 > 0xFFFFFF7A)
    {
      v19 = *(vp9_dct_cat_lt_10_value_tokens + 4 * v16);
      v18 = *(vp9_dct_cat_lt_10_value_cost + v16);
    }

    else
    {
      if (v16 < 0)
      {
        LODWORD(v16) = -v16;
      }

      v18 = v13[(v16 - 67) >> 8] + vp9_cat6_low_cost[(v16 - 67)];
      v19 = 10;
    }

    LODWORD(result) = *(v10 + 48 * a5 + 4 * v19) + v18;
    v52[0] = vp9_pt_energy_class[v19];
    v24 = v10 + 576;
    if (v9 == 1)
    {
      v25 = v10 + 576;
      v26 = v19;
      goto LABEL_36;
    }

    v27 = 2;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v9;
    }

    v28 = v9 - 1;
    v29 = (a6 + 2);
    while (1)
    {
      v31 = *v29++;
      v32 = v14[v31];
      if ((v32 - 67) > 0xFFFFFF7A)
      {
        v26 = *(vp9_dct_cat_lt_10_value_tokens + 4 * v32);
        v34 = *(vp9_dct_cat_lt_10_value_cost + v32);
        v19 = v19 == 0;
        if (--v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v32 >= 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = -v32;
        }

        v34 = v13[(v33 - 67) >> 8] + vp9_cat6_low_cost[(v33 - 67)];
        v26 = 10;
        v19 = v19 == 0;
        if (--v27)
        {
LABEL_34:
          v25 = v24;
          goto LABEL_26;
        }
      }

      v30 = *v15++;
      v27 = v30;
      v25 = v24 + 576;
LABEL_26:
      result = (v34 + result + *(v24 + 288 * v19 + 48 * v19 + 4 * v26));
      v24 = v25;
      LOWORD(v19) = v26;
      if (!--v28)
      {
        if (v27)
        {
LABEL_36:
          v35 = v25 + 48 * (v26 == 0);
          return (*(v35 + 44) + result);
        }

        return result;
      }
    }
  }

  if (v17 > 0xFFFFFF7A)
  {
    v23 = *(vp9_dct_cat_lt_10_value_tokens + 4 * v16);
    v22 = *(vp9_dct_cat_lt_10_value_cost + v16);
  }

  else
  {
    if (v16 >= 0)
    {
      v21 = *v14;
    }

    else
    {
      v21 = -v16;
    }

    v22 = v13[(v21 - 67) >> 8] + vp9_cat6_low_cost[(v21 - 67)];
    v23 = 10;
  }

  LODWORD(result) = *(v10 + 48 * a5 + 4 * v23) + v22;
  v52[0] = vp9_pt_energy_class[v23];
  v36 = v10 + 576;
  v37 = 2;
  if (v9 != 1)
  {
    v38 = v36 + 288 * (v23 == 0);
    v39 = vp9_dct_cat_lt_10_value_tokens;
    v40 = vp9_dct_cat_lt_10_value_cost;
    if (v9 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v9;
    }

    v41 = v9 - 1;
    v42 = (a7 + 6);
    v43 = (a6 + 2);
    do
    {
      v45 = *v43++;
      v44 = v45;
      v46 = v14[v45];
      if ((v46 - 67) > 0xFFFFFF7A)
      {
        v49 = v39[4 * v46];
        v48 = v40[v46];
      }

      else
      {
        if (v46 >= 0)
        {
          v47 = v46;
        }

        else
        {
          v47 = -v46;
        }

        v48 = v13[(v47 - 67) >> 8] + vp9_cat6_low_cost[(v47 - 67)];
        v49 = 10;
      }

      v50 = *(v38 + 48 * ((v52[*(v42 - 1)] + v52[*v42] + 1) >> 1) + 4 * v49);
      v52[v44] = vp9_pt_energy_class[v49];
      if (!--v37)
      {
        v51 = *v15++;
        v37 = v51;
        v36 += 576;
      }

      result = (v48 + result + v50);
      v38 = v36 + 288 * (v49 == 0);
      v42 += 2;
      --v41;
    }

    while (v41);
    if (!v37)
    {
      return result;
    }

    v37 = 2 * v9;
  }

  v35 = v36 + 48 * ((v52[*(a7 + 2 * v37)] + v52[*(a7 + 2 * (v37 | 1))] + 1) >> 1);
  return (*(v35 + 44) + result);
}

uint64_t average_split_mvs(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = (*(a1 + 12) > 0) | (2 * (*(a1 + 8) > 0));
  if (v4 <= 1)
  {
    if (!v4)
    {
      return *(a2 + 12 * a4 + 4 * a3 + 24);
    }

    v11 = (a2 + 12 * a4 + 4 * a3);
    v12 = v11[24] + v11[12];
    v8 = ((v12 >> 31) | 1) + v12 + ((((v12 >> 31) | 1u) + v12) >> 31);
    v9 = v11[13];
    v10 = v11[25];
    return (((((v10 + v9) >> 31) | 1) + v10 + v9 + (((((v10 + v9) >> 31) | 1u) + v10 + v9) >> 31)) << 15) & 0xFFFF0000 | (v8 >> 1);
  }

  if (v4 == 2)
  {
    v6 = (a2 + 12 * a4 + 4 * a3);
    v7 = v6[18] + v6[12];
    v8 = ((v7 >> 31) | 1) + v7 + ((((v7 >> 31) | 1u) + v7) >> 31);
    v9 = v6[13];
    v10 = v6[19];
    return (((((v10 + v9) >> 31) | 1) + v10 + v9 + (((((v10 + v9) >> 31) | 1u) + v10 + v9) >> 31)) << 15) & 0xFFFF0000 | (v8 >> 1);
  }

  v13 = (a2 + 4 * a3);
  v14 = v13[18] + v13[12] + v13[24] + v13[30];
  if (v14 < 0)
  {
    v15 = -2;
  }

  else
  {
    v15 = 2;
  }

  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v17 < 0 != v16)
  {
    v17 += 3;
  }

  v18 = v13[19] + v13[13] + v13[25] + v13[31];
  if (v18 < 0)
  {
    v19 = -2;
  }

  else
  {
    v19 = 2;
  }

  v16 = __OFADD__(v19, v18);
  v20 = v19 + v18;
  if (v20 < 0 != v16)
  {
    v20 += 3;
  }

  return (v20 << 14) & 0xFFFF0000 | (v17 >> 2);
}

uint64_t build_inter_predictors_for_planes(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  if (a5 <= a6)
  {
    v6 = result;
    v7 = 8 * a4;
    v8 = 8 * a3;
    v9 = a5;
    v18 = a6 + 1;
    v17 = &ss_size_lookup[4 * a2];
    do
    {
      v10 = v17[2 * *(v6 + 136 * v9 + 8) + *(v6 + 136 * v9 + 12)];
      v11 = 4 * num_4x4_blocks_wide_lookup[v10];
      v19 = num_4x4_blocks_high_lookup[v10];
      if (***(v6 + 448) > 2u)
      {
        result = build_inter_predictors(v6, v9, 0, v11, 4 * v19, 0, 0, v11, 4 * v19, v7, v8);
      }

      else
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = 0;
          v20 = v12;
          v15 = 4 * v12;
          do
          {
            v16 = v13++;
            result = build_inter_predictors(v6, v9, v16, v11, 4 * v19, v14, v15, 4, 4, v7, v8);
            v14 += 4;
          }

          while (v11 != v14);
          v12 = v20 + 1;
        }

        while (v20 + 1 != v19);
      }

      ++v9;
    }

    while (v18 != v9);
  }

  return result;
}

uint64_t vp9_setup_pre_planes(uint64_t result, int a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a3 + 56);
    v7 = *(a3 + 64);
    v9 = *(a3 + 16);
    v25 = *(a3 + 36);
    v10 = *(a3 + 72);
    v11 = 8 * a5;
    v12 = 8 * a4;
    v13 = result + 16 * a2;
    if (a6)
    {
      v14 = (v12 >> *(result + 12));
      v15 = result;
      v23 = *(a3 + 64);
      v24 = *(a3 + 72);
      v16 = (*(a6 + 16))((v11 >> *(result + 8)), a6);
      *(v13 + 32) = v8 + v9 * (*(a6 + 24))(v14, a6) + v16;
      *(v13 + 40) = v9;
      v17 = (v12 >> v15[37]);
      v18 = (*(a6 + 16))((v11 >> v15[36]), a6);
      v20 = v25;
      v19 = v25;
      *(v13 + 168) = v23 + v25 * (*(a6 + 24))(v17, a6) + v18;
      *(v13 + 176) = v25;
      v21 = (v12 >> v15[71]);
      v22 = (*(a6 + 16))((v11 >> v15[70]), a6);
      result = (*(a6 + 24))(v21, a6);
      v10 = v24;
    }

    else
    {
      *(v13 + 32) = v8 + v9 * (v12 >> *(result + 12)) + (v11 >> *(result + 8));
      *(v13 + 40) = v9;
      v20 = v25;
      v19 = v25;
      *(v13 + 168) = v7 + v25 * (v12 >> *(result + 148)) + (v11 >> *(result + 144));
      *(v13 + 176) = v25;
      v22 = v11 >> *(result + 280);
      result = (v12 >> *(result + 284));
    }

    *(v13 + 304) = v10 + v20 * result + v22;
    *(v13 + 312) = v19;
  }

  return result;
}

uint64_t build_inter_predictors(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = a3;
  v13 = 0;
  v79 = *MEMORY[0x277D85DE8];
  v14 = a1 + 136 * a2;
  v15 = **(a1 + 448);
  v73 = a1 + 512;
  v74 = *(&vp9_filter_kernels + v15[7]);
  v71 = a6;
  v70 = 16 * a4;
  v68 = 16 * a5;
  v69 = 16 * a4 + 48;
  v65 = v15 + 12;
  v66 = v15[9];
  v67 = 16 * a5 + 48;
  v56 = 16 * (a11 + a7);
  v57 = 16 * (a10 + a6);
  v16 = 1;
  v75 = v15;
  do
  {
    v19 = *(v73 + 8 * v13);
    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (*v15 > 2u)
    {
      v23 = *&v65[4 * v13];
    }

    else
    {
      v22 = *(v14 + 16);
      v23 = average_split_mvs(v14, v15, v13, v11);
      v20 = v22;
    }

    v24 = v14 + 32 + 16 * v13;
    v26 = *(v14 + 8);
    v25 = *(v14 + 12);
    v27 = v23 << (1 - v25);
    v28 = *(a1 + 488);
    v29 = v69 + (*(a1 + 492) << (1 - v26));
    v30 = *(a1 + 496);
    v31 = v67 + (*(a1 + 500) << (1 - v25));
    v32 = (HIWORD(v23) << (1 - v26));
    if (v32 < v29)
    {
      LOWORD(v29) = HIWORD(v23) << (1 - v26);
    }

    if (v32 >= (v28 << (1 - v26)) - v70 - 64)
    {
      v33 = v29;
    }

    else
    {
      v33 = (v28 << (1 - v26)) - v70 - 64;
    }

    if (v27 < v31)
    {
      LOWORD(v31) = v23 << (1 - v25);
    }

    if (v27 >= (v30 << (1 - v25)) - v68 - 64)
    {
      v34 = v31;
    }

    else
    {
      v34 = (v30 << (1 - v25)) - v68 - 64;
    }

    v35 = *(v19 + 16);
    if (v35 == -1 || (v36 = *(v19 + 20), v36 == -1) || v35 == 0x4000 && v36 == 0x4000)
    {
      v37 = *(v24 + 8);
      v39 = v71;
      v38 = a7;
      v40 = *v24 + v37 * a7 + v71;
      v41 = v34;
      v42 = v33;
      v43 = 16;
    }

    else
    {
      v48 = -v28 >> (v26 + 3);
      v63 = -v30 >> (v25 + 3);
      v49 = *(v19 + 8);
      v77 = *(v49 + 56);
      v78 = *(v49 + 72);
      v50 = *(v49 + 16);
      LODWORD(v49) = *(v49 + 36);
      v76[0] = v50;
      v76[1] = v49;
      v51 = *(&v77 + a2);
      v76[2] = v49;
      *v24 = v51;
      v52 = v76[a2];
      *(v24 + 8) = v52;
      v64 = v21;
      v53 = v20;
      v62 = (*(v19 + 32))((v48 + a6), v19 + 16);
      v54 = (*(v19 + 40))((v63 + a7), v19 + 16);
      v20 = v53;
      v21 = v64;
      v55 = *v24 + v52 * v54;
      v11 = a3;
      v40 = v55 + v62;
      *v24 = v40;
      v41 = (((v56 * *(v19 + 20)) >> 14) & 0xF) + ((v34 * *(v19 + 20)) >> 14);
      v42 = (((v57 * *(v19 + 16)) >> 14) & 0xF) + ((v33 * *(v19 + 16)) >> 14);
      v43 = *(v19 + 24);
      v37 = *(v24 + 8);
      v39 = v71;
      v38 = a7;
    }

    v44 = v20 + v21 * v38 + v39;
    v45 = v42 & 0xF;
    v46 = v41 & 0xF;
    v47 = v40 + (v41 >> 4) * v37 + (v42 >> 4);
    if ((*(*(a1 + 528) + 152) & 8) != 0)
    {
      result = (*(v19 + 32 * (v45 != 0) + 16 * (v46 != 0) + 8 * v13 + 112))(2 * v47, v37, 2 * v44, *(v14 + 24), v74, v45, v43);
    }

    else
    {
      result = (*(v19 + 32 * (v45 != 0) + 16 * (v46 != 0) + 8 * v13 + 48))(v47, v37);
    }

    v18 = (v66 > 0) & v16;
    v13 = 1;
    v16 = 0;
    v15 = v75;
  }

  while ((v18 & 1) != 0);
  return result;
}

uint64_t vp9_predict_intra_block(uint64_t a1, char a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  v368 = *MEMORY[0x277D85DE8];
  v11 = 1;
  if (a10)
  {
    v12 = 1 << a3;
    if (a9)
    {
LABEL_3:
      v13 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(a1 + 464) != 0;
    v12 = 1 << a3;
    if (a9)
    {
      goto LABEL_3;
    }
  }

  v13 = *(a1 + 456) != 0;
LABEL_6:
  v14 = 1 << a2;
  v345 = v12 + a9;
  v15 = 4 * a9;
  v16 = 4 * a10;
  v17 = *(a1 + 528);
  if ((*(v17 + 152) & 8) == 0)
  {
    v18 = 4;
    v19 = (4 << a3);
    v20 = a1 + 136 * a11;
    if (a11)
    {
      v18 = 24;
    }

    v21 = 20;
    if (!a11)
    {
      v21 = 0;
    }

    v22 = *(v17 + v21);
    v23 = -*(a1 + 488) >> (*(v20 + 8) + 3);
    if ((0x10AuLL >> a4))
    {
      goto LABEL_212;
    }

    if (!v13)
    {
      v43 = a8;
      v44 = a7;
      v45 = *(v17 + v21);
      v46 = v11;
      __memset_chk();
      v11 = v46;
      v13 = 0;
      v15 = 4 * a9;
      v22 = v45;
      a7 = v44;
      a8 = v43;
      goto LABEL_212;
    }

    if ((*(a1 + 500) & 0x80000000) == 0)
    {
      if (v19 < 1)
      {
        goto LABEL_212;
      }

      v24 = 0;
      if (v19 < 8 || a6 != 1)
      {
        goto LABEL_148;
      }

      if (v19 >= 0x20)
      {
        v24 = v19 & 0x7FFFFFE0;
        v127 = (a5 + 15);
        v128 = v367;
        v129 = v24;
        do
        {
          v130 = *v127;
          *(v128 - 1) = *(v127 - 1);
          *v128 = v130;
          v127 += 2;
          v128 += 2;
          v129 -= 32;
        }

        while (v129);
        if (v24 == v19)
        {
          goto LABEL_212;
        }

        if ((v19 & 0x18) == 0)
        {
LABEL_148:
          v136 = v19 - v24;
          v137 = &v365[v24];
          v138 = (a5 + v24 * a6 - 1);
          do
          {
            *v137++ = *v138;
            v138 += a6;
            --v136;
          }

          while (v136);
          goto LABEL_212;
        }
      }

      else
      {
        v24 = 0;
      }

      v131 = v24;
      v24 = v19 & 0x7FFFFFF8;
      v132 = (v131 + a5 - 1);
      v133 = &v365[v131];
      v134 = v131 - v24;
      do
      {
        v135 = *v132++;
        *v133++ = v135;
        v134 += 8;
      }

      while (v134);
      if (v24 != v19)
      {
        goto LABEL_148;
      }

LABEL_212:
      v209 = v23 + v15;
      v210 = v361;
      if ((0x18CuLL >> a4))
      {
        goto LABEL_229;
      }

      if (!v11)
      {
        v216 = 127;
        v217 = a8;
        v218 = a7;
        v219 = v22;
        v220 = v13;
        __memset_chk();
        v11 = 0;
        v13 = v220;
        v22 = v219;
        a7 = v218;
        a8 = v217;
        v210 = v361;
LABEL_228:
        v360 = v216;
LABEL_229:
        if (!a4)
        {
          v236 = &_MergedGlobals_27[8 * v13 + 16 + 4 * v11 + a3];
          return (*v236)(a7, a8, v210, v365);
        }

        if (a4 != 8 && a4 != 3)
        {
LABEL_268:
          v236 = &_MergedGlobals_27[4 * a4 + 72 + a3];
          return (*v236)(a7, a8, v210, v365);
        }

        if (!v11)
        {
          v237 = 127;
          v238 = a8;
          v239 = a7;
          __memset_chk();
          a7 = v239;
          a8 = v238;
LABEL_267:
          v360 = v237;
          goto LABEL_268;
        }

        v228 = a5 - a6;
        if ((*(a1 + 492) & 0x80000000) != 0)
        {
          v240 = v209;
          v241 = v209 + (8 << a3);
          if (v241 <= v22)
          {
            v232 = v13;
            v247 = a7;
            v248 = a8;
            if (a3 || v345 >= v14)
            {
              __memcpy_chk();
              memset(&v361[v19], v361[v19 - 1], v19);
            }

            else
            {
              __memcpy_chk();
            }

            a8 = v248;
            a7 = v247;
          }

          else
          {
            if (v240 + v19 > v22)
            {
              if (v22 >= v240)
              {
                v242 = v22 - v240;
                v243 = a8;
                v244 = v22;
                v245 = a7;
                v246 = v13;
                __memcpy_chk();
                memset(&v361[v242], v361[v242 - 1], v241 - v244);
                v13 = v246;
                a7 = v245;
                a8 = v243;
              }

              goto LABEL_263;
            }

            v232 = v13;
            v249 = a7;
            v250 = a8;
            if (a3 || v345 >= v14)
            {
              __memcpy_chk();
              v253 = &v361[v19];
              v255 = *(v253 - 1);
              v254 = v19;
            }

            else
            {
              v251 = v22;
              v252 = v22 - v240;
              __memcpy_chk();
              v253 = &v361[v252];
              v254 = v241 - v251;
              v255 = v361[v252 - 1];
            }

            memset(v253, v255, v254);
            a8 = v250;
            a7 = v249;
          }
        }

        else
        {
          if (a3)
          {
            v229 = 0;
          }

          else
          {
            v229 = v345 < v14;
          }

          v230 = v229;
          if (v230 == 1)
          {
            v231 = (a5 - a6);
            if (v13)
            {
LABEL_265:
              v237 = *(v228 - 1);
              v210 = v231;
              goto LABEL_267;
            }
          }

          v232 = v13;
          v233 = a7;
          v234 = a8;
          __memcpy_chk();
          v235 = &v361[v19];
          if (v230)
          {
            memcpy(v235, (v228 + v19), v19);
          }

          else
          {
            memset(v235, *(v235 - 1), v19);
          }

          a8 = v234;
          a7 = v233;
        }

        v13 = v232;
LABEL_263:
        if (!v13)
        {
          v237 = -127;
          goto LABEL_267;
        }

        v231 = v210;
        goto LABEL_265;
      }

      if ((*(a1 + 492) & 0x80000000) != 0)
      {
        if (v209 + v19 > v22)
        {
          if (v22 >= v209)
          {
            v221 = v22 - v209;
            v338 = a7;
            v343 = a8;
            v222 = v13;
            v223 = v11;
            v224 = v22;
            __memcpy_chk();
            memset(&v361[v221], v361[v221 - 1], v209 + v19 - v224);
            v22 = v224;
            v11 = v223;
            v13 = v222;
            a7 = v338;
            a8 = v343;
          }

LABEL_225:
          v210 = v361;
          if (!v13)
          {
            v216 = -127;
            v210 = v361;
            goto LABEL_228;
          }

          goto LABEL_226;
        }

        v211 = a8;
        v212 = a7;
        v225 = v22;
        v226 = v13;
        v227 = v11;
        __memcpy_chk();
        v11 = v227;
        v13 = v226;
        v22 = v225;
      }

      else
      {
        if (v345 < v14 && !a3)
        {
          v210 = (a5 - a6);
          if (v13)
          {
LABEL_226:
            v216 = *(a5 - a6 - 1);
            goto LABEL_228;
          }
        }

        v211 = a8;
        v212 = a7;
        v213 = v13;
        v214 = v19;
        v215 = v11;
        v19 = v22;
        __memcpy_chk();
        v22 = v19;
        v11 = v215;
        LODWORD(v19) = v214;
        v13 = v213;
      }

      a7 = v212;
      a8 = v211;
      goto LABEL_225;
    }

    v51 = *(v17 + v18);
    v52 = (-*(a1 + 496) >> (*(v20 + 12) + 3)) + v16;
    if (v52 + v19 > v51)
    {
      v53 = (v51 - v52);
      if (v53 < 1)
      {
        v155 = 0;
        goto LABEL_201;
      }

      if (v53 < 8 || a6 != 1)
      {
        v55 = 0;
LABEL_198:
        v190 = v53 - v55;
        v191 = &v365[v55];
        v192 = (a5 + v55 * a6 - 1);
        do
        {
          *v191++ = *v192;
          v192 += a6;
          --v190;
        }

        while (v190);
LABEL_200:
        v155 = v53;
LABEL_201:
        if (v155 < v19)
        {
          v342 = a8;
          v193 = a7;
          v194 = v13;
          v195 = v11;
          v196 = v22;
          memset(&v365[v155], *(a5 - 1 + (v53 - 1) * a6), (v19 + ~v155) + 1);
          v22 = v196;
          v11 = v195;
          v13 = v194;
          a7 = v193;
          a8 = v342;
        }

        goto LABEL_212;
      }

      if (v53 >= 0x20)
      {
        v55 = v53 & 0x7FFFFFE0;
        v181 = (a5 + 15);
        v182 = v367;
        v183 = v55;
        do
        {
          v184 = *v181;
          *(v182 - 1) = *(v181 - 1);
          *v182 = v184;
          v181 += 2;
          v182 += 2;
          v183 -= 32;
        }

        while (v183);
        if (v55 == v53)
        {
          goto LABEL_200;
        }

        if ((v53 & 0x18) == 0)
        {
          goto LABEL_198;
        }
      }

      else
      {
        v55 = 0;
      }

      v185 = v55;
      v55 = v53 & 0x7FFFFFF8;
      v186 = (v185 + a5 - 1);
      v187 = &v365[v185];
      v188 = v185 - v55;
      do
      {
        v189 = *v186++;
        *v187++ = v189;
        v188 += 8;
      }

      while (v188);
      if (v55 == v53)
      {
        goto LABEL_200;
      }

      goto LABEL_198;
    }

    if (v19 < 1)
    {
      goto LABEL_212;
    }

    v78 = 0;
    if (v19 >= 8 && a6 == 1)
    {
      if (v19 < 0x20)
      {
        v78 = 0;
LABEL_207:
        v201 = v78;
        v78 = v19 & 0x7FFFFFF8;
        v202 = (v201 + a5 - 1);
        v203 = &v365[v201];
        v204 = v201 - v78;
        do
        {
          v205 = *v202++;
          *v203++ = v205;
          v204 += 8;
        }

        while (v204);
        if (v78 == v19)
        {
          goto LABEL_212;
        }

        goto LABEL_210;
      }

      v78 = v19 & 0x7FFFFFE0;
      v197 = (a5 + 15);
      v198 = v367;
      v199 = v78;
      do
      {
        v200 = *v197;
        *(v198 - 1) = *(v197 - 1);
        *v198 = v200;
        v197 += 2;
        v198 += 2;
        v199 -= 32;
      }

      while (v199);
      if (v78 == v19)
      {
        goto LABEL_212;
      }

      if ((v19 & 0x18) != 0)
      {
        goto LABEL_207;
      }
    }

LABEL_210:
    v206 = v19 - v78;
    v207 = &v365[v78];
    v208 = (a5 + v78 * a6 - 1);
    do
    {
      *v207++ = *v208;
      v208 += a6;
      --v206;
    }

    while (v206);
    goto LABEL_212;
  }

  v25 = *(a1 + 624);
  v26 = 2 * a5;
  v27 = (4 << a3);
  v28 = a1 + 136 * a11;
  v29 = a4;
  v30 = extend_modes[a4];
  v31 = 128 << (v25 - 8);
  v32 = 24;
  v33 = 20;
  if (!a11)
  {
    v33 = 0;
  }

  v34 = *(v17 + v33);
  if (!a11)
  {
    v32 = 4;
  }

  v35 = -*(a1 + 488) >> (*(v28 + 8) + 3);
  if ((v30 & 2) != 0)
  {
    if (!v13)
    {
      if (a3 > 0x1D)
      {
        goto LABEL_24;
      }

      v49 = v31 | 1;
      if (v27 >= 0x10)
      {
        v50 = v27 & 0xFFFFFFFFFFFFFFF0;
        v116 = vdupq_n_s16(v49);
        v117 = v367;
        v118 = v50;
        do
        {
          v117[-1] = v116;
          *v117 = v116;
          v117 += 2;
          v118 -= 16;
        }

        while (v118);
        v119 = v27 - v50;
        if (v27 == v50)
        {
          goto LABEL_24;
        }

        if ((v27 & 0xC) == 0)
        {
          v258 = &v365[2 * v50];
          do
          {
            *v258++ = v49;
            --v119;
          }

          while (v119);
          goto LABEL_24;
        }
      }

      else
      {
        v50 = 0;
      }

      v120 = vdup_n_s16(v49);
      v121 = &v365[2 * v50];
      v122 = v27 - v50;
      do
      {
        *v121++ = v120;
        v122 -= 4;
      }

      while (v122);
      goto LABEL_24;
    }

    if ((*(a1 + 500) & 0x80000000) == 0)
    {
      if (v27 < 1)
      {
        goto LABEL_24;
      }

      if (a6 != 1 || &v366[-v26] < 0x20)
      {
        v39 = 0;
        goto LABEL_37;
      }

      if (v27 >= 0x10)
      {
        v39 = v27 & 0x7FFFFFF0;
        v160 = (v26 + 14);
        v161 = v367;
        v162 = v39;
        do
        {
          v163 = *v160;
          *(v161 - 1) = *(v160 - 1);
          *v161 = v163;
          v160 += 2;
          v161 += 2;
          v162 -= 16;
        }

        while (v162);
        if (v39 == v27)
        {
          goto LABEL_24;
        }

        if ((v27 & 0xC) == 0)
        {
LABEL_37:
          v40 = v27 - v39;
          v41 = &v365[2 * v39];
          v42 = (v26 + 2 * v39 * a6 - 2);
          do
          {
            *v41++ = *v42;
            v42 += a6;
            --v40;
          }

          while (v40);
          goto LABEL_24;
        }
      }

      else
      {
        v39 = 0;
      }

      v164 = (2 * v39 + v26 - 2);
      v165 = &v365[2 * v39];
      v166 = v27 - v39;
      do
      {
        v167 = *v164++;
        *v165++ = v167;
        v166 -= 4;
      }

      while (v166);
      goto LABEL_24;
    }

    v69 = *(v17 + v32);
    v70 = (-*(a1 + 496) >> (*(v28 + 12) + 3)) + v16;
    if (v70 + v27 > v69)
    {
      v71 = (v69 - v70);
      v72 = v71 - 1;
      if (v71 < 1)
      {
        LODWORD(v71) = 0;
        goto LABEL_160;
      }

      v73 = v71 >= 4 && a6 == 1;
      if (!v73 || &v366[-v26] < 0x20)
      {
        v74 = 0;
        goto LABEL_70;
      }

      if (v71 >= 0x10)
      {
        v74 = v71 & 0x7FFFFFF0;
        v283 = (v26 + 14);
        v284 = v367;
        v285 = v74;
        do
        {
          v286 = *v283;
          *(v284 - 1) = *(v283 - 1);
          *v284 = v286;
          v283 += 2;
          v284 += 2;
          v285 -= 16;
        }

        while (v285);
        if (v74 == v71)
        {
          goto LABEL_160;
        }

        if ((v71 & 0xC) == 0)
        {
LABEL_70:
          v75 = v71 - v74;
          v76 = &v365[2 * v74];
          v77 = (v26 + 2 * v74 * a6 - 2);
          do
          {
            *v76++ = *v77;
            v77 += a6;
            --v75;
          }

          while (v75);
          goto LABEL_160;
        }
      }

      else
      {
        v74 = 0;
      }

      v287 = v74;
      v74 = v71 & 0x7FFFFFFC;
      v288 = (2 * v287 + v26 - 2);
      v289 = &v365[2 * v287];
      v290 = v287 - v74;
      do
      {
        v291 = *v288++;
        *v289++ = v291;
        v290 += 4;
      }

      while (v290);
      if (v74 != v71)
      {
        goto LABEL_70;
      }

LABEL_160:
      if (v71 >= v27)
      {
        goto LABEL_24;
      }

      v156 = v71;
      v157 = *(v26 - 2 + 2 * v72 * a6);
      v158 = v27 - v71;
      if (v158 < 4)
      {
        v159 = v156;
        goto LABEL_353;
      }

      if (v158 >= 0x10)
      {
        v173 = v158 & 0xFFFFFFFFFFFFFFF0;
        v275 = vdupq_n_s16(v157);
        v276 = &v367[v156];
        v277 = v158 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v276[-1] = v275;
          *v276 = v275;
          v276 += 2;
          v277 -= 16;
        }

        while (v277);
        if (v158 == v173)
        {
          goto LABEL_24;
        }

        if ((v158 & 0xC) == 0)
        {
          v159 = v173 + v156;
          goto LABEL_353;
        }
      }

      else
      {
        v173 = 0;
      }

      v159 = (v158 & 0xFFFFFFFFFFFFFFFCLL) + v156;
      v278 = vdup_n_s16(v157);
      v279 = v173 - (v158 & 0xFFFFFFFFFFFFFFFCLL);
      v280 = &v365[2 * v173 + 2 * v156];
      do
      {
        *v280++ = v278;
        v279 += 4;
      }

      while (v279);
      if (v158 == (v158 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_24;
      }

LABEL_353:
      v325 = v27 - v159;
      v326 = &v365[2 * v159];
      do
      {
        *v326++ = v157;
        --v325;
      }

      while (v325);
      goto LABEL_24;
    }

    if (v27 < 1)
    {
      goto LABEL_24;
    }

    if (a6 != 1 || &v366[-v26] < 0x20)
    {
      v79 = 0;
      goto LABEL_83;
    }

    if (v27 >= 0x10)
    {
      v79 = v27 & 0x7FFFFFF0;
      v292 = (v26 + 14);
      v293 = v367;
      v294 = v79;
      do
      {
        v295 = *v292;
        *(v293 - 1) = *(v292 - 1);
        *v293 = v295;
        v292 += 2;
        v293 += 2;
        v294 -= 16;
      }

      while (v294);
      if (v79 == v27)
      {
        goto LABEL_24;
      }

      if ((v27 & 0xC) == 0)
      {
LABEL_83:
        v80 = v27 - v79;
        v81 = &v365[2 * v79];
        v82 = (v26 + 2 * v79 * a6 - 2);
        do
        {
          *v81++ = *v82;
          v82 += a6;
          --v80;
        }

        while (v80);
        goto LABEL_24;
      }
    }

    else
    {
      v79 = 0;
    }

    v296 = (2 * v79 + v26 - 2);
    v297 = &v365[2 * v79];
    v298 = v27 - v79;
    do
    {
      v299 = *v296++;
      *v297++ = v299;
      v298 -= 4;
    }

    while (v298);
  }

LABEL_24:
  v36 = v35 + v15;
  v37 = &v363;
  if ((v30 & 4) == 0)
  {
    goto LABEL_94;
  }

  if (!v11)
  {
    v47 = v31 - 1;
    if (a3 <= 0x1D)
    {
      if (v27 >= 0x10)
      {
        v48 = v27 & 0xFFFFFFFFFFFFFFF0;
        v83 = vdupq_n_s16(v47);
        v84 = v364;
        v85 = v48;
        do
        {
          v84[-1] = v83;
          *v84 = v83;
          v84 += 2;
          v85 -= 16;
        }

        while (v85);
        v86 = v27 - v48;
        if (v27 == v48)
        {
          goto LABEL_92;
        }

        if ((v27 & 0xC) == 0)
        {
          v257 = &v364[v48 - 8];
          do
          {
            *v257++ = v47;
            --v86;
          }

          while (v86);
          goto LABEL_92;
        }
      }

      else
      {
        v48 = 0;
      }

      v87 = vdup_n_s16(v47);
      v88 = &v364[v48 - 8];
      v89 = v27 - v48;
      do
      {
        *v88++ = v87;
        v89 -= 4;
      }

      while (v89);
    }

LABEL_92:
    v37 = &v363;
    goto LABEL_93;
  }

  v38 = v26 - 2 * a6;
  if ((*(a1 + 492) & 0x80000000) == 0)
  {
    if (v345 < v14 && !a3)
    {
      v37 = (v26 - 2 * a6);
      if (v13)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_58;
  }

  v56 = v36 + v27;
  if (v36 + v27 <= v34)
  {
LABEL_58:
    v347 = 128 << (v25 - 8);
    v340 = v34;
    v63 = a8;
    v64 = a7;
    v65 = v13;
    v66 = v11;
    v67 = v36;
    v68 = v27;
    __memcpy_chk();
    LODWORD(v27) = v68;
    v36 = v67;
    v34 = v340;
    v31 = v347;
    v11 = v66;
    v29 = a4;
    v13 = v65;
    v38 = v26 - 2 * a6;
    a7 = v64;
    a8 = v63;
    goto LABEL_59;
  }

  if (v34 < v36)
  {
    goto LABEL_59;
  }

  v344 = v30;
  v333 = v27;
  v335 = a7;
  v57 = 128 << (v25 - 8);
  v332 = v13;
  v58 = v11;
  v339 = a8;
  __memcpy_chk();
  v59 = &v364[v34 - v36 - 8];
  v60 = *(v59 - 1);
  v61 = v56 - v34;
  if ((v56 - v34) < 4)
  {
    v62 = 0;
    a7 = v335;
    a8 = v339;
    v13 = v332;
    v11 = v58;
    v31 = v57;
    LODWORD(v27) = v333;
    v30 = v344;
    goto LABEL_348;
  }

  v172 = v61;
  if (v61 >= 0x10)
  {
    v268 = vdupq_n_s16(v60);
    v62 = v61 & 0xFFFFFFFFFFFFFFF0;
    v269 = &v359[2 * v34 + 48 + -2 * v36];
    v270 = v172 & 0xFFFFFFFFFFFFFFF0;
    a7 = v335;
    a8 = v339;
    v13 = v332;
    v11 = v58;
    v31 = v57;
    LODWORD(v27) = v333;
    do
    {
      v269[-1] = v268;
      *v269 = v268;
      v269 += 2;
      v270 -= 16;
    }

    while (v270);
    v30 = v344;
    if (v62 == v172)
    {
      goto LABEL_59;
    }

    if ((v172 & 0xC) == 0)
    {
      v59 += v62;
LABEL_348:
      v323 = v62 + v34 - v56;
      do
      {
        *v59++ = v60;
        v324 = __CFADD__(v323++, 1);
      }

      while (!v324);
      goto LABEL_59;
    }
  }

  else
  {
    v62 = 0;
    a7 = v335;
    a8 = v339;
    v13 = v332;
    v11 = v58;
    v31 = v57;
    LODWORD(v27) = v333;
    v30 = v344;
  }

  v271 = v62;
  v62 = v172 & 0xFFFFFFFFFFFFFFFCLL;
  v59 += v172 & 0xFFFFFFFFFFFFFFFCLL;
  v272 = vdup_n_s16(v60);
  v273 = &v359[2 * v271 + 2 * v34 - 2 * v36 + 32];
  v274 = v271 - (v172 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    *v273++ = v272;
    v274 += 4;
  }

  while (v274);
  if (v62 != v172)
  {
    goto LABEL_348;
  }

LABEL_59:
  v37 = &v363;
  if (!v13)
  {
    LOWORD(v47) = v31 | 1;
    goto LABEL_92;
  }

LABEL_60:
  LOWORD(v47) = *(v38 - 2);
LABEL_93:
  v362[0] = v47;
LABEL_94:
  if ((v30 & 8) != 0)
  {
    if (!v11)
    {
      v92 = v31 - 1;
      if (a3 <= 0x1C)
      {
        v93 = 8 << a3;
        v94 = vdupq_n_s16(v92);
        if (v93 >= 0x10)
        {
          v95 = v93 & 0xFFFFFFFFFFFFFFF0;
          v123 = v364;
          v124 = v93 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v123[-1] = v94;
            *v123 = v94;
            v123 += 2;
            v124 -= 16;
          }

          while (v124);
          v125 = v93 - v95;
          if (v93 == v95)
          {
            goto LABEL_371;
          }

          if ((v93 & 8) == 0)
          {
            v126 = &v364[v95 - 8];
            do
            {
              *v126++ = v92;
              --v125;
            }

            while (v125);
            goto LABEL_371;
          }
        }

        else
        {
          v95 = 0;
        }

        v96 = &v364[v95 - 8];
        v97 = v93 - v95;
        do
        {
          *v96++ = v94;
          v97 -= 8;
        }

        while (v97);
      }

LABEL_371:
      v362[0] = v92;
      goto LABEL_372;
    }

    v352 = (v26 - 2 * a6);
    if ((*(a1 + 492) & 0x80000000) == 0)
    {
      if (a3)
      {
        v90 = 0;
      }

      else
      {
        v90 = v345 < v14;
      }

      v91 = v90;
      if (v91 == 1 && v13)
      {
        v37 = v352;
        goto LABEL_372;
      }

      v349 = v31;
      v356 = v29;
      v106 = v11;
      v107 = v13;
      v108 = a7;
      v109 = a8;
      v110 = v37;
      v111 = v27;
      v334 = v27;
      v112 = v27;
      __memcpy_chk();
      v113 = &v364[v112 - 8];
      if (v91)
      {
        memcpy(v113, v352 + 2 * v111, v112 * 2);
        v37 = v110;
        a8 = v109;
        a7 = v108;
        v13 = v107;
        v11 = v106;
        v29 = v356;
        goto LABEL_185;
      }

      v37 = v110;
      a8 = v109;
      a7 = v108;
      v13 = v107;
      v11 = v106;
      v29 = v356;
      if (a3 <= 0x1D)
      {
        v114 = *(v113 - 1);
        if (v334 < 0x10)
        {
          v115 = 0;
          goto LABEL_183;
        }

        v115 = v111 & 0xFFFFFFFFFFFFFFF0;
        v174 = vdupq_n_s16(v114);
        v175 = &v364[v111];
        v176 = v111 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v175[-1] = v174;
          *v175 = v174;
          v175 += 2;
          v176 -= 16;
        }

        while (v176);
        v177 = v111 - v115;
        if (v111 != v115)
        {
          if ((v111 & 0xC) != 0)
          {
LABEL_183:
            v178 = vdup_n_s16(v114);
            v179 = &v359[2 * v115 + 32 + 2 * v111];
            v180 = v111 - v115;
            do
            {
              *v179++ = v178;
              v180 -= 4;
            }

            while (v180);
            goto LABEL_185;
          }

          v321 = &v113[v115];
          do
          {
            *v321++ = v114;
            --v177;
          }

          while (v177);
        }
      }

LABEL_185:
      if (!v13)
      {
        LOWORD(v92) = v349 | 1;
        goto LABEL_371;
      }

LABEL_369:
      LOWORD(v92) = *(v352 - 1);
      goto LABEL_371;
    }

    v98 = v36 + (8 << a3);
    if (v98 <= v34)
    {
      if (!a3 && v345 < v14)
      {
        v363 = *v352;
        goto LABEL_368;
      }

      v139 = v27;
      v350 = v31;
      v140 = v37;
      v141 = a8;
      v142 = a7;
      v143 = v13;
      v144 = v11;
      v145 = v27;
      __memcpy_chk();
      LOWORD(v31) = v350;
      v11 = v144;
      v13 = v143;
      a7 = v142;
      a8 = v141;
      v37 = v140;
      if (a3 <= 0x1D)
      {
        v146 = v362[v139];
        if (v145 >= 0x10)
        {
          v147 = v145 & 0xFFFFFFFFFFFFFFF0;
          v259 = vdupq_n_s16(v146);
          v260 = &v364[v145];
          v261 = v147;
          do
          {
            v260[-1] = v259;
            *v260 = v259;
            v260 += 2;
            v261 -= 16;
          }

          while (v261);
          v262 = v145 - v147;
          if (v145 == v147)
          {
            goto LABEL_368;
          }

          if ((v145 & 0xC) == 0)
          {
            v322 = &v364[v139 - 8 + v147];
            do
            {
              *v322++ = v146;
              --v262;
            }

            while (v262);
            goto LABEL_368;
          }
        }

        else
        {
          v147 = 0;
        }

        v263 = vdup_n_s16(v146);
        v264 = &v359[2 * v147 + 32 + 2 * v145];
        v265 = v145 - v147;
        do
        {
          *v264++ = v263;
          v265 -= 4;
        }

        while (v265);
      }

LABEL_368:
      if (!v13)
      {
        LOWORD(v92) = v31 | 1;
        goto LABEL_371;
      }

      goto LABEL_369;
    }

    if (v36 + v27 > v34)
    {
      if (v34 < v36)
      {
        goto LABEL_368;
      }

      v348 = v31;
      v355 = v11;
      v99 = v13;
      v336 = a7;
      v100 = a8;
      v101 = v37;
      __memcpy_chk();
      v102 = &v364[v34 - v36 - 8];
      v103 = *(v102 - 1);
      v104 = v98 - v34;
      if ((v98 - v34) < 4)
      {
        v105 = 0;
        v37 = v101;
        a8 = v100;
        a7 = v336;
        v13 = v99;
        v11 = v355;
        LOWORD(v31) = v348;
        goto LABEL_360;
      }

      v266 = v104;
      if (v104 >= 0x10)
      {
        v307 = vdupq_n_s16(v103);
        v105 = v104 & 0xFFFFFFFFFFFFFFF0;
        v267 = v36;
        LOWORD(v31) = v348;
        v308 = &v359[2 * v34 + 48 + -2 * v36];
        v309 = v266 & 0xFFFFFFFFFFFFFFF0;
        v37 = v101;
        a8 = v100;
        a7 = v336;
        v13 = v99;
        v11 = v355;
        do
        {
          v308[-1] = v307;
          *v308 = v307;
          v308 += 2;
          v309 -= 16;
        }

        while (v309);
        if (v105 == v266)
        {
          goto LABEL_368;
        }

        if ((v266 & 0xC) == 0)
        {
          v102 += v105;
LABEL_360:
          v328 = v105 + v34 - v98;
          do
          {
            *v102++ = v103;
            v324 = __CFADD__(v328++, 1);
          }

          while (!v324);
          goto LABEL_368;
        }
      }

      else
      {
        v105 = 0;
        v37 = v101;
        a8 = v100;
        a7 = v336;
        v13 = v99;
        v11 = v355;
        v267 = v36;
        LOWORD(v31) = v348;
      }

      v310 = v105;
      v105 = v266 & 0xFFFFFFFFFFFFFFFCLL;
      v102 += v266 & 0xFFFFFFFFFFFFFFFCLL;
      v311 = vdup_n_s16(v103);
      v312 = &v359[2 * v310 + 2 * v34 - 2 * v267 + 32];
      v313 = v310 - (v266 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        *v312++ = v311;
        v313 += 4;
      }

      while (v313);
      if (v105 != v266)
      {
        goto LABEL_360;
      }

      goto LABEL_368;
    }

    v148 = v31;
    v357 = v11;
    v149 = v13;
    v337 = a7;
    v341 = a8;
    v150 = v37;
    if (a3 || v345 >= v14)
    {
      v168 = v27;
      v169 = v27;
      __memcpy_chk();
      v37 = v150;
      a7 = v337;
      a8 = v341;
      v13 = v149;
      v11 = v357;
      LOWORD(v31) = v148;
      if (a3 > 0x1D)
      {
        goto LABEL_368;
      }

      v170 = v362[v168];
      if (v169 >= 0x10)
      {
        v171 = v169 & 0xFFFFFFFFFFFFFFF0;
        v300 = vdupq_n_s16(v170);
        v301 = &v364[v169];
        v302 = v171;
        do
        {
          v301[-1] = v300;
          *v301 = v300;
          v301 += 2;
          v302 -= 16;
        }

        while (v302);
        v303 = v169 - v171;
        if (v169 == v171)
        {
          goto LABEL_368;
        }

        if ((v169 & 0xC) == 0)
        {
          v327 = &v364[v168 - 8 + v171];
          do
          {
            *v327++ = v170;
            --v303;
          }

          while (v303);
          goto LABEL_368;
        }
      }

      else
      {
        v171 = 0;
      }

      v304 = vdup_n_s16(v170);
      v305 = &v359[2 * v171 + 32 + 2 * v169];
      v306 = v169 - v171;
      do
      {
        *v305++ = v304;
        v306 -= 4;
      }

      while (v306);
      goto LABEL_368;
    }

    __memcpy_chk();
    v151 = &v364[v34 - v36 - 8];
    v152 = *(v151 - 1);
    v153 = v98 - v34;
    if ((v98 - v34) < 4)
    {
      v154 = 0;
      v37 = v150;
      a7 = v337;
      a8 = v341;
      v13 = v149;
      v11 = v357;
      LOWORD(v31) = v148;
      goto LABEL_365;
    }

    v281 = v153;
    LOWORD(v31) = v148;
    if (v153 >= 0x10)
    {
      v314 = vdupq_n_s16(v152);
      v154 = v153 & 0xFFFFFFFFFFFFFFF0;
      v282 = v36;
      v315 = &v359[2 * v34 + 48 + -2 * v36];
      v316 = v281 & 0xFFFFFFFFFFFFFFF0;
      v37 = v150;
      a7 = v337;
      a8 = v341;
      v13 = v149;
      v11 = v357;
      do
      {
        v315[-1] = v314;
        *v315 = v314;
        v315 += 2;
        v316 -= 16;
      }

      while (v316);
      if (v154 == v281)
      {
        goto LABEL_368;
      }

      if ((v281 & 0xC) == 0)
      {
        v151 += v154;
        goto LABEL_365;
      }
    }

    else
    {
      v154 = 0;
      v37 = v150;
      a7 = v337;
      a8 = v341;
      v13 = v149;
      v11 = v357;
      v282 = v36;
    }

    v317 = v154;
    v154 = v281 & 0xFFFFFFFFFFFFFFFCLL;
    v151 += v281 & 0xFFFFFFFFFFFFFFFCLL;
    v318 = vdup_n_s16(v152);
    v319 = &v359[2 * v317 + 2 * v34 - 2 * v282 + 32];
    v320 = v317 - (v281 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v319++ = v318;
      v320 += 4;
    }

    while (v320);
    if (v154 == v281)
    {
      goto LABEL_368;
    }

LABEL_365:
    v329 = v154 + v34 - v98;
    do
    {
      *v151++ = v152;
      v324 = __CFADD__(v329++, 1);
    }

    while (!v324);
    goto LABEL_368;
  }

LABEL_372:
  v330 = a3;
  v331 = &_MergedGlobals_27[8 * v13 + 4 * v11 + v330];
  if (a4)
  {
    v331 = &_MergedGlobals_27[4 * v29 + 32 + v330];
  }

  return (*v331)(2 * a7, a8, v37, v365);
}