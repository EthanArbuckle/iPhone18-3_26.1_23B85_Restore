uint64_t LGH_Syntax::frame_sync_code(LGH_Syntax *this)
{
  v21 = *MEMORY[0x277D85DE8];
  bits = LGH_Syntax::get_bits(this, "sync_byte_0", 8u);
  v3 = LGH_Syntax::get_bits(this, "sync_byte_1", 8u);
  v4 = LGH_Syntax::get_bits(this, "sync_byte_2", 8u);
  v5 = v4;
  if (bits == 73 && v3 == 131 && v4 == 66)
  {
    return 0;
  }

  if ((*(this + 7886) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316674;
    v8 = "frame_sync_code";
    v9 = 1024;
    v10 = 73;
    v11 = 1024;
    v12 = 131;
    v13 = 1024;
    v14 = 66;
    v15 = 1024;
    v16 = bits;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect %02x-%02x-%02x got %02x-%02x-%02x\n", &v7, 0x30u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t LGH_Syntax::color_config(LGH_Syntax *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 10);
  if (*(v2 + 72) < 2u)
  {
    v3 = 8;
  }

  else
  {
    if (LGH_Syntax::get_bits(this, "ten_or_twelve_bit", 1u))
    {
      v3 = 12;
    }

    else
    {
      v3 = 10;
    }

    v2 = *(this + 10);
  }

  *(v2 + 73) = v3;
  bits = LGH_Syntax::get_bits(this, "color_space", 3u);
  v5 = *(this + 10);
  *(v5 + 9) = bits;
  if (bits == 7)
  {
    *(v5 + 10) = 1;
    if ((*(v5 + 72) | 2) == 3)
    {
      *(v5 + 11) = 0;
      result = LGH_Syntax::get_bits(this, "reserved_zero", 1u);
      if (!result)
      {
        return result;
      }

      if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v10 = 136315138;
      v11 = "color_config";
      v7 = MEMORY[0x277D86220];
LABEL_18:
      _os_log_impl(&dword_277606000, v7, OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: none zero reserved bit\n", &v10, 0xCu);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  else
  {
    v8 = LGH_Syntax::get_bits(this, "color_range", 1u);
    v9 = *(this + 10);
    *(v9 + 10) = v8;
    if ((*(v9 + 72) | 2) == 3)
    {
      *(*(this + 10) + 11) = LGH_Syntax::get_bits(this, "subsampling_x", 1u);
      *(*(this + 10) + 12) = LGH_Syntax::get_bits(this, "subsampling_y", 1u);
      result = LGH_Syntax::get_bits(this, "reserved_zero", 1u);
      if (!result)
      {
        return result;
      }

      if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      v10 = 136315138;
      v11 = "color_config";
      v7 = MEMORY[0x277D86220];
      goto LABEL_18;
    }

    result = 0;
    *(v9 + 11) = 257;
  }

  return result;
}

uint64_t LGH_Syntax::frame_size(LGH_Syntax *this)
{
  *(*(this + 10) + 76) = LGH_Syntax::get_bits(this, "FrameWidth", 0x10u) + 1;
  result = LGH_Syntax::get_bits(this, "FrameHeight", 0x10u);
  v3 = *(this + 10);
  v4 = (v3[19] + 7) >> 3;
  v3[20] = result + 1;
  v3[21] = v4;
  v5 = (result + 8) >> 3;
  v3[22] = v5;
  v3[23] = (v4 + 7) >> 3;
  v3[24] = (v5 + 7) >> 3;
  return result;
}

uint64_t LGH_Syntax::render_size(LGH_Syntax *this)
{
  result = LGH_Syntax::get_bits(this, "render_and_frame_size_different", 1u);
  if (result)
  {
    *(*(this + 10) + 100) = LGH_Syntax::get_bits(this, "renderWidth", 0x10u) + 1;
    result = LGH_Syntax::get_bits(this, "renderHeight", 0x10u);
    v3 = result + 1;
    v4 = *(this + 10);
  }

  else
  {
    v4 = *(this + 10);
    v3 = v4[20];
    v4[25] = v4[19];
  }

  v4[26] = v3;
  return result;
}

uint64_t LGH_Syntax::frame_size_with_refs(LGH_Syntax *this)
{
  v2 = 14;
  do
  {
    bits = LGH_Syntax::get_bits(this, "found_ref", 1u);
    if (bits == 1)
    {
      v4 = *(this + 10);
      v5 = v4[*(v4 + v2) + 27];
      v4[19] = v5;
      v6 = v4[*(v4 + v2) + 35];
      v4[20] = v6;
      goto LABEL_7;
    }

    ++v2;
  }

  while (v2 != 17);
  if (bits)
  {
    v4 = *(this + 10);
    v5 = v4[19];
    v6 = v4[20];
LABEL_7:
    v7 = (v5 + 7) >> 3;
    v4[21] = v7;
    v8 = v6 + 7;
    goto LABEL_8;
  }

  *(*(this + 10) + 76) = LGH_Syntax::get_bits(this, "FrameWidth", 0x10u) + 1;
  v13 = LGH_Syntax::get_bits(this, "FrameHeight", 0x10u);
  v4 = *(this + 10);
  v7 = (v4[19] + 7) >> 3;
  v4[20] = v13 + 1;
  v4[21] = v7;
  v8 = v13 + 8;
LABEL_8:
  v9 = v8 >> 3;
  v4[22] = v9;
  v4[23] = (v7 + 7) >> 3;
  v4[24] = (v9 + 7) >> 3;
  result = LGH_Syntax::get_bits(this, "render_and_frame_size_different", 1u);
  if (result)
  {
    *(*(this + 10) + 100) = LGH_Syntax::get_bits(this, "renderWidth", 0x10u) + 1;
    result = LGH_Syntax::get_bits(this, "renderHeight", 0x10u);
    v11 = result + 1;
    v12 = *(this + 10);
  }

  else
  {
    v12 = *(this + 10);
    v11 = v12[20];
    v12[25] = v12[19];
  }

  v12[26] = v11;
  return result;
}

double LGH_Syntax::save_probs_default(LGH_Syntax *this, unsigned int a2)
{
  v2 = this + 1905 * a2;
  *(v2 + 13) = -1;
  *(v2 + 28) = 1113915391;
  *(v2 + 116) = 0x5258803650F9814;
  *(v2 + 62) = 3380;
  memcpy(v2 + 126, &default_coef_probs, 0x630uLL);
  *(v2 + 855) = -32576;
  v2[1712] = 64;
  *(v2 + 1713) = default_inter_mode_probs;
  *(v2 + 1726) = 0x1E1D191F51112E40;
  *(v2 + 1734) = 0x90950322FF24A2EBLL;
  *(v2 + 1742) = 0x6077B7EFE1BB6609;
  v2[1750] = 41;
  *(v2 + 1759) = -2066;
  *(v2 + 1751) = 0xAAAC8E8E4A4D1021;
  *(v2 + 1761) = -579109326;
  v2[1765] = -30;
  *(v2 + 1798) = 492134521;
  *(v2 + 1766) = default_y_mode_prob;
  *(v2 + 1782) = unk_27775D5E6;
  *(v2 + 1802) = default_uv_mode_prob;
  *(v2 + 1818) = unk_27775D60A;
  *(v2 + 1876) = *(&xmmword_27775D63A + 10);
  *(v2 + 1866) = xmmword_27775D63A;
  *(v2 + 1834) = xmmword_27775D61A;
  *(v2 + 1850) = unk_27775D62A;
  *(v2 + 1924) = xmmword_27775D674;
  *(v2 + 1892) = default_partition_prob;
  *(v2 + 1908) = unk_27775D664;
  v2[1942] = 96;
  *(v2 + 970) = 16416;
  *(v2 + 1943) = default_mv_probs1;
  *(v2 + 1959) = unk_27775D697;
  *(v2 + 1971) = unk_27775D6A3;
  *(v2 + 2003) = 16480;
  result = *&default_mv_probs2;
  *(v2 + 1987) = default_mv_probs2;
  *(v2 + 2005) = -2136964960;
  return result;
}

uint64_t LGH_Syntax::loop_filter_params(LGH_Syntax *this)
{
  *(*(this + 10) + 26) = LGH_Syntax::get_bits(this, "loop_filter_level", 6u);
  *(*(this + 10) + 27) = LGH_Syntax::get_bits(this, "loop_filter_sharpness", 3u);
  result = LGH_Syntax::get_bits(this, "loop_filter_delta_enabled", 1u);
  *(*(this + 10) + 28) = result;
  if (result == 1)
  {
    result = LGH_Syntax::get_bits(this, "loop_filter_delta_update", 1u);
    *(*(this + 10) + 29) = result;
    if (result)
    {
      for (i = 0; i != 4; ++i)
      {
        *(*(this + 10) + i + 30) = LGH_Syntax::get_bits(this, "update_ref_delta", 1u);
        if (*(*(this + 10) + i + 30) == 1)
        {
          bits = LGH_Syntax::get_bits(this, "loop_filter_ref_deltas", 6u);
          if (LGH_Syntax::get_bits(this, "sign", 1u))
          {
            v5 = -bits;
          }

          else
          {
            LOBYTE(v5) = bits;
          }

          *(*(this + 10) + i + 34) = v5;
        }
      }

      v6 = 0;
      v7 = 1;
      do
      {
        v8 = v7;
        result = LGH_Syntax::get_bits(this, "update_mode_delta", 1u);
        *(*(this + 10) + v6 + 38) = result;
        if (*(*(this + 10) + v6 + 38) == 1)
        {
          v9 = LGH_Syntax::get_bits(this, "loop_filter_mode_deltas", 6u);
          result = LGH_Syntax::get_bits(this, "sign", 1u);
          if (result)
          {
            v10 = -v9;
          }

          else
          {
            LOBYTE(v10) = v9;
          }

          *(*(this + 10) + v6 + 40) = v10;
        }

        v7 = 0;
        v6 = 1;
      }

      while ((v8 & 1) != 0);
    }
  }

  return result;
}

uint64_t LGH_Syntax::quantization_params(LGH_Syntax *this)
{
  *(*(this + 10) + 42) = LGH_Syntax::get_bits(this, "base_q_idx", 8u);
  if (LGH_Syntax::get_bits(this, "delta_coded", 1u) == 1)
  {
    bits = LGH_Syntax::get_bits(this, "delta_q", 4u);
    if (LGH_Syntax::get_bits(this, "sign", 1u))
    {
      v3 = -bits;
    }

    else
    {
      LOBYTE(v3) = bits;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  *(*(this + 10) + 43) = v3;
  if (LGH_Syntax::get_bits(this, "delta_coded", 1u) == 1)
  {
    v4 = LGH_Syntax::get_bits(this, "delta_q", 4u);
    if (LGH_Syntax::get_bits(this, "sign", 1u))
    {
      v5 = -v4;
    }

    else
    {
      LOBYTE(v5) = v4;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *(*(this + 10) + 44) = v5;
  result = LGH_Syntax::get_bits(this, "delta_coded", 1u);
  if (result == 1)
  {
    v7 = LGH_Syntax::get_bits(this, "delta_q", 4u);
    result = LGH_Syntax::get_bits(this, "sign", 1u);
    if (result)
    {
      v8 = -v7;
    }

    else
    {
      LOBYTE(v8) = v7;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 10);
  v10[45] = v9;
  v11 = !v10[42] && !v10[43] && (v10[44] | v9) == 0;
  v10[172] = v11;
  return result;
}

uint64_t LGH_Syntax::segmentation_params(LGH_Syntax *this)
{
  result = LGH_Syntax::get_bits(this, "segmentation_enabled", 1u);
  v3 = *(this + 10);
  *(v3 + 46) = result;
  *(v3 + 59) = 0;
  if (result)
  {
    bits = LGH_Syntax::get_bits(this, "segmentation_update_map", 1u);
    *(*(this + 10) + 47) = bits;
    if (bits == 1)
    {
      for (i = 0; i != 7; ++i)
      {
        if (LGH_Syntax::get_bits(this, "prob_coded", 1u))
        {
          v6 = LGH_Syntax::get_bits(this, "prob", 8u);
        }

        else
        {
          v6 = -1;
        }

        *(*(this + 12) + i) = v6;
        *(*(this + 10) + i + 48) = v6;
      }

      v7 = 0;
      *(*(this + 10) + 55) = LGH_Syntax::get_bits(this, "segmentation_temporal_update", 1u);
      do
      {
        if (*(*(this + 10) + 55) && LGH_Syntax::get_bits(this, "prob_coded", 1u))
        {
          v8 = LGH_Syntax::get_bits(this, "prob", 8u);
        }

        else
        {
          v8 = -1;
        }

        *(*(this + 12) + v7 + 7) = v8;
        *(*(this + 10) + v7++ + 56) = v8;
      }

      while (v7 != 3);
    }

    result = LGH_Syntax::get_bits(this, "segmentation_update_data", 1u);
    *(*(this + 10) + 59) = result;
    if (result == 1)
    {
      v9 = 0;
      v10 = 0;
      *(*(this + 10) + 60) = LGH_Syntax::get_bits(this, "segmentation_abs_or_delta_update", 1u);
      do
      {
        v11 = 0;
        v12 = v9;
        v13 = &segmentation_feature_bits;
        do
        {
          result = LGH_Syntax::get_bits(this, "FeatureEnabled", 1u);
          *(*(this + 10) + v12 + 173) = result;
          if (*(*(this + 10) + v12 + 173))
          {
            result = LGH_Syntax::get_bits(this, "feature_value", *v13);
            v14 = result;
            if (v11 <= 1)
            {
              result = LGH_Syntax::get_bits(this, "feature_sign", 1u);
              if (result)
              {
                v14 = -v14;
              }
            }
          }

          else
          {
            LOWORD(v14) = 0;
          }

          *(*(this + 10) + 2 * v12 + 206) = v14;
          ++v11;
          ++v13;
          ++v12;
        }

        while (v11 != 4);
        ++v10;
        v9 += 4;
      }

      while (v10 != 8);
    }
  }

  return result;
}

__n128 LGH_Syntax::load_probs(LGH_Syntax *this, unsigned int a2)
{
  v3 = this + 1905 * a2;
  memcpy((*(this + 12) + 22), v3 + 126, 0x630uLL);
  v4 = *(this + 12) + 1609;
  v5 = *(v3 + 1726);
  *v4 = *(v3 + 1713);
  *(v4 + 13) = v5;
  *(*(this + 12) + 1630) = *(v3 + 1734);
  *(*(this + 12) + 1638) = *(v3 + 1742);
  v6 = *(this + 12);
  LODWORD(v5) = *(v3 + 1746);
  *(v6 + 1646) = v3[1750];
  *(v6 + 1642) = v5;
  v7 = *(this + 12) + 1647;
  LOWORD(v5) = *(v3 + 1759);
  *v7 = *(v3 + 1751);
  *(v7 + 8) = v5;
  v8 = *(this + 12);
  LODWORD(v5) = *(v3 + 1761);
  *(v8 + 1661) = v3[1765];
  *(v8 + 1657) = v5;
  v9 = *(this + 12) + 1662;
  LODWORD(v5) = *(v3 + 1798);
  v10 = *(v3 + 1782);
  *v9 = *(v3 + 1766);
  *(v9 + 16) = v10;
  *(v9 + 32) = v5;
  v11 = (*(this + 12) + 1698);
  v12 = *(v3 + 1834);
  v13 = *(v3 + 1850);
  v14 = *(v3 + 1866);
  *(v11 + 74) = *(v3 + 1876);
  v11[3] = v13;
  v11[4] = v14;
  v11[2] = v12;
  v15 = *(v3 + 1818);
  *v11 = *(v3 + 1802);
  v11[1] = v15;
  v16 = (*(this + 12) + 1788);
  v17 = *(v3 + 1892);
  v18 = *(v3 + 1924);
  v16[1] = *(v3 + 1908);
  v16[2] = v18;
  *v16 = v17;
  v19 = *(this + 12);
  v20 = v3[1942];
  *(v19 + 1836) = *(v3 + 970);
  *(v19 + 1838) = v20;
  v21 = (*(this + 12) + 1839);
  v22 = *(v3 + 1943);
  v23 = *(v3 + 1959);
  *(v21 + 28) = *(v3 + 1971);
  *v21 = v22;
  v21[1] = v23;
  v24 = (*(this + 12) + 1883);
  LOWORD(v5) = *(v3 + 2003);
  result = *(v3 + 1987);
  *v24 = result;
  v24[1].n128_u16[0] = v5;
  *(*(this + 12) + 1901) = *(v3 + 2005);
  return result;
}

void LGH_Syntax::load_probs_all(LGH_Syntax *this, unsigned int a2)
{
  LGH_Syntax::load_probs(this, a2);
  v4 = this + 1905 * a2;
  *(*(this + 12) + 10) = *(v4 + 57);
  *(*(this + 12) + 12) = *(v4 + 29);
  v5 = *(this + 12);
  v6 = *(v4 + 30);
  *(v5 + 20) = *(v4 + 62);
  *(v5 + 16) = v6;
  v7 = *(this + 12);
  LOWORD(v6) = *(v4 + 855);
  *(v7 + 1608) = v4[1712];
  *(v7 + 1606) = v6;
}

uint64_t LGH_Syntax::compressed_header(LGH_Syntax *this)
{
  v178 = *MEMORY[0x277D85DE8];
  v3 = *(this + 15);
  v2 = *(this + 16);
  v4 = ((v2 << 7) - 128) >> 8;
  v5 = v4 + 1;
  if (v3 <= v4)
  {
    v6 = *(this + 15);
  }

  else
  {
    v6 = v3 - v5;
    v5 = v2 - v5;
    *(this + 15) = v6;
  }

  *(this + 16) = v5;
  if (v5 <= 0x7F)
  {
    do
    {
      v7 = *(this + 17) - 1;
      *(this + 16) = 2 * v5;
      *(this + 17) = v7;
      v6 = LGH_Syntax::get_bits(this, "marker_bit", 1u) | (2 * v6);
      *(this + 15) = v6;
      v5 = *(this + 16);
    }

    while (v5 < 0x80);
  }

  if (v3 <= v4)
  {
    LGH_Syntax::read_tx_mode(this);
    if (**(this + 967) == 4)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = *(*(this + 12) + v9 + 10);
        v14 = *(this + 15);
        v13 = *(this + 16);
        v15 = (252 * v13 - 252) >> 8;
        v16 = v15 + 1;
        if (v14 <= v15)
        {
          v17 = *(this + 15);
        }

        else
        {
          v17 = v14 - v16;
          v16 = v13 - v16;
          *(this + 15) = v17;
        }

        *(this + 16) = v16;
        if (v16 <= 0x7F)
        {
          do
          {
            v18 = *(this + 17) - 1;
            *(this + 16) = 2 * v16;
            *(this + 17) = v18;
            v17 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v17);
            *(this + 15) = v17;
            v16 = *(this + 16);
          }

          while (v16 < 0x80);
        }

        if (v14 > v15)
        {
          v19 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
          v20 = (v12 - 1);
          v21 = ~v12 + (v19 >> 1);
          if (v19)
          {
            v21 = ~v12 - ((v19 + 1) >> 1);
          }

          if (v19 <= 2 * ~v12)
          {
            v22 = v21;
          }

          else
          {
            v22 = v19;
          }

          v23 = 2 * (v20 & 0x7F);
          v24 = v20 + (v19 >> 1);
          v25 = v20 - ((v19 + 1) >> 1);
          if ((v19 & 1) == 0)
          {
            LOBYTE(v25) = v24;
          }

          if (v23 >= v19)
          {
            LOBYTE(v19) = v25;
          }

          v26 = v19 + 1;
          if (((v12 - 1) & 0x80) != 0)
          {
            LOBYTE(v12) = ~v22;
          }

          else
          {
            LOBYTE(v12) = v26;
          }
        }

        v10 = 0;
        *(*(this + 12) + v9 + 10) = v12;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = 0;
        v171 = v28;
        v30 = 1;
        do
        {
          v31 = v30;
          v32 = *(*(this + 12) + 2 * v27 + v29 + 12);
          v34 = *(this + 15);
          v33 = *(this + 16);
          v35 = (252 * v33 - 252) >> 8;
          v36 = v35 + 1;
          if (v34 <= v35)
          {
            v37 = *(this + 15);
          }

          else
          {
            v37 = v34 - v36;
            v36 = v33 - v36;
            *(this + 15) = v37;
          }

          *(this + 16) = v36;
          if (v36 <= 0x7F)
          {
            do
            {
              v38 = *(this + 17) - 1;
              *(this + 16) = 2 * v36;
              *(this + 17) = v38;
              v37 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v37);
              *(this + 15) = v37;
              v36 = *(this + 16);
            }

            while (v36 < 0x80);
          }

          if (v34 > v35)
          {
            v39 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
            v40 = (v32 - 1);
            v41 = ~v32 + (v39 >> 1);
            if (v39)
            {
              v41 = ~v32 - ((v39 + 1) >> 1);
            }

            if (v39 <= 2 * ~v32)
            {
              v42 = v41;
            }

            else
            {
              v42 = v39;
            }

            v43 = 2 * (v40 & 0x7F);
            v44 = v40 + (v39 >> 1);
            v45 = v40 - ((v39 + 1) >> 1);
            if ((v39 & 1) == 0)
            {
              LOBYTE(v45) = v44;
            }

            if (v43 >= v39)
            {
              LOBYTE(v39) = v45;
            }

            v46 = v39 + 1;
            if (((v32 - 1) & 0x80) != 0)
            {
              LOBYTE(v32) = ~v42;
            }

            else
            {
              LOBYTE(v32) = v46;
            }
          }

          v30 = 0;
          *(*(this + 12) + 2 * v27 + v29 + 12) = v32;
          v29 = 1;
        }

        while ((v31 & 1) != 0);
        v28 = 0;
        v27 = 1;
      }

      while ((v171 & 1) != 0);
      v47 = 0;
      v48 = 1;
      do
      {
        v49 = 0;
        v172 = v48;
        v50 = 3 * v47;
        do
        {
          v51 = *(*(this + 12) + v50 + v49 + 16);
          v53 = *(this + 15);
          v52 = *(this + 16);
          v54 = (252 * v52 - 252) >> 8;
          v55 = v54 + 1;
          if (v53 <= v54)
          {
            v56 = *(this + 15);
          }

          else
          {
            v56 = v53 - v55;
            v55 = v52 - v55;
            *(this + 15) = v56;
          }

          *(this + 16) = v55;
          if (v55 <= 0x7F)
          {
            do
            {
              v57 = *(this + 17) - 1;
              *(this + 16) = 2 * v55;
              *(this + 17) = v57;
              v56 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v56);
              *(this + 15) = v56;
              v55 = *(this + 16);
            }

            while (v55 < 0x80);
          }

          if (v53 > v54)
          {
            v58 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
            v59 = (v51 - 1);
            v60 = ~v51 + (v58 >> 1);
            if (v58)
            {
              v60 = ~v51 - ((v58 + 1) >> 1);
            }

            if (v58 <= 2 * ~v51)
            {
              v61 = v60;
            }

            else
            {
              v61 = v58;
            }

            v62 = 2 * (v59 & 0x7F);
            v63 = v59 + (v58 >> 1);
            v64 = v59 - ((v58 + 1) >> 1);
            if ((v58 & 1) == 0)
            {
              LOBYTE(v64) = v63;
            }

            if (v62 >= v58)
            {
              LOBYTE(v58) = v64;
            }

            v65 = v58 + 1;
            if (((v51 - 1) & 0x80) != 0)
            {
              LOBYTE(v51) = ~v61;
            }

            else
            {
              LOBYTE(v51) = v65;
            }
          }

          *(*(this + 12) + v50 + v49++ + 16) = v51;
        }

        while (v49 != 3);
        v48 = 0;
        v47 = 1;
      }

      while ((v172 & 1) != 0);
    }

    LGH_Syntax::read_coef_probs(this);
    for (i = 0; i != 3; ++i)
    {
      v67 = *(*(this + 12) + i + 1606);
      v69 = *(this + 15);
      v68 = *(this + 16);
      v70 = (252 * v68 - 252) >> 8;
      v71 = v70 + 1;
      if (v69 <= v70)
      {
        v72 = *(this + 15);
      }

      else
      {
        v72 = v69 - v71;
        v71 = v68 - v71;
        *(this + 15) = v72;
      }

      *(this + 16) = v71;
      if (v71 <= 0x7F)
      {
        do
        {
          v73 = *(this + 17) - 1;
          *(this + 16) = 2 * v71;
          *(this + 17) = v73;
          v72 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v72);
          *(this + 15) = v72;
          v71 = *(this + 16);
        }

        while (v71 < 0x80);
      }

      if (v69 > v70)
      {
        v74 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
        v75 = (v67 - 1);
        v76 = ~v67 + (v74 >> 1);
        if (v74)
        {
          v76 = ~v67 - ((v74 + 1) >> 1);
        }

        if (v74 <= 2 * ~v67)
        {
          v77 = v76;
        }

        else
        {
          v77 = v74;
        }

        v78 = 2 * (v75 & 0x7F);
        v79 = v75 + (v74 >> 1);
        v80 = v75 - ((v74 + 1) >> 1);
        if ((v74 & 1) == 0)
        {
          LOBYTE(v80) = v79;
        }

        if (v78 >= v74)
        {
          LOBYTE(v74) = v80;
        }

        v81 = v74 + 1;
        if (((v67 - 1) & 0x80) != 0)
        {
          LOBYTE(v67) = ~v77;
        }

        else
        {
          LOBYTE(v67) = v81;
        }
      }

      *(*(this + 12) + i + 1606) = v67;
    }

    if (!*(*(this + 10) + 74))
    {
      v82 = 0;
      do
      {
        v83 = 0;
        v173 = v82;
        v84 = 3 * v82;
        do
        {
          v85 = *(*(this + 12) + v84 + v83 + 1609);
          v87 = *(this + 15);
          v86 = *(this + 16);
          v88 = (252 * v86 - 252) >> 8;
          v89 = v88 + 1;
          if (v87 <= v88)
          {
            v90 = *(this + 15);
          }

          else
          {
            v90 = v87 - v89;
            v89 = v86 - v89;
            *(this + 15) = v90;
          }

          *(this + 16) = v89;
          if (v89 <= 0x7F)
          {
            do
            {
              v91 = *(this + 17) - 1;
              *(this + 16) = 2 * v89;
              *(this + 17) = v91;
              v90 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v90);
              *(this + 15) = v90;
              v89 = *(this + 16);
            }

            while (v89 < 0x80);
          }

          if (v87 > v88)
          {
            v92 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
            v93 = (v85 - 1);
            v94 = ~v85 + (v92 >> 1);
            if (v92)
            {
              v94 = ~v85 - ((v92 + 1) >> 1);
            }

            if (v92 <= 2 * ~v85)
            {
              v95 = v94;
            }

            else
            {
              v95 = v92;
            }

            v96 = 2 * (v93 & 0x7F);
            v97 = v93 + (v92 >> 1);
            v98 = v93 - ((v92 + 1) >> 1);
            if ((v92 & 1) == 0)
            {
              LOBYTE(v98) = v97;
            }

            if (v96 >= v92)
            {
              LOBYTE(v92) = v98;
            }

            v99 = v92 + 1;
            if (((v85 - 1) & 0x80) != 0)
            {
              LOBYTE(v85) = ~v95;
            }

            else
            {
              LOBYTE(v85) = v99;
            }
          }

          *(*(this + 12) + v84 + v83++ + 1609) = v85;
        }

        while (v83 != 3);
        v82 = v173 + 1;
      }

      while (v173 != 6);
      if (*(*(this + 10) + 22) == 4)
      {
        for (j = 0; j != 4; ++j)
        {
          v101 = 0;
          v102 = 1;
          do
          {
            v103 = v102;
            v104 = *(*(this + 12) + 2 * j + v101 + 1630);
            v106 = *(this + 15);
            v105 = *(this + 16);
            v107 = (252 * v105 - 252) >> 8;
            v108 = v107 + 1;
            if (v106 <= v107)
            {
              v109 = *(this + 15);
            }

            else
            {
              v109 = v106 - v108;
              v108 = v105 - v108;
              *(this + 15) = v109;
            }

            *(this + 16) = v108;
            if (v108 <= 0x7F)
            {
              do
              {
                v110 = *(this + 17) - 1;
                *(this + 16) = 2 * v108;
                *(this + 17) = v110;
                v109 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v109);
                *(this + 15) = v109;
                v108 = *(this + 16);
              }

              while (v108 < 0x80);
            }

            if (v106 > v107)
            {
              v111 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
              v112 = (v104 - 1);
              v113 = ~v104 + (v111 >> 1);
              if (v111)
              {
                v113 = ~v104 - ((v111 + 1) >> 1);
              }

              if (v111 <= 2 * ~v104)
              {
                v114 = v113;
              }

              else
              {
                v114 = v111;
              }

              v115 = 2 * (v112 & 0x7F);
              v116 = v112 + (v111 >> 1);
              v117 = v112 - ((v111 + 1) >> 1);
              if ((v111 & 1) == 0)
              {
                LOBYTE(v117) = v116;
              }

              if (v115 >= v111)
              {
                LOBYTE(v111) = v117;
              }

              v118 = v111 + 1;
              if (((v104 - 1) & 0x80) != 0)
              {
                LOBYTE(v104) = ~v114;
              }

              else
              {
                LOBYTE(v104) = v118;
              }
            }

            v102 = 0;
            *(*(this + 12) + 2 * j + v101 + 1630) = v104;
            v101 = 1;
          }

          while ((v103 & 1) != 0);
        }
      }

      for (k = 0; k != 4; ++k)
      {
        v120 = *(*(this + 12) + k + 1638);
        v122 = *(this + 15);
        v121 = *(this + 16);
        v123 = (252 * v121 - 252) >> 8;
        v124 = v123 + 1;
        if (v122 <= v123)
        {
          v125 = *(this + 15);
        }

        else
        {
          v125 = v122 - v124;
          v124 = v121 - v124;
          *(this + 15) = v125;
        }

        *(this + 16) = v124;
        if (v124 <= 0x7F)
        {
          do
          {
            v126 = *(this + 17) - 1;
            *(this + 16) = 2 * v124;
            *(this + 17) = v126;
            v125 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v125);
            *(this + 15) = v125;
            v124 = *(this + 16);
          }

          while (v124 < 0x80);
        }

        if (v122 > v123)
        {
          v127 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
          v128 = (v120 - 1);
          v129 = ~v120 + (v127 >> 1);
          if (v127)
          {
            v129 = ~v120 - ((v127 + 1) >> 1);
          }

          if (v127 <= 2 * ~v120)
          {
            v130 = v129;
          }

          else
          {
            v130 = v127;
          }

          v131 = 2 * (v128 & 0x7F);
          v132 = v128 + (v127 >> 1);
          v133 = v128 - ((v127 + 1) >> 1);
          if ((v127 & 1) == 0)
          {
            LOBYTE(v133) = v132;
          }

          if (v131 >= v127)
          {
            LOBYTE(v127) = v133;
          }

          v134 = v127 + 1;
          if (((v120 - 1) & 0x80) != 0)
          {
            LOBYTE(v120) = ~v130;
          }

          else
          {
            LOBYTE(v120) = v134;
          }
        }

        *(*(this + 12) + k + 1638) = v120;
      }

      LGH_Syntax::frame_reference_mode(this);
      LGH_Syntax::frame_reference_mode_probs(this);
      v135 = 0;
      do
      {
        v136 = 0;
        v174 = v135;
        v137 = 9 * v135;
        do
        {
          v138 = *(*(this + 12) + v137 + v136 + 1662);
          v140 = *(this + 15);
          v139 = *(this + 16);
          v141 = (252 * v139 - 252) >> 8;
          v142 = v141 + 1;
          if (v140 <= v141)
          {
            v143 = *(this + 15);
          }

          else
          {
            v143 = v140 - v142;
            v142 = v139 - v142;
            *(this + 15) = v143;
          }

          *(this + 16) = v142;
          if (v142 <= 0x7F)
          {
            do
            {
              v144 = *(this + 17) - 1;
              *(this + 16) = 2 * v142;
              *(this + 17) = v144;
              v143 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v143);
              *(this + 15) = v143;
              v142 = *(this + 16);
            }

            while (v142 < 0x80);
          }

          if (v140 > v141)
          {
            v145 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
            v146 = (v138 - 1);
            v147 = ~v138 + (v145 >> 1);
            if (v145)
            {
              v147 = ~v138 - ((v145 + 1) >> 1);
            }

            if (v145 <= 2 * ~v138)
            {
              v148 = v147;
            }

            else
            {
              v148 = v145;
            }

            v149 = 2 * (v146 & 0x7F);
            v150 = v146 + (v145 >> 1);
            v151 = v146 - ((v145 + 1) >> 1);
            if ((v145 & 1) == 0)
            {
              LOBYTE(v151) = v150;
            }

            if (v149 >= v145)
            {
              LOBYTE(v145) = v151;
            }

            v152 = v145 + 1;
            if (((v138 - 1) & 0x80) != 0)
            {
              LOBYTE(v138) = ~v148;
            }

            else
            {
              LOBYTE(v138) = v152;
            }
          }

          *(*(this + 12) + v137 + v136++ + 1662) = v138;
        }

        while (v136 != 9);
        v135 = v174 + 1;
      }

      while (v174 != 3);
      v153 = 0;
      do
      {
        v154 = 0;
        v175 = v153;
        v155 = 3 * v153;
        do
        {
          v156 = *(*(this + 12) + v155 + v154 + 1788);
          v158 = *(this + 15);
          v157 = *(this + 16);
          v159 = (252 * v157 - 252) >> 8;
          v160 = v159 + 1;
          if (v158 <= v159)
          {
            v161 = *(this + 15);
          }

          else
          {
            v161 = v158 - v160;
            v160 = v157 - v160;
            *(this + 15) = v161;
          }

          *(this + 16) = v160;
          if (v160 <= 0x7F)
          {
            do
            {
              v162 = *(this + 17) - 1;
              *(this + 16) = 2 * v160;
              *(this + 17) = v162;
              v161 = LGH_Syntax::get_bits(this, "update_prob", 1u) | (2 * v161);
              *(this + 15) = v161;
              v160 = *(this + 16);
            }

            while (v160 < 0x80);
          }

          if (v158 > v159)
          {
            v163 = inv_map_table[LGH_Syntax::decode_term_subexp(this)];
            v164 = (v156 - 1);
            v165 = ~v156 + (v163 >> 1);
            if (v163)
            {
              v165 = ~v156 - ((v163 + 1) >> 1);
            }

            if (v163 <= 2 * ~v156)
            {
              v166 = v165;
            }

            else
            {
              v166 = v163;
            }

            v167 = 2 * (v164 & 0x7F);
            v168 = v164 + (v163 >> 1);
            v169 = v164 - ((v163 + 1) >> 1);
            if ((v163 & 1) == 0)
            {
              LOBYTE(v169) = v168;
            }

            if (v167 >= v163)
            {
              LOBYTE(v163) = v169;
            }

            v170 = v163 + 1;
            if (((v156 - 1) & 0x80) != 0)
            {
              LOBYTE(v156) = ~v166;
            }

            else
            {
              LOBYTE(v156) = v170;
            }
          }

          *(*(this + 12) + v155 + v154++ + 1788) = v156;
        }

        while (v154 != 3);
        v153 = v175 + 1;
      }

      while (v175 != 15);
      LGH_Syntax::mv_probs(this);
    }

    return 0;
  }

  else
  {
    if ((*(this + 7886) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v177 = "compressed_header";
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: none zero marker bit\n", buf, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t LGH_Syntax::read_tx_mode(uint64_t this)
{
  v1 = this;
  if (*(*(this + 80) + 172) == 1)
  {
    **(this + 7736) = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v5 = *(this + 60);
    v4 = *(this + 64);
    do
    {
      v6 = (v4 << 7) - 128;
      v7 = (v6 >> 8) + 1;
      if (v5 <= v6 >> 8)
      {
        v8 = 0;
        v4 = (v6 >> 8) + 1;
      }

      else
      {
        v4 -= v7;
        v5 -= v7;
        *(v1 + 60) = v5;
        v8 = 1;
      }

      *(v1 + 64) = v4;
      if (v4 <= 0x7F)
      {
        do
        {
          v9 = *(v1 + 68) - 1;
          *(v1 + 64) = 2 * v4;
          *(v1 + 68) = v9;
          this = LGH_Syntax::get_bits(v1, "tx_mode", 1u);
          v5 = this | (2 * v5);
          *(v1 + 60) = v5;
          v4 = *(v1 + 64);
        }

        while (v4 < 0x80);
      }

      v2 = v8 | (2 * v2);
      ++v3;
    }

    while (v3 != 2);
    v10 = *(v1 + 7736);
    *v10 = v2;
    if (v2 == 3)
    {
      v11 = (v4 << 7) - 128;
      v12 = (v11 >> 8) + 1;
      if (v5 <= v11 >> 8)
      {
        v13 = 0;
      }

      else
      {
        v5 -= v12;
        v12 = v4 - v12;
        *(v1 + 60) = v5;
        v13 = 1;
      }

      *(v1 + 64) = v12;
      if (v12 <= 0x7F)
      {
        do
        {
          v14 = *(v1 + 68) - 1;
          *(v1 + 64) = 2 * v12;
          *(v1 + 68) = v14;
          this = LGH_Syntax::get_bits(v1, "tx_mode_select", 1u);
          v5 = this | (2 * v5);
          *(v1 + 60) = v5;
          v12 = *(v1 + 64);
        }

        while (v12 < 0x80);
        v10 = *(v1 + 7736);
        v2 = *v10;
      }

      v10[1] = v13;
      *v10 = v2 + v13;
    }
  }

  return this;
}

uint64_t LGH_Syntax::read_coef_probs(uint64_t this)
{
  v1 = this;
  v109 = tx_mode_to_biggest_tx_size[**(this + 7736)];
  v110 = 0;
  do
  {
    v3 = *(v1 + 60);
    v2 = *(v1 + 64);
    v4 = ((v2 << 7) - 128) >> 8;
    v5 = v4 + 1;
    if (v3 <= v4)
    {
      v6 = *(v1 + 60);
    }

    else
    {
      v6 = v3 - v5;
      v5 = v2 - v5;
      *(v1 + 60) = v6;
    }

    *(v1 + 64) = v5;
    if (v5 <= 0x7F)
    {
      do
      {
        v7 = *(v1 + 68) - 1;
        *(v1 + 64) = 2 * v5;
        *(v1 + 68) = v7;
        this = LGH_Syntax::get_bits(v1, "update_probs", 1u);
        v6 = this | (2 * v6);
        *(v1 + 60) = v6;
        v5 = *(v1 + 64);
      }

      while (v5 < 0x80);
    }

    if (v3 > v4)
    {
      v8 = 0;
      v9 = v110;
      v10 = 1;
      do
      {
        v11 = 0;
        v111 = v10;
        v12 = 1;
        do
        {
          v113 = 0;
          v112 = v12;
          do
          {
            for (i = 0; i != 3; ++i)
            {
              v14 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * v113 + i + 22);
              v16 = *(v1 + 60);
              v15 = *(v1 + 64);
              v17 = (252 * v15 - 252) >> 8;
              v18 = v17 + 1;
              if (v16 <= v17)
              {
                v19 = *(v1 + 60);
              }

              else
              {
                v19 = v16 - v18;
                v18 = v15 - v18;
                *(v1 + 60) = v19;
              }

              *(v1 + 64) = v18;
              if (v18 <= 0x7F)
              {
                do
                {
                  v20 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v18;
                  *(v1 + 68) = v20;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v19 = this | (2 * v19);
                  *(v1 + 60) = v19;
                  v18 = *(v1 + 64);
                }

                while (v18 < 0x80);
              }

              if (v16 > v17)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v21 = inv_map_table[this];
                v22 = (v14 - 1);
                v23 = ~v14 + (v21 >> 1);
                if (v21)
                {
                  v23 = ~v14 - ((v21 + 1) >> 1);
                }

                if (v21 <= 2 * ~v14)
                {
                  v24 = v23;
                }

                else
                {
                  v24 = inv_map_table[this];
                }

                v25 = 2 * (v22 & 0x7F);
                v26 = v22 + (v21 >> 1);
                v27 = v22 - ((v21 + 1) >> 1);
                if ((v21 & 1) == 0)
                {
                  LOBYTE(v27) = v26;
                }

                if (v25 >= v21)
                {
                  LOBYTE(v21) = v27;
                }

                v28 = v21 + 1;
                if (((v14 - 1) & 0x80) != 0)
                {
                  LOBYTE(v14) = ~v24;
                }

                else
                {
                  LOBYTE(v14) = v28;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * v113 + i + 22) = v14;
            }

            ++v113;
          }

          while (v113 != 3);
          for (j = 0; j != 6; ++j)
          {
            for (k = 0; k != 3; ++k)
            {
              v30 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * j + k + 31);
              v32 = *(v1 + 60);
              v31 = *(v1 + 64);
              v33 = (252 * v31 - 252) >> 8;
              v34 = v33 + 1;
              if (v32 <= v33)
              {
                v35 = *(v1 + 60);
              }

              else
              {
                v35 = v32 - v34;
                v34 = v31 - v34;
                *(v1 + 60) = v35;
              }

              *(v1 + 64) = v34;
              if (v34 <= 0x7F)
              {
                do
                {
                  v36 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v34;
                  *(v1 + 68) = v36;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v35 = this | (2 * v35);
                  *(v1 + 60) = v35;
                  v34 = *(v1 + 64);
                }

                while (v34 < 0x80);
              }

              if (v32 > v33)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v37 = inv_map_table[this];
                v38 = (v30 - 1);
                v39 = ~v30 + (v37 >> 1);
                if (v37)
                {
                  v39 = ~v30 - ((v37 + 1) >> 1);
                }

                if (v37 <= 2 * ~v30)
                {
                  v40 = v39;
                }

                else
                {
                  v40 = inv_map_table[this];
                }

                v41 = 2 * (v38 & 0x7F);
                v42 = v38 + (v37 >> 1);
                v43 = v38 - ((v37 + 1) >> 1);
                if ((v37 & 1) == 0)
                {
                  LOBYTE(v43) = v42;
                }

                if (v41 >= v37)
                {
                  LOBYTE(v37) = v43;
                }

                v44 = v37 + 1;
                if (((v30 - 1) & 0x80) != 0)
                {
                  LOBYTE(v30) = ~v40;
                }

                else
                {
                  LOBYTE(v30) = v44;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * j + k + 31) = v30;
            }
          }

          for (m = 0; m != 6; ++m)
          {
            for (n = 0; n != 3; ++n)
            {
              v46 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * m + n + 49);
              v48 = *(v1 + 60);
              v47 = *(v1 + 64);
              v49 = (252 * v47 - 252) >> 8;
              v50 = v49 + 1;
              if (v48 <= v49)
              {
                v51 = *(v1 + 60);
              }

              else
              {
                v51 = v48 - v50;
                v50 = v47 - v50;
                *(v1 + 60) = v51;
              }

              *(v1 + 64) = v50;
              if (v50 <= 0x7F)
              {
                do
                {
                  v52 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v50;
                  *(v1 + 68) = v52;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v51 = this | (2 * v51);
                  *(v1 + 60) = v51;
                  v50 = *(v1 + 64);
                }

                while (v50 < 0x80);
              }

              if (v48 > v49)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v53 = inv_map_table[this];
                v54 = (v46 - 1);
                v55 = ~v46 + (v53 >> 1);
                if (v53)
                {
                  v55 = ~v46 - ((v53 + 1) >> 1);
                }

                if (v53 <= 2 * ~v46)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = inv_map_table[this];
                }

                v57 = 2 * (v54 & 0x7F);
                v58 = v54 + (v53 >> 1);
                v59 = v54 - ((v53 + 1) >> 1);
                if ((v53 & 1) == 0)
                {
                  LOBYTE(v59) = v58;
                }

                if (v57 >= v53)
                {
                  LOBYTE(v53) = v59;
                }

                v60 = v53 + 1;
                if (((v46 - 1) & 0x80) != 0)
                {
                  LOBYTE(v46) = ~v56;
                }

                else
                {
                  LOBYTE(v46) = v60;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * m + n + 49) = v46;
            }
          }

          for (ii = 0; ii != 6; ++ii)
          {
            for (jj = 0; jj != 3; ++jj)
            {
              v62 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * ii + jj + 67);
              v64 = *(v1 + 60);
              v63 = *(v1 + 64);
              v65 = (252 * v63 - 252) >> 8;
              v66 = v65 + 1;
              if (v64 <= v65)
              {
                v67 = *(v1 + 60);
              }

              else
              {
                v67 = v64 - v66;
                v66 = v63 - v66;
                *(v1 + 60) = v67;
              }

              *(v1 + 64) = v66;
              if (v66 <= 0x7F)
              {
                do
                {
                  v68 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v66;
                  *(v1 + 68) = v68;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v67 = this | (2 * v67);
                  *(v1 + 60) = v67;
                  v66 = *(v1 + 64);
                }

                while (v66 < 0x80);
              }

              if (v64 > v65)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v69 = inv_map_table[this];
                v70 = (v62 - 1);
                v71 = ~v62 + (v69 >> 1);
                if (v69)
                {
                  v71 = ~v62 - ((v69 + 1) >> 1);
                }

                if (v69 <= 2 * ~v62)
                {
                  v72 = v71;
                }

                else
                {
                  v72 = inv_map_table[this];
                }

                v73 = 2 * (v70 & 0x7F);
                v74 = v70 + (v69 >> 1);
                v75 = v70 - ((v69 + 1) >> 1);
                if ((v69 & 1) == 0)
                {
                  LOBYTE(v75) = v74;
                }

                if (v73 >= v69)
                {
                  LOBYTE(v69) = v75;
                }

                v76 = v69 + 1;
                if (((v62 - 1) & 0x80) != 0)
                {
                  LOBYTE(v62) = ~v72;
                }

                else
                {
                  LOBYTE(v62) = v76;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * ii + jj + 67) = v62;
            }
          }

          for (kk = 0; kk != 6; ++kk)
          {
            for (mm = 0; mm != 3; ++mm)
            {
              v78 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * kk + mm + 85);
              v80 = *(v1 + 60);
              v79 = *(v1 + 64);
              v81 = (252 * v79 - 252) >> 8;
              v82 = v81 + 1;
              if (v80 <= v81)
              {
                v83 = *(v1 + 60);
              }

              else
              {
                v83 = v80 - v82;
                v82 = v79 - v82;
                *(v1 + 60) = v83;
              }

              *(v1 + 64) = v82;
              if (v82 <= 0x7F)
              {
                do
                {
                  v84 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v82;
                  *(v1 + 68) = v84;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v83 = this | (2 * v83);
                  *(v1 + 60) = v83;
                  v82 = *(v1 + 64);
                }

                while (v82 < 0x80);
              }

              if (v80 > v81)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v85 = inv_map_table[this];
                v86 = (v78 - 1);
                v87 = ~v78 + (v85 >> 1);
                if (v85)
                {
                  v87 = ~v78 - ((v85 + 1) >> 1);
                }

                if (v85 <= 2 * ~v78)
                {
                  v88 = v87;
                }

                else
                {
                  v88 = inv_map_table[this];
                }

                v89 = 2 * (v86 & 0x7F);
                v90 = v86 + (v85 >> 1);
                v91 = v86 - ((v85 + 1) >> 1);
                if ((v85 & 1) == 0)
                {
                  LOBYTE(v91) = v90;
                }

                if (v89 >= v85)
                {
                  LOBYTE(v85) = v91;
                }

                v92 = v85 + 1;
                if (((v78 - 1) & 0x80) != 0)
                {
                  LOBYTE(v78) = ~v88;
                }

                else
                {
                  LOBYTE(v78) = v92;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * kk + mm + 85) = v78;
            }
          }

          for (nn = 0; nn != 6; ++nn)
          {
            for (i1 = 0; i1 != 3; ++i1)
            {
              v94 = *(*(v1 + 96) + 396 * v9 + 198 * v8 + 99 * v11 + 3 * nn + i1 + 103);
              v96 = *(v1 + 60);
              v95 = *(v1 + 64);
              v97 = (252 * v95 - 252) >> 8;
              v98 = v97 + 1;
              if (v96 <= v97)
              {
                v99 = *(v1 + 60);
              }

              else
              {
                v99 = v96 - v98;
                v98 = v95 - v98;
                *(v1 + 60) = v99;
              }

              *(v1 + 64) = v98;
              if (v98 <= 0x7F)
              {
                do
                {
                  v100 = *(v1 + 68) - 1;
                  *(v1 + 64) = 2 * v98;
                  *(v1 + 68) = v100;
                  this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
                  v99 = this | (2 * v99);
                  *(v1 + 60) = v99;
                  v98 = *(v1 + 64);
                }

                while (v98 < 0x80);
              }

              if (v96 > v97)
              {
                this = LGH_Syntax::decode_term_subexp(v1);
                v101 = inv_map_table[this];
                v102 = (v94 - 1);
                v103 = ~v94 + (v101 >> 1);
                if (v101)
                {
                  v103 = ~v94 - ((v101 + 1) >> 1);
                }

                if (v101 <= 2 * ~v94)
                {
                  v104 = v103;
                }

                else
                {
                  v104 = inv_map_table[this];
                }

                v105 = 2 * (v102 & 0x7F);
                v106 = v102 + (v101 >> 1);
                v107 = v102 - ((v101 + 1) >> 1);
                if ((v101 & 1) == 0)
                {
                  LOBYTE(v107) = v106;
                }

                if (v105 >= v101)
                {
                  LOBYTE(v101) = v107;
                }

                v108 = v101 + 1;
                if (((v94 - 1) & 0x80) != 0)
                {
                  LOBYTE(v94) = ~v104;
                }

                else
                {
                  LOBYTE(v94) = v108;
                }
              }

              v9 = v110;
              *(*(v1 + 96) + 396 * v110 + 198 * v8 + 99 * v11 + 3 * nn + i1 + 103) = v94;
            }
          }

          v12 = 0;
          v11 = 1;
        }

        while ((v112 & 1) != 0);
        v10 = 0;
        v8 = 1;
      }

      while ((v111 & 1) != 0);
    }

    ++v110;
  }

  while (v110 <= v109);
  return this;
}

uint64_t LGH_Syntax::frame_reference_mode(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  v3 = v2[18];
  if (v2[20] == v3 && v2[19] == v3)
  {
    goto LABEL_20;
  }

  v6 = *(this + 60);
  v5 = *(this + 64);
  v7 = ((v5 << 7) - 128) >> 8;
  v8 = v7 + 1;
  if (v6 <= v7)
  {
    v9 = *(this + 60);
  }

  else
  {
    v9 = v6 - v8;
    v8 = v5 - v8;
    *(this + 60) = v9;
  }

  *(this + 64) = v8;
  if (v8 <= 0x7F)
  {
    do
    {
      v10 = *(v1 + 68) - 1;
      *(v1 + 64) = 2 * v8;
      *(v1 + 68) = v10;
      this = LGH_Syntax::get_bits(v1, "non_single_reference", 1u);
      v9 = this | (2 * v9);
      *(v1 + 60) = v9;
      v8 = *(v1 + 64);
    }

    while (v8 < 0x80);
  }

  if (v6 <= v7)
  {
LABEL_20:
    v19 = 0;
    v20 = 2;
  }

  else
  {
    v11 = ((v8 << 7) - 128) >> 8;
    v12 = v11 + 1;
    v13 = v9;
    if (v9 > v11)
    {
      v13 = v9 - v12;
      v12 = v8 - v12;
      *(v1 + 60) = v13;
    }

    *(v1 + 64) = v12;
    if (v12 <= 0x7F)
    {
      do
      {
        v14 = *(v1 + 68) - 1;
        *(v1 + 64) = 2 * v12;
        *(v1 + 68) = v14;
        this = LGH_Syntax::get_bits(v1, "reference_select", 1u);
        v13 = this | (2 * v13);
        *(v1 + 60) = v13;
        v12 = *(v1 + 64);
      }

      while (v12 < 0x80);
    }

    v15 = *(v1 + 7736);
    if (v9 <= v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *(v15 + 2) = v16;
    v17 = *(v1 + 80);
    v18 = v17[18];
    if (v18 == v17[19])
    {
      *(v15 + 3) = 259;
      v19 = 2;
    }

    else
    {
      if (v18 == v17[20])
      {
        v21 = 258;
      }

      else
      {
        v21 = 513;
      }

      *(v15 + 3) = v21;
      v19 = 3;
    }

    v20 = 5;
  }

  *(*(v1 + 7736) + v20) = v19;
  return this;
}

uint64_t LGH_Syntax::frame_reference_mode_probs(uint64_t this)
{
  v1 = this;
  v2 = *(*(this + 7736) + 2);
  if (v2 == 2)
  {
    for (i = 0; i != 5; ++i)
    {
      v4 = *(*(v1 + 96) + i + 1642);
      v6 = *(v1 + 60);
      v5 = *(v1 + 64);
      v7 = (252 * v5 - 252) >> 8;
      v8 = v7 + 1;
      if (v6 <= v7)
      {
        v9 = *(v1 + 60);
      }

      else
      {
        v9 = v6 - v8;
        v8 = v5 - v8;
        *(v1 + 60) = v9;
      }

      *(v1 + 64) = v8;
      if (v8 <= 0x7F)
      {
        do
        {
          v10 = *(v1 + 68) - 1;
          *(v1 + 64) = 2 * v8;
          *(v1 + 68) = v10;
          this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
          v9 = this | (2 * v9);
          *(v1 + 60) = v9;
          v8 = *(v1 + 64);
        }

        while (v8 < 0x80);
      }

      if (v6 > v7)
      {
        this = LGH_Syntax::decode_term_subexp(v1);
        v11 = inv_map_table[this];
        v12 = (v4 - 1);
        v13 = ~v4 + (v11 >> 1);
        if (v11)
        {
          v13 = ~v4 - ((v11 + 1) >> 1);
        }

        if (v11 <= 2 * ~v4)
        {
          v14 = v13;
        }

        else
        {
          v14 = inv_map_table[this];
        }

        v15 = 2 * (v12 & 0x7F);
        v16 = v12 + (v11 >> 1);
        v17 = v12 - ((v11 + 1) >> 1);
        if ((v11 & 1) == 0)
        {
          LOBYTE(v17) = v16;
        }

        if (v15 >= v11)
        {
          LOBYTE(v11) = v17;
        }

        v18 = v11 + 1;
        if (((v4 - 1) & 0x80) != 0)
        {
          LOBYTE(v4) = ~v14;
        }

        else
        {
          LOBYTE(v4) = v18;
        }
      }

      *(*(v1 + 96) + i + 1642) = v4;
    }

    v2 = *(*(v1 + 7736) + 2);
  }

  if (v2 == 1)
  {
    goto LABEL_62;
  }

  for (j = 0; j != 5; *(*(v1 + 96) + 2 * j++ + 1648) = v34)
  {
    v20 = *(*(v1 + 96) + 2 * j + 1647);
    v22 = *(v1 + 60);
    v21 = *(v1 + 64);
    v23 = (252 * v21 - 252) >> 8;
    v24 = v23 + 1;
    if (v22 <= v23)
    {
      v25 = *(v1 + 60);
    }

    else
    {
      v25 = v22 - v24;
      v24 = v21 - v24;
      *(v1 + 60) = v25;
    }

    *(v1 + 64) = v24;
    if (v24 <= 0x7F)
    {
      do
      {
        v26 = *(v1 + 68) - 1;
        *(v1 + 64) = 2 * v24;
        *(v1 + 68) = v26;
        this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
        v25 = this | (2 * v25);
        *(v1 + 60) = v25;
        v24 = *(v1 + 64);
      }

      while (v24 < 0x80);
    }

    if (v22 > v23)
    {
      this = LGH_Syntax::decode_term_subexp(v1);
      v27 = inv_map_table[this];
      v28 = v20 - 1;
      if (((v20 - 1) & 0x80) != 0)
      {
        v31 = ~v20;
        if (v27 <= 2 * ~v20)
        {
          v32 = v31 + (v27 >> 1);
          v33 = v31 - ((v27 + 1) >> 1);
          if (v27)
          {
            LOBYTE(v27) = v33;
          }

          else
          {
            LOBYTE(v27) = v32;
          }
        }

        LOBYTE(v20) = ~v27;
      }

      else
      {
        if (2 * (v28 & 0x7Fu) >= v27)
        {
          v29 = v28 + (v27 >> 1);
          v30 = v28 - ((v27 + 1) >> 1);
          if (v27)
          {
            LOBYTE(v27) = v30;
          }

          else
          {
            LOBYTE(v27) = v29;
          }
        }

        LOBYTE(v20) = v27 + 1;
      }
    }

    *(*(v1 + 96) + 2 * j + 1647) = v20;
    v34 = *(*(v1 + 96) + 2 * j + 1648);
    v36 = *(v1 + 60);
    v35 = *(v1 + 64);
    v37 = (252 * v35 - 252) >> 8;
    v38 = v37 + 1;
    if (v36 <= v37)
    {
      v39 = *(v1 + 60);
    }

    else
    {
      v39 = v36 - v38;
      v38 = v35 - v38;
      *(v1 + 60) = v39;
    }

    *(v1 + 64) = v38;
    if (v38 <= 0x7F)
    {
      do
      {
        v40 = *(v1 + 68) - 1;
        *(v1 + 64) = 2 * v38;
        *(v1 + 68) = v40;
        this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
        v39 = this | (2 * v39);
        *(v1 + 60) = v39;
        v38 = *(v1 + 64);
      }

      while (v38 < 0x80);
    }

    if (v36 > v37)
    {
      this = LGH_Syntax::decode_term_subexp(v1);
      v41 = inv_map_table[this];
      v42 = (v34 - 1);
      v43 = ~v34 + (v41 >> 1);
      if (v41)
      {
        v43 = ~v34 - ((v41 + 1) >> 1);
      }

      if (v41 <= 2 * ~v34)
      {
        v44 = v43;
      }

      else
      {
        v44 = inv_map_table[this];
      }

      v45 = 2 * (v42 & 0x7F);
      v46 = v42 + (v41 >> 1);
      v47 = v42 - ((v41 + 1) >> 1);
      if ((v41 & 1) == 0)
      {
        LOBYTE(v47) = v46;
      }

      if (v45 >= v41)
      {
        LOBYTE(v41) = v47;
      }

      v48 = v41 + 1;
      if (((v34 - 1) & 0x80) != 0)
      {
        LOBYTE(v34) = ~v44;
      }

      else
      {
        LOBYTE(v34) = v48;
      }
    }
  }

  if (*(*(v1 + 7736) + 2))
  {
LABEL_62:
    for (k = 0; k != 5; ++k)
    {
      v50 = *(*(v1 + 96) + k + 1657);
      v52 = *(v1 + 60);
      v51 = *(v1 + 64);
      v53 = (252 * v51 - 252) >> 8;
      v54 = v53 + 1;
      if (v52 <= v53)
      {
        v55 = *(v1 + 60);
      }

      else
      {
        v55 = v52 - v54;
        v54 = v51 - v54;
        *(v1 + 60) = v55;
      }

      *(v1 + 64) = v54;
      if (v54 <= 0x7F)
      {
        do
        {
          v56 = *(v1 + 68) - 1;
          *(v1 + 64) = 2 * v54;
          *(v1 + 68) = v56;
          this = LGH_Syntax::get_bits(v1, "update_prob", 1u);
          v55 = this | (2 * v55);
          *(v1 + 60) = v55;
          v54 = *(v1 + 64);
        }

        while (v54 < 0x80);
      }

      if (v52 > v53)
      {
        this = LGH_Syntax::decode_term_subexp(v1);
        v57 = inv_map_table[this];
        v58 = (v50 - 1);
        v59 = ~v50 + (v57 >> 1);
        if (v57)
        {
          v59 = ~v50 - ((v57 + 1) >> 1);
        }

        if (v57 <= 2 * ~v50)
        {
          v60 = v59;
        }

        else
        {
          v60 = inv_map_table[this];
        }

        v61 = 2 * (v58 & 0x7F);
        v62 = v58 + (v57 >> 1);
        v63 = v58 - ((v57 + 1) >> 1);
        if ((v57 & 1) == 0)
        {
          LOBYTE(v63) = v62;
        }

        if (v61 >= v57)
        {
          LOBYTE(v57) = v63;
        }

        v64 = v57 + 1;
        if (((v50 - 1) & 0x80) != 0)
        {
          LOBYTE(v50) = ~v60;
        }

        else
        {
          LOBYTE(v50) = v64;
        }
      }

      *(*(v1 + 96) + k + 1657) = v50;
    }
  }

  return this;
}

uint64_t LGH_Syntax::mv_probs(LGH_Syntax *this)
{
  for (i = 1836; i != 1839; ++i)
  {
    *(*(this + 12) + i) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + i));
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    *(*(this + 12) + 22 * v3 + 1839) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + 22 * v3 + 1839));
    v6 = 22 * v3 + 1840;
    v7 = 10;
    do
    {
      *(*(this + 12) + v6) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + v6));
      ++v6;
      --v7;
    }

    while (v7);
    *(*(this + 12) + 22 * v3 + 1850) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + 22 * v3 + 1850));
    v8 = 22 * v3 + 1851;
    v9 = 10;
    do
    {
      *(*(this + 12) + v8) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + v8));
      ++v8;
      --v9;
    }

    while (v9);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = 0;
    v13 = v11;
    v14 = 9 * v10;
    v15 = 9 * v10 + 1883;
    v16 = 1;
    do
    {
      v17 = v16;
      v18 = v15 + 3 * v12;
      v19 = 3;
      do
      {
        *(*(this + 12) + v18) = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + v18));
        ++v18;
        --v19;
      }

      while (v19);
      v16 = 0;
      v12 = 1;
    }

    while ((v17 & 1) != 0);
    v20 = v14 + 1889;
    v21 = 3;
    do
    {
      result = LGH_Syntax::update_mv_prob(this, *(*(this + 12) + v20));
      *(*(this + 12) + v20++) = result;
      --v21;
    }

    while (v21);
    v11 = 0;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
  if (*(*(this + 10) + 21))
  {
    v23 = 0;
    v24 = *(this + 12);
    v25 = 1;
    do
    {
      v26 = v25;
      updated = LGH_Syntax::update_mv_prob(this, *(v24 + 2 * v23 + 1901));
      v28 = *(this + 12) + 2 * v23;
      *(v28 + 1901) = updated;
      result = LGH_Syntax::update_mv_prob(this, *(v28 + 1902));
      v25 = 0;
      v24 = *(this + 12);
      *(v24 + 2 * v23 + 1902) = result;
      v23 = 1;
    }

    while ((v26 & 1) != 0);
  }

  return result;
}

uint64_t LGH_Syntax::get_tile_info(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v6 = a4[16];
  v5 = a4[17];
  v7 = 1 << v5;
  a4[70] = 1 << v5;
  v8 = 1 << v6;
  a4[71] = 1 << v6;
  v9 = 1 << v5 << v6;
  v10 = v6 > 6 || v5 > 2;
  if (v10 || v9 > 0x100)
  {
    if ((*(a1 + 7886) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v62 = "get_tile_info";
      v63 = 1024;
      v64 = 256;
      v65 = 1024;
      *v66 = v9;
      *&v66[4] = 1024;
      *&v66[6] = v7;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v8;
      v55 = MEMORY[0x277D86220];
      v56 = "AppleAVD: %s: max allow tiles %d got %d, tile rows : %d, tile cols : %d\n";
      v57 = 36;
LABEL_52:
      _os_log_impl(&dword_277606000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, v57);
    }
  }

  else
  {
    v13 = a2;
    v14 = 0;
    v60 = 0;
    v15 = a2 - v4;
    v59 = a4 + 72;
    v16 = a4 + 328;
    v17 = 1 << v6;
    while (!v17)
    {
LABEL_22:
      if (++v14 >= v7)
      {
        v21 = 0;
        v23 = a4[22];
        if (v7 + 1 > 1)
        {
          v24 = v7 + 1;
        }

        else
        {
          v24 = 1;
        }

        v25 = vdupq_n_s64(v24 - 1);
        v26 = vdupq_n_s32(v23);
        v27 = vdupq_n_s32((v23 + 7) >> 3);
        v22 = (a4 + 17);
        v28 = vld1q_dup_f32(v22);
        v29 = (v24 + 3) & 0x1FFFFFFFCLL;
        v30 = xmmword_27775BCE0;
        v31 = xmmword_27775BCD0;
        v32 = vdupq_n_s64(4uLL);
        v33 = a4 + 587;
        v34 = vnegq_s32(v28);
        do
        {
          v35 = vmovn_s64(vcgeq_u64(v25, v31));
          v36.i32[0] = v21;
          v36.i32[1] = v21 + 1;
          v36.u64[1] = vorr_s8(vdup_n_s32(v21), 0x300000002);
          v37 = vminq_s32(vshlq_n_s32(vshlq_u32(vmulq_s32(v27, v36), v34), 3uLL), v26);
          if (vuzp1_s16(v35, 0x300000002).u8[0])
          {
            *(v33 - 3) = v37.i32[0];
          }

          if (vuzp1_s16(v35, 0x300000002).i8[2])
          {
            *(v33 - 2) = v37.i32[1];
          }

          if (vuzp1_s16(0x300000002, vmovn_s64(vcgeq_u64(v25, *&v30))).i32[1])
          {
            *(v33 - 1) = v37.i64[1];
          }

          v21 += 4;
          v30 = vaddq_s64(v30, v32);
          v31 = vaddq_s64(v31, v32);
          v33 += 4;
        }

        while (v29 != v21);
        v38 = 0;
        v39 = a4[21];
        if ((v8 + 1) > 1)
        {
          v40 = (v8 + 1);
        }

        else
        {
          v40 = 1;
        }

        v41 = vdupq_n_s64(v40 - 1);
        v42 = (a4 + 16);
        v43 = vdupq_n_s32(v39);
        v44 = vdupq_n_s32((v39 + 7) >> 3);
        v45 = vld1q_dup_f32(v42);
        v46 = xmmword_27775BCE0;
        v47 = xmmword_27775BCD0;
        v48 = a4 + 592;
        v49 = vnegq_s32(v45);
        v50 = vdupq_n_s64(4uLL);
        do
        {
          v51 = vmovn_s64(vcgeq_u64(v41, v47));
          v52.i32[0] = v38;
          v52.i32[1] = v38 + 1;
          v52.u64[1] = vorr_s8(vdup_n_s32(v38), 0x300000002);
          v53 = vminq_s32(vshlq_n_s32(vshlq_u32(vmulq_s32(v44, v52), v49), 3uLL), v43);
          if (vuzp1_s16(v51, 0x300000002).u8[0])
          {
            *(v48 - 3) = v53.i32[0];
          }

          if (vuzp1_s16(v51, 0x300000002).i8[2])
          {
            *(v48 - 2) = v53.i32[1];
          }

          if (vuzp1_s16(0x300000002, vmovn_s64(vcgeq_u64(v41, *&v46))).i32[1])
          {
            *(v48 - 1) = v53.i64[1];
          }

          v38 += 4;
          v46 = vaddq_s64(v46, v50);
          v47 = vaddq_s64(v47, v50);
          v48 += 4;
        }

        while (((v40 + 3) & 0x1FFFFFFFCLL) != v38);
        return 0;
      }
    }

    v18 = 0;
    while (1)
    {
      if (v18 == v17 - 1 && v14 == a4[70] - 1)
      {
        v19 = a3 - v15;
        v20 = v15;
      }

      else
      {
        v19 = bswap32(*v13);
        v20 = v15 + 4;
        v13 = (v13 + v19 + 4);
      }

      v15 = &v20[v19];
      if (&v20[v19] > a3)
      {
        break;
      }

      if (v20 >> 32 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v62 = "get_tile_info";
        v63 = 1024;
        v64 = 1307;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v59[v60 + v18] = v20;
      if (HIDWORD(v19) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v62 = "get_tile_info";
        v63 = 1024;
        v64 = 1308;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
      }

      v16[v60 + v18++] = v19;
      v17 = a4[71];
      if (v18 >= v17)
      {
        v7 = a4[70];
        v60 += v18;
        v8 = a4[71];
        goto LABEL_22;
      }
    }

    if ((*(a1 + 7886) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v62 = "get_tile_info";
      v63 = 1024;
      v64 = v60 + v18;
      v65 = 2048;
      *v66 = v20;
      *&v66[8] = 2048;
      v67 = v19;
      v55 = MEMORY[0x277D86220];
      v56 = "AppleAVD: %s: tile %d offset %lu size %lu corrupted\n";
      v57 = 38;
      goto LABEL_52;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t LGH_Syntax::merge_probs(LGH_Syntax *this, const int *a2, unsigned int a3, unsigned __int8 *a4, const unsigned int *a5, unsigned int a6, unsigned int a7)
{
  v14 = a2[a3];
  if (v14 <= 0)
  {
    v15 = a5[-v14];
  }

  else
  {
    v15 = LGH_Syntax::merge_probs(this, a2, v14, a4, a5, a6, a7);
  }

  v16 = a2[a3 + 1];
  if (v16 <= 0)
  {
    v17 = a5[-v16];
  }

  else
  {
    v17 = LGH_Syntax::merge_probs(this, a2, v16, a4, a5, a6, a7);
  }

  result = v17 + v15;
  if (result)
  {
    v19 = ((result >> 1) + (v15 << 8)) / result;
    if (v19 >= 0xFF)
    {
      LOWORD(v20) = 255;
    }

    else
    {
      v20 = ((result >> 1) + (v15 << 8)) / result;
    }

    if (v19 < 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = 128;
  }

  if (result >= a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = result;
  }

  a4[a3 >> 1] = ((256 - v22 * a7 / a6) * a4[a3 >> 1] + v22 * a7 / a6 * v21 + 128) >> 8;
  return result;
}

uint64_t LGH_Syntax::adapt_coef_probs(uint64_t this)
{
  v106 = *MEMORY[0x277D85DE8];
  v1 = 112;
  if (!*(*(this + 80) + 74))
  {
    if (*(this + 88))
    {
      v1 = 112;
    }

    else
    {
      v1 = 128;
    }
  }

  v2 = 0;
  v98 = 22;
  v97 = 31;
  v96 = 49;
  v95 = 67;
  v94 = 85;
  v93 = 103;
  do
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = 0;
      v99 = v4;
      v6 = 1;
      do
      {
        v7 = 0;
        v8 = v6;
        v9 = 99 * v5;
        v10 = v98 + 198 * v3 + 99 * v5;
        do
        {
          v11 = 0;
          v12 = *(this + 7728);
          v13 = (v12 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v7);
          v14 = v13[546];
          v15 = v13[547];
          v16 = v13[548];
          v100 = v13[549];
          v101 = *(v12 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v7 + 72) - v100;
          v102 = v14;
          v103 = v16 + v15;
          v104 = v15;
          v105 = v16;
          v17 = v10;
          do
          {
            v18 = *(&v100 + v11);
            v19 = *(&v100 + v11 + 4) + v18;
            if (v19)
            {
              v20 = ((v19 >> 1) + (v18 << 8)) / v19;
              if (v20 >= 0xFF)
              {
                v21 = 255;
              }

              else
              {
                v21 = v20;
              }

              if (v20 < 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = v21;
              }
            }

            else
            {
              v22 = 128;
            }

            v11 += 8;
            if (v19 >= 24)
            {
              v19 = 24;
            }

            *(*(this + 96) + v17) = (v22 * (v19 * v1 / 0x18u) + (256 - v19 * v1 / 0x18u) * *(*(this + 96) + v17) + 128) >> 8;
            ++v17;
          }

          while (v11 != 24);
          ++v7;
          v10 += 3;
        }

        while (v7 != 3);
        v23 = 0;
        v24 = v97 + 198 * v3 + v9;
        do
        {
          v25 = 0;
          v26 = *(this + 7728);
          v27 = (v26 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v23);
          v28 = v27[558];
          v29 = v27[559];
          v30 = v27[560];
          v100 = v27[561];
          v101 = *(v26 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v23 + 84) - v100;
          v102 = v28;
          v103 = v30 + v29;
          v104 = v29;
          v105 = v30;
          v31 = v24;
          do
          {
            v32 = *(&v100 + v25);
            v33 = *(&v100 + v25 + 4) + v32;
            if (v33)
            {
              v34 = ((v33 >> 1) + (v32 << 8)) / v33;
              if (v34 >= 0xFF)
              {
                v35 = 255;
              }

              else
              {
                v35 = v34;
              }

              if (v34 < 1)
              {
                v36 = 1;
              }

              else
              {
                v36 = v35;
              }
            }

            else
            {
              v36 = 128;
            }

            v25 += 8;
            if (v33 >= 24)
            {
              v33 = 24;
            }

            *(*(this + 96) + v31) = (v36 * (v33 * v1 / 0x18u) + (256 - v33 * v1 / 0x18u) * *(*(this + 96) + v31) + 128) >> 8;
            ++v31;
          }

          while (v25 != 24);
          ++v23;
          v24 += 3;
        }

        while (v23 != 6);
        v37 = 0;
        v38 = v96 + 198 * v3 + v9;
        do
        {
          v39 = 0;
          v40 = *(this + 7728);
          v41 = (v40 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v37);
          v42 = v41[582];
          v43 = v41[583];
          v44 = v41[584];
          v100 = v41[585];
          v101 = *(v40 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v37 + 108) - v100;
          v102 = v42;
          v103 = v44 + v43;
          v104 = v43;
          v105 = v44;
          v45 = v38;
          do
          {
            v46 = *(&v100 + v39);
            v47 = *(&v100 + v39 + 4) + v46;
            if (v47)
            {
              v48 = ((v47 >> 1) + (v46 << 8)) / v47;
              if (v48 >= 0xFF)
              {
                v49 = 255;
              }

              else
              {
                v49 = v48;
              }

              if (v48 < 1)
              {
                v50 = 1;
              }

              else
              {
                v50 = v49;
              }
            }

            else
            {
              v50 = 128;
            }

            v39 += 8;
            if (v47 >= 24)
            {
              v47 = 24;
            }

            *(*(this + 96) + v45) = (v50 * (v47 * v1 / 0x18u) + (256 - v47 * v1 / 0x18u) * *(*(this + 96) + v45) + 128) >> 8;
            ++v45;
          }

          while (v39 != 24);
          ++v37;
          v38 += 3;
        }

        while (v37 != 6);
        v51 = 0;
        v52 = v95 + 198 * v3 + v9;
        do
        {
          v53 = 0;
          v54 = *(this + 7728);
          v55 = (v54 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v51);
          v56 = v55[606];
          v57 = v55[607];
          v58 = v55[608];
          v100 = v55[609];
          v101 = *(v54 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v51 + 132) - v100;
          v102 = v56;
          v103 = v58 + v57;
          v104 = v57;
          v105 = v58;
          v59 = v52;
          do
          {
            v60 = *(&v100 + v53);
            v61 = *(&v100 + v53 + 4) + v60;
            if (v61)
            {
              v62 = ((v61 >> 1) + (v60 << 8)) / v61;
              if (v62 >= 0xFF)
              {
                v63 = 255;
              }

              else
              {
                v63 = v62;
              }

              if (v62 < 1)
              {
                v64 = 1;
              }

              else
              {
                v64 = v63;
              }
            }

            else
            {
              v64 = 128;
            }

            v53 += 8;
            if (v61 >= 24)
            {
              v61 = 24;
            }

            *(*(this + 96) + v59) = (v64 * (v61 * v1 / 0x18u) + (256 - v61 * v1 / 0x18u) * *(*(this + 96) + v59) + 128) >> 8;
            ++v59;
          }

          while (v53 != 24);
          ++v51;
          v52 += 3;
        }

        while (v51 != 6);
        v65 = 0;
        v66 = v94 + 198 * v3 + v9;
        do
        {
          v67 = 0;
          v68 = *(this + 7728);
          v69 = (v68 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v65);
          v70 = v69[630];
          v71 = v69[631];
          v72 = v69[632];
          v100 = v69[633];
          v101 = *(v68 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v65 + 156) - v100;
          v102 = v70;
          v103 = v72 + v71;
          v104 = v71;
          v105 = v72;
          v73 = v66;
          do
          {
            v74 = *(&v100 + v67);
            v75 = *(&v100 + v67 + 4) + v74;
            if (v75)
            {
              v76 = ((v75 >> 1) + (v74 << 8)) / v75;
              if (v76 >= 0xFF)
              {
                v77 = 255;
              }

              else
              {
                v77 = v76;
              }

              if (v76 < 1)
              {
                v78 = 1;
              }

              else
              {
                v78 = v77;
              }
            }

            else
            {
              v78 = 128;
            }

            v67 += 8;
            if (v75 >= 24)
            {
              v75 = 24;
            }

            *(*(this + 96) + v73) = (v78 * (v75 * v1 / 0x18u) + (256 - v75 * v1 / 0x18u) * *(*(this + 96) + v73) + 128) >> 8;
            ++v73;
          }

          while (v67 != 24);
          ++v65;
          v66 += 3;
        }

        while (v65 != 6);
        v79 = 0;
        v80 = v93 + 198 * v3 + v9;
        do
        {
          v81 = 0;
          v82 = *(this + 7728);
          v83 = (v82 + 2112 * v2 + 1056 * v3 + 528 * v5 + 16 * v79);
          v84 = v83[654];
          v85 = v83[655];
          v86 = v83[656];
          v100 = v83[657];
          v101 = *(v82 + 528 * v2 + 264 * v3 + 132 * v5 + 4 * v79 + 180) - v100;
          v102 = v84;
          v103 = v86 + v85;
          v104 = v85;
          v105 = v86;
          v87 = v80;
          do
          {
            v88 = *(&v100 + v81);
            v89 = *(&v100 + v81 + 4) + v88;
            if (v89)
            {
              v90 = ((v89 >> 1) + (v88 << 8)) / v89;
              if (v90 >= 0xFF)
              {
                v91 = 255;
              }

              else
              {
                v91 = v90;
              }

              if (v90 < 1)
              {
                v92 = 1;
              }

              else
              {
                v92 = v91;
              }
            }

            else
            {
              v92 = 128;
            }

            v81 += 8;
            if (v89 >= 24)
            {
              v89 = 24;
            }

            *(*(this + 96) + v87) = (v92 * (v89 * v1 / 0x18u) + (256 - v89 * v1 / 0x18u) * *(*(this + 96) + v87) + 128) >> 8;
            ++v87;
          }

          while (v81 != 24);
          ++v79;
          v80 += 3;
        }

        while (v79 != 6);
        v6 = 0;
        v5 = 1;
      }

      while ((v8 & 1) != 0);
      v4 = 0;
      v3 = 1;
    }

    while ((v99 & 1) != 0);
    ++v2;
    v97 += 396;
    v98 += 396;
    v95 += 396;
    v96 += 396;
    v93 += 396;
    v94 += 396;
  }

  while (v2 != 4);
  return this;
}

uint64_t LGH_Syntax::adapt_noncoef_probs(LGH_Syntax *this)
{
  v2 = 1638;
  v3 = 10820;
  do
  {
    v4 = (*(this + 966) + v3);
    v5 = *(v4 - 1);
    v6 = *v4 + v5;
    if (v6)
    {
      v7 = ((v6 >> 1) + (v5 << 8)) / v6;
      if (v7 >= 0xFF)
      {
        v8 = 255;
      }

      else
      {
        v8 = v7;
      }

      if (v7 < 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 128;
    }

    if (v6 >= 20)
    {
      v6 = 20;
    }

    *(*(this + 12) + v2) = (v9 * ((v6 << 7) / 0x14u) + (256 - (v6 << 7) / 0x14u) * *(*(this + 12) + v2) + 128) >> 8;
    ++v2;
    v3 += 8;
  }

  while (v2 != 1642);
  v10 = 10852;
  do
  {
    v11 = (*(this + 966) + v10);
    v12 = *(v11 - 1);
    v13 = *v11 + v12;
    if (v13)
    {
      v14 = ((v13 >> 1) + (v12 << 8)) / v13;
      if (v14 >= 0xFF)
      {
        v15 = 255;
      }

      else
      {
        v15 = v14;
      }

      if (v14 < 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = 128;
    }

    if (v13 >= 20)
    {
      v13 = 20;
    }

    *(*(this + 12) + v2) = (v16 * ((v13 << 7) / 0x14u) + (256 - (v13 << 7) / 0x14u) * *(*(this + 12) + v2) + 128) >> 8;
    ++v2;
    v10 += 8;
  }

  while (v2 != 1647);
  v17 = 1657;
  v18 = 10972;
  do
  {
    v19 = (*(this + 966) + v18);
    v20 = *(v19 - 1);
    v21 = *v19 + v20;
    if (v21)
    {
      v22 = ((v21 >> 1) + (v20 << 8)) / v21;
      if (v22 >= 0xFF)
      {
        v23 = 255;
      }

      else
      {
        v23 = v22;
      }

      if (v22 < 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = 128;
    }

    if (v21 >= 20)
    {
      v21 = 20;
    }

    *(*(this + 12) + v17) = (v24 * ((v21 << 7) / 0x14u) + (256 - (v21 << 7) / 0x14u) * *(*(this + 12) + v17) + 128) >> 8;
    ++v17;
    v18 += 8;
  }

  while (v17 != 1662);
  for (i = 0; i != 5; ++i)
  {
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = *(this + 966) + 16 * i + 8 * v26;
      v30 = *(v29 + 10888);
      v31 = *(v29 + 10892) + v30;
      if (v31)
      {
        v32 = ((v31 >> 1) + (v30 << 8)) / v31;
        if (v32 >= 0xFF)
        {
          v33 = 255;
        }

        else
        {
          v33 = v32;
        }

        if (v32 < 1)
        {
          v33 = 1;
        }
      }

      else
      {
        v33 = 128;
      }

      v27 = 0;
      v34 = *(this + 12) + 2 * i + v26;
      if (v31 >= 20)
      {
        v31 = 20;
      }

      *(v34 + 1647) = (v33 * ((v31 << 7) / 0x14u) + (256 - (v31 << 7) / 0x14u) * *(v34 + 1647) + 128) >> 8;
      v26 = 1;
    }

    while ((v28 & 1) != 0);
  }

  v35 = 1609;
  v36 = 10656;
  do
  {
    LGH_Syntax::merge_probs(this, inter_mode_tree, 0, (*(this + 12) + v35), (*(this + 966) + v36), 0x14u, 0x80u);
    v35 += 3;
    v36 += 16;
  }

  while (v35 != 1630);
  v37 = 1662;
  v38 = 11008;
  do
  {
    LGH_Syntax::merge_probs(this, intra_mode_tree, 0, (*(this + 12) + v37), (*(this + 966) + v38), 0x14u, 0x80u);
    v37 += 9;
    v38 += 40;
  }

  while (v37 != 1698);
  v39 = 11168;
  do
  {
    LGH_Syntax::merge_probs(this, intra_mode_tree, 0, (*(this + 12) + v37), (*(this + 966) + v39), 0x14u, 0x80u);
    v37 += 9;
    v39 += 40;
  }

  while (v37 != 1788);
  v40 = 11568;
  do
  {
    LGH_Syntax::merge_probs(this, partition_tree, 0, (*(this + 12) + v37), (*(this + 966) + v40), 0x14u, 0x80u);
    v37 += 3;
    v40 += 16;
  }

  while (v37 != 1836);
  v41 = 1606;
  v42 = 10636;
  do
  {
    v43 = (*(this + 966) + v42);
    v44 = *(v43 - 1);
    v45 = *v43 + v44;
    if (v45)
    {
      v46 = ((v45 >> 1) + (v44 << 8)) / v45;
      if (v46 >= 0xFF)
      {
        v47 = 255;
      }

      else
      {
        v47 = v46;
      }

      if (v46 < 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }
    }

    else
    {
      v48 = 128;
    }

    if (v45 >= 20)
    {
      v45 = 20;
    }

    *(*(this + 12) + v41) = (v48 * ((v45 << 7) / 0x14u) + (256 - (v45 << 7) / 0x14u) * *(*(this + 12) + v41) + 128) >> 8;
    ++v41;
    v42 += 8;
  }

  while (v41 != 1609);
  if (*(*(this + 10) + 22) == 4)
  {
    v49 = 1630;
    v50 = 10768;
    do
    {
      LGH_Syntax::merge_probs(this, interp_filter_tree, 0, (*(this + 12) + v49), (*(this + 966) + v50), 0x14u, 0x80u);
      v49 += 2;
      v50 += 12;
    }

    while (v49 != 1638);
  }

  if (**(this + 967) == 4)
  {
    v51 = 0;
    v52 = 1;
    do
    {
      v53 = v52;
      LGH_Syntax::merge_probs(this, &tx_size_8_tree, 0, (*(this + 12) + v51 + 10), (*(this + 966) + 8 * v51), 0x14u, 0x80u);
      LGH_Syntax::merge_probs(this, tx_size_16_tree, 0, (*(this + 12) + 2 * v51 + 12), (*(this + 966) + 12 * v51 + 16), 0x14u, 0x80u);
      LGH_Syntax::merge_probs(this, tx_size_32_tree, 0, (*(this + 12) + 3 * v51 + 16), (*(this + 966) + 16 * v51 + 40), 0x14u, 0x80u);
      v52 = 0;
      v51 = 1;
    }

    while ((v53 & 1) != 0);
  }

  LGH_Syntax::merge_probs(this, mv_joint_tree, 0, (*(this + 12) + 1836), (*(this + 966) + 11824), 0x14u, 0x80u);
  v54 = 0;
  v55 = 1;
  do
  {
    v93 = v55;
    v56 = *(this + 966) + 11840;
    v57 = (v56 + 140 * v54);
    v58 = *v57;
    v59 = v57[1] + *v57;
    if (v59)
    {
      v60 = ((v59 >> 1) + (v58 << 8)) / v59;
      if (v60 >= 0xFF)
      {
        v61 = 255;
      }

      else
      {
        v61 = v60;
      }

      if (v60 < 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v61;
      }
    }

    else
    {
      v62 = 128;
    }

    v63 = *(this + 12) + 1839;
    if (v59 >= 20)
    {
      v59 = 20;
    }

    *(v63 + 22 * v54) = (v62 * ((v59 << 7) / 0x14u) + (256 - (v59 << 7) / 0x14u) * *(v63 + 22 * v54) + 128) >> 8;
    v64 = 128;
    LGH_Syntax::merge_probs(this, mv_class_tree, 0, (v63 + 22 * v54 + 1), (v56 + 140 * v54 + 8), 0x14u, 0x80u);
    v65 = *(this + 966) + 140 * v54;
    v66 = *(v65 + 11892);
    v67 = *(v65 + 11896) + v66;
    if (v67)
    {
      v68 = ((v67 >> 1) + (v66 << 8)) / v67;
      if (v68 >= 0xFF)
      {
        v69 = 255;
      }

      else
      {
        v69 = v68;
      }

      if (v68 < 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v69;
      }
    }

    if (v67 >= 20)
    {
      v67 = 20;
    }

    *(*(this + 12) + 22 * v54 + 1850) = (v64 * ((v67 << 7) / 0x14u) + (256 - (v67 << 7) / 0x14u) * *(*(this + 12) + 22 * v54 + 1850) + 128) >> 8;
    v70 = 22 * v54 + 1851;
    v71 = 140 * v54 + 11904;
    v72 = 10;
    do
    {
      v73 = (*(this + 966) + v71);
      v74 = *(v73 - 1);
      v75 = *v73 + v74;
      if (v75)
      {
        v76 = ((v75 >> 1) + (v74 << 8)) / v75;
        if (v76 >= 0xFF)
        {
          v77 = 255;
        }

        else
        {
          v77 = v76;
        }

        if (v76 < 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = v77;
        }
      }

      else
      {
        v78 = 128;
      }

      if (v75 >= 20)
      {
        v75 = 20;
      }

      *(*(this + 12) + v70) = (v78 * ((v75 << 7) / 0x14u) + (256 - (v75 << 7) / 0x14u) * *(*(this + 12) + v70) + 128) >> 8;
      ++v70;
      v71 += 8;
      --v72;
    }

    while (v72);
    LGH_Syntax::merge_probs(this, mv_fp_tree, 0, (*(this + 12) + 9 * v54 + 1883), (*(this + 966) + 48 * v54 + 12120), 0x14u, 0x80u);
    LGH_Syntax::merge_probs(this, mv_fp_tree, 0, (*(this + 12) + 9 * v54 + 1886), (*(this + 966) + 48 * v54 + 12136), 0x14u, 0x80u);
    result = LGH_Syntax::merge_probs(this, mv_fp_tree, 0, (*(this + 12) + 9 * v54 + 1889), (*(this + 966) + 48 * v54 + 12152), 0x14u, 0x80u);
    if (*(*(this + 10) + 21))
    {
      v80 = (*(this + 966) + 12216 + 16 * v54);
      v81 = v80[1] + *v80;
      if (v81)
      {
        v82 = ((v81 >> 1) + (*v80 << 8)) / v81;
        if (v82 >= 0xFF)
        {
          v83 = 255;
        }

        else
        {
          v83 = ((v81 >> 1) + (*v80 << 8)) / v81;
        }

        if (v82 < 1)
        {
          v83 = 1;
        }
      }

      else
      {
        v83 = 128;
      }

      v84 = (*(this + 12) + 1901 + 2 * v54);
      if (v81 >= 20)
      {
        v81 = 20;
      }

      *v84 = (v83 * ((v81 << 7) / 0x14) + (256 - (v81 << 7) / 0x14) * *v84 + 128) >> 8;
      v85 = v80[2];
      v86 = v80[3] + v85;
      if (v86)
      {
        v87 = ((v86 >> 1) + (v85 << 8)) / v86;
        if (v87 >= 0xFF)
        {
          v88 = 255;
        }

        else
        {
          v88 = v87;
        }

        if (v87 < 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = v88;
        }
      }

      else
      {
        v89 = 128;
      }

      v92 = v84[1];
      v90 = v84 + 1;
      v91 = v92;
      if (v86 >= 20)
      {
        v86 = 20;
      }

      *v90 = (v89 * ((v86 << 7) / 0x14u) + (256 - (v86 << 7) / 0x14u) * v91 + 128) >> 8;
    }

    v55 = 0;
    v54 = 1;
  }

  while ((v93 & 1) != 0);
  return result;
}

char *LGH_Syntax::refresh_probs(char *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (v2[7] || v2[24])
  {
    if (v2[74])
    {
      v3 = (*(this + 12) + 1698);
      v4 = *(this + 485);
      *v3 = *(this + 484);
      v3[1] = v4;
      v5 = *(this + 486);
      v6 = *(this + 487);
      v7 = *(this + 488);
      *(v3 + 74) = *(this + 7818);
      v3[3] = v6;
      v3[4] = v7;
      v3[2] = v5;
      v8 = (*(this + 12) + 1788);
      v9 = *(this + 7834);
      v10 = *(this + 7866);
      v8[1] = *(this + 7850);
      v8[2] = v10;
      *v8 = v9;
    }
  }

  else
  {
    LGH_Syntax::load_probs(this, v2[25]);
    this = LGH_Syntax::adapt_coef_probs(v1);
    v14 = *(v1 + 10);
    if (!*(v14 + 74))
    {
      v15 = v1 + 1905 * *(v14 + 25);
      *(*(v1 + 12) + 10) = *(v15 + 57);
      *(*(v1 + 12) + 12) = *(v15 + 29);
      v16 = *(v1 + 12);
      v17 = *(v15 + 30);
      *(v16 + 20) = *(v15 + 62);
      *(v16 + 16) = v17;
      v18 = *(v1 + 12);
      LOWORD(v17) = *(v15 + 855);
      *(v18 + 1608) = v15[1712];
      *(v18 + 1606) = v17;
      this = LGH_Syntax::adapt_noncoef_probs(v1);
    }
  }

  v11 = *(v1 + 10);
  if (*(v11 + 23))
  {
    v12 = *(v1 + 12);
    v13 = v1 + 1905 * *(v11 + 25) + 104;

    return memcpy(v13, v12, 0x771uLL);
  }

  return this;
}

__n128 LGH_Syntax::Update_Frame_Context_Parallel(LGH_Syntax *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (*(v2 + 23))
  {
    v4 = *(v2 + 74);
    v5 = this + 1905 * a2 + 104;
    memcpy(v5, *(this + 12), 0x771uLL);
    if (v4)
    {
      v7 = *(this + 487);
      *(v5 + 1730) = *(this + 486);
      *(v5 + 1746) = v7;
      *(v5 + 1762) = *(this + 488);
      v8 = *(this + 485);
      *(v5 + 1698) = *(this + 484);
      *(v5 + 1714) = v8;
      *(v5 + 1772) = *(this + 7818);
      v9 = *(this + 7850);
      *(v5 + 1788) = *(this + 7834);
      *(v5 + 1804) = v9;
      result = *(this + 7866);
      *(v5 + 1820) = result;
    }
  }

  return result;
}

void LGH_Syntax::LGH_Syntax(LGH_Syntax *this, int a2)
{
  *this = &unk_288667330;
  *(this + 12) = 0;
  *(this + 966) = 0;
  *(this + 1971) = a2;
}

uint64_t LGH_Syntax::Parse_Header(LGH_Syntax *this, unsigned __int8 *a2, unint64_t a3, _DWORD *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *(this + 12);
  if (!a4 || !v6)
  {
    if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    v29 = 136315650;
    *v30 = "Parse_Header";
    *&v30[8] = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = a4;
    v17 = MEMORY[0x277D86220];
    v18 = "AppleAVD: %s: need frame context %p and header %p\n";
    v19 = 32;
    goto LABEL_23;
  }

  v8 = 0;
  v9 = 0;
  *(this + 10) = a4;
  *(this + 967) = a4 + 68;
  v10 = &a2[a3];
  *(this + 3) = &a2[a3];
  *(this + 4) = a3;
  *(this + 1) = a2;
  *(this + 2) = a2;
  v11 = 4;
  *(this + 11) = 0;
  do
  {
    v9 <<= 8;
    if (a2 < v10)
    {
      v8 += 8;
      *(this + 11) = v8;
      *(this + 2) = a2 + 1;
      v9 |= *a2++;
    }

    --v11;
  }

  while (v11);
  if ((*(this + 1971) & 0x40001) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = 67109376;
    *v30 = v9;
    *&v30[4] = 1024;
    *&v30[6] = v8;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", &v29, 0xEu);
  }

  *(this + 10) = v9;
  *(this + 6) = 0;
  *(this + 14) = 0;
  if (LGH_Syntax::uncompressed_header(this) || LGH_Syntax::get_bits(this, "trailing", *(this + 11) & 7))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(this + 10);
  if (!*(v12 + 2))
  {
    return 0;
  }

  v13 = *(this + 2);
  v14 = *(this + 3);
  v15 = v13 - (*(this + 11) >> 3) + *(v12 + 2);
  *(this + 9) = v15;
  if (v15 <= v14 && v15 + 4 >= v13)
  {
    LGH_Syntax::load_probs_all(this, *(v12 + 25));
    LGH_Syntax::init_BOOL(this, *(*(this + 10) + 2));
    if (LGH_Syntax::compressed_header(this) || LGH_Syntax::exit_BOOL(this) || LGH_Syntax::get_tile_info(this, *(this + 9), a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    if (*(*(this + 10) + 74))
    {
      result = 0;
      v21 = (*(this + 12) + 1698);
      v22 = *(*(this + 12) + 1714);
      *(this + 484) = *v21;
      *(this + 485) = v22;
      v24 = v21[3];
      v23 = v21[4];
      v25 = *(v21 + 74);
      *(this + 486) = v21[2];
      *(this + 7818) = v25;
      *(this + 488) = v23;
      *(this + 487) = v24;
      *(v21 + 74) = unk_27775CF22;
      v21[3] = xmmword_27775CF08;
      v21[4] = unk_27775CF18;
      v21[1] = xmmword_27775CEE8;
      v21[2] = unk_27775CEF8;
      *v21 = default_kf_uv_mode_prob;
      v26 = (*(this + 12) + 1788);
      v27 = *(*(this + 12) + 1820);
      v28 = *v26;
      *(this + 7850) = *(*(this + 12) + 1804);
      *(this + 7866) = v27;
      *(this + 7834) = v28;
      *v26 = default_kf_partition_prob;
      v26[1] = unk_27775CF42;
      v26[2] = xmmword_27775CF52;
      return result;
    }

    return 0;
  }

  if ((*(this + 7886) & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    return 0xFFFFFFFFLL;
  }

  v29 = 136315138;
  *v30 = "Parse_Header";
  v17 = MEMORY[0x277D86220];
  v18 = "AppleAVD: %s: parsing error, wrong tile start";
  v19 = 12;
LABEL_23:
  _os_log_impl(&dword_277606000, v17, OS_LOG_TYPE_DEFAULT, v18, &v29, v19);
  return 0xFFFFFFFFLL;
}

uint64_t LGH_Syntax::init_BOOL(LGH_Syntax *this, uint64_t a2)
{
  *(this + 14) = 1;
  result = LGH_Syntax::get_bits(this, "init_BOOL", 8u);
  *(this + 15) = result;
  *(this + 16) = 255;
  v5 = 8 * a2 - 8;
  if (HIDWORD(v5))
  {
    panic("%s %d 64->32 conversion problem!", "init_BOOL", 279);
  }

  *(this + 17) = v5;
  return result;
}

uint64_t LGH_Syntax::exit_BOOL(LGH_Syntax *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 17);
  if (v2)
  {
    if (v2 > 0x20)
    {
      if ((*(this + 1971) & 0x40001) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(this + 11);
        v5 = 136315650;
        v6 = "exit_BOOL";
        v7 = 1024;
        v8 = v2;
        v9 = 1024;
        v10 = v3;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: skip m_BOOL_max_bits %d - m_bits_left %d\n", &v5, 0x18u);
        v2 = *(this + 17);
      }

      *(this + 2) += (v2 - *(this + 11)) >> 3;
      *(this + 5) = 0;
    }

    else
    {
      LGH_Syntax::get_bits(this, "padding", *(this + 17));
    }

    *(this + 17) = 0;
  }

  *(this + 14) = 0;
  return 0;
}

char *LGH_Syntax::Set_Context_Counter(char *this, uint64_t a2)
{
  if (a2)
  {
    if (!**(this + 10))
    {
      *(this + 966) = a2;
      return LGH_Syntax::refresh_probs(this);
    }
  }

  return this;
}

uint64_t LGH_Syntax::get_bits(LGH_Syntax *this, const char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = *(this + 10);
  v7 = *(this + 11);
  v8 = a3 - v7;
  if (a3 <= v7)
  {
    v14 = 0;
    v9 = *(this + 10);
    v8 = a3;
  }

  else
  {
    v9 = 0;
    v10 = 32 - v7;
    *(this + 11) = 0;
    v12 = *(this + 2);
    v11 = *(this + 3);
    v13 = 4;
    v7 = 0;
    do
    {
      v9 <<= 8;
      if (v12 < v11)
      {
        v7 += 8;
        *(this + 11) = v7;
        *(this + 2) = v12 + 1;
        v9 |= *v12++;
      }

      --v13;
    }

    while (v13);
    v14 = v6 >> v10 << v8;
    if ((*(this + 1971) & 0x40001) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109376;
      v20 = v9;
      v21 = 1024;
      LODWORD(v22) = v7;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: next_32bits: %x m_bits_left %d\n", &v19, 0xEu);
      v7 = *(this + 11);
    }
  }

  v15 = (v9 >> -v8) | v14;
  v16 = v9 << v8;
  v17 = v7 - v8;
  *(this + 10) = v16;
  *(this + 11) = v17;
  if ((*(this + 1971) & 0x40001) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109890;
    v20 = a3;
    v21 = 2080;
    v22 = a2;
    v23 = 1024;
    v24 = v15;
    v25 = 1024;
    v26 = v17;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: get_bits(%d): %s = %x, m_bits_left %d\n", &v19, 0x1Eu);
  }

  return v15;
}

uint64_t LGH_Syntax::decode_term_subexp(LGH_Syntax *this)
{
  v3 = *(this + 15);
  v2 = *(this + 16);
  v4 = ((v2 << 7) - 128) >> 8;
  v5 = v4 + 1;
  if (v3 <= v4)
  {
    v6 = *(this + 15);
  }

  else
  {
    v6 = v3 - v5;
    v5 = v2 - v5;
    *(this + 15) = v6;
  }

  if (v5 <= 0x7F)
  {
    do
    {
      v7 = *(this + 17) - 1;
      *(this + 16) = 2 * v5;
      *(this + 17) = v7;
      v6 = LGH_Syntax::get_bits(this, "bit", 1u) | (2 * v6);
      *(this + 15) = v6;
      v5 = *(this + 16);
    }

    while (v5 < 0x80);
  }

  if (v3 <= v4)
  {
    v23 = 0;
    for (i = 0; i != 4; ++i)
    {
      v25 = (v5 << 7) - 128;
      v26 = (v25 >> 8) + 1;
      if (v6 <= v25 >> 8)
      {
        v27 = 0;
        v5 = (v25 >> 8) + 1;
      }

      else
      {
        v5 -= v26;
        v6 -= v26;
        *(this + 15) = v6;
        v27 = 1;
      }

      *(this + 16) = v5;
      if (v5 <= 0x7F)
      {
        do
        {
          v28 = *(this + 17) - 1;
          *(this + 16) = 2 * v5;
          *(this + 17) = v28;
          v6 = LGH_Syntax::get_bits(this, "sub_exp_val", 1u) | (2 * v6);
          *(this + 15) = v6;
          v5 = *(this + 16);
        }

        while (v5 < 0x80);
      }

      v23 = v27 | (2 * v23);
    }
  }

  else
  {
    v8 = ((v5 << 7) - 128) >> 8;
    v9 = v8 + 1;
    v10 = v6;
    if (v6 > v8)
    {
      v10 = v6 - v9;
      v9 = v5 - v9;
      *(this + 15) = v10;
    }

    if (v9 <= 0x7F)
    {
      do
      {
        v11 = *(this + 17) - 1;
        *(this + 16) = 2 * v9;
        *(this + 17) = v11;
        v10 = LGH_Syntax::get_bits(this, "bit", 1u) | (2 * v10);
        *(this + 15) = v10;
        v9 = *(this + 16);
      }

      while (v9 < 0x80);
    }

    if (v6 <= v8)
    {
      v29 = 0;
      for (j = 0; j != 4; ++j)
      {
        v31 = (v9 << 7) - 128;
        v32 = (v31 >> 8) + 1;
        if (v10 <= v31 >> 8)
        {
          v33 = 0;
          v9 = (v31 >> 8) + 1;
        }

        else
        {
          v9 -= v32;
          v10 -= v32;
          *(this + 15) = v10;
          v33 = 1;
        }

        *(this + 16) = v9;
        if (v9 <= 0x7F)
        {
          do
          {
            v34 = *(this + 17) - 1;
            *(this + 16) = 2 * v9;
            *(this + 17) = v34;
            v10 = LGH_Syntax::get_bits(this, "sub_exp_val_minus_16", 1u) | (2 * v10);
            *(this + 15) = v10;
            v9 = *(this + 16);
          }

          while (v9 < 0x80);
        }

        v29 = v33 | (2 * v29);
      }

      return (v29 + 16);
    }

    else
    {
      v12 = ((v9 << 7) - 128) >> 8;
      v13 = v12 + 1;
      v14 = v10;
      if (v10 > v12)
      {
        v14 = v10 - v13;
        v13 = v9 - v13;
        *(this + 15) = v14;
      }

      if (v13 <= 0x7F)
      {
        do
        {
          v15 = *(this + 17) - 1;
          *(this + 16) = 2 * v13;
          *(this + 17) = v15;
          v14 = LGH_Syntax::get_bits(this, "bit", 1u) | (2 * v14);
          *(this + 15) = v14;
          v13 = *(this + 16);
        }

        while (v13 < 0x80);
      }

      if (v10 <= v12)
      {
        v35 = 0;
        for (k = 0; k != 5; ++k)
        {
          v37 = (v13 << 7) - 128;
          v38 = (v37 >> 8) + 1;
          if (v14 <= v37 >> 8)
          {
            v39 = 0;
            v13 = (v37 >> 8) + 1;
          }

          else
          {
            v13 -= v38;
            v14 -= v38;
            *(this + 15) = v14;
            v39 = 1;
          }

          *(this + 16) = v13;
          if (v13 <= 0x7F)
          {
            do
            {
              v40 = *(this + 17) - 1;
              *(this + 16) = 2 * v13;
              *(this + 17) = v40;
              v14 = LGH_Syntax::get_bits(this, "sub_exp_val_minus_32", 1u) | (2 * v14);
              *(this + 15) = v14;
              v13 = *(this + 16);
            }

            while (v13 < 0x80);
          }

          v35 = v39 | (2 * v35);
        }

        return (v35 + 32);
      }

      else
      {
        v16 = 0;
        for (m = 0; m != 7; ++m)
        {
          v18 = (v13 << 7) - 128;
          v19 = (v18 >> 8) + 1;
          if (v14 <= v18 >> 8)
          {
            v20 = 0;
            v13 = (v18 >> 8) + 1;
          }

          else
          {
            v13 -= v19;
            v14 -= v19;
            *(this + 15) = v14;
            v20 = 1;
          }

          *(this + 16) = v13;
          if (v13 <= 0x7F)
          {
            do
            {
              v21 = *(this + 17) - 1;
              *(this + 16) = 2 * v13;
              *(this + 17) = v21;
              v14 = LGH_Syntax::get_bits(this, "v", 1u) | (2 * v14);
              *(this + 15) = v14;
              v13 = *(this + 16);
            }

            while (v13 < 0x80);
          }

          v16 = v20 | (2 * v16);
        }

        v22 = v16;
        if (v16 > 0x40u)
        {
          v41 = (v13 << 7) - 128;
          v42 = (v41 >> 8) + 1;
          if (v14 <= v41 >> 8)
          {
            v43 = 0;
          }

          else
          {
            v14 -= v42;
            v42 = v13 - v42;
            *(this + 15) = v14;
            v43 = 1;
          }

          *(this + 16) = v42;
          if (v42 <= 0x7F)
          {
            do
            {
              v44 = *(this + 17) - 1;
              *(this + 16) = 2 * v42;
              *(this + 17) = v44;
              v14 = LGH_Syntax::get_bits(this, "bit", 1u) | (2 * v14);
              *(this + 15) = v14;
              v42 = *(this + 16);
            }

            while (v42 < 0x80);
          }

          return ((v43 | (2 * v22)) - 1);
        }

        else
        {
          return (v16 + 64);
        }
      }
    }
  }

  return v23;
}

uint64_t LGH_Syntax::update_mv_prob(LGH_Syntax *this, unsigned __int8 a2)
{
  v5 = *(this + 15);
  v4 = *(this + 16);
  v6 = (252 * v4 - 252) >> 8;
  v7 = v6 + 1;
  if (v5 <= v6)
  {
    v8 = *(this + 15);
  }

  else
  {
    v8 = v5 - v7;
    v7 = v4 - v7;
    *(this + 15) = v8;
  }

  *(this + 16) = v7;
  if (v7 <= 0x7F)
  {
    do
    {
      v9 = *(this + 17) - 1;
      *(this + 16) = 2 * v7;
      *(this + 17) = v9;
      v8 = LGH_Syntax::get_bits(this, "update_mv_prob", 1u) | (2 * v8);
      *(this + 15) = v8;
      v7 = *(this + 16);
    }

    while (v7 < 0x80);
  }

  if (v5 > v6)
  {
    v10 = 0;
    for (i = 0; i != 7; ++i)
    {
      v12 = (v7 << 7) - 128;
      v13 = (v12 >> 8) + 1;
      if (v8 <= v12 >> 8)
      {
        v14 = 0;
        v7 = (v12 >> 8) + 1;
      }

      else
      {
        v7 -= v13;
        v8 -= v13;
        *(this + 15) = v8;
        v14 = 1;
      }

      *(this + 16) = v7;
      if (v7 <= 0x7F)
      {
        do
        {
          v15 = *(this + 17) - 1;
          *(this + 16) = 2 * v7;
          *(this + 17) = v15;
          v8 = LGH_Syntax::get_bits(this, "mv_prob", 1u) | (2 * v8);
          *(this + 15) = v8;
          v7 = *(this + 16);
        }

        while (v7 < 0x80);
      }

      v10 = v14 | (2 * v10);
    }

    return (2 * v10) | 1u;
  }

  return a2;
}

CAHDec *createHibiscusAvcDecoder(uint64_t a1)
{
  v2 = operator new(0x4670uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecHibiscusAvc::CAHDecHibiscusAvc(v2, a1);
  }

  return v3;
}

CAHDec *CAHDecHibiscusAvc::CAHDecHibiscusAvc(CAHDec *a1, uint64_t a2)
{
  CAHDec::CAHDec(a1);
  *v4 = &unk_288668F00;
  *(v4 + 256) = a2;
  *(v4 + 456) = 956 * *(a2 + 7388) + 266328;
  *(v4 + 8) = 2328;
  *(v4 + 16) = xmmword_27775BAD0;
  *(v4 + 32) = 1;
  *(v4 + 56) = a2;
  *(v4 + 17856) = 0u;
  *(v4 + 17872) = 0u;
  *(v4 + 17888) = 0u;
  *(v4 + 17904) = 0u;
  *(v4 + 17920) = 0u;
  *(v4 + 17936) = 0u;
  *(v4 + 17952) = 0u;
  *(v4 + 17968) = 0u;
  *(v4 + 17984) = 0u;
  *(v4 + 18000) = 0u;
  *(v4 + 18016) = 0u;
  bzero((v4 + 560), 0x4360uLL);
  return a1;
}

void CAHDecHibiscusAvc::~CAHDecHibiscusAvc(CAHDecHibiscusAvc *this)
{
  *this = &unk_288668F00;
  if (*(this + 34))
  {
    CAVDDecoder::deallocAVDMem(*(this + 32), this + 35);
  }

  *(this + 34) = 0;

  CAHDec::~CAHDec(this);
}

{
  CAHDecHibiscusAvc::~CAHDecHibiscusAvc(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecHibiscusAvc::init(CAHDecHibiscusAvc *this)
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

uint64_t CAHDecHibiscusAvc::initPicture(CAHDecHibiscusAvc *this, int a2, __int16 a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 956 * *(*(this + 32) + 7388) + 266328;
  *(this + 114) = v5;
  *(this + 13) = 0;
  v6 = *(this + 34);
  *(this + 33) = v6;
  if (v6)
  {
    bzero(v6, v5);
    v8 = *(this + *(this + 13) + 34);
    *(v8 + 16) = a2;
    *(v8 + 24) = 257;
    *(v8 + 26) = a3;
    bzero(*(this + 9), 48 * *(this + 17));
    result = 0;
    *(this + 16) = 0;
    *(this + 4459) = 0;
    *(this + 2237) = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "initPicture";
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s(): decode buffer at index %d is NULL!\n", &v10, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CAHDecHibiscusAvc::populateSlices(CAHDecHibiscusAvc *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = (*(this + *(this + 13) + 34) + 2328);
    v5 = a2;
    do
    {
      CAHDecHibiscusAvc::populateSliceRegisters(this, v4, v3++);
      v4 += 239;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t CAHDecHibiscusAvc::populateSliceRegisters(uint64_t a1, _DWORD *a2, signed int a3)
{
  v5 = 0;
  v112 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 256);
  v7 = *(v6 + 3500);
  v8 = *(v6 + 3504);
  v9 = *(v6 + 3192);
  v10 = *(v6 + 3184);
  v11 = *(v6 + 6952);
  v12 = *(v6 + 3208);
  v13 = *(v6 + 3200) + 1848 * a3;
  a2[1] = 0;
  v14 = 32 * (*(v13 + 1424) & 3);
  a2[1] = v14;
  if (*(v13 + 24) != 2)
  {
    v5 = (*(v13 + 63) & 0xF) << 11;
  }

  v15 = v5 | v14;
  a2[1] = v15;
  if (*(v13 + 24) == 1)
  {
    v16 = (*(v13 + 64) & 0xF) << 7;
  }

  else
  {
    v16 = 0;
  }

  v95 = v10;
  v18 = v16 | v15;
  a2[1] = v18;
  if (*(v13 + 24) == 1)
  {
    v19 = (*(v13 + 61) == 0) << 15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v18 & 0x7FFF7FE0;
  a2[1] = v20;
  if (*(v13 + 24))
  {
    v21 = 0x20000;
  }

  else
  {
    v21 = 0x10000;
  }

  if (*(v13 + 24) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  a2[1] = v22 | v20 & 0xFFFFFFE0;
  if (*(v13 + 24) != 1)
  {
    goto LABEL_20;
  }

  v23 = v12 + 13040 * a3 + 7224;
  *(v13 + 1832) = v23;
  if ((*(v12 + 13040 * a3 + 7227) & 1) != 0 || (v24 = *(v12 + 13040 * a3 + 7256), *(a1 + 4 * v24 + 464)))
  {
    v25 = 16;
  }

  else
  {
    if (!*(a1 + 17836))
    {
      *(a1 + 17896) = *(v12 + 13040 * a3 + 7264);
      *(a1 + 17888) = v24;
      *(a1 + 17836) = 1;
      a2[1] |= 0x40000u;
      v23 = *(v13 + 1832);
      if (!v23 || !*(a1 + 17836))
      {
        goto LABEL_20;
      }
    }

    v90 = *(v23 + 40);
    if (v90 == *(a1 + 17896))
    {
      goto LABEL_20;
    }

    *(a1 + 17896) = v90;
    *(a1 + 17888) = *(v23 + 32);
    v25 = 0x40000;
  }

  a2[1] |= v25;
LABEL_20:
  a2[230] = 0;
  a2[238] = 0;
  v26 = a2[1];
  if (*(v13 + 24) == 1 && (v26 & 0x40000) != 0)
  {
    v28 = v7;
    v29 = (a1 + 176 * *(*(v13 + 1832) + 32));
    v30 = v29[746];
    v31 = v29[748];
    v109 = v29[747];
    v110 = v31;
    v111 = v29[749];
    v32 = v29[742];
    v33 = v29[744];
    v105 = v29[743];
    v106 = v33;
    v107 = v29[745];
    v108 = v30;
    v34 = v29[740];
    *buf = v29[739];
    *&buf[16] = v34;
    v103 = v29[741];
    v104 = v32;
    *(a1 + 17836) = 1;
    if (*buf || *(&v110 + 1))
    {
      v99 = v12;
      v45 = 956 * a3;
      result = CAHDec::addToPatcherList(a1, buf, 956 * a3 + 3248, 0, 0xFFFFFFFFLL, 8, -256, 4);
      if (result)
      {
        return result;
      }

      v12 = v99;
      if (*buf || *(&v110 + 1))
      {
        result = CAHDec::addToPatcherList(a1, buf, v45 + 3280, 0, 0x3FFFFFFFFFFLL, 32, 1023, 4);
        v12 = v99;
        if (result)
        {
          return result;
        }
      }
    }

    v26 = a2[1];
    v7 = v28;
  }

  v97 = a2;
  v98 = a1;
  v94 = (v9 + 604 * v8);
  a2[1] = v26 & 0x77FFFF | 0x2D000000;
  v35 = *(v13 + 24);
  if (v35 <= 1)
  {
    v36 = v6 + 6760;
    v37 = v12 + 13040 * a3;
    if (*(v37 + 13032))
    {
      v38 = 0;
      v39 = v97 + 2;
      v40 = v37 + 1416;
      v41 = MEMORY[0x277D86220];
      do
      {
        v42 = (16 * (v38 & 0xF)) | 0x2DC00000;
        v39[v38] = v42;
        if (v11)
        {
          v43 = 0;
          while (*(*(v36 + 8 * v43) + 12) != *(v40 + 176 * v38 + 12))
          {
            if (v11 == ++v43)
            {
              goto LABEL_34;
            }
          }

          v39[v38] = v43 & 0xF | v42;
        }

        else
        {
LABEL_34:
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(v40 + 176 * v38 + 32);
            *buf = 67109632;
            *&buf[4] = v38;
            *&buf[8] = 1024;
            *&buf[10] = v44;
            *&buf[14] = 1024;
            *&buf[16] = v11;
            _os_log_impl(&dword_277606000, v41, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-0 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        ++v38;
      }

      while (v38 < *(v37 + 13032));
      v35 = *(v13 + 24);
    }

    else
    {
      LODWORD(v38) = 0;
    }

    if (v35 == 1 && *(v37 + 13036))
    {
      v47 = 0;
      v48 = v97 + 2;
      v49 = v37 + 7224;
      v50 = MEMORY[0x277D86220];
      do
      {
        v51 = (16 * (v47 & 0xF)) | 0x2DC00100;
        v48[v38] = v51;
        if (v11)
        {
          v52 = 0;
          while (*(*(v36 + 8 * v52) + 12) != *(v49 + 176 * v47 + 12))
          {
            if (v11 == ++v52)
            {
              goto LABEL_52;
            }
          }

          v48[v38] = v52 & 0xF | v51;
        }

        else
        {
LABEL_52:
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v53 = *(v49 + 176 * v47 + 32);
            *buf = 67109632;
            *&buf[4] = v38;
            *&buf[8] = 1024;
            *&buf[10] = v53;
            *&buf[14] = 1024;
            *&buf[16] = v11;
            _os_log_impl(&dword_277606000, v50, OS_LOG_TYPE_DEFAULT, "AppleAVD: Error: list-1 slice(%2d) RefIdx[%2d] not found in %d ref_pics!!\n", buf, 0x14u);
          }
        }

        LODWORD(v38) = v38 + 1;
        ++v47;
      }

      while (v47 < *(v37 + 13036));
    }
  }

  *(v97 + 17) = 0x2DD0000000000000;
  v54 = 87;
  if (*(v13 + 24) == 1)
  {
    v54 = 88;
  }

  v55 = ((v94[v54] & 3) << 6) | 0x2DD00000;
  v97[35] = v55;
  v56 = v55 & 0xFFFFFFC7 | (8 * (*(v13 + 376) & 7));
  v97[35] = v56;
  v57 = *(v95 + 2224 * v7 + 4);
  if (*(v95 + 2224 * v7 + 4))
  {
    v57 = *(v13 + 377) & 7;
  }

  v58 = v57 | v56;
  v97[35] = v58;
  v59 = *(v13 + 24);
  if (v59 != 1)
  {
    goto LABEL_143;
  }

  v60 = v94[88];
  if (v60 != 2)
  {
    goto LABEL_64;
  }

  v97[35] = v58 & 0x2DD000C0 | 0x2D;
  v59 = *(v13 + 24);
  if (v59 != 1)
  {
LABEL_143:
    if (v59 || !v94[87])
    {
      goto LABEL_84;
    }

LABEL_68:
    v61 = 0;
    v62 = 0;
    v63 = v97 + 36;
    v64 = v97 + 132;
    do
    {
      if (*(v13 + 378 + v62))
      {
        v65 = ((v62 & 0xF) << 9) | 0x2DE04000;
        v63[v61] = v65;
        v63[v61] = v65 | *(v13 + 394 + 2 * v62) & 0x1FF;
        v64[v61] = 770703360;
        v64[v61++] = *(v13 + 426 + 2 * v62) | 0x2DF00000;
      }

      if (*(v13 + 458 + v62))
      {
        v66 = 0;
        v67 = 1;
        do
        {
          v68 = v67;
          v69 = (((v62 & 0xF) << 9) | (v66 << 14)) + 769687552;
          v63[v61] = v69;
          v63[v61] = v69 | *(v13 + 474 + 4 * v62 + 2 * v66) & 0x1FF;
          v64[v61] = 770703360;
          v64[v61++] = *(v13 + 538 + 4 * v62 + 2 * v66) | 0x2DF00000;
          v66 = 1;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
      }

      ++v62;
    }

    while (v62 <= *(v13 + 63));
    if (*(v13 + 24) == 1)
    {
      v70 = 0;
      do
      {
        if (*(v13 + 602 + v70))
        {
          v71 = ((v70 & 0xF) << 9) + 769679360;
          v63[v61] = v71;
          v63[v61] = v71 | *(v13 + 618 + 2 * v70) & 0x1FF;
          v64[v61] = 770703360;
          v64[v61++] = *(v13 + 650 + 2 * v70) | 0x2DF00000;
        }

        if (*(v13 + 682 + v70))
        {
          v72 = 0;
          v73 = 1;
          do
          {
            v74 = v73;
            v75 = (((v70 & 0xF) << 9) | (v72 << 14)) + 769695744;
            v63[v61] = v75;
            v63[v61] = v75 | *(v13 + 698 + 4 * v70 + 2 * v72) & 0x1FF;
            v64[v61] = 770703360;
            v64[v61++] = *(v13 + 762 + 4 * v70 + 2 * v72) | 0x2DF00000;
            v72 = 1;
            v73 = 0;
          }

          while ((v74 & 1) != 0);
        }

        ++v70;
      }

      while (v70 <= *(v13 + 64));
    }

    v97[34] = v61;
    goto LABEL_84;
  }

  v60 = v94[88];
LABEL_64:
  if (v60 == 1)
  {
    goto LABEL_68;
  }

LABEL_84:
  v97[228] = 0;
  v97[228] = (((v94[89] + *(v13 + 1425)) << 10) + 26624) & 0x1FC00 | 0x2D900000;
  v97[229] = 0;
  v76 = (*(v13 + 1428) == 0) << 17;
  v97[229] = v76;
  if (*(v13 + 1428) != 1)
  {
    v77 = v76 | 0x10000;
    v97[229] = v77;
    v78 = v77 | ((*(v13 + 1429) & 0xF) << 8);
    v97[229] = v78;
    v76 = v78 | ((*(v13 + 1430) & 0xF) << 12);
  }

  v97[229] = v76 | 0x2DA00000;
  v79 = *(v13 + 1436);
  if (v94[3])
  {
    v80 = 0;
    if ((v79 & 7) != 0)
    {
      *(v13 + 1436) = (v79 + 7) & 0xFFFFFFF8;
    }
  }

  else
  {
    v80 = *(v13 + 1436) & 7;
  }

  v97[231] = (v80 << 15) | 0x2D800000;
  v81 = *(v98 + 256);
  v82 = *(v81 + 2504);
  v100 = 0;
  v101 = 0;
  if (!CAVDAvcDecoder::GetSDataMemInfo(v81, a3, &v101, &v100))
  {
    return 0xFFFFFFFFLL;
  }

  v83 = 956 * a3;
  v84 = v101;
  if (!*v101 && !*(v101 + 152) && !*(v101 + 156))
  {
    goto LABEL_100;
  }

  v85 = v100;
  if (HIDWORD(v100) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1785;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v85 = v100;
  }

  result = CAHDec::addToPatcherList(v98, v84, v83 + 3252, v85, 0x3FFFFFFFFFFLL, 32, 1023, 4);
  if (result)
  {
    return result;
  }

  v84 = v101;
  if (!*v101)
  {
LABEL_100:
    if (!*(v84 + 152) && !*(v84 + 156))
    {
      goto LABEL_105;
    }
  }

  v86 = v100;
  if (HIDWORD(v100) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "populateSliceRegisters";
    *&buf[12] = 1024;
    *&buf[14] = 1786;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
    v86 = v100;
  }

  result = CAHDec::addToPatcherList(v98, v84, v83 + 3260, v86, 0xFFFFFFFFLL, 0, -1, 4);
  if (!result)
  {
LABEL_105:
    v87 = *(v13 + 16) - (*(v13 + 1436) >> 3);
    v97[234] = v87;
    if (*(v81 + 2360) != 1)
    {
      return 0;
    }

    *(v97 + 118) = 0;
    if (*(v81 + 2640))
    {
      if ((*(v81 + 2612) & 1) == 0)
      {
LABEL_108:
        v88 = *(v13 + 1840);
        v89 = 0;
        if ((v82 & 0x200000) != 0)
        {
          if (v80 && !*(v13 + 1840))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "int CAHDecHibiscusAvc::populateSliceRegisters(AvcSliceRegisters *, int)";
              _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: expect off_to_prot_data to be set when slice header is not byte aligned\n", buf, 0xCu);
              v87 = v97[234];
              v89 = v97[237] & 0x1F0000;
            }

            else
            {
              v89 = 0;
            }

            v88 = 1;
          }
        }

        else if (v80)
        {
          ++v88;
        }

        result = 0;
        if (v88 >= v87)
        {
          v88 = v87;
        }

        v93 = v89 & 0xFFDFFFFF | (v88 << 22) | v82 | (((v82 >> 20) & 1) << 21);
LABEL_140:
        v97[237] = v93;
        return result;
      }
    }

    else if (!*(v81 + 2420))
    {
      goto LABEL_108;
    }

    result = 0;
    v91 = *(v13 + 1840);
    if (v87 < v91)
    {
      v91 = v87;
    }

    if (v80)
    {
      v92 = v91 == 0;
    }

    else
    {
      v92 = 0;
    }

    if (v92)
    {
      v91 = 1;
    }

    v93 = v82 & 0x10000 | v91;
    goto LABEL_140;
  }

  return result;
}

uint64_t CAHDecHibiscusAvc::updateCommonRegisters(CAHDecHibiscusAvc *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

void CAHDecHibiscusAvc::copyScalingList(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = *a2 & 0xFEFFFFC0 | 0x1000000;
  *a2 = v8;
  do
  {
    v8 |= (*(a4 + v7) == 0) << v7;
    *a2 = v8;
    ++v7;
  }

  while (v7 != 6);
  v9 = v8 & 0xFFFFF03F;
  *a2 = v8 & 0xFFFFF03F;
  v10 = (a7 - 6);
  if (a7 > 6)
  {
    v11 = (a4 + 6);
    v12 = &dword_27775D7EC;
    do
    {
      v13 = *v11++;
      v14 = v13 == 0;
      v16 = *v12++;
      v15 = v16;
      v17 = v14;
      v9 |= ((v17 << v15) & 0x3F) << 6;
      *a2 = v9;
      --v10;
    }

    while (v10);
  }

  v18 = 0;
  v19 = (a5 + 1);
  v20 = a3;
  do
  {
    v21 = 0;
    v22 = v19;
    do
    {
      v23 = *(v20 + 4 * v21) & 0xFFFFFF | (*(v22 - 1) << 24);
      *(v20 + 4 * v21) = v23;
      v24 = v23 & 0xFF00FFFF | (*v22 << 16);
      *(v20 + 4 * v21) = v24;
      v25 = v24 & 0xFFFF00FF | (v22[1] << 8);
      *(v20 + 4 * v21) = v25;
      *(v20 + 4 * v21++) = v25 & 0xFFFFFF00 | v22[2];
      v22 += 4;
    }

    while (v21 != 4);
    ++v18;
    v20 += 16;
    v19 += 16;
  }

  while (v18 != 6);
  v26 = 0;
  v27 = a3 + 96;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a6 + (dword_27775D804[v26] << 6);
    do
    {
      v32 = (v31 + (v29 & 0x20 | v30 & 4 | v28 & 0x18));
      v33 = *(v27 + v29) & 0xFFFFFF | (*v32 << 24);
      *(v27 + v29) = v33;
      v34 = v33 & 0xFF00FFFF | (v32[1] << 16);
      *(v27 + v29) = v34;
      v35 = v34 & 0xFFFF00FF | (v32[2] << 8);
      *(v27 + v29) = v35;
      *(v27 + v29) = v35 & 0xFFFFFF00 | v32[3];
      ++v30;
      v29 += 4;
      v28 += 8;
    }

    while (v29 != 64);
    ++v26;
    v27 += 64;
  }

  while (v26 != 6);
}

void CAHDecHibiscusAvc::AvcSeqScalingListFallBack(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9))
  {
    v2 = 0;
    v3 = 8;
    if (*(a2 + 4) == 3)
    {
      v3 = 12;
    }

    v4 = (a2 - 382);
    v5 = 18;
    while (v2 > 5)
    {
      if (*(a2 + v2 + 10))
      {
        if (*(a2 + v2 + 22) == 2)
        {
          if (v2 == 6 || (v2 & 0x7FFFFFFD) == 8)
          {
            v4[8] = avcDefaultIntraScalingList8x8;
            v4[9] = unk_27775D86C;
            v10 = xmmword_27775D87C;
            v11 = unk_27775D88C;
          }

          else
          {
            v4[8] = avcDefaultInterScalingList8x8;
            v4[9] = unk_27775D82C;
            v10 = xmmword_27775D83C;
            v11 = unk_27775D84C;
          }

          v4[10] = v10;
          v4[11] = v11;
        }

        goto LABEL_24;
      }

      if (v2 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v4[1];
        v4[8] = *v4;
        v4[9] = v12;
        v13 = v4[3];
        v4[10] = v4[2];
        v4[11] = v13;
        v8 = a2 + v2;
        v9 = *(a2 + v2 + 20);
LABEL_21:
        *(v8 + 22) = v9;
      }

LABEL_24:
      ++v2;
      v4 += 4;
      v5 += 16;
      if (v3 == v2)
      {
        return;
      }
    }

    if (*(a2 + v2 + 10))
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6 || v2 == 3)
    {
      goto LABEL_24;
    }

    *(a2 + v5 + 16) = *(a2 + v5);
    v8 = a2 + v2;
    v9 = *(a2 + v2 + 21);
    goto LABEL_21;
  }
}

void CAHDecHibiscusAvc::AvcPicScalingListFallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 96))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 8;
    if (*(a2 + 4) == 3)
    {
      v6 = 12;
    }

    do
    {
      if (v5 > 5)
      {
        if (*(a3 + v5 + 97))
        {
          if (*(a3 + v5 + 109) == 2)
          {
            v8 = (a3 + v4 - 167);
            if (v5 == 6 || (v5 & 0x7FFFFFFD) == 8)
            {
              *v8 = avcDefaultIntraScalingList8x8;
              *(a3 + v4 - 151) = unk_27775D86C;
              v9 = xmmword_27775D87C;
              v10 = unk_27775D88C;
            }

            else
            {
              *v8 = avcDefaultInterScalingList8x8;
              *(a3 + v4 - 151) = unk_27775D82C;
              v9 = xmmword_27775D83C;
              v10 = unk_27775D84C;
            }

            *(a3 + v4 - 135) = v9;
            *(a3 + v4 - 119) = v10;
          }

          goto LABEL_29;
        }

        if (v5 - 8 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = a3 + v4;
          *(v11 - 119) = *(a3 + v4 - 247);
          v12 = *(a3 + v4 - 279);
          *(v11 - 167) = *(a3 + v4 - 295);
          *(v11 - 151) = v12;
          *(v11 - 135) = *(a3 + v4 - 263);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 107);
LABEL_28:
          *(v13 + 109) = v14;
          goto LABEL_29;
        }

        if (*(a2 + 9))
        {
          v15 = a3 + v4;
          v16 = *(a2 + v4 - 254);
          v17 = *(a2 + v4 - 238);
          v18 = *(a2 + v4 - 222);
          *(v15 - 119) = *(a2 + v4 - 206);
          *(v15 - 135) = v18;
          *(v15 - 151) = v17;
          *(v15 - 167) = v16;
          goto LABEL_22;
        }
      }

      else
      {
        if (*(a3 + v5 + 97))
        {
          if ((*(a3 + v5 + 109) & 2) != 0)
          {
            if (v5 > 2)
            {
              v7 = avcDefaultInterScalingList4x4;
            }

            else
            {
              v7 = avcDefaultIntraScalingList4x4;
            }

            *(a3 + v3 + 121) = v7;
          }

          goto LABEL_29;
        }

        if (v5 && v5 != 3)
        {
          *(a3 + v3 + 121) = *(a3 + v3 + 105);
          v13 = a3 + v5;
          v14 = *(a3 + v5 + 108);
          goto LABEL_28;
        }

        if (*(a2 + 9))
        {
          *(a3 + v3 + 121) = *(a2 + v3 + 34);
LABEL_22:
          *(a3 + v5 + 109) = *(a2 + v5 + 22);
        }
      }

LABEL_29:
      ++v5;
      v4 += 64;
      v3 += 16;
    }

    while (v6 != v5);
  }
}

uint64_t CAHDecHibiscusAvc::populateSequenceRegisters(CAHDecHibiscusAvc *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  v4 = *(v2 + 3500);
  v5 = *(v2 + 3504);
  v6 = *(v2 + 3184);
  v7 = *(v2 + 3192);
  v8 = v6 + 2224 * v4;
  v3[10] = 0;
  LOWORD(v4) = *(v8 + 1558);
  v3[10] = (2 * (v4 & 0xFFF)) | 1;
  v3[10] = ((*(v8 + 1560) & 0xFFF) << 17) | (2 * (v4 & 0xFFF)) | 0x10001;
  v3[11] = 0;
  v9 = *(v8 + 1564) & 1;
  v3[11] = v9;
  v10 = v9 | ((*(v7 + 604 * v5 + 95) != 0) << 7) | 0x2800;
  v3[11] = v10;
  v11 = *(v8 + 4);
  if (*(v8 + 4))
  {
    v11 = (*(v8 + 7) & 0xF) << 15;
  }

  v12 = v11 | v10;
  v3[11] = v12;
  v13 = v12 & 0x7F87A881 | ((*(v8 + 6) & 0xF) << 19);
  v3[11] = v13;
  v14 = v13 & 0xFF7FFFFF | ((*(v8 + 5) & 1) << 23);
  v3[11] = v14;
  v3[11] = v14 & 0xFCFFFFFF | ((*(v8 + 4) & 3) << 24);
  if (*(v8 + 9))
  {
    if (*(v8 + 4) == 3)
    {
      v15 = 12;
    }

    else
    {
      v15 = 8;
    }

    CAHDecHibiscusAvc::AvcSeqScalingListFallBack(this, v8);
    CAHDecHibiscusAvc::copyScalingList(v16, v3 + 12, *(this + 33) + 1112, v8 + 22, v8 + 34, v8 + 130, v15);
  }

  return 0;
}

uint64_t CAHDecHibiscusAvc::populatePictureRegisters(CAHDecHibiscusAvc *this)
{
  v357 = *MEMORY[0x277D85DE8];
  v2 = *(this + 32);
  v3 = *(v2 + 3500);
  v4 = *(v2 + 3504);
  v5 = *(v2 + 3184);
  v6 = *(v2 + 3192);
  v336 = *(v2 + 2088);
  v339 = *(v2 + 3020);
  v340 = *(v2 + 3040);
  v342 = *(v2 + 2644);
  v7 = *(v2 + 8);
  v8 = *(v2 + 6904);
  v356[8] = *(v2 + 6888);
  v356[9] = v8;
  v9 = *(v2 + 6936);
  v356[10] = *(v2 + 6920);
  v356[11] = v9;
  v10 = *(v2 + 6840);
  v356[4] = *(v2 + 6824);
  v356[5] = v10;
  v11 = *(v2 + 6872);
  v356[6] = *(v2 + 6856);
  v356[7] = v11;
  v12 = *(v2 + 6776);
  v356[0] = *(v2 + 6760);
  v356[1] = v12;
  v13 = *(v2 + 6808);
  v356[2] = *(v2 + 6792);
  v356[3] = v13;
  v338 = *(v2 + 6952);
  v14 = (*(*v2 + 184))(v2);
  v15 = *(this + 32);
  if (v14)
  {
    v16 = *(v15 + 2756) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 33);
  v18 = v5 + 2224 * v3;
  v19 = *(v15 + 2675);
  v20 = *(v15 + 2674);
  if (!(v19 | v20))
  {
    goto LABEL_45;
  }

  v21 = *(v18 + 6);
  if (v21 <= *(v18 + 7))
  {
    LOWORD(v21) = *(v18 + 7);
  }

  v22 = (v21 + 9) & 0x1FE;
  if (v22 == 8)
  {
    v24 = v7;
    v28 = 1;
    v26 = 8;
    if (!*(v15 + 2675))
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = *(v15 + 2672);
  v24 = v7;
  if (v22 != 12)
  {
    if (v22 == 10)
    {
      v25 = v23 == 0;
      if (v23)
      {
        v26 = 10;
      }

      else
      {
        v26 = 9;
      }

      v27 = 2;
      goto LABEL_18;
    }

    v26 = 27;
    v28 = 27;
    if (!v19)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (*(v18 + 4) && (v19 == 2 && v26 == 8 || v19 == 3 && (v26 - 9) <= 1))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "populatePictureRegisters";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = v26;
      WORD1(buf[2]) = 1024;
      HIDWORD(buf[2]) = v19;
      v29 = MEMORY[0x277D86220];
      v30 = "AppleAVD: [ERROR] %s(): chroma compression format %d lossy level %d not supported\n";
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v25 = v23 == 0;
  if (v23)
  {
    v26 = 12;
  }

  else
  {
    v26 = 11;
  }

  v27 = 4;
LABEL_18:
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (v19)
  {
    goto LABEL_26;
  }

LABEL_33:
  v7 = v24;
  if (v20 && (v20 == 3 && v28 - 9 < 2 || v28 <= 0x1A && ((1 << v28) & 0x4C00000) != 0 && v20 <= 2))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "populatePictureRegisters";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = v28;
    WORD1(buf[2]) = 1024;
    HIDWORD(buf[2]) = v20;
    v29 = MEMORY[0x277D86220];
    v30 = "AppleAVD: [ERROR] %s(): luma compression format %d lossy level %d not supported\n";
LABEL_41:
    v31 = buf;
    v32 = 24;
    goto LABEL_42;
  }

LABEL_45:
  v34 = (v6 + 604 * v4);
  *(v17 + 52) = 766509056;
  if (**(*(this + 32) + 3200) == 5)
  {
    v35 = 766517248;
  }

  else
  {
    v35 = 766509056;
  }

  if (v16)
  {
    v36 = 688;
  }

  else
  {
    v36 = 672;
  }

  if (v342)
  {
    v37 = 4160;
  }

  else
  {
    v37 = 64;
  }

  v38 = v37 & 0xFFFFFFF0 | ((v342 == 1) << 10) | v36 & 0xFFFFFFF0 | (4 * (v19 & 3)) | v20 & 3 | v35;
  *(v17 + 52) = v38;
  v39 = *(this + 32);
  v40 = v38 | ((v39[2652] & 1) << 19);
  *(v17 + 52) = v40;
  v41 = v40 & 0xFFFBFFFF | ((v39[2653] & 1) << 18);
  *(v17 + 52) = v41;
  *(v17 + 52) = v41 & 0xFFFDFFFF | ((v39[2654] & 1) << 17);
  *(v17 + 56) = 0x1000000;
  LODWORD(v39) = (16 * (*(v18 + 1558) & 0xFFF)) | 0xF;
  *(v17 + 60) = v39;
  v42 = v39 | (*(v18 + 1560) << 20) | 0xF0000;
  *(v17 + 64) = 0;
  *(v17 + 60) = v42;
  v43 = (*(v18 + 8) & 1) << 18;
  *(v17 + 68) = v43;
  v44 = v43 & 0xFFF7FFFF | ((v34[93] & 1) << 19);
  *(v17 + 68) = v44;
  v45 = v44 & 0xFFEFFFFF | ((v34[3] & 1) << 20);
  *(v17 + 68) = v45;
  *(v17 + 68) = v45 | ((**(*(this + 32) + 3200) != 5) << 21);
  LODWORD(v39) = *(v17 + 72) & 0xFFFFFC1F | (32 * (v34[91] & 0x1F));
  *(v17 + 72) = v39;
  *(v17 + 72) = v39 & 0xFFFFFFE0 | v34[601] & 0x1F;
  if (v34[96])
  {
    if (*(v18 + 4) == 3)
    {
      v46 = 12;
    }

    else
    {
      v46 = 8;
    }

    v47 = *(this + 33);
    CAHDecHibiscusAvc::AvcPicScalingListFallBack(v14, v18, v34);
    CAHDecHibiscusAvc::copyScalingList(v48, (v17 + 76), v47 + 1596, (v34 + 109), (v34 + 121), (v34 + 217), v46);
  }

  v49 = 0;
  *(v17 + 80) = *(this + 4462);
  *(v17 + 84) = *(this + 4463);
  *(v17 + 88) = 3145786;
  v50 = this + 9008;
  do
  {
    *(*(this + 33) + v49 + 92) = 0;
    v51 = *(this + 33) + v49;
    v52 = *(v51 + 92);
    *(v51 + 92) = 0;
    *(*(this + 33) + v49 + 92) ^= 0xFFFFFF00;
    v53 = *(this + 33) + v49;
    v54 = *(v53 + 92);
    *(v53 + 92) = v52;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, v49 + 92, 0, 0xFFFFFFFFLL, 8, v54, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + v49 + 152) = 0;
    *(*(this + 33) + v49 + 152) = *(*(this + 33) + v49 + 152) & 0x800001FF | (((*(this + 4456) >> 9) & 0x3FFFFF) << 9);
    *(*(this + 33) + v49 + 616) = 0;
    v55 = *(this + 33) + v49;
    v56 = *(v55 + 616);
    *(v55 + 616) = 0;
    *(*(this + 33) + v49 + 616) ^= 0x3FFu;
    v57 = *(this + 33) + v49;
    v58 = *(v57 + 616);
    *(v57 + 616) = v56;
    if (*v50 || *(v50 + 38) || *(v50 + 39))
    {
      result = CAHDec::addToPatcherList(this, v50, v49 + 616, 0, 0x3FFFFFFFFFFLL, 32, v58, 4);
      if (result)
      {
        return result;
      }
    }

    v49 += 4;
    v50 += 176;
  }

  while (v49 != 60);
  *(*(this + 33) + 212) = 0;
  *(*(this + 33) + 676) = 0;
  if ((*(v17 + 54) & 8) == 0)
  {
    goto LABEL_83;
  }

  v59 = *(this + 33);
  v60 = *(*(this + 32) + 2680);
  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v347 = 0u;
  v348 = 0u;
  v346 = 0u;
  memset(buf, 0, sizeof(buf));
  v61 = (*(v59 + 16) & 0xF) << 9;
  buf[0] = v60;
  v62 = *(v59 + 212);
  *(v59 + 212) = 0;
  *(*(this + 33) + 212) ^= 0xFFFFFF00;
  v63 = *(this + 33);
  v64 = *(v63 + 212);
  *(v63 + 212) = v62;
  if (v60)
  {
    result = CAHDec::addToPatcherList(this, buf, 212, v61, 0xFFFFFFFFLL, 8, v64, 4);
    if (result)
    {
      return result;
    }

    if (buf[0])
    {
      v65 = 0;
    }

    else
    {
      v65 = DWORD2(v353) == 0;
    }

    LODWORD(v60) = !v65 || HIDWORD(v353) != 0;
  }

  *(*(this + 33) + 676) = 0;
  v67 = *(this + 33);
  v68 = *(v67 + 676);
  *(v67 + 676) = 0;
  *(*(this + 33) + 676) ^= 0x3FFu;
  v69 = *(this + 33);
  v70 = *(v69 + 676);
  *(v69 + 676) = v68;
  if (!v60 || (result = CAHDec::addToPatcherList(this, buf, 676, v61, 0x3FFFFFFFFFFLL, 32, v70, 4), !result))
  {
LABEL_83:
    v71 = 0;
    v72 = this + 16048;
    do
    {
      *(*(this + 33) + v71 + 216) = 0;
      v73 = *(this + 33) + v71;
      v74 = *(v73 + 216);
      *(v73 + 216) = 0;
      *(*(this + 33) + v71 + 216) ^= 0xFFFFFF00;
      v75 = *(this + 33) + v71;
      v76 = *(v75 + 216);
      *(v75 + 216) = v74;
      if (*v72 || *(v72 + 38) || *(v72 + 39))
      {
        result = CAHDec::addToPatcherList(this, v72, v71 + 216, 0, 0xFFFFFFFFLL, 8, v76, 4);
        if (result)
        {
          return result;
        }
      }

      *(*(this + 33) + v71 + 680) = 0;
      v77 = *(this + 33) + v71;
      v78 = *(v77 + 680);
      *(v77 + 680) = 0;
      *(*(this + 33) + v71 + 680) ^= 0x3FFu;
      v79 = *(this + 33) + v71;
      v80 = *(v79 + 680);
      *(v79 + 680) = v78;
      if (*v72 || *(v72 + 38) || *(v72 + 39))
      {
        result = CAHDec::addToPatcherList(this, v72, v71 + 680, 0, 0x3FFFFFFFFFFLL, 32, v80, 4);
        if (result)
        {
          return result;
        }
      }

      v71 += 4;
      v72 += 176;
    }

    while (v71 != 16);
    *(*(this + 33) + 232) = 0;
    v81 = *(this + 33);
    v82 = *(v81 + 232);
    *(v81 + 232) = 0;
    *(*(this + 33) + 232) ^= 0xFFFFFF00;
    v83 = *(this + 33);
    v84 = *(v83 + 232);
    *(v83 + 232) = v82;
    if (*(this + 2094) || *(this + 4226) || *(this + 4227))
    {
      result = CAHDec::addToPatcherList(this, this + 2094, 232, 0, 0xFFFFFFFFLL, 8, v84, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 696) = 0;
    v85 = *(this + 33);
    v86 = *(v85 + 696);
    *(v85 + 696) = 0;
    *(*(this + 33) + 696) ^= 0x3FFu;
    v87 = *(this + 33);
    v88 = *(v87 + 696);
    *(v87 + 696) = v86;
    if (*(this + 2094) || *(this + 4226) || *(this + 4227))
    {
      result = CAHDec::addToPatcherList(this, this + 2094, 696, 0, 0x3FFFFFFFFFFLL, 32, v88, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 236) = 0;
    v89 = *(this + 33);
    v90 = *(v89 + 236);
    *(v89 + 236) = 0;
    *(*(this + 33) + 236) ^= 0xFFFFFF00;
    v91 = *(this + 33);
    v92 = *(v91 + 236);
    *(v91 + 236) = v90;
    if (*(this + 2116) || *(this + 4270) || *(this + 4271))
    {
      result = CAHDec::addToPatcherList(this, this + 2116, 236, 0, 0xFFFFFFFFLL, 8, v92, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 700) = 0;
    v93 = *(this + 33);
    v94 = *(v93 + 700);
    *(v93 + 700) = 0;
    *(*(this + 33) + 700) ^= 0x3FFu;
    v95 = *(this + 33);
    v96 = *(v95 + 700);
    *(v95 + 700) = v94;
    if (*(this + 2116) || *(this + 4270) || *(this + 4271))
    {
      result = CAHDec::addToPatcherList(this, this + 2116, 700, 0, 0x3FFFFFFFFFFLL, 32, v96, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 240) = 0;
    v97 = *(this + 33);
    v98 = *(v97 + 240);
    *(v97 + 240) = 0;
    *(*(this + 33) + 240) ^= 0xFFFFFF00;
    v99 = *(this + 33);
    v100 = *(v99 + 240);
    *(v99 + 240) = v98;
    if (*(this + 2138) || *(this + 4314) || *(this + 4315))
    {
      result = CAHDec::addToPatcherList(this, this + 2138, 240, 0, 0xFFFFFFFFLL, 8, v100, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 704) = 0;
    v101 = *(this + 33);
    v102 = *(v101 + 704);
    *(v101 + 704) = 0;
    *(*(this + 33) + 704) ^= 0x3FFu;
    v103 = *(this + 33);
    v104 = *(v103 + 704);
    *(v103 + 704) = v102;
    if (*(this + 2138) || *(this + 4314) || *(this + 4315))
    {
      result = CAHDec::addToPatcherList(this, this + 2138, 704, 0, 0x3FFFFFFFFFFLL, 32, v104, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 244) = 0;
    v105 = *(this + 33);
    v106 = *(v105 + 244);
    *(v105 + 244) = 0;
    *(*(this + 33) + 244) ^= 0xFFFFFF00;
    v107 = *(this + 33);
    v108 = *(v107 + 244);
    *(v107 + 244) = v106;
    if (*(this + 2160) || *(this + 4358) || *(this + 4359))
    {
      result = CAHDec::addToPatcherList(this, this + 2160, 244, 0, 0xFFFFFFFFLL, 8, v108, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 708) = 0;
    v109 = *(this + 33);
    v110 = *(v109 + 708);
    *(v109 + 708) = 0;
    *(*(this + 33) + 708) ^= 0x3FFu;
    v111 = *(this + 33);
    v112 = *(v111 + 708);
    *(v111 + 708) = v110;
    if (*(this + 2160) || *(this + 4358) || *(this + 4359))
    {
      result = CAHDec::addToPatcherList(this, this + 2160, 708, 0, 0x3FFFFFFFFFFLL, 32, v112, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 248) = 0;
    v113 = *(this + 33);
    v114 = *(v113 + 248);
    *(v113 + 248) = 0;
    *(*(this + 33) + 248) ^= 0xFFFFFF00;
    v115 = *(this + 33);
    v116 = *(v115 + 248);
    *(v115 + 248) = v114;
    if (*(this + 2182) || *(this + 4402) || *(this + 4403))
    {
      result = CAHDec::addToPatcherList(this, this + 2182, 248, 0, 0xFFFFFFFFLL, 8, v116, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 712) = 0;
    v117 = *(this + 33);
    v118 = *(v117 + 712);
    *(v117 + 712) = 0;
    *(*(this + 33) + 712) ^= 0x3FFu;
    v119 = *(this + 33);
    v120 = *(v119 + 712);
    *(v119 + 712) = v118;
    if (*(this + 2182) || *(this + 4402) || *(this + 4403))
    {
      result = CAHDec::addToPatcherList(this, this + 2182, 712, 0, 0x3FFFFFFFFFFLL, 32, v120, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 252) = 0;
    *(*(this + 33) + 716) = 0;
    *(*(this + 33) + 256) = 0;
    v121 = *(this + 33);
    v122 = *(v121 + 256);
    *(v121 + 256) = 0;
    *(*(this + 33) + 256) ^= 0xFFFFFF00;
    v123 = *(this + 33);
    v124 = *(v123 + 256);
    *(v123 + 256) = v122;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 256, 0, 0xFFFFFFFFLL, 8, v124, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 720) = 0;
    v125 = *(this + 33);
    v126 = *(v125 + 720);
    *(v125 + 720) = 0;
    *(*(this + 33) + 720) ^= 0x3FFu;
    v127 = *(this + 33);
    v128 = *(v127 + 720);
    *(v127 + 720) = v126;
    if (*(this + 1456) || *(this + 2950) || *(this + 2951))
    {
      result = CAHDec::addToPatcherList(this, this + 1456, 720, 0, 0x3FFFFFFFFFFLL, 32, v128, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 260) = 0;
    v129 = *(this + 33);
    v130 = *(v129 + 260);
    *(v129 + 260) = 0;
    *(*(this + 33) + 260) ^= 0xFFFFFF00;
    v131 = *(this + 33);
    v132 = *(v131 + 260);
    *(v131 + 260) = v130;
    v133 = (this + 176 * v340 + 11824);
    if (*v133 || *(this + 44 * v340 + 2994) || *(this + 44 * v340 + 2995))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v340 + 1478, 260, 0, 0xFFFFFFFFLL, 8, v132, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 724) = 0;
    v134 = *(this + 33);
    v135 = *(v134 + 724);
    *(v134 + 724) = 0;
    *(*(this + 33) + 724) ^= 0x3FFu;
    v136 = *(this + 33);
    v137 = *(v136 + 724);
    *(v136 + 724) = v135;
    if (*v133 || *(this + 44 * v340 + 2994) || *(this + 44 * v340 + 2995))
    {
      result = CAHDec::addToPatcherList(this, v133, 724, 0, 0x3FFFFFFFFFFLL, 32, v137, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 264) = 0;
    v138 = *(this + 33);
    v139 = *(v138 + 264);
    *(v138 + 264) = 0;
    *(*(this + 33) + 264) ^= 0xFFFFFF80;
    v140 = *(this + 33);
    v141 = *(v140 + 264);
    *(v140 + 264) = v139;
    v143 = this + 176 * v340 + 560;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v340 + 70, 264, 0, 0xFFFFFFFFLL, 7, v141, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 728) = 0;
    v144 = *(this + 33);
    v145 = *(v144 + 728);
    *(v144 + 728) = 0;
    *(*(this + 33) + 728) ^= 0x3FFu;
    v146 = *(this + 33);
    v147 = *(v146 + 728);
    *(v146 + 728) = v145;
    if (*v143 || *(v143 + 38) || *(v143 + 39))
    {
      result = CAHDec::addToPatcherList(this, v143, 728, 0, 0x3FFFFFFFFFFLL, 32, v147, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 268) = 0;
    v148 = *(this + 33);
    v149 = *(v148 + 268);
    *(v148 + 268) = 0;
    *(*(this + 33) + 268) ^= 0xFFFFFF80;
    v150 = *(this + 33);
    v151 = *(v150 + 268);
    *(v150 + 268) = v149;
    v152 = (v336 + 8);
    if (*(v336 + 8) || *(v336 + 160) || *(v336 + 164))
    {
      result = CAHDec::addToPatcherList(this, (v336 + 8), 268, *(v336 + 60), 0xFFFFFFFFLL, 7, v151, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 732) = 0;
    v153 = *(this + 33);
    v154 = *(v153 + 732);
    *(v153 + 732) = 0;
    *(*(this + 33) + 732) ^= 0x3FFu;
    v155 = *(this + 33);
    v156 = *(v155 + 732);
    *(v155 + 732) = v154;
    if (*v152 || *(v336 + 160) || *(v336 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 732, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v156, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 272) = 0;
    v157 = *(this + 33);
    v158 = *(v157 + 272);
    *(v157 + 272) = 0;
    *(*(this + 33) + 272) ^= 0xFFFFFF80;
    v159 = *(this + 33);
    v160 = *(v159 + 272);
    *(v159 + 272) = v158;
    v161 = this + 176 * v340 + 4784;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, this + 22 * v340 + 598, 272, 0, 0xFFFFFFFFLL, 7, v160, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 736) = 0;
    v162 = *(this + 33);
    v163 = *(v162 + 736);
    *(v162 + 736) = 0;
    *(*(this + 33) + 736) ^= 0x3FFu;
    v164 = *(this + 33);
    v165 = *(v164 + 736);
    *(v164 + 736) = v163;
    if (*v161 || *(v161 + 38) || *(v161 + 39))
    {
      result = CAHDec::addToPatcherList(this, v161, 736, 0, 0x3FFFFFFFFFFLL, 32, v165, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 276) = 0;
    v166 = *(this + 33);
    v167 = *(v166 + 276);
    *(v166 + 276) = 0;
    *(*(this + 33) + 276) ^= 0xFFFFFF80;
    v168 = *(this + 33);
    v169 = *(v168 + 276);
    *(v168 + 276) = v167;
    if (*v152 || *(v336 + 160) || *(v336 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 276, *(v336 + 64), 0xFFFFFFFFLL, 7, v169, 4);
      if (result)
      {
        return result;
      }
    }

    *(*(this + 33) + 740) = 0;
    v170 = *(this + 33);
    v171 = *(v170 + 740);
    *(v170 + 740) = 0;
    *(*(this + 33) + 740) ^= 0x3FFu;
    v172 = *(this + 33);
    v173 = *(v172 + 740);
    *(v172 + 740) = v171;
    if (*v152 || *(v336 + 160) || *(v336 + 164))
    {
      result = CAHDec::addToPatcherList(this, v152, 740, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v173, 4);
      if (result)
      {
        return result;
      }
    }

    if (*(*(this + 32) + 2648) == 1)
    {
      v174 = *(this + 33);
      v175 = *(v174 + 268);
      *(v174 + 268) = 0;
      *(*(this + 33) + 268) ^= 0xFFFFFF80;
      v176 = *(this + 33);
      v177 = *(v176 + 268);
      *(v176 + 268) = v175;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 268, *(v336 + 60), 0xFFFFFFFFLL, 7, v177, 4);
        if (result)
        {
          return result;
        }
      }

      v178 = *(this + 33);
      v179 = *(v178 + 732);
      *(v178 + 732) = 0;
      *(*(this + 33) + 732) ^= 0x3FFu;
      v180 = *(this + 33);
      v181 = *(v180 + 732);
      *(v180 + 732) = v179;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 732, *(v336 + 60), 0x3FFFFFFFFFFLL, 32, v181, 4);
        if (result)
        {
          return result;
        }
      }

      v182 = *(this + 33);
      v183 = *(v182 + 276);
      *(v182 + 276) = 0;
      *(*(this + 33) + 276) ^= 0xFFFFFF80;
      v184 = *(this + 33);
      v185 = *(v184 + 276);
      *(v184 + 276) = v183;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 276, *(v336 + 64), 0xFFFFFFFFLL, 7, v185, 4);
        if (result)
        {
          return result;
        }
      }

      v186 = *(this + 33);
      v187 = *(v186 + 740);
      *(v186 + 740) = 0;
      *(*(this + 33) + 740) ^= 0x3FFu;
      v188 = *(this + 33);
      v189 = *(v188 + 740);
      *(v188 + 740) = v187;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 740, *(v336 + 64), 0x3FFFFFFFFFFLL, 32, v189, 4);
        if (result)
        {
          return result;
        }
      }

      v190 = *(this + 33);
      v191 = *(v190 + 264);
      *(v190 + 264) = 0;
      *(*(this + 33) + 264) ^= 0xFFFFFF80;
      v192 = *(this + 33);
      v193 = *(v192 + 264);
      *(v192 + 264) = v191;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 264, *(v336 + 72), 0xFFFFFFFFLL, 7, v193, 4);
        if (result)
        {
          return result;
        }
      }

      v194 = *(this + 33);
      v195 = *(v194 + 728);
      *(v194 + 728) = 0;
      *(*(this + 33) + 728) ^= 0x3FFu;
      v196 = *(this + 33);
      v197 = *(v196 + 728);
      *(v196 + 728) = v195;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 728, *(v336 + 72), 0x3FFFFFFFFFFLL, 32, v197, 4);
        if (result)
        {
          return result;
        }
      }

      v198 = *(this + 33);
      v199 = *(v198 + 272);
      *(v198 + 272) = 0;
      *(*(this + 33) + 272) ^= 0xFFFFFF80;
      v200 = *(this + 33);
      v201 = *(v200 + 272);
      *(v200 + 272) = v199;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 272, *(v336 + 76), 0xFFFFFFFFLL, 7, v201, 4);
        if (result)
        {
          return result;
        }
      }

      v202 = *(this + 33);
      v203 = *(v202 + 736);
      *(v202 + 736) = 0;
      *(*(this + 33) + 736) ^= 0x3FFu;
      v204 = *(this + 33);
      v205 = *(v204 + 736);
      *(v204 + 736) = v203;
      if (*v152 || *(v336 + 160) || *(v336 + 164))
      {
        result = CAHDec::addToPatcherList(this, v152, 736, *(v336 + 76), 0x3FFFFFFFFFFLL, 32, v205, 4);
        if (result)
        {
          return result;
        }
      }
    }

    if (*(v17 + 52) & 0x2000 | v338)
    {
      *(this + v340 + 116) = 0;
      *(*(this + 33) + 280) = 0;
      if (v338)
      {
        v341 = 0;
        if (v16)
        {
          v206 = 0x2000000;
        }

        else
        {
          v206 = 0;
        }

        v335 = v206;
        do
        {
          v207 = *(v356 + v341);
          v208 = *(v207 + 32);
          *(*(this + 33) + 4 * v341 + 280) = 0;
          *(*(this + 33) + 4 * v341 + 280) = *(*(this + 33) + 4 * v341 + 280) & 0xFFFFFFF | ((v338 << 28) - 0x10000000);
          *(*(this + 33) + 4 * v341 + 280) &= 0xF3FFFFFF;
          *(*(this + 33) + 4 * v341 + 280) = *(*(this + 33) + 4 * v341 + 280) & 0xFDFFFFFF | v335;
          *(*(this + 33) + 4 * v341 + 280) |= 0x1000000u;
          v209 = v339 - *(v207 + 12);
          v210 = v209 & 0x1FFFF;
          if (v209 < -32768)
          {
            v210 = 98304;
          }

          if (v209 < 0x8000)
          {
            v211 = v210;
          }

          else
          {
            v211 = 0x7FFF;
          }

          *(*(this + 33) + 4 * v341 + 280) = *(*(this + 33) + 4 * v341 + 280) & 0xFFFE0000 | v211;
          *(*(this + 33) + 4 * v341 + 280) = *(*(this + 33) + 4 * v341 + 280) & 0xFFFDFFFF | ((*(v207 + 1) & 1) << 17);
          v212 = *(this + 32);
          if (*(v207 + 28) == 1)
          {
            v354 = 0u;
            v355 = 0u;
            v352 = 0u;
            v353 = 0u;
            v350 = 0u;
            v351 = 0u;
            v348 = 0u;
            v349 = 0u;
            v346 = 0u;
            v347 = 0u;
            memset(buf, 0, sizeof(buf));
            DPB = AVC_RLM::getDPB(*(v212 + 2992), buf);
            if (DPB < 1)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v343 = 136315138;
              v344 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No ref pics found!\n";
            }

            else
            {
              v214 = DPB;
              while (v214 >= 1)
              {
                v207 = buf[--v214];
                if (!*(v207 + 28))
                {
                  v208 = *(v207 + 32);
                  v212 = *(this + 32);
                  *(v212 + 2702) = 1;
                  goto LABEL_232;
                }
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                return 0xFFFFFFFFLL;
              }

              v343 = 136315138;
              v344 = "populatePictureRegisters";
              v29 = MEMORY[0x277D86220];
              v30 = "AppleAVD: ERROR: %s: No non-existing ref frames found!\n";
            }

            v31 = &v343;
            goto LABEL_365;
          }

LABEL_232:
          if ((*(*v212 + 184))(v212))
          {
            v215 = *(this + 32);
            if (*(v215 + 2756))
            {
              buf[0] = 0;
              if ((CAVDAvcDecoder::decodeGetRenderTargetRef(v215, v208, *(v207 + 56), *(v207 + 64), buf) & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v343) = 0;
                  v29 = MEMORY[0x277D86220];
                  v30 = "AppleAVD: decodeGetRenderTargetRef RETURNED ERROR\n";
                  v31 = &v343;
                  v32 = 2;
                  goto LABEL_42;
                }

                return 0xFFFFFFFFLL;
              }

              *(v207 + 40) = buf[0] + 8;
            }
          }

          *(*(this + 33) + 4 * v341 + 344) = 0;
          v337 = 4 * v341;
          v216 = *(this + 33) + 4 * v341;
          v217 = *(v216 + 344);
          *(v216 + 344) = 0;
          *(*(this + 33) + 4 * v341 + 344) ^= 0xFFFFFF80;
          v218 = *(this + 33) + 4 * v341;
          v219 = *(v218 + 344);
          *(v218 + 344) = v217;
          v142 = this + 560;
          v220 = this + 176 * v208 + 560;
          if (*v220 || *(v220 + 38) || *(v220 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v337 + 344, 0, 0xFFFFFFFFLL, 7, v219, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 744) = 0;
          v221 = *(this + 33) + 4 * v341;
          v222 = *(v221 + 744);
          *(v221 + 744) = 0;
          *(*(this + 33) + 4 * v341 + 744) ^= 0x3FFu;
          v223 = *(this + 33) + 4 * v341;
          v224 = *(v223 + 744);
          *(v223 + 744) = v222;
          if (*v220 || *(v220 + 38) || *(v220 + 39))
          {
            result = CAHDec::addToPatcherList(this, &v142[176 * v208], v337 + 744, 0, 0x3FFFFFFFFFFLL, 32, v224, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 408) = 0;
          v225 = *(this + 33) + 4 * v341;
          v226 = *(v225 + 408);
          *(v225 + 408) = 0;
          *(*(this + 33) + 4 * v341 + 408) ^= 0xFFFFFF80;
          v227 = *(this + 33) + 4 * v341;
          v228 = *(v227 + 408);
          *(v227 + 408) = v226;
          v229 = *(v207 + 40);
          if (*v229 || *(v229 + 152) || *(v229 + 156))
          {
            result = CAHDec::addToPatcherList(this, v229, v337 + 408, *(v229 + 52), 0xFFFFFFFFLL, 7, v228, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 808) = 0;
          v230 = *(this + 33) + 4 * v341;
          v231 = *(v230 + 808);
          *(v230 + 808) = 0;
          *(*(this + 33) + 4 * v341 + 808) ^= 0x3FFu;
          v232 = *(this + 33) + 4 * v341;
          v233 = *(v232 + 808);
          *(v232 + 808) = v231;
          v234 = *(v207 + 40);
          if (*v234 || *(v234 + 152) || *(v234 + 156))
          {
            result = CAHDec::addToPatcherList(this, v234, v337 + 808, *(v234 + 52), 0x3FFFFFFFFFFLL, 32, v233, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 472) = 0;
          v235 = *(this + 33) + 4 * v341;
          v236 = *(v235 + 472);
          *(v235 + 472) = 0;
          *(*(this + 33) + 4 * v341 + 472) ^= 0xFFFFFF80;
          v237 = *(this + 33) + 4 * v341;
          v238 = *(v237 + 472);
          *(v237 + 472) = v236;
          v239 = this + 176 * v208 + 4784;
          if (*v239 || *(v239 + 38) || *(v239 + 39))
          {
            result = CAHDec::addToPatcherList(this, v239, v337 + 472, 0, 0xFFFFFFFFLL, 7, v238, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 872) = 0;
          v240 = *(this + 33) + 4 * v341;
          v241 = *(v240 + 872);
          *(v240 + 872) = 0;
          *(*(this + 33) + 4 * v341 + 872) ^= 0x3FFu;
          v242 = *(this + 33) + 4 * v341;
          v243 = *(v242 + 872);
          *(v242 + 872) = v241;
          if (*v239 || *(v239 + 38) || *(v239 + 39))
          {
            result = CAHDec::addToPatcherList(this, v239, v337 + 872, 0, 0x3FFFFFFFFFFLL, 32, v243, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 536) = 0;
          v244 = *(this + 33) + 4 * v341;
          v245 = *(v244 + 536);
          *(v244 + 536) = 0;
          *(*(this + 33) + 4 * v341 + 536) ^= 0xFFFFFF80;
          v246 = *(this + 33) + 4 * v341;
          v247 = *(v246 + 536);
          *(v246 + 536) = v245;
          v248 = *(v207 + 40);
          if (*v248 || *(v248 + 152) || *(v248 + 156))
          {
            result = CAHDec::addToPatcherList(this, v248, v337 + 536, *(v248 + 56), 0xFFFFFFFFLL, 7, v247, 4);
            if (result)
            {
              return result;
            }
          }

          *(*(this + 33) + 4 * v341 + 936) = 0;
          v249 = *(this + 33) + 4 * v341;
          v250 = *(v249 + 936);
          *(v249 + 936) = 0;
          *(*(this + 33) + 4 * v341 + 936) ^= 0x3FFu;
          v251 = *(this + 33) + 4 * v341;
          v252 = *(v251 + 936);
          *(v251 + 936) = v250;
          v253 = *(v207 + 40);
          if (*v253 || *(v253 + 152) || *(v253 + 156))
          {
            result = CAHDec::addToPatcherList(this, v253, v337 + 936, *(v253 + 56), 0x3FFFFFFFFFFLL, 32, v252, 4);
            if (result)
            {
              return result;
            }
          }

          if (*(*(this + 32) + 2648) == 1)
          {
            v254 = *(this + 33) + 4 * v341;
            v255 = *(v254 + 408);
            *(v254 + 408) = 0;
            *(*(this + 33) + 4 * v341 + 408) ^= 0xFFFFFF80;
            v256 = *(this + 33) + 4 * v341;
            v257 = *(v256 + 408);
            *(v256 + 408) = v255;
            v258 = *(v207 + 40);
            if (*v258 || *(v258 + 152) || *(v258 + 156))
            {
              result = CAHDec::addToPatcherList(this, v258, v337 + 408, *(v258 + 52), 0xFFFFFFFFLL, 7, v257, 4);
              if (result)
              {
                return result;
              }
            }

            v259 = *(this + 33) + 4 * v341;
            v260 = *(v259 + 808);
            *(v259 + 808) = 0;
            *(*(this + 33) + 4 * v341 + 808) ^= 0x3FFu;
            v261 = *(this + 33) + 4 * v341;
            v262 = *(v261 + 808);
            *(v261 + 808) = v260;
            v263 = *(v207 + 40);
            if (*v263 || *(v263 + 152) || *(v263 + 156))
            {
              result = CAHDec::addToPatcherList(this, v263, v337 + 808, *(v263 + 52), 0x3FFFFFFFFFFLL, 32, v262, 4);
              if (result)
              {
                return result;
              }
            }

            v264 = *(this + 33) + 4 * v341;
            v265 = *(v264 + 536);
            *(v264 + 536) = 0;
            *(*(this + 33) + 4 * v341 + 536) ^= 0xFFFFFF80;
            v266 = *(this + 33) + 4 * v341;
            v267 = *(v266 + 536);
            *(v266 + 536) = v265;
            v268 = *(v207 + 40);
            if (*v268 || *(v268 + 152) || *(v268 + 156))
            {
              result = CAHDec::addToPatcherList(this, v268, v337 + 536, *(v268 + 56), 0xFFFFFFFFLL, 7, v267, 4);
              if (result)
              {
                return result;
              }
            }

            v269 = *(this + 33) + 4 * v341;
            v270 = *(v269 + 936);
            *(v269 + 936) = 0;
            *(*(this + 33) + 4 * v341 + 936) ^= 0x3FFu;
            v271 = *(this + 33) + 4 * v341;
            v272 = *(v271 + 936);
            *(v271 + 936) = v270;
            v273 = *(v207 + 40);
            if (*v273 || *(v273 + 152) || *(v273 + 156))
            {
              result = CAHDec::addToPatcherList(this, v273, v337 + 936, *(v273 + 56), 0x3FFFFFFFFFFLL, 32, v272, 4);
              if (result)
              {
                return result;
              }
            }

            v274 = *(this + 33) + 4 * v341;
            v275 = *(v274 + 344);
            *(v274 + 344) = 0;
            *(*(this + 33) + 4 * v341 + 344) ^= 0xFFFFFF80;
            v276 = *(this + 33) + 4 * v341;
            v277 = *(v276 + 344);
            *(v276 + 344) = v275;
            v278 = *(v207 + 40);
            if (*v278 || *(v278 + 152) || *(v278 + 156))
            {
              result = CAHDec::addToPatcherList(this, v278, v337 + 344, *(v278 + 64), 0xFFFFFFFFLL, 7, v277, 4);
              if (result)
              {
                return result;
              }
            }

            v279 = *(this + 33) + 4 * v341;
            v280 = *(v279 + 744);
            *(v279 + 744) = 0;
            *(*(this + 33) + 4 * v341 + 744) ^= 0x3FFu;
            v281 = *(this + 33) + 4 * v341;
            v282 = *(v281 + 744);
            *(v281 + 744) = v280;
            v283 = *(v207 + 40);
            if (*v283 || *(v283 + 152) || *(v283 + 156))
            {
              result = CAHDec::addToPatcherList(this, v283, v337 + 744, *(v283 + 64), 0x3FFFFFFFFFFLL, 32, v282, 4);
              if (result)
              {
                return result;
              }
            }

            v284 = *(this + 33) + 4 * v341;
            v285 = *(v284 + 472);
            *(v284 + 472) = 0;
            *(*(this + 33) + 4 * v341 + 472) ^= 0xFFFFFF80;
            v286 = *(this + 33) + 4 * v341;
            v287 = *(v286 + 472);
            *(v286 + 472) = v285;
            v288 = *(v207 + 40);
            if (*v288 || *(v288 + 152) || *(v288 + 156))
            {
              result = CAHDec::addToPatcherList(this, v288, v337 + 472, *(v288 + 68), 0xFFFFFFFFLL, 7, v287, 4);
              if (result)
              {
                return result;
              }
            }

            v289 = *(this + 33) + 4 * v341;
            v290 = *(v289 + 872);
            *(v289 + 872) = 0;
            *(*(this + 33) + 4 * v341 + 872) ^= 0x3FFu;
            v291 = *(this + 33) + 4 * v341;
            v292 = *(v291 + 872);
            *(v291 + 872) = v290;
            v293 = *(v207 + 40);
            if (*v293 || *(v293 + 152) || *(v293 + 156))
            {
              result = CAHDec::addToPatcherList(this, v293, v337 + 872, *(v293 + 68), 0x3FFFFFFFFFFLL, 32, v292, 4);
              if (result)
              {
                return result;
              }
            }
          }

          ++v341;
        }

        while (v341 != v338);
      }
    }

    else
    {
      *(v17 + 52) |= 0x2000u;
      *(this + v340 + 116) = 1;
      *(*(this + 33) + 280) = 0;
    }

    *(*(this + 33) + 600) = 0;
    *(*(this + 33) + 1000) = 0;
    *(*(this + 33) + 604) = 0;
    *(*(this + 33) + 1004) = 0;
    *(*(this + 33) + 608) = 0;
    *(*(this + 33) + 612) = 0;
    if (v342)
    {
      v294 = *(this + 32);
      v295 = *(v294 + 2892);
      if (*(v294 + 2892))
      {
        v296 = *(v294 + 2904);
        v295 = *(v294 + 2908);
      }

      else
      {
        v296 = 0;
      }

      v297 = *(v294 + 3544);
      v298 = *(v297 + 52);
      v299 = v298 + v296;
      if (__CFADD__(v298, v296))
      {
        v300 = 1;
      }

      else
      {
        v301 = *(v297 + 56);
        v302 = v301 + v295;
        if (!__CFADD__(v301, v295))
        {
          v303 = *(this + 33);
          v304 = *(v303 + 600);
          *(v303 + 600) = 0;
          *(*(this + 33) + 600) ^= 0xFFFFFFC0;
          v305 = *(this + 33);
          v306 = *(v305 + 600);
          *(v305 + 600) = v304;
          v307 = *(*(this + 32) + 3544);
          if (*v307 || *(v307 + 152) || *(v307 + 156))
          {
            result = CAHDec::addToPatcherList(this, v307, 600, v299, 0xFFFFFFFFLL, 6, v306, 4);
            if (result)
            {
              return result;
            }
          }

          v308 = *(this + 33);
          v309 = *(v308 + 1000);
          *(v308 + 1000) = 0;
          *(*(this + 33) + 1000) ^= 0x3FFu;
          v310 = *(this + 33);
          v311 = *(v310 + 1000);
          *(v310 + 1000) = v309;
          v312 = *(*(this + 32) + 3544);
          if (*v312 || *(v312 + 152) || *(v312 + 156))
          {
            result = CAHDec::addToPatcherList(this, v312, 1000, v299, 0x3FFFFFFFFFFLL, 32, v311, 4);
            if (result)
            {
              return result;
            }
          }

          v313 = *(this + 33);
          v314 = *(v313 + 604);
          *(v313 + 604) = 0;
          *(*(this + 33) + 604) ^= 0xFFFFFFC0;
          v315 = *(this + 33);
          v316 = *(v315 + 604);
          *(v315 + 604) = v314;
          v317 = *(*(this + 32) + 3544);
          if (*v317 || *(v317 + 152) || *(v317 + 156))
          {
            result = CAHDec::addToPatcherList(this, v317, 604, v302, 0xFFFFFFFFLL, 6, v316, 4);
            if (result)
            {
              return result;
            }
          }

          v318 = *(this + 33);
          v319 = *(v318 + 1004);
          *(v318 + 1004) = 0;
          *(*(this + 33) + 1004) ^= 0x3FFu;
          v320 = *(this + 33);
          v321 = *(v320 + 1004);
          *(v320 + 1004) = v319;
          v322 = *(*(this + 32) + 3544);
          if (*v322 || *(v322 + 152) || *(v322 + 156))
          {
            result = CAHDec::addToPatcherList(this, v322, 1004, v302, 0x3FFFFFFFFFFLL, 32, v321, 4);
            if (result)
            {
              return result;
            }
          }

          if (v7)
          {
            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(*(*(this + 32) + 3544) + 76) >> 6) & 0xFFF) << 6);
            v323 = (*(*(this + 32) + 3544) + 80);
          }

          else
          {
            if (CAHDecDahliaAvc::getSWRStride(this, *(v17 + 84) - *(v17 + 80) + 1, *(v18 + 6), *(v18 + 7), *(v18 + 2212)))
            {
              return 0xFFFFFFFFLL;
            }

            *(*(this + 33) + 608) = *(*(this + 33) + 608) & 0xFFFC003F | (((*(this + 4460) >> 6) & 0xFFF) << 6);
            v323 = (this + 17844);
          }

          *(*(this + 33) + 612) = *(*(this + 33) + 612) & 0xFFF8003F | (((*v323 >> 6) & 0x1FFF) << 6);
          goto LABEL_342;
        }

        v300 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "populatePictureRegisters";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v300;
        v29 = MEMORY[0x277D86220];
        v30 = "AppleAVD: %s(): failKind = %d";
        v31 = buf;
        v32 = 18;
        goto LABEL_42;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_342:
    v324 = *(this + 32);
    if (*(v324 + 2360) == 1)
    {
      v325 = *(this + 33);
      *(v325 + 1104) = *(v325 + 1104) & 0xFFFFFFFE | *(v324 + 2508) & 1;
      if (*(v324 + 2508))
      {
        *(v325 + 2080) = 0x10000000;
        *(v325 + 2084) = *(v324 + 2368);
        *(v325 + 2096) = 0;
        *(v325 + 2088) = 0;
        *(v325 + 2100) = *(v324 + 2372);
        v326 = *(v324 + 2404);
        *(v325 + 2116) = *(v324 + 2388);
        *(v325 + 2132) = v326;
      }

      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFD | (2 * (*(v324 + 2512) & 1));
      if (*(v324 + 2512))
      {
        *(v325 + 2148) = 0;
        if (!*(v324 + 2424))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = "populatePictureRegisters";
          v29 = MEMORY[0x277D86220];
          v30 = "AppleAVD: %s(): H13A descrambler is not supported\n";
          goto LABEL_364;
        }

        *(v324 + 2640) = 0;
        v327 = *(v325 + 2148) & 0xF7FFFFF | ((*(v324 + 2420) & 1) << 23) | 0x20000000;
        *(v325 + 2148) = v327;
        *(v325 + 2148) = v327 & 0xFFC00000 | (*(v324 + 2364) == 0);
        v328 = *(v324 + 2428);
        v329 = *(v324 + 2460);
        *(v325 + 2168) = *(v324 + 2444);
        *(v325 + 2184) = v329;
        *(v325 + 2152) = v328;
      }

      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFFB | (4 * (*(v324 + 2516) & 1));
      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFF7 | (8 * (*(v324 + 2520) & 1));
      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFEF | (16 * (*(v324 + 2524) & 1));
      *(v325 + 2308) = 0;
      if (*(v324 + 2476) == 2)
      {
        v330 = 805306368;
      }

      else
      {
        v330 = 813694976;
      }

      *(v325 + 2308) = v330;
      memcpy((v325 + 2312), (v324 + 2480), 4 * *(v324 + 2476));
      if (*(v324 + 2516))
      {
        *(v324 + 2516) = 0;
      }

      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFDF | (32 * (*(v324 + 2632) & 1));
      if (*(v324 + 2632))
      {
        *(v325 + 2200) = 0x80000000;
        v331 = ((*(v324 + 2528) & 1) << 27) | 0x80000000;
        *(v325 + 2200) = v331;
        *(v325 + 2200) = v331 | (((2 * *(v324 + 2528)) & 4 | (*(v324 + 2528) >> 1) & 2 | (*(v324 + 2528) >> 3) & 1) << 24);
        v332 = *(v324 + 2532);
        v333 = *(v324 + 2564);
        *(v325 + 2220) = *(v324 + 2548);
        *(v325 + 2236) = v333;
        *(v325 + 2204) = v332;
        *(v325 + 2252) = *(v324 + 2580);
        *(v325 + 2260) = *(v324 + 2588);
        v334 = *(v324 + 2528);
        if ((v334 & 6) != 0 && (v334 & 8) == 0)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return 0xFFFFFFFFLL;
          }

          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = "populatePictureRegisters";
          v29 = MEMORY[0x277D86220];
          v30 = "AppleAVD: %s(): chip id is not used while ecid and/or board id is used\n";
LABEL_364:
          v31 = buf;
LABEL_365:
          v32 = 12;
LABEL_42:
          _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
          return 0xFFFFFFFFLL;
        }

        *(v325 + 2268) = *(v324 + 2596);
      }

      *(*(this + 33) + 1104) = *(*(this + 33) + 1104) & 0xFFFFFFBF | ((*(v324 + 2636) & 1) << 6);
      if (*(v324 + 2636))
      {
        result = 0;
        *(v325 + 2284) = -1879048192;
        *(v325 + 2284) = ((*(v324 + 2612) & 1) << 23) | 0x90000000;
        *(v325 + 2288) = *(v324 + 2616);
        *(v324 + 2640) = 1;
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CAHDecHibiscusAvc::getTileIdxAbove(CAHDecHibiscusAvc *this, unsigned int a2)
{
  v2 = *(*(this + 33) + 1008);
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

uint64_t CAHDecHibiscusAvc::populateAvdWork(CAHDecHibiscusAvc *this, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = *(this + 33);
  v4 = *(v3 + 3200);
  v5 = *(v3 + 7388);
  v23 = 0;
  v24 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v2 + 3264);
    v10 = (v4 + 20);
    v22 = a2;
    v11 = 44 * a2;
    v12 = v2 + 956 * v5;
    while (1)
    {
      v13 = v12 + v7;
      *(v13 + 2332) = v8;
      *(v13 + 2334) = 0;
      *(v13 + 2336) = v8;
      *(v12 + v7 + 2338) = 0;
      v14 = *v9;
      if (!CAVDAvcDecoder::GetSDataMemInfo(*(this + 32), v8, &v24, &v23))
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      *(v13 + 2360) = *v10;
      *(v13 + 2364) = v15;
      *(v13 + 2368) = 0;
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = 15;
      }

      *(v13 + 2342) = v16;
      v17 = v24;
      if (*v24 || *(v24 + 152) || *(v24 + 156))
      {
        v18 = v23;
        if (HIDWORD(v23) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "populateAvdWork";
          v27 = 1024;
          v28 = 1967;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v18 = v23;
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 862750, v18, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }

        v17 = v24;
        if (*v24)
        {
          goto LABEL_17;
        }
      }

      if (*(v17 + 152) || *(v17 + 156))
      {
LABEL_17:
        v20 = v23;
        if (HIDWORD(v23))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "populateAvdWork";
            v27 = 1024;
            v28 = 1968;
            _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
            v20 = v23;
          }
        }

        result = CAHDec::addToPatcherList(this, v17, v7 + 862752, v20, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }
      }

      v9 += 239;
      *(v12 + v7 + 2356) = v14;
      ++v8;
      v7 += 44;
      v10 += 462;
      if (v11 == v7)
      {
        v2 = *(this + 33);
        v21 = v22;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v21 = 0;
LABEL_24:
    result = 0;
    *(v2 + 28) = v21;
    *(v2 + 32) = 862728;
  }

  return result;
}

uint64_t CAHDecHibiscusAvc::allocWorkBuf_SPS(CAHDecHibiscusAvc *this, _BYTE *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = (this + 0x4000);
  v4 = a2[4];
  v5 = *(a2 + 779);
  v6 = 16 * v5;
  v7 = *(a2 + 780);
  v8 = 16 * v7;
  v9 = 32 - __clz(((16 * v5 + 47) >> 5) - 1);
  if (v5 < 2)
  {
    LOBYTE(v9) = 0;
  }

  v10 = 32 - __clz(((16 * v7 + 47) >> 5) - 1);
  if (v7 < 2)
  {
    LOBYTE(v10) = 0;
  }

  v11 = ((32 << (v10 + v9)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    if (v4 == 1)
    {
      ++v8;
    }

    v12 = (v6 + 16) << (v4 == 3);
    v13 = (((v8 + 16) >> (v4 == 1)) + 15) >> 4;
    if (v12 > 0x20)
    {
      v14 = 32 - __clz(((v12 + 31) >> 5) - 1);
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v14) = 0;
LABEL_12:
  v15 = 32 - __clz(v13 - 1);
  if (v13 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = ((8 << (v16 + v14)) + 127) & 0xFFFFFF80;
  if (a2[4])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  *(this + 4452) = v11;
  *(this + 4453) = v18;
  *(this + 2227) = 0;
  v19 = 76 * v5 + 76;
  *(this + 4458) = v19;
  *(this + 4457) = v19 + v19 * v7;
  if (!*(*(this + 32) + 2648))
  {
    v20 = (this + 560);
    v21 = (this + 4784);
    v22 = 24;
    while (1)
    {
      v23 = v3[356];
      if (v23 && CAVDDecoder::allocAVDMem(*(this + 32), v20, v23, 7, 1, 0))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v30 = 136315650;
        v31 = "allocWorkBuf_SPS";
        v32 = 1024;
        v33 = 2206;
        v34 = 2080;
        v35 = "HdrY";
        v29 = MEMORY[0x277D86220];
        goto LABEL_42;
      }

      if (*v20)
      {
        bzero(*v20, v3[356]);
      }

      v24 = v3[357];
      if (v24)
      {
        if (CAVDDecoder::allocAVDMem(*(this + 32), v21, v24, 7, 1, 0))
        {
          break;
        }
      }

      if (*v21)
      {
        bzero(*v21, v3[357]);
      }

      v20 += 22;
      v21 += 22;
      if (!--v22)
      {
        goto LABEL_29;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v30 = 136315650;
    v31 = "allocWorkBuf_SPS";
    v32 = 1024;
    v33 = 2207;
    v34 = 2080;
    v35 = "HdrC";
    v29 = MEMORY[0x277D86220];
    goto LABEL_42;
  }

LABEL_29:
  v25 = (this + 11824);
  v26 = 24;
  while (1)
  {
    v27 = v3[361];
    if (v27)
    {
      if (CAVDDecoder::allocAVDMem(*(this + 32), v25, v27, 7, 1, 0))
      {
        break;
      }
    }

    if (*v25)
    {
      bzero(*v25, v3[361]);
    }

    v25 += 22;
    if (!--v26)
    {
      result = 0;
      v3[366] = 0;
      v3[367] = v6 | (v7 << 20) | 0xF000F;
      return result;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315650;
    v31 = "allocWorkBuf_SPS";
    v32 = 1024;
    v33 = 2213;
    v34 = 2080;
    v35 = "MvColo";
    v29 = MEMORY[0x277D86220];
LABEL_42:
    _os_log_impl(&dword_277606000, v29, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v30, 0x1Cu);
  }

LABEL_43:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}

uint64_t CAHDecHibiscusAvc::allocWorkBuf_PPS(CAHDecHibiscusAvc *this, _BYTE *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2[4];
  v6 = *(a2 + 779);
  if (((a2[6] + 9) & 0x1FEu) <= ((a2[7] + 9) & 0x1FEu))
  {
    v7 = (a2[7] + 9) & 0x1FE;
  }

  else
  {
    v7 = (a2[6] + 9) & 0x1FE;
  }

  if (v5 == 3)
  {
    v8 = 48;
  }

  else
  {
    v8 = 32;
  }

  if (v5 == 3)
  {
    v9 = 192;
  }

  else
  {
    v9 = 128;
  }

  v10 = v5 == 0;
  if (a2[4])
  {
    v11 = v8;
  }

  else
  {
    v11 = 16;
  }

  v12 = ((v7 * v11) >> 3) * (v6 + 1);
  v13 = 36 * (v6 + 1);
  if (v10)
  {
    v14 = 64;
  }

  else
  {
    v14 = v9;
  }

  v15 = ((v7 * v14) >> 3) * (v6 + 1);
  v16 = 20 * *(a2 + 779);
  v17 = (this + 16048);
  v18 = 4;
  do
  {
    if (CAVDDecoder::allocAVDMem(*(this + 32), v17, v16 + 20, 7, 1, 0))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v24 = 136315650;
      v25 = "allocWorkBuf_PPS";
      v26 = 1024;
      v27 = 2332;
      v28 = 2080;
      v29 = "AvpAboveInfo";
      v19 = MEMORY[0x277D86220];
LABEL_27:
      _os_log_impl(&dword_277606000, v19, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v24, 0x1Cu);
      goto LABEL_28;
    }

    if (*v17)
    {
      bzero(*v17, v16 + 20);
    }

    v17 += 22;
    --v18;
  }

  while (v18);
  if (v7 && CAVDDecoder::allocAVDMem(*(this + 32), this + 1047, v12, 7, 1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = "allocWorkBuf_PPS";
      v26 = 1024;
      v27 = 2336;
      v28 = 2080;
      v29 = "IpAbove";
      v19 = MEMORY[0x277D86220];
      goto LABEL_27;
    }

LABEL_28:
    (*(*this + 160))(this, 0);
    return 0xFFFFFFFFLL;
  }

  v21 = *(this + 2094);
  if (v21)
  {
    bzero(v21, v12);
  }

  if (v7 && CAVDDecoder::allocAVDMem(*(this + 32), this + 1058, v15, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v24 = 136315650;
    v25 = "allocWorkBuf_PPS";
    v26 = 1024;
    v27 = 2337;
    v28 = 2080;
    v29 = "LfAbovePix";
    v19 = MEMORY[0x277D86220];
    goto LABEL_27;
  }

  v22 = *(this + 2116);
  if (v22)
  {
    bzero(v22, v15);
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 1069, v13, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v24 = 136315650;
    v25 = "allocWorkBuf_PPS";
    v26 = 1024;
    v27 = 2338;
    v28 = 2080;
    v29 = "LfAboveInfo";
    v19 = MEMORY[0x277D86220];
    goto LABEL_27;
  }

  v23 = *(this + 2138);
  if (v23)
  {
    bzero(v23, v13);
  }

  if (CAVDDecoder::allocAVDMem(*(this + 32), this + 728, v13, 7, 1, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v24 = 136315650;
    v25 = "allocWorkBuf_PPS";
    v26 = 1024;
    v27 = 2341;
    v28 = 2080;
    v29 = "MvAboveInfo";
    v19 = MEMORY[0x277D86220];
    goto LABEL_27;
  }

  result = *(this + 1456);
  if (result)
  {
    bzero(result, v13);
    return 0;
  }

  return result;
}

uint64_t CAHDecHibiscusAvc::freeWorkBuf_SPS(CAHDecHibiscusAvc *this)
{
  v2 = (this + 560);
  v3 = (this + 4784);
  v4 = (this + 11824);
  v5 = 24;
  do
  {
    result = *(this + 32);
    if (!*(result + 2648))
    {
      if (*v2)
      {
        result = CAVDDecoder::deallocAVDMem(result, v2);
        *v2 = 0;
      }

      if (*v3)
      {
        result = CAVDDecoder::deallocAVDMem(*(this + 32), v3);
        *v3 = 0;
      }
    }

    if (v3[880])
    {
      result = CAVDDecoder::deallocAVDMem(*(this + 32), v4);
      v3[880] = 0;
    }

    v4 += 22;
    v2 += 22;
    v3 += 22;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t *CAHDecHibiscusAvc::freeWorkBuf_PPS(uint64_t *this, void *a2)
{
  v2 = this;
  v3 = this + 2006;
  v4 = 4;
  do
  {
    if (*v3)
    {
      this = CAVDDecoder::deallocAVDMem(v2[32], v3);
      *v3 = 0;
    }

    v3 += 22;
    --v4;
  }

  while (v4);
  if (v2[2094])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2094);
    v2[2094] = 0;
  }

  if (v2[1456])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 1456);
    v2[1456] = 0;
  }

  if (v2[2116])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2116);
    v2[2116] = 0;
  }

  if (v2[2138])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2138);
    v2[2138] = 0;
  }

  if (v2[2160])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2160);
    v2[2160] = 0;
  }

  if (v2[2182])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2182);
    v2[2182] = 0;
  }

  if (v2[2204])
  {
    this = CAVDDecoder::deallocAVDMem(v2[32], v2 + 2204);
    v2[2204] = 0;
  }

  return this;
}

uint64_t CAHDecHibiscusAvc::setVPInstrFifo(uint64_t this, int a2)
{
  v2 = 0;
  v3 = (this + 9164);
  do
  {
    *v3 = 1;
    *(v3 - 39) = v2++;
    v3 += 44;
  }

  while (v2 != 15);
  *(this + 17824) = a2;
  return this;
}

CAHDecHibiscusAvx *createHibiscusAvxDecoder(void **a1)
{
  v2 = operator new(0x1740uLL, MEMORY[0x277D826F0]);
  v3 = v2;
  if (v2)
  {
    CAHDecHibiscusAvx::CAHDecHibiscusAvx(v2, a1);
  }

  return v3;
}

void CAHDecHibiscusAvx::CAHDecHibiscusAvx(CAHDecHibiscusAvx *this, void **a2)
{
  CAHDec::CAHDec(this);
  *v4 = &unk_288669058;
  *(v4 + 256) = a2;
  *(v4 + 456) = 198332;
  *(v4 + 8) = 1652;
  *(v4 + 16) = xmmword_27775BC80;
  *(v4 + 32) = 3;
  *(v4 + 56) = a2;
  bzero(a2 + 370, 0x14A0uLL);
  bzero(a2[1030], 0x1680uLL);
  bzero(this + 464, 0x1550uLL);
  bzero(a2 + 1031, 0x19E8uLL);
  *(this + 740) = 0;
  *(this + 371) = 0u;
}

void CAHDecHibiscusAvx::~CAHDecHibiscusAvx(CAHDecHibiscusAvx *this)
{
  *this = &unk_288669058;
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
  CAHDecHibiscusAvx::~CAHDecHibiscusAvx(this);

  JUMPOUT(0x277CAEC20);
}

uint64_t CAHDecHibiscusAvx::init(CAHDecHibiscusAvx *this)
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
  *(this + 1485) = 9168;
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

    v8 = *(this + 1485);
    v10 += 184;
    --v11;
    if (*(this + 1485))
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
    v21 = *(this + 1485);
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

uint64_t CAHDecHibiscusAvx::startPicture(CAHDecHibiscusAvx *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 13) = 0;
  v3 = *(this + 34);
  *(this + 33) = v3;
  if (v3)
  {
    bzero(v3, 0x306BCuLL);
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

uint64_t CAHDecHibiscusAvx::DecodePicture(CAHDecHibiscusAvx *this, uint64_t a2)
{
  if (CAHDecHibiscusAvx::startPicture(this, a2))
  {
    return 1;
  }

  (*(*this + 40))(this);
  (*(*this + 56))(this);
  if ((*(*this + 64))(this) || CAHDecDaisyAvx::populateAddressRegisters(this) || CAHDecHibiscusAvx::populateDecryptionRegisters(this))
  {
    return 4;
  }

  CAHDecHibiscusAvx::populateTiles(this);
  CAHDecDaisyAvx::populateAvxVPDependency(this);
  (*(*this + 96))(this, a2);
  (*(*this + 48))(this, *(this + 114));
  return 0;
}

uint64_t CAHDecHibiscusAvx::populateDecryptionRegisters(CAHDecHibiscusAvx *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  if (*(v1 + 2360) != 1)
  {
    return 0;
  }

  v3 = *(this + 33);
  *(v3 + 1392) = *(v3 + 1392) & 0xFFFFFFFE | *(v1 + 2508) & 1;
  if (*(v1 + 2508))
  {
    *(v3 + 1404) = 0x10000000;
    *(v3 + 1408) = *(v1 + 2368);
    *(v3 + 1416) = 0;
    *(v3 + 1412) = 0;
    *(v3 + 1424) = *(v1 + 2372);
    v4 = *(v1 + 2388);
    *(v3 + 1456) = *(v1 + 2404);
    *(v3 + 1440) = v4;
  }

  *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFFD | (2 * (*(v1 + 2512) & 1));
  if (!*(v1 + 2512))
  {
LABEL_7:
    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFFB | (4 * (*(v1 + 2516) & 1));
    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFF7 | (8 * (*(v1 + 2520) & 1));
    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFFFFEF | (16 * (*(v1 + 2524) & 1));
    *(v3 + 1632) = 0;
    if (*(v1 + 2476) == 2)
    {
      v8 = 805306368;
    }

    else
    {
      v8 = 813694976;
    }

    *(v3 + 1632) = v8;
    memcpy((v3 + 1636), (v1 + 2480), 4 * *(v1 + 2476));
    if (*(v1 + 2516))
    {
      *(v1 + 2516) = 0;
    }

    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFEFFFF | ((*(v1 + 2632) & 1) << 16);
    if (*(v1 + 2632))
    {
      *(v3 + 1524) = 0x80000000;
      v9 = ((*(v1 + 2528) & 1) << 27) | 0x80000000;
      *(v3 + 1524) = v9;
      *(v3 + 1524) = v9 | (((2 * *(v1 + 2528)) & 4 | (*(v1 + 2528) >> 1) & 2 | (*(v1 + 2528) >> 3) & 1) << 24);
      v10 = *(v1 + 2532);
      v11 = *(v1 + 2564);
      *(v3 + 1544) = *(v1 + 2548);
      *(v3 + 1560) = v11;
      *(v3 + 1528) = v10;
      *(v3 + 1576) = *(v1 + 2580);
      *(v3 + 1584) = *(v1 + 2588);
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

      *(v3 + 1592) = *(v1 + 2596);
    }

    *(*(this + 33) + 1392) = *(*(this + 33) + 1392) & 0xFFFDFFFF | ((*(v1 + 2636) & 1) << 17);
    if (*(v1 + 2636))
    {
      result = 0;
      *(v3 + 1608) = -1879048192;
      *(v3 + 1608) = ((*(v1 + 2612) & 1) << 23) | 0x90000000;
      *(v3 + 1612) = *(v1 + 2616);
      *(v1 + 2640) = 1;
      return result;
    }

    return 0;
  }

  *(v3 + 1472) = 0;
  if (*(v1 + 2424))
  {
    *(v1 + 2640) = 0;
    v5 = *(v3 + 1472) & 0xF7FFFFF | ((*(v1 + 2420) & 1) << 23) | 0x20000000;
    *(v3 + 1472) = v5;
    *(v3 + 1472) = v5 & 0xFFC00000 | (*(v1 + 2364) == 0);
    v6 = *(v1 + 2428);
    v7 = *(v1 + 2460);
    *(v3 + 1492) = *(v1 + 2444);
    *(v3 + 1508) = v7;
    *(v3 + 1476) = v6;
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

uint64_t CAHDecHibiscusAvx::populateTiles(CAHDecHibiscusAvx *this)
{
  v2 = (*(*(*(this + 32) + 15112) + 140) * *(*(*(this + 32) + 15112) + 136));
  v3 = *(this + *(this + 13) + 34);
  CAHDecDaisyAvx::populateClearTiles(this);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 1652;
    do
    {
      CAHDecTansyAvx::populateTileRegisters(this, v5, v4++);
      v5 += 12;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t CAHDecHibiscusAvx::updateCommonRegisters(CAHDecHibiscusAvx *this, int a2)
{
  v2 = *(this + 33);
  *(v2 + 12) = a2;
  *(v2 + 20) = -559035650;
  return 0;
}

uint64_t CAHDecHibiscusAvx::populateSequenceRegisters(CAHDecHibiscusAvx *this)
{
  v2 = *(this + 32);
  v1 = *(this + 33);
  v3 = *(v2 + 15112);
  v4 = *(v2 + 37616);
  *(v1 + 44) = 0;
  v5 = *(v3 + 8) - 1;
  *(v1 + 44) = v5;
  *(v1 + 44) = (v5 | (*(v3 + 12) << 16)) - 0x10000;
  *(v1 + 48) = 0;
  v6 = *(v4 + 80) & 1;
  *(v1 + 48) = v6;
  v7 = v6 & 0xFFFFFFF1 | (2 * (*(v4 + 76) & 7));
  *(v1 + 48) = v7;
  v8 = v7 & 0xFFFFFFEF | (16 * (*(v4 + 72) & 1));
  *(v1 + 48) = v8;
  v9 = v8 & 0xFFFFFFDF | (32 * (*(v4 + 96) & 1));
  *(v1 + 48) = v9;
  v10 = v9 & 0xFFFFFFBF | ((*(v4 + 95) & 1) << 6);
  *(v1 + 48) = v10;
  v11 = v10 & 0xFFFFFF7F | ((*(v4 + 94) & 1) << 7);
  *(v1 + 48) = v11;
  v12 = v11 & 0xFFFFFEFF | ((*(v4 + 93) & 1) << 8);
  *(v1 + 48) = v12;
  v13 = v12 & 0xFFFFFDFF | ((*(v4 + 92) & 1) << 9);
  *(v1 + 48) = v13;
  v14 = v13 & 0xFFFFFBFF | ((*(v4 + 60) == 15) << 10);
  *(v1 + 48) = v14;
  v15 = v14 & 0xFFFFF7FF | ((*(v4 + 1942) & 1) << 11);
  *(v1 + 48) = v15;
  v16 = v15 & 0xFFF87FFF | ((*(v3 + 58) & 0xF) << 15);
  *(v1 + 48) = v16;
  v17 = v16 & 0xFF87FFFF | ((*(v3 + 57) & 0xF) << 19);
  *(v1 + 48) = v17;
  *(v1 + 48) = v17 & 0xFCFFFFFF | ((*(v3 + 56) & 3) << 24);
  return 0;
}

uint64_t CAHDecHibiscusAvx::getUpscaleConvolveStep(CAHDecHibiscusAvx *this, int a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((a3 / 2 + (a2 << 14)) / a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "int32_t CAHDecHibiscusAvx::getUpscaleConvolveStep(int, int)";
    v6 = 1024;
    v7 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v4, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecHibiscusAvx::getUpscaleConvolveX0(CAHDecHibiscusAvx *this, int a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return ((((a2 - a3) << 13) + a3 / 2) / a3 - ((a4 * a3 - (a2 << 14) + ((a4 * a3 - (a2 << 14)) >> 31)) >> 1) + 128) & 0x3FFF;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "int32_t CAHDecHibiscusAvx::getUpscaleConvolveX0(int, int, int32_t)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid out_length %d\n", &v5, 0x12u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CAHDecHibiscusAvx::populatePictureRegisters(CAHDecHibiscusAvx *this)
{
  v214 = *MEMORY[0x277D85DE8];
  v1 = *(this + 32);
  v2 = *(this + 33);
  v3 = *(v1 + 15112);
  v4 = *(v1 + 37616);
  *(v2 + 52) = 766509056;
  v5 = ((*(v1 + 2652) & 1) << 19) | 0x2DB00000;
  *(v2 + 52) = v5;
  v6 = v5 & 0xFFFBFFFF | ((*(v1 + 2653) & 1) << 18);
  *(v2 + 52) = v6;
  v7 = v6 & 0xFFFDFFFF | ((*(v1 + 2654) & 1) << 17);
  *(v2 + 52) = v7;
  if (*(v3 + 128) == 1)
  {
    v8 = (*(v4 + 1956) ^ 1) << 13;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  *(v2 + 52) = v9;
  v10 = v9 | ((*(*(this + 32) + 2644) != 0) << 12);
  *(v2 + 52) = v10;
  v11 = v10 & 0xFFFFF00F | ((*(*(this + 32) + 2644) == 1) << 10) | 0x2E0;
  *(v2 + 52) = v11;
  v12 = v11 & 0xFFFFFFE3 | (4 * (*(v3 + 78516) & 3));
  *(v2 + 52) = v12;
  *(v2 + 52) = v12 & 0xFFFFFFFC | *(v3 + 78520) & 3;
  *(v2 + 56) = 0;
  if (*(v4 + 1956))
  {
    v13 = 318767104;
  }

  else
  {
    v13 = 50331648;
  }

  *(v2 + 56) = v13;
  v14 = *(v3 + 24);
  v15 = *(v3 + 12);
  *(v2 + 60) = 0;
  if (*(v4 + 1956))
  {
    v15 = (v15 + 7) & 0xFFF8;
  }

  v16 = (v15 << 16) - 0x10000;
  *(v2 + 60) = v16;
  if (*(v4 + 1956))
  {
    LOWORD(v14) = (v14 + 7) & 0xFFF8;
  }

  *(v2 + 64) = 0;
  *(v2 + 60) = v16 & 0xFFFF0000 | (v14 - 1);
  v17 = *(v3 + 128) << 31;
  *(v2 + 68) = v17;
  v18 = v17 & 0x807FFFFF | (*(v4 + 1876) << 23);
  *(v2 + 68) = v18;
  v19 = v18 & 0xFF8FFFFF | ((*(v4 + 1896) & 7) << 20);
  *(v2 + 68) = v19;
  v20 = v19 & 0xFFF1FFFF | ((*(v4 + 1900) & 7) << 17);
  *(v2 + 68) = v20;
  v21 = v20 & 0xFFFEFFFF | ((*(*(*(this + 32) + 15112) + 79300) & 1) << 16);
  *(v2 + 68) = v21;
  v22 = v21 & 0xFFFF7FFF | ((*(v4 + 2284) & 1) << 15);
  *(v2 + 68) = v22;
  v23 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v23 = (*(v4 + 2285) & 1) << 14;
  }

  v24 = v23 | v22 & 0xFFFFBFFF;
  *(v2 + 68) = v24;
  v25 = *(v4 + 2284);
  if (*(v4 + 2284))
  {
    v25 = (*(v4 + 2287) & 1) << 13;
  }

  v26 = v25 | v24 & 0xFFFFDFFF;
  *(v2 + 68) = v26;
  v27 = v26 & 0xFFFFEFFF | ((*(v4 + 1957) & 1) << 12);
  *(v2 + 68) = v27;
  if (*(v3 + 128))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v4 + 1958) << 10;
  }

  v29 = v28 | v27 & 0xFFFFFBFF;
  *(v2 + 68) = v29;
  v30 = v29 & 0xFFFFFDFF | ((*(v4 + 1962) & 1) << 9);
  *(v2 + 68) = v30;
  v31 = v30 & 0xFFFFFEFF | ((*(v4 + 1941) & 1) << 8);
  *(v2 + 68) = v31;
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
  *(v2 + 68) = v34;
  v35 = v34 & 0xFFFFFFBF | ((*(v4 + 1956) & 1) << 6);
  *(v2 + 68) = v35;
  v36 = v35 & 0xFFFFFFDF | (32 * (*(v4 + 1959) & 1));
  *(v2 + 68) = v36;
  v37 = v36 & 0xFFFFFFEF | (16 * (*(v4 + 1892) & 1));
  *(v2 + 68) = v37;
  v38 = v37 & 0xFFFFFFF7 | (8 * (*(v4 + 1960) & 1));
  *(v2 + 68) = v38;
  v39 = v38 & 0xFFFFFFFB | (4 * (*(v4 + 1961) & 1));
  *(v2 + 68) = v39;
  *(v2 + 68) = v39 & 0xFFFFFFFC | *(v4 + 1964) & 3;
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
  *(v2 + 72) = 0;
  if ((*(v3 + 128) & 1) == 0)
  {
    v51 = *(v4 + 2192) << 29;
  }

  v52 = 0;
  *(v2 + 72) = v51;
  v53 = ((v207 & 7) << 25) | ((*(v4 + 1872) != 0) << 28) | ((v208 & 7) << 22) | ((v209 & 7) << 19) | ((v210 & 7) << 16) | ((v211 & 7) << 13) | ((v212 & 7) << 10) | ((v213 & 7) << 7) | v51;
  *(v2 + 72) = v53;
  v54 = v53 & 0xFFFFFFBF | ((*(v4 + 2116) & 1) << 6);
  *(v2 + 72) = v54;
  v55 = v54 & 0xFFFFFFDF | (32 * (*(v4 + 2120) & 1));
  *(v2 + 72) = v55;
  v56 = v55 & 0xFFFFFFEF | (16 * (*(v4 + 2124) & 1));
  *(v2 + 72) = v56;
  v57 = v56 & 0xFFFFFFF7 | (8 * (*(v4 + 2128) & 1));
  *(v2 + 72) = v57;
  v58 = v57 & 0xFFFFFFFB | (4 * (*(v4 + 2132) & 1));
  *(v2 + 72) = v58;
  v59 = v58 & 0xFFFFFFFD | (2 * (*(v4 + 2136) & 1));
  *(v2 + 72) = v59;
  *(v2 + 72) = v59 & 0xFFFFFFFE | *(v4 + 2140) & 1;
  v60 = (v2 + 108);
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
  *(v2 + 140) = 0x20000;
  v76 = (v2 + 144);
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
  *(v2 + 168) = 0;
  v85 = *(v4 + 3160) << 31;
  *(v2 + 168) = v85;
  v86 = v85 & 0x9FFFFFFF | ((*(v3 + 79200) & 3) << 29);
  *(v2 + 168) = v86;
  v87 = v86 & 0xE01FFFFF | (*(v4 + 2244) << 21);
  *(v2 + 168) = v87;
  v88 = v87 & 0xFFE03FFF | ((*(v4 + 2248) & 0x7F) << 14);
  *(v2 + 168) = v88;
  v89 = v88 & 0xFFFFC07F | ((*(v4 + 2252) & 0x7F) << 7);
  *(v2 + 168) = v89;
  *(v2 + 168) = v89 & 0xFFFFFF80 | *(v4 + 2260) & 0x7F;
  *(v2 + 172) = 0;
  v90 = (*(v4 + 2256) & 0x7F) << 20;
  *(v2 + 172) = v90;
  v91 = v90 & 0xFFF01FFF | ((*(v4 + 2264) & 0x7F) << 13);
  *(v2 + 172) = v91;
  v92 = v91 | (*(v4 + 2268) << 12);
  *(v2 + 172) = v92;
  v93 = v92 & 0xFFFFF0FF | ((*(v4 + 2272) & 0xF) << 8);
  *(v2 + 172) = v93;
  v94 = v93 & 0xFFFFFF0F | (16 * (*(v4 + 2276) & 0xF));
  *(v2 + 172) = v94;
  *(v2 + 172) = v94 & 0xFFFFFFF0 | *(v4 + 2280) & 0xF;
  *(v2 + 176) = 0;
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
      *(v2 + 176) = v95;
      if (*(v4 + 3168))
      {
        v96 = ((*(v4 + 3176) & 1) << 28) | v95;
        *(v2 + 176) = v96;
        v95 = ((*(v3 + 79204) & 3) << 29) | v96;
        *(v2 + 176) = v95;
      }
    }
  }

  if ((*(v4 + 1956) & 1) == 0 && (*(v4 + 1962) & 1) == 0)
  {
    v97 = v95 | ((*(v4 + 2216) & 1) << 27);
    *(v2 + 176) = v97;
    v98 = v97 & 0xF8FFFFFF | ((*(v4 + 2212) & 7) << 24);
    *(v2 + 176) = v98;
    v99 = v98 & 0xFF03FFFF | ((*(v4 + 2196) & 0x3F) << 18);
    *(v2 + 176) = v99;
    v100 = v99 & 0xFFFC0FFF | ((*(v4 + 2200) & 0x3F) << 12);
    *(v2 + 176) = v100;
    if (*(v4 + 2196) || (v101 = *(v4 + 2200)) != 0)
    {
      v101 = (*(v4 + 2204) & 0x3F) << 6;
    }

    v102 = v101 | v100 & 0xFFFFF03F;
    *(v2 + 176) = v102;
    if (*(v4 + 2196) || (v103 = *(v4 + 2200)) != 0)
    {
      v103 = *(v4 + 2208) & 0x3F;
    }

    *(v2 + 176) = v103 | v102 & 0xFFFFFFC0;
    if (!*(v3 + 56))
    {
      *(v2 + 176) = v100 & 0xFFFFF000;
    }
  }

  *(v2 + 180) = 0;
  v104 = (*(v4 + 2226) & 0x7F) << 21;
  *(v2 + 180) = v104;
  v105 = v104 & 0xFFE03FFF | ((*(v4 + 2227) & 0x7F) << 14);
  *(v2 + 180) = v105;
  v106 = v105 & 0xFFFFC07F | ((*(v4 + 2228) & 0x7F) << 7);
  *(v2 + 180) = v106;
  *(v2 + 180) = v106 & 0xFFFFFF80 | *(v4 + 2229) & 0x7F;
  *(v2 + 184) = 0;
  v107 = (*(v4 + 2230) & 0x7F) << 21;
  *(v2 + 184) = v107;
  v108 = v107 & 0xFFE03FFF | ((*(v4 + 2231) & 0x7F) << 14);
  *(v2 + 184) = v108;
  v109 = v108 & 0xFFFFC07F | ((*(v4 + 2232) & 0x7F) << 7);
  *(v2 + 184) = v109;
  *(v2 + 184) = v109 & 0xFFFFFF80 | *(v4 + 2233) & 0x7F;
  *(v2 + 188) = 0;
  LOBYTE(v109) = *(v4 + 2236);
  *(v2 + 188) = (v109 & 0x7F) << 7;
  *(v2 + 188) = *(v4 + 2237) & 0x7F | ((v109 & 0x7F) << 7);
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  v110 = (v2 + 192);
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

    *(v2 + 196) = v124;
    if (*(v4 + 3188) < 3)
    {
      v125 = 0;
    }

    else
    {
      v125 = (*(v4 + 3264) & 3) << 18;
    }

    v126 = v125 | v124;
    *(v2 + 196) = v126;
    if (*(v4 + 3188) < 3)
    {
      v127 = 0;
    }

    else
    {
      v127 = (*(v4 + 3328) & 0xF) << 14;
    }

    v128 = v127 | v126;
    *(v2 + 196) = v128;
    if (*(v4 + 3188) < 3)
    {
      v129 = 0;
    }

    else
    {
      v129 = (*(v4 + 3392) & 3) << 12;
    }

    v130 = v129 | v128;
    *(v2 + 196) = v130;
    if (*(v4 + 3188) <= 3)
    {
      v131 = 0;
    }

    else
    {
      v131 = (*(v4 + 3204) & 0xF) << 8;
    }

    v132 = v131 | v130;
    *(v2 + 196) = v132;
    if (*(v4 + 3188) < 4)
    {
      v133 = 0;
    }

    else
    {
      v133 = (*(v4 + 3268) & 3) << 6;
    }

    v134 = v133 | v132 & 0xFFFFFF3F;
    *(v2 + 196) = v134;
    if (*(v4 + 3188) < 4)
    {
      v135 = 0;
    }

    else
    {
      v135 = 4 * (*(v4 + 3332) & 0xF);
    }

    v136 = v135 | v134 & 0xFFFFFFC3;
    *(v2 + 196) = v136;
    if (*(v4 + 3188) < 4)
    {
      v137 = 0;
    }

    else
    {
      v137 = *(v4 + 3396) & 3;
    }

    *(v2 + 196) = v137 | v136 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 4)
    {
      v138 = 0;
    }

    else
    {
      v138 = (*(v4 + 3208) & 0xF) << 20;
    }

    *(v2 + 200) = v138;
    if (*(v4 + 3188) < 5)
    {
      v139 = 0;
    }

    else
    {
      v139 = (*(v4 + 3272) & 3) << 18;
    }

    v140 = v139 | v138;
    *(v2 + 200) = v140;
    if (*(v4 + 3188) < 5)
    {
      v141 = 0;
    }

    else
    {
      v141 = (*(v4 + 3336) & 0xF) << 14;
    }

    v142 = v141 | v140;
    *(v2 + 200) = v142;
    if (*(v4 + 3188) < 5)
    {
      v143 = 0;
    }

    else
    {
      v143 = (*(v4 + 3400) & 3) << 12;
    }

    v144 = v143 | v142;
    *(v2 + 200) = v144;
    if (*(v4 + 3188) <= 5)
    {
      v145 = 0;
    }

    else
    {
      v145 = (*(v4 + 3212) & 0xF) << 8;
    }

    v146 = v145 | v144;
    *(v2 + 200) = v146;
    if (*(v4 + 3188) < 6)
    {
      v147 = 0;
    }

    else
    {
      v147 = (*(v4 + 3276) & 3) << 6;
    }

    v148 = v147 | v146 & 0xFFFFFF3F;
    *(v2 + 200) = v148;
    if (*(v4 + 3188) < 6)
    {
      v149 = 0;
    }

    else
    {
      v149 = 4 * (*(v4 + 3340) & 0xF);
    }

    v150 = v149 | v148 & 0xFFFFFFC3;
    *(v2 + 200) = v150;
    if (*(v4 + 3188) < 6)
    {
      v151 = 0;
    }

    else
    {
      v151 = *(v4 + 3404) & 3;
    }

    *(v2 + 200) = v151 | v150 & 0xFFFFFFFC;
    if (*(v4 + 3188) <= 6)
    {
      v152 = 0;
    }

    else
    {
      v152 = (*(v4 + 3216) & 0xF) << 20;
    }

    *(v2 + 204) = v152;
    if (*(v4 + 3188) < 7)
    {
      v153 = 0;
    }

    else
    {
      v153 = (*(v4 + 3280) & 3) << 18;
    }

    v154 = v153 | v152;
    *(v2 + 204) = v154;
    if (*(v4 + 3188) < 7)
    {
      v155 = 0;
    }

    else
    {
      v155 = (*(v4 + 3344) & 0xF) << 14;
    }

    v156 = v155 | v154;
    *(v2 + 204) = v156;
    if (*(v4 + 3188) < 7)
    {
      v157 = 0;
    }

    else
    {
      v157 = (*(v4 + 3408) & 3) << 12;
    }

    v158 = v157 | v156;
    *(v2 + 204) = v158;
    if (*(v4 + 3188) <= 7)
    {
      v159 = 0;
    }

    else
    {
      v159 = (*(v4 + 3220) & 0xF) << 8;
    }

    v160 = v159 | v158;
    *(v2 + 204) = v160;
    if (*(v4 + 3188) < 8)
    {
      v161 = 0;
    }

    else
    {
      v161 = (*(v4 + 3284) & 3) << 6;
    }

    v162 = v161 | v160 & 0xFFFFFF3F;
    *(v2 + 204) = v162;
    if (*(v4 + 3188) < 8)
    {
      v163 = 0;
    }

    else
    {
      v163 = 4 * (*(v4 + 3348) & 0xF);
    }

    v164 = v163 | v162 & 0xFFFFFFC3;
    *(v2 + 204) = v164;
    if (*(v4 + 3188) < 8)
    {
      v165 = 0;
    }

    else
    {
      v165 = *(v4 + 3412) & 3;
    }

    *(v2 + 204) = v165 | v164 & 0xFFFFFFFC;
  }

  if (*(v4 + 98))
  {
    v166 = (v2 + 208);
    if (*(v4 + 2172) != 8)
    {
      *v166 = 0x80000000;
      v167 = ((*(v4 + 2172) << 28) - 0x10000000) | 0x80000000;
      goto LABEL_151;
    }
  }

  else
  {
    v166 = (v2 + 208);
  }

  v167 = 0;
  *v166 = 0;
LABEL_151:
  *(v2 + 208) = v167;
  *(v2 + 208) = (*(v4 + 2164) - 1) | v167;
  UpscaleConvolveStep = CAHDecHibiscusAvx::getUpscaleConvolveStep(this, *(v4 + 2176), *(v4 + 2164));
  v169 = UpscaleConvolveStep;
  UpscaleConvolveX0 = CAHDecHibiscusAvx::getUpscaleConvolveX0(UpscaleConvolveStep, *(v4 + 2176), *(v4 + 2164), UpscaleConvolveStep);
  *(v2 + 212) = v169 & 0x3FFF | ((UpscaleConvolveX0 & 0x3FFF) << 14);
  v171 = (*(v4 + 2176) + 1) >> 1;
  v172 = (*(v4 + 2164) + 1) >> 1;
  v173 = CAHDecHibiscusAvx::getUpscaleConvolveStep(UpscaleConvolveX0, v171, v172);
  *(v2 + 216) = v173 & 0x3FFF | ((CAHDecHibiscusAvx::getUpscaleConvolveX0(v173, v171, v172, v173) & 0x3FFF) << 14);
  *(v2 + 220) = 0;
  v174 = (*(v4 + 3448) & 3) << 10;
  *(v2 + 220) = v174;
  v175 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v175 = (*(v4 + 3452) & 3) << 8;
  }

  v176 = v175 | v174;
  *(v2 + 220) = v176;
  v177 = *(v3 + 56);
  if (*(v3 + 56))
  {
    v177 = (*(v4 + 3456) & 3) << 6;
  }

  v178 = v177 | v176;
  *(v2 + 220) = v178;
  v179 = (16 * (*(v3 + 79208) & 3)) | v178;
  *(v2 + 220) = v179;
  v180 = (4 * (*(v3 + 79212) & 3)) | v179;
  *(v2 + 220) = v180;
  *(v2 + 220) = v180 & 0xFFC | *(v3 + 79216) & 3;
  *(v2 + 224) = 0;
  v181 = *(v3 + 78496);
  *(v2 + 224) = v181 << 16;
  *(v2 + 224) = *(v3 + 78492) | (v181 << 16);
  *(v2 + 228) = 0;
  v182 = *(v3 + 78504);
  *(v2 + 228) = v182 << 16;
  *(v2 + 228) = *(v3 + 78500) | (v182 << 16);
  if (*(v3 + 128) == 1)
  {
    result = 0;
    if (*(v4 + 1956))
    {
      *(v2 + 372) = (*(v2 + 52) << 18) & 0x1000000 | (((*(v2 + 52) >> 4) & 1) << 25);
      *(v2 + 404) = 0;
      v184 = (((*(v3 + 12) << 16) + 458752) & 0xFFF80000) - 0x10000;
      *(v2 + 404) = v184;
      *(v2 + 404) = (((*(v3 + 8) + 7) & 0xFFF8) + 0xFFFF) | v184;
      *(v2 + 436) = 1073758208;
    }
  }

  else
  {
    v185 = (v2 + 232);
    v186 = -308;
    do
    {
      v187 = v4 + v186;
      if (*(v4 + v186 + 4136) == 1)
      {
        v188 = ((*(v2 + 68) << 21) >> 31) + 14;
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
      v198 = (v2 + 440);
      while (1)
      {
        *(v198 - 16) = 0;
        v199 = (*(v2 + 52) << 18) & 0x1000000 | (((*(v2 + 52) >> 4) & 1) << 25);
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
        v204 = "virtual int CAHDecHibiscusAvx::populatePictureRegisters()";
        v205 = 1024;
        v206 = v197;
        _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: %s: invalid reference buffer %d\n", &v203, 0x12u);
      }
    }

    return (v202 << 31 >> 31);
  }

  return result;
}

uint64_t CAHDecHibiscusAvx::populateAvdWork(CAHDecHibiscusAvx *this)
{
  v1 = 0;
  v59[3] = *MEMORY[0x277D85DE8];
  v3 = *(this + 32);
  v2 = v3 + 36864;
  v48 = *(v3 + 15112);
  v4 = *(v48 + 34);
  LODWORD(v3) = *(v48 + 35);
  v5 = *(v2 + 1048);
  v39 = (v5 >> 28) + 2;
  v6 = (v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1);
  if ((v5 & 4) != 0 && ((v3 * v4 > (v5 >> 28) + 1) & (v5 >> 1)) == 0)
  {
    v1 = (*(*(this + *(this + 13) + 34) + 16) - 1) % v39;
  }

  v7 = *(this + 33) + 50804;
  memset(v59, 0, 24);
  v58 = 0;
  v57 = 0;
  v8 = *(*(v2 + 752) + 60);
  v45 = *v48;
  v9 = (v5 >> 28) + 2;
  if (!v6)
  {
    v9 = 1;
  }

  v10 = v1 + v9;
  v11 = 36 * (0x1002u / v9);
  v12 = v1;
  v13 = v1;
  do
  {
    v59[v13] = v7 + (v13 - v1) * v11;
    ++v13;
  }

  while (v13 < v10);
  if (v8 == 15)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  v43 = v14;
  if (v4)
  {
    v15 = 0;
    v16 = v59[v1];
    v17 = 0x8E38E38E38E38E39 * ((v16 - v7) >> 2);
    v46 = v48 + 4114;
    v47 = 0;
    v40 = v48 + 8210;
    v18 = -(v3 * v4);
    v19 = v48 + 8243;
    v20 = v1;
    v37 = v1;
    v42 = v6;
    v36 = v1 + v9;
    v41 = v7;
    v35 = v18;
    while (!v3)
    {
      v32 = v47 + 1;
LABEL_50:
      v47 = v32;
      if (v32 >= v4)
      {
        goto LABEL_51;
      }
    }

    v21 = 0;
    v44 = v18 + v15;
    v38 = v15;
    v49 = v15;
    while (1)
    {
      v22 = v44 + v21;
      v23 = v49 + v21;
      v52 = 0;
      *(v16 + 4) = *(&v57 + v20);
      *(v16 + 6) = v20;
      *(v16 + 10) = v49 + v21;
      v24 = v49 + v21 ? 4 : 5;
      *(v16 + 12) = v24;
      if (v22 == -1)
      {
        *(v16 + 14) = 262149;
      }

      else
      {
        v25 = v22 == -2 ? v6 : 0;
        *(v16 + 14) = 4;
        *(v16 + 16) = v25 == 1 ? 4 : 0;
      }

      v51 = 0;
      if (!CAVDAvxDecoder::GetTileMemInfo(*(this + 32), v45 + v48[v23 + 18], &v52, &v51))
      {
        return 0xFFFFFFFFLL;
      }

      v26 = 36 * v17;
      v27 = v52;
      if (*v52 || *(v52 + 152) || *(v52 + 156))
      {
        v28 = v51;
        if (HIDWORD(v51) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v54 = "populateAvdWork";
          v55 = 1024;
          v56 = 1689;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v28 = v51;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50824, v28, 0xFFFFFFFFLL, 0, -1, 4);
        if (result)
        {
          return result;
        }

        v27 = v52;
        if (*v52)
        {
          goto LABEL_37;
        }
      }

      if (*(v27 + 152) || *(v27 + 156))
      {
LABEL_37:
        v30 = v51;
        if (HIDWORD(v51) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v54 = "populateAvdWork";
          v55 = 1024;
          v56 = 1690;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v30 = v51;
        }

        result = CAHDec::addToPatcherList(this, v27, v26 + 50822, v30, 0x3FFFFFFFFFFLL, 32, -1, 2);
        if (result)
        {
          return result;
        }
      }

      v31 = v46[v23];
      if (HIDWORD(v31))
      {
        v6 = v42;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v54 = "populateAvdWork";
          v55 = 1024;
          v56 = 1692;
          _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: WARNING: %s %d 64->32 conversion problem!", buf, 0x12u);
          v31 = v46[v23];
        }
      }

      else
      {
        v6 = v42;
      }

      *(v16 + 24) = v31;
      *(v16 + 28) = (*(v19 - 1) >> v43) | (*(v40 + v47) >> v43 << 16);
      v32 = v47 + 1;
      *(v16 + 32) = ((*v19 - 1) >> v43) | ((*(v40 + v47 + 1) - 1) >> v43 << 16);
      ++*(&v57 + v20);
      ++v21;
      v33 = v59[v20] + 36;
      v59[v20] = v33;
      if (v6)
      {
        v20 = (v21 + v49) % v39;
        v33 = v59[v20];
      }

      *(v16 + 8) = -1;
      v17 = 0x8E38E38E38E38E39 * ((v33 - v41) >> 2);
      v3 = *(v48 + 35);
      ++v19;
      v16 = v33;
      if (v21 >= v3)
      {
        v4 = *(v48 + 34);
        v1 = v37;
        v15 = v38 + v21;
        v16 = v33;
        v10 = v36;
        v18 = v35;
        v19 = v48 + 8243;
        goto LABEL_50;
      }
    }
  }

  else
  {
LABEL_51:
    v34 = *(this + 33) + 32;
    do
    {
      *(v34 + 2 * v12 - 6) = *(&v57 + v12);
      *(v34 + 4 * v12) = (v12 - v1) * v11 + 50804;
      ++v12;
    }

    while (v12 < v10);
    return 0;
  }
}

uint64_t CAHDecHibiscusAvx::allocWorkBuf_SPS(CAHDecHibiscusAvx *this, int *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 32);
  if (v6 >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v56 = 136315394;
    v57 = "allocWorkBuf_SPS";
    v58 = 1024;
    v59 = 1807;
    _os_log_impl(&dword_277606000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleAVD: ASSERT @ %s() :: Line %d Assert Broken \n", &v56, 0x12u);
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

  *(this + 1480) = v18;
  *(this + 1481) = v31;
  *(this + 1485) = 9168;
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
  *(this + 1487) = v35 * v33;
  *(this + 1486) = v35 << v34;
  if (!v7[662])
  {
    v36 = 5600;
    for (i = 15; i; --i)
    {
      v38 = *(this + 1480);
      v39 = *(this + 32);
      if (v38)
      {
        if (CAVDDecoder::allocAVDMem(v39, (v39 + v36 - 2640), v38, 7, 1, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_79;
          }

          v56 = 136315650;
          v57 = "allocWorkBuf_SPS";
          v58 = 1024;
          v59 = 1849;
          v60 = 2080;
          v61 = "HdrY";
          v55 = MEMORY[0x277D86220];
LABEL_78:
          _os_log_impl(&dword_277606000, v55, OS_LOG_TYPE_DEFAULT, "AppleAVD: ERROR: %s() Line %d: Error allocating %s", &v56, 0x1Cu);
          goto LABEL_79;
        }

        v39 = *(this + 32);
      }

      v40 = *(v39 + v36 - 2640);
      if (v40)
      {
        bzero(v40, *(this + 1480));
      }

      v41 = *(this + 1481);
      v42 = *(this + 32);
      if (v41)
      {
        if (CAVDDecoder::allocAVDMem(v42, (v42 + v36), v41, 7, 1, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_79;
          }

          v56 = 136315650;
          v57 = "allocWorkBuf_SPS";
          v58 = 1024;
          v59 = 1854;
          v60 = 2080;
          v61 = "HdrC";
          v55 = MEMORY[0x277D86220];
          goto LABEL_78;
        }

        v43 = *(*(this + 32) + v36);
        if (v43)
        {
          bzero(v43, *(this + 1481));
        }
      }

      else
      {
        *(v42 + v36) = 0;
      }

      v36 += 176;
    }
  }

  v44 = 12944;
  v45 = 11;
  do
  {
    v46 = *(this + 1487);
    v47 = *(this + 32);
    if (v46)
    {
      if (CAVDDecoder::allocAVDMem(v47, (v47 + v44), v46, 7, 1, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v56 = 136315650;
          v57 = "allocWorkBuf_SPS";
          v58 = 1024;
          v59 = 1908;
          v60 = 2080;
          v61 = "segMap";
          v55 = MEMORY[0x277D86220];
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      v47 = *(this + 32);
    }

    v48 = *(v47 + v44);
    if (v48)
    {
      bzero(v48, *(this + 1487));
    }

    v44 += 176;
    --v45;
  }

  while (v45);
  v49 = 8248;
  v50 = 11;
  while (1)
  {
    v51 = *(this + 1486);
    v52 = *(this + 32);
    if (v51)
    {
      break;
    }

LABEL_66:
    v53 = *(v52 + v49);
    if (v53)
    {
      bzero(v53, *(this + 1486));
    }

    v49 += 176;
    if (!--v50)
    {
      return 0;
    }
  }

  if (!CAVDDecoder::allocAVDMem(v52, (v52 + v49), v51, 7, 1, 0))
  {
    v52 = *(this + 32);
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v56 = 136315650;
    v57 = "allocWorkBuf_SPS";
    v58 = 1024;
    v59 = 1914;
    v60 = 2080;
    v61 = "MvColo";
    v55 = MEMORY[0x277D86220];
    goto LABEL_78;
  }

LABEL_79:
  (*(*this + 144))(this);
  return 0xFFFFFFFFLL;
}