uint64_t interchange_compression::header::set(interchange_compression::header *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = interchange_compression::header::get_size(this, a2, a3);
  v8 = this + 12 * v6;
  *(v8 + 1) = result;
  v9 = v8 + 4;
  if (a4 >> result)
  {
    interchange_compression::header::set();
  }

  *(v9 + 1) = a4;
  *(v9 + 2) = 1;
  return result;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this)
{
  v2 = *this;
  v3 = interchange_compression::header::header_layout_table[15 * *this + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = interchange_compression::header::get_size(this, i, v5++) + v3;
        v2 = *this;
      }

      while (v5 < *(&interchange_compression::format_table + 13 * *this + 2));
    }
  }

  return v3;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return interchange_compression::header::header_layout_table[15 * *this + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = this + 4;
    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if (!*&v4[12 * a3 + 56])
    {
      interchange_compression::header::get_size();
    }

    if ((v4[12 * a3 + 4] & 8) != 0)
    {
      return (*&v4[12 * a3 + 52] + 1);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      interchange_compression::header::get_size();
    }

    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if ((*(this + 3 * a3 + 2) & 3) == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!*(this + 3 * a3 + 3))
  {
    interchange_compression::header::get_size();
  }

  if ((*(this + 12 * a3 + 8) & 4) == 0)
  {
    return 0;
  }

  if (*(&interchange_compression::format_table + 13 * *this + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t interchange_compression::get_id(interchange_compression *this)
{
  if (this <= 11)
  {
    if (this == 8)
    {
      return 0;
    }

    if (this == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(this)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (this == 2)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if ((this | 2) != 2)
  {
    interchange_compression::get_id(this);
  }

  return v1;
}

uint64_t interchange_compression::derive_sharing(uint64_t this, uint64_t a2, unsigned int *a3, unsigned int *a4, int (*a5)[4], int (*a6)[4])
{
  v6 = *(a2 + 12);
  if (v6 == 5)
  {
    v7 = a3[3];
    if (v7 >= 2)
    {
      interchange_compression::derive_sharing();
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 5;
    }

    a3[3] = v8;
    *(a2 + 12) = 1;
  }

  if (!this)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    v14 = a3[v9];
    if (v14 > v12 || v9 == 1 && v14 == v12)
    {
      v12 = a3[v9];
      v11 = v9;
    }

    if (v14 < v13)
    {
      v13 = a3[v9];
      v10 = v9;
    }

    v15 = interchange_compression::dq_consts[160 * *(a2 + 4 * v9) + 6 + 10 * v14];
    (*a5)[v9] = v15;
    a4[v9++] = v15;
  }

  while (this != v9);
  if (this != 1)
  {
LABEL_19:
    v16 = (v11 + 1) % 3u;
    if (v16 == v10)
    {
      v16 = (v11 + 2) % 3u;
    }

    v17 = a3[v16];
    v18 = a3[6 - (v11 + v10) - v16];
    v19 = v17 > v18;
    if (v17 <= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 6 - (v11 + v10) - v16;
    }

    if (!v19)
    {
      v16 = 6 - (v11 + v10) - v16;
    }

    v21 = a3[v11];
    v22 = a3[v10];
    if (this == 2)
    {
      if (v21 == v22 || a4[v10] < 1)
      {
LABEL_47:
        if (v6 == 5)
        {
          *(a2 + 12) = 5;
          a3[3] = a3[3] != 5;
          if (a4[3] >= 1)
          {
            interchange_compression::derive_sharing();
          }
        }

        return this;
      }

      (*a5)[v10] = 0;
      v23 = a4[v10];
      v24 = (*a5)[v11];
      goto LABEL_30;
    }

    v26 = a3[v20];
    if (v21 - v26 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v31 = 1431655766 * a4[v10];
      (*a5)[v20] += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (a4[v10] + 1);
      (*a5)[v16] += HIDWORD(v32) + (v32 >> 63);
      v33 = 1431655766 * (a4[v10] + 2);
      v34 = HIDWORD(v33) + (v33 >> 63);
      v35 = (*a5)[v11];
LABEL_45:
      v25 = v34 + v35;
      goto LABEL_46;
    }

    v28 = a3[v16];
    if (v21 - v28 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v36 = a4[v20] & (a4[v20] >> 31);
      (*a5)[v20] = v36;
      (*a5)[v16] += (a4[v10] - v36 + a4[v20]) / 2;
      v25 = (*a5)[v11] + (a4[v10] + a4[v20] - (*a5)[v20] + 1) / 2;
      goto LABEL_46;
    }

    if (v28 - v22 > 1)
    {
      if (v28 - v22 != 2)
      {
        goto LABEL_57;
      }

      v30 = a4[v11];
    }

    else
    {
      v30 = a4[v11];
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      this = a4[v16];
      if (this > 0)
      {
LABEL_54:
        v37 = 0;
        (*a5)[v10] = 0;
        (*a5)[v20] = 0;
        if ((a4[v20] + a4[v10]) >= 6)
        {
          v37 = a4[v16];
        }

        (*a5)[v16] = v37;
        v34 = a4[v10] - v37 + a4[v20];
        v35 = a4[v16] + (*a5)[v11];
        goto LABEL_45;
      }
    }

    if (v30 <= -2 && a4[v16] >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v22 || a4[v10] < 1 || a4[v20] < 1 || (a4[v16] & 0x80000000) != 0 || a4[v11] > -2)
    {
      if (v21 != v22 && a4[v10] >= 1)
      {
        (*a5)[v10] = 0;
        (*a5)[v11] += a4[v10];
      }

      if (v28 != v26 && a4[v20] >= 1)
      {
        (*a5)[v20] = 0;
        (*a5)[v16] += a4[v20];
      }

      goto LABEL_47;
    }

    (*a5)[v10] = 0;
    (*a5)[v20] = 0;
    (*a5)[v16] = a4[v16];
    v24 = a4[v20];
    v23 = a4[v10] + (*a5)[v11];
LABEL_30:
    v25 = v24 + v23;
LABEL_46:
    (*a5)[v11] = v25;
    goto LABEL_47;
  }

  return this;
}

uint64_t interchange_compression::adjust_level(uint64_t this, int a2, int a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v8 = &interchange_compression::dq_consts + 640 * this + 40 * a2;
    if (*(v8 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v8 + 8))
      {
        v7 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v7;
LABEL_4:
    *a5 += v7;
  }

  return this;
}

interchange_compression::decompressor *interchange_compression::decompressor::decompressor(interchange_compression::decompressor *this, unsigned int a2, interchange_compression *a3, unsigned int a4)
{
  *this = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::decompressor::decompressor();
  }

  v5 = a3;
  *(this + 4) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = a2;
  *(this + 87) = a3;
  *(this + 88) = a4;
  if (!interchange_compression::check_valid_lossy_level(a3, a2))
  {
    interchange_compression::decompressor::decompressor();
  }

  if (v5 && a4 >= 4)
  {
    interchange_compression::decompressor::decompressor();
  }

  *(this + 86) = *(&interchange_compression::format_table + 52 * a2 + 48);
  return this;
}

uint64_t interchange_compression::decompressor::get_subblock_size(interchange_compression::decompressor *this, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(this + 87);
    if ((v2 - 1) <= 2)
    {
      return interchange_compression::lossy_parameters[28 * *(this + 85) + 8 + v2];
    }
  }

  v4 = *(this + 85);
  v5 = &interchange_compression::memory_parameters[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = interchange_compression::memory_parameters[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t interchange_compression::decompressor::fill_subblock_error_color(uint64_t this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(this + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295663270), v3), xmmword_295663260);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295663250), v3), xmmword_295663260);
      v9 = (*a2)[(vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1])][vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]];
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&interchange_compression::format_table + 13 * v4 + v5 + 3));
        }

        v9[v5++] = v10;
        v4 = *(this + 340);
      }

      while (v5 < *(&interchange_compression::format_table + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t bit_pack::unpack(bit_pack *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    bit_pack::unpack();
  }

  result = bit_pack::get(this, *(this + 135), a2);
  *(this + 135) += a2;
  return result;
}

void *interchange_compression::format_info::unpack_pixel(interchange_compression::format_info *this, const unsigned __int8 *a2, unsigned int *a3)
{
  __dst[2] = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, *(this + 1));
  if (*(this + 2))
  {
    v6 = 0;
    v7 = (this + 28);
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      a3[v6++] = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < *(this + 2));
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL interchange_compression::decompressor::unpack_header(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4)
{
  v4 = *(this + 85);
  v5 = interchange_compression::memory_parameters[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &interchange_compression::header::header_layout_table[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    interchange_compression::decompressor::unpack_header();
  }

  v11 = *(a4 + 128);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = bit_pack::unpack(a4, v9);
  *(this + 4) = 0u;
  v19 = this + 4;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  interchange_compression::header::set(this, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < interchange_compression::header::get_size(this))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      bit_pack::unpack(a4, interchange_compression::header::header_layout_table[15 * *(this + 85) + 13] + v15 - *(a4 + 135));
    }

    v21 = i >> 2;
LABEL_11:
    size = interchange_compression::header::get_size(this, v21, i & 3);
    v23 = bit_pack::unpack(a4, size);
    interchange_compression::header::set(this, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = interchange_compression::header::get_size(this, 6u, i & 3);
      v25 = bit_pack::unpack(a4, v24);
      interchange_compression::header::set(this, 6u, i & 3, v25);
    }
  }

  v26 = interchange_compression::header::get_size(this);
  bit_pack::unpack(a4, v26 + v15 - *(a4 + 135));
  v27 = *(this + 85);
  if (v27 == 21)
  {
    if (!*(this + 6))
    {
      interchange_compression::decompressor::unpack_header();
    }

    if (!*(this + 9))
    {
      interchange_compression::decompressor::unpack_header();
    }

    v28 = *(this + 5);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(this + 8);
      *(this + 86) = 2;
      interchange_compression::header::set(this, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      interchange_compression::header::set(this, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(this + 85);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &interchange_compression::format_table + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = this + 12;
      v37 = this + 12;
      do
      {
        v38 = *v37;
        v37 += 12;
        if (!v38)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*&v19[12 * (v35 + 12) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v40 = *&v19[12 * (v35 + 12) + 4];
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*&v19[12 * (v35 + 4) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *&v19[12 * (v35 + 4) + 4] - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += interchange_compression::NUM_PIXELS_REGION[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 135) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return interchange_compression::header::error_check(this) == 0;
}

uint64_t interchange_compression::decompressor::decompress_pixels(uint64_t this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4, unsigned int (*a5)[4][8][4])
{
  v5 = 0;
  v6 = 0;
  v91 = *MEMORY[0x29EDCA608];
  v7 = this + 4;
  v78 = (this + 12);
  v8 = 0uLL;
  v83 = a5;
  v89 = this;
  do
  {
    v9 = 0;
    v77 = v5;
    v87 = v5 >> 2 << 6;
    v80 = (*a5)[2 * (v6 & 1)] + v87;
    v82 = 4 * (v5 >> 2);
    v90[6] = v8;
    v90[7] = v8;
    v90[4] = v8;
    v90[5] = v8;
    v90[2] = v8;
    v90[3] = v8;
    v90[0] = v8;
    v90[1] = v8;
    if (interchange_compression::NUM_PIXELS_REGION[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = interchange_compression::NUM_PIXELS_REGION[v6];
    }

    v11 = *(this + 340);
    v12 = v11;
    v85 = v10;
    do
    {
      if (v12 == 27)
      {
        v13 = v9 + 1;
      }

      else
      {
        v14 = 0;
        v13 = v9 + 1;
        v15 = v90;
        v16 = v78;
        v17 = &unk_295664A3C;
        v18 = v78;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            interchange_compression::decompressor::unpack_header();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v21 = *(v7 + 12 * (v14 + 12) + 4);
          }

          else
          {
            v21 = 0;
          }

          v22 = v20 & 3;
          if (v22 == 3)
          {
            v23 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v14 + 4) + 8))
            {
              interchange_compression::decompressor::unpack_header();
            }

            v24 = v17[13 * v12] == 32;
            if (v17[13 * v12] == 32)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            v26 = v21 >> (v6 << v25);
            if (v24)
            {
              v27 = 15;
            }

            else
            {
              v27 = 3;
            }

            v23 = *(v7 + 12 * (v14 + 4) + 4) - (v26 & v27) + 1;
          }

          v28 = bit_pack::unpack(a4, v23);
          if (v23 >= 0x21)
          {
            interchange_compression::decompressor::decompress_pixels();
          }

          if (v22 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = 7;
          }

          if (v9 != 6)
          {
            v29 = v9 + 1;
          }

          if (v6)
          {
            v29 = v9;
          }

          v30 = vdupq_n_s32(v29);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_295663270), v31), xmmword_295663260);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_295663250), v31), xmmword_295663260);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v89 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&interchange_compression::format_table + 13 * v12 + 2));
        v11 = *(v89 + 340);
        a5 = v83;
        this = v89;
        v10 = v85;
      }

      v9 = v13;
    }

    while (v13 != v10);
    v34 = v87;
    if (v11 != 27)
    {
      v35 = 0;
      v36 = (2 * v6) & 2;
      v79 = v90;
      do
      {
        if (!*(v7 + 12 * v35 + 8))
        {
          interchange_compression::decompressor::unpack_header();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32;
        if (*(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v39 >> (v6 << v42);
        if (v41)
        {
          v44 = 15;
        }

        else
        {
          v44 = 3;
        }

        v45 = v43 & v44;
        v46 = v38 & 3;
        if (v46 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v37 + 4) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v47 = *(v7 + 12 * (v37 + 4) + 4) - v45 + 1;
          if ((v38 & 1 | 2) == 2)
          {
            v48 = 0;
          }

          else
          {
            v48 = 3;
          }

          v49 = (v38 & 1 | 2) != 2;
        }

        v86 = (v7 + 12 * (v37 + 8) + 8);
        if (!*v86)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        (*a5)[v49][v48][v37] = v53;
        v54 = (v45 == 0) & (v40 >> 3);
        v55 = v7 + 12 * (v37 + 16);
        v56 = v7 + 12 * (v37 + 20);
        v57 = v7 + 12 * (v37 + 24);
        v58 = 1;
        do
        {
          v59 = 0;
          v60 = 0;
          v81 = v58;
          v61 = -v50;
          v84 = v50 | v36;
          v62 = &v79[4 * v50];
          v63 = v6 & 1 ^ v50 ^ 1;
          v64 = &v80[128 * v50];
          v65 = v63 | v36;
          v66 = 3;
          v67 = &v90[4 * v63];
          do
          {
            if (v61 != v36 || v34 + v59 * 16)
            {
              if (v54)
              {
                if (!*(v55 + 8))
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  if (!*(v57 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (!*v86)
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (v70 >= 0x21)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  this = v89;
                  a5 = v83;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v84 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v82 + v60);
                  v34 = v87;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = (*a5)[0][0][v37];
                }

                *&v64[v59 * 16] = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v86)
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  interchange_compression::decompressor::decompress_pixels();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              if (v6 >= 2)
              {
                v74 = v60;
              }

              else
              {
                v74 = v66;
              }

              v75 = v74 | (2 * v6) & 4;
              v34 = v87;
              (*a5)[v65][v75][v37] = ((((*a5)[dword_295664FE0[16 * v65 + 1 + 2 * v75]][dword_295664FE0[16 * v65 + 2 * v75]][v37] - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
            }

LABEL_87:
            ++v60;
            --v66;
            ++v59;
          }

          while (v59 != 4);
          v58 = 0;
          v50 = 1;
        }

        while ((v81 & 1) != 0);
        v35 = v37 + 1;
        v11 = *(this + 340);
        v79 = (v79 + 4);
        v80 += 4;
      }

      while ((v37 + 1) < *(&interchange_compression::format_table + 13 * v11 + 2));
    }

    ++v6;
    v5 = v77 + 2;
  }

  while (v6 != 4);
  v76 = *MEMORY[0x29EDCA608];
  return this;
}

_DWORD *interchange_compression::decompressor::decorrelate(_DWORD *this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3 = this[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = this + 3;
        v10 = v6;
        v11 = &unk_295664A3C;
        do
        {
          if (!*v9)
          {
            interchange_compression::decompressor::unpack_header();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = this[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              *v10 = (((((*a2)[v2][v5][v12] >> (*(&interchange_compression::format_table + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = this[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = this[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&interchange_compression::format_table + 13 * v3 + 2));
      }

      ++v5;
      v6 = (v6 + 16);
    }

    while (v5 != 8);
    ++v2;
    v4 = (v4 + 128);
  }

  while (v2 != 4);
  return this;
}

uint64_t bit_pack::get(bit_pack *this, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    bit_pack::get();
  }

  v3 = a2;
  v4 = *(this + 134);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(this + 128);
  __dst = 0;
  v6 = 520;
  if (*(this + 544))
  {
    v6 = 528;
  }

  v7 = *(this + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t interchange_compression::header::error_check(interchange_compression::header *this)
{
  v1 = this + 4;
  v2 = *this;
  if (!*(this + 3 * *(&interchange_compression::format_table + 52 * *this + 48) + 3))
  {
    interchange_compression::decompressor::unpack_header();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (v1[12 * *(&interchange_compression::format_table + 52 * *this + 48) + 4] >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &interchange_compression::format_table + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = this + 12;
    v9 = this + 12;
    do
    {
      v10 = *v9;
      v9 += 12;
      if (!v10)
      {
        interchange_compression::decompressor::unpack_header();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!*&v1[12 * (v5 + 4) + 8])
        {
          interchange_compression::decompressor::unpack_header();
        }

        if (v11 & 4 | *&v1[12 * (v5 + 4) + 4])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!*&v1[12 * (v5 + 4) + 8])
      {
        interchange_compression::decompressor::unpack_header();
      }

      if ((*&v1[12 * (v5 + 4) + 4] + 1) <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t AVE_MCTF_SupportAllLight(int a1, int a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_SupportAllLight", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d", CurrTime);
  }

  if ((a2 - 1) > 0x1F || a3 - 1 >= 3)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x10u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d\n", v13, 16, v14, "AVE_MCTF_SupportAllLight", 707, "eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a2, a1, a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d", v13, 16);
    }
  }

  else if ((a2 & 0x38) == 0x18)
  {
    v9 = gsc_psaMCTF_StrengthMapSet[a2];
    v10 = AVE_DW_Get();
    if (v10[274] <= 0)
    {
      v11 = *(v9 + 8 * a3);
    }

    else
    {
      v11 = v10 + 274;
      *(v9 + 8 * a3) = v11;
    }

    if (AVE_MCTF_SMap_FindMap(v11, a1))
    {
      v18 = 1;
      goto LABEL_30;
    }

    if (AVE_Log_CheckLevel(0x10u, 8))
    {
      v19 = AVE_Log_CheckConsole(0x10u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v20, 16, v21, "AVE_MCTF_SupportAllLight", 726, "pMap != NULL", a2, a1, a3);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v20, 16);
    }
  }

  else if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v15 = AVE_Log_CheckConsole(0x10u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v16, 16, v17, "AVE_MCTF_SupportAllLight", 714, "paMCTF_StrengthMapSet != NULL", a2, a1, a3);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v16, 16);
  }

  v18 = 0;
LABEL_30:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v22 = AVE_Log_CheckConsole(0x10u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v23, 16, v24, "AVE_MCTF_SupportAllLight", a1, a2, a3, v18);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v23);
    }
  }

  return v18;
}

uint64_t AVE_MCTF_AdjustStrength(int *a1, int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p %p\n", CurrTime, 16, LevelStr, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v13, 16, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", CurrTime, 16, LevelStr);
    }
  }

  if (a3 - 1 <= 2 && (a2 - 1) <= 0x1F && a1 && a4 && a5)
  {
    if ((a2 & 0x38) == 0x18)
    {
      v14 = gsc_psaMCTF_StrengthMapSet[a2];
      v15 = AVE_DW_Get();
      if (v15[274] <= 0)
      {
        v16 = *(v14 + 8 * a3);
      }

      else
      {
        v16 = v15 + 274;
        *(v14 + 8 * a3) = v16;
      }

      Map = AVE_MCTF_SMap_FindMap(v16, a1[16]);
      if (Map)
      {
        v27 = Map;
        v68 = a5;
        AVE_MCTF_SMap_Print(Map, 16, 6, "MCTF_SMap");
        v28 = paCalculateNoiseLevel[v27[1]](a1);
        v29 = *a4;
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v30 = AVE_Log_CheckConsole(0x10u);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(6);
          if (v30)
          {
            printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v31, 16, v32, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4);
            v31 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v31, 16);
        }

        if (v29 >= 1)
        {
          v37 = v29 + 1;
          do
          {
            Range = AVE_MCTF_SMap_FindRange(v27, v37 - 2);
            if (!Range)
            {
              break;
            }

            if (*(Range + 4) < v28)
            {
              break;
            }

            *a4 = v37 - 2;
            --v37;
          }

          while (v37 > 1);
        }

        if (*a4 == v29)
        {
          for (i = v29 + 1; i < v27[2]; ++i)
          {
            v40 = AVE_MCTF_SMap_FindRange(v27, i);
            if (!v40 || *v40 > v28)
            {
              break;
            }

            *a4 = i;
          }
        }

        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v41 = AVE_Log_CheckConsole(0x10u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(6);
          if (v41)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v42, 16, v43, "AVE_MCTF_FindRangeIdx", v27, v29, v28, a4, 0);
            v44 = AVE_GetCurrTime();
            v61 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v44, 16, v61);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v42, 16, v43);
          }
        }

        a5 = v68;
        if (AVE_MCTF_SMap_GetStrengthLevel(v27, *a4, v68))
        {
          if (AVE_Log_CheckLevel(0x10u, 4))
          {
            v45 = AVE_Log_CheckConsole(0x10u);
            v46 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (v45)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d\n", v46, 16, v47, "AVE_MCTF_AdjustStrength", 799, "ret == 0", v27, *a4);
              v46 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              v48 = *a4;
              a5 = v68;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d", v46, 16);
          }

          v25 = 4294966296;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x10u, 8))
          {
            v49 = AVE_Log_CheckConsole(0x10u);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            v52 = *a4;
            if (v49)
            {
              printf("%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d\n", v50, 16, v51, "AVE_MCTF_AdjustStrength", 802, a1, a1[16], v28, *a4, *v68);
              v50 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(8);
              v53 = a1[16];
              v65 = *a4;
              v67 = *v68;
            }

            else
            {
              v66 = *a4;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d", v50, 16);
          }

          v25 = 0;
        }

        goto LABEL_62;
      }

      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v33 = AVE_Log_CheckConsole(0x10u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(5);
        v36 = a1[16];
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v34, 16, v35, "AVE_MCTF_AdjustStrength", 783, "pMap != NULL", a2, a1[16], a3);
          v34 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        v64 = a1[16];
        syslog(3, "%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v34, 16);
      }
    }

    else if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v21 = AVE_Log_CheckConsole(0x10u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(5);
      v24 = a1[16];
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v22, 16, v23, "AVE_MCTF_AdjustStrength", 771, "paMCTF_StrengthMapSet != NULL", a2, a1[16], a3);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
      }

      v63 = a1[16];
      syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v22, 16);
    }

    v25 = 4294966294;
    goto LABEL_62;
  }

  if (AVE_Log_CheckLevel(0x10u, 4))
  {
    v17 = AVE_Log_CheckConsole(0x10u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p\n", v18, 16, v19, "AVE_MCTF_AdjustStrength", 764, "(psData != __null) && (piRangeIdx != __null) && (piStrength != __null) && eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a1, a2, a3, a4, a5);
      v20 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v20, 16, v60, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v18, 16, v19, "AVE_MCTF_AdjustStrength");
    }
  }

  v25 = 4294966295;
LABEL_62:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v54 = AVE_Log_CheckConsole(0x10u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(6);
    if (v54)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %p %d\n", v55, 16, v56, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5, v25);
      v57 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v57, 16, v62, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v55, 16, v56, "AVE_MCTF_AdjustStrength");
    }
  }

  return v25;
}

uint64_t AVE_MCTF_CalculateNoiseLevel_TotalGain(uint64_t a1)
{
  v1 = vdupq_lane_s64(0x4170000000000000, 0);
  v1.f64[0] = *(a1 + 24);
  v2 = vmulq_f64(*(a1 + 40), v1);
  return (*(a1 + 32) * v2.f64[0] / v2.f64[1]);
}

uint64_t AVE_MCTF_CalculateNoiseLevel_TotalGainSNR(_DWORD *a1)
{
  v2 = vdupq_lane_s64(0x4170000000000000, 0);
  v2.f64[0] = *(a1 + 3);
  v3 = vmulq_f64(*(a1 + 10), v2);
  v4 = (*(a1 + 4) * v3.f64[0] / v3.f64[1]);
  v5 = (*a1 + 0.5);
  if (v5 >= 21)
  {
    v5 = 21;
  }

  if (*a1 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 15)
  {
    v7 = (36 - v6);
  }

  else
  {
    v7 = v4;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_CalculateNoiseLevel_TotalGainSNR", 607, a1, a1[16], v4, v6, v7);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v11 = a1[16];
    }

    syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d", CurrTime, 16);
  }

  return v7;
}

void *AVE_DLList_Init_Node(void *result)
{
  if (!result)
  {
    AVE_DLList_Init_Node_cold_1();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t AVE_DLList_Init(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_Init_cold_1();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

BOOL AVE_DLList_Empty(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Empty_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_Empty_cold_2();
  }

  v1 = a1[1];
  if (!v1)
  {
    AVE_DLList_Empty_cold_1();
  }

  return *a1 == a1 || v1 == a1;
}

BOOL AVE_DLList_PopFront(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_PopFront_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopFront_cold_2();
  }

  if (!*(a1 + 8))
  {
    AVE_DLList_PopFront_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t AVE_DLList_Prev(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Prev_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_Next(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Next_cold_1();
  }

  return *(a1 + 8);
}

uint64_t *AVE_DLList_Erase(uint64_t *result)
{
  if (!result)
  {
    AVE_DLList_Erase_cold_3();
  }

  v1 = *result;
  if (!*result)
  {
    AVE_DLList_Erase_cold_2();
  }

  v2 = result[1];
  if (!v2)
  {
    AVE_DLList_Erase_cold_1();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t AVE_DLList_Front(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Front_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t AVE_DLList_Back(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Back_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t AVE_DLList_PushBack(uint64_t result, void *a2)
{
  if (!result)
  {
    AVE_DLList_PushBack_cold_4();
  }

  if (!a2)
  {
    AVE_DLList_PushBack_cold_3();
  }

  if (!*result)
  {
    AVE_DLList_PushBack_cold_2();
  }

  if (!*(result + 8))
  {
    AVE_DLList_PushBack_cold_1();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

BOOL AVE_DLList_PopBack(void **a1)
{
  if (!a1)
  {
    AVE_DLList_PopBack_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopBack_cold_2();
  }

  if (!a1[1])
  {
    AVE_DLList_PopBack_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t AVE_DLList_Begin(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Begin_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_End(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_End_cold_1();
  }

  return result;
}

uint64_t AVE_DLList_RBegin(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_RBegin_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_REnd(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_REnd_cold_1();
  }

  return result;
}

uint64_t AVE_DRL_Print(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = *MEMORY[0x29EDCA608];
  memset(v53, 0, sizeof(v53));
  AVE_ComposePosStr(a4, a5, v53, 32, a5, a6, a7, a8);
  v11 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v12 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v47 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v48 = *(a1 + 4);
        v49 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v53, a1, *a1);
      }

      else
      {
        v32 = *(a1 + 1);
        v33 = *(a1 + 2);
        v34 = v32;
        v35 = ((v32 - v32) * 1000.0);
        v36 = v33;
        v37 = ((v33 - v33) * 1000.0);
        v38 = *(a1 + 3);
        v39 = *(a1 + 4);
        v40 = v38;
        v41 = v38 - v38;
        if (v35 < 0)
        {
          v35 = -v35;
        }

        if (v37 < 0)
        {
          v37 = -v37;
        }

        v42 = (v41 * 1000.0);
        if (v42 < 0)
        {
          v42 = -v42;
        }

        v43 = ((v39 - v39) * 1000.0);
        if (v43 < 0)
        {
          v43 = -v43;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v53, a1, *a1, v34, v35, v36, v37, v40, v42, v39, v43);
        v44 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v45 = *(a1 + 4);
        v46 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v53, a1, *a1);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v11);
      v17 = *(a1 + 1);
      v18 = *(a1 + 2);
      v19 = v17;
      v20 = ((v17 - v17) * 1000.0);
      v21 = v18;
      v22 = ((v18 - v18) * 1000.0);
      v23 = *(a1 + 3);
      v24 = *(a1 + 4);
      v25 = v23;
      v26 = v23 - v23;
      if (v20 < 0)
      {
        v20 = -v20;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      v27 = (v26 * 1000.0);
      if (v27 < 0)
      {
        v27 = -v27;
      }

      v28 = ((v24 - v24) * 1000.0);
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (((v14 | (v13 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", CurrTime, a2, LevelStr, v53, a1, *a1, v19, v20, v21, v22, v25, v27, v24, v28);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v11);
        v29 = ((*(a1 + 2) - *(a1 + 2)) * 1000.0);
        v30 = ((*(a1 + 3) - *(a1 + 3)) * 1000.0);
        v31 = ((*(a1 + 4) - *(a1 + 4)) * 1000.0);
        v52 = *a1;
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", CurrTime, a2, LevelStr, v53);
    }
  }

  v50 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_RC_DecideVBVMaxBitRate(int a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (AVE_Log_CheckLevel(0xE3u, 8))
      {
        v14 = AVE_Log_CheckConsole(0xE3u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v17 = *a3;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v18 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xE3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v25, 227, v26, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v25, 227);
    }

    v18 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xE3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v18 = 4294966295;
  }

LABEL_23:
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v19 = AVE_Log_CheckConsole(0xE3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v20, 227, v21, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v18);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v22, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v20, 227);
    }
  }

  return v18;
}

uint64_t AVE_RC_DecideVBVBufferSize(double a1, double a2, double a3, uint64_t a4, double *a5)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize", a1, v14, a2, v16, a3, v18, a4, a5);
      v19 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a5)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a4 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a3 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    if (a2 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a2 > 0.0)
    {
      v21 = a2;
    }

    if (a1 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a1 > 0.0)
    {
      v21 = a1;
    }

    *a5 = v21;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v25 = AVE_Log_CheckConsole(0xE3u);
      v60 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = ((a1 - a1) * 1000.0);
      v28 = ((a2 - a2) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a3 - a3) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a5;
      v34 = ((*a5 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1, v29, a2, v30, a3, v32, a4, v33, v34, v24, 0);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }
    }

    v47 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xE3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = ((a1 - a1) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a2 - a2) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a3 - a3) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a1, v41, a2, v43, a3, v45, a4, 0);
        v46 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v48 = AVE_Log_CheckConsole(0xE3u);
    v49 = AVE_GetCurrTime();
    v50 = AVE_Log_GetLevelStr(7);
    v51 = ((a1 - a1) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a2 - a2) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1, v52, a2, v54, a2, v54, a4, a5, v47);
      v55 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1);
    }
  }

  return v47;
}

uint64_t AVE_RC_DecideVBVInitialDelay(double a1, double a2, double a3, double a4, uint64_t a5, double *a6)
{
  v6 = a6;
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a4 - a4) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a6;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1, v14, a2, v16, a3, v18, a4, v20, a5, a6);
      v67 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1);
    }
  }

  if (v6)
  {
    if (a1 >= 0.0)
    {
      v21 = 1;
      v22 = a1;
    }

    else if (a2 >= 0.0)
    {
      v21 = 2;
      v22 = a2;
    }

    else if (a3 >= 0.0)
    {
      v21 = 4;
      v22 = a3 * a4 / 100.0;
    }

    else
    {
      if ((a5 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xE3u);
      v68 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      v38 = ((a1 - a1) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a2 - a2) * 1000.0);
      v41 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a4 - a4) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39, a2, v42, a3, v43, a4, v45, a5, v46, v47, v21, 0);
        v69 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a1, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = ((a1 - a1) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a2 - a2) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a3 - a3) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a4 - a4) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a1, v27, a2, v29, a3, v31, a4, v33, a5, 0);
        v34 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v50 = AVE_Log_CheckConsole(0xE3u);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(7);
    v53 = ((a1 - a1) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a2 - a2) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a3 - a3) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a4 - a4) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54, a2, v56, a3, v58, a4, v60, a5, a6, v35);
      v70 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54);
    }
  }

  return v35;
}

void htpc_entropy::dec_symbols()
{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 155, "bb_avail == 0");
}

{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 190, "bb_avail < 8");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 212, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 203, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 901, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 911, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1013, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1063, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 103, "read_ptr <= size_bits()");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 133, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 132, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 127, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 142, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 357, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 270, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("set_format", "interchange_header.h", 205, "header_layout_table[id].format == id");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 40, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 41, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void interchange_compression::decompressor::unpack_header()
{
  __assert_rtn("unpack_header", "interchange_decompressor.h", 238, "header::header_layout_table[format].field_size[0] > shift");
}

{
  __assert_rtn("get", "interchange_header.h", 104, "fields[field_id(s, comp)].init");
}

void interchange_compression::decompressor::decompress_pixels()
{
  __assert_rtn("sign_extend", "interchange_constants.h", 90, "width <= 32");
}

{
  __assert_rtn("wrap_to_range", "interchange_constants.h", 85, "width <= 32");
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

void operator new()
{
    ;
  }
}