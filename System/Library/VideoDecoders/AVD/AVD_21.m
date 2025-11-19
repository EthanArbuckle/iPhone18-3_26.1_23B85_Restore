void AV1_Syntax::lr_params(AV1_Syntax *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(this + 12);
  if (*(v2 + 163) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "lr_params";
    v37 = 1024;
    v38 = 4307;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v2 = *(this + 12);
  }

  if ((*(v2 + 156) & 1) == 0)
  {
    v3 = *(v2 + 440);
    if (v3 >= 1)
    {
      v4 = 1648;
      v34 = *(v2 + 440);
      v5 = 1;
      v6 = 1;
      do
      {
        bits = AV1_Syntax::get_bits(this, "lr_type", 1u);
        v8 = AV1_Syntax::get_bits(this, "lr_type", 1u);
        v9 = *(this + 12);
        v10 = v6 & 1;
        if (v4 != 1648)
        {
          v10 = 0;
        }

        if (bits)
        {
          v5 = 0;
          if (v8)
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          *(v9 + v4) = v11;
          v6 = v10;
        }

        else
        {
          if (v8)
          {
            v12 = 3;
          }

          else
          {
            v12 = 0;
          }

          *(v9 + v4) = v12;
          if (v8)
          {
            v6 = v10;
            v5 = 0;
          }
        }

        v4 += 4;
        --v3;
      }

      while (v3);
      if (v5)
      {
        v13 = v34;
        memset_pattern16((v9 + 1660), &unk_27775E140, 4 * v34);
      }

      else
      {
        v14 = *(*(this + 11) + 28);
        v15 = v14 == 12 || v14 == 15;
        v13 = v34;
        if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v36 = "lr_params";
          v37 = 1024;
          v38 = 4329;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
          v14 = *(*(this + 11) + 28);
        }

        if (v14 == 15)
        {
          v16 = 128;
        }

        else
        {
          v16 = 64;
        }

        v17 = (v34 + 3) & 0xFFFFFFFC;
        v18 = vdupq_n_s64(v34 - 1);
        v19 = xmmword_27775BCE0;
        v20 = xmmword_27775BCD0;
        v21 = (*(this + 12) + 1672);
        v22 = vdupq_n_s64(4uLL);
        do
        {
          v23 = vmovn_s64(vcgeq_u64(v18, v20));
          if (vuzp1_s16(v23, *v18.i8).u8[0])
          {
            *(v21 - 3) = v16;
          }

          if (vuzp1_s16(v23, *&v18).i8[2])
          {
            *(v21 - 2) = v16;
          }

          if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
          {
            *(v21 - 1) = v16;
            *v21 = v16;
          }

          v19 = vaddq_s64(v19, v22);
          v20 = vaddq_s64(v20, v22);
          v21 += 4;
          v17 -= 4;
        }

        while (v17);
        if (v14 == 15)
        {
          v9 = *(this + 12);
          v24 = *(v9 + 1660);
        }

        else
        {
          v25 = AV1_Syntax::get_bits(this, "lr_unit_shift", 1u);
          v9 = *(this + 12);
          v24 = *(v9 + 1660) << v25;
          *(v9 + 1660) = v24;
        }

        if (v24 >= 65)
        {
          v26 = AV1_Syntax::get_bits(this, "lr_unit_shift", 1u);
          v9 = *(this + 12);
          *(v9 + 1660) <<= v26;
        }
      }

      if (v13 == 1)
      {
        *(v9 + 1652) = 0;
      }

      else
      {
        v27 = *(this + 11);
        v29 = *(v27 + 100);
        v28 = *(v27 + 104);
        if (v29 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v29;
        }

        v31 = *(v9 + 1660);
        if (v30)
        {
          v32 = v6 == 0;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          v31 >>= AV1_Syntax::get_bits(this, "lr_uv_shift", 1u) * v30;
          v9 = *(this + 12);
        }

        *(v9 + 1664) = v31;
        *(v9 + 1668) = v31;
      }
    }
  }
}

void *AV1_Syntax::read_tx_mode(void *this)
{
  v1 = this[12];
  if (*(v1 + 162) == 1)
  {
    *(v1 + 164) = 0;
  }

  else
  {
    v2 = this;
    this = AV1_Syntax::get_bits(this, "tx_mode_select", 1u);
    v3 = v2[12];
    if (this)
    {
      *(v3 + 164) = 2;
    }

    else
    {
      *(v3 + 164) = 1;
    }
  }

  return this;
}

void *AV1_Syntax::frame_reference_mode(void *this)
{
  v1 = this[12];
  if (*(v1 + 2948))
  {
    v2 = 0;
  }

  else
  {
    v3 = this;
    this = AV1_Syntax::get_bits(this, "reference_select", 1u);
    v2 = 2 * (this != 0);
    v1 = v3[12];
  }

  *(v1 + 72) = v2;
  return this;
}

uint64_t AV1_Syntax::skip_mode_params(uint64_t this)
{
  v1 = *(this + 88);
  v2 = *(this + 96);
  *(v2 + 96) = -1;
  v4 = *(v1 + 40);
  v3 = (v1 + 40);
  *(v2 + 88) = 0;
  if (v4 && (*(v2 + 68) | 2) != 2 && *(v2 + 72))
  {
    v5 = this;
    v6 = 0;
    v7 = -1;
    v8 = *(v2 + 76);
    v9 = 0x7FFFFFFF;
    v10 = -1;
    v11 = -1;
    do
    {
      v12 = *(v5 + 96);
      v13 = *(v12 + 4 * v6 + 1692);
      if (v13 != -1)
      {
        v14 = *(v12 + 8 * v13 + 1848);
        if (v14)
        {
          v15 = *(v14 + 4);
          this = AV1_Syntax::get_relative_dist(v5, v3, v15, v8);
          if ((this & 0x80000000) != 0)
          {
            if (v7 == -1 || (this = AV1_Syntax::get_relative_dist(v5, v3, v15, v7), this >= 1))
            {
              v11 = v6;
              v7 = v15;
            }
          }

          else
          {
            this = AV1_Syntax::get_relative_dist(v5, v3, v15, v8);
            if (this >= 1)
            {
              if (v9 == 0x7FFFFFFF || (this = AV1_Syntax::get_relative_dist(v5, v3, v15, v9), (this & 0x80000000) != 0))
              {
                v10 = v6;
                v9 = v15;
              }
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != 7);
    if (v11 != -1 && v10 != -1)
    {
      goto LABEL_31;
    }

    if (v11 != -1 && v10 == -1)
    {
      v16 = 0;
      v17 = -1;
      do
      {
        v18 = *(v5 + 96);
        v19 = *(v18 + 4 * v16 + 1692);
        if (v19 != -1)
        {
          v20 = *(v18 + 8 * v19 + 1848);
          if (v20)
          {
            if (v7 != -1)
            {
              v21 = *(v20 + 4);
              this = AV1_Syntax::get_relative_dist(v5, v3, v21, v7);
              if ((this & 0x80000000) != 0)
              {
                if (v17 == -1 || (this = AV1_Syntax::get_relative_dist(v5, v3, v21, v17), this >= 1))
                {
                  v10 = v16;
                  v17 = v21;
                }
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != 7);
      if (v17 != -1)
      {
LABEL_31:
        *(v2 + 88) = 1;
        if (v11 >= v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = v11;
        }

        if (v11 <= v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = v11;
        }

        *(v2 + 96) = v22;
        *(v2 + 100) = v23;
      }
    }
  }

  return this;
}

AV1_Syntax *AV1_Syntax::global_motion_params(AV1_Syntax *this)
{
  v1 = this;
  v2 = *(this + 12);
  v3 = (v2 + 2004);
  v4 = 7;
  do
  {
    *(v3 - 1) = xmmword_27775E120;
    *v3 = xmmword_27775E130;
    v3 = (v3 + 44);
    --v4;
  }

  while (v4);
  if (!*(v2 + 2948))
  {
    for (i = 2029; i != 2337; i += 44)
    {
      v6 = *(v1 + 12);
      v7 = *(v6 + 112);
      if (v7)
      {
        v8 = (v7 + i - 1253);
      }

      else
      {
        v8 = &av1_default_warp_params;
      }

      if (!AV1_Syntax::read_global_motion_params(v1, v6 + i - 41, v8))
      {
        *(*(v1 + 12) + i) = 1;
      }
    }

    v9 = *(v1 + 12);
    v10 = (*(v9 + 120) + 732);

    return memcpy(v10, (v9 + 1944), 0x160uLL);
  }

  return this;
}

uint64_t AV1_Syntax::film_grain_params(AV1_Syntax *this)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  if (!*(*(this + 11) + 113) || !*(v1 + 132) || (bits = AV1_Syntax::get_bits(this, "apply_grain", 1u), v1 = *(this + 12), (*(v1 + 2296) = bits) == 0))
  {
    bzero((v1 + 2296), 0x288uLL);
    return 0;
  }

  v4 = AV1_Syntax::get_bits(this, "grain_seed", 0x10u);
  v5 = *(this + 12);
  v5[575] = v4;
  if (v4 >= 0x10000)
  {
    v6 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  if (v5[17] != 1)
  {
    v5[576] = 1;
    v5[736] = *(*(this + 11) + 76);
LABEL_14:
    v11 = AV1_Syntax::get_bits(this, "num_y_points", 4u);
    v6 = v11;
    v12 = *(this + 12);
    v12[578] = v11;
    if (v11 > 0xE)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:
        v67 = 136315394;
        v68 = "film_grain_params";
        v69 = 1024;
        v70 = v6;
        v13 = MEMORY[0x277D86220];
LABEL_17:
        _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v67, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }

    if (v11)
    {
      v14 = 0;
      while (1)
      {
        v15 = AV1_Syntax::get_bits(this, "point_y_value", 8u);
        v16 = v15;
        v17 = *(this + 12) + 4 * v14;
        *(v17 + 2372) = v15;
        if (v15 >= 0x100)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_138;
        }

        if (v14 && *(v17 + 2368) >= v15)
        {
          return 0xFFFFFFFFLL;
        }

        v18 = AV1_Syntax::get_bits(this, "point_y_scaling", 8u);
        v12 = *(this + 12);
        v12[v14 + 579] = v18;
        if (v18 >= 0x100)
        {
          break;
        }

        if (++v14 >= v12[578])
        {
          goto LABEL_28;
        }
      }

      v16 = v18;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_138;
    }

    LODWORD(v14) = 0;
LABEL_28:
    if (*(*(this + 11) + 81))
    {
      v12[607] = 0;
    }

    else
    {
      v23 = AV1_Syntax::get_bits(this, "chroma_scaling_from_luma", 1u);
      v12 = *(this + 12);
      v12[607] = v23;
      v24 = *(this + 11);
      if (!*(v24 + 81) && !v23 && (*(v24 + 100) != 1 || *(v24 + 104) != 1 || v12[578]))
      {
        v25 = AV1_Syntax::get_bits(this, "num_cb_points", 4u);
        v6 = v25;
        *(*(this + 12) + 2432) = v25;
        if (v25 > 0xA)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_16;
        }

        if (v25)
        {
          v36 = 0;
          while (1)
          {
            v37 = AV1_Syntax::get_bits(this, "point_cb_value", 8u);
            v16 = v37;
            v38 = *(this + 12) + 4 * v36;
            *(v38 + 2436) = v37;
            if (v37 >= 0x100)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_138;
            }

            if (v36 && *(v38 + 2432) >= v37)
            {
              return 0xFFFFFFFFLL;
            }

            v39 = AV1_Syntax::get_bits(this, "point_cb_scaling", 8u);
            v40 = *(this + 12);
            *(v40 + 4 * v36 + 2476) = v39;
            if (v39 >= 0x100)
            {
              break;
            }

            if (++v36 >= *(v40 + 2432))
            {
              goto LABEL_73;
            }
          }

          v16 = v39;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
LABEL_73:
          v41 = AV1_Syntax::get_bits(this, "num_cr_points", 4u);
          v6 = v41;
          v42 = *(this + 12);
          *(v42 + 2516) = v41;
          if (v41 > 0xA)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            goto LABEL_16;
          }

          if (!v41)
          {
            LODWORD(v14) = 0;
            v60 = 1;
LABEL_128:
            v63 = *(this + 11);
            if (*(v63 + 100) == 1 && *(v63 + 104) == 1 && ((v60 ^ (*(v42 + 2432) == 0)) & 1) != 0)
            {
              return 0xFFFFFFFFLL;
            }

LABEL_31:
            v19 = AV1_Syntax::get_bits(this, "grain_scaling_minus_8", 2u);
            v6 = v19 + 8;
            *(*(this + 12) + 2600) = v19 + 8;
            if (v19 >= 4)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_16;
            }

            v21 = AV1_Syntax::get_bits(this, "ar_coeff_lag", 2u);
            v6 = v21;
            v22 = *(this + 12);
            v22[651] = v21;
            if (v21 >= 4)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_16;
            }

            v28 = v21 + v21 * v21;
            v29 = 2 * v28;
            v30 = v22[578];
            v31 = v30 > 0;
            if (v30)
            {
              if (v21)
              {
                v32 = 652;
                v33 = 2 * v28;
                do
                {
                  v34 = AV1_Syntax::get_bits(this, "ar_coeffs_y_plus_128", 8u);
                  v22 = *(this + 12);
                  v22[v32++] = v34 - 128;
                  --v33;
                }

                while (v33);
              }

              v6 = v22[v14 + 652];
              if (v6 != v6)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 0xFFFFFFFFLL;
                }

                goto LABEL_16;
              }
            }

            v35 = v31 | (2 * v28);
            if (v22[607])
            {
              if (v35 < 1)
              {
                goto LABEL_99;
              }
            }

            else
            {
              if (v22[608])
              {
                v43 = v35 <= 0;
              }

              else
              {
                v43 = 1;
              }

              if (v43)
              {
LABEL_89:
                if (v22[629])
                {
                  v48 = v35 <= 0;
                }

                else
                {
                  v48 = 1;
                }

                if (!v48)
                {
LABEL_93:
                  if (v29 + v31 <= 1)
                  {
                    v49 = 1;
                  }

                  else
                  {
                    v49 = (v29 + v31);
                  }

                  v50 = 2804;
                  while (1)
                  {
                    v51 = AV1_Syntax::get_bits(this, "ar_coeffs_cr_plus_128", 8u);
                    v52 = v51 - 128;
                    *(*(this + 12) + v50) = v51 - 128;
                    if (v51 >= 0x100)
                    {
                      break;
                    }

                    v50 += 4;
                    if (!--v49)
                    {
                      goto LABEL_99;
                    }
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  v67 = 136315394;
                  v68 = "film_grain_params";
                  v69 = 1024;
                  v70 = v52;
                  v13 = MEMORY[0x277D86220];
                  goto LABEL_17;
                }

LABEL_99:
                v53 = AV1_Syntax::get_bits(this, "ar_coeff_shift_minus_6", 2u);
                v6 = v53 + 6;
                *(*(this + 12) + 2904) = v53 + 6;
                if (v53 >= 4)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_16;
                }

                v54 = AV1_Syntax::get_bits(this, "grain_scale_shift", 2u);
                v55 = *(this + 12);
                v55[727] = v54;
                if (v54 >= 4)
                {
                  v6 = v54;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  goto LABEL_16;
                }

                if (v55[608])
                {
                  *(*(this + 12) + 2912) = AV1_Syntax::get_bits(this, "cb_mult", 8u);
                  *(*(this + 12) + 2916) = AV1_Syntax::get_bits(this, "cb_luma_mult", 8u);
                  v61 = AV1_Syntax::get_bits(this, "cb_offset", 9u);
                  v55 = *(this + 12);
                  v55[730] = v61;
                }

                if (v55[629])
                {
                  v62 = AV1_Syntax::get_bits(this, "cr_mult", 8u);
                  *(*(this + 12) + 2924) = v62;
                  if (v62 >= 0x100)
                  {
                    v6 = v62;
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    goto LABEL_16;
                  }

                  v64 = AV1_Syntax::get_bits(this, "cr_luma_mult", 8u);
                  *(*(this + 12) + 2928) = v64;
                  if (v64 >= 0x100)
                  {
                    v6 = v64;
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    goto LABEL_16;
                  }

                  v65 = AV1_Syntax::get_bits(this, "cr_offset", 9u);
                  *(*(this + 12) + 2932) = v65;
                  if (v65 >= 0x200)
                  {
                    v6 = v65;
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    goto LABEL_16;
                  }
                }

                *(*(this + 12) + 2936) = AV1_Syntax::get_bits(this, "overlap_flag", 1u);
                v66 = AV1_Syntax::get_bits(this, "clip_to_restricted_range", 1u);
                result = 0;
                *(*(this + 12) + 2940) = v66;
                return result;
              }
            }

            if (v29 + v31 <= 1)
            {
              v44 = 1;
            }

            else
            {
              v44 = (v29 + v31);
            }

            v45 = 676;
            do
            {
              v46 = AV1_Syntax::get_bits(this, "ar_coeffs_cb_plus_128", 8u);
              v47 = v46 - 128;
              v22 = *(this + 12);
              v22[v45] = v46 - 128;
              if (v46 >= 0x100)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 0xFFFFFFFFLL;
                }

                v67 = 136315394;
                v68 = "film_grain_params";
                v69 = 1024;
                v70 = v47;
                v13 = MEMORY[0x277D86220];
                goto LABEL_17;
              }

              ++v45;
              --v44;
            }

            while (v44);
            if (!v22[607])
            {
              goto LABEL_89;
            }

            if (v35 >= 1)
            {
              goto LABEL_93;
            }

            goto LABEL_99;
          }

          v14 = 0;
          while (1)
          {
            v56 = AV1_Syntax::get_bits(this, "point_cr_value", 8u);
            v16 = v56;
            v57 = *(this + 12) + 4 * v14;
            *(v57 + 2520) = v56;
            if (v56 >= 0x100)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_138;
            }

            if (v14 && *(v57 + 2516) >= v56)
            {
              return 0xFFFFFFFFLL;
            }

            v58 = AV1_Syntax::get_bits(this, "point_cr_scaling", 8u);
            v42 = *(this + 12);
            *(v42 + 4 * v14 + 2560) = v58;
            if (v58 >= 0x100)
            {
              break;
            }

            ++v14;
            v59 = *(v42 + 2516);
            if (v14 >= v59)
            {
              v60 = v59 == 0;
              goto LABEL_128;
            }
          }

          v16 = v58;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }
        }

LABEL_138:
        v67 = 136315394;
        v68 = "film_grain_params";
        v69 = 1024;
        v70 = v16;
        v13 = MEMORY[0x277D86220];
        goto LABEL_17;
      }
    }

    v12[608] = 0;
    v12[629] = 0;
    goto LABEL_31;
  }

  v8 = AV1_Syntax::get_bits(this, "update_grain", 1u);
  v9 = *(this + 12);
  *(v9 + 2304) = v8;
  *(v9 + 2944) = *(*(this + 11) + 76);
  if (v8)
  {
    goto LABEL_14;
  }

  v6 = AV1_Syntax::get_bits(this, "film_grain_params_ref_idx", 3u);
  v10 = *(this + 12);
  *(v10 + 2308) = v6;
  if (v6 > 7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  result = 0xFFFFFFFFLL;
  while (v6 != *(v10 + 1692 + v20))
  {
    v20 += 4;
    if (v20 == 28)
    {
      return result;
    }
  }

  v26 = *(v10 + 8 * v6 + 1848);
  if (!v26 || !*(v26 + 1088))
  {
    return 0xFFFFFFFFLL;
  }

  v27 = *(v10 + 2300);
  memcpy((v10 + 2296), (v26 + 1092), 0x28CuLL);
  result = 0;
  *(*(this + 12) + 2300) = v27;
  return result;
}

uint64_t AV1_Syntax::setup_motion_field_info(uint64_t this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 88);
  v1 = *(this + 96);
  *(v1 + 130) = 0;
  *(v1 + 128) = 0;
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (v4)
  {
    v5 = this;
    v6 = 0;
    v7 = *(this + 96);
    v8 = *(v7 + 120);
    v9 = *(v8 + 4);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v10 = v8 + 72;
    do
    {
      v11 = *(v10 + 8 * v6);
      *(v18 + v6) = v11;
      if (v11)
      {
        LODWORD(v11) = *(v10 + 4 * v6 - 64);
      }

      v17[v6++] = v11;
    }

    while (v6 != 7);
    if (*&v18[0])
    {
      if (*(*&v18[0] + 32) == v17[3])
      {
        v12 = 0;
        v13 = 1;
      }

      else
      {
        v13 = 1;
        if (AV1_Syntax::is_projection_valid(this, 1u))
        {
          *(v7 + 128) = 1;
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
      v13 = 2;
    }

    if (AV1_Syntax::get_relative_dist(v5, v3, v17[4], v9) >= 1 && AV1_Syntax::is_projection_valid(v5, 5u))
    {
      v14 = *(v5 + 12) + v12++;
      *(v14 + 128) = 5;
      --v13;
    }

    if (AV1_Syntax::get_relative_dist(v5, v3, v17[5], v9) >= 1 && AV1_Syntax::is_projection_valid(v5, 6u))
    {
      v15 = *(v5 + 12) + v12++;
      *(v15 + 128) = 6;
      --v13;
    }

    this = AV1_Syntax::get_relative_dist(v5, v3, v17[6], v9);
    if (this >= 1 && (v13 & 0x80000000) == 0)
    {
      this = AV1_Syntax::is_projection_valid(v5, 7u);
      if (!this)
      {
LABEL_24:
        this = AV1_Syntax::is_projection_valid(v5, 2u);
        if (this)
        {
          *(*(v5 + 12) + v12 + 128) = 2;
        }

        return this;
      }

      v16 = *(v5 + 12) + v12++;
      *(v16 + 128) = 7;
      --v13;
    }

    if (v13 < 0)
    {
      return this;
    }

    goto LABEL_24;
  }

  return this;
}

BOOL AV1_Syntax::is_projection_valid(AV1_Syntax *this, unsigned __int8 a2)
{
  v2 = a2 - 1;
  if (v2 > 7)
  {
    return 0;
  }

  v3 = *(this + 12);
  v4 = *(v3 + 4 * v2 + 1692);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(v3 + 8 * v4 + 1848);
  if (!v5)
  {
    return 0;
  }

  if ((v5[486] | 2) == 2)
  {
    return 0;
  }

  v7 = *(v3 + 120);
  return v5[179] == *(v7 + 716) && v5[180] == *(v7 + 720);
}

void AV1_Syntax::tile_set_row(uint64_t a1, _DWORD *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 96);
  if (*(v6 + 768) <= a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "tile_set_row";
    v13 = 1024;
    v14 = 4164;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v11, 0x12u);
    v6 = *(a1 + 96);
  }

  v7 = v6 + 4 * a3;
  v8 = *(*(a1 + 88) + 36);
  v9 = *(v7 + 1084) << v8;
  v10 = *(v7 + 1088) << v8;
  a2[4] = a3;
  *a2 = v9;
  if (v10 >= *(v6 + 388))
  {
    v10 = *(v6 + 388);
  }

  a2[1] = v10;
  if (v10 <= v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "tile_set_row";
    v13 = 1024;
    v14 = 4170;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v11, 0x12u);
  }
}

void AV1_Syntax::tile_set_col(uint64_t a1, _DWORD *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 96);
  if (*(v6 + 764) <= a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "tile_set_col";
    v13 = 1024;
    v14 = 4175;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v11, 0x12u);
    v6 = *(a1 + 96);
  }

  v7 = v6 + 4 * a3;
  v8 = *(*(a1 + 88) + 36);
  v9 = *(v7 + 824) << v8;
  v10 = *(v7 + 828) << v8;
  a2[5] = a3;
  a2[2] = v9;
  if (v10 >= *(v6 + 384))
  {
    v10 = *(v6 + 384);
  }

  a2[3] = v10;
  if (v10 <= v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "tile_set_col";
    v13 = 1024;
    v14 = 4181;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v11, 0x12u);
  }
}

unint64_t AV1_Syntax::av1_read_le(AV1_Syntax *this, unsigned __int8 *a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  AV1_Syntax::skip_bytes(this, a3);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return (a2[2] << 16) | (a2[1] << 8) | *a2;
    }

    if (a3 == 4)
    {
      return *a2;
    }
  }

  else
  {
    if (a3 == 1)
    {
      return *a2;
    }

    if (a3 == 2)
    {
      return *a2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "av1_read_le";
    v8 = 1024;
    v9 = 4193;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v6, 0x12u);
  }

  return -1;
}

void AV1_Syntax::skip_bytes(AV1_Syntax *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(this + 11);
    if ((v4 & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      *v13 = "skip_bytes";
      *&v13[8] = 1024;
      v14 = 203;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v12, 0x12u);
      v4 = *(this + 11);
    }

    v5 = 8 * a2;
    if (8 * a2 <= v4)
    {
      v7 = *(this + 10);
    }

    else
    {
      v6 = v5 - v4;
      *(this + 5) = 0;
      if ((v6 & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        *v13 = "skip_bytes";
        *&v13[8] = 1024;
        v14 = 216;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v12, 0x12u);
      }

      v4 = 0;
      v7 = 0;
      v8 = *(this + 3);
      v9 = (*(this + 2) + 4 * (v6 >> 5));
      if (v9 > v8)
      {
        v9 = *(this + 3);
      }

      *(this + 2) = v9;
      *(this + 11) = 0;
      v10 = 4;
      do
      {
        v7 <<= 8;
        if (v9 < v8)
        {
          v4 += 8;
          *(this + 11) = v4;
          *(this + 2) = v9 + 1;
          v7 |= *v9++;
        }

        --v10;
      }

      while (v10);
      v11 = v6 & 0x1F;
      if ((~*(this + 3881) & 0x80001) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109376;
        *v13 = v7;
        *&v13[4] = 1024;
        *&v13[6] = v4;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", &v12, 0xEu);
        v4 = *(this + 11);
      }

      LODWORD(v5) = v4;
      if (v11 < v4)
      {
        LODWORD(v5) = v11;
      }
    }

    *(this + 10) = v7 << v5;
    *(this + 11) = v4 - v5;
  }
}

uint64_t AV1_Syntax::get_tile_info(AV1_Syntax *this, unsigned __int8 *a2, unint64_t a3, int a4, int a5, _DWORD *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a6 + 19456;
  v9 = a6[642];
  a6[3482] = v9;
  v10 = a6[641];
  a6[3483] = v10;
  if (!v9)
  {
LABEL_19:
    if (v10)
    {
      v22 = 0;
      v23 = v8 + 477;
      do
      {
        AV1_Syntax::tile_set_col(this, &buf, v22++);
        *v23 = *(&buf + 1);
        v23 = (v23 + 4);
      }

      while (v22 < a6[3483]);
    }

    return 0;
  }

  v27 = a6 + 19456;
  LODWORD(v13) = 0;
  v14 = 0;
  v15 = a5;
  v16 = a4;
  v17 = v10;
  while (!v17)
  {
LABEL_14:
    if (++v14 >= v9)
    {
      v8 = v27;
      if (v9)
      {
        v20 = 0;
        v21 = v27 + 412;
        do
        {
          AV1_Syntax::tile_set_row(this, &buf, v20++);
          *v21 = buf;
          v21 = (v21 + 4);
        }

        while (v20 < a6[3482]);
        v10 = a6[3483];
      }

      goto LABEL_19;
    }
  }

  v28 = v14;
  v18 = 0;
  v13 = v13;
  while (1)
  {
    if (v13 < v16 || v13 > v15)
    {
      goto LABEL_12;
    }

    if (a2 >= a3)
    {
      break;
    }

    if (v15 == v13)
    {
      v19 = a3 - a2;
    }

    else
    {
      v19 = AV1_Syntax::av1_read_le(this, a2, a6[788]) + 1;
      a2 += a6[788];
      if (v19 > a3 - a2)
      {
        if ((*(this + 15526) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "get_tile_info";
          v25 = MEMORY[0x277D86220];
          v26 = "AppleAVD: %s: Truncated packet or corrupt tile size.\n";
          goto LABEL_29;
        }

        return 0xFFFFFFFFLL;
      }
    }

    *&a6[2 * v13 + 3484] = &a2[-*(this + 1)];
    *&a6[2 * v13 + 11676] = v19;
    a2 += v19;
    AV1_Syntax::skip_bytes(this, v19);
    v10 = a6[3483];
LABEL_12:
    ++v18;
    ++v13;
    if (v18 >= v10)
    {
      v9 = a6[3482];
      v17 = v10;
      v14 = v28;
      goto LABEL_14;
    }
  }

  if ((*(this + 15526) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "get_tile_info";
    v25 = MEMORY[0x277D86220];
    v26 = "AppleAVD: %s: Data ended before all tiles were read.\n";
LABEL_29:
    _os_log_impl(&dword_277606000, v25, OS_LOG_TYPE_DEFAULT, v26, &buf, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

void AV1_Syntax::AV1_Syntax(AV1_Syntax *this, int a2)
{
  *this = &unk_288667350;
  *(this + 62) = 0;
  *(this + 252) = 0;
  *(this + 662) = 0u;
  *(this + 678) = 0u;
  *(this + 694) = 0u;
  *(this + 710) = 0u;
  *(this + 726) = 0u;
  *(this + 742) = 0u;
  *(this + 758) = 0u;
  *(this + 774) = 0u;
  *(this + 445) = 0;
  *(this + 1784) = 0;
  *(this + 3058) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  *(this + 231) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 236) = 0;
  *(this + 243) = 0;
  *(this + 34) = 0;
  *(this + 16) = 0u;
  *(this + 280) = 0;
  *(this + 284) = 0u;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  *(this + 332) = 0u;
  *(this + 348) = 0u;
  *(this + 364) = 0u;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 428) = 0u;
  *(this + 444) = 0u;
  *(this + 460) = 0u;
  *(this + 476) = 0;
  *(this + 496) = 0;
  *(this + 30) = 0u;
  *(this + 500) = 0u;
  *(this + 516) = 0u;
  *(this + 526) = 0u;
  *(this + 34) = 0u;
  *(this + 565) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 653) = 0;
  bzero(this + 792, 0x3D9uLL);
  bzero(this + 1788, 0x4F1uLL);
  bzero(this + 3056, 0x23D6uLL);
  *(this + 773) = 0u;
  *(this + 772) = 0u;
  *(this + 771) = 0u;
  *(this + 770) = 0u;
  *(this + 769) = 0u;
  *(this + 768) = 0u;
  *(this + 767) = 0u;
  *(this + 766) = 0u;
  *(this + 765) = 0u;
  bzero(this + 12392, 0xC40uLL);
  *(this + 3881) = a2;
  *(this + 1937) = 0x100000000;
  *(this + 3096) = 0;
}

void AV1_Syntax::Set_Default_Frame_Context_Info(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  *(a1 + 8 * a3 + 12240) = a2;
  AV1_Syntax::init_coeff_cdfs(a1, a3, *a2);
  v5 = *a2;

  AV1_Syntax::init_non_coeff_cdfs(a1, v5);
}

uint64_t AV1_Syntax::init_coeff_cdfs(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 4588;
  v5 = &Default_Txb_Skip_Cdf + 390 * a2;
  do
  {
    v6 = 0;
    v7 = v5;
    do
    {
      v8 = *v7;
      v7 += 3;
      *(v4 + v6) = v8;
      v6 += 2;
    }

    while (v6 != 26);
    ++v3;
    v5 += 78;
    v4 += 26;
  }

  while (v3 != 5);
  v9 = (&Default_Eob_Pt_16_Cdf + 48 * a2);
  *(a3 + 4718) = *v9;
  *(a3 + 4726) = *(v9 + 12);
  *(a3 + 4734) = v9[3];
  *(a3 + 4742) = *(v9 + 36);
  v10 = a3 + 4750;
  v11 = &Default_Eob_Pt_32_Cdf + 56 * a2;
  v12 = 2;
  do
  {
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 4);
    *(v10 + 10) = *(v11 + 14);
    *(v10 + 18) = *(v11 + 11);
    v11 += 28;
    v10 += 20;
    --v12;
  }

  while (v12);
  v13 = a3 + 4790;
  v14 = &Default_Eob_Pt_64_Cdf + 64 * a2 + 16;
  v15 = 2;
  do
  {
    *v13 = *(v14 - 2);
    *(v13 + 8) = *(v14 - 2);
    *(v13 + 12) = *v14;
    *(v13 + 20) = *(v14 + 2);
    v14 += 32;
    v13 += 24;
    --v15;
  }

  while (v15);
  v16 = (a3 + 4838);
  v17 = (&Default_Eob_Pt_128_Cdf + 72 * a2);
  v18 = 2;
  do
  {
    *v16 = *v17;
    *(v16 + 6) = *(v17 + 6);
    *(v16 + 14) = *(v17 + 18);
    *(v16 + 20) = v17[3];
    v17 = (v17 + 36);
    v16 = (v16 + 28);
    --v18;
  }

  while (v18);
  v19 = (&Default_Eob_Pt_256_Cdf + 80 * a2);
  v20 = (a3 + 4910);
  v21 = 2;
  do
  {
    *(v20 - 1) = *v19;
    *v20 = *(v19 + 20);
    v20 += 2;
    v19 = (v19 + 40);
    --v21;
  }

  while (v21);
  v22 = 0;
  v23 = &Default_Eob_Pt_512_Cdf + 44 * a2;
  *(a3 + 4958) = *v23;
  *(a3 + 4974) = *(v23 + 8);
  *(a3 + 4976) = *(v23 + 22);
  *(a3 + 4992) = *(v23 + 19);
  v24 = &Default_Eob_Pt_1024_Cdf + 48 * a2;
  *(a3 + 4994) = *v24;
  *(a3 + 5010) = *(v24 + 4);
  *(a3 + 5030) = *(v24 + 10);
  *(a3 + 5014) = *(v24 + 24);
  v25 = a3 + 5034;
  v26 = &Default_Eob_Extra_Cdf + 540 * a2;
  do
  {
    v27 = 0;
    v28 = 1;
    do
    {
      v29 = 0;
      v30 = v28;
      v31 = &v26[54 * v27];
      v32 = v25 + 18 * v27;
      do
      {
        v33 = *v31;
        v31 += 6;
        *(v32 + v29) = v33;
        v29 += 2;
      }

      while (v29 != 18);
      v28 = 0;
      v27 = 1;
    }

    while ((v30 & 1) != 0);
    ++v22;
    v26 += 108;
    v25 += 36;
  }

  while (v22 != 5);
  v34 = 0;
  v35 = 1;
  do
  {
    v36 = 0;
    v37 = v35;
    v38 = (&Default_Dc_Sign_Cdf + 36 * a2 + 18 * v34);
    v39 = a3 + 5214 + 6 * v34;
    do
    {
      v40 = *v38;
      v38 += 3;
      *(v39 + v36) = v40;
      v36 += 2;
    }

    while (v36 != 6);
    v35 = 0;
    v34 = 1;
  }

  while ((v37 & 1) != 0);
  v41 = 0;
  v42 = a3 + 5226;
  v43 = &Default_Coeff_Base_Eob_Cdf + 320 * a2;
  do
  {
    v44 = 0;
    v45 = v42;
    v46 = v43;
    do
    {
      v47 = 0;
      v48 = v46;
      do
      {
        v49 = *v48;
        v48 += 2;
        *(v45 + v47) = v49;
        v47 += 4;
      }

      while (v47 != 16);
      ++v44;
      v46 += 8;
      v45 += 16;
    }

    while (v44 != 2);
    ++v41;
    v43 += 64;
    v42 += 32;
  }

  while (v41 != 5);
  v50 = 0;
  v51 = a3 + 6646;
  v52 = &Default_Coeff_Base_Cdf + 4200 * a2;
  do
  {
    v53 = 0;
    v54 = v51;
    v55 = v52;
    do
    {
      v56 = 0;
      v57 = v55;
      do
      {
        v58 = v54 + v56;
        *v58 = *v57;
        result = *(v57 + 2);
        *(v58 + 4) = result;
        v57 += 10;
        v56 += 6;
      }

      while (v56 != 252);
      ++v53;
      v55 += 420;
      v54 += 252;
    }

    while (v53 != 2);
    ++v50;
    v52 += 840;
    v51 += 504;
  }

  while (v50 != 5);
  v60 = 0;
  v61 = a3 + 5386;
  v62 = &Default_Coeff_Br_Cdf + 2100 * a2;
  do
  {
    v63 = 0;
    v64 = v61;
    v65 = v62;
    do
    {
      v66 = 0;
      v67 = v65;
      do
      {
        v68 = v64 + v66;
        *v68 = *v67;
        *(v68 + 4) = *(v67 + 2);
        v67 += 10;
        v66 += 6;
      }

      while (v66 != 126);
      ++v63;
      v65 += 210;
      v64 += 126;
    }

    while (v63 != 2);
    ++v60;
    v62 += 420;
    v61 += 252;
  }

  while (v60 != 5);
  return result;
}

void AV1_Syntax::init_non_coeff_cdfs(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a2 + 1470);
  v5 = &Default_Y_Mode_Cdf;
  do
  {
    v6 = a2 + v3;
    *v6 = *v5;
    *(v6 + 16) = *(v5 + 2);
    v5 = (v5 + 28);
    v3 += 24;
  }

  while (v3 != 96);
  v7 = &Default_Uv_Mode_Cdf;
  for (i = 96; i != 408; i += 24)
  {
    v9 = a2 + i;
    *v9 = *v7;
    *(v9 + 16) = *(v7 + 2);
    v7 = (v7 + 30);
  }

  v10 = 0;
  v11 = &xmmword_2777662F2;
  do
  {
    v12 = (a2 + 408 + v10);
    *v12 = *v11;
    *(v12 + 10) = *(v11 + 10);
    v11 = (v11 + 30);
    v10 += 26;
  }

  while (v10 != 338);
  v13 = 0;
  v14 = &Default_Angle_Delta_Cdf;
  do
  {
    v15 = a2 + 746 + v13;
    *v15 = *v14;
    *(v15 + 8) = *(v14 + 2);
    v14 += 2;
    v13 += 12;
  }

  while (v13 != 96);
  v16 = 0;
  *(a2 + 842) = 2237;
  v17 = &Default_Partition_W8_Cdf;
  do
  {
    v18 = a2 + 844 + v16;
    *v18 = *v17;
    *(v18 + 4) = *(v17 + 2);
    v17 = (v17 + 10);
    v16 += 6;
  }

  while (v16 != 24);
  v19 = 0;
  v20 = &Default_Partition_W16_Cdf;
  do
  {
    v21 = a2 + 868 + v19;
    *v21 = *v20;
    *(v21 + 16) = *(v20 + 8);
    v20 = (v20 + 22);
    v19 += 18;
  }

  while (v19 != 72);
  v22 = 0;
  v23 = &Default_Partition_W32_Cdf;
  do
  {
    v24 = a2 + 940 + v22;
    *v24 = *v23;
    *(v24 + 16) = *(v23 + 8);
    v23 = (v23 + 22);
    v22 += 18;
  }

  while (v22 != 72);
  v25 = 0;
  v26 = &Default_Partition_W64_Cdf;
  do
  {
    v27 = a2 + 1012 + v25;
    *v27 = *v26;
    *(v27 + 16) = *(v26 + 8);
    v26 = (v26 + 22);
    v25 += 18;
  }

  while (v25 != 72);
  v28 = 0;
  v29 = &Default_Partition_W128_Cdf;
  do
  {
    v30 = (a2 + 1084 + v28);
    *v30 = *v29;
    *(v30 + 6) = *(v29 + 6);
    v29 = (v29 + 18);
    v28 += 14;
  }

  while (v28 != 56);
  v31 = 0;
  v32 = &Default_Tx_8x8_Cdf;
  do
  {
    v33 = *v32;
    v32 += 3;
    *(a2 + 1140 + v31) = v33;
    v31 += 2;
  }

  while (v31 != 6);
  v34 = 0;
  v35 = &Default_Tx_16x16_Cdf;
  do
  {
    v36 = *v35;
    v35 += 2;
    *(a2 + 1146 + v34) = v36;
    v34 += 4;
  }

  while (v34 != 12);
  v37 = 0;
  v38 = &Default_Tx_32x32_Cdf;
  do
  {
    v39 = *v38;
    v38 += 2;
    *(a2 + 1158 + v37) = v39;
    v37 += 4;
  }

  while (v37 != 12);
  v40 = 0;
  v41 = "ji-S";
  do
  {
    v42 = *v41;
    v41 += 8;
    *(a2 + 1170 + v40) = v42;
    v40 += 4;
  }

  while (v40 != 12);
  v43 = 0;
  v44 = &Default_Txfm_Split_Cdf;
  do
  {
    v45 = *v44;
    v44 += 3;
    *(a2 + 1182 + v43) = v45;
    v43 += 2;
  }

  while (v43 != 42);
  v46 = 0;
  *(a2 + 1224) = 0xC8A3CC54E185D0BLL;
  v47 = &Default_Filter_Intra_Cdf;
  do
  {
    v48 = *v47;
    v47 += 3;
    *(a2 + 1232 + v46) = v48;
    v46 += 2;
  }

  while (v46 != 44);
  v49 = 0;
  v50 = &Default_Segment_Id_Cdf;
  do
  {
    v51 = (a2 + 1276 + v49);
    *v51 = *v50;
    *(v51 + 6) = *(v50 + 6);
    v50 = (v50 + 18);
    v49 += 14;
  }

  while (v49 != 42);
  v52 = 0;
  v53 = &Default_Segment_Id_Predicted_Cdf;
  do
  {
    v54 = *v53;
    v53 += 3;
    *(a2 + 1318 + v52) = v54;
    v52 += 2;
  }

  while (v52 != 6);
  v55 = (a2 + 1324);
  v56 = 2;
  do
  {
    memset_pattern16(v55, &unk_27775E150, 4uLL);
    v55 += 4;
    --v56;
  }

  while (v56);
  v57 = (a2 + 1332);
  v58 = 2;
  do
  {
    memset_pattern16(v57, &unk_27775E160, 4uLL);
    v57 += 4;
    --v58;
  }

  while (v58);
  v59 = (a2 + 1340);
  v60 = 2;
  do
  {
    memset_pattern16(v59, &unk_27775E160, 4uLL);
    v59 += 4;
    --v60;
  }

  while (v60);
  v61 = 0;
  v62 = 1;
  do
  {
    v63 = 0;
    v64 = v62;
    v65 = a2 + 1348 + 40 * v61;
    v66 = 1;
    do
    {
      v67 = 0;
      v68 = v66;
      v69 = v65 + 20 * v63;
      v70 = &Default_Mv_Bit_Cdf;
      do
      {
        v71 = *v70;
        v70 += 3;
        *(v69 + v67) = v71;
        v67 += 2;
      }

      while (v67 != 20);
      v66 = 0;
      v63 = 1;
    }

    while ((v68 & 1) != 0);
    v62 = 0;
    v61 = 1;
  }

  while ((v64 & 1) != 0);
  v72 = (a2 + 1428);
  v73 = 2;
  do
  {
    memset_pattern16(v72, &unk_27775E170, 4uLL);
    v72 += 4;
    --v73;
  }

  while (v73);
  v74 = 0;
  v75 = &Default_New_Mv_Cdf;
  do
  {
    v76 = *v75;
    v75 += 3;
    *(a2 + 1436 + v74) = v76;
    v74 += 2;
  }

  while (v74 != 12);
  v77 = 0;
  *(a2 + 1448) = 2078439297;
  v78 = &Default_Ref_Mv_Cdf;
  do
  {
    v79 = *v78;
    v78 += 3;
    *(a2 + 1452 + v77) = v79;
    v77 += 2;
  }

  while (v77 != 12);
  v80 = 0;
  v81 = &Default_Drl_Mode_Cdf;
  do
  {
    v82 = *v81;
    v81 += 3;
    *(a2 + 1464 + v80) = v82;
    v80 += 2;
  }

  while (v80 != 6);
  v83 = 0;
  *v4 = 0x185631263EEA7CDALL;
  v84 = &Default_Comp_Mode_Cdf;
  do
  {
    v85 = *v84;
    v84 += 3;
    *(a2 + 1478 + v83) = v85;
    v83 += 2;
  }

  while (v83 != 10);
  v86 = 0;
  v87 = &Default_Skip_Mode_Cdf;
  do
  {
    v88 = *v87;
    v87 += 3;
    *(a2 + 1488 + v86) = v88;
    v86 += 2;
  }

  while (v86 != 6);
  v89 = 0;
  v90 = &Default_Skip_Cdf;
  do
  {
    v91 = *v90;
    v90 += 3;
    *(a2 + 1494 + v89) = v91;
    v89 += 2;
  }

  while (v89 != 6);
  v92 = 0;
  v93 = a2 + 1500;
  v94 = &Default_Comp_Ref_Cdf;
  do
  {
    v95 = 0;
    v96 = v94;
    do
    {
      v97 = *v96;
      v96 += 3;
      *(v93 + v95) = v97;
      v95 += 2;
    }

    while (v95 != 6);
    ++v92;
    v94 += 9;
    v93 += 6;
  }

  while (v92 != 3);
  v98 = (a2 + 1520);
  v99 = &Default_Comp_Bwd_Ref_Cdf;
  v100 = 3;
  do
  {
    *(v98 - 1) = *v99;
    *v98 = v99[3];
    v98 += 2;
    v99 += 6;
    --v100;
  }

  while (v100);
  v101 = 0;
  v102 = a2 + 1530;
  v103 = &Default_Single_Ref_Cdf;
  do
  {
    v104 = 0;
    v105 = v103;
    do
    {
      v106 = *v105;
      v105 += 3;
      *(v102 + v104) = v106;
      v104 += 2;
    }

    while (v104 != 12);
    ++v101;
    v103 += 18;
    v102 += 12;
  }

  while (v101 != 3);
  v107 = 0;
  v108 = &Default_Compound_Mode_Cdf;
  do
  {
    v109 = (a2 + 1566 + v107);
    *v109 = *v108;
    *(v109 + 6) = *(v108 + 6);
    v108 = (v108 + 18);
    v107 += 14;
  }

  while (v107 != 112);
  v110 = 0;
  v111 = &Default_Interp_Filter_Cdf;
  do
  {
    v112 = *v111;
    v111 += 2;
    *(a2 + 1678 + v110) = v112;
    v110 += 4;
  }

  while (v110 != 64);
  v113 = 0;
  v114 = &Default_Motion_Mode_Cdf;
  do
  {
    v115 = *v114;
    v114 += 2;
    *(a2 + 1742 + v113) = v115;
    v113 += 4;
  }

  while (v113 != 88);
  *(a2 + 1834) = 13440;
  *(a2 + 1830) = 1409314816;
  *(a2 + 1836) = 1409314816;
  *(a2 + 1840) = 13440;
  v116 = a2 + 1842;
  v117 = 2;
  do
  {
    *(v116 + 16) = 65542;
    *v116 = Default_Mv_Class_Cdf;
    *(v116 + 36) = 65542;
    *(v116 + 20) = unk_277766B8C;
    v116 += 40;
    --v117;
  }

  while (v117);
  v118 = 0;
  v119 = a2 + 1922;
  do
  {
    v120 = v119;
    v121 = &Default_Mv_Class0_Fr_Cdf;
    v122 = 2;
    do
    {
      *v120 = *v121;
      *(v120 + 4) = *(v121 + 2);
      *(v120 + 6) = *(v121 + 10);
      *(v120 + 10) = *(v121 + 7);
      v121 += 5;
      v120 += 12;
      --v122;
    }

    while (v122);
    ++v118;
    v119 += 24;
  }

  while (v118 != 2);
  v123 = a2 + 1970;
  v124 = 2;
  do
  {
    *(v123 + 4) = 11520;
    *v123 = 1006657536;
    *(v123 + 6) = 1006657536;
    *(v123 + 10) = 11520;
    v123 += 12;
    --v124;
  }

  while (v124);
  v125 = 0;
  v126 = &Default_Palette_Y_Size_Cdf;
  do
  {
    v127 = a2 + 1994 + v125;
    *v127 = *v126;
    *(v127 + 8) = *(v126 + 2);
    v126 += 2;
    v125 += 12;
  }

  while (v125 != 84);
  v128 = 0;
  v129 = &Default_Palette_Uv_Size_Cdf;
  do
  {
    v130 = a2 + 2078 + v128;
    *v130 = *v129;
    *(v130 + 8) = *(v129 + 2);
    v129 += 2;
    v128 += 12;
  }

  while (v128 != 84);
  v131 = 0;
  v132 = &Default_Palette_Size_2_Y_Color_Cdf;
  do
  {
    v133 = *v132;
    v132 += 3;
    *(a2 + 2162 + v131) = v133;
    v131 += 2;
  }

  while (v131 != 10);
  v134 = 0;
  v135 = &Default_Palette_Size_3_Y_Color_Cdf;
  do
  {
    v136 = *v135;
    v135 += 2;
    *(a2 + 2172 + v134) = v136;
    v134 += 4;
  }

  while (v134 != 20);
  v137 = 0;
  v138 = &Default_Palette_Size_4_Y_Color_Cdf;
  do
  {
    v139 = a2 + 2192 + v137;
    *v139 = *v138;
    *(v139 + 4) = *(v138 + 2);
    v138 = (v138 + 10);
    v137 += 6;
  }

  while (v137 != 30);
  v140 = 0;
  v141 = &Default_Palette_Size_5_Y_Color_Cdf;
  do
  {
    v142 = *v141;
    v141 = (v141 + 12);
    *(a2 + 2222 + v140) = v142;
    v140 += 8;
  }

  while (v140 != 40);
  v143 = 0;
  v144 = &Default_Palette_Size_6_Y_Color_Cdf;
  do
  {
    v145 = a2 + 2262 + v143;
    *v145 = *v144;
    *(v145 + 8) = *(v144 + 4);
    v144 = (v144 + 14);
    v143 += 10;
  }

  while (v143 != 50);
  v146 = 0;
  v147 = &Default_Palette_Size_7_Y_Color_Cdf;
  do
  {
    v148 = a2 + 2312 + v146;
    *v148 = *v147;
    *(v148 + 8) = *(v147 + 2);
    v147 += 2;
    v146 += 12;
  }

  while (v146 != 60);
  v149 = 0;
  v150 = &Default_Palette_Size_8_Y_Color_Cdf;
  do
  {
    v151 = (a2 + 2372 + v149);
    *v151 = *v150;
    *(v151 + 6) = *(v150 + 6);
    v150 = (v150 + 18);
    v149 += 14;
  }

  while (v149 != 70);
  v152 = 0;
  v153 = &Default_Palette_Size_2_Uv_Color_Cdf;
  do
  {
    v154 = *v153;
    v153 += 3;
    *(a2 + 2442 + v152) = v154;
    v152 += 2;
  }

  while (v152 != 10);
  v155 = 0;
  v156 = &Default_Palette_Size_3_Uv_Color_Cdf;
  do
  {
    v157 = *v156;
    v156 += 2;
    *(a2 + 2452 + v155) = v157;
    v155 += 4;
  }

  while (v155 != 20);
  v158 = 0;
  v159 = &Default_Palette_Size_4_Uv_Color_Cdf;
  do
  {
    v160 = a2 + 2472 + v158;
    *v160 = *v159;
    *(v160 + 4) = *(v159 + 2);
    v159 = (v159 + 10);
    v158 += 6;
  }

  while (v158 != 30);
  v161 = 0;
  v162 = &Default_Palette_Size_5_Uv_Color_Cdf;
  do
  {
    v163 = *v162;
    v162 = (v162 + 12);
    *(a2 + 2502 + v161) = v163;
    v161 += 8;
  }

  while (v161 != 40);
  v164 = 0;
  v165 = &Default_Palette_Size_6_Uv_Color_Cdf;
  do
  {
    v166 = a2 + 2542 + v164;
    *v166 = *v165;
    *(v166 + 8) = *(v165 + 4);
    v165 = (v165 + 14);
    v164 += 10;
  }

  while (v164 != 50);
  v167 = 0;
  v168 = &Default_Palette_Size_7_Uv_Color_Cdf;
  do
  {
    v169 = a2 + 2592 + v167;
    *v169 = *v168;
    *(v169 + 8) = *(v168 + 2);
    v168 += 2;
    v167 += 12;
  }

  while (v167 != 60);
  v170 = 0;
  v171 = &Default_Palette_Size_8_Uv_Color_Cdf;
  do
  {
    v172 = (a2 + 2652 + v170);
    *v172 = *v171;
    *(v172 + 6) = *(v171 + 6);
    v171 = (v171 + 18);
    v170 += 14;
  }

  while (v170 != 70);
  v173 = 0;
  v174 = a2 + 2722;
  v175 = &Default_Palette_Y_Mode_Cdf;
  do
  {
    v176 = 0;
    v177 = v175;
    do
    {
      v178 = *v177;
      v177 += 3;
      *(v174 + v176) = v178;
      v176 += 2;
    }

    while (v176 != 6);
    ++v173;
    v175 += 9;
    v174 += 6;
  }

  while (v173 != 7);
  v179 = 0;
  *(a2 + 2764) = 0x28812002C100133;
  *(a2 + 2772) = 91;
  *(a2 + 2778) = 91;
  *(a2 + 2774) = 42471936;
  v180 = &Default_Delta_Lf_Multi_Cdf;
  do
  {
    v181 = a2 + 2780 + v179;
    *v181 = *v180;
    *(v181 + 4) = *(v180 + 2);
    v180 = (v180 + 10);
    v179 += 6;
  }

  while (v179 != 24);
  v182 = 0;
  v183 = a2 + 2804;
  v184 = &Default_Intra_Tx_Type_Set1_Cdf;
  do
  {
    v185 = 0;
    v186 = v184;
    do
    {
      v187 = v183 + v185;
      *v187 = *v186;
      *(v187 + 8) = *(v186 + 2);
      v186 += 2;
      v185 += 12;
    }

    while (v185 != 156);
    ++v182;
    v184 += 26;
    v183 += 156;
  }

  while (v182 != 2);
  v188 = 0;
  v189 = a2 + 3116;
  v190 = &Default_Intra_Tx_Type_Set2_Cdf;
  do
  {
    v191 = 0;
    v192 = v190;
    do
    {
      v193 = *v192;
      v192 = (v192 + 12);
      *(v189 + v191) = v193;
      v191 += 8;
    }

    while (v191 != 104);
    ++v188;
    v190 = (v190 + 156);
    v189 += 104;
  }

  while (v188 != 3);
  v194 = 0;
  *(a2 + 3488) = Default_Inter_Tx_Type_Set2_Cdf;
  *(a2 + 3502) = 0x8BF1092181D21E7;
  *(a2 + 3428) = Default_Inter_Tx_Type_Set1_Cdf;
  *(a2 + 3442) = *(&Default_Inter_Tx_Type_Set1_Cdf + 14);
  *(a2 + 3458) = unk_277767432;
  *(a2 + 3472) = xmmword_277767440;
  v4[255] = 0x7D1478326FB94000;
  v195 = &Default_Compound_Idx_Cdf;
  do
  {
    v196 = *v195;
    v195 += 3;
    *(a2 + 3518 + v194) = v196;
    v194 += 2;
  }

  while (v194 != 12);
  v197 = 0;
  v198 = &Default_Comp_Group_Idx_Cdf;
  do
  {
    v199 = *v198;
    v198 += 3;
    *(a2 + 3530 + v197) = v199;
    v197 += 2;
  }

  while (v197 != 12);
  v200 = 0;
  v201 = &Default_Compound_Type_Cdf;
  do
  {
    v202 = *v201;
    v201 += 3;
    *(a2 + 3542 + v200) = v202;
    v200 += 2;
  }

  while (v200 != 44);
  v203 = 0;
  v204 = &word_277767540;
  do
  {
    v205 = *v204;
    v204 += 3;
    *(a2 + 3586 + v203) = v205;
    v203 += 2;
  }

  while (v203 != 6);
  v206 = 0;
  v207 = &dword_27776755C;
  do
  {
    v208 = a2 + 3592 + v206;
    *v208 = *v207;
    *(v208 + 4) = *(v207 + 2);
    v207 = (v207 + 10);
    v206 += 6;
  }

  while (v206 != 18);
  v209 = 0;
  v210 = &Default_Wedge_Index_Cdf;
  do
  {
    v211 = (a2 + 3610 + v209);
    *v211 = *v210;
    *(v211 + 14) = *(v210 + 14);
    v210 = (v210 + 34);
    v209 += 30;
  }

  while (v209 != 660);
  v212 = 0;
  v213 = &Default_Wedge_Inter_Intra_Cdf;
  do
  {
    v214 = *v213;
    v213 += 3;
    *(a2 + 4270 + v212) = v214;
    v212 += 2;
  }

  while (v212 != 44);
  v215 = 0;
  v216 = &Default_Use_Obmc_Cdf;
  do
  {
    v217 = *v216;
    v216 += 3;
    *(a2 + 4314 + v215) = v217;
    v215 += 2;
  }

  while (v215 != 44);
  v218 = 0;
  v219 = &Default_Comp_Ref_Type_Cdf;
  do
  {
    v220 = *v219;
    v219 += 3;
    *(a2 + 4358 + v218) = v220;
    v218 += 2;
  }

  while (v218 != 10);
  v221 = 0;
  v222 = a2 + 4368;
  v223 = &Default_Uni_Comp_Ref_Cdf;
  do
  {
    v224 = 0;
    v225 = v223;
    do
    {
      v226 = *v225;
      v225 += 3;
      *(v222 + v224) = v226;
      v224 += 2;
    }

    while (v224 != 6);
    ++v221;
    v223 += 9;
    v222 += 6;
  }

  while (v221 != 3);
  v227 = 0;
  *(a2 + 4386) = 0x381B4BE477B57A76;
  *(a2 + 4392) = 0x1DA114916A4381BLL;
  v228 = &Default_Cfl_Alpha_Cdf;
  do
  {
    v229 = (a2 + 4400 + v227);
    *v229 = *v228;
    *(v229 + 14) = *(v228 + 14);
    v228 = (v228 + 34);
    v227 += 30;
  }

  while (v227 != 180);
  *(a2 + 4580) = 0x27CB5B3B3E2952CELL;
}

BOOL AV1_Syntax::Get_Frame_Size_Override_Flag(AV1_Syntax *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  if (v1)
  {
    return *(v1 + 1680) != 0;
  }

  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v3)
  {
    v4 = 136315138;
    v5 = "Get_Frame_Size_Override_Flag";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): NULL uncompressed header!\n", &v4, 0xCu);
    return 0;
  }

  return result;
}

uint64_t AV1_Syntax::Set_Output_All_Layers(uint64_t result, uint64_t a2, int a3)
{
  *(result + 96) = a2 + 1800;
  *(a2 + 4756) = a3;
  return result;
}

uint64_t AV1_Syntax::Parse_Header(AV1_Syntax *this, unsigned __int8 *a2, unint64_t a3, _DWORD *a4, char a5)
{
  v6 = a3;
  v7 = a2;
  v9 = 0;
  v10 = 0;
  v51 = *MEMORY[0x277D85DE8];
  *(this + 10) = a4;
  *(this + 11) = a4 + 8;
  *(this + 12) = a4 + 450;
  a4[1188] = 0;
  v11 = &a2[a3];
  *(this + 3) = &a2[a3];
  *(this + 4) = a3;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 11) = 0;
  v12 = 4;
  v13 = a2;
  do
  {
    v10 <<= 8;
    if (v13 < v11)
    {
      v9 += 8;
      *(this + 11) = v9;
      *(this + 2) = v13 + 1;
      v10 |= *v13++;
    }

    --v12;
  }

  while (v12);
  v14 = a4;
  if ((~*(this + 3881) & 0x80001) == 0)
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    v14 = a4;
    if (v15)
    {
      *buf = 67109376;
      *v49 = v10;
      *&v49[4] = 1024;
      *&v49[6] = v9;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", buf, 0xEu);
      v14 = *(this + 10);
    }
  }

  *(this + 10) = v10;
  v47 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  v14[6] = 0;
  *(this + 3086) = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v49 = "Parse_Header";
      *&v49[8] = 1024;
      v50 = 5601;
      v37 = MEMORY[0x277D86220];
      v38 = "AppleAVD: %s(): error. Line: %d\n";
      goto LABEL_96;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  __n = 0;
  __s2 = v7;
  do
  {
    v45 = 0;
    v46 = 0;
    if (v11 == v7 && !*(this + 3086))
    {
      return 0;
    }

    if (AV1_Syntax::read_obu_header_and_size(this, v7, v6, *(this + 3870), *(this + 10), &v46, &v45))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315394;
      *v49 = "Parse_Header";
      *&v49[8] = 1024;
      v50 = 5623;
      v37 = MEMORY[0x277D86220];
      v38 = "AppleAVD: %s(): error. Line: %d\n";
      goto LABEL_96;
    }

    v16 = v45;
    v17 = v46;
    v18 = (v7 + v45);
    if (v11 - (v7 + v45) < v46)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      *buf = 136315394;
      *v49 = "Parse_Header";
      *&v49[8] = 1024;
      v50 = 5632;
      v37 = MEMORY[0x277D86220];
      v38 = "AppleAVD: %s(): error. Line: %d\n";
      goto LABEL_96;
    }

    v6 -= v45;
    v19 = *(this + 10);
    v20 = *(v19 + 8);
    if (v20 - 1) < 2 || (v21 = *(this + 3872)) == 0 || ((v21 >> *(v19 + 20)) & 1) != 0 && ((v21 >> (*(v19 + 24) + 8)))
    {
      *(*(this + 12) + 348) = *(v19 + 20);
      if (v20 <= 4)
      {
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
            result = AV1_Syntax::sequence_header_obu(this);
            if (result == -1)
            {
              return result;
            }

            v17 = result;
            if (*(this + 3874))
            {
              v31 = *(this + 3086);
              if (v31 || (a5 & 1) != 0)
              {
                if (v31)
                {
                  return 0xFFFFFFFFLL;
                }

                else
                {
                  return 1;
                }
              }
            }

            else if (a5)
            {
              return 1;
            }

            goto LABEL_78;
          }

          if (v20 == 2)
          {
            v17 = 0;
            *(this + 3086) = 0;
LABEL_79:
            v35 = v17 - 1;
            do
            {
              if (++v35 >= v46)
              {
                v7 = v18 + v46;
                v6 -= v46;
                goto LABEL_84;
              }
            }

            while (!AV1_Syntax::get_bits(this, "padding", 8u));
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v49 = "Parse_Header";
              *&v49[8] = 1024;
              v50 = 5842;
              v37 = MEMORY[0x277D86220];
              v38 = "AppleAVD: %s(): error. Line: %d\n";
              goto LABEL_96;
            }

            return 0xFFFFFFFFLL;
          }

          goto LABEL_75;
        }

        if (v20 != 3)
        {
          v17 = 0;
LABEL_66:
          if (!*(this + 3086))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136315394;
            *v49 = "Parse_Header";
            *&v49[8] = 1024;
            v50 = 5753;
            v37 = MEMORY[0x277D86220];
            v38 = "AppleAVD: %s(): error. Line: %d\n";
            goto LABEL_96;
          }

          if (v46 < v17)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136315394;
            *v49 = "Parse_Header";
            *&v49[8] = 1024;
            v50 = 5758;
            v37 = MEMORY[0x277D86220];
            v38 = "AppleAVD: %s(): error. Line: %d\n";
            goto LABEL_96;
          }

          v34 = AV1_Syntax::tile_group_obu(this, v18 + v17, &v47, *(*(this + 10) + 8) == 6, v46 - v17, a4);
          if (v34)
          {
            v17 += v34;
            if (v47)
            {
              *(this + 3086) = 0;
              *(this + 3096) = 0;
            }

            goto LABEL_78;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315138;
          *v49 = "Parse_Header";
          v37 = MEMORY[0x277D86220];
          v38 = "AppleAVD: %s(): tile_group_obu returned error.\n";
          goto LABEL_122;
        }
      }

      else
      {
        if (v20 > 6)
        {
          if (v20 != 7)
          {
            if (v20 == 15)
            {
              if (v17)
              {
                v22 = v17;
                do
                {
                  AV1_Syntax::get_bits(this, "obu_padding_byte", 8u);
                  --v22;
                }

                while (v22);
                v23 = v17;
                while (v23)
                {
                  v24 = *(v7 + v16 - 1 + v23--);
                  if (v24)
                  {
                    if (v24 == 128 && v17 != -1)
                    {
                      goto LABEL_78;
                    }

                    break;
                  }
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  return 0xFFFFFFFFLL;
                }

                *buf = 136315394;
                *v49 = "Parse_Header";
                *&v49[8] = 1024;
                v50 = 5815;
                v37 = MEMORY[0x277D86220];
                v38 = "AppleAVD: %s(): error. Line: %d\n";
                goto LABEL_96;
              }

              goto LABEL_79;
            }

            if (v20 != 8)
            {
LABEL_75:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v49 = v20;
                _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: Unrecognized OBU type %d will be dropped\n", buf, 8u);
                v17 = v46;
              }

              AV1_Syntax::skip_bytes(this, v17);
              v17 = v46;
              goto LABEL_78;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            *buf = 136315138;
            *v49 = "Parse_Header";
            v37 = MEMORY[0x277D86220];
            v38 = "AppleAVD: %s(): Large Scale Tile decoding is not supported!\n";
LABEL_122:
            v40 = 12;
            goto LABEL_97;
          }

          if (!*(this + 3086) || v17 < __n || memcmp(v18, __s2, __n))
          {
            return 0xFFFFFFFFLL;
          }

          v32 = __n;
          if (__n)
          {
            while (1)
            {
              bits = AV1_Syntax::get_bits(this, "REDUNDANT_FRAME_HEADER", 8u);
              if (bits >= 0x100)
              {
                break;
              }

              if (!--v32)
              {
                v27 = __n;
                goto LABEL_47;
              }
            }

            v41 = bits;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v49 = "Parse_Header";
              *&v49[8] = 1024;
              v50 = v41;
              v37 = MEMORY[0x277D86220];
              v38 = "AppleAVD: %s: value %d out of range!\n";
              goto LABEL_96;
            }

            return 0xFFFFFFFFLL;
          }

          v27 = 0;
LABEL_47:
          __n = v27;
          v17 = v27;
          v28 = *(*(this + 10) + 8);
          if (**(this + 12))
          {
            if (v28 == 6)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              *buf = 136315394;
              *v49 = "Parse_Header";
              *&v49[8] = 1024;
              v50 = 5732;
              v37 = MEMORY[0x277D86220];
              v38 = "AppleAVD: %s(): error. Line: %d\n";
              goto LABEL_96;
            }

            v47 = 1;
            *(this + 3086) = 0;
            goto LABEL_78;
          }

          if (v28 == 6)
          {
            if (!AV1_Syntax::obu_byte_alignment(this))
            {
              goto LABEL_66;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v49 = "Parse_Header";
              *&v49[8] = 1024;
              v50 = 5745;
              v37 = MEMORY[0x277D86220];
              v38 = "AppleAVD: %s(): error. Line: %d\n";
              goto LABEL_96;
            }

            return 0xFFFFFFFFLL;
          }

LABEL_78:
          if (v17 <= v46)
          {
            goto LABEL_79;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315394;
          *v49 = "Parse_Header";
          *&v49[8] = 1024;
          v50 = 5831;
          v37 = MEMORY[0x277D86220];
          v38 = "AppleAVD: %s(): error. Line: %d\n";
LABEL_96:
          v40 = 18;
LABEL_97:
          _os_log_impl(&dword_277606000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
          return 0xFFFFFFFFLL;
        }

        if (v20 == 5)
        {
          v29 = AV1_Syntax::metadata_obu(this, v17);
          if (v29 == -1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *v49 = "Parse_Header";
              *&v49[8] = 1024;
              v50 = 5787;
              v37 = MEMORY[0x277D86220];
              v38 = "AppleAVD: %s(): error. Line: %d\n";
              goto LABEL_96;
            }

            return 0xFFFFFFFFLL;
          }

          v17 = v29;
          goto LABEL_78;
        }
      }

      if (*(this + 3086))
      {
        return 0xFFFFFFFFLL;
      }

      v27 = AV1_Syntax::frame_header_obu(this);
      if (v27 == -1)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136315138;
        *v49 = "Parse_Header";
        v37 = MEMORY[0x277D86220];
        v38 = "AppleAVD: %s(): frame_header_obu returned -1\n";
        goto LABEL_122;
      }

      *(this + 3086) = 1;
      __s2 = v18;
      goto LABEL_47;
    }

    AV1_Syntax::skip_bytes(this, v46);
    v7 = v18 + v46;
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v49 = "Parse_Header";
      _os_log_impl(&dword_277606000, v26, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Outside of current operating range\n", buf, 0xCu);
    }

LABEL_84:
    result = v47;
    if (v47)
    {
      v36 = 1;
    }

    else
    {
      v36 = v6 == 0;
    }
  }

  while (!v36);
  if (v47)
  {
    *(this + 3875) = 0;
  }

  return result;
}

uint64_t AV1_Syntax::read_obu_header_and_size(AV1_Syntax *this, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t *a6, void *a7)
{
  v7 = a7;
  v8 = a6;
  v41 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (!a2)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = 8;
    if (a3 < 8)
    {
      v13 = a3;
    }

    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = 0;
    v16 = 0;
    v17 = -v13;
    v18 = 1;
    while (1)
    {
      bits = AV1_Syntax::get_bits(this, "obu_size", 8u);
      v16 |= (bits & 0x7F) << v15;
      if ((bits & 0x80) == 0)
      {
        break;
      }

      ++v18;
      v15 += 7;
      if (v17 + v18 == 1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (HIDWORD(v16))
    {
      return 0xFFFFFFFFLL;
    }

    v29 = *(this + 2);
    v30 = *(this + 3);
    if (v29 >= v30)
    {
      v31 = *(this + 11);
    }

    else
    {
      v31 = *(this + 11) + 8 * (v30 - v29);
    }

    v7 = a7;
    v8 = a6;
    if (8 * v16 > v31)
    {
LABEL_27:
      if ((*(this + 15526) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v38 = "read_obu_size";
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: ERROR, obu size can't be larger than size of buffer\n", buf, 0xCu);
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  if (v18 + 1 <= a3 && !AV1_Syntax::read_obu_header(this))
  {
    v20 = *(this + 10);
    if (v20[3])
    {
      if (!a2)
      {
        return 0xFFFFFFFFLL;
      }

      v21 = v18 + *v20;
      v22 = a3 - v21;
      if (a3 - v21 >= 8)
      {
        v22 = 8;
      }

      if (a3 == v21)
      {
        return 0xFFFFFFFFLL;
      }

      v23 = 0;
      v24 = 0;
      v25 = -v22;
      v26 = 1;
      while (1)
      {
        v27 = AV1_Syntax::get_bits(this, "obu_size", 8u);
        v24 |= (v27 & 0x7F) << v23;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        ++v26;
        v23 += 7;
        result = 0xFFFFFFFFLL;
        if (v25 + v26 == 1)
        {
          return result;
        }
      }

      if (HIDWORD(v24))
      {
        return 0xFFFFFFFFLL;
      }

      v33 = *(this + 2);
      v34 = *(this + 3);
      if (v33 >= v34)
      {
        v35 = *(this + 11);
      }

      else
      {
        v35 = *(this + 11) + 8 * (v34 - v33);
      }

      if (8 * v24 > v35)
      {
        goto LABEL_27;
      }

      v32 = **(this + 10);
    }

    else
    {
      if (!a4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "read_obu_header_and_size";
        v39 = 1024;
        v40 = 5532;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v20 = *(this + 10);
      }

      v32 = *v20;
      v24 = v16 - v32;
      if (v16 < v32)
      {
        return 0xFFFFFFFFLL;
      }

      v26 = 0;
    }

    result = 0;
    *v8 = v24;
    *v7 = v26 + v18 + v32;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t AV1_Syntax::sequence_header_obu(const void **this)
{
  __dst[221] = *MEMORY[0x277D85DE8];
  memcpy(__dst, this[11], 0x6E8uLL);
  v2 = *(this + 4);
  v3 = *(this + 2);
  v4 = *(this + 11);
  bits = AV1_Syntax::get_bits(this, "seq_profile", 3u);
  LODWORD(__dst[9]) = bits;
  if (bits >= 3)
  {
    v6 = bits;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_3:
    v56 = 136315394;
    v57 = "sequence_header_obu";
    v58 = 1024;
    v59 = v6;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s: value %d out of range!\n";
LABEL_4:
    v9 = 18;
    goto LABEL_5;
  }

  v10 = AV1_Syntax::get_bits(this, "still_picture", 1u);
  BYTE1(__dst[7]) = v10;
  v11 = AV1_Syntax::get_bits(this, "reduced_still_picture_header", 1u);
  BYTE2(__dst[7]) = v11;
  if (v11 && !v10)
  {
    if (*(this + 15526))
    {
      v12 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v56 = 136315650;
        v57 = "sequence_header_obu";
        v58 = 1024;
        v59 = v12;
        v60 = 1024;
        v61 = 0;
        v7 = MEMORY[0x277D86220];
        v8 = "AppleAVD: %s: Unsupported bitstream. seq_header->reduced_still_picture_hdr = %d seq_header->still_picture= %d\n";
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v11)
  {
    LODWORD(__dst[31]) = 0;
    BYTE4(__dst[33]) = 0;
    LOBYTE(__dst[35]) = 0;
    HIDWORD(__dst[14]) = 0;
    LODWORD(__dst[15]) = 0;
    v13 = AV1_Syntax::get_bits(this, "seq_level_idx[0]", 5u);
    v6 = v13;
    HIDWORD(__dst[35]) = v13;
    if (v13 >= 0x20)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_3;
    }

    if (v13 != 31 && v13 >= 0x18)
    {
      if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v6;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: Unsupported bitstream. seq_header->seq_level_idx[0] %d\n";
      goto LABEL_4;
    }

    v16 = 0;
    BYTE4(__dst[51]) = 0;
    LOBYTE(__dst[56]) = 0;
    BYTE1(__dst[60]) = 0;
LABEL_27:
    v17 = *(this + 3871);
    if (v17 > v16 || v17 < 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(this + 3871);
    }

    *(this + 3872) = *(&__dst[15] + v19);
    v20 = AV1_Syntax::get_bits(this, "frame_width_bits_minus_1", 4u);
    v6 = v20 + 1;
    if (v20 >= 0x10)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_3;
    }

    v35 = AV1_Syntax::get_bits(this, "frame_height_bits_minus_1", 4u);
    v36 = v35 + 1;
    if (v35 >= 0x10)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v36;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_4;
    }

    v38 = AV1_Syntax::get_bits(this, "max_frame_width_minus_1", v6);
    v39 = v38 + 1;
    if (v38 > 0x7FFFFFFE || 1 << v6 < v39)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v39;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_4;
    }

    v40 = AV1_Syntax::get_bits(this, "max_frame_height_minus_1", v36);
    v41 = v40 + 1;
    if (v40 > 0x7FFFFFFE || 1 << v36 < v41)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v41;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_4;
    }

    __dst[0] = __PAIR64__(v36, v6);
    __dst[1] = __PAIR64__(v41, v39);
    if (BYTE2(__dst[7]))
    {
      LOBYTE(__dst[2]) = 0;
    }

    else
    {
      LOBYTE(__dst[2]) = AV1_Syntax::get_bits(this, "frame_id_numbers_present_flag", 1u);
      if (LOBYTE(__dst[2]))
      {
        v47 = AV1_Syntax::get_bits(this, "delta_frame_id_length_minus_2", 4u);
        v6 = v47 + 2;
        LODWORD(__dst[3]) = v47 + 2;
        if (v47 >= 0x10)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_3;
        }

        v49 = AV1_Syntax::get_bits(this, "additional_frame_id_length_minus_1", 3u);
        v6 = LODWORD(__dst[3]) + v49 + 1;
        HIDWORD(__dst[2]) = v6;
        if ((LODWORD(__dst[3]) + v49) >= 0x10)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_3;
        }
      }
    }

    if (AV1_Syntax::get_bits(this, "use_128x128_superblock", 1u))
    {
      v42 = 15;
    }

    else
    {
      v42 = 12;
    }

    v43 = av1_mi_size_wide[v42];
    HIDWORD(__dst[3]) = v42;
    LODWORD(__dst[4]) = v43;
    HIDWORD(__dst[4]) = av1_mi_size_wide_log2[v42];
    BYTE4(__dst[7]) = AV1_Syntax::get_bits(this, "enable_filter_intra", 1u);
    BYTE5(__dst[7]) = AV1_Syntax::get_bits(this, "enable_intra_edge_filter", 1u);
    if (BYTE2(__dst[7]))
    {
      __dst[6] = 0;
      LODWORD(__dst[5]) = 0;
      *(&__dst[7] + 6) = 0;
      LOBYTE(__dst[7]) = 2;
      v44 = -1;
      BYTE3(__dst[7]) = 2;
LABEL_116:
      HIDWORD(__dst[5]) = v44;
      BYTE2(__dst[8]) = AV1_Syntax::get_bits(this, "enable_superres", 1u);
      BYTE3(__dst[8]) = AV1_Syntax::get_bits(this, "enable_cdef", 1u);
      BYTE4(__dst[8]) = AV1_Syntax::get_bits(this, "enable_restoration", 1u);
      AV1_Syntax::color_config(this, __dst, 1);
      v52 = HIDWORD(__dst[12]);
      v51 = __dst[13];
      if (!*(&__dst[12] + 4) || HIDWORD(__dst[12]) == 1 && LODWORD(__dst[13]) < 2)
      {
        BYTE1(__dst[14]) = AV1_Syntax::get_bits(this, "film_grain_params_present", 1u);
        if (AV1_Syntax::check_trailing_bits(this))
        {
          return 0xFFFFFFFFLL;
        }

        if (*(this + 3873) && memcmp(this[11], __dst, 0x1C0uLL))
        {
          *(this + 3874) = 1;
        }

        v53 = 8 * (v2 - v3) - v4;
        if (!*(this + 3086))
        {
          memcpy(this[11], __dst, 0x6E8uLL);
        }

        *(this + 3873) = 1;
        v54 = v53 + *(this + 11);
        if ((-v54 & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v56 = 136315394;
          v57 = "sequence_header_obu";
          v58 = 1024;
          v59 = 807;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v56, 0x12u);
          v54 = *(this + 11) + v53;
        }

        return (8 * (*(this + 4) - *(this + 2)) - v54) >> 3;
      }

      if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315650;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v52;
      v60 = 1024;
      v61 = v51;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: Only 4:4:4, 4:2:2 and 4:2:0 are currently supported, %d %d subsampling is not supported.\n";
LABEL_11:
      v9 = 24;
LABEL_5:
      _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, v8, &v56, v9);
      return 0xFFFFFFFFLL;
    }

    BYTE6(__dst[7]) = AV1_Syntax::get_bits(this, "enable_interintra_compound", 1u);
    HIBYTE(__dst[7]) = AV1_Syntax::get_bits(this, "enable_masked_compound", 1u);
    BYTE1(__dst[8]) = AV1_Syntax::get_bits(this, "enable_warped_motion", 1u);
    LOBYTE(__dst[8]) = AV1_Syntax::get_bits(this, "enable_dual_filter", 1u);
    v48 = AV1_Syntax::get_bits(this, "enable_order_hint", 1u);
    LODWORD(__dst[5]) = v48;
    if (v48)
    {
      LODWORD(__dst[6]) = AV1_Syntax::get_bits(this, "enable_jnt_comp", 1u);
      if (LODWORD(__dst[5]))
      {
        v48 = AV1_Syntax::get_bits(this, "enable_ref_frame_mvs", 1u);
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      LODWORD(__dst[6]) = 0;
    }

    HIDWORD(__dst[6]) = v48;
    if (AV1_Syntax::get_bits(this, "seq_choose_screen_content_tools", 1u))
    {
      LOBYTE(__dst[7]) = 2;
    }

    else
    {
      LOBYTE(__dst[7]) = AV1_Syntax::get_bits(this, "seq_force_screen_content_tools", 1u);
      if (!LOBYTE(__dst[7]))
      {
        goto LABEL_111;
      }
    }

    if (!AV1_Syntax::get_bits(this, "seq_choose_integer_mv", 1u))
    {
      v50 = AV1_Syntax::get_bits(this, "seq_force_integer_mv", 1u);
LABEL_113:
      BYTE3(__dst[7]) = v50;
      if (LODWORD(__dst[5]))
      {
        v44 = AV1_Syntax::get_bits(this, "order_hint_bits_minus_1", 3u);
      }

      else
      {
        v44 = -1;
      }

      goto LABEL_116;
    }

LABEL_111:
    v50 = 2;
    goto LABEL_113;
  }

  LODWORD(__dst[31]) = AV1_Syntax::get_bits(this, "timing_info_present_flag", 1u);
  if (LODWORD(__dst[31]))
  {
    AV1_Syntax::timing_info(this, &__dst[31] + 1);
    BYTE4(__dst[33]) = AV1_Syntax::get_bits(this, "decoder_model_info_present_flag", 1u);
    if (BYTE4(__dst[33]))
    {
      v14 = AV1_Syntax::get_bits(this, "buffer_delay_length_minus_1", 5u);
      v15 = v14 + 1;
      BYTE4(__dst[34]) = v14 + 1;
      if (v14 >= 0x20u)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

LABEL_81:
        v56 = 136315394;
        v57 = "sequence_header_obu";
        v58 = 1024;
        v59 = v15;
        v7 = MEMORY[0x277D86220];
        v8 = "AppleAVD: %s: value %d out of range!\n";
        goto LABEL_4;
      }

      LODWORD(__dst[34]) = AV1_Syntax::get_bits(this, "num_units_in_decoding_tick", 0x20u);
      v37 = AV1_Syntax::get_bits(this, "buffer_removal_time_length_minus_1", 5u);
      v15 = v37 + 1;
      BYTE5(__dst[34]) = v37 + 1;
      if (v37 >= 0x20u)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_81;
      }

      v45 = AV1_Syntax::get_bits(this, "frame_presentation_time_length_minus_1", 5u);
      v15 = v45 + 1;
      BYTE6(__dst[34]) = v45 + 1;
      if (v45 >= 0x20u)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_81;
      }
    }
  }

  else
  {
    BYTE4(__dst[33]) = 0;
  }

  LOBYTE(__dst[35]) = AV1_Syntax::get_bits(this, "initial_display_delay_present_flag", 1u);
  v21 = AV1_Syntax::get_bits(this, "operating_points_cnt_minus_1", 5u);
  HIDWORD(__dst[14]) = v21;
  if (v21 > 0x1F)
  {
    v6 = v21;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_3;
  }

  v22 = 0;
  v23 = 0;
  v24 = 284;
  while (1)
  {
    v25 = AV1_Syntax::get_bits(this, "operating_point_idc[ i ]", 0xCu);
    *(&__dst[-20] + v24 - 4) = v25;
    if (v25 >= 0x1000)
    {
      v27 = v25;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_83;
    }

    v26 = AV1_Syntax::get_bits(this, "seq_level_idx[ i ]", 5u);
    v27 = v26;
    *(__dst + v24) = v26;
    if (v26 >= 0x20)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_83:
      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v27;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_4;
    }

    if (v26 != 31 && v26 >= 0x18)
    {
      break;
    }

    if (v26 < 8)
    {
      v28 = 0;
    }

    else
    {
      v28 = AV1_Syntax::get_bits(this, "seq_tier", 1u);
    }

    *(&__dst[51] + v23 + 4) = v28;
    if (BYTE4(__dst[33]))
    {
      v29 = AV1_Syntax::get_bits(this, "decoder_model_present_for_this_op", 1u);
      LOBYTE(__dst[v22 + 56]) = v29;
      if (v29)
      {
        AV1_Syntax::op_parameters_info(this, __dst, &__dst[v22 + 56]);
      }
    }

    else
    {
      LOBYTE(__dst[v22 + 56]) = 0;
      if (LODWORD(__dst[31]) && HIDWORD(__dst[32]))
      {
        v30 = &__dst[v22];
        v30[59] = 85899345990000;
        *(v30 + 480) = 0;
      }
    }

    if (!LOBYTE(__dst[35]))
    {
      BYTE1(__dst[v22 + 60]) = 0;
LABEL_59:
      BYTE2(__dst[v22 + 60]) = 10;
      goto LABEL_60;
    }

    v31 = AV1_Syntax::get_bits(this, "initial_display_delay_present_for_this_op[ i ]", 1u);
    BYTE1(__dst[v22 + 60]) = v31;
    if (!v31)
    {
      goto LABEL_59;
    }

    v32 = AV1_Syntax::get_bits(this, "initial_display_delay_minus_1", 4u);
    v33 = v32 + 1;
    BYTE2(__dst[v22 + 60]) = v32 + 1;
    if (v32 >= 0xAu)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v56 = 136315394;
      v57 = "sequence_header_obu";
      v58 = 1024;
      v59 = v33;
      v7 = MEMORY[0x277D86220];
      v8 = "AppleAVD: %s: value %d out of range!\n";
      goto LABEL_4;
    }

LABEL_60:
    v16 = HIDWORD(__dst[14]);
    v24 += 4;
    v22 += 5;
    if (v23++ >= SHIDWORD(__dst[14]))
    {
      goto LABEL_27;
    }
  }

  if ((*(this + 15526) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v56 = 136315650;
    v57 = "sequence_header_obu";
    v58 = 1024;
    v59 = v23;
    v60 = 1024;
    v61 = v27;
    v7 = MEMORY[0x277D86220];
    v8 = "AppleAVD: %s: Unsupported bitstream. seq_header->seq_level_idx[%d] = %d\n";
    goto LABEL_11;
  }

  return 0xFFFFFFFFLL;
}

uint64_t AV1_Syntax::frame_header_obu(AV1_Syntax *this)
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v2 = *(this + 11) + 8 * (*(this + 2) - *(this + 4));
  if (*(this + 3086) == 1)
  {
    memcpy(*(this + 12), this + 104, 0x2F60uLL);
    goto LABEL_3;
  }

  *(this + 3086) = 1;
  if (!*(*(this + 12) + 120))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: frame_header_obu: ERROR, cur_frame isn't valid\n", &v31, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  for (i = 1988; i != 2296; i += 44)
  {
    v5 = (*(this + 12) + i);
    *v5 = av1_default_warp_params;
    v5[1] = unk_27775E1E0;
    *(v5 + 28) = unk_27775E1EC;
    v6 = (*(*(this + 12) + 120) + i - 1212);
    *(v6 + 28) = unk_27775E1EC;
    *v6 = av1_default_warp_params;
    v6[1] = unk_27775E1E0;
  }

  result = AV1_Syntax::uncompressed_header(this);
  if (result != -1)
  {
    if (*(*(this + 10) + 8) == 6)
    {
      while ((-*(this + 11) & 7) != 0)
      {
        if (AV1_Syntax::get_bits(this, "zero_bit", 1u))
        {
          return 0xFFFFFFFFLL;
        }
      }

LABEL_15:
      v8 = *(this + 12);
      memcpy(this + 104, v8, 0x2F60uLL);
      if (*v8)
      {
        *(this + 3086) = 0;
        result = (*(this + 4) - *(this + 2) + ((v2 - *(this + 11) + 7) >> 3)) & 0x1FFFFFFF;
        v8[738] = result;
        return result;
      }

      *(this + 1543) = 1;
      v9 = v8[38];
      if (v9 == 7)
      {
        v10 = *(this + 3058);
        v11 = *(this + v10 + 1530);
        *(this + 1534) = v11;
        if ((~*(this + 3881) & 0x80004) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v12 = *v11;
        v31 = 67109376;
        v32[0] = v10;
        LOWORD(v32[1]) = 2048;
        *(&v32[1] + 2) = v12;
        v13 = MEMORY[0x277D86220];
        v14 = "AppleAVD: ref none, default %d fc %p\n";
      }

      else
      {
        if ((v9 & 0xF8) == 0)
        {
          v27 = v8[(v9 & 7) + 423];
          if (v27 != -1)
          {
            v28 = *&v8[2 * v27 + 462];
            if (v28)
            {
              v29 = *(v28 + 1968);
              *(this + 1534) = v29;
              if ((~*(this + 3881) & 0x80004) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_29;
              }

              v30 = *v29;
              v31 = 134217984;
              *v32 = v30;
              v13 = MEMORY[0x277D86220];
              v14 = "AppleAVD: primary ref fc %p\n";
              v18 = 12;
              goto LABEL_28;
            }
          }
        }

        v15 = *(this + 3058);
        v16 = *(this + v15 + 1530);
        *(this + 1534) = v16;
        if ((~*(this + 3881) & 0x80004) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        v17 = *v16;
        v31 = 67109376;
        v32[0] = v15;
        LOWORD(v32[1]) = 2048;
        *(&v32[1] + 2) = v17;
        v13 = MEMORY[0x277D86220];
        v14 = "AppleAVD: primary ref no fb, default %d fc %p\n";
      }

      v18 = 18;
LABEL_28:
      _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v31, v18);
LABEL_29:
      v19 = *(this + 12);
      if (*(v19 + 144) == 1)
      {
        v20 = *(v19 + 120);
        v21 = *(v20 + 1960);
        *(v20 + 1968) = v21;
        if ((~*(this + 3881) & 0x80004) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_3;
        }

        v22 = *v21;
        v31 = 134217984;
        *v32 = v22;
        v23 = MEMORY[0x277D86220];
        v24 = "AppleAVD: backward refresh 1 fci_ref fc %p\n";
      }

      else
      {
        v25 = *(this + 1534);
        *(*(v19 + 120) + 1968) = v25;
        if ((~*(this + 3881) & 0x80004) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_3;
        }

        v26 = *v25;
        v31 = 134217984;
        *v32 = v26;
        v23 = MEMORY[0x277D86220];
        v24 = "AppleAVD: backward refresh 0 fci_ref fc %p\n";
      }

      _os_log_impl(&dword_277606000, v23, OS_LOG_TYPE_DEFAULT, v24, &v31, 0xCu);
LABEL_3:
      result = (*(this + 4) - *(this + 2) + ((v2 - *(this + 11) + 7) >> 3)) & 0x1FFFFFFF;
      *(*(this + 12) + 2952) = result;
      return result;
    }

    v7 = -*(this + 11) & 7;
    if (AV1_Syntax::get_bits(this, "trailing", 8 - v7) == 1 << (v7 ^ 7))
    {
      goto LABEL_15;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t AV1_Syntax::obu_byte_alignment(AV1_Syntax *this)
{
  while ((-*(this + 11) & 7) != 0)
  {
    if (AV1_Syntax::get_bits(this, "zero_bit", 1u))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t AV1_Syntax::tile_group_obu(AV1_Syntax *this, uint64_t a2, _DWORD *a3, int a4, unsigned int a5, _DWORD *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  *v20 = 0;
  v19 = 0;
  if ((-*(this + 11) & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "tile_group_obu";
    v23 = 1024;
    v24 = 5242;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
  }

  if (AV1_Syntax::read_tile_group_header(this, &v20[1], v20, a4, &v19))
  {
    goto LABEL_9;
  }

  while ((-*(this + 11) & 7) != 0)
  {
    if (AV1_Syntax::get_bits(this, "zero_bit", 1u))
    {
      goto LABEL_9;
    }
  }

  v12 = v19;
  if (a5 < v19)
  {
LABEL_9:
    if ((*(this + 15526) & 1) == 0)
    {
      return 0;
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    v22 = "tile_group_obu";
    v14 = MEMORY[0x277D86220];
    v15 = "AppleAVD: %s: Unsupported bitstream. header_size or obu_byte_alignment = -1 or sz < header_size\n";
LABEL_12:
    _os_log_impl(&dword_277606000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    return 0;
  }

  v16 = a5 - v19;
  v17 = (a2 + v19);
  *(this + 1549) = v17;
  v18 = a2 + v12 + v16;
  if (!AV1_Syntax::get_tile_info(this, v17, v18, v20[1], v20[0], a6))
  {
    *a3 = v20[0] == *(*(this + 12) + 764) * *(*(this + 12) + 768) - 1;
    AV1_Syntax::skip_bytes(this, v18 - *(this + 2) + (*(this + 11) >> 3));
    return v19 + v16;
  }

  if ((*(this + 15526) & 1) == 0)
  {
    return 0;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136315138;
    v22 = "tile_group_obu";
    v14 = MEMORY[0x277D86220];
    v15 = "AppleAVD: %s: Unsupported bitstream. tile_info not correct\n";
    goto LABEL_12;
  }

  return result;
}

unint64_t AV1_Syntax::metadata_obu(AV1_Syntax *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(this + 11) + 8 * (*(this + 2) - v2);
  v9 = 7 * v4;
  for (i = a2; ; --i)
  {
    bits = AV1_Syntax::get_bits(this, "metadata_type", 8u);
    v7 |= (bits & 0x7F) << v6;
    if ((bits & 0x80) == 0)
    {
      break;
    }

    v6 += 7;
    if (v9 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (HIDWORD(v7))
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 3070) = v7;
  if ((v7 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 - 6 <= 0xFFFFFFFFFFFFFFFALL)
  {
    v12 = i - 1;
    while (i != 1)
    {
      if (*(*(this + 2) - (*(this + 11) >> 3) - 2 + i--))
      {
        AV1_Syntax::skip_bytes(this, v12);
        return v3;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      AV1_Syntax::metadata_hdr_cll(this);
    }

    else
    {
      AV1_Syntax::metadata_hdr_mdcv(this);
    }
  }

  else if (v7 == 3)
  {
    AV1_Syntax::metadata_scalability(this);
  }

  else if (v7 == 5)
  {
    AV1_Syntax::metadata_timecode(this);
  }

  else
  {
    AV1_Syntax::metadata_itut_t35(this, i - 1);
  }

  v15 = -*(this + 11) & 7;
  if (AV1_Syntax::get_bits(this, "trailing", 8 - v15) != 1 << (v15 ^ 7))
  {
    v16 = v3 - ((*(this + 4) - *(this + 2) + ((v8 - *(this + 11)) >> 3)) & 0x1FFFFFFF);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: Corrupted metadata OBU\n", v17, 2u);
    }

    AV1_Syntax::skip_bytes(this, v16);
  }

  return (*(this + 4) - *(this + 2) + ((v8 - *(this + 11)) >> 3)) & 0x1FFFFFFF;
}

uint64_t AV1_Syntax::get_bits(AV1_Syntax *this, const char *a2, unsigned int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = *(this + 11);
  if (!v6)
  {
    v7 = 0;
    v9 = *(this + 2);
    v8 = *(this + 3);
    v10 = 4;
    do
    {
      v7 <<= 8;
      if (v9 < v8)
      {
        v6 += 8;
        *(this + 11) = v6;
        *(this + 2) = v9 + 1;
        v7 |= *v9++;
      }

      --v10;
    }

    while (v10);
    if ((~*(this + 3881) & 0x80001) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 67109376;
      v26 = v7;
      v27 = 1024;
      v28 = v6;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", &v25, 0xEu);
      v6 = *(this + 11);
    }

    *(this + 10) = v7;
  }

  v11 = *(this + 10);
  v12 = a3 - v6;
  if (a3 <= v6)
  {
    v18 = 0;
    v13 = *(this + 10);
    v12 = a3;
  }

  else
  {
    v13 = 0;
    v14 = 32 - v6;
    *(this + 11) = 0;
    v16 = *(this + 2);
    v15 = *(this + 3);
    v17 = 4;
    v6 = 0;
    do
    {
      v13 <<= 8;
      if (v16 < v15)
      {
        v6 += 8;
        *(this + 11) = v6;
        *(this + 2) = v16 + 1;
        v13 |= *v16++;
      }

      --v17;
    }

    while (v17);
    v18 = v11 >> v14 << v12;
    if ((~*(this + 3881) & 0x80001) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 67109376;
      v26 = v13;
      v27 = 1024;
      v28 = v6;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", &v25, 0xEu);
      v6 = *(this + 11);
    }
  }

  if (v12 >= v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v12;
  }

  v19 = (v13 >> -v20) | v18;
  v21 = v6 - v20;
  *(this + 10) = v13 << v20;
  *(this + 11) = v21;
  if ((~*(this + 3881) & 0x80001) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(this + 2);
    v23 = 8 * (v22 - *(this + 2)) - (v21 + a3);
    v25 = 67110402;
    v26 = v23;
    v27 = 1024;
    v28 = a3;
    v29 = 2080;
    v30 = a2;
    v31 = 1024;
    v32 = v19;
    v33 = 1024;
    v34 = v21;
    v35 = 2048;
    v36 = v22 - 4;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %d: get_bits(%d): %s = %d, m_bits_left %d from buffer: %p\n", &v25, 0x2Eu);
  }

  return v19;
}

uint64_t AV1_Syntax::superres_params(AV1_Syntax *this, int *a2, int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(this + 11);
  v3 = *(this + 12);
  *(v3 + 364) = *a2;
  *(v3 + 368) = *a3;
  if (!*(v4 + 66))
  {
    return 0;
  }

  result = AV1_Syntax::get_bits(this, "use_superres", 1u);
  if (result)
  {
    bits = AV1_Syntax::get_bits(this, "coded_denom", 3u);
    v9 = *(this + 12);
    *(v9 + 372) = bits;
    if ((bits & 0xF8) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "superres_params";
        v14 = 1024;
        v15 = bits;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v12, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
      *(v9 + 372) = bits + 9;
      if (*a2 >= 16)
      {
        v10 = 16;
      }

      else
      {
        v10 = *a2;
      }

      v11 = (8 * *a2 + ((bits + 9) >> 1)) / (bits + 9);
      if (v11 <= v10)
      {
        v11 = v10;
      }

      *a2 = v11;
    }
  }

  else
  {
    *(*(this + 12) + 372) = 8;
  }

  return result;
}

uint64_t AV1_Syntax::render_size(AV1_Syntax *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = AV1_Syntax::get_bits(this, "render_and_frame_size_different", 1u);
  if (!result)
  {
    v5 = *(this + 12);
    v5[89] = v5[91];
    v5[90] = v5[92];
    return result;
  }

  bits = AV1_Syntax::get_bits(this, "render_width_minus_1", 0x10u);
  v4 = bits + 1;
  *(*(this + 12) + 356) = bits + 1;
  if (bits >= 0x10000)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = AV1_Syntax::get_bits(this, "render_height_minus_1", 0x10u);
  v4 = v6 + 1;
  *(*(this + 12) + 360) = v6 + 1;
  if (v6 >= 0x10000)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v7 = 136315394;
      v8 = "render_size";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v7, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void AV1_Syntax::read_tile_info_max_tile(AV1_Syntax *this)
{
  v2 = *(this + 12);
  v3 = *(*(this + 11) + 36);
  v4 = -1;
  v5 = ~(-1 << v3);
  v6 = (v2[97] + v5) & (-1 << v3);
  v7 = ((v2[96] + v5) & (-1 << v3)) >> v3;
  v8 = v3 + 2;
  v9 = 0x1000u >> (v3 + 2);
  v2[193] = v9;
  do
  {
    ++v4;
  }

  while ((v9 << v4) < v7);
  v10 = v6 >> v3;
  v2[201] = v4;
  if (v7 >= 64)
  {
    v11 = 64;
  }

  else
  {
    v11 = v7;
  }

  v12 = -1;
  do
  {
    ++v12;
  }

  while (1 << v12 < v11);
  v2[203] = v12;
  if (v10 >= 64)
  {
    v13 = 64;
  }

  else
  {
    v13 = v10;
  }

  v14 = -1;
  do
  {
    ++v14;
  }

  while (1 << v14 < v13);
  v15 = 0x900000u >> (2 * v8);
  v2[204] = v14;
  v16 = -1;
  do
  {
    ++v16;
  }

  while ((v15 << v16) < v7 * v10);
  if (v16 > v4)
  {
    v4 = v16;
  }

  v2[205] = v4;
  bits = AV1_Syntax::get_bits(this, "uniform_tile_spacing_flag", 1u);
  v2[196] = bits;
  if (bits)
  {
    v18 = v2[201];
    v2[197] = v18;
    if (v18 < v2[203])
    {
      do
      {
        if (!AV1_Syntax::get_bits(this, "increment_tile_cols_log2", 1u))
        {
          break;
        }

        v19 = v2[197] + 1;
        v2[197] = v19;
      }

      while (v19 < v2[203]);
    }
  }

  else
  {
    if (v7 < 1)
    {
      v29 = 0;
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v2[193];
        if (v7 >= v22)
        {
          v23 = v2[193];
        }

        else
        {
          v23 = v7;
        }

        v24 = -1;
        if (v22)
        {
          v25 = v23;
          do
          {
            ++v24;
            v26 = v25 > 1;
            v25 >>= 1;
          }

          while (v26);
        }

        v27 = (1 << (v24 + 1)) - v23;
        v28 = AV1_Syntax::get_bits(this, "width_in_sbs_minus_1", v24);
        if (v28 >= v27)
        {
          v28 = AV1_Syntax::get_bits(this, "width_in_sbs_minus_1", 1u) - v27 + 2 * v28;
        }

        v2[v20 + 206] = v21;
        v21 += v28 + 1;
        v7 -= v28 + 1;
        v29 = v20 + 1;
        if (v7 < 1)
        {
          break;
        }

        v30 = v20++ >= 0x3F;
      }

      while (!v30);
    }

    v2[191] = v29;
    v2[v29 + 206] = v7 + v21;
  }

  AV1_Syntax::calculate_tile_cols(this);
  if (v2[196])
  {
    v31 = v2[202];
    v2[198] = v31;
    if (v31 < v2[204])
    {
      do
      {
        if (!AV1_Syntax::get_bits(this, "increment_tile_rows_log2", 1u))
        {
          break;
        }

        v32 = v2[198] + 1;
        v2[198] = v32;
      }

      while (v32 < v2[204]);
    }
  }

  else
  {
    if (v10 < 1)
    {
      v41 = 0;
      v34 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = v2[194];
        if (v10 >= v35)
        {
          v36 = v2[194];
        }

        else
        {
          v36 = v10;
        }

        v37 = -1;
        if (v35)
        {
          v38 = v36;
          do
          {
            ++v37;
            v26 = v38 > 1;
            v38 >>= 1;
          }

          while (v26);
        }

        v39 = (1 << (v37 + 1)) - v36;
        v40 = AV1_Syntax::get_bits(this, "height_in_sbs_minus_1", v37);
        if (v40 >= v39)
        {
          v40 = AV1_Syntax::get_bits(this, "height_in_sbs_minus_1", 1u) - v39 + 2 * v40;
        }

        v2[v33 + 271] = v34;
        v34 += v40 + 1;
        v10 -= v40 + 1;
        v41 = v33 + 1;
        if (v10 < 1)
        {
          break;
        }

        v30 = v33++ >= 0x3F;
      }

      while (!v30);
    }

    v2[192] = v41;
    v2[v41 + 271] = v34 + v10;
  }

  AV1_Syntax::calculate_tile_rows(this);
}

void AV1_Syntax::calculate_tile_cols(AV1_Syntax *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  v2 = *(*(this + 11) + 36);
  v3 = ~(-1 << v2);
  v4 = ((v1[96] + v3) & (-1 << v2)) >> v2;
  v5 = ((v1[97] + v3) & (-1 << v2)) >> v2;
  v1[195] = -1;
  if (v1[196])
  {
    v7 = ((v4 + ~(-1 << v1[197])) & (-1 << v1[197])) >> v1[197];
    if (v7 <= 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "calculate_tile_cols";
      v26 = 1024;
      v27 = 3957;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v24, 0x12u);
    }

    if (v4 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v1[v8 + 206] = v9;
        v9 += v7;
        ++v8;
      }

      while (v9 < v4);
    }

    v1[191] = v8;
    v1[v8 + 206] = v4;
    v18 = v1[205] - v1[197];
    v19 = v18 & ~(v18 >> 31);
    v1[202] = v19;
    v1[194] = v5 >> v19;
    v20 = v7 << *(*(this + 11) + 36);
    if (v20 >= *(*(this + 12) + 384))
    {
      v20 = *(*(this + 12) + 384);
    }

    v1[199] = v20;
    if (v8 <= 1)
    {
      return;
    }

LABEL_34:
    v1[195] = v20;
    return;
  }

  v10 = v1[191];
  v11 = -1;
  do
  {
    ++v11;
  }

  while (1 << v11 < v10);
  v1[197] = v11;
  if (v10 < 1)
  {
    v15 = 0x10000;
    v14 = 1;
  }

  else
  {
    v12 = 0;
    v13 = v1[206];
    v14 = 1;
    v15 = 0x10000;
    do
    {
      v16 = v1[v12 + 207] - v13;
      if (v14 <= v16)
      {
        v14 = v16;
      }

      if (v15 < v16)
      {
        v16 = v15;
      }

      v17 = v12 + 1;
      if (v12 < (v10 - 1))
      {
        v15 = v16;
      }

      v13 = v1[v12++ + 207];
    }

    while (v10 != v17);
  }

  v21 = v1[205];
  if (v21)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = ((v5 * v4) >> v22) / v14;
  if (v23 <= 1)
  {
    v23 = 1;
  }

  v1[194] = v23;
  if (v10 > 1)
  {
    v20 = v15 << v2;
    goto LABEL_34;
  }
}

void AV1_Syntax::calculate_tile_rows(AV1_Syntax *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(this + 12);
  if (v1[196])
  {
    v3 = *(*(this + 11) + 36);
    v4 = ((v1[97] + ~(-1 << v3)) & (-1 << v3)) >> v3;
    v5 = ((v4 + ~(-1 << v1[198])) & (-1 << v1[198])) >> v1[198];
    if (v5 <= 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "calculate_tile_rows";
      v12 = 1024;
      v13 = 4013;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v10, 0x12u);
    }

    if (v4 < 1)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v1[v6 + 271] = v7;
        v7 += v5;
        ++v6;
      }

      while (v7 < v4);
    }

    v1[192] = v6;
    v1[v6 + 271] = v4;
    v9 = v5 << *(*(this + 11) + 36);
    if (v9 >= *(*(this + 12) + 388))
    {
      v9 = *(*(this + 12) + 388);
    }

    v1[200] = v9;
  }

  else
  {
    v8 = -1;
    do
    {
      ++v8;
    }

    while (1 << v8 < v1[192]);
    v1[198] = v8;
  }
}

BOOL AV1_Syntax::read_global_motion_params(AV1_Syntax *a1, uint64_t a2, int *a3)
{
  if (!AV1_Syntax::get_bits(a1, "is_global", 1u))
  {
    *(a2 + 28) = unk_27775E1EC;
    *a2 = av1_default_warp_params;
    *(a2 + 16) = unk_27775E1E0;
    *(a2 + 40) = 0;
    *(a2 + 16) = 0x1000000000000;
    goto LABEL_164;
  }

  bits = AV1_Syntax::get_bits(a1, "is_rot_zoom", 1u);
  v144 = a2;
  if (bits)
  {
    v6 = 2;
  }

  else
  {
    if (AV1_Syntax::get_bits(a1, "is_translation", 1u))
    {
      *(a2 + 28) = unk_27775E1EC;
      *a2 = av1_default_warp_params;
      *(a2 + 16) = unk_27775E1E0;
      *(a2 + 40) = 1;
      *(a2 + 16) = 0x1000000000000;
      v17 = *(*(a1 + 12) + 158);
      v18 = v17 | 8;
      v143 = 0x2000 << (v17 ^ 1);
      v19 = 14 - v17;
      goto LABEL_112;
    }

    v6 = 3;
  }

  v7 = 0;
  v8 = 0;
  *(a2 + 28) = unk_27775E1EC;
  *a2 = av1_default_warp_params;
  *(a2 + 16) = unk_27775E1E0;
  *(a2 + 40) = v6;
  v9 = a3[2];
  v10 = (v9 >> 1) - 28672;
  v11 = 3;
  do
  {
    if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
    {
      v16 = AV1_Syntax::get_bits(a1, "subexpfin-2", v11) + v8;
      goto LABEL_21;
    }

    v12 = 1 << v11;
    v11 = v7 + 3;
    v13 = 24 << v7++;
    v8 += v12;
  }

  while (v8 + v13 <= 0x2000);
  v14 = (8193 - v8);
  if (v14 >= 2)
  {
    v20 = 0;
    v21 = 4;
    v22 = (8193 - v8);
    do
    {
      v23 = 1 << v21;
      if (v22 >> (1 << v21))
      {
        v22 >>= 1 << v21;
      }

      else
      {
        v23 = 0;
      }

      v20 += v23;
      --v21;
    }

    while (v21 != -1);
    v24 = (1 << (v20 + 1)) - v14;
    v15 = AV1_Syntax::get_bits(a1, "quniform-1", v20);
    if (v15 >= v24)
    {
      v15 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v24 + 2 * v15;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 + v8;
LABEL_21:
  v25 = 0;
  v26 = 0;
  v27 = -28672 - (v9 >> 1);
  v28 = v16 + 1;
  v29 = v27 - (v28 >> 1);
  if ((v16 & 1) == 0)
  {
    v29 = v27 + ((v16 & 0xFFFE) >> 1);
  }

  if (v16 <= 2 * v27)
  {
    v30 = v29;
  }

  else
  {
    v30 = v16;
  }

  v31 = 0x2000 - v30;
  v32 = v10 - (v28 >> 1);
  if (v16)
  {
    v33 = v32;
  }

  else
  {
    v33 = v10 + ((v16 & 0xFFFE) >> 1);
  }

  if (2 * (v10 & 0x7FFFu) >= v16)
  {
    v16 = v33;
  }

  if (((v9 >> 1) - 28672) > 0x1000u)
  {
    v16 = v31;
  }

  *(v144 + 8) = ((v16 - 4096) << 16 >> 15) + 0x10000;
  v34 = a3[3];
  v35 = (v34 >> 1) + 4096;
  v36 = 3;
  do
  {
    if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
    {
      v41 = AV1_Syntax::get_bits(a1, "subexpfin-2", v36) + v26;
      goto LABEL_47;
    }

    v37 = 1 << v36;
    v36 = v25 + 3;
    v38 = 24 << v25++;
    v26 += v37;
  }

  while (v26 + v38 <= 0x2000);
  v39 = (8193 - v26);
  if (v39 >= 2)
  {
    v42 = 0;
    v43 = 4;
    v44 = (8193 - v26);
    do
    {
      v45 = 1 << v43;
      if (v44 >> (1 << v43))
      {
        v44 >>= 1 << v43;
      }

      else
      {
        v45 = 0;
      }

      v42 += v45;
      --v43;
    }

    while (v43 != -1);
    v46 = (1 << (v42 + 1)) - v39;
    v40 = AV1_Syntax::get_bits(a1, "quniform-1", v42);
    if (v40 >= v46)
    {
      v40 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v46 + 2 * v40;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v26;
LABEL_47:
  v47 = 4096 - (v34 >> 1);
  v48 = v41 + 1;
  v49 = v47 - (v48 >> 1);
  if ((v41 & 1) == 0)
  {
    v49 = v47 + ((v41 & 0xFFFE) >> 1);
  }

  if (v41 <= 2 * v47)
  {
    v50 = v49;
  }

  else
  {
    v50 = v41;
  }

  v51 = 0x2000 - v50;
  v52 = v35 - (v48 >> 1);
  if (v41)
  {
    v53 = v52;
  }

  else
  {
    v53 = v35 + ((v41 & 0xFFFE) >> 1);
  }

  if (2 * (v35 & 0x7FFFu) >= v41)
  {
    v41 = v53;
  }

  if (((v34 >> 1) + 4096) > 0x1000u)
  {
    v41 = v51;
  }

  v54 = (v41 - 4096) << 16 >> 15;
  *(v144 + 12) = v54;
  if (bits)
  {
    v55 = *(v144 + 8);
    *(v144 + 16) = -v54;
    *(v144 + 20) = v55;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = a3[4];
    v59 = (v58 >> 1) + 4096;
    v60 = 3;
    do
    {
      if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
      {
        v66 = AV1_Syntax::get_bits(a1, "subexpfin-2", v60) + v57;
        v65 = v144;
        goto LABEL_76;
      }

      v61 = 1 << v60;
      v60 = v56 + 3;
      v62 = 24 << v56++;
      v57 += v61;
    }

    while (v57 + v62 <= 0x2000);
    v63 = (8193 - v57);
    if (v63 >= 2)
    {
      v67 = 0;
      v68 = 4;
      v69 = (8193 - v57);
      do
      {
        v70 = 1 << v68;
        if (v69 >> (1 << v68))
        {
          v69 >>= 1 << v68;
        }

        else
        {
          v70 = 0;
        }

        v67 += v70;
        --v68;
      }

      while (v68 != -1);
      v71 = (1 << (v67 + 1)) - v63;
      v64 = AV1_Syntax::get_bits(a1, "quniform-1", v67);
      v65 = v144;
      if (v64 >= v71)
      {
        v64 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v71 + 2 * v64;
      }
    }

    else
    {
      v64 = 0;
      v65 = v144;
    }

    v66 = v64 + v57;
LABEL_76:
    v72 = 0;
    v73 = 0;
    v74 = 4096 - (v58 >> 1);
    v75 = v66 + 1;
    v76 = v74 - (v75 >> 1);
    if ((v66 & 1) == 0)
    {
      v76 = v74 + ((v66 & 0xFFFE) >> 1);
    }

    if (v66 <= 2 * v74)
    {
      v77 = v76;
    }

    else
    {
      v77 = v66;
    }

    v78 = 0x2000 - v77;
    v79 = v59 - (v75 >> 1);
    if (v66)
    {
      v80 = v79;
    }

    else
    {
      v80 = v59 + ((v66 & 0xFFFE) >> 1);
    }

    if (2 * (v59 & 0x7FFFu) >= v66)
    {
      v66 = v80;
    }

    if (((v58 >> 1) + 4096) > 0x1000u)
    {
      v66 = v78;
    }

    *(v65 + 16) = (v66 - 4096) << 16 >> 15;
    v81 = a3[5];
    v82 = (v81 >> 1) - 28672;
    v83 = 3;
    do
    {
      if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
      {
        v89 = AV1_Syntax::get_bits(a1, "subexpfin-2", v83) + v73;
        v88 = v144;
        goto LABEL_102;
      }

      v84 = 1 << v83;
      v83 = v72 + 3;
      v85 = 24 << v72++;
      v73 += v84;
    }

    while (v73 + v85 <= 0x2000);
    v86 = (8193 - v73);
    if (v86 >= 2)
    {
      v90 = 0;
      v91 = 4;
      v92 = (8193 - v73);
      do
      {
        v93 = 1 << v91;
        if (v92 >> (1 << v91))
        {
          v92 >>= 1 << v91;
        }

        else
        {
          v93 = 0;
        }

        v90 += v93;
        --v91;
      }

      while (v91 != -1);
      v94 = (1 << (v90 + 1)) - v86;
      v87 = AV1_Syntax::get_bits(a1, "quniform-1", v90);
      v88 = v144;
      if (v87 >= v94)
      {
        v87 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v94 + 2 * v87;
      }
    }

    else
    {
      v87 = 0;
      v88 = v144;
    }

    v89 = v87 + v73;
LABEL_102:
    v95 = v89;
    if (((v81 >> 1) - 28672) <= 0x1000u)
    {
      if (2 * (v82 & 0x7FFFu) >= v89)
      {
        v89 = v82 + ((v89 & 0xFFFE) >> 1);
        if (v95)
        {
          v89 = v82 - ((v95 + 1) >> 1);
        }
      }
    }

    else
    {
      v96 = -28672 - (v81 >> 1);
      if (v89 <= 2 * (-28672 - (v81 >> 1)))
      {
        v89 = v96 + ((v89 & 0xFFFE) >> 1);
        if (v95)
        {
          v89 = v96 - ((v95 + 1) >> 1);
        }
      }

      v89 = 0x2000 - v89;
    }

    *(v88 + 20) = ((v89 - 4096) << 16 >> 15) + 0x10000;
  }

  v19 = 10;
  v18 = 12;
  v143 = 1024;
LABEL_112:
  v97 = 0;
  v98 = 0;
  v99 = 1 << v18;
  v100 = (*a3 >> v19) + (1 << v18);
  v141 = v19;
  v142 = 2 * (1 << v18);
  v101 = (2 * (1 << v18)) | 1;
  v102 = 3;
  do
  {
    if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
    {
      v107 = AV1_Syntax::get_bits(a1, "subexpfin-2", v102) + v98;
      goto LABEL_126;
    }

    v103 = 1 << v102;
    v102 = v97 + 3;
    v104 = 24 << v97++;
    v98 += v103;
  }

  while (v98 + v104 < v101);
  v105 = (v101 - v98);
  if (v105 >= 2)
  {
    v108 = 0;
    v109 = 4;
    v110 = (v101 - v98);
    do
    {
      v111 = 1 << v109;
      if (v110 >> (1 << v109))
      {
        v110 >>= 1 << v109;
      }

      else
      {
        v111 = 0;
      }

      v108 += v111;
      --v109;
    }

    while (v109 != -1);
    v112 = (1 << (v108 + 1)) - v105;
    v106 = AV1_Syntax::get_bits(a1, "quniform-1", v108);
    if (v106 >= v112)
    {
      v106 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v112 + 2 * v106;
    }
  }

  else
  {
    LOWORD(v106) = 0;
  }

  LOWORD(v107) = v106 + v98;
LABEL_126:
  v113 = 0;
  v114 = 0;
  v115 = v107 + 1;
  v116 = v142 - v100 - (v115 >> 1);
  if ((v107 & 1) == 0)
  {
    v116 = v142 - v100 + ((v107 & 0xFFFE) >> 1);
  }

  v117 = 2 * v100;
  if (v107 > 2 * (v142 - v100))
  {
    LOWORD(v116) = v107;
  }

  v118 = v142 - v116;
  v119 = v100 - (v115 >> 1);
  if (v107)
  {
    LOWORD(v120) = v119;
  }

  else
  {
    v120 = v100 + ((v107 & 0xFFFE) >> 1);
  }

  if (v117 >= v107)
  {
    LOWORD(v107) = v120;
  }

  if (v117 > v101)
  {
    LOWORD(v107) = v118;
  }

  *v144 = v143 * (v107 - v99);
  v121 = (a3[1] >> v141) + v99;
  v122 = 3;
  do
  {
    if (!AV1_Syntax::get_bits(a1, "subexpfin-1", 1u))
    {
      v127 = AV1_Syntax::get_bits(a1, "subexpfin-2", v122) + v114;
      goto LABEL_151;
    }

    v123 = 1 << v122;
    v122 = v113 + 3;
    v124 = 24 << v113++;
    v114 += v123;
  }

  while (v114 + v124 < v101);
  v125 = (v101 - v114);
  if (v125 >= 2)
  {
    v128 = 0;
    v129 = 4;
    v130 = (v101 - v114);
    do
    {
      v131 = 1 << v129;
      if (v130 >> (1 << v129))
      {
        v130 >>= 1 << v129;
      }

      else
      {
        v131 = 0;
      }

      v128 += v131;
      --v129;
    }

    while (v129 != -1);
    v132 = (1 << (v128 + 1)) - v125;
    v126 = AV1_Syntax::get_bits(a1, "quniform-1", v128);
    if (v126 >= v132)
    {
      v126 = AV1_Syntax::get_bits(a1, "quniform-2", 1u) - v132 + 2 * v126;
    }
  }

  else
  {
    LOWORD(v126) = 0;
  }

  LOWORD(v127) = v126 + v114;
LABEL_151:
  v133 = 2 * v121;
  v134 = v127 + 1;
  v135 = v142 - v121 - (v134 >> 1);
  if ((v127 & 1) == 0)
  {
    v135 = v142 - v121 + ((v127 & 0xFFFE) >> 1);
  }

  if (v127 <= 2 * (v142 - v121))
  {
    v136 = v135;
  }

  else
  {
    v136 = v127;
  }

  v137 = v142 - v136;
  v138 = v121 - (v134 >> 1);
  if (v127)
  {
    LOWORD(v139) = v138;
  }

  else
  {
    v139 = v121 + ((v127 & 0xFFFE) >> 1);
  }

  if (v133 >= v127)
  {
    LOWORD(v127) = v139;
  }

  if (v133 > v101)
  {
    LOWORD(v127) = v137;
  }

  a2 = v144;
  *(v144 + 4) = v143 * (v127 - v99);
  if (*(v144 + 40) <= 3)
  {
LABEL_164:
    result = AV1_Syntax::av1_get_shear_params(a1, a2);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

BOOL AV1_Syntax::av1_get_shear_params(AV1_Syntax *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 < 1)
  {
    return 0;
  }

  if (v3 >= 0x17FFF)
  {
    v4 = 98303;
  }

  else
  {
    v4 = v3;
  }

  if (v4 <= 0x8000)
  {
    LOWORD(v4) = 0x8000;
  }

  *(a2 + 32) = v4;
  v5 = *(a2 + 12);
  if (v5 >= 0x7FFF)
  {
    v5 = 0x7FFF;
  }

  if (v5 <= -32768)
  {
    LOWORD(v5) = 0x8000;
  }

  *(a2 + 34) = v5;
  v36 = 0;
  v6 = AV1_Syntax::resolve_divisor_32(a1, v3, &v36);
  if (*(a2 + 8) >= 0)
  {
    LOWORD(v7) = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = v7;
  v9 = *(a2 + 16);
  v10 = (v9 * v7) << 16;
  v11 = 1 << v36 >> 1;
  v12 = (v11 + v10) >> v36;
  v13 = v10 >= 0;
  v14 = (v11 - v10) >> v36;
  if (v13)
  {
    LODWORD(v15) = v12;
  }

  else
  {
    v15 = -v14;
  }

  if (v15 >= 0x7FFF)
  {
    v16 = 0x7FFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= -32768)
  {
    v16 = -32768;
  }

  v17 = v8 * v9 * *(a2 + 12);
  if (v17 < 0)
  {
    v18 = -((v11 - v17) >> v36);
  }

  else
  {
    v18 = (v11 + v17) >> v36;
  }

  v19 = *(a2 + 20) - v18;
  if (v19 >= 98303)
  {
    v19 = 98303;
  }

  if (v19 <= 0x8000)
  {
    LOWORD(v19) = 0x8000;
  }

  v20 = *(a2 + 32);
  if (*(a2 + 32) < 0)
  {
    v21 = -((32 - v20) >> 6);
  }

  else
  {
    v21 = (v20 + 32) >> 6;
  }

  v22 = v21 << 6;
  *(a2 + 32) = v22;
  v23 = *(a2 + 34);
  if ((v23 & 0x8000) != 0)
  {
    v24 = -((32 - v23) >> 6);
  }

  else
  {
    v24 = (v23 + 32) >> 6;
  }

  v25 = v24 << 6;
  *(a2 + 34) = v25;
  v26 = (v16 + 32) >> 6;
  v27 = -((32 - v16) >> 6);
  if (v15 < 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 << 6;
  *(a2 + 36) = v29;
  v30 = -((32 - v19) >> 6);
  if ((v19 & 0x8000) == 0)
  {
    v30 = (v19 + 32) >> 6;
  }

  v31 = v30 << 6;
  *(a2 + 38) = v31;
  v32 = v22;
  if (v22 < 0)
  {
    v32 = -v22;
  }

  v33 = v25;
  if (v25 < 0)
  {
    v33 = -v25;
  }

  if ((7 * v33 + 4 * v32) >> 16)
  {
    return 0;
  }

  v34 = vabs_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v29, v31), 0x10uLL), 0x10uLL));
  return (v34.i32[0] + v34.i32[1]) < 0x4000;
}

uint64_t AV1_Syntax::resolve_divisor_32(AV1_Syntax *this, unsigned int a2, __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "get_msb";
    v16 = 1024;
    v17 = 4495;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v14, 0x12u);
  }

  v5 = 0;
  v6 = 4;
  v7 = a2;
  do
  {
    v8 = 1 << v6;
    if (v7 >> (1 << v6))
    {
      v7 >>= 1 << v6;
    }

    else
    {
      LOWORD(v8) = 0;
    }

    v5 += v8;
    --v6;
  }

  while (v6 != -1);
  *a3 = v5;
  v9 = (-1 << v5) + a2;
  v10 = v9 << (8 - v5);
  v11 = (v9 + (1 << (v5 - 8) >> 1)) >> (v5 - 8);
  if (v5 >= 9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >= 257 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "resolve_divisor_32";
    v16 = 1024;
    v17 = 4597;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v14, 0x12u);
    v5 = *a3;
  }

  *a3 = v5 + 14;
  return av1_div_lut[v12];
}

uint64_t AV1_Syntax::set_frame_refs(void)::{lambda(void const*,void const*)#1}::__invoke(_DWORD *a1, _DWORD *a2)
{
  v3 = a1[4];
  v4 = a2[4];
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*a1 - *a2);
  }

  return result;
}

uint64_t AV1_Syntax::read_obu_header(AV1_Syntax *this)
{
  v18 = *MEMORY[0x277D85DE8];
  **(this + 10) = 1;
  *(*(this + 10) + 4) = AV1_Syntax::get_bits(this, "obu_forbidden_bit", 1u);
  *(*(this + 10) + 8) = AV1_Syntax::get_bits(this, "obu_type", 4u);
  *(*(this + 10) + 16) = AV1_Syntax::get_bits(this, "obu_extension_flag", 1u);
  *(*(this + 10) + 12) = AV1_Syntax::get_bits(this, "obu_has_size_field", 1u);
  bits = AV1_Syntax::get_bits(this, "obu_reserved_1bit", 1u);
  if (bits)
  {
    if ((*(this + 15526) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = bits;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v14 = 136315394;
    v15 = "read_obu_header";
    v16 = 1024;
    LODWORD(v17) = v3;
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s: obu_reserved_1bit must be set to 0. obu_reserved_1bit %d\n";
    goto LABEL_19;
  }

  v6 = *(this + 10);
  v6[5] = 0;
  v6[6] = 0;
  if (!v6[4])
  {
    return 0;
  }

  if (*(this + 11) <= 7u && (*(this + 3) - *(this + 2)) <= 0)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v13 = *(this + 4);
    v14 = 136315394;
    v15 = "read_obu_header";
    v16 = 2048;
    v17 = v13;
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: %s: m_buf_len should > 1 byte because there is extension header. m_buf_len = %lu\n";
    v12 = 22;
    goto LABEL_20;
  }

  ++*v6;
  v7 = AV1_Syntax::get_bits(this, "temporal_id", 3u);
  *(*(this + 10) + 20) = v7;
  if (v7 < 8)
  {
    v10 = AV1_Syntax::get_bits(this, "spatial_id", 2u);
    *(*(this + 10) + 24) = v10;
    if (v10 < 4)
    {
      result = AV1_Syntax::get_bits(this, "extension_header_reserved_3bits", 3u);
      if (!result)
      {
        return result;
      }

      if (*(this + 15526))
      {
        v11 = result;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315394;
          v15 = "read_obu_header";
          v16 = 1024;
          LODWORD(v17) = v11;
          v4 = MEMORY[0x277D86220];
          v5 = "AppleAVD: %s: extension_header_reserved_3bits must be set to 0. extension_header_reserved_3bits %d\n";
          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = v10;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v14 = 136315394;
      v15 = "read_obu_header";
      v16 = 1024;
      LODWORD(v17) = v8;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: %s: value %d out of range!\n";
LABEL_19:
      v12 = 18;
LABEL_20:
      _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v14, v12);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AV1_Syntax::timing_info(AV1_Syntax *a1, _DWORD *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(a1, "num_units_in_display_tick", 0x20u);
  *a2 = bits;
  if (!bits)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    return 0xFFFFFFFFLL;
  }

  v5 = AV1_Syntax::get_bits(a1, "time_scale", 0x20u);
  a2[1] = v5;
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:
      v15 = 136315394;
      v16 = "timing_info";
      v17 = 1024;
      v18 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "AppleAVD: %s: value %d out of range!\n";
      v10 = 18;
LABEL_13:
      _os_log_impl(&dword_277606000, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, v10);
    }

    return 0xFFFFFFFFLL;
  }

  if (!*a2)
  {
    if ((*(a1 + 15526) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = v5;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v15 = 136315650;
    v16 = "timing_info";
    v17 = 1024;
    v18 = 0;
    v19 = 1024;
    v20 = v13;
    v8 = MEMORY[0x277D86220];
    v9 = "AppleAVD: %s: num_units_in_display_tick and time_scale must be greater than 0. num_units_in_display_tick %d time_scale %d\n";
    v10 = 24;
    goto LABEL_13;
  }

  v6 = AV1_Syntax::get_bits(a1, "equal_picture_interval", 1u);
  a2[2] = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  while (!AV1_Syntax::get_bits(a1, "num_ticks_per_picture_minus_1", 1u))
  {
    if (++v7 == 32)
    {
      goto LABEL_21;
    }
  }

  v14 = AV1_Syntax::get_bits(a1, "num_ticks_per_picture_minus_1", v7);
  if (v14 != -1 << v7)
  {
    v11 = 0;
    a2[3] = v14 - (-1 << v7);
    return v11;
  }

LABEL_21:
  if ((*(a1 + 15526) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0xFFFFFFFFLL;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "timing_info";
    v17 = 1024;
    v18 = -1;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: um_ticks_per_picture_minus_1 cannot be (1 << 32) − 1. num_ticks_per_picture_minus_1 %d\n", &v15, 0x12u);
  }

  return v11;
}

uint64_t AV1_Syntax::op_parameters_info(AV1_Syntax *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 276);
  bits = AV1_Syntax::get_bits(a1, "decoder_buffer_delay", v5);
  *(a3 + 24) = bits;
  v7 = ~(-1 << v5);
  if (bits > v7)
  {
    v8 = bits;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = AV1_Syntax::get_bits(a1, "encoder_buffer_delay", v5);
  *(a3 + 28) = v9;
  if (v9 > v7)
  {
    v8 = v9;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v12 = 136315394;
      v13 = "op_parameters_info";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v12, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  v11 = AV1_Syntax::get_bits(a1, "low_delay_mode_flag", 1u);
  result = 0;
  *(a3 + 32) = v11;
  return result;
}

uint64_t AV1_Syntax::color_config(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(a1, "high_bitdepth", 1u);
  v7 = *(a2 + 72);
  v8 = bits != 0;
  if (v7 != 2 || bits == 0)
  {
    if (v7 > 2)
    {
      if ((*(a1 + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v31 = 136315394;
      v32 = "color_config";
      v33 = 1024;
      v34 = v7;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: %s: Unsupported profile/bit-depth combination. seq_params->profile %d\n";
      goto LABEL_62;
    }

    if (bits)
    {
      v10 = 10;
    }

    else
    {
      v10 = 8;
    }

    *(a2 + 76) = v10;
  }

  else
  {
    v8 = 1;
    if (AV1_Syntax::get_bits(a1, "twelve_bit", 1u))
    {
      v12 = 12;
    }

    else
    {
      v12 = 10;
    }

    *(a2 + 76) = v12;
    v7 = *(a2 + 72);
  }

  if (a3)
  {
    v13 = v8;
  }

  else
  {
    v13 = 1;
  }

  *(a2 + 80) = v13;
  if (v7 == 1)
  {
    *(a2 + 81) = 0;
    v14 = (a2 + 81);
  }

  else
  {
    v15 = 1;
    v16 = AV1_Syntax::get_bits(a1, "mono_chrome", 1u);
    *(a2 + 81) = v16;
    v14 = (a2 + 81);
    if (v16)
    {
      goto LABEL_22;
    }
  }

  v15 = 3;
LABEL_22:
  *(*(a1 + 96) + 440) = v15;
  if (AV1_Syntax::get_bits(a1, "color_description_present_flag", 1u))
  {
    v17 = AV1_Syntax::get_bits(a1, "color_primaries", 8u);
    *(a2 + 84) = v17;
    if (v17 >= 0x100)
    {
      v18 = v17;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      return 0xFFFFFFFFLL;
    }

    v23 = AV1_Syntax::get_bits(a1, "transfer_characteristics", 8u);
    *(a2 + 88) = v23;
    if (v23 >= 0x100)
    {
      v18 = v23;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      return 0xFFFFFFFFLL;
    }

    v18 = AV1_Syntax::get_bits(a1, "matrix_coefficients", 8u);
    *(a2 + 92) = v18;
    if (v18 >= 0x100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a2 + 84) = 0x200000002;
    v18 = 2;
    *(a2 + 92) = 2;
  }

  if (*v14)
  {
    v19 = AV1_Syntax::get_bits(a1, "color_range", 1u);
    result = 0;
    *(a2 + 96) = v19;
    *(a2 + 100) = 0x100000001;
    *(a2 + 108) = 0;
    *(a2 + 112) = 0;
    return result;
  }

  if (*(a2 + 84) == 1 && *(a2 + 88) == 13 && !v18)
  {
    *(a2 + 104) = 0;
    *(a2 + 96) = 1;
    v24 = *(a2 + 72);
    if (v24 != 1 && (v24 != 2 || *(a2 + 76) != 12))
    {
      if ((*(a1 + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v31 = 136315138;
      v32 = "color_config";
      v21 = MEMORY[0x277D86220];
      v22 = "AppleAVD: %s: Unsupported bitstream, sRGB colorspace not compatible with specified profile\n";
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  *(a2 + 96) = AV1_Syntax::get_bits(a1, "color_range", 1u);
  v25 = *(a2 + 72);
  if (v25 == 1)
  {
    *(a2 + 100) = 0;
    *(a2 + 104) = 0;
    goto LABEL_57;
  }

  if (!v25)
  {
    *(a2 + 100) = 0x100000001;
    goto LABEL_57;
  }

  if (*(a2 + 76) == 12)
  {
    v26 = AV1_Syntax::get_bits(a1, "subsampling_x", 1u);
    *(a2 + 100) = v26;
    if (v26)
    {
      v27 = AV1_Syntax::get_bits(a1, "subsampling_y", 1u);
      *(a2 + 104) = v27;
      LOBYTE(v25) = v27 == 0;
      goto LABEL_57;
    }

    *(a2 + 104) = 0;
  }

  else
  {
    *(a2 + 100) = 1;
  }

  LOBYTE(v25) = 1;
LABEL_57:
  if (*(a2 + 92))
  {
    if (!((*(a2 + 100) == 0) | v25 & 1))
    {
      v28 = AV1_Syntax::get_bits(a1, "chroma_sample_position", 2u);
      *(a2 + 108) = v28;
      if (v28 >= 3)
      {
        v18 = v28;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_61:
          v31 = 136315394;
          v32 = "color_config";
          v33 = 1024;
          v34 = v18;
          v21 = MEMORY[0x277D86220];
          v22 = "AppleAVD: %s: value %d out of range!\n";
LABEL_62:
          v29 = 18;
LABEL_63:
          _os_log_impl(&dword_277606000, v21, OS_LOG_TYPE_DEFAULT, v22, &v31, v29);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  else if (((*(a2 + 100) == 0) & v25) == 0)
  {
    if ((*(a1 + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v31 = 136315138;
    v32 = "color_config";
    v21 = MEMORY[0x277D86220];
    v22 = "AppleAVD: %s: Unsupported bitstream. Identity CICP Matrix incompatible with non 4:4:4 color sampling\n";
LABEL_70:
    v29 = 12;
    goto LABEL_63;
  }

LABEL_66:
  v30 = AV1_Syntax::get_bits(a1, "separate_uv_delta_q", 1u);
  result = 0;
  *(a2 + 112) = v30;
  return result;
}

uint64_t AV1_Syntax::check_trailing_bits(AV1_Syntax *this)
{
  v1 = -*(this + 11) & 7;
  if (AV1_Syntax::get_bits(this, "trailing", 8 - v1) == 1 << (v1 ^ 7))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AV1_Syntax::read_tile_group_header(AV1_Syntax *this, int *a2, int *a3, int a4, unsigned int *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = *(this + 11);
  v12 = *(this + 12);
  v13 = v12[191] * v12[192];
  if (v12[336])
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 < 2;
  }

  if (v14)
  {
    goto LABEL_6;
  }

  bits = AV1_Syntax::get_bits(this, "tile_start_and_end_present_flag", 1u);
  if (a4 && bits)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315138;
    v34 = "read_tile_group_header";
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: %s: For OBU_FRAME type obu tile_start_and_end_present_flag must be 0. \n";
    v22 = 12;
    goto LABEL_29;
  }

  v23 = *(this + 12);
  if (v23[336] || bits == 0)
  {
LABEL_6:
    *a2 = 0;
    v15 = v13 - 1;
    *a3 = v13 - 1;
  }

  else
  {
    v25 = v23[197];
    v32 = v23[198];
    v26 = AV1_Syntax::get_bits(this, "tile_bits", v25 + v32);
    v15 = v26;
    *a2 = v26;
    if (v26 < 0 || v26 > *(this + 3096))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_28;
    }

    v31 = AV1_Syntax::get_bits(this, "tile_bits", v25 + v32);
    v15 = v31;
    *a3 = v31;
    if (v31 < 0 || v31 > v13)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_28:
      *buf = 136315394;
      v34 = "read_tile_group_header";
      v35 = 1024;
      v36 = v15;
      v18 = MEMORY[0x277D86220];
      v19 = "AppleAVD: %s: value %d out of range!\n";
      v22 = 18;
      goto LABEL_29;
    }
  }

  v16 = *a2;
  v17 = *(this + 3096);
  if (v16 != v17)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    v34 = "read_tile_group_header";
    v35 = 1024;
    v36 = v16;
    v37 = 1024;
    v38 = v17;
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: %s: tg_start (%d) must be equal to %d \n";
LABEL_20:
    v22 = 24;
LABEL_29:
    _os_log_impl(&dword_277606000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v22);
    return 0xFFFFFFFFLL;
  }

  if (v16 > v15)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    v34 = "read_tile_group_header";
    v35 = 1024;
    v36 = v15;
    v37 = 1024;
    v38 = v16;
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: %s: tg_end (%d) must be greater than or equal to tg_start (%d) \n";
    goto LABEL_20;
  }

  if (v15 >= v13)
  {
    if ((*(this + 15526) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    v34 = "read_tile_group_header";
    v35 = 1024;
    v36 = v15;
    v37 = 1024;
    v38 = v13;
    v18 = MEMORY[0x277D86220];
    v19 = "AppleAVD: %s: tg_end (%d) must be less than NumTiles (%d) \n";
    goto LABEL_20;
  }

  v28 = 8 * (v9 - v10) - v11;
  if (v15 == v13 - 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v15 + 1;
  }

  *(this + 3096) = v29;
  v30 = v28 + *(this + 11);
  if ((-v30 & 7) != 0)
  {
    AV1_Syntax::get_bits(this, "skip bits", 8 - (-v30 & 7));
    v30 = v28 + *(this + 11);
  }

  result = 0;
  *a5 = (8 * (*(this + 4) - *(this + 2)) - v30 + 7) >> 3;
  return result;
}

uint64_t AV1_Syntax::metadata_itut_t35(AV1_Syntax *this, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(this, "itu_t_t35_country_code", 8u);
  v5 = bits;
  *(this + 3071) = bits;
  if (bits >= 0x100)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_3:
    v14 = 136315394;
    v15 = "metadata_itut_t35";
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v14, 0x12u);
    return 0xFFFFFFFFLL;
  }

  if (bits == 255)
  {
    v7 = AV1_Syntax::get_bits(this, "itu_t_t35_country_code_extension_byte", 8u);
    *(this + 3072) = v7;
    if (v7 >= 0x100)
    {
      v5 = v7;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_3;
    }

    v8 = a2 - 2;
  }

  else
  {
    v8 = a2 - 1;
  }

  v9 = *(this + 11);
  if ((v9 & 7) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "metadata_itut_t35";
    v16 = 1024;
    v17 = 1101;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v14, 0x12u);
    v9 = *(this + 11);
  }

  v10 = (v8 & (v8 >> 31)) - 1;
  v11 = v8 - 1;
  while (1)
  {
    v12 = __OFSUB__(v8, 1);
    LODWORD(v8) = v8 - 1;
    if (v8 < 0 != v12)
    {
      break;
    }

    if (*(*(this + 2) - (v9 >> 3) + v11--))
    {
      goto LABEL_19;
    }
  }

  LODWORD(v8) = v10;
LABEL_19:
  if (v8 >= 1)
  {
    do
    {
      AV1_Syntax::get_bits(this, "itu_t_t35_payload_bytes", 8u);
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
  }

  return 0;
}

uint64_t AV1_Syntax::metadata_hdr_cll(AV1_Syntax *this)
{
  v10 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(this, "max_cll", 0x10u);
  *(this + 3073) = bits;
  if (bits >= 0x10000)
  {
    v3 = bits;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = AV1_Syntax::get_bits(this, "max_fall", 0x10u);
  *(this + 3074) = v4;
  if (v4 >= 0x10000)
  {
    v3 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v6 = 136315394;
      v7 = "metadata_hdr_cll";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v6, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t AV1_Syntax::metadata_hdr_mdcv(AV1_Syntax *this)
{
  v2 = -12;
  do
  {
    *(this + v2 + 12312) = AV1_Syntax::get_bits(this, "primary_chromaticity_x", 0x10u);
    *(this + v2 + 12324) = AV1_Syntax::get_bits(this, "primary_chromaticity_y", 0x10u);
    v2 += 4;
  }

  while (v2);
  *(this + 3081) = AV1_Syntax::get_bits(this, "white_point_chromaticity_x", 0x10u);
  *(this + 3082) = AV1_Syntax::get_bits(this, "white_point_chromaticity_y", 0x10u);
  *(this + 3083) = AV1_Syntax::get_bits(this, "luminance_max", 0x20u);
  *(this + 3084) = AV1_Syntax::get_bits(this, "luminance_min", 0x20u);
  return 0;
}

uint64_t AV1_Syntax::metadata_scalability(AV1_Syntax *this)
{
  v9 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(this, "scalability_mode_idc", 8u);
  v3 = bits;
  *(this + 3085) = bits;
  if (bits < 0x100)
  {
    if (bits == 14)
    {
      AV1_Syntax::scalability_structure(this);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "metadata_scalability";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v5, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t AV1_Syntax::metadata_timecode(AV1_Syntax *this)
{
  AV1_Syntax::get_bits(this, "counting_type", 5u);
  bits = AV1_Syntax::get_bits(this, "full_timestamp_flag", 1u);
  AV1_Syntax::get_bits(this, "discontinuity_flag", 1u);
  AV1_Syntax::get_bits(this, "cnt_dropped_flag", 1u);
  AV1_Syntax::get_bits(this, "n_frames", 9u);
  if (bits)
  {
    AV1_Syntax::get_bits(this, "seconds_value", 6u);
    AV1_Syntax::get_bits(this, "minutes_value", 6u);
LABEL_3:
    AV1_Syntax::get_bits(this, "hours_value", 5u);
    goto LABEL_4;
  }

  if (AV1_Syntax::get_bits(this, "seconds_flag", 1u))
  {
    AV1_Syntax::get_bits(this, "seconds_value", 6u);
    if (AV1_Syntax::get_bits(this, "minutes_flag", 1u))
    {
      AV1_Syntax::get_bits(this, "minutes_value", 6u);
      if (AV1_Syntax::get_bits(this, "hours_flag", 1u))
      {
        goto LABEL_3;
      }
    }
  }

LABEL_4:
  result = AV1_Syntax::get_bits(this, "time_offset_length", 5u);
  if (result)
  {

    return AV1_Syntax::get_bits(this, "time_offset_value", result);
  }

  return result;
}

uint64_t AV1_Syntax::scalability_structure(AV1_Syntax *this)
{
  v25 = *MEMORY[0x277D85DE8];
  bits = AV1_Syntax::get_bits(this, "spatial_layers_cnt_minus_1", 2u);
  if (bits >= 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_3:
    v21 = 136315394;
    v22 = "scalability_structure";
    v23 = 1024;
    v24 = bits;
    v3 = MEMORY[0x277D86220];
    goto LABEL_4;
  }

  v5 = AV1_Syntax::get_bits(this, "spatial_layer_dimensions_present_flag", 1u);
  v6 = AV1_Syntax::get_bits(this, "spatial_layer_description_present_flag", 1u);
  v7 = AV1_Syntax::get_bits(this, "temporal_group_description_present_flag", 1u);
  AV1_Syntax::get_bits(this, "scalability_structure_reserved_3bits", 3u);
  if (v5)
  {
    v8 = bits + 1;
    while (1)
    {
      v9 = AV1_Syntax::get_bits(this, "spatial_layer_max_width", 0x10u);
      if (v9 >= 0x10000)
      {
        v14 = v9;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_20;
      }

      v10 = AV1_Syntax::get_bits(this, "spatial_layer_max_height", 0x10u);
      if (v10 >= 0x10000)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    v14 = v10;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    v21 = 136315394;
    v22 = "scalability_structure";
    v23 = 1024;
    v24 = v14;
    v3 = MEMORY[0x277D86220];
LABEL_4:
    _os_log_impl(&dword_277606000, v3, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: value %d out of range!\n", &v21, 0x12u);
    return 0xFFFFFFFFLL;
  }

LABEL_11:
  if (v6)
  {
    v11 = bits + 1;
    while (1)
    {
      v12 = AV1_Syntax::get_bits(this, "spatial_layer_ref_id", 8u);
      if (v12 >= 0x100)
      {
        break;
      }

      if (!--v11)
      {
        goto LABEL_15;
      }
    }

    bits = v12;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_3;
  }

LABEL_15:
  if (!v7)
  {
    return 0;
  }

  v13 = AV1_Syntax::get_bits(this, "temporal_group_size", 8u);
  bits = v13;
  if (v13 > 0xFF)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_3;
  }

  if (!v13)
  {
    return 0;
  }

  v15 = 0;
  while (1)
  {
    v16 = AV1_Syntax::get_bits(this, "temporal_group_temporal_id", 3u);
    if (v16 >= 8)
    {
      v18 = v16;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_38;
    }

    AV1_Syntax::get_bits(this, "temporal_group_temporal_switching_up_point_flag", 1u);
    AV1_Syntax::get_bits(this, "temporal_group_spatial_switching_up_point_flag", 1u);
    v17 = AV1_Syntax::get_bits(this, "temporal_group_ref_cnt", 3u);
    v18 = v17;
    if (v17 > 7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_38:
      v21 = 136315394;
      v22 = "scalability_structure";
      v23 = 1024;
      v24 = v18;
      v3 = MEMORY[0x277D86220];
      goto LABEL_4;
    }

    if (v17)
    {
      break;
    }

LABEL_32:
    result = 0;
    if (++v15 == bits)
    {
      return result;
    }
  }

  while (1)
  {
    v19 = AV1_Syntax::get_bits(this, "temporal_group_ref_pic_diff", 8u);
    if (v19 >= 0x100)
    {
      break;
    }

    if (!--v18)
    {
      goto LABEL_32;
    }
  }

  v20 = v19;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315394;
    v22 = "scalability_structure";
    v23 = 1024;
    v24 = v20;
    v3 = MEMORY[0x277D86220];
    goto LABEL_4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t is_av1_ivf_frame(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 0xC && a1 && a3)
  {
    *a3 = *a1;
    a3[1] = a1[1];
    a3[2] = a1[2];
    return 1;
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      v8 = 136316162;
      v9 = "is_av1_ivf_frame";
      v10 = 2048;
      v11 = a1;
      v12 = 2048;
      v13 = a3;
      v14 = 2048;
      v15 = a2;
      v16 = 1024;
      v17 = 12;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: buf %p frame %p size %zu expect at least %d\n", &v8, 0x30u);
      return 0;
    }
  }

  return result;
}

uint64_t av1_read_next_obu(unsigned __int8 *a1, unint64_t a2, uint64_t *a3, _DWORD *a4, int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1 || !a3 || !a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "av1_read_next_obu";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s: invalid input parameter\n";
LABEL_30:
      _os_log_impl(&dword_277606000, v10, OS_LOG_TYPE_DEFAULT, v11, &v23, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    v5 = 8;
    if (a2 < 8)
    {
      v5 = a2;
    }

    if (!a2)
    {
      goto LABEL_15;
    }

    v6 = 0;
    v7 = 0;
    v8 = -v5;
    v9 = 1;
    while (1)
    {
      v7 |= (a1[v9 - 1] & 0x7F) << v6;
      if ((a1[v9 - 1] & 0x80) == 0)
      {
        break;
      }

      ++v9;
      v6 += 7;
      if (v8 + v9 == 1)
      {
        goto LABEL_15;
      }
    }

    if (HIDWORD(v7))
    {
LABEL_15:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        v24 = "av1_read_next_obu";
        v10 = MEMORY[0x277D86220];
        v11 = "AppleAVD: %s: fail to read annexb obu header and payload length\n";
        goto LABEL_30;
      }

      return 0xFFFFFFFFLL;
    }

    *a3 = v9;
    v12 = v9 + v7;
    if (v12 > a2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        v24 = "av1_read_next_obu";
        v10 = MEMORY[0x277D86220];
        v11 = "AppleAVD: %s: bit stream buffer too small for annexb obu\n";
        goto LABEL_30;
      }

      return 0xFFFFFFFFLL;
    }

    a1 += v9;
    a2 -= v9;
    *a3 = v12;
  }

  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "av1_read_next_obu";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s: need one extra byte for obu header\n";
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  *a4 = 0;
  v13 = *a1;
  a4[1] = (v13 >> 7) & 1;
  if ((v13 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "av1_read_next_obu";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s: obu forbidden bit shuld not be set\n";
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  a4[2] = (*a1 >> 3) & 0xF;
  v14 = (*a1 >> 2) & 1;
  a4[4] = v14;
  v15 = (*a1 >> 1) & 1;
  a4[3] = v15;
  if (!(a5 | v15))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "av1_read_next_obu";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s: raw obu must have size field\n";
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  v17 = a2 - 1;
  *a4 = 1;
  if (v14)
  {
    if (a2 == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v23 = 136315138;
      v24 = "av1_read_next_obu";
      v10 = MEMORY[0x277D86220];
      v11 = "AppleAVD: %s: need one extra byts for obu header extension\n";
      goto LABEL_30;
    }

    v18 = 2;
    *a4 = 2;
    a4[5] = a1[1] >> 5;
    a4[6] = (a1[1] >> 3) & 3;
    v17 = a2 - 2;
  }

  else
  {
    a4[5] = 0;
    a4[6] = 0;
    v18 = 1;
  }

  if (a5)
  {
    return 0;
  }

  if (v17 >= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v17;
  }

  if (!v17)
  {
    goto LABEL_49;
  }

  v20 = 0;
  v21 = 0;
  v22 = -1;
  while (1)
  {
    v21 |= (a1[v18] & 0x7F) << v20;
    if ((a1[v18] & 0x80) == 0)
    {
      break;
    }

    ++a1;
    --v22;
    v20 += 7;
    if (v19 + v22 == -1)
    {
      goto LABEL_49;
    }
  }

  if (HIDWORD(v21))
  {
LABEL_49:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v23 = 136315138;
    v24 = "av1_read_next_obu";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: %s: fail to read obu size\n";
    goto LABEL_30;
  }

  *a3 = -v22;
  if (v17 < v21 - v22)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v23 = 136315138;
    v24 = "av1_read_next_obu";
    v10 = MEMORY[0x277D86220];
    v11 = "AppleAVD: %s: bit stream buffer too small for obu\n";
    goto LABEL_30;
  }

  result = 0;
  *a3 = v18 + v21 - v22;
  return result;
}

uint64_t av1_get_next_frame(unsigned __int8 *a1, uint64_t a2, int a3, int a4, unsigned int a5, unsigned __int8 **a6, void *a7, _DWORD *a8)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v13 = a1;
    v14 = 0;
    v15 = &a1[a2];
    v16 = a3 != 0;
    v59 = &a1[a2];
    while (1)
    {
      if (a3 && v16)
      {
        if (!is_av1_ivf_frame(v13, (v15 - v13), v67))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          LOWORD(v61) = 0;
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: Error: not able to get ivf frame\n";
          v57 = &v61;
LABEL_97:
          v58 = 2;
          goto LABEL_103;
        }

        v16 = 0;
      }

      v66 = 0;
      v17 = v15 - v13;
      if (av1_read_next_obu(v13, v15 - v13, &v66, &v61, a4))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 0;
        v55 = MEMORY[0x277D86220];
        v56 = "AppleAVD: Error: not able to get next obu\n";
        v57 = buf;
        goto LABEL_97;
      }

      if (v62 > 0xF)
      {
        goto LABEL_75;
      }

      if (((1 << v62) & 0xD8) == 0)
      {
        break;
      }

      if (a5 && (((a5 >> v64) & 1) == 0 || ((a5 >> (v65 + 8)) & 1) == 0))
      {
LABEL_80:
        v53 = v66;
        goto LABEL_87;
      }

      v14 = 1;
LABEL_76:
      if (v62 > 5)
      {
        if (v62 != 7)
        {
          if (v62 != 6)
          {
            return 0;
          }

LABEL_83:
          if (*a6)
          {
            return 0;
          }

          *a6 = v13;
          v53 = v66;
          *a7 = v66;
          *a8 = v65;
          v14 = 0;
          if (a3)
          {
            v67[0] -= v53;
            v16 = v67[0] == 0;
          }

          goto LABEL_87;
        }
      }

      else
      {
        if (v62 == 3)
        {
          goto LABEL_83;
        }

        if (v62 != 4)
        {
          return 0;
        }
      }

      v53 = v66;
      *a7 += v66;
LABEL_87:
      v13 += v53;
      if (v13 >= v15)
      {
        return 0;
      }
    }

    if (v62 == 5)
    {
      if (!v13)
      {
        goto LABEL_89;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = v17 >= 8 ? 8 : v15 - v13;
      v26 = 1;
      while (1)
      {
        v23 |= (v13[v24] & 0x7F) << v22;
        if ((v13[v24] & 0x80) == 0)
        {
          break;
        }

        ++v24;
        v22 += 7;
        ++v26;
        if (v25 == v24)
        {
          goto LABEL_89;
        }
      }

      if (HIDWORD(v23))
      {
LABEL_89:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v69 = "av1_get_next_frame";
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: %s: fail to read obu size\n";
          goto LABEL_102;
        }

        return 0xFFFFFFFFLL;
      }

      v27 = (v24 + 1);
      if (v63)
      {
        if (v17 == v27 + v61)
        {
          goto LABEL_100;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v61 + v26;
        v32 = v59 - v13 - v31;
        if (v32 >= 8)
        {
          v32 = 8;
        }

        v33 = &v13[v31];
        while (1)
        {
          v29 |= (v33[v30] & 0x7F) << v28;
          if ((v33[v30] & 0x80) == 0)
          {
            break;
          }

          ++v30;
          v28 += 7;
          if (v32 == v30)
          {
            goto LABEL_100;
          }
        }

        if (HIDWORD(v29))
        {
LABEL_100:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315138;
          v69 = "av1_get_next_frame";
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: %s: fail to read obu size\n";
          goto LABEL_102;
        }

        v46 = (v30 + 1);
      }

      else
      {
        v46 = 0;
      }

      if (v17 == v46 + v27 + v61)
      {
        goto LABEL_98;
      }

      v47 = 0;
      v48 = 0;
      v49 = v61 + v46 + v26;
      v50 = v59 - v13 - v49;
      if (v50 >= 8)
      {
        v50 = 8;
      }

      v51 = &v13[v49];
      while (1)
      {
        v52 = *v51++;
        v48 |= (v52 & 0x7F) << v47;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
        if (!--v50)
        {
          goto LABEL_98;
        }
      }

      if (HIDWORD(v48))
      {
LABEL_98:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 0xFFFFFFFFLL;
        }

        *buf = 136315138;
        v69 = "av1_get_next_frame";
        v55 = MEMORY[0x277D86220];
        v56 = "AppleAVD: %s: fail to read obu size\n";
        goto LABEL_102;
      }
    }

    if (v62 == 15)
    {
      if (a4)
      {
        if (!v13)
        {
          goto LABEL_91;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 8;
        if (v17 < 8)
        {
          v21 = v15 - v13;
        }

        while (1)
        {
          v19 |= (v13[v20] & 0x7F) << v18;
          if ((v13[v20] & 0x80) == 0)
          {
            break;
          }

          ++v20;
          v18 += 7;
          if (v21 == v20)
          {
            goto LABEL_91;
          }
        }

        if (HIDWORD(v19))
        {
LABEL_91:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315138;
          v69 = "av1_get_next_frame";
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: %s: fail to read obu size\n";
LABEL_102:
          v57 = buf;
          v58 = 12;
LABEL_103:
          _os_log_impl(&dword_277606000, v55, OS_LOG_TYPE_DEFAULT, v56, v57, v58);
          return 0xFFFFFFFFLL;
        }

        v34 = (v20 + 1);
      }

      else
      {
        v19 = 0;
        v34 = 0;
      }

      if (v63)
      {
        if (!v13)
        {
          goto LABEL_93;
        }

        v35 = v61;
        v36 = v34 + v61;
        v37 = v17 - v36;
        if (v17 - v36 >= 8)
        {
          v37 = 8;
        }

        if (v17 == v36)
        {
          goto LABEL_93;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v39 |= (v13[v34 + v61 + v40] & 0x7F) << v38;
          if ((v13[v34 + v61 + v40] & 0x80) == 0)
          {
            break;
          }

          ++v40;
          v38 += 7;
          if (v37 == v40)
          {
            goto LABEL_93;
          }
        }

        if (HIDWORD(v39))
        {
LABEL_93:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          *buf = 136315138;
          v69 = "av1_get_next_frame";
          v55 = MEMORY[0x277D86220];
          v56 = "AppleAVD: %s: fail to read obu size\n";
          goto LABEL_102;
        }

        v42 = (v40 + 1);
        if (v39)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v35 = v61;
        v41 = v19 >= v61;
        v39 = v19 - v61;
        if (!v41)
        {
          return 0xFFFFFFFFLL;
        }

        v42 = 0;
        if (v39)
        {
LABEL_58:
          v43 = &v13[v34 - 1 + v35 + v39 + v42];
          while (v39)
          {
            --v39;
            v45 = *v43--;
            v44 = v45;
            if (v45)
            {
              if (v44 != 128)
              {
                return 0;
              }

              goto LABEL_75;
            }
          }

          return 0;
        }
      }
    }

LABEL_75:
    if (!v14)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  return 0;
}

uint64_t av1_populate_film_grain_params(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  result = !v3;
  if (!v3)
  {
    *a1 = 10485761;
    v5 = *(a1 + 4) & 0xFFFFFFFE | a2[1024] & 1;
    *(a1 + 4) = v5;
    v6 = v5 & 0xFFFFFFFD | (2 * (a2[1057] & 1));
    *(a1 + 4) = v6;
    v7 = v6 & 0xFFFFFFF3 | (4 * (a2[1100] & 3));
    *(a1 + 4) = v7;
    v8 = v7 & 0xFFFFFFCF | (16 * (a2[1101] & 3));
    *(a1 + 4) = v8;
    v9 = (v8 & 0xFFFFFF3F | ((a2[1176] & 3) << 6)) ^ 0x80;
    *(a1 + 4) = v9;
    v10 = v9 & 0xFFFFFCFF | ((a2[1177] & 3) << 8);
    *(a1 + 4) = v10;
    v11 = v10 & 0xFFFFFBFF | ((a2[1184] & 1) << 10);
    *(a1 + 4) = v11;
    v12 = v11 & 0xFFFFF7FF | ((a2[1185] & 1) << 11);
    *(a1 + 4) = v12;
    v13 = v12 & 0xFFFFEFFF | ((a2[31] == 0) << 12);
    *(a1 + 4) = v13;
    *(a1 + 4) = v13 & 0xFFFC1FFF | ((a2[1186] & 7) << 13) | 0x30000;
    *(a1 + 8) = a2[1025];
    *(a1 + 10) = a2[1028];
    v14 = a2 + 1043;
    v15 = (a1 + 25);
    v16 = 14;
    do
    {
      *(v15 - 14) = *v14;
      *v15++ = *(v14 - 14);
      ++v14;
      --v16;
    }

    while (v16);
    *(a1 + 39) = a2[1058];
    *(a1 + 60) = a2[1079];
    v17 = a2 + 1059;
    v18 = (a1 + 40);
    v19 = 10;
    do
    {
      *v18 = *v17;
      v18[10] = v17[10];
      v18[21] = v17[21];
      v18[31] = v17[31];
      ++v17;
      ++v18;
      --v19;
    }

    while (v19);
    for (i = 0; i != 24; ++i)
    {
      *(a1 + 81 + i) = a2[i + 1102];
    }

    v21 = a2 + 1126;
    v22 = (a1 + 105);
    v23 = 25;
    do
    {
      *v22 = *v21;
      v22[25] = v21[25];
      ++v21;
      ++v22;
      --v23;
    }

    while (v23);
    *(a1 + 155) = a2[1178];
    *(a1 + 156) = a2[1179];
    *(a1 + 158) = a2[1180];
    *(a1 + 160) = a2[1181];
    *(a1 + 161) = a2[1182];
    *(a1 + 162) = a2[1183];
  }

  return result;
}

uint64_t BufferPool::pthreadCondTimedWait(BufferPool *this, _opaque_pthread_mutex_t *a2, _opaque_pthread_cond_t *a3, uint64_t a4)
{
  gettimeofday(&v9, 0);
  v7 = 1000000 * a4 + 1000 * v9.tv_usec;
  v10.tv_sec = v9.tv_sec + v7 / 0x3B9ACA00;
  v10.tv_nsec = v7 % 0x3B9ACA00;
  return pthread_cond_timedwait(a3, a2, &v10);
}

void BufferPool::~BufferPool(BufferPool *this)
{
  pthread_mutex_lock(this);
  if (!*(this + 34))
  {
    v4 = *(this + 15);
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(this + 15);
  do
  {
    if (*(v4 + v2 + 24))
    {
      if (*(v4 + v2) == 1 && *(v4 + v2 + 16) && (!*(this + 160) || *(this + 35) == 1))
      {
        CVPixelBufferRelease(*(v4 + v2 + 16));
        v4 = *(this + 15);
      }

      if (*(v4 + v2 + 24))
      {
        CFRelease(*(v4 + v2 + 24));
        v4 = *(this + 15);
        *(v4 + v2 + 24) = 0;
      }
    }

    ++v3;
    v2 += 184;
  }

  while (v3 < *(this + 34));
  if (v4)
  {
LABEL_13:
    MEMORY[0x277CAEC00](v4, 0x10A0C8033E7F139);
    *(this + 15) = 0;
  }

LABEL_14:
  pthread_mutex_unlock(this);
  pthread_mutex_destroy(this);
  pthread_cond_destroy((this + 64));
}

uint64_t BufferPool::getSecondBufferAndLink(uint64_t a1, unsigned int a2, unsigned int *a3, int a4, uint64_t a5, uint64_t a6)
{
  result = BufferPool::getBuffer(a1, a3, a4, 0, a5, a6);
  if (!result)
  {
    *(*(a1 + 120) + 184 * a2 + 152) = *a3;
  }

  return result;
}

uint64_t BufferPool::shallowCloneBuffer(BufferPool *this, unsigned int a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (*(this + 34) <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v15 = this;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: BufferPool::shallowCloneBuffer:(%p) index = %u is invalid!", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    result = BufferPool::getBufferInfo(this, a2, &v13);
    if (!result && v13)
    {
      if (*(this + 160) == 1)
      {
        v7 = *(v13 + 16);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v13 + 160);
      v9 = *(v13 + 40);
      if (v8)
      {
        v10 = *(v13 + 168);
        v11 = this;
        v12 = a3;
      }

      else
      {
        v11 = this;
        v12 = a3;
        v8 = 0;
        v10 = 0;
      }

      return BufferPool::getBuffer(v11, v12, v9, v7, v8, v10);
    }
  }

  return result;
}

uint64_t BufferPool::setCVPixelBufferPool(pthread_mutex_t *this, __CVPixelBufferPool *a2)
{
  pthread_mutex_lock(this);
  this[2].__sig = a2;
  pthread_mutex_unlock(this);
  return 0;
}

uint64_t BufferPool::unmapBuffer(BufferPool *this, uint64_t a2, unsigned int a3, char a4)
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this);
  if (*(this + 34) <= a2 || (v8 = *(this + 15)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "unmapBuffer";
      v21 = 1024;
      v22 = a2;
      v11 = MEMORY[0x277D86220];
      v12 = "AppleAVD: ERROR: %s(): index %d \n";
      v13 = 18;
      goto LABEL_9;
    }

LABEL_10:
    v14 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v9 = a2;
  if ((a4 & 1) == 0)
  {
    v10 = *(v8 + 184 * a2 + 40);
    if (v10 > a3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315906;
        v20 = "unmapBuffer";
        v21 = 1024;
        v22 = a2;
        v23 = 1024;
        v24 = a3;
        v25 = 1024;
        v26 = v10;
        v11 = MEMORY[0x277D86220];
        v12 = "AppleAVD: WARNING: %s(): index: %d - trying to release! frameNum (%d) < get frameNum (%d), returning early!";
        v13 = 30;
LABEL_9:
        _os_log_impl(&dword_277606000, v11, OS_LOG_TYPE_DEFAULT, v12, &v19, v13);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v16 = (v8 + 184 * a2);
  v17 = *v16;
  if (*v16 != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v18 = *(this + 35);
    v19 = 136316162;
    v20 = "unmapBuffer";
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = v18;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = v17;
    v11 = MEMORY[0x277D86220];
    v12 = "AppleAVD: WARNING: %s(): frameNum %d - BufferPoolId[%d]: Index %d is not in use! in_use: %d\n";
    v13 = 36;
    goto LABEL_9;
  }

  if (*(v16 + 176) == 1)
  {
    AppleAVDUnmapPixelBuffer(*(this + 18), a2);
    v14 = 0;
    *(*(this + 15) + 184 * v9 + 176) = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:
  pthread_mutex_unlock(this);
  return v14;
}

CAHDecThymeAvx *createThymeAvxDecoder(void **a1)
{
  v2 = operator new(0x1060uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecThymeAvx::CAHDecThymeAvx(v2, a1);
  }

  return v3;
}

void CAHDecThymeAvx::CAHDecThymeAvx(CAHDecThymeAvx *this, void **a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_2886695B8;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198136;
  *(v4 + 8) = 1528;
  *(v4 + 16) = xmmword_277767AD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  bzero(a2 + 370, 0x14A0uLL);
  bzero(a2[1030], 0x1680uLL);
  bzero(this + 464, 0xE70uLL);
  bzero(a2 + 1031, 0x19E8uLL);
  *(this + 520) = 0;
  *(this + 261) = 0u;
}

void CAHDecThymeAvx::~CAHDecThymeAvx(CAHDecThymeAvx *this)
{
  *this = &unk_2886695B8;
  v2 = *(this + 32);
  v3 = 10192;
  v4 = 11;
  do
  {
    if (*(v2 + v3))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v3));
      v2 = *(this + 32);
      v5 = (v2 + v3);
      *(v5 - 1) = 0;
      *v5 = 0;
    }

    v3 += 184;
    --v4;
  }

  while (v4);
  v6 = 12216;
  v7 = 4;
  do
  {
    if (*(v2 + v6))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + v6));
      v2 = *(this + 32);
      v8 = (v2 + v6);
      *(v8 - 1) = 0;
      *v8 = 0;
    }

    v6 += 184;
    --v7;
  }

  while (v7);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(v2, this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecThymeAvx::~CAHDecThymeAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecThymeAvx::init(CAHDecThymeAvx *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 0;
      v31 = 1024;
      LODWORD(v32) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
      goto LABEL_34;
    }

    return 301;
  }

  v7 = *(this + 35);
  *(this + 13) = 0;
  *(this + 33) = v7;
  *(this + 34) = v7;
  v8 = 9168;
  *(this + 1045) = 9168;
  v9 = *(this + 32);
  v10 = 10192;
  v11 = 10;
LABEL_5:
  if (CAVDDecoder::allocAVDMem(v9, (v9 + v10), v8, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "init";
      v29 = 1024;
      v30 = 212;
      v31 = 2080;
      v32 = "probs_wr_buf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
      goto LABEL_33;
    }

    return 301;
  }

  v9 = *(this + 32);
  while (1)
  {
    v12 = *(v9 + v10);
    if (v12)
    {
      *(v9 + v10 - 8) = v12;
    }

    if (!v11)
    {
      break;
    }

    v8 = *(this + 1045);
    v10 += 184;
    --v11;
    if (*(this + 1045))
    {
      goto LABEL_5;
    }
  }

  v13 = *(v9 + 37584);
  if (v13)
  {
    v14 = v9 + 10368;
    v15 = xmmword_27775BCD0;
    v16 = 12;
    v17 = vdupq_n_s64(0xBuLL);
    v18 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v17, v15)).u8[0])
      {
        *(v13 + 1960) = v14 - 184;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v15)).i32[1])
      {
        *(v13 + 4000) = v14;
      }

      v15 = vaddq_s64(v15, v18);
      v13 += 4080;
      v14 += 368;
      v16 -= 2;
    }

    while (v16);
  }

  v19 = 0;
  for (i = 12216; ; i += 184)
  {
    v21 = *(this + 1045);
    v22 = *(this + 32);
    if (v21)
    {
      break;
    }

LABEL_23:
    v23 = (v22 + i - 8);
    v24 = *(v22 + i);
    if (v24)
    {
      *v23 = v24;
    }

    v25 = *(v22 + 15120);
    if (v25)
    {
      AV1_Syntax::Set_Default_Frame_Context_Info(v25, v23, v19);
    }

    if (++v19 == 4)
    {
      return 0;
    }
  }

  if (!CAVDDecoder::allocAVDMem(v22, (v22 + i), v21, 7, 1, 0))
  {
    v22 = *(this + 32);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315650;
    v28 = "init";
    v29 = 1024;
    v30 = 227;
    v31 = 2080;
    v32 = "probs_default_buf";
    v4 = MEMORY[0x277D86220];
    v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_33:
    v6 = 28;
LABEL_34:
    _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v27, v6);
  }

  return 301;
}

uint64_t CAHDecThymeAvx::startPicture(CAHDecThymeAvx *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x305F8uLL);
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    v6 = *(this + *(this + 13) + 34);
    *(v6 + 16) = a2;
    *(v6 + 24) = 257;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "startPicture";
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v7, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecThymeAvx::DecodePicture(CAHDecThymeAvx *this, uint64_t a2)
{
  if (CAHDecThymeAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecThymeAvx::populateAddressRegisters(this) || CAHDecThymeAvx::populateDecryptionRegisters(this))
  {
    return 4;
  }

  CAHDecThymeAvx::populateTiles(this);
  CAHDecThymeAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecThymeAvx::populateAddressRegisters(CAHDecThymeAvx *this)
{
  v2 = 0;
  v362 = *MEMORY[0x277D85DE8];
  v3 = this + 464;
  do
  {
    *(*(this + 33) + v2 + 456) = 0;
    v4 = *(this + 33) + v2;
    v5 = *(v4 + 456);
    *(v4 + 456) = 0;
    *(*(this + 33) + v2 + 456) ^= 0xFFFFFF00;
    v6 = *(this + 33) + v2;
    v7 = *(v6 + 456);
    *(v6 + 456) = v5;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 456, 0, 0xFFFFFFFFLL, 8, v7, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 484) = 0;
    v9 = *(this + 33) + v2;
    v10 = *(v9 + 484);
    *(v9 + 484) = 0;
    *(*(this + 33) + v2 + 484) ^= 0x3FFu;
    v11 = *(this + 33) + v2;
    v12 = *(v11 + 484);
    *(v11 + 484) = v10;
    if (*v3 || *(v3 + 38) || *(v3 + 39))
    {
      result = CAHDec::addToPatcherList(this, v3, v2 + 484, 0, 0x3FFFFFFFFFFLL, 32, v12, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v2 + 512) = 0;
    *(*(this + 33) + v2 + 512) = *(*(this + 33) + v2 + 512) & 0x800001FF | (((*(this + 1044) >> 9) & 0x3FFFFF) << 9);
    v2 += 4;
    v3 += 176;
  }

  while (v2 != 28);
  v13 = *(this + 32);
  v14 = *(*(v13 + 15112) + 79288);
  v15 = *(*(*(v13 + 37616) + 1920) + 1960);
  *(*(this + 33) + 540) = 0;
  v16 = *(this + 33);
  v17 = *(v16 + 540);
  *(v16 + 540) = 0;
  *(*(this + 33) + 540) ^= 0xFFFFFF00;
  v18 = *(this + 33);
  v19 = *(v18 + 540);
  *(v18 + 540) = v17;
  if (*(v15 + 8) || *(v15 + 160) || *(v15 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v15 + 8), 540, 0, 0xFFFFFFFFLL, 8, v19, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 544) = 0;
  v20 = *(this + 33);
  v21 = *(v20 + 544);
  *(v20 + 544) = 0;
  *(*(this + 33) + 544) ^= 0x3FFu;
  v22 = *(this + 33);
  v23 = *(v22 + 544);
  *(v22 + 544) = v21;
  if (*(v15 + 8) || *(v15 + 160) || *(v15 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v15 + 8), 544, 0, 0x3FFFFFFFFFFLL, 32, v23, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 548) = 0;
  v24 = *(this + 33);
  v25 = *(v24 + 548);
  *(v24 + 548) = 0;
  *(*(this + 33) + 548) ^= 0xFFFFFF00;
  v26 = *(this + 33);
  v27 = *(v26 + 548);
  *(v26 + 548) = v25;
  if (*(v14 + 8) || *(v14 + 160) || *(v14 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v14 + 8), 548, 0, 0xFFFFFFFFLL, 8, v27, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 552) = 0;
  v28 = *(this + 33);
  v29 = *(v28 + 552);
  *(v28 + 552) = 0;
  *(*(this + 33) + 552) ^= 0x3FFu;
  v30 = *(this + 33);
  v31 = *(v30 + 552);
  *(v30 + 552) = v29;
  if (*(v14 + 8) || *(v14 + 160) || *(v14 + 164))
  {
    result = CAHDec::addToPatcherList(this, (v14 + 8), 552, 0, 0x3FFFFFFFFFFLL, 32, v31, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 556) = 0;
  v32 = *(this + 33);
  v33 = *(v32 + 556);
  *(v32 + 556) = 0;
  *(*(this + 33) + 556) ^= 0xFFFFFF00;
  v34 = *(this + 33);
  v35 = *(v34 + 556);
  *(v34 + 556) = v33;
  if (*(this + 212) || *(this + 462) || *(this + 463))
  {
    result = CAHDec::addToPatcherList(this, this + 212, 556, 0, 0xFFFFFFFFLL, 8, v35, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 560) = 0;
  v36 = *(this + 33);
  v37 = *(v36 + 560);
  *(v36 + 560) = 0;
  *(*(this + 33) + 560) ^= 0x3FFu;
  v38 = *(this + 33);
  v39 = *(v38 + 560);
  *(v38 + 560) = v37;
  if (*(this + 212) || *(this + 462) || *(this + 463))
  {
    result = CAHDec::addToPatcherList(this, this + 212, 560, 0, 0x3FFFFFFFFFFLL, 32, v39, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 564) = 0;
  *(*(this + 33) + 568) = 0;
  if (*(*(*(this + 32) + 15112) + 79312))
  {
    v40 = *(this + 33);
    v41 = *(v40 + 564);
    *(v40 + 564) = 0;
    *(*(this + 33) + 564) ^= 0xFFFFFF00;
    v42 = *(this + 33);
    v43 = *(v42 + 564);
    *(v42 + 564) = v41;
    v44 = *(*(*(this + 32) + 15112) + 79312);
    if (*(v44 + 8) || *(v44 + 160) || *(v44 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v44 + 8), 564, 0, 0xFFFFFFFFLL, 8, v43, 4);
      if (result)
      {
        return result;
      }
    }

    v45 = *(this + 33);
    v46 = *(v45 + 568);
    *(v45 + 568) = 0;
    *(*(this + 33) + 568) ^= 0x3FFu;
    v47 = *(this + 33);
    v48 = *(v47 + 568);
    *(v47 + 568) = v46;
    v49 = *(*(*(this + 32) + 15112) + 79312);
    if (*(v49 + 8) || *(v49 + 160) || *(v49 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v49 + 8), 568, 0, 0x3FFFFFFFFFFLL, 32, v48, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 572) = 0;
  *(*(this + 33) + 576) = 0;
  if (*(*(*(this + 32) + 15112) + 79304))
  {
    v50 = *(this + 33);
    v51 = *(v50 + 572);
    *(v50 + 572) = 0;
    *(*(this + 33) + 572) ^= 0xFFFFFF00;
    v52 = *(this + 33);
    v53 = *(v52 + 572);
    *(v52 + 572) = v51;
    v54 = *(*(*(this + 32) + 15112) + 79304);
    if (*(v54 + 8) || *(v54 + 160) || *(v54 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v54 + 8), 572, 0, 0xFFFFFFFFLL, 8, v53, 4);
      if (result)
      {
        return result;
      }
    }

    v55 = *(this + 33);
    v56 = *(v55 + 576);
    *(v55 + 576) = 0;
    *(*(this + 33) + 576) ^= 0x3FFu;
    v57 = *(this + 33);
    v58 = *(v57 + 576);
    *(v57 + 576) = v56;
    v59 = *(*(*(this + 32) + 15112) + 79304);
    if (*(v59 + 8) || *(v59 + 160) || *(v59 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v59 + 8), 576, 0, 0x3FFFFFFFFFFLL, 32, v58, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 580) = 0;
  v60 = *(this + 33);
  v61 = *(v60 + 580);
  *(v60 + 580) = 0;
  *(*(this + 33) + 580) ^= 0xFFFFFF00;
  v62 = *(this + 33);
  v63 = *(v62 + 580);
  *(v62 + 580) = v61;
  v64 = *(*(*(this + 32) + 37616) + 1920);
  if (*(v64 + 136) || *(v64 + 288) || *(v64 + 292))
  {
    result = CAHDec::addToPatcherList(this, (v64 + 136), 580, 0, 0xFFFFFFFFLL, 8, v63, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 584) = 0;
  v65 = *(this + 33);
  v66 = *(v65 + 584);
  *(v65 + 584) = 0;
  *(*(this + 33) + 584) ^= 0x3FFu;
  v67 = *(this + 33);
  v68 = *(v67 + 584);
  *(v67 + 584) = v66;
  v69 = *(*(*(this + 32) + 37616) + 1920);
  if (*(v69 + 136) || *(v69 + 288) || *(v69 + 292))
  {
    result = CAHDec::addToPatcherList(this, (v69 + 136), 584, 0, 0x3FFFFFFFFFFLL, 32, v68, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 588) = 0;
  v70 = *(this + 33);
  v71 = *(v70 + 588);
  *(v70 + 588) = 0;
  *(*(this + 33) + 588) ^= 0xFFFFFF00;
  v72 = *(this + 33);
  v73 = *(v72 + 588);
  *(v72 + 588) = v71;
  if (*(*(*(this + 32) + 15112) + 78568) || *(*(*(this + 32) + 15112) + 78720) || *(*(*(this + 32) + 15112) + 78724))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 588, 0, 0xFFFFFFFFLL, 8, v73, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 592) = 0;
  v74 = *(this + 33);
  v75 = *(v74 + 592);
  *(v74 + 592) = 0;
  *(*(this + 33) + 592) ^= 0x3FFu;
  v76 = *(this + 33);
  v77 = *(v76 + 592);
  *(v76 + 592) = v75;
  if (*(*(*(this + 32) + 15112) + 78568) || *(*(*(this + 32) + 15112) + 78720) || *(*(*(this + 32) + 15112) + 78724))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78568), 592, 0, 0x3FFFFFFFFFFLL, 32, v77, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 596) = 0;
  v78 = *(this + 33);
  v79 = *(v78 + 596);
  *(v78 + 596) = 0;
  *(*(this + 33) + 596) ^= 0xFFFFFF00;
  v80 = *(this + 33);
  v81 = *(v80 + 596);
  *(v80 + 596) = v79;
  if (*(*(*(this + 32) + 15112) + 78792) || *(*(*(this + 32) + 15112) + 78944) || *(*(*(this + 32) + 15112) + 78948))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 596, 0, 0xFFFFFFFFLL, 8, v81, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 600) = 0;
  v82 = *(this + 33);
  v83 = *(v82 + 600);
  *(v82 + 600) = 0;
  *(*(this + 33) + 600) ^= 0x3FFu;
  v84 = *(this + 33);
  v85 = *(v84 + 600);
  *(v84 + 600) = v83;
  if (*(*(*(this + 32) + 15112) + 78792) || *(*(*(this + 32) + 15112) + 78944) || *(*(*(this + 32) + 15112) + 78948))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 78792), 600, 0, 0x3FFFFFFFFFFLL, 32, v85, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 604) = 0;
  v86 = *(this + 33);
  v87 = *(v86 + 604);
  *(v86 + 604) = 0;
  *(*(this + 33) + 604) ^= 0xFFFFFF00;
  v88 = *(this + 33);
  v89 = *(v88 + 604);
  *(v88 + 604) = v87;
  if (*(*(*(this + 32) + 15112) + 79016) || *(*(*(this + 32) + 15112) + 79168) || *(*(*(this + 32) + 15112) + 79172))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 604, 0, 0xFFFFFFFFLL, 8, v89, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 608) = 0;
  v90 = *(this + 33);
  v91 = *(v90 + 608);
  *(v90 + 608) = 0;
  *(*(this + 33) + 608) ^= 0x3FFu;
  v92 = *(this + 33);
  v93 = *(v92 + 608);
  *(v92 + 608) = v91;
  if (*(*(*(this + 32) + 15112) + 79016) || *(*(*(this + 32) + 15112) + 79168) || *(*(*(this + 32) + 15112) + 79172))
  {
    result = CAHDec::addToPatcherList(this, (*(*(this + 32) + 15112) + 79016), 608, 0, 0x3FFFFFFFFFFLL, 32, v93, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 612) = 0;
  *(*(this + 33) + 616) = 0;
  v94 = *(this + 32);
  if (*(v94 + 2652))
  {
    v95 = *(v94 + 2680);
    v360 = 0u;
    v361 = 0u;
    memset(v359, 0, sizeof(v359));
    v96 = *(this + 33);
    v97 = (*(v96 + 16) & 0xF) << 9;
    *&v359[0] = v95;
    v98 = *(v96 + 612);
    *(v96 + 612) = 0;
    *(*(this + 33) + 612) ^= 0xFFFFFF00;
    v99 = *(this + 33);
    v100 = *(v99 + 612);
    *(v99 + 612) = v98;
    if (v95)
    {
      result = CAHDec::addToPatcherList(this, v359, 612, v97, 0xFFFFFFFFLL, 8, v100, 4);
      if (result)
      {
        return result;
      }

      if (*&v359[0])
      {
        v101 = 0;
      }

      else
      {
        v101 = DWORD2(v360) == 0;
      }

      LODWORD(v95) = !v101 || HIDWORD(v360) != 0;
    }

    *(*(this + 33) + 616) = 0;
    v103 = *(this + 33);
    v104 = *(v103 + 616);
    *(v103 + 616) = 0;
    *(*(this + 33) + 616) ^= 0x3FFu;
    v105 = *(this + 33);
    v106 = *(v105 + 616);
    *(v105 + 616) = v104;
    if (v95)
    {
      result = CAHDec::addToPatcherList(this, v359, 616, v97, 0x3FFFFFFFFFFLL, 32, v106, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 620) = 0;
  v107 = *(this + 33);
  v108 = *(v107 + 620);
  *(v107 + 620) = 0;
  *(*(this + 33) + 620) ^= 0xFFFFFF00;
  v109 = *(this + 33);
  v110 = *(v109 + 620);
  *(v109 + 620) = v108;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 620, 0, 0xFFFFFFFFLL, 8, v110, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 624) = 0;
  v111 = *(this + 33);
  v112 = *(v111 + 624);
  *(v111 + 624) = 0;
  *(*(this + 33) + 624) ^= 0x3FFu;
  v113 = *(this + 33);
  v114 = *(v113 + 624);
  *(v113 + 624) = v112;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 624, 0, 0x3FFFFFFFFFFLL, 32, v114, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 628) = 0;
  v115 = *(this + 33);
  v116 = *(v115 + 628);
  *(v115 + 628) = 0;
  *(*(this + 33) + 628) ^= 0xFFFFFF00;
  v117 = *(this + 33);
  v118 = *(v117 + 628);
  *(v117 + 628) = v116;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 628, 0, 0xFFFFFFFFLL, 8, v118, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 632) = 0;
  v119 = *(this + 33);
  v120 = *(v119 + 632);
  *(v119 + 632) = 0;
  *(*(this + 33) + 632) ^= 0x3FFu;
  v121 = *(this + 33);
  v122 = *(v121 + 632);
  *(v121 + 632) = v120;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 632, 0, 0x3FFFFFFFFFFLL, 32, v122, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 636) = 0;
  v123 = *(this + 33);
  v124 = *(v123 + 636);
  *(v123 + 636) = 0;
  *(*(this + 33) + 636) ^= 0xFFFFFF00;
  v125 = *(this + 33);
  v126 = *(v125 + 636);
  *(v125 + 636) = v124;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 636, 0, 0xFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 640) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 640);
  *(v127 + 640) = 0;
  *(*(this + 33) + 640) ^= 0x3FFu;
  v129 = *(this + 33);
  v130 = *(v129 + 640);
  *(v129 + 640) = v128;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 640, 0, 0x3FFFFFFFFFFLL, 32, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 644) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 644);
  *(v131 + 644) = 0;
  *(*(this + 33) + 644) ^= 0xFFFFFF00;
  v133 = *(this + 33);
  v134 = *(v133 + 644);
  *(v133 + 644) = v132;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 644, 0, 0xFFFFFFFFLL, 8, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 648) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 648);
  *(v135 + 648) = 0;
  *(*(this + 33) + 648) ^= 0x3FFu;
  v137 = *(this + 33);
  v138 = *(v137 + 648);
  *(v137 + 648) = v136;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 648, 0, 0x3FFFFFFFFFFLL, 32, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 652) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 652);
  *(v139 + 652) = 0;
  *(*(this + 33) + 652) ^= 0xFFFFFF00;
  v141 = *(this + 33);
  v142 = *(v141 + 652);
  *(v141 + 652) = v140;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 652, 0, 0xFFFFFFFFLL, 8, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 656) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 656);
  *(v143 + 656) = 0;
  *(*(this + 33) + 656) ^= 0x3FFu;
  v145 = *(this + 33);
  v146 = *(v145 + 656);
  *(v145 + 656) = v144;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 656, 0, 0x3FFFFFFFFFFLL, 32, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 660) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 660);
  *(v147 + 660) = 0;
  *(*(this + 33) + 660) ^= 0xFFFFFF00;
  v149 = *(this + 33);
  v150 = *(v149 + 660);
  *(v149 + 660) = v148;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 660, 0, 0xFFFFFFFFLL, 8, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 664) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 664);
  *(v151 + 664) = 0;
  *(*(this + 33) + 664) ^= 0x3FFu;
  v153 = *(this + 33);
  v154 = *(v153 + 664);
  *(v153 + 664) = v152;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 664, 0, 0x3FFFFFFFFFFLL, 32, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 668) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 668);
  *(v155 + 668) = 0;
  *(*(this + 33) + 668) ^= 0xFFFFFF00;
  v157 = *(this + 33);
  v158 = *(v157 + 668);
  *(v157 + 668) = v156;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 668, 0, 0xFFFFFFFFLL, 8, v158, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 672) = 0;
  v159 = *(this + 33);
  v160 = *(v159 + 672);
  *(v159 + 672) = 0;
  *(*(this + 33) + 672) ^= 0x3FFu;
  v161 = *(this + 33);
  v162 = *(v161 + 672);
  *(v161 + 672) = v160;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 672, 0, 0x3FFFFFFFFFFLL, 32, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 676) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 676);
  *(v163 + 676) = 0;
  *(*(this + 33) + 676) ^= 0xFFFFFF00;
  v165 = *(this + 33);
  v166 = *(v165 + 676);
  *(v165 + 676) = v164;
  if (*(this + 388) || *(this + 814) || *(this + 815))
  {
    result = CAHDec::addToPatcherList(this, this + 388, 676, 0, 0xFFFFFFFFLL, 8, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 680) = 0;
  v167 = *(this + 33);
  v168 = *(v167 + 680);
  *(v167 + 680) = 0;
  *(*(this + 33) + 680) ^= 0x3FFu;
  v169 = *(this + 33);
  v170 = *(v169 + 680);
  *(v169 + 680) = v168;
  if (*(this + 388) || *(this + 814) || *(this + 815))
  {
    result = CAHDec::addToPatcherList(this, this + 388, 680, 0, 0x3FFFFFFFFFFLL, 32, v170, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 684) = 0;
  v171 = *(this + 33);
  v172 = *(v171 + 684);
  *(v171 + 684) = 0;
  *(*(this + 33) + 684) ^= 0xFFFFFF00;
  v173 = *(this + 33);
  v174 = *(v173 + 684);
  *(v173 + 684) = v172;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 684, 0, 0xFFFFFFFFLL, 8, v174, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 688) = 0;
  v175 = *(this + 33);
  v176 = *(v175 + 688);
  *(v175 + 688) = 0;
  *(*(this + 33) + 688) ^= 0x3FFu;
  v177 = *(this + 33);
  v178 = *(v177 + 688);
  *(v177 + 688) = v176;
  if (*(this + 410) || *(this + 858) || *(this + 859))
  {
    result = CAHDec::addToPatcherList(this, this + 410, 688, 0, 0x3FFFFFFFFFFLL, 32, v178, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 692) = 0;
  v179 = *(this + 33);
  v180 = *(v179 + 692);
  *(v179 + 692) = 0;
  *(*(this + 33) + 692) ^= 0xFFFFFF00;
  v181 = *(this + 33);
  v182 = *(v181 + 692);
  *(v181 + 692) = v180;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 692, 0, 0xFFFFFFFFLL, 8, v182, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 696) = 0;
  v183 = *(this + 33);
  v184 = *(v183 + 696);
  *(v183 + 696) = 0;
  *(*(this + 33) + 696) ^= 0x3FFu;
  v185 = *(this + 33);
  v186 = *(v185 + 696);
  *(v185 + 696) = v184;
  if (*(this + 476) || *(this + 990) || *(this + 991))
  {
    result = CAHDec::addToPatcherList(this, this + 476, 696, 0, 0x3FFFFFFFFFFLL, 32, v186, 4);
    if (result)
    {
      return result;
    }
  }

  v187 = *(*(this + 32) + 37868);
  *(*(this + 33) + 700) = 0;
  *(*(this + 33) + 704) = 0;
  *(*(this + 33) + 708) = 0;
  *(*(this + 33) + 712) = 0;
  *(*(this + 33) + 716) = 0;
  *(*(this + 33) + 720) = 0;
  *(*(this + 33) + 724) = 0;
  *(*(this + 33) + 728) = 0;
  v188 = *(this + 33);
  v189 = *(v188 + 708);
  *(v188 + 708) = 0;
  *(*(this + 33) + 708) ^= 0xFFFFFF80;
  v190 = *(this + 33);
  v191 = *(v190 + 708);
  *(v190 + 708) = v189;
  v192 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v192 || *(v192 + 152) || *(v192 + 156))
  {
    result = CAHDec::addToPatcherList(this, v192, 708, *(v192 + 52), 0xFFFFFFFFLL, 7, v191, 4);
    if (result)
    {
      return result;
    }
  }

  v193 = *(this + 33);
  v194 = *(v193 + 712);
  *(v193 + 712) = 0;
  *(*(this + 33) + 712) ^= 0x3FFu;
  v195 = *(this + 33);
  v196 = *(v195 + 712);
  *(v195 + 712) = v194;
  v197 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v197 || *(v197 + 152) || *(v197 + 156))
  {
    result = CAHDec::addToPatcherList(this, v197, 712, *(v197 + 52), 0x3FFFFFFFFFFLL, 32, v196, 4);
    if (result)
    {
      return result;
    }
  }

  v198 = *(this + 33);
  v199 = *(v198 + 724);
  *(v198 + 724) = 0;
  *(*(this + 33) + 724) ^= 0xFFFFFF80;
  v200 = *(this + 33);
  v201 = *(v200 + 724);
  *(v200 + 724) = v199;
  v202 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
  if (*v202 || *(v202 + 152) || *(v202 + 156))
  {
    result = CAHDec::addToPatcherList(this, v202, 724, *(v202 + 56), 0xFFFFFFFFLL, 7, v201, 4);
    if (result)
    {
      return result;
    }
  }

  v203 = *(this + 33);
  v204 = *(v203 + 728);
  *(v203 + 728) = 0;
  *(*(this + 33) + 728) ^= 0x3FFu;
  v205 = *(this + 33);
  v206 = *(v205 + 728);
  *(v205 + 728) = v204;
  v207 = *(this + 32);
  v208 = *(*(v207 + 8240) + 384 * v187 + 8);
  if (*v208 || *(v208 + 152) || *(v208 + 156))
  {
    result = CAHDec::addToPatcherList(this, v208, 728, *(v208 + 56), 0x3FFFFFFFFFFLL, 32, v206, 4);
    if (result)
    {
      return result;
    }

    v207 = *(this + 32);
  }

  v209 = *(v207 + 2648);
  v210 = *(this + 33);
  v211 = *(v210 + 700);
  *(v210 + 700) = 0;
  *(*(this + 33) + 700) ^= 0xFFFFFF80;
  v212 = *(this + 33);
  v213 = *(v212 + 700);
  *(v212 + 700) = v211;
  v214 = *(this + 32);
  if (v209 == 1)
  {
    v215 = *(*(v214 + 8240) + 384 * v187 + 8);
    if (*v215 || *(v215 + 152) || *(v215 + 156))
    {
      result = CAHDec::addToPatcherList(this, v215, 700, *(v215 + 64), 0xFFFFFFFFLL, 7, v213, 4);
      if (result)
      {
        return result;
      }
    }

    v216 = *(this + 33);
    v217 = *(v216 + 704);
    *(v216 + 704) = 0;
    *(*(this + 33) + 704) ^= 0x3FFu;
    v218 = *(this + 33);
    v219 = *(v218 + 704);
    *(v218 + 704) = v217;
    v220 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v220 || *(v220 + 152) || *(v220 + 156))
    {
      result = CAHDec::addToPatcherList(this, v220, 704, *(v220 + 64), 0x3FFFFFFFFFFLL, 32, v219, 4);
      if (result)
      {
        return result;
      }
    }

    v221 = *(this + 33);
    v222 = *(v221 + 716);
    *(v221 + 716) = 0;
    *(*(this + 33) + 716) ^= 0xFFFFFF80;
    v223 = *(this + 33);
    v224 = *(v223 + 716);
    *(v223 + 716) = v222;
    v225 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v225 || *(v225 + 152) || *(v225 + 156))
    {
      result = CAHDec::addToPatcherList(this, v225, 716, *(v225 + 68), 0xFFFFFFFFLL, 7, v224, 4);
      if (result)
      {
        return result;
      }
    }

    v226 = *(this + 33);
    v227 = *(v226 + 720);
    *(v226 + 720) = 0;
    *(*(this + 33) + 720) ^= 0x3FFu;
    v228 = *(this + 33);
    v229 = *(v228 + 720);
    *(v228 + 720) = v227;
    v230 = *(*(*(this + 32) + 8240) + 384 * v187 + 8);
    if (*v230 || *(v230 + 152) || *(v230 + 156))
    {
      v231 = *(v230 + 68);
      v232 = this;
      goto LABEL_230;
    }
  }

  else
  {
    v233 = (v214 + 176 * v187 + 2960);
    if (*v233 || *(v214 + 176 * v187 + 3112) || *(v214 + 176 * v187 + 3116))
    {
      result = CAHDec::addToPatcherList(this, v233, 700, 0, 0xFFFFFFFFLL, 7, v213, 4);
      if (result)
      {
        return result;
      }
    }

    v234 = *(this + 33);
    v235 = *(v234 + 704);
    *(v234 + 704) = 0;
    *(*(this + 33) + 704) ^= 0x3FFu;
    v236 = *(this + 33);
    v237 = *(v236 + 704);
    *(v236 + 704) = v235;
    v238 = (*(this + 32) + 176 * v187 + 2960);
    if (*v238 || *(*(this + 32) + 176 * v187 + 3112) || *(*(this + 32) + 176 * v187 + 3116))
    {
      result = CAHDec::addToPatcherList(this, v238, 704, 0, 0x3FFFFFFFFFFLL, 32, v237, 4);
      if (result)
      {
        return result;
      }
    }

    v239 = *(this + 33);
    v240 = *(v239 + 716);
    *(v239 + 716) = 0;
    *(*(this + 33) + 716) ^= 0xFFFFFF80;
    v241 = *(this + 33);
    v242 = *(v241 + 716);
    *(v241 + 716) = v240;
    v243 = (*(this + 32) + 176 * v187 + 5600);
    if (*v243 || *(*(this + 32) + 176 * v187 + 5752) || *(*(this + 32) + 176 * v187 + 5756))
    {
      result = CAHDec::addToPatcherList(this, v243, 716, 0, 0xFFFFFFFFLL, 7, v242, 4);
      if (result)
      {
        return result;
      }
    }

    v244 = *(this + 33);
    v245 = *(v244 + 720);
    *(v244 + 720) = 0;
    *(*(this + 33) + 720) ^= 0x3FFu;
    v246 = *(this + 33);
    v229 = *(v246 + 720);
    *(v246 + 720) = v245;
    v230 = *(this + 32) + 176 * v187 + 5600;
    if (*v230 || *(*(this + 32) + 176 * v187 + 5752) || *(*(this + 32) + 176 * v187 + 5756))
    {
      v232 = this;
      v231 = 0;
LABEL_230:
      result = CAHDec::addToPatcherList(v232, v230, 720, v231, 0x3FFFFFFFFFFLL, 32, v229, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 732) = 0;
  *(*(this + 33) + 736) = 0;
  *(*(this + 33) + 740) = 0;
  *(*(this + 33) + 744) = 0;
  *(*(this + 33) + 748) = 0;
  *(*(this + 33) + 752) = 0;
  *(*(this + 33) + 756) = 0;
  *(*(this + 33) + 760) = 0;
  if (*(*(this + 32) + 2644))
  {
    v247 = *(this + 33);
    v248 = *(v247 + 732);
    *(v247 + 732) = 0;
    *(*(this + 33) + 732) ^= 0xFFFFFF00;
    v249 = *(this + 33);
    v250 = *(v249 + 732);
    *(v249 + 732) = v248;
    if (*(this + 454) || *(this + 946) || *(this + 947))
    {
      result = CAHDec::addToPatcherList(this, this + 454, 732, 0, 0xFFFFFFFFLL, 8, v250, 4);
      if (result)
      {
        return result;
      }
    }

    v251 = *(this + 33);
    v252 = *(v251 + 736);
    *(v251 + 736) = 0;
    *(*(this + 33) + 736) ^= 0x3FFu;
    v253 = *(this + 33);
    v254 = *(v253 + 736);
    *(v253 + 736) = v252;
    if (*(this + 454) || *(this + 946) || *(this + 947))
    {
      result = CAHDec::addToPatcherList(this, this + 454, 736, 0, 0x3FFFFFFFFFFLL, 32, v254, 4);
      if (result)
      {
        return result;
      }
    }

    v255 = *(this + 32);
    v256 = *(v255 + 2892);
    if (*(v255 + 2892))
    {
      v257 = *(v255 + 2904);
      v256 = *(v255 + 2908);
    }

    else
    {
      v257 = 0;
    }

    v258 = *(v255 + 37888);
    v259 = *(v258 + 52);
    v260 = v259 + v257;
    if (__CFADD__(v259, v257))
    {
      v261 = 1;
    }

    else
    {
      v262 = *(v258 + 56);
      v263 = v262 + v256;
      if (!__CFADD__(v262, v256))
      {
        v267 = *(this + 33);
        v268 = *(v267 + 740);
        *(v267 + 740) = 0;
        *(*(this + 33) + 740) ^= 0xFFFFFFC0;
        v269 = *(this + 33);
        v270 = *(v269 + 740);
        *(v269 + 740) = v268;
        v271 = *(*(this + 32) + 37888);
        if (*v271 || *(v271 + 152) || *(v271 + 156))
        {
          result = CAHDec::addToPatcherList(this, v271, 740, v260, 0xFFFFFFFFLL, 6, v270, 4);
          if (result)
          {
            return result;
          }
        }

        v272 = *(this + 33);
        v273 = *(v272 + 744);
        *(v272 + 744) = 0;
        *(*(this + 33) + 744) ^= 0x3FFu;
        v274 = *(this + 33);
        v275 = *(v274 + 744);
        *(v274 + 744) = v273;
        v276 = *(*(this + 32) + 37888);
        if (*v276 || *(v276 + 152) || *(v276 + 156))
        {
          result = CAHDec::addToPatcherList(this, v276, 744, v260, 0x3FFFFFFFFFFLL, 32, v275, 4);
          if (result)
          {
            return result;
          }
        }

        v277 = *(this + 33);
        v278 = *(v277 + 752);
        *(v277 + 752) = 0;
        *(*(this + 33) + 752) ^= 0xFFFFFFC0;
        v279 = *(this + 33);
        v280 = *(v279 + 752);
        *(v279 + 752) = v278;
        v281 = *(*(this + 32) + 37888);
        if (*v281 || *(v281 + 152) || *(v281 + 156))
        {
          result = CAHDec::addToPatcherList(this, v281, 752, v263, 0xFFFFFFFFLL, 6, v280, 4);
          if (result)
          {
            return result;
          }
        }

        v282 = *(this + 33);
        v283 = *(v282 + 756);
        *(v282 + 756) = 0;
        *(*(this + 33) + 756) ^= 0x3FFu;
        v284 = *(this + 33);
        v285 = *(v284 + 756);
        *(v284 + 756) = v283;
        v286 = *(this + 32);
        v287 = *(v286 + 37888);
        if (*v287 || *(v287 + 152) || *(v287 + 156))
        {
          result = CAHDec::addToPatcherList(this, v287, 756, v263, 0x3FFFFFFFFFFLL, 32, v285, 4);
          if (result)
          {
            return result;
          }

          v286 = *(this + 32);
        }

        v288 = 15112;
        if (*(v286 + 8))
        {
          v288 = 37888;
        }

        v289 = 76;
        if (!*(v286 + 8))
        {
          v289 = 78508;
        }

        v290 = 78512;
        if (*(v286 + 8))
        {
          v290 = 80;
        }

        *(*(this + 33) + 748) = *(*(this + 33) + 748) & 0xFFFC003F | (((*(*(v286 + v288) + v289) >> 6) & 0xFFF) << 6);
        *(*(this + 33) + 760) = *(*(this + 33) + 760) & 0xFFF8003F | (((*(*(*(this + 32) + v288) + v290) >> 6) & 0x1FFF) << 6);
        goto LABEL_275;
      }

      v261 = 2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v359[0]) = 136315394;
      *(v359 + 4) = "populateAddressRegisters";
      WORD6(v359[0]) = 1024;
      *(v359 + 14) = v261;
      v264 = MEMORY[0x277D86220];
      v265 = "AppleAVD: %s(): failKind = %d";
      v266 = 18;
      goto LABEL_344;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_275:
  v291 = *(this + 32);
  if (*(*(v291 + 15112) + 128) == 1 && !*(*(v291 + 37616) + 1956))
  {
    return 0;
  }

  *(*(this + 33) + 764) = 0;
  v292 = *(this + 33);
  v293 = *(v292 + 764);
  *(v292 + 764) = 0;
  *(*(this + 33) + 764) ^= 0xFFFFFF00;
  v294 = *(this + 33);
  v295 = *(v294 + 764);
  *(v294 + 764) = v293;
  if (!*(this + 498) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 764, 0, 0xFFFFFFFFLL, 8, v295, 4), !result))
  {
    if ((*(*(this + 33) + 768) = 0, v296 = *(this + 33), v297 = *(v296 + 768), *(v296 + 768) = 0, *(*(this + 33) + 768) ^= 0x3FFu, v298 = *(this + 33), v299 = *(v298 + 768), *(v298 + 768) = v297, !*(this + 498)) && !*(this + 1034) && !*(this + 1035) || (result = CAHDec::addToPatcherList(this, this + 498, 768, 0, 0x3FFFFFFFFFFLL, 32, v299, 4), !result))
    {
      if (*(*(*(this + 32) + 15112) + 128))
      {
        return 0;
      }

      v300 = 0;
      v301 = 0;
      do
      {
        v302 = *(*(*(*(this + 32) + 15112) + 79224) + v301);
        if (!v302 || (v303 = *(v302 + 2016)) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v359[0]) = 136315138;
            *(v359 + 4) = "populateAddressRegisters";
            v264 = MEMORY[0x277D86220];
            v265 = "AppleAVD: %s(): Unexpected. av1_fb->buffer is 0x0!";
            v266 = 12;
LABEL_344:
            _os_log_impl(&dword_277606000, v264, OS_LOG_TYPE_DEFAULT, v265, v359, v266);
          }

          return 0xFFFFFFFFLL;
        }

        *(*(this + 33) + v300 + 772) = 0;
        *(*(this + 33) + v300 + 800) = 0;
        *(*(this + 33) + v300 + 828) = 0;
        *(*(this + 33) + v300 + 856) = 0;
        *(*(this + 33) + v300 + 884) = 0;
        *(*(this + 33) + v300 + 912) = 0;
        *(*(this + 33) + v300 + 940) = 0;
        *(*(this + 33) + v300 + 968) = 0;
        v304 = *(this + 33) + v300;
        v305 = *(v304 + 828);
        *(v304 + 828) = 0;
        *(*(this + 33) + v300 + 828) ^= 0xFFFFFF80;
        v306 = *(this + 33) + v300;
        v307 = *(v306 + 828);
        *(v306 + 828) = v305;
        v308 = *(v303 + 8);
        if (*v308 || *(v308 + 152) || *(v308 + 156))
        {
          result = CAHDec::addToPatcherList(this, v308, v300 + 828, *(v308 + 52), 0xFFFFFFFFLL, 7, v307, 4);
          if (result)
          {
            return result;
          }
        }

        v309 = *(this + 33) + v300;
        v310 = *(v309 + 856);
        *(v309 + 856) = 0;
        *(*(this + 33) + v300 + 856) ^= 0x3FFu;
        v311 = *(this + 33) + v300;
        v312 = *(v311 + 856);
        *(v311 + 856) = v310;
        v313 = *(v303 + 8);
        if (*v313 || *(v313 + 152) || *(v313 + 156))
        {
          result = CAHDec::addToPatcherList(this, v313, v300 + 856, *(v313 + 52), 0x3FFFFFFFFFFLL, 32, v312, 4);
          if (result)
          {
            return result;
          }
        }

        v314 = *(this + 33) + v300;
        v315 = *(v314 + 940);
        *(v314 + 940) = 0;
        *(*(this + 33) + v300 + 940) ^= 0xFFFFFF80;
        v316 = *(this + 33) + v300;
        v317 = *(v316 + 940);
        *(v316 + 940) = v315;
        v318 = *(v303 + 8);
        if (*v318 || *(v318 + 152) || *(v318 + 156))
        {
          result = CAHDec::addToPatcherList(this, v318, v300 + 940, *(v318 + 56), 0xFFFFFFFFLL, 7, v317, 4);
          if (result)
          {
            return result;
          }
        }

        v319 = *(this + 33) + v300;
        v320 = *(v319 + 968);
        *(v319 + 968) = 0;
        *(*(this + 33) + v300 + 968) ^= 0x3FFu;
        v321 = *(this + 33) + v300;
        v322 = *(v321 + 968);
        *(v321 + 968) = v320;
        v323 = *(v303 + 8);
        if (*v323 || *(v323 + 152) || *(v323 + 156))
        {
          result = CAHDec::addToPatcherList(this, v323, v300 + 968, *(v323 + 56), 0x3FFFFFFFFFFLL, 32, v322, 4);
          if (result)
          {
            return result;
          }
        }

        v324 = *(*(this + 32) + 2648);
        v325 = *(this + 33) + v300;
        v326 = *(v325 + 772);
        *(v325 + 772) = 0;
        *(*(this + 33) + v300 + 772) ^= 0xFFFFFF80;
        v327 = *(this + 33) + v300;
        v328 = *(v327 + 772);
        *(v327 + 772) = v326;
        if (v324 == 1)
        {
          v329 = *(v303 + 8);
          if (*v329 || *(v329 + 152) || *(v329 + 156))
          {
            result = CAHDec::addToPatcherList(this, v329, v300 + 772, *(v329 + 64), 0xFFFFFFFFLL, 7, v328, 4);
            if (result)
            {
              return result;
            }
          }

          v330 = *(this + 33) + v300;
          v331 = *(v330 + 800);
          *(v330 + 800) = 0;
          *(*(this + 33) + v300 + 800) ^= 0x3FFu;
          v332 = *(this + 33) + v300;
          v333 = *(v332 + 800);
          *(v332 + 800) = v331;
          v334 = *(v303 + 8);
          if (*v334 || *(v334 + 152) || *(v334 + 156))
          {
            result = CAHDec::addToPatcherList(this, v334, v300 | 0x320, *(v334 + 64), 0x3FFFFFFFFFFLL, 32, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v335 = *(this + 33) + v300;
          v336 = *(v335 + 884);
          *(v335 + 884) = 0;
          *(*(this + 33) + v300 + 884) ^= 0xFFFFFF80;
          v337 = *(this + 33) + v300;
          v338 = *(v337 + 884);
          *(v337 + 884) = v336;
          v339 = *(v303 + 8);
          if (*v339 || *(v339 + 152) || *(v339 + 156))
          {
            result = CAHDec::addToPatcherList(this, v339, v300 + 884, *(v339 + 68), 0xFFFFFFFFLL, 7, v338, 4);
            if (result)
            {
              return result;
            }
          }

          v340 = *(this + 33) + v300;
          v341 = *(v340 + 912);
          *(v340 + 912) = 0;
          *(*(this + 33) + v300 + 912) ^= 0x3FFu;
          v342 = *(this + 33) + v300;
          v343 = *(v342 + 912);
          *(v342 + 912) = v341;
          v344 = *(v303 + 8);
          if (*v344 || *(v344 + 152) || *(v344 + 156))
          {
            v345 = *(v344 + 68);
            v346 = v300 + 912;
            v347 = this;
            goto LABEL_339;
          }
        }

        else
        {
          if (*(v303 + 24) || *(v303 + 176) || *(v303 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 24), v300 + 772, 0, 0xFFFFFFFFLL, 7, v328, 4);
            if (result)
            {
              return result;
            }
          }

          v348 = *(this + 33) + v300;
          v349 = *(v348 + 800);
          *(v348 + 800) = 0;
          *(*(this + 33) + v300 + 800) ^= 0x3FFu;
          v350 = *(this + 33) + v300;
          v351 = *(v350 + 800);
          *(v350 + 800) = v349;
          if (*(v303 + 24) || *(v303 + 176) || *(v303 + 180))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 24), v300 | 0x320, 0, 0x3FFFFFFFFFFLL, 32, v351, 4);
            if (result)
            {
              return result;
            }
          }

          v352 = *(this + 33) + v300;
          v353 = *(v352 + 884);
          *(v352 + 884) = 0;
          *(*(this + 33) + v300 + 884) ^= 0xFFFFFF80;
          v354 = *(this + 33) + v300;
          v355 = *(v354 + 884);
          *(v354 + 884) = v353;
          if (*(v303 + 200) || *(v303 + 352) || *(v303 + 356))
          {
            result = CAHDec::addToPatcherList(this, (v303 + 200), v300 + 884, 0, 0xFFFFFFFFLL, 7, v355, 4);
            if (result)
            {
              return result;
            }
          }

          v356 = *(this + 33) + v300;
          v357 = *(v356 + 912);
          *(v356 + 912) = 0;
          *(*(this + 33) + v300 + 912) ^= 0x3FFu;
          v358 = *(this + 33) + v300;
          v343 = *(v358 + 912);
          *(v358 + 912) = v357;
          if (*(v303 + 200) || *(v303 + 352) || *(v303 + 356))
          {
            v346 = v300 + 912;
            v347 = this;
            v344 = v303 + 200;
            v345 = 0;
LABEL_339:
            result = CAHDec::addToPatcherList(v347, v344, v346, v345, 0x3FFFFFFFFFFLL, 32, v343, 4);
            if (result)
            {
              return result;
            }
          }
        }

        result = 0;
        v301 += 8;
        v300 += 4;
      }

      while (v300 != 28);
    }
  }

  return result;
}

uint64_t CAHDecThymeAvx::populateDecryptionRegisters(CAHDecThymeAvx *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  if (*(v1 + 2360) != 1)
  {
    return 0;
  }

  v3 = *(this + 33);
  *(v3 + 1268) = *(v3 + 1268) & 0xFFFFFFFE | *(v1 + 2508) & 1;
  if (*(v1 + 2508))
  {
    *(v3 + 1280) = 0x10000000;
    *(v3 + 1284) = *(v1 + 2368);
    *(v3 + 1296) = 0;
    *(v3 + 1288) = 0;
    *(v3 + 1300) = *(v1 + 2372);
    v4 = *(v1 + 2404);
    *(v3 + 1316) = *(v1 + 2388);
    *(v3 + 1332) = v4;
  }

  *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
  if (!*(v1 + 2512))
  {
LABEL_7:
    *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v3 + 1508) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v3 + 1508) = v8;
    memcpy((v3 + 1512), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }

    *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFEFFFF | ((*(v1 + 2632) & 1) << 16);
    if (*(v1 + 2632))
    {
      *(v3 + 1400) = 0x80000000;
      v9 = ((*(v1 + 2528) & 1) << 27) | 0x80000000;
      *(v3 + 1400) = v9;
      *(v3 + 1400) = v9 | (((2 * *(v1 + 2528)) & 4 | (*(v1 + 2528) >> 1) & 2 | (*(v1 + 2528) >> 3) & 1) << 24);
      v10 = *(v1 + 2532);
      v11 = *(v1 + 2564);
      *(v3 + 1420) = *(v1 + 2548);
      *(v3 + 1436) = v11;
      *(v3 + 1404) = v10;
      *(v3 + 1452) = *(v1 + 2580);
      *(v3 + 1460) = *(v1 + 2588);
      v12 = *(v1 + 2528);
      if ((v12 & 6) != 0 && (v12 & 8) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "populateDecryptionRegisters";
          v13 = MEMORY[0x277D86220];
          v14 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
LABEL_23:
          _os_log_impl(&dword_277606000, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
          return 0xFFFFFFFFLL;
        }

        return 0xFFFFFFFFLL;
      }

      *(v3 + 1468) = *(v1 + 2596);
    }

    *(*(this + 33) + 1268) = *(*(this + 33) + 1268) & 0xFFFDFFFF | ((*(v1 + 2636) & 1) << 17);
    if (*(v1 + 2636))
    {
      result = 0;
      *(v3 + 1484) = -1879048192;
      *(v3 + 1484) = ((*(v1 + 2612) & 1) << 23) | 0x90000000;
      *(v3 + 1488) = *(v1 + 2616);
      *(v1 + 2640) = 1;
      return result;
    }

    return 0;
  }

  *(v3 + 1348) = 0;
  if (*(v1 + 2424))
  {
    *(v1 + 2640) = 0;
    v5 = *(v3 + 1348) & 0xF7FFFFF | ((*(v1 + 2420) & 1) << 23) | 0x20000000;
    *(v3 + 1348) = v5;
    *(v3 + 1348) = v5 & 0xFFC00000 | (*(v1 + 2364) == 0);
    v6 = *(v1 + 2428);
    v7 = *(v1 + 2460);
    *(v3 + 1368) = *(v1 + 2444);
    *(v3 + 1384) = v7;
    *(v3 + 1352) = v6;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "populateDecryptionRegisters";
    v13 = MEMORY[0x277D86220];
    v14 = "AppleAVD: %s(): H13A descrambler is not supported\n";
    goto LABEL_23;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeAvx::populateTiles(CAHDecThymeAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecThymeAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1528;
    do
    {
      CAHDecTansyAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecThymeAvx::populateAvxVPDependency(CAVDAvxDecoder **this)
{
  if (CAVDAvxDecoder::isParallelDecode(this[32]))
  {
    v2 = 0;
  }

  else
  {
    v2 = 32;
  }

  *(this[33] + 317) = *(this[33] + 317) & 0xFFFFFFDF | v2;
  *(this[33] + 317) &= 0xFFFFF83F;
  *(this[33] + 317) &= 0xFFFF07FF;
  *(this[33] + 318) = 0;
  return 0;
}

uint64_t CAHDecThymeAvx::updateCommonRegisters(CAHDecThymeAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecThymeAvx::populateSequenceRegisters(CAHDecThymeAvx *this)
{
  v2 = *(this + 32);
  v1 = *(this + 33);
  v3 = *(v2 + 15112);
  v4 = *(v2 + 37616);
  *(v1 + 32) = 0;
  v5 = *(v3 + 8) - 1;
  *(v1 + 32) = v5;
  *(v1 + 32) = (v5 | (*(v3 + 12) << 16)) - 0x10000;
  *(v1 + 36) = 0;
  v6 = *(v4 + 80) & 1;
  *(v1 + 36) = v6;
  v7 = v6 & 0xFFFFFFF1 | (2 * (*(v4 + 76) & 7));
  *(v1 + 36) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * (*(v4 + 72) & 1));
  *(v1 + 36) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * (*(v4 + 96) & 1));
  *(v1 + 36) = v9;
  v10 = v9 & 0xFFFFFFBF | ((*(v4 + 95) & 1) << 6);
  *(v1 + 36) = v10;
  v11 = v10 & 0xFFFFFF7F | ((*(v4 + 94) & 1) << 7);
  *(v1 + 36) = v11;
  v12 = v11 & 0xFFFFFEFF | ((*(v4 + 93) & 1) << 8);
  *(v1 + 36) = v12;
  v13 = v12 & 0xFFFFFDFF | ((*(v4 + 92) & 1) << 9);
  *(v1 + 36) = v13;
  v14 = v13 & 0xFFFFFBFF | ((*(v4 + 60) == 15) << 10);
  *(v1 + 36) = v14;
  v15 = v14 & 0xFFFFF7FF | ((*(v4 + 1942) & 1) << 11);
  *(v1 + 36) = v15;
  v16 = v15 & 0xFFF87FFF | ((*(v3 + 58) & 0xF) << 15);
  *(v1 + 36) = v16;
  v17 = v16 & 0xFF87FFFF | ((*(v3 + 57) & 0xF) << 19);
  *(v1 + 36) = v17;
  *(v1 + 36) = v17 & 0xFCFFFFFF | ((*(v3 + 56) & 3) << 24);
  return 0;
}

uint64_t CAHDecThymeAvx::getUpscaleConvolveStep(CAHDecThymeAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecThymeAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeAvx::getUpscaleConvolveX0(CAHDecThymeAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecThymeAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeAvx::populatePictureRegisters(CAHDecThymeAvx *this)
{
  v214 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v3 = *(v1 + 15112);
  v4 = *(v1 + 37616);
  *(v2 + 40) = 766509056;
  v5 = ((*(v1 + 2652) & 1) << 19) | 0x2DB00000;
  *(v2 + 40) = v5;
  v6 = v5 & 0xFFFBFFFF | ((*(v1 + 2653) & 1) << 18);
  *(v2 + 40) = v6;
  v7 = v6 & 0xFFFDFFFF | ((*(v1 + 2654) & 1) << 17);
  *(v2 + 40) = v7;
  if (*(v3 + 128) == 1)
  {
    v8 = (*(v4 + 1956) ^ 1) << 13;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  *(v2 + 40) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v2 + 40) = v10;
  v11 = v10 & 0xFFFFF00F | ((*(*(this + 32) + 2644) == 1) << 10) | 0x2E0;
  *(v2 + 40) = v11;
  v12 = v11 & 0xFFFFFFE3 | (4 * (*(v3 + 78516) & 3));
  *(v2 + 40) = v12;
  *(v2 + 40) = v12 & 0xFFFFFFFC | *(v3 + 78520) & 3;
  *(v2 + 44) = 0;
  if (*(v4 + 1956))
  {
    v13 = 318767104;
  }

  else
  {
    v13 = 50331648;
  }

  *(v2 + 44) = v13;
  v14 = *(v3 + 24);
  v15 = *(v3 + 12);
  *(v2 + 48) = 0;
  if (*(v4 + 1956))
  {
    v15 = (v15 + 7) & 0xFFF8;
  }

  v16 = (v15 << 16) - 0x10000;
  *(v2 + 48) = v16;
  if (*(v4 + 1956))
  {
    LOWORD(v14) = (v14 + 7) & 0xFFF8;
  }

  *(v2 + 52) = 0;
  *(v2 + 56) = 0;
  *(v2 + 48) = v16 & 0xFFFF0000 | (v14 - 1);
  v17 = *(v3 + 128) << 31;
  *(v2 + 56) = v17;
  v18 = v17 & 0x807FFFFF | (*(v4 + 1876) << 23);
  *(v2 + 56) = v18;
  v19 = v18 & 0xFF8FFFFF | ((*(v4 + 1896) & 7) << 20);
  *(v2 + 56) = v19;
  v20 = v19 & 0xFFF1FFFF | ((*(v4 + 1900) & 7) << 17);
  *(v2 + 56) = v20;
  v21 = v20 & 0xFFFEFFFF | ((*(*(*(this + 32) + 15112) + 79300) & 1) << 16);
  *(v2 + 56) = v21;
  v22 = v21 & 0xFFFF7FFF | ((*(v4 + 2284) & 1) << 15);
  *(v2 + 56) = v22;
  v23 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v23 = (*(v4 + 2285) & 1) << 14;
  }

  v24 = v23 | v22 & 0xFFFFBFFF;
  *(v2 + 56) = v24;
  v25 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v25 = (*(v4 + 2287) & 1) << 13;
  }

  v26 = v25 | v24 & 0xFFFFDFFF;
  *(v2 + 56) = v26;
  v27 = v26 & 0xFFFFEFFF | ((*(v4 + 1957) & 1) << 12);
  *(v2 + 56) = v27;
  if (*(v3 + 128))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v4 + 1958) << 10;
  }

  v29 = v28 | v27 & 0xFFFFFBFF;
  *(v2 + 56) = v29;
  v30 = v29 & 0xFFFFFDFF | ((*(v4 + 1962) & 1) << 9);
  *(v2 + 56) = v30;
  v31 = v30 & 0xFFFFFEFF | ((*(v4 + 1941) & 1) << 8);
  *(v2 + 56) = v31;
  if (*(v3 + 128))
  {
    v32 = 128;
  }

  else
  {
    v32 = *(v4 + 1948) << 7;
  }

  v33 = 0;
  v34 = v32 | v31 & 0xFFFFFF7F;
  *(v2 + 56) = v34;
  v35 = v34 & 0xFFFFFFBF | ((*(v4 + 1956) & 1) << 6);
  *(v2 + 56) = v35;
  v36 = v35 & 0xFFFFFFDF | (32 * (*(v4 + 1959) & 1));
  *(v2 + 56) = v36;
  v37 = v36 & 0xFFFFFFEF | (16 * (*(v4 + 1892) & 1));
  *(v2 + 56) = v37;
  v38 = v37 & 0xFFFFFFF7 | (8 * (*(v4 + 1960) & 1));
  *(v2 + 56) = v38;
  v39 = v38 & 0xFFFFFFFB | (4 * (*(v4 + 1961) & 1));
  *(v2 + 56) = v39;
  *(v2 + 56) = v39 & 0xFFFFFFFC | *(v4 + 1964) & 3;
  v40 = xmmword_27775BCE0;
  v41 = xmmword_27775BCD0;
  v42 = vdupq_n_s64(7uLL);
  v43 = vdupq_n_s64(1uLL);
  v44 = vdupq_n_s64(4uLL);
  do
  {
    v45 = vaddq_s64(v41, v43);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v42, v41)), *v40.i8).u8[0])
    {
      *(&v207 + v33) = v45.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v41)), *&v40).i8[2])
    {
      *(&v207 + v33 + 4) = v45.i32[2];
    }

    v46 = vaddq_s64(v40, v43);
    if (vuzp1_s16(*&v40, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40))).i32[1])
    {
      *(&v209 + v33) = v46.i32[0];
      *(&v210 + v33) = v46.i32[2];
    }

    v40 = vaddq_s64(v40, v44);
    v41 = vaddq_s64(v41, v44);
    v33 += 16;
  }

  while (v33 != 32);
  v47 = 0;
  v48 = 1;
  do
  {
    if (v47 <= 5)
    {
      v49 = *(v3 + 79224);
      v50 = v48;
      do
      {
        if (v49 && *(v49 + 8 * v47) == *(v49 + 8 * v50))
        {
          *(&v207 + v50) = *(&v207 + v47);
        }

        ++v50;
      }

      while (v50 != 7);
    }

    ++v47;
    ++v48;
  }

  while (v47 != 7);
  v51 = 0;
  *(v2 + 60) = 0;
  if ((*(v3 + 128) & 1) == 0)
  {
    v51 = *(v4 + 2192) << 29;
  }

  v52 = 0;
  *(v2 + 60) = v51;
  v53 = ((v207 & 7) << 25) | ((*(v4 + 1872) != 0) << 28) | ((v208 & 7) << 22) | ((v209 & 7) << 19) | ((v210 & 7) << 16) | ((v211 & 7) << 13) | ((v212 & 7) << 10) | ((v213 & 7) << 7) | v51;
  *(v2 + 60) = v53;
  v54 = v53 & 0xFFFFFFBF | ((*(v4 + 2116) & 1) << 6);
  *(v2 + 60) = v54;
  v55 = v54 & 0xFFFFFFDF | (32 * (*(v4 + 2120) & 1));
  *(v2 + 60) = v55;
  v56 = v55 & 0xFFFFFFEF | (16 * (*(v4 + 2124) & 1));
  *(v2 + 60) = v56;
  v57 = v56 & 0xFFFFFFF7 | (8 * (*(v4 + 2128) & 1));
  *(v2 + 60) = v57;
  v58 = v57 & 0xFFFFFFFB | (4 * (*(v4 + 2132) & 1));
  *(v2 + 60) = v58;
  v59 = v58 & 0xFFFFFFFD | (2 * (*(v4 + 2136) & 1));
  *(v2 + 60) = v59;
  *(v2 + 60) = v59 & 0xFFFFFFFE | *(v4 + 2140) & 1;
  v60 = (v2 + 96);
  v61 = (v4 + 2300);
  v62 = (v4 + 2368);
  do
  {
    *(v60 - 8) = 0;
    v63 = (*(v4 + 2524 + 4 * v52) & 1) << 16;
    *(v60 - 8) = v63;
    v64 = v63 | ((*v61 != 0) << 15);
    *(v60 - 8) = v64;
    v65 = v64 | ((*(v61 - 1) != 0) << 14);
    *(v60 - 8) = v65;
    v66 = v65 | ((*(v61 - 2) != 0) << 13);
    *(v60 - 8) = v66;
    v67 = v66 & 0xFFFFE3FF | ((*v62 & 7) << 10);
    *(v60 - 8) = v67;
    v68 = v67 | ((*(v61 - 7) != 0) << 9);
    *(v60 - 8) = v68;
    *(v60 - 8) = v68 & 0xFFFFFE00 | *(v62 - 5) & 0x1FF;
    *v60 = 0;
    v69 = (*(v61 - 6) != 0) << 31;
    *v60 = v69;
    v70 = v69 & 0x80FFFFFF | ((*(v62 - 4) & 0x7F) << 24);
    *v60 = v70;
    v71 = v70 | ((*(v61 - 5) != 0) << 23);
    *v60 = v71;
    v72 = v71 & 0xFF80FFFF | ((*(v62 - 3) & 0x7F) << 16);
    *v60 = v72;
    v73 = v72 | ((*(v61 - 4) != 0) << 15);
    *v60 = v73;
    v74 = v73 & 0xFFFF80FF | ((*(v62 - 2) & 0x7F) << 8);
    *v60 = v74;
    v75 = v74 | ((*(v61 - 3) != 0) << 7);
    *v60 = v75;
    ++v52;
    *v60++ = v75 & 0xFFFFFF80 | *(v62 - 1) & 0x7F;
    v61 += 8;
    v62 += 8;
  }

  while (v52 != 8);
  *(v2 + 128) = 0x20000;
  v76 = (v2 + 132);
  v77 = v3 + 78544;
  v78 = 3;
  do
  {
    *v76 = 0;
    v79 = *(v77 - 16) << 29;
    *v76 = v79;
    v80 = v79 & 0xFF00FFFF | (*(v77 - 12) << 16);
    *v76 = v80;
    v81 = v80 & 0xFFFF00FF | (*(v77 - 8) << 8);
    *v76 = v81;
    *v76 = v81 | *(v77 - 4);
    v76[3] = 0;
    v82 = *v77 << 24;
    v76[3] = v82;
    v83 = v82 & 0xFF00FFFF | (*(v77 + 4) << 16);
    v76[3] = v83;
    v84 = v83 & 0xFFFF00FF | (*(v77 + 8) << 8);
    v76[3] = v84;
    v76[3] = v84 | *(v77 + 12);
    ++v76;
    v77 += 224;
    --v78;
  }

  while (v78);
  *(v2 + 156) = 0;
  v85 = *(v4 + 3160) << 31;
  *(v2 + 156) = v85;
  v86 = v85 & 0x9FFFFFFF | ((*(v3 + 79200) & 3) << 29);
  *(v2 + 156) = v86;
  v87 = v86 & 0xE01FFFFF | (*(v4 + 2244) << 21);
  *(v2 + 156) = v87;
  v88 = v87 & 0xFFE03FFF | ((*(v4 + 2248) & 0x7F) << 14);
  *(v2 + 156) = v88;
  v89 = v88 & 0xFFFFC07F | ((*(v4 + 2252) & 0x7F) << 7);
  *(v2 + 156) = v89;
  *(v2 + 156) = v89 & 0xFFFFFF80 | *(v4 + 2260) & 0x7F;
  *(v2 + 160) = 0;
  v90 = (*(v4 + 2256) & 0x7F) << 20;
  *(v2 + 160) = v90;
  v91 = v90 & 0xFFF01FFF | ((*(v4 + 2264) & 0x7F) << 13);
  *(v2 + 160) = v91;
  v92 = v91 | (*(v4 + 2268) << 12);
  *(v2 + 160) = v92;
  v93 = v92 & 0xFFFFF0FF | ((*(v4 + 2272) & 0xF) << 8);
  *(v2 + 160) = v93;
  v94 = v93 & 0xFFFFFF0F | (16 * (*(v4 + 2276) & 0xF));
  *(v2 + 160) = v94;
  *(v2 + 160) = v94 & 0xFFFFFFF0 | *(v4 + 2280) & 0xF;
  *(v2 + 164) = 0;
  if (*(v4 + 1956))
  {
    v95 = 0;
  }

  else
  {
    v95 = *(v4 + 3160);
    if (v95)
    {
      v95 = *(v4 + 3168) << 31;
      *(v2 + 164) = v95;
      if (*(v4 + 3168))
      {
        v96 = ((*(v4 + 3176) & 1) << 28) | v95;
        *(v2 + 164) = v96;
        v95 = ((*(v3 + 79204) & 3) << 29) | v96;
        *(v2 + 164) = v95;
      }
    }
  }

  if ((*(v4 + 1956) & 1) == 0 && (*(v4 + 1962) & 1) == 0)
  {
    v97 = v95 | ((*(v4 + 2216) & 1) << 27);
    *(v2 + 164) = v97;
    v98 = v97 & 0xF8FFFFFF | ((*(v4 + 2212) & 7) << 24);
    *(v2 + 164) = v98;
    v99 = v98 & 0xFF03FFFF | ((*(v4 + 2196) & 0x3F) << 18);
    *(v2 + 164) = v99;
    v100 = v99 & 0xFFFC0FFF | ((*(v4 + 2200) & 0x3F) << 12);
    *(v2 + 164) = v100;
    if (*(v4 + 2196) || (v101 = *(v4 + 2200)) != 0)
    {
      v101 = (*(v4 + 2204) & 0x3F) << 6;
    }

    v102 = v101 | v100 & 0xFFFFF03F;
    *(v2 + 164) = v102;
    if (*(v4 + 2196) || (v103 = *(v4 + 2200)) != 0)
    {
      v103 = *(v4 + 2208) & 0x3F;
    }

    *(v2 + 164) = v103 | v102 & 0xFFFFFFC0;
    if (!*(v3 + 56))
    {
      *(v2 + 164) = v100 & 0xFFFFF000;
    }
  }

  *(v2 + 168) = 0;
  v104 = (*(v4 + 2226) & 0x7F) << 21;
  *(v2 + 168) = v104;
  v105 = v104 & 0xFFE03FFF | ((*(v4 + 2227) & 0x7F) << 14);
  *(v2 + 168) = v105;
  v106 = v105 & 0xFFFFC07F | ((*(v4 + 2228) & 0x7F) << 7);
  *(v2 + 168) = v106;
  *(v2 + 168) = v106 & 0xFFFFFF80 | *(v4 + 2229) & 0x7F;
  *(v2 + 172) = 0;
  v107 = (*(v4 + 2230) & 0x7F) << 21;
  *(v2 + 172) = v107;
  v108 = v107 & 0xFFE03FFF | ((*(v4 + 2231) & 0x7F) << 14);
  *(v2 + 172) = v108;
  v109 = v108 & 0xFFFFC07F | ((*(v4 + 2232) & 0x7F) << 7);
  *(v2 + 172) = v109;
  *(v2 + 172) = v109 & 0xFFFFFF80 | *(v4 + 2233) & 0x7F;
  *(v2 + 176) = 0;
  LOBYTE(v109) = *(v4 + 2236);
  *(v2 + 176) = (v109 & 0x7F) << 7;
  *(v2 + 176) = *(v4 + 2237) & 0x7F | ((v109 & 0x7F) << 7);
  *(v2 + 180) = 0;
  v110 = (v2 + 180);
  *(v2 + 188) = 0;
  if (*(v4 + 99) && (*(v4 + 1962) & 1) == 0 && (*(v4 + 1956) & 1) == 0)
  {
    *v110 = 0x10000000;
    v111 = ((*(v4 + 3180) << 26) + 0x4000000) & 0xC000000 | 0x10000000;
    *v110 = v111;
    v112 = v111 & 0xFCFFFFFF | ((*(v4 + 3184) & 3) << 24);
    *v110 = v112;
    v113 = v112 & 0xFF0FFFFF | ((*(v4 + 3192) & 0xF) << 20);
    *v110 = v113;
    v114 = v113 & 0xFFF3FFFF | ((*(v4 + 3256) & 3) << 18);
    *v110 = v114;
    v115 = v114 & 0xFFFC3FFF | ((*(v4 + 3320) & 0xF) << 14);
    *v110 = v115;
    v116 = v115 & 0xFFFFCFFF | ((*(v4 + 3384) & 3) << 12);
    *v110 = v116;
    if (*(v4 + 3188) < 2)
    {
      v117 = 0;
    }

    else
    {
      v117 = (*(v4 + 3196) & 0xF) << 8;
    }

    v118 = v117 | v116 & 0xFFFFF0FF;
    *v110 = v118;
    if (*(v4 + 3188) < 2)
    {
      v119 = 0;
    }

    else
    {
      v119 = (*(v4 + 3260) & 3) << 6;
    }

    v120 = v119 | v118 & 0xFFFFFF3F;
    *v110 = v120;
    if (*(v4 + 3188) < 2)
    {
      v121 = 0;
    }

    else
    {
      v121 = 4 * (*(v4 + 3324) & 0xF);
    }

    v122 = v121 | v120 & 0xFFFFFFC3;
    *v110 = v122;
    if (*(v4 + 3188) < 2)
    {
      v123 = 0;
    }

    else
    {
      v123 = *(v4 + 3388) & 3;
    }

    *v110 = v123 | v122 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 2)
    {
      v124 = 0;
    }

    else
    {
      v124 = (*(v4 + 3200) & 0xF) << 20;
    }

    *(v2 + 184) = v124;
    if (*(v4 + 3188) < 3)
    {
      v125 = 0;
    }

    else
    {
      v125 = (*(v4 + 3264) & 3) << 18;
    }

    v126 = v125 | v124;
    *(v2 + 184) = v126;
    if (*(v4 + 3188) < 3)
    {
      v127 = 0;
    }

    else
    {
      v127 = (*(v4 + 3328) & 0xF) << 14;
    }

    v128 = v127 | v126;
    *(v2 + 184) = v128;
    if (*(v4 + 3188) < 3)
    {
      v129 = 0;
    }

    else
    {
      v129 = (*(v4 + 3392) & 3) << 12;
    }

    v130 = v129 | v128;
    *(v2 + 184) = v130;
    if (*(v4 + 3188) <= 3)
    {
      v131 = 0;
    }

    else
    {
      v131 = (*(v4 + 3204) & 0xF) << 8;
    }

    v132 = v131 | v130;
    *(v2 + 184) = v132;
    if (*(v4 + 3188) < 4)
    {
      v133 = 0;
    }

    else
    {
      v133 = (*(v4 + 3268) & 3) << 6;
    }

    v134 = v133 | v132 & 0xFFFFFF3F;
    *(v2 + 184) = v134;
    if (*(v4 + 3188) < 4)
    {
      v135 = 0;
    }

    else
    {
      v135 = 4 * (*(v4 + 3332) & 0xF);
    }

    v136 = v135 | v134 & 0xFFFFFFC3;
    *(v2 + 184) = v136;
    if (*(v4 + 3188) < 4)
    {
      v137 = 0;
    }

    else
    {
      v137 = *(v4 + 3396) & 3;
    }

    *(v2 + 184) = v137 | v136 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 4)
    {
      v138 = 0;
    }

    else
    {
      v138 = (*(v4 + 3208) & 0xF) << 20;
    }

    *(v2 + 188) = v138;
    if (*(v4 + 3188) < 5)
    {
      v139 = 0;
    }

    else
    {
      v139 = (*(v4 + 3272) & 3) << 18;
    }

    v140 = v139 | v138;
    *(v2 + 188) = v140;
    if (*(v4 + 3188) < 5)
    {
      v141 = 0;
    }

    else
    {
      v141 = (*(v4 + 3336) & 0xF) << 14;
    }

    v142 = v141 | v140;
    *(v2 + 188) = v142;
    if (*(v4 + 3188) < 5)
    {
      v143 = 0;
    }

    else
    {
      v143 = (*(v4 + 3400) & 3) << 12;
    }

    v144 = v143 | v142;
    *(v2 + 188) = v144;
    if (*(v4 + 3188) <= 5)
    {
      v145 = 0;
    }

    else
    {
      v145 = (*(v4 + 3212) & 0xF) << 8;
    }

    v146 = v145 | v144;
    *(v2 + 188) = v146;
    if (*(v4 + 3188) < 6)
    {
      v147 = 0;
    }

    else
    {
      v147 = (*(v4 + 3276) & 3) << 6;
    }

    v148 = v147 | v146 & 0xFFFFFF3F;
    *(v2 + 188) = v148;
    if (*(v4 + 3188) < 6)
    {
      v149 = 0;
    }

    else
    {
      v149 = 4 * (*(v4 + 3340) & 0xF);
    }

    v150 = v149 | v148 & 0xFFFFFFC3;
    *(v2 + 188) = v150;
    if (*(v4 + 3188) < 6)
    {
      v151 = 0;
    }

    else
    {
      v151 = *(v4 + 3404) & 3;
    }

    *(v2 + 188) = v151 | v150 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 6)
    {
      v152 = 0;
    }

    else
    {
      v152 = (*(v4 + 3216) & 0xF) << 20;
    }

    *(v2 + 192) = v152;
    if (*(v4 + 3188) < 7)
    {
      v153 = 0;
    }

    else
    {
      v153 = (*(v4 + 3280) & 3) << 18;
    }

    v154 = v153 | v152;
    *(v2 + 192) = v154;
    if (*(v4 + 3188) < 7)
    {
      v155 = 0;
    }

    else
    {
      v155 = (*(v4 + 3344) & 0xF) << 14;
    }

    v156 = v155 | v154;
    *(v2 + 192) = v156;
    if (*(v4 + 3188) < 7)
    {
      v157 = 0;
    }

    else
    {
      v157 = (*(v4 + 3408) & 3) << 12;
    }

    v158 = v157 | v156;
    *(v2 + 192) = v158;
    if (*(v4 + 3188) <= 7)
    {
      v159 = 0;
    }

    else
    {
      v159 = (*(v4 + 3220) & 0xF) << 8;
    }

    v160 = v159 | v158;
    *(v2 + 192) = v160;
    if (*(v4 + 3188) < 8)
    {
      v161 = 0;
    }

    else
    {
      v161 = (*(v4 + 3284) & 3) << 6;
    }

    v162 = v161 | v160 & 0xFFFFFF3F;
    *(v2 + 192) = v162;
    if (*(v4 + 3188) < 8)
    {
      v163 = 0;
    }

    else
    {
      v163 = 4 * (*(v4 + 3348) & 0xF);
    }

    v164 = v163 | v162 & 0xFFFFFFC3;
    *(v2 + 192) = v164;
    if (*(v4 + 3188) < 8)
    {
      v165 = 0;
    }

    else
    {
      v165 = *(v4 + 3412) & 3;
    }

    *(v2 + 192) = v165 | v164 & 0xFFFFFFFC;
  }

  if (*(v4 + 98))
  {
    v166 = (v2 + 196);
    if (*(v4 + 2172) != 8)
    {
      *v166 = 0x80000000;
      v167 = ((*(v4 + 2172) << 28) - 0x10000000) | 0x80000000;
      goto LABEL_151;
    }
  }

  else
  {
    v166 = (v2 + 196);
  }

  v167 = 0;
  *v166 = 0;
LABEL_151:
  *(v2 + 196) = v167;
  *(v2 + 196) = (*(v4 + 2164) - 1) | v167;
  UpscaleConvolveStep = CAHDecThymeAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecThymeAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 200) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecThymeAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 204) = v173 & 0x3FFF | ((CAHDecThymeAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
  *(v2 + 208) = 0;
  v174 = (*(v4 + 3448) & 3) << 10;
  *(v2 + 208) = v174;
  v175 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v175 = (*(v4 + 3452) & 3) << 8;
  }

  v176 = v175 | v174;
  *(v2 + 208) = v176;
  v177 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v177 = (*(v4 + 3456) & 3) << 6;
  }

  v178 = v177 | v176;
  *(v2 + 208) = v178;
  v179 = (16 * (*(v3 + 79208) & 3)) | v178;
  *(v2 + 208) = v179;
  v180 = (4 * (*(v3 + 79212) & 3)) | v179;
  *(v2 + 208) = v180;
  *(v2 + 208) = v180 & 0xFFC | *(v3 + 79216) & 3;
  *(v2 + 212) = 0;
  v181 = *(v3 + 78496);
  *(v2 + 212) = v181 << 16;
  *(v2 + 212) = *(v3 + 78492) | (v181 << 16);
  *(v2 + 216) = 0;
  v182 = *(v3 + 78504);
  *(v2 + 216) = v182 << 16;
  *(v2 + 216) = *(v3 + 78500) | (v182 << 16);
  if (*(v3 + 128) == 1)
  {
    result = 0;
    if (*(v4 + 1956))
    {
      *(v2 + 360) = (*(v2 + 40) << 18) & 0x1000000 | (((*(v2 + 40) >> 4) & 1) << 25);
      *(v2 + 392) = 0;
      v184 = (((*(v3 + 12) << 16) + 458752) & 0xFFF80000) - 0x10000;
      *(v2 + 392) = v184;
      *(v2 + 392) = (((*(v3 + 8) + 7) & 0xFFF8) + 0xFFFF) | v184;
      *(v2 + 424) = 1073758208;
    }
  }

  else
  {
    v185 = (v2 + 220);
    v186 = -308;
    do
    {
      v187 = v4 + v186;
      if (*(v4 + v186 + 4136) == 1)
      {
        v188 = ((*(v2 + 56) << 21) >> 31) + 14;
      }

      else
      {
        LOBYTE(v188) = 10;
      }

      *v185 = 0;
      v189 = *(v187 + 4136) << 30;
      *v185 = v189;
      v190 = v189 & 0xC0007FFF | (((*(v187 + 4096) >> v188) & 0x7FFF) << 15);
      *v185 = v190;
      *v185 = v190 & 0xFFFF8000 | (*(v187 + 4100) >> v188) & 0x7FFF;
      v185[7] = 0;
      v191 = (*(v187 + 4137) == 0) << 30;
      v185[7] = v191;
      v192 = v191 & 0xC0007FFF | (((*(v187 + 4104) >> 1) & 0x7FFF) << 15);
      v185[7] = v192;
      v185[7] = v192 & 0xFFFF8000 | (*(v187 + 4108) >> 1);
      v185[14] = 0;
      v193 = (*(v187 + 4112) << 14) & 0x3FFF8000;
      v185[14] = v193;
      v185[14] = v193 & 0xFFFF8000 | (*(v187 + 4116) >> 1);
      v185[21] = 0;
      v194 = *(v187 + 4128);
      v185[21] = v194 << 16;
      v185[21] = *(v187 + 4130) | (v194 << 16);
      v185[28] = 0;
      v195 = *(v187 + 4132);
      v185[28] = v195 << 16;
      v185[28] = *(v187 + 4134) | (v195 << 16);
      ++v185;
      v186 += 44;
    }

    while (v186);
    v196 = **(v3 + 79224);
    if (v196)
    {
      v197 = 0;
      v198 = (v2 + 428);
      while (1)
      {
        *(v198 - 16) = 0;
        v199 = (*(v2 + 40) << 18) & 0x1000000 | (((*(v2 + 40) >> 4) & 1) << 25);
        *(v198 - 16) = v199;
        *(v198 - 16) = v199 | *(v196 + 4);
        *(v198 - 8) = 0;
        v200 = (*(v196 + 1768) << 16) - 0x10000;
        *(v198 - 8) = v200;
        *(v198 - 8) = v200 & 0xFFFF0000 | (*(v196 + 1760) - 1);
        *v198 = 0;
        v201 = ((*(v3 + 12) / 2 + (*(v196 + 1768) << 14)) / *(v3 + 12)) << 16;
        *v198 = v201;
        *v198 = v201 & 0xFFFF0000 | ((*(v3 + 8) / 2 + (*(v196 + 1760) << 14)) / *(v3 + 8));
        if (v197 == 6)
        {
          break;
        }

        v196 = *(*(v3 + 79224) + 8 * v197 + 8);
        ++v198;
        ++v197;
        if (!v196)
        {
          v202 = (v197 - 1) < 6;
          goto LABEL_170;
        }
      }

      v202 = 0;
    }

    else
    {
      LODWORD(v197) = 0;
      v202 = 1;
LABEL_170:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v203 = 136315394;
        v204 = "virtual int CAHDecThymeAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecThymeAvx::populateClearTiles(CAHDecThymeAvx *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 1889);
  v5 = v4[34];
  *(v3 + 996) = v4[35];
  *(v3 + 998) = v5;
  if (CAVDAvxDecoder::isParallelDecode(v2))
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(*(this + 32) + 37616) + 3156);
  }

  v7 = *(this + 33);
  *(v7 + 1260) = v6;
  v8 = v4[35];
  if (v8)
  {
    v9 = v4 + 16485;
    v10 = (v7 + 1000);
    do
    {
      v11 = *v9++;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  v12 = v4[34];
  if (v12)
  {
    v13 = v4 + 16420;
    v14 = (v7 + 1130);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t CAHDecThymeAvx::populateAvdWork(CAHDecThymeAvx *this)
{
  v1 = 0;
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = v3 + 36864;
  v51 = *(v3 + 15112);
  v4 = *(v51 + 34);
  LODWORD(v3) = *(v51 + 35);
  v5 = *(v2 + 1048);
  v45 = (v5 >> 28) + 2;
  v6 = (v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1);
  if ((v5 & 4) != 0 && ((v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1)) == 0)
  {
    v1 = (*(*(this + *(this + 13) + 34) + 16) - 1) % v45;
  }

  v7 = *(*(v2 + 752) + 60);
  if (v6)
  {
    v8 = (v5 >> 28) + 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = 36 * (0x1000u / v8);
  if (v7 == 15)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v47 = v10;
  if (v4)
  {
    v53 = 0;
    v11 = 0;
    v50 = 0;
    v12 = *(this + 33);
    v39 = v8;
    v40 = 36 * (0x1000u / v8);
    LODWORD(v13) = 954437177 * ((v9 * (v8 - 1)) >> 2);
    v14 = v12 + 50680 + v9 * (v8 - 1);
    v48 = *v51;
    v52 = v51 + 4114;
    v46 = v51 + 8210;
    v15 = -50644 - v12;
    v16 = v51 + 8243;
    v44 = -(v3 * v4);
    v41 = v1;
    v17 = v1;
    v18 = v14;
    v42 = v15;
    while (!v3)
    {
      v32 = v53 + 1;
LABEL_49:
      v53 = v32;
      if (v32 >= v4)
      {
        v33 = v50;
        v9 = v40;
        v1 = v41;
        v8 = v39;
        goto LABEL_52;
      }
    }

    v19 = 0;
    v20 = v15 + v18;
    v49 = v44 + v11;
    v43 = v11;
    v54 = v11;
    while (1)
    {
      v21 = v54 + v19;
      v22 = v49 + v19;
      v58 = 0;
      *(v14 + 4) = v50 + v19;
      *(v14 + 6) = v17;
      *(v14 + 10) = v54 + v19;
      v23 = v54 + v19 ? 4 : 5;
      *(v14 + 12) = v23;
      if (v22 == -1)
      {
        *(v14 + 14) = 262149;
      }

      else
      {
        v24 = v22 == -2 ? v6 : 0;
        *(v14 + 14) = 4;
        *(v14 + 16) = v24 == 1 ? 4 : 0;
      }

      v57 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(this + 32), v48 + v51[v21 + 18], &v58, &v57))
      {
        return 0xFFFFFFFFLL;
      }

      v55 = v17;
      v25 = v6;
      v26 = 36 * v13;
      v27 = v58;
      if (*v58 || *(v58 + 152) || *(v58 + 156))
      {
        v28 = v57;
        if (HIDWORD(v57) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1697;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v28 = v57;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50700, v28, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v27 = v58;
        if (*v58)
        {
          goto LABEL_36;
        }
      }

      if (*(v27 + 152) || *(v27 + 156))
      {
LABEL_36:
        v30 = v57;
        if (HIDWORD(v57) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1698;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v30 = v57;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50698, v30, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v31 = v52[v21];
      if (HIDWORD(v31))
      {
        v6 = v25;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v60 = "populateAvdWork";
          v61 = 1024;
          v62 = 1700;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v31 = v52[v21];
        }
      }

      else
      {
        v6 = v25;
      }

      *(v14 + 24) = v31;
      v32 = v53 + 1;
      *(v14 + 28) = (*(v16 - 1) >> v47) | (*(v46 + v53) >> v47 << 16);
      ++v19;
      *(v14 + 32) = ((*v16 - 1) >> v47) | ((*(v46 + v53 + 1) - 1) >> v47 << 16);
      v17 = v55;
      if (v6)
      {
        v17 = (v19 + v54) % v45;
      }

      v18 += 36;
      *(v14 + 8) = v17;
      v13 = 0x8E38E38E38E38E39 * (v20 >> 2);
      v3 = *(v51 + 35);
      v20 += 36;
      ++v16;
      v14 = v18;
      if (v19 >= v3)
      {
        v4 = *(v51 + 34);
        v11 = v43 + v19;
        v50 += v19;
        v14 = v18;
        v16 = v51 + 8243;
        v15 = v42;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v33 = 0;
LABEL_52:
    v34 = *(this + 33);
    v35 = v1;
    v36 = (v34 + 2 * v1 + 26);
    v37 = (v34 + 4 * v1 + 28);
    v38 = v1 + v8 - v1;
    do
    {
      *v36++ = v33;
      *v37++ = (v35 - v1) * v9 + 50680;
      ++v35;
      --v38;
    }

    while (v38);
    return 0;
  }
}

uint64_t CAHDecThymeAvx::allocWorkBuf_SPS(CAHDecThymeAvx *this, int *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 32);
  if (v6 >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315394;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1814;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v50, 0x12u);
  }

  v7 = *(this + 32);
  v8 = v7[9479];
  if (!v8 || (v9 = v7[9480]) == 0)
  {
    v8 = v5;
    v9 = v4;
  }

  v10 = v8 + 31;
  if (v8 < -31)
  {
    v10 = v8 + 62;
  }

  v11 = v10 >> 5;
  v12 = v9 + 31;
  if (v9 < -31)
  {
    v12 = v9 + 62;
  }

  v13 = v12 >> 5;
  v14 = 32 - __clz(v11 - 1);
  if (v11 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = ((32 << (v17 + v15)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v27 = 0;
LABEL_27:
    LOBYTE(v28) = 0;
    goto LABEL_28;
  }

  v19 = v8 << (v6 == 3);
  v20 = v19 + 31;
  v21 = v19 + 62;
  if (v20 >= 0)
  {
    v21 = v20;
  }

  v22 = v21 >> 5;
  if (v6 == 1)
  {
    ++v9;
  }

  v23 = v9 >> (v6 == 1);
  v25 = v23 + 15;
  v24 = v23 < -15;
  v26 = v23 + 30;
  if (!v24)
  {
    v26 = v25;
  }

  v27 = v26 >> 4;
  if (v22 <= 1)
  {
    goto LABEL_27;
  }

  v28 = 32 - __clz(v22 - 1);
LABEL_28:
  v29 = 32 - __clz(v27 - 1);
  if (v27 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = ((8 << (v30 + v28)) + 127) & 0xFFFFFF80;
  if (!v6)
  {
    v31 = 0;
  }

  *(this + 1040) = v18;
  *(this + 1041) = v31;
  *(this + 1045) = 9168;
  if (*(a2 + 14) == 64)
  {
    v32 = 6;
  }

  else
  {
    v32 = 7;
  }

  if (*(a2 + 14) == 64)
  {
    v33 = 96;
  }

  else
  {
    v33 = 384;
  }

  if (*(a2 + 14) == 64)
  {
    v34 = 8;
  }

  else
  {
    v34 = 10;
  }

  v35 = ((v5 + (1 << v32) - 1) >> v32) * ((v4 + (1 << v32) - 1) >> v32);
  *(this + 1047) = v35 * v33;
  *(this + 1046) = v35 << v34;
  if (v7[662])
  {
LABEL_51:
    v41 = 12944;
    v42 = 11;
    do
    {
      v43 = *(this + 1047);
      if (v43 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v41), v43, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_69;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 1916;
        v54 = 2080;
        v55 = "segMap";
        v48 = MEMORY[0x277D86220];
        goto LABEL_68;
      }

      v41 += 176;
      --v42;
    }

    while (v42);
    v44 = 8248;
    v45 = 11;
    while (1)
    {
      v46 = *(this + 1046);
      if (v46)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v44), v46, 7, 1, 0))
        {
          break;
        }
      }

      v44 += 176;
      if (!--v45)
      {
        return 0;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1922;
      v54 = 2080;
      v55 = "MvColo";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v36 = 5600;
  v37 = 15;
  while (1)
  {
    v38 = *(this + 1040);
    if (v38 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v36 - 2640), v38, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      v50 = 136315650;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = 1857;
      v54 = 2080;
      v55 = "HdrY";
      v48 = MEMORY[0x277D86220];
      goto LABEL_68;
    }

    v39 = *(this + 1041);
    v40 = *(this + 32);
    if (!v39)
    {
      *(v40 + v36) = 0;
      goto LABEL_50;
    }

    if (CAVDDecoder::allocAVDMem(v40, (v40 + v36), v39, 7, 1, 0))
    {
      break;
    }

LABEL_50:
    v36 += 176;
    if (!--v37)
    {
      goto LABEL_51;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 1862;
    v54 = 2080;
    v55 = "HdrC";
    v48 = MEMORY[0x277D86220];
LABEL_68:
    _os_log_impl(&dword_277606000, v48, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
  }

LABEL_69:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

void CAHDecThymeAvx::getPPSWorkBufSize(uint64_t this, unsigned __int8 *a2, char *a3)
{
  v120 = *MEMORY[0x277D85DE8];
  v99 = this;
  v3 = *(*(this + 256) + 37616);
  v109 = *(v3 + 2176);
  v4 = *(v3 + 2180);
  v115 = a2[32];
  v5 = *(v3 + 60);
  v107 = v5 == 15;
  if (v5 == 15)
  {
    v6 = 128;
  }

  else
  {
    v6 = 64;
  }

  v113 = v6;
  if (a2[33] <= a2[34])
  {
    v7 = a2[34];
  }

  else
  {
    v7 = a2[33];
  }

  v8 = (v7 + 9) & 0x1FE;
  v9 = *(v3 + 13932);
  v92 = v7;
  if (v9)
  {
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    goto LABEL_11;
  }

  this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (this)
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 1953;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
    v9 = *(v3 + 13932);
    if (v5 == 15)
    {
      v10 = 800;
    }

    else
    {
      v10 = 400;
    }

    if (v9)
    {
LABEL_11:
      v11 = 0;
      v12 = v9;
      v13 = *(v3 + 2624);
      v14 = (v3 + 2628);
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = (v16 - v13) * v10;
        if (v11 <= v17)
        {
          v11 = v17;
        }

        v13 = v15;
        --v12;
      }

      while (v12);
      v18 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v18 = 1;
LABEL_24:
  v91 = v11;
  v114 = v4;
  if (v115 == 3)
  {
    v19 = 48;
  }

  else
  {
    v19 = 32;
  }

  if (!v115)
  {
    v19 = 16;
  }

  v20 = *(v3 + 2172);
  if (*(v3 + 98))
  {
    v21 = v20 == 8;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  v100 = v3;
  v108 = (v7 + 9) & 0x1FE;
  v90 = v5;
  if (v18)
  {
    v106 = 0;
    v105 = 0;
    v104 = 0;
    *&v103 = 0;
  }

  else
  {
    v23 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v24 = 0;
    v96 = (v8 * v19) >> 3;
    if (v5 == 15)
    {
      v25 = 7;
    }

    else
    {
      v25 = 6;
    }

    v98 = *(v3 + 2172);
    v101 = v25;
    v26 = (v20 << v25) >> 3;
    if (!v22)
    {
      v26 = v113;
    }

    v94 = v26;
    v103 = 0u;
    do
    {
      v27 = v22;
      v28 = v9 - 1;
      v29 = v3 + 4 * v23;
      if (v23 == v28)
      {
        v30 = v109 - v24;
      }

      else
      {
        v30 = (*(v29 + 2628) - *(v29 + 2624)) << v101;
      }

      if (v30 > 4096)
      {
        this = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 136315394;
          v117 = "getPPSWorkBufSize";
          v118 = 1024;
          v119 = 1987;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
          v9 = *(v3 + 13932);
          v28 = v9 - 1;
        }
      }

      if (v30 >= -15)
      {
        v31 = v30 + 15;
      }

      else
      {
        v31 = v30 + 30;
      }

      v32 = v31 >> 4;
      v33 = v104;
      if (v104 <= ((v31 >> 4) * v96))
      {
        v33 = (v32 * v96);
      }

      v104 = v33;
      v34 = v23 + 1;
      v35 = *(v29 + 2628);
      v36 = *(v29 + 2624);
      v37 = *(*(*(v99 + 32) + 37616) + 2164);
      if (v37 <= v109)
      {
        v37 = v109;
      }

      v38 = v36 << v101;
      v22 = v27;
      if (v27)
      {
        v38 = ((v36 << v101) * v98) >> 3;
      }

      v39 = v38 + v94 + v94 * (v35 - v36);
      if (v37 < v39)
      {
        v39 = v37;
      }

      *(&v40 + 1) = *(&v103 + 1);
      *&v40 = vadd_s32((*&vmla_s32(0x7F0000007FLL, __PAIR64__(((v39 + 63) >> 6) - (v38 >> 6), (v35 - v36) << v107), 0xC0000002CLL) & 0xFFFFFF80FFFFFF80), *&v103);
      v103 = v40;
      this = CAHDecTansyAvx::calc_lf_above_pix_tile_size(this, v108, v115, v109, v107, v23 == 0, v23 == v28, v36, v35);
      v105 += this;
      v24 += v30;
      v41 = 4 * v32;
      v3 = v100;
      v42 = v106;
      if (v106 <= 4 * (v41 + (v31 >> 4)))
      {
        v42 = 4 * (v41 + (v31 >> 4));
      }

      v106 = v42;
      ++v23;
    }

    while (v34 < v9);
  }

  v43 = *(v3 + 13928);
  v97 = v43;
  if (!v43)
  {
    v64 = 0;
    v72 = 0;
    v95 = 0;
    v112 = 0;
    v69 = v114;
    goto LABEL_81;
  }

  v44 = v3 + 2884;
  v45 = *(v3 + 2884 + 4 * v43);
  v46 = *(v3 + 2884);
  v47 = 0uLL;
  v48 = (v3 + 2888);
  do
  {
    *v110 = v47;
    v50 = *v48++;
    v49 = v50;
    this = CAHDecTansyAvx::calc_lf_left_tile_size(this, 11, 7, v108, v115, v113, v46, v50, v114, v45);
    *(&v47 + 1) = *&v110[2];
    v51 = ((v114 + 63) >> 6) - (v46 << v107);
    v52 = (v50 - v46) << v107;
    if (v50 != v45)
    {
      v51 = v52;
    }

    *&v47 = vmax_s32(*v110, __PAIR64__(72 * v51, this));
    v46 = v49;
    --v43;
  }

  while (v43);
  v95 = *&vadd_s32(*&v47, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v53 = v97;
  v89 = v44;
  v54 = *(v44 + 4 * v97);
  v55 = 0;
  v102 = (v114 + 7) >> 6;
  v56 = *(v100 + 2884);
  v57 = 0uLL;
  v58 = (v100 + 2888);
  do
  {
    *v111 = v57;
    v60 = *v58++;
    v59 = v60;
    v61 = CAHDecTansyAvx::calc_lr_left_tile_size(this, 13, 12, v108, v115, v113, v56, v60, v114, v54);
    v62 = v61;
    this = CAHDecTansyAvx::calc_lr_left_tile_size(v61, 6, 6, v108, v115, v113, v56, v60, v114, v54);
    if (v60 == v54)
    {
      v57 = *v111;
      if (v55 > (24 * (v102 - (v56 << v107)) + 24))
      {
        goto LABEL_74;
      }

      v63 = 3 * (v102 + 1 - (v56 << v107));
    }

    else
    {
      v63 = 3 * ((v59 - v56) << v107);
      v57 = *v111;
      if (v55 > (24 * ((v59 - v56) << v107)))
      {
        goto LABEL_74;
      }
    }

    v55 = 8 * v63;
LABEL_74:
    *&v57 = vmax_s32(*&v57, __PAIR64__(this, v62));
    v56 = v59;
    --v53;
  }

  while (v53);
  v64 = (v55 + 127) & 0xFFFFFF80;
  v112 = *&vadd_s32(*&v57, 0x7F0000007FLL) & 0xFFFFFF80FFFFFF80;
  v65 = v97;
  v66 = *(v89 + 4 * v97);
  v67 = *(v100 + 2884);
  v68 = (v100 + 2888);
  v69 = v114;
  do
  {
    v71 = *v68++;
    v70 = v71;
    this = CAHDecTansyAvx::calc_az_left_tile_size(this, v115, v113, v22, v108, v67, v71, v114, v66);
    if (v53 <= this)
    {
      LODWORD(v53) = this;
    }

    v67 = v70;
    --v65;
  }

  while (v65);
  v72 = (v53 + 127) & 0xFFFFFF80;
  v3 = v100;
LABEL_81:
  v73 = *(*(v99 + 32) + 2644) != 1 || v92 == 0;
  if (v73 || (v115 != 1 ? (v74 = 32) : (v74 = 24), v115 ? (v75 = v74) : (v75 = 16), !CAHDecTansyAvx::isLfPadDis(v99) ? (v76 = 8) : (v76 = 0), v77 = v97, !v97))
  {
    v78 = 0;
    v84 = v106;
    v85 = v105;
    v86 = v104;
    v81 = v91;
  }

  else
  {
    v78 = 0;
    v79 = (v69 + v76 + 15) >> 4;
    v80 = (v97 - 1);
    v81 = v91;
    if (v90 == 15)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v83 = (v3 + 2888);
    v84 = v106;
    v85 = v105;
    v86 = v104;
    do
    {
      v87 = v79;
      if (v80)
      {
        v87 = *v83 << v82;
      }

      v88 = ((v87 - (*(v83 - 1) << v82)) * v75 + 133) & 0xFFFFFF80;
      if (v78 <= v88)
      {
        v78 = v88;
      }

      ++v83;
      --v80;
      --v77;
    }

    while (v77);
  }

  *a3 = v81;
  if (HIDWORD(v86) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2077;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 1) = v86;
  *(a3 + 2) = v85;
  *(a3 + 12) = v103;
  if (HIDWORD(v84) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v117 = "getPPSWorkBufSize";
    v118 = 1024;
    v119 = 2081;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
  }

  *(a3 + 5) = v84;
  *(a3 + 3) = v95;
  *(a3 + 4) = v112;
  *(a3 + 10) = v64;
  *(a3 + 11) = v72;
  *(a3 + 12) = v78;
}

uint64_t CAHDecThymeAvx::allocWorkBuf_PPS(CAHDecThymeAvx *this, void *a2, void *a3, int *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v7 = *(this + 32);
  v8 = *(v7 + 15112);
  if (v6 > v8[19809])
  {
    if (v6)
    {
      if (CAVDDecoder::allocAVDMem(v7, this + 106, v6, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315650;
          v37 = "allocWorkBuf_PPS";
          v38 = 1024;
          v39 = 2136;
          v40 = 2080;
          v41 = "OvpAboveInfo";
          v9 = MEMORY[0x277D86220];
LABEL_102:
          _os_log_impl(&dword_277606000, v9, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v36, 0x1Cu);
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      v10 = *a4;
      v7 = *(this + 32);
      v8 = *(v7 + 15112);
    }

    else
    {
      v10 = 0;
    }

    v8[19809] = v10;
  }

  v11 = a4[1];
  if (v11 <= v8[19810])
  {
LABEL_17:
    v13 = a4[2];
    if (v13 > v8[19811])
    {
      if (v13)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 128, v13, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2151;
            v40 = 2080;
            v41 = "LfAbovePixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v14 = a4[2];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v14 = 0;
      }

      v8[19811] = v14;
    }

    v15 = a4[3];
    if (v15 > v8[19812])
    {
      if (v15)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 139, v15, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2158;
            v40 = 2080;
            v41 = "LfAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v16 = a4[3];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v16 = 0;
      }

      v8[19812] = v16;
    }

    v17 = a4[4];
    if (v17 > v8[19813])
    {
      if (v17)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 183, v17, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2165;
            v40 = 2080;
            v41 = "RfAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v18 = a4[4];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v18 = 0;
      }

      v8[19813] = v18;
    }

    v19 = a4[5];
    if (v19 > v8[19814])
    {
      if (v19)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 249, v19, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2172;
            v40 = 2080;
            v41 = "MvAboveInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v20 = a4[5];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v20 = 0;
      }

      v8[19814] = v20;
    }

    v21 = a4[6];
    if (v21 > v8[19815])
    {
      if (v21)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 150, v21, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2179;
            v40 = 2080;
            v41 = "LfLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v22 = a4[6];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v22 = 0;
      }

      v8[19815] = v22;
    }

    v23 = a4[7];
    if (v23 > v8[19816])
    {
      if (v23)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 161, v23, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2186;
            v40 = 2080;
            v41 = "LfLeftInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v24 = a4[7];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v24 = 0;
      }

      v8[19816] = v24;
    }

    v25 = a4[8];
    if (v25 > v8[19817])
    {
      if (v25)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 172, v25, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2193;
            v40 = 2080;
            v41 = "SrLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v26 = a4[8];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v26 = 0;
      }

      v8[19817] = v26;
    }

    v27 = a4[9];
    if (v27 > v8[19818])
    {
      if (v27)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 194, v27, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2200;
            v40 = 2080;
            v41 = "RfLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v28 = a4[9];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v28 = 0;
      }

      v8[19818] = v28;
    }

    v29 = a4[10];
    if (v29 > v8[19819])
    {
      if (v29)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 205, v29, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2207;
            v40 = 2080;
            v41 = "RfLeftInfo";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v30 = a4[10];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v30 = 0;
      }

      v8[19819] = v30;
    }

    v31 = a4[11];
    if (v31 > v8[19820])
    {
      if (v31)
      {
        if (CAVDDecoder::allocAVDMem(v7, this + 238, v31, 7, 1, 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v36 = 136315650;
            v37 = "allocWorkBuf_PPS";
            v38 = 1024;
            v39 = 2214;
            v40 = 2080;
            v41 = "AzLeftPixel";
            v9 = MEMORY[0x277D86220];
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        v32 = a4[11];
        v7 = *(this + 32);
        v8 = *(v7 + 15112);
      }

      else
      {
        v32 = 0;
      }

      v8[19820] = v32;
    }

    v33 = a4[12];
    if (v33 <= v8[19821])
    {
      return 0;
    }

    if (v33)
    {
      if (CAVDDecoder::allocAVDMem(v7, this + 227, v33, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315650;
          v37 = "allocWorkBuf_PPS";
          v38 = 1024;
          v39 = 2221;
          v40 = 2080;
          v41 = "SWrLeftPixel";
          v9 = MEMORY[0x277D86220];
          goto LABEL_102;
        }

        goto LABEL_103;
      }

      v35 = a4[12];
      v8 = *(*(this + 32) + 15112);
    }

    else
    {
      v35 = 0;
    }

    result = 0;
    v8[19821] = v35;
    return result;
  }

  if (!v11)
  {
    v12 = 0;
LABEL_16:
    v8[19810] = v12;
    goto LABEL_17;
  }

  if (!CAVDDecoder::allocAVDMem(v7, this + 117, v11, 7, 1, 0))
  {
    v12 = a4[1];
    v7 = *(this + 32);
    v8 = *(v7 + 15112);
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v36 = 136315650;
    v37 = "allocWorkBuf_PPS";
    v38 = 1024;
    v39 = 2144;
    v40 = 2080;
    v41 = "IPAbovePixel";
    v9 = MEMORY[0x277D86220];
    goto LABEL_102;
  }

LABEL_103:
  (*(*this + 160))(this, a4);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeAvx::freeWorkBuf_SPS(CAHDecThymeAvx *this)
{
  if (!*(*(this + 32) + 2648))
  {
    v2 = 5600;
    v3 = 15;
    do
    {
      v4 = *(this + 32);
      v5 = (v4 + v2 - 2640);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(v4, v5);
        v6 = (*(this + 32) + v2 - 2640);
        *v6 = 0u;
        v6[1] = 0u;
        v6[2] = 0u;
        v6[3] = 0u;
        v6[4] = 0u;
        v6[5] = 0u;
        v6[6] = 0u;
        v6[7] = 0u;
        v6[8] = 0u;
        v6[9] = 0u;
        v6[10] = 0u;
        v4 = *(this + 32);
      }

      if (*(v4 + v2))
      {
        CAVDDecoder::deallocAVDMem(v4, (v4 + v2));
        v7 = (*(this + 32) + v2);
        *v7 = 0u;
        v7[1] = 0u;
        v7[2] = 0u;
        v7[3] = 0u;
        v7[4] = 0u;
        v7[5] = 0u;
        v7[6] = 0u;
        v7[7] = 0u;
        v7[8] = 0u;
        v7[9] = 0u;
        v7[10] = 0u;
      }

      v2 += 176;
      --v3;
    }

    while (v3);
  }

  v8 = 8248;
  v9 = 11;
  do
  {
    v10 = *(this + 32);
    if (*(v10 + v8))
    {
      CAVDDecoder::deallocAVDMem(v10, (v10 + v8));
      v11 = (*(this + 32) + v8);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      v11[4] = 0u;
      v11[5] = 0u;
      v11[6] = 0u;
      v11[7] = 0u;
      v11[8] = 0u;
      v11[9] = 0u;
      v11[10] = 0u;
    }

    v8 += 176;
    --v9;
  }

  while (v9);
  v12 = 12944;
  v13 = 11;
  do
  {
    result = *(this + 32);
    if (*(result + v12))
    {
      result = CAVDDecoder::deallocAVDMem(result, (result + v12));
      v15 = (*(this + 32) + v12);
      *v15 = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      v15[4] = 0u;
      v15[5] = 0u;
      v15[6] = 0u;
      v15[7] = 0u;
      v15[8] = 0u;
      v15[9] = 0u;
      v15[10] = 0u;
    }

    v12 += 176;
    --v13;
  }

  while (v13);
  return result;
}

double CAHDecThymeAvx::freeWorkBuf_PPS(CAHDecThymeAvx *this, _DWORD *a2)
{
  if (!a2 || (v4 = *(*(this + 32) + 15112), *a2 > v4[19809]))
  {
    if (*(this + 212))
    {
      v5 = (this + 1696);
      CAVDDecoder::deallocAVDMem(*(this + 32), this + 212);
      result = 0.0;
      *v5 = 0u;
      *(this + 107) = 0u;
      *(this + 108) = 0u;
      *(this + 109) = 0u;
      *(this + 110) = 0u;
      *(this + 111) = 0u;
      *(this + 112) = 0u;
      *(this + 113) = 0u;
      *(this + 114) = 0u;
      *(this + 115) = 0u;
      *(this + 116) = 0u;
    }

    if (!a2)
    {
      goto LABEL_8;
    }

    v4 = *(*(this + 32) + 15112);
  }

  if (a2[1] <= v4[19810])
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(this + 234))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 234);
    result = 0.0;
    *(this + 117) = 0u;
    *(this + 118) = 0u;
    *(this + 119) = 0u;
    *(this + 120) = 0u;
    *(this + 121) = 0u;
    *(this + 122) = 0u;
    *(this + 123) = 0u;
    *(this + 124) = 0u;
    *(this + 125) = 0u;
    *(this + 126) = 0u;
    *(this + 127) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_12:
    if (a2[2] <= v4[19811])
    {
      goto LABEL_17;
    }
  }

  if (*(this + 256))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 256);
    result = 0.0;
    *(this + 128) = 0u;
    *(this + 129) = 0u;
    *(this + 130) = 0u;
    *(this + 131) = 0u;
    *(this + 132) = 0u;
    *(this + 133) = 0u;
    *(this + 134) = 0u;
    *(this + 135) = 0u;
    *(this + 136) = 0u;
    *(this + 137) = 0u;
    *(this + 138) = 0u;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_17:
  if (a2[3] <= v4[19812])
  {
    goto LABEL_22;
  }

LABEL_18:
  if (*(this + 278))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 278);
    result = 0.0;
    *(this + 139) = 0u;
    *(this + 140) = 0u;
    *(this + 141) = 0u;
    *(this + 142) = 0u;
    *(this + 143) = 0u;
    *(this + 144) = 0u;
    *(this + 145) = 0u;
    *(this + 146) = 0u;
    *(this + 147) = 0u;
    *(this + 148) = 0u;
    *(this + 149) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_22:
    if (a2[4] <= v4[19813])
    {
      goto LABEL_27;
    }
  }

  if (*(this + 366))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 366);
    result = 0.0;
    *(this + 183) = 0u;
    *(this + 184) = 0u;
    *(this + 185) = 0u;
    *(this + 186) = 0u;
    *(this + 187) = 0u;
    *(this + 188) = 0u;
    *(this + 189) = 0u;
    *(this + 190) = 0u;
    *(this + 191) = 0u;
    *(this + 192) = 0u;
    *(this + 193) = 0u;
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_27:
  if (a2[5] <= v4[19814])
  {
    goto LABEL_32;
  }

LABEL_28:
  if (*(this + 498))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 498);
    result = 0.0;
    *(this + 249) = 0u;
    *(this + 250) = 0u;
    *(this + 251) = 0u;
    *(this + 252) = 0u;
    *(this + 253) = 0u;
    *(this + 254) = 0u;
    *(this + 255) = 0u;
    *(this + 256) = 0u;
    *(this + 257) = 0u;
    *(this + 258) = 0u;
    *(this + 259) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_32:
    if (a2[6] <= v4[19815])
    {
      goto LABEL_37;
    }
  }

  if (*(this + 300))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 300);
    result = 0.0;
    *(this + 150) = 0u;
    *(this + 151) = 0u;
    *(this + 152) = 0u;
    *(this + 153) = 0u;
    *(this + 154) = 0u;
    *(this + 155) = 0u;
    *(this + 156) = 0u;
    *(this + 157) = 0u;
    *(this + 158) = 0u;
    *(this + 159) = 0u;
    *(this + 160) = 0u;
  }

  if (!a2)
  {
    goto LABEL_38;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_37:
  if (a2[7] <= v4[19816])
  {
    goto LABEL_42;
  }

LABEL_38:
  if (*(this + 322))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 322);
    result = 0.0;
    *(this + 161) = 0u;
    *(this + 162) = 0u;
    *(this + 163) = 0u;
    *(this + 164) = 0u;
    *(this + 165) = 0u;
    *(this + 166) = 0u;
    *(this + 167) = 0u;
    *(this + 168) = 0u;
    *(this + 169) = 0u;
    *(this + 170) = 0u;
    *(this + 171) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_42:
    if (a2[8] <= v4[19817])
    {
      goto LABEL_47;
    }
  }

  if (*(this + 344))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 344);
    result = 0.0;
    *(this + 172) = 0u;
    *(this + 173) = 0u;
    *(this + 174) = 0u;
    *(this + 175) = 0u;
    *(this + 176) = 0u;
    *(this + 177) = 0u;
    *(this + 178) = 0u;
    *(this + 179) = 0u;
    *(this + 180) = 0u;
    *(this + 181) = 0u;
    *(this + 182) = 0u;
  }

  if (!a2)
  {
    goto LABEL_48;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_47:
  if (a2[9] <= v4[19818])
  {
    goto LABEL_52;
  }

LABEL_48:
  if (*(this + 388))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 388);
    result = 0.0;
    *(this + 194) = 0u;
    *(this + 195) = 0u;
    *(this + 196) = 0u;
    *(this + 197) = 0u;
    *(this + 198) = 0u;
    *(this + 199) = 0u;
    *(this + 200) = 0u;
    *(this + 201) = 0u;
    *(this + 202) = 0u;
    *(this + 203) = 0u;
    *(this + 204) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_52:
    if (a2[10] <= v4[19819])
    {
      goto LABEL_57;
    }
  }

  if (*(this + 410))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 410);
    result = 0.0;
    *(this + 205) = 0u;
    *(this + 206) = 0u;
    *(this + 207) = 0u;
    *(this + 208) = 0u;
    *(this + 209) = 0u;
    *(this + 210) = 0u;
    *(this + 211) = 0u;
    *(this + 212) = 0u;
    *(this + 213) = 0u;
    *(this + 214) = 0u;
    *(this + 215) = 0u;
  }

  if (!a2)
  {
    goto LABEL_58;
  }

  v4 = *(*(this + 32) + 15112);
LABEL_57:
  if (a2[11] <= v4[19820])
  {
    goto LABEL_62;
  }

LABEL_58:
  if (*(this + 476))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 476);
    result = 0.0;
    *(this + 238) = 0u;
    *(this + 239) = 0u;
    *(this + 240) = 0u;
    *(this + 241) = 0u;
    *(this + 242) = 0u;
    *(this + 243) = 0u;
    *(this + 244) = 0u;
    *(this + 245) = 0u;
    *(this + 246) = 0u;
    *(this + 247) = 0u;
    *(this + 248) = 0u;
  }

  if (a2)
  {
    v4 = *(*(this + 32) + 15112);
LABEL_62:
    if (a2[12] <= v4[19821])
    {
      return result;
    }
  }

  if (*(this + 454))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 454);
    result = 0.0;
    *(this + 227) = 0u;
    *(this + 228) = 0u;
    *(this + 229) = 0u;
    *(this + 230) = 0u;
    *(this + 231) = 0u;
    *(this + 232) = 0u;
    *(this + 233) = 0u;
    *(this + 234) = 0u;
    *(this + 235) = 0u;
    *(this + 236) = 0u;
    *(this + 237) = 0u;
  }

  return result;
}

uint64_t CAHDecThymeAvx::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 4176) = a2;
  return this;
}

uint64_t InLoopChromaFilterInterchangeFormat(unsigned __int8 *a1, unsigned __int8 *a2, int a3, int a4, int a5, int a6, unsigned __int8 *a7)
{
  v12 = (a3 + 31) & 0xFFFFFFFFFFFFFFE0;
  LODWORD(v13) = a4 >> 1;
  v14 = ((a4 >> 1) + 15) & 0xFFFFFFF0;
  FilterFunctionInit();
  InLoopChromaRows(a1, a3, a4, a5, a6);
  v15 = a3;
  if (a4 >= 2)
  {
    v16 = a5;
    v13 = v13;
    v17 = a7;
    do
    {
      --v13;
      memcpy(v17, a1, a3);
      v17 += v12;
      a1 += v16;
    }

    while (v13);
  }

  if (v14)
  {
    v18 = v12 - a3;
    v19 = v14;
    v20 = &a7[v15];
    do
    {
      --v19;
      memset(v20, 128, v18);
      v20 += v12;
    }

    while (v19);
    interchange_tile_sb_filter_tiled_test = interchange_tile_sb_neon;
    if (v14 >= 1)
    {
      v21 = 0;
      v32 = 16 * v12;
      do
      {
        v22 = v14;
        if (v12 >= 1)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = 0;
            v26 = &a7[v23];
            v35 = v24;
            v27 = &a2[512 * v24];
            do
            {
              v28 = 0;
              v29 = 1;
              do
              {
                interchange_tile_sb_filter_tiled_test(v27, &v26[v28], v12, 2);
                v27 += 64;
                if ((v29 & 1) == 0)
                {
                  break;
                }

                v29 = 0;
                v30 = v28 + v23 + 16;
                v28 = 16;
              }

              while (v12 > v30);
              if (v25 > 0xB)
              {
                break;
              }

              v26 += 4 * v12;
              v25 += 4;
            }

            while ((v25 | v21) < v22);
            v23 += 32;
            v24 = v35 + 1;
          }

          while (v35 + 1 != ((v12 - 1) >> 5) + 1);
        }

        a2 += v32;
        a7 += v32;
        v14 = v22;
        v21 += 16;
      }

      while (v21 < v22);
    }
  }

  else
  {
    interchange_tile_sb_filter_tiled_test = interchange_tile_sb_neon;
  }

  return 0;
}

uint64_t InLoopChromaFilter(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _DWORD *a7, uint64_t a8, unsigned int a9)
{
  v12 = a1;
  LODWORD(v13) = a4 >> 1;
  v14 = a3 + 19;
  if (a3 < -19)
  {
    v14 = a3 + 34;
  }

  v15 = v14 >> 4;
  v16 = v14 >> 4;
  v17 = 16 * v15;
  v18 = v13 + 9;
  v19 = v13 + 16;
  if (v13 < -9)
  {
    v18 = v13 + 16;
  }

  v20 = v18 & 0xFFFFFFF8;
  v21 = a8 + 32 * v16 + 4;
  InLoopChromaRows(a1, a3, a4, a5, a6);
  v22 = a3;
  if (a4 >= 2)
  {
    v23 = a5;
    v13 = v13;
    v24 = v21;
    do
    {
      --v13;
      memcpy(v24, v12, a3);
      v24 += v17;
      v12 += v23;
    }

    while (v13);
  }

  if (v19 >= 0xF)
  {
    v25 = v17 - a3;
    v26 = v20;
    v27 = (v21 + v22);
    do
    {
      --v26;
      memset(v27, 128, v25);
      v27 += v17;
    }

    while (v26);
  }

  v28 = 0;
  v29 = 0;
  v57 = a8;
  v58 = 0;
  v55 = v17;
  v56 = 0;
  v53 = v17;
  v54 = 0;
  v30 = &v58;
  v31 = &v56;
  v32 = &v54;
  v51 = v20;
  v52 = 0;
  v33 = &v52;
  v34 = 1;
  while (1)
  {
    v35 = v34;
    if (v28)
    {
      v36 = *v30;
      if (*v30)
      {
        v46 = *v33;
        if (v46 >= 1)
        {
          break;
        }
      }
    }

LABEL_21:
    v34 = 0;
    v30 = &v57;
    v31 = &v55;
    v32 = &v53;
    v33 = &v51;
    v28 = a2;
    v29 = 1;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = 0;
  v38 = 0;
  v39 = *v31;
  v40 = *v32;
  v45 = v34;
  while (1)
  {
    v49 = v37;
    if (v40 >= 1)
    {
      break;
    }

LABEL_20:
    v37 = v49 + 8;
    ++v38;
    v36 += 8 * v39;
    v35 = v45;
    if (v49 + 8 >= v46)
    {
      goto LABEL_21;
    }
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    result = 0xFFFFFFFFLL;
    v44 = *(*&a7[2 * v29 + 6] + *&a7[2 * v29 + 2] * (v38 >> *a7) + (4 * (v42 << *a7)) + 4 * (v38 & ~(-1 << *a7))) & 0xFFFFFFF;
    if (v44 + 128 > a9)
    {
      return result;
    }

    TileRow_filter_tiled_test(v28 + v44, v36 + v41, v39, 1);
    v41 += 16;
    ++v42;
    if (v41 >= v40)
    {
      goto LABEL_20;
    }
  }
}

uint64_t RVRAInLoopChromaFilter(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _DWORD *a7, uint64_t a8, unsigned int a9)
{
  FilterFunctionInit();
  DetileRow_filter_tiled_test = DetileRow_neon;
  TileRow_filter_tiled_test = TileRow_neon;

  return InLoopChromaFilter(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t createCactusLghDecoder(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "createCactusLghDecoder";
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): Cactus AVD is not supported in this AppleAVD driver!!!", &v2, 0xCu);
  }

  return 0;
}

CAHDecLotusLgh *createLotusLghDecoder(CAVDLghDecoder *a1)
{
  v2 = operator new(0xC48uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecLotusLgh::CAHDecLotusLgh(v2, a1);
  }

  return v3;
}

void CAHDecLotusLgh::CAHDecLotusLgh(CAHDecLotusLgh *this, CAVDLghDecoder *a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288666D38;
  *(v4 + 256) = a2;
  *(v4 + 456) = 150180;
  *(v4 + 8) = 676;
  *(v4 + 16) = xmmword_27775C520;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(a2 + 4448) = 0;
  bzero(a2 + 12032, 0xB00uLL);
  *(a2 + 372) = 0u;
  bzero((*(this + 32) + 14848), 0xB00uLL);
  bzero(this + 464, 0x4D0uLL);
  bzero((*(this + 32) + 5248), 0x2C0uLL);
  bzero(this + 1696, 0x580uLL);
  for (i = 2960; i != 3664; i += 176)
  {
    v6 = (*(this + 32) + i);
    v6[9] = 0uLL;
    v6[10] = 0uLL;
    v6[7] = 0uLL;
    v6[8] = 0uLL;
    v6[5] = 0uLL;
    v6[6] = 0uLL;
    v6[3] = 0uLL;
    v6[4] = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    *v6 = 0uLL;
  }

  do
  {
    v7 = (*(this + 32) + i);
    v7[9] = 0uLL;
    v7[10] = 0uLL;
    v7[7] = 0uLL;
    v7[8] = 0uLL;
    v7[5] = 0uLL;
    v7[6] = 0uLL;
    v7[3] = 0uLL;
    v7[4] = 0uLL;
    v7[1] = 0uLL;
    v7[2] = 0uLL;
    *v7 = 0uLL;
    i += 176;
  }

  while (i != 5072);
  v8 = *(this + 32);
  v8[327] = 0u;
  v8[326] = 0u;
  v8[325] = 0u;
  v8[324] = 0u;
  v8[323] = 0u;
  v8[322] = 0u;
  v8[321] = 0u;
  v8[320] = 0u;
  v8[319] = 0u;
  v8[318] = 0u;
  v8[317] = 0u;
}

void CAHDecLotusLgh::~CAHDecLotusLgh(CAHDecLotusLgh *this)
{
  *this = &unk_288666D38;
  CAHDecLotusLgh::freeWorkBuf_SPS(this);
  v2 = *(this + 32);
  for (i = 2960; i != 3664; i += 176)
  {
    if (*(v2 + i))
    {
      CAVDDecoder::deallocAVDMem(v2, (v2 + i));
      v2 = *(this + 32);
      *(v2 + i) = 0;
    }
  }

  if (*(v2 + 5072))
  {
    CAVDDecoder::deallocAVDMem(v2, (v2 + 5072));
    *(*(this + 32) + 5072) = 0;
  }

  (*(*this + 160))(this, 0);
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecLotusLgh::~CAHDecLotusLgh(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecLotusLgh::init(CAHDecLotusLgh *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 0;
      v14 = 1024;
      LODWORD(v15) = v3;
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n";
      v6 = 24;
LABEL_13:
      _os_log_impl(&dword_277606000, v4, OS_LOG_TYPE_DEFAULT, v5, &v10, v6);
    }
  }

  else
  {
    v7 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v7;
    *(this + 34) = v7;
    for (i = 2960; i != 3664; i += 176)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + i), 1913, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          return 301;
        }

        v10 = 136315650;
        v11 = "init";
        v12 = 1024;
        v13 = 207;
        v14 = 2080;
        v15 = "probBuf";
        v4 = MEMORY[0x277D86220];
        v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
        goto LABEL_12;
      }
    }

    result = CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + 5072), 12284, 7, 1, 0);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "init";
      v12 = 1024;
      v13 = 209;
      v14 = 2080;
      v15 = "stateBuf";
      v4 = MEMORY[0x277D86220];
      v5 = "AppleAVD: ERROR: %s() Line %d: Error allocating %s";
LABEL_12:
      v6 = 28;
      goto LABEL_13;
    }
  }

  return 301;
}

uint64_t CAHDecLotusLgh::DecodePicture(CAHDecLotusLgh *this, int a2)
{
  if (CAHDecViolaLgh::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  CAHDecViolaLgh::populateTiles(this);
  (*(*this + 96))(this, 0);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecLotusLgh::updateCommonRegisters(CAHDecLotusLgh *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecLotusLgh::populateSequenceRegisters(CAHDecLotusLgh *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 17800);
  *(v1 + 40) = 0;
  v3 = *(v2 + 108) - 1;
  *(v1 + 40) = v3;
  *(v1 + 40) = (v3 | (*(v2 + 112) << 16)) - 0x10000;
  *(v1 + 44) = 0;
  v4 = *(v2 + 304);
  if (v4 >= 3)
  {
    v5 = 6528;
  }

  else
  {
    v5 = (v4 << 7) | 0x1800;
  }

  *(v1 + 44) = v5;
  v6 = v5 | ((*(v2 + 105) & 0xF ^ 8) << 15);
  *(v1 + 44) = v6;
  v7 = v6 | ((*(v2 + 105) & 0xF ^ 8) << 19) | 0x1000000;
  *(v1 + 44) = v7;
  if (*(v2 + 304) == 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  *(v1 + 44) = v8;
  return 0;
}

uint64_t CAHDecLotusLgh::populatePictureRegisters(CAHDecLotusLgh *this)
{
  v253 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 17800);
  if (*(v4 + 37))
  {
    v5 = *(v4 + 40) != 0;
  }

  else
  {
    v5 = 1;
  }

  v242 = *(v2 + 11988);
  v6 = *(v4 + 100);
  v238 = *(v4 + 96);
  v237 = 1 << v6;
  v7 = *(v2 + 2675);
  v8 = *(v2 + 2674);
  if (v5)
  {
    v9 = 766517248;
  }

  else
  {
    v9 = 766509056;
  }

  *(v3 + 48) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v3 + 48) = v10;
  if (*(*(this + 32) + 2644) == 1)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 & 0xFFFFFFF0 | (4 * (v7 & 3)) | v8 & 3 | v10 | 0x2E0;
  *(v3 + 48) = v12;
  v13 = *(this + 32);
  v14 = v12 | ((v13[2652] & 1) << 19);
  *(v3 + 48) = v14;
  v15 = v14 | ((v13[2653] & 1) << 18);
  *(v3 + 48) = v15;
  *(v3 + 48) = v15 | ((v13[2654] & 1) << 17);
  *(v3 + 52) = 0x2000000;
  LOWORD(v15) = *(v4 + 108) - 1;
  *(v3 + 56) = v15;
  *(v3 + 56) = (v15 | (*(v4 + 112) << 16)) - 0x10000;
  *(v3 + 60) = 0;
  v16 = *(*(*(this + 32) + 17800) + 2688) & 7;
  *(v3 + 64) = v16;
  v17 = v16 & 0xFFFFFFF7 | (8 * (*(*(*(this + 32) + 17800) + 2692) & 1));
  *(v3 + 64) = v17;
  v18 = v17 & 0xFFFFFF8F | (16 * (*(*(*(this + 32) + 17800) + 2696) & 7));
  *(v3 + 64) = v18;
  v19 = v18 & 0xFFFFFF7F | ((*(*(*(this + 32) + 17800) + 2700) & 1) << 7);
  *(v3 + 64) = v19;
  v20 = v19 & 0xFFFFF8FF | ((*(*(*(this + 32) + 17800) + 2704) & 7) << 8);
  *(v3 + 64) = v20;
  v21 = v20 & 0xFFFFF7FF | ((*(*(*(this + 32) + 17800) + 2708) & 1) << 11);
  *(v3 + 64) = v21;
  v22 = v21 & 0xFFFFCFFF | ((*(*(*(this + 32) + 17800) + 2712) & 3) << 12);
  *(v3 + 64) = v22;
  v23 = v22 & 0xFFFFBFFF | ((*(*(*(this + 32) + 17800) + 2716) & 1) << 14);
  *(v3 + 64) = v23;
  v24 = v23 & 0xFFFF7FFF | ((*(*(*(this + 32) + 17800) + 2720) & 1) << 15);
  *(v3 + 64) = v24;
  v25 = v24 & 0xFFF8FFFF | ((*(*(*(this + 32) + 17800) + 2724) & 7) << 16);
  *(v3 + 64) = v25;
  v26 = v25 & 0xFFF7FFFF | ((*(*(*(this + 32) + 17800) + 2728) & 1) << 19);
  *(v3 + 64) = v26;
  v27 = v26 & 0xFFEFFFFF | ((*(*(*(this + 32) + 17800) + 2732) & 1) << 20);
  *(v3 + 64) = v27;
  v28 = v27 & 0xFFDFFFFF | ((*(*(*(this + 32) + 17800) + 2736) & 1) << 21);
  *(v3 + 64) = v28;
  v29 = v28 & 0xFFBFFFFF | ((*(*(*(this + 32) + 17800) + 2740) & 1) << 22);
  *(v3 + 64) = v29;
  v30 = v29 & 0xFF7FFFFF | ((*(*(*(this + 32) + 17800) + 2744) & 1) << 23);
  *(v3 + 64) = v30;
  v31 = v30 & 0xFEFFFFFF | ((*(*(*(this + 32) + 17800) + 2748) & 1) << 24);
  *(v3 + 64) = v31;
  v32 = v31 & 0xFDFFFFFF | ((*(*(*(this + 32) + 17800) + 2752) & 1) << 25);
  *(v3 + 64) = v32;
  *(v3 + 64) = v32 & 0xFBFFFFFF | ((*(*(*(this + 32) + 17800) + 2756) & 1) << 26);
  *(v3 + 68) = 0;
  if (*(v4 + 60))
  {
    v33 = *(v4 + 69) & 0x7F;
    *(v3 + 68) = v33;
    v34 = v33 & 0xFFFFC07F | ((*(v4 + 68) & 0x7F) << 7);
    *(v3 + 68) = v34;
    v35 = v34 & 0xFFE03FFF | ((*(v4 + 67) & 0x7F) << 14);
    *(v3 + 68) = v35;
    v36 = v35 & 0xF01FFFFF | ((*(v4 + 66) & 0x7F) << 21);
    *(v3 + 68) = v36;
    *(v3 + 68) = v36 & 0x8FFFFFFF | ((*(v4 + 59) & 7) << 28);
    v37 = *(v4 + 73) & 0x7F;
    *(v3 + 72) = v37;
    v38 = v37 & 0xFFFFC07F | ((*(v4 + 72) & 0x7F) << 7);
    *(v3 + 72) = v38;
    v39 = v38 & 0xFFF03FFF | ((*(v4 + 58) & 0x3F) << 14);
  }

  else
  {
    *(v3 + 68) = (*(v4 + 59) & 7) << 28;
    v39 = (*(v4 + 58) & 0x3F) << 14;
  }

  v40 = 0;
  v239 = 1 << v238;
  v236 = v6;
  v235 = 1 << v238 << v6;
  *(v3 + 72) = v39;
  *(v3 + 76) = 0;
  v41 = *(v4 + 77) & 0x1F;
  *(v3 + 76) = v41;
  v42 = v41 & 0xFFFFFC1F | (32 * (*(v4 + 76) & 0x1F));
  *(v3 + 76) = v42;
  v43 = v42 & 0xFFFF83FF | ((*(v4 + 75) & 0x1F) << 10);
  *(v3 + 76) = v43;
  *(v3 + 76) = v43 | (*(v4 + 74) << 15);
  v44 = v3 + 80;
  v45 = (v4 + 208);
  v46 = (v4 + 242);
  do
  {
    v47 = *(v4 + 78);
    *(v44 + 4 * v40) = 0;
    if (v47)
    {
      v48 = *v45 != 0;
      *(v44 + 4 * v40) = v48;
      v49 = v48 | (8 * (*(v45 - 1) != 0));
    }

    else
    {
      v49 = 0;
    }

    *(v44 + 4 * v40) = v49;
    v50 = v49 & 0xFFFFFFF9 | (2 * (*v46 & 3));
    *(v44 + 4 * v40) = v50;
    if (v47)
    {
      if (*(v45 - 2))
      {
        *(v44 + 4 * v40) = v50 | 0x800;
        v51 = v50 & 0xFFFFF00F | 0x800 | (16 * (*(v46 - 1) & 0x7F));
      }

      else
      {
        v51 = v50 & 0xFFFFF00F;
      }

      *(v44 + 4 * v40) = v51;
      if (*(v45 - 3))
      {
        v52 = v51 | 0x200000;
        *(v44 + 4 * v40) = v52;
        v53 = (*(v46 - 2) & 0x1FF) << 12;
        goto LABEL_25;
      }
    }

    else
    {
      v51 = v50 & 0xFFFFF00F;
    }

    v53 = 0;
    v52 = v51 & 0xFFDFFFFF;
LABEL_25:
    *(v44 + 4 * v40++) = v52 & 0xFFE00FFF | v53;
    v45 += 4;
    v46 += 4;
  }

  while (v40 != 8);
  *(v3 + 152) = 0x20000;
  v240 = v5;
  if (v5)
  {
    v241 = 8;
  }

  else
  {
    v54 = (v3 + 112);
    v55 = 2208;
    v241 = 3;
    v56 = MEMORY[0x277D86220];
    do
    {
      v54[11] = 0x1000000;
      *v54 = 0;
      v57 = **(*(this + 32) + 8 * v55) - 1;
      *v54 = v57;
      *v54 = (v57 | (*(*(*(this + 32) + 8 * v55) + 4) << 16)) - 0x10000;
      v54[3] = 0;
      v58 = ((**(*(this + 32) + 8 * v55) << 14) / *(v4 + 108));
      v54[3] = v58;
      v59 = v58 | (((*(*(*(this + 32) + 8 * v55) + 4) << 14) / *(v4 + 112)) << 16);
      v54[3] = v59;
      if ((v58 - 1024) >= 0x7C01 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = 548;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
        v59 = v54[3];
      }

      if ((v59 - 0x4000000) >= 0x7C010000 && os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = 549;
        _os_log_impl(&dword_277606000, v56, OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", buf, 0x12u);
      }

      ++v55;
      ++v54;
    }

    while (v55 != 2211);
  }

  if ((~*(v3 + 48) & 0xC0000) != 0)
  {
    v65 = *(v4 + 2672);
    *(v3 + 144) = v65;
    *(v3 + 144) = v65 | (*(v4 + 2676) << 16);
    v66 = *(v4 + 2680);
    *(v3 + 148) = v66;
    v64 = v66 | (*(v4 + 2684) << 16);
    goto LABEL_41;
  }

  v60 = *(this + 32);
  v61 = v60[664];
  if (!v61 || !v60[665])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v163 = v60[665];
      *buf = 136315650;
      *&buf[4] = "populatePictureRegisters";
      *&buf[12] = 1024;
      *&buf[14] = v61;
      *&buf[18] = 1024;
      *&buf[20] = v163;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): invalid stat crop width/height %d/%d", buf, 0x18u);
    }

    return 0xFFFFFFFFLL;
  }

  v62 = v60[666];
  *(v3 + 144) = v62;
  *(v3 + 144) = v62 | (v60[667] << 16);
  v63 = v60[666] + v60[664] - 1;
  *(v3 + 148) = v63;
  v64 = (v63 | ((v60[665] + *(v60 + 1334)) << 16)) - 0x10000;
LABEL_41:
  *(v3 + 148) = v64;
  v67 = this + 464;
  for (i = 168; i != 196; i += 4)
  {
    *(*(this + 33) + i) = 0;
    v69 = *(this + 33);
    v70 = *(v69 + i);
    *(v69 + i) = 0;
    *(*(this + 33) + i) ^= 0xFFFFFFu;
    v71 = *(this + 33);
    v72 = *(v71 + i);
    *(v71 + i) = v70;
    if (*v67 || *(v67 + 38) || *(v67 + 39))
    {
      result = CAHDec::addToPatcherList(this, v67, i, 0, 0xFFFFFFFFLL, 8, v72, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + i + 28) = 0;
    *(*(this + 33) + i + 28) = *(*(this + 33) + i + 28) & 0x800001FF | (((*(this + 780) >> 9) & 0x3FFFFF) << 9);
    v67 += 176;
  }

  *(*(this + 33) + 228) = 0;
  if ((*(v3 + 50) & 8) != 0)
  {
    v74 = *(this + 33);
    v75 = *(*(this + 32) + 2680);
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v244 = 0u;
    memset(buf, 0, sizeof(buf));
    v76 = *(v74 + 16);
    *buf = v75;
    v77 = *(v74 + 228);
    *(v74 + 228) = 0;
    *(*(this + 33) + 228) ^= 0xFFFFFFu;
    v78 = *(this + 33);
    v79 = *(v78 + 228);
    *(v78 + 228) = v77;
    if (v75)
    {
      result = CAHDec::addToPatcherList(this, buf, 228, (v76 & 0xF) << 9, 0xFFFFFFFFLL, 8, v79, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 224) = 0;
  v80 = *(this + 33);
  v81 = *(v80 + 224);
  *(v80 + 224) = 0;
  *(*(this + 33) + 224) ^= 0xFFFFFFu;
  v82 = *(this + 33);
  v83 = *(v82 + 224);
  *(v82 + 224) = v81;
  v84 = *(this + 32);
  if (*(v84 + 5072) || *(v84 + 5224) || *(v84 + 5228))
  {
    result = CAHDec::addToPatcherList(this, (v84 + 5072), 224, 0, 0xFFFFFFFFLL, 8, v83, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 280) = 0;
  v85 = *(this + 33);
  v86 = *(v85 + 280);
  *(v85 + 280) = 0;
  *(*(this + 33) + 280) ^= 0xFFFFFFu;
  v87 = *(this + 33);
  v88 = *(v87 + 280);
  *(v87 + 280) = v86;
  if (*(this + 278) || *(this + 594) || *(this + 595))
  {
    result = CAHDec::addToPatcherList(this, this + 278, 280, 0, 0xFFFFFFFFLL, 8, v88, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v89 = *(this + 33);
  v90 = *(v89 + 232);
  *(v89 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFFu;
  v91 = *(this + 33);
  v92 = *(v91 + 232);
  *(v91 + 232) = v90;
  if (*(this + 234) || *(this + 506) || *(this + 507))
  {
    result = CAHDec::addToPatcherList(this, this + 234, 232, 0, 0xFFFFFFFFLL, 8, v92, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v93 = *(this + 33);
  v94 = *(v93 + 236);
  *(v93 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFFu;
  v95 = *(this + 33);
  v96 = *(v95 + 236);
  *(v95 + 236) = v94;
  if (*(this + 256) || *(this + 550) || *(this + 551))
  {
    result = CAHDec::addToPatcherList(this, this + 256, 236, 0, 0xFFFFFFFFLL, 8, v96, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  *(*(this + 33) + 244) = 0;
  v97 = *(this + 33);
  v98 = *(v97 + 244);
  *(v97 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFFu;
  v99 = *(this + 33);
  v100 = *(v99 + 244);
  *(v99 + 244) = v98;
  if (*(this + 300) || *(this + 638) || *(this + 639))
  {
    result = CAHDec::addToPatcherList(this, this + 300, 244, 0, 0xFFFFFFFFLL, 8, v100, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 248) = 0;
  v101 = *(this + 33);
  v102 = *(v101 + 248);
  *(v101 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFFu;
  v103 = *(this + 33);
  v104 = *(v103 + 248);
  *(v103 + 248) = v102;
  if (*(this + 322) || *(this + 682) || *(this + 683))
  {
    result = CAHDec::addToPatcherList(this, this + 322, 248, 0, 0xFFFFFFFFLL, 8, v104, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v105 = *(this + 33);
  v106 = *(v105 + 252);
  *(v105 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFFu;
  v107 = *(this + 33);
  v108 = *(v107 + 252);
  *(v107 + 252) = v106;
  if (*(this + 344) || *(this + 726) || *(this + 727))
  {
    result = CAHDec::addToPatcherList(this, this + 344, 252, 0, 0xFFFFFFFFLL, 8, v108, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v109 = *(this + 33);
  v110 = *(v109 + 256);
  *(v109 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFFu;
  v111 = *(this + 33);
  v112 = *(v111 + 256);
  *(v111 + 256) = v110;
  if (*(this + 366) || *(this + 770) || *(this + 771))
  {
    result = CAHDec::addToPatcherList(this, this + 366, 256, 0, 0xFFFFFFFFLL, 8, v112, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v113 = *(this + 33);
  v114 = *(v113 + 260);
  *(v113 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFFu;
  v115 = *(this + 33);
  v116 = *(v115 + 260);
  *(v115 + 260) = v114;
  v117 = (*(this + 32) + 176 * *(*(this + 32) + 17808) + 2960);
  if (*v117 || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3112) || *(*(this + 32) + 176 * *(*(this + 32) + 17808) + 3116))
  {
    result = CAHDec::addToPatcherList(this, v117, 260, 0, 0xFFFFFFFFLL, 8, v116, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = *(*(this + 33) + 267) << 24;
  v118 = *(this + 33);
  v119 = *(v118 + 264);
  *(v118 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFFu;
  v120 = *(this + 33);
  v121 = *(v120 + 264);
  *(v120 + 264) = v119;
  v122 = (*(this + 32) + 176 * *(*(this + 32) + 5964) + 3664);
  if (*v122 || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5964) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v122, 264, 0, 0xFFFFFFFFLL, 8, v121, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = *(*(this + 33) + 271) << 24;
  v123 = *(this + 33);
  v124 = *(v123 + 268);
  *(v123 + 268) = 0;
  *(*(this + 33) + 268) ^= 0xFFFFFFu;
  v125 = *(this + 33);
  v126 = *(v125 + 268);
  *(v125 + 268) = v124;
  v127 = (*(this + 32) + 176 * *(*(this + 32) + 5960) + 3664);
  if (*v127 || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3816) || *(*(this + 32) + 176 * *(*(this + 32) + 5960) + 3820))
  {
    result = CAHDec::addToPatcherList(this, v127, 268, 0, 0xFFFFFFFFLL, 8, v126, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  v128 = *(this + 33);
  v129 = *(v128 + 272);
  *(v128 + 272) = 0;
  *(*(this + 33) + 272) ^= 0xFFFFFFu;
  v130 = *(this + 33);
  v131 = *(v130 + 272);
  *(v130 + 272) = v129;
  v132 = (*(this + 32) + 176 * *(*(this + 32) + 5956) + 5248);
  if (*v132 || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5956) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v132, 272, 0, 0xFFFFFFFFLL, 8, v131, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 276) = 0;
  v133 = *(this + 33);
  v134 = *(v133 + 276);
  *(v133 + 276) = 0;
  *(*(this + 33) + 276) ^= 0xFFFFFFu;
  v135 = *(this + 33);
  v136 = *(v135 + 276);
  *(v135 + 276) = v134;
  v137 = (*(this + 32) + 176 * *(*(this + 32) + 5952) + 5248);
  if (*v137 || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5400) || *(*(this + 32) + 176 * *(*(this + 32) + 5952) + 5404))
  {
    result = CAHDec::addToPatcherList(this, v137, 276, 0, 0xFFFFFFFFLL, 8, v136, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 288) = 0;
  *(*(this + 33) + 292) = 0;
  *(*(this + 33) + 296) = 0;
  v138 = *(this + 33);
  v139 = *(v138 + 288);
  *(v138 + 288) = 0;
  *(*(this + 33) + 288) ^= 0x1FFFFFFu;
  v140 = *(this + 33);
  v141 = *(v140 + 288);
  *(v140 + 288) = v139;
  v142 = *(*(this + 32) + 376 * v242 + 5976);
  if (*v142 || *(v142 + 152) || *(v142 + 156))
  {
    result = CAHDec::addToPatcherList(this, v142, 288, *(v142 + 52), 0xFFFFFFFFLL, 7, v141, 4);
    if (result)
    {
      return result;
    }
  }

  v143 = *(this + 33);
  v144 = *(v143 + 296);
  *(v143 + 296) = 0;
  *(*(this + 33) + 296) ^= 0x1FFFFFFu;
  v145 = *(this + 33);
  v146 = *(v145 + 296);
  *(v145 + 296) = v144;
  v147 = *(this + 32);
  v148 = *(v147 + 376 * v242 + 5976);
  if (!*v148 && !*(v148 + 152) && !*(v148 + 156))
  {
LABEL_111:
    v149 = *(v147 + 2648);
    v150 = *(this + 33);
    v151 = *(v150 + 284);
    *(v150 + 284) = 0;
    *(*(this + 33) + 284) ^= 0x1FFFFFFu;
    v152 = *(this + 33);
    v153 = *(v152 + 284);
    *(v152 + 284) = v151;
    v154 = *(this + 32) + 5968;
    if (v149 == 1)
    {
      v155 = *(v154 + 376 * v242 + 8);
      if (*v155 || *(v155 + 152) || *(v155 + 156))
      {
        result = CAHDec::addToPatcherList(this, v155, 284, *(v155 + 64), 0xFFFFFFFFLL, 7, v153, 4);
        if (result)
        {
          return result;
        }
      }

      v156 = *(this + 33);
      v157 = *(v156 + 292);
      *(v156 + 292) = 0;
      *(*(this + 33) + 292) ^= 0x1FFFFFFu;
      v158 = *(this + 33);
      v159 = *(v158 + 292);
      *(v158 + 292) = v157;
      v160 = *(*(this + 32) + 376 * v242 + 5976);
      if (!*v160 && !*(v160 + 152) && !*(v160 + 156))
      {
        goto LABEL_133;
      }

      v161 = *(v160 + 68);
      v162 = this;
    }

    else
    {
      v164 = v154 + 376 * v242;
      v166 = *(v164 + 24);
      v165 = v164 + 24;
      if (v166 || *(v165 + 152) || *(v165 + 156))
      {
        result = CAHDec::addToPatcherList(this, v165, 284, 0, 0xFFFFFFFFLL, 7, v153, 4);
        if (result)
        {
          return result;
        }
      }

      v167 = *(this + 33);
      v168 = *(v167 + 292);
      *(v167 + 292) = 0;
      *(*(this + 33) + 292) ^= 0x1FFFFFFu;
      v169 = *(this + 33);
      v159 = *(v169 + 292);
      *(v169 + 292) = v168;
      v160 = *(this + 32) + 376 * v242 + 6168;
      if (!*v160 && !*(*(this + 32) + 376 * v242 + 6320) && !*(*(this + 32) + 376 * v242 + 6324))
      {
        goto LABEL_133;
      }

      v162 = this;
      v161 = 0;
    }

    result = CAHDec::addToPatcherList(v162, v160, 292, v161, 0xFFFFFFFFLL, 7, v159, 4);
    if (result)
    {
      return result;
    }

LABEL_133:
    if (v240)
    {
LABEL_134:
      v170 = subWidth[*(*(*(this + 32) + 17800) + 4)];
      *(*(this + 33) + 360) = 0;
      *(*(this + 33) + 364) = 0;
      *(*(this + 33) + 368) = 0;
      *(*(this + 33) + 372) = 0;
      if (!*(*(this + 32) + 2644))
      {
LABEL_186:
        if (v235 < 2)
        {
          v223 = *(this + 33);
          *(v223 + 376) = 65537;
          *(v223 + 380) = 0;
          *(v223 + 382) = *(v4 + 108) >> 6;
          *(v223 + 510) = 0;
          *(v223 + 512) = *(v4 + 112) >> 6;
          v224 = *(this + 32);
        }

        else
        {
          v223 = *(this + 33);
          *(v223 + 376) = v239;
          v224 = *(this + 32);
          if (v236 != 31)
          {
            if (v237 <= 1)
            {
              v225 = 1;
            }

            else
            {
              v225 = v237;
            }

            v226 = (*(v224 + 17800) + 2786);
            do
            {
              if ((*v226 & 1) == 0)
              {
                *(v223 + 510 + 2 * v241) = *(v226 - 26) >> 3;
              }

              v226 += 1792;
              --v225;
            }

            while (v225);
          }

          *(v223 + 378) = v237;
          if (v238 != 31)
          {
            if (v239 <= 1)
            {
              v227 = 1;
            }

            else
            {
              v227 = v239;
            }

            v228 = *(v224 + 17800) + 2768;
            do
            {
              if ((*(v228 + 18) & 1) == 0)
              {
                *(v223 + 380 + 2 * v241) = *v228 >> 3;
              }

              v228 += 28;
              --v227;
            }

            while (v227);
          }
        }

        if (*(v224 + 2360) != 1)
        {
          return 0;
        }

        *(v223 + 524) = *(v223 + 524) & 0xFFFFFFFE | *(v224 + 2508) & 1;
        if (*(v224 + 2508))
        {
          *(v223 + 532) = 0x10000000;
          *(v223 + 536) = *(v224 + 2368);
          *(v223 + 544) = 0;
          *(v223 + 540) = 0;
          *(v223 + 552) = *(v224 + 2372);
          v229 = *(v224 + 2404);
          *(v223 + 568) = *(v224 + 2388);
          *(v223 + 584) = v229;
        }

        *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFFD | (2 * (*(v224 + 2512) & 1));
        if (*(v224 + 2512))
        {
          *(v223 + 600) = 0;
          v230 = *(v224 + 2424);
          *(v223 + 600) = (*(v224 + 2424) & 1) << 22;
          v231 = ((*(v224 + 2420) & 1) << 23) | ((v230 & 1) << 22) | 0x20000000;
          *(v223 + 600) = v231;
          if (!*(v224 + 2364))
          {
            ++v231;
          }

          *(v223 + 600) = v231;
          v232 = *(v224 + 2428);
          v233 = *(v224 + 2460);
          *(v223 + 620) = *(v224 + 2444);
          *(v223 + 636) = v233;
          *(v223 + 604) = v232;
        }

        *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFFB | (4 * (*(v224 + 2516) & 1));
        *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFF7 | (8 * (*(v224 + 2520) & 1));
        *(*(this + 33) + 524) = *(*(this + 33) + 524) & 0xFFFFFFEF | (16 * (*(v224 + 2524) & 1));
        *(v223 + 656) = 0;
        v234 = *(v224 + 2476) == 2 ? 805306368 : 813694976;
        *(v223 + 656) = v234;
        memcpy((v223 + 660), (v224 + 2480), 4 * *(v224 + 2476));
        if (!*(v224 + 2516))
        {
          return 0;
        }

        result = 0;
        *(v224 + 2516) = 0;
        return result;
      }

      v171 = *(this + 33);
      v172 = *(v171 + 360);
      *(v171 + 360) = 0;
      *(*(this + 33) + 360) ^= 0xFFFFFFu;
      v173 = *(this + 33);
      v174 = *(v173 + 360);
      *(v173 + 360) = v172;
      v175 = *(*(this + 32) + 12008);
      if (*v175 || *(v175 + 152) || *(v175 + 156))
      {
        result = CAHDec::addToPatcherList(this, v175, 360, *(v175 + 52), 0xFFFFFFFFLL, 8, v174, 4);
        if (result)
        {
          return result;
        }
      }

      v176 = *(this + 33);
      v177 = *(v176 + 364);
      *(v176 + 364) = 0;
      *(*(this + 33) + 364) ^= 0xFFFFFFu;
      v178 = *(this + 33);
      v179 = *(v178 + 364);
      *(v178 + 364) = v177;
      v180 = *(*(this + 32) + 12008);
      if (*v180 || *(v180 + 152) || *(v180 + 156))
      {
        result = CAHDec::addToPatcherList(this, v180, 364, *(v180 + 56), 0xFFFFFFFFLL, 8, v179, 4);
        if (result)
        {
          return result;
        }
      }

      v181 = *(this + 33);
      v182 = *(v181 + 368);
      *(v181 + 368) = 0;
      *(*(this + 33) + 368) ^= 0xC0000000;
      v183 = *(this + 33);
      v184 = *(v183 + 368);
      *(v183 + 368) = v182;
      v185 = *(*(this + 32) + 12008);
      if (*v185 || *(v185 + 152) || *(v185 + 156))
      {
        result = CAHDec::addToPatcherList(this, v185, 368, *(v185 + 52), 192, 6, v184, 4);
        if (result)
        {
          return result;
        }
      }

      v186 = *(this + 33);
      v187 = *(v186 + 372);
      *(v186 + 372) = 0;
      *(*(this + 33) + 372) ^= 0xC0000000;
      v188 = *(this + 33);
      v189 = *(v188 + 372);
      *(v188 + 372) = v187;
      v190 = *(this + 32);
      v191 = *(v190 + 12008);
      if (*v191 || *(v191 + 152) || *(v191 + 156))
      {
        result = CAHDec::addToPatcherList(this, v191, 372, *(v191 + 56), 192, 6, v189, 4);
        if (result)
        {
          return result;
        }

        v190 = *(this + 32);
      }

      if (*(v190 + 8) == 1)
      {
        *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFFC003 | (4 * ((*(*(v190 + 12008) + 76) >> 6) & 0xFFF));
        v192 = (*(*(this + 32) + 12008) + 80);
LABEL_185:
        *(*(this + 33) + 372) = *(*(this + 33) + 372) & 0xFFFF8003 | (4 * ((*v192 >> 6) & 0x1FFF));
        goto LABEL_186;
      }

      if (!CAHDecTansyLgh::getSWRStride(this, *(v3 + 148) + 1, *(v4 + 105) - 8, *(v4 + 105) - 8, v170))
      {
        *(*(this + 33) + 368) = *(*(this + 33) + 368) & 0xFFFFC003 | (4 * ((*(this + 783) >> 6) & 0xFFF));
        v192 = (this + 3136);
        goto LABEL_185;
      }

      return 0xFFFFFFFFLL;
    }

    v193 = 0;
    v194 = 17664;
    while (1)
    {
      v195 = *(*(*(this + 32) + v194) + 40);
      *(*(this + 33) + v193 + 312) = 0;
      *(*(this + 33) + v193 + 324) = 0;
      *(*(this + 33) + v193 + 336) = 0;
      *(*(this + 33) + v193 + 348) = 0;
      v196 = *(this + 33) + v193;
      v197 = *(v196 + 324);
      *(v196 + 324) = 0;
      *(*(this + 33) + v193 + 324) ^= 0x1FFFFFFu;
      v198 = *(this + 33) + v193;
      v199 = *(v198 + 324);
      *(v198 + 324) = v197;
      v200 = *(v195 + 8);
      if (*v200 || *(v200 + 152) || *(v200 + 156))
      {
        result = CAHDec::addToPatcherList(this, v200, v193 + 324, *(v200 + 52), 0xFFFFFFFFLL, 7, v199, 4);
        if (result)
        {
          return result;
        }
      }

      v201 = *(this + 33) + v193;
      v202 = *(v201 + 348);
      *(v201 + 348) = 0;
      *(*(this + 33) + v193 + 348) ^= 0x1FFFFFFu;
      v203 = *(this + 33) + v193;
      v204 = *(v203 + 348);
      *(v203 + 348) = v202;
      v205 = *(v195 + 8);
      if (*v205 || *(v205 + 152) || *(v205 + 156))
      {
        result = CAHDec::addToPatcherList(this, v205, v193 + 348, *(v205 + 56), 0xFFFFFFFFLL, 7, v204, 4);
        if (result)
        {
          return result;
        }
      }

      v206 = *(*(this + 32) + 2648);
      v207 = *(this + 33) + v193;
      v208 = *(v207 + 312);
      *(v207 + 312) = 0;
      *(*(this + 33) + v193 + 312) ^= 0x1FFFFFFu;
      v209 = *(this + 33) + v193;
      v210 = *(v209 + 312);
      *(v209 + 312) = v208;
      if (v206 == 1)
      {
        v211 = *(v195 + 8);
        if (*v211 || *(v211 + 152) || *(v211 + 156))
        {
          result = CAHDec::addToPatcherList(this, v211, v193 + 312, *(v211 + 64), 0xFFFFFFFFLL, 7, v210, 4);
          if (result)
          {
            return result;
          }
        }

        v212 = *(this + 33) + v193;
        v213 = *(v212 + 336);
        *(v212 + 336) = 0;
        *(*(this + 33) + v193 + 336) ^= 0x1FFFFFFu;
        v214 = *(this + 33) + v193;
        v215 = *(v214 + 336);
        *(v214 + 336) = v213;
        v216 = *(v195 + 8);
        if (*v216 || *(v216 + 152) || *(v216 + 156))
        {
          v217 = *(v216 + 68);
          v218 = v193 | 0x150;
          v219 = this;
          goto LABEL_180;
        }
      }

      else
      {
        if (*(v195 + 24) || *(v195 + 176) || *(v195 + 180))
        {
          result = CAHDec::addToPatcherList(this, (v195 + 24), v193 + 312, 0, 0xFFFFFFFFLL, 7, v210, 4);
          if (result)
          {
            return result;
          }
        }

        v220 = *(this + 33) + v193;
        v221 = *(v220 + 336);
        *(v220 + 336) = 0;
        *(*(this + 33) + v193 + 336) ^= 0x1FFFFFFu;
        v222 = *(this + 33) + v193;
        v215 = *(v222 + 336);
        *(v222 + 336) = v221;
        v216 = v195 + 200;
        if (*(v195 + 200) || *(v195 + 352) || *(v195 + 356))
        {
          v218 = v193 | 0x150;
          v219 = this;
          v217 = 0;
LABEL_180:
          result = CAHDec::addToPatcherList(v219, v216, v218, v217, 0xFFFFFFFFLL, 7, v215, 4);
          if (result)
          {
            return result;
          }
        }
      }

      v194 += 8;
      v193 += 4;
      if (v193 == 12)
      {
        goto LABEL_134;
      }
    }
  }

  result = CAHDec::addToPatcherList(this, v148, 296, *(v148 + 56), 0xFFFFFFFFLL, 7, v146, 4);
  if (!result)
  {
    v147 = *(this + 32);
    goto LABEL_111;
  }

  return result;
}

uint64_t CAHDecLotusLgh::populateAvdWork(CAHDecLotusLgh *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v42 = 0;
  v3 = *(v1 + 17800);
  v38 = *(v3 + 16);
  v43 = 0;
  v4 = *(v3 + 312);
  if (!v4)
  {
    LOWORD(v7) = 0;
    goto LABEL_34;
  }

  v39 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = v2 + 2724;
  v9 = *(v3 + 316);
  v10 = 2786;
  v11 = v9;
  v37 = v8;
  while (1)
  {
    v36 = v10;
    if (v11)
    {
      break;
    }

LABEL_31:
    v10 = v36 + 1792;
    if (++v39 >= v4)
    {
      v2 = *(this + 33);
LABEL_34:
      result = 0;
      *(v2 + 26) = v7;
      *(v2 + 32) = 2724;
      return result;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = *(this + 32);
    v14 = *(v13 + 17800);
    v15 = v14 + v10;
    if (*(v14 + v10))
    {
      goto LABEL_30;
    }

    *(v8 + 4) = v7;
    *(v8 + 6) = 0;
    *(v8 + 10) = v5;
    if (!CAVDAvxDecoder::GetTileMemInfo(v13, v38 + *(v15 - 6), &v43, &v42))
    {
      return 0xFFFFFFFFLL;
    }

    v16 = v43;
    if (*v43 || *(v43 + 152) || *(v43 + 156))
    {
      v40 = v5;
      v17 = v7;
      v18 = v3;
      v19 = v42;
      if (HIDWORD(v42) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v45 = "populateAvdWork";
        v46 = 1024;
        v47 = 1067;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v19 = v42;
      }

      result = CAHDec::addToPatcherList(this, v16, 36 * v6 + 2744, v19, 0xFFFFFFFFLL, 0, -1, 4);
      v3 = v18;
      v7 = v17;
      v5 = v40;
      if (result)
      {
        return result;
      }
    }

    v21 = v14 + v10;
    v22 = *(v15 - 26);
    v23 = v22 + 7;
    if (v22 >= 0)
    {
      v23 = *(v15 - 26);
    }

    v24 = *(v21 - 18);
    *(v8 + 24) = *(v21 - 10);
    *(v8 + 28) = (v23 << 13) & 0xFFFF0000 | (v24 / 8);
    v25 = *(v21 - 22);
    v27 = v25 - 1;
    v26 = v25 < 1;
    v28 = v25 + 6;
    if (!v26)
    {
      v28 = v27;
    }

    v29 = (v28 << 13) & 0xFFFF0000;
    v30 = *(v21 - 14);
    v31 = v30 - 1;
    v26 = v30 < 1;
    v32 = v30 + 6;
    if (!v26)
    {
      v32 = v31;
    }

    *(v8 + 32) = v29 | (v32 >> 3);
    if (v22 + v24)
    {
      v33 = 4;
    }

    else
    {
      v33 = 5;
    }

    *(v8 + 12) = v33;
    v4 = *(v3 + 312);
    v9 = *(v3 + 316);
    if (v12 == v9 && v39 == v4)
    {
      v35 = 5;
    }

    else
    {
      v35 = 4;
    }

    *(v8 + 14) = v35;
    ++v5;
    ++v7;
    v8 += 36;
    v6 = 0x8E38E38E38E38E39 * ((v8 - v37) >> 2);
LABEL_30:
    ++v12;
    v10 += 28;
    v11 = v9;
    if (v12 >= v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t CAHDecLotusLgh::allocWorkBuf_SPS(CAHDecLotusLgh *this, int *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = a2[1];
  v5 = *a2 + 31;
  if (*a2 < -31)
  {
    v5 = *a2 + 62;
  }

  v6 = v5 >> 5;
  v7 = v3 + 31;
  if (v3 < -31)
  {
    v7 = v3 + 62;
  }

  v8 = v7 >> 5;
  v9 = 32 - __clz(v6 - 1);
  if (v6 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = 32 - __clz(v8 - 1);
  if (v8 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = ((32 << (v12 + v10)) + 127) & 0xFFFFFF80;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315394;
    v34 = "get_pic_width_mem_tile";
    v35 = 1024;
    v36 = 1175;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v33, 0x12u);
  }

  v14 = 2 * v4 + 62;
  if (2 * v4 >= -31)
  {
    v14 = 2 * v4 + 31;
  }

  v15 = v14 >> 5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315394;
    v34 = "get_pic_height_mem_tile";
    v35 = 1024;
    v36 = 1192;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v33, 0x12u);
  }

  v16 = v3 + 15;
  if (v3 < -15)
  {
    v16 = v3 + 30;
  }

  v17 = v16 >> 4;
  v18 = 32 - __clz(v15 - 1);
  if (v15 < 2)
  {
    LOBYTE(v18) = 0;
  }

  v19 = 32 - __clz(v17 - 1);
  if (v17 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(this + 776) = v13;
  *(this + 777) = ((8 << (v18 + v20)) + 127) & 0xFFFFFF80;
  v21 = ((v3 + 63) >> 6) * ((v4 + 63) >> 6);
  *(this + 781) = 576 * v21;
  if (*(*(this + 32) + 2648))
  {
LABEL_31:
    v26 = 5248;
    v27 = 4;
    do
    {
      v28 = *(this + 781);
      if (v28 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v26), v28, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v33 = 136315650;
        v34 = "allocWorkBuf_SPS";
        v35 = 1024;
        v36 = 1296;
        v37 = 2080;
        v38 = "MvColo";
        v31 = MEMORY[0x277D86220];
        goto LABEL_49;
      }

      v26 += 176;
      --v27;
    }

    while (v27);
    v29 = 24 * v21;
    *(this + 785) = 24 * v21;
    v30 = 3664;
    if (!v29)
    {
      goto LABEL_37;
    }

LABEL_36:
    if (!CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v30), v29, 7, 1, 0))
    {
LABEL_37:
      while (v30 != 4896)
      {
        v29 = *(this + 785);
        v30 += 176;
        if (v29)
        {
          goto LABEL_36;
        }
      }

      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v33 = 136315650;
    v34 = "allocWorkBuf_SPS";
    v35 = 1024;
    v36 = 1301;
    v37 = 2080;
    v38 = "segMap";
    v31 = MEMORY[0x277D86220];
  }

  else
  {
    v22 = 14848;
    v23 = 16;
    while (1)
    {
      v24 = *(this + 776);
      if (v24 && CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v22 - 2816), v24, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v33 = 136315650;
        v34 = "allocWorkBuf_SPS";
        v35 = 1024;
        v36 = 1280;
        v37 = 2080;
        v38 = "HdrY";
        v31 = MEMORY[0x277D86220];
        goto LABEL_49;
      }

      v25 = *(this + 777);
      if (v25)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), (*(this + 32) + v22), v25, 7, 1, 0))
        {
          break;
        }
      }

      v22 += 176;
      if (!--v23)
      {
        goto LABEL_31;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v33 = 136315650;
    v34 = "allocWorkBuf_SPS";
    v35 = 1024;
    v36 = 1285;
    v37 = 2080;
    v38 = "HdrC";
    v31 = MEMORY[0x277D86220];
  }

LABEL_49:
  _os_log_impl(&dword_277606000, v31, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v33, 0x1Cu);
LABEL_50:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecLotusLgh::allocWorkBuf_PPS(CAHDecLotusLgh *this, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(this + 32);
  v6 = *(v5 + 17800);
  v7 = *(v6 + 4);
  v8 = *(v6 + 100);
  v9 = (*(v6 + 105) + 1) & 0x1FE;
  if (v7 == 3)
  {
    v10 = 48;
  }

  else
  {
    v10 = 32;
  }

  if (!v7)
  {
    v10 = 16;
  }

  v12 = *(v6 + 108);
  v11 = *(v6 + 112);
  v13 = (v12 + 15) >> 4;
  v14 = ~(-1 << *(v6 + 96));
  v15 = v13 * ((v10 * v9) >> 3) + (v14 << 7);
  if (v15)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 117, v15, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1375;
        v27 = 2080;
        v28 = "IpAbove";
        v16 = MEMORY[0x277D86220];
LABEL_34:
        _os_log_impl(&dword_277606000, v16, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v23, 0x1Cu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v17 = 16 * v9;
  if ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 != 192)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 128, ((192 << v8) + ((v12 + 7) >> 3) * 16 * v9 - 192), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1378;
        v27 = 2080;
        v28 = "LfAbovePix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

LABEL_35:
      (*(*this + 160))(this, 0);
      return 0xFFFFFFFFLL;
    }

    v5 = *(this + 32);
  }

  v18 = 288 * ((v12 + 63) >> 6) + (v14 << 7);
  if (v18)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 139, v18, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1384;
        v27 = 2080;
        v28 = "LfAboveInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v19 = (v11 + 7) >> 3;
  if (v19 * v17)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 150, (v19 * v17), 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1390;
        v27 = 2080;
        v28 = "LfLeftPix";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  v20 = ((v11 + 63) >> 2) & 0x3FFFFFF0;
  if (v20)
  {
    if (CAVDDecoder::allocAVDMem(v5, this + 161, v20, 7, 1, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "allocWorkBuf_PPS";
        v25 = 1024;
        v26 = 1398;
        v27 = 2080;
        v28 = "LfLeftInfo";
        v16 = MEMORY[0x277D86220];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v5 = *(this + 32);
  }

  if (CAVDDecoder::allocAVDMem(v5, this + 172, (24 * v13 + 30), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "allocWorkBuf_PPS";
      v25 = 1024;
      v26 = 1406;
      v27 = 2080;
      v28 = "SwLeftPix";
      v16 = MEMORY[0x277D86220];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v22 = 192 * v9 + (v19 + 2) * (((v9 >> 1) << 8) | 8);
  if (!v22)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 183, v22, 7, 1, 0);
  if (result)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = 136315650;
    v24 = "allocWorkBuf_PPS";
    v25 = 1024;
    v26 = 1412;
    v27 = 2080;
    v28 = "AZLeftPix";
    v16 = MEMORY[0x277D86220];
    goto LABEL_34;
  }

  return result;
}

uint64_t CAHDecLotusLgh::freeWorkBuf_SPS(CAHDecLotusLgh *this)
{
  result = *(this + 32);
  if (!*(result + 2648))
  {
    v3 = 14848;
    v4 = 16;
    do
    {
      v5 = (result + v3 - 2816);
      if (*v5)
      {
        CAVDDecoder::deallocAVDMem(result, v5);
        result = *(this + 32);
        *(result + v3 - 2816) = 0;
      }

      if (*(result + v3))
      {
        CAVDDecoder::deallocAVDMem(result, (result + v3));
        result = *(this + 32);
        *(result + v3) = 0;
      }

      v3 += 176;
      --v4;
    }

    while (v4);
  }

  v6 = 5248;
  v7 = 4;
  do
  {
    if (*(result + v6))
    {
      CAVDDecoder::deallocAVDMem(result, (result + v6));
      result = *(this + 32);
      *(result + v6) = 0;
    }

    v6 += 176;
    --v7;
  }

  while (v7);
  for (i = 3664; i != 5072; i += 176)
  {
    if (*(result + i))
    {
      CAVDDecoder::deallocAVDMem(result, (result + i));
      result = *(this + 32);
      *(result + i) = 0;
    }
  }

  return result;
}

uint64_t *CAHDecLotusLgh::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[256])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 256);
    v2[256] = 0;
  }

  if (v2[278])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 278);
    v2[278] = 0;
  }

  if (v2[234])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 234);
    v2[234] = 0;
  }

  if (v2[300])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 300);
    v2[300] = 0;
  }

  if (v2[322])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 322);
    v2[322] = 0;
  }

  if (v2[344])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 344);
    v2[344] = 0;
  }

  if (v2[366])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 366);
    v2[366] = 0;
  }

  return this;
}

uint64_t CAHDecLotusLgh::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 620);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 3120) = a2;
  return this;
}

uint64_t InLoopChromaRows(uint64_t result, int a2, int a3, int a4, int a5)
{
  v20 = result;
  v5 = a5 - 15;
  if ((a5 - 15) >= 0x24)
  {
    v5 = 36;
  }

  v6 = (a2 >> 1);
  if (a5 <= 15)
  {
    v5 = 0;
  }

  v7 = kTable_8_11_tc[v5];
  if (kTable_8_11_tc[v5])
  {
    v8 = v6 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = (a3 >> 1);
    v11 = kTable_8_11_beta[v5];
    v12 = a4;
    v13 = v10;
    v14 = 4 * a4;
    v15 = result + v14;
    v18 = v10;
    v19 = (a2 >> 1);
    do
    {
      if ((v9 | 4) < v6)
      {
        result = InLoopChromaV(v20 + 2 * (v9 | 4), v12, v11, v7, v10);
      }

      v9 += 8;
      if (v9 < v6)
      {
        result = InLoopChromaV(v20 + 2 * v9, v12, v11, v7, v10);
      }

      if (v10 >= 5)
      {
        v16 = v15;
        v17 = 4;
        do
        {
          result = InLoopChromaH(v16, v12, v11, v7, 8);
          v17 += 4;
          v16 += v14;
        }

        while (v17 < v13);
      }

      v15 += 16;
      v10 = v18;
      v6 = v19;
    }

    while (v9 < v19);
  }

  return result;
}

uint64_t FilterFunctionInit()
{
  InLoopChromaH = InLoopChromaH_neon;
  InLoopChromaV = InLoopChromaV_neon;
  return 0;
}

uint64_t InLoopChromaV_neon(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    v6 = vdupq_n_s16(a3);
    v188 = vshrq_n_s16(v6, 3uLL);
    v189 = vdupq_n_s16(a4);
    v187 = vshrq_n_s16(vsraq_n_s16(v6, v6, 1uLL), 3uLL);
    v7 = (result - 8);
    v184 = v6;
    do
    {
      v8 = *(v7 + a2);
      v9 = *(v7 + 2 * a2);
      v10 = *(v7 + 3 * a2);
      v11 = *(v7 + 4 * a2);
      v12 = *(v7 + 5 * a2);
      v13 = *(v7 + 6 * a2);
      v14 = *(v7 + 7 * a2);
      v15 = vtrn1q_s8(*v7, v8);
      v16 = vtrn1q_s8(v9, v10);
      v17 = vtrn1q_s8(v11, v12);
      v18 = vtrn1q_s8(v13, v14);
      v19 = vtrn1q_s16(v15, v16);
      v20 = vtrn2q_s16(v15, v16);
      v21 = vtrn1q_s16(v17, v18);
      v22 = vtrn2q_s16(v17, v18);
      v23 = vtrn1q_s32(v19, v21);
      v24 = vtrn2q_s32(v19, v21);
      v25 = vtrn1q_s32(v20, v22);
      v26 = vtrn2q_s32(v20, v22);
      v27 = vextq_s8(v23, v23, 8uLL).u64[0];
      v28 = vextq_s8(v25, v25, 8uLL).u64[0];
      v29 = vextq_s8(v24, v24, 8uLL).u64[0];
      v30 = vaddl_u8(*v25.i8, *v26.i8);
      v31 = vshll_n_u8(*v24.i8, 1uLL);
      v32 = vabdq_u16(v31, v30);
      v33 = vaddl_high_u8(v24, v23);
      v34 = vshll_high_n_u8(v25, 1uLL);
      v35 = vabdq_u16(v34, v33);
      v36 = vabaq_u16(vrev64q_s16(v32), v31, v30);
      v37 = vabaq_u16(vrev64q_s16(v35), v34, v33);
      *v38.i8 = vdup_lane_s16(*v36.i8, 0);
      v38.u64[1] = vdup_laneq_s16(v36, 4);
      *v40.i8 = vdup_lane_s16(*v37.i8, 0);
      v39 = vextq_s8(v26, v26, 8uLL).u64[0];
      v40.u64[1] = vdup_laneq_s16(v37, 4);
      v41 = vcgtq_s16(v6, vaddq_s16(v40, v38));
      v42 = vrshrq_n_s16(v6, 3uLL);
      if (vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL)).u16[0])
      {
        v43 = vmovl_u8(*v24.i8);
        v44 = vmovl_u8(*v26.i8);
        v45 = vmovl_high_u8(v25);
        v46 = vmovl_high_u8(v23);
        v47 = vandq_s8(v189, v41);
        v48 = vandq_s8(vcgtq_s16(vrhaddq_s16(v47, vshlq_n_s16(v47, 2uLL)), vabdl_u8(*v26.i8, v27)), vandq_s8(vcgtq_s16(v42, vaddq_s16(v35, v32)), vcgtq_s16(v188, vabal_u8(vabdl_u8(v39, v27), *v23.i8, *v26.i8))));
        v49 = vandq_s8(vrev64q_s16(v48), v48);
        *v50.i8 = vdup_lane_s16(*v49.i8, 0);
        v50.u64[1] = vdup_laneq_s16(v49, 4);
        v51 = vorr_s8(*v49.i8, *&vextq_s8(v49, v49, 8uLL)).u16[0];
        v52 = vcgtq_s16(v187, v40);
        v53 = vcgtq_s16(v187, v38);
        v54 = vbicq_s8(v47, v50);
        v55 = vsubl_u8(v28, *v24.i8);
        v185 = vrhadd_u8(*v25.i8, *v26.i8);
        v56 = vrhadd_u8(v29, v27);
        if (v51)
        {
          v57 = vmovn_s16(v47);
          v180 = v44;
          v182 = v42;
          v58 = v29;
          v59 = vadd_s8(v57, v57);
          v60 = vaddl_u8(*v25.i8, *v24.i8);
          v178 = v56;
          v61 = v39;
          v62 = vaddl_u8(*v26.i8, v27);
          v179 = v46;
          v63 = vaddl_high_u8(v25, v24);
          v64 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v62, v43), vhadd_u8(*v25.i8, v28)), 2uLL), vqadd_u8(*v26.i8, v59)), vqsub_u8(*v26.i8, v59));
          v65 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v62, v45), vhadd_u8(v58, *v24.i8)), 2uLL), vqadd_u8(v27, v59)), vqsub_u8(v27, v59));
          v66 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v60, v62), 2uLL), vqadd_u8(*v24.i8, v59)), vqsub_u8(*v24.i8, v59));
          v67 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v63, v62), 2uLL), vqadd_u8(v28, v59)), vqsub_u8(v28, v59));
          v68 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(*v23.i8, *v25.i8), vhaddq_u16(v60, v62)), 2uLL), vqadd_u8(*v25.i8, v59)), vqsub_u8(*v25.i8, v59));
          *v60.i8 = vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_high_u8(v24, v26), vhaddq_u16(v63, v62)), 2uLL), vqadd_u8(v58, v59));
          v39 = v61;
          v69 = vmax_u8(*v60.i8, vqsub_u8(v58, v59));
          v42 = v182;
          v70 = vsubl_u8(v27, *v26.i8);
          v71.i64[0] = 0x9000900090009;
          v71.i64[1] = 0x9000900090009;
          v72 = vmulq_s16(v70, v71);
          v71.i64[0] = 0x2000200020002;
          v71.i64[1] = 0x2000200020002;
          v73 = vrshrq_n_s16(vmlaq_s16(v72, v55, v71), 4uLL);
          v71.i64[0] = 0xA000A000A000ALL;
          v71.i64[1] = 0xA000A000A000ALL;
          v74 = vcgtq_s16(vmulq_s16(v54, v71), vabsq_s16(v73));
          v75 = vandq_s8(v74, v53);
          v76 = vandq_s8(v74, v52);
          v77 = vmaxq_s16(vminq_s16(vandq_s8(v73, v74), v54), vnegq_s16(v54));
          v78 = vshrq_n_s16(v54, 1uLL);
          v26 = vnegq_s16(v78);
          v79 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v185, *v24.i8), v77), v78), v26), v75), v43);
          v24 = vsubl_u8(v178, v28);
          v80 = vaddq_s16(v77, v180);
          v81 = vsubq_s16(v179, v77);
          v82 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v24, v77), v78), v26), v76), v45);
          *v76.i8 = vqmovn_s16(v50);
          *v25.i8 = vbsl_s8(*v76.i8, v68, *v25.i8);
          v6 = v184;
          *v24.i8 = vbsl_s8(*v76.i8, v66, vqmovun_s16(v79));
          *v26.i8 = vbsl_s8(*v76.i8, v64, vqmovun_s16(v80));
          v27 = vbsl_s8(*v76.i8, v65, vqmovun_s16(v81));
          v28 = vbsl_s8(*v76.i8, v67, vqmovun_s16(v82));
          v29 = vbsl_s8(*v76.i8, v69, v58);
        }

        else
        {
          v83.i64[0] = 0x2000200020002;
          v83.i64[1] = 0x2000200020002;
          v84 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v27, 0x909090909090909), *v26.i8, 0x909090909090909), v55, v83), 4uLL);
          v83.i64[0] = 0xA000A000A000ALL;
          v83.i64[1] = 0xA000A000A000ALL;
          v85 = vcgtq_s16(vmulq_s16(v54, v83), vabsq_s16(v84));
          v86 = vandq_s8(v85, v53);
          v87 = vmaxq_s16(vminq_s16(vandq_s8(v84, v85), v54), vnegq_s16(v54));
          v88 = vshrq_n_s16(v54, 1uLL);
          v89 = vnegq_s16(v88);
          *v24.i8 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v185, *v24.i8), v87), v88), v89), v86), v43));
          *v26.i8 = vqmovun_s16(vaddq_s16(v87, v44));
          v27 = vqmovun_s16(vsubq_s16(v46, v87));
          v28 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v56, v28), v87), v88), v89), vandq_s8(v85, v52)), v45));
        }
      }

      v90 = vtrn2q_s8(*v7, v8);
      v91 = vtrn2q_s8(v9, v10);
      v92 = vtrn2q_s8(v11, v12);
      v93 = vtrn2q_s8(v13, v14);
      v94 = vtrn1q_s16(v90, v91);
      v95 = vtrn2q_s16(v90, v91);
      v96 = vtrn1q_s16(v92, v93);
      v97 = vtrn2q_s16(v92, v93);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      v102 = vextq_s8(v98, v98, 8uLL).u64[0];
      v103 = vextq_s8(v100, v100, 8uLL).u64[0];
      v104 = vextq_s8(v99, v99, 8uLL).u64[0];
      v105 = vextq_s8(v101, v101, 8uLL).u64[0];
      v106 = vaddl_u8(*v100.i8, *v101.i8);
      v107 = vshll_n_u8(*v99.i8, 1uLL);
      v108 = vabdq_u16(v107, v106);
      v109 = vaddl_high_u8(v99, v98);
      v110 = vshll_high_n_u8(v100, 1uLL);
      v111 = vabdq_u16(v110, v109);
      v112 = vabaq_u16(vrev64q_s16(v108), v107, v106);
      v113 = vabaq_u16(vrev64q_s16(v111), v110, v109);
      *v114.i8 = vdup_lane_s16(*v112.i8, 0);
      v114.u64[1] = vdup_laneq_s16(v112, 4);
      *v115.i8 = vdup_lane_s16(*v113.i8, 0);
      v115.u64[1] = vdup_laneq_s16(v113, 4);
      v116 = vcgtq_s16(v6, vaddq_s16(v115, v114));
      if (vorr_s8(*v116.i8, *&vextq_s8(v116, v116, 8uLL)).u16[0])
      {
        v117 = vmovl_u8(*v99.i8);
        v118 = vmovl_u8(*v101.i8);
        v119 = vmovl_high_u8(v100);
        v120 = vmovl_high_u8(v98);
        v121 = vandq_s8(v189, v116);
        v122 = vandq_s8(vcgtq_s16(vrhaddq_s16(v121, vshlq_n_s16(v121, 2uLL)), vabdl_u8(*v101.i8, v102)), vandq_s8(vcgtq_s16(v42, vaddq_s16(v111, v108)), vcgtq_s16(v188, vabal_u8(vabdl_u8(v105, v102), *v98.i8, *v101.i8))));
        v123 = vandq_s8(vrev64q_s16(v122), v122);
        *v124.i8 = vdup_lane_s16(*v123.i8, 0);
        v124.u64[1] = vdup_laneq_s16(v123, 4);
        v125 = vcgtq_s16(v187, v115);
        v126 = vcgtq_s16(v187, v114);
        v127 = vbicq_s8(v121, v124);
        v128 = vsubl_u8(v103, *v99.i8);
        v129 = vrhadd_u8(*v100.i8, *v101.i8);
        v186 = vrhadd_u8(v104, v102);
        if (vorr_s8(*v123.i8, *&vextq_s8(v123, v123, 8uLL)).u16[0])
        {
          v130 = vmovn_s16(v121);
          v131 = vadd_s8(v130, v130);
          v132 = vaddl_u8(*v100.i8, *v99.i8);
          v181 = v118;
          v183 = v29;
          v133 = vaddl_u8(*v101.i8, v102);
          v134 = v105;
          v135 = v39;
          v136 = vaddl_high_u8(v100, v99);
          v137 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v133, v117), vhadd_u8(*v100.i8, v103)), 2uLL), vqadd_u8(*v101.i8, v131)), vqsub_u8(*v101.i8, v131));
          v138 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v133, v119), vhadd_u8(v104, *v99.i8)), 2uLL), vqadd_u8(v102, v131)), vqsub_u8(v102, v131));
          v139 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v132, v133), 2uLL), vqadd_u8(*v99.i8, v131)), vqsub_u8(*v99.i8, v131));
          v140 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v136, v133), 2uLL), vqadd_u8(v103, v131)), vqsub_u8(v103, v131));
          *v132.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(*v98.i8, *v100.i8), vhaddq_u16(v132, v133)), 2uLL), vqadd_u8(*v100.i8, v131)), vqsub_u8(*v100.i8, v131));
          *v133.i8 = vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_high_u8(v99, v101), vhaddq_u16(v136, v133)), 2uLL), vqadd_u8(v104, v131));
          v39 = v135;
          v105 = v134;
          v141 = vmax_u8(*v133.i8, vqsub_u8(v104, v131));
          v142 = vsubl_u8(v102, *v101.i8);
          v143.i64[0] = 0x9000900090009;
          v143.i64[1] = 0x9000900090009;
          v144 = vmulq_s16(v142, v143);
          v143.i64[0] = 0x2000200020002;
          v143.i64[1] = 0x2000200020002;
          v145 = vrshrq_n_s16(vmlaq_s16(v144, v128, v143), 4uLL);
          v143.i64[0] = 0xA000A000A000ALL;
          v143.i64[1] = 0xA000A000A000ALL;
          v146 = vcgtq_s16(vmulq_s16(v127, v143), vabsq_s16(v145));
          v147 = vandq_s8(v146, v126);
          v148 = vandq_s8(v146, v125);
          v149 = vmaxq_s16(vminq_s16(vandq_s8(v145, v146), v127), vnegq_s16(v127));
          v150 = vshrq_n_s16(v127, 1uLL);
          v101 = vnegq_s16(v150);
          v151 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v129, *v99.i8), v149), v150), v101), v147), v117);
          v99 = vsubl_u8(v186, v103);
          v152 = vaddq_s16(v149, v181);
          v153 = vsubq_s16(v120, v149);
          v154 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v99, v149), v150), v101), v148), v119);
          *v148.i8 = vqmovn_s16(v124);
          *v100.i8 = vbsl_s8(*v148.i8, *v132.i8, *v100.i8);
          v29 = v183;
          v6 = v184;
          *v99.i8 = vbsl_s8(*v148.i8, v139, vqmovun_s16(v151));
          *v101.i8 = vbsl_s8(*v148.i8, v137, vqmovun_s16(v152));
          v102 = vbsl_s8(*v148.i8, v138, vqmovun_s16(v153));
          v103 = vbsl_s8(*v148.i8, v140, vqmovun_s16(v154));
          v104 = vbsl_s8(*v148.i8, v141, v104);
        }

        else
        {
          v155.i64[0] = 0x2000200020002;
          v155.i64[1] = 0x2000200020002;
          v156 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v102, 0x909090909090909), *v101.i8, 0x909090909090909), v128, v155), 4uLL);
          v157.i64[0] = 0xA000A000A000ALL;
          v157.i64[1] = 0xA000A000A000ALL;
          v158 = vcgtq_s16(vmulq_s16(v127, v157), vabsq_s16(v156));
          v159 = vmaxq_s16(vminq_s16(vandq_s8(v156, v158), v127), vnegq_s16(v127));
          v160 = vshrq_n_s16(v127, 1uLL);
          v161 = vnegq_s16(v160);
          *v99.i8 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v129, *v99.i8), v159), v160), v161), vandq_s8(v158, v126)), v117));
          *v101.i8 = vqmovun_s16(vaddq_s16(v159, v118));
          v102 = vqmovun_s16(vsubq_s16(v120, v159));
          v103 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v186, v103), v159), v160), v161), vandq_s8(v158, v125)), v119));
        }
      }

      v23.u64[1] = v27;
      v25.u64[1] = v28;
      v24.u64[1] = v29;
      v26.u64[1] = v39;
      v98.u64[1] = v102;
      v100.u64[1] = v103;
      v99.u64[1] = v104;
      v101.u64[1] = v105;
      v162 = vtrn1q_s8(v23, v98);
      v163 = vtrn2q_s8(v23, v98);
      v164 = vtrn1q_s8(v25, v100);
      v165 = vtrn2q_s8(v25, v100);
      v166 = vtrn1q_s8(v24, v99);
      v167 = vtrn2q_s8(v24, v99);
      v168 = vtrn1q_s8(v26, v101);
      v169 = vtrn2q_s8(v26, v101);
      v170 = vtrn1q_s16(v162, v164);
      v171 = vtrn2q_s16(v162, v164);
      v172 = vtrn1q_s16(v163, v165);
      v173 = vtrn2q_s16(v163, v165);
      v174 = vtrn1q_s16(v166, v168);
      v175 = vtrn2q_s16(v166, v168);
      v176 = vtrn1q_s16(v167, v169);
      v177 = vtrn2q_s16(v167, v169);
      *v7 = vtrn1q_s32(v170, v174);
      *(v7 + a2) = vtrn1q_s32(v172, v176);
      *(v7 + 2 * a2) = vtrn1q_s32(v171, v175);
      *(v7 + 3 * a2) = vtrn1q_s32(v173, v177);
      *(v7 + 4 * a2) = vtrn2q_s32(v170, v174);
      *(v7 + 5 * a2) = vtrn2q_s32(v172, v176);
      *(v7 + 6 * a2) = vtrn2q_s32(v171, v175);
      *(v7 + 7 * a2) = vtrn2q_s32(v173, v177);
      v7 = (v7 + 8 * a2);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t InLoopChromaH_neon(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    v6 = vdupq_n_s16(a3);
    v160 = vshrq_n_s16(v6, 3uLL);
    v161 = vdupq_n_s16(a4);
    v167 = v6;
    v159 = vshrq_n_s16(vsraq_n_s16(v6, v6, 1uLL), 3uLL);
    for (i = (result - 4 * a2); ; i += 16)
    {
      v8 = i;
      v169 = vld2_s8(v8);
      v9 = &v8[a2];
      v10 = v9;
      v170 = vld2_s8(v10);
      v11 = &v10[a2];
      v12 = v11;
      v173 = vld2_s8(v12);
      v13 = &v12[a2];
      v14 = v13;
      v174 = vld2_s8(v14);
      v15 = &v14[a2];
      v16 = v15;
      v175 = vld2_s8(v16);
      v17 = &v16[a2];
      v18 = v17;
      v172 = vld2_s8(v18);
      v19 = &v18[a2];
      v20 = v19;
      v171 = vld2_s8(v20);
      v21 = &v20[a2];
      v168 = vld2_s8(v21);
      v22 = vaddl_u8(v174.val[0], v170.val[0]);
      v23 = vshll_n_u8(v173.val[0], 1uLL);
      v24 = vabdq_u16(v23, v22);
      v25 = vaddl_u8(v171.val[0], v175.val[0]);
      v26 = vshll_n_u8(v172.val[0], 1uLL);
      v27 = vabdq_u16(v26, v25);
      v28 = vabaq_u16(vrev64q_s16(v24), v23, v22);
      v29 = vabaq_u16(vrev64q_s16(v27), v26, v25);
      *v30.i8 = vdup_lane_s16(*v28.i8, 0);
      v30.u64[1] = vdup_laneq_s16(v28, 4);
      *v31.i8 = vdup_lane_s16(*v29.i8, 0);
      v31.u64[1] = vdup_laneq_s16(v29, 4);
      v32 = vcgtq_s16(v167, vaddq_s16(v31, v30));
      v33 = vrshrq_n_s16(v167, 3uLL);
      v166 = v169.val[1];
      v164 = v168.val[1];
      v162 = v33;
      if (!vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u16[0])
      {
        break;
      }

      v34 = vmovl_u8(v173.val[0]);
      v35 = vmovl_u8(v174.val[0]);
      v36 = vmovl_u8(v172.val[0]);
      v37 = vmovl_u8(v175.val[0]);
      v38 = vandq_s8(v161, v32);
      v39 = vandq_s8(vcgtq_s16(vrhaddq_s16(v38, vshlq_n_s16(v38, 2uLL)), vabdl_u8(v174.val[0], v175.val[0])), vandq_s8(vcgtq_s16(v33, vaddq_s16(v27, v24)), vcgtq_s16(v160, vabal_u8(vabdl_u8(v168.val[0], v175.val[0]), v169.val[0], v174.val[0]))));
      v40 = vandq_s8(vrev64q_s16(v39), v39);
      *v41.i8 = vdup_lane_s16(*v40.i8, 0);
      v41.u64[1] = vdup_laneq_s16(v40, 4);
      v42 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)).u16[0];
      v43 = vcgtq_s16(v159, v31);
      v44 = vcgtq_s16(v159, v30);
      v45 = vbicq_s8(v38, v41);
      v46 = v168.val[0];
      v47 = v169.val[0];
      v48 = vsubl_u8(v172.val[0], v173.val[0]);
      v49 = vrhadd_u8(v170.val[0], v174.val[0]);
      v50 = vrhadd_u8(v171.val[0], v175.val[0]);
      if (!v42)
      {
        v79.i64[0] = 0x2000200020002;
        v79.i64[1] = 0x2000200020002;
        v80 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v175.val[0], 0x909090909090909), v174.val[0], 0x909090909090909), v48, v79), 4uLL);
        v81.i64[0] = 0xA000A000A000ALL;
        v81.i64[1] = 0xA000A000A000ALL;
        v82 = vcgtq_s16(vmulq_s16(v45, v81), vabsq_s16(v80));
        v83 = vandq_s8(v80, v82);
        v84 = vandq_s8(v82, v44);
        v85 = vandq_s8(v82, v43);
        v86 = vmaxq_s16(vminq_s16(v83, v45), vnegq_s16(v45));
        v87 = vaddq_s16(v86, v35);
        v88 = vsubq_s16(v37, v86);
        v89 = vshrq_n_s16(v45, 1uLL);
        v90 = vnegq_s16(v89);
        v91 = vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v49, v173.val[0]), v86), v89), v90);
        v92 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v50, v172.val[0]), v86), v89), v90), v85), v36);
        v74 = vqmovun_s16(vaddq_s16(vandq_s8(v91, v84), v34));
        v75 = vqmovun_s16(v87);
        v76 = vqmovun_s16(v88);
        v77 = vqmovun_s16(v92);
        v73 = v170.val[0];
        goto LABEL_8;
      }

      v51 = vmovn_s16(v38);
      v158 = v50;
      v52 = v34;
      v53 = vadd_s8(v51, v51);
      v153 = v37;
      v155 = v35;
      v54 = vaddl_u8(v173.val[0], v170.val[0]);
      v55 = vaddl_u8(v175.val[0], v174.val[0]);
      v56 = vaddl_u8(v171.val[0], v172.val[0]);
      v157 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v55, v52), vhadd_u8(v170.val[0], v172.val[0])), 2uLL), vqadd_u8(v174.val[0], v53)), vqsub_u8(v174.val[0], v53));
      v57 = v36;
      v58 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v55, v36), vhadd_u8(v171.val[0], v173.val[0])), 2uLL), vqadd_u8(v175.val[0], v53)), vqsub_u8(v175.val[0], v53));
      v59 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v55, v54), 2uLL), vqadd_u8(v173.val[0], v53)), vqsub_u8(v173.val[0], v53));
      v60 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v56, v55), 2uLL), vqadd_u8(v172.val[0], v53)), vqsub_u8(v172.val[0], v53));
      v61 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v170.val[0], v47), vhaddq_u16(v54, v55)), 2uLL), vqadd_u8(v170.val[0], v53)), vqsub_u8(v170.val[0], v53));
      *v56.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v46, v171.val[0]), vhaddq_u16(v56, v55)), 2uLL), vqadd_u8(v171.val[0], v53)), vqsub_u8(v171.val[0], v53));
      v62.i64[0] = 0x9000900090009;
      v62.i64[1] = 0x9000900090009;
      v63 = vmulq_s16(vsubl_u8(v175.val[0], v174.val[0]), v62);
      v62.i64[0] = 0x2000200020002;
      v62.i64[1] = 0x2000200020002;
      v64 = vrshrq_n_s16(vmlaq_s16(v63, v48, v62), 4uLL);
      v62.i64[0] = 0xA000A000A000ALL;
      v62.i64[1] = 0xA000A000A000ALL;
      v65 = vcgtq_s16(vmulq_s16(v45, v62), vabsq_s16(v64));
      v66 = vandq_s8(v65, v44);
      v67 = vandq_s8(v65, v43);
      v68 = vmaxq_s16(vminq_s16(vandq_s8(v64, v65), v45), vnegq_s16(v45));
      v69 = vshrq_n_s16(v45, 1uLL);
      v70 = vnegq_s16(v69);
      v71 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v158, v172.val[0]), v68), v69), v70), v67), v57);
      v72 = vqmovn_s16(v41);
      v73 = vbsl_s8(v72, v61, v170.val[0]);
      v74 = vbsl_s8(v72, v59, vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v49, v173.val[0]), v68), v69), v70), v66), v52)));
      v75 = vbsl_s8(v72, v157, vqmovun_s16(vaddq_s16(v68, v155)));
      v76 = vbsl_s8(v72, v58, vqmovun_s16(vsubq_s16(v153, v68)));
      v77 = vbsl_s8(v72, v60, vqmovun_s16(v71));
      v78 = vbsl_s8(v72, *v56.i8, v171.val[0]);
LABEL_9:
      v93 = vaddl_u8(v174.val[1], v170.val[1]);
      v94 = vshll_n_u8(v173.val[1], 1uLL);
      v95 = vabdq_u16(v94, v93);
      v96 = vaddl_u8(v171.val[1], v175.val[1]);
      v97 = vshll_n_u8(v172.val[1], 1uLL);
      v98 = vabdq_u16(v97, v96);
      v99 = vabaq_u16(vrev64q_s16(v95), v94, v93);
      v100 = vabaq_u16(vrev64q_s16(v98), v97, v96);
      *v101.i8 = vdup_lane_s16(*v99.i8, 0);
      v101.u64[1] = vdup_laneq_s16(v99, 4);
      *v102.i8 = vdup_lane_s16(*v100.i8, 0);
      v102.u64[1] = vdup_laneq_s16(v100, 4);
      v103 = vcgtq_s16(v167, vaddq_s16(v102, v101));
      if (vorr_s8(*v103.i8, *&vextq_s8(v103, v103, 8uLL)).u16[0])
      {
        v154 = v76;
        v104 = vmovl_u8(v173.val[1]);
        v105 = vmovl_u8(v174.val[1]);
        v156 = vmovl_u8(v172.val[1]);
        v152 = vmovl_u8(v175.val[1]);
        v106 = vandq_s8(v161, v103);
        v107 = vandq_s8(vcgtq_s16(vrhaddq_s16(v106, vshlq_n_s16(v106, 2uLL)), vabdl_u8(v174.val[1], v175.val[1])), vandq_s8(vcgtq_s16(v162, vaddq_s16(v98, v95)), vcgtq_s16(v160, vabal_u8(vabdl_u8(v164, v175.val[1]), v166, v174.val[1]))));
        v108 = vandq_s8(vrev64q_s16(v107), v107);
        *v109.i8 = vdup_lane_s16(*v108.i8, 0);
        v109.u64[1] = vdup_laneq_s16(v108, 4);
        v110 = vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL)).u16[0];
        v163 = vcgtq_s16(v159, v102);
        v151 = vcgtq_s16(v159, v101);
        v111 = vbicq_s8(v106, v109);
        v112 = vsubl_u8(v172.val[1], v173.val[1]);
        v113 = vrhadd_u8(v170.val[1], v174.val[1]);
        v114 = vrhadd_u8(v171.val[1], v175.val[1]);
        if (v110)
        {
          v115 = vmovn_s16(v106);
          v116 = vadd_s8(v115, v115);
          v165 = v114;
          v117 = vaddl_u8(v175.val[1], v174.val[1]);
          v118 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v117, v104), vhadd_u8(v170.val[1], v172.val[1])), 2uLL), vqadd_u8(v174.val[1], v116)), vqsub_u8(v174.val[1], v116));
          v119 = vsubl_u8(v175.val[1], v174.val[1]);
          v120 = vqsub_u8(v175.val[1], v116);
          v121 = vqadd_u8(v175.val[1], v116);
          v122 = vaddl_u8(v173.val[1], v170.val[1]);
          v123 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v117, v156), vhadd_u8(v171.val[1], v173.val[1])), 2uLL), v121), v120);
          v124 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v117, v122), 2uLL), vqadd_u8(v173.val[1], v116)), vqsub_u8(v173.val[1], v116));
          v125 = vaddl_u8(v171.val[1], v172.val[1]);
          v126 = vsubl_u8(v113, v173.val[1]);
          v127 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v125, v117), 2uLL), vqadd_u8(v172.val[1], v116)), vqsub_u8(v172.val[1], v116));
          v128 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v170.val[1], v166), vhaddq_u16(v122, v117)), 2uLL), vqadd_u8(v170.val[1], v116)), vqsub_u8(v170.val[1], v116));
          v122.i64[0] = 0x9000900090009;
          v122.i64[1] = 0x9000900090009;
          v129 = vmulq_s16(v119, v122);
          v122.i64[0] = 0x2000200020002;
          v122.i64[1] = 0x2000200020002;
          v130 = vrshrq_n_s16(vmlaq_s16(v129, v112, v122), 4uLL);
          v131 = vsubl_u8(v165, v172.val[1]);
          v129.i64[0] = 0xA000A000A000ALL;
          v129.i64[1] = 0xA000A000A000ALL;
          v132 = vcgtq_s16(vmulq_s16(v111, v129), vabsq_s16(v130));
          v133 = vmaxq_s16(vminq_s16(vandq_s8(v130, v132), v111), vnegq_s16(v111));
          v134 = vshrq_n_s16(v111, 1uLL);
          v135 = vnegq_s16(v134);
          v136 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(v126, v133), v134), v135), vandq_s8(v132, v151)), v104);
          v137 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v131, v133), v134), v135), vandq_s8(v132, v163)), v156);
          v138 = vqmovn_s16(v109);
          v170.val[1] = vbsl_s8(v138, v128, v170.val[1]);
          v171.val[1] = vbsl_s8(v138, vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v164, v171.val[1]), vhaddq_u16(v125, v117)), 2uLL), vqadd_u8(v171.val[1], v116)), vqsub_u8(v171.val[1], v116)), v171.val[1]);
          v173.val[1] = vbsl_s8(v138, v124, vqmovun_s16(v136));
          v174.val[1] = vbsl_s8(v138, v118, vqmovun_s16(vaddq_s16(v133, v105)));
          v175.val[1] = vbsl_s8(v138, v123, vqmovun_s16(vsubq_s16(v152, v133)));
          v172.val[1] = vbsl_s8(v138, v127, vqmovun_s16(v137));
        }

        else
        {
          v139.i64[0] = 0x2000200020002;
          v139.i64[1] = 0x2000200020002;
          v140 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v175.val[1], 0x909090909090909), v174.val[1], 0x909090909090909), v112, v139), 4uLL);
          v139.i64[0] = 0xA000A000A000ALL;
          v139.i64[1] = 0xA000A000A000ALL;
          v141 = vcgtq_s16(vmulq_s16(v111, v139), vabsq_s16(v140));
          v142 = vmaxq_s16(vminq_s16(vandq_s8(v140, v141), v111), vnegq_s16(v111));
          v143 = vshrq_n_s16(v111, 1uLL);
          v144 = vnegq_s16(v143);
          v173.val[1] = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v113, v173.val[1]), v142), v143), v144), vandq_s8(v141, v151)), v104));
          v174.val[1] = vqmovun_s16(vaddq_s16(v142, v105));
          v175.val[1] = vqmovun_s16(vsubq_s16(v152, v142));
          v172.val[1] = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v114, v172.val[1]), v142), v143), v144), vandq_s8(v141, v163)), v156));
        }

        v76 = v154;
      }

      v145 = v170.val[1];
      vst2_s8(v9, *v73.i8);
      v146 = v173.val[1];
      vst2_s8(v11, *v74.i8);
      v147 = v174.val[1];
      vst2_s8(v13, *v75.i8);
      v148 = v175.val[1];
      vst2_s8(v15, *v76.i8);
      v149 = v172.val[1];
      vst2_s8(v17, *v77.i8);
      v150 = v171.val[1];
      vst2_s8(v19, *v78.i8);
      if (!--v5)
      {
        return result;
      }
    }

    v73 = v170.val[0];
    v74 = v173.val[0];
    v75 = v174.val[0];
    v76 = v175.val[0];
    v77 = v172.val[0];
LABEL_8:
    v78 = v171.val[0];
    goto LABEL_9;
  }

  return result;
}

CAHDec *createThymeHevcDecoder(void *a1)
{
  v2 = operator new(0x2EE8uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDec::CAHDec(v2);
    *v3 = &unk_288669710;
    *(v3 + 32) = a1;
    *(v3 + 114) = 420444;
    *(v3 + 2) = 3036;
    *(v3 + 1) = xmmword_27775BBF0;
    *(v3 + 8) = 2;
    *(v3 + 7) = a1;
    bzero(v3 + 528, 0x2CB0uLL);
  }

  return v3;
}

void CAHDecThymeHevc::~CAHDecThymeHevc(CAHDecThymeHevc *this)
{
  *this = &unk_288669710;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecThymeHevc::~CAHDecThymeHevc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecThymeHevc::init(CAHDecThymeHevc *this)
{
  v11 = *MEMORY[0x277D85DE8];
  result = CAVDDecoder::allocAVDMem(*(this + 32), (this + 280), *(this + 114), 6, 1, 0);
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "init";
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): Failed to allocate m_decodeBufferMemInfo[%d]! Got %d\n", &v5, 0x18u);
    }

    return 301;
  }

  else
  {
    v4 = *(this + 35);
    *(this + 13) = 0;
    *(this + 33) = v4;
    *(this + 34) = v4;
  }

  return result;
}

uint64_t CAHDecThymeHevc::initPicture(CAHDecThymeHevc *this, int a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(this + 114) = 420444;
  *(this + 13) = 0;
  v4 = *(this + 34);
  *(this + 33) = v4;
  if (v4)
  {
    bzero(v4, 0x66A5CuLL);
    v7 = *(this + *(this + 13) + 34);
    *(v7 + 16) = a2;
    *(v7 + 24) = 257;
    *(v7 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 2999) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "initPicture";
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v9, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecThymeHevc::populateSlices(CAHDecThymeHevc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(this + *(this + 13) + 34) + 3036;
    v5 = a2;
    do
    {
      CAHDecThymeHevc::populateSliceRegisters(this, v4, v3++);
      v4 += 368;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecThymeHevc::populateSliceRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 8184) + 2360 * a3;
  v8 = *(v6 + 8168) + 23176 * *(v6 + 8208);
  v9 = *(v6 + 8176) + 9856 * *(v6 + 8212);
  *(a1 + 460) = 6 * *(v8 + 3636);
  v10 = *(v8 + 22880);
  *(a2 + 352) = 0x1000000;
  v11 = (((*(v7 + 36) / v10) & 0xFFF) << 12) | 0x1000000;
  *(a2 + 352) = v11;
  *(a2 + 352) = v11 & 0xFFFFF000 | (*(v7 + 36) % v10) & 0xFFF;
  *(a2 + 4) = 0;
  v12 = *(v9 + 6477);
  if (*(v9 + 6477))
  {
    v12 = *(v7 + 1880) & 1;
  }

  *(a2 + 4) = v12;
  if (*(v7 + 44) == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (10 - 2 * *(v7 + 1864)) & 0xE;
  }

  v14 = v13 | v12;
  *(a2 + 4) = v14;
  if (*(v7 + 44))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v7 + 616);
    if (*(v7 + 616))
    {
      v15 = 16 * (*(v7 + 762) == 0);
    }
  }

  v16 = v15 | v14;
  *(a2 + 4) = v16;
  if (*(v7 + 44) == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v9 + 17);
    if (*(v9 + 17))
    {
      v17 = 32 * (*(v7 + 761) & 1);
    }
  }

  v18 = v17 | v16;
  *(a2 + 4) = v18;
  if (*(v7 + 44))
  {
    v19 = 0;
  }

  else
  {
    v19 = (*(v7 + 760) == 0) << 6;
  }

  v20 = v19 | v18;
  *(a2 + 4) = v20;
  if (*(v7 + 624) == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(v7 + 624) & 0xF) << 7;
  }

  v22 = v21 | v20;
  *(a2 + 4) = v22;
  if (*(v7 + 620) == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = (*(v7 + 620) & 0xF) << 11;
  }

  v24 = v23 | v22;
  *(a2 + 4) = v24;
  if (*(v7 + 44) == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v8 + 22284);
    if (*(v8 + 22284))
    {
      v25 = (*(v7 + 616) & 1) << 15;
    }
  }

  v26 = v25 | v24;
  *(a2 + 4) = v26;
  *(a2 + 4) = v26 & 0xFFFCFFFF | ((*(v7 + 44) & 3) << 16);
  *(a2 + 336) = 0;
  if (*(v7 + 44) > 1u)
  {
    goto LABEL_31;
  }

  if (!*(v7 + 2344))
  {
    goto LABEL_31;
  }

  if (*(a1 + 11996))
  {
    goto LABEL_31;
  }

  (*(**(a1 + 256) + 352))(*(a1 + 256), a3);
  v27 = *(a1 + 256);
  if (*(v27 + 8920))
  {
    goto LABEL_31;
  }

  *(a1 + 11996) = 1;
  *(a2 + 4) |= 0x40000u;
  v95 = 368 * a3;
  if (!*(v27 + 8744) && !*(v27 + 8896) && !*(v27 + 8900))
  {
    goto LABEL_147;
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3372, 0, 0xFFFFFFFFLL, 8, -256, 4);
  if (result)
  {
    return result;
  }

  if (!*(v27 + 8744))
  {
LABEL_147:
    if (!*(v27 + 8896) && !*(v27 + 8900))
    {
      goto LABEL_31;
    }
  }

  result = CAHDec::addToPatcherList(a1, (v27 + 8744), v95 + 3400, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (!result)
  {
LABEL_31:
    *(a2 + 4) = *(a2 + 4) & 0x77FFFF | 0x2D000000;
    (*(**(a1 + 256) + 360))(*(a1 + 256), 0, a3);
    v28 = *(v7 + 44);
    if (v28 > 1)
    {
      goto LABEL_41;
    }

    v29 = v6 + 8344;
    if ((*(v7 + 620) & 0x80000000) != 0)
    {
      v31 = 0;
      if (v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = a2 + 8;
      do
      {
        v33 = v31;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000;
        *(v32 + 4 * v31) = v30 & 0xF0 | 0x2DC00000 | *(v29 + 4 * v31) & 0xF;
        ++v31;
        v30 += 16;
      }

      while (v33 < *(v7 + 620));
      if (*(v7 + 44))
      {
        goto LABEL_41;
      }
    }

    (*(**(a1 + 256) + 360))(*(a1 + 256), 1, a3);
    if ((*(v7 + 624) & 0x80000000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a2 + 4 * v31 + 8;
      do
      {
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100;
        *(v36 + 4 * v35) = v34 & 0xF0 | 0x2DC00100 | *(v29 + 4 * v35) & 0xF;
        v34 += 16;
        v37 = v35++ < *(v7 + 624);
      }

      while (v37);
    }

LABEL_41:
    *(a2 + 128) = 0x2DD0000000000000;
    v38 = *(v7 + 44);
    if (v38 == 1)
    {
      v39 = *(v9 + 49);
      if (!v39)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v38)
      {
        goto LABEL_62;
      }

      v39 = *(v9 + 50);
      if (!v39)
      {
        goto LABEL_62;
      }
    }

    v40 = 0;
    v41 = 0;
    *(a2 + 132) = ((v39 & 1) << 6) | 0x2DD00000;
    v42 = *(v7 + 768);
    v43 = ((v39 & 1) << 6) | 0x2DD00000 | (8 * (*(v7 + 768) & 7));
    *(a2 + 132) = v43;
    v44 = (*(v7 + 772) + *(v7 + 768)) & 7;
    v45 = a2 + 136;
    *(a2 + 132) = v43 & 0xFFFFFFF8 | v44;
    v46 = 1 << (v42 & 7);
    v47 = a2 + 232;
    v48 = 1 << v44;
    do
    {
      if (*(v7 + 776 + v41))
      {
        v49 = ((v41 & 0xF) << 9) | 0x2DE04000;
        *(v45 + 4 * v40) = v49;
        *(v45 + 4 * v40) = (*(v7 + 808 + 4 * v41) + v46) & 0x1FF | v49;
        *(v47 + 4 * v40) = 770703360;
        *(v47 + 4 * v40++) = *(v7 + 872 + 4 * v41) | 0x2DF00000;
      }

      if (*(v7 + 792 + v41))
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = (((v41 & 0xF) << 9) | (v50 << 14)) + 769687552;
          *(v45 + 4 * v40) = v53;
          *(v45 + 4 * v40) = (*(v7 + 936 + 8 * v41 + 4 * v50) + v48) & 0x1FF | v53;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1608 + 8 * v41 + 4 * v50) | 0x2DF00000;
          v50 = 1;
          v51 = 0;
        }

        while ((v52 & 1) != 0);
      }

      ++v41;
    }

    while (v41 <= *(v7 + 620));
    if (!*(v7 + 44))
    {
      v54 = 0;
      do
      {
        if (*(v7 + 1192 + v54))
        {
          v55 = ((v54 & 0xF) << 9) + 769679360;
          *(v45 + 4 * v40) = v55;
          *(v45 + 4 * v40) = (*(v7 + 1224 + 4 * v54) + v46) & 0x1FF | v55;
          *(v47 + 4 * v40) = 770703360;
          *(v47 + 4 * v40++) = *(v7 + 1288 + 4 * v54) | 0x2DF00000;
        }

        if (*(v7 + 1208 + v54))
        {
          v56 = 0;
          v57 = 1;
          do
          {
            v58 = v57;
            v59 = (((v54 & 0xF) << 9) | (v56 << 14)) + 769695744;
            *(v45 + 4 * v40) = v59;
            *(v45 + 4 * v40) = (*(v7 + 1352 + 8 * v54 + 4 * v56) + v48) & 0x1FF | v59;
            *(v47 + 4 * v40) = 770703360;
            *(v47 + 4 * v40++) = *(v7 + 1736 + 8 * v54 + 4 * v56) | 0x2DF00000;
            v56 = 1;
            v57 = 0;
          }

          while ((v58 & 1) != 0);
        }

        ++v54;
      }

      while (v54 <= *(v7 + 624));
    }

    *(a2 + 128) = v40;
LABEL_62:
    LOBYTE(v60) = *(v9 + 48);
    if (v60)
    {
      v60 = *(v7 + 1876);
    }

    v61 = *(a2 + 328) & 0xFFFFFFE0 | (v60 + *(v9 + 44)) & 0x1F;
    *(a2 + 328) = v61;
    LOBYTE(v62) = *(v9 + 48);
    if (v62)
    {
      v62 = *(v7 + 1872);
    }

    v63 = v61 & 0xFFFFFC1F | (32 * ((v62 + *(v9 + 40)) & 0x1F));
    *(a2 + 328) = v63;
    v64 = *(v9 + 28) + *(v7 + 1868) + 26;
    *(a2 + 328) = v63 & 0xE03FF | ((v64 & 0x7F) << 10) | 0x2D900000;
    *(*(a1 + 256) + 2760) = *(a1 + 460) + (v64 << 25 >> 25);
    *(a2 + 332) = 0;
    v65 = *(v9 + 6540) & 7;
    *(a2 + 332) = v65;
    v66 = v65 & 0xFFFFFFC7 | (8 * (*(v9 + 6536) & 7));
    *(a2 + 332) = v66;
    v67 = *(v8 + 10649);
    if (*(v8 + 10649))
    {
      v67 = (*(v7 + 618) & 1) << 6;
    }

    v68 = v67 | v66;
    *(a2 + 332) = v68;
    v69 = *(v8 + 10649);
    if (*(v8 + 10649))
    {
      v69 = (*(v7 + 617) & 1) << 7;
    }

    v70 = v69 | v68;
    *(a2 + 332) = v69 | v68;
    if (*(v7 + 1881))
    {
      v71 = (v7 + 1888);
    }

    else
    {
      v71 = (v9 + 248);
    }

    v72 = v70 & 0xFFFFF0FF | ((*v71 & 0xF) << 8);
    *(a2 + 332) = v72;
    if (*(v7 + 1881))
    {
      v73 = (v7 + 1884);
    }

    else
    {
      v73 = (v9 + 244);
    }

    v74 = v72 & 0xFFFF0FFF | ((*v73 & 0xF) << 12);
    *(a2 + 332) = v74;
    if (*(v9 + 239) && *(v7 + 1881))
    {
      v75 = (v7 + 1882);
    }

    else
    {
      v75 = (v9 + 240);
    }

    v76 = *v75 == 0;
    v77 = v74 | (v76 << 16);
    *(a2 + 332) = v77;
    v37 = v69 > 0x7F;
    v78 = (v70 >> 6) & 1;
    if (v37)
    {
      LOBYTE(v78) = 1;
    }

    if ((v78 | v76))
    {
      v79 = (v7 + 1892);
    }

    else
    {
      v79 = (v9 + 237);
    }

    v80 = v77 & 0xFFFDFFFF | ((*v79 & 1) << 17);
    *(a2 + 332) = v80;
    if (*(v9 + 52))
    {
      v81 = (*(v9 + 236) & 1) << 18;
    }

    else
    {
      v81 = 0x40000;
    }

    v82 = v81 | v80;
    *(a2 + 332) = v82;
    v83 = *(v8 + 10650);
    if (*(v8 + 10650))
    {
      v83 = (*(v8 + 10668) == 0) << 19;
    }

    *(a2 + 332) = v82 | v83 | 0x2DA00000;
    v84 = *(a1 + 256);
    v85 = *(v84 + 2504);
    if (*(v84 + 2360) == 1)
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v88 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1782;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v88 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3376, v88, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_103;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_103:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1783;
            v91 = MEMORY[0x277D86220];
LABEL_120:
            _os_log_impl(&dword_277606000, v91, OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v90 = v96;
            goto LABEL_121;
          }

          goto LABEL_121;
        }

        goto LABEL_122;
      }
    }

    else
    {
      v96 = 0;
      v97 = 0;
      if ((*(*v84 + 440))(v84, a3, &v97, &v96))
      {
        v86 = 368 * a3;
        *(a2 + 340) = 0;
        v87 = v97;
        if (*v97 || *(v97 + 152) || *(v97 + 156))
        {
          v92 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1803;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v92 = v96;
          }

          result = CAHDec::addToPatcherList(a1, v87, v86 + 3376, v92, 0x3FFFFFFFFFFLL, 32, 1023, 4);
          if (result)
          {
            return result;
          }

          v87 = v97;
          if (*v97)
          {
            goto LABEL_117;
          }
        }

        if (*(v87 + 152) || *(v87 + 156))
        {
LABEL_117:
          v90 = v96;
          if (HIDWORD(v96) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v99 = "populateSliceRegisters";
            v100 = 1024;
            v101 = 1804;
            v91 = MEMORY[0x277D86220];
            goto LABEL_120;
          }

LABEL_121:
          result = CAHDec::addToPatcherList(a1, v87, v86 + 3380, v90, 0xFFFFFFFFLL, 0, -1, 4);
          if (!result)
          {
            goto LABEL_122;
          }

          return result;
        }

LABEL_122:
        v93 = *(v7 + 16) - (*(v7 + 2080) >> 3);
        *(a2 + 348) = v93;
        if (*(v84 + 2360) != 1)
        {
          return 0;
        }

        *(a2 + 356) = 0;
        if (*(v84 + 2640))
        {
          if ((*(v84 + 2612) & 1) == 0)
          {
LABEL_125:
            result = 0;
            if (v93 >= *(v7 + 2352))
            {
              v93 = *(v7 + 2352);
            }

            v94 = v85 | (v93 << 22);
LABEL_144:
            *(a2 + 360) = v94;
            return result;
          }
        }

        else if (!*(v84 + 2420))
        {
          goto LABEL_125;
        }

        result = 0;
        if (v93 >= *(v7 + 2352))
        {
          v93 = *(v7 + 2352);
        }

        v94 = v93 | v85 & 0x10000;
        goto LABEL_144;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecThymeHevc::updateCommonRegisters(CAHDecThymeHevc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecThymeHevc::populateSequenceRegisters(CAHDecThymeHevc *this)
{
  v1 = *(this + 33);
  v2 = *(*(this + 32) + 8168) + 23176 * *(*(this + 32) + 8208);
  v1[13] = 0;
  v3 = (*(v2 + 3608) >> 3) - 1;
  v1[13] = v3 & 0x1FFF;
  v1[13] = ((*(v2 + 3612) << 13) + 536805376) & 0x1FFF0000 | v3 & 0x1FFF;
  v1[14] = 0;
  v4 = *(v2 + 10648) & 1;
  v1[14] = v4;
  v5 = v4 & 0xFFFFFFF1 | (2 * (*(v2 + 4440) & 7));
  v1[14] = v5;
  v6 = v5 & 0xFFFFFF8F | (16 * (*(v2 + 4436) & 7));
  v1[14] = v6;
  v7 = v6 & 0xFFFFFE7F | (((*(v2 + 4428) + *(v2 + 4432)) & 3) << 7);
  v1[14] = v7;
  v8 = v7 & 0xFFFFF9FF | ((*(v2 + 4428) & 3) << 9);
  v1[14] = v8;
  v9 = v8 & 0xFFFFE7FF | (((*(v2 + 4424) + *(v2 + 4420)) & 3) << 11);
  v1[14] = v9;
  v10 = v9 & 0xFFFF9FFF | ((*(v2 + 4420) & 3) << 13);
  v1[14] = v10;
  v11 = v10 & 0xFFF87FFF | ((*(v2 + 3640) & 0xF) << 15);
  v1[14] = v11;
  v12 = v11 & 0xFF87FFFF | ((*(v2 + 3636) & 0xF) << 19);
  v1[14] = v12;
  v13 = v12 & 0xFF7FFFFF | ((*(v2 + 3604) & 1) << 23);
  v1[14] = v13;
  v1[14] = v13 & 0xFCFFFFFF | ((*(v2 + 3600) & 3) << 24);
  v1[15] = 0;
  if (*(v2 + 10650))
  {
    v1[15] = 4096;
    v14 = (*(v2 + 10664) + *(v2 + 10660)) & 3 | 0x1000;
    v1[15] = v14;
    v15 = v14 & 0xFFFFFFF3 | (4 * (*(v2 + 10660) & 3));
    v1[15] = v15;
    v16 = v15 & 0xFFFFFF0F | (16 * (*(v2 + 10656) & 0xF));
    v1[15] = v16;
    v1[15] = v16 & 0xFFFFF0FF | ((*(v2 + 10652) & 0xF) << 8);
  }

  v1[16] = 0;
  if (*(v2 + 22833))
  {
    v17 = *(v2 + 22844) & 1;
    v1[16] = v17;
    v18 = v17 & 0xFFFFFFFD | (2 * (*(v2 + 22843) & 1));
    v1[16] = v18;
    v19 = v18 & 0xFFFFFFFB | (4 * (*(v2 + 22842) & 1));
    v1[16] = v19;
    v20 = v19 | (8 * (*(v2 + 22841) == 0));
    v1[16] = v20;
    v21 = v20 & 0xFFFFFFEF | (16 * (*(v2 + 22840) & 1));
    v1[16] = v21;
    v22 = v21 & 0xFFFFFFDF | (32 * (*(v2 + 22839) & 1));
    v1[16] = v22;
    v23 = v22 & 0xFFFFFFBF | ((*(v2 + 22838) & 1) << 6);
    v1[16] = v23;
    v24 = v23 | ((*(v2 + 22837) & 1) << 7);
    v1[16] = v24;
    v25 = v24 | ((*(v2 + 22836) & 1) << 8);
  }

  else
  {
    v25 = 8;
  }

  v1[16] = v25;
  v1[16] = v25 & 0xFFFFFDFF | ((*(v2 + 22285) & 1) << 9);
  if (*(v2 + 4444))
  {
    CAHDecTansyHevc::copyScalingList(this, (v1 + 17), *(this + 33) + 796, *(v2 + 3600), v2 + 4448);
  }

  return 0;
}

uint64_t CAHDecThymeHevc::getTileHdrMemInfo(uint64_t result, int a2, void *a3)
{
  v3 = result + 176 * a2;
  *a3 = v3 + 528;
  a3[1] = v3 + 3344;
  return result;
}

__n128 CAHDecThymeHevc::getMVmemInfo(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v4 = a1 + 176 * a2;
  v5 = *(v4 + 7568);
  v6 = *(v4 + 7600);
  *(a3 + 16) = *(v4 + 7584);
  *(a3 + 32) = v6;
  *a3 = v5;
  v7 = *(v4 + 7616);
  v8 = *(v4 + 7632);
  v9 = *(v4 + 7664);
  *(a3 + 80) = *(v4 + 7648);
  *(a3 + 96) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  result = *(v4 + 7680);
  v11 = *(v4 + 7696);
  v12 = *(v4 + 7728);
  *(a3 + 144) = *(v4 + 7712);
  *(a3 + 160) = v12;
  *(a3 + 112) = result;
  *(a3 + 128) = v11;
  *a4 = *(a1 + 4 * a2 + 464);
  return result;
}

uint64_t CAHDecThymeHevc::populatePictureRegisters(CAHDecThymeHevc *this)
{
  v531 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 8208);
  v4 = *(v2 + 8212);
  v5 = *(v2 + 8168);
  v6 = *(v2 + 8176);
  v7 = *(v2 + 8924);
  v8 = *(v2 + 2964);
  v510 = *(v2 + 2948);
  v511 = *(v2 + 2960);
  v506 = *(v2 + 2952);
  v507 = *(v2 + 2924);
  v501 = *(v2 + 2088);
  v502 = *(v2 + 8280);
  v504 = *(v2 + 3548);
  v505 = *(v2 + 8994);
  v516 = *(v2 + 2644);
  v509 = *(v2 + 8312);
  v508 = *(v2 + 8);
  v9 = *(v2 + 8424);
  v530[0] = *(v2 + 8408);
  v530[1] = v9;
  v10 = *(v2 + 8456);
  v530[2] = *(v2 + 8440);
  v530[3] = v10;
  v503 = *(v2 + 8608);
  v11 = (*(*v2 + 184))(v2);
  v12 = *(this + 32);
  v515 = v11 && (v12[689] || v12[4] == 1);
  v13 = *(this + 33);
  v14 = v5 + 23176 * v3;
  v15 = *(v14 + 4424) + *(v14 + 4420);
  memset(v529, 0, sizeof(v529));
  memset(v528, 0, sizeof(v528));
  (*(*v12 + 344))();
  v16 = 0;
  v17 = *(this + 32);
  v18 = (v17 + 8616);
  do
  {
    v532 = vld2q_f64(v18);
    v18 += 4;
    v529[v16] = v532.val[0];
    v528[v16++] = v532.val[1];
  }

  while (v16 != 4);
  v19 = v6 + 9856 * v4;
  if (*(v19 + 52))
  {
    v20 = 0;
    v21 = *(v19 + 56) + 1;
    v22 = *(this + 33);
    *(v22 + 692) = v21;
    do
    {
      *(v22 + 696 + 2 * v20) = *(v19 + 9676 + 4 * v20);
      v23 = v20++ >= v21;
    }

    while (!v23);
    v24 = 0;
    v25 = *(v19 + 60) + 1;
    *(v22 + 694) = v25;
    do
    {
      *(v22 + 738 + 2 * v24) = *(v19 + 9760 + 4 * v24);
      v23 = v24++ >= v25;
    }

    while (!v23);
    v26 = v21 * v25;
  }

  else
  {
    v27 = *(this + 33);
    *(v27 + 692) = 65537;
    *(v27 + 696) = 0;
    *(v27 + 698) = *(v14 + 22880);
    *(v27 + 738) = 0;
    *(v27 + 740) = *(v14 + 22888);
    v26 = 1;
  }

  v513 = v26;
  v28 = v17[2675];
  v29 = v17[2674];
  if (v28 | v29)
  {
    v30 = v15;
    v31 = *(v14 + 3636);
    if (v31 <= *(v14 + 3640))
    {
      v31 = *(v14 + 3640);
    }

    v32 = (v31 + 9) & 0xFFFFFFFE;
    if (v32 == 8)
    {
      v41 = 1;
      v40 = 8;
      if (!v17[2675])
      {
        goto LABEL_52;
      }
    }

    else
    {
      v33 = v17[2672];
      if (v33)
      {
        v34 = 12;
      }

      else
      {
        v34 = 11;
      }

      if (v33)
      {
        v35 = 5;
      }

      else
      {
        v35 = 4;
      }

      v36 = v33 == 0;
      if (v33)
      {
        v37 = 10;
      }

      else
      {
        v37 = 9;
      }

      if (v36)
      {
        v38 = 2;
      }

      else
      {
        v38 = 3;
      }

      if (v32 == 10)
      {
        v39 = v38;
      }

      else
      {
        v37 = 27;
        v39 = 27;
      }

      if (v32 == 12)
      {
        v40 = v34;
      }

      else
      {
        v40 = v37;
      }

      if (v32 == 12)
      {
        v41 = v35;
      }

      else
      {
        v41 = v39;
      }

      if (!v28)
      {
LABEL_52:
        LOBYTE(v15) = v30;
        if (v29 && (v29 == 3 && v41 - 9 < 2 || v41 <= 0x1A && ((1 << v41) & 0x4C00000) != 0 && v29 <= 2))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "populatePictureRegisters";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v29;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
            goto LABEL_275;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_60;
      }
    }

    if (*(v14 + 3600) && (v28 == 2 && v40 == 8 || v28 == 3 && (v40 - 9) <= 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v40;
        *&buf[18] = 1024;
        *&buf[20] = v28;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
LABEL_275:
        v254 = buf;
        v255 = 24;
LABEL_276:
        _os_log_impl(&dword_277606000, v42, OS_LOG_TYPE_DEFAULT, v43, v254, v255);
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_52;
  }

LABEL_60:
  *(v13 + 88) = 766509056;
  v44 = (*(**(this + 32) + 232))(*(this + 32));
  if (v44)
  {
    v45 = (*(*(this + 32) + 2980) == 2) << 13;
  }

  else
  {
    v45 = 0;
  }

  v46 = v7 >> 28;
  v47 = ((v516 != 0) << 12) | ((v516 == 1) << 10) | v45 | *(v13 + 88) & 0xFFFFC15F;
  v48 = v47 & 0xFFFFF500 | 0x2A0;
  v49 = v47 | 0x2B0;
  if (!v515)
  {
    v49 = v48;
  }

  *(v13 + 88) = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFFFFFF0 | 0x40;
  v50 = *(this + 32);
  v51 = v29 & 3 | (4 * (v28 & 3)) | v49 & 0xFFF7FFF0 | 0x40 | ((v50[2652] & 1) << 19);
  *(v13 + 88) = v51;
  v52 = v51 & 0xFFFBFFFF | ((v50[2653] & 1) << 18);
  *(v13 + 88) = v52;
  *(v13 + 88) = v52 & 0xFFFDFFFF | ((v50[2654] & 1) << 17);
  if ((v7 & 1) != 0 && *(v19 + 53) && *(v14 + 22888) > v46 + 1 || (v7 & 2) != 0 && !*(v19 + 53) && *(v19 + 52) && v513 > v46 + 1)
  {
    goto LABEL_78;
  }

  if ((v7 & 0x20) == 0 || (v53 = *(v19 + 53), *(v19 + 53)))
  {
    v53 = 0;
    goto LABEL_79;
  }

  if (!*(v19 + 52) && v511 > v46 + 1)
  {
LABEL_78:
    v53 = (v8 == 0) << 27;
  }

LABEL_79:
  *(v13 + 92) = v53;
  *(v13 + 96) = 0;
  v54 = *(v14 + 3608) - 1;
  *(v13 + 96) = v54;
  v55 = *(v14 + 3612);
  *(v13 + 100) = 0;
  *(v13 + 104) = 0;
  *(v13 + 96) = (v54 | (v55 << 16)) - 0x10000;
  if (*(v19 + 6466))
  {
    v56 = 32 * (*(v19 + 6477) & 1);
    *(v13 + 104) = v56;
    if (*(v19 + 6477))
    {
      v57 = *(v19 + 6484) & 7;
    }

    else
    {
      v57 = 0;
    }

    v59 = v57 | v56;
    *(v13 + 104) = v57 | v56;
    if (v56)
    {
      v60 = (v19 + 6512);
      v61 = (v13 + 112);
      v62 = -1;
      do
      {
        v63 = *v61 & 0xFFFFFFE0 | *v60 & 0x1F;
        *v61 = v63;
        *v61++ = v63 & 0xFFFFFC1F | (32 * (*(v60 - 6) & 0x1F));
        ++v62;
        ++v60;
      }

      while (v62 < v57);
    }

    LOBYTE(v64) = *(v19 + 6477);
    if (v64)
    {
      v64 = *(v19 + 6480);
    }

    v65 = (8 * ((v15 - v64) & 3)) | v59;
    *(v13 + 104) = v65;
    v66 = v65 & 0xFFFFFFBF | ((*(v19 + 6476) & 1) << 6);
    *(v13 + 104) = v66;
    v58 = v66 & 0xFFFFFE7F | ((*(v19 + 6472) & 3) << 7);
  }

  else
  {
    v58 = 8 * (v15 & 3);
  }

  *(v13 + 104) = v58;
  LOBYTE(v67) = *(v19 + 34);
  if (v67)
  {
    v67 = *(v19 + 36);
  }

  v68 = v58 & 0xFFFE7FFF | (((v15 - v67) & 3) << 15);
  *(v13 + 104) = v68;
  v69 = v68 & 0xFFFFF1FF | ((*(v19 + 6460) & 7) << 9);
  *(v13 + 104) = v69;
  v70 = v69 & 0xFFFFEFFF | ((*(v19 + 53) & 1) << 12);
  *(v13 + 104) = v70;
  v71 = v70 & 0xFFFFDFFF | ((*(v19 + 52) & 1) << 13);
  *(v13 + 104) = v71;
  v72 = v71 & 0xFFFFBFFF | ((*(v19 + 51) & 1) << 14);
  *(v13 + 104) = v72;
  v73 = v72 & 0xFFFDFFFF | ((*(v19 + 34) & 1) << 17);
  *(v13 + 104) = v73;
  v74 = v73 & 0xFFFBFFFF | ((*(v19 + 33) & 1) << 18);
  *(v13 + 104) = v74;
  v75 = v74 & 0xFFF7FFFF | ((*(v19 + 32) & 1) << 19);
  *(v13 + 104) = v75;
  v76 = v75 & 0xFFEFFFFF | ((*(v19 + 16) & 1) << 20);
  *(v13 + 104) = v76;
  if ((v49 & 0x2000) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = (*(v14 + 22284) != 0) << 21;
  }

  *(v13 + 104) = v77 | v76 & 0xFFDFFFFF;
  v78 = *(v13 + 108) & 0xFFFFFFE0 | *(v19 + 44) & 0x1F;
  *(v13 + 108) = v78;
  v79 = v78 & 0xFFFFFC1F | (32 * (*(v19 + 40) & 0x1F));
  *(v13 + 108) = v79;
  v80 = *(this + 32);
  if (*(v80 + 12) == 1 && *(v14 + 22864) >= 5u && !*(v19 + 52) && *(v14 + 3600) == 1 && (*(v14 + 3636) | 2) == 2 && (*(v14 + 3640) | 2) == 2)
  {
    v81 = *(v80 + 8184);
    v82 = v79 | 0x80000000;
    *(v13 + 108) = v82;
    v83 = *(v19 + 28) + *(v81 + 1868);
    v84 = v83 + 26;
    v85 = v83 + 11;
    if (v84 > 51)
    {
      v85 = 36;
    }

    if (v84 < 15)
    {
      v85 = 0;
    }

    v86 = v82 & 0xFFFF83FF | ((kTable_8_11_tc[v85] & 0x1F) << 10);
    *(v13 + 108) = v86;
    v87 = *(v19 + 28) + *(v81 + 1868);
    v88 = v87 + 26;
    v89 = v87 + 11;
    if (v88 > 51)
    {
      v89 = 36;
    }

    if (v88 < 15)
    {
      v89 = 0;
    }

    *(v13 + 108) = v86 & 0xFFC07FFF | ((kTable_8_11_beta[v89] & 0x7F) << 15);
    v90 = *(this + 32);
    v91 = 2;
  }

  else
  {
    *(v13 + 108) = v79 & 0x7FC003FF;
    v90 = *(this + 32);
    v91 = *(v90 + 12);
  }

  *(v90 + 16) = v91;
  if (*(v19 + 252))
  {
    CAHDecTansyHevc::copyScalingList(v44, v13 + 136, *(this + 33) + 1792, *(v14 + 3600), v19 + 256);
    v90 = *(this + 32);
  }

  v92 = *(v13 + 88);
  if ((~v92 & 0xC0000) != 0)
  {
    v96 = 0;
    v98 = 0;
    *(v13 + 156) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v93 = *(v90 + 2656);
    if (!v93 || !*(v90 + 2660))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v253 = *(v90 + 2660);
        *buf = 136315650;
        *&buf[4] = "populatePictureRegisters";
        *&buf[12] = 1024;
        *&buf[14] = v93;
        *&buf[18] = 1024;
        *&buf[20] = v253;
        v42 = MEMORY[0x277D86220];
        v43 = "AppleAVD: %s(): invalid stat crop width/height %d/%d";
        goto LABEL_275;
      }

      return 0xFFFFFFFFLL;
    }

    v94 = *(v90 + 2664);
    *(v13 + 156) = v94;
    v95 = *(v90 + 2668);
    v96 = v95 << 16;
    *(v13 + 156) = v94 | (v95 << 16);
    v97 = *(v90 + 2664) + *(v90 + 2656) - 1;
    *(v13 + 160) = *(v90 + 2664) + *(v90 + 2656) - 1;
    v98 = ((*(v90 + 2660) + *(v90 + 2668)) << 16) - 0x10000;
    *(v13 + 160) = v98 & 0xFFFF0000 | v97;
  }

  if (v8)
  {
    v99 = 7340080;
  }

  else
  {
    v99 = 3145776;
  }

  *(v13 + 164) = v99;
  if (!*(*(this + 32) + 2892))
  {
    v100 = *(v14 + 3608) - 1;
    *(v13 + 160) = v98 | v100;
    v101 = (*(v14 + 3612) << 16) - 0x10000;
    *(v13 + 160) = v101 & 0xFFFF0000 | v100;
    if (*(v14 + 3616))
    {
      if ((v92 & 0x800) != 0)
      {
        v102 = *(v14 + 3620) * *(v14 + 22852);
        *(v13 + 156) = v96 | v102;
        *(v13 + 156) = v102 | ((*(v14 + 22856) * *(v14 + 3628)) << 16);
        v103 = *(v14 + 3608) + ~(*(v14 + 3624) * *(v14 + 22852));
        *(v13 + 160) = v103 | v101;
        *(v13 + 160) = v103 | ((*(v14 + 3612) + ~(*(v14 + 3632) * *(v14 + 22856))) << 16);
      }
    }
  }

  v104 = 0;
  v105 = this + 6160;
  do
  {
    *(*(this + 33) + v104 + 168) = 0;
    v106 = *(this + 33) + v104;
    v107 = *(v106 + 168);
    *(v106 + 168) = 0;
    *(*(this + 33) + v104 + 168) ^= 0xFFFFFF00;
    v108 = *(this + 33) + v104;
    v109 = *(v108 + 168);
    *(v108 + 168) = v107;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 168, 0, 0xFFFFFFFFLL, 8, v109, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v104 + 196) = 0;
    *(*(this + 33) + v104 + 196) = *(*(this + 33) + v104 + 196) & 0x800001FF | (((*(this + 2996) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v104 + 464) = 0;
    v111 = *(this + 33) + v104;
    v112 = *(v111 + 464);
    *(v111 + 464) = 0;
    *(*(this + 33) + v104 + 464) ^= 0x3FFu;
    v113 = *(this + 33) + v104;
    v114 = *(v113 + 464);
    *(v113 + 464) = v112;
    if (*v105 || *(v105 + 38) || *(v105 + 39))
    {
      result = CAHDec::addToPatcherList(this, v105, v104 + 464, 0, 0x3FFFFFFFFFFLL, 32, v114, 4);
      if (result)
      {
        return result;
      }
    }

    v104 += 4;
    v105 += 176;
  }

  while (v104 != 28);
  *(*(this + 33) + 224) = 0;
  *(*(this + 33) + 492) = 0;
  if ((*(v13 + 90) & 8) != 0)
  {
    v115 = *(this + 33);
    v116 = *(*(this + 32) + 2680);
    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v522 = 0u;
    v523 = 0u;
    v520 = 0u;
    v521 = 0u;
    v519 = 0u;
    memset(buf, 0, sizeof(buf));
    v117 = (*(v115 + 16) & 0xF) << 9;
    *buf = v116;
    v118 = *(v115 + 224);
    *(v115 + 224) = 0;
    *(*(this + 33) + 224) ^= 0xFFFFFF00;
    v119 = *(this + 33);
    v120 = *(v119 + 224);
    *(v119 + 224) = v118;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 224, v117, 0xFFFFFFFFLL, 8, v120, 4);
      if (result)
      {
        return result;
      }

      if (*buf)
      {
        v121 = 0;
      }

      else
      {
        v121 = DWORD2(v526) == 0;
      }

      LODWORD(v116) = !v121 || HIDWORD(v526) != 0;
    }

    *(*(this + 33) + 492) = 0;
    v123 = *(this + 33);
    v124 = *(v123 + 492);
    *(v123 + 492) = 0;
    *(*(this + 33) + 492) ^= 0x3FFu;
    v125 = *(this + 33);
    v126 = *(v125 + 492);
    *(v125 + 492) = v124;
    if (v116)
    {
      result = CAHDec::addToPatcherList(this, buf, 492, v117, 0x3FFFFFFFFFFLL, 32, v126, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 228) = 0;
  v127 = *(this + 33);
  v128 = *(v127 + 228);
  *(v127 + 228) = 0;
  *(*(this + 33) + 228) ^= 0xFFFFFF00;
  v129 = *(this + 33);
  v130 = *(v129 + 228);
  *(v129 + 228) = v128;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 228, 0, 0xFFFFFFFFLL, 8, v130, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 496) = 0;
  v131 = *(this + 33);
  v132 = *(v131 + 496);
  *(v131 + 496) = 0;
  *(*(this + 33) + 496) ^= 0x3FFu;
  v133 = *(this + 33);
  v134 = *(v133 + 496);
  *(v133 + 496) = v132;
  if (*(this + 1298) || *(this + 2634) || *(this + 2635))
  {
    result = CAHDec::addToPatcherList(this, this + 1298, 496, 0, 0x3FFFFFFFFFFLL, 32, v134, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 232) = 0;
  v135 = *(this + 33);
  v136 = *(v135 + 232);
  *(v135 + 232) = 0;
  *(*(this + 33) + 232) ^= 0xFFFFFF00;
  v137 = *(this + 33);
  v138 = *(v137 + 232);
  *(v137 + 232) = v136;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 232, 0, 0xFFFFFFFFLL, 8, v138, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 500) = 0;
  v139 = *(this + 33);
  v140 = *(v139 + 500);
  *(v139 + 500) = 0;
  *(*(this + 33) + 500) ^= 0x3FFu;
  v141 = *(this + 33);
  v142 = *(v141 + 500);
  *(v141 + 500) = v140;
  if (*(this + 1320) || *(this + 2678) || *(this + 2679))
  {
    result = CAHDec::addToPatcherList(this, this + 1320, 500, 0, 0x3FFFFFFFFFFLL, 32, v142, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 236) = 0;
  v143 = *(this + 33);
  v144 = *(v143 + 236);
  *(v143 + 236) = 0;
  *(*(this + 33) + 236) ^= 0xFFFFFF00;
  v145 = *(this + 33);
  v146 = *(v145 + 236);
  *(v145 + 236) = v144;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 236, 0, 0xFFFFFFFFLL, 8, v146, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 504) = 0;
  v147 = *(this + 33);
  v148 = *(v147 + 504);
  *(v147 + 504) = 0;
  *(*(this + 33) + 504) ^= 0x3FFu;
  v149 = *(this + 33);
  v150 = *(v149 + 504);
  *(v149 + 504) = v148;
  if (*(this + 1342) || *(this + 2722) || *(this + 2723))
  {
    result = CAHDec::addToPatcherList(this, this + 1342, 504, 0, 0x3FFFFFFFFFFLL, 32, v150, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 240) = 0;
  v151 = *(this + 33);
  v152 = *(v151 + 240);
  *(v151 + 240) = 0;
  *(*(this + 33) + 240) ^= 0xFFFFFF00;
  v153 = *(this + 33);
  v154 = *(v153 + 240);
  *(v153 + 240) = v152;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 240, 0, 0xFFFFFFFFLL, 8, v154, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 508) = 0;
  v155 = *(this + 33);
  v156 = *(v155 + 508);
  *(v155 + 508) = 0;
  *(*(this + 33) + 508) ^= 0x3FFu;
  v157 = *(this + 33);
  v158 = *(v157 + 508);
  *(v157 + 508) = v156;
  if (*(this + 1364) || *(this + 2766) || *(this + 2767))
  {
    result = CAHDec::addToPatcherList(this, this + 1364, 508, 0, 0x3FFFFFFFFFFLL, 32, v158, 4);
    if (result)
    {
      return result;
    }
  }

  v512 = v13;
  v514 = v14;
  *(*(this + 33) + 244) = 0;
  v159 = *(this + 33);
  v160 = *(v159 + 244);
  *(v159 + 244) = 0;
  *(*(this + 33) + 244) ^= 0xFFFFFF00;
  v161 = *(this + 33);
  v162 = *(v161 + 244);
  *(v161 + 244) = v160;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 244, 0, 0xFFFFFFFFLL, 8, v162, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 512) = 0;
  v163 = *(this + 33);
  v164 = *(v163 + 512);
  *(v163 + 512) = 0;
  *(*(this + 33) + 512) ^= 0x3FFu;
  v165 = *(this + 33);
  v166 = *(v165 + 512);
  *(v165 + 512) = v164;
  if (*(this + 1386) || *(this + 2810) || *(this + 2811))
  {
    result = CAHDec::addToPatcherList(this, this + 1386, 512, 0, 0x3FFFFFFFFFFLL, 32, v166, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 268) = 0;
  *(*(this + 33) + 536) = 0;
  if (*(*(this + 32) + 16) == 2)
  {
    v167 = *(this + 33);
    v168 = *(v167 + 268);
    *(v167 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF00;
    v169 = *(this + 33);
    v170 = *(v169 + 268);
    *(v169 + 268) = v168;
    if (*(this + 1474) || *(this + 2986) || *(this + 2987))
    {
      result = CAHDec::addToPatcherList(this, this + 1474, 268, 0, 0xFFFFFFFFLL, 8, v170, 4);
      if (result)
      {
        return result;
      }
    }

    v171 = *(this + 33);
    v172 = *(v171 + 536);
    *(v171 + 536) = 0;
    *(*(this + 33) + 536) ^= 0x3FFu;
    v173 = *(this + 33);
    v174 = *(v173 + 536);
    *(v173 + 536) = v172;
    if (*(this + 1474) || *(this + 2986) || *(this + 2987))
    {
      result = CAHDec::addToPatcherList(this, this + 1474, 536, 0, 0x3FFFFFFFFFFLL, 32, v174, 4);
      if (result)
      {
        return result;
      }
    }
  }

  *(*(this + 33) + 248) = 0;
  *(*(this + 33) + 516) = 0;
  v175 = *(this + 33);
  v176 = *(v175 + 248);
  *(v175 + 248) = 0;
  *(*(this + 33) + 248) ^= 0xFFFFFF00;
  v177 = *(this + 33);
  v178 = *(v177 + 248);
  *(v177 + 248) = v176;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 248, 0, 0xFFFFFFFFLL, 8, v178, 4);
    if (result)
    {
      return result;
    }
  }

  v179 = *(this + 33);
  v180 = *(v179 + 516);
  *(v179 + 516) = 0;
  *(*(this + 33) + 516) ^= 0x3FFu;
  v181 = *(this + 33);
  v182 = *(v181 + 516);
  *(v181 + 516) = v180;
  if (*(this + 1408) || *(this + 2854) || *(this + 2855))
  {
    result = CAHDec::addToPatcherList(this, this + 1408, 516, 0, 0x3FFFFFFFFFFLL, 32, v182, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 252) = 0;
  v183 = *(this + 33);
  v184 = *(v183 + 252);
  *(v183 + 252) = 0;
  *(*(this + 33) + 252) ^= 0xFFFFFF00;
  v185 = *(this + 33);
  v186 = *(v185 + 252);
  *(v185 + 252) = v184;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 252, 0, 0xFFFFFFFFLL, 8, v186, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 520) = 0;
  v187 = *(this + 33);
  v188 = *(v187 + 520);
  *(v187 + 520) = 0;
  *(*(this + 33) + 520) ^= 0x3FFu;
  v189 = *(this + 33);
  v190 = *(v189 + 520);
  *(v189 + 520) = v188;
  if (*(this + 924) || *(this + 1886) || *(this + 1887))
  {
    result = CAHDec::addToPatcherList(this, this + 924, 520, 0, 0x3FFFFFFFFFFLL, 32, v190, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 256) = 0;
  v191 = *(this + 33);
  v192 = *(v191 + 256);
  *(v191 + 256) = 0;
  *(*(this + 33) + 256) ^= 0xFFFFFF00;
  v193 = *(this + 33);
  v194 = *(v193 + 256);
  *(v193 + 256) = v192;
  v195 = (this + 176 * v509 + 7568);
  if (*v195 || *(this + 44 * v509 + 1930) || *(this + 44 * v509 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 946, 256, 0, 0xFFFFFFFFLL, 8, v194, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 524) = 0;
  v196 = *(this + 33);
  v197 = *(v196 + 524);
  *(v196 + 524) = 0;
  *(*(this + 33) + 524) ^= 0x3FFu;
  v198 = *(this + 33);
  v199 = *(v198 + 524);
  *(v198 + 524) = v197;
  if (*v195 || *(this + 44 * v509 + 1930) || *(this + 44 * v509 + 1931))
  {
    result = CAHDec::addToPatcherList(this, this + 22 * v509 + 946, 524, 0, 0x3FFFFFFFFFFLL, 32, v199, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 260) = 0;
  v200 = *(this + 33);
  v201 = *(v200 + 260);
  *(v200 + 260) = 0;
  *(*(this + 33) + 260) ^= 0xFFFFFF00;
  v202 = *(this + 33);
  v203 = *(v202 + 260);
  *(v202 + 260) = v201;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 260, 0, 0xFFFFFFFFLL, 8, v203, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 528) = 0;
  v204 = *(this + 33);
  v205 = *(v204 + 528);
  *(v204 + 528) = 0;
  *(*(this + 33) + 528) ^= 0x3FFu;
  v206 = *(this + 33);
  v207 = *(v206 + 528);
  *(v206 + 528) = v205;
  if (*(this + 1430) || *(this + 2898) || *(this + 2899))
  {
    result = CAHDec::addToPatcherList(this, this + 1430, 528, 0, 0x3FFFFFFFFFFLL, 32, v207, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 264) = 0;
  v208 = *(this + 33);
  v209 = *(v208 + 264);
  *(v208 + 264) = 0;
  *(*(this + 33) + 264) ^= 0xFFFFFF00;
  v210 = *(this + 33);
  v211 = *(v210 + 264);
  *(v210 + 264) = v209;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 264, 0, 0xFFFFFFFFLL, 8, v211, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 532) = 0;
  v212 = *(this + 33);
  v213 = *(v212 + 532);
  *(v212 + 532) = 0;
  *(*(this + 33) + 532) ^= 0x3FFu;
  v214 = *(this + 33);
  v215 = *(v214 + 532);
  *(v214 + 532) = v213;
  if (*(this + 1452) || *(this + 2942) || *(this + 2943))
  {
    result = CAHDec::addToPatcherList(this, this + 1452, 532, 0, 0x3FFFFFFFFFFLL, 32, v215, 4);
    if (result)
    {
      return result;
    }
  }

  *(*(this + 33) + 272) = 0;
  *(*(this + 33) + 540) = 0;
  *(*(this + 33) + 276) = 0;
  *(*(this + 33) + 544) = 0;
  *(*(this + 33) + 280) = 0;
  *(*(this + 33) + 548) = 0;
  *(*(this + 33) + 284) = 0;
  *(*(this + 33) + 552) = 0;
  v216 = *(this + 33);
  if (*(*(this + 32) + 2648) == 1)
  {
    v217 = *(v216 + 276);
    *(v216 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v218 = *(this + 33);
    v219 = *(v218 + 276);
    *(v218 + 276) = v217;
    v221 = (v501 + 8);
    v220 = *(v501 + 8);
    if (v505)
    {
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 68), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v222 = *(this + 33);
      v223 = *(v222 + 544);
      *(v222 + 544) = 0;
      *(*(this + 33) + 544) ^= 0x3FFu;
      v224 = *(this + 33);
      v225 = *(v224 + 544);
      *(v224 + 544) = v223;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 544, *(v501 + 68), 0x3FFFFFFFFFFLL, 32, v225, 4);
        if (result)
        {
          return result;
        }
      }

      v226 = *(this + 33);
      v227 = *(v226 + 272);
      *(v226 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v228 = *(this + 33);
      v229 = *(v228 + 272);
      *(v228 + 272) = v227;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 272, *(v501 + 80), 0xFFFFFFFFLL, 7, v229, 4);
        if (result)
        {
          return result;
        }
      }

      v230 = *(this + 33);
      v231 = *(v230 + 540);
      *(v230 + 540) = 0;
      *(*(this + 33) + 540) ^= 0x3FFu;
      v232 = *(this + 33);
      v233 = *(v232 + 540);
      *(v232 + 540) = v231;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 540, *(v501 + 80), 0x3FFFFFFFFFFLL, 32, v233, 4);
        if (result)
        {
          return result;
        }
      }

      if (v507)
      {
        v234 = *(this + 33);
        v235 = *(v234 + 284);
        *(v234 + 284) = 0;
        *(*(this + 33) + 284) ^= 0xFFFFFF80;
        v236 = *(this + 33);
        v237 = *(v236 + 284);
        *(v236 + 284) = v235;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 284, *(v502 + 56), 0xFFFFFFFFLL, 7, v237, 4);
          if (result)
          {
            return result;
          }
        }

        v238 = *(this + 33);
        v239 = *(v238 + 552);
        *(v238 + 552) = 0;
        *(*(this + 33) + 552) ^= 0x3FFu;
        v240 = *(this + 33);
        v241 = *(v240 + 552);
        *(v240 + 552) = v239;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 552, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v241, 4);
          if (result)
          {
            return result;
          }
        }

        v242 = *(this + 33);
        v243 = *(v242 + 280);
        *(v242 + 280) = 0;
        *(*(this + 33) + 280) ^= 0xFFFFFF80;
        v244 = *(this + 33);
        v245 = *(v244 + 280);
        *(v244 + 280) = v243;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          result = CAHDec::addToPatcherList(this, v502, 280, *(v502 + 68), 0xFFFFFFFFLL, 7, v245, 4);
          if (result)
          {
            return result;
          }
        }

        v246 = *(this + 33);
        v247 = *(v246 + 548);
        *(v246 + 548) = 0;
        *(*(this + 33) + 548) ^= 0x3FFu;
        v248 = *(this + 33);
        v249 = *(v248 + 548);
        *(v248 + 548) = v247;
        if (*v502 || *(v502 + 152) || *(v502 + 156))
        {
          v250 = v502;
          v251 = *(v502 + 68);
          v252 = this;
LABEL_343:
          v289 = 548;
LABEL_344:
          result = CAHDec::addToPatcherList(v252, v250, v289, v251, 0x3FFFFFFFFFFLL, 32, v249, 4);
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v220 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 60), 0xFFFFFFFFLL, 7, v219, 4);
        if (result)
        {
          return result;
        }
      }

      v290 = *(this + 33);
      v291 = *(v290 + 284);
      *(v290 + 284) = 0;
      *(*(this + 33) + 284) ^= 0xFFFFFF80;
      v292 = *(this + 33);
      v293 = *(v292 + 284);
      *(v292 + 284) = v291;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 284, *(v501 + 64), 0xFFFFFFFFLL, 7, v293, 4);
        if (result)
        {
          return result;
        }
      }

      v294 = *(this + 33);
      v295 = *(v294 + 272);
      *(v294 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v296 = *(this + 33);
      v297 = *(v296 + 272);
      *(v296 + 272) = v295;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 272, *(v501 + 72), 0xFFFFFFFFLL, 7, v297, 4);
        if (result)
        {
          return result;
        }
      }

      v298 = *(this + 33);
      v299 = *(v298 + 280);
      *(v298 + 280) = 0;
      *(*(this + 33) + 280) ^= 0xFFFFFF80;
      v300 = *(this + 33);
      v301 = *(v300 + 280);
      *(v300 + 280) = v299;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 280, *(v501 + 76), 0xFFFFFFFFLL, 7, v301, 4);
        if (result)
        {
          return result;
        }
      }

      v302 = *(this + 33);
      v303 = *(v302 + 544);
      *(v302 + 544) = 0;
      *(*(this + 33) + 544) ^= 0x3FFu;
      v304 = *(this + 33);
      v305 = *(v304 + 544);
      *(v304 + 544) = v303;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 544, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v305, 4);
        if (result)
        {
          return result;
        }
      }

      v306 = *(this + 33);
      v307 = *(v306 + 552);
      *(v306 + 552) = 0;
      *(*(this + 33) + 552) ^= 0x3FFu;
      v308 = *(this + 33);
      v309 = *(v308 + 552);
      *(v308 + 552) = v307;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 552, *(v501 + 64), 0x3FFFFFFFFFFLL, 32, v309, 4);
        if (result)
        {
          return result;
        }
      }

      v310 = *(this + 33);
      v311 = *(v310 + 540);
      *(v310 + 540) = 0;
      *(*(this + 33) + 540) ^= 0x3FFu;
      v312 = *(this + 33);
      v313 = *(v312 + 540);
      *(v312 + 540) = v311;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        result = CAHDec::addToPatcherList(this, v221, 540, *(v501 + 72), 0x3FFFFFFFFFFLL, 32, v313, 4);
        if (result)
        {
          return result;
        }
      }

      v314 = *(this + 33);
      v315 = *(v314 + 548);
      *(v314 + 548) = 0;
      *(*(this + 33) + 548) ^= 0x3FFu;
      v316 = *(this + 33);
      v249 = *(v316 + 548);
      *(v316 + 548) = v315;
      if (*v221 || *(v501 + 160) || *(v501 + 164))
      {
        v251 = *(v501 + 76);
        v252 = this;
        v250 = (v501 + 8);
        goto LABEL_343;
      }
    }
  }

  else
  {
    v256 = *(v216 + 272);
    *(v216 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v257 = *(this + 33);
    v258 = *(v257 + 272);
    *(v257 + 272) = v256;
    v259 = (this + 176 * v509 + 528);
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 272, 0, 0xFFFFFFFFLL, 7, v258, 4);
      if (result)
      {
        return result;
      }
    }

    v260 = *(this + 33);
    v261 = *(v260 + 540);
    *(v260 + 540) = 0;
    *(*(this + 33) + 540) ^= 0x3FFu;
    v262 = *(this + 33);
    v263 = *(v262 + 540);
    *(v262 + 540) = v261;
    if (*v259 || *(this + 44 * v509 + 170) || *(this + 44 * v509 + 171))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 66, 540, 0, 0x3FFFFFFFFFFLL, 32, v263, 4);
      if (result)
      {
        return result;
      }
    }

    v264 = *(this + 33);
    v265 = *(v264 + 276);
    *(v264 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v266 = *(this + 33);
    v267 = *(v266 + 276);
    *(v266 + 276) = v265;
    v268 = (v501 + 8);
    if (*(v501 + 8) || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v501 + 8), 276, *(v501 + 60), 0xFFFFFFFFLL, 7, v267, 4);
      if (result)
      {
        return result;
      }
    }

    v269 = *(this + 33);
    v270 = *(v269 + 544);
    *(v269 + 544) = 0;
    *(*(this + 33) + 544) ^= 0x3FFu;
    v271 = *(this + 33);
    v272 = *(v271 + 544);
    *(v271 + 544) = v270;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 544, *(v501 + 60), 0x3FFFFFFFFFFLL, 32, v272, 4);
      if (result)
      {
        return result;
      }
    }

    v273 = *(this + 33);
    v274 = *(v273 + 280);
    *(v273 + 280) = 0;
    *(*(this + 33) + 280) ^= 0xFFFFFF80;
    v275 = *(this + 33);
    v276 = *(v275 + 280);
    *(v275 + 280) = v274;
    v277 = (this + 176 * v509 + 3344);
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 280, 0, 0xFFFFFFFFLL, 7, v276, 4);
      if (result)
      {
        return result;
      }
    }

    v278 = *(this + 33);
    v279 = *(v278 + 548);
    *(v278 + 548) = 0;
    *(*(this + 33) + 548) ^= 0x3FFu;
    v280 = *(this + 33);
    v281 = *(v280 + 548);
    *(v280 + 548) = v279;
    if (*v277 || *(this + 44 * v509 + 874) || *(this + 44 * v509 + 875))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v509 + 418, 548, 0, 0x3FFFFFFFFFFLL, 32, v281, 4);
      if (result)
      {
        return result;
      }
    }

    v282 = *(this + 33);
    v283 = *(v282 + 284);
    *(v282 + 284) = 0;
    *(*(this + 33) + 284) ^= 0xFFFFFF80;
    v284 = *(this + 33);
    v285 = *(v284 + 284);
    *(v284 + 284) = v283;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      result = CAHDec::addToPatcherList(this, v268, 284, *(v501 + 64), 0xFFFFFFFFLL, 7, v285, 4);
      if (result)
      {
        return result;
      }
    }

    v286 = *(this + 33);
    v287 = *(v286 + 552);
    *(v286 + 552) = 0;
    *(*(this + 33) + 552) ^= 0x3FFu;
    v288 = *(this + 33);
    v249 = *(v288 + 552);
    *(v288 + 552) = v287;
    if (*v268 || *(v501 + 160) || *(v501 + 164))
    {
      v251 = *(v501 + 64);
      v252 = this;
      v250 = (v501 + 8);
      v289 = 552;
      goto LABEL_344;
    }
  }

  if (!(*(v512 + 88) & 0x2000 | v503))
  {
    *(v512 + 88) |= 0x2000u;
    *(this + v509 + 116) = 1;
    *(*(this + 33) + 288) = 0;
    goto LABEL_465;
  }

  *(this + v509 + 116) = 0;
  *(*(this + 33) + 288) = 0;
  if (v503)
  {
    v317 = 0;
    if (v515)
    {
      v318 = 0x2000000;
    }

    else
    {
      v318 = 0;
    }

    v319 = v530;
    v320 = v529;
    v321 = v528;
    do
    {
      v322 = *v319;
      if (!*v319 || !*(v322 + 48))
      {
        return 0xFFFFFFFFLL;
      }

      v323 = *(v322 + 44);
      if ((*(**(this + 32) + 184))(*(this + 32)))
      {
        v324 = *(this + 32);
        if (v324[689])
        {
          *buf = 0;
          if (((*(*v324 + 312))(v324, v323, buf) & 1) == 0)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              return 0xFFFFFFFFLL;
            }

            v517 = 0;
            v42 = MEMORY[0x277D86220];
            v43 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
            v254 = &v517;
            v255 = 2;
            goto LABEL_276;
          }

          *(v322 + 48) = *buf + 8;
        }
      }

      *(*(this + 33) + v317 + 288) = 0;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFFFFF | ((v503 << 28) - 0x10000000);
      *(*(this + 33) + v317 + 288) &= 0xF3FFFFFF;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFDFFFFFF | v318;
      *(*(this + 33) + v317 + 288) |= 0x1000000u;
      v325 = v504 - *(v322 + 12);
      v326 = v325 & 0x1FFFF;
      if (v325 < -32768)
      {
        v326 = 98304;
      }

      if (v325 <= 0x8000)
      {
        v327 = v326;
      }

      else
      {
        v327 = 0x8000;
      }

      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFE0000 | v327;
      *(*(this + 33) + v317 + 288) = *(*(this + 33) + v317 + 288) & 0xFFFDFFFF | ((*(v322 + 20) == 2) << 17);
      *(*(this + 33) + v317 + 320) = 0;
      *(*(this + 33) + v317 + 556) = 0;
      *(*(this + 33) + v317 + 352) = 0;
      *(*(this + 33) + v317 + 588) = 0;
      *(*(this + 33) + v317 + 384) = 0;
      *(*(this + 33) + v317 + 620) = 0;
      *(*(this + 33) + v317 + 416) = 0;
      *(*(this + 33) + v317 + 652) = 0;
      v328 = *(this + 33);
      if (*(*(this + 32) + 2648) == 1)
      {
        v329 = v317 + 352;
        v330 = v328 + v317;
        v331 = *(v330 + 352);
        *(v330 + 352) = 0;
        *(*(this + 33) + v317 + 352) ^= 0xFFFFFF80;
        v332 = *(this + 33) + v317;
        v333 = *(v332 + 352);
        *(v332 + 352) = v331;
        v334 = *(v322 + 48);
        v335 = *v334;
        if (v505)
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 15), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v336 = *(this + 33) + v317;
          v337 = *(v336 + 588);
          *(v336 + 588) = 0;
          *(*(this + 33) + v317 + 588) ^= 0x3FFu;
          v338 = *(this + 33) + v317;
          v339 = *(v338 + 588);
          *(v338 + 588) = v337;
          v340 = *(v322 + 48);
          if (*v340 || *(v340 + 152) || *(v340 + 156))
          {
            result = CAHDec::addToPatcherList(this, v340, v317 + 588, *(v340 + 60), 0x3FFFFFFFFFFLL, 32, v339, 4);
            if (result)
            {
              return result;
            }
          }

          v341 = *(this + 33) + v317;
          v342 = *(v341 + 320);
          *(v341 + 320) = 0;
          *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
          v343 = *(this + 33) + v317;
          v344 = *(v343 + 320);
          *(v343 + 320) = v342;
          v345 = *(v322 + 48);
          if (*v345 || *(v345 + 152) || *(v345 + 156))
          {
            result = CAHDec::addToPatcherList(this, v345, v317 + 320, *(v345 + 72), 0xFFFFFFFFLL, 7, v344, 4);
            if (result)
            {
              return result;
            }
          }

          v346 = *(this + 33) + v317;
          v347 = *(v346 + 556);
          *(v346 + 556) = 0;
          *(*(this + 33) + v317 + 556) ^= 0x3FFu;
          v348 = *(this + 33) + v317;
          v349 = *(v348 + 556);
          *(v348 + 556) = v347;
          v350 = *(v322 + 48);
          if (*v350 || *(v350 + 152) || *(v350 + 156))
          {
            result = CAHDec::addToPatcherList(this, v350, v317 + 556, *(v350 + 72), 0x3FFFFFFFFFFLL, 32, v349, 4);
            if (result)
            {
              return result;
            }
          }

          if (v507)
          {
            v351 = *(this + 33) + v317;
            v352 = *(v351 + 416);
            *(v351 + 416) = 0;
            *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
            v353 = *(this + 33) + v317;
            v354 = *(v353 + 416);
            *(v353 + 416) = v352;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 416, *(v502 + 56), 0xFFFFFFFFLL, 7, v354, 4);
              if (result)
              {
                return result;
              }
            }

            v355 = *(this + 33) + v317;
            v356 = *(v355 + 652);
            *(v355 + 652) = 0;
            *(*(this + 33) + v317 + 652) ^= 0x3FFu;
            v357 = *(this + 33) + v317;
            v358 = *(v357 + 652);
            *(v357 + 652) = v356;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 652, *(v502 + 56), 0x3FFFFFFFFFFLL, 32, v358, 4);
              if (result)
              {
                return result;
              }
            }

            v359 = *(this + 33) + v317;
            v360 = *(v359 + 384);
            *(v359 + 384) = 0;
            *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
            v361 = *(this + 33) + v317;
            v362 = *(v361 + 384);
            *(v361 + 384) = v360;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              result = CAHDec::addToPatcherList(this, v502, v317 + 384, *(v502 + 68), 0xFFFFFFFFLL, 7, v362, 4);
              if (result)
              {
                return result;
              }
            }

            v363 = *(this + 33) + v317;
            v364 = *(v363 + 620);
            *(v363 + 620) = 0;
            *(*(this + 33) + v317 + 620) ^= 0x3FFu;
            v365 = *(this + 33) + v317;
            v366 = *(v365 + 620);
            *(v365 + 620) = v364;
            if (*v502 || *(v502 + 152) || *(v502 + 156))
            {
              v367 = v317 + 620;
              v368 = v502;
LABEL_462:
              v405 = *(v368 + 68);
LABEL_463:
              result = CAHDec::addToPatcherList(this, v368, v367, v405, 0x3FFFFFFFFFFLL, 32, v366, 4);
              if (result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v335 || *(v334 + 38) || *(v334 + 39))
          {
            result = CAHDec::addToPatcherList(this, v334, v329, *(v334 + 13), 0xFFFFFFFFLL, 7, v333, 4);
            if (result)
            {
              return result;
            }
          }

          v406 = *(this + 33) + v317;
          v407 = *(v406 + 416);
          *(v406 + 416) = 0;
          *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
          v408 = *(this + 33) + v317;
          v409 = *(v408 + 416);
          *(v408 + 416) = v407;
          v410 = *(v322 + 48);
          if (*v410 || *(v410 + 152) || *(v410 + 156))
          {
            result = CAHDec::addToPatcherList(this, v410, v317 + 416, *(v410 + 56), 0xFFFFFFFFLL, 7, v409, 4);
            if (result)
            {
              return result;
            }
          }

          v411 = *(this + 33) + v317;
          v412 = *(v411 + 320);
          *(v411 + 320) = 0;
          *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
          v413 = *(this + 33) + v317;
          v414 = *(v413 + 320);
          *(v413 + 320) = v412;
          v415 = *(v322 + 48);
          if (*v415 || *(v415 + 152) || *(v415 + 156))
          {
            result = CAHDec::addToPatcherList(this, v415, v317 + 320, *(v415 + 64), 0xFFFFFFFFLL, 7, v414, 4);
            if (result)
            {
              return result;
            }
          }

          v416 = *(this + 33) + v317;
          v417 = *(v416 + 384);
          *(v416 + 384) = 0;
          *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
          v418 = *(this + 33) + v317;
          v419 = *(v418 + 384);
          *(v418 + 384) = v417;
          v420 = *(v322 + 48);
          if (*v420 || *(v420 + 152) || *(v420 + 156))
          {
            result = CAHDec::addToPatcherList(this, v420, v317 + 384, *(v420 + 68), 0xFFFFFFFFLL, 7, v419, 4);
            if (result)
            {
              return result;
            }
          }

          v421 = *(this + 33) + v317;
          v422 = *(v421 + 588);
          *(v421 + 588) = 0;
          *(*(this + 33) + v317 + 588) ^= 0x3FFu;
          v423 = *(this + 33) + v317;
          v424 = *(v423 + 588);
          *(v423 + 588) = v422;
          v425 = *(v322 + 48);
          if (*v425 || *(v425 + 152) || *(v425 + 156))
          {
            result = CAHDec::addToPatcherList(this, v425, v317 + 588, *(v425 + 52), 0x3FFFFFFFFFFLL, 32, v424, 4);
            if (result)
            {
              return result;
            }
          }

          v426 = *(this + 33) + v317;
          v427 = *(v426 + 652);
          *(v426 + 652) = 0;
          *(*(this + 33) + v317 + 652) ^= 0x3FFu;
          v428 = *(this + 33) + v317;
          v429 = *(v428 + 652);
          *(v428 + 652) = v427;
          v430 = *(v322 + 48);
          if (*v430 || *(v430 + 152) || *(v430 + 156))
          {
            result = CAHDec::addToPatcherList(this, v430, v317 + 652, *(v430 + 56), 0x3FFFFFFFFFFLL, 32, v429, 4);
            if (result)
            {
              return result;
            }
          }

          v431 = *(this + 33) + v317;
          v432 = *(v431 + 556);
          *(v431 + 556) = 0;
          *(*(this + 33) + v317 + 556) ^= 0x3FFu;
          v433 = *(this + 33) + v317;
          v434 = *(v433 + 556);
          *(v433 + 556) = v432;
          v435 = *(v322 + 48);
          if (*v435 || *(v435 + 152) || *(v435 + 156))
          {
            result = CAHDec::addToPatcherList(this, v435, v317 + 556, *(v435 + 64), 0x3FFFFFFFFFFLL, 32, v434, 4);
            if (result)
            {
              return result;
            }
          }

          v436 = *(this + 33) + v317;
          v437 = *(v436 + 620);
          *(v436 + 620) = 0;
          *(*(this + 33) + v317 + 620) ^= 0x3FFu;
          v438 = *(this + 33) + v317;
          v366 = *(v438 + 620);
          *(v438 + 620) = v437;
          v368 = *(v322 + 48);
          if (*v368 || *(v368 + 152) || *(v368 + 156))
          {
            v367 = v317 + 620;
            goto LABEL_462;
          }
        }
      }

      else
      {
        v369 = v328 + v317;
        v370 = *(v369 + 320);
        *(v369 + 320) = 0;
        *(*(this + 33) + v317 + 320) ^= 0xFFFFFF80;
        v371 = *(this + 33) + v317;
        v372 = *(v371 + 320);
        *(v371 + 320) = v370;
        v373 = *v320;
        if (**v320 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v320, v317 + 320, 0, 0xFFFFFFFFLL, 7, v372, 4);
          if (result)
          {
            return result;
          }
        }

        v374 = *(this + 33) + v317;
        v375 = *(v374 + 556);
        *(v374 + 556) = 0;
        *(*(this + 33) + v317 + 556) ^= 0x3FFu;
        v376 = *(this + 33) + v317;
        v377 = *(v376 + 556);
        *(v376 + 556) = v375;
        if (*v373 || *(v373 + 152) || *(v373 + 156))
        {
          result = CAHDec::addToPatcherList(this, v373, v317 + 556, 0, 0x3FFFFFFFFFFLL, 32, v377, 4);
          if (result)
          {
            return result;
          }
        }

        v378 = *(this + 33) + v317;
        v379 = *(v378 + 352);
        *(v378 + 352) = 0;
        *(*(this + 33) + v317 + 352) ^= 0xFFFFFF80;
        v380 = *(this + 33) + v317;
        v381 = *(v380 + 352);
        *(v380 + 352) = v379;
        v382 = *(v322 + 48);
        if (*v382 || *(v382 + 152) || *(v382 + 156))
        {
          result = CAHDec::addToPatcherList(this, v382, v317 + 352, *(v382 + 52), 0xFFFFFFFFLL, 7, v381, 4);
          if (result)
          {
            return result;
          }
        }

        v383 = *(this + 33) + v317;
        v384 = *(v383 + 588);
        *(v383 + 588) = 0;
        *(*(this + 33) + v317 + 588) ^= 0x3FFu;
        v385 = *(this + 33) + v317;
        v386 = *(v385 + 588);
        *(v385 + 588) = v384;
        v387 = *(v322 + 48);
        if (*v387 || *(v387 + 152) || *(v387 + 156))
        {
          result = CAHDec::addToPatcherList(this, v387, v317 + 588, *(v387 + 52), 0x3FFFFFFFFFFLL, 32, v386, 4);
          if (result)
          {
            return result;
          }
        }

        v388 = *(this + 33) + v317;
        v389 = *(v388 + 384);
        *(v388 + 384) = 0;
        *(*(this + 33) + v317 + 384) ^= 0xFFFFFF80;
        v390 = *(this + 33) + v317;
        v391 = *(v390 + 384);
        *(v390 + 384) = v389;
        v392 = *v321;
        if (**v321 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, *v321, v317 + 384, 0, 0xFFFFFFFFLL, 7, v391, 4);
          if (result)
          {
            return result;
          }
        }

        v393 = *(this + 33) + v317;
        v394 = *(v393 + 620);
        *(v393 + 620) = 0;
        *(*(this + 33) + v317 + 620) ^= 0x3FFu;
        v395 = *(this + 33) + v317;
        v396 = *(v395 + 620);
        *(v395 + 620) = v394;
        if (*v392 || *(v392 + 152) || *(v392 + 156))
        {
          result = CAHDec::addToPatcherList(this, v392, v317 + 620, 0, 0x3FFFFFFFFFFLL, 32, v396, 4);
          if (result)
          {
            return result;
          }
        }

        v397 = *(this + 33) + v317;
        v398 = *(v397 + 416);
        *(v397 + 416) = 0;
        *(*(this + 33) + v317 + 416) ^= 0xFFFFFF80;
        v399 = *(this + 33) + v317;
        v400 = *(v399 + 416);
        *(v399 + 416) = v398;
        v401 = *(v322 + 48);
        if (*v401 || *(v401 + 152) || *(v401 + 156))
        {
          result = CAHDec::addToPatcherList(this, v401, v317 + 416, *(v401 + 56), 0xFFFFFFFFLL, 7, v400, 4);
          if (result)
          {
            return result;
          }
        }

        v402 = *(this + 33) + v317;
        v403 = *(v402 + 652);
        *(v402 + 652) = 0;
        *(*(this + 33) + v317 + 652) ^= 0x3FFu;
        v404 = *(this + 33) + v317;
        v366 = *(v404 + 652);
        *(v404 + 652) = v403;
        v368 = *(v322 + 48);
        if (*v368 || *(v368 + 152) || *(v368 + 156))
        {
          v367 = v317 + 652;
          v405 = *(v368 + 56);
          goto LABEL_463;
        }
      }

      v317 += 4;
      ++v319;
      ++v320;
      ++v321;
    }

    while (4 * v503 != v317);
  }

LABEL_465:
  *(*(this + 33) + 448) = 0;
  *(*(this + 33) + 452) = 0;
  *(*(this + 33) + 456) = 0;
  *(*(this + 33) + 460) = 0;
  if (!v516)
  {
    goto LABEL_527;
  }

  v439 = *(this + 32);
  if (v510 && v506 == 2)
  {
    v440 = *(*(v439 + 8248) + 60);
    v441 = *(this + 33);
    v442 = *(v441 + 448);
    *(v441 + 448) = 0;
    *(*(this + 33) + 448) ^= 0xFFFFFFC0;
    v443 = *(this + 33);
    v444 = *(v443 + 448);
    *(v443 + 448) = v442;
    v445 = *(*(this + 32) + 8248);
    if (!*v445 && !*(v445 + 152) && !*(v445 + 156) || (result = CAHDec::addToPatcherList(this, v445, 448, v440, 0xFFFFFFFFLL, 6, v444, 4), !result))
    {
      if ((v446 = *(this + 33), v447 = *(v446 + 684), *(v446 + 684) = 0, *(*(this + 33) + 684) ^= 0x3FFu, v448 = *(this + 33), v449 = *(v448 + 684), *(v448 + 684) = v447, v450 = *(*(this + 32) + 8248), !*v450) && !*(v450 + 152) && !*(v450 + 156) || (result = CAHDec::addToPatcherList(this, v450, 684, v440, 0x3FFFFFFFFFFLL, 32, v449, 4), !result))
      {
        if (!v507 || ((v451 = *(v502 + 56), v452 = *(this + 33), v453 = *(v452 + 452), *(v452 + 452) = 0, *(*(this + 33) + 452) ^= 0xFFFFFFC0, v454 = *(this + 33), v455 = *(v454 + 452), *(v454 + 452) = v453, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 452, v451, 0xFFFFFFFFLL, 6, v455, 4), !result)) && ((v456 = *(this + 33), v457 = *(v456 + 688), *(v456 + 688) = 0, *(*(this + 33) + 688) ^= 0x3FFu, v458 = *(this + 33), v459 = *(v458 + 688), *(v458 + 688) = v457, !*v502) && !*(v502 + 152) && !*(v502 + 156) || (result = CAHDec::addToPatcherList(this, v502, 688, v451, 0x3FFFFFFFFFFLL, 32, v459, 4), !result)))
        {
          if (v508)
          {
            *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 84) >> 6) & 0xFFF) << 6);
            if (!v507)
            {
              goto LABEL_527;
            }

            v460 = v502;
            goto LABEL_488;
          }

          if (CAHDecTansyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(this + 3000) >> 6) & 0xFFF) << 6);
          if (!v507)
          {
LABEL_527:
            v490 = *(this + 32);
            if (*(v490 + 2360) == 1)
            {
              v491 = *(this + 33);
              *(v491 + 788) = *(v491 + 788) & 0xFFFFFFFE | *(v490 + 2508) & 1;
              if (*(v490 + 2508))
              {
                *(v491 + 2788) = 0x10000000;
                *(v491 + 2792) = *(v490 + 2368);
                *(v491 + 2800) = 0;
                *(v491 + 2796) = 0;
                *(v491 + 2808) = *(v490 + 2372);
                v492 = *(v490 + 2404);
                *(v491 + 2824) = *(v490 + 2388);
                *(v491 + 2840) = v492;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFFD | (2 * (*(v490 + 2512) & 1));
              if (*(v490 + 2512))
              {
                *(v491 + 2856) = 0;
                if (!*(v490 + 2424))
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): H13A descrambler is not supported\n";
LABEL_549:
                  v254 = buf;
                  v255 = 12;
                  goto LABEL_276;
                }

                *(v490 + 2640) = 0;
                v493 = *(v491 + 2856) & 0xF7FFFFF | ((*(v490 + 2420) & 1) << 23) | 0x20000000;
                *(v491 + 2856) = v493;
                *(v491 + 2856) = v493 & 0xFFC00000 | (*(v490 + 2364) == 0);
                v494 = *(v490 + 2428);
                v495 = *(v490 + 2460);
                *(v491 + 2876) = *(v490 + 2444);
                *(v491 + 2892) = v495;
                *(v491 + 2860) = v494;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFFB | (4 * (*(v490 + 2516) & 1));
              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFF7 | (8 * (*(v490 + 2520) & 1));
              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFEF | (16 * (*(v490 + 2524) & 1));
              *(v491 + 3016) = 0;
              if (*(v490 + 2476) == 2)
              {
                v496 = 805306368;
              }

              else
              {
                v496 = 813694976;
              }

              *(v491 + 3016) = v496;
              memcpy((v491 + 3020), (v490 + 2480), 4 * *(v490 + 2476));
              if (*(v490 + 2516))
              {
                *(v490 + 2516) = 0;
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFDF | (32 * (*(v490 + 2632) & 1));
              if (*(v490 + 2632))
              {
                *(v491 + 2908) = 0x80000000;
                v497 = ((*(v490 + 2528) & 1) << 27) | 0x80000000;
                *(v491 + 2908) = v497;
                *(v491 + 2908) = v497 | (((2 * *(v490 + 2528)) & 4 | (*(v490 + 2528) >> 1) & 2 | (*(v490 + 2528) >> 3) & 1) << 24);
                v498 = *(v490 + 2532);
                v499 = *(v490 + 2548);
                *(v491 + 2944) = *(v490 + 2564);
                *(v491 + 2928) = v499;
                *(v491 + 2912) = v498;
                *(v491 + 2960) = *(v490 + 2580);
                *(v491 + 2968) = *(v490 + 2588);
                v500 = *(v490 + 2528);
                if ((v500 & 6) != 0 && (v500 & 8) == 0)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    return 0xFFFFFFFFLL;
                  }

                  *buf = 136315138;
                  *&buf[4] = "populatePictureRegisters";
                  v42 = MEMORY[0x277D86220];
                  v43 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
                  goto LABEL_549;
                }

                *(v491 + 2976) = *(v490 + 2596);
              }

              *(*(this + 33) + 788) = *(*(this + 33) + 788) & 0xFFFFFFBF | ((*(v490 + 2636) & 1) << 6);
              if (*(v490 + 2636))
              {
                result = 0;
                *(v491 + 2992) = -1879048192;
                *(v491 + 2992) = ((*(v490 + 2612) & 1) << 23) | 0x90000000;
                *(v491 + 2996) = *(v490 + 2616);
                *(v490 + 2640) = 1;
                return result;
              }
            }

            return 0;
          }

          goto LABEL_525;
        }
      }
    }

    return result;
  }

  v462 = *(v439 + 2892);
  if (*(v439 + 2892))
  {
    v463 = *(v439 + 2904);
    v462 = *(v439 + 2908);
  }

  else
  {
    v463 = 0;
  }

  v464 = *(v439 + 8248);
  v465 = *(v464 + 52);
  v466 = v465 + v463;
  if (__CFADD__(v465, v463))
  {
    v467 = 1;
LABEL_498:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    *&buf[4] = "populatePictureRegisters";
    *&buf[12] = 1024;
    *&buf[14] = v467;
    v42 = MEMORY[0x277D86220];
    v43 = "AppleAVD: %s(): failKind = %d";
    v254 = buf;
    v255 = 18;
    goto LABEL_276;
  }

  v468 = *(v464 + 56);
  v469 = v468 + v462;
  if (__CFADD__(v468, v462))
  {
    v467 = 2;
    goto LABEL_498;
  }

  v470 = *(this + 33);
  v471 = *(v470 + 448);
  *(v470 + 448) = 0;
  *(*(this + 33) + 448) ^= 0xFFFFFFC0;
  v472 = *(this + 33);
  v473 = *(v472 + 448);
  *(v472 + 448) = v471;
  v474 = *(*(this + 32) + 8248);
  if (!*v474 && !*(v474 + 152) && !*(v474 + 156) || (result = CAHDec::addToPatcherList(this, v474, 448, v466, 0xFFFFFFFFLL, 6, v473, 4), !result))
  {
    if ((v475 = *(this + 33), v476 = *(v475 + 684), *(v475 + 684) = 0, *(*(this + 33) + 684) ^= 0x3FFu, v477 = *(this + 33), v478 = *(v477 + 684), *(v477 + 684) = v476, v479 = *(*(this + 32) + 8248), !*v479) && !*(v479 + 152) && !*(v479 + 156) || (result = CAHDec::addToPatcherList(this, v479, 684, v466, 0x3FFFFFFFFFFLL, 32, v478, 4), !result))
    {
      if ((v480 = *(this + 33), v481 = *(v480 + 452), *(v480 + 452) = 0, *(*(this + 33) + 452) ^= 0xFFFFFFC0, v482 = *(this + 33), v483 = *(v482 + 452), *(v482 + 452) = v481, v484 = *(*(this + 32) + 8248), !*v484) && !*(v484 + 152) && !*(v484 + 156) || (result = CAHDec::addToPatcherList(this, v484, 452, v469, 0xFFFFFFFFLL, 6, v483, 4), !result))
      {
        if ((v485 = *(this + 33), v486 = *(v485 + 688), *(v485 + 688) = 0, *(*(this + 33) + 688) ^= 0x3FFu, v487 = *(this + 33), v488 = *(v487 + 688), *(v487 + 688) = v486, v489 = *(*(this + 32) + 8248), !*v489) && !*(v489 + 152) && !*(v489 + 156) || (result = CAHDec::addToPatcherList(this, v489, 688, v469, 0x3FFFFFFFFFFLL, 32, v488, 4), !result))
        {
          if (v508)
          {
            *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(*(*(this + 32) + 8248) + 76) >> 6) & 0xFFF) << 6);
            v460 = *(*(this + 32) + 8248);
LABEL_488:
            v461 = (v460 + 80);
LABEL_526:
            *(*(this + 33) + 460) = *(*(this + 33) + 460) & 0xFFF8003F | (((*v461 >> 6) & 0x1FFF) << 6);
            goto LABEL_527;
          }

          if (CAHDecTansyHevc::getSWRStride(this, *(v512 + 160) - *(v512 + 156) + 1, v514[909], v514[910], v514[5713]))
          {
            return 0xFFFFFFFFLL;
          }

          *(*(this + 33) + 456) = *(*(this + 33) + 456) & 0xFFFC003F | (((*(this + 3000) >> 6) & 0xFFF) << 6);
LABEL_525:
          v461 = (this + 12004);
          goto LABEL_526;
        }
      }
    }
  }

  return result;
}

uint64_t CAHDecThymeHevc::getTileIdxAbove(CAHDecThymeHevc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 692);
  if (a2 % v2)
  {
    v3 = v2 > a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2 % v2 + (a2 / v2 - 1) * v2;
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t CAHDecThymeHevc::populateAvdWork(CAHDecThymeHevc *this, unsigned int a2)
{
  v128[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(v3 + 8208);
  v6 = *(v3 + 8168);
  v98 = *(v3 + 8184);
  v7 = *(v3 + 8924);
  v8 = *(v3 + 2960);
  v9 = *(v3 + 2964);
  v10 = *(v3 + 8176) + 9856 * *(v3 + 8212);
  v128[0] = 0;
  v128[1] = 0;
  v127 = 0;
  v11 = v7 >> 28;
  v99 = v6 + 23176 * v5;
  if (v7)
  {
    if (*(v10 + 53))
    {
      v13 = *(v99 + 22888) > v11 + 1;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13 && v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  v108 = *(v4 + 694) * *(v4 + 692);
  if ((v7 & 2) != 0 && *(v10 + 52))
  {
    if (*(v10 + 53) | v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v108 > v11 + 1;
    }

    v16 = v15;
    v118 = v16;
  }

  else
  {
    v118 = 0;
  }

  v101 = *(v99 + 22888);
  if ((v7 & 0x20) != 0 && !*(v10 + 53))
  {
    if (*(v10 + 52) | v9)
    {
      v71 = 0;
    }

    else
    {
      v71 = v8 > v11 + 1;
    }

    v72 = v71;
    v110 = v72;
  }

  else
  {
    v110 = 0;
  }

  v17 = 0;
  v121 = *(v99 + 22880);
  v18 = v11 + 2;
  v113 = v12;
  v19 = v12 | v118;
  if (!(((v7 & 4) == 0) | (v12 | v118) & 1) && (v110 & 1) == 0)
  {
    v17 = *(*(this + *(this + 13) + 34) + 16) & (v11 + 1);
  }

  v111 = v10;
  v123 = 0;
  v124 = 0;
  memset_pattern16(__b, &unk_27775BC00, 8uLL);
  v20 = v4 + 223836;
  v91 = v19 | v110;
  if ((v19 | v110))
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  v22 = v17 + v21;
  v107 = v21;
  v23 = 48 * (0x1000 / v21);
  v95 = v17;
  v24 = v17;
  v25 = v17;
  do
  {
    v128[v25] = v20 + (v25 - v17) * v23;
    ++v25;
  }

  while (v25 < v22);
  v93 = v23;
  v94 = v22;
  v116 = 0;
  v26 = 0;
  v112 = 0;
  v122 = 0;
  v27 = 0;
  v117 = 0;
  v114 = 0;
  v104 = 0;
  v100 = 0;
  v28 = v128[v24];
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
  LOBYTE(v30) = v113;
  if (v113)
  {
    v31 = 12;
  }

  else
  {
    v31 = 4;
  }

  v103 = v31;
  v92 = v24;
  v97 = &__b[v24];
  v32 = 0;
  v106 = v4 + 3384;
  v33 = v95;
  v105 = v20;
  do
  {
    v34 = v98 + 2360 * v32;
    if (!((*(v111 + 52) != 0) | v30 & 1))
    {
      v37 = 1;
LABEL_43:
      v38 = 0;
      v102 = 0;
      v109 = 368 * v32;
      v115 = v37;
      v119 = v32;
      v120 = v98 + 2360 * v32;
      while (1)
      {
        if (!(v38 | v32))
        {
          *(v28 + 4) = 0;
          *(v28 + 6) = v33;
          *(v28 + 8) = 0;
          *(v28 + 12) = 0;
          v112 = *(v106 + v109);
          if (!(*(**(this + 32) + 440))())
          {
            return 0xFFFFFFFFLL;
          }

          v42 = *(v34 + 36);
          *(v28 + 32) = v42;
          *(v28 + 36) = v42;
          HIDWORD(v122) = 0;
          *(v28 + 44) = (*(*this + 80))(this, v26, v121);
          v43 = 271;
          v32 = v119;
          goto LABEL_146;
        }

        if (!v38)
        {
          break;
        }

        v30 = *(*(v34 + 1904) + 4 * v38 - 4) + 1;
        if (*(v111 + 52))
        {
          if (*(v111 + 53))
          {
            v39 = *(v99 + 22880);
            v40 = (v39 + v122) / v39;
            v30 += v102;
            if (v40 >= *(*(this + 33) + 2 * (HIDWORD(v104) + 1) + 738))
            {
              LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
              v102 = 0;
              v27 = v103;
            }

            else
            {
              LODWORD(v122) = v100 + v40 * v39;
              if (!v113)
              {
                v102 = v30;
                LOBYTE(v30) = 0;
                v32 = v119;
                goto LABEL_147;
              }

              v102 = 0;
              v41 = __b[v33];
              __b[v33] = 0;
              if (v41)
              {
                v27 = 72;
              }

              else
              {
                v27 = 8;
              }
            }
          }

          else
          {
            LODWORD(v122) = (*(*this + 72))(this, (v26 + 1), v121);
            v27 = 4;
          }
        }

        else if (v113)
        {
          LODWORD(v122) = (*(v99 + 22880) + v122) / *(v99 + 22880) * *(v99 + 22880);
          v27 = 8;
        }

        v52 = 48 * v29;
        v53 = v124;
        if (*v124 || *(v124 + 152) || *(v124 + 156))
        {
          v54 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 2061;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v54 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223858, HIDWORD(v122) + v54, 0x3FFFFFFFFFFLL, 32, -1, 2);
          if (result)
          {
            return result;
          }

          v53 = v124;
          if (*v124)
          {
            goto LABEL_92;
          }
        }

        if (*(v53 + 152) || *(v53 + 156))
        {
LABEL_92:
          v55 = v123;
          if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 136315394;
            *(buf + 4) = "populateAvdWork";
            WORD2(buf[1]) = 1024;
            *(&buf[1] + 6) = 2062;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v55 = v123;
          }

          result = CAHDec::addToPatcherList(this, v53, v52 + 223860, HIDWORD(v122) + v55, 0xFFFFFFFFLL, 0, -1, 4);
          if (result)
          {
            return result;
          }
        }

        *(v28 + 28) = v30;
        HIDWORD(v122) += v30;
        v51 = v107;
        v20 = v105;
        v30 = v113;
LABEL_97:
        v56 = v26 + 1;
        if (v26 + 1 < v108)
        {
          v57 = (*(*this + 72))(this, (v26 + 1), v121);
          v58 = v103;
          if (v122 != v57)
          {
            v58 = 0;
          }

          v27 |= v58;
        }

        *(v28 + 16) = v27;
        if (v116 == a2 - 1)
        {
          *(v28 + 18) |= 2u;
        }

        if (v26 == v108 - 1)
        {
          *(v28 + 18) |= 4u;
        }

        v59 = v118;
        if (v26 != v108 - 2)
        {
          v59 = 0;
        }

        if (v59 == 1)
        {
          *(v28 + 18) |= 4u;
        }

        if (v30 && ((v60 = *(v28 + 10), v101 > 1) ? (v61 = v101 - 2 == v60) : (v61 = 0), !v61 ? (v62 = 0) : (v62 = 1), v101 - 1 == v60 || v62))
        {
          *(v28 + 18) |= 8u;
          if ((v27 & 4) != 0)
          {
LABEL_121:
            v63 = v117;
            if (*(v111 + 52) && *(v111 + 53))
            {
              v64 = *(this + 33);
              v65 = *(v64 + 692);
              LODWORD(v104) = (v33 - *(v64 + 738 + 2 * (v56 / v65)) + *(v64 + 738 + 2 * (v56 / v65 + 1))) % v51;
              HIDWORD(v104) = v56 / v65;
              v100 = *(v64 + 2 * (v56 % v65) + 696);
              memset_pattern16(v97, &unk_27775BC00, 4 * (v107 - 1) + 4);
            }

            v26 = (v26 + 1);
            goto LABEL_125;
          }
        }

        else if ((v27 & 4) != 0)
        {
          goto LABEL_121;
        }

        v63 = v117;
LABEL_125:
        if ((v27 & 0x44) != 0 && v63 <= (*(*this + 88))(this, v26))
        {
          v27 |= 0x20u;
        }

        if (!v38)
        {
          v66 = v114;
          if (!*(v120 + 32))
          {
            v66 = v122;
          }

          v114 = v66;
          if (!*(v120 + 32))
          {
            v63 = v26;
          }
        }

        if ((v27 & 0x44) != 0)
        {
          v67 = *(*(this + 33) + 692);
          if (v63 / v67 + 1 == v26 / v67)
          {
            v27 |= 0x10u;
          }
        }

        ++*(&v128[-1] + v33);
        v128[v33] += 48;
        v68 = v122 / v121;
        if (v30)
        {
          v33 = (v104 + v68 - HIDWORD(v104)) % v51;
        }

        if (v118)
        {
          v33 = v26 % v51;
        }

        v69 = v110 ^ 1;
        if (v38)
        {
          v69 = 1;
        }

        v117 = v63;
        if ((v69 & 1) == 0 && !*(v120 + 32))
        {
          v33 = (v33 + 1) % v51;
        }

        v28 = v128[v33];
        v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v20) >> 4);
        *(v28 + 4) = *(&v128[-1] + v33);
        *(v28 + 6) = v33;
        *(v28 + 8) = v119;
        *(v28 + 10) = v68;
        *(v28 + 12) = v26;
        *(v28 + 32) = v122;
        *(v28 + 36) = v114;
        v70 = (*(*this + 80))(this, v26, v121);
        v32 = v119;
        *(v28 + 44) = v70;
        v43 = v27;
        v116 = v119;
        v34 = v120;
LABEL_146:
        *(v28 + 14) = v43;
LABEL_147:
        if (v115 == ++v38)
        {
          goto LABEL_40;
        }
      }

      v44 = 48 * v29;
      v45 = v124;
      if (*v124 || *(v124 + 152) || *(v124 + 156))
      {
        v46 = v123;
        v47 = HIDWORD(v122);
        if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "populateAvdWork";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = 1985;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v46 = v123;
        }

        result = CAHDec::addToPatcherList(this, v45, v44 + 223858, HIDWORD(v122) + v46, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v45 = v124;
        if (*v124)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v47 = HIDWORD(v122);
      }

      if (!*(v45 + 152) && !*(v45 + 156))
      {
LABEL_69:
        *(v28 + 28) = v112 - v47;
        v50 = *(v106 + v109);
        if (!(*(**(this + 32) + 440))(*(this + 32), v119, &v124, &v123))
        {
          return 0xFFFFFFFFLL;
        }

        v112 = v50;
        if (*(v120 + 32))
        {
          v27 = 2;
        }

        else
        {
          v27 = 258;
        }

        v30 = v113;
        LODWORD(v122) = *(v120 + 36);
        if (v113)
        {
          v51 = v107;
          v20 = v105;
          if (*(v120 + 36) % v121 == v100)
          {
            HIDWORD(v122) = 0;
            if (__b[v33])
            {
              v27 |= 0x48u;
              __b[v33] = 0;
            }

            else
            {
              v27 |= 8u;
            }
          }

          else
          {
            HIDWORD(v122) = 0;
          }
        }

        else
        {
          HIDWORD(v122) = 0;
          v51 = v107;
          v20 = v105;
        }

        goto LABEL_97;
      }

LABEL_65:
      v49 = v123;
      if ((v123 + v47) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 1986;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v49 = v123;
      }

      result = CAHDec::addToPatcherList(this, v45, v44 + 223860, v47 + v49, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }

      goto LABEL_69;
    }

    v35 = *(v34 + 1896);
    v36 = __CFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      goto LABEL_43;
    }

LABEL_40:
    ++v32;
  }

  while (v32 != a2);
  v73 = v124;
  v74 = 48 * v29;
  if (!*v124 && !*(v124 + 152) && !*(v124 + 156))
  {
    v76 = HIDWORD(v122);
    v77 = v107;
LABEL_172:
    if (*(v73 + 152) || *(v73 + 156))
    {
LABEL_174:
      v78 = v74 + 223858;
      v79 = v123;
      if ((v123 + v76) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populateAvdWork";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2157;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
        v79 = v123;
      }

      result = CAHDec::addToPatcherList(this, v73, v78 + 2, v76 + v79, 0xFFFFFFFFLL, 0, -1, 4);
      if (result)
      {
        return result;
      }
    }

    *(v28 + 28) = v112 - v76;
    *(v28 + 16) = 917519;
    ++*(&v128[-1] + v33);
    v80 = v92;
    if (v110)
    {
      v81 = 0;
      buf[0] = 0;
      buf[1] = 0;
      do
      {
        buf[v81] = v20 + v81 * v93;
        ++v81;
      }

      while (v77 != v81);
      v82 = buf[0];
      v83 = *(buf[0] + 8) + 1;
      if (v83 >= a2)
      {
        v84 = 0;
        v87 = buf;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = v91 & 1;
        v87 = buf;
        do
        {
          if (*(v82 + 4) + 1 == *(&v128[-1] + v84))
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
          }

          else if (v83 == *(v82 + 56))
          {
            *v87 = v82 + 48;
            v84 = v85;
            v86 = v85;
          }

          else
          {
            v84 = v86;
            *(v82 + 40) = *(buf[v86] + 36);
            *v87 = v82 + 48;
          }

          v85 = v86;
          v86 = (v86 + 1) % v77;
          v87 = &buf[v84];
          v82 = *v87;
          v83 = *(*v87 + 8) + 1;
        }

        while (v83 < a2);
      }

      v88 = *(&v128[-1] + v84);
      if (*(v82 + 4) + 1 != v88)
      {
        do
        {
          v89 = *(v82 + 52);
          v82 += 48;
        }

        while (v89 + 1 != v88);
        *v87 = v82;
      }

      *(v82 + 40) = *(v82 + 44) + 1;
    }

    v90 = *(this + 33) + 36;
    do
    {
      result = 0;
      *(v90 + 2 * v80 - 8) = *(&v128[-1] + v80);
      *(v90 + 4 * v80) = (v80 - v95) * v93 + 223836;
      ++v80;
    }

    while (v80 < v94);
    return result;
  }

  v75 = v123;
  v76 = HIDWORD(v122);
  v77 = v107;
  if ((v123 + HIDWORD(v122)) >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "populateAvdWork";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 2156;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v75 = v123;
  }

  result = CAHDec::addToPatcherList(this, v73, v74 + 223858, HIDWORD(v122) + v75, 0x3FFFFFFFFFFLL, 32, -1, 2);
  if (!result)
  {
    v73 = v124;
    if (!*v124)
    {
      goto LABEL_172;
    }

    goto LABEL_174;
  }

  return result;
}

uint64_t CAHDecThymeHevc::allocWorkBuf_SPS(CAHDecThymeHevc *this, _DWORD *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a2 + 5120;
  v5 = a2[902];
  v6 = a2[903];
  v7 = a2[900];
  if (v5 < (*(*this + 104))(this) || (v8 = a2[903], v8 < (*(*this + 112))(this)) || (v9 = a2[909], v9 > (*(*this + 120))(this) - 8) || (v10 = a2[910], v10 > (*(*this + 128))(this) - 8) || (v17 = v4[598], v17 - 16 > 0x30) || ((1 << (v17 - 16)) & 0x1000000010001) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2[902];
      v12 = a2[903];
      v13 = a2[909];
      v14 = a2[910];
      v15 = v4[598];
      v50 = 136316418;
      v51 = "allocWorkBuf_SPS";
      v52 = 1024;
      v53 = v11;
      v54 = 1024;
      *v55 = v12;
      *&v55[4] = 1024;
      *&v55[6] = v13;
      v56 = 1024;
      v57 = v14;
      v58 = 1024;
      v59 = v15;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): unsupported bit stream w %d h %d bd %d %d CtbSizeY %d\n", &v50, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }

  v18 = v5 + 31;
  if (v5 < -31)
  {
    v18 = v5 + 62;
  }

  v19 = v18 >> 5;
  v20 = v6 + 31;
  if (v6 < -31)
  {
    v20 = v6 + 62;
  }

  v21 = v20 >> 5;
  v22 = 32 - __clz(v19 - 1);
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = 32 - __clz(v21 - 1);
  if (v21 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = ((32 << (v25 + v23)) + 127) & 0xFFFFFF80;
  if (v7)
  {
    v27 = v5 << (v7 == 3);
    v28 = v27 + 31;
    v29 = v27 + 62;
    if (v28 >= 0)
    {
      v29 = v28;
    }

    v30 = v29 >> 5;
    if (v7 == 1)
    {
      v31 = v6 + 1;
    }

    else
    {
      v31 = v6;
    }

    v32 = v31 >> (v7 == 1);
    v34 = v32 + 15;
    v33 = v32 < -15;
    v35 = v32 + 30;
    if (!v33)
    {
      v35 = v34;
    }

    v36 = v35 >> 4;
    if (v30 > 1)
    {
      v37 = 32 - __clz(v30 - 1);
      goto LABEL_32;
    }
  }

  else
  {
    v36 = 0;
  }

  LOBYTE(v37) = 0;
LABEL_32:
  v38 = 32 - __clz(v36 - 1);
  if (v36 >= 2)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = ((8 << (v39 + v37)) + 127) & 0xFFFFFF80;
  if (!v7)
  {
    v40 = 0;
  }

  *(this + 2992) = v26;
  *(this + 2993) = v40;
  *(this + 1497) = 0;
  v41 = (v17 & 0xFFFFFFF0) * (v17 >> 4) * v4[600];
  *(this + 2998) = v41;
  *(this + 2997) = v4[602] * v41;
  if (*(*(this + 32) + 2648))
  {
LABEL_44:
    v46 = (this + 7568);
    v47 = 16;
    while (1)
    {
      v48 = *(this + 2997);
      if (v48)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v46, v48, 7, 1, 0))
        {
          break;
        }
      }

      result = 0;
      v46 += 11;
      if (!--v47)
      {
        return result;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2423;
    v54 = 2080;
    *v55 = "MvColo";
    v49 = MEMORY[0x277D86220];
  }

  else
  {
    v42 = (this + 3344);
    v43 = 16;
    while (1)
    {
      v44 = *(this + 2992);
      if (v44 && CAVDDecoder::allocAVDMem(*(this + 32), v42 - 176, v44, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v50 = 136315650;
        v51 = "allocWorkBuf_SPS";
        v52 = 1024;
        v53 = 2414;
        v54 = 2080;
        *v55 = "HdrY";
        v49 = MEMORY[0x277D86220];
        goto LABEL_55;
      }

      v45 = *(this + 2993);
      if (v45)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v42, v45, 7, 1, 0))
        {
          break;
        }
      }

      v42 += 11;
      if (!--v43)
      {
        goto LABEL_44;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    v50 = 136315650;
    v51 = "allocWorkBuf_SPS";
    v52 = 1024;
    v53 = 2415;
    v54 = 2080;
    *v55 = "HdrC";
    v49 = MEMORY[0x277D86220];
  }

LABEL_55:
  _os_log_impl(&dword_277606000, v49, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v50, 0x1Cu);
LABEL_56:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecThymeHevc::allocWorkBuf_PPS(CAHDecThymeHevc *this, _DWORD *a2, _DWORD *a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = (a2[909] + 9) & 0xFFFFFFFE;
  v5 = a2[910];
  v6 = (v5 + 9) & 0xFFFFFFFE;
  if (v4 <= v6)
  {
    v7 = (v5 + 9) & 0xFFFFFFFE;
  }

  else
  {
    v7 = (a2[909] + 9) & 0xFFFFFFFE;
  }

  v8 = a2[900];
  if (v7 == 10)
  {
    v9 = 40;
  }

  else
  {
    v9 = 48;
  }

  if (v7 == 8)
  {
    v9 = 32;
  }

  v10 = v8 != 3;
  if (*(a3 + 52))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2[1106] + a2[1105];
    v17 = a3[14];
    v18 = a2[5718];
    v19 = a2[902];
    do
    {
      v20 = a3[v11 + 17] + 1;
      v21 = v20 * v18;
      if (v20 * v18 + v14 > v19)
      {
        v21 = v19 - v14;
      }

      if (v12 <= v21)
      {
        v12 = v21;
      }

      if (v8)
      {
        v22 = (v20 << v16) >> v10;
        if (v17 == v11)
        {
          v22 = (((v19 >> 3) - (v15 << v16)) >> v10) + 1;
        }

        v13 += ((v22 + 2 * (v11 != 0)) * v9 + 127) & 0xFFFFFF80;
      }

      v14 += v21;
      v15 += v20;
      ++v11;
    }

    while (v17 + 1 != v11);
  }

  else
  {
    v19 = a2[902];
    v23 = (v9 + v9 * (v19 >> 3 >> v10) + 127) & 0x7FFFFF80;
    if (v8)
    {
      v13 = v23;
    }

    else
    {
      v13 = 0;
    }

    v12 = a2[902];
  }

  v24 = 0;
  v25 = *(this + 32);
  if (v12 >= -15)
  {
    v26 = v12 + 15;
  }

  else
  {
    v26 = v12 + 30;
  }

  v27 = a3[14];
  if (*(a3 + 52))
  {
    v28 = a3[14];
  }

  else
  {
    v28 = 0;
  }

  v68 = v28;
  if (v8 == 3)
  {
    v29 = 48;
  }

  else
  {
    v29 = 32;
  }

  if (v8 == 3)
  {
    v30 = 176;
  }

  else
  {
    v30 = 128;
  }

  if (!v8)
  {
    v29 = 16;
  }

  v31 = (v29 * v7) >> 3;
  if (!v8)
  {
    v30 = 80;
  }

  v32 = (v26 >> 4) * v31;
  if (v5)
  {
    v33 = 60;
  }

  else
  {
    v33 = 48;
  }

  v66 = v33;
  v67 = v30;
  v34 = 0;
  v35 = 0;
  if (!*(a3 + 52))
  {
    v59 = 0;
LABEL_87:
    v69 = v59;
    goto LABEL_88;
  }

  v69 = 0;
  if (v27)
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v24 = 0;
    v37 = 0;
    if (v8 == 1)
    {
      v38 = 144;
    }

    else
    {
      v38 = 192;
    }

    if (v8 == 1)
    {
      v39 = 24;
    }

    else
    {
      v39 = 32;
    }

    v40 = v8 == 0;
    if (v8)
    {
      v41 = v38;
    }

    else
    {
      v41 = 96;
    }

    v42 = (((v41 * v7) >> 3) + 7) & 0x3FFFFFF8;
    if (v40)
    {
      v43 = 16;
    }

    else
    {
      v43 = v39;
    }

    v44 = a2[903];
    v45 = v4 - 8;
    v46 = v6 - 8;
    if (v45 <= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    v48 = a3[15];
    v49 = a2[5718];
    v50 = (a3 + 37);
    v52 = *(v25 + 2644) == 1 && v47 != 0;
    do
    {
      v53 = v49 + v49 * *&v50[4 * v36];
      if (v53 + v37 > v44)
      {
        v53 = v44 - v37;
      }

      v54 = v53 + 15;
      if (v53 < -15)
      {
        v54 = v53 + 30;
      }

      if (v36)
      {
        v55 = (v54 >> 4) + 1;
      }

      else
      {
        v55 = v54 >> 4;
      }

      v56 = v55 * v42;
      if (v35 <= v56)
      {
        v35 = v56;
      }

      if (v34 <= (36 * (v54 >> 4)))
      {
        v34 = 36 * (v54 >> 4);
      }

      if (v52)
      {
        if (v48 == v36)
        {
          v57 = 23;
        }

        else
        {
          v57 = 15;
        }

        v58 = ((v57 + v53) / 16 * v43) | 6;
        if (v24 <= v58)
        {
          v24 = v58;
        }
      }

      v37 += v53;
      ++v36;
    }

    while (v48 + 1 != v36);
    v59 = (((3 * v7) & 0x7FFFFF) << 6) + (((v44 + 7) >> 3) + 2) * ((((v7 >> 1) & 0x1FFFFF) << 8) | 8);
    goto LABEL_87;
  }

LABEL_88:
  if (v32 && CAVDDecoder::allocAVDMem(v25, this + 649, v32, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2597;
      v75 = 2080;
      v76 = "IpAbove";
      v60 = MEMORY[0x277D86220];
LABEL_128:
      _os_log_impl(&dword_277606000, v60, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", buf, 0x1Cu);
      goto LABEL_129;
    }

    goto LABEL_129;
  }

  if ((v12 + 30) >= 0x1F && CAVDDecoder::allocAVDMem(*(this + 32), this + 462, 20 * (v26 >> 4), 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2598;
      v75 = 2080;
      v76 = "MvAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

LABEL_129:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v61 = v68 + ((v19 + 15) >> 4);
  v62 = v61 * ((((v67 * v7) >> 3) + 7) & 0x3FFFFFF8) + (v27 << 7);
  if (v62 && CAVDDecoder::allocAVDMem(*(this + 32), this + 660, v62, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2599;
      v75 = 2080;
      v76 = "LfAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v63 = 36 * v61 + (v27 << 7);
  if (v63 && CAVDDecoder::allocAVDMem(*(this + 32), this + 671, v63, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2600;
      v75 = 2080;
      v76 = "LfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v35 && CAVDDecoder::allocAVDMem(*(this + 32), this + 682, v35, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2601;
      v75 = 2080;
      v76 = "LfLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v34 && CAVDDecoder::allocAVDMem(*(this + 32), this + 693, v34, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2602;
      v75 = 2080;
      v76 = "LfLeftInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v24 && CAVDDecoder::allocAVDMem(*(this + 32), this + 704, v24, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2603;
      v75 = 2080;
      v76 = "SwLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v13 && CAVDDecoder::allocAVDMem(*(this + 32), this + 715, v13, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2604;
      v75 = 2080;
      v76 = "AZAbovePix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  if (v69 && CAVDDecoder::allocAVDMem(*(this + 32), this + 726, v69, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2605;
      v75 = 2080;
      v76 = "AZLeftPix";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v64 = (v19 >> 3) * v66;
  if (!v64)
  {
    return 0;
  }

  result = CAVDDecoder::allocAVDMem(*(this + 32), this + 737, v64, 7, 1, 0);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v72 = "allocWorkBuf_PPS";
      v73 = 1024;
      v74 = 2607;
      v75 = 2080;
      v76 = "RfAboveInfo";
      v60 = MEMORY[0x277D86220];
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  return result;
}

uint64_t CAHDecThymeHevc::freeWorkBuf_SPS(uint64_t this)
{
  v1 = this;
  if (!*(*(this + 256) + 2648))
  {
    v2 = (this + 3344);
    v3 = 16;
    do
    {
      if (*(v2 - 352))
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2 - 352);
        *(v2 - 352) = 0;
      }

      if (*v2)
      {
        this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v2);
        *v2 = 0;
      }

      v2 += 22;
      --v3;
    }

    while (v3);
  }

  v4 = (v1 + 7568);
  v5 = 16;
  do
  {
    if (*v4)
    {
      this = CAVDDecoder::deallocAVDMem(*(v1 + 256), v4);
      *v4 = 0;
    }

    v4 += 22;
    --v5;
  }

  while (v5);
  return this;
}

uint64_t *CAHDecThymeHevc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  if (this[1298])
  {
    this = CAVDDecoder::deallocAVDMem(this[32], this + 1298);
    v2[1298] = 0;
  }

  if (v2[924])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 924);
    v2[924] = 0;
  }

  if (v2[1320])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1320);
    v2[1320] = 0;
  }

  if (v2[1342])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1342);
    v2[1342] = 0;
  }

  if (v2[1364])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1364);
    v2[1364] = 0;
  }

  if (v2[1386])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1386);
    v2[1386] = 0;
  }

  if (v2[1408])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1408);
    v2[1408] = 0;
  }

  if (v2[1430])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1430);
    v2[1430] = 0;
  }

  if (v2[1452])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1452);
    v2[1452] = 0;
  }

  if (v2[1474])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1474);
    v2[1474] = 0;
  }

  return this;
}

uint64_t CAHDecThymeHevc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 6316);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 7);
  *(this + 11984) = a2;
  return this;
}

BOOL is_lgh_super_frame_offset(uint64_t a1, unint64_t a2, _DWORD *a3, unsigned int a4, char a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v9 = (a4 >> 3) & 3;
  v10 = (a4 & 7) + 1;
  v11 = v10 + v10 * v9 + 2;
  *a3 = 0;
  v12 = (a1 + 1);
  v13 = a3 + 1;
  v14 = 8 * v9 + 8;
  do
  {
    v15 = 0;
    v16 = 0;
    v13[v7] = 0;
    a3[v7 + 9] = v8;
    do
    {
      v17 = *v12++;
      v16 |= v17 << v15;
      v13[v7] = v16;
      v15 += 8;
    }

    while (v14 != v15);
    v8 += v16;
    v18 = (v8 + v11);
    if (v18 <= a2)
    {
      *a3 = ++v6;
    }

    ++v7;
  }

  while (v7 != v10);
  result = v18 == a2;
  if (v18 != a2 && (a5 & 1) == 0)
  {
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v20)
    {
      v21 = 136315650;
      v22 = "is_lgh_super_frame_offset";
      v23 = 1024;
      v24 = v18;
      v25 = 2048;
      v26 = a2;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: total frame size plus super frame index size %d not equal to buffer size %zu\n", &v21, 0x1Cu);
      return 0;
    }
  }

  return result;
}

uint64_t GetSliceDataForDecryptor(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {

    return FigSignalErrorAtGM();
  }

  if (a1[743])
  {
    goto LABEL_19;
  }

  Extensions = CMFormatDescriptionGetExtensions(v2);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC03B0]);
  v5 = CFDictionaryGetValue(Value, @"hvcC");
  if (v5)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFArrayGetValueAtIndex(v5, 0);
    }
  }

  v7 = CFDictionaryGetValue(Value, @"lhvC");
  if (v7)
  {
    v8 = CFArrayGetTypeID();
    if (v8 == CFGetTypeID(v7))
    {
      CFArrayGetValueAtIndex(v7, 0);
    }
  }

  result = FigHEVCBridge_CreateHLSfMP4ParsingInfoFromHVCCAndLHVCData();
  if (!result)
  {
LABEL_19:
    result = FigHEVCBridge_LocateSliceHeaderForHLSfMP4EncryptableNAL();
    if (!result)
    {
      if (a1[743])
      {
        a1[1000] = 0;
        return 0;
      }

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t GetSliceDataForDecryptor_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {

    return FigSignalErrorAtGM();
  }

  if (*(a1 + 6728))
  {
    goto LABEL_16;
  }

  Extensions = CMFormatDescriptionGetExtensions(v2);
  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC03B0]);
  v5 = CFDictionaryGetValue(Value, @"avcC");
  if (v5)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFArrayGetValueAtIndex(v5, 0);
    }
  }

  result = FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData();
  if (!result)
  {
LABEL_16:
    result = FigH264Bridge_LocateSliceHeaderForHLSfMP4EncryptableNAL();
    if (!result)
    {
      if (*(a1 + 6728))
      {
        *(a1 + 8784) = 0;
        return 0;
      }

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t AppleAVDOpenConnection_cold_1(uint64_t a1, io_connect_t **a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: AppleAVDOpenConnection - CreateAVDFrameReceiver failed %x", v6, 8u);
  }

  return IOServiceClose(**a2);
}

void AppleAVDOpenConnection_cold_2(_DWORD *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "AppleAVDOpenConnection";
    v4 = 1024;
    v5 = -536870210;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s(): IOServiceOpen failed %x", &v2, 0x12u);
  }

  *a1 = -536870210;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = MEMORY[0x282112080](*&category, value);
  result.value = v3;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}