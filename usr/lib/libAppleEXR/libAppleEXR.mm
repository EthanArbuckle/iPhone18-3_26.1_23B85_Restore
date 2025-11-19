void EncoderBuffer::HandleNonRetained(EncoderBuffer *this)
{
  v1 = this - *(this + 3);
  (*(*this + 8))(this);

  free(v1);
}

void EncoderBuffer::GetEncoderBuffer(EncoderBuffer *this)
{
  if (this)
  {
    v1 = ((this + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  }

  else
  {
    v1 = 32728;
  }

  v2 = malloc_type_malloc(v1, 0x10A1040EAC3B355uLL);
  if (v2)
  {
    v3 = &v2[v1 - 40];
    if (v3)
    {
      *v3 = &unk_2A1DE92F0;
      *(v3 + 1) = 0;
      atomic_store(1uLL, v3 + 1);
      *v3 = &off_2A1DE96C0;
      *(v3 + 2) = 0;
      *(v3 + 3) = v1 - 40;
      *(v3 + 4) = 0;
    }
  }
}

uint64_t EncoderStream::Flush(uint64_t this)
{
  v1 = *(this + 64);
  *(this + 64) = 0;
  if (v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = v3;
      v3 = v1;
      v1 = *(v1 + 16);
      *(v3 + 16) = v4;
    }

    while (v1);
    do
    {
      v5 = *(v3 + 16);
      this = (*(v2 + 24))(*(v2 + 16), v3 - *(v3 + 24), *(v3 + 32));
      if (atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        this = (**v3)(v3);
      }

      v3 = v5;
    }

    while (v5);
  }

  return this;
}

uint64_t Retained::HandleNonRetained(uint64_t this)
{
  if (this)
  {
    return (*(*this + 16))();
  }

  return this;
}

axr_data_t axr_data_create(const void *fileBytes, size_t fileSize, axr_error_t *outError, axr_flags_t flags, axr_data_destructor_t dataDestructor)
{
  v10 = axr_introspect_data(fileBytes, fileSize, flags);
  if (v10)
  {
    v11 = v10;
    if (dataDestructor)
    {
      (*(dataDestructor + 2))(dataDestructor, fileBytes, fileSize);
    }

    v12 = 0;
    if (!outError)
    {
      return v12;
    }

LABEL_8:
    *outError = v11;
    return v12;
  }

  objc_opt_class();
  v13 = _os_object_alloc();
  if (v13)
  {
    v12 = v13;
    AXRData::AXRData(v13 + 16, fileBytes, fileSize, flags, dataDestructor);
    v11 = axr_error_success;
    if (!outError)
    {
      return v12;
    }

    goto LABEL_8;
  }

  if (dataDestructor)
  {
    (*(dataDestructor + 2))(dataDestructor, fileBytes, fileSize);
  }

  v12 = 0;
  v11 = axr_error_insufficient_memory;
  if (outError)
  {
    goto LABEL_8;
  }

  return v12;
}

void TileDecoder_B44::Interleave(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(a4 + 8);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  TileDecoder::GetBlockChannelTileInfo(a1, a4, a5, a6, 4u, 4u, &v29);
  if (DWORD2(v29) <= DWORD2(v30) && v29 <= v30)
  {
    CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a4, *(*(a1 + 24) + 208), v14);
    v16 = *(a1 + 128);
    if (v16 == a2)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    if (v16 == a2)
    {
      v18 = 0;
    }

    else
    {
      v18 = a2;
    }

    v19 = *(a1 + 64);
    v20 = v19[1];
    v21 = &TileDecoder_B44::LogLUT;
    if (*(v20 + 132))
    {
      v22 = &TileDecoder_B44::LogLUT;
    }

    else
    {
      v22 = 0;
    }

    v23 = v19[3];
    if (v23)
    {
      if (*(v23 + 132))
      {
        v24 = &TileDecoder_B44::LogLUT;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v20 + 72);
    if (*(a1 + 72) == 2)
    {
      (*(&TileDecoder_B44::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[2] + ((8 * (v25 != 1)) | (32 * (v23 != 0)))))(CompressedDataPtr, v14, v19, (v19 + 2), v22, v24, a4, &v29, a1, a7, a8, v18, v17, a9);
    }

    else
    {
      v26 = v19[5];
      if (v26)
      {
        if (*(v26 + 132))
        {
          v27 = &TileDecoder_B44::LogLUT;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = v19[7];
      if (v28)
      {
        if (!*(v28 + 132))
        {
          v21 = 0;
        }

        v28 = 16;
      }

      else
      {
        v21 = 0;
      }

      TileDecoder_B44::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[((v25 != 1) | (4 * (v23 != 0)) | (8 * (v26 != 0)) | v28) + 2](CompressedDataPtr, v14, v19, (v19 + 2), (v19 + 4), (v19 + 6), v22, v24, v27, v21, a4, &v29, a1, a7, a8, v18, a9);
    }
  }
}

double TileDecoder::GetBlockChannelTileInfo@<D0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = a2[11];
  v8 = a2[12];
  v9 = *(a1 + 56);
  if (v8 + v7 >= v9)
  {
    goto LABEL_15;
  }

  v10 = a2[13];
  v11 = a2[14];
  v12 = *(a1 + 60);
  if (v11 + v10 >= v12)
  {
    goto LABEL_15;
  }

  v13 = v9 + ~v8;
  v14 = a2[9];
  if (a3 >= 2)
  {
    v7 /= a3;
    v13 /= a3;
    if (v13 < v7)
    {
      goto LABEL_15;
    }

    v14 /= a3;
  }

  v15 = a2[10];
  v16 = v12 + ~v11;
  if (a4 >= 2)
  {
    v10 /= a4;
    v16 /= a4;
    if (v16 >= v10)
    {
      v15 /= a4;
      goto LABEL_5;
    }

LABEL_15:
    result = 0.0;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    return result;
  }

LABEL_5:
  if (a5 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a5;
  }

  v18 = v7 / v17;
  if (a6 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a6;
  }

  v20 = v13 / v17;
  *a7 = v18;
  *(a7 + 4) = v7 - v18 * a5;
  *(a7 + 8) = v10 / v19;
  *(a7 + 12) = v10 - v10 / v19 * a6;
  *(a7 + 16) = v20;
  *(a7 + 20) = a5 + a5 * v20 + ~v13;
  *(a7 + 24) = v16 / v19;
  *(a7 + 28) = a6 + a6 * (v16 / v19) + ~v16;
  *(a7 + 32) = v14;
  *(a7 + 36) = v15;
  *(a7 + 40) = v13 - v7 + 1;
  *(a7 + 44) = v16 - v10 + 1;
  return result;
}

uint64_t AXRChunkHeader::GetCompressedDataPtr(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a3 >= 0x15)
      {
        v5 = *(a1 + 4) & ~(*(a1 + 4) >> 31);
        v6 = a3 - 20;
        v7 = a1 + v5 + 20;
LABEL_13:
        if (v6 <= v5)
        {
          return 0;
        }

        else
        {
          return v7;
        }
      }
    }

    else if (a2 == 3 && a3 >= 0x21)
    {
      v5 = *(a1 + 16) & ~(*(a1 + 16) >> 31);
      v6 = a3 - 32;
      v7 = a1 + v5 + 32;
      goto LABEL_13;
    }

    return 0;
  }

  v3 = a1 + 20;
  if (a2 != 1)
  {
    v3 = 0;
  }

  if (a2)
  {
    return v3;
  }

  else
  {
    return a1 + 8;
  }
}

__int16 *ExtractInterleaved2_B44<unsigned short,(StreamType)0,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, __int16 *a12, uint64_t a13, uint64_t a14)
{
  if (result)
  {
    v18 = result;
    v19 = *(a7 + 8) >= a2 ? a2 : *(a7 + 8);
    AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v68, a3);
    result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v67, a4);
    v22 = *(a9 + 60);
    v23 = a3[1];
    if (v23)
    {
      v24 = *(a7 + 24);
      v25 = (HIDWORD(v24) * v22);
      v26 = *(*(v23 + 40) + 8 * *(a7 + 60));
      if (*(v26 + 12) - 1 < v25)
      {
        v25 = *(v26 + 12) - 1;
      }

      if (*(v23 + 104) == 1)
      {
        v27 = (*(v26 + 8 * v24 + 24) + 8 * v25);
      }

      else
      {
        v29 = (v25 * *(v23 + 108)) >> *(v23 + 112);
        if (v29 >= *(v26 + 20) - 1)
        {
          LODWORD(v29) = *(v26 + 20) - 1;
        }

        v27 = (*(v26 + 8 * v24 + 24) + 8 * v29);
      }

      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    v30 = a4[1];
    if (v30)
    {
      v31 = *(a7 + 24);
      v32 = (HIDWORD(v31) * v22);
      v33 = *(*(v30 + 40) + 8 * *(a7 + 60));
      if (*(v33 + 12) - 1 < v32)
      {
        v32 = *(v33 + 12) - 1;
      }

      if (*(v30 + 104) == 1)
      {
        v34 = (*(v33 + 8 * v31 + 24) + 8 * v32);
      }

      else
      {
        v36 = (v32 * *(v30 + 108)) >> *(v30 + 112);
        if (v36 >= *(v33 + 20) - 1)
        {
          LODWORD(v36) = *(v33 + 20) - 1;
        }

        v34 = (*(v33 + 8 * v31 + 24) + 8 * v36);
      }

      v35 = *v34;
    }

    else
    {
      v35 = 0;
    }

    v37 = a8[2];
    v38 = a8[6];
    if (v37 <= v38)
    {
      v39 = a10 + a11;
      v40 = a12 + a13;
      v41 = v18 + v35;
      v43 = v18 + v28 > v18 + v19 || v41 > v18 + v19;
      v69.val[1] = vdupq_n_s16(v67);
      v69.val[0] = vdupq_n_s16(v68);
      v44 = vqtbl2q_s8(v69, xmmword_296B6EDD0);
      LOWORD(v45) = v68;
      WORD1(v45) = v67;
      WORD2(v45) = v68;
      HIWORD(v45) = v67;
      v46 = a10;
      while (1)
      {
        v47 = (v46->i16 + a14);
        result = (v46->i16 + a14 + a14);
        v48 = (result + a14);
        if (!a12)
        {
          v51 = (result + a14);
          goto LABEL_48;
        }

        if (v37 == a8[2])
        {
          v49 = a8[3] + 1;
          v50 = v46;
          v46 = (v46 + a14);
          v47 = result;
          result = (result + a14);
          do
          {
            v51 = result;
            result = v47;
            v47 = v46;
            v46 = v50;
            v50 = a12;
            --v49;
          }

          while (v49);
        }

        else
        {
          v51 = (result + a14);
        }

        if (v37 == v38)
        {
          v52 = a8[7];
          if (v52 == 1)
          {
            goto LABEL_46;
          }

          if (v52 == 2)
          {
            goto LABEL_45;
          }

          if (v52 == 3)
          {
            break;
          }
        }

        v48 = v51;
LABEL_48:
        v53 = *a8;
        v54 = a8[1];
        if (!v54)
        {
          v59 = a8[4];
LABEL_65:
          v61 = a8[5];
          v62 = v61 != 0;
          if (v59 != 0 || !v62)
          {
            v63 = v59 - v62;
            if (v53 <= v63)
            {
              if (v43)
              {
                return result;
              }

              v64 = v63 - v53 + 1;
              do
              {
                if ((v46 < a10 || v46 >= v39) && (v46 < a12 || v46 >= v40) || (v47 < a10 || v47 >= v39) && (v47 < a12 || v47 >= v40) || (result < a10 || result >= v39) && (result < a12 || result >= v40) || (v48 < a10 || v48 >= v39) && (v48 < a12 || v48 >= v40))
                {
                  goto LABEL_112;
                }

                *v46++ = v44;
                *v47 = v44;
                v47 += 8;
                *result = v44;
                result += 8;
                *v48++ = v44;
                --v64;
              }

              while (v64);
              v61 = a8[5];
            }
          }

          if (v61)
          {
            if (v43)
            {
              return result;
            }

            if ((v46 < a10 || v46 >= v39) && (v46 < a12 || v46 >= v40) || (v47 < a10 || v47 >= v39) && (v47 < a12 || v47 >= v40) || (result < a10 || result >= v39) && (result < a12 || result >= v40) || (v48 < a10 || v48 >= v39) && (v48 < a12 || v48 >= v40))
            {
LABEL_112:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (((4 - v61) & 2) != 0)
            {
              v46->i64[0] = v45;
              *v47 = v45;
              *result = v45;
              v48->i64[0] = v45;
              if ((4 - v61))
              {
                v46->i32[2] = v44.i32[2];
                *(v47 + 2) = v44.i32[2];
                *(result + 2) = v44.i32[2];
                v48->i32[2] = v44.i32[2];
              }
            }

            else
            {
              v46->i32[0] = v44.i32[0];
              *v47 = v44.i32[0];
              *result = v44.i32[0];
              v48->i32[0] = v44.i32[0];
            }
          }

          goto LABEL_109;
        }

        if (v43)
        {
          return result;
        }

        v20.i32[0] = 0;
        if (a8[4] == v53)
        {
          v55 = 4 - a8[5];
        }

        else
        {
          v55 = 4;
        }

        v21.i32[0] = a8[1] & 2;
        v20 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v21, v20), 0), v44, v44);
        v21 = v20;
        v56 = v20;
        v57 = v20;
        if ((v54 & 2) != 0)
        {
          v55 -= 2;
        }

        if (v54)
        {
          v57 = vextq_s8(v20, v20, 4uLL);
          v56 = v57;
          v21 = v57;
          --v55;
          v20 = v57;
        }

        if (v55 <= 1)
        {
          v58 = 0;
        }

        else
        {
          v46->i64[0] = v57.i64[0];
          *v47 = v56.i64[0];
          v57.i32[0] = vextq_s8(v57, v57, 8uLL).u32[0];
          v56.i32[0] = vextq_s8(v56, v56, 8uLL).u32[0];
          *result = v21.i64[0];
          v21 = vextq_s8(v21, v21, 8uLL);
          v48->i64[0] = v20.i64[0];
          v20 = vextq_s8(v20, v20, 8uLL);
          v55 -= 2;
          v58 = 8;
        }

        if (v55 >= 1)
        {
          *(v46->i32 + v58) = v57.i32[0];
          *(v47 + v58) = v56.i32[0];
          *(result + v58) = v21.i32[0];
          v60 = (v48->i16 + v58);
          *(&v48->i16[1] + v58) = v20.i16[1];
          v58 |= 4uLL;
          *v60 = v20.i16[0];
        }

        v59 = a8[4];
        if (v59 != v53)
        {
          v46 = (v46 + v58);
          v47 = (v47 + v58);
          result = (result + v58);
          v48 = (v48 + v58);
          ++v53;
          goto LABEL_65;
        }

LABEL_109:
        v46 = (v51 + a14);
        v38 = a8[6];
        if (v37++ >= v38)
        {
          return result;
        }
      }

      v47 = a12;
LABEL_45:
      result = a12;
LABEL_46:
      v48 = a12;
      goto LABEL_48;
    }
  }

  return result;
}

__int8 *ExtractInterleaved2_B44<unsigned int,(StreamType)0,(StreamType)0>(__int8 *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, int8x16_t *a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  if (result)
  {
    v18 = result;
    v19 = *(a7 + 8) >= a2 ? a2 : *(a7 + 8);
    AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v77, a3);
    result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v76, a4);
    v22 = *(a9 + 60);
    v23 = a3[1];
    if (v23)
    {
      v24 = *(a7 + 24);
      v25 = (HIDWORD(v24) * v22);
      v26 = *(*(v23 + 40) + 8 * *(a7 + 60));
      if (*(v26 + 12) - 1 < v25)
      {
        v25 = *(v26 + 12) - 1;
      }

      if (*(v23 + 104) == 1)
      {
        v27 = (*(v26 + 8 * v24 + 24) + 8 * v25);
      }

      else
      {
        v29 = (v25 * *(v23 + 108)) >> *(v23 + 112);
        if (v29 >= *(v26 + 20) - 1)
        {
          LODWORD(v29) = *(v26 + 20) - 1;
        }

        v27 = (*(v26 + 8 * v24 + 24) + 8 * v29);
      }

      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    v30 = a4[1];
    if (v30)
    {
      v31 = *(a7 + 24);
      v32 = (HIDWORD(v31) * v22);
      v33 = *(*(v30 + 40) + 8 * *(a7 + 60));
      if (*(v33 + 12) - 1 < v32)
      {
        v32 = *(v33 + 12) - 1;
      }

      if (*(v30 + 104) == 1)
      {
        v34 = (*(v33 + 8 * v31 + 24) + 8 * v32);
      }

      else
      {
        v36 = (v32 * *(v30 + 108)) >> *(v30 + 112);
        if (v36 >= *(v33 + 20) - 1)
        {
          LODWORD(v36) = *(v33 + 20) - 1;
        }

        v34 = (*(v33 + 8 * v31 + 24) + 8 * v36);
      }

      v35 = *v34;
    }

    else
    {
      v35 = 0;
    }

    v37 = a8[2];
    v38 = a8[6];
    if (v37 <= v38)
    {
      v39 = a10->u64 + a11;
      v40 = a12->u64 + a13;
      v41 = &v18[v35];
      v42 = &v18[v28] > &v18[v19] || v41 > &v18[v19];
      v43.i64[0] = __PAIR64__(v76, v77);
      v43.i64[1] = __PAIR64__(v76, v77);
      v44 = v42;
      v45 = __PAIR64__(v76, v77);
      v46 = a10;
      while (1)
      {
        v47 = (v46 + a14);
        result = &v46->i8[a14 + a14];
        v48 = &result[a14];
        if (!a12)
        {
          v51 = &result[a14];
          goto LABEL_48;
        }

        if (v37 == a8[2])
        {
          v49 = a8[3] + 1;
          v50 = v46;
          v46 = (v46 + a14);
          v47 = result;
          result += a14;
          do
          {
            v51 = result;
            result = v47;
            v47 = v46;
            v46 = v50;
            v50 = a12;
            --v49;
          }

          while (v49);
        }

        else
        {
          v51 = &result[a14];
        }

        if (v37 == v38)
        {
          v52 = a8[7];
          if (v52 == 1)
          {
            goto LABEL_46;
          }

          if (v52 == 2)
          {
            goto LABEL_45;
          }

          if (v52 == 3)
          {
            break;
          }
        }

        v48 = v51;
LABEL_48:
        v53 = *a8;
        v54 = a8[1];
        if (v54)
        {
          if (v44)
          {
            return result;
          }

          v20.i32[0] = 0;
          if (a8[4] == v53)
          {
            v55 = 4 - a8[5];
          }

          else
          {
            v55 = 4;
          }

          v21.i32[0] = a8[1] & 2;
          v20 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v21, v20), 0), v43, v43);
          v56 = v20.i64[0];
          v57 = v20;
          v58 = v20.i64[0];
          v59 = v20;
          v60 = v20;
          v21 = v20;
          v61 = v20;
          if ((v54 & 2) != 0)
          {
            v55 -= 2;
          }

          if (v54)
          {
            v62 = vextq_s8(v20, v20, 8uLL).u64[0];
            v59 = vextq_s8(v20, v20, 8uLL);
            v57 = v59;
            v20 = v59;
            v63 = vextq_s8(v61, v21, 8uLL);
            --v55;
            v21 = vextq_s8(v21, v61, 8uLL);
            v58 = v62;
            v56 = v62;
            v60 = v59;
            v61 = v63;
          }

          if (v55 <= 1)
          {
            v64 = 0;
          }

          else
          {
            *v46 = v59;
            *v47 = v57;
            v55 -= 2;
            v59.i64[0] = v58;
            v57.i64[0] = v56;
            *result = v20;
            v20 = v60;
            *v48 = v21;
            v21 = v61;
            v64 = 16;
          }

          if (v55 >= 1)
          {
            *(v46->i64 + v64) = v59.i64[0];
            *(v47->i64 + v64) = v57.i64[0];
            *&result[v64] = v20.i64[0];
            *(v48->i64 + v64) = v21.i64[0];
            v64 |= 8uLL;
          }

          v65 = a8[4];
          if (v65 == v53)
          {
            goto LABEL_110;
          }

          v46 = (v46 + v64);
          v47 = (v47 + v64);
          result += v64;
          v48 = (v48 + v64);
          ++v53;
        }

        else
        {
          v65 = a8[4];
        }

        v66 = a8[5];
        v67 = v66 != 0;
        if (v65 == 0 && v67 || (v68 = v65 - v67, v53 > v68))
        {
          v70 = v46;
          v71 = v47;
          v72 = result;
          v73 = v48;
          if (v66)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v44)
          {
            return result;
          }

          v69 = v68 - v53 + 1;
          do
          {
            if ((v46 < a10 || v46 >= v39) && (v46 < a12 || v46 >= v40) || (v47 < a10 || v47 >= v39) && (v47 < a12 || v47 >= v40) || (result < a10 || result >= v39) && (result < a12 || result >= v40) || (v48 < a10 || v48 >= v39) && (v48 < a12 || v48 >= v40))
            {
              goto LABEL_113;
            }

            v70 = v46 + 2;
            *v46 = v43;
            v46[1] = v43;
            v71 = v47 + 2;
            *v47 = v43;
            v47[1] = v43;
            v72 = (result + 32);
            v73 = v48 + 2;
            *result = v43;
            *(result + 1) = v43;
            *v48 = v43;
            v48[1] = v43;
            v48 += 2;
            result += 32;
            v47 += 2;
            v46 += 2;
            --v69;
          }

          while (v69);
          v66 = a8[5];
          if (v66)
          {
LABEL_89:
            if (v44)
            {
              return result;
            }

            if ((v70 < a10 || v70 >= v39) && (v70 < a12 || v70 >= v40) || (v71 < a10 || v71 >= v39) && (v71 < a12 || v71 >= v40) || (v72 < a10 || v72 >= v39) && (v72 < a12 || v72 >= v40) || (v73 < a10 || v73 >= v39) && (v73 < a12 || v73 >= v40))
            {
LABEL_113:
              exception = __cxa_allocate_exception(8uLL);
              *exception = -6;
            }

            if (((4 - v66) & 2) != 0)
            {
              *v70 = v43;
              *v71 = v43;
              *v72 = v43;
              *v73 = v43;
              if ((4 - v66))
              {
                v70[1].i64[0] = v45;
                v71[1].i64[0] = v45;
                v72[1].i64[0] = v45;
                v73[1].i64[0] = v45;
              }
            }

            else
            {
              v70->i64[0] = v45;
              v71->i64[0] = v45;
              v72->i64[0] = v45;
              v73->i64[0] = v45;
            }
          }
        }

LABEL_110:
        v46 = (v51 + a14);
        v38 = a8[6];
        if (v37++ >= v38)
        {
          return result;
        }
      }

      v47 = a12;
LABEL_45:
      result = a12;
LABEL_46:
      v48 = a12;
      goto LABEL_48;
    }
  }

  return result;
}

uint64_t ExtractInterleaved2_B44<unsigned short,(StreamType)1,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = *&a7[1] >= a2 ? a2 : *&a7[1];
  v21 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a7[7].u32[1]) + 16), *(*(a3 + 8) + 48), a7[3]), *(*(a3 + 8) + 48)).u32[0];
  v22 = v21 <= 0xFFFFFFFC ? (v21 + 3) >> 2 : 0x40000000;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v129, a4);
  if (v20 < 0xE)
  {
    return result;
  }

  v23 = *(a9 + 60);
  v24 = *(a3 + 8);
  if (v24)
  {
    v25 = a7[3];
    v26 = *(*(v24 + 40) + 8 * a7[7].u32[1]);
    v27 = *(v26 + 12) - 1;
    if (v27 >= (v25.i32[1] * v23))
    {
      v27 = (HIDWORD(*&a7[3]) * v23);
    }

    v28 = v26 + 8 * v25.u32[0];
    if (*(v24 + 104) == 1)
    {
      v29 = (*(v28 + 24) + 8 * v27);
    }

    else
    {
      v31 = (v27 * *(v24 + 108)) >> *(v24 + 112);
      v32 = *(v26 + 20) - 1;
      if (v31 >= v32)
      {
        LODWORD(v31) = v32;
      }

      v29 = (*(v28 + 24) + 8 * v31);
    }

    v30 = *v29;
  }

  else
  {
    v30 = 0;
  }

  v33 = v20 + v19;
  v34 = a4[1];
  if (v34)
  {
    v35 = a7[3];
    v36 = (v35.i32[1] * v23);
    v37 = *(*(v34 + 40) + 8 * a7[7].u32[1]);
    v38 = *(v37 + 12) - 1;
    if (v38 >= v36)
    {
      v38 = v36;
    }

    v39 = v37 + 8 * v35.u32[0];
    if (*(v34 + 104) == 1)
    {
      v40 = (*(v39 + 24) + 8 * v38);
    }

    else
    {
      v42 = (v38 * *(v34 + 108)) >> *(v34 + 112);
      v43 = *(v37 + 20) - 1;
      if (v42 < v43)
      {
        v43 = v42;
      }

      v40 = (*(v39 + 24) + 8 * v43);
    }

    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  v44 = v41 + v19;
  v45 = a8[2];
  v46 = v44 > v33;
  v47 = a8[6];
  if (v45 > v47)
  {
    return result;
  }

  v48 = 14 * v22;
  v49 = v33 - 14;
  v50 = a10 + a11;
  v51 = a12 + a13;
  v52 = &v129;
  v53 = vld1q_dup_s16(v52);
  v54 = (v30 + v19 + 14 * *a8 + v48 * v45);
  v55.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v55.i64[1] = 0xE0E0E0E0E0E0E0E0;
  result = 4;
  v56 = a10;
  while (1)
  {
    v57 = v56 + a14;
    v58 = v56 + a14 + a14;
    v59 = v58 + a14;
    if (!a12)
    {
      v62 = v58 + a14;
      goto LABEL_47;
    }

    if (v45 == a8[2])
    {
      v60 = a8[3] + 1;
      v61 = v56;
      v56 += a14;
      v57 = v58;
      v58 += a14;
      do
      {
        v62 = v58;
        v58 = v57;
        v57 = v56;
        v56 = v61;
        v61 = a12;
        --v60;
      }

      while (v60);
    }

    else
    {
      v62 = v58 + a14;
    }

    if (v45 == v47)
    {
      v63 = a8[7];
      switch(v63)
      {
        case 1u:
          goto LABEL_45;
        case 2u:
          goto LABEL_44;
        case 3u:
          v57 = a12;
LABEL_44:
          v58 = a12;
LABEL_45:
          v59 = a12;
          goto LABEL_47;
      }
    }

    v59 = v62;
LABEL_47:
    v64 = *a8;
    v65 = a8[1];
    if (!v65)
    {
      v87 = a8[4];
      v88 = v54;
      goto LABEL_69;
    }

    v66 = v54 > v49 || v46;
    if (v66)
    {
      return result;
    }

    v67.i64[0] = *(v54 + 1);
    v67.i64[1] = *(v54 + 3);
    v68 = vqtbl1q_s8(v67, xmmword_296B6EDE0);
    v69 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v68, 8uLL), xmmword_296B6EE00), vshlq_u8(v68, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v70 = vaddq_s8(v69, v55);
    v69.i8[1] = 0;
    v71 = vqtbl1q_s8(v70, xmmword_296B6EE20);
    v72 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v71, xmmword_296B6EE30), v71), vqtbl1q_s8(v71, xmmword_296B6EE40));
    v73 = vdupq_lane_s16(*v69.i8, 0);
    v74 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v72.i8), xmmword_296B6EE50), *v72.i8), v73);
    v75 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v72), xmmword_296B6EE50), v72), v73);
    v76 = vdupq_n_s16(bswap32(*v54) >> 16);
    v77 = vaddq_s16(v75, v76);
    v78 = vaddq_s16(v74, v76);
    v79 = veorq_s8((*&v77 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v77));
    v80 = veorq_s8((*&v78 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v78));
    if (a5)
    {
      v80.i64[0] = (*(a5 + ((v80.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v80.u16[2]) << 32) | (*(a5 + 2 * v80.u16[1]) << 16) | *(a5 + 2 * v80.u16[0]);
      v80.i64[1] = (*(a5 + ((v80.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v80.u16[6]) << 32) | (*(a5 + 2 * v80.u16[5]) << 16) | *(a5 + 2 * v80.u16[4]);
      v79.i64[0] = (*(a5 + ((v79.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v79.u16[2]) << 32) | (*(a5 + 2 * v79.u16[1]) << 16) | *(a5 + 2 * v79.u16[0]);
      v79.i64[1] = (*(a5 + ((v79.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v79.u16[6]) << 32) | (*(a5 + 2 * v79.u16[5]) << 16) | *(a5 + 2 * v79.u16[4]);
    }

    v81 = vzip2q_s16(v80, v53);
    v82 = vzip1q_s16(v80, v53);
    v83 = vzip2q_s16(v79, v53);
    v84 = vzip1q_s16(v79, v53);
    if (a8[4] == v64)
    {
      v85 = 4 - a8[5];
    }

    else
    {
      v85 = 4;
    }

    if ((v65 & 2) != 0)
    {
      v82 = vextq_s8(v82, v82, 8uLL);
      v81 = vextq_s8(v81, v81, 8uLL);
      v84 = vextq_s8(v84, v84, 8uLL);
      v85 -= 2;
      v83 = vextq_s8(v83, v83, 8uLL);
    }

    if (v65)
    {
      v82 = vextq_s8(v82, v82, 4uLL);
      v81 = vextq_s8(v81, v81, 4uLL);
      v84 = vextq_s8(v84, v84, 4uLL);
      --v85;
      v83 = vextq_s8(v83, v83, 4uLL);
    }

    if (v85 <= 1)
    {
      v86 = 0;
    }

    else
    {
      *v56 = v82.i64[0];
      *v57 = v81.i64[0];
      v82.i32[0] = vextq_s8(v82, v82, 8uLL).u32[0];
      v81.i32[0] = vextq_s8(v81, v81, 8uLL).u32[0];
      *v58 = v84.i64[0];
      v84.i32[0] = vextq_s8(v84, v84, 8uLL).u32[0];
      *v59 = v83.i64[0];
      v83.i32[0] = vextq_s8(v83, v83, 8uLL).u32[0];
      v85 -= 2;
      v86 = 8;
    }

    if (v85 >= 1)
    {
      *(v86 + v56) = v82.i32[0];
      *(v86 + v57) = v81.i32[0];
      *(v86 + v58) = v84.i32[0];
      v89 = (v86 + v59);
      *(v86 + v59 + 2) = v83.i16[1];
      v86 |= 4uLL;
      *v89 = v83.i16[0];
    }

    v87 = a8[4];
    if (v87 != v64)
    {
      break;
    }

LABEL_121:
    v56 = v62 + a14;
    v54 = (v54 + v48);
    v47 = a8[6];
    if (v45++ >= v47)
    {
      return result;
    }
  }

  v88 = v54 + 7;
  v56 += v86;
  v57 += v86;
  v58 += v86;
  v59 += v86;
  ++v64;
LABEL_69:
  v90 = a8[5];
  v91 = v90 != 0;
  if (v87 == 0 && v91 || (v92 = v87 - v91, v64 > v92))
  {
LABEL_94:
    if (v90)
    {
      v108 = v88 > v49 || v46;
      if (v108)
      {
        return result;
      }

      v109.i64[0] = *(v88 + 1);
      v109.i64[1] = *(v88 + 3);
      v110 = vqtbl1q_s8(v109, xmmword_296B6EDE0);
      v111 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v110, 8uLL), xmmword_296B6EE00), vshlq_u8(v110, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v112 = vaddq_s8(v111, v55);
      v111.i8[1] = 0;
      v113 = vqtbl1q_s8(v112, xmmword_296B6EE20);
      v114 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v113, xmmword_296B6EE30), v113), vqtbl1q_s8(v113, xmmword_296B6EE40));
      v115 = vdupq_lane_s16(*v111.i8, 0);
      v116 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v114.i8), xmmword_296B6EE50), *v114.i8), v115);
      v117 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v114), xmmword_296B6EE50), v114), v115);
      v118 = vdupq_n_s16(bswap32(*v88) >> 16);
      v119 = vaddq_s16(v117, v118);
      v120 = vaddq_s16(v116, v118);
      v121 = veorq_s8((*&v119 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v119));
      v122 = veorq_s8((*&v120 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v120));
      if (a5)
      {
        v122.i64[0] = (*(a5 + ((v122.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v122.u16[2]) << 32) | (*(a5 + 2 * v122.u16[1]) << 16) | *(a5 + 2 * v122.u16[0]);
        v122.i64[1] = (*(a5 + ((v122.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v122.u16[6]) << 32) | (*(a5 + 2 * v122.u16[5]) << 16) | *(a5 + 2 * v122.u16[4]);
        v121.i64[0] = (*(a5 + ((v121.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v121.u16[2]) << 32) | (*(a5 + 2 * v121.u16[1]) << 16) | *(a5 + 2 * v121.u16[0]);
        v121.i64[1] = (*(a5 + ((v121.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v121.u16[6]) << 32) | (*(a5 + 2 * v121.u16[5]) << 16) | *(a5 + 2 * v121.u16[4]);
      }

      if ((v56 < a10 || v56 >= v50) && (v56 < a12 || v56 >= v51) || (v57 < a10 || v57 >= v50) && (v57 < a12 || v57 >= v51) || (v58 < a10 || v58 >= v50) && (v58 < a12 || v58 >= v51) || (v59 < a10 || v59 >= v50) && (v59 < a12 || v59 >= v51))
      {
LABEL_124:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v123 = vzip2q_s16(v122, v53);
      v124 = vzip1q_s16(v122, v53);
      v125 = vzip2q_s16(v121, v53);
      v126 = vzip1q_s16(v121, v53);
      if (((4 - v90) & 2) != 0)
      {
        *v56 = v124.i64[0];
        *v57 = v123.i64[0];
        *v58 = v126.i64[0];
        *v59 = v125.i64[0];
        if ((4 - v90))
        {
          *(v56 + 8) = v124.i32[2];
          *(v57 + 8) = v123.i32[2];
          *(v58 + 8) = v126.i32[2];
          *(v59 + 8) = v125.i32[2];
        }
      }

      else
      {
        *v56 = v124.i32[0];
        *v57 = v123.i32[0];
        *v58 = v126.i32[0];
        *v59 = v125.i32[0];
      }
    }

    goto LABEL_121;
  }

  if (!v46)
  {
    v93 = v92 - v64 + 1;
    while (v88 <= v49)
    {
      v94.i64[0] = *(v88 + 1);
      v94.i64[1] = *(v88 + 3);
      v95 = vqtbl1q_s8(v94, xmmword_296B6EDE0);
      v96 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v95, 8uLL), xmmword_296B6EE00), vshlq_u8(v95, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v97 = vaddq_s8(v96, v55);
      v96.i8[1] = 0;
      v98 = vqtbl1q_s8(v97, xmmword_296B6EE20);
      v99 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v98, xmmword_296B6EE30), v98), vqtbl1q_s8(v98, xmmword_296B6EE40));
      v100 = vdupq_lane_s16(*v96.i8, 0);
      v101 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v99.i8), xmmword_296B6EE50), *v99.i8), v100);
      v102 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v99), xmmword_296B6EE50), v99), v100);
      v103 = vdupq_n_s16(bswap32(*v88) >> 16);
      v104 = vaddq_s16(v102, v103);
      v105 = vaddq_s16(v101, v103);
      v106 = veorq_s8((*&v104 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v104));
      v107 = veorq_s8((*&v105 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v105));
      if (a5)
      {
        v107.i64[0] = (*(a5 + ((v107.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v107.u16[2]) << 32) | (*(a5 + 2 * v107.u16[1]) << 16) | *(a5 + 2 * v107.u16[0]);
        v107.i64[1] = (*(a5 + ((v107.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v107.u16[6]) << 32) | (*(a5 + 2 * v107.u16[5]) << 16) | *(a5 + 2 * v107.u16[4]);
        v106.i64[0] = (*(a5 + ((v106.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v106.u16[2]) << 32) | (*(a5 + 2 * v106.u16[1]) << 16) | *(a5 + 2 * v106.u16[0]);
        v106.i64[1] = (*(a5 + ((v106.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v106.u16[6]) << 32) | (*(a5 + 2 * v106.u16[5]) << 16) | *(a5 + 2 * v106.u16[4]);
      }

      if ((v56 < a10 || v56 >= v50) && (v56 < a12 || v56 >= v51) || (v57 < a10 || v57 >= v50) && (v57 < a12 || v57 >= v51) || (v58 < a10 || v58 >= v50) && (v58 < a12 || v58 >= v51) || (v59 < a10 || v59 >= v50) && (v59 < a12 || v59 >= v51))
      {
        goto LABEL_124;
      }

      *v56 = vzip1q_s16(v107, v53);
      v56 += 16;
      *v57 = vzip2q_s16(v107, v53);
      v57 += 16;
      v88 += 7;
      *v58 = vzip1q_s16(v106, v53);
      v58 += 16;
      *v59 = vzip2q_s16(v106, v53);
      v59 += 16;
      if (!--v93)
      {
        v90 = a8[5];
        goto LABEL_94;
      }
    }
  }

  return result;
}

int32x4_t *ExtractInterleaved2_B44<unsigned int,(StreamType)1,(StreamType)0>(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = *&a7[1] >= a2 ? a2 : *&a7[1];
  v20 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a7[7].u32[1]) + 16), *(*(a3 + 8) + 48), a7[3]), *(*(a3 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v127, a4);
  v22 = 12 * v20 + 16;
  v23 = v19 - v22;
  if (v19 < v22)
  {
    return result;
  }

  v24 = *(a9 + 60);
  v25 = *(a3 + 8);
  if (v25)
  {
    v26 = a7[3];
    v27 = *(*(v25 + 40) + 8 * a7[7].u32[1]);
    v28 = *(v27 + 12) - 1;
    if (v28 >= (v26.i32[1] * v24))
    {
      v28 = (HIDWORD(*&a7[3]) * v24);
    }

    v29 = v27 + 8 * v26.u32[0];
    if (*(v25 + 104) == 1)
    {
      v30 = (*(v29 + 24) + 8 * v28);
    }

    else
    {
      v31 = (v28 * *(v25 + 108)) >> *(v25 + 112);
      v32 = *(v27 + 20) - 1;
      if (v31 >= v32)
      {
        LODWORD(v31) = v32;
      }

      v30 = (*(v29 + 24) + 8 * v31);
    }

    result = *v30;
  }

  else
  {
    result = 0;
  }

  v33 = a4[1];
  if (v33)
  {
    v34 = a7[3];
    v35 = (v34.i32[1] * v24);
    v36 = *(*(v33 + 40) + 8 * a7[7].u32[1]);
    v37 = *(v36 + 12) - 1;
    if (v37 >= v35)
    {
      v37 = v35;
    }

    v38 = v36 + 8 * v34.u32[0];
    if (*(v33 + 104) == 1)
    {
      v39 = (*(v38 + 24) + 8 * v37);
    }

    else
    {
      v41 = (v37 * *(v33 + 108)) >> *(v33 + 112);
      v42 = *(v36 + 20) - 1;
      if (v41 < v42)
      {
        v42 = v41;
      }

      v39 = (*(v38 + 24) + 8 * v42);
    }

    v40 = *v39;
  }

  else
  {
    v40 = 0;
  }

  v43 = &v18->i8[v40];
  v44 = a8[2];
  v45 = v43 > &v18->i8[v19];
  v46 = a8[6];
  if (v44 > v46)
  {
    return result;
  }

  v47 = 4 * v20;
  v48 = v18->u64 + v23;
  v49 = a10 + a11;
  v50 = a12->u64 + a13;
  v51 = 16 * v20;
  v52 = &v127;
  v53 = vld1q_dup_f32(v52);
  result = (&v18[*a8] + result + 16 * v20 * v44);
  v54 = a10;
  while (1)
  {
    v55 = &v54[a14];
    v56 = &v54[a14 + a14];
    v57 = (v56 + a14);
    if (!a12)
    {
      v60 = (v56 + a14);
      goto LABEL_44;
    }

    if (v44 == a8[2])
    {
      v58 = a8[3] + 1;
      v59 = v54;
      v54 += a14;
      v55 = v56;
      v56 = (v56 + a14);
      do
      {
        v60 = v56;
        v56 = v55;
        v55 = v54;
        v54 = v59;
        v59 = a12;
        --v58;
      }

      while (v58);
    }

    else
    {
      v60 = (v56 + a14);
    }

    if (v44 == v46)
    {
      v61 = a8[7];
      switch(v61)
      {
        case 1u:
          goto LABEL_42;
        case 2u:
          goto LABEL_41;
        case 3u:
          v55 = a12;
LABEL_41:
          v56 = a12;
LABEL_42:
          v57 = a12;
          goto LABEL_44;
      }
    }

    v57 = v60;
LABEL_44:
    v62 = *a8;
    v63 = a8[1];
    if (!v63)
    {
      v90 = a8[4];
      v91 = result;
      goto LABEL_64;
    }

    v64 = result > v48 || v45;
    if (v64)
    {
      return result;
    }

    v21.i32[0] = 0;
    v65 = *(result + v47);
    v66 = (result + v47 + v47);
    v67 = *(v66 + v47);
    v68 = vzip1q_s32(*result, v53);
    v69 = vzip2q_s32(*result, v53);
    v70 = vzip1q_s32(v65, v53);
    v71 = vzip2q_s32(v65, v53);
    v72 = vzip1q_s32(*v66, v53);
    v73 = vzip2q_s32(*v66, v53);
    v74 = vzip1q_s32(v67, v53);
    v75 = vzip2q_s32(v67, v53);
    if (a8[4] == v62)
    {
      v76 = 4 - a8[5];
    }

    else
    {
      v76 = 4;
    }

    v67.i32[0] = a8[1] & 2;
    v77 = vdupq_lane_s32(*&vceqq_s32(v67, v21), 0);
    v78 = vbslq_s8(v77, v75, v74);
    v21 = vbslq_s8(v77, v74, v75);
    v79 = vbslq_s8(v77, v73, v72);
    v80 = vbslq_s8(v77, v72, v73);
    v81 = vbslq_s8(v77, v71, v70);
    v82 = vbslq_s8(v77, v70, v71);
    v83 = vbslq_s8(v77, v69, v68);
    v84 = vbslq_s8(v77, v68, v69);
    if ((v63 & 2) != 0)
    {
      v76 -= 2;
    }

    if (v63)
    {
      v85 = vextq_s8(v83, v84, 8uLL).u64[0];
      v84 = vextq_s8(v84, v83, 8uLL);
      v86 = vextq_s8(v81, v82, 8uLL).u64[0];
      v82 = vextq_s8(v82, v81, 8uLL);
      v87 = vextq_s8(v79, v80, 8uLL).u64[0];
      v80 = vextq_s8(v80, v79, 8uLL);
      v88 = vextq_s8(v78, v21, 8uLL);
      --v76;
      v21 = vextq_s8(v21, v78, 8uLL);
      v83.i64[0] = v85;
      v81.i64[0] = v86;
      v79.i64[0] = v87;
      v78 = v88;
    }

    if (v76 <= 1)
    {
      v89 = 0;
    }

    else
    {
      *v54 = v84;
      *v55 = v82;
      v76 -= 2;
      v84.i64[0] = v83.i64[0];
      v82.i64[0] = v81.i64[0];
      *v56 = v80;
      v80.i64[0] = v79.i64[0];
      *v57 = v21;
      v21 = v78;
      v89 = 16;
    }

    if (v76 >= 1)
    {
      *&v54[v89] = v84.i64[0];
      *(v55->i64 + v89) = v82.i64[0];
      *(v56->i64 + v89) = v80.i64[0];
      *(v57->i64 + v89) = v21.i64[0];
      v89 |= 8uLL;
    }

    v90 = a8[4];
    if (v90 != v62)
    {
      break;
    }

LABEL_127:
    v54 = &v60->i8[a14];
    result = (result + v51);
    v46 = a8[6];
    if (v44++ >= v46)
    {
      return result;
    }
  }

  v91 = result + 1;
  v54 += v89;
  v55 = (v55 + v89);
  v56 = (v56 + v89);
  v57 = (v57 + v89);
  ++v62;
LABEL_64:
  v92 = a8[5];
  v93 = v92 != 0;
  if (v90 == 0 && v93 || (v94 = v90 - v93, v62 > v94))
  {
    v102 = v54;
    v103 = v55;
    v104 = v56;
    v105 = v57;
    if (v92)
    {
LABEL_89:
      if (v44 == a8[6])
      {
        v106 = 4 - a8[7];
      }

      else
      {
        v106 = 4;
      }

      v107 = v91 > v48 || v45;
      if (v107)
      {
        return result;
      }

      if (v106 < 2)
      {
        v109 = 0;
        v108 = v91;
        v110 = v91;
      }

      else
      {
        v108 = (v91->i64 + v47);
        if (v106 == 2)
        {
          v109 = 0;
          v110 = (v91->i64 + v47);
        }

        else
        {
          v110 = (v91->i64 + v47);
          v108 = (v108 + v47);
          if (v106 <= 3)
          {
            v109 = 0;
          }

          else
          {
            v109 = v47;
          }
        }
      }

      v111 = 4 - v92;
      v112 = (v108 + v109);
      v113 = 0uLL;
      v114 = 0uLL;
      v21 = 0uLL;
      v115 = 0uLL;
      if ((4 - v92))
      {
        v116 = 3 - v92;
        v115.i32[0] = v91->i32[v116];
        v113.i32[0] = *(v110 + v116);
        v114.i32[0] = *(v108 + v116);
        v21.i32[0] = *(v112 + v116);
      }

      if ((v111 & 2) != 0)
      {
        v117.i64[0] = v91->i64[0];
        v117.i64[1] = v115.i64[0];
        v118.i64[0] = *v110;
        v118.i64[1] = v113.i64[0];
        v119.i64[0] = *v108;
        v119.i64[1] = v114.i64[0];
        v120.i64[0] = *v112;
        v120.i64[1] = v21.i64[0];
        v113 = v118;
        v114 = v119;
        v21 = v120;
        v115 = v117;
      }

      if ((v102 < a10 || v102 >= v49) && (v102 < a12 || v102 >= v50) || (v103 < a10 || v103 >= v49) && (v103 < a12 || v103 >= v50) || (v104 < a10 || v104 >= v49) && (v104 < a12 || v104 >= v50) || (v105 < a10 || v105 >= v49) && (v105 < a12 || v105 >= v50))
      {
LABEL_130:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v121 = vzip1q_s32(v115, v53);
      v122 = vzip1q_s32(v113, v53);
      v123 = vzip1q_s32(v114, v53);
      v124 = vzip1q_s32(v21, v53);
      if ((v111 & 2) != 0)
      {
        *v102 = v121;
        *v103 = v122;
        *v104 = v123;
        *v105 = v124;
        if (v111)
        {
          v102[1].i64[0] = vzip2q_s32(v115, v53).u64[0];
          v103[1].i64[0] = vzip2q_s32(v113, v53).u64[0];
          v21 = vzip2q_s32(v21, v53);
          v104[1].i64[0] = vzip2q_s32(v114, v53).u64[0];
          v105[1].i64[0] = v21.i64[0];
        }
      }

      else
      {
        v102->i64[0] = v121.i64[0];
        v103->i64[0] = v122.i64[0];
        v104->i64[0] = v123.i64[0];
        v105->i64[0] = v124.i64[0];
      }
    }

    goto LABEL_127;
  }

  if (!v45)
  {
    v95 = v94 - v62 + 1;
    while (v91 <= v48)
    {
      v96 = *v91;
      v97 = *(v91 + v47);
      v98 = (v91 + v47 + v47);
      v99 = *v98;
      v100 = *(v98 + v47);
      if ((v54 < a10 || v54 >= v49) && (v54 < a12 || v54 >= v50) || (v55 < a10 || v55 >= v49) && (v55 < a12 || v55 >= v50) || (v56 < a10 || v56 >= v49) && (v56 < a12 || v56 >= v50) || (v57 < a10 || v57 >= v49) && (v57 < a12 || v57 >= v50))
      {
        goto LABEL_130;
      }

      *v54 = vzip1q_s32(v96, v53);
      *(v54 + 1) = vzip2q_s32(v96, v53);
      v101 = vzip2q_s32(v99, v53);
      v21 = vzip1q_s32(v99, v53);
      ++v91;
      v102 = (v54 + 32);
      *v55 = vzip1q_s32(v97, v53);
      v55[1] = vzip2q_s32(v97, v53);
      v103 = &v55[2];
      v104 = v56 + 2;
      *v56 = v21;
      v56[1] = v101;
      v105 = v57 + 2;
      *v57 = vzip1q_s32(v100, v53);
      v57[1] = vzip2q_s32(v100, v53);
      v57 += 2;
      v56 += 2;
      v55 += 2;
      v54 += 32;
      if (!--v95)
      {
        v92 = a8[5];
        if (v92)
        {
          goto LABEL_89;
        }

        goto LABEL_127;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved2_B44<unsigned short,(StreamType)0,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = *&a7[1] >= a2 ? a2 : *&a7[1];
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v124, a3);
  v21 = a7[3];
  v22 = a7[7].u32[1];
  v23 = *(a4 + 8);
  v24 = *(*&v23[5] + 8 * v22);
  v25 = v24[2];
  v26 = vmin_u32(vmls_s32(v25, v23[6], v21), v23[6]).u32[0];
  v27 = v26 <= 0xFFFFFFFC ? (v26 + 3) >> 2 : 0x40000000;
  if (v20 < 0xE)
  {
    return result;
  }

  v28 = a3[1];
  v29 = (v21.i32[1] * *(a9 + 60));
  if (v28)
  {
    v30 = *(*(v28 + 40) + 8 * v22);
    v31 = *(v30 + 12) - 1 >= v29 ? (v21.i32[1] * *(a9 + 60)) : *(v30 + 12) - 1;
    v32 = v30 + 8 * v21.u32[0];
    if (*(v28 + 104) == 1)
    {
      v33 = (*(v32 + 24) + 8 * v31);
    }

    else
    {
      v35 = (v31 * *(v28 + 108)) >> *(v28 + 112);
      v36 = *(v30 + 20) - 1;
      if (v35 < v36)
      {
        v36 = v35;
      }

      v33 = (*(v32 + 24) + 8 * v36);
    }

    v34 = *v33;
  }

  else
  {
    v34 = 0;
  }

  v37 = v20 + v19;
  if (v24[1].u32[1] - 1 < v29)
  {
    v29 = v24[1].u32[1] - 1;
  }

  if (v23[13].i32[0] == 1)
  {
    v38 = (*&v24[v21.u32[0] + 3] + 8 * v29);
  }

  else
  {
    v39 = (v29 * v23[13].u32[1]) >> v23[14].i32[0];
    if (v39 >= v25.i32[1] - 1)
    {
      LODWORD(v39) = v25.i32[1] - 1;
    }

    v38 = (*&v24[v21.u32[0] + 3] + 8 * v39);
  }

  v40 = a8[2];
  v41 = v34 + v19 > v37;
  v42 = a8[6];
  if (v40 > v42)
  {
    return result;
  }

  v43 = 14 * v27;
  v44 = v37 - 14;
  v45 = a10 + a11;
  v46 = a12 + a13;
  v47 = &v124;
  v48 = vld1q_dup_s16(v47);
  v49 = (*v38 + v19 + 14 * *a8 + v43 * v40);
  v50.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v50.i64[1] = 0xE0E0E0E0E0E0E0E0;
  result = 4;
  v51 = a10;
  while (1)
  {
    v52 = v51 + a14;
    v53 = v51 + a14 + a14;
    v54 = v53 + a14;
    if (!a12)
    {
      v57 = v53 + a14;
      goto LABEL_45;
    }

    if (v40 == a8[2])
    {
      v55 = a8[3] + 1;
      v56 = v51;
      v51 += a14;
      v52 = v53;
      v53 += a14;
      do
      {
        v57 = v53;
        v53 = v52;
        v52 = v51;
        v51 = v56;
        v56 = a12;
        --v55;
      }

      while (v55);
    }

    else
    {
      v57 = v53 + a14;
    }

    if (v40 == v42)
    {
      v58 = a8[7];
      switch(v58)
      {
        case 1u:
          goto LABEL_43;
        case 2u:
          goto LABEL_42;
        case 3u:
          v52 = a12;
LABEL_42:
          v53 = a12;
LABEL_43:
          v54 = a12;
          goto LABEL_45;
      }
    }

    v54 = v57;
LABEL_45:
    v59 = *a8;
    v60 = a8[1];
    if (!v60)
    {
      v82 = a8[4];
      v83 = v49;
      goto LABEL_67;
    }

    v61 = v49 > v44 || v41;
    if (v61)
    {
      return result;
    }

    v62.i64[0] = *(v49 + 1);
    v62.i64[1] = *(v49 + 3);
    v63 = vqtbl1q_s8(v62, xmmword_296B6EDE0);
    v64 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v63, 8uLL), xmmword_296B6EE00), vshlq_u8(v63, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v65 = vaddq_s8(v64, v50);
    v64.i8[1] = 0;
    v66 = vqtbl1q_s8(v65, xmmword_296B6EE20);
    v67 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v66, xmmword_296B6EE30), v66), vqtbl1q_s8(v66, xmmword_296B6EE40));
    v68 = vdupq_lane_s16(*v64.i8, 0);
    v69 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v67.i8), xmmword_296B6EE50), *v67.i8), v68);
    v70 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v67), xmmword_296B6EE50), v67), v68);
    v71 = vdupq_n_s16(bswap32(*v49) >> 16);
    v72 = vaddq_s16(v70, v71);
    v73 = vaddq_s16(v69, v71);
    v74 = veorq_s8((*&v72 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v72));
    v75 = veorq_s8((*&v73 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v73));
    if (a6)
    {
      v75.i64[0] = (*(a6 + ((v75.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v75.u16[2]) << 32) | (*(a6 + 2 * v75.u16[1]) << 16) | *(a6 + 2 * v75.u16[0]);
      v75.i64[1] = (*(a6 + ((v75.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v75.u16[6]) << 32) | (*(a6 + 2 * v75.u16[5]) << 16) | *(a6 + 2 * v75.u16[4]);
      v74.i64[0] = (*(a6 + ((v74.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v74.u16[2]) << 32) | (*(a6 + 2 * v74.u16[1]) << 16) | *(a6 + 2 * v74.u16[0]);
      v74.i64[1] = (*(a6 + ((v74.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v74.u16[6]) << 32) | (*(a6 + 2 * v74.u16[5]) << 16) | *(a6 + 2 * v74.u16[4]);
    }

    v76 = vzip2q_s16(v48, v75);
    v77 = vzip1q_s16(v48, v75);
    v78 = vzip2q_s16(v48, v74);
    v79 = vzip1q_s16(v48, v74);
    if (a8[4] == v59)
    {
      v80 = 4 - a8[5];
    }

    else
    {
      v80 = 4;
    }

    if ((v60 & 2) != 0)
    {
      v77 = vextq_s8(v77, v77, 8uLL);
      v76 = vextq_s8(v76, v76, 8uLL);
      v79 = vextq_s8(v79, v79, 8uLL);
      v80 -= 2;
      v78 = vextq_s8(v78, v78, 8uLL);
    }

    if (v60)
    {
      v77 = vextq_s8(v77, v77, 4uLL);
      v76 = vextq_s8(v76, v76, 4uLL);
      v79 = vextq_s8(v79, v79, 4uLL);
      --v80;
      v78 = vextq_s8(v78, v78, 4uLL);
    }

    if (v80 <= 1)
    {
      v81 = 0;
    }

    else
    {
      *v51 = v77.i64[0];
      *v52 = v76.i64[0];
      v77.i32[0] = vextq_s8(v77, v77, 8uLL).u32[0];
      v76.i32[0] = vextq_s8(v76, v76, 8uLL).u32[0];
      *v53 = v79.i64[0];
      v79.i32[0] = vextq_s8(v79, v79, 8uLL).u32[0];
      *v54 = v78.i64[0];
      v78.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
      v80 -= 2;
      v81 = 8;
    }

    if (v80 >= 1)
    {
      *(v81 + v51) = v77.i32[0];
      *(v81 + v52) = v76.i32[0];
      *(v81 + v53) = v79.i32[0];
      v84 = (v81 + v54);
      *(v81 + v54 + 2) = v78.i16[1];
      v81 |= 4uLL;
      *v84 = v78.i16[0];
    }

    v82 = a8[4];
    if (v82 != v59)
    {
      break;
    }

LABEL_119:
    v51 = v57 + a14;
    v49 = (v49 + v43);
    v42 = a8[6];
    if (v40++ >= v42)
    {
      return result;
    }
  }

  v83 = v49 + 7;
  v51 += v81;
  v52 += v81;
  v53 += v81;
  v54 += v81;
  ++v59;
LABEL_67:
  v85 = a8[5];
  v86 = v85 != 0;
  if (v82 == 0 && v86 || (v87 = v82 - v86, v59 > v87))
  {
LABEL_92:
    if (v85)
    {
      v103 = v83 > v44 || v41;
      if (v103)
      {
        return result;
      }

      v104.i64[0] = *(v83 + 1);
      v104.i64[1] = *(v83 + 3);
      v105 = vqtbl1q_s8(v104, xmmword_296B6EDE0);
      v106 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v105, 8uLL), xmmword_296B6EE00), vshlq_u8(v105, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v107 = vaddq_s8(v106, v50);
      v106.i8[1] = 0;
      v108 = vqtbl1q_s8(v107, xmmword_296B6EE20);
      v109 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v108, xmmword_296B6EE30), v108), vqtbl1q_s8(v108, xmmword_296B6EE40));
      v110 = vdupq_lane_s16(*v106.i8, 0);
      v111 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v109.i8), xmmword_296B6EE50), *v109.i8), v110);
      v112 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v109), xmmword_296B6EE50), v109), v110);
      v113 = vdupq_n_s16(bswap32(*v83) >> 16);
      v114 = vaddq_s16(v112, v113);
      v115 = vaddq_s16(v111, v113);
      v116 = veorq_s8((*&v114 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v114));
      v117 = veorq_s8((*&v115 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v115));
      if (a6)
      {
        v117.i64[0] = (*(a6 + ((v117.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v117.u16[2]) << 32) | (*(a6 + 2 * v117.u16[1]) << 16) | *(a6 + 2 * v117.u16[0]);
        v117.i64[1] = (*(a6 + ((v117.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v117.u16[6]) << 32) | (*(a6 + 2 * v117.u16[5]) << 16) | *(a6 + 2 * v117.u16[4]);
        v116.i64[0] = (*(a6 + ((v116.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v116.u16[2]) << 32) | (*(a6 + 2 * v116.u16[1]) << 16) | *(a6 + 2 * v116.u16[0]);
        v116.i64[1] = (*(a6 + ((v116.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v116.u16[6]) << 32) | (*(a6 + 2 * v116.u16[5]) << 16) | *(a6 + 2 * v116.u16[4]);
      }

      if ((v51 < a10 || v51 >= v45) && (v51 < a12 || v51 >= v46) || (v52 < a10 || v52 >= v45) && (v52 < a12 || v52 >= v46) || (v53 < a10 || v53 >= v45) && (v53 < a12 || v53 >= v46) || (v54 < a10 || v54 >= v45) && (v54 < a12 || v54 >= v46))
      {
LABEL_122:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v118 = vzip2q_s16(v48, v117);
      v119 = vzip1q_s16(v48, v117);
      v120 = vzip2q_s16(v48, v116);
      v121 = vzip1q_s16(v48, v116);
      if (((4 - v85) & 2) != 0)
      {
        *v51 = v119.i64[0];
        *v52 = v118.i64[0];
        *v53 = v121.i64[0];
        *v54 = v120.i64[0];
        if ((4 - v85))
        {
          *(v51 + 8) = v119.i32[2];
          *(v52 + 8) = v118.i32[2];
          *(v53 + 8) = v121.i32[2];
          *(v54 + 8) = v120.i32[2];
        }
      }

      else
      {
        *v51 = v119.i32[0];
        *v52 = v118.i32[0];
        *v53 = v121.i32[0];
        *v54 = v120.i32[0];
      }
    }

    goto LABEL_119;
  }

  if (!v41)
  {
    v88 = v87 - v59 + 1;
    while (v83 <= v44)
    {
      v89.i64[0] = *(v83 + 1);
      v89.i64[1] = *(v83 + 3);
      v90 = vqtbl1q_s8(v89, xmmword_296B6EDE0);
      v91 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v90, 8uLL), xmmword_296B6EE00), vshlq_u8(v90, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v92 = vaddq_s8(v91, v50);
      v91.i8[1] = 0;
      v93 = vqtbl1q_s8(v92, xmmword_296B6EE20);
      v94 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v93, xmmword_296B6EE30), v93), vqtbl1q_s8(v93, xmmword_296B6EE40));
      v95 = vdupq_lane_s16(*v91.i8, 0);
      v96 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v94.i8), xmmword_296B6EE50), *v94.i8), v95);
      v97 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v94), xmmword_296B6EE50), v94), v95);
      v98 = vdupq_n_s16(bswap32(*v83) >> 16);
      v99 = vaddq_s16(v97, v98);
      v100 = vaddq_s16(v96, v98);
      v101 = veorq_s8((*&v99 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v99));
      v102 = veorq_s8((*&v100 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v100));
      if (a6)
      {
        v102.i64[0] = (*(a6 + ((v102.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v102.u16[2]) << 32) | (*(a6 + 2 * v102.u16[1]) << 16) | *(a6 + 2 * v102.u16[0]);
        v102.i64[1] = (*(a6 + ((v102.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v102.u16[6]) << 32) | (*(a6 + 2 * v102.u16[5]) << 16) | *(a6 + 2 * v102.u16[4]);
        v101.i64[0] = (*(a6 + ((v101.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v101.u16[2]) << 32) | (*(a6 + 2 * v101.u16[1]) << 16) | *(a6 + 2 * v101.u16[0]);
        v101.i64[1] = (*(a6 + ((v101.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v101.u16[6]) << 32) | (*(a6 + 2 * v101.u16[5]) << 16) | *(a6 + 2 * v101.u16[4]);
      }

      if ((v51 < a10 || v51 >= v45) && (v51 < a12 || v51 >= v46) || (v52 < a10 || v52 >= v45) && (v52 < a12 || v52 >= v46) || (v53 < a10 || v53 >= v45) && (v53 < a12 || v53 >= v46) || (v54 < a10 || v54 >= v45) && (v54 < a12 || v54 >= v46))
      {
        goto LABEL_122;
      }

      *v51 = vzip1q_s16(v48, v102);
      v51 += 16;
      *v52 = vzip2q_s16(v48, v102);
      v52 += 16;
      v83 += 7;
      *v53 = vzip1q_s16(v48, v101);
      v53 += 16;
      *v54 = vzip2q_s16(v48, v101);
      v54 += 16;
      if (!--v88)
      {
        v85 = a8[5];
        goto LABEL_92;
      }
    }
  }

  return result;
}

int32x4_t *ExtractInterleaved2_B44<unsigned int,(StreamType)0,(StreamType)1>(int32x4_t *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14)
{
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = *(a7 + 8) >= a2 ? a2 : *(a7 + 8);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v120, a3);
  v20.i64[0] = *(a7 + 24);
  v21 = *(a7 + 60);
  v22 = *(a4 + 8);
  v23 = *(*&v22[5] + 8 * v21);
  v24 = v23[2];
  v25 = vmin_u32(vmls_s32(v24, v22[6], *v20.i8), v22[6]).u32[0];
  v26 = 12 * v25 + 16;
  if (v19 < v26)
  {
    return result;
  }

  v27 = a3[1];
  v28 = (v20.i32[1] * *(a9 + 60));
  if (v27)
  {
    v29 = *(*(v27 + 40) + 8 * v21);
    v30 = *(v29 + 12) - 1 >= v28 ? (v20.i32[1] * *(a9 + 60)) : *(v29 + 12) - 1;
    v31 = v29 + 8 * v20.u32[0];
    if (*(v27 + 104) == 1)
    {
      v32 = (*(v31 + 24) + 8 * v30);
    }

    else
    {
      v34 = (v30 * *(v27 + 108)) >> *(v27 + 112);
      v35 = *(v29 + 20) - 1;
      if (v34 < v35)
      {
        v35 = v34;
      }

      v32 = (*(v31 + 24) + 8 * v35);
    }

    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  if (v23[1].u32[1] - 1 < v28)
  {
    v28 = v23[1].u32[1] - 1;
  }

  if (v22[13].i32[0] == 1)
  {
    result = (*&v23[v20.u32[0] + 3] + 8 * v28);
  }

  else
  {
    v36 = (v28 * v22[13].u32[1]) >> v22[14].i32[0];
    if (v36 >= v24.i32[1] - 1)
    {
      LODWORD(v36) = v24.i32[1] - 1;
    }

    result = (*&v23[v20.u32[0] + 3] + 8 * v36);
  }

  v37 = a8[2];
  v38 = &v18->i8[v33] > &v18->i8[v19];
  v39 = a8[6];
  if (v37 > v39)
  {
    return result;
  }

  v40 = 4 * v25;
  v41 = v18->u64 + v19 - v26;
  v42 = a10 + a11;
  v43 = a12->u64 + a13;
  v44 = 16 * v25;
  v45 = &v120;
  v46 = vld1q_dup_f32(v45);
  result = (&v18[*a8] + result->u32[0] + v44 * v37);
  v47 = a10;
  while (1)
  {
    v48 = &v47[a14];
    v49 = &v47[a14 + a14];
    v50 = (v49 + a14);
    if (!a12)
    {
      v53 = (v49 + a14);
      goto LABEL_42;
    }

    if (v37 == a8[2])
    {
      v51 = a8[3] + 1;
      v52 = v47;
      v47 += a14;
      v48 = v49;
      v49 = (v49 + a14);
      do
      {
        v53 = v49;
        v49 = v48;
        v48 = v47;
        v47 = v52;
        v52 = a12;
        --v51;
      }

      while (v51);
    }

    else
    {
      v53 = (v49 + a14);
    }

    if (v37 == v39)
    {
      v54 = a8[7];
      switch(v54)
      {
        case 1u:
          goto LABEL_40;
        case 2u:
          goto LABEL_39;
        case 3u:
          v48 = a12;
LABEL_39:
          v49 = a12;
LABEL_40:
          v50 = a12;
          goto LABEL_42;
      }
    }

    v50 = v53;
LABEL_42:
    v55 = *a8;
    v56 = a8[1];
    if (!v56)
    {
      v83 = a8[4];
      v84 = result;
      goto LABEL_62;
    }

    v57 = result > v41 || v38;
    if (v57)
    {
      return result;
    }

    v20.i32[0] = 0;
    v58 = *(result + v40);
    v59 = (result + v40 + v40);
    v60 = *(v59 + v40);
    v61 = vzip1q_s32(v46, *result);
    v62 = vzip2q_s32(v46, *result);
    v63 = vzip1q_s32(v46, v58);
    v64 = vzip2q_s32(v46, v58);
    v65 = vzip1q_s32(v46, *v59);
    v66 = vzip2q_s32(v46, *v59);
    v67 = vzip1q_s32(v46, v60);
    v68 = vzip2q_s32(v46, v60);
    if (a8[4] == v55)
    {
      v69 = 4 - a8[5];
    }

    else
    {
      v69 = 4;
    }

    v60.i32[0] = a8[1] & 2;
    v70 = vdupq_lane_s32(*&vceqq_s32(v60, v20), 0);
    v71 = vbslq_s8(v70, v68, v67);
    v20 = vbslq_s8(v70, v67, v68);
    v72 = vbslq_s8(v70, v66, v65);
    v73 = vbslq_s8(v70, v65, v66);
    v74 = vbslq_s8(v70, v64, v63);
    v75 = vbslq_s8(v70, v63, v64);
    v76 = vbslq_s8(v70, v62, v61);
    v77 = vbslq_s8(v70, v61, v62);
    if ((v56 & 2) != 0)
    {
      v69 -= 2;
    }

    if (v56)
    {
      v78 = vextq_s8(v76, v77, 8uLL).u64[0];
      v77 = vextq_s8(v77, v76, 8uLL);
      v79 = vextq_s8(v74, v75, 8uLL).u64[0];
      v75 = vextq_s8(v75, v74, 8uLL);
      v80 = vextq_s8(v72, v73, 8uLL).u64[0];
      v73 = vextq_s8(v73, v72, 8uLL);
      v81 = vextq_s8(v71, v20, 8uLL);
      --v69;
      v20 = vextq_s8(v20, v71, 8uLL);
      v76.i64[0] = v78;
      v74.i64[0] = v79;
      v72.i64[0] = v80;
      v71 = v81;
    }

    if (v69 <= 1)
    {
      v82 = 0;
    }

    else
    {
      *v47 = v77;
      *v48 = v75;
      v69 -= 2;
      v77.i64[0] = v76.i64[0];
      v75.i64[0] = v74.i64[0];
      *v49 = v73;
      v73.i64[0] = v72.i64[0];
      *v50 = v20;
      v20 = v71;
      v82 = 16;
    }

    if (v69 >= 1)
    {
      *&v47[v82] = v77.i64[0];
      *(v48->i64 + v82) = v75.i64[0];
      *(v49->i64 + v82) = v73.i64[0];
      *(v50->i64 + v82) = v20.i64[0];
      v82 |= 8uLL;
    }

    v83 = a8[4];
    if (v83 != v55)
    {
      break;
    }

LABEL_125:
    v47 = &v53->i8[a14];
    result = (result + v44);
    v39 = a8[6];
    if (v37++ >= v39)
    {
      return result;
    }
  }

  v84 = result + 1;
  v47 += v82;
  v48 = (v48 + v82);
  v49 = (v49 + v82);
  v50 = (v50 + v82);
  ++v55;
LABEL_62:
  v85 = a8[5];
  v86 = v85 != 0;
  if (v83 == 0 && v86 || (v87 = v83 - v86, v55 > v87))
  {
    v95 = v47;
    v96 = v48;
    v97 = v49;
    v98 = v50;
    if (v85)
    {
LABEL_87:
      if (v37 == a8[6])
      {
        v99 = 4 - a8[7];
      }

      else
      {
        v99 = 4;
      }

      v100 = v84 > v41 || v38;
      if (v100)
      {
        return result;
      }

      if (v99 < 2)
      {
        v102 = 0;
        v101 = v84;
        v103 = v84;
      }

      else
      {
        v101 = (v84->i64 + v40);
        if (v99 == 2)
        {
          v102 = 0;
          v103 = (v84->i64 + v40);
        }

        else
        {
          v103 = (v84->i64 + v40);
          v101 = (v101 + v40);
          if (v99 <= 3)
          {
            v102 = 0;
          }

          else
          {
            v102 = v40;
          }
        }
      }

      v104 = 4 - v85;
      v105 = (v101 + v102);
      v106 = 0uLL;
      v107 = 0uLL;
      v20 = 0uLL;
      v108 = 0uLL;
      if ((4 - v85))
      {
        v109 = 3 - v85;
        v108.i32[0] = v84->i32[v109];
        v106.i32[0] = *(v103 + v109);
        v107.i32[0] = *(v101 + v109);
        v20.i32[0] = *(v105 + v109);
      }

      if ((v104 & 2) != 0)
      {
        v110.i64[0] = v84->i64[0];
        v110.i64[1] = v108.i64[0];
        v111.i64[0] = *v103;
        v111.i64[1] = v106.i64[0];
        v112.i64[0] = *v101;
        v112.i64[1] = v107.i64[0];
        v113.i64[0] = *v105;
        v113.i64[1] = v20.i64[0];
        v106 = v111;
        v107 = v112;
        v20 = v113;
        v108 = v110;
      }

      if ((v95 < a10 || v95 >= v42) && (v95 < a12 || v95 >= v43) || (v96 < a10 || v96 >= v42) && (v96 < a12 || v96 >= v43) || (v97 < a10 || v97 >= v42) && (v97 < a12 || v97 >= v43) || (v98 < a10 || v98 >= v42) && (v98 < a12 || v98 >= v43))
      {
LABEL_128:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v114 = vzip1q_s32(v46, v108);
      v115 = vzip1q_s32(v46, v106);
      v116 = vzip1q_s32(v46, v107);
      v117 = vzip1q_s32(v46, v20);
      if ((v104 & 2) != 0)
      {
        *v95 = v114;
        *v96 = v115;
        *v97 = v116;
        *v98 = v117;
        if (v104)
        {
          v95[1].i64[0] = vzip2q_s32(v46, v108).u64[0];
          v96[1].i64[0] = vzip2q_s32(v46, v106).u64[0];
          v20 = vzip2q_s32(v46, v20);
          v97[1].i64[0] = vzip2q_s32(v46, v107).u64[0];
          v98[1].i64[0] = v20.i64[0];
        }
      }

      else
      {
        v95->i64[0] = v114.i64[0];
        v96->i64[0] = v115.i64[0];
        v97->i64[0] = v116.i64[0];
        v98->i64[0] = v117.i64[0];
      }
    }

    goto LABEL_125;
  }

  if (!v38)
  {
    v88 = v87 - v55 + 1;
    while (v84 <= v41)
    {
      v89 = *v84;
      v90 = *(v84 + v40);
      v91 = (v84 + v40 + v40);
      v92 = *v91;
      v93 = *(v91 + v40);
      if ((v47 < a10 || v47 >= v42) && (v47 < a12 || v47 >= v43) || (v48 < a10 || v48 >= v42) && (v48 < a12 || v48 >= v43) || (v49 < a10 || v49 >= v42) && (v49 < a12 || v49 >= v43) || (v50 < a10 || v50 >= v42) && (v50 < a12 || v50 >= v43))
      {
        goto LABEL_128;
      }

      *v47 = vzip1q_s32(v46, v89);
      *(v47 + 1) = vzip2q_s32(v46, v89);
      v94 = vzip2q_s32(v46, v92);
      v20 = vzip1q_s32(v46, v92);
      ++v84;
      v95 = (v47 + 32);
      *v48 = vzip1q_s32(v46, v90);
      v48[1] = vzip2q_s32(v46, v90);
      v96 = &v48[2];
      v97 = v49 + 2;
      *v49 = v20;
      v49[1] = v94;
      v98 = v50 + 2;
      *v50 = vzip1q_s32(v46, v93);
      v50[1] = vzip2q_s32(v46, v93);
      v50 += 2;
      v49 += 2;
      v48 += 2;
      v47 += 32;
      if (!--v88)
      {
        v85 = a8[5];
        if (v85)
        {
          goto LABEL_87;
        }

        goto LABEL_125;
      }
    }
  }

  return result;
}

unsigned __int16 *ExtractInterleaved2_B44<unsigned short,(StreamType)1,(StreamType)1>(unsigned __int16 *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!result)
  {
    return result;
  }

  if (*(a7 + 8) >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = *(a7 + 8);
  }

  v15 = *(a7 + 24);
  v16 = *(a7 + 60);
  v17 = *(a3 + 8);
  v18 = *(*&v17[5] + 8 * v16);
  v19 = v18[2];
  v20 = vmin_u32(vmls_s32(v19, v17[6], v15), v17[6]).u32[0];
  v21 = (v20 + 3) >> 2;
  v22 = *(a4 + 8);
  v23 = *(*&v22[5] + 8 * v16);
  if (v20 > 0xFFFFFFFC)
  {
    v21 = 0x40000000;
  }

  v24 = v23[2];
  v25 = vmin_u32(vmls_s32(v24, v22[6], v15), v22[6]).u32[0];
  v26 = v25 <= 0xFFFFFFFC ? (v25 + 3) >> 2 : 0x40000000;
  if (v14 < 0xE)
  {
    return result;
  }

  v27 = (v15.i32[1] * *(a9 + 60));
  v28 = v18[1].u32[1] - 1;
  if (v28 >= v27)
  {
    v28 = (v15.i32[1] * *(a9 + 60));
  }

  v29 = &v18[v15.u32[0]];
  if (v17[13].i32[0] == 1)
  {
    v30 = (*&v29[3] + 8 * v28);
  }

  else
  {
    v31 = (v28 * v17[13].u32[1]) >> v17[14].i32[0];
    if (v31 >= v19.i32[1] - 1)
    {
      LODWORD(v31) = v19.i32[1] - 1;
    }

    v30 = (*&v29[3] + 8 * v31);
  }

  v32 = v23[1].u32[1] - 1;
  if (v32 >= v27)
  {
    v32 = (v15.i32[1] * *(a9 + 60));
  }

  v33 = &v23[v15.u32[0]];
  if (v22[13].i32[0] == 1)
  {
    v34 = (*&v33[3] + 8 * v32);
  }

  else
  {
    v35 = (v32 * v22[13].u32[1]) >> v22[14].i32[0];
    if (v35 >= v24.i32[1] - 1)
    {
      LODWORD(v35) = v24.i32[1] - 1;
    }

    v34 = (*&v33[3] + 8 * v35);
  }

  v36 = a8[2];
  v37 = a8[6];
  if (v36 > v37)
  {
    return result;
  }

  v38 = result + v14 - 14;
  v39 = 14 * v26;
  v40 = a10 + a11;
  v41 = a12 + a13;
  v42 = 14 * *a8;
  v159 = 14 * v21;
  v43 = (result + *v30 + v42 + v159 * v36);
  result = (result + v42 + *v34 + v39 * v36);
  v44.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v44.i64[1] = 0xE0E0E0E0E0E0E0E0;
  v45 = a10;
  while (1)
  {
    v46 = v45 + a14;
    v47 = v45 + a14 + a14;
    v48 = v47 + a14;
    if (!a12)
    {
      v51 = v47 + a14;
      goto LABEL_43;
    }

    if (v36 == a8[2])
    {
      v49 = a8[3] + 1;
      v50 = v45;
      v45 += a14;
      v46 = v47;
      v47 += a14;
      do
      {
        v51 = v47;
        v47 = v46;
        v46 = v45;
        v45 = v50;
        v50 = a12;
        --v49;
      }

      while (v49);
    }

    else
    {
      v51 = v47 + a14;
    }

    if (v36 == v37)
    {
      v52 = a8[7];
      switch(v52)
      {
        case 1u:
          goto LABEL_41;
        case 2u:
          goto LABEL_40;
        case 3u:
          v46 = a12;
LABEL_40:
          v47 = a12;
LABEL_41:
          v48 = a12;
          goto LABEL_43;
      }
    }

    v48 = v51;
LABEL_43:
    v54 = *a8;
    v53 = a8[1];
    if (!v53)
    {
      v89 = a8[4];
      v90 = v43;
      v91 = result;
      goto LABEL_65;
    }

    if (v43 > v38 || result > v38)
    {
      return result;
    }

    v55.i64[0] = *(v43 + 1);
    v55.i64[1] = *(v43 + 3);
    v56 = vqtbl1q_s8(v55, xmmword_296B6EDE0);
    v57 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v56, 8uLL), xmmword_296B6EE00), vshlq_u8(v56, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v58 = vaddq_s8(v57, v44);
    v57.i8[1] = 0;
    v59 = vqtbl1q_s8(v58, xmmword_296B6EE20);
    v60 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v59, xmmword_296B6EE30), v59), vqtbl1q_s8(v59, xmmword_296B6EE40));
    v61 = vdupq_lane_s16(*v57.i8, 0);
    v62 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v60.i8), xmmword_296B6EE50), *v60.i8), v61);
    v63 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v60), xmmword_296B6EE50), v60), v61);
    v64 = vdupq_n_s16(bswap32(*v43) >> 16);
    v65 = vaddq_s16(v63, v64);
    v66 = vaddq_s16(v62, v64);
    v67 = veorq_s8((*&v65 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v65));
    v68 = veorq_s8((*&v66 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v66));
    if (a5)
    {
      v68.i64[0] = (*(a5 + ((v68.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v68.u16[2]) << 32) | (*(a5 + 2 * v68.u16[1]) << 16) | *(a5 + 2 * v68.u16[0]);
      v68.i64[1] = (*(a5 + ((v68.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v68.u16[6]) << 32) | (*(a5 + 2 * v68.u16[5]) << 16) | *(a5 + 2 * v68.u16[4]);
      v67.i64[0] = (*(a5 + ((v67.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v67.u16[2]) << 32) | (*(a5 + 2 * v67.u16[1]) << 16) | *(a5 + 2 * v67.u16[0]);
      v67.i64[1] = (*(a5 + ((v67.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v67.u16[6]) << 32) | (*(a5 + 2 * v67.u16[5]) << 16) | *(a5 + 2 * v67.u16[4]);
    }

    v69.i64[0] = *(result + 1);
    v69.i64[1] = *(result + 3);
    v70 = vqtbl1q_s8(v69, xmmword_296B6EDE0);
    v71 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v70, 8uLL), xmmword_296B6EE00), vshlq_u8(v70, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v72 = vaddq_s8(v71, v44);
    v71.i8[1] = 0;
    v73 = vqtbl1q_s8(v72, xmmword_296B6EE20);
    v74 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v73, xmmword_296B6EE30), v73), vqtbl1q_s8(v73, xmmword_296B6EE40));
    v75 = vdupq_lane_s16(*v71.i8, 0);
    v76 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v74.i8), xmmword_296B6EE50), *v74.i8), v75);
    v77 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v74), xmmword_296B6EE50), v74), v75);
    v78 = vdupq_n_s16(bswap32(*result) >> 16);
    v79 = vaddq_s16(v77, v78);
    v80 = vaddq_s16(v76, v78);
    v81 = veorq_s8((*&v79 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v79));
    v82 = veorq_s8((*&v80 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v80));
    if (a6)
    {
      v82.i64[0] = (*(a6 + ((v82.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v82.u16[2]) << 32) | (*(a6 + 2 * v82.u16[1]) << 16) | *(a6 + 2 * v82.u16[0]);
      v82.i64[1] = (*(a6 + ((v82.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v82.u16[6]) << 32) | (*(a6 + 2 * v82.u16[5]) << 16) | *(a6 + 2 * v82.u16[4]);
      v81.i64[0] = (*(a6 + ((v81.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v81.u16[2]) << 32) | (*(a6 + 2 * v81.u16[1]) << 16) | *(a6 + 2 * v81.u16[0]);
      v81.i64[1] = (*(a6 + ((v81.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v81.u16[6]) << 32) | (*(a6 + 2 * v81.u16[5]) << 16) | *(a6 + 2 * v81.u16[4]);
    }

    v83 = vzip2q_s16(v68, v82);
    v84 = vzip1q_s16(v68, v82);
    v85 = vzip2q_s16(v67, v81);
    v86 = vzip1q_s16(v67, v81);
    if (a8[4] == v54)
    {
      v87 = 4 - a8[5];
    }

    else
    {
      v87 = 4;
    }

    if ((v53 & 2) != 0)
    {
      v84 = vextq_s8(v84, v84, 8uLL);
      v83 = vextq_s8(v83, v83, 8uLL);
      v86 = vextq_s8(v86, v86, 8uLL);
      v87 -= 2;
      v85 = vextq_s8(v85, v85, 8uLL);
    }

    if (v53)
    {
      v84 = vextq_s8(v84, v84, 4uLL);
      v83 = vextq_s8(v83, v83, 4uLL);
      v86 = vextq_s8(v86, v86, 4uLL);
      --v87;
      v85 = vextq_s8(v85, v85, 4uLL);
    }

    if (v87 <= 1)
    {
      v88 = 0;
    }

    else
    {
      *v45 = v84.i64[0];
      *v46 = v83.i64[0];
      v84.i32[0] = vextq_s8(v84, v84, 8uLL).u32[0];
      v83.i32[0] = vextq_s8(v83, v83, 8uLL).u32[0];
      *v47 = v86.i64[0];
      v86.i32[0] = vextq_s8(v86, v86, 8uLL).u32[0];
      *v48 = v85.i64[0];
      v85.i32[0] = vextq_s8(v85, v85, 8uLL).u32[0];
      v87 -= 2;
      v88 = 8;
    }

    if (v87 >= 1)
    {
      *(v88 + v45) = v84.i32[0];
      *(v88 + v46) = v83.i32[0];
      *(v88 + v47) = v86.i32[0];
      v92 = (v88 + v48);
      *(v88 + v48 + 2) = v85.i16[1];
      v88 |= 4uLL;
      *v92 = v85.i16[0];
    }

    v89 = a8[4];
    if (v89 != v54)
    {
      break;
    }

LABEL_119:
    v45 = v51 + a14;
    result = (result + v39);
    v43 = (v43 + v159);
    v37 = a8[6];
    if (v36++ >= v37)
    {
      return result;
    }
  }

  v90 = v43 + 7;
  v91 = result + 7;
  v45 += v88;
  v46 += v88;
  v47 += v88;
  v48 += v88;
  ++v54;
LABEL_65:
  v93 = a8[5];
  v94 = v93 != 0;
  if (v89 == 0 && v94 || (v95 = v89 - v94, v54 > v95))
  {
LABEL_92:
    if (v93)
    {
      if (v90 > v38 || v91 > v38)
      {
        return result;
      }

      v125.i64[0] = *(v90 + 1);
      v125.i64[1] = *(v90 + 3);
      v126 = vqtbl1q_s8(v125, xmmword_296B6EDE0);
      v127 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v126, 8uLL), xmmword_296B6EE00), vshlq_u8(v126, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v128 = vaddq_s8(v127, v44);
      v127.i8[1] = 0;
      v129 = vqtbl1q_s8(v128, xmmword_296B6EE20);
      v130 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v129, xmmword_296B6EE30), v129), vqtbl1q_s8(v129, xmmword_296B6EE40));
      v131 = vdupq_lane_s16(*v127.i8, 0);
      v132 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v130.i8), xmmword_296B6EE50), *v130.i8), v131);
      v133 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v130), xmmword_296B6EE50), v130), v131);
      v134 = vdupq_n_s16(bswap32(*v90) >> 16);
      v135 = vaddq_s16(v133, v134);
      v136 = vaddq_s16(v132, v134);
      v137 = veorq_s8((*&v135 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v135));
      v138 = veorq_s8((*&v136 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v136));
      if (a5)
      {
        v138.i64[0] = (*(a5 + ((v138.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v138.u16[2]) << 32) | (*(a5 + 2 * v138.u16[1]) << 16) | *(a5 + 2 * v138.u16[0]);
        v138.i64[1] = (*(a5 + ((v138.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v138.u16[6]) << 32) | (*(a5 + 2 * v138.u16[5]) << 16) | *(a5 + 2 * v138.u16[4]);
        v137.i64[0] = (*(a5 + ((v137.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v137.u16[2]) << 32) | (*(a5 + 2 * v137.u16[1]) << 16) | *(a5 + 2 * v137.u16[0]);
        v137.i64[1] = (*(a5 + ((v137.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v137.u16[6]) << 32) | (*(a5 + 2 * v137.u16[5]) << 16) | *(a5 + 2 * v137.u16[4]);
      }

      v139.i64[0] = *(v91 + 1);
      v139.i64[1] = *(v91 + 3);
      v140 = vqtbl1q_s8(v139, xmmword_296B6EDE0);
      v141 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v140, 8uLL), xmmword_296B6EE00), vshlq_u8(v140, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v142 = vaddq_s8(v141, v44);
      v141.i8[1] = 0;
      v143 = vqtbl1q_s8(v142, xmmword_296B6EE20);
      v144 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v143, xmmword_296B6EE30), v143), vqtbl1q_s8(v143, xmmword_296B6EE40));
      v145 = vdupq_lane_s16(*v141.i8, 0);
      v146 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v144.i8), xmmword_296B6EE50), *v144.i8), v145);
      v147 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v144), xmmword_296B6EE50), v144), v145);
      v148 = vdupq_n_s16(bswap32(*v91) >> 16);
      v149 = vaddq_s16(v147, v148);
      v150 = vaddq_s16(v146, v148);
      v151 = veorq_s8((*&v149 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v149));
      v152 = veorq_s8((*&v150 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v150));
      if (a6)
      {
        v152.i64[0] = (*(a6 + ((v152.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v152.u16[2]) << 32) | (*(a6 + 2 * v152.u16[1]) << 16) | *(a6 + 2 * v152.u16[0]);
        v152.i64[1] = (*(a6 + ((v152.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v152.u16[6]) << 32) | (*(a6 + 2 * v152.u16[5]) << 16) | *(a6 + 2 * v152.u16[4]);
        v151.i64[0] = (*(a6 + ((v151.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v151.u16[2]) << 32) | (*(a6 + 2 * v151.u16[1]) << 16) | *(a6 + 2 * v151.u16[0]);
        v151.i64[1] = (*(a6 + ((v151.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v151.u16[6]) << 32) | (*(a6 + 2 * v151.u16[5]) << 16) | *(a6 + 2 * v151.u16[4]);
      }

      if ((v45 < a10 || v45 >= v40) && (v45 < a12 || v45 >= v41) || (v46 < a10 || v46 >= v40) && (v46 < a12 || v46 >= v41) || (v47 < a10 || v47 >= v40) && (v47 < a12 || v47 >= v41) || (v48 < a10 || v48 >= v40) && (v48 < a12 || v48 >= v41))
      {
LABEL_122:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v153 = vzip2q_s16(v138, v152);
      v154 = vzip1q_s16(v138, v152);
      v155 = vzip2q_s16(v137, v151);
      v156 = vzip1q_s16(v137, v151);
      if (((4 - v93) & 2) != 0)
      {
        *v45 = v154.i64[0];
        *v46 = v153.i64[0];
        *v47 = v156.i64[0];
        *v48 = v155.i64[0];
        if ((4 - v93))
        {
          *(v45 + 8) = v154.i32[2];
          *(v46 + 8) = v153.i32[2];
          *(v47 + 8) = v156.i32[2];
          *(v48 + 8) = v155.i32[2];
        }
      }

      else
      {
        *v45 = v154.i32[0];
        *v46 = v153.i32[0];
        *v47 = v156.i32[0];
        *v48 = v155.i32[0];
      }
    }

    goto LABEL_119;
  }

  v96 = v95 - v54 + 1;
  while (v90 <= v38 && v91 <= v38)
  {
    v97.i64[0] = *(v90 + 1);
    v97.i64[1] = *(v90 + 3);
    v98 = vqtbl1q_s8(v97, xmmword_296B6EDE0);
    v99 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v98, 8uLL), xmmword_296B6EE00), vshlq_u8(v98, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v100 = vaddq_s8(v99, v44);
    v99.i8[1] = 0;
    v101 = vqtbl1q_s8(v100, xmmword_296B6EE20);
    v102 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v101, xmmword_296B6EE30), v101), vqtbl1q_s8(v101, xmmword_296B6EE40));
    v103 = vdupq_lane_s16(*v99.i8, 0);
    v104 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v102.i8), xmmword_296B6EE50), *v102.i8), v103);
    v105 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v102), xmmword_296B6EE50), v102), v103);
    v106 = vdupq_n_s16(bswap32(*v90) >> 16);
    v107 = vaddq_s16(v105, v106);
    v108 = vaddq_s16(v104, v106);
    v109 = veorq_s8((*&v107 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v107));
    v110 = veorq_s8((*&v108 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v108));
    if (a5)
    {
      v110.i64[0] = (*(a5 + ((v110.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v110.u16[2]) << 32) | (*(a5 + 2 * v110.u16[1]) << 16) | *(a5 + 2 * v110.u16[0]);
      v110.i64[1] = (*(a5 + ((v110.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v110.u16[6]) << 32) | (*(a5 + 2 * v110.u16[5]) << 16) | *(a5 + 2 * v110.u16[4]);
      v109.i64[0] = (*(a5 + ((v109.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v109.u16[2]) << 32) | (*(a5 + 2 * v109.u16[1]) << 16) | *(a5 + 2 * v109.u16[0]);
      v109.i64[1] = (*(a5 + ((v109.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a5 + 2 * v109.u16[6]) << 32) | (*(a5 + 2 * v109.u16[5]) << 16) | *(a5 + 2 * v109.u16[4]);
    }

    v111.i64[0] = *(v91 + 1);
    v111.i64[1] = *(v91 + 3);
    v112 = vqtbl1q_s8(v111, xmmword_296B6EDE0);
    v113 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v112, 8uLL), xmmword_296B6EE00), vshlq_u8(v112, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v114 = vaddq_s8(v113, v44);
    v113.i8[1] = 0;
    v115 = vqtbl1q_s8(v114, xmmword_296B6EE20);
    v116 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v115, xmmword_296B6EE30), v115), vqtbl1q_s8(v115, xmmword_296B6EE40));
    v117 = vdupq_lane_s16(*v113.i8, 0);
    v118 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v116.i8), xmmword_296B6EE50), *v116.i8), v117);
    v119 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v116), xmmword_296B6EE50), v116), v117);
    v120 = vdupq_n_s16(bswap32(*v91) >> 16);
    v121 = vaddq_s16(v119, v120);
    v122 = vaddq_s16(v118, v120);
    v123 = veorq_s8((*&v121 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v121));
    v124 = veorq_s8((*&v122 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v122));
    if (a6)
    {
      v124.i64[0] = (*(a6 + ((v124.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v124.u16[2]) << 32) | (*(a6 + 2 * v124.u16[1]) << 16) | *(a6 + 2 * v124.u16[0]);
      v124.i64[1] = (*(a6 + ((v124.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v124.u16[6]) << 32) | (*(a6 + 2 * v124.u16[5]) << 16) | *(a6 + 2 * v124.u16[4]);
      v123.i64[0] = (*(a6 + ((v123.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v123.u16[2]) << 32) | (*(a6 + 2 * v123.u16[1]) << 16) | *(a6 + 2 * v123.u16[0]);
      v123.i64[1] = (*(a6 + ((v123.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a6 + 2 * v123.u16[6]) << 32) | (*(a6 + 2 * v123.u16[5]) << 16) | *(a6 + 2 * v123.u16[4]);
    }

    if ((v45 < a10 || v45 >= v40) && (v45 < a12 || v45 >= v41) || (v46 < a10 || v46 >= v40) && (v46 < a12 || v46 >= v41) || (v47 < a10 || v47 >= v40) && (v47 < a12 || v47 >= v41) || (v48 < a10 || v48 >= v40) && (v48 < a12 || v48 >= v41))
    {
      goto LABEL_122;
    }

    v90 += 7;
    *v45 = vzip1q_s16(v110, v124);
    v45 += 16;
    *v46 = vzip2q_s16(v110, v124);
    v46 += 16;
    v91 += 7;
    *v47 = vzip1q_s16(v109, v123);
    v47 += 16;
    *v48 = vzip2q_s16(v109, v123);
    v48 += 16;
    if (!--v96)
    {
      v93 = a8[5];
      goto LABEL_92;
    }
  }

  return result;
}

int32x4_t *ExtractInterleaved2_B44<unsigned int,(StreamType)1,(StreamType)1>(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, int32x2_t *a8, unsigned int *a9, uint64_t a10, __int8 *a11, uint64_t a12, __int8 *a13, uint64_t a14, uint64_t a15)
{
  if (!result)
  {
    return result;
  }

  v15 = *&a8[1] >= a2 ? a2 : *&a8[1];
  v16 = a8[3];
  v17 = a8[7].u32[1];
  v18 = *(a3 + 8);
  v19 = *(*&v18[5] + 8 * v17);
  v20 = v19[2];
  v21 = vmin_u32(vmls_s32(v20, v18[6], v16), v18[6]).u32[0];
  v22 = *(a4 + 8);
  v23 = *(*&v22[5] + 8 * v17);
  a5.n128_u64[0] = *(v23 + 16);
  v24 = vmin_u32(vmls_s32(a5.n128_u64[0], v22[6], v16), v22[6]).u32[0];
  v25 = 12 * v21 + 16;
  v28 = v15 >= v25;
  v26 = v15 - v25;
  v27 = 12 * v24 + 16;
  v28 = v28 && v15 >= v27;
  if (!v28)
  {
    return result;
  }

  v29 = (v16.i32[1] * *(a10 + 60));
  v30 = v19[1].u32[1] - 1;
  if (v30 >= v29)
  {
    v30 = (v16.i32[1] * *(a10 + 60));
  }

  v31 = &v19[v16.u32[0]];
  if (v18[13].i32[0] == 1)
  {
    v32 = (*&v31[3] + 8 * v30);
  }

  else
  {
    v33 = (v30 * v18[13].u32[1]) >> v18[14].i32[0];
    if (v33 >= v20.i32[1] - 1)
    {
      LODWORD(v33) = v20.i32[1] - 1;
    }

    v32 = (*&v31[3] + 8 * v33);
  }

  v34 = *(v23 + 12) - 1;
  if (v34 >= v29)
  {
    v34 = (v16.i32[1] * *(a10 + 60));
  }

  v35 = v23 + 8 * v16.u32[0];
  if (v22[13].i32[0] == 1)
  {
    v36 = (*(v35 + 24) + 8 * v34);
  }

  else
  {
    v37 = (v34 * v22[13].u32[1]) >> v22[14].i32[0];
    if (v37 >= a5.n128_u32[1] - 1)
    {
      LODWORD(v37) = a5.n128_u32[1] - 1;
    }

    v36 = (*(v35 + 24) + 8 * v37);
  }

  v38 = a9[2];
  v39 = a9[6];
  if (v38 > v39)
  {
    return result;
  }

  v40 = 4 * v21;
  v41 = 4 * v24;
  v42 = (result + v15 - v27);
  v43 = (result + v26);
  v44 = &a11[a12];
  v45 = &a13[a14];
  v46 = 16 * v24;
  v47 = *a9;
  v48 = (&result[v47] + *v32 + 16 * v21 * v38);
  result = (result + 16 * v47 + *v36 + v46 * v38);
  v49 = a11;
  while (1)
  {
    v50 = &v49[a15];
    v51 = &v49[a15 + a15];
    v52 = &v51->i8[a15];
    if (!a13)
    {
      v55 = (v51 + a15);
      goto LABEL_41;
    }

    if (v38 == a9[2])
    {
      v53 = a9[3] + 1;
      v54 = v49;
      v49 += a15;
      v50 = v51;
      v51 = (v51 + a15);
      do
      {
        v55 = v51;
        v51 = v50;
        v50 = v49;
        v49 = v54;
        v54 = a13;
        --v53;
      }

      while (v53);
    }

    else
    {
      v55 = (v51 + a15);
    }

    if (v38 == v39)
    {
      v56 = a9[7];
      switch(v56)
      {
        case 1u:
          goto LABEL_39;
        case 2u:
          goto LABEL_38;
        case 3u:
          v50 = a13;
LABEL_38:
          v51 = a13;
LABEL_39:
          v52 = a13;
          goto LABEL_41;
      }
    }

    v52 = v55;
LABEL_41:
    v57 = *a9;
    v58 = a9[1];
    if (v58)
    {
      if (v48 > v43 || result > v42)
      {
        return result;
      }

      a5.n128_u32[0] = 0;
      v59 = *v48;
      v60 = *(v48 + 4 * v21);
      v61 = (v48 + v40 + v40);
      v62 = *(v61 + 4 * v21);
      v63 = *v61;
      v64 = *(result + v41);
      v65 = (result + v41 + v41);
      v66 = *(v65 + v41);
      v67 = vzip1q_s32(v60, v64);
      v68 = vzip2q_s32(v60, v64);
      v69 = vzip1q_s32(v63, *v65);
      v70 = vzip2q_s32(v63, *v65);
      v71 = vzip1q_s32(v62, v66);
      v72 = vzip2q_s32(v62, v66);
      v73 = vzip1q_s32(*v48, *result);
      v74 = vzip2q_s32(*v48, *result);
      if (a9[4] == v57)
      {
        v75 = 4 - a9[5];
      }

      else
      {
        v75 = 4;
      }

      v59.i32[0] = a9[1] & 2;
      v76 = vdupq_lane_s32(*&vceqq_s32(v59, a5), 0);
      v77 = vbslq_s8(v76, v72, v71);
      a5 = vbslq_s8(v76, v71, v72);
      v78 = v75 - 2;
      v79 = vbslq_s8(v76, v70, v69);
      v80 = vbslq_s8(v76, v69, v70);
      v81 = vbslq_s8(v76, v68, v67);
      v82 = vbslq_s8(v76, v67, v68);
      v83 = vbslq_s8(v76, v74, v73);
      v84 = vbslq_s8(v76, v73, v74);
      if ((v58 & 2) == 0)
      {
        v78 = v75;
      }

      if (v58)
      {
        v85 = vextq_s8(v83, v84, 8uLL).u64[0];
        v84 = vextq_s8(v84, v83, 8uLL);
        v86 = vextq_s8(v81, v82, 8uLL).u64[0];
        v82 = vextq_s8(v82, v81, 8uLL);
        v87 = vextq_s8(v79, v80, 8uLL).u64[0];
        v80 = vextq_s8(v80, v79, 8uLL);
        v88 = vextq_s8(v77, a5, 8uLL);
        --v78;
        a5 = vextq_s8(a5, v77, 8uLL);
        v83.i64[0] = v85;
        v81.i64[0] = v86;
        v79.i64[0] = v87;
        v77 = v88;
      }

      if (v78 <= 1)
      {
        v89 = 0;
      }

      else
      {
        *v49 = v84;
        *v50 = v82;
        v78 -= 2;
        v84.i64[0] = v83.i64[0];
        v82.i64[0] = v81.i64[0];
        *v51 = v80;
        v80.i64[0] = v79.i64[0];
        *v52 = a5;
        a5 = v77;
        v89 = 16;
      }

      if (v78 >= 1)
      {
        *&v49[v89] = v84.i64[0];
        *&v50[v89] = v82.i64[0];
        *(v51->i64 + v89) = v80.i64[0];
        *(v52->i64 + v89) = a5.n128_u64[0];
        v89 |= 8uLL;
      }

      v90 = a9[4];
      if (v90 == v57)
      {
        goto LABEL_131;
      }

      v91 = v48 + 1;
      v92 = result + 1;
      v49 += v89;
      v50 += v89;
      v51 = (v51 + v89);
      v52 = (v52 + v89);
      ++v57;
    }

    else
    {
      v90 = a9[4];
      v91 = v48;
      v92 = result;
    }

    v93 = a9[5];
    v94 = v93 != 0;
    if (v90 != 0 || !v94)
    {
      v95 = v90 - v94;
      if (v57 <= v95)
      {
        break;
      }
    }

    v114 = v49;
    v115 = v50;
    v116 = v51;
    v117 = v52;
    if (v93)
    {
LABEL_84:
      if (v38 == a9[6])
      {
        v118 = 4 - a9[7];
      }

      else
      {
        v118 = 4;
      }

      if (v91 > v43 || v92 > v42)
      {
        return result;
      }

      if (v118 < 2)
      {
        v120 = 0;
        v119 = v91;
        v121 = v91;
      }

      else
      {
        v119 = (v91->i64 + v40);
        if (v118 == 2)
        {
          v120 = 0;
          v121 = (v91->i64 + v40);
        }

        else
        {
          v121 = (v91->i64 + v40);
          v119 = (v119 + v40);
          if (v118 <= 3)
          {
            v120 = 0;
          }

          else
          {
            v120 = 4 * v21;
          }
        }
      }

      v122 = (v119 + v120);
      v123 = 0uLL;
      v124 = 0uLL;
      a5 = 0uLL;
      v125 = 0uLL;
      if ((4 - v93))
      {
        v125.i32[0] = v91->i32[3 - v93];
        v123.i32[0] = *(v121 + 3 - v93);
        v124.i32[0] = *(v119 + 3 - v93);
        a5.n128_u32[0] = *(v122 + 3 - v93);
      }

      if (((4 - v93) & 2) != 0)
      {
        v126.i64[0] = v91->i64[0];
        v126.i64[1] = v125.i64[0];
        v127.i64[0] = *v121;
        v127.i64[1] = v123.i64[0];
        v128.i64[0] = *v119;
        v128.i64[1] = v124.i64[0];
        v129.n128_u64[0] = *v122;
        v129.n128_u64[1] = a5.n128_u64[0];
        v123 = v127;
        v124 = v128;
        a5 = v129;
        v125 = v126;
      }

      if (v118 < 2)
      {
        v131 = 0;
        v130 = v92;
        v132 = v92;
      }

      else
      {
        v130 = (v92->i64 + v41);
        if (v118 == 2)
        {
          v131 = 0;
          v132 = (v92->i64 + v41);
        }

        else
        {
          v132 = (v92->i64 + v41);
          v130 = (v130 + v41);
          if (v118 <= 3)
          {
            v131 = 0;
          }

          else
          {
            v131 = v41;
          }
        }
      }

      v133 = (v130 + v131);
      v134 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      v137 = 0uLL;
      if ((4 - v93))
      {
        v137.i32[0] = v92->i32[3 - v93];
        v134.i32[0] = *(v132 + 3 - v93);
        v135.i32[0] = *(v130 + 3 - v93);
        v136.i32[0] = *(v133 + 3 - v93);
      }

      if (((4 - v93) & 2) != 0)
      {
        v138.i64[0] = v92->i64[0];
        v138.i64[1] = v137.i64[0];
        v139.i64[0] = *v132;
        v139.i64[1] = v134.i64[0];
        v140.i64[0] = *v130;
        v140.i64[1] = v135.i64[0];
        v141.i64[0] = *v133;
        v141.i64[1] = v136.i64[0];
        v134 = v139;
        v135 = v140;
        v136 = v141;
        v137 = v138;
      }

      if ((v114 < a11 || v114 >= v44) && (v114 < a13 || v114 >= v45) || (v115 < a11 || v115 >= v44) && (v115 < a13 || v115 >= v45) || (v116 < a11 || v116 >= v44) && (v116 < a13 || v116 >= v45) || (v117 < a11 || v117 >= v44) && (v117 < a13 || v117 >= v45))
      {
LABEL_134:
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      v142 = vzip1q_s32(v125, v137);
      v143 = vzip1q_s32(v123, v134);
      v144 = vzip1q_s32(v124, v135);
      v145 = vzip1q_s32(a5, v136);
      if (((4 - v93) & 2) != 0)
      {
        *v114 = v142;
        *v115 = v143;
        *v116 = v144;
        *v117 = v145;
        if ((4 - v93))
        {
          v114[1].i64[0] = vzip2q_s32(v125, v137).u64[0];
          v115[1].i64[0] = vzip2q_s32(v123, v134).u64[0];
          a5 = vzip2q_s32(a5, v136);
          v116[1].i64[0] = vzip2q_s32(v124, v135).u64[0];
          v117[1].i64[0] = a5.n128_u64[0];
        }
      }

      else
      {
        v114->i64[0] = v142.i64[0];
        v115->i64[0] = v143.i64[0];
        v116->i64[0] = v144.i64[0];
        v117->i64[0] = v145.i64[0];
      }
    }

LABEL_131:
    v49 = &v55->i8[a15];
    result = (result + v46);
    v48 += v21;
    v39 = a9[6];
    v28 = v38++ >= v39;
    if (v28)
    {
      return result;
    }
  }

  v96 = v95 - v57 + 1;
  while (v91 <= v43 && v92 <= v42)
  {
    v97 = *v91;
    v98 = *(v91 + v40);
    v99 = (v91 + v40 + v40);
    v100 = *v99;
    v101 = *(v99 + 4 * v21);
    v102 = *v92;
    v103 = *(v92 + v41);
    v104 = (v92 + v41 + v41);
    v105 = *v104;
    v106 = *(v104 + v41);
    if ((v49 < a11 || v49 >= v44) && (v49 < a13 || v49 >= v45) || (v50 < a11 || v50 >= v44) && (v50 < a13 || v50 >= v45) || (v51 < a11 || v51 >= v44) && (v51 < a13 || v51 >= v45) || (v52 < a11 || v52 >= v44) && (v52 < a13 || v52 >= v45))
    {
      goto LABEL_134;
    }

    v107 = vzip2q_s32(v98, v103);
    v108 = vzip1q_s32(v98, v103);
    v109 = vzip2q_s32(v101, v106);
    v110 = vzip1q_s32(v101, v106);
    v111 = vzip2q_s32(v97, v102);
    v112 = vzip1q_s32(v97, v102);
    v113 = vzip2q_s32(v100, v105);
    *v49 = v112;
    *(v49 + 1) = v111;
    a5 = vzip1q_s32(v100, v105);
    ++v92;
    ++v91;
    v114 = (v49 + 32);
    *v50 = v108;
    *(v50 + 1) = v107;
    v115 = (v50 + 32);
    v116 = &v51[2];
    *v51 = a5;
    v51[1] = v113;
    v117 = v52 + 2;
    *v52 = v110;
    v52[1] = v109;
    v52 += 2;
    v51 += 2;
    v50 += 32;
    v49 += 32;
    if (!--v96)
    {
      v93 = a9[5];
      if (v93)
      {
        goto LABEL_84;
      }

      goto LABEL_131;
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (result)
  {
    v21 = result;
    v22 = *(a11 + 8) >= a2 ? a2 : *(a11 + 8);
    AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v103, a3);
    AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v102, a4);
    AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v101, a5);
    result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v100, a6);
    v25 = *(a13 + 60);
    v26 = a3[1];
    if (v26)
    {
      v27 = *(a11 + 24);
      v28 = *(*(v26 + 40) + 8 * *(a11 + 60));
      v29 = *(v28 + 12) - 1;
      if (v29 >= (HIDWORD(v27) * v25))
      {
        v29 = (HIDWORD(*(a11 + 24)) * v25);
      }

      v30 = v28 + 8 * v27;
      if (*(v26 + 104) == 1)
      {
        v31 = (*(v30 + 24) + 8 * v29);
      }

      else
      {
        v33 = (v29 * *(v26 + 108)) >> *(v26 + 112);
        v34 = *(v28 + 20) - 1;
        if (v33 >= v34)
        {
          LODWORD(v33) = v34;
        }

        v31 = (*(v30 + 24) + 8 * v33);
      }

      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    v35 = a4[1];
    if (v35)
    {
      v36 = *(a11 + 24);
      v37 = *(*(v35 + 40) + 8 * *(a11 + 60));
      v38 = *(v37 + 12) - 1;
      if (v38 >= (HIDWORD(v36) * v25))
      {
        v38 = (HIDWORD(*(a11 + 24)) * v25);
      }

      v39 = v37 + 8 * v36;
      if (*(v35 + 104) == 1)
      {
        v40 = (*(v39 + 24) + 8 * v38);
      }

      else
      {
        v42 = (v38 * *(v35 + 108)) >> *(v35 + 112);
        v43 = *(v37 + 20) - 1;
        if (v42 >= v43)
        {
          LODWORD(v42) = v43;
        }

        v40 = (*(v39 + 24) + 8 * v42);
      }

      v41 = *v40;
    }

    else
    {
      v41 = 0;
    }

    v44 = a5[1];
    if (v44)
    {
      v45 = *(a11 + 24);
      v46 = *(*(v44 + 40) + 8 * *(a11 + 60));
      v47 = *(v46 + 12) - 1;
      if (v47 >= (HIDWORD(v45) * v25))
      {
        v47 = (HIDWORD(*(a11 + 24)) * v25);
      }

      v48 = v46 + 8 * v45;
      if (*(v44 + 104) == 1)
      {
        v49 = (*(v48 + 24) + 8 * v47);
      }

      else
      {
        v51 = (v47 * *(v44 + 108)) >> *(v44 + 112);
        v52 = *(v46 + 20) - 1;
        if (v51 >= v52)
        {
          LODWORD(v51) = v52;
        }

        v49 = (*(v48 + 24) + 8 * v51);
      }

      v50 = *v49;
    }

    else
    {
      v50 = 0;
    }

    v53 = a6[1];
    if (v53)
    {
      v54 = *(a11 + 24);
      v55 = (HIDWORD(v54) * v25);
      v56 = *(*(v53 + 40) + 8 * *(a11 + 60));
      v57 = *(v56 + 12) - 1;
      if (v57 >= v55)
      {
        v57 = v55;
      }

      v58 = v56 + 8 * v54;
      if (*(v53 + 104) == 1)
      {
        v59 = (*(v58 + 24) + 8 * v57);
      }

      else
      {
        v61 = (v57 * *(v53 + 108)) >> *(v53 + 112);
        v62 = *(v56 + 20) - 1;
        if (v61 < v62)
        {
          v62 = v61;
        }

        v59 = (*(v58 + 24) + 8 * v62);
      }

      v60 = *v59;
    }

    else
    {
      v60 = 0;
    }

    v63 = a12[2];
    v64 = a12[6];
    if (v63 <= v64)
    {
      v66 = v21 + v22;
      v67 = v21 + v60;
      v68 = v21 + v50;
      v69 = v21 + v41;
      v72 = v21 + v32 > v21 + v22 || v69 > v66 || v68 > v66 || v67 > v66;
      LOWORD(v74) = v103;
      v73.i16[0] = v103;
      v73.i16[1] = v102;
      v73.i16[2] = v101;
      v73.i16[3] = v100;
      v73.i16[4] = v103;
      v73.i16[5] = v102;
      v73.i16[6] = v101;
      v73.i16[7] = v100;
      WORD1(v74) = v102;
      v75 = v72;
      WORD2(v74) = v101;
      HIWORD(v74) = v100;
      while (1)
      {
        v76 = (a14 + a17);
        v77 = (a14 + a17 + a17);
        result = (v77->i16 + a17);
        if (!a16)
        {
          v80 = (v77->i16 + a17);
          goto LABEL_74;
        }

        if (v63 == a12[2])
        {
          v78 = a12[3] + 1;
          v79 = a14;
          a14 = (a14 + a17);
          v76 = v77;
          v77 = (v77 + a17);
          do
          {
            v80 = v77;
            v77 = v76;
            v76 = a14;
            a14 = v79;
            v79 = a16;
            --v78;
          }

          while (v78);
        }

        else
        {
          v80 = (v77->i16 + a17);
        }

        if (v63 == v64)
        {
          v81 = a12[7];
          if (v81 == 1)
          {
            goto LABEL_72;
          }

          if (v81 == 2)
          {
            goto LABEL_71;
          }

          if (v81 == 3)
          {
            break;
          }
        }

        result = v80;
LABEL_74:
        v82 = *a12;
        v83 = a12[1];
        if (!v83)
        {
          v94 = a12[4];
LABEL_91:
          v95 = a12[5];
          v96 = v95 != 0;
          if (v94 != 0 || !v96)
          {
            v97 = v94 - v96;
            if (v82 <= v97)
            {
              if (v75)
              {
                return result;
              }

              v98 = v97 - v82 + 1;
              do
              {
                *a14 = v73;
                a14[1] = v73;
                a14 += 2;
                *v76 = v73;
                v76[1] = v73;
                v76 += 2;
                *v77 = v73;
                v77[1] = v73;
                v77 += 2;
                *result = v73;
                *(result + 1) = v73;
                result += 16;
                --v98;
              }

              while (v98);
              v95 = a12[5];
            }
          }

          if (v95)
          {
            if (v75)
            {
              return result;
            }

            if (((4 - v95) & 2) != 0)
            {
              *a14 = v73;
              *v76 = v73;
              *v77 = v73;
              *result = v73;
              if ((4 - v95))
              {
                a14[1].i64[0] = v74;
                v76[1].i64[0] = v74;
                v77[1].i64[0] = v74;
                *(result + 2) = v74;
              }
            }

            else
            {
              a14->i64[0] = v74;
              v76->i64[0] = v74;
              v77->i64[0] = v74;
              *result = v74;
            }
          }

          goto LABEL_103;
        }

        if (v75)
        {
          return result;
        }

        v23.i32[0] = 0;
        if (a12[4] == v82)
        {
          v84 = 4 - a12[5];
        }

        else
        {
          v84 = 4;
        }

        v24.i32[0] = a12[1] & 2;
        v23 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v24, v23), 0), v73, v73);
        v85 = v23.i64[0];
        v86 = v23;
        v87 = v23.i64[0];
        v88 = v23;
        v89 = v23;
        v24 = v23;
        v90 = v23;
        if ((v83 & 2) != 0)
        {
          v84 -= 2;
        }

        if (v83)
        {
          v91 = vextq_s8(v23, v23, 8uLL).u64[0];
          v88 = vextq_s8(v23, v23, 8uLL);
          v86 = v88;
          v23 = v88;
          v92 = vextq_s8(v90, v24, 8uLL);
          --v84;
          v24 = vextq_s8(v24, v90, 8uLL);
          v87 = v91;
          v85 = v91;
          v89 = v88;
          v90 = v92;
        }

        if (v84 <= 1)
        {
          v93 = 0;
        }

        else
        {
          *a14 = v88;
          *v76 = v86;
          v84 -= 2;
          v88.i64[0] = v87;
          v86.i64[0] = v85;
          *v77 = v23;
          v23 = v89;
          *result = v24;
          v24 = v90;
          v93 = 16;
        }

        if (v84 >= 1)
        {
          *(a14->i64 + v93) = v88.i64[0];
          *(v76->i64 + v93) = v86.i64[0];
          *(v77->i64 + v93) = v23.i64[0];
          *(result + v93) = v24.i64[0];
          v93 |= 8uLL;
        }

        v94 = a12[4];
        if (v94 != v82)
        {
          a14 = (a14 + v93);
          v76 = (v76 + v93);
          v77 = (v77 + v93);
          result = (result + v93);
          ++v82;
          goto LABEL_91;
        }

LABEL_103:
        a14 = (v80 + a17);
        v64 = a12[6];
        if (v63++ >= v64)
        {
          return result;
        }
      }

      v76 = a16;
LABEL_71:
      v77 = a16;
LABEL_72:
      result = a16;
      goto LABEL_74;
    }
  }

  return result;
}

_OWORD *ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(_OWORD *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, _OWORD *a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  if (result)
  {
    v21 = result;
    v22 = *(a11 + 8) >= a2 ? a2 : *(a11 + 8);
    AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v101, a3);
    AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v100, a4);
    AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v99, a5);
    result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v98, a6);
    v26 = *(a13 + 60);
    v27 = a3[1];
    if (v27)
    {
      v28 = *(a11 + 24);
      v29 = *(*(v27 + 40) + 8 * *(a11 + 60));
      v30 = *(v29 + 12) - 1;
      if (v30 >= (HIDWORD(v28) * v26))
      {
        v30 = (HIDWORD(*(a11 + 24)) * v26);
      }

      v31 = v29 + 8 * v28;
      if (*(v27 + 104) == 1)
      {
        v32 = (*(v31 + 24) + 8 * v30);
      }

      else
      {
        v34 = (v30 * *(v27 + 108)) >> *(v27 + 112);
        v35 = *(v29 + 20) - 1;
        if (v34 >= v35)
        {
          LODWORD(v34) = v35;
        }

        v32 = (*(v31 + 24) + 8 * v34);
      }

      v33 = *v32;
    }

    else
    {
      v33 = 0;
    }

    v36 = a4[1];
    if (v36)
    {
      v37 = *(a11 + 24);
      v38 = *(*(v36 + 40) + 8 * *(a11 + 60));
      v39 = *(v38 + 12) - 1;
      if (v39 >= (HIDWORD(v37) * v26))
      {
        v39 = (HIDWORD(*(a11 + 24)) * v26);
      }

      v40 = v38 + 8 * v37;
      if (*(v36 + 104) == 1)
      {
        v41 = (*(v40 + 24) + 8 * v39);
      }

      else
      {
        v43 = (v39 * *(v36 + 108)) >> *(v36 + 112);
        v44 = *(v38 + 20) - 1;
        if (v43 >= v44)
        {
          LODWORD(v43) = v44;
        }

        v41 = (*(v40 + 24) + 8 * v43);
      }

      v42 = *v41;
    }

    else
    {
      v42 = 0;
    }

    v45 = a5[1];
    if (v45)
    {
      v46 = *(a11 + 24);
      v47 = *(*(v45 + 40) + 8 * *(a11 + 60));
      v48 = *(v47 + 12) - 1;
      if (v48 >= (HIDWORD(v46) * v26))
      {
        v48 = (HIDWORD(*(a11 + 24)) * v26);
      }

      v49 = v47 + 8 * v46;
      if (*(v45 + 104) == 1)
      {
        v50 = (*(v49 + 24) + 8 * v48);
      }

      else
      {
        v52 = (v48 * *(v45 + 108)) >> *(v45 + 112);
        v53 = *(v47 + 20) - 1;
        if (v52 >= v53)
        {
          LODWORD(v52) = v53;
        }

        v50 = (*(v49 + 24) + 8 * v52);
      }

      v51 = *v50;
    }

    else
    {
      v51 = 0;
    }

    v54 = a6[1];
    if (v54)
    {
      v55 = *(a11 + 24);
      v56 = (HIDWORD(v55) * v26);
      v57 = *(*(v54 + 40) + 8 * *(a11 + 60));
      v58 = *(v57 + 12) - 1;
      if (v58 >= v56)
      {
        v58 = v56;
      }

      v59 = v57 + 8 * v55;
      if (*(v54 + 104) == 1)
      {
        v60 = (*(v59 + 24) + 8 * v58);
      }

      else
      {
        v62 = (v58 * *(v54 + 108)) >> *(v54 + 112);
        v63 = *(v57 + 20) - 1;
        if (v62 < v63)
        {
          v63 = v62;
        }

        v60 = (*(v59 + 24) + 8 * v63);
      }

      v61 = *v60;
    }

    else
    {
      v61 = 0;
    }

    v64 = a12[2];
    v65 = a12[6];
    if (v64 <= v65)
    {
      v67 = v21 + v22;
      v68 = v21 + v61;
      v69 = v21 + v51;
      v70 = v21 + v42;
      v74 = v21 + v33 > v21 + v22 || v70 > v67 || v69 > v67 || v68 > v67;
      v75.i64[0] = __PAIR64__(v100, v101);
      v75.i64[1] = __PAIR64__(v98, v99);
      while (1)
      {
        v76 = (a14 + a17);
        v77 = (a14 + a17 + a17);
        result = (v77 + a17);
        if (!a16)
        {
          v80 = (v77 + a17);
          goto LABEL_74;
        }

        if (v64 == a12[2])
        {
          v78 = a12[3] + 1;
          v79 = a14;
          a14 = (a14 + a17);
          v76 = v77;
          v77 = (v77 + a17);
          do
          {
            v80 = v77;
            v77 = v76;
            v76 = a14;
            a14 = v79;
            v79 = a16;
            --v78;
          }

          while (v78);
        }

        else
        {
          v80 = (v77 + a17);
        }

        if (v64 == v65)
        {
          v81 = a12[7];
          if (v81 == 1)
          {
            goto LABEL_72;
          }

          if (v81 == 2)
          {
            goto LABEL_71;
          }

          if (v81 == 3)
          {
            break;
          }
        }

        result = v80;
LABEL_74:
        v82 = *a12;
        v83 = a12[1];
        if (!v83)
        {
          v92 = a12[4];
LABEL_89:
          v93 = a12[5];
          v94 = v93 != 0;
          if (v92 != 0 || !v94)
          {
            v95 = v92 - v94;
            if (v82 <= v95)
            {
              if (v74)
              {
                return result;
              }

              v96 = v95 - v82 + 1;
              do
              {
                *a14 = v75;
                a14[1] = v75;
                a14[2] = v75;
                a14[3] = v75;
                a14 += 4;
                *v76 = v75;
                v76[1] = v75;
                v76[2] = v75;
                v76[3] = v75;
                v76 += 4;
                *v77 = v75;
                v77[1] = v75;
                v77[2] = v75;
                v77[3] = v75;
                v77 += 4;
                result[2] = v75;
                result[3] = v75;
                *result = v75;
                result[1] = v75;
                result += 4;
                --v96;
              }

              while (v96);
              v93 = a12[5];
            }
          }

          if (v93)
          {
            if (v74)
            {
              return result;
            }

            if (((4 - v93) & 2) != 0)
            {
              *a14 = v75;
              a14[1] = v75;
              *v76 = v75;
              v76[1] = v75;
              *v77 = v75;
              v77[1] = v75;
              *result = v75;
              result[1] = v75;
              if ((4 - v93))
              {
                a14[2] = v75;
                v76[2] = v75;
                v77[2] = v75;
                result[2] = v75;
              }
            }

            else
            {
              *a14 = v75;
              *v76 = v75;
              *v77 = v75;
              *result = v75;
            }
          }

          goto LABEL_101;
        }

        if (v74)
        {
          return result;
        }

        v23.i32[0] = 0;
        if (a12[4] == v82)
        {
          v84 = 4 - a12[5];
        }

        else
        {
          v84 = 4;
        }

        v24.i32[0] = a12[1] & 2;
        v85 = vdupq_lane_s32(*&vceqq_s32(v24, v23), 0);
        if ((v83 & 2) != 0)
        {
          v84 -= 2;
        }

        v86 = v83 & 1;
        v87 = v84 - v86;
        v25.i32[0] = v86;
        v88 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v25, v23)), 0);
        v89 = vbslq_s8(v85, v75, v75);
        v23 = vbslq_s8(v88, v89, v89);
        v90 = v23;
        v24 = v23;
        v25 = v23;
        if (v84 - v86 <= 1)
        {
          v91 = 0;
        }

        else
        {
          *a14 = v23;
          a14[1] = v23;
          *v76 = v23;
          v76[1] = v23;
          *v77 = v23;
          v77[1] = v23;
          v90 = v23;
          v24 = v23;
          *result = v23;
          v25 = vbslq_s8(v88, v89, v89);
          v87 -= 2;
          result[1] = v25;
          v91 = 32;
        }

        if (v87 >= 1)
        {
          *(a14 + v91) = v23;
          *(v76 + v91) = v90;
          *(v77 + v91) = v24;
          *(result + v91) = v25;
          v91 |= 0x10uLL;
        }

        v92 = a12[4];
        if (v92 != v82)
        {
          a14 = (a14 + v91);
          v76 = (v76 + v91);
          v77 = (v77 + v91);
          result = (result + v91);
          ++v82;
          goto LABEL_89;
        }

LABEL_101:
        a14 = (v80 + a17);
        v65 = a12[6];
        if (v64++ >= v65)
        {
          return result;
        }
      }

      v76 = a16;
LABEL_71:
      v77 = a16;
LABEL_72:
      result = a16;
      goto LABEL_74;
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = *&a11[1] >= a2 ? a2 : *&a11[1];
  v24 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  v25 = v24 <= 0xFFFFFFFC ? (v24 + 3) >> 2 : 0x40000000;
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v182, a4);
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v181, a5);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v180, a6);
  if (v23 < 0xE)
  {
    return result;
  }

  v27 = *(a13 + 60);
  v28 = *(a3 + 8);
  if (v28)
  {
    v29 = a11[3];
    v30 = *(*(v28 + 40) + 8 * a11[7].u32[1]);
    v31 = *(v30 + 12) - 1;
    if (v31 >= (v29.i32[1] * v27))
    {
      v31 = (HIDWORD(*&a11[3]) * v27);
    }

    v32 = v30 + 8 * v29.u32[0];
    if (*(v28 + 104) == 1)
    {
      v33 = (*(v32 + 24) + 8 * v31);
    }

    else
    {
      v34 = (v31 * *(v28 + 108)) >> *(v28 + 112);
      v35 = *(v30 + 20) - 1;
      if (v34 >= v35)
      {
        LODWORD(v34) = v35;
      }

      v33 = (*(v32 + 24) + 8 * v34);
    }

    result = *v33;
  }

  else
  {
    result = 0;
  }

  v36 = a4[1];
  if (v36)
  {
    v37 = a11[3];
    v38 = *(*(v36 + 40) + 8 * a11[7].u32[1]);
    v39 = *(v38 + 12) - 1;
    if (v39 >= (v37.i32[1] * v27))
    {
      v39 = (HIDWORD(*&a11[3]) * v27);
    }

    v40 = v38 + 8 * v37.u32[0];
    if (*(v36 + 104) == 1)
    {
      v41 = (*(v40 + 24) + 8 * v39);
    }

    else
    {
      v43 = (v39 * *(v36 + 108)) >> *(v36 + 112);
      v44 = *(v38 + 20) - 1;
      if (v43 >= v44)
      {
        LODWORD(v43) = v44;
      }

      v41 = (*(v40 + 24) + 8 * v43);
    }

    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v45 = a5[1];
  if (v45)
  {
    v46 = a11[3];
    v47 = *(*(v45 + 40) + 8 * a11[7].u32[1]);
    v48 = *(v47 + 12) - 1;
    if (v48 >= (v46.i32[1] * v27))
    {
      v48 = (HIDWORD(*&a11[3]) * v27);
    }

    v49 = v47 + 8 * v46.u32[0];
    if (*(v45 + 104) == 1)
    {
      v50 = (*(v49 + 24) + 8 * v48);
    }

    else
    {
      v51 = (v48 * *(v45 + 108)) >> *(v45 + 112);
      v52 = *(v47 + 20) - 1;
      if (v51 >= v52)
      {
        LODWORD(v51) = v52;
      }

      v50 = (*(v49 + 24) + 8 * v51);
    }

    v45 = *v50;
  }

  v53 = v22 + v23 - 14;
  v54 = a6[1];
  if (v54)
  {
    v55 = a11[3];
    v56 = (v55.i32[1] * v27);
    v57 = *(*(v54 + 40) + 8 * a11[7].u32[1]);
    v58 = *(v57 + 12) - 1;
    if (v58 >= v56)
    {
      v58 = v56;
    }

    v59 = v57 + 8 * v55.u32[0];
    if (*(v54 + 104) == 1)
    {
      v60 = (*(v59 + 24) + 8 * v58);
    }

    else
    {
      v62 = (v58 * *(v54 + 108)) >> *(v54 + 112);
      v63 = *(v57 + 20) - 1;
      if (v62 < v63)
      {
        v63 = v62;
      }

      v60 = (*(v59 + 24) + 8 * v63);
    }

    v61 = *v60;
  }

  else
  {
    v61 = 0;
  }

  v64 = v22 + v42;
  v65 = v22 + v61;
  v66 = a12[2];
  v67 = v65 > v53;
  v68 = v22 + v45 > v53;
  v69 = v68;
  v70 = v68 || v67;
  v68 = v64 > v53;
  v71 = v64 > v53;
  if (v68)
  {
    v70 = 1;
  }

  v72 = a12[6];
  if (v66 > v72)
  {
    return result;
  }

  v74 = &v181;
  v75 = vld1q_dup_s16(v74);
  v76 = &v180;
  v183.val[1] = vld1q_dup_s16(v76);
  v77 = 14 * v25;
  v78 = &v182;
  v183.val[0] = vld1q_dup_s16(v78);
  v79 = vqtbl2q_s8(v183, xmmword_296B6EDD0);
  result = (&v22[7 * *a12] + result + v77 * v66);
  v80.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v80.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v81 = (a14 + a17);
    v82 = (a14 + a17 + a17);
    v83 = (v82 + a17);
    if (!a16)
    {
      v86 = (v82 + a17);
      goto LABEL_72;
    }

    if (v66 == a12[2])
    {
      v84 = a12[3] + 1;
      v85 = a14;
      a14 = (a14 + a17);
      v81 = v82;
      v82 = (v82 + a17);
      do
      {
        v86 = v82;
        v82 = v81;
        v81 = a14;
        a14 = v85;
        v85 = a16;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = (v82 + a17);
    }

    if (v66 == v72)
    {
      v87 = a12[7];
      switch(v87)
      {
        case 1u:
          goto LABEL_70;
        case 2u:
          goto LABEL_69;
        case 3u:
          v81 = a16;
LABEL_69:
          v82 = a16;
LABEL_70:
          v83 = a16;
          goto LABEL_72;
      }
    }

    v83 = v86;
LABEL_72:
    v88 = *a12;
    v89 = a12[1];
    if (!v89)
    {
      v131 = a12[4];
      v132 = result;
      goto LABEL_94;
    }

    v90 = result > v53 || v71;
    if ((v90 | (v69 || v67)))
    {
      return result;
    }

    v91.i64[0] = *(result + 1);
    v91.i64[1] = *(result + 3);
    v92 = vqtbl1q_s8(v91, xmmword_296B6EDE0);
    v93 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v92, 8uLL), xmmword_296B6EE00), vshlq_u8(v92, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v94 = vaddq_s8(v93, v80);
    v93.i8[1] = 0;
    v95 = vqtbl1q_s8(v94, xmmword_296B6EE20);
    v96 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v95, xmmword_296B6EE30), v95), vqtbl1q_s8(v95, xmmword_296B6EE40));
    v97 = vdupq_lane_s16(*v93.i8, 0);
    v98 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v96.i8), xmmword_296B6EE50), *v96.i8), v97);
    v99 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v96), xmmword_296B6EE50), v96), v97);
    v100 = vdupq_n_s16(bswap32(*result) >> 16);
    v101 = vaddq_s16(v99, v100);
    v102 = vaddq_s16(v98, v100);
    v103 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
    v104 = veorq_s8((*&v102 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v102));
    if (a7)
    {
      v104.i64[0] = (*(a7 + ((v104.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v104.u16[2]) << 32) | (*(a7 + 2 * v104.u16[1]) << 16) | *(a7 + 2 * v104.u16[0]);
      v104.i64[1] = (*(a7 + ((v104.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v104.u16[6]) << 32) | (*(a7 + 2 * v104.u16[5]) << 16) | *(a7 + 2 * v104.u16[4]);
      v103.i64[0] = (*(a7 + ((v103.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v103.u16[2]) << 32) | (*(a7 + 2 * v103.u16[1]) << 16) | *(a7 + 2 * v103.u16[0]);
      v103.i64[1] = (*(a7 + ((v103.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v103.u16[6]) << 32) | (*(a7 + 2 * v103.u16[5]) << 16) | *(a7 + 2 * v103.u16[4]);
    }

    v26.i32[0] = 0;
    v105 = v75;
    v184.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EE70);
    v184.val[1] = v79;
    v106 = vqtbl2q_s8(v184, xmmword_296B6EE60);
    v184.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EE90);
    v184.val[1] = v79;
    v107 = vqtbl2q_s8(v184, xmmword_296B6EE80);
    v184.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EEA0);
    v184.val[1] = v79;
    v108 = vqtbl2q_s8(v184, xmmword_296B6EE60);
    v190.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EEB0);
    v190.val[1] = v79;
    v109 = vqtbl2q_s8(v190, xmmword_296B6EE80);
    v110 = v75;
    v184.val[0] = vqtbl2q_s8(*v104.i8, xmmword_296B6EE70);
    v184.val[1] = v79;
    v111 = vqtbl2q_s8(v184, xmmword_296B6EE60);
    v184.val[0] = vqtbl2q_s8(*v104.i8, xmmword_296B6EE90);
    v184.val[1] = v79;
    v112 = vqtbl2q_s8(v184, xmmword_296B6EE80);
    v184.val[0] = vqtbl2q_s8(*v104.i8, xmmword_296B6EEA0);
    v184.val[1] = v79;
    v113 = vqtbl2q_s8(v184, xmmword_296B6EE60);
    v114 = vqtbl2q_s8(*v104.i8, xmmword_296B6EEB0);
    v115 = v79;
    v116 = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80);
    if (a12[4] == v88)
    {
      v117 = 4 - a12[5];
    }

    else
    {
      v117 = 4;
    }

    v115.i32[0] = a12[1] & 2;
    v118 = vdupq_lane_s32(*&vceqq_s32(v115, v26), 0);
    v119 = vbslq_s8(v118, v116, v113);
    v120 = vbslq_s8(v118, v113, v116);
    v121 = vbslq_s8(v118, v112, v111);
    v122 = vbslq_s8(v118, v111, v112);
    v26 = vbslq_s8(v118, v109, v108);
    v123 = vbslq_s8(v118, v108, v109);
    v124 = vbslq_s8(v118, v107, v106);
    v125 = vbslq_s8(v118, v106, v107);
    if ((v89 & 2) != 0)
    {
      v117 -= 2;
    }

    if (v89)
    {
      v126 = vextq_s8(v121, v122, 8uLL).u64[0];
      v122 = vextq_s8(v122, v121, 8uLL);
      v127 = vextq_s8(v119, v120, 8uLL).u64[0];
      v120 = vextq_s8(v120, v119, 8uLL);
      v128 = vextq_s8(v124, v125, 8uLL).u64[0];
      v125 = vextq_s8(v125, v124, 8uLL);
      v129 = vextq_s8(v26, v123, 8uLL);
      --v117;
      v123 = vextq_s8(v123, v26, 8uLL);
      v121.i64[0] = v126;
      v119.i64[0] = v127;
      v124.i64[0] = v128;
      v26 = v129;
    }

    if (v117 <= 1)
    {
      v130 = 0;
    }

    else
    {
      *a14 = v122;
      *v81 = v120;
      v117 -= 2;
      v122.i64[0] = v121.i64[0];
      v120.i64[0] = v119.i64[0];
      *v82 = v125;
      v125.i64[0] = v124.i64[0];
      *v83 = v123;
      v123.i64[0] = v26.i64[0];
      v130 = 16;
    }

    if (v117 >= 1)
    {
      *(a14->i64 + v130) = v122.i64[0];
      *(v81->i64 + v130) = v120.i64[0];
      *(v82->i64 + v130) = v125.i64[0];
      *(v83->i64 + v130) = v123.i64[0];
      v130 |= 8uLL;
    }

    v131 = a12[4];
    if (v131 != v88)
    {
      break;
    }

LABEL_115:
    a14 = (v86 + a17);
    result = (result + v77);
    v72 = a12[6];
    if (v66++ >= v72)
    {
      return result;
    }
  }

  v132 = (result + 7);
  a14 = (a14 + v130);
  v81 = (v81 + v130);
  v82 = (v82 + v130);
  v83 = (v83 + v130);
  ++v88;
LABEL_94:
  v133 = a12[5];
  v134 = v133 != 0;
  if (v131 == 0 && v134 || (v135 = v131 - v134, v88 > v135))
  {
    v155 = a14;
    v156 = v81;
    v157 = v82;
    v158 = v83;
    if (v133)
    {
LABEL_105:
      v159 = v132 > v53 || v71;
      if ((v159 | (v69 || v67)))
      {
        return result;
      }

      v160.i64[0] = *(v132 + 1);
      v160.i64[1] = *(v132 + 3);
      v161 = vqtbl1q_s8(v160, xmmword_296B6EDE0);
      v162 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v161, 8uLL), xmmword_296B6EE00), vshlq_u8(v161, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v163 = vaddq_s8(v162, v80);
      v162.i8[1] = 0;
      v164 = vqtbl1q_s8(v163, xmmword_296B6EE20);
      v165 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v164, xmmword_296B6EE30), v164), vqtbl1q_s8(v164, xmmword_296B6EE40));
      v166 = vdupq_lane_s16(*v162.i8, 0);
      v167 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v165.i8), xmmword_296B6EE50), *v165.i8), v166);
      v168 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v165), xmmword_296B6EE50), v165), v166);
      v169 = vdupq_n_s16(bswap32(*v132) >> 16);
      v170 = vaddq_s16(v168, v169);
      v171 = vaddq_s16(v167, v169);
      v172 = veorq_s8((*&v170 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v170));
      v173 = veorq_s8((*&v171 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v171));
      if (a7)
      {
        v173.i64[0] = (*(a7 + ((v173.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v173.u16[2]) << 32) | (*(a7 + 2 * v173.u16[1]) << 16) | *(a7 + 2 * v173.u16[0]);
        v173.i64[1] = (*(a7 + ((v173.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v173.u16[6]) << 32) | (*(a7 + 2 * v173.u16[5]) << 16) | *(a7 + 2 * v173.u16[4]);
        v172.i64[0] = (*(a7 + ((v172.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v172.u16[2]) << 32) | (*(a7 + 2 * v172.u16[1]) << 16) | *(a7 + 2 * v172.u16[0]);
        v172.i64[1] = (*(a7 + ((v172.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v172.u16[6]) << 32) | (*(a7 + 2 * v172.u16[5]) << 16) | *(a7 + 2 * v172.u16[4]);
      }

      v174 = v75;
      v186.val[0] = vqtbl2q_s8(*v173.i8, xmmword_296B6EEA0);
      v186.val[1] = v79;
      v26 = vqtbl2q_s8(v186, xmmword_296B6EE60);
      v186.val[0] = vqtbl2q_s8(*v173.i8, xmmword_296B6EE70);
      v186.val[1] = v79;
      v175 = vqtbl2q_s8(v186, xmmword_296B6EE60);
      v176 = v75;
      v189.val[0] = vqtbl2q_s8(*v172.i8, xmmword_296B6EEA0);
      v189.val[1] = v79;
      v177 = vqtbl2q_s8(v189, xmmword_296B6EE60);
      v189.val[0] = vqtbl2q_s8(*v172.i8, xmmword_296B6EE70);
      v189.val[1] = v79;
      v178 = vqtbl2q_s8(v189, xmmword_296B6EE60);
      if (((4 - v133) & 2) != 0)
      {
        *v155 = v175;
        *v156 = v26;
        *v157 = v178;
        *v158 = v177;
        if ((4 - v133))
        {
          v187.val[0] = vqtbl2q_s8(*v173.i8, xmmword_296B6EEB0);
          v187.val[1] = v79;
          v26 = vqtbl2q_s8(v187, xmmword_296B6EE80);
          v193.val[0] = vqtbl2q_s8(*v173.i8, xmmword_296B6EE90);
          v193.val[1] = v79;
          v187.val[0] = vqtbl2q_s8(*v172.i8, xmmword_296B6EEB0);
          v187.val[1] = v79;
          v192.val[0] = vqtbl2q_s8(*v172.i8, xmmword_296B6EE90);
          v192.val[1] = v79;
          v155[1].i64[0] = vqtbl2q_s8(v193, xmmword_296B6EE80).u64[0];
          v156[1].i64[0] = v26.i64[0];
          v157[1].i64[0] = vqtbl2q_s8(v192, xmmword_296B6EE80).u64[0];
          v158[1].i64[0] = vqtbl2q_s8(v187, xmmword_296B6EE80).u64[0];
        }
      }

      else
      {
        v155->i64[0] = v175.i64[0];
        v156->i64[0] = v26.i64[0];
        v157->i64[0] = v178.i64[0];
        v158->i64[0] = v177.i64[0];
      }
    }

    goto LABEL_115;
  }

  if ((v70 & 1) == 0)
  {
    v136 = v135 - v88 + 1;
    while (v132 <= v53)
    {
      v137.i64[0] = *(v132 + 1);
      v137.i64[1] = *(v132 + 3);
      v138 = vqtbl1q_s8(v137, xmmword_296B6EDE0);
      v139 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v138, 8uLL), xmmword_296B6EE00), vshlq_u8(v138, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v140 = vaddq_s8(v139, v80);
      v139.i8[1] = 0;
      v141 = vqtbl1q_s8(v140, xmmword_296B6EE20);
      v142 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v141, xmmword_296B6EE30), v141), vqtbl1q_s8(v141, xmmword_296B6EE40));
      v143 = vdupq_lane_s16(*v139.i8, 0);
      v144 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v142.i8), xmmword_296B6EE50), *v142.i8), v143);
      v145 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v142), xmmword_296B6EE50), v142), v143);
      v146 = vdupq_n_s16(bswap32(*v132) >> 16);
      v147 = vaddq_s16(v145, v146);
      v148 = vaddq_s16(v144, v146);
      v149 = veorq_s8((*&v147 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v147));
      v150 = veorq_s8((*&v148 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v148));
      if (a7)
      {
        v150.i64[0] = (*(a7 + ((v150.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v150.u16[2]) << 32) | (*(a7 + 2 * v150.u16[1]) << 16) | *(a7 + 2 * v150.u16[0]);
        v150.i64[1] = (*(a7 + ((v150.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v150.u16[6]) << 32) | (*(a7 + 2 * v150.u16[5]) << 16) | *(a7 + 2 * v150.u16[4]);
        v149.i64[0] = (*(a7 + ((v149.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v149.u16[2]) << 32) | (*(a7 + 2 * v149.u16[1]) << 16) | *(a7 + 2 * v149.u16[0]);
        v149.i64[1] = (*(a7 + ((v149.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v149.u16[6]) << 32) | (*(a7 + 2 * v149.u16[5]) << 16) | *(a7 + 2 * v149.u16[4]);
      }

      v151 = vqtbl2q_s8(*(&v75 - 1), xmmword_296B6EEA0);
      v194.val[0] = vqtbl2q_s8(*(&v75 - 1), xmmword_296B6EEB0);
      v194.val[1] = v79;
      v194.val[0] = vqtbl2q_s8(v194, xmmword_296B6EE80);
      v185.val[0] = vqtbl2q_s8(*(&v75 - 1), xmmword_296B6EE70);
      v185.val[1] = v79;
      v26 = vqtbl2q_s8(v185, xmmword_296B6EE60);
      v185.val[0] = vqtbl2q_s8(*(&v75 - 1), xmmword_296B6EE90);
      v185.val[1] = v79;
      v185.val[0] = vqtbl2q_s8(v185, xmmword_296B6EE80);
      v152 = v75;
      v185.val[1] = vqtbl2q_s8(*v150.i8, xmmword_296B6EEA0);
      v153 = v79;
      v185.val[1] = vqtbl2q_s8(*(&v185 + 16), xmmword_296B6EE60);
      v188.val[0] = vqtbl2q_s8(*v150.i8, xmmword_296B6EE70);
      v188.val[1] = v79;
      v188.val[0] = vqtbl2q_s8(v188, xmmword_296B6EE60);
      v188.val[1] = vqtbl2q_s8(*v150.i8, xmmword_296B6EEB0);
      v191.val[0] = vqtbl2q_s8(*v150.i8, xmmword_296B6EE90);
      v191.val[1] = v79;
      *a14 = v188.val[0];
      a14[1] = vqtbl2q_s8(v191, xmmword_296B6EE80);
      v154 = v79;
      v132 += 7;
      v155 = a14 + 2;
      *v81 = v185.val[1];
      v81[1] = vqtbl2q_s8(*(&v188 + 16), xmmword_296B6EE80);
      v156 = &v81[2];
      v157 = v82 + 2;
      *v82 = v26;
      v82[1] = v185.val[0];
      v158 = v83 + 2;
      *v83 = vqtbl2q_s8(*(&v79 - 1), xmmword_296B6EE60);
      v83[1] = v194.val[0];
      v83 += 2;
      v82 += 2;
      v81 += 2;
      a14 += 2;
      if (!--v136)
      {
        v133 = a12[5];
        if (v133)
        {
          goto LABEL_105;
        }

        goto LABEL_115;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *&a11[1] >= a2 ? a2 : *&a11[1];
  v23 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v216, a4);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v215, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v214, a6);
  v26 = 12 * v23 + 16;
  v27 = v22 - v26;
  if (v22 < v26)
  {
    return result;
  }

  v28 = *(a13 + 60);
  v29 = *(a3 + 8);
  if (v29)
  {
    v30 = a11[3];
    v31 = *(*(v29 + 40) + 8 * a11[7].u32[1]);
    v32 = *(v31 + 12) - 1;
    if (v32 >= (v30.i32[1] * v28))
    {
      v32 = (HIDWORD(*&a11[3]) * v28);
    }

    v33 = v31 + 8 * v30.u32[0];
    if (*(v29 + 104) == 1)
    {
      v34 = (*(v33 + 24) + 8 * v32);
    }

    else
    {
      v36 = (v32 * *(v29 + 108)) >> *(v29 + 112);
      v37 = *(v31 + 20) - 1;
      if (v36 >= v37)
      {
        LODWORD(v36) = v37;
      }

      v34 = (*(v33 + 24) + 8 * v36);
    }

    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v38 = a4[1];
  if (v38)
  {
    v39 = a11[3];
    v40 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
    v41 = *(v40 + 12) - 1;
    if (v41 >= (v39.i32[1] * v28))
    {
      v41 = (HIDWORD(*&a11[3]) * v28);
    }

    v42 = v40 + 8 * v39.u32[0];
    if (*(v38 + 104) == 1)
    {
      v43 = (*(v42 + 24) + 8 * v41);
    }

    else
    {
      v45 = (v41 * *(v38 + 108)) >> *(v38 + 112);
      v46 = *(v40 + 20) - 1;
      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      v43 = (*(v42 + 24) + 8 * v45);
    }

    v44 = *v43;
  }

  else
  {
    v44 = 0;
  }

  v47 = a5[1];
  if (v47)
  {
    v48 = a11[3];
    v49 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
    v50 = *(v49 + 12) - 1;
    if (v50 >= (v48.i32[1] * v28))
    {
      v50 = (HIDWORD(*&a11[3]) * v28);
    }

    v51 = v49 + 8 * v48.u32[0];
    if (*(v47 + 104) == 1)
    {
      v52 = (*(v51 + 24) + 8 * v50);
    }

    else
    {
      v53 = (v50 * *(v47 + 108)) >> *(v47 + 112);
      v54 = *(v49 + 20) - 1;
      if (v53 >= v54)
      {
        LODWORD(v53) = v54;
      }

      v52 = (*(v51 + 24) + 8 * v53);
    }

    v47 = *v52;
  }

  v55 = v27 + v21;
  v56 = a6[1];
  if (v56)
  {
    v57 = a11[3];
    v58 = (v57.i32[1] * v28);
    v59 = *(*(v56 + 40) + 8 * a11[7].u32[1]);
    v60 = *(v59 + 12) - 1;
    if (v60 >= v58)
    {
      v60 = v58;
    }

    v61 = v59 + 8 * v57.u32[0];
    if (*(v56 + 104) == 1)
    {
      v62 = (*(v61 + 24) + 8 * v60);
    }

    else
    {
      v64 = (v60 * *(v56 + 108)) >> *(v56 + 112);
      v65 = *(v59 + 20) - 1;
      if (v64 < v65)
      {
        v65 = v64;
      }

      v62 = (*(v61 + 24) + 8 * v65);
    }

    v63 = *v62;
  }

  else
  {
    v63 = 0;
  }

  v66 = v44 + v21;
  v67 = v63 + v21;
  v68 = a12[2];
  v69 = v67 > v55;
  v70 = v47 + v21 > v55;
  v71 = v70;
  v72 = v70 || v69;
  v70 = v66 > v55;
  v73 = v66 > v55;
  if (v70)
  {
    v72 = 1;
  }

  v74 = a12[6];
  if (v68 > v74)
  {
    return result;
  }

  v76 = 4 * v23;
  result = 16 * v23;
  v77 = &v215;
  v78 = vld1q_dup_f32(v77);
  v79.i64[0] = __PAIR64__(v214, v216);
  v79.i64[1] = __PAIR64__(v214, v216);
  v80 = (v35 + v21 + 16 * *a12 + 16 * v23 * v68);
  while (1)
  {
    v81 = a14 + a17;
    v82 = a14 + a17 + a17;
    v83 = v82 + a17;
    if (!a16)
    {
      v86 = v82 + a17;
      goto LABEL_69;
    }

    if (v68 == a12[2])
    {
      v84 = a12[3] + 1;
      v85 = a14;
      a14 += a17;
      v81 = v82;
      v82 += a17;
      do
      {
        v86 = v82;
        v82 = v81;
        v81 = a14;
        a14 = v85;
        v85 = a16;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = v82 + a17;
    }

    if (v68 == v74)
    {
      v87 = a12[7];
      switch(v87)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v81 = a16;
LABEL_66:
          v82 = a16;
LABEL_67:
          v83 = a16;
          goto LABEL_69;
      }
    }

    v83 = v86;
LABEL_69:
    v89 = *a12;
    v88 = a12[1];
    if (!v88)
    {
      v146 = a12[4];
      v147 = v80;
      goto LABEL_87;
    }

    v90 = v80 > v55 || v73;
    if ((v90 | (v71 || v69)))
    {
      return result;
    }

    v24.i32[0] = 0;
    v91 = *(v80 + v76);
    v92 = (v80 + v76 + v76);
    v93 = *(v92 + v76);
    v94 = vuzp2q_s32(v91, v78);
    v95 = vtrn2q_s32(v94, v91);
    v96 = vzip2q_s32(vuzp1q_s32(v95, v95), v79);
    v97 = vuzp2q_s32(*v92, v78);
    v98 = vtrn2q_s32(v97, *v92);
    v99 = vzip2q_s32(vuzp1q_s32(v98, v98), v79);
    v100 = vuzp2q_s32(v93, v78);
    v101 = vtrn2q_s32(v100, v93);
    v102 = vzip2q_s32(vuzp1q_s32(v101, v101), v79);
    v103 = vuzp1q_s32(*v80, v78);
    v104 = vzip1q_s32(vuzp1q_s32(v103, v103), v79);
    v105 = v78;
    v105.i32[0] = v80->i64[1];
    v106 = vzip1q_s32(vuzp1q_s32(v105, v105), v79);
    v107 = vuzp2q_s32(*v80, v78);
    v108 = vzip2q_s32(vuzp1q_s32(v107, v107), v79);
    v109 = vtrn2q_s32(v107, *v80);
    v110 = vzip2q_s32(vuzp1q_s32(v109, v109), v79);
    v111 = vuzp1q_s32(v91, v78);
    v112 = vzip1q_s32(vuzp1q_s32(v111, v111), v79);
    v113 = v78;
    v113.i32[0] = *(&v80->i64[1] + v76);
    v114 = vzip1q_s32(vuzp1q_s32(v113, v113), v79);
    v115 = vuzp1q_s32(*v92, v78);
    v116 = vzip1q_s32(vuzp1q_s32(v115, v115), v79);
    v117 = v78;
    v117.i32[0] = v92->i64[1];
    v118 = vzip1q_s32(vuzp1q_s32(v117, v117), v79);
    v119 = vuzp1q_s32(v93, v78);
    v120 = vzip1q_s32(vuzp1q_s32(v119, v119), v79);
    v121 = v78;
    v121.i32[0] = *(&v92->i64[1] + v76);
    v122 = vzip1q_s32(vuzp1q_s32(v121, v121), v79);
    v123 = vzip2q_s32(vuzp1q_s32(v94, v94), v79);
    v124 = vzip2q_s32(vuzp1q_s32(v97, v97), v79);
    v125 = vuzp1q_s32(v100, v100);
    v126 = vzip2q_s32(v125, v79);
    if (a12[4] == v89)
    {
      v127 = 4 - a12[5];
    }

    else
    {
      v127 = 4;
    }

    v125.i32[0] = a12[1] & 2;
    v128 = vdupq_lane_s32(*&vceqq_s32(v125, v24), 0);
    v129 = vbslq_s8(v128, v126, v102);
    v130 = vbslq_s8(v128, v124, v99);
    v131 = vbslq_s8(v128, v123, v96);
    v132 = vbslq_s8(v128, v120, v122);
    v133 = vbslq_s8(v128, v116, v118);
    v134 = vbslq_s8(v128, v112, v114);
    v135 = vbslq_s8(v128, v108, v110);
    if ((v88 & 2) != 0)
    {
      v127 -= 2;
    }

    v136 = v88 & 1;
    v137 = v127 - v136;
    v25.i32[0] = v136;
    v138 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v25, v24)), 0);
    v25 = vbslq_s8(v138, v135, vbslq_s8(v128, v104, v106));
    v139 = vbslq_s8(v138, v131, v134);
    v140 = vbslq_s8(v138, v130, v133);
    v24 = vbslq_s8(v138, v129, v132);
    if (v127 - v136 <= 1)
    {
      v145 = 0;
    }

    else
    {
      v141 = vbslq_s8(v128, v122, v120);
      v142 = vbslq_s8(v128, v118, v116);
      v143 = vbslq_s8(v128, v114, v112);
      v144 = vbslq_s8(v128, v106, v104);
      *a14 = v25;
      *(a14 + 16) = vbslq_s8(v138, v144, v135);
      *v81 = v139;
      *(v81 + 16) = vbslq_s8(v138, v143, v131);
      *v82 = v140;
      *(v82 + 16) = vbslq_s8(v138, v142, v130);
      v137 -= 2;
      v25 = vbslq_s8(v138, vbslq_s8(v128, v110, v108), v144);
      *v83 = v24;
      *(v83 + 16) = vbslq_s8(v138, v141, v129);
      v139 = vbslq_s8(v138, vbslq_s8(v128, v96, v123), v143);
      v140 = vbslq_s8(v138, vbslq_s8(v128, v99, v124), v142);
      v24 = vbslq_s8(v138, vbslq_s8(v128, v102, v126), v141);
      v145 = 32;
    }

    if (v137 >= 1)
    {
      *(v145 + a14) = v25;
      *(v145 + v81) = v139;
      *(v145 + v82) = v140;
      *(v145 + v83) = v24;
      v145 |= 0x10uLL;
    }

    v146 = a12[4];
    if (v146 != v89)
    {
      break;
    }

LABEL_118:
    a14 = v86 + a17;
    v80 = (v80 + result);
    v74 = a12[6];
    if (v68++ >= v74)
    {
      return result;
    }
  }

  v147 = v80 + 1;
  a14 += v145;
  v81 += v145;
  v82 += v145;
  v83 += v145;
  ++v89;
LABEL_87:
  v148 = a12[5];
  v149 = v148 != 0;
  if (v146 == 0 && v149 || (v150 = v146 - v149, v89 > v150))
  {
    v175 = a14;
    v176 = v81;
    v177 = v82;
    v178 = v83;
    if (v148)
    {
LABEL_96:
      if (v68 == a12[6])
      {
        v179 = 4 - a12[7];
      }

      else
      {
        v179 = 4;
      }

      v180 = v147 > v55 || v73;
      if ((v180 | (v71 || v69)))
      {
        return result;
      }

      if (v179 < 2)
      {
        v182 = 0;
        v181 = v147;
        v183 = v147;
      }

      else
      {
        v181 = (v147->i64 + v76);
        if (v179 == 2)
        {
          v182 = 0;
          v183 = (v147->i64 + v76);
        }

        else
        {
          v183 = (v147->i64 + v76);
          v181 = (v181 + v76);
          if (v179 <= 3)
          {
            v182 = 0;
          }

          else
          {
            v182 = v76;
          }
        }
      }

      v184 = 4 - v148;
      v185 = (v181 + v182);
      v186 = 0uLL;
      v24 = 0uLL;
      v187 = 0uLL;
      v188 = 0uLL;
      if ((4 - v148))
      {
        v189 = 3 - v148;
        v188.i32[0] = v147->i32[v189];
        v186.i32[0] = *(v183 + v189);
        v24.i32[0] = *(v181 + v189);
        v187.i32[0] = *(v185 + v189);
      }

      if ((v184 & 2) != 0)
      {
        v190.i64[0] = v147->i64[0];
        v190.i64[1] = v188.i64[0];
        v191.i64[0] = *v183;
        v191.i64[1] = v186.i64[0];
        v192.i64[0] = *v181;
        v192.i64[1] = v24.i64[0];
        v193.i64[0] = *v185;
        v193.i64[1] = v187.i64[0];
        v186 = v191;
        v24 = v192;
        v187 = v193;
        v188 = v190;
      }

      v194 = vuzp1q_s32(v188, v78);
      v195 = vzip1q_s32(vuzp1q_s32(v194, v194), v79);
      v196 = vuzp1q_s32(v186, v78);
      v197 = vzip1q_s32(vuzp1q_s32(v196, v196), v79);
      v198 = vuzp1q_s32(v24, v78);
      v199 = vzip1q_s32(vuzp1q_s32(v198, v198), v79);
      v200 = vuzp1q_s32(v187, v78);
      v201 = vzip1q_s32(vuzp1q_s32(v200, v200), v79);
      if ((v184 & 2) != 0)
      {
        v202 = vuzp2q_s32(v188, v78);
        v203 = vuzp2q_s32(v186, v78);
        v204 = vuzp2q_s32(v24, v78);
        v205 = vuzp2q_s32(v187, v78);
        *v175 = v195;
        v175[1] = vzip2q_s32(vuzp1q_s32(v202, v202), v79);
        *v176 = v197;
        v176[1] = vzip2q_s32(vuzp1q_s32(v203, v203), v79);
        *v177 = v199;
        v177[1] = vzip2q_s32(vuzp1q_s32(v204, v204), v79);
        *v178 = v201;
        v178[1] = vzip2q_s32(vuzp1q_s32(v205, v205), v79);
        if (v184)
        {
          v206 = v78;
          v206.i32[0] = v188.i32[2];
          v207 = vzip1q_s32(vuzp1q_s32(v206, v206), v79);
          v208 = v78;
          v208.i32[0] = v186.i32[2];
          v209 = vuzp1q_s32(v208, v208);
          v210 = v78;
          v210.i32[0] = v24.i32[2];
          v24 = vzip1q_s32(v209, v79);
          v211 = vzip1q_s32(vuzp1q_s32(v210, v210), v79);
          v212 = v78;
          v212.i32[0] = v187.i32[2];
          v175[2] = v207;
          v176[2] = v24;
          v177[2] = v211;
          v178[2] = vzip1q_s32(vuzp1q_s32(v212, v212), v79);
        }
      }

      else
      {
        *v175 = v195;
        *v176 = v197;
        *v177 = v199;
        *v178 = v201;
      }
    }

    goto LABEL_118;
  }

  if ((v72 & 1) == 0)
  {
    v151 = v150 - v89 + 1;
    while (v147 <= v55)
    {
      v152 = *v147;
      v153 = (v147 + v76 + v76);
      v154 = *(v153 + v76);
      v155 = *v153;
      v156 = vuzp2q_s32(v154, v78);
      v157 = vtrn2q_s32(v156, v154);
      v158 = vuzp2q_s32(*v153, v78);
      v159 = vtrn2q_s32(v158, *v153);
      v160 = *(v147 + v76);
      v161 = vuzp2q_s32(v160, v78);
      v162 = vtrn2q_s32(v161, v160);
      v163 = vzip2q_s32(vuzp1q_s32(v162, v162), v79);
      v24 = vzip2q_s32(vuzp1q_s32(v156, v156), v79);
      v164 = vuzp1q_s32(v154, v78);
      v165 = v78;
      v165.i32[0] = *(&v153->i64[1] + v76);
      v166 = vzip1q_s32(vuzp1q_s32(v165, v165), v79);
      v167 = v78;
      v167.i32[0] = v153->i64[1];
      v168 = v78;
      v168.i32[0] = *(&v147->i64[1] + v76);
      v169 = vuzp2q_s32(*v147, v78);
      v170 = vuzp1q_s32(*v147, v78);
      v171 = v78;
      v171.i32[0] = v147->i64[1];
      *a14 = vzip1q_s32(vuzp1q_s32(v170, v170), v79);
      *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v169, v169), v79);
      v172 = vuzp1q_s32(v160, v78);
      v173 = vtrn2q_s32(v169, v152);
      *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v171, v171), v79);
      *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v173, v173), v79);
      *v81 = vzip1q_s32(vuzp1q_s32(v172, v172), v79);
      *(v81 + 16) = vzip2q_s32(vuzp1q_s32(v161, v161), v79);
      v174 = vuzp1q_s32(v155, v78);
      *(v81 + 32) = vzip1q_s32(vuzp1q_s32(v168, v168), v79);
      *(v81 + 48) = v163;
      *v82 = vzip1q_s32(vuzp1q_s32(v174, v174), v79);
      *(v82 + 16) = vzip2q_s32(vuzp1q_s32(v158, v158), v79);
      ++v147;
      v175 = (a14 + 64);
      *(v82 + 32) = vzip1q_s32(vuzp1q_s32(v167, v167), v79);
      *(v82 + 48) = vzip2q_s32(vuzp1q_s32(v159, v159), v79);
      v176 = (v81 + 64);
      v177 = (v82 + 64);
      v178 = (v83 + 64);
      *(v83 + 32) = v166;
      *(v83 + 48) = vzip2q_s32(vuzp1q_s32(v157, v157), v79);
      *v83 = vzip1q_s32(vuzp1q_s32(v164, v164), v79);
      *(v83 + 16) = v24;
      v83 += 64;
      v82 += 64;
      v81 += 64;
      a14 += 64;
      if (!--v151)
      {
        v148 = a12[5];
        if (v148)
        {
          goto LABEL_96;
        }

        goto LABEL_118;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v190, a3);
  v24 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a4 + 8) + 48), a11[3]), *(*(a4 + 8) + 48)).u32[0];
  v25 = v24 <= 0xFFFFFFFC ? (v24 + 3) >> 2 : 0x40000000;
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v189, a5);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v188, a6);
  if (v23 < 0xE)
  {
    return result;
  }

  v26 = *(a13 + 60);
  v27 = a3[1];
  if (v27)
  {
    v28 = a11[3];
    v29 = *(*(v27 + 40) + 8 * a11[7].u32[1]);
    v30 = *(v29 + 12) - 1;
    if (v30 >= (v28.i32[1] * v26))
    {
      v30 = (HIDWORD(*&a11[3]) * v26);
    }

    v31 = v29 + 8 * v28.u32[0];
    if (*(v27 + 104) == 1)
    {
      v32 = (*(v31 + 24) + 8 * v30);
    }

    else
    {
      v34 = (v30 * *(v27 + 108)) >> *(v27 + 112);
      v35 = *(v29 + 20) - 1;
      if (v34 >= v35)
      {
        LODWORD(v34) = v35;
      }

      v32 = (*(v31 + 24) + 8 * v34);
    }

    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  v36 = *(a4 + 8);
  if (v36)
  {
    v37 = a11[3];
    v38 = *(*(v36 + 40) + 8 * a11[7].u32[1]);
    v39 = *(v38 + 12) - 1;
    if (v39 >= (v37.i32[1] * v26))
    {
      v39 = (HIDWORD(*&a11[3]) * v26);
    }

    v40 = v38 + 8 * v37.u32[0];
    if (*(v36 + 104) == 1)
    {
      v41 = (*(v40 + 24) + 8 * v39);
    }

    else
    {
      v42 = (v39 * *(v36 + 108)) >> *(v36 + 112);
      v43 = *(v38 + 20) - 1;
      if (v42 >= v43)
      {
        LODWORD(v42) = v43;
      }

      v41 = (*(v40 + 24) + 8 * v42);
    }

    result = *v41;
  }

  else
  {
    result = 0;
  }

  v44 = a5[1];
  if (v44)
  {
    v45 = a11[3];
    v46 = *(*(v44 + 40) + 8 * a11[7].u32[1]);
    v47 = *(v46 + 12) - 1;
    if (v47 >= (v45.i32[1] * v26))
    {
      v47 = (HIDWORD(*&a11[3]) * v26);
    }

    v48 = v46 + 8 * v45.u32[0];
    if (*(v44 + 104) == 1)
    {
      v49 = (*(v48 + 24) + 8 * v47);
    }

    else
    {
      v50 = (v47 * *(v44 + 108)) >> *(v44 + 112);
      v51 = *(v46 + 20) - 1;
      if (v50 >= v51)
      {
        LODWORD(v50) = v51;
      }

      v49 = (*(v48 + 24) + 8 * v50);
    }

    v44 = *v49;
  }

  v52 = v22 + v23 - 14;
  v53 = a6[1];
  if (v53)
  {
    v54 = a11[3];
    v55 = (v54.i32[1] * v26);
    v56 = *(*(v53 + 40) + 8 * a11[7].u32[1]);
    v57 = *(v56 + 12) - 1;
    if (v57 >= v55)
    {
      v57 = v55;
    }

    v58 = v56 + 8 * v54.u32[0];
    if (*(v53 + 104) == 1)
    {
      v59 = (*(v58 + 24) + 8 * v57);
    }

    else
    {
      v61 = (v57 * *(v53 + 108)) >> *(v53 + 112);
      v62 = *(v56 + 20) - 1;
      if (v61 < v62)
      {
        v62 = v61;
      }

      v59 = (*(v58 + 24) + 8 * v62);
    }

    v60 = *v59;
  }

  else
  {
    v60 = 0;
  }

  v63 = v22 + v33;
  v64 = v22 + v60;
  v65 = a12[2];
  v66 = v64 > v52;
  v67 = v22 + v44 > v52;
  v68 = v67;
  v69 = v67 || v66;
  v67 = v63 > v52;
  v70 = v63 > v52;
  if (v67)
  {
    v69 = 1;
  }

  v71 = a12[6];
  if (v65 > v71)
  {
    return result;
  }

  v73 = 14 * v25;
  v74 = &v189;
  v191.val[1] = vld1q_dup_s16(v74);
  v75 = &v190;
  v191.val[0] = vld1q_dup_s16(v75);
  v76 = vqtbl2q_s8(v191, xmmword_296B6EDD0);
  v77 = &v188;
  v78 = vld1q_dup_s16(v77);
  result = (&v22[7 * *a12] + result + v73 * v65);
  v79 = xmmword_296B6EDE0;
  v80.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v80.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v81 = (a14 + a17);
    v82 = (a14 + a17 + a17);
    v83 = (v82 + a17);
    if (!a16)
    {
      v86 = (v82 + a17);
      goto LABEL_72;
    }

    if (v65 == a12[2])
    {
      v84 = a12[3] + 1;
      v85 = a14;
      a14 = (a14 + a17);
      v81 = v82;
      v82 = (v82 + a17);
      do
      {
        v86 = v82;
        v82 = v81;
        v81 = a14;
        a14 = v85;
        v85 = a16;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = (v82 + a17);
    }

    if (v65 == v71)
    {
      v87 = a12[7];
      switch(v87)
      {
        case 1u:
          goto LABEL_70;
        case 2u:
          goto LABEL_69;
        case 3u:
          v81 = a16;
LABEL_69:
          v82 = a16;
LABEL_70:
          v83 = a16;
          goto LABEL_72;
      }
    }

    v83 = v86;
LABEL_72:
    v88 = *a12;
    v89 = a12[1];
    if (!v89)
    {
      v136 = a12[4];
      v137 = result;
      goto LABEL_94;
    }

    v90 = result > v52 || v70;
    if ((v90 | (v68 || v66)))
    {
      return result;
    }

    v91.i64[0] = *(result + 1);
    v91.i64[1] = *(result + 3);
    v92 = vqtbl1q_s8(v91, v79);
    v93 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v92, 8uLL), xmmword_296B6EE00), vshlq_u8(v92, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v94 = vaddq_s8(v93, v80);
    v93.i8[1] = 0;
    v95 = vqtbl1q_s8(v94, xmmword_296B6EE20);
    v96 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v95, xmmword_296B6EE30), v95), vqtbl1q_s8(v95, xmmword_296B6EE40));
    v97 = vdupq_lane_s16(*v93.i8, 0);
    v98 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v96.i8), xmmword_296B6EE50), *v96.i8), v97);
    v99 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v96), xmmword_296B6EE50), v96), v97);
    v100 = vdupq_n_s16(bswap32(*result) >> 16);
    v101 = vaddq_s16(v99, v100);
    v102 = vaddq_s16(v98, v100);
    v103 = vcgezq_s16(v102);
    v104 = *&v102 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL);
    v105 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
    v106 = veorq_s8(v104, v103);
    if (a8)
    {
      v106.i64[0] = (*(a8 + ((v106.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v106.u16[2]) << 32) | (*(a8 + 2 * v106.u16[1]) << 16) | *(a8 + 2 * v106.u16[0]);
      v106.i64[1] = (*(a8 + ((v106.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v106.u16[6]) << 32) | (*(a8 + 2 * v106.u16[5]) << 16) | *(a8 + 2 * v106.u16[4]);
      v105.i64[0] = (*(a8 + ((v105.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v105.u16[2]) << 32) | (*(a8 + 2 * v105.u16[1]) << 16) | *(a8 + 2 * v105.u16[0]);
      v105.i64[1] = (*(a8 + ((v105.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v105.u16[6]) << 32) | (*(a8 + 2 * v105.u16[5]) << 16) | *(a8 + 2 * v105.u16[4]);
    }

    LODWORD(v104) = 0;
    v107 = v76;
    v198.val[0] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EEC0);
    v198.val[1] = v78;
    v108 = vqtbl2q_s8(v198, xmmword_296B6EED0);
    v198.val[0] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EEE0);
    v198.val[1] = v78;
    v109 = vqtbl2q_s8(v198, xmmword_296B6EEF0);
    v198.val[0] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF00);
    v198.val[1] = v78;
    v110 = vqtbl2q_s8(v198, xmmword_296B6EF10);
    v200.val[0] = vqtbl2q_s8(*(&v105 - 1), xmmword_296B6EF20);
    v200.val[1] = v78;
    v111 = vqtbl2q_s8(v200, xmmword_296B6EF30);
    v112 = v76;
    v198.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EEC0);
    v113 = v78;
    v114 = vqtbl2q_s8(*(&v198 + 16), xmmword_296B6EED0);
    v198.val[1] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EEE0);
    v115 = v78;
    v116 = vqtbl2q_s8(*(&v198 + 16), xmmword_296B6EEF0);
    v192.val[0] = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF00);
    v192.val[1] = v78;
    v117 = vqtbl2q_s8(v192, xmmword_296B6EF10);
    v118 = vqtbl2q_s8(*(&v106 - 1), xmmword_296B6EF20);
    v119 = v78;
    v120 = vqtbl2q_s8(*v118.i8, xmmword_296B6EF30);
    if (a12[4] == v88)
    {
      v121 = 4 - a12[5];
    }

    else
    {
      v121 = 4;
    }

    v118.i32[0] = a12[1] & 2;
    v122 = vdupq_lane_s32(*&vceqq_s32(v118, v104), 0);
    v123 = vbslq_s8(v122, v120, v117);
    v124 = vbslq_s8(v122, v117, v120);
    v125 = vbslq_s8(v122, v116, v114);
    v126 = vbslq_s8(v122, v114, v116);
    v127 = vbslq_s8(v122, v111, v110);
    v128 = vbslq_s8(v122, v110, v111);
    v129 = vbslq_s8(v122, v109, v108);
    v130 = vbslq_s8(v122, v108, v109);
    if ((v89 & 2) != 0)
    {
      v121 -= 2;
    }

    if (v89)
    {
      v131 = vextq_s8(v123, v124, 8uLL).u64[0];
      v124 = vextq_s8(v124, v123, 8uLL);
      v132 = vextq_s8(v125, v126, 8uLL).u64[0];
      v126 = vextq_s8(v126, v125, 8uLL);
      v133 = vextq_s8(v127, v128, 8uLL).u64[0];
      v128 = vextq_s8(v128, v127, 8uLL);
      v134 = vextq_s8(v129, v130, 8uLL).u64[0];
      --v121;
      v130 = vextq_s8(v130, v129, 8uLL);
      v123.i64[0] = v131;
      v125.i64[0] = v132;
      v127.i64[0] = v133;
      v129.i64[0] = v134;
    }

    v79 = xmmword_296B6EDE0;
    v80.i64[0] = 0xE0E0E0E0E0E0E0E0;
    v80.i64[1] = 0xE0E0E0E0E0E0E0E0;
    if (v121 <= 1)
    {
      v135 = 0;
    }

    else
    {
      *a14 = v124;
      *v81 = v126;
      v121 -= 2;
      v124.i64[0] = v123.i64[0];
      v126.i64[0] = v125.i64[0];
      *v82 = v128;
      v128.i64[0] = v127.i64[0];
      *v83 = v130;
      v130.i64[0] = v129.i64[0];
      v135 = 16;
    }

    if (v121 >= 1)
    {
      *(a14->i64 + v135) = v124.i64[0];
      *(v81->i64 + v135) = v126.i64[0];
      *(v82->i64 + v135) = v128.i64[0];
      *(v83->i64 + v135) = v130.i64[0];
      v135 |= 8uLL;
    }

    v136 = a12[4];
    if (v136 != v88)
    {
      break;
    }

LABEL_115:
    a14 = (v86 + a17);
    result = (result + v73);
    v71 = a12[6];
    if (v65++ >= v71)
    {
      return result;
    }
  }

  v137 = (result + 7);
  a14 = (a14 + v135);
  v81 = (v81 + v135);
  v82 = (v82 + v135);
  v83 = (v83 + v135);
  ++v88;
LABEL_94:
  v138 = a12[5];
  v139 = v138 != 0;
  if (v136 == 0 && v139 || (v140 = v136 - v139, v88 > v140))
  {
    v161 = a14;
    v162 = v81;
    v163 = v82;
    v164 = v83;
    if (v138)
    {
LABEL_105:
      v165 = v137 > v52 || v70;
      if ((v165 | (v68 || v66)))
      {
        return result;
      }

      v166.i64[0] = *(v137 + 1);
      v166.i64[1] = *(v137 + 3);
      v167 = vqtbl1q_s8(v166, v79);
      v168 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v167, 8uLL), xmmword_296B6EE00), vshlq_u8(v167, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v169 = vaddq_s8(v168, v80);
      v168.i8[1] = 0;
      v170 = vqtbl1q_s8(v169, xmmword_296B6EE20);
      v171 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v170, xmmword_296B6EE30), v170), vqtbl1q_s8(v170, xmmword_296B6EE40));
      v172 = vdupq_lane_s16(*v168.i8, 0);
      v173 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v171.i8), xmmword_296B6EE50), *v171.i8), v172);
      v174 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v171), xmmword_296B6EE50), v171), v172);
      v175 = vdupq_n_s16(bswap32(*v137) >> 16);
      v176 = vaddq_s16(v174, v175);
      v177 = vaddq_s16(v173, v175);
      v178 = veorq_s8((*&v176 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v176));
      v179 = veorq_s8((*&v177 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v177));
      if (a8)
      {
        v179.i64[0] = (*(a8 + ((v179.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v179.u16[2]) << 32) | (*(a8 + 2 * v179.u16[1]) << 16) | *(a8 + 2 * v179.u16[0]);
        v179.i64[1] = (*(a8 + ((v179.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v179.u16[6]) << 32) | (*(a8 + 2 * v179.u16[5]) << 16) | *(a8 + 2 * v179.u16[4]);
        v178.i64[0] = (*(a8 + ((v178.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v178.u16[2]) << 32) | (*(a8 + 2 * v178.u16[1]) << 16) | *(a8 + 2 * v178.u16[0]);
        v178.i64[1] = (*(a8 + ((v178.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v178.u16[6]) << 32) | (*(a8 + 2 * v178.u16[5]) << 16) | *(a8 + 2 * v178.u16[4]);
      }

      v180 = v76;
      v193.val[0] = vqtbl2q_s8(*(&v179 - 1), xmmword_296B6EF00);
      v193.val[1] = v78;
      v181 = vqtbl2q_s8(v193, xmmword_296B6EF10);
      v193.val[0] = vqtbl2q_s8(*(&v179 - 1), xmmword_296B6EEC0);
      v193.val[1] = v78;
      v182 = vqtbl2q_s8(v193, xmmword_296B6EED0);
      v183 = v76;
      v193.val[0] = vqtbl2q_s8(*(&v178 - 1), xmmword_296B6EF00);
      v193.val[1] = v78;
      v184 = vqtbl2q_s8(v193, xmmword_296B6EF10);
      v193.val[0] = vqtbl2q_s8(*(&v178 - 1), xmmword_296B6EEC0);
      v193.val[1] = v78;
      v185 = vqtbl2q_s8(v193, xmmword_296B6EED0);
      if (((4 - v138) & 2) != 0)
      {
        *v161 = v181;
        *v162 = v182;
        *v163 = v184;
        *v164 = v185;
        if ((4 - v138))
        {
          v194.val[0] = vqtbl2q_s8(*(&v179 - 1), xmmword_296B6EF20);
          v194.val[1] = v78;
          v194.val[0].i64[0] = vqtbl2q_s8(v194, xmmword_296B6EF30).u64[0];
          v194.val[1] = vqtbl2q_s8(*(&v179 - 1), xmmword_296B6EEE0);
          v186 = v78;
          v197.val[0] = vqtbl2q_s8(*(&v178 - 1), xmmword_296B6EF20);
          v197.val[1] = v78;
          v201.val[0] = vqtbl2q_s8(*(&v178 - 1), xmmword_296B6EEE0);
          v201.val[1] = v78;
          v161[1].i64[0] = v194.val[0].i64[0];
          v162[1].i64[0] = vqtbl2q_s8(*(&v194 + 16), xmmword_296B6EEF0).u64[0];
          v163[1].i64[0] = vqtbl2q_s8(v197, xmmword_296B6EF30).u64[0];
          v164[1].i64[0] = vqtbl2q_s8(v201, xmmword_296B6EEF0).u64[0];
        }
      }

      else
      {
        v161->i64[0] = v181.i64[0];
        v162->i64[0] = v182.i64[0];
        v163->i64[0] = v184.i64[0];
        v164->i64[0] = v185.i64[0];
      }
    }

    goto LABEL_115;
  }

  if ((v69 & 1) == 0)
  {
    v141 = v140 - v88 + 1;
    while (v137 <= v52)
    {
      v142.i64[0] = *(v137 + 1);
      v142.i64[1] = *(v137 + 3);
      v143 = vqtbl1q_s8(v142, v79);
      v144 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v143, 8uLL), xmmword_296B6EE00), vshlq_u8(v143, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v145 = vaddq_s8(v144, v80);
      v144.i8[1] = 0;
      v146 = vqtbl1q_s8(v145, xmmword_296B6EE20);
      v147 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v146, xmmword_296B6EE30), v146), vqtbl1q_s8(v146, xmmword_296B6EE40));
      v148 = vdupq_lane_s16(*v144.i8, 0);
      v149 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v147.i8), xmmword_296B6EE50), *v147.i8), v148);
      v150 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v147), xmmword_296B6EE50), v147), v148);
      v151 = vdupq_n_s16(bswap32(*v137) >> 16);
      v152 = vaddq_s16(v150, v151);
      v153 = vaddq_s16(v149, v151);
      v154 = veorq_s8((*&v152 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v152));
      v155 = veorq_s8((*&v153 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v153));
      if (a8)
      {
        v155.i64[0] = (*(a8 + ((v155.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v155.u16[2]) << 32) | (*(a8 + 2 * v155.u16[1]) << 16) | *(a8 + 2 * v155.u16[0]);
        v155.i64[1] = (*(a8 + ((v155.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v155.u16[6]) << 32) | (*(a8 + 2 * v155.u16[5]) << 16) | *(a8 + 2 * v155.u16[4]);
        v154.i64[0] = (*(a8 + ((v154.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v154.u16[2]) << 32) | (*(a8 + 2 * v154.u16[1]) << 16) | *(a8 + 2 * v154.u16[0]);
        v154.i64[1] = (*(a8 + ((v154.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v154.u16[6]) << 32) | (*(a8 + 2 * v154.u16[5]) << 16) | *(a8 + 2 * v154.u16[4]);
      }

      v156 = v154;
      v157 = vqtbl2q_s8(*v76.i8, xmmword_296B6EEC0);
      v195.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EEE0);
      v195.val[1] = v78;
      v195.val[0] = vqtbl2q_s8(v195, xmmword_296B6EEF0);
      v196.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EF00);
      v196.val[1] = v78;
      v195.val[1] = vqtbl2q_s8(v196, xmmword_296B6EF10);
      v196.val[0] = vqtbl2q_s8(*v76.i8, xmmword_296B6EF20);
      v196.val[1] = v78;
      v158 = vqtbl2q_s8(v196, xmmword_296B6EF30);
      v159 = v76;
      v196.val[0] = vqtbl2q_s8(*(&v155 - 1), xmmword_296B6EEC0);
      v196.val[1] = v78;
      v196.val[0] = vqtbl2q_s8(v196, xmmword_296B6EED0);
      v196.val[1] = vqtbl2q_s8(*(&v155 - 1), xmmword_296B6EF00);
      v160 = v78;
      v196.val[1] = vqtbl2q_s8(*(&v196 + 16), xmmword_296B6EF10);
      v199.val[0] = vqtbl2q_s8(*(&v155 - 1), xmmword_296B6EEE0);
      v202.val[0] = vqtbl2q_s8(*(&v155 - 1), xmmword_296B6EF20);
      v202.val[1] = v78;
      *a14 = v196.val[1];
      a14[1] = vqtbl2q_s8(v202, xmmword_296B6EF30);
      v199.val[1] = v78;
      v137 += 7;
      v161 = a14 + 2;
      *v81 = v196.val[0];
      v81[1] = vqtbl2q_s8(v199, xmmword_296B6EEF0);
      v162 = v81 + 2;
      v163 = v82 + 2;
      *v82 = v195.val[1];
      v82[1] = v158;
      v164 = v83 + 2;
      *v83 = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EED0);
      v83[1] = v195.val[0];
      v83 += 2;
      v82 += 2;
      v81 += 2;
      a14 += 2;
      if (!--v141)
      {
        v138 = a12[5];
        if (v138)
        {
          goto LABEL_105;
        }

        goto LABEL_115;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v189, a3);
  v23 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a4 + 8) + 48), a11[3]), *(*(a4 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v188, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v187, a6);
  v26 = 12 * v23 + 16;
  v27 = v22 - v26;
  if (v22 < v26)
  {
    return result;
  }

  v28 = *(a13 + 60);
  v29 = a3[1];
  if (v29)
  {
    v30 = a11[3];
    v31 = *(*(v29 + 40) + 8 * a11[7].u32[1]);
    v32 = *(v31 + 12) - 1;
    if (v32 >= (v30.i32[1] * v28))
    {
      v32 = (HIDWORD(*&a11[3]) * v28);
    }

    v33 = v31 + 8 * v30.u32[0];
    if (*(v29 + 104) == 1)
    {
      v34 = (*(v33 + 24) + 8 * v32);
    }

    else
    {
      v36 = (v32 * *(v29 + 108)) >> *(v29 + 112);
      v37 = *(v31 + 20) - 1;
      if (v36 >= v37)
      {
        LODWORD(v36) = v37;
      }

      v34 = (*(v33 + 24) + 8 * v36);
    }

    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v38 = *(a4 + 8);
  if (v38)
  {
    v39 = a11[3];
    v40 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
    v41 = *(v40 + 12) - 1;
    if (v41 >= (v39.i32[1] * v28))
    {
      v41 = (HIDWORD(*&a11[3]) * v28);
    }

    v42 = v40 + 8 * v39.u32[0];
    if (*(v38 + 104) == 1)
    {
      v43 = (*(v42 + 24) + 8 * v41);
    }

    else
    {
      v45 = (v41 * *(v38 + 108)) >> *(v38 + 112);
      v46 = *(v40 + 20) - 1;
      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      v43 = (*(v42 + 24) + 8 * v45);
    }

    v44 = *v43;
  }

  else
  {
    v44 = 0;
  }

  v47 = a5[1];
  if (v47)
  {
    v48 = a11[3];
    v49 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
    v50 = *(v49 + 12) - 1;
    if (v50 >= (v48.i32[1] * v28))
    {
      v50 = (HIDWORD(*&a11[3]) * v28);
    }

    v51 = v49 + 8 * v48.u32[0];
    if (*(v47 + 104) == 1)
    {
      v52 = (*(v51 + 24) + 8 * v50);
    }

    else
    {
      v53 = (v50 * *(v47 + 108)) >> *(v47 + 112);
      v54 = *(v49 + 20) - 1;
      if (v53 >= v54)
      {
        LODWORD(v53) = v54;
      }

      v52 = (*(v51 + 24) + 8 * v53);
    }

    v47 = *v52;
  }

  v55 = v27 + v21;
  v56 = a6[1];
  if (v56)
  {
    v57 = a11[3];
    v58 = (v57.i32[1] * v28);
    v59 = *(*(v56 + 40) + 8 * a11[7].u32[1]);
    v60 = *(v59 + 12) - 1;
    if (v60 >= v58)
    {
      v60 = v58;
    }

    v61 = v59 + 8 * v57.u32[0];
    if (*(v56 + 104) == 1)
    {
      v62 = (*(v61 + 24) + 8 * v60);
    }

    else
    {
      v64 = (v60 * *(v56 + 108)) >> *(v56 + 112);
      v65 = *(v59 + 20) - 1;
      if (v64 < v65)
      {
        v65 = v64;
      }

      v62 = (*(v61 + 24) + 8 * v65);
    }

    v63 = *v62;
  }

  else
  {
    v63 = 0;
  }

  v66 = v35 + v21;
  v67 = v63 + v21;
  v68 = a12[2];
  v69 = v67 > v55;
  v70 = v47 + v21 > v55;
  v71 = v70;
  v72 = v70 || v69;
  v70 = v66 > v55;
  v73 = v66 > v55;
  if (v70)
  {
    v72 = 1;
  }

  v74 = a12[6];
  if (v68 > v74)
  {
    return result;
  }

  v76 = 4 * v23;
  v77 = &v187;
  v78 = vld1q_dup_f32(v77);
  v79.i64[0] = __PAIR64__(v188, v189);
  result = 16 * v23;
  v79.i64[1] = __PAIR64__(v188, v189);
  v80 = (v44 + v21 + 16 * *a12 + 16 * v23 * v68);
  v81 = vextq_s8(v79, v79, 8uLL);
  while (1)
  {
    v82 = a14 + a17;
    v83 = a14 + a17 + a17;
    v84 = v83 + a17;
    if (!a16)
    {
      v87 = v83 + a17;
      goto LABEL_69;
    }

    if (v68 == a12[2])
    {
      v85 = a12[3] + 1;
      v86 = a14;
      a14 += a17;
      v82 = v83;
      v83 += a17;
      do
      {
        v87 = v83;
        v83 = v82;
        v82 = a14;
        a14 = v86;
        v86 = a16;
        --v85;
      }

      while (v85);
    }

    else
    {
      v87 = v83 + a17;
    }

    if (v68 == v74)
    {
      v88 = a12[7];
      switch(v88)
      {
        case 1u:
          goto LABEL_67;
        case 2u:
          goto LABEL_66;
        case 3u:
          v82 = a16;
LABEL_66:
          v83 = a16;
LABEL_67:
          v84 = a16;
          goto LABEL_69;
      }
    }

    v84 = v87;
LABEL_69:
    v90 = *a12;
    v89 = a12[1];
    if (!v89)
    {
      v131 = a12[4];
      v132 = v80;
      goto LABEL_87;
    }

    v91 = v80 > v55 || v73;
    if ((v91 | (v71 || v69)))
    {
      return result;
    }

    v24.i32[0] = 0;
    v92 = (v80 + v76 + v76);
    v93 = *(v92 + v76);
    v94 = vzip1q_s32(v79, *v80);
    v94.i32[3] = v78.i32[0];
    v95 = vzip2q_s32(v81, *v80);
    v95.i32[3] = v78.i32[2];
    v96 = *(v80 + v76);
    v97 = vextq_s8(vzip2q_s32(*v80, v79), v79, 4uLL);
    v97.i32[3] = v78.i32[3];
    v98 = vzip2q_s32(v79, vuzp2q_s32(v79, *v80));
    v98.i32[3] = v78.i32[1];
    v99 = vzip1q_s32(v79, v96);
    v99.i32[3] = v78.i32[0];
    v100 = vzip2q_s32(v81, v96);
    v100.i32[3] = v78.i32[2];
    v101 = vzip2q_s32(v79, vuzp2q_s32(v79, v96));
    v101.i32[3] = v78.i32[1];
    v102 = vextq_s8(vzip2q_s32(v96, v79), v79, 4uLL);
    v102.i32[3] = v78.i32[3];
    v103 = vzip1q_s32(v79, *v92);
    v103.i32[3] = v78.i32[0];
    v104 = vzip2q_s32(v81, *v92);
    v104.i32[3] = v78.i32[2];
    v105 = vzip2q_s32(v79, vuzp2q_s32(v79, *v92));
    v105.i32[3] = v78.i32[1];
    v106 = vextq_s8(vzip2q_s32(*v92, v79), v79, 4uLL);
    v106.i32[3] = v78.i32[3];
    v107 = vzip1q_s32(v79, v93);
    v107.i32[3] = v78.i32[0];
    v108 = vzip2q_s32(v81, v93);
    v108.i32[3] = v78.i32[2];
    v109 = vzip2q_s32(v79, vuzp2q_s32(v79, v93));
    v109.i32[3] = v78.i32[1];
    v110 = vzip2q_s32(v93, v79);
    v111 = vextq_s8(v110, v79, 4uLL);
    v111.i32[3] = v78.i32[3];
    if (a12[4] == v90)
    {
      v112 = 4 - a12[5];
    }

    else
    {
      v112 = 4;
    }

    v110.i32[0] = a12[1] & 2;
    v113 = vdupq_lane_s32(*&vceqq_s32(v110, v24), 0);
    v114 = vbslq_s8(v113, v109, v111);
    v115 = vbslq_s8(v113, v107, v108);
    v116 = vbslq_s8(v113, v105, v106);
    v117 = vbslq_s8(v113, v103, v104);
    v118 = vbslq_s8(v113, v101, v102);
    v119 = vbslq_s8(v113, v99, v100);
    v120 = vbslq_s8(v113, v98, v97);
    if ((v89 & 2) != 0)
    {
      v112 -= 2;
    }

    v121 = v89 & 1;
    v122 = v112 - v121;
    v25.i32[0] = v121;
    v123 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v25, v24)), 0);
    v25 = vbslq_s8(v123, v120, vbslq_s8(v113, v94, v95));
    v124 = vbslq_s8(v123, v118, v119);
    v125 = vbslq_s8(v123, v116, v117);
    v24 = vbslq_s8(v123, v114, v115);
    if (v112 - v121 <= 1)
    {
      v130 = 0;
    }

    else
    {
      v126 = vbslq_s8(v113, v108, v107);
      v127 = vbslq_s8(v113, v104, v103);
      v128 = vbslq_s8(v113, v100, v99);
      v129 = vbslq_s8(v113, v95, v94);
      *a14 = v25;
      *(a14 + 16) = vbslq_s8(v123, v129, v120);
      *v82 = v124;
      *(v82 + 16) = vbslq_s8(v123, v128, v118);
      *v83 = v125;
      *(v83 + 16) = vbslq_s8(v123, v127, v116);
      v122 -= 2;
      v25 = vbslq_s8(v123, vbslq_s8(v113, v97, v98), v129);
      *v84 = v24;
      *(v84 + 16) = vbslq_s8(v123, v126, v114);
      v124 = vbslq_s8(v123, vbslq_s8(v113, v102, v101), v128);
      v125 = vbslq_s8(v123, vbslq_s8(v113, v106, v105), v127);
      v24 = vbslq_s8(v123, vbslq_s8(v113, v111, v109), v126);
      v130 = 32;
    }

    if (v122 >= 1)
    {
      *(v130 + a14) = v25;
      *(v130 + v82) = v124;
      *(v130 + v83) = v125;
      *(v130 + v84) = v24;
      v130 |= 0x10uLL;
    }

    v131 = a12[4];
    if (v131 != v90)
    {
      break;
    }

LABEL_118:
    a14 = v87 + a17;
    v80 = (v80 + result);
    v74 = a12[6];
    if (v68++ >= v74)
    {
      return result;
    }
  }

  v132 = v80 + 1;
  a14 += v130;
  v82 += v130;
  v83 += v130;
  v84 += v130;
  ++v90;
LABEL_87:
  v133 = a12[5];
  v134 = v133 != 0;
  if (v131 == 0 && v134 || (v135 = v131 - v134, v90 > v135))
  {
    v156 = a14;
    v157 = v82;
    v158 = v83;
    v159 = v84;
    if (v133)
    {
LABEL_96:
      if (v68 == a12[6])
      {
        v160 = 4 - a12[7];
      }

      else
      {
        v160 = 4;
      }

      v161 = v132 > v55 || v73;
      if ((v161 | (v71 || v69)))
      {
        return result;
      }

      if (v160 < 2)
      {
        v163 = 0;
        v162 = v132;
        v164 = v132;
      }

      else
      {
        v162 = (v132->i64 + v76);
        if (v160 == 2)
        {
          v163 = 0;
          v164 = (v132->i64 + v76);
        }

        else
        {
          v164 = (v132->i64 + v76);
          v162 = (v162 + v76);
          if (v160 <= 3)
          {
            v163 = 0;
          }

          else
          {
            v163 = v76;
          }
        }
      }

      v165 = 4 - v133;
      v166 = (v162 + v163);
      v167 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v24 = 0uLL;
      if ((4 - v133))
      {
        v170 = 3 - v133;
        v24.i32[0] = v132->i32[v170];
        v167.i32[0] = *(v164 + v170);
        v168.i32[0] = *(v162 + v170);
        v169.i32[0] = *(v166 + v170);
      }

      if ((v165 & 2) != 0)
      {
        v171.i64[0] = v132->i64[0];
        v171.i64[1] = v24.i64[0];
        v172.i64[0] = *v164;
        v172.i64[1] = v167.i64[0];
        v173.i64[0] = *v162;
        v173.i64[1] = v168.i64[0];
        v174.i64[0] = *v166;
        v174.i64[1] = v169.i64[0];
        v167 = v172;
        v168 = v173;
        v169 = v174;
        v24 = v171;
      }

      v175 = vzip1q_s32(v79, v24);
      v175.i32[3] = v78.i32[0];
      v176 = vzip1q_s32(v79, v167);
      v176.i32[3] = v78.i32[0];
      v177 = vzip1q_s32(v79, v168);
      v177.i32[3] = v78.i32[0];
      v178 = vzip1q_s32(v79, v169);
      v178.i32[3] = v78.i32[0];
      if ((v165 & 2) != 0)
      {
        v179 = vzip2q_s32(v79, vuzp2q_s32(v79, v24));
        v179.i32[3] = v78.i32[1];
        v180 = vzip2q_s32(v79, vuzp2q_s32(v79, v167));
        v180.i32[3] = v78.i32[1];
        v181 = vzip2q_s32(v79, vuzp2q_s32(v79, v168));
        v181.i32[3] = v78.i32[1];
        v182 = vzip2q_s32(v79, vuzp2q_s32(v79, v169));
        v182.i32[3] = v78.i32[1];
        *v156 = v175;
        v156[1] = v179;
        *v157 = v176;
        v157[1] = v180;
        *v158 = v177;
        v158[1] = v181;
        *v159 = v178;
        v159[1] = v182;
        if (v165)
        {
          v24 = vzip2q_s32(v81, v24);
          v24.i32[3] = v78.i32[2];
          v183 = vzip2q_s32(v81, v167);
          v183.i32[3] = v78.i32[2];
          v184 = vzip2q_s32(v81, v168);
          v184.i32[3] = v78.i32[2];
          v185 = vzip2q_s32(v81, v169);
          v185.i32[3] = v78.i32[2];
          v156[2] = v24;
          v157[2] = v183;
          v158[2] = v184;
          v159[2] = v185;
        }
      }

      else
      {
        *v156 = v175;
        *v157 = v176;
        *v158 = v177;
        *v159 = v178;
      }
    }

    goto LABEL_118;
  }

  if ((v72 & 1) == 0)
  {
    v136 = v135 - v90 + 1;
    while (v132 <= v55)
    {
      v137 = *(v132 + v76);
      v138 = (v132 + v76 + v76);
      v139 = *(v138 + v76);
      v140 = vextq_s8(vzip2q_s32(v139, v79), v79, 4uLL);
      v140.i32[3] = v78.i32[3];
      v141 = vzip2q_s32(v81, v139);
      v141.i32[3] = v78.i32[2];
      v142 = vzip2q_s32(v79, vuzp2q_s32(v79, v139));
      v142.i32[3] = v78.i32[1];
      v24 = vzip1q_s32(v79, v139);
      v24.i32[3] = v78.i32[0];
      v143 = vzip2q_s32(v81, *v138);
      v143.i32[3] = v78.i32[2];
      v144 = vextq_s8(vzip2q_s32(*v138, v79), v79, 4uLL);
      v144.i32[3] = v78.i32[3];
      v145 = vzip2q_s32(v79, vuzp2q_s32(v79, *v138));
      v145.i32[3] = v78.i32[1];
      v146 = vzip1q_s32(v79, *v138);
      v146.i32[3] = v78.i32[0];
      v147 = vzip2q_s32(v81, v137);
      v147.i32[3] = v78.i32[2];
      v148 = vextq_s8(vzip2q_s32(v137, v79), v79, 4uLL);
      v148.i32[3] = v78.i32[3];
      v149 = vzip2q_s32(v79, vuzp2q_s32(v79, v137));
      v149.i32[3] = v78.i32[1];
      v150 = vzip1q_s32(v79, v137);
      v150.i32[3] = v78.i32[0];
      v151 = *v132++;
      v152 = vzip2q_s32(v79, vuzp2q_s32(v79, v151));
      v152.i32[3] = v78.i32[1];
      v153 = vzip2q_s32(v81, v151);
      v153.i32[3] = v78.i32[2];
      v154 = vextq_s8(vzip2q_s32(v151, v79), v79, 4uLL);
      v154.i32[3] = v78.i32[3];
      v155 = vzip1q_s32(v79, v151);
      v155.i32[3] = v78.i32[0];
      *(a14 + 32) = v153;
      *(a14 + 48) = v154;
      *a14 = v155;
      *(a14 + 16) = v152;
      *v82 = v150;
      *(v82 + 16) = v149;
      v156 = (a14 + 64);
      v157 = (v82 + 64);
      *(v82 + 32) = v147;
      *(v82 + 48) = v148;
      v158 = (v83 + 64);
      *v83 = v146;
      *(v83 + 16) = v145;
      *(v83 + 32) = v143;
      *(v83 + 48) = v144;
      v159 = (v84 + 64);
      *v84 = v24;
      *(v84 + 16) = v142;
      *(v84 + 32) = v141;
      *(v84 + 48) = v140;
      v84 += 64;
      v83 += 64;
      v82 += 64;
      a14 += 64;
      if (!--v136)
      {
        v133 = a12[5];
        if (v133)
        {
          goto LABEL_96;
        }

        goto LABEL_118;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v24 = result;
  if (*(a11 + 8) >= a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = *(a11 + 8);
  }

  v26 = *(a11 + 60);
  v27 = *(a11 + 24);
  v28 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v26) + 16), *(*(a3 + 8) + 48), v27), *(*(a3 + 8) + 48)).u32[0];
  v29 = (v28 + 3) >> 2;
  if (v28 > 0xFFFFFFFC)
  {
    v29 = 0x40000000;
  }

  v235 = v29;
  v30 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v26) + 16), *(*(a4 + 8) + 48), v27), *(*(a4 + 8) + 48)).u32[0];
  v31 = v30 <= 0xFFFFFFFC ? (v30 + 3) >> 2 : 0x40000000;
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(v237, a5);
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v236, a6);
  if (v25 < 0xE)
  {
    return result;
  }

  v32 = *(a13 + 60);
  v33 = *(a3 + 8);
  if (v33)
  {
    v34 = *(a11 + 24);
    v35 = *(*(v33 + 40) + 8 * *(a11 + 60));
    v36 = *(v35 + 12) - 1;
    if (v36 >= (HIDWORD(v34) * v32))
    {
      v36 = (HIDWORD(*(a11 + 24)) * v32);
    }

    v37 = v35 + 8 * v34;
    if (*(v33 + 104) == 1)
    {
      v38 = (*(v37 + 24) + 8 * v36);
    }

    else
    {
      v40 = (v36 * *(v33 + 108)) >> *(v33 + 112);
      v41 = *(v35 + 20) - 1;
      if (v40 >= v41)
      {
        LODWORD(v40) = v41;
      }

      v38 = (*(v37 + 24) + 8 * v40);
    }

    v39 = *v38;
  }

  else
  {
    v39 = 0;
  }

  v42 = *(a4 + 8);
  if (v42)
  {
    v43 = *(a11 + 24);
    v44 = *(*(v42 + 40) + 8 * *(a11 + 60));
    v45 = *(v44 + 12) - 1;
    if (v45 >= (HIDWORD(v43) * v32))
    {
      v45 = (HIDWORD(*(a11 + 24)) * v32);
    }

    v46 = v44 + 8 * v43;
    if (*(v42 + 104) == 1)
    {
      v47 = (*(v46 + 24) + 8 * v45);
    }

    else
    {
      v49 = (v45 * *(v42 + 108)) >> *(v42 + 112);
      v50 = *(v44 + 20) - 1;
      if (v49 >= v50)
      {
        LODWORD(v49) = v50;
      }

      v47 = (*(v46 + 24) + 8 * v49);
    }

    v48 = *v47;
  }

  else
  {
    v48 = 0;
  }

  v51 = a5[1];
  if (v51)
  {
    v52 = *(a11 + 24);
    v53 = *(*(v51 + 40) + 8 * *(a11 + 60));
    v54 = *(v53 + 12) - 1;
    if (v54 >= (HIDWORD(v52) * v32))
    {
      v54 = (HIDWORD(*(a11 + 24)) * v32);
    }

    v55 = v53 + 8 * v52;
    if (*(v51 + 104) == 1)
    {
      v56 = (*(v55 + 24) + 8 * v54);
    }

    else
    {
      v57 = (v54 * *(v51 + 108)) >> *(v51 + 112);
      v58 = *(v53 + 20) - 1;
      if (v57 >= v58)
      {
        LODWORD(v57) = v58;
      }

      v56 = (*(v55 + 24) + 8 * v57);
    }

    v51 = *v56;
  }

  v59 = v24 + v25 - 14;
  v60 = a6[1];
  if (v60)
  {
    v61 = *(a11 + 24);
    v62 = (HIDWORD(v61) * v32);
    v63 = *(*(v60 + 40) + 8 * *(a11 + 60));
    v64 = *(v63 + 12) - 1;
    if (v64 >= v62)
    {
      v64 = v62;
    }

    v65 = v63 + 8 * v61;
    if (*(v60 + 104) == 1)
    {
      v66 = (*(v65 + 24) + 8 * v64);
    }

    else
    {
      v68 = (v64 * *(v60 + 108)) >> *(v60 + 112);
      v69 = *(v63 + 20) - 1;
      if (v68 < v69)
      {
        v69 = v68;
      }

      v66 = (*(v65 + 24) + 8 * v69);
    }

    v67 = *v66;
  }

  else
  {
    v67 = 0;
  }

  v70 = v24 + v51;
  v71 = v24 + v67;
  v72 = a12[2];
  v73 = v71 > v59;
  v233 = v70 > v59;
  v234 = v73;
  if (v70 > v59)
  {
    LOBYTE(v73) = 1;
  }

  v230 = v73;
  result = a12[6];
  if (v72 > result)
  {
    return result;
  }

  v75 = v237;
  v76 = vld1q_dup_s16(v75);
  v77 = &v236;
  v78 = vld1q_dup_s16(v77);
  v79 = 14 * *a12;
  v231 = 14 * v31;
  v232 = 14 * v235;
  v80 = (v24 + v39 + v79 + v232 * v72);
  v81 = (v24 + v48 + v79 + v231 * v72);
  v82 = xmmword_296B6EDE0;
  v83 = xmmword_296B6EDF0;
  v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v85 = (a14 + a17);
    v86 = (a14 + a17 + a17);
    v87 = (v86 + a17);
    if (!a16)
    {
      v90 = (v86 + a17);
      goto LABEL_70;
    }

    if (v72 == a12[2])
    {
      v88 = a12[3] + 1;
      v89 = a14;
      a14 = (a14 + a17);
      v85 = v86;
      v86 = (v86 + a17);
      do
      {
        v90 = v86;
        v86 = v85;
        v85 = a14;
        a14 = v89;
        v89 = a16;
        --v88;
      }

      while (v88);
    }

    else
    {
      v90 = (v86 + a17);
    }

    if (v72 == result)
    {
      v91 = a12[7];
      switch(v91)
      {
        case 1u:
          goto LABEL_68;
        case 2u:
          goto LABEL_67;
        case 3u:
          v85 = a16;
LABEL_67:
          v86 = a16;
LABEL_68:
          v87 = a16;
          goto LABEL_70;
      }
    }

    v87 = v90;
LABEL_70:
    v93 = *a12;
    v92 = a12[1];
    if (v92)
    {
      v95 = v80 > v59 || v81 > v59 || v233;
      if ((v95 | v234))
      {
        return result;
      }

      v96.i64[0] = *(v80 + 1);
      v96.i64[1] = *(v80 + 3);
      v97 = vqtbl1q_s8(v96, v82);
      v98 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v97, 8uLL), xmmword_296B6EE00), vshlq_u8(v97, v83)), xmmword_296B6EE10);
      v99 = vaddq_s8(v98, v84);
      v98.i8[1] = 0;
      v100 = vqtbl1q_s8(v99, xmmword_296B6EE20);
      v101 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v100, xmmword_296B6EE30), v100), vqtbl1q_s8(v100, xmmword_296B6EE40));
      v102 = vdupq_lane_s16(*v98.i8, 0);
      v103 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v101.i8), xmmword_296B6EE50), *v101.i8), v102);
      v104 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v101), xmmword_296B6EE50), v101), v102);
      v105 = vdupq_n_s16(bswap32(*v80) >> 16);
      v106 = vaddq_s16(v104, v105);
      v107 = vaddq_s16(v103, v105);
      v108 = veorq_s8((*&v106 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v106));
      v109 = veorq_s8((*&v107 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v107));
      if (a7)
      {
        v109.i64[0] = (*(a7 + ((v109.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v109.u16[2]) << 32) | (*(a7 + 2 * v109.u16[1]) << 16) | *(a7 + 2 * v109.u16[0]);
        v109.i64[1] = (*(a7 + ((v109.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v109.u16[6]) << 32) | (*(a7 + 2 * v109.u16[5]) << 16) | *(a7 + 2 * v109.u16[4]);
        v108.i64[0] = (*(a7 + ((v108.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v108.u16[2]) << 32) | (*(a7 + 2 * v108.u16[1]) << 16) | *(a7 + 2 * v108.u16[0]);
        v108.i64[1] = (*(a7 + ((v108.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v108.u16[6]) << 32) | (*(a7 + 2 * v108.u16[5]) << 16) | *(a7 + 2 * v108.u16[4]);
      }

      v110.i64[0] = *(v81 + 1);
      v110.i64[1] = *(v81 + 3);
      v111 = vqtbl1q_s8(v110, v82);
      v112 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v111, 8uLL), xmmword_296B6EE00), vshlq_u8(v111, v83)), xmmword_296B6EE10);
      v113 = vaddq_s8(v112, v84);
      v112.i8[1] = 0;
      v114 = vqtbl1q_s8(v113, xmmword_296B6EE20);
      v115 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v114, xmmword_296B6EE30), v114), vqtbl1q_s8(v114, xmmword_296B6EE40));
      v116 = vdupq_lane_s16(*v112.i8, 0);
      v117 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v115.i8), xmmword_296B6EE50), *v115.i8), v116);
      v118 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v115), xmmword_296B6EE50), v115), v116);
      v119 = vdupq_n_s16(bswap32(*v81) >> 16);
      v120 = vaddq_s16(v118, v119);
      v121 = vaddq_s16(v117, v119);
      v122 = veorq_s8((*&v120 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v120));
      v123 = veorq_s8((*&v121 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v121));
      if (a8)
      {
        v123.i64[0] = (*(a8 + ((v123.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v123.u16[2]) << 32) | (*(a8 + 2 * v123.u16[1]) << 16) | *(a8 + 2 * v123.u16[0]);
        v123.i64[1] = (*(a8 + ((v123.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v123.u16[6]) << 32) | (*(a8 + 2 * v123.u16[5]) << 16) | *(a8 + 2 * v123.u16[4]);
        v122.i64[0] = (*(a8 + ((v122.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v122.u16[2]) << 32) | (*(a8 + 2 * v122.u16[1]) << 16) | *(a8 + 2 * v122.u16[0]);
        v122.i64[1] = (*(a8 + ((v122.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v122.u16[6]) << 32) | (*(a8 + 2 * v122.u16[5]) << 16) | *(a8 + 2 * v122.u16[4]);
      }

      v17.i32[0] = 0;
      v124 = v78;
      v239.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF40);
      v125 = v76;
      v239.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE70);
      v126 = vqtbl2q_s8(v239, xmmword_296B6EDD0);
      v242.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF50);
      v242.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE90);
      v127 = vqtbl2q_s8(v242, xmmword_296B6EDD0);
      v245.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF60);
      v245.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEA0);
      v128 = vqtbl2q_s8(v245, xmmword_296B6EDD0);
      v251.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF70);
      v251.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEB0);
      v129 = vqtbl2q_s8(v251, xmmword_296B6EDD0);
      if (a12[4] == v93)
      {
        v130 = 4 - a12[5];
      }

      else
      {
        v130 = 4;
      }

      v108.i32[0] = a12[1] & 2;
      v17 = vdupq_lane_s32(*&vceqq_s32(v108, v17), 0);
      v131 = v78;
      v249.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EF60);
      v132 = v76;
      v249.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EEA0);
      v133 = v130 - 2;
      v134 = vqtbl2q_s8(v249, xmmword_296B6EDD0);
      v249.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EF70);
      v249.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EEB0);
      v249.val[0] = vqtbl2q_s8(v249, xmmword_296B6EDD0);
      v135 = vbslq_s8(v17, v249.val[0], v134);
      v136 = vbslq_s8(v17, v134, v249.val[0]);
      v244.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EF40);
      v244.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EE70);
      v244.val[1] = vqtbl2q_s8(v244, xmmword_296B6EDD0);
      v253.val[1] = vqtbl2q_s8(*v123.i8, xmmword_296B6EF50);
      v253.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EE90);
      v249.val[1] = vqtbl2q_s8(v253, xmmword_296B6EDD0);
      v137 = vbslq_s8(v17, v249.val[1], v244.val[1]);
      v138 = vbslq_s8(v17, v244.val[1], v249.val[1]);
      v139 = vbslq_s8(v17, v129, v128);
      v140 = vbslq_s8(v17, v128, v129);
      v141 = vbslq_s8(v17, v127, v126);
      v142 = vbslq_s8(v17, v126, v127);
      if ((v92 & 2) == 0)
      {
        v133 = v130;
      }

      if (v92)
      {
        v143 = vextq_s8(v137, v138, 8uLL).u64[0];
        v138 = vextq_s8(v138, v137, 8uLL);
        v144 = vextq_s8(v135, v136, 8uLL).u64[0];
        v136 = vextq_s8(v136, v135, 8uLL);
        v145 = vextq_s8(v141, v142, 8uLL).u64[0];
        v142 = vextq_s8(v142, v141, 8uLL);
        v146 = vextq_s8(v139, v140, 8uLL).u64[0];
        --v133;
        v140 = vextq_s8(v140, v139, 8uLL);
        v137.i64[0] = v143;
        v135.i64[0] = v144;
        v141.i64[0] = v145;
        v139.i64[0] = v146;
      }

      v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v83 = xmmword_296B6EDF0;
      v82 = xmmword_296B6EDE0;
      if (v133 <= 1)
      {
        v147 = 0;
      }

      else
      {
        *a14 = v138;
        *v85 = v136;
        v133 -= 2;
        v138.i64[0] = v137.i64[0];
        v136.i64[0] = v135.i64[0];
        *v86 = v142;
        v142.i64[0] = v141.i64[0];
        *v87 = v140;
        v140.i64[0] = v139.i64[0];
        v147 = 16;
      }

      if (v133 >= 1)
      {
        *(a14->i64 + v147) = v138.i64[0];
        *(v85->i64 + v147) = v136.i64[0];
        *(v86->i64 + v147) = v142.i64[0];
        *(v87->i64 + v147) = v140.i64[0];
        v147 |= 8uLL;
      }

      v148 = a12[4];
      if (v148 == v93)
      {
        goto LABEL_126;
      }

      result = (v80 + 7);
      v149 = v81 + 7;
      a14 = (a14 + v147);
      v85 = (v85 + v147);
      v86 = (v86 + v147);
      v87 = (v87 + v147);
      ++v93;
    }

    else
    {
      v148 = a12[4];
      result = v80;
      v149 = v81;
    }

    v150 = a12[5];
    v151 = v150 != 0;
    if (v148 != 0 || !v151)
    {
      v152 = v148 - v151;
      if (v93 <= v152)
      {
        break;
      }
    }

    v186 = a14;
    v187 = v85;
    v188 = v86;
    v189 = v87;
    if (v150)
    {
LABEL_111:
      v190 = result > v59 || v149 > v59;
      v191 = v233;
      if (v190)
      {
        v191 = 1;
      }

      if ((v191 | v234))
      {
        return result;
      }

      v192.i64[0] = *(result + 1);
      v192.i64[1] = *(result + 3);
      v193 = vqtbl1q_s8(v192, v82);
      v194 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v193, 8uLL), xmmword_296B6EE00), vshlq_u8(v193, v83)), xmmword_296B6EE10);
      v195 = vaddq_s8(v194, v84);
      v194.i8[1] = 0;
      v196 = vqtbl1q_s8(v195, xmmword_296B6EE20);
      v197 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v196, xmmword_296B6EE30), v196), vqtbl1q_s8(v196, xmmword_296B6EE40));
      v198 = vdupq_lane_s16(*v194.i8, 0);
      v199 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v197.i8), xmmword_296B6EE50), *v197.i8), v198);
      v200 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v197), xmmword_296B6EE50), v197), v198);
      v201 = vdupq_n_s16(bswap32(*result) >> 16);
      v202 = vaddq_s16(v200, v201);
      v203 = vaddq_s16(v199, v201);
      v204 = veorq_s8((*&v202 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v202));
      v205 = veorq_s8((*&v203 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v203));
      if (a7)
      {
        v205.i64[0] = (*(a7 + ((v205.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v205.u16[2]) << 32) | (*(a7 + 2 * v205.u16[1]) << 16) | *(a7 + 2 * v205.u16[0]);
        v205.i64[1] = (*(a7 + ((v205.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v205.u16[6]) << 32) | (*(a7 + 2 * v205.u16[5]) << 16) | *(a7 + 2 * v205.u16[4]);
        v204.i64[0] = (*(a7 + ((v204.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v204.u16[2]) << 32) | (*(a7 + 2 * v204.u16[1]) << 16) | *(a7 + 2 * v204.u16[0]);
        v204.i64[1] = (*(a7 + ((v204.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v204.u16[6]) << 32) | (*(a7 + 2 * v204.u16[5]) << 16) | *(a7 + 2 * v204.u16[4]);
      }

      v206.i64[0] = *(v149 + 1);
      v206.i64[1] = *(v149 + 3);
      v207 = vqtbl1q_s8(v206, v82);
      v208 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v207, 8uLL), xmmword_296B6EE00), vshlq_u8(v207, v83)), xmmword_296B6EE10);
      v209 = vaddq_s8(v208, v84);
      v208.i8[1] = 0;
      v210 = vqtbl1q_s8(v209, xmmword_296B6EE20);
      v211 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v210, xmmword_296B6EE30), v210), vqtbl1q_s8(v210, xmmword_296B6EE40));
      v212 = vdupq_lane_s16(*v208.i8, 0);
      v213 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v211.i8), xmmword_296B6EE50), *v211.i8), v212);
      v214 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v211), xmmword_296B6EE50), v211), v212);
      v215 = vdupq_n_s16(bswap32(*v149) >> 16);
      v216 = vaddq_s16(v214, v215);
      v217 = vaddq_s16(v213, v215);
      v218 = veorq_s8((*&v216 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v216));
      v219 = veorq_s8((*&v217 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v217));
      if (a8)
      {
        v219.i64[0] = (*(a8 + ((v219.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v219.u16[2]) << 32) | (*(a8 + 2 * v219.u16[1]) << 16) | *(a8 + 2 * v219.u16[0]);
        v219.i64[1] = (*(a8 + ((v219.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v219.u16[6]) << 32) | (*(a8 + 2 * v219.u16[5]) << 16) | *(a8 + 2 * v219.u16[4]);
        v218.i64[0] = (*(a8 + ((v218.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v218.u16[2]) << 32) | (*(a8 + 2 * v218.u16[1]) << 16) | *(a8 + 2 * v218.u16[0]);
        v218.i64[1] = (*(a8 + ((v218.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v218.u16[6]) << 32) | (*(a8 + 2 * v218.u16[5]) << 16) | *(a8 + 2 * v218.u16[4]);
      }

      v220 = v78;
      v221 = v76;
      v247.val[1] = vqtbl2q_s8(*v219.i8, xmmword_296B6EF60);
      v247.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EEA0);
      v17 = vqtbl2q_s8(v247, xmmword_296B6EDD0);
      v240.val[1] = vqtbl2q_s8(*v219.i8, xmmword_296B6EF40);
      v240.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EE70);
      v222 = vqtbl2q_s8(v240, xmmword_296B6EDD0);
      v223 = v78;
      v224 = v76;
      v240.val[1] = vqtbl2q_s8(*v218.i8, xmmword_296B6EF60);
      v240.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EEA0);
      v225 = vqtbl2q_s8(v240, xmmword_296B6EDD0);
      v240.val[1] = vqtbl2q_s8(*v218.i8, xmmword_296B6EF40);
      v240.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EE70);
      v226 = vqtbl2q_s8(v240, xmmword_296B6EDD0);
      v227 = 4 - v150;
      if ((v227 & 2) != 0)
      {
        *v186 = v222;
        *v187 = v17;
        *v188 = v226;
        *v189 = v225;
        if (v227)
        {
          v248.val[1] = vqtbl2q_s8(*v219.i8, xmmword_296B6EF70);
          v248.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EEB0);
          v254.val[1] = vqtbl2q_s8(*v219.i8, xmmword_296B6EF50);
          v254.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EE90);
          v228 = vqtbl2q_s8(v254, xmmword_296B6EDD0).u64[0];
          v254.val[1] = vqtbl2q_s8(*v218.i8, xmmword_296B6EF70);
          v254.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EEB0);
          v252.val[1] = vqtbl2q_s8(*v218.i8, xmmword_296B6EF50);
          v252.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EE90);
          v186[1].i64[0] = v228;
          v187[1].i64[0] = vqtbl2q_s8(v248, xmmword_296B6EDD0).u64[0];
          v188[1].i64[0] = vqtbl2q_s8(v252, xmmword_296B6EDD0).u64[0];
          v189[1].i64[0] = vqtbl2q_s8(v254, xmmword_296B6EDD0).u64[0];
        }
      }

      else
      {
        v186->i64[0] = v222.i64[0];
        v187->i64[0] = v17.i64[0];
        v188->i64[0] = v226.i64[0];
        v189->i64[0] = v225.i64[0];
      }
    }

LABEL_126:
    a14 = (v90 + a17);
    v81 = (v81 + v231);
    v80 = (v80 + v232);
    result = a12[6];
    v229 = v72 >= result;
    v72 = (v72 + 1);
    if (v229)
    {
      return result;
    }
  }

  if (!v230)
  {
    v153 = v152 - v93 + 1;
    while (result <= v59 && v149 <= v59)
    {
      v154.i64[0] = *(result + 1);
      v154.i64[1] = *(result + 3);
      v155 = vqtbl1q_s8(v154, v82);
      v156 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v155, 8uLL), xmmword_296B6EE00), vshlq_u8(v155, v83)), xmmword_296B6EE10);
      v157 = vaddq_s8(v156, v84);
      v156.i8[1] = 0;
      v158 = vqtbl1q_s8(v157, xmmword_296B6EE20);
      v159 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v158, xmmword_296B6EE30), v158), vqtbl1q_s8(v158, xmmword_296B6EE40));
      v160 = vdupq_lane_s16(*v156.i8, 0);
      v161 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v159.i8), xmmword_296B6EE50), *v159.i8), v160);
      v162 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v159), xmmword_296B6EE50), v159), v160);
      v163 = vdupq_n_s16(bswap32(*result) >> 16);
      v164 = vaddq_s16(v162, v163);
      v165 = vaddq_s16(v161, v163);
      v166 = veorq_s8((*&v164 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v164));
      v167 = veorq_s8((*&v165 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v165));
      if (a7)
      {
        v167.i64[0] = (*(a7 + ((v167.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v167.u16[2]) << 32) | (*(a7 + 2 * v167.u16[1]) << 16) | *(a7 + 2 * v167.u16[0]);
        v167.i64[1] = (*(a7 + ((v167.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v167.u16[6]) << 32) | (*(a7 + 2 * v167.u16[5]) << 16) | *(a7 + 2 * v167.u16[4]);
        v166.i64[0] = (*(a7 + ((v166.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v166.u16[2]) << 32) | (*(a7 + 2 * v166.u16[1]) << 16) | *(a7 + 2 * v166.u16[0]);
        v166.i64[1] = (*(a7 + ((v166.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v166.u16[6]) << 32) | (*(a7 + 2 * v166.u16[5]) << 16) | *(a7 + 2 * v166.u16[4]);
      }

      v168.i64[0] = *(v149 + 1);
      v168.i64[1] = *(v149 + 3);
      v169 = vqtbl1q_s8(v168, v82);
      v170 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v169, 8uLL), xmmword_296B6EE00), vshlq_u8(v169, v83)), xmmword_296B6EE10);
      v171 = vaddq_s8(v170, v84);
      v170.i8[1] = 0;
      v172 = vqtbl1q_s8(v171, xmmword_296B6EE20);
      v173 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v172, xmmword_296B6EE30), v172), vqtbl1q_s8(v172, xmmword_296B6EE40));
      v174 = vdupq_lane_s16(*v170.i8, 0);
      v175 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v173.i8), xmmword_296B6EE50), *v173.i8), v174);
      v176 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v173), xmmword_296B6EE50), v173), v174);
      v177 = vdupq_n_s16(bswap32(*v149) >> 16);
      v178 = vaddq_s16(v176, v177);
      v179 = vaddq_s16(v175, v177);
      v180 = veorq_s8((*&v178 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v178));
      v181 = veorq_s8((*&v179 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v179));
      if (a8)
      {
        v181.i64[0] = (*(a8 + ((v181.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v181.u16[2]) << 32) | (*(a8 + 2 * v181.u16[1]) << 16) | *(a8 + 2 * v181.u16[0]);
        v181.i64[1] = (*(a8 + ((v181.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v181.u16[6]) << 32) | (*(a8 + 2 * v181.u16[5]) << 16) | *(a8 + 2 * v181.u16[4]);
        v180.i64[0] = (*(a8 + ((v180.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v180.u16[2]) << 32) | (*(a8 + 2 * v180.u16[1]) << 16) | *(a8 + 2 * v180.u16[0]);
        v180.i64[1] = (*(a8 + ((v180.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a8 + 2 * v180.u16[6]) << 32) | (*(a8 + 2 * v180.u16[5]) << 16) | *(a8 + 2 * v180.u16[4]);
      }

      result += 7;
      v246.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF60);
      v246.val[0] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EEA0);
      v182 = vqtbl2q_s8(v246, xmmword_296B6EDD0);
      v246.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF70);
      v246.val[0] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EEB0);
      v255.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF40);
      v17 = xmmword_296B6EE70;
      v255.val[0] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EE70);
      v238.val[1] = vqtbl2q_s8(*(&v78 - 1), xmmword_296B6EF50);
      v238.val[0] = vqtbl2q_s8(*(&v76 - 1), xmmword_296B6EE90);
      v183 = v78;
      v241.val[1] = vqtbl2q_s8(*v181.i8, xmmword_296B6EF60);
      v184 = v76;
      v241.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EEA0);
      v185 = vqtbl2q_s8(v241, xmmword_296B6EDD0);
      v241.val[1] = vqtbl2q_s8(*v181.i8, xmmword_296B6EF40);
      v241.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EE70);
      v243.val[1] = vqtbl2q_s8(*v181.i8, xmmword_296B6EF70);
      v250.val[1] = vqtbl2q_s8(*v181.i8, xmmword_296B6EF50);
      v250.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EE90);
      *a14 = vqtbl2q_s8(v241, xmmword_296B6EDD0);
      a14[1] = vqtbl2q_s8(v250, xmmword_296B6EDD0);
      v243.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EEB0);
      v149 += 7;
      v186 = a14 + 2;
      *v85 = v185;
      v85[1] = vqtbl2q_s8(v243, xmmword_296B6EDD0);
      v187 = &v85[2];
      v188 = v86 + 2;
      *v86 = vqtbl2q_s8(v255, xmmword_296B6EDD0);
      v86[1] = vqtbl2q_s8(v238, xmmword_296B6EDD0);
      v189 = v87 + 2;
      *v87 = v182;
      v87[1] = vqtbl2q_s8(v246, xmmword_296B6EDD0);
      v87 += 2;
      v86 += 2;
      v85 += 2;
      a14 += 2;
      --v153;
      v84.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v84.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v83 = xmmword_296B6EDF0;
      v82 = xmmword_296B6EDE0;
      if (!v153)
      {
        v150 = a12[5];
        if (v150)
        {
          goto LABEL_111;
        }

        goto LABEL_126;
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (*&a11[1] >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a11[1];
  }

  v23 = a11[3];
  v24 = a11[7].u32[1];
  v25 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * v24) + 16), *(*(a3 + 8) + 48), v23), *(*(a3 + 8) + 48)).u32[0];
  v26 = vmin_u32(vmls_s32(*(*(*(*(a4 + 8) + 40) + 8 * v24) + 16), *(*(a4 + 8) + 48), v23), *(*(a4 + 8) + 48)).u32[0];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v256, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v255, a6);
  v28 = 12 * v26 + 16;
  if (12 * v25 + 16 > v28)
  {
    v28 = 12 * v25 + 16;
  }

  v29 = *&v22 - v28;
  if (*&v22 < v28)
  {
    return result;
  }

  v30 = *(a13 + 60);
  v31 = *(a3 + 8);
  if (v31)
  {
    v32 = a11[3];
    v33 = *(*(v31 + 40) + 8 * a11[7].u32[1]);
    v34 = *(v33 + 12) - 1;
    if (v34 >= (v32.i32[1] * v30))
    {
      v34 = (HIDWORD(*&a11[3]) * v30);
    }

    v35 = v33 + 8 * v32.u32[0];
    if (*(v31 + 104) == 1)
    {
      v36 = (*(v35 + 24) + 8 * v34);
    }

    else
    {
      v38 = (v34 * *(v31 + 108)) >> *(v31 + 112);
      v39 = *(v33 + 20) - 1;
      if (v38 >= v39)
      {
        LODWORD(v38) = v39;
      }

      v36 = (*(v35 + 24) + 8 * v38);
    }

    v37 = *v36;
  }

  else
  {
    v37 = 0;
  }

  v40 = *(a4 + 8);
  if (v40)
  {
    v41 = a11[3];
    v42 = *(*(v40 + 40) + 8 * a11[7].u32[1]);
    v43 = *(v42 + 12) - 1;
    if (v43 >= (v41.i32[1] * v30))
    {
      v43 = (HIDWORD(*&a11[3]) * v30);
    }

    v44 = v42 + 8 * v41.u32[0];
    if (*(v40 + 104) == 1)
    {
      v45 = (*(v44 + 24) + 8 * v43);
    }

    else
    {
      v47 = (v43 * *(v40 + 108)) >> *(v40 + 112);
      v48 = *(v42 + 20) - 1;
      if (v47 >= v48)
      {
        LODWORD(v47) = v48;
      }

      v45 = (*(v44 + 24) + 8 * v47);
    }

    v46 = *v45;
  }

  else
  {
    v46 = 0;
  }

  v49 = a5[1];
  if (v49)
  {
    v50 = a11[3];
    v51 = *(*(v49 + 40) + 8 * a11[7].u32[1]);
    v52 = *(v51 + 12) - 1;
    if (v52 >= (v50.i32[1] * v30))
    {
      v52 = (HIDWORD(*&a11[3]) * v30);
    }

    v53 = v51 + 8 * v50.u32[0];
    if (*(v49 + 104) == 1)
    {
      v54 = (*(v53 + 24) + 8 * v52);
    }

    else
    {
      v55 = (v52 * *(v49 + 108)) >> *(v49 + 112);
      v56 = *(v51 + 20) - 1;
      if (v55 >= v56)
      {
        LODWORD(v55) = v56;
      }

      v54 = (*(v53 + 24) + 8 * v55);
    }

    v49 = *v54;
  }

  v57 = v29 + v21;
  v58 = a6[1];
  if (v58)
  {
    v59 = a11[3];
    v60 = (v59.i32[1] * v30);
    v61 = *(*(v58 + 40) + 8 * a11[7].u32[1]);
    v62 = *(v61 + 12) - 1;
    if (v62 >= v60)
    {
      v62 = v60;
    }

    v63 = v61 + 8 * v59.u32[0];
    if (*(v58 + 104) == 1)
    {
      v64 = (*(v63 + 24) + 8 * v62);
    }

    else
    {
      v66 = (v62 * *(v58 + 108)) >> *(v58 + 112);
      v67 = *(v61 + 20) - 1;
      if (v66 < v67)
      {
        v67 = v66;
      }

      v64 = (*(v63 + 24) + 8 * v67);
    }

    v65 = *v64;
  }

  else
  {
    v65 = 0;
  }

  v68 = v49 + v21;
  v69 = v65 + v21;
  v70 = a12[2];
  v71 = v69 > v57;
  v95 = v68 > v57;
  v72 = v68 > v57;
  v73 = v95 || v71;
  v74 = a12[6];
  if (v70 > v74)
  {
    return result;
  }

  v76 = 4 * v25;
  v77 = 4 * v26;
  result = 16 * v25;
  v78 = 16 * v26;
  v79 = &v256;
  v80 = vld1q_dup_f32(v79);
  v81 = &v255;
  v82 = vld1q_dup_f32(v81);
  v83 = *a12;
  v84 = v37 + v21 + 16 * v83 + 16 * v25 * v70;
  v85 = (v46 + v21 + 16 * v83 + 16 * v26 * v70);
  while (1)
  {
    v86 = a14 + a17;
    v87 = a14 + a17 + a17;
    v88 = v87 + a17;
    if (!a16)
    {
      v91 = v87 + a17;
      goto LABEL_68;
    }

    if (v70 == a12[2])
    {
      v89 = a12[3] + 1;
      v90 = a14;
      a14 += a17;
      v86 = v87;
      v87 += a17;
      do
      {
        v91 = v87;
        v87 = v86;
        v86 = a14;
        a14 = v90;
        v90 = a16;
        --v89;
      }

      while (v89);
    }

    else
    {
      v91 = v87 + a17;
    }

    if (v70 == v74)
    {
      v92 = a12[7];
      switch(v92)
      {
        case 1u:
          goto LABEL_66;
        case 2u:
          goto LABEL_65;
        case 3u:
          v86 = a16;
LABEL_65:
          v87 = a16;
LABEL_66:
          v88 = a16;
          goto LABEL_68;
      }
    }

    v88 = v91;
LABEL_68:
    v94 = *a12;
    v93 = a12[1];
    if (v93)
    {
      v95 = v84 > v57 || v85 > v57;
      v96 = v95 || v72;
      if ((v96 | v71))
      {
        return result;
      }

      v27.i32[0] = 0;
      v97 = (v85 + v77 + v77);
      v98 = *(v97 + v77);
      v99 = vuzp1q_s32(v98, v82);
      v100 = *(v84 + v76);
      v101 = (v84 + v76 + v76);
      v102 = *(v101 + v76);
      v103 = v80;
      v103.i32[0] = *(&v101->i64[1] + v76);
      v104 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v102, v80)), vextq_s8(v98, v99, 0xCuLL));
      v105 = vtrn2q_s32(vrev64q_s32(v103), v99);
      v106 = vuzp2q_s32(v98, v82);
      v98.i32[3] = v82.i32[1];
      v107 = vuzp2q_s32(v102, v80);
      v108 = *v84;
      v109 = *v85;
      v110 = *(v85 + v77);
      v111 = *v97;
      v112 = vtrn2q_s32(vrev64q_s32(v107), v98);
      v113 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v107, v102)), v106);
      v114 = vuzp1q_s32(*v97, v82);
      v115 = v80;
      v115.i32[0] = v101->i64[1];
      v116 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v101, v80)), vextq_s8(*v97, v114, 0xCuLL));
      v117 = vtrn2q_s32(vrev64q_s32(v115), v114);
      v111.i32[3] = v82.i32[1];
      v118 = vuzp2q_s32(*v101, v80);
      v119 = vtrn2q_s32(vrev64q_s32(v118), v111);
      v120 = vrev64q_s32(vtrn2q_s32(v118, *v101));
      v121 = vtrn2q_s32(v120, vuzp2q_s32(*v97, v82));
      if (a12[4] == v94)
      {
        v122 = 4 - a12[5];
      }

      else
      {
        v122 = 4;
      }

      v120.i32[0] = a12[1] & 2;
      v123 = vdupq_lane_s32(*&vceqq_s32(v120, v27), 0);
      v124 = vbslq_s8(v123, v119, v121);
      v125 = vbslq_s8(v123, v116, v117);
      v126 = vbslq_s8(v123, v112, v113);
      v127 = vbslq_s8(v123, v104, v105);
      v128 = vuzp2q_s32(v110, v82);
      v129 = vuzp1q_s32(v110, v82);
      v130 = vextq_s8(v110, v129, 0xCuLL);
      v110.i32[3] = v82.i32[1];
      v131 = vuzp2q_s32(v100, v80);
      v132 = vtrn2q_s32(vrev64q_s32(v131), v110);
      v133 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v131, v100)), v128);
      v134 = vbslq_s8(v123, v132, v133);
      v135 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v100, v80)), v130);
      v136 = v80;
      v136.i32[0] = *(v84 + v76 + 8);
      v137 = vtrn2q_s32(vrev64q_s32(v136), v129);
      v138 = vuzp2q_s32(v109, v82);
      v139 = vuzp1q_s32(v109, v82);
      v140 = vextq_s8(v109, v139, 0xCuLL);
      v109.i32[3] = v82.i32[1];
      v141 = vbslq_s8(v123, v135, v137);
      v142 = vuzp2q_s32(v108, v80);
      v143 = vtrn2q_s32(vrev64q_s32(v142), v109);
      v144 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v142, v108)), v138);
      v145 = vbslq_s8(v123, v143, v144);
      v146 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v108, v80)), v140);
      v147 = v80;
      v147.i32[0] = *(v84 + 8);
      v148 = vrev64q_s32(v147);
      v149 = vtrn2q_s32(v148, v139);
      if ((v93 & 2) != 0)
      {
        v122 -= 2;
      }

      v150 = v93 & 1;
      v151 = v122 - v150;
      v148.i32[0] = v150;
      v152 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v148, v27)), 0);
      v153 = vbslq_s8(v152, v145, vbslq_s8(v123, v146, v149));
      v154 = vbslq_s8(v152, v134, v141);
      v27 = vbslq_s8(v152, v126, v127);
      v155 = vbslq_s8(v152, v124, v125);
      if (v122 - v150 <= 1)
      {
        v162 = 0;
      }

      else
      {
        v156 = vbslq_s8(v123, v117, v116);
        v157 = vbslq_s8(v123, v121, v119);
        v158 = vbslq_s8(v123, v105, v104);
        v159 = vbslq_s8(v123, v113, v112);
        v160 = vbslq_s8(v123, v137, v135);
        v161 = vbslq_s8(v123, v149, v146);
        *a14 = v153;
        *(a14 + 16) = vbslq_s8(v152, v161, v145);
        *v86 = v154;
        *(v86 + 16) = vbslq_s8(v152, v160, v134);
        *v87 = v155;
        *(v87 + 16) = vbslq_s8(v152, v156, v124);
        v151 -= 2;
        v153 = vbslq_s8(v152, vbslq_s8(v123, v144, v143), v161);
        *v88 = v27;
        *(v88 + 16) = vbslq_s8(v152, v158, v126);
        v154 = vbslq_s8(v152, vbslq_s8(v123, v133, v132), v160);
        v155 = vbslq_s8(v152, v157, v156);
        v27 = vbslq_s8(v152, v159, v158);
        v162 = 32;
      }

      if (v151 >= 1)
      {
        *(v162 + a14) = v153;
        *(v162 + v86) = v154;
        *(v162 + v87) = v155;
        *(v162 + v88) = v27;
        v162 |= 0x10uLL;
      }

      v163 = a12[4];
      if (v163 == v94)
      {
        goto LABEL_134;
      }

      v164 = (v84 + 16);
      v165 = v85 + 1;
      a14 += v162;
      v86 += v162;
      v87 += v162;
      v88 += v162;
      ++v94;
    }

    else
    {
      v163 = a12[4];
      v164 = v84;
      v165 = v85;
    }

    v166 = a12[5];
    v167 = v166 != 0;
    if (v163 != 0 || !v167)
    {
      v168 = v163 - v167;
      if (v94 <= v168)
      {
        break;
      }
    }

    v208 = a14;
    v209 = v86;
    v210 = v87;
    v211 = v88;
    if (v166)
    {
LABEL_99:
      v212 = 4 - a12[7];
      if (v70 != a12[6])
      {
        v212 = 4;
      }

      v214 = v164 > v57 || v165 > v57 || v72;
      if ((v214 | v71))
      {
        return result;
      }

      if (v212 < 2)
      {
        v216 = 0;
        v215 = v164;
        v217 = v164;
      }

      else
      {
        v215 = (v164 + v76);
        if (v212 == 2)
        {
          v216 = 0;
          v217 = (v164 + v76);
        }

        else
        {
          v217 = (v164 + v76);
          v215 = (v215 + v76);
          if (v212 <= 3)
          {
            v216 = 0;
          }

          else
          {
            v216 = v76;
          }
        }
      }

      v218 = (v215 + v216);
      v219 = 0uLL;
      v220 = 0uLL;
      v27 = 0uLL;
      v221 = 0uLL;
      if ((4 - v166))
      {
        v221.i32[0] = *(v164 + 3 - v166);
        v219.i32[0] = *(v217 + 3 - v166);
        v220.i32[0] = *(v215 + 3 - v166);
        v27.i32[0] = *(v218 + 3 - v166);
      }

      if (((4 - v166) & 2) != 0)
      {
        v222.i64[0] = *v164;
        v222.i64[1] = v221.i64[0];
        v223.i64[0] = *v217;
        v223.i64[1] = v219.i64[0];
        v224.i64[0] = *v215;
        v224.i64[1] = v220.i64[0];
        v225.i64[0] = *v218;
        v225.i64[1] = v27.i64[0];
        v219 = v223;
        v220 = v224;
        v27 = v225;
        v221 = v222;
      }

      if (v212 < 2)
      {
        v227 = 0;
        v226 = v165;
        v228 = v165;
      }

      else
      {
        v226 = (v165->i64 + v77);
        if (v212 == 2)
        {
          v227 = 0;
          v228 = (v165->i64 + v77);
        }

        else
        {
          v228 = (v165->i64 + v77);
          v226 = (v226 + v77);
          if (v212 <= 3)
          {
            v227 = 0;
          }

          else
          {
            v227 = v77;
          }
        }
      }

      v229 = (v226 + v227);
      v230 = 0uLL;
      v231 = 0uLL;
      v232 = 0uLL;
      v233 = 0uLL;
      if ((4 - v166))
      {
        v233.i32[0] = v165->i32[3 - v166];
        v230.i32[0] = *(v228 + 3 - v166);
        v231.i32[0] = *(v226 + 3 - v166);
        v232.i32[0] = *(v229 + 3 - v166);
      }

      if (((4 - v166) & 2) != 0)
      {
        v234.i64[0] = v165->i64[0];
        v234.i64[1] = v233.i64[0];
        v235.i64[0] = *v228;
        v235.i64[1] = v230.i64[0];
        v236.i64[0] = *v226;
        v236.i64[1] = v231.i64[0];
        v237.i64[0] = *v229;
        v237.i64[1] = v232.i64[0];
        v230 = v235;
        v231 = v236;
        v232 = v237;
        v233 = v234;
      }

      v238 = vuzp1q_s32(v233, v82);
      v239 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v221, v80)), vextq_s8(v233, v238, 0xCuLL));
      v240 = vuzp1q_s32(v230, v82);
      v241 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v219, v80)), vextq_s8(v230, v240, 0xCuLL));
      v242 = vuzp1q_s32(v231, v82);
      v243 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v220, v80)), vextq_s8(v231, v242, 0xCuLL));
      v244 = vuzp1q_s32(v232, v82);
      v245 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v27, v80)), vextq_s8(v232, v244, 0xCuLL));
      if (((4 - v166) & 2) != 0)
      {
        v233.i32[3] = v82.i32[1];
        v230.i32[3] = v82.i32[1];
        v231.i32[3] = v82.i32[1];
        v232.i32[3] = v82.i32[1];
        *v208 = v239;
        v208[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v221, v80)), v233);
        *v209 = v241;
        v209[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v219, v80)), v230);
        *v210 = v243;
        v210[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v220, v80)), v231);
        *v211 = v245;
        v211[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v27, v80)), v232);
        if ((4 - v166))
        {
          v246 = v80;
          v246.i32[0] = v221.i32[2];
          v247 = vtrn2q_s32(vrev64q_s32(v246), v238);
          v248 = v80;
          v248.i32[0] = v219.i32[2];
          v249 = vrev64q_s32(v248);
          v250 = v80;
          v250.i32[0] = v220.i32[2];
          v251 = vtrn2q_s32(v249, v240);
          v252 = vtrn2q_s32(vrev64q_s32(v250), v242);
          v253 = v80;
          v253.i32[0] = v27.i32[2];
          v208[2] = v247;
          v209[2] = v251;
          v27 = vtrn2q_s32(vrev64q_s32(v253), v244);
          v210[2] = v252;
          v211[2] = v27;
        }
      }

      else
      {
        *v208 = v239;
        *v209 = v241;
        *v210 = v243;
        *v211 = v245;
      }
    }

LABEL_134:
    a14 = v91 + a17;
    v85 = (v85 + v78);
    v84 += result;
    v74 = a12[6];
    if (v70++ >= v74)
    {
      return result;
    }
  }

  if (!v73)
  {
    v169 = v168 - v94 + 1;
    while (v164 <= v57 && v165 <= v57)
    {
      v170 = (v164 + v76);
      v171 = (v164 + v76 + v76);
      v172 = *(v171 + v76);
      v173 = vuzp2q_s32(v172, v80);
      v174 = (v165 + v77);
      v175 = (v165 + v77 + v77);
      v176 = *(v175 + v77);
      v177 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v173, v172)), vuzp2q_s32(v176, v82));
      v178 = v80;
      v178.i32[0] = v171->i64[1];
      v179 = *v175;
      v180 = vuzp1q_s32(*v175, v82);
      v181 = vtrn2q_s32(vrev64q_s32(v178), v180);
      v179.i32[3] = v82.i32[1];
      v182 = vuzp2q_s32(*v171, v80);
      v183 = *v164;
      v164 += 2;
      v184 = v183;
      v185 = *v170;
      v186 = *v165++;
      v187 = v186;
      v188 = vtrn2q_s32(vrev64q_s32(v182), v179);
      v189 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(*v171, v80)), vextq_s8(*v175, v180, 0xCuLL));
      v190 = *v174;
      v191 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v182, *v171)), vuzp2q_s32(*v175, v82));
      v192 = v80;
      v192.i32[0] = v170->i64[1];
      v193 = vuzp1q_s32(*v174, v82);
      v194 = vtrn2q_s32(vrev64q_s32(v192), v193);
      v195 = vextq_s8(*v174, v193, 0xCuLL);
      v196 = vuzp2q_s32(*v174, v82);
      v190.i32[3] = v82.i32[1];
      v197 = vuzp2q_s32(*v170, v80);
      v198 = vuzp2q_s32(v184, v80);
      v199 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v198, v184)), vuzp2q_s32(v186, v82));
      v200 = vuzp1q_s32(v186, v82);
      v201 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v184, v80)), vextq_s8(v186, v200, 0xCuLL));
      v187.i32[3] = v82.i32[1];
      v202 = vtrn2q_s32(vrev64q_s32(v198), v187);
      v203 = v80;
      v203.i32[0] = v184.i32[2];
      v204 = vuzp1q_s32(v176, v82);
      v205 = vtrn2q_s32(vrev64q_s32(v203), v200);
      v206 = vextq_s8(v176, v204, 0xCuLL);
      v176.i32[3] = v82.i32[1];
      *a14 = v201;
      *(a14 + 16) = v202;
      v207 = v80;
      v208 = (a14 + 64);
      *(a14 + 32) = v205;
      *(a14 + 48) = v199;
      v209 = (v86 + 64);
      *v86 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v185, v80)), v195);
      *(v86 + 16) = vtrn2q_s32(vrev64q_s32(v197), v190);
      *(v86 + 32) = v194;
      *(v86 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v185)), v196);
      v210 = (v87 + 64);
      *v87 = v189;
      *(v87 + 16) = v188;
      *(v87 + 32) = v181;
      *(v87 + 48) = v191;
      v211 = (v88 + 64);
      v207.i32[0] = v172.i32[2];
      *(v88 + 32) = vtrn2q_s32(vrev64q_s32(v207), v204);
      *(v88 + 48) = v177;
      v27 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v172, v80)), v206);
      *v88 = v27;
      *(v88 + 16) = vtrn2q_s32(vrev64q_s32(v173), v176);
      v88 += 64;
      v87 += 64;
      v86 += 64;
      a14 += 64;
      if (!--v169)
      {
        v166 = a12[5];
        if (v166)
        {
          goto LABEL_99;
        }

        goto LABEL_134;
      }
    }
  }

  return result;
}

__int16 *ExtractInterleaved4_B44<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(__int16 *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v183, a3);
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v182, a4);
  v23 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a5 + 8) + 48), a11[3]), *(*(a5 + 8) + 48)).u32[0];
  v24 = v23 <= 0xFFFFFFFC ? (v23 + 3) >> 2 : 0x40000000;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v181, a6);
  if (v22 < 0xE)
  {
    return result;
  }

  v26 = *(a13 + 60);
  v27 = a3[1];
  if (v27)
  {
    v28 = a11[3];
    v29 = *(*(v27 + 40) + 8 * a11[7].u32[1]);
    v30 = *(v29 + 12) - 1;
    if (v30 >= (v28.i32[1] * v26))
    {
      v30 = (HIDWORD(*&a11[3]) * v26);
    }

    v31 = v29 + 8 * v28.u32[0];
    if (*(v27 + 104) == 1)
    {
      v32 = (*(v31 + 24) + 8 * v30);
    }

    else
    {
      v34 = (v30 * *(v27 + 108)) >> *(v27 + 112);
      v35 = *(v29 + 20) - 1;
      if (v34 >= v35)
      {
        LODWORD(v34) = v35;
      }

      v32 = (*(v31 + 24) + 8 * v34);
    }

    v33 = *v32;
  }

  else
  {
    v33 = 0;
  }

  v36 = a4[1];
  if (v36)
  {
    v37 = a11[3];
    v38 = *(*(v36 + 40) + 8 * a11[7].u32[1]);
    v39 = *(v38 + 12) - 1;
    if (v39 >= (v37.i32[1] * v26))
    {
      v39 = (HIDWORD(*&a11[3]) * v26);
    }

    v40 = v38 + 8 * v37.u32[0];
    if (*(v36 + 104) == 1)
    {
      v41 = (*(v40 + 24) + 8 * v39);
    }

    else
    {
      v43 = (v39 * *(v36 + 108)) >> *(v36 + 112);
      v44 = *(v38 + 20) - 1;
      if (v43 >= v44)
      {
        LODWORD(v43) = v44;
      }

      v41 = (*(v40 + 24) + 8 * v43);
    }

    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v45 = *(a5 + 8);
  if (v45)
  {
    v46 = a11[3];
    v47 = *(*(v45 + 40) + 8 * a11[7].u32[1]);
    v48 = *(v47 + 12) - 1;
    if (v48 >= (v46.i32[1] * v26))
    {
      v48 = (HIDWORD(*&a11[3]) * v26);
    }

    v49 = v47 + 8 * v46.u32[0];
    if (*(v45 + 104) == 1)
    {
      v50 = (*(v49 + 24) + 8 * v48);
    }

    else
    {
      v51 = (v48 * *(v45 + 108)) >> *(v45 + 112);
      v52 = *(v47 + 20) - 1;
      if (v51 >= v52)
      {
        LODWORD(v51) = v52;
      }

      v50 = (*(v49 + 24) + 8 * v51);
    }

    result = *v50;
  }

  else
  {
    result = 0;
  }

  v53 = v21 + v22 - 14;
  v54 = a6[1];
  if (v54)
  {
    v55 = a11[3];
    v56 = (v55.i32[1] * v26);
    v57 = *(*(v54 + 40) + 8 * a11[7].u32[1]);
    v58 = *(v57 + 12) - 1;
    if (v58 >= v56)
    {
      v58 = v56;
    }

    v59 = v57 + 8 * v55.u32[0];
    if (*(v54 + 104) == 1)
    {
      v60 = (*(v59 + 24) + 8 * v58);
    }

    else
    {
      v62 = (v58 * *(v54 + 108)) >> *(v54 + 112);
      v63 = *(v57 + 20) - 1;
      if (v62 < v63)
      {
        v63 = v62;
      }

      v60 = (*(v59 + 24) + 8 * v63);
    }

    v61 = *v60;
  }

  else
  {
    v61 = 0;
  }

  v64 = v21 + v33;
  v65 = v21 + v42;
  v66 = v21 + v61;
  v67 = a12[2];
  v68 = v66 > v53;
  v69 = v64 > v53 || v65 > v53;
  v70 = v69;
  v71 = v69 || v68;
  v72 = a12[6];
  if (v67 > v72)
  {
    return result;
  }

  v74 = &v183;
  v75 = vld1q_dup_s16(v74);
  v76 = &v181;
  v184.val[1] = vld1q_dup_s16(v76);
  v77 = 14 * v24;
  v78 = &v182;
  v184.val[0] = vld1q_dup_s16(v78);
  v79 = vqtbl2q_s8(v184, xmmword_296B6EDD0);
  result = (&v21[7 * *a12] + result + v77 * v67);
  v80.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v80.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v81 = (a14 + a17);
    v82 = (a14 + a17 + a17);
    v83 = (v82 + a17);
    if (!a16)
    {
      v86 = (v82 + a17);
      goto LABEL_76;
    }

    if (v67 == a12[2])
    {
      v84 = a12[3] + 1;
      v85 = a14;
      a14 = (a14 + a17);
      v81 = v82;
      v82 = (v82 + a17);
      do
      {
        v86 = v82;
        v82 = v81;
        v81 = a14;
        a14 = v85;
        v85 = a16;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = (v82 + a17);
    }

    if (v67 == v72)
    {
      v87 = a12[7];
      switch(v87)
      {
        case 1u:
          goto LABEL_74;
        case 2u:
          goto LABEL_73;
        case 3u:
          v81 = a16;
LABEL_73:
          v82 = a16;
LABEL_74:
          v83 = a16;
          goto LABEL_76;
      }
    }

    v83 = v86;
LABEL_76:
    v88 = *a12;
    v89 = a12[1];
    if (!v89)
    {
      v131 = a12[4];
      v132 = result;
      goto LABEL_98;
    }

    v90 = result > v53 || v70;
    if ((v90 | v68))
    {
      return result;
    }

    v91.i64[0] = *(result + 1);
    v91.i64[1] = *(result + 3);
    v92 = vqtbl1q_s8(v91, xmmword_296B6EDE0);
    v93 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v92, 8uLL), xmmword_296B6EE00), vshlq_u8(v92, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v94 = vaddq_s8(v93, v80);
    v93.i8[1] = 0;
    v95 = vqtbl1q_s8(v94, xmmword_296B6EE20);
    v96 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v95, xmmword_296B6EE30), v95), vqtbl1q_s8(v95, xmmword_296B6EE40));
    v97 = vdupq_lane_s16(*v93.i8, 0);
    v98 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v96.i8), xmmword_296B6EE50), *v96.i8), v97);
    v99 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v96), xmmword_296B6EE50), v96), v97);
    v100 = vdupq_n_s16(bswap32(*result) >> 16);
    v101 = vaddq_s16(v99, v100);
    v102 = vaddq_s16(v98, v100);
    v103 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
    v104 = veorq_s8((*&v102 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v102));
    if (a9)
    {
      v104.i64[0] = (*(a9 + ((v104.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v104.u16[2]) << 32) | (*(a9 + 2 * v104.u16[1]) << 16) | *(a9 + 2 * v104.u16[0]);
      v104.i64[1] = (*(a9 + ((v104.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v104.u16[6]) << 32) | (*(a9 + 2 * v104.u16[5]) << 16) | *(a9 + 2 * v104.u16[4]);
      v103.i64[0] = (*(a9 + ((v103.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v103.u16[2]) << 32) | (*(a9 + 2 * v103.u16[1]) << 16) | *(a9 + 2 * v103.u16[0]);
      v103.i64[1] = (*(a9 + ((v103.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v103.u16[6]) << 32) | (*(a9 + 2 * v103.u16[5]) << 16) | *(a9 + 2 * v103.u16[4]);
    }

    v25.i32[0] = 0;
    v105 = v75;
    v185.val[0] = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EE70);
    v185.val[1] = v79;
    v106 = vqtbl2q_s8(v185, xmmword_296B6EE60);
    v185.val[0] = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EE90);
    v185.val[1] = v79;
    v107 = vqtbl2q_s8(v185, xmmword_296B6EE80);
    v185.val[0] = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EEA0);
    v185.val[1] = v79;
    v108 = vqtbl2q_s8(v185, xmmword_296B6EE60);
    v191.val[0] = vqtbl2q_s8(*(&v103 - 1), xmmword_296B6EEB0);
    v191.val[1] = v79;
    v109 = vqtbl2q_s8(v191, xmmword_296B6EE80);
    v110 = v75;
    v185.val[0] = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EE70);
    v185.val[1] = v79;
    v111 = vqtbl2q_s8(v185, xmmword_296B6EE60);
    v185.val[0] = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EE90);
    v185.val[1] = v79;
    v112 = vqtbl2q_s8(v185, xmmword_296B6EE80);
    v185.val[0] = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EEA0);
    v185.val[1] = v79;
    v113 = vqtbl2q_s8(v185, xmmword_296B6EE60);
    v114 = vqtbl2q_s8(*(&v104 - 1), xmmword_296B6EEB0);
    v115 = v79;
    v116 = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80);
    if (a12[4] == v88)
    {
      v117 = 4 - a12[5];
    }

    else
    {
      v117 = 4;
    }

    v115.i32[0] = a12[1] & 2;
    v118 = vdupq_lane_s32(*&vceqq_s32(v115, v25), 0);
    v119 = vbslq_s8(v118, v116, v113);
    v120 = vbslq_s8(v118, v113, v116);
    v121 = vbslq_s8(v118, v112, v111);
    v122 = vbslq_s8(v118, v111, v112);
    v25 = vbslq_s8(v118, v109, v108);
    v123 = vbslq_s8(v118, v108, v109);
    v124 = vbslq_s8(v118, v107, v106);
    v125 = vbslq_s8(v118, v106, v107);
    if ((v89 & 2) != 0)
    {
      v117 -= 2;
    }

    if (v89)
    {
      v126 = vextq_s8(v121, v122, 8uLL).u64[0];
      v122 = vextq_s8(v122, v121, 8uLL);
      v127 = vextq_s8(v119, v120, 8uLL).u64[0];
      v120 = vextq_s8(v120, v119, 8uLL);
      v128 = vextq_s8(v124, v125, 8uLL).u64[0];
      v125 = vextq_s8(v125, v124, 8uLL);
      v129 = vextq_s8(v25, v123, 8uLL);
      --v117;
      v123 = vextq_s8(v123, v25, 8uLL);
      v121.i64[0] = v126;
      v119.i64[0] = v127;
      v124.i64[0] = v128;
      v25 = v129;
    }

    if (v117 <= 1)
    {
      v130 = 0;
    }

    else
    {
      *a14 = v122;
      *v81 = v120;
      v117 -= 2;
      v122.i64[0] = v121.i64[0];
      v120.i64[0] = v119.i64[0];
      *v82 = v125;
      v125.i64[0] = v124.i64[0];
      *v83 = v123;
      v123.i64[0] = v25.i64[0];
      v130 = 16;
    }

    if (v117 >= 1)
    {
      *(a14->i64 + v130) = v122.i64[0];
      *(v81->i64 + v130) = v120.i64[0];
      *(v82->i64 + v130) = v125.i64[0];
      *(v83->i64 + v130) = v123.i64[0];
      v130 |= 8uLL;
    }

    v131 = a12[4];
    if (v131 != v88)
    {
      break;
    }

LABEL_119:
    a14 = (v86 + a17);
    result = (result + v77);
    v72 = a12[6];
    if (v67++ >= v72)
    {
      return result;
    }
  }

  v132 = (result + 7);
  a14 = (a14 + v130);
  v81 = (v81 + v130);
  v82 = (v82 + v130);
  v83 = (v83 + v130);
  ++v88;
LABEL_98:
  v133 = a12[5];
  v134 = v133 != 0;
  if (v131 == 0 && v134 || (v135 = v131 - v134, v88 > v135))
  {
    v156 = a14;
    v157 = v81;
    v158 = v82;
    v159 = v83;
    if (v133)
    {
LABEL_109:
      v160 = v132 > v53 || v70;
      if ((v160 | v68))
      {
        return result;
      }

      v161.i64[0] = *(v132 + 1);
      v161.i64[1] = *(v132 + 3);
      v162 = vqtbl1q_s8(v161, xmmword_296B6EDE0);
      v163 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v162, 8uLL), xmmword_296B6EE00), vshlq_u8(v162, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v164 = vaddq_s8(v163, v80);
      v163.i8[1] = 0;
      v165 = vqtbl1q_s8(v164, xmmword_296B6EE20);
      v166 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v165, xmmword_296B6EE30), v165), vqtbl1q_s8(v165, xmmword_296B6EE40));
      v167 = vdupq_lane_s16(*v163.i8, 0);
      v168 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v166.i8), xmmword_296B6EE50), *v166.i8), v167);
      v169 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v166), xmmword_296B6EE50), v166), v167);
      v170 = vdupq_n_s16(bswap32(*v132) >> 16);
      v171 = vaddq_s16(v169, v170);
      v172 = vaddq_s16(v168, v170);
      v173 = veorq_s8((*&v171 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v171));
      v174 = veorq_s8((*&v172 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v172));
      if (a9)
      {
        v174.i64[0] = (*(a9 + ((v174.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v174.u16[2]) << 32) | (*(a9 + 2 * v174.u16[1]) << 16) | *(a9 + 2 * v174.u16[0]);
        v174.i64[1] = (*(a9 + ((v174.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v174.u16[6]) << 32) | (*(a9 + 2 * v174.u16[5]) << 16) | *(a9 + 2 * v174.u16[4]);
        v173.i64[0] = (*(a9 + ((v173.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v173.u16[2]) << 32) | (*(a9 + 2 * v173.u16[1]) << 16) | *(a9 + 2 * v173.u16[0]);
        v173.i64[1] = (*(a9 + ((v173.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v173.u16[6]) << 32) | (*(a9 + 2 * v173.u16[5]) << 16) | *(a9 + 2 * v173.u16[4]);
      }

      v175 = v75;
      v187.val[0] = vqtbl2q_s8(*(&v174 - 1), xmmword_296B6EEA0);
      v187.val[1] = v79;
      v25 = vqtbl2q_s8(v187, xmmword_296B6EE60);
      v187.val[0] = vqtbl2q_s8(*(&v174 - 1), xmmword_296B6EE70);
      v187.val[1] = v79;
      v176 = vqtbl2q_s8(v187, xmmword_296B6EE60);
      v177 = v75;
      v190.val[0] = vqtbl2q_s8(*(&v173 - 1), xmmword_296B6EEA0);
      v190.val[1] = v79;
      v178 = vqtbl2q_s8(v190, xmmword_296B6EE60);
      v190.val[0] = vqtbl2q_s8(*(&v173 - 1), xmmword_296B6EE70);
      v190.val[1] = v79;
      v179 = vqtbl2q_s8(v190, xmmword_296B6EE60);
      if (((4 - v133) & 2) != 0)
      {
        *v156 = v176;
        *v157 = v25;
        *v158 = v179;
        *v159 = v178;
        if ((4 - v133))
        {
          v188.val[0] = vqtbl2q_s8(*(&v174 - 1), xmmword_296B6EEB0);
          v188.val[1] = v79;
          v25 = vqtbl2q_s8(v188, xmmword_296B6EE80);
          v194.val[0] = vqtbl2q_s8(*(&v174 - 1), xmmword_296B6EE90);
          v194.val[1] = v79;
          v188.val[0] = vqtbl2q_s8(*(&v173 - 1), xmmword_296B6EEB0);
          v188.val[1] = v79;
          v192.val[0] = vqtbl2q_s8(*(&v173 - 1), xmmword_296B6EE90);
          v192.val[1] = v79;
          v156[1].i64[0] = vqtbl2q_s8(v194, xmmword_296B6EE80).u64[0];
          v157[1].i64[0] = v25.i64[0];
          v158[1].i64[0] = vqtbl2q_s8(v192, xmmword_296B6EE80).u64[0];
          v159[1].i64[0] = vqtbl2q_s8(v188, xmmword_296B6EE80).u64[0];
        }
      }

      else
      {
        v156->i64[0] = v176.i64[0];
        v157->i64[0] = v25.i64[0];
        v158->i64[0] = v179.i64[0];
        v159->i64[0] = v178.i64[0];
      }
    }

    goto LABEL_119;
  }

  if (!v71)
  {
    v136 = v135 - v88 + 1;
    while (v132 <= v53)
    {
      v137.i64[0] = *(v132 + 1);
      v137.i64[1] = *(v132 + 3);
      v138 = vqtbl1q_s8(v137, xmmword_296B6EDE0);
      v139 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v138, 8uLL), xmmword_296B6EE00), vshlq_u8(v138, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v140 = vaddq_s8(v139, v80);
      v139.i8[1] = 0;
      v141 = vqtbl1q_s8(v140, xmmword_296B6EE20);
      v142 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v141, xmmword_296B6EE30), v141), vqtbl1q_s8(v141, xmmword_296B6EE40));
      v143 = vdupq_lane_s16(*v139.i8, 0);
      v144 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v142.i8), xmmword_296B6EE50), *v142.i8), v143);
      v145 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v142), xmmword_296B6EE50), v142), v143);
      v146 = vdupq_n_s16(bswap32(*v132) >> 16);
      v147 = vaddq_s16(v145, v146);
      v148 = vaddq_s16(v144, v146);
      v149 = veorq_s8((*&v147 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v147));
      v150 = veorq_s8((*&v148 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v148));
      if (a9)
      {
        v150.i64[0] = (*(a9 + ((v150.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v150.u16[2]) << 32) | (*(a9 + 2 * v150.u16[1]) << 16) | *(a9 + 2 * v150.u16[0]);
        v150.i64[1] = (*(a9 + ((v150.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v150.u16[6]) << 32) | (*(a9 + 2 * v150.u16[5]) << 16) | *(a9 + 2 * v150.u16[4]);
        v149.i64[0] = (*(a9 + ((v149.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v149.u16[2]) << 32) | (*(a9 + 2 * v149.u16[1]) << 16) | *(a9 + 2 * v149.u16[0]);
        v149.i64[1] = (*(a9 + ((v149.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v149.u16[6]) << 32) | (*(a9 + 2 * v149.u16[5]) << 16) | *(a9 + 2 * v149.u16[4]);
      }

      v151 = v149;
      v152 = vqtbl2q_s8(*v75.i8, xmmword_296B6EEA0);
      v195.val[0] = vqtbl2q_s8(*v75.i8, xmmword_296B6EEB0);
      v195.val[1] = v79;
      v195.val[0] = vqtbl2q_s8(v195, xmmword_296B6EE80);
      v186.val[0] = vqtbl2q_s8(*v75.i8, xmmword_296B6EE70);
      v186.val[1] = v79;
      v25 = vqtbl2q_s8(v186, xmmword_296B6EE60);
      v186.val[0] = vqtbl2q_s8(*v75.i8, xmmword_296B6EE90);
      v186.val[1] = v79;
      v186.val[0] = vqtbl2q_s8(v186, xmmword_296B6EE80);
      v153 = v75;
      v186.val[1] = vqtbl2q_s8(*(&v150 - 1), xmmword_296B6EEA0);
      v154 = v79;
      v186.val[1] = vqtbl2q_s8(*(&v186 + 16), xmmword_296B6EE60);
      v189.val[0] = vqtbl2q_s8(*(&v150 - 1), xmmword_296B6EE70);
      v189.val[1] = v79;
      v189.val[0] = vqtbl2q_s8(v189, xmmword_296B6EE60);
      v189.val[1] = vqtbl2q_s8(*(&v150 - 1), xmmword_296B6EEB0);
      v193.val[0] = vqtbl2q_s8(*(&v150 - 1), xmmword_296B6EE90);
      v193.val[1] = v79;
      *a14 = v189.val[0];
      a14[1] = vqtbl2q_s8(v193, xmmword_296B6EE80);
      v155 = v79;
      v132 += 7;
      v156 = a14 + 2;
      *v81 = v186.val[1];
      v81[1] = vqtbl2q_s8(*(&v189 + 16), xmmword_296B6EE80);
      v157 = &v81[2];
      v158 = v82 + 2;
      *v82 = v25;
      v82[1] = v186.val[0];
      v159 = v83 + 2;
      *v83 = vqtbl2q_s8(*(&v79 - 1), xmmword_296B6EE60);
      v83[1] = v195.val[0];
      v83 += 2;
      v82 += 2;
      v81 += 2;
      a14 += 2;
      if (!--v136)
      {
        v133 = a12[5];
        if (v133)
        {
          goto LABEL_109;
        }

        goto LABEL_119;
      }
    }
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(int32x4_t *result, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v21 = result;
  v22 = *&a11[1] >= a2 ? a2 : *&a11[1];
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v203, a3);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v202, a4);
  v23 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a5 + 8) + 48), a11[3]), *(*(a5 + 8) + 48)).u32[0];
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v201, a6);
  v26 = 12 * v23 + 16;
  v27 = v22 - v26;
  if (v22 < v26)
  {
    return result;
  }

  v28 = *(a13 + 60);
  v29 = a3[1];
  if (v29)
  {
    v30 = a11[3];
    v31 = *(*(v29 + 40) + 8 * a11[7].u32[1]);
    v32 = *(v31 + 12) - 1;
    if (v32 >= (v30.i32[1] * v28))
    {
      v32 = (HIDWORD(*&a11[3]) * v28);
    }

    v33 = v31 + 8 * v30.u32[0];
    if (*(v29 + 104) == 1)
    {
      v34 = (*(v33 + 24) + 8 * v32);
    }

    else
    {
      v36 = (v32 * *(v29 + 108)) >> *(v29 + 112);
      v37 = *(v31 + 20) - 1;
      if (v36 >= v37)
      {
        LODWORD(v36) = v37;
      }

      v34 = (*(v33 + 24) + 8 * v36);
    }

    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v38 = a4[1];
  if (v38)
  {
    v39 = a11[3];
    v40 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
    v41 = *(v40 + 12) - 1;
    if (v41 >= (v39.i32[1] * v28))
    {
      v41 = (HIDWORD(*&a11[3]) * v28);
    }

    v42 = v40 + 8 * v39.u32[0];
    if (*(v38 + 104) == 1)
    {
      v43 = (*(v42 + 24) + 8 * v41);
    }

    else
    {
      v45 = (v41 * *(v38 + 108)) >> *(v38 + 112);
      v46 = *(v40 + 20) - 1;
      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      v43 = (*(v42 + 24) + 8 * v45);
    }

    v44 = *v43;
  }

  else
  {
    v44 = 0;
  }

  v47 = *(a5 + 8);
  if (v47)
  {
    v48 = a11[3];
    v49 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
    v50 = *(v49 + 12) - 1;
    if (v50 >= (v48.i32[1] * v28))
    {
      v50 = (HIDWORD(*&a11[3]) * v28);
    }

    v51 = v49 + 8 * v48.u32[0];
    if (*(v47 + 104) == 1)
    {
      v52 = (*(v51 + 24) + 8 * v50);
    }

    else
    {
      v53 = (v50 * *(v47 + 108)) >> *(v47 + 112);
      v54 = *(v49 + 20) - 1;
      if (v53 >= v54)
      {
        LODWORD(v53) = v54;
      }

      v52 = (*(v51 + 24) + 8 * v53);
    }

    result = *v52;
  }

  else
  {
    result = 0;
  }

  v55 = v21->u64 + v27;
  v56 = a6[1];
  if (v56)
  {
    v57 = a11[3];
    v58 = (v57.i32[1] * v28);
    v59 = *(*(v56 + 40) + 8 * a11[7].u32[1]);
    v60 = *(v59 + 12) - 1;
    if (v60 >= v58)
    {
      v60 = v58;
    }

    v61 = v59 + 8 * v57.u32[0];
    if (*(v56 + 104) == 1)
    {
      v62 = (*(v61 + 24) + 8 * v60);
    }

    else
    {
      v64 = (v60 * *(v56 + 108)) >> *(v56 + 112);
      v65 = *(v59 + 20) - 1;
      if (v64 < v65)
      {
        v65 = v64;
      }

      v62 = (*(v61 + 24) + 8 * v65);
    }

    v63 = *v62;
  }

  else
  {
    v63 = 0;
  }

  v66 = &v21->i8[v35];
  v67 = &v21->i8[v44];
  v68 = &v21->i8[v63];
  v69 = a12[2];
  v70 = v68 > v55;
  v71 = v66 > v55 || v67 > v55;
  v72 = v71;
  v73 = v71 || v70;
  v74 = a12[6];
  if (v69 > v74)
  {
    return result;
  }

  v76 = 4 * v23;
  v77 = 16 * v23;
  v78 = &v203;
  v79 = vld1q_dup_f32(v78);
  v80.i64[0] = __PAIR64__(v201, v202);
  v80.i64[1] = __PAIR64__(v201, v202);
  result = (&v21[*a12] + result + 16 * v23 * v69);
  while (1)
  {
    v81 = a14 + a17;
    v82 = a14 + a17 + a17;
    v83 = v82 + a17;
    if (!a16)
    {
      v86 = v82 + a17;
      goto LABEL_73;
    }

    if (v69 == a12[2])
    {
      v84 = a12[3] + 1;
      v85 = a14;
      a14 += a17;
      v81 = v82;
      v82 += a17;
      do
      {
        v86 = v82;
        v82 = v81;
        v81 = a14;
        a14 = v85;
        v85 = a16;
        --v84;
      }

      while (v84);
    }

    else
    {
      v86 = v82 + a17;
    }

    if (v69 == v74)
    {
      v87 = a12[7];
      switch(v87)
      {
        case 1u:
          goto LABEL_71;
        case 2u:
          goto LABEL_70;
        case 3u:
          v81 = a16;
LABEL_70:
          v82 = a16;
LABEL_71:
          v83 = a16;
          goto LABEL_73;
      }
    }

    v83 = v86;
LABEL_73:
    v89 = *a12;
    v88 = a12[1];
    if (!v88)
    {
      v144 = a12[4];
      v145 = result;
      goto LABEL_91;
    }

    v90 = result > v55 || v72;
    if ((v90 | v70))
    {
      return result;
    }

    v24.i32[0] = 0;
    v91 = *result;
    v92 = *(result + v76);
    v93 = (result + v76 + v76);
    v94 = *v93;
    v95 = *(v93 + v76);
    v96 = vuzp1q_s32(v79, *result);
    v97 = vzip1q_s32(vuzp1q_s32(v96, v96), v80);
    v98 = vuzp2q_s32(v79, *result);
    v91.i32[0] = v79.i32[2];
    v99 = vzip1q_s32(vuzp1q_s32(v91, v91), v80);
    v100 = vzip2q_s32(vuzp1q_s32(v98, v98), v80);
    v101 = vtrn2q_s32(v98, v79);
    v102 = vzip2q_s32(vuzp1q_s32(v101, v101), v80);
    v103 = vuzp1q_s32(v79, v92);
    v104 = vuzp2q_s32(v79, v92);
    v92.i32[0] = v79.i32[2];
    v105 = vzip1q_s32(vuzp1q_s32(v103, v103), v80);
    v106 = vzip1q_s32(vuzp1q_s32(v92, v92), v80);
    v107 = vzip2q_s32(vuzp1q_s32(v104, v104), v80);
    v108 = vtrn2q_s32(v104, v79);
    v109 = vzip2q_s32(vuzp1q_s32(v108, v108), v80);
    v110 = vuzp1q_s32(v79, *v93);
    v111 = vzip1q_s32(vuzp1q_s32(v110, v110), v80);
    v112 = vuzp2q_s32(v79, *v93);
    v94.i32[0] = v79.i32[2];
    v113 = vzip1q_s32(vuzp1q_s32(v94, v94), v80);
    v114 = vzip2q_s32(vuzp1q_s32(v112, v112), v80);
    v115 = vtrn2q_s32(v112, v79);
    v116 = vzip2q_s32(vuzp1q_s32(v115, v115), v80);
    v117 = vuzp1q_s32(v79, v95);
    v118 = vzip1q_s32(vuzp1q_s32(v117, v117), v80);
    v119 = vuzp2q_s32(v79, v95);
    v95.i32[0] = v79.i32[2];
    v120 = vzip1q_s32(vuzp1q_s32(v95, v95), v80);
    v121 = vzip2q_s32(vuzp1q_s32(v119, v119), v80);
    v122 = vtrn2q_s32(v119, v79);
    v123 = vuzp1q_s32(v122, v122);
    v124 = vzip2q_s32(v123, v80);
    if (a12[4] == v89)
    {
      v125 = 4 - a12[5];
    }

    else
    {
      v125 = 4;
    }

    v123.i32[0] = a12[1] & 2;
    v126 = vdupq_lane_s32(*&vceqq_s32(v123, v24), 0);
    v127 = vbslq_s8(v126, v121, v124);
    v128 = vbslq_s8(v126, v118, v120);
    v129 = vbslq_s8(v126, v114, v116);
    v130 = vbslq_s8(v126, v111, v113);
    v131 = vbslq_s8(v126, v107, v109);
    v132 = vbslq_s8(v126, v105, v106);
    v133 = vbslq_s8(v126, v100, v102);
    if ((v88 & 2) != 0)
    {
      v125 -= 2;
    }

    v134 = v88 & 1;
    v135 = v125 - v134;
    v25.i32[0] = v134;
    v136 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v25, v24)), 0);
    v25 = vbslq_s8(v136, v133, vbslq_s8(v126, v97, v99));
    v137 = vbslq_s8(v136, v131, v132);
    v138 = vbslq_s8(v136, v129, v130);
    v24 = vbslq_s8(v136, v127, v128);
    if (v125 - v134 <= 1)
    {
      v143 = 0;
    }

    else
    {
      v139 = vbslq_s8(v126, v120, v118);
      v140 = vbslq_s8(v126, v113, v111);
      v141 = vbslq_s8(v126, v106, v105);
      v142 = vbslq_s8(v126, v99, v97);
      *a14 = v25;
      *(a14 + 16) = vbslq_s8(v136, v142, v133);
      *v81 = v137;
      *(v81 + 16) = vbslq_s8(v136, v141, v131);
      *v82 = v138;
      *(v82 + 16) = vbslq_s8(v136, v140, v129);
      v135 -= 2;
      v25 = vbslq_s8(v136, vbslq_s8(v126, v102, v100), v142);
      *v83 = v24;
      *(v83 + 16) = vbslq_s8(v136, v139, v127);
      v137 = vbslq_s8(v136, vbslq_s8(v126, v109, v107), v141);
      v138 = vbslq_s8(v136, vbslq_s8(v126, v116, v114), v140);
      v24 = vbslq_s8(v136, vbslq_s8(v126, v124, v121), v139);
      v143 = 32;
    }

    if (v135 >= 1)
    {
      *(v143 + a14) = v25;
      *(v143 + v81) = v137;
      *(v143 + v82) = v138;
      *(v143 + v83) = v24;
      v143 |= 0x10uLL;
    }

    v144 = a12[4];
    if (v144 != v89)
    {
      break;
    }

LABEL_122:
    a14 = v86 + a17;
    result = (result + v77);
    v74 = a12[6];
    if (v69++ >= v74)
    {
      return result;
    }
  }

  v145 = result + 1;
  a14 += v143;
  v81 += v143;
  v82 += v143;
  v83 += v143;
  ++v89;
LABEL_91:
  v146 = a12[5];
  v147 = v146 != 0;
  if (v144 == 0 && v147 || (v148 = v144 - v147, v89 > v148))
  {
    v169 = a14;
    v170 = v81;
    v171 = v82;
    v172 = v83;
    if (v146)
    {
LABEL_100:
      if (v69 == a12[6])
      {
        v173 = 4 - a12[7];
      }

      else
      {
        v173 = 4;
      }

      v174 = v145 > v55 || v72;
      if ((v174 | v70))
      {
        return result;
      }

      if (v173 < 2)
      {
        v176 = 0;
        v175 = v145;
        v177 = v145;
      }

      else
      {
        v175 = (v145->i64 + v76);
        if (v173 == 2)
        {
          v176 = 0;
          v177 = (v145->i64 + v76);
        }

        else
        {
          v177 = (v145->i64 + v76);
          v175 = (v175 + v76);
          if (v173 <= 3)
          {
            v176 = 0;
          }

          else
          {
            v176 = v76;
          }
        }
      }

      v178 = 4 - v146;
      v179 = (v175 + v176);
      v180 = 0uLL;
      v181 = 0uLL;
      v182 = 0uLL;
      v24 = 0uLL;
      if ((4 - v146))
      {
        v183 = 3 - v146;
        v24.i32[0] = v145->i32[v183];
        v180.i32[0] = *(v177 + v183);
        v181.i32[0] = *(v175 + v183);
        v182.i32[0] = *(v179 + v183);
      }

      if ((v178 & 2) != 0)
      {
        v184.i64[0] = v145->i64[0];
        v184.i64[1] = v24.i64[0];
        v185.i64[0] = *v177;
        v185.i64[1] = v180.i64[0];
        v186.i64[0] = *v175;
        v186.i64[1] = v181.i64[0];
        v187.i64[0] = *v179;
        v187.i64[1] = v182.i64[0];
        v180 = v185;
        v181 = v186;
        v182 = v187;
        v24 = v184;
      }

      v188 = vuzp1q_s32(v79, v24);
      v189 = vzip1q_s32(vuzp1q_s32(v188, v188), v80);
      v190 = vuzp1q_s32(v79, v180);
      v191 = vzip1q_s32(vuzp1q_s32(v190, v190), v80);
      v192 = vuzp1q_s32(v79, v181);
      v193 = vzip1q_s32(vuzp1q_s32(v192, v192), v80);
      v194 = vuzp1q_s32(v79, v182);
      v195 = vzip1q_s32(vuzp1q_s32(v194, v194), v80);
      if ((v178 & 2) != 0)
      {
        v196 = vuzp2q_s32(v79, v24);
        v197 = vuzp2q_s32(v79, v180);
        v198 = vuzp2q_s32(v79, v181);
        v199 = vuzp2q_s32(v79, v182);
        *v169 = v189;
        v169[1] = vzip2q_s32(vuzp1q_s32(v196, v196), v80);
        *v170 = v191;
        v170[1] = vzip2q_s32(vuzp1q_s32(v197, v197), v80);
        *v171 = v193;
        v171[1] = vzip2q_s32(vuzp1q_s32(v198, v198), v80);
        *v172 = v195;
        v172[1] = vzip2q_s32(vuzp1q_s32(v199, v199), v80);
        if (v178)
        {
          v24.i32[0] = v79.i32[2];
          v24 = vzip1q_s32(vuzp1q_s32(v24, v24), v80);
          v180.i32[0] = v79.i32[2];
          v181.i32[0] = v79.i32[2];
          v182.i32[0] = v79.i32[2];
          v169[2] = v24;
          v170[2] = vzip1q_s32(vuzp1q_s32(v180, v180), v80);
          v171[2] = vzip1q_s32(vuzp1q_s32(v181, v181), v80);
          v172[2] = vzip1q_s32(vuzp1q_s32(v182, v182), v80);
        }
      }

      else
      {
        *v169 = v189;
        *v170 = v191;
        *v171 = v193;
        *v172 = v195;
      }
    }

    goto LABEL_122;
  }

  if (!v73)
  {
    v149 = v148 - v89 + 1;
    while (v145 <= v55)
    {
      v150 = *v145;
      v151 = *(v145 + v76);
      v152 = (v145 + v76 + v76);
      v153 = *(v152 + v76);
      v154 = vuzp2q_s32(v79, v153);
      v155 = vzip2q_s32(vuzp1q_s32(v154, v154), v80);
      v156 = vuzp1q_s32(v79, v153);
      v157 = vtrn2q_s32(v154, v79);
      v158 = *v152;
      v153.i32[0] = v79.i32[2];
      v24 = vzip1q_s32(vuzp1q_s32(v153, v153), v80);
      v159 = vuzp2q_s32(v79, *v152);
      v160 = vuzp1q_s32(v79, *v152);
      v158.i32[0] = v79.i32[2];
      v161 = vzip2q_s32(vuzp1q_s32(v159, v159), v80);
      v162 = vuzp2q_s32(v79, v151);
      v163 = vuzp1q_s32(v79, v151);
      v151.i32[0] = v79.i32[2];
      v164 = vuzp2q_s32(v79, *v145);
      v165 = vuzp1q_s32(v79, *v145);
      v150.i32[0] = v79.i32[2];
      *a14 = vzip1q_s32(vuzp1q_s32(v165, v165), v80);
      *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v164, v164), v80);
      v166 = vtrn2q_s32(v159, v79);
      v167 = vtrn2q_s32(v164, v79);
      *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v150, v150), v80);
      *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v167, v167), v80);
      *v81 = vzip1q_s32(vuzp1q_s32(v163, v163), v80);
      *(v81 + 16) = vzip2q_s32(vuzp1q_s32(v162, v162), v80);
      v168 = vtrn2q_s32(v162, v79);
      *(v81 + 32) = vzip1q_s32(vuzp1q_s32(v151, v151), v80);
      *(v81 + 48) = vzip2q_s32(vuzp1q_s32(v168, v168), v80);
      *v82 = vzip1q_s32(vuzp1q_s32(v160, v160), v80);
      *(v82 + 16) = v161;
      ++v145;
      v169 = (a14 + 64);
      *(v82 + 32) = vzip1q_s32(vuzp1q_s32(v158, v158), v80);
      *(v82 + 48) = vzip2q_s32(vuzp1q_s32(v166, v166), v80);
      v170 = (v81 + 64);
      v171 = (v82 + 64);
      v172 = (v83 + 64);
      *(v83 + 32) = v24;
      *(v83 + 48) = vzip2q_s32(vuzp1q_s32(v157, v157), v80);
      *v83 = vzip1q_s32(vuzp1q_s32(v156, v156), v80);
      *(v83 + 16) = v155;
      v83 += 64;
      v82 += 64;
      v81 += 64;
      a14 += 64;
      if (!--v149)
      {
        v146 = a12[5];
        if (v146)
        {
          goto LABEL_100;
        }

        goto LABEL_122;
      }
    }
  }

  return result;
}

unint64_t ExtractInterleaved4_B44<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(unint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = *&a11[1] >= a2 ? a2 : *&a11[1];
  v24 = vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a3 + 8) + 48), a11[3]), *(*(a3 + 8) + 48)).u32[0];
  v25 = v24 <= 0xFFFFFFFC ? (v24 + 3) >> 2 : 0x40000000;
  AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v235, a4);
  v26 = vmin_u32(vmls_s32(*(*(*(*(a5 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a5 + 8) + 48), a11[3]), *(*(a5 + 8) + 48)).u32[0];
  v27 = v26 <= 0xFFFFFFFC ? (v26 + 3) >> 2 : 0x40000000;
  result = AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(&v234, a6);
  if (v23 < 0xE)
  {
    return result;
  }

  v28 = *(a13 + 60);
  v29 = *(a3 + 8);
  if (v29)
  {
    v30 = a11[3];
    v31 = *(*(v29 + 40) + 8 * a11[7].u32[1]);
    v32 = *(v31 + 12) - 1;
    if (v32 >= (v30.i32[1] * v28))
    {
      v32 = (HIDWORD(*&a11[3]) * v28);
    }

    v33 = v31 + 8 * v30.u32[0];
    if (*(v29 + 104) == 1)
    {
      v34 = (*(v33 + 24) + 8 * v32);
    }

    else
    {
      v36 = (v32 * *(v29 + 108)) >> *(v29 + 112);
      v37 = *(v31 + 20) - 1;
      if (v36 >= v37)
      {
        LODWORD(v36) = v37;
      }

      v34 = (*(v33 + 24) + 8 * v36);
    }

    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v38 = a4[1];
  if (v38)
  {
    v39 = a11[3];
    v40 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
    v41 = *(v40 + 12) - 1;
    if (v41 >= (v39.i32[1] * v28))
    {
      v41 = (HIDWORD(*&a11[3]) * v28);
    }

    v42 = v40 + 8 * v39.u32[0];
    if (*(v38 + 104) == 1)
    {
      v43 = (*(v42 + 24) + 8 * v41);
    }

    else
    {
      v45 = (v41 * *(v38 + 108)) >> *(v38 + 112);
      v46 = *(v40 + 20) - 1;
      if (v45 >= v46)
      {
        LODWORD(v45) = v46;
      }

      v43 = (*(v42 + 24) + 8 * v45);
    }

    v44 = *v43;
  }

  else
  {
    v44 = 0;
  }

  v47 = *(a5 + 8);
  if (v47)
  {
    v48 = a11[3];
    v49 = *(*(v47 + 40) + 8 * a11[7].u32[1]);
    v50 = *(v49 + 12) - 1;
    if (v50 >= (v48.i32[1] * v28))
    {
      v50 = (HIDWORD(*&a11[3]) * v28);
    }

    result = *(v47 + 104);
    v51 = v49 + 8 * v48.u32[0];
    if (result == 1)
    {
      v52 = (*(v51 + 24) + 8 * v50);
    }

    else
    {
      v54 = (v50 * *(v47 + 108)) >> *(v47 + 112);
      v55 = *(v49 + 20) - 1;
      if (v54 >= v55)
      {
        LODWORD(v54) = v55;
      }

      v52 = (*(v51 + 24) + 8 * v54);
    }

    v53 = *v52;
  }

  else
  {
    v53 = 0;
  }

  v56 = v22 + v23 - 14;
  v57 = a6[1];
  if (v57)
  {
    v58 = a11[3];
    v59 = (v58.i32[1] * v28);
    v60 = *(*(v57 + 40) + 8 * a11[7].u32[1]);
    v61 = *(v60 + 12) - 1;
    if (v61 >= v59)
    {
      v61 = v59;
    }

    v62 = v60 + 8 * v58.u32[0];
    if (*(v57 + 104) == 1)
    {
      v63 = (*(v62 + 24) + 8 * v61);
    }

    else
    {
      v65 = (v61 * *(v57 + 108)) >> *(v57 + 112);
      v66 = *(v60 + 20) - 1;
      if (v65 < v66)
      {
        v66 = v65;
      }

      v63 = (*(v62 + 24) + 8 * v66);
    }

    v64 = *v63;
  }

  else
  {
    v64 = 0;
  }

  v67 = v44 + v22;
  v68 = v64 + v22;
  v69 = a12[2];
  v70 = v68 > v56;
  v232 = v67 > v56;
  v233 = v70;
  if (v67 > v56)
  {
    LOBYTE(v70) = 1;
  }

  v229 = v70;
  v71 = a12[6];
  if (v69 > v71)
  {
    return result;
  }

  result = 14;
  v73 = &v234;
  v236.val[1] = vld1q_dup_s16(v73);
  v74 = &v235;
  v236.val[0] = vld1q_dup_s16(v74);
  v75 = vqtbl2q_s8(v236, xmmword_296B6EDD0);
  v76 = 14 * *a12;
  v230 = 14 * v27;
  v231 = 14 * v25;
  v77 = (v35 + v22 + v76 + v231 * v69);
  v78 = (v53 + v22 + v76 + v230 * v69);
  v79.i64[0] = 0xE0E0E0E0E0E0E0E0;
  v79.i64[1] = 0xE0E0E0E0E0E0E0E0;
  while (1)
  {
    v80 = (a14 + a17);
    v81 = (a14 + a17 + a17);
    v82 = (v81 + a17);
    if (!a16)
    {
      v85 = (v81 + a17);
      goto LABEL_72;
    }

    if (v69 == a12[2])
    {
      v83 = a12[3] + 1;
      v84 = a14;
      a14 = (a14 + a17);
      v80 = v81;
      v81 = (v81 + a17);
      do
      {
        v85 = v81;
        v81 = v80;
        v80 = a14;
        a14 = v84;
        v84 = a16;
        --v83;
      }

      while (v83);
    }

    else
    {
      v85 = (v81 + a17);
    }

    if (v69 == v71)
    {
      v86 = a12[7];
      switch(v86)
      {
        case 1u:
          goto LABEL_70;
        case 2u:
          goto LABEL_69;
        case 3u:
          v80 = a16;
LABEL_69:
          v81 = a16;
LABEL_70:
          v82 = a16;
          goto LABEL_72;
      }
    }

    v82 = v85;
LABEL_72:
    v88 = *a12;
    v87 = a12[1];
    if (!v87)
    {
      v148 = a12[4];
      v149 = v77;
      v150 = v78;
      goto LABEL_98;
    }

    v89 = v77 > v56 || v232;
    if (v78 > v56)
    {
      v89 = 1;
    }

    if ((v89 | v233))
    {
      return result;
    }

    v90.i64[0] = *(v77 + 1);
    v90.i64[1] = *(v77 + 3);
    v91 = vqtbl1q_s8(v90, xmmword_296B6EDE0);
    v92 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v91, 8uLL), xmmword_296B6EE00), vshlq_u8(v91, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v93 = vaddq_s8(v92, v79);
    v92.i8[1] = 0;
    v94 = vqtbl1q_s8(v93, xmmword_296B6EE20);
    v95 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v94, xmmword_296B6EE30), v94), vqtbl1q_s8(v94, xmmword_296B6EE40));
    v96 = vdupq_lane_s16(*v92.i8, 0);
    v97 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v95.i8), xmmword_296B6EE50), *v95.i8), v96);
    v98 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v95), xmmword_296B6EE50), v95), v96);
    v99 = vdupq_n_s16(bswap32(*v77) >> 16);
    v100 = vaddq_s16(v98, v99);
    v101 = vaddq_s16(v97, v99);
    v102 = veorq_s8((*&v100 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v100));
    v103 = veorq_s8((*&v101 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v101));
    if (a7)
    {
      result = (*(a7 + ((v102.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v102.u16[6]) << 32) | (*(a7 + 2 * v102.u16[5]) << 16) | *(a7 + 2 * v102.u16[4]);
      v103.i64[0] = (*(a7 + ((v103.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v103.u16[2]) << 32) | (*(a7 + 2 * v103.u16[1]) << 16) | *(a7 + 2 * v103.u16[0]);
      v103.i64[1] = (*(a7 + ((v103.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v103.u16[6]) << 32) | (*(a7 + 2 * v103.u16[5]) << 16) | *(a7 + 2 * v103.u16[4]);
      v102.i64[0] = (*(a7 + ((v102.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v102.u16[2]) << 32) | (*(a7 + 2 * v102.u16[1]) << 16) | *(a7 + 2 * v102.u16[0]);
      v102.i64[1] = result;
    }

    v104.i64[0] = *(v78 + 1);
    v104.i64[1] = *(v78 + 3);
    v105 = vqtbl1q_s8(v104, xmmword_296B6EDE0);
    v106 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v105, 8uLL), xmmword_296B6EE00), vshlq_u8(v105, xmmword_296B6EDF0)), xmmword_296B6EE10);
    v107 = vaddq_s8(v106, v79);
    v106.i8[1] = 0;
    v108 = vqtbl1q_s8(v107, xmmword_296B6EE20);
    v109 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v108, xmmword_296B6EE30), v108), vqtbl1q_s8(v108, xmmword_296B6EE40));
    v110 = vdupq_lane_s16(*v106.i8, 0);
    v111 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v109.i8), xmmword_296B6EE50), *v109.i8), v110);
    v112 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v109), xmmword_296B6EE50), v109), v110);
    v113 = vdupq_n_s16(bswap32(*v78) >> 16);
    v114 = vaddq_s16(v112, v113);
    v115 = vaddq_s16(v111, v113);
    v116 = vcgezq_s16(v115);
    v117 = veorq_s8((*&v114 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v114));
    v118 = veorq_s8((*&v115 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), v116);
    if (a9)
    {
      result = (*(a9 + ((v117.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v117.u16[2]) << 32) | (*(a9 + 2 * v117.u16[1]) << 16) | *(a9 + 2 * v117.u16[0]);
      v118.i64[0] = (*(a9 + ((v118.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v118.u16[2]) << 32) | (*(a9 + 2 * v118.u16[1]) << 16) | *(a9 + 2 * v118.u16[0]);
      v118.i64[1] = (*(a9 + ((v118.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v118.u16[6]) << 32) | (*(a9 + 2 * v118.u16[5]) << 16) | *(a9 + 2 * v118.u16[4]);
      v117.i64[0] = result;
      v117.i64[1] = (*(a9 + ((v117.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v117.u16[6]) << 32) | (*(a9 + 2 * v117.u16[5]) << 16) | *(a9 + 2 * v117.u16[4]);
    }

    v116.i32[0] = 0;
    v119 = v117;
    v250.val[0] = vqtbl2q_s8(*v102.i8, xmmword_296B6EE70);
    v250.val[1] = v75;
    v120 = vqtbl2q_s8(v250, xmmword_296B6EE60);
    v237.val[0] = vqtbl2q_s8(*v102.i8, xmmword_296B6EE90);
    v237.val[1] = v75;
    v121 = vqtbl2q_s8(v237, xmmword_296B6EE80);
    v237.val[1] = vqtbl2q_s8(*v102.i8, xmmword_296B6EEA0);
    v122 = v75;
    v123 = vqtbl2q_s8(*(&v237 + 16), xmmword_296B6EE60);
    v240.val[0] = vqtbl2q_s8(*v102.i8, xmmword_296B6EEB0);
    v240.val[1] = v75;
    v124 = vqtbl2q_s8(v240, xmmword_296B6EE80);
    v125 = v118;
    v245.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EE70);
    v245.val[1] = v75;
    v126 = vqtbl2q_s8(v245, xmmword_296B6EE60);
    v245.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EE90);
    v245.val[1] = v75;
    v127 = vqtbl2q_s8(v245, xmmword_296B6EE80);
    v239.val[0] = vqtbl2q_s8(*v103.i8, xmmword_296B6EEA0);
    v239.val[1] = v75;
    v128 = vqtbl2q_s8(v239, xmmword_296B6EE60);
    v129 = vqtbl2q_s8(*v103.i8, xmmword_296B6EEB0);
    v130 = v75;
    v131 = vqtbl2q_s8(*(&v130 - 1), xmmword_296B6EE80);
    if (a12[4] == v88)
    {
      v132 = 4 - a12[5];
    }

    else
    {
      v132 = 4;
    }

    v130.i32[0] = a12[1] & 2;
    v133 = vdupq_lane_s32(*&vceqq_s32(v130, v116), 0);
    v134 = vbslq_s8(v133, v131, v128);
    v135 = vbslq_s8(v133, v128, v131);
    v136 = v132 - 2;
    v137 = vbslq_s8(v133, v127, v126);
    v138 = vbslq_s8(v133, v126, v127);
    v139 = vbslq_s8(v133, v124, v123);
    v140 = vbslq_s8(v133, v123, v124);
    v141 = vbslq_s8(v133, v121, v120);
    v142 = vbslq_s8(v133, v120, v121);
    if ((v87 & 2) == 0)
    {
      v136 = v132;
    }

    if (v87)
    {
      v143 = vextq_s8(v137, v138, 8uLL).u64[0];
      v138 = vextq_s8(v138, v137, 8uLL);
      v144 = vextq_s8(v134, v135, 8uLL).u64[0];
      v135 = vextq_s8(v135, v134, 8uLL);
      v145 = vextq_s8(v141, v142, 8uLL).u64[0];
      v142 = vextq_s8(v142, v141, 8uLL);
      v146 = vextq_s8(v139, v140, 8uLL).u64[0];
      --v136;
      v140 = vextq_s8(v140, v139, 8uLL);
      v137.i64[0] = v143;
      v134.i64[0] = v144;
      v141.i64[0] = v145;
      v139.i64[0] = v146;
    }

    if (v136 <= 1)
    {
      v147 = 0;
    }

    else
    {
      *a14 = v138;
      *v80 = v135;
      v136 -= 2;
      v138.i64[0] = v137.i64[0];
      v135.i64[0] = v134.i64[0];
      *v81 = v142;
      v142.i64[0] = v141.i64[0];
      *v82 = v140;
      v140.i64[0] = v139.i64[0];
      v147 = 16;
    }

    if (v136 >= 1)
    {
      *(a14->i64 + v147) = v138.i64[0];
      *(v80->i64 + v147) = v135.i64[0];
      *(v81->i64 + v147) = v142.i64[0];
      *(v82->i64 + v147) = v140.i64[0];
      v147 |= 8uLL;
    }

    v148 = a12[4];
    if (v148 != v88)
    {
      break;
    }

LABEL_125:
    a14 = (v85 + a17);
    v78 = (v78 + v230);
    v77 = (v77 + v231);
    v71 = a12[6];
    if (v69++ >= v71)
    {
      return result;
    }
  }

  v149 = v77 + 7;
  v150 = v78 + 7;
  a14 = (a14 + v147);
  v80 = (v80 + v147);
  v81 = (v81 + v147);
  v82 = (v82 + v147);
  ++v88;
LABEL_98:
  v151 = a12[5];
  v152 = v151 != 0;
  if (v148 == 0 && v152 || (v153 = v148 - v152, v88 > v153))
  {
    v187 = a14;
    v188 = v80;
    v189 = v81;
    v190 = v82;
    if (v151)
    {
LABEL_112:
      v191 = v232;
      if (v149 > v56)
      {
        v191 = 1;
      }

      if (v150 > v56)
      {
        v191 = 1;
      }

      if ((v191 | v233))
      {
        return result;
      }

      v192.i64[0] = *(v149 + 1);
      v192.i64[1] = *(v149 + 3);
      v193 = vqtbl1q_s8(v192, xmmword_296B6EDE0);
      v194 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v193, 8uLL), xmmword_296B6EE00), vshlq_u8(v193, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v195 = vaddq_s8(v194, v79);
      v194.i8[1] = 0;
      v196 = vqtbl1q_s8(v195, xmmword_296B6EE20);
      v197 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v196, xmmword_296B6EE30), v196), vqtbl1q_s8(v196, xmmword_296B6EE40));
      v198 = vdupq_lane_s16(*v194.i8, 0);
      v199 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v197.i8), xmmword_296B6EE50), *v197.i8), v198);
      v200 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v197), xmmword_296B6EE50), v197), v198);
      v201 = vdupq_n_s16(bswap32(*v149) >> 16);
      v202 = vaddq_s16(v200, v201);
      v203 = vaddq_s16(v199, v201);
      v204 = veorq_s8((*&v202 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v202));
      v205 = veorq_s8((*&v203 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v203));
      if (a7)
      {
        result = (*(a7 + ((v204.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v204.u16[2]) << 32) | (*(a7 + 2 * v204.u16[1]) << 16) | *(a7 + 2 * v204.u16[0]);
        v205.i64[0] = (*(a7 + ((v205.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v205.u16[2]) << 32) | (*(a7 + 2 * v205.u16[1]) << 16) | *(a7 + 2 * v205.u16[0]);
        v205.i64[1] = (*(a7 + ((v205.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v205.u16[6]) << 32) | (*(a7 + 2 * v205.u16[5]) << 16) | *(a7 + 2 * v205.u16[4]);
        v204.i64[0] = result;
        v204.i64[1] = (*(a7 + ((v204.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v204.u16[6]) << 32) | (*(a7 + 2 * v204.u16[5]) << 16) | *(a7 + 2 * v204.u16[4]);
      }

      v206.i64[0] = *(v150 + 1);
      v206.i64[1] = *(v150 + 3);
      v207 = vqtbl1q_s8(v206, xmmword_296B6EDE0);
      v208 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v207, 8uLL), xmmword_296B6EE00), vshlq_u8(v207, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v209 = vaddq_s8(v208, v79);
      v208.i8[1] = 0;
      v210 = vqtbl1q_s8(v209, xmmword_296B6EE20);
      v211 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v210, xmmword_296B6EE30), v210), vqtbl1q_s8(v210, xmmword_296B6EE40));
      v212 = vdupq_lane_s16(*v208.i8, 0);
      v213 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v211.i8), xmmword_296B6EE50), *v211.i8), v212);
      v214 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v211), xmmword_296B6EE50), v211), v212);
      v215 = vdupq_n_s16(bswap32(*v150) >> 16);
      v216 = vaddq_s16(v214, v215);
      v217 = vaddq_s16(v213, v215);
      v218 = veorq_s8((*&v216 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v216));
      v219 = veorq_s8((*&v217 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v217));
      if (a9)
      {
        result = (*(a9 + ((v218.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v218.u16[2]) << 32) | (*(a9 + 2 * v218.u16[1]) << 16) | *(a9 + 2 * v218.u16[0]);
        v219.i64[0] = (*(a9 + ((v219.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v219.u16[2]) << 32) | (*(a9 + 2 * v219.u16[1]) << 16) | *(a9 + 2 * v219.u16[0]);
        v219.i64[1] = (*(a9 + ((v219.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v219.u16[6]) << 32) | (*(a9 + 2 * v219.u16[5]) << 16) | *(a9 + 2 * v219.u16[4]);
        v218.i64[0] = result;
        v218.i64[1] = (*(a9 + ((v218.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v218.u16[6]) << 32) | (*(a9 + 2 * v218.u16[5]) << 16) | *(a9 + 2 * v218.u16[4]);
      }

      v220 = v219;
      v248.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EEA0);
      v248.val[1] = v75;
      v221 = vqtbl2q_s8(v248, xmmword_296B6EE60);
      v252.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EE70);
      v252.val[1] = v75;
      v222 = vqtbl2q_s8(v252, xmmword_296B6EE60);
      v223 = v218;
      v252.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EEA0);
      v252.val[1] = v75;
      v224 = vqtbl2q_s8(v252, xmmword_296B6EE60);
      v225 = vqtbl2q_s8(*v204.i8, xmmword_296B6EE70);
      v252.val[0] = v75;
      v226 = vqtbl2q_s8(v252, xmmword_296B6EE60);
      v227 = 4 - v151;
      if ((v227 & 2) != 0)
      {
        *v187 = v222;
        *v188 = v221;
        *v189 = v226;
        *v190 = v224;
        if (v227)
        {
          v247.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EEB0);
          v247.val[1] = v75;
          v244.val[0] = vqtbl2q_s8(*v205.i8, xmmword_296B6EE90);
          v244.val[1] = v75;
          v249.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EEB0);
          v249.val[1] = v75;
          v242.val[0] = vqtbl2q_s8(*v204.i8, xmmword_296B6EE90);
          v242.val[1] = v75;
          v187[1].i64[0] = vqtbl2q_s8(v244, xmmword_296B6EE80).u64[0];
          v188[1].i64[0] = vqtbl2q_s8(v247, xmmword_296B6EE80).u64[0];
          v189[1].i64[0] = vqtbl2q_s8(v242, xmmword_296B6EE80).u64[0];
          v190[1].i64[0] = vqtbl2q_s8(v249, xmmword_296B6EE80).u64[0];
        }
      }

      else
      {
        v187->i64[0] = v222.i64[0];
        v188->i64[0] = v221.i64[0];
        v189->i64[0] = v226.i64[0];
        v190->i64[0] = v224.i64[0];
      }
    }

    goto LABEL_125;
  }

  if (!v229)
  {
    v154 = v153 - v88 + 1;
    while (v149 <= v56 && v150 <= v56)
    {
      v155.i64[0] = *(v149 + 1);
      v155.i64[1] = *(v149 + 3);
      v156 = vqtbl1q_s8(v155, xmmword_296B6EDE0);
      v157 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v156, 8uLL), xmmword_296B6EE00), vshlq_u8(v156, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v158 = vaddq_s8(v157, v79);
      v157.i8[1] = 0;
      v159 = vqtbl1q_s8(v158, xmmword_296B6EE20);
      v160 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v159, xmmword_296B6EE30), v159), vqtbl1q_s8(v159, xmmword_296B6EE40));
      v161 = vdupq_lane_s16(*v157.i8, 0);
      v162 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v160.i8), xmmword_296B6EE50), *v160.i8), v161);
      v163 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v160), xmmword_296B6EE50), v160), v161);
      v164 = vdupq_n_s16(bswap32(*v149) >> 16);
      v165 = vaddq_s16(v163, v164);
      v166 = vaddq_s16(v162, v164);
      v167 = veorq_s8((*&v165 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v165));
      v168 = veorq_s8((*&v166 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v166));
      if (a7)
      {
        result = (*(a7 + ((v167.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v167.u16[6]) << 32) | (*(a7 + 2 * v167.u16[5]) << 16) | *(a7 + 2 * v167.u16[4]);
        v168.i64[0] = (*(a7 + ((v168.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v168.u16[2]) << 32) | (*(a7 + 2 * v168.u16[1]) << 16) | *(a7 + 2 * v168.u16[0]);
        v168.i64[1] = (*(a7 + ((v168.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v168.u16[6]) << 32) | (*(a7 + 2 * v168.u16[5]) << 16) | *(a7 + 2 * v168.u16[4]);
        v167.i64[0] = (*(a7 + ((v167.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a7 + 2 * v167.u16[2]) << 32) | (*(a7 + 2 * v167.u16[1]) << 16) | *(a7 + 2 * v167.u16[0]);
        v167.i64[1] = result;
      }

      v169.i64[0] = *(v150 + 1);
      v169.i64[1] = *(v150 + 3);
      v170 = vqtbl1q_s8(v169, xmmword_296B6EDE0);
      v171 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v170, 8uLL), xmmword_296B6EE00), vshlq_u8(v170, xmmword_296B6EDF0)), xmmword_296B6EE10);
      v172 = vaddq_s8(v171, v79);
      v171.i8[1] = 0;
      v173 = vqtbl1q_s8(v172, xmmword_296B6EE20);
      v174 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v173, xmmword_296B6EE30), v173), vqtbl1q_s8(v173, xmmword_296B6EE40));
      v175 = vdupq_lane_s16(*v171.i8, 0);
      v176 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v174.i8), xmmword_296B6EE50), *v174.i8), v175);
      v177 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v174), xmmword_296B6EE50), v174), v175);
      v178 = vdupq_n_s16(bswap32(*v150) >> 16);
      v179 = vaddq_s16(v177, v178);
      v180 = vaddq_s16(v176, v178);
      v181 = veorq_s8((*&v179 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v179));
      v182 = veorq_s8((*&v180 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v180));
      if (a9)
      {
        result = (*(a9 + ((v181.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v181.u16[6]) << 32) | (*(a9 + 2 * v181.u16[5]) << 16) | *(a9 + 2 * v181.u16[4]);
        v182.i64[0] = (*(a9 + ((v182.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[2]) << 32) | (*(a9 + 2 * v182.u16[1]) << 16) | *(a9 + 2 * v182.u16[0]);
        v182.i64[1] = (*(a9 + ((v182.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v182.u16[6]) << 32) | (*(a9 + 2 * v182.u16[5]) << 16) | *(a9 + 2 * v182.u16[4]);
        v181.i64[0] = (*(a9 + ((v181.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a9 + 2 * v181.u16[2]) << 32) | (*(a9 + 2 * v181.u16[1]) << 16) | *(a9 + 2 * v181.u16[0]);
        v181.i64[1] = result;
      }

      v149 += 7;
      v183 = v181;
      v184 = vqtbl2q_s8(*v167.i8, xmmword_296B6EEA0);
      v251.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EEB0);
      v251.val[1] = v75;
      v238.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EE70);
      v238.val[1] = v75;
      v241.val[0] = vqtbl2q_s8(*v167.i8, xmmword_296B6EE90);
      v241.val[1] = v75;
      v241.val[0] = vqtbl2q_s8(v241, xmmword_296B6EE80);
      v185 = v182;
      v246.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EEA0);
      v246.val[1] = v75;
      v241.val[1] = vqtbl2q_s8(v246, xmmword_296B6EE60);
      v246.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EE70);
      v246.val[1] = v75;
      v246.val[0] = vqtbl2q_s8(v246, xmmword_296B6EE60);
      v246.val[1] = vqtbl2q_s8(*v168.i8, xmmword_296B6EEB0);
      v243.val[0] = vqtbl2q_s8(*v168.i8, xmmword_296B6EE90);
      v243.val[1] = v75;
      *a14 = v246.val[0];
      a14[1] = vqtbl2q_s8(v243, xmmword_296B6EE80);
      v186 = v75;
      v150 += 7;
      v187 = a14 + 2;
      *v80 = v241.val[1];
      v80[1] = vqtbl2q_s8(*(&v246 + 16), xmmword_296B6EE80);
      v188 = v80 + 2;
      v189 = v81 + 2;
      *v81 = vqtbl2q_s8(v238, xmmword_296B6EE60);
      v81[1] = v241.val[0];
      v190 = v82 + 2;
      *v82 = vqtbl2q_s8(*(&v75 - 1), xmmword_296B6EE60);
      v82[1] = vqtbl2q_s8(v251, xmmword_296B6EE80);
      v82 += 2;
      v81 += 2;
      v80 += 2;
      a14 += 2;
      if (!--v154)
      {
        v151 = a12[5];
        if (v151)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }
    }
  }

  return result;
}