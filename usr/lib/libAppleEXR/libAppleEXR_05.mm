uint64_t TileDecoder_B44A::ExtractPlane(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a5[1];
  v15 = *(a4 + 8);
  memset(v23, 0, sizeof(v23));
  TileDecoder::GetBlockChannelTileInfo(a1, a5, v15[20], v15[26], 4u, 4u, v23);
  v16 = *(*(a1 + 24) + 208);
  CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a5, v16, v14);
  CompressedDataSize = AXRChunkHeader::GetCompressedDataSize(*a5, v16, a5[1]);
  if (*(a1 + 128) == a2)
  {
    v19 = 0;
  }

  else
  {
    v19 = a2;
  }

  v20 = *(a4 + 8);
  if (*(v20 + 132))
  {
    v21 = &TileDecoder_B44::LogLUT;
  }

  else
  {
    v21 = 0;
  }

  return (*(TileDecoder_B44A::ExtractPlane(void const*,unsigned long,ChannelInfo const&,TileInfo const&,void *,unsigned long,long)const::kFuncTable + ((8 * (v15[18] != 1)) | (16 * (v20 != 0)))))(CompressedDataPtr, CompressedDataSize, a4, v21, a5, v23, a1, a6, v19, a8);
}

__int16 *ExtractPlane_B44A<unsigned short,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, __int16 *a8, int16x4_t *a9, uint64_t a10)
{
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v34, a3);
  v13 = a6[2];
  v14 = a6[6];
  if (v13 <= v14)
  {
    while (1)
    {
      v15 = (a8 + a10);
      v16 = (a8 + a10 + a10);
      v17 = (v16 + a10);
      if (!a9)
      {
        v20 = (v16 + a10);
        goto LABEL_17;
      }

      if (v13 == a6[2])
      {
        v18 = a6[3] + 1;
        v19 = a8;
        a8 = (a8 + a10);
        v15 = v16;
        v16 = (v16 + a10);
        do
        {
          v20 = v16;
          v16 = v15;
          v15 = a8;
          a8 = v19;
          v19 = a9;
          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = (v16 + a10);
      }

      if (v13 == v14)
      {
        v21 = a6[7];
        if (v21 == 1)
        {
          goto LABEL_15;
        }

        if (v21 == 2)
        {
          goto LABEL_14;
        }

        if (v21 == 3)
        {
          break;
        }
      }

      v17 = v20;
LABEL_17:
      v22 = *a6;
      v23 = a6[1];
      result = a6[4];
      v24 = a6[5];
      if (v23)
      {
        v25 = v34;
        v26 = 4 - v24;
        if (result != v22)
        {
          v26 = 4;
        }

        if ((v23 & 2) != 0)
        {
          v26 -= 2;
        }

        v27 = v26 - (v23 & 1);
        if (v27 <= 1)
        {
          v24 = 0;
        }

        else
        {
          a8[1] = v34;
          *a8 = v25;
          v15[1] = v25;
          *v15 = v25;
          v16[1] = v25;
          *v16 = v25;
          v17->i16[1] = v25;
          v27 -= 2;
          v24 = 4;
          v17->i16[0] = v25;
        }

        if (v27 >= 1)
        {
          *(a8 + v24) = v25;
          *(v15 + v24) = v25;
          *(v16 + v24) = v25;
          *(v17->i16 + v24) = v25;
          v24 |= 2uLL;
        }

        result = a6[4];
        if (result == v22)
        {
          goto LABEL_43;
        }

        a8 = (a8 + v24);
        v15 = (v15 + v24);
        v16 = (v16 + v24);
        v17 = (v17 + v24);
        LODWORD(v24) = a6[5];
        ++v22;
      }

      if (result)
      {
        v28 = 0;
      }

      else
      {
        v28 = v24 != 0;
      }

      if (!v28)
      {
        result = (result - (v24 != 0));
        if (v22 <= result)
        {
          v29 = vld1_dup_s16(&v34);
          v30 = result - v22 + 1;
          do
          {
            *a8 = v29;
            a8 += 4;
            *v15 = v29;
            v15 += 4;
            *v16 = v29;
            v16 += 4;
            *v17++ = v29;
            --v30;
          }

          while (v30);
          LODWORD(v24) = a6[5];
        }
      }

      if (v24)
      {
        v31 = v34;
        v32 = 4 - v24;
        if ((v32 & 2) == 0)
        {
          *a8 = v34;
          *v15 = v31;
          *v16 = v31;
LABEL_42:
          v17->i16[0] = v31;
          goto LABEL_43;
        }

        a8[1] = v34;
        *a8 = v31;
        v15[1] = v31;
        *v15 = v31;
        v16[1] = v31;
        *v16 = v31;
        v17->i16[1] = v31;
        v17->i16[0] = v31;
        if (v32)
        {
          a8[2] = v31;
          v15[2] = v31;
          v17 = (v17 + 4);
          v16[2] = v31;
          goto LABEL_42;
        }
      }

LABEL_43:
      a8 = (v20 + a10);
      v14 = a6[6];
      if (v13++ >= v14)
      {
        return result;
      }
    }

    v15 = a9;
LABEL_14:
    v16 = a9;
LABEL_15:
    v17 = a9;
    goto LABEL_17;
  }

  return result;
}

_DWORD *ExtractPlane_B44A<unsigned int,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, int32x2_t *a8, int32x2_t *a9, uint64_t a10)
{
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v36, a3);
  v13 = a6[2];
  v14 = a6[6];
  if (v13 <= v14)
  {
    while (1)
    {
      v15 = (a8 + a10);
      v16 = (a8 + a10 + a10);
      v17 = (v16 + a10);
      if (!a9)
      {
        v20 = (v16 + a10);
        goto LABEL_17;
      }

      if (v13 == a6[2])
      {
        v18 = a6[3] + 1;
        v19 = a8;
        a8 = (a8 + a10);
        v15 = v16;
        v16 = (v16 + a10);
        do
        {
          v20 = v16;
          v16 = v15;
          v15 = a8;
          a8 = v19;
          v19 = a9;
          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = (v16 + a10);
      }

      if (v13 == v14)
      {
        v21 = a6[7];
        if (v21 == 1)
        {
          goto LABEL_15;
        }

        if (v21 == 2)
        {
          goto LABEL_14;
        }

        if (v21 == 3)
        {
          break;
        }
      }

      v17 = v20;
LABEL_17:
      v22 = *a6;
      v23 = a6[1];
      result = a6[4];
      v24 = a6[5];
      if (v23)
      {
        v25 = v36;
        v26 = 4 - v24;
        if (result != v22)
        {
          v26 = 4;
        }

        if ((v23 & 2) != 0)
        {
          v26 -= 2;
        }

        v27 = v26 - (v23 & 1);
        if (v27 <= 1)
        {
          v24 = 0;
        }

        else
        {
          v28 = vdup_n_s32(v36);
          *a8 = v28;
          *v15 = v28;
          *v16 = v28;
          *v17 = v28;
          v27 -= 2;
          v24 = 8;
        }

        if (v27 >= 1)
        {
          *(a8->i32 + v24) = v25;
          *(v15->i32 + v24) = v25;
          *(v16->i32 + v24) = v25;
          *(v17->i32 + v24) = v25;
          v24 |= 4uLL;
        }

        result = a6[4];
        if (result == v22)
        {
          goto LABEL_43;
        }

        a8 = (a8 + v24);
        v15 = (v15 + v24);
        v16 = (v16 + v24);
        v17 = (v17 + v24);
        LODWORD(v24) = a6[5];
        ++v22;
      }

      if (result)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24 != 0;
      }

      if (!v29)
      {
        result = (result - (v24 != 0));
        if (v22 <= result)
        {
          v30 = vld1q_dup_f32(&v36);
          v31 = result - v22 + 1;
          do
          {
            *a8->i8 = v30;
            a8 += 2;
            *v15->i8 = v30;
            v15 += 2;
            *v16->i8 = v30;
            v16 += 2;
            *v17->i8 = v30;
            v17 += 2;
            --v31;
          }

          while (v31);
          LODWORD(v24) = a6[5];
        }
      }

      if (v24)
      {
        v32 = v36;
        v33 = 4 - v24;
        if ((v33 & 2) == 0)
        {
          a8->i32[0] = v36;
          v15->i32[0] = v32;
          v16->i32[0] = v32;
LABEL_42:
          v17->i32[0] = v32;
          goto LABEL_43;
        }

        v34 = vdup_n_s32(v36);
        *a8 = v34;
        *v15 = v34;
        *v16 = v34;
        *v17 = v34;
        if (v33)
        {
          a8[1].i32[0] = v32;
          v15[1].i32[0] = v32;
          ++v17;
          v16[1].i32[0] = v32;
          goto LABEL_42;
        }
      }

LABEL_43:
      a8 = (v20 + a10);
      v14 = a6[6];
      if (v13++ >= v14)
      {
        return result;
      }
    }

    v15 = a9;
LABEL_14:
    v16 = a9;
LABEL_15:
    v17 = a9;
    goto LABEL_17;
  }

  return result;
}

uint64_t ExtractPlane_B44A<unsigned short,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, char *a8, char *a9, uint64_t a10)
{
  v49 = result;
  v58 = 0;
  v59 = 0;
  v10 = a6[2];
  v11 = a6[6];
  if (v10 <= v11)
  {
    v15 = a10;
    v51 = *(a7 + 60);
    v50 = a2;
    while (1)
    {
      v16 = *(a3 + 8);
      v17 = *(a5 + 24);
      v18 = (HIDWORD(v17) * v51) + 4 * v10;
      v19 = *(*(v16 + 40) + 8 * *(a5 + 60));
      if (*(v19 + 12) - 1 < v18)
      {
        v18 = *(v19 + 12) - 1;
      }

      if (*(v16 + 104) == 1)
      {
        v20 = (*(v19 + 8 * v17 + 24) + 8 * v18);
      }

      else
      {
        v21 = (v18 * *(v16 + 108)) >> *(v16 + 112);
        if (v21 >= *(v19 + 20) - 1)
        {
          LODWORD(v21) = *(v19 + 20) - 1;
        }

        v20 = (*(v19 + 8 * v17 + 24) + 8 * v21);
      }

      v22 = *v20;
      if (a2 < v22)
      {
        v23 = &a8[3 * a10];
        v58 = 0;
        v59 = 0;
        goto LABEL_55;
      }

      v24 = &a8[v15];
      v25 = &a8[v15 + v15];
      v23 = &v25[v15];
      v26 = (v22 + v49);
      if (a2 - v22 >= HIDWORD(v22))
      {
        v27 = HIDWORD(v22);
      }

      else
      {
        v27 = a2 - v22;
      }

      v58 = v26;
      v59 = v26 + v27;
      if (!v26)
      {
        goto LABEL_55;
      }

      if (!a9)
      {
        break;
      }

      if (v10 == a6[2])
      {
        v28 = a6[3] + 1;
        v29 = a8;
        a8 += v15;
        v24 = v25;
        v25 += v15;
        do
        {
          v23 = v25;
          v25 = v24;
          v24 = a8;
          a8 = v29;
          v29 = a9;
          --v28;
        }

        while (v28);
      }

      if (v10 != v11)
      {
        break;
      }

      v30 = a6[7];
      if (v30 != 1)
      {
        if (v30 != 2)
        {
          if (v30 != 3)
          {
            break;
          }

          v24 = a9;
        }

        v25 = a9;
      }

      v31 = a9;
LABEL_29:
      v32 = *a6;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v58, v32);
      a2 = v50;
      if (!result)
      {
        return result;
      }

      if (a6[1])
      {
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v58, a4, &v56);
        v34 = v56;
        v33 = v57;
        if (a6[4] == v32)
        {
          v35 = 4 - a6[5];
        }

        else
        {
          v35 = 4;
        }

        v36 = a6[1];
        if ((v36 & 2) != 0)
        {
          v34 = vrev64q_s32(v56);
          v33 = vrev64q_s32(v57);
          v35 -= 2;
        }

        a2 = v50;
        v15 = a10;
        if (v36)
        {
          v33 = vqtbl1q_s8(v33, xmmword_296B6EF80);
          v34 = vqtbl1q_s8(v34, xmmword_296B6EF80);
          --v35;
        }

        if (v35 <= 1)
        {
          v37 = 0;
        }

        else
        {
          *a8 = v34.i32[0];
          *v24 = v34.i32[2];
          *v25 = v33.i32[0];
          v31[1] = v33.i16[5];
          v34 = vrev64q_s32(v34);
          *v31 = v33.i16[4];
          v33 = vrev64q_s32(v33);
          v35 -= 2;
          v37 = 4;
        }

        if (v35 >= 1)
        {
          *&a8[v37] = v34.i16[0];
          *&v24[v37] = v34.i16[4];
          *&v25[v37] = v33.i16[0];
          *(v31 + v37) = v33.i16[4];
          v37 |= 2uLL;
        }

        v38 = a6[4];
        if (v38 == v32)
        {
          goto LABEL_55;
        }

        a8 += v37;
        v24 += v37;
        v25 += v37;
        v31 = (v31 + v37);
        ++v32;
      }

      else
      {
        v38 = a6[4];
      }

      v39 = a6[5];
      v40 = v39 != 0;
      if (v38 != 0 || !v40)
      {
        v41 = v38 - v40;
        if (v32 <= v41)
        {
          v42 = v41 - v32 + 1;
          do
          {
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v58, a4, v55);
            v44 = v55[0];
            v43 = v55[1];
            *a8 = v55[0].i64[0];
            a8 += 8;
            *v24 = vextq_s8(v44, v44, 8uLL).u64[0];
            v24 += 8;
            *v25 = v43.i64[0];
            v25 += 8;
            *v31 = vextq_s8(v43, v43, 8uLL).u64[0];
            v31 += 4;
            --v42;
          }

          while (v42);
          v39 = a6[5];
          a2 = v50;
        }
      }

      if (v39)
      {
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v58, a4, v54);
        v46 = v54[0];
        v45 = v54[1];
        v47 = 4 - a6[5];
        if ((v47 & 2) != 0)
        {
          *(a8 + 1) = v54[0].i16[1];
          *a8 = v46.i16[0];
          *v24 = v46.i32[2];
          *v25 = v45.i32[0];
          *v31 = v45.i32[2];
          a2 = v50;
          v15 = a10;
          if (v47)
          {
            *(a8 + 2) = v46.i16[2];
            *(v24 + 2) = v46.i16[6];
            *(v25 + 2) = v45.i16[2];
            v31[2] = v45.i16[6];
          }

          goto LABEL_55;
        }

        *a8 = v54[0].i16[0];
        *v24 = v46.i16[4];
        *v25 = v45.i16[0];
        *v31 = v45.i16[4];
        a2 = v50;
      }

      v15 = a10;
LABEL_55:
      a8 = &v23[v15];
      v11 = a6[6];
      if (v10++ >= v11)
      {
        return result;
      }
    }

    v31 = v23;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractPlane_B44A<unsigned int,(StreamType)1>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a6[2];
  v11 = a6[6];
  if (v10 <= v11)
  {
    v12 = 4 * vmin_u32(vmls_s32(*(*(*(*(a3 + 8) + 40) + 8 * a5[7].u32[1]) + 16), *(*(a3 + 8) + 48), a5[3]), *(*(a3 + 8) + 48)).u32[0];
    v13 = *(a7 + 60);
    while (1)
    {
      v14 = *(a3 + 8);
      v15 = a5[3];
      v16 = (v15.i32[1] * v13) + 4 * v10;
      v17 = *(*(v14 + 40) + 8 * a5[7].u32[1]);
      if (*(v17 + 12) - 1 < v16)
      {
        v16 = *(v17 + 12) - 1;
      }

      if (*(v14 + 104) == 1)
      {
        v18 = (*(v17 + 8 * v15.u32[0] + 24) + 8 * v16);
      }

      else
      {
        v19 = (v16 * *(v14 + 108)) >> *(v14 + 112);
        if (v19 >= *(v17 + 20) - 1)
        {
          LODWORD(v19) = *(v17 + 20) - 1;
        }

        v18 = (*(v17 + 8 * v15.u32[0] + 24) + 8 * v19);
      }

      v20 = *v18;
      if (a2 <= v20)
      {
        v25 = 3 * a10 + a8;
        goto LABEL_28;
      }

      v21 = v20;
      if (a2 - v20 >= HIDWORD(v20))
      {
        v22 = HIDWORD(v20);
      }

      else
      {
        v22 = a2 - v20;
      }

      v23 = a8 + a10;
      v24 = a8 + a10 + a10;
      v25 = v24 + a10;
      v26 = v21 + result;
      if (!(v21 + result))
      {
        goto LABEL_28;
      }

      if (a9)
      {
        if (v10 == a6[2])
        {
          v27 = a6[3] + 1;
          v28 = a8;
          a8 += a10;
          v23 = v24;
          v24 += a10;
          do
          {
            v25 = v24;
            v24 = v23;
            v23 = a8;
            a8 = v28;
            v28 = a9;
            --v27;
          }

          while (v27);
        }

        if (v10 == v11)
        {
          v29 = a6[7];
          if (v29 == 1)
          {
            goto LABEL_26;
          }

          if (v29 == 2)
          {
            goto LABEL_25;
          }

          if (v29 == 3)
          {
            break;
          }
        }
      }

      v30 = v25;
LABEL_32:
      v31 = v22 + v26;
      v32 = *a6;
      v33 = (v26 + 16 * v32);
      if (&v33[-1].u64[1] + 7 >= v31)
      {
        return result;
      }

      v34 = a6[1];
      if (v34)
      {
        if (&v33[1] <= v31)
        {
          v35 = *v33;
        }

        else
        {
          v35 = 0uLL;
        }

        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v40 = (v33 + v12);
        if (v33[1].u64 + v12 <= v31)
        {
          v37 = *v40;
        }

        v41 = (v40 + v12);
        if (&v41[1] <= v31)
        {
          v38 = *v41;
        }

        v42 = (v41 + v12);
        if (&v42[1] <= v31)
        {
          v39 = *v42;
        }

        if (a6[4] == v32)
        {
          v43 = 4 - a6[5];
        }

        else
        {
          v43 = 4;
        }

        if ((v34 & 2) != 0)
        {
          v35 = vextq_s8(v35, v35, 8uLL);
          v37 = vextq_s8(v37, v37, 8uLL);
          v38 = vextq_s8(v38, v38, 8uLL);
          v43 -= 2;
          v39 = vextq_s8(v39, v39, 8uLL);
        }

        if (v34)
        {
          v35 = vextq_s8(v35, v35, 4uLL);
          v37 = vextq_s8(v37, v37, 4uLL);
          v38 = vextq_s8(v38, v38, 4uLL);
          --v43;
          v39 = vextq_s8(v39, v39, 4uLL);
        }

        if (v43 <= 1)
        {
          v44 = 0;
        }

        else
        {
          *a8 = v35.i64[0];
          *v23 = v37.i64[0];
          v35.i32[0] = vextq_s8(v35, v35, 8uLL).u32[0];
          v37.i32[0] = vextq_s8(v37, v37, 8uLL).u32[0];
          *v24 = v38.i64[0];
          v38.i32[0] = vextq_s8(v38, v38, 8uLL).u32[0];
          *v30 = v39.i64[0];
          v39.i32[0] = vextq_s8(v39, v39, 8uLL).u32[0];
          v43 -= 2;
          v44 = 8;
        }

        if (v43 >= 1)
        {
          *(v44 + a8) = v35.i32[0];
          *(v44 + v23) = v37.i32[0];
          *(v44 + v24) = v38.i32[0];
          *(v44 + v30) = v39.i32[0];
          v44 |= 4uLL;
        }

        v36 = a6[4];
        if (v36 == v32)
        {
          goto LABEL_28;
        }

        ++v33;
        a8 += v44;
        v23 += v44;
        v24 += v44;
        v30 += v44;
        ++v32;
      }

      else
      {
        v36 = a6[4];
      }

      v45 = a6[5];
      v46 = v45 != 0;
      if (v36 != 0 || !v46)
      {
        v47 = v36 - v46;
        if (v32 <= v47)
        {
          v48 = v47 - v32 + 1;
          do
          {
            if (v33)
            {
              if (&v33[1] <= v31)
              {
                v49 = *v33;
              }

              else
              {
                v49 = 0uLL;
              }

              v50 = 0uLL;
              v51 = 0uLL;
              v52 = 0uLL;
              v53 = &v33->i8[v12];
              if (v33[1].u64 + v12 <= v31)
              {
                v50 = *v53;
              }

              v54 = &v53[v12];
              if ((v54 + 16) <= v31)
              {
                v51 = *v54;
              }

              v55 = &v54[v12];
              if ((v55 + 1) <= v31)
              {
                v52 = *v55;
              }

              ++v33;
            }

            else
            {
              v49 = 0uLL;
              v50 = 0uLL;
              v51 = 0uLL;
              v52 = 0uLL;
            }

            *a8 = v49;
            a8 += 16;
            *v23 = v50;
            v23 += 16;
            *v24 = v51;
            v24 += 16;
            *v30 = v52;
            v30 += 16;
            --v48;
          }

          while (v48);
          v45 = a6[5];
        }
      }

      if (v45)
      {
        v56 = 4 - v45;
        if (v10 == a6[6])
        {
          v57 = 4 - a6[7];
        }

        else
        {
          v57 = 4;
        }

        if (v33)
        {
          if (v57 <= 3)
          {
            v58 = 0;
          }

          else
          {
            v58 = v12;
          }

          v59 = v57 >= 2;
          v60 = v57 == 2;
          if (v57 == 2)
          {
            v61 = &v33->i8[v12];
          }

          else
          {
            v61 = &v33->i8[v12 + v12];
          }

          v62 = (v33->i64 + v12);
          if (v60)
          {
            v58 = 0;
          }

          if (v59)
          {
            v63 = v61;
          }

          else
          {
            v63 = v33;
          }

          if (v59)
          {
            v64 = v58;
          }

          else
          {
            v62 = v33;
            v64 = 0;
          }

          v65 = (v63 + v64);
          v66 = 0uLL;
          v67 = 0uLL;
          v68 = 0uLL;
          v69 = 0uLL;
          if ((4 - v45))
          {
            if (v33 + 4 * v56 <= v31)
            {
              v69.i32[0] = v33->i32[3 - v45];
            }

            if (v62 + 4 * v56 <= v31)
            {
              v66.i32[0] = *(v62 + 3 - v45);
            }

            if (v63 + 4 * v56 <= v31)
            {
              v67.i32[0] = *(v63 + 3 - v45);
            }

            if (v65 + 4 * v56 <= v31)
            {
              v68.i32[0] = *(v65 + 3 - v45);
            }
          }

          if (((4 - v45) & 2) != 0)
          {
            v69 = vextq_s8(v69, v69, 8uLL);
            if (&v33->u64[1] <= v31)
            {
              v70.i64[0] = v33->i64[0];
              v70.i64[1] = vextq_s8(v69, v69, 8uLL).u64[0];
              v69 = v70;
            }

            v66 = vextq_s8(v66, v66, 8uLL);
            if ((v62 + 1) <= v31)
            {
              v71.i64[0] = *v62;
              v71.i64[1] = vextq_s8(v66, v66, 8uLL).u64[0];
              v66 = v71;
            }

            v67 = vextq_s8(v67, v67, 8uLL);
            if ((v63 + 1) <= v31)
            {
              v72.i64[0] = *v63;
              v72.i64[1] = vextq_s8(v67, v67, 8uLL).u64[0];
              v67 = v72;
            }

            v68 = vextq_s8(v68, v68, 8uLL);
            if ((v65 + 1) <= v31)
            {
              v73.i64[0] = *v65;
              v73.i64[1] = vextq_s8(v68, v68, 8uLL).u64[0];
              v68 = v73;
            }
          }

          if (((4 - v45) & 2) != 0)
          {
LABEL_115:
            *a8 = v69.i64[0];
            *v23 = v66.i64[0];
            *v24 = v67.i64[0];
            *v30 = v68.i64[0];
            if ((4 - v45))
            {
              *(a8 + 8) = v69.i32[2];
              *(v23 + 8) = v66.i32[2];
              *(v24 + 8) = v67.i32[2];
              *(v30 + 8) = v68.i32[2];
            }

            goto LABEL_28;
          }
        }

        else
        {
          v69.i64[0] = 0;
          v69.i32[2] = 0;
          v66.i64[0] = 0;
          v66.i32[2] = 0;
          v67.i64[0] = 0;
          v67.i32[2] = 0;
          v68.i64[0] = 0;
          v68.i32[2] = 0;
          if (((4 - v45) & 2) != 0)
          {
            goto LABEL_115;
          }
        }

        *a8 = v69.i32[0];
        *v23 = v66.i32[0];
        *v24 = v67.i32[0];
        *v30 = v68.i32[0];
      }

LABEL_28:
      a8 = v25 + a10;
      v11 = a6[6];
      v59 = v10++ >= v11;
      if (v59)
      {
        return result;
      }
    }

    v23 = a9;
LABEL_25:
    v24 = a9;
LABEL_26:
    v30 = a9;
    goto LABEL_32;
  }

  return result;
}

void TileDecoder_B44::~TileDecoder_B44(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

uint64_t TileDecoder_B44::Decompress@<X0>(size_t *this@<X1>, uint64_t result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 52) || (*(result + 56) & 3) != 0 || (*(result + 60) & 3) != 0)
  {
    return AXRBufferPool::allocate(this, a4);
  }

  *a4 = *(result + 128);
  *(a4 + 8) = 0;
  return result;
}

uint64_t TileDecoder_B44::GetPoolSize(TileDecoder_B44 *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = 0;
    v3 = (*(this + 8) + 8);
    do
    {
      if (*v3)
      {
        v4 = (*v3 + 72);
      }

      else
      {
        v4 = (*(v3 - 1) + 16);
      }

      if (*v4 == 1)
      {
        v5 = 2;
      }

      else
      {
        v5 = 4;
      }

      v2 += v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return (*(this + 14) * v2);
}

void TileDecoder_B44A::~TileDecoder_B44A(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

uint64_t AXRBufferPool::allocate@<X0>(size_t *this@<X0>, void **a2@<X8>)
{
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x40uLL, *this, 0x24320750uLL);
  if (memptr)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *a2 = memptr;
    a2[1] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

__int16 *AXRStreamB44<unsigned short,(StreamType)0>::AXRStreamB44(__int16 *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  if ((v3 - 1) >= 2)
  {
    if (!v3)
    {
      if (*(v2 + 24))
      {
        LODWORD(v2) = *v2;
      }

      *result = v2;
    }
  }

  else
  {
    if (*(v2 + 24))
    {
      _D0 = *v2;
      __asm { FCVT            H0, D0 }
    }

    else
    {
      _H0 = 32256;
    }

    *result = _H0;
  }

  return result;
}

_DWORD *AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(_DWORD *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*(v2 + 24))
      {
        _D0 = *v2;
        __asm { FCVT            H0, D0 }

        LODWORD(v2) = LODWORD(_D0);
      }

      else
      {
        LODWORD(v2) = 32256;
      }
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(v2 + 24))
      {
        v4 = *v2;
      }

      else
      {
        LODWORD(v4) = vneg_f32(0x3F0000003FLL).u32[0];
      }

      *&v2 = v4;
    }
  }

  else if (*(v2 + 24))
  {
    LODWORD(v2) = *v2;
  }

  *result = v2;
  return result;
}

__int16 *AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(__int16 *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  switch(v3)
  {
    case 0:
      if (*(v2 + 24))
      {
        LODWORD(v2) = *v2;
      }

      goto LABEL_16;
    case 1:
      if (*(v2 + 24))
      {
        _D0 = *v2;
        __asm { FCVT            H0, D0 }
      }

      else
      {
        _H0 = 32256;
      }

      *result = _H0;
      break;
    case 2:
      if (*(v2 + 24))
      {
        v4 = *v2;
      }

      else
      {
        LOWORD(v4) = 0;
      }

      LOWORD(v2) = LOWORD(v4);
LABEL_16:
      *result = v2;
      break;
  }

  return result;
}

uint64_t AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = a1[1];
  if (a2)
  {
    while (v2 + 2 < v3)
    {
      if (*(v2 + 2) == 252)
      {
        v4 = 3;
      }

      else
      {
        v4 = 14;
      }

      v2 += v4;
      *a1 = v2;
      if (!--a2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v2 + 2 >= v3)
  {
    return 0;
  }

  v5 = 14;
  if (*(v2 + 2) == 252)
  {
    v5 = 3;
  }

  if (v2 + v5 <= v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 **AXRStreamB44A<unsigned short,(StreamType)1>::load4x4@<X0>(unsigned __int16 **result@<X0>, uint64_t a2@<X1>, int16x8_t *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = v3 + 3;
    v5 = result[1];
    v6 = 0uLL;
    v7 = 0uLL;
    if (v3 + 3 <= v5)
    {
      if (*(v3 + 2) == 252)
      {
        v8 = bswap32(*v3);
        v9 = HIWORD(v8) & 0x7FFF ^ (~HIWORD(v8) >> 15);
        *result = v4;
        if (a2)
        {
          v9 = *(a2 + 2 * v9);
        }

        v6 = vdupq_n_s16(v9);
        v7 = v6;
      }

      else if ((v3 + 7) <= v5)
      {
        v10.i64[0] = *(v3 + 1);
        v10.i64[1] = *(v3 + 3);
        v11 = vqtbl1q_s8(v10, xmmword_296B6EDE0);
        v12 = vandq_s8(vorrq_s8(vshlq_u8(vshrq_n_u32(v11, 8uLL), xmmword_296B6EE00), vshlq_u8(v11, xmmword_296B6EDF0)), xmmword_296B6EE10);
        v13.i64[0] = 0xE0E0E0E0E0E0E0E0;
        v13.i64[1] = 0xE0E0E0E0E0E0E0E0;
        v14 = vaddq_s8(v12, v13);
        v12.i8[1] = 0;
        v15 = vqtbl1q_s8(v14, xmmword_296B6EE20);
        v16 = vaddq_s8(vaddq_s8(vqtbl1q_s8(v15, xmmword_296B6EE30), v15), vqtbl1q_s8(v15, xmmword_296B6EE40));
        v17 = vdupq_lane_s16(*v12.i8, 0);
        v18 = vshlq_u16(vaddw_s8(vqtbl1q_s8(vmovl_s8(*v16.i8), xmmword_296B6EE50), *v16.i8), v17);
        v19 = vshlq_u16(vaddw_high_s8(vqtbl1q_s8(vmovl_high_s8(v16), xmmword_296B6EE50), v16), v17);
        v20 = vdupq_n_s16(bswap32(*v3) >> 16);
        v21 = vaddq_s16(v19, v20);
        v22 = vaddq_s16(v18, v20);
        v7 = veorq_s8((*&v21 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v21));
        v6 = veorq_s8((*&v22 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vcgezq_s16(v22));
        *result = v3 + 7;
        if (a2)
        {
          v6.i64[0] = (*(a2 + ((v6.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a2 + 2 * v6.u16[2]) << 32) | (*(a2 + 2 * v6.u16[1]) << 16) | *(a2 + 2 * v6.u16[0]);
          v6.i64[1] = (*(a2 + ((v6.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a2 + 2 * v6.u16[6]) << 32) | (*(a2 + 2 * v6.u16[5]) << 16) | *(a2 + 2 * v6.u16[4]);
          v7.i64[0] = (*(a2 + ((v7.i64[0] >> 47) & 0x1FFFE)) << 48) | (*(a2 + 2 * v7.u16[2]) << 32) | (*(a2 + 2 * v7.u16[1]) << 16) | *(a2 + 2 * v7.u16[0]);
          v7.i64[1] = (*(a2 + ((v7.i64[1] >> 47) & 0x1FFFE)) << 48) | (*(a2 + 2 * v7.u16[6]) << 32) | (*(a2 + 2 * v7.u16[5]) << 16) | *(a2 + 2 * v7.u16[4]);
        }
      }
    }
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t TileDecoder_PXR24::Decompress@<X0>(size_t *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, size_t *a4@<X3>, void **a5@<X8>)
{
  AXRBufferPool::allocate(this, a5);
  if (!*a5)
  {
    *a4 = 0;
    exception = __cxa_allocate_exception(8uLL);
    *exception = -5;
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
    *a4 = 0;
    v35 = __cxa_allocate_exception(8uLL);
    *v35 = -4;
  }

  v10 = *(a2 + 72);
  if (v10)
  {
    v11 = 0;
    v12 = *(a3 + 24);
    v13 = (*(a2 + 64) + 8);
    do
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v14[13].u32[0];
        v16 = *(*&v14[5] + 8 * *(a3 + 60));
        v17 = v16[2];
        v18 = vmin_u32(vmls_s32(v17, v14[48], v12), v14[48]).i32[1];
        if (v15 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v14[13].u32[0];
        }

        v20 = __CFADD__(v19 - 1, v18);
        v21 = v19 - 1 + v18;
        v22 = v20;
        v23 = (v21 - 0xFFFFFFFF / v19 * v19) / v19 + 0xFFFFFFFF / v19;
        v24 = v21 / v19;
        if (v22)
        {
          v24 = v23;
        }

        v25 = (v24 + *(a2 + 60) * HIDWORD(*(a3 + 24)) - 1);
        if (v16[1].u32[1] - 1 < v25)
        {
          v25 = v16[1].u32[1] - 1;
        }

        v26 = &v16[v12.u32[0]];
        if (v15 == 1)
        {
          v27 = (*&v26[3] + 8 * v25);
        }

        else
        {
          v28 = (v25 * v14[13].u32[1]) >> v14[14].i32[0];
          if (v28 >= v17.i32[1] - 1)
          {
            LODWORD(v28) = v17.i32[1] - 1;
          }

          v27 = (*&v26[3] + 8 * v28);
        }

        v29 = (v27[1] + *v27);
        if (v11 <= v29)
        {
          v11 = v29;
        }
      }

      v13 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= v9)
  {
    v30 = *(a3 + 16);
  }

  else
  {
    v30 = v11;
  }

  *a4 = v30;
  CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a3, *(*(a2 + 24) + 208), v30);
  if (!CompressedDataPtr)
  {
    v36 = __cxa_allocate_exception(8uLL);
    *v36 = -4;
  }

  result = compression_decode_buffer(*a5, *a4, CompressedDataPtr, *(a3 + 8), 0, 0x505u);
  if (result)
  {
    *a4 = result;
    return result;
  }

  result = uncompress(*a5, a4, CompressedDataPtr, *(a3 + 8));
  if (result != -5 && result != 0)
  {
    v37 = -6;
    goto LABEL_43;
  }

  if (!*a4)
  {
    v37 = -4;
LABEL_43:
    v38 = __cxa_allocate_exception(8uLL);
    *v38 = v37;
  }

  return result;
}

void sub_296B10D24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (*(v1 + 8))
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t TileDecoder_PXR24::Interleave(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[0] = 0;
  v24[1] = 0;
  v26 = 0;
  v25 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a4, a5, a6, v24);
  v15 = *(a1 + 72);
  if (v15)
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    while (*(*v16 + 24))
    {
      v16 += 16;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }

    v18 = *(*(*(a1 + 64) + 8) + 72);
  }

  else
  {
LABEL_5:
    v18 = -1;
  }

  if (HIDWORD(v25))
  {
    v19 = v26 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19 && v18 != -1)
  {
    v21 = *(a1 + 64);
    if (v15 == 2)
    {
      if (v21)
      {
        v22 = v21[1] != 0;
      }

      else
      {
        v22 = 0;
      }

      return (*(&TileDecoder_PXR24::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[3 * (v22 | (2 * (v21[3] != 0)))] + v18))(a2, a1, a4, v21, (v21 + 2), v24[0], HIDWORD(v25), a6, a7, a9);
    }

    else
    {
      if (v21)
      {
        v23 = v21[1] != 0;
      }

      else
      {
        v23 = 0;
      }

      return (*(&TileDecoder_PXR24::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable[3 * (v23 | (2 * (v21[3] != 0)) | (4 * (v21[5] != 0)) | (8 * (v21[7] != 0)))] + v18))(a2, a1, a4, v21, (v21 + 2), (v21 + 4), (v21 + 6), v24[0], HIDWORD(v25), a6, a7, a9);
    }
  }

  return result;
}

uint64_t TileDecoder::GetChannelTileInfo@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int *a5@<X8>)
{
  v5 = a2[11];
  v6 = a2[12];
  v7 = *(result + 56);
  if (v6 + v5 >= v7)
  {
    goto LABEL_9;
  }

  v8 = a2[13];
  v9 = a2[14];
  v10 = *(result + 60);
  if (v9 + v8 >= v10)
  {
    goto LABEL_9;
  }

  v11 = v7 + ~v6;
  v12 = a2[9];
  if (a3 >= 2)
  {
    v5 /= a3;
    v11 /= a3;
    if (v11 < v5)
    {
      goto LABEL_9;
    }

    v12 /= a3;
  }

  v13 = a2[10];
  v14 = v10 + ~v9;
  if (a4 < 2)
  {
LABEL_5:
    *a5 = v5;
    a5[1] = 0;
    a5[2] = v11;
    a5[3] = v12;
    a5[4] = v13;
    a5[5] = v11 - v5 + 1;
    a5[6] = v14 - v8 + 1;
    return result;
  }

  v8 /= a4;
  v14 /= a4;
  if (v14 >= v8)
  {
    v13 /= a4;
    goto LABEL_5;
  }

LABEL_9:
  *a5 = 0;
  *(a5 + 1) = 0;
  a5[6] = 0;
  *(a5 + 2) = 0;
  return result;
}

void CompressedInterleave2<unsigned int,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10)
{
  if (a7)
  {
    v12 = *(a2 + 60);
    if (*(*a4 + 24))
    {
      v10 = **a4;
    }

    if (*(*a5 + 24))
    {
      v11 = **a5;
    }

    v13 = a3[13];
    if (a3[14] + v13 < v12)
    {
      v15 = a3[11];
      v16 = v15 + a7;
      *&v17 = __PAIR64__(v11, v10);
      *(&v17 + 1) = __PAIR64__(v11, v10);
      v18 = __PAIR64__(v11, v10);
      v19 = v15 & 0xFFFFFFE0 | 8;
      if (v19 <= v15 + 1)
      {
        v19 = v15 + 1;
      }

      v20 = (v15 & 0xFFFFFFE0) + ((v19 + ~(v15 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      if (v20 <= v15)
      {
        v20 = a3[11];
      }

      do
      {
        v21 = v20;
        v22 = a9;
        if (v20 + 32 <= v16)
        {
          do
          {
            *v22 = v17;
            v22[1] = v17;
            v22[2] = v17;
            v22[3] = v17;
            v22[4] = v17;
            v22[5] = v17;
            v22[6] = v17;
            v22[7] = v17;
            v22[8] = v17;
            v22[9] = v17;
            v22[10] = v17;
            v22[11] = v17;
            v22[12] = v17;
            v22[13] = v17;
            v22[14] = v17;
            v22[15] = v17;
            v22 += 16;
            v23 = v21 + 64;
            v21 += 32;
          }

          while (v23 <= v16);
        }

        v24 = v21 + 8;
        while (v24 <= v16)
        {
          *v22 = v17;
          v22[1] = v17;
          v22[2] = v17;
          v22[3] = v17;
          v22 += 4;
          v24 = v21 + 16;
          v21 += 8;
        }

        if (v21 < v16)
        {
          v25 = v16 - v21;
          do
          {
            *v22 = v18;
            v22 = (v22 + 8);
            --v25;
          }

          while (v25);
        }

        a9 = (a9 + a10);
        v13 += a8;
      }

      while (v13 + a3[14] < v12);
    }
  }
}

void CompressedInterleave2<unsigned short,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  if (a7)
  {
    v10 = *(a2 + 60);
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v16 = _D0;
    }

    else
    {
      v16 = 32256;
    }

    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v18 = _D0;
    }

    else
    {
      v18 = 32256;
    }

    v19 = a3[13];
    if (a3[14] + v19 < v10)
    {
      v21 = a3[11];
      v22 = v21 + a7;
      v23 = vdupq_n_s16(v16);
      v24 = vdupq_n_s16(v18);
      v25 = v18;
      v26 = v21 & 0xFFFFFFE0 | 8;
      if (v26 <= v21 + 1)
      {
        v26 = v21 + 1;
      }

      v27 = (v21 & 0xFFFFFFE0) + ((v26 + ~(v21 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      if (v27 <= v21)
      {
        v27 = a3[11];
      }

      do
      {
        v28 = v27;
        v29 = a9;
        if (v27 + 32 <= v22)
        {
          do
          {
            v30 = v29;
            vst2q_s16(v30, *v23.i8);
            v30 += 16;
            vst2q_s16(v30, *v23.i8);
            v31 = v29 + 32;
            vst2q_s16(v31, *v23.i8);
            v32 = v29 + 48;
            vst2q_s16(v32, *v23.i8);
            v29 += 64;
            v33 = v28 + 64;
            v28 += 32;
          }

          while (v33 <= v22);
        }

        v34 = v28 + 8;
        while (v34 <= v22)
        {
          vst2q_s16(v29, *v23.i8);
          v29 += 16;
          v34 = v28 + 16;
          v28 += 8;
        }

        if (v28 < v22)
        {
          v35 = v22 - v28;
          do
          {
            v29[1] = v25;
            *v29 = v16;
            v29 += 2;
            --v35;
          }

          while (v35);
        }

        a9 = (a9 + a10);
        v19 += a8;
      }

      while (v19 + a3[14] < v10);
    }
  }
}

void CompressedInterleave2<float,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10)
{
  if (a7)
  {
    v10 = *(a2 + 60);
    if (*(*a4 + 24))
    {
      *&v11 = **a4;
    }

    else
    {
      LODWORD(v11) = 2143289344;
    }

    if (*(*a5 + 24))
    {
      v12 = **a5;
    }

    else
    {
      v12 = NAN;
    }

    v13 = a3[13];
    if (a3[14] + v13 < v10)
    {
      v15 = a3[11];
      *&v16 = __PAIR64__(LODWORD(v12), v11);
      *(&v16 + 1) = __PAIR64__(LODWORD(v12), v11);
      v17 = v15 + a7;
      *(&v11 + 1) = v12;
      v18 = v15 & 0xFFFFFFE0 | 8;
      if (v18 <= v15 + 1)
      {
        v18 = v15 + 1;
      }

      if ((v15 & 0xFFFFFFE0) + ((v18 + ~(v15 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8) > v15)
      {
        v15 = (v15 & 0xFFFFFFE0) + ((v18 + ~(v15 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      }

      do
      {
        v19 = v15;
        v20 = a9;
        if (v15 + 32 <= v17)
        {
          do
          {
            *v20 = v16;
            v20[1] = v16;
            v20[2] = v16;
            v20[3] = v16;
            v20[4] = v16;
            v20[5] = v16;
            v20[6] = v16;
            v20[7] = v16;
            v20[8] = v16;
            v20[9] = v16;
            v20[10] = v16;
            v20[11] = v16;
            v20[12] = v16;
            v20[13] = v16;
            v20[14] = v16;
            v20[15] = v16;
            v20 += 16;
            v21 = v19 + 64;
            v19 += 32;
          }

          while (v21 <= v17);
        }

        v22 = v19 + 8;
        while (v22 <= v17)
        {
          *v20 = v16;
          v20[1] = v16;
          v20[2] = v16;
          v20[3] = v16;
          v20 += 4;
          v22 = v19 + 16;
          v19 += 8;
        }

        if (v19 < v17)
        {
          v23 = v17 - v19;
          do
          {
            *v20 = v11;
            v20 = (v20 + 8);
            --v23;
          }

          while (v23);
        }

        a9 = (a9 + a10);
        v13 += a8;
      }

      while (v13 + a3[14] < v10);
    }
  }
}

float *CompressedInterleave2<unsigned int,(StreamType)1,(StreamType)0>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  if (a7)
  {
    v114 = v15;
    v115 = v14;
    v116 = v13;
    v117 = v12;
    v118 = v10;
    v119 = v11;
    v21 = HIDWORD(*(a2 + 56));
    v113 = 4;
    v22 = *(a4 + 8);
    v23 = a3[3];
    v111 = v23.i32[0];
    v109 = v22;
    v107[1] = result;
    v110 = a3[6].i32[1] + v23.i32[1] * v21;
    v24 = a3[7].u32[1];
    v108 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v112 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v107);
    if (*(*a5 + 24))
    {
      LODWORD(a5) = **a5;
    }

    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v21)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a7;
      v31 = vdupq_n_s32(a5);
      do
      {
        v105 = v25;
        v106 = v31;
        v110 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v107);
        v25 = v105;
        v31 = v106;
        v36 = v107[0];
        if (v107[0])
        {
          if (v29 >= 0x20)
          {
            v48 = 0;
            v37 = 0;
            v49 = v108 + v107[0];
            v50 = v108 + v107[0] + 2 * v108;
            v51 = v107[0] + 2 * v108;
            v40 = xmmword_296B8F080;
            v39 = xmmword_296B8F070;
            v42 = xmmword_296B8F030;
            v41 = xmmword_296B8F020;
            v44 = xmmword_296B8F000;
            v43 = xmmword_296B8F040;
            v46 = xmmword_296B8F050;
            v45 = xmmword_296B8F010;
            v47 = xmmword_296B8F060;
            do
            {
              v122.val[1] = *(v107[0] + v48);
              v120.val[1] = *(v107[0] + v48 + 16);
              v127.val[1] = *(v49 + v48);
              v124.val[1] = *(v49 + v48 + 16);
              v122.val[0] = *(v51 + v48);
              v120.val[0] = *(v51 + v48 + 16);
              v127.val[0] = *(v50 + v48);
              v124.val[0] = *(v50 + v48 + 16);
              v129.val[1] = vqtbl2q_s8(v120, xmmword_296B8F000);
              v129.val[0] = vqtbl2q_s8(v124, xmmword_296B8F010);
              v129.val[0] = vqtbl2q_s8(v129, xmmword_296B8F020);
              v52 = vqtbl2q_s8(v120, xmmword_296B8F030);
              v129.val[1] = vqtbl2q_s8(v124, xmmword_296B8F040);
              v132.val[1] = vqtbl2q_s8(v120, xmmword_296B8F050);
              v132.val[0] = vqtbl2q_s8(v124, xmmword_296B8F060);
              v129.val[1] = vqtbl2q_s8(*(&v129 + 16), xmmword_296B8F020);
              v53 = vqtbl2q_s8(v132, xmmword_296B8F020);
              v120.val[1] = vqtbl2q_s8(v120, xmmword_296B8F070);
              v120.val[0] = vqtbl2q_s8(v124, xmmword_296B8F080);
              v124.val[1] = vqtbl2q_s8(v122, xmmword_296B8F050);
              v124.val[0] = vqtbl2q_s8(v127, xmmword_296B8F060);
              v120.val[0] = vqtbl2q_s8(v120, xmmword_296B8F020);
              v120.val[1] = vqtbl2q_s8(v124, xmmword_296B8F020);
              v124.val[1] = vqtbl2q_s8(v122, xmmword_296B8F070);
              v124.val[0] = vqtbl2q_s8(v127, xmmword_296B8F080);
              v132.val[1] = vqtbl2q_s8(v122, xmmword_296B8F000);
              v132.val[0] = vqtbl2q_s8(v127, xmmword_296B8F010);
              v124.val[0] = vqtbl2q_s8(v124, xmmword_296B8F020);
              v124.val[1] = vqtbl2q_s8(v132, xmmword_296B8F020);
              v122.val[1] = vqtbl2q_s8(v122, xmmword_296B8F030);
              v122.val[0] = vqtbl2q_s8(v127, xmmword_296B8F040);
              v122.val[0] = vqtbl2q_s8(v122, xmmword_296B8F020);
              v129.val[0] = vaddq_s32(vshlq_n_s64(v129.val[0], 0x20uLL), v129.val[0]);
              v129.val[1] = vaddq_s32(vshlq_n_s64(v129.val[1], 0x20uLL), v129.val[1]);
              v54 = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
              v120.val[0] = vaddq_s32(vshlq_n_s64(v120.val[0], 0x20uLL), v120.val[0]);
              v120.val[1] = vaddq_s32(vshlq_n_s64(v120.val[1], 0x20uLL), v120.val[1]);
              v124.val[0] = vaddq_s32(vshlq_n_s64(v124.val[0], 0x20uLL), v124.val[0]);
              v124.val[1] = vaddq_s32(vshlq_n_s64(v124.val[1], 0x20uLL), v124.val[1]);
              v122.val[0] = vaddq_s32(vshlq_n_s64(v122.val[0], 0x20uLL), v122.val[0]);
              v34 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v122.val[0].i8, 1), v122.val[0]), vaddq_s32(vdupq_lane_s32(*v124.val[1].i8, 1), v124.val[1]));
              v35 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v129.val[1].i8, 1), v129.val[1]), vaddq_s32(vdupq_lane_s32(*v129.val[0].i8, 1), v129.val[0]));
              v33 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v124.val[0].i8, 1), v124.val[0]), vaddq_s32(vdupq_lane_s32(*v120.val[1].i8, 1), v120.val[1])), v34);
              v32 = vaddq_s32(vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v120.val[0].i8, 1), v120.val[0]), vaddq_s32(vdupq_lane_s32(*v54.i8, 1), v54))), v33);
              v37 += v32.u32[3];
              v55 = v48 + 64;
              v48 += 32;
            }

            while (v55 <= v29);
            v38 = v29 & 0xFFFFFFE0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v40 = xmmword_296B8F080;
            v39 = xmmword_296B8F070;
            v42 = xmmword_296B8F030;
            v41 = xmmword_296B8F020;
            v44 = xmmword_296B8F000;
            v43 = xmmword_296B8F040;
            v46 = xmmword_296B8F050;
            v45 = xmmword_296B8F010;
            v47 = xmmword_296B8F060;
          }

          if ((v38 | 8) <= v29)
          {
            do
            {
              v32.i64[0] = *(v107[0] + v38);
              v33.i64[0] = *(v108 + v107[0] + v38);
              v34.i64[0] = *(v107[0] + 2 * v108 + v38);
              v35.i64[0] = *(v108 + v107[0] + 2 * v108 + v38);
              v57 = vzip1q_s8(v35, v33);
              v58 = vzip1q_s8(v34, v32);
              v59 = vzip1q_s8(v57, v58);
              v60 = vzip2q_s8(v57, v58);
              v61 = vaddq_s32(vshlq_n_s64(v59, 0x20uLL), v59);
              v62 = vaddq_s32(vshlq_n_s64(v60, 0x20uLL), v60);
              v33 = vdupq_lane_s32(*v62.i8, 1);
              v35 = vdupq_lane_s32(*v61.i8, 1);
              v34 = vaddq_s32(v35, v61);
              v32 = vaddq_s32(v33, v62);
              v37 += v32.i32[3] + v34.i32[3];
              v56 = v38 + 8;
              v63 = v38 + 16;
              v38 += 8;
            }

            while (v63 <= v29);
          }

          else
          {
            v56 = v38;
          }

          v64 = v29 - v56;
          if (v29 > v56)
          {
            v65 = (v56 + v107[0]);
            v66 = &v65[2 * v108];
            v67 = &v65[v108];
            do
            {
              v68 = *v65++;
              v69 = v68 << 24;
              v70 = *v67++;
              v71 = v69 | (v70 << 16);
              v72 = *v66++;
              v37 += v71 | (v72 << 8) | v72;
              --v64;
            }

            while (v64);
            v56 = v29;
          }

          if (v56 + 32 <= v30)
          {
            v75 = v108 + v107[0];
            v76 = v108 + v107[0] + 2 * v108;
            v77 = v107[0] + 2 * v108;
            v78 = a9;
            do
            {
              v121.val[1] = *(v36 + v56);
              v123.val[1] = *(v36 + v56 + 16);
              v125.val[1] = *(v75 + v56);
              v128.val[1] = *(v75 + v56 + 16);
              v121.val[0] = *(v77 + v56);
              v123.val[0] = *(v77 + v56 + 16);
              v125.val[0] = *(v76 + v56);
              v128.val[0] = *(v76 + v56 + 16);
              v130.val[1] = vqtbl2q_s8(v121, v39);
              v130.val[0] = vqtbl2q_s8(v125, v40);
              v130.val[0] = vqtbl2q_s8(v130, v41);
              v79 = vqtbl2q_s8(v121, v42);
              v130.val[1] = vqtbl2q_s8(v125, v43);
              v130.val[1] = vqtbl2q_s8(*(&v130 + 16), v41);
              v131.val[1] = vqtbl2q_s8(v123, v39);
              v131.val[0] = vqtbl2q_s8(v128, v40);
              v133.val[1] = vqtbl2q_s8(v123, v42);
              v131.val[0] = vqtbl2q_s8(v131, v41);
              v133.val[0] = vqtbl2q_s8(v128, v43);
              v131.val[1] = vqtbl2q_s8(v133, v41);
              v133.val[1] = vqtbl2q_s8(v123, v44);
              v133.val[0] = vqtbl2q_s8(v128, v45);
              v123.val[1] = vqtbl2q_s8(v123, v46);
              v133.val[0] = vqtbl2q_s8(v133, v41);
              v123.val[0] = vqtbl2q_s8(v128, v47);
              v123.val[0] = vqtbl2q_s8(v123, v41);
              v128.val[1] = vqtbl2q_s8(v121, v44);
              v128.val[0] = vqtbl2q_s8(v125, v45);
              v121.val[1] = vqtbl2q_s8(v121, v46);
              v123.val[1] = vqtbl2q_s8(v128, v41);
              v121.val[0] = vqtbl2q_s8(v125, v47);
              v121.val[0] = vqtbl2q_s8(v121, v41);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v130.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v128.val[1] = vaddq_s32(vshlq_n_s64(v131.val[1], 0x20uLL), v131.val[1]);
              v128.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v123.val[0] = vaddq_s32(vshlq_n_s64(v123.val[0], 0x20uLL), v123.val[0]);
              v123.val[1] = vaddq_s32(vshlq_n_s64(v123.val[1], 0x20uLL), v123.val[1]);
              v121.val[0] = vaddq_s32(vshlq_n_s64(v121.val[0], 0x20uLL), v121.val[0]);
              v121.val[1] = vdupq_lane_s32(*v121.val[0].i8, 1);
              v125.val[0] = vdupq_lane_s32(*v123.val[1].i8, 1);
              v125.val[1] = vdupq_lane_s32(*v123.val[0].i8, 1);
              v131.val[1] = vdupq_lane_s32(*v128.val[0].i8, 1);
              v133.val[0] = vdupq_lane_s32(*v131.val[0].i8, 1);
              v133.val[1] = vdupq_lane_s32(*v130.val[1].i8, 1);
              v80 = vdupq_lane_s32(*v130.val[0].i8, 1);
              v80.i64[0] = 0;
              v81 = vdupq_lane_s32(*v128.val[1].i8, 1);
              v133.val[1].i64[0] = 0;
              v133.val[0].i64[0] = 0;
              v81.i64[0] = 0;
              v131.val[1].i64[0] = 0;
              v125.val[1].i64[0] = 0;
              v125.val[0].i64[0] = 0;
              v121.val[1].i64[0] = 0;
              v121.val[0] = vaddq_s32(v121.val[1], v121.val[0]);
              v121.val[1] = vaddq_s32(v125.val[0], v123.val[1]);
              v123.val[0] = vaddq_s32(v125.val[1], v123.val[0]);
              v123.val[1] = vaddq_s32(v81, v128.val[1]);
              v125.val[0] = vaddq_s32(v133.val[0], v131.val[0]);
              v125.val[1] = vaddq_s32(v80, v130.val[0]);
              v130.val[0] = vaddq_s32(v133.val[1], v130.val[1]);
              v131.val[0] = vaddq_s32(vdupq_laneq_s32(v125.val[0], 3), v123.val[0]);
              v121.val[0] = vaddq_s32(vdupq_laneq_s32(v125.val[1], 3), v121.val[0]);
              v128.val[1] = vdupq_laneq_s32(v121.val[0], 3);
              v123.val[0] = vaddq_s32(vdupq_laneq_s32(v123.val[1], 3), vaddq_s32(v131.val[1], v128.val[0]));
              v128.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v130.val[0], 3), v121.val[1]), v128.val[1]);
              v121.val[1] = vdupq_laneq_s32(v131.val[0], 3);
              v130.val[1] = vaddq_s32(v123.val[0], v121.val[1]);
              v123.val[1] = vaddq_s32(v123.val[1], v121.val[1]);
              v123.val[0] = vdupq_laneq_s32(v128.val[0], 3);
              v121.val[1] = vdupq_n_s32(v37);
              v131.val[1] = vaddq_s32(v125.val[1], v121.val[1]);
              v82 = v78 + 16;
              v25 = vaddq_s32(vaddq_s32(v130.val[1], v121.val[1]), v123.val[0]);
              v83 = v78 + 24;
              v84 = v78 + 32;
              v85 = v78 + 40;
              result = v78 + 48;
              v86 = v78 + 56;
              v133.val[0] = v106;
              v87 = v78;
              vst2q_f32(v87, *(&v131 + 16));
              v87 += 8;
              v130.val[0] = vaddq_s32(vaddq_s32(v130.val[0], v121.val[1]), v128.val[1]);
              v130.val[1] = v106;
              vst2q_f32(v82, v130);
              v125.val[1] = vaddq_s32(v128.val[0], v121.val[1]);
              v128.val[0] = v106;
              vst2q_f32(v83, *(&v125 + 16));
              v125.val[0] = vaddq_s32(vaddq_s32(v125.val[0], v121.val[1]), v123.val[0]);
              v125.val[1] = v106;
              vst2q_f32(v84, v125);
              v125.val[0] = vaddq_s32(vaddq_s32(v131.val[0], v121.val[1]), v123.val[0]);
              v125.val[1] = v106;
              vst2q_f32(v85, v125);
              v34 = vaddq_s32(vaddq_s32(v123.val[1], v121.val[1]), v123.val[0]);
              v35 = v106;
              vst2q_f32(result, *v34.i8);
              v32 = vaddq_s32(v121.val[0], v121.val[1]);
              v33 = v106;
              vst2q_f32(v87, *v32.i8);
              v37 = v25.u32[3];
              vst2q_f32(v86, *v25.i8);
              v73 = v78 + 64;
              v74 = v56 + 32;
              v88 = v56 + 64;
              v56 += 32;
              v78 += 64;
            }

            while (v88 <= v30);
          }

          else
          {
            v73 = a9;
            v74 = v56;
          }

          if (v74 + 8 <= v30)
          {
            v91 = v108 + v36;
            v92 = v108 + v36 + 2 * v108;
            v93 = v36 + 2 * v108;
            do
            {
              v32.i64[0] = *(v36 + v74);
              v33.i64[0] = *(v91 + v74);
              v34.i64[0] = *(v93 + v74);
              v35.i64[0] = *(v92 + v74);
              v94 = vzip1q_s8(v35, v33);
              v95 = vzip1q_s8(v34, v32);
              v96 = vzip1q_s8(v94, v95);
              v97 = vzip2q_s8(v94, v95);
              v98 = vaddq_s32(vshlq_n_s64(v96, 0x20uLL), v96);
              v99 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
              v100 = vdupq_lane_s32(*v99.i8, 1);
              v101 = vdupq_lane_s32(*v98.i8, 1);
              v101.i64[0] = 0;
              v100.i64[0] = 0;
              v34 = vaddq_s32(v101, v98);
              v35 = vdupq_laneq_s32(v34, 3);
              v102 = vdupq_n_s32(v37);
              v126.val[0] = vaddq_s32(v34, v102);
              v126.val[1] = v106;
              v32 = vaddq_s32(vaddq_s32(v100, vaddq_s32(v99, v102)), v35);
              v33 = v106;
              v90 = v73 + 16;
              vst2q_f32(v73, v126);
              v103 = v73 + 8;
              v37 = v32.u32[3];
              vst2q_f32(v103, *v32.i8);
              v89 = v74 + 8;
              v104 = v74 + 16;
              v74 += 8;
              v73 = v90;
            }

            while (v104 <= v30);
          }

          else
          {
            v89 = v74;
            v90 = v73;
          }

          if (v89 < v30)
          {
            do
            {
              v37 += (*(v107[0] + v89) << 24) | (*(v107[0] + v89 + v108) << 16) | (*(v107[0] + v89 + 2 * v108) << 8) | *(v107[0] + v89 + 2 * v108);
              *v90 = __PAIR64__(a5, v37);
              v90 += 2;
              ++v89;
            }

            while (v30 != v89);
          }
        }

        a9 = (a9 + a10);
        v26 += a8;
      }

      while (v26 + a3[7].u32[0] < v21);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned short,(StreamType)1,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  if (a7)
  {
    v112 = v10;
    v113 = v11;
    v17 = HIDWORD(*(a2 + 56));
    v111 = 2;
    v18 = *(a4 + 8);
    v19 = a3[3];
    v109 = v19.i32[0];
    v107 = v18;
    v105[1] = result;
    v108 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v106 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v110 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v105);
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v27 = _D0;
    }

    else
    {
      v27 = 32256;
    }

    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v17)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a7;
      v33 = vdupq_n_s16(v27);
      do
      {
        v103 = v21;
        v104 = v33;
        v108 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v105);
        v36.i64[0] = 0xFFFFFFFF00000000;
        v36.i64[1] = 0xFFFFFFFF00000000;
        v21 = v103;
        v33 = v104;
        v37 = v105[0];
        if (v105[0])
        {
          if (v31 >= 0x20)
          {
            v40 = 0;
            v38 = 0;
            v41 = v106 + v105[0];
            do
            {
              v43 = *(v105[0] + v40);
              v42 = *(v105[0] + v40 + 16);
              v45 = *(v41 + v40);
              v44 = *(v41 + v40 + 16);
              v46 = vzip1q_s8(v45, v43);
              v47 = vzip2q_s8(v45, v43);
              v48 = vzip1q_s8(v44, v42);
              v49 = vzip2q_s8(v44, v42);
              v50 = vaddq_s16(vshlq_n_s32(v46, 0x10uLL), v46);
              v51 = vaddq_s16(vshlq_n_s32(v47, 0x10uLL), v47);
              v52 = vaddq_s16(vshlq_n_s32(v48, 0x10uLL), v48);
              v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
              v54 = vaddq_s16(vandq_s8(vqtbl1q_s8(v52, xmmword_296B8F090), v36), v52);
              v55 = vaddq_s16(vandq_s8(vqtbl1q_s8(v51, xmmword_296B8F090), v36), v51);
              v56 = vaddq_s16(vandq_s8(vqtbl1q_s8(v50, xmmword_296B8F090), v36), v50);
              v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v36), v53);
              v35 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v56.i8, 3), v56), vaddq_s16(vdupq_lane_s16(*v55.i8, 3), v55));
              v34 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v54.i8, 3), v54), vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57)), v35);
              v38 += v34.u16[7];
              v58 = v40 + 64;
              v40 += 32;
            }

            while (v58 <= v31);
            v39 = v31 & 0xFFFFFFE0;
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          if ((v39 | 8) <= v31)
          {
            do
            {
              v34.i64[0] = *(v105[0] + v39);
              v35.i64[0] = *(v106 + v105[0] + v39);
              v60 = vzip1q_s8(v35, v34);
              v61 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
              v35 = vextq_s8(v61, v61, 0xCuLL);
              v34 = vaddq_s16(v35, v61);
              v38 += v34.u16[7] + v34.u16[3];
              v59 = v39 + 8;
              v62 = v39 + 16;
              v39 += 8;
            }

            while (v62 <= v31);
          }

          else
          {
            v59 = v39;
          }

          v63 = v31 - v59;
          if (v31 > v59)
          {
            v64 = (v59 + v105[0] + v106);
            v65 = (v105[0] + v59);
            do
            {
              v67 = *v65++;
              v66 = v67;
              v68 = *v64++;
              v38 += v68 | (v66 << 8);
              --v63;
            }

            while (v63);
            v59 = v31;
          }

          if (v59 + 32 <= v32)
          {
            v71 = v106 + v105[0];
            v72 = a9;
            do
            {
              v74 = *(v37 + v59);
              v73 = *(v37 + v59 + 16);
              v76 = *(v71 + v59);
              v75 = *(v71 + v59 + 16);
              v77 = vzip2q_s8(v76, v74);
              v78 = vzip2q_s8(v75, v73);
              v79 = vzip1q_s8(v75, v73);
              v80 = vzip1q_s8(v76, v74);
              v81 = vaddq_s16(vshlq_n_s32(v77, 0x10uLL), v77);
              v82 = vaddq_s16(vshlq_n_s32(v78, 0x10uLL), v78);
              v83 = vaddq_s16(vshlq_n_s32(v79, 0x10uLL), v79);
              v84 = vaddq_s16(vshlq_n_s32(v80, 0x10uLL), v80);
              v85 = vaddq_s16(vandq_s8(vqtbl1q_s8(v84, xmmword_296B8F090), v36), v84);
              v86 = vaddq_s16(vandq_s8(vqtbl1q_s8(v83, xmmword_296B8F090), v36), v83);
              v87 = vaddq_s16(vandq_s8(vqtbl1q_s8(v81, xmmword_296B8F090), v36), v81);
              v88 = vaddq_s16(vandq_s8(vqtbl1q_s8(v82, xmmword_296B8F090), v36), v82);
              v89 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v86.i8, 3), xmmword_296B8F0A0), v86);
              v90 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v85.i8, 3), xmmword_296B8F0A0), v85);
              v91 = vaddq_s16(vdupq_laneq_s16(v89, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v88.i8, 3), xmmword_296B8F0A0), v88));
              v92 = vaddq_s16(vdupq_laneq_s16(v90, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v87.i8, 3), xmmword_296B8F0A0), v87));
              v93 = vdupq_laneq_s16(v92, 7);
              v94 = vdupq_n_s16(v38);
              v21 = vaddq_s16(vaddq_s16(v91, v94), v93);
              v115.val[0] = vaddq_s16(v90, v94);
              v95 = v72 + 32;
              v96 = v72 + 48;
              v115.val[1] = v104;
              v97 = v72;
              vst2q_s16(v97, v115);
              v97 += 16;
              v114.val[0] = vaddq_s16(vaddq_s16(v89, v94), v93);
              v114.val[1] = v104;
              vst2q_s16(v95, v114);
              v34 = vaddq_s16(v92, v94);
              v35 = v104;
              vst2q_s16(v96, *v21.i8);
              v38 = v21.u16[7];
              vst2q_s16(v97, *v34.i8);
              v69 = v72 + 64;
              v70 = v59 + 32;
              v98 = v59 + 64;
              v59 += 32;
              v72 += 64;
            }

            while (v98 <= v32);
          }

          else
          {
            v69 = a9;
            v70 = v59;
          }

          v99 = v70 + 8;
          while (v99 <= v32)
          {
            v34.i64[0] = *(v105[0] + v70);
            v35.i64[0] = *(v105[0] + v70 + v106);
            v100 = vzip1q_s8(v35, v34);
            v101 = vaddq_s16(vshlq_n_s32(v100, 0x10uLL), v100);
            v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v101, xmmword_296B8F090), v36), v101);
            v34 = vaddq_s16(vaddq_s16(v102, vdupq_n_s16(v38)), vandq_s8(vdupq_lane_s16(*v102.i8, 3), xmmword_296B8F0A0));
            v35 = v104;
            vst2q_s16(v69, *v34.i8);
            v69 += 16;
            v38 = v34.u16[7];
            v99 = v70 + 16;
            v70 += 8;
          }

          if (v70 < v32)
          {
            do
            {
              v38 += *(v105[0] + v70 + v106) | (*(v105[0] + v70) << 8);
              v69[1] = v27;
              *v69 = v38;
              v69 += 2;
              ++v70;
            }

            while (v32 != v70);
          }
        }

        a9 = (a9 + a10);
        v28 += a8;
      }

      while (v28 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

float *CompressedInterleave2<float,(StreamType)1,(StreamType)0>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  if (a7)
  {
    v124 = v17;
    v125 = v16;
    v126 = v15;
    v127 = v14;
    v128 = v13;
    v129 = v12;
    v130 = v10;
    v131 = v11;
    v23 = HIDWORD(*(a2 + 56));
    v123 = 3;
    v24 = *(a4 + 8);
    v25 = a3[3];
    v121 = v25.i32[0];
    v119 = v24;
    v117[1] = result;
    v120 = a3[6].i32[1] + v25.i32[1] * v23;
    v26 = a3[7].u32[1];
    v118 = vmin_u32(vmls_s32(*(*(*&v24[5] + 8 * v26) + 16), v24[6], v25), v24[6]).u32[0];
    v122 = v26;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v117);
    if (*(*a5 + 24))
    {
      *v27.i32 = **a5;
    }

    else
    {
      v27.i32[0] = 2143289344;
    }

    v29 = a3[6].u32[1];
    if (a3[7].u32[0] + v29 < v23)
    {
      v31 = a3[3].i32[1] * *(a2 + 60);
      v32 = a3[5].u32[1];
      v33 = v32 + a7;
      v34 = vdupq_lane_s32(v27, 0);
      v114 = v27.i32[0];
      do
      {
        v115 = v28;
        v116 = v34;
        v120 = v31 + v29;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v117);
        v28 = v115;
        v34 = v116;
        v38 = v117[0];
        if (v117[0])
        {
          if (v32 >= 0x20)
          {
            v50 = 0;
            v51 = v117[0] + 2 * v118;
            v52 = v118 + v117[0];
            v40.i64[0] = 0;
            v42 = xmmword_296B8F0D0;
            v41 = xmmword_296B8F070;
            v43 = xmmword_296B8F030;
            v44 = xmmword_296B8F020;
            v46 = xmmword_296B8F000;
            v45 = xmmword_296B8F0E0;
            v48 = xmmword_296B8F0B0;
            v47 = xmmword_296B8F050;
            v49 = xmmword_296B8F0C0;
            do
            {
              v132.val[1] = *(v117[0] + v50);
              v134.val[1] = *(v117[0] + v50 + 16);
              v54 = *(v52 + v50);
              v53 = *(v52 + v50 + 16);
              v132.val[0] = *(v51 + v50);
              v134.val[0] = *(v51 + v50 + 16);
              v138.val[1] = vqtbl2q_s8(v132, xmmword_296B8F050);
              v138.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0B0);
              v55 = vqtbl2q_s8(v138, xmmword_296B8F020);
              v138.val[1] = vqtbl2q_s8(v134, xmmword_296B8F050);
              v138.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0B0);
              v138.val[0] = vqtbl2q_s8(v138, xmmword_296B8F020);
              v56 = vqtbl2q_s8(v134, xmmword_296B8F000);
              v138.val[1] = vqtbl1q_s8(v53, xmmword_296B8F0C0);
              v138.val[1] = vqtbl2q_s8(*(&v138 + 16), xmmword_296B8F020);
              v140.val[1] = vqtbl2q_s8(v132, xmmword_296B8F070);
              v140.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0D0);
              v140.val[0] = vqtbl2q_s8(v140, xmmword_296B8F020);
              v57 = vqtbl2q_s8(v132, xmmword_296B8F000);
              v140.val[1] = vqtbl1q_s8(v54, xmmword_296B8F0C0);
              v132.val[1] = vqtbl2q_s8(v132, xmmword_296B8F030);
              v132.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0E0);
              v143.val[1] = vqtbl2q_s8(v134, xmmword_296B8F070);
              v58 = vqtbl2q_s8(*(&v140 + 16), xmmword_296B8F020);
              v143.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0D0);
              v140.val[1] = vqtbl2q_s8(v143, xmmword_296B8F020);
              v134.val[1] = vqtbl2q_s8(v134, xmmword_296B8F030);
              v134.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0E0);
              v134.val[0] = vqtbl2q_s8(v134, xmmword_296B8F020);
              v132.val[0] = vqtbl2q_s8(v132, xmmword_296B8F020);
              v59 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v138.val[0], 0x20uLL), v138.val[0]);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v138.val[1], 0x20uLL), v138.val[1]);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v60 = vaddq_s32(vshlq_n_s64(v58, 0x20uLL), v58);
              v132.val[0] = vaddq_s32(vshlq_n_s64(v132.val[0], 0x20uLL), v132.val[0]);
              v134.val[1] = vaddq_s32(vshlq_n_s64(v140.val[1], 0x20uLL), v140.val[1]);
              v132.val[1] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v143.val[1] = vdupq_lane_s32(*v138.val[1].i8, 1);
              v61 = vdupq_lane_s32(*v138.val[0].i8, 1);
              v62 = vdupq_lane_s32(*v59.i8, 1);
              v62.i64[0] = 0;
              v61.i64[0] = 0;
              v143.val[1].i64[0] = 0;
              v37 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v140.val[0].i8, 1), v140.val[0]), vaddq_s32(v62, v59));
              v36 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v132.val[1].i8, 1), v132.val[1]), 3), vaddq_s32(v143.val[1], v138.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v134.val[1].i8, 1), v134.val[1]), 3), vaddq_s32(v61, v138.val[0])));
              v35 = vaddq_s32(v36, vaddq_s32(v37, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v132.val[0].i8, 1), v132.val[0]), vaddq_s32(vdupq_lane_s32(*v60.i8, 1), v60))));
              v40 = vaddq_s32(v35, vdupq_lane_s32(*v40.i8, 0));
              v40.i32[0] = v40.i32[3];
              v63 = v50 + 64;
              v50 += 32;
            }

            while (v63 <= v32);
            v39 = v32 & 0xFFFFFFE0;
          }

          else
          {
            v39 = 0;
            v40.i64[0] = 0;
            v42 = xmmword_296B8F0D0;
            v41 = xmmword_296B8F070;
            v43 = xmmword_296B8F030;
            v44 = xmmword_296B8F020;
            v46 = xmmword_296B8F000;
            v45 = xmmword_296B8F0E0;
            v48 = xmmword_296B8F0B0;
            v47 = xmmword_296B8F050;
            v49 = xmmword_296B8F0C0;
          }

          if ((v39 | 8) <= v32)
          {
            do
            {
              v35.i64[0] = *(v117[0] + v39);
              v36.i64[0] = *(v118 + v117[0] + v39);
              v37.i64[0] = *(v117[0] + 2 * v118 + v39);
              v65 = vzip1q_s8(0, v36);
              v66 = vzip1q_s8(v37, v35);
              v67 = vzip1q_s8(v65, v66);
              v68 = vzip2q_s8(v65, v66);
              v35 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
              v36 = vdupq_lane_s32(*v35.i8, 1);
              v69 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
              v37 = vaddq_s32(vdupq_lane_s32(*v69.i8, 1), v69);
              v40 = vaddq_s32(v36, vaddq_s32(v35, vdupq_lane_s32(*v40.i8, 0)));
              v40.i32[0] = v40.i32[3] + v37.i32[3];
              v64 = v39 + 8;
              v70 = v39 + 16;
              v39 += 8;
            }

            while (v70 <= v32);
          }

          else
          {
            v64 = v39;
          }

          if (v64 <= v32)
          {
            v71 = v32;
          }

          else
          {
            v71 = v64;
          }

          if (v71 + 32 <= v33)
          {
            v74 = v117[0] + 2 * v118;
            v75 = v118 + v117[0];
            v76 = a9;
            do
            {
              v133.val[1] = *(v38 + v71);
              v135.val[1] = *(v38 + v71 + 16);
              v78 = *(v75 + v71);
              v77 = *(v75 + v71 + 16);
              v133.val[0] = *(v74 + v71);
              v135.val[0] = *(v74 + v71 + 16);
              v139.val[1] = vqtbl2q_s8(v133, v41);
              v139.val[0] = vqtbl1q_s8(v78, v42);
              v79 = vqtbl2q_s8(v139, v44);
              v139.val[1] = vqtbl2q_s8(v133, v43);
              v139.val[0] = vqtbl1q_s8(v78, v45);
              v141.val[1] = vqtbl2q_s8(v135, v41);
              v141.val[0] = vqtbl1q_s8(v77, v42);
              v139.val[0] = vqtbl2q_s8(v139, v44);
              v139.val[1] = vqtbl2q_s8(v141, v44);
              v141.val[1] = vqtbl2q_s8(v135, v43);
              v141.val[0] = vqtbl1q_s8(v77, v45);
              v142.val[1] = vqtbl2q_s8(v135, v46);
              v142.val[0] = vqtbl1q_s8(v77, v49);
              v141.val[0] = vqtbl2q_s8(v141, v44);
              v141.val[1] = vqtbl2q_s8(v142, v44);
              v135.val[1] = vqtbl2q_s8(v135, v47);
              v135.val[0] = vqtbl1q_s8(v77, v48);
              v142.val[1] = vqtbl2q_s8(v133, v46);
              v142.val[0] = vqtbl1q_s8(v78, v49);
              v135.val[0] = vqtbl2q_s8(v135, v44);
              v135.val[1] = vqtbl2q_s8(v142, v44);
              v133.val[1] = vqtbl2q_s8(v133, v47);
              v133.val[0] = vqtbl1q_s8(v78, v48);
              v133.val[0] = vqtbl2q_s8(v133, v44);
              v80 = vaddq_s32(vshlq_n_s64(v79, 0x20uLL), v79);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vaddq_s32(vshlq_n_s64(v139.val[1], 0x20uLL), v139.val[1]);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v135.val[1] = vaddq_s32(vshlq_n_s64(v135.val[1], 0x20uLL), v135.val[1]);
              v133.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v133.val[1] = vdupq_lane_s32(*v133.val[0].i8, 1);
              v81 = vdupq_lane_s32(*v135.val[1].i8, 1);
              v82 = vdupq_lane_s32(*v135.val[0].i8, 1);
              v142.val[0] = vdupq_lane_s32(*v141.val[1].i8, 1);
              v142.val[1] = vdupq_lane_s32(*v141.val[0].i8, 1);
              v83 = vdupq_lane_s32(*v139.val[1].i8, 1);
              v84 = vdupq_lane_s32(*v80.i8, 1);
              v85 = vdupq_lane_s32(*v139.val[0].i8, 1);
              v84.i64[0] = 0;
              v83.i64[0] = 0;
              v85.i64[0] = 0;
              v142.val[1].i64[0] = 0;
              v142.val[0].i64[0] = 0;
              v82.i64[0] = 0;
              v81.i64[0] = 0;
              v133.val[1].i64[0] = 0;
              v133.val[0] = vaddq_s32(v133.val[1], v133.val[0]);
              v133.val[1] = vaddq_s32(v81, v135.val[1]);
              v135.val[0] = vaddq_s32(v82, v135.val[0]);
              v86 = vaddq_s32(v142.val[1], v141.val[0]);
              v87 = vaddq_s32(v83, v139.val[1]);
              v88 = vaddq_s32(v84, v80);
              v139.val[0] = vaddq_s32(v85, v139.val[0]);
              v135.val[0] = vaddq_s32(vdupq_laneq_s32(v87, 3), v135.val[0]);
              v133.val[0] = vaddq_s32(vdupq_laneq_s32(v88, 3), v133.val[0]);
              v139.val[1] = vdupq_laneq_s32(v133.val[0], 3);
              v133.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v139.val[0], 3), v133.val[1]), v139.val[1]);
              v141.val[0] = vdupq_laneq_s32(v135.val[0], 3);
              v135.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v86, 3), vaddq_s32(v142.val[0], v141.val[1])), v141.val[0]);
              v89 = vaddq_s32(v86, v141.val[0]);
              v141.val[0] = vdupq_laneq_s32(v133.val[1], 3);
              v90 = vdupq_lane_s32(*v40.i8, 0);
              v28 = vaddq_s32(vaddq_s32(v135.val[1], v90), v141.val[0]);
              v141.val[1] = vaddq_s32(v133.val[1], v90);
              v133.val[1] = vaddq_s32(v87, v90);
              v137.val[0] = vaddq_s32(v88, v90);
              v142.val[1] = vaddq_s32(v133.val[1], v141.val[0]);
              v91 = v76 + 16;
              v92 = v76 + 24;
              v93 = v76 + 32;
              v94 = v76 + 40;
              v95 = v76 + 48;
              v137.val[1] = v116;
              v96 = v76;
              vst2q_f32(v96, v137);
              result = v96 + 8;
              v137.val[0] = vaddq_s32(vaddq_s32(v139.val[0], v90), v139.val[1]);
              v137.val[1] = v116;
              vst2q_f32(v91, v137);
              v142.val[0] = v116;
              vst2q_f32(v92, *(&v141 + 16));
              v133.val[1] = vaddq_s32(vaddq_s32(v135.val[0], v90), v141.val[0]);
              v97 = v116;
              vst2q_f32(v93, *(&v142 + 16));
              v135.val[0] = v116;
              vst2q_f32(v94, *(&v133 + 16));
              v36 = vaddq_s32(vaddq_s32(v89, v90), v141.val[0]);
              v37 = v116;
              vst2q_f32(v95, *v36.i8);
              v40 = vaddq_s32(v133.val[0], v90);
              v35 = v116;
              vst2q_f32(result, *(&v35 - 1));
              v72 = v76 + 64;
              v98 = v76 + 56;
              vst2q_f32(v98, *v28.i8);
              v40.i32[0] = v28.i32[3];
              v73 = v71 + 32;
              v99 = v71 + 64;
              v71 += 32;
              v76 = v72;
            }

            while (v99 <= v33);
          }

          else
          {
            v72 = a9;
            v73 = v71;
          }

          if (v73 + 8 <= v33)
          {
            v102 = v38 + 2 * v118;
            v103 = v118 + v38;
            do
            {
              v35.i64[0] = *(v38 + v73);
              v36.i64[0] = *(v103 + v73);
              v37.i64[0] = *(v102 + v73);
              v104 = vzip1q_s8(0, v36);
              v105 = vzip1q_s8(v37, v35);
              v106 = vzip1q_s8(v104, v105);
              v107 = vzip2q_s8(v104, v105);
              v108 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
              v109 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
              v36 = vdupq_lane_s32(*v109.i8, 1);
              v110 = vdupq_lane_s32(*v108.i8, 1);
              v110.i64[0] = 0;
              v36.i64[0] = 0;
              v37 = vaddq_s32(v110, v108);
              v111 = vdupq_lane_s32(*v40.i8, 0);
              v136.val[0] = vaddq_s32(v37, v111);
              v136.val[1] = v116;
              v101 = v72 + 16;
              vst2q_f32(v72, v136);
              v112 = v72 + 8;
              v40 = vaddq_s32(vaddq_s32(v36, vaddq_s32(v109, v111)), vdupq_laneq_s32(v37, 3));
              v35 = v116;
              vst2q_f32(v112, *(&v35 - 1));
              v40.i32[0] = v40.i32[3];
              v100 = v73 + 8;
              v113 = v73 + 16;
              v73 += 8;
              v72 = v101;
            }

            while (v113 <= v33);
          }

          else
          {
            v100 = v73;
            v101 = v72;
          }

          if (v100 < v33)
          {
            do
            {
              *v101 = __PAIR64__(v114, ((*(v117[0] + v100) << 24) | (*(v117[0] + v100 + v118) << 16) | (*(v117[0] + v100 + 2 * v118) << 8)) + v40.i32[0]);
              v101 += 2;
              ++v100;
            }

            while (v33 != v100);
          }
        }

        a9 = (a9 + a10);
        v29 += a8;
      }

      while (v29 + a3[7].u32[0] < v23);
    }
  }

  return result;
}

float *CompressedInterleave2<unsigned int,(StreamType)0,(StreamType)1>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  if (a7)
  {
    v114 = v16;
    v115 = v15;
    v116 = v14;
    v117 = v13;
    v118 = v10;
    v119 = v11;
    v120 = v12;
    v21 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      LODWORD(v10) = **a4;
    }

    v113 = 4;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v111 = v23.i32[0];
    v109 = v22;
    v107[1] = result;
    v110 = a3[6].i32[1] + v23.i32[1] * v21;
    v24 = a3[7].u32[1];
    v108 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v112 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v107);
    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < v21)
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a7;
      v31 = vdupq_n_s32(v10);
      do
      {
        v105 = v31;
        v106 = v25;
        v110 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v107);
        v31 = v105;
        v25 = v106;
        v36 = v107[0];
        if (v107[0])
        {
          if (v29 >= 0x20)
          {
            v48 = 0;
            v37 = 0;
            v49 = v108 + v107[0];
            v50 = v108 + v107[0] + 2 * v108;
            v51 = v107[0] + 2 * v108;
            v40 = xmmword_296B8F080;
            v39 = xmmword_296B8F070;
            v42 = xmmword_296B8F030;
            v41 = xmmword_296B8F020;
            v43 = xmmword_296B8F000;
            v44 = xmmword_296B8F040;
            v46 = xmmword_296B8F050;
            v45 = xmmword_296B8F010;
            v47 = xmmword_296B8F060;
            do
            {
              v123.val[1] = *(v107[0] + v48);
              v121.val[1] = *(v107[0] + v48 + 16);
              v128.val[1] = *(v49 + v48);
              v125.val[1] = *(v49 + v48 + 16);
              v123.val[0] = *(v51 + v48);
              v121.val[0] = *(v51 + v48 + 16);
              v128.val[0] = *(v50 + v48);
              v125.val[0] = *(v50 + v48 + 16);
              v130.val[1] = vqtbl2q_s8(v121, xmmword_296B8F000);
              v130.val[0] = vqtbl2q_s8(v125, xmmword_296B8F010);
              v130.val[0] = vqtbl2q_s8(v130, xmmword_296B8F020);
              v52 = vqtbl2q_s8(v121, xmmword_296B8F030);
              v130.val[1] = vqtbl2q_s8(v125, xmmword_296B8F040);
              v133.val[1] = vqtbl2q_s8(v121, xmmword_296B8F050);
              v133.val[0] = vqtbl2q_s8(v125, xmmword_296B8F060);
              v130.val[1] = vqtbl2q_s8(*(&v130 + 16), xmmword_296B8F020);
              v53 = vqtbl2q_s8(v133, xmmword_296B8F020);
              v121.val[1] = vqtbl2q_s8(v121, xmmword_296B8F070);
              v121.val[0] = vqtbl2q_s8(v125, xmmword_296B8F080);
              v125.val[1] = vqtbl2q_s8(v123, xmmword_296B8F050);
              v125.val[0] = vqtbl2q_s8(v128, xmmword_296B8F060);
              v121.val[0] = vqtbl2q_s8(v121, xmmword_296B8F020);
              v121.val[1] = vqtbl2q_s8(v125, xmmword_296B8F020);
              v125.val[1] = vqtbl2q_s8(v123, xmmword_296B8F070);
              v125.val[0] = vqtbl2q_s8(v128, xmmword_296B8F080);
              v133.val[1] = vqtbl2q_s8(v123, xmmword_296B8F000);
              v133.val[0] = vqtbl2q_s8(v128, xmmword_296B8F010);
              v125.val[0] = vqtbl2q_s8(v125, xmmword_296B8F020);
              v125.val[1] = vqtbl2q_s8(v133, xmmword_296B8F020);
              v123.val[1] = vqtbl2q_s8(v123, xmmword_296B8F030);
              v123.val[0] = vqtbl2q_s8(v128, xmmword_296B8F040);
              v123.val[0] = vqtbl2q_s8(v123, xmmword_296B8F020);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v130.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v54 = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
              v121.val[0] = vaddq_s32(vshlq_n_s64(v121.val[0], 0x20uLL), v121.val[0]);
              v121.val[1] = vaddq_s32(vshlq_n_s64(v121.val[1], 0x20uLL), v121.val[1]);
              v125.val[0] = vaddq_s32(vshlq_n_s64(v125.val[0], 0x20uLL), v125.val[0]);
              v125.val[1] = vaddq_s32(vshlq_n_s64(v125.val[1], 0x20uLL), v125.val[1]);
              v123.val[0] = vaddq_s32(vshlq_n_s64(v123.val[0], 0x20uLL), v123.val[0]);
              v34 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v123.val[0].i8, 1), v123.val[0]), vaddq_s32(vdupq_lane_s32(*v125.val[1].i8, 1), v125.val[1]));
              v35 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v130.val[1].i8, 1), v130.val[1]), vaddq_s32(vdupq_lane_s32(*v130.val[0].i8, 1), v130.val[0]));
              v33 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v125.val[0].i8, 1), v125.val[0]), vaddq_s32(vdupq_lane_s32(*v121.val[1].i8, 1), v121.val[1])), v34);
              v32 = vaddq_s32(vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v121.val[0].i8, 1), v121.val[0]), vaddq_s32(vdupq_lane_s32(*v54.i8, 1), v54))), v33);
              v37 += v32.u32[3];
              v55 = v48 + 64;
              v48 += 32;
            }

            while (v55 <= v29);
            v38 = v29 & 0xFFFFFFE0;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v40 = xmmword_296B8F080;
            v39 = xmmword_296B8F070;
            v42 = xmmword_296B8F030;
            v41 = xmmword_296B8F020;
            v43 = xmmword_296B8F000;
            v44 = xmmword_296B8F040;
            v46 = xmmword_296B8F050;
            v45 = xmmword_296B8F010;
            v47 = xmmword_296B8F060;
          }

          if ((v38 | 8) <= v29)
          {
            do
            {
              v32.i64[0] = *(v107[0] + v38);
              v33.i64[0] = *(v108 + v107[0] + v38);
              v34.i64[0] = *(v107[0] + 2 * v108 + v38);
              v35.i64[0] = *(v108 + v107[0] + 2 * v108 + v38);
              v57 = vzip1q_s8(v35, v33);
              v58 = vzip1q_s8(v34, v32);
              v59 = vzip1q_s8(v57, v58);
              v60 = vzip2q_s8(v57, v58);
              v61 = vaddq_s32(vshlq_n_s64(v59, 0x20uLL), v59);
              v62 = vaddq_s32(vshlq_n_s64(v60, 0x20uLL), v60);
              v33 = vdupq_lane_s32(*v62.i8, 1);
              v35 = vdupq_lane_s32(*v61.i8, 1);
              v34 = vaddq_s32(v35, v61);
              v32 = vaddq_s32(v33, v62);
              v37 += v32.i32[3] + v34.i32[3];
              v56 = v38 + 8;
              v63 = v38 + 16;
              v38 += 8;
            }

            while (v63 <= v29);
          }

          else
          {
            v56 = v38;
          }

          v64 = v29 - v56;
          if (v29 > v56)
          {
            v65 = (v56 + v107[0]);
            v66 = &v65[2 * v108];
            v67 = &v65[v108];
            do
            {
              v68 = *v65++;
              v69 = v68 << 24;
              v70 = *v67++;
              v71 = v69 | (v70 << 16);
              v72 = *v66++;
              v37 += v71 | (v72 << 8) | v72;
              --v64;
            }

            while (v64);
            v56 = v29;
          }

          if (v56 + 32 <= v30)
          {
            v75 = v108 + v107[0];
            v76 = v108 + v107[0] + 2 * v108;
            v77 = v107[0] + 2 * v108;
            v78 = a9;
            do
            {
              v122.val[1] = *(v36 + v56);
              v124.val[1] = *(v36 + v56 + 16);
              v126.val[1] = *(v75 + v56);
              v129.val[1] = *(v75 + v56 + 16);
              v122.val[0] = *(v77 + v56);
              v124.val[0] = *(v77 + v56 + 16);
              v126.val[0] = *(v76 + v56);
              v129.val[0] = *(v76 + v56 + 16);
              v131.val[1] = vqtbl2q_s8(v122, v39);
              v131.val[0] = vqtbl2q_s8(v126, v40);
              v131.val[0] = vqtbl2q_s8(v131, v41);
              v79 = vqtbl2q_s8(v122, v42);
              v131.val[1] = vqtbl2q_s8(v126, v44);
              v131.val[1] = vqtbl2q_s8(*(&v131 + 16), v41);
              v132.val[1] = vqtbl2q_s8(v124, v39);
              v132.val[0] = vqtbl2q_s8(v129, v40);
              v134.val[1] = vqtbl2q_s8(v124, v42);
              v132.val[0] = vqtbl2q_s8(v132, v41);
              v134.val[0] = vqtbl2q_s8(v129, v44);
              v132.val[1] = vqtbl2q_s8(v134, v41);
              v134.val[1] = vqtbl2q_s8(v124, v43);
              v134.val[0] = vqtbl2q_s8(v129, v45);
              v124.val[1] = vqtbl2q_s8(v124, v46);
              v134.val[0] = vqtbl2q_s8(v134, v41);
              v124.val[0] = vqtbl2q_s8(v129, v47);
              v124.val[0] = vqtbl2q_s8(v124, v41);
              v129.val[1] = vqtbl2q_s8(v122, v43);
              v129.val[0] = vqtbl2q_s8(v126, v45);
              v122.val[1] = vqtbl2q_s8(v122, v46);
              v124.val[1] = vqtbl2q_s8(v129, v41);
              v122.val[0] = vqtbl2q_s8(v126, v47);
              v122.val[0] = vqtbl2q_s8(v122, v41);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v131.val[1] = vaddq_s32(vshlq_n_s64(v131.val[1], 0x20uLL), v131.val[1]);
              v132.val[0] = vaddq_s32(vshlq_n_s64(v132.val[0], 0x20uLL), v132.val[0]);
              v129.val[1] = vaddq_s32(vshlq_n_s64(v132.val[1], 0x20uLL), v132.val[1]);
              v129.val[0] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v124.val[0] = vaddq_s32(vshlq_n_s64(v124.val[0], 0x20uLL), v124.val[0]);
              v124.val[1] = vaddq_s32(vshlq_n_s64(v124.val[1], 0x20uLL), v124.val[1]);
              v122.val[0] = vaddq_s32(vshlq_n_s64(v122.val[0], 0x20uLL), v122.val[0]);
              v122.val[1] = vdupq_lane_s32(*v122.val[0].i8, 1);
              v126.val[0] = vdupq_lane_s32(*v124.val[1].i8, 1);
              v126.val[1] = vdupq_lane_s32(*v124.val[0].i8, 1);
              v132.val[1] = vdupq_lane_s32(*v129.val[0].i8, 1);
              v134.val[0] = vdupq_lane_s32(*v132.val[0].i8, 1);
              v134.val[1] = vdupq_lane_s32(*v131.val[1].i8, 1);
              v80 = vdupq_lane_s32(*v131.val[0].i8, 1);
              v80.i64[0] = 0;
              v81 = vdupq_lane_s32(*v129.val[1].i8, 1);
              v134.val[1].i64[0] = 0;
              v134.val[0].i64[0] = 0;
              v81.i64[0] = 0;
              v132.val[1].i64[0] = 0;
              v126.val[1].i64[0] = 0;
              v126.val[0].i64[0] = 0;
              v122.val[1].i64[0] = 0;
              v122.val[0] = vaddq_s32(v122.val[1], v122.val[0]);
              v122.val[1] = vaddq_s32(v126.val[0], v124.val[1]);
              v124.val[0] = vaddq_s32(v126.val[1], v124.val[0]);
              v124.val[1] = vaddq_s32(v81, v129.val[1]);
              v126.val[0] = vaddq_s32(v134.val[0], v132.val[0]);
              v126.val[1] = vaddq_s32(v80, v131.val[0]);
              v131.val[0] = vaddq_s32(v134.val[1], v131.val[1]);
              v124.val[0] = vaddq_s32(vdupq_laneq_s32(v126.val[0], 3), v124.val[0]);
              v122.val[0] = vaddq_s32(vdupq_laneq_s32(v126.val[1], 3), v122.val[0]);
              v129.val[1] = vdupq_laneq_s32(v122.val[0], 3);
              v131.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v131.val[0], 3), v122.val[1]), v129.val[1]);
              v122.val[1] = vdupq_laneq_s32(v124.val[0], 3);
              v129.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v124.val[1], 3), vaddq_s32(v132.val[1], v129.val[0])), v122.val[1]);
              v132.val[0] = vaddq_s32(v124.val[1], v122.val[1]);
              v124.val[1] = vdupq_laneq_s32(v131.val[1], 3);
              v122.val[1] = vdupq_n_s32(v37);
              v25 = vaddq_s32(vaddq_s32(v129.val[0], v122.val[1]), v124.val[1]);
              v134.val[0] = vaddq_s32(v131.val[1], v122.val[1]);
              v129.val[0] = vaddq_s32(v131.val[0], v122.val[1]);
              v131.val[1] = vaddq_s32(v126.val[1], v122.val[1]);
              v82 = v78 + 16;
              v126.val[1] = vaddq_s32(vaddq_s32(v126.val[0], v122.val[1]), v124.val[1]);
              v83 = v78 + 24;
              v84 = v78 + 32;
              v85 = v78 + 40;
              result = v78 + 48;
              v86 = v78 + 56;
              v131.val[0] = v105;
              v87 = v78;
              vst2q_f32(v87, v131);
              v87 += 8;
              v129.val[1] = vaddq_s32(v129.val[0], v129.val[1]);
              v129.val[0] = v105;
              vst2q_f32(v82, v129);
              v132.val[1] = v105;
              vst2q_f32(v83, *(&v132 + 16));
              v129.val[1] = vaddq_s32(vaddq_s32(v124.val[0], v122.val[1]), v124.val[1]);
              v126.val[0] = v105;
              vst2q_f32(v84, v126);
              v129.val[0] = v105;
              vst2q_f32(v85, v129);
              v35 = vaddq_s32(vaddq_s32(v132.val[0], v122.val[1]), v124.val[1]);
              v34 = v105;
              vst2q_f32(result, *v34.i8);
              v33 = vaddq_s32(v122.val[0], v122.val[1]);
              v32 = v105;
              vst2q_f32(v87, *v32.i8);
              v37 = v25.u32[3];
              vst2q_f32(v86, *(&v25 - 1));
              v73 = v78 + 64;
              v74 = v56 + 32;
              v88 = v56 + 64;
              v56 += 32;
              v78 += 64;
            }

            while (v88 <= v30);
          }

          else
          {
            v73 = a9;
            v74 = v56;
          }

          if (v74 + 8 <= v30)
          {
            v91 = v108 + v36;
            v92 = v108 + v36 + 2 * v108;
            v93 = v36 + 2 * v108;
            do
            {
              v32.i64[0] = *(v36 + v74);
              v33.i64[0] = *(v91 + v74);
              v34.i64[0] = *(v93 + v74);
              v35.i64[0] = *(v92 + v74);
              v94 = vzip1q_s8(v35, v33);
              v95 = vzip1q_s8(v34, v32);
              v96 = vzip1q_s8(v94, v95);
              v97 = vzip2q_s8(v94, v95);
              v98 = vaddq_s32(vshlq_n_s64(v96, 0x20uLL), v96);
              v99 = vaddq_s32(vshlq_n_s64(v97, 0x20uLL), v97);
              v100 = vdupq_lane_s32(*v99.i8, 1);
              v101 = vdupq_lane_s32(*v98.i8, 1);
              v101.i64[0] = 0;
              v100.i64[0] = 0;
              v34 = vaddq_s32(v101, v98);
              v35 = vdupq_laneq_s32(v34, 3);
              v102 = vdupq_n_s32(v37);
              v127.val[1] = vaddq_s32(v34, v102);
              v33 = vaddq_s32(vaddq_s32(v100, vaddq_s32(v99, v102)), v35);
              v37 = v33.u32[3];
              v90 = v73 + 16;
              v127.val[0] = v105;
              vst2q_f32(v73, v127);
              v103 = v73 + 8;
              v32 = v105;
              vst2q_f32(v103, *v32.i8);
              v89 = v74 + 8;
              v104 = v74 + 16;
              v74 += 8;
              v73 = v90;
            }

            while (v104 <= v30);
          }

          else
          {
            v89 = v74;
            v90 = v73;
          }

          if (v89 < v30)
          {
            do
            {
              v37 += (*(v107[0] + v89) << 24) | (*(v107[0] + v89 + v108) << 16) | (*(v107[0] + v89 + 2 * v108) << 8) | *(v107[0] + v89 + 2 * v108);
              *v90 = __PAIR64__(v37, v10);
              v90 += 2;
              ++v89;
            }

            while (v30 != v89);
          }
        }

        a9 = (a9 + a10);
        v26 += a8;
      }

      while (v26 + a3[7].u32[0] < v21);
    }
  }

  return result;
}

uint64_t CompressedInterleave2<unsigned short,(StreamType)0,(StreamType)1>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  if (a7)
  {
    v113 = v10;
    v114 = v11;
    v16 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v17 = _D0;
    }

    else
    {
      v17 = 32256;
    }

    v112 = 2;
    v23 = *(a5 + 8);
    v24 = a3[3];
    v110 = v24.i32[0];
    v108 = v23;
    v106[1] = result;
    v109 = a3[6].i32[1] + v24.i32[1] * v16;
    v25 = a3[7].u32[1];
    v107 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v111 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v106);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v16)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a7;
      v26.i32[0] = v17;
      v33 = vdupq_n_s16(v17);
      v103 = vmovl_u16(v26).u16[0];
      do
      {
        v104 = v33;
        v105 = v27;
        v109 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v106);
        v36.i64[0] = 0xFFFFFFFF00000000;
        v36.i64[1] = 0xFFFFFFFF00000000;
        v33 = v104;
        v27 = v105;
        v37 = v106[0];
        if (v106[0])
        {
          if (v31 >= 0x20)
          {
            v40 = 0;
            v38 = 0;
            v41 = v107 + v106[0];
            do
            {
              v43 = *(v106[0] + v40);
              v42 = *(v106[0] + v40 + 16);
              v45 = *(v41 + v40);
              v44 = *(v41 + v40 + 16);
              v46 = vzip1q_s8(v45, v43);
              v47 = vzip2q_s8(v45, v43);
              v48 = vzip1q_s8(v44, v42);
              v49 = vzip2q_s8(v44, v42);
              v50 = vaddq_s16(vshlq_n_s32(v46, 0x10uLL), v46);
              v51 = vaddq_s16(vshlq_n_s32(v47, 0x10uLL), v47);
              v52 = vaddq_s16(vshlq_n_s32(v48, 0x10uLL), v48);
              v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
              v54 = vaddq_s16(vandq_s8(vqtbl1q_s8(v52, xmmword_296B8F090), v36), v52);
              v55 = vaddq_s16(vandq_s8(vqtbl1q_s8(v51, xmmword_296B8F090), v36), v51);
              v56 = vaddq_s16(vandq_s8(vqtbl1q_s8(v50, xmmword_296B8F090), v36), v50);
              v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v36), v53);
              v35 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v56.i8, 3), v56), vaddq_s16(vdupq_lane_s16(*v55.i8, 3), v55));
              v34 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v54.i8, 3), v54), vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57)), v35);
              v38 += v34.u16[7];
              v58 = v40 + 64;
              v40 += 32;
            }

            while (v58 <= v31);
            v39 = v31 & 0xFFFFFFE0;
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          if ((v39 | 8) <= v31)
          {
            do
            {
              v34.i64[0] = *(v106[0] + v39);
              v35.i64[0] = *(v107 + v106[0] + v39);
              v60 = vzip1q_s8(v35, v34);
              v61 = vaddq_s16(vshlq_n_s32(v60, 0x10uLL), v60);
              v35 = vextq_s8(v61, v61, 0xCuLL);
              v34 = vaddq_s16(v35, v61);
              v38 += v34.u16[7] + v34.u16[3];
              v59 = v39 + 8;
              v62 = v39 + 16;
              v39 += 8;
            }

            while (v62 <= v31);
          }

          else
          {
            v59 = v39;
          }

          v63 = v31 - v59;
          if (v31 > v59)
          {
            v64 = (v59 + v106[0] + v107);
            v65 = (v106[0] + v59);
            do
            {
              v67 = *v65++;
              v66 = v67;
              v68 = *v64++;
              v38 += v68 | (v66 << 8);
              --v63;
            }

            while (v63);
            v59 = v31;
          }

          if (v59 + 32 <= v32)
          {
            v71 = v107 + v106[0];
            v72 = a9;
            do
            {
              v74 = *(v37 + v59);
              v73 = *(v37 + v59 + 16);
              v76 = *(v71 + v59);
              v75 = *(v71 + v59 + 16);
              v77 = vzip2q_s8(v76, v74);
              v78 = vzip2q_s8(v75, v73);
              v79 = vzip1q_s8(v75, v73);
              v80 = vzip1q_s8(v76, v74);
              v81 = vaddq_s16(vshlq_n_s32(v77, 0x10uLL), v77);
              v82 = vaddq_s16(vshlq_n_s32(v78, 0x10uLL), v78);
              v83 = vaddq_s16(vshlq_n_s32(v79, 0x10uLL), v79);
              v84 = vaddq_s16(vshlq_n_s32(v80, 0x10uLL), v80);
              v85 = vaddq_s16(vandq_s8(vqtbl1q_s8(v84, xmmword_296B8F090), v36), v84);
              v86 = vaddq_s16(vandq_s8(vqtbl1q_s8(v83, xmmword_296B8F090), v36), v83);
              v87 = vaddq_s16(vandq_s8(vqtbl1q_s8(v81, xmmword_296B8F090), v36), v81);
              v88 = vaddq_s16(vandq_s8(vqtbl1q_s8(v82, xmmword_296B8F090), v36), v82);
              v89 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v86.i8, 3), xmmword_296B8F0A0), v86);
              v90 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v85.i8, 3), xmmword_296B8F0A0), v85);
              v91 = vaddq_s16(vdupq_laneq_s16(v89, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v88.i8, 3), xmmword_296B8F0A0), v88));
              v92 = vaddq_s16(vdupq_laneq_s16(v90, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v87.i8, 3), xmmword_296B8F0A0), v87));
              v93 = vdupq_laneq_s16(v92, 7);
              v94 = vdupq_n_s16(v38);
              v27 = vaddq_s16(vaddq_s16(v91, v94), v93);
              v116.val[1] = vaddq_s16(v90, v94);
              v95 = v72 + 32;
              v96 = v72 + 48;
              v116.val[0] = v104;
              v97 = v72;
              vst2q_s16(v97, v116);
              v97 += 16;
              v115.val[1] = vaddq_s16(vaddq_s16(v89, v94), v93);
              v115.val[0] = v104;
              vst2q_s16(v95, v115);
              v38 = v27.u16[7];
              vst2q_s16(v96, *(&v27 - 1));
              v35 = vaddq_s16(v92, v94);
              v34 = v104;
              vst2q_s16(v97, *v34.i8);
              v69 = v72 + 64;
              v70 = v59 + 32;
              v98 = v59 + 64;
              v59 += 32;
              v72 += 64;
            }

            while (v98 <= v32);
          }

          else
          {
            v69 = a9;
            v70 = v59;
          }

          v99 = v70 + 8;
          while (v99 <= v32)
          {
            v34.i64[0] = *(v106[0] + v70);
            v35.i64[0] = *(v106[0] + v70 + v107);
            v100 = vzip1q_s8(v35, v34);
            v101 = vaddq_s16(vshlq_n_s32(v100, 0x10uLL), v100);
            v102 = vaddq_s16(vandq_s8(vqtbl1q_s8(v101, xmmword_296B8F090), v36), v101);
            v35 = vaddq_s16(vaddq_s16(v102, vdupq_n_s16(v38)), vandq_s8(vdupq_lane_s16(*v102.i8, 3), xmmword_296B8F0A0));
            v38 = v35.u16[7];
            v34 = v104;
            vst2q_s16(v69, *v34.i8);
            v69 += 16;
            v99 = v70 + 16;
            v70 += 8;
          }

          if (v70 < v32)
          {
            do
            {
              v38 += *(v106[0] + v70 + v107) | (*(v106[0] + v70) << 8);
              *v69 = v103;
              v69[1] = v38;
              v69 += 2;
              ++v70;
            }

            while (v32 != v70);
          }
        }

        a9 = (a9 + a10);
        v28 += a8;
      }

      while (v28 + a3[7].u32[0] < v16);
    }
  }

  return result;
}

float *CompressedInterleave2<float,(StreamType)0,(StreamType)1>(float *result, uint64_t a2, int32x2_t *a3, double **a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, unsigned int a9, float *a10, uint64_t a11)
{
  if (a8)
  {
    v126 = v18;
    v127 = v17;
    v128 = v16;
    v129 = v15;
    v130 = v14;
    v131 = v13;
    v132 = v11;
    v133 = v12;
    v23 = HIDWORD(*(a2 + 56));
    v24 = *a4;
    if (*(*a4 + 24))
    {
      a6 = *v24;
      *&a6 = *v24;
    }

    else
    {
      LODWORD(a6) = 2143289344;
    }

    v118 = *&a6;
    v125 = 3;
    v25 = *(a5 + 8);
    v26 = a3[3];
    v123 = v26.i32[0];
    v121 = v25;
    v119[1] = result;
    v122 = a3[6].i32[1] + v26.i32[1] * v23;
    v27 = a3[7].u32[1];
    v120 = vmin_u32(vmls_s32(*(*(*&v25[5] + 8 * v27) + 16), v25[6], v26), v25[6]).u32[0];
    v124 = v27;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v119);
    v29 = a3[6].u32[1];
    if (a3[7].u32[0] + v29 < v23)
    {
      v31 = a3[3].i32[1] * *(a2 + 60);
      v32 = a3[5].u32[1];
      v33 = v32 + a8;
      v34 = vdupq_lane_s32(v118, 0);
      do
      {
        v116 = v34;
        v117 = v28;
        v122 = v31 + v29;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v119);
        v34 = v116;
        v28 = v117;
        v38 = v119[0];
        if (v119[0])
        {
          if (v32 >= 0x20)
          {
            v50 = 0;
            v51 = v119[0] + 2 * v120;
            v52 = v120 + v119[0];
            v40.i64[0] = 0;
            v42 = xmmword_296B8F0D0;
            v41 = xmmword_296B8F070;
            v43 = xmmword_296B8F050;
            v44 = xmmword_296B8F020;
            v46 = xmmword_296B8F000;
            v45 = xmmword_296B8F0B0;
            v48 = xmmword_296B8F030;
            v47 = xmmword_296B8F0C0;
            v49 = xmmword_296B8F0E0;
            do
            {
              v134.val[1] = *(v119[0] + v50);
              v136.val[1] = *(v119[0] + v50 + 16);
              v54 = *(v52 + v50);
              v53 = *(v52 + v50 + 16);
              v134.val[0] = *(v51 + v50);
              v136.val[0] = *(v51 + v50 + 16);
              v140.val[1] = vqtbl2q_s8(v134, xmmword_296B8F050);
              v140.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0B0);
              v55 = vqtbl2q_s8(v140, xmmword_296B8F020);
              v140.val[1] = vqtbl2q_s8(v136, xmmword_296B8F050);
              v140.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0B0);
              v140.val[0] = vqtbl2q_s8(v140, xmmword_296B8F020);
              v56 = vqtbl2q_s8(v136, xmmword_296B8F000);
              v140.val[1] = vqtbl1q_s8(v53, xmmword_296B8F0C0);
              v140.val[1] = vqtbl2q_s8(*(&v140 + 16), xmmword_296B8F020);
              v142.val[1] = vqtbl2q_s8(v134, xmmword_296B8F070);
              v142.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0D0);
              v142.val[0] = vqtbl2q_s8(v142, xmmword_296B8F020);
              v57 = vqtbl2q_s8(v134, xmmword_296B8F000);
              v142.val[1] = vqtbl1q_s8(v54, xmmword_296B8F0C0);
              v134.val[1] = vqtbl2q_s8(v134, xmmword_296B8F030);
              v134.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0E0);
              v145.val[1] = vqtbl2q_s8(v136, xmmword_296B8F070);
              v58 = vqtbl2q_s8(*(&v142 + 16), xmmword_296B8F020);
              v145.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0D0);
              v142.val[1] = vqtbl2q_s8(v145, xmmword_296B8F020);
              v136.val[1] = vqtbl2q_s8(v136, xmmword_296B8F030);
              v136.val[0] = vqtbl1q_s8(v53, xmmword_296B8F0E0);
              v136.val[0] = vqtbl2q_s8(v136, xmmword_296B8F020);
              v134.val[0] = vqtbl2q_s8(v134, xmmword_296B8F020);
              v59 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v140.val[1], 0x20uLL), v140.val[1]);
              v142.val[0] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v60 = vaddq_s32(vshlq_n_s64(v58, 0x20uLL), v58);
              v134.val[0] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v136.val[1] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v134.val[1] = vaddq_s32(vshlq_n_s64(v136.val[0], 0x20uLL), v136.val[0]);
              v145.val[1] = vdupq_lane_s32(*v140.val[1].i8, 1);
              v61 = vdupq_lane_s32(*v140.val[0].i8, 1);
              v62 = vdupq_lane_s32(*v59.i8, 1);
              v62.i64[0] = 0;
              v61.i64[0] = 0;
              v145.val[1].i64[0] = 0;
              v37 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v142.val[0].i8, 1), v142.val[0]), vaddq_s32(v62, v59));
              v36 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v134.val[1].i8, 1), v134.val[1]), 3), vaddq_s32(v145.val[1], v140.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v136.val[1].i8, 1), v136.val[1]), 3), vaddq_s32(v61, v140.val[0])));
              v35 = vaddq_s32(v36, vaddq_s32(v37, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v134.val[0].i8, 1), v134.val[0]), vaddq_s32(vdupq_lane_s32(*v60.i8, 1), v60))));
              v40 = vaddq_s32(v35, vdupq_lane_s32(*v40.i8, 0));
              v40.i32[0] = v40.i32[3];
              v63 = v50 + 64;
              v50 += 32;
            }

            while (v63 <= v32);
            v39 = v32 & 0xFFFFFFE0;
          }

          else
          {
            v39 = 0;
            v40.i64[0] = 0;
            v42 = xmmword_296B8F0D0;
            v41 = xmmword_296B8F070;
            v43 = xmmword_296B8F050;
            v44 = xmmword_296B8F020;
            v46 = xmmword_296B8F000;
            v45 = xmmword_296B8F0B0;
            v48 = xmmword_296B8F030;
            v47 = xmmword_296B8F0C0;
            v49 = xmmword_296B8F0E0;
          }

          if ((v39 | 8) <= v32)
          {
            do
            {
              v35.i64[0] = *(v119[0] + v39);
              v36.i64[0] = *(v120 + v119[0] + v39);
              v37.i64[0] = *(v119[0] + 2 * v120 + v39);
              v65 = vzip1q_s8(0, v36);
              v66 = vzip1q_s8(v37, v35);
              v67 = vzip1q_s8(v65, v66);
              v68 = vzip2q_s8(v65, v66);
              v35 = vaddq_s32(vshlq_n_s64(v68, 0x20uLL), v68);
              v36 = vdupq_lane_s32(*v35.i8, 1);
              v69 = vaddq_s32(vshlq_n_s64(v67, 0x20uLL), v67);
              v37 = vaddq_s32(vdupq_lane_s32(*v69.i8, 1), v69);
              v40 = vaddq_s32(v36, vaddq_s32(v35, vdupq_lane_s32(*v40.i8, 0)));
              v40.i32[0] = v40.i32[3] + v37.i32[3];
              v64 = v39 + 8;
              v70 = v39 + 16;
              v39 += 8;
            }

            while (v70 <= v32);
          }

          else
          {
            v64 = v39;
          }

          if (v64 <= v32)
          {
            v71 = v32;
          }

          else
          {
            v71 = v64;
          }

          if (v71 + 32 <= v33)
          {
            v74 = v119[0] + 2 * v120;
            v75 = v120 + v119[0];
            v76 = a10;
            do
            {
              v135.val[1] = *(v38 + v71);
              v137.val[1] = *(v38 + v71 + 16);
              v78 = *(v75 + v71);
              v77 = *(v75 + v71 + 16);
              v135.val[0] = *(v74 + v71);
              v137.val[0] = *(v74 + v71 + 16);
              v141.val[1] = vqtbl2q_s8(v135, v41);
              v141.val[0] = vqtbl1q_s8(v78, v42);
              v79 = vqtbl2q_s8(v141, v44);
              v141.val[1] = vqtbl2q_s8(v135, v48);
              v141.val[0] = vqtbl1q_s8(v78, v49);
              v143.val[1] = vqtbl2q_s8(v137, v41);
              v143.val[0] = vqtbl1q_s8(v77, v42);
              v141.val[0] = vqtbl2q_s8(v141, v44);
              v141.val[1] = vqtbl2q_s8(v143, v44);
              v143.val[1] = vqtbl2q_s8(v137, v48);
              v143.val[0] = vqtbl1q_s8(v77, v49);
              v144.val[1] = vqtbl2q_s8(v137, v46);
              v144.val[0] = vqtbl1q_s8(v77, v47);
              v143.val[0] = vqtbl2q_s8(v143, v44);
              v143.val[1] = vqtbl2q_s8(v144, v44);
              v137.val[1] = vqtbl2q_s8(v137, v43);
              v137.val[0] = vqtbl1q_s8(v77, v45);
              v144.val[1] = vqtbl2q_s8(v135, v46);
              v144.val[0] = vqtbl1q_s8(v78, v47);
              v137.val[0] = vqtbl2q_s8(v137, v44);
              v137.val[1] = vqtbl2q_s8(v144, v44);
              v135.val[1] = vqtbl2q_s8(v135, v43);
              v135.val[0] = vqtbl1q_s8(v78, v45);
              v135.val[0] = vqtbl2q_s8(v135, v44);
              v80 = vaddq_s32(vshlq_n_s64(v79, 0x20uLL), v79);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v143.val[0] = vaddq_s32(vshlq_n_s64(v143.val[0], 0x20uLL), v143.val[0]);
              v143.val[1] = vaddq_s32(vshlq_n_s64(v143.val[1], 0x20uLL), v143.val[1]);
              v137.val[0] = vaddq_s32(vshlq_n_s64(v137.val[0], 0x20uLL), v137.val[0]);
              v137.val[1] = vaddq_s32(vshlq_n_s64(v137.val[1], 0x20uLL), v137.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v135.val[1] = vdupq_lane_s32(*v135.val[0].i8, 1);
              v81 = vdupq_lane_s32(*v137.val[1].i8, 1);
              v82 = vdupq_lane_s32(*v137.val[0].i8, 1);
              v144.val[0] = vdupq_lane_s32(*v143.val[1].i8, 1);
              v144.val[1] = vdupq_lane_s32(*v143.val[0].i8, 1);
              v83 = vdupq_lane_s32(*v141.val[1].i8, 1);
              v84 = vdupq_lane_s32(*v80.i8, 1);
              v85 = vdupq_lane_s32(*v141.val[0].i8, 1);
              v84.i64[0] = 0;
              v83.i64[0] = 0;
              v85.i64[0] = 0;
              v144.val[1].i64[0] = 0;
              v144.val[0].i64[0] = 0;
              v82.i64[0] = 0;
              v81.i64[0] = 0;
              v135.val[1].i64[0] = 0;
              v135.val[0] = vaddq_s32(v135.val[1], v135.val[0]);
              v135.val[1] = vaddq_s32(v81, v137.val[1]);
              v137.val[0] = vaddq_s32(v82, v137.val[0]);
              v86 = vaddq_s32(v144.val[1], v143.val[0]);
              v87 = vaddq_s32(v83, v141.val[1]);
              v88 = vaddq_s32(v84, v80);
              v141.val[0] = vaddq_s32(v85, v141.val[0]);
              v137.val[0] = vaddq_s32(vdupq_laneq_s32(v87, 3), v137.val[0]);
              v135.val[0] = vaddq_s32(vdupq_laneq_s32(v88, 3), v135.val[0]);
              v141.val[1] = vdupq_laneq_s32(v135.val[0], 3);
              v135.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v141.val[0], 3), v135.val[1]), v141.val[1]);
              v143.val[0] = vdupq_laneq_s32(v137.val[0], 3);
              v137.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v86, 3), vaddq_s32(v144.val[0], v143.val[1])), v143.val[0]);
              v89 = vaddq_s32(v86, v143.val[0]);
              v143.val[0] = vdupq_laneq_s32(v135.val[1], 3);
              v90 = vdupq_lane_s32(*v40.i8, 0);
              v28 = vaddq_s32(vaddq_s32(v137.val[1], v90), v143.val[0]);
              v144.val[0] = vaddq_s32(v135.val[1], v90);
              v139.val[1] = vaddq_s32(v88, v90);
              v91 = vaddq_s32(vaddq_s32(v87, v90), v143.val[0]);
              v92 = v76 + 16;
              v93 = v76 + 24;
              v94 = v76 + 32;
              v95 = v76 + 40;
              v96 = v76 + 48;
              v139.val[0] = v116;
              v97 = v76;
              vst2q_f32(v97, v139);
              result = v97 + 8;
              v139.val[1] = vaddq_s32(vaddq_s32(v141.val[0], v90), v141.val[1]);
              v139.val[0] = v116;
              vst2q_f32(v92, v139);
              v143.val[1] = v116;
              vst2q_f32(v93, *(&v143 + 16));
              v137.val[0] = vaddq_s32(vaddq_s32(v137.val[0], v90), v143.val[0]);
              v144.val[1] = v116;
              vst2q_f32(v94, *(&v144 + 16));
              v135.val[1] = v116;
              vst2q_f32(v95, *(&v135 + 16));
              v37 = vaddq_s32(vaddq_s32(v89, v90), v143.val[0]);
              v36 = v116;
              vst2q_f32(v96, *v36.i8);
              v35 = vaddq_s32(v135.val[0], v90);
              v40 = v116;
              vst2q_f32(result, *(&v35 - 1));
              v72 = v76 + 64;
              v98 = v76 + 56;
              vst2q_f32(v98, *(&v28 - 1));
              v40.i32[0] = v28.i32[3];
              v73 = v71 + 32;
              v99 = v71 + 64;
              v71 += 32;
              v76 = v72;
            }

            while (v99 <= v33);
          }

          else
          {
            v72 = a10;
            v73 = v71;
          }

          if (v73 + 8 <= v33)
          {
            v102 = v38 + 2 * v120;
            v103 = v120 + v38;
            do
            {
              v35.i64[0] = *(v38 + v73);
              v36.i64[0] = *(v103 + v73);
              v37.i64[0] = *(v102 + v73);
              v104 = vzip1q_s8(0, v36);
              v105 = vzip1q_s8(v37, v35);
              v106 = vzip1q_s8(v104, v105);
              v107 = vzip2q_s8(v104, v105);
              v108 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
              v109 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
              v110 = vdupq_lane_s32(*v109.i8, 1);
              v111 = vdupq_lane_s32(*v108.i8, 1);
              v111.i64[0] = 0;
              v110.i64[0] = 0;
              v37 = vaddq_s32(v111, v108);
              v112 = vdupq_lane_s32(*v40.i8, 0);
              v138.val[1] = vaddq_s32(v37, v112);
              v40 = vaddq_s32(v110, vaddq_s32(v109, v112));
              v36 = vaddq_s32(v40, vdupq_laneq_s32(v37, 3));
              v101 = v72 + 16;
              v138.val[0] = v116;
              vst2q_f32(v72, v138);
              v113 = v72 + 8;
              v40.i32[0] = v36.i32[3];
              v35 = v116;
              vst2q_f32(v113, *v35.i8);
              v100 = v73 + 8;
              v114 = v73 + 16;
              v73 += 8;
              v72 = v101;
            }

            while (v114 <= v33);
          }

          else
          {
            v100 = v73;
            v101 = v72;
          }

          if (v100 < v33)
          {
            do
            {
              LODWORD(v115) = v118.i32[0];
              HIDWORD(v115) = ((*(v119[0] + v100) << 24) | (*(v119[0] + v100 + v120) << 16) | (*(v119[0] + v100 + 2 * v120) << 8)) + v40.i32[0];
              *v101 = v115;
              v101 += 2;
              ++v100;
            }

            while (v33 != v100);
          }
        }

        a10 = (a10 + a11);
        v29 += a9;
      }

      while (v29 + a3[7].u32[0] < v23);
    }
  }

  return result;
}

float *CompressedInterleave2<unsigned int,(StreamType)1,(StreamType)1>(float *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  if (a7)
  {
    v168 = v19;
    v169 = v18;
    v170 = v17;
    v171 = v16;
    v172 = v15;
    v173 = v14;
    v174 = v13;
    v175 = v12;
    v176 = v10;
    v177 = v11;
    v25 = result;
    v26 = *(a2 + 56);
    v27 = HIDWORD(v26);
    v167 = 4;
    v28 = *(a4 + 8);
    v29 = a3[3];
    v165 = v29.i32[0];
    v163 = v28;
    v161[1] = result;
    v164 = a3[6].i32[1] + v29.i32[1] * HIDWORD(v26);
    v30 = a3[7].u32[1];
    v162 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v30) + 16), v28[6], v29), v28[6]).u32[0];
    v166 = v30;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v161);
    v160 = 4;
    v31 = *(a5 + 8);
    v32 = a3[3];
    v158 = v32.i32[0];
    v156 = v31;
    v154[1] = v25;
    v157 = a3[6].i32[1] + v32.i32[1] * HIDWORD(v26);
    v33 = a3[7].u32[1];
    v155 = vmin_u32(vmls_s32(*(*(*&v31[5] + 8 * v33) + 16), v31[6], v32), v31[6]).u32[0];
    v159 = v33;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v154);
    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < HIDWORD(v26))
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v38 = v37 + a7;
      do
      {
        v164 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v161);
        v157 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v154);
        v47 = v161[0];
        if (v161[0])
        {
          v48 = v154[0];
          if (v154[0])
          {
            if (v37 >= 0x20)
            {
              v57 = v162 + v161[0];
              v58 = v162 + v161[0] + 2 * v162;
              v59 = v161[0] + 2 * v162;
              v60 = v155 + v154[0];
              v61 = v155 + v154[0] + 2 * v155;
              v62 = v154[0] + 2 * v155;
              v50 = 0uLL;
              v63 = 32;
              v51 = xmmword_296B8F030;
              v53 = xmmword_296B8F070;
              v41 = xmmword_296B8F040;
              v55 = xmmword_296B8F050;
              v52 = xmmword_296B8F010;
              v54 = xmmword_296B8F080;
              v56 = xmmword_296B8F060;
              do
              {
                v152.val[0] = v50;
                result = (v57 + v63);
                v191.val[1] = *(v161[0] + v63 - 32);
                v201.val[1] = *(v161[0] + v63 - 16);
                v193.val[1] = *(v57 + v63 - 32);
                v199.val[1] = *(v57 + v63 - 16);
                v191.val[0] = *(v59 + v63 - 32);
                v201.val[0] = *(v59 + v63 - 16);
                v193.val[0] = *(v58 + v63 - 32);
                v199.val[0] = *(v58 + v63 - 16);
                v151.val[0] = vqtbl2q_s8(v193, v41);
                v151.val[1] = vqtbl2q_s8(v191, v51);
                v150.val[0] = vqtbl2q_s8(v193, v52);
                v150.val[1] = vqtbl2q_s8(v191, xmmword_296B8F000);
                v182.val[1] = vqtbl2q_s8(v191, v53);
                v182.val[0] = vqtbl2q_s8(v193, v54);
                v191.val[1] = vqtbl2q_s8(v191, v55);
                v191.val[0] = vqtbl2q_s8(v193, v56);
                v193.val[1] = vqtbl2q_s8(v201, xmmword_296B8F000);
                v193.val[0] = vqtbl2q_s8(v199, v52);
                v195.val[1] = vqtbl2q_s8(v201, v55);
                v195.val[0] = vqtbl2q_s8(v199, v56);
                v197.val[1] = vqtbl2q_s8(v201, v53);
                v197.val[0] = vqtbl2q_s8(v199, v54);
                v201.val[1] = vqtbl2q_s8(v201, v51);
                v203.val[1] = *(v154[0] + v63 - 32);
                v205.val[1] = *(v154[0] + v63 - 16);
                v187.val[1] = *(v60 + v63 - 32);
                v189.val[1] = *(v60 + v63 - 16);
                v201.val[0] = vqtbl2q_s8(v199, xmmword_296B8F040);
                v203.val[0] = *(v62 + v63 - 32);
                v205.val[0] = *(v62 + v63 - 16);
                v187.val[0] = *(v61 + v63 - 32);
                v189.val[0] = *(v61 + v63 - 16);
                v199.val[1] = vqtbl2q_s8(v203, xmmword_296B8F030);
                v199.val[0] = vqtbl2q_s8(v187, xmmword_296B8F040);
                v185.val[1] = vqtbl2q_s8(v203, xmmword_296B8F000);
                v185.val[0] = vqtbl2q_s8(v187, xmmword_296B8F010);
                v183.val[1] = vqtbl2q_s8(v203, xmmword_296B8F070);
                v183.val[0] = vqtbl2q_s8(v187, xmmword_296B8F080);
                v203.val[1] = vqtbl2q_s8(v203, xmmword_296B8F050);
                v203.val[0] = vqtbl2q_s8(v187, xmmword_296B8F060);
                v187.val[1] = vqtbl2q_s8(v205, xmmword_296B8F000);
                v187.val[0] = vqtbl2q_s8(v189, xmmword_296B8F010);
                v180.val[1] = vqtbl2q_s8(v205, xmmword_296B8F050);
                v180.val[0] = vqtbl2q_s8(v189, xmmword_296B8F060);
                v178.val[1] = vqtbl2q_s8(v205, xmmword_296B8F070);
                v178.val[0] = vqtbl2q_s8(v189, xmmword_296B8F080);
                v205.val[1] = vqtbl2q_s8(v205, xmmword_296B8F030);
                v205.val[0] = vqtbl2q_s8(v189, xmmword_296B8F040);
                v64 = vqtbl2q_s8(v151, xmmword_296B8F020);
                v189.val[0] = vqtbl2q_s8(v150, xmmword_296B8F020);
                v182.val[0] = vqtbl2q_s8(v182, xmmword_296B8F020);
                v182.val[1] = vqtbl2q_s8(v191, xmmword_296B8F020);
                v191.val[0] = vqtbl2q_s8(v193, xmmword_296B8F020);
                v195.val[0] = vqtbl2q_s8(v195, xmmword_296B8F020);
                v195.val[1] = vqtbl2q_s8(v197, xmmword_296B8F020);
                v197.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v191.val[1] = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v193.val[0] = vaddq_s32(vshlq_n_s64(v189.val[0], 0x20uLL), v189.val[0]);
                v193.val[1] = vaddq_s32(vshlq_n_s64(v182.val[0], 0x20uLL), v182.val[0]);
                v65 = vaddq_s32(vshlq_n_s64(v182.val[1], 0x20uLL), v182.val[1]);
                v182.val[0] = vaddq_s32(vshlq_n_s64(v191.val[0], 0x20uLL), v191.val[0]);
                v182.val[1] = vaddq_s32(vshlq_n_s64(v195.val[0], 0x20uLL), v195.val[0]);
                v191.val[0] = vaddq_s32(vshlq_n_s64(v195.val[1], 0x20uLL), v195.val[1]);
                v195.val[0] = vqtbl2q_s8(v199, xmmword_296B8F020);
                v195.val[1] = vqtbl2q_s8(v185, xmmword_296B8F020);
                v197.val[0] = vaddq_s32(vshlq_n_s64(v197.val[0], 0x20uLL), v197.val[0]);
                v197.val[1] = vqtbl2q_s8(v183, xmmword_296B8F020);
                v199.val[0] = vqtbl2q_s8(v203, xmmword_296B8F020);
                v199.val[1] = vqtbl2q_s8(v187, xmmword_296B8F020);
                v56 = xmmword_296B8F060;
                v55 = xmmword_296B8F050;
                v54 = xmmword_296B8F080;
                v53 = xmmword_296B8F070;
                v183.val[0] = vaddq_s32(vdupq_lane_s32(*v191.val[0].i8, 1), v191.val[0]);
                v180.val[0] = vqtbl2q_s8(v180, xmmword_296B8F020);
                v178.val[0] = vqtbl2q_s8(v178, xmmword_296B8F020);
                v178.val[1] = vqtbl2q_s8(v205, xmmword_296B8F020);
                v52 = xmmword_296B8F010;
                v51 = xmmword_296B8F030;
                v42 = vaddq_s32(vshlq_n_s64(v195.val[0], 0x20uLL), v195.val[0]);
                v195.val[0] = vaddq_s32(vshlq_n_s64(v195.val[1], 0x20uLL), v195.val[1]);
                v195.val[1] = vaddq_s32(vshlq_n_s64(v197.val[1], 0x20uLL), v197.val[1]);
                v197.val[1] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v180.val[0] = vaddq_s32(vshlq_n_s64(v180.val[0], 0x20uLL), v180.val[0]);
                v46 = vaddq_s32(vdupq_lane_s32(*v197.val[0].i8, 1), v197.val[0]);
                v178.val[0] = vaddq_s32(vshlq_n_s64(v178.val[0], 0x20uLL), v178.val[0]);
                v178.val[1] = vaddq_s32(vshlq_n_s64(v178.val[1], 0x20uLL), v178.val[1]);
                v178.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v178.val[0].i8, 1), v178.val[0]), 3);
                v39 = vextq_s8(v178.val[0], v178.val[0], 8uLL);
                *v39.i8 = vadd_s32(*v39.i8, vadd_s32(vdup_lane_s32(*v180.val[0].i8, 1), *&vextq_s8(v180.val[0], v180.val[0], 8uLL)));
                v178.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v178.val[1].i8, 1), v178.val[1]), 3);
                *v180.val[0].i8 = vadd_s32(vadd_s32(vadd_s32(*v195.val[1].i8, *&vextq_s8(v195.val[1], v195.val[1], 8uLL)), vadd_s32(*v197.val[1].i8, *&vextq_s8(v197.val[1], v197.val[1], 8uLL))), vadd_s32(vadd_s32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), vadd_s32(*v195.val[0].i8, *&vextq_s8(v195.val[0], v195.val[0], 8uLL))));
                v45 = vdupq_laneq_s32(v183.val[0], 3);
                *v42.i8 = vadd_s32(*&vextq_s8(v45, v45, 8uLL), vadd_s32(vdup_lane_s32(*v182.val[1].i8, 1), *&vextq_s8(v182.val[1], v182.val[1], 8uLL)));
                v182.val[1] = vdupq_laneq_s32(v46, 3);
                *v182.val[0].i8 = vadd_s32(*&vextq_s8(v182.val[1], v182.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v182.val[0].i8, 1), *&vextq_s8(v182.val[0], v182.val[0], 8uLL)));
                v50.i64[1] = v152.val[0].i64[1];
                *v39.i8 = vadd_s32(vadd_s32(*&vextq_s8(v178.val[1], v178.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v199.val[0].i8, 1), *&vextq_s8(v199.val[0], v199.val[0], 8uLL))), *v39.i8);
                v40 = vextq_s8(v65, v65, 8uLL);
                *v40.i8 = vadd_s32(vadd_s32(*v193.val[1].i8, *&vextq_s8(v193.val[1], v193.val[1], 8uLL)), vadd_s32(*v65.i8, *v40.i8));
                *v42.i8 = vadd_s32(*v182.val[0].i8, *v42.i8);
                v43 = vextq_s8(v193.val[0], v193.val[0], 8uLL);
                v44 = vextq_s8(v191.val[1], v191.val[1], 8uLL);
                *v39.i8 = vadd_s32(*v39.i8, *v180.val[0].i8);
                v41 = xmmword_296B8F040;
                *v40.i8 = vadd_s32(*v42.i8, vadd_s32(*v40.i8, vadd_s32(vadd_s32(*v191.val[1].i8, *v44.i8), vadd_s32(*v193.val[0].i8, *v43.i8))));
                *v39.i8 = vzip2_s32(*v40.i8, *v39.i8);
                *v50.i8 = vadd_s32(*v39.i8, *v152.val[0].i8);
                v63 += 32;
              }

              while (v63 <= v37);
              v49 = v37 & 0xFFFFFFE0;
            }

            else
            {
              v49 = 0;
              v50.i64[0] = 0;
              v52 = xmmword_296B8F010;
              v51 = xmmword_296B8F030;
              v54 = xmmword_296B8F080;
              v53 = xmmword_296B8F070;
              v56 = xmmword_296B8F060;
              v55 = xmmword_296B8F050;
            }

            if ((v49 | 8) <= v37)
            {
              do
              {
                v39.i64[0] = *(v161[0] + v49);
                v40.i64[0] = *(v162 + v161[0] + v49);
                v41.i64[0] = *(v161[0] + 2 * v162 + v49);
                v42.i64[0] = *(v162 + v161[0] + 2 * v162 + v49);
                v67 = vzip1q_s8(v42, v40);
                v68 = vzip1q_s8(v41, v39);
                v69 = vzip1q_s8(v67, v68);
                v70 = vzip2q_s8(v67, v68);
                v71 = vshlq_n_s64(v70, 0x20uLL);
                v72 = vshlq_n_s64(v69, 0x20uLL);
                v41 = vaddq_s32(v72, v69);
                v39 = vaddq_s32(v71, v70);
                v71.i64[0] = *(v154[0] + v49);
                v72.i64[0] = *(v155 + v154[0] + v49);
                v43.i64[0] = *(v154[0] + 2 * v155 + v49);
                v44.i64[0] = *(v155 + v154[0] + 2 * v155 + v49);
                v73 = vzip1q_s8(v44, v72);
                v74 = vzip1q_s8(v43, v71);
                v75 = vzip1q_s8(v73, v74);
                v76 = vzip2q_s8(v73, v74);
                v44 = vshlq_n_s64(v75, 0x20uLL);
                v43 = vaddq_s32(v44, v75);
                v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
                *v39.i8 = vadd_s32(vzip2_s32(vadd_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), vadd_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL))), *v50.i8);
                v40 = vextq_s8(v43, v43, 8uLL);
                v42 = vextq_s8(v41, v41, 8uLL);
                *v40.i8 = vzip2_s32(vadd_s32(*v41.i8, *v42.i8), vadd_s32(*v43.i8, *v40.i8));
                *v50.i8 = vadd_s32(*v39.i8, *v40.i8);
                v66 = v49 + 8;
                result = (v49 + 16);
                v49 += 8;
              }

              while (result <= v37);
            }

            else
            {
              v66 = v49;
            }

            if (v66 < v37)
            {
              do
              {
                result = (v154[0] + v66);
                v39.i8[0] = *(v162 + v161[0] + v66);
                v39.i8[4] = *(v154[0] + v66);
                v40.i8[0] = *(v161[0] + v66);
                v40.i8[4] = *(v155 + v154[0] + v66);
                v78 = vshl_u32(vand_s8(*v40.i8, 0xFF000000FFLL), 0x1000000018);
                v79 = vorr_s8(v78, vshl_u32(vand_s8(*v39.i8, 0xFF000000FFLL), 0x1800000010));
                v78.i8[0] = *(v161[0] + 2 * v162 + v66);
                v78.i8[4] = *(v154[0] + 2 * v155 + v66);
                v80 = vand_s8(v78, 0xFF000000FFLL);
                *v40.i8 = vorr_s8(vshl_n_s32(v80, 8uLL), v80);
                *v39.i8 = vorr_s8(v79, *v40.i8);
                *v50.i8 = vadd_s32(*v39.i8, *v50.i8);
                ++v66;
              }

              while (v37 != v66);
              v66 = v37;
            }

            if (v66 + 32 <= v38)
            {
              v84 = v162 + v161[0];
              v85 = v162 + v161[0] + 2 * v162;
              v86 = v161[0] + 2 * v162;
              v87 = v155 + v154[0];
              v88 = v155 + v154[0] + 2 * v155;
              v89 = v154[0] + 2 * v155;
              v83 = a9;
              v90 = xmmword_296B8F020;
              do
              {
                v194.val[1] = *(v47 + v66);
                v192.val[1] = *(v47 + v66 + 16);
                v202.val[1] = *(v84 + v66);
                v198.val[1] = *(v84 + v66 + 16);
                v194.val[0] = *(v86 + v66);
                v192.val[0] = *(v86 + v66 + 16);
                v204.val[1] = vqtbl2q_s8(v194, v53);
                v202.val[0] = *(v85 + v66);
                v198.val[0] = *(v85 + v66 + 16);
                v204.val[0] = vqtbl2q_s8(v202, v54);
                v196.val[1] = vqtbl2q_s8(v194, v51);
                v196.val[0] = vqtbl2q_s8(v202, xmmword_296B8F040);
                v153.val[0] = vqtbl2q_s8(v198, v54);
                v153.val[1] = vqtbl2q_s8(v192, v53);
                v181.val[1] = vqtbl2q_s8(v192, v51);
                v181.val[0] = vqtbl2q_s8(v198, xmmword_296B8F040);
                v190.val[1] = vqtbl2q_s8(v192, xmmword_296B8F000);
                v190.val[0] = vqtbl2q_s8(v198, v52);
                v192.val[1] = vqtbl2q_s8(v192, v55);
                v192.val[0] = vqtbl2q_s8(v198, v56);
                v200.val[1] = vqtbl2q_s8(v194, xmmword_296B8F000);
                v200.val[0] = vqtbl2q_s8(v202, v52);
                v198.val[1] = vqtbl2q_s8(v194, v55);
                v91 = vqtbl2q_s8(v204, v90);
                v198.val[0] = vqtbl2q_s8(v202, v56);
                v202.val[1] = *(v48 + v66);
                v194.val[1] = *(v48 + v66 + 16);
                v92 = vqtbl2q_s8(v196, v90);
                v202.val[0] = *(v89 + v66);
                v204.val[1] = vqtbl2q_s8(v202, v53);
                v206.val[1] = *(v87 + v66);
                v196.val[1] = *(v87 + v66 + 16);
                v200.val[0] = vqtbl2q_s8(v200, v90);
                v206.val[0] = *(v88 + v66);
                v204.val[0] = vqtbl2q_s8(v206, v54);
                v184.val[1] = vqtbl2q_s8(v202, xmmword_296B8F030);
                v184.val[0] = vqtbl2q_s8(v206, xmmword_296B8F040);
                v198.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v186.val[1] = vqtbl2q_s8(v202, xmmword_296B8F000);
                v186.val[0] = vqtbl2q_s8(v206, xmmword_296B8F010);
                v188.val[1] = vqtbl2q_s8(v202, xmmword_296B8F050);
                v188.val[0] = vqtbl2q_s8(v206, xmmword_296B8F060);
                v202.val[1] = vaddq_s32(vshlq_n_s64(v91, 0x20uLL), v91);
                v93 = vaddq_s32(vshlq_n_s64(v92, 0x20uLL), v92);
                v94 = vaddq_s32(vshlq_n_s64(v200.val[0], 0x20uLL), v200.val[0]);
                v198.val[0] = vaddq_s32(vshlq_n_s64(v198.val[0], 0x20uLL), v198.val[0]);
                v198.val[1] = vdupq_lane_s32(*v198.val[0].i8, 1);
                v200.val[0] = vdupq_lane_s32(*v94.i8, 1);
                v198.val[1].i64[0] = 0;
                v198.val[1] = vaddq_s32(v198.val[1], v198.val[0]);
                v200.val[0].i64[0] = 0;
                v200.val[0] = vaddq_s32(v200.val[0], v94);
                v194.val[0] = *(v89 + v66 + 16);
                v196.val[0] = *(v88 + v66 + 16);
                v204.val[0] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v95 = vdupq_lane_s32(*v93.i8, 1);
                v200.val[1] = vqtbl2q_s8(v184, xmmword_296B8F020);
                v204.val[1] = vdupq_lane_s32(*v202.val[1].i8, 1);
                v204.val[1].i64[0] = 0;
                v95.i64[0] = 0;
                v198.val[0] = vaddq_s32(v95, v93);
                v45 = vdupq_lane_s32(*v50.i8, 0);
                v202.val[0] = vqtbl2q_s8(v186, xmmword_296B8F020);
                v54 = xmmword_296B8F080;
                v53 = xmmword_296B8F070;
                v96 = vaddq_s32(vshlq_n_s64(v204.val[0], 0x20uLL), v204.val[0]);
                v202.val[1] = vaddq_s32(v204.val[1], v202.val[1]);
                v206.val[0] = vdupq_lane_s32(*v96.i8, 1);
                v206.val[0].i64[0] = 0;
                v204.val[1] = vqtbl2q_s8(v188, xmmword_296B8F020);
                v56 = xmmword_296B8F060;
                v55 = xmmword_296B8F050;
                v206.val[0] = vaddq_s32(v206.val[0], v96);
                v97 = vdupq_lane_s32(*v50.i8, 1);
                v184.val[0] = vaddq_s32(v202.val[1], v45);
                v184.val[1] = vaddq_s32(v206.val[0], v97);
                v98 = v83;
                vst2q_f32(v98, v184);
                v98 += 8;
                v202.val[0] = vaddq_s32(vshlq_n_s64(v202.val[0], 0x20uLL), v202.val[0]);
                v204.val[1] = vaddq_s32(vshlq_n_s64(v204.val[1], 0x20uLL), v204.val[1]);
                v204.val[0] = vdupq_lane_s32(*v204.val[1].i8, 1);
                v206.val[1] = vdupq_lane_s32(*v202.val[0].i8, 1);
                v204.val[0].i64[0] = 0;
                v200.val[1] = vaddq_s32(vshlq_n_s64(v200.val[1], 0x20uLL), v200.val[1]);
                v204.val[0] = vaddq_s32(v204.val[0], v204.val[1]);
                v204.val[1] = vdupq_lane_s32(*v200.val[1].i8, 1);
                v204.val[1].i64[0] = 0;
                v206.val[1].i64[0] = 0;
                v200.val[1] = vaddq_s32(v204.val[1], v200.val[1]);
                v198.val[1] = vaddq_s32(vdupq_laneq_s32(v202.val[1], 3), v198.val[1]);
                v202.val[1] = vdupq_laneq_s32(v206.val[0], 3);
                v206.val[0] = vdupq_laneq_s32(v198.val[1], 3);
                v202.val[1] = vaddq_s32(v202.val[1], v204.val[0]);
                v204.val[0] = vdupq_laneq_s32(v202.val[1], 3);
                v184.val[0] = vaddq_s32(v198.val[1], v45);
                v184.val[1] = vaddq_s32(v202.val[1], v97);
                vst2q_f32(v98, v184);
                v200.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v198.val[0], 3), v200.val[0]), v206.val[0]);
                v184.val[1] = vqtbl2q_s8(v194, xmmword_296B8F070);
                v198.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v200.val[1], 3), vaddq_s32(v206.val[1], v202.val[0])), v204.val[0]);
                v202.val[0] = vaddq_s32(vaddq_s32(v198.val[0], v45), v206.val[0]);
                v52 = xmmword_296B8F010;
                v51 = xmmword_296B8F030;
                v202.val[1] = vaddq_s32(vaddq_s32(v200.val[1], v97), v204.val[0]);
                v204.val[0] = vaddq_s32(v200.val[0], v45);
                v99 = v83 + 16;
                vst2q_f32(v99, v202);
                v204.val[1] = vaddq_s32(v198.val[1], v97);
                v100 = v83 + 24;
                vst2q_f32(v100, v204);
                v184.val[0] = vqtbl2q_s8(v196, xmmword_296B8F080);
                v202.val[0] = vqtbl2q_s8(v194, xmmword_296B8F030);
                v200.val[1] = vqtbl2q_s8(v196, xmmword_296B8F040);
                v204.val[0] = vqtbl2q_s8(v194, xmmword_296B8F000);
                v202.val[1] = vqtbl2q_s8(v196, xmmword_296B8F010);
                v194.val[1] = vqtbl2q_s8(v194, xmmword_296B8F050);
                v194.val[0] = vqtbl2q_s8(v196, xmmword_296B8F060);
                v101 = vqtbl2q_s8(v153, xmmword_296B8F020);
                v102 = vqtbl2q_s8(v181, xmmword_296B8F020);
                v181.val[0] = vqtbl2q_s8(v190, xmmword_296B8F020);
                v181.val[1] = vqtbl2q_s8(v192, xmmword_296B8F020);
                v103 = vaddq_s32(vshlq_n_s64(v101, 0x20uLL), v101);
                v104 = vaddq_s32(vshlq_n_s64(v102, 0x20uLL), v102);
                v181.val[0] = vaddq_s32(vshlq_n_s64(v181.val[0], 0x20uLL), v181.val[0]);
                v181.val[1] = vaddq_s32(vshlq_n_s64(v181.val[1], 0x20uLL), v181.val[1]);
                v105 = vdupq_lane_s32(*v181.val[1].i8, 1);
                v105.i64[0] = 0;
                v181.val[1] = vaddq_s32(v105, v181.val[1]);
                v106 = vqtbl2q_s8(v184, xmmword_296B8F020);
                v90 = xmmword_296B8F020;
                v107 = vdupq_lane_s32(*v181.val[0].i8, 1);
                v107.i64[0] = 0;
                v181.val[0] = vaddq_s32(v107, v181.val[0]);
                v108 = vqtbl2q_s8(v202, xmmword_296B8F020);
                v192.val[0] = vdupq_lane_s32(*v104.i8, 1);
                v192.val[0].i64[0] = 0;
                v109 = vaddq_s32(v192.val[0], v104);
                v192.val[0] = vqtbl2q_s8(*(&v202 + 16), xmmword_296B8F020);
                v192.val[1] = vdupq_lane_s32(*v103.i8, 1);
                v192.val[1].i64[0] = 0;
                v110 = vaddq_s32(v192.val[1], v103);
                v194.val[0] = vqtbl2q_s8(v194, xmmword_296B8F020);
                v111 = vaddq_s32(vshlq_n_s64(v106, 0x20uLL), v106);
                v112 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                v181.val[1] = vaddq_s32(vdupq_laneq_s32(v110, 3), v181.val[1]);
                v194.val[0] = vaddq_s32(vshlq_n_s64(v194.val[0], 0x20uLL), v194.val[0]);
                v194.val[1] = vdupq_lane_s32(*v194.val[0].i8, 1);
                v194.val[1].i64[0] = 0;
                v46 = vaddq_s32(vshlq_n_s64(v192.val[0], 0x20uLL), v192.val[0]);
                v192.val[1] = vaddq_s32(v194.val[1], v194.val[0]);
                v194.val[0] = vdupq_laneq_s32(v181.val[1], 3);
                v181.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v109, 3), v181.val[0]), v194.val[0]);
                v194.val[0] = vaddq_s32(v109, v194.val[0]);
                v113 = vdupq_lane_s32(*v111.i8, 1);
                v113.i64[0] = 0;
                v194.val[1] = vdupq_laneq_s32(v200.val[0], 3);
                v114 = vaddq_s32(v113, v111);
                v115 = vaddq_s32(vdupq_laneq_s32(v114, 3), v192.val[1]);
                v192.val[1] = vdupq_laneq_s32(v198.val[1], 3);
                v196.val[0] = vaddq_s32(vaddq_s32(v110, v45), v194.val[1]);
                v196.val[1] = vaddq_s32(vaddq_s32(v114, v97), v192.val[1]);
                v116 = v83 + 32;
                vst2q_f32(v116, v196);
                v196.val[0] = vaddq_s32(vaddq_s32(v181.val[1], v45), v194.val[1]);
                v196.val[1] = vaddq_s32(vaddq_s32(v115, v97), v192.val[1]);
                v117 = v83 + 40;
                vst2q_f32(v117, v196);
                v118 = vdupq_lane_s32(*v46.i8, 1);
                v119 = vdupq_lane_s32(*v112.i8, 1);
                v118.i64[0] = 0;
                v119.i64[0] = 0;
                v181.val[1] = vaddq_s32(v119, v112);
                v44 = vdupq_laneq_s32(v115, 3);
                v50 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v181.val[1], 3), vaddq_s32(v118, v46)), v44);
                v40 = vaddq_s32(vaddq_s32(v181.val[0], v45), v194.val[1]);
                v41 = vaddq_s32(vaddq_s32(v50, v97), v192.val[1]);
                v181.val[0] = vaddq_s32(vaddq_s32(v194.val[0], v45), v194.val[1]);
                v43 = vaddq_s32(vaddq_s32(vaddq_s32(v181.val[1], v44), v97), v192.val[1]);
                v120 = v83 + 48;
                vst2q_f32(v120, *(&v43 - 1));
                v39 = vextq_s8(v41, v41, 8uLL);
                v42 = vextq_s8(v40, v40, 8uLL);
                *v50.i8 = vzip2_s32(*v42.i8, *v39.i8);
                result = v83 + 56;
                v83 += 64;
                v121 = v66 + 64;
                v66 += 32;
                vst2q_f32(result, *v40.i8);
              }

              while (v121 <= v38);
              v82 = v41.u32[3];
              v81 = v40.u32[3];
            }

            else
            {
              v81 = v50.i32[0];
              v82 = v50.u32[1];
              v83 = a9;
            }

            if (v66 + 8 <= v38)
            {
              v124 = v162 + v47;
              v125 = v162 + v47 + 2 * v162;
              v126 = v47 + 2 * v162;
              v127 = v155 + v48;
              result = (v155 + v48 + 2 * v155);
              v128 = v48 + 2 * v155;
              do
              {
                v39.i64[0] = *(v47 + v66);
                v40.i64[0] = *(v124 + v66);
                v41.i64[0] = *(v126 + v66);
                v42.i64[0] = *(v125 + v66);
                v129 = vzip1q_s8(v42, v40);
                v130 = vzip1q_s8(v41, v39);
                v131 = vzip1q_s8(v129, v130);
                v132 = vzip2q_s8(v129, v130);
                v133 = vaddq_s32(vshlq_n_s64(v131, 0x20uLL), v131);
                v134 = vaddq_s32(vshlq_n_s64(v132, 0x20uLL), v132);
                v135 = vdupq_n_s32(v81);
                v136 = vdupq_lane_s32(*v134.i8, 1);
                v43.i64[0] = *(v48 + v66);
                v44.i64[0] = *(v127 + v66);
                v137 = vdupq_lane_s32(*v133.i8, 1);
                v45.i64[0] = *(v128 + v66);
                v46.i64[0] = *(result + v66);
                v137.i64[0] = 0;
                v138 = vzip1q_s8(v46, v44);
                v139 = vzip1q_s8(v45, v43);
                v140 = vzip1q_s8(v138, v139);
                v136.i64[0] = 0;
                v141 = vaddq_s32(vshlq_n_s64(v140, 0x20uLL), v140);
                v142 = vdupq_lane_s32(*v141.i8, 1);
                v142.i64[0] = 0;
                v143 = vaddq_s32(v137, v133);
                v144 = vaddq_s32(v142, v141);
                v45 = vdupq_n_s32(v82);
                v145 = vaddq_s32(v134, v135);
                v46 = vdupq_laneq_s32(v143, 3);
                v146 = vzip2q_s8(v138, v139);
                v43 = vaddq_s32(vshlq_n_s64(v146, 0x20uLL), v146);
                v44 = vdupq_lane_s32(*v43.i8, 1);
                v179.val[0] = vaddq_s32(v143, v135);
                v147 = vaddq_s32(v136, v145);
                v44.i64[0] = 0;
                v42 = vdupq_laneq_s32(v144, 3);
                v179.val[1] = vaddq_s32(v144, v45);
                v123 = v83 + 16;
                vst2q_f32(v83, v179);
                v148 = v83 + 8;
                v39 = vaddq_s32(v147, v46);
                v41 = vaddq_s32(v44, vaddq_s32(v43, v45));
                v40 = vaddq_s32(v41, v42);
                v81 = v39.u32[3];
                v82 = v40.u32[3];
                vst2q_f32(v148, *v39.i8);
                v122 = v66 + 8;
                v149 = v66 + 16;
                v66 += 8;
                v83 = v123;
              }

              while (v149 <= v38);
            }

            else
            {
              v122 = v66;
              v123 = v83;
            }

            if (v122 < v38)
            {
              do
              {
                v81 += (*(v161[0] + v122) << 24) | (*(v161[0] + v122 + v162) << 16) | (*(v161[0] + v122 + 2 * v162) << 8) | *(v161[0] + v122 + 2 * v162);
                v82 += (*(v154[0] + v122) << 24) | (*(v154[0] + v122 + v155) << 16) | (*(v154[0] + v122 + 2 * v155) << 8) | *(v154[0] + v122 + 2 * v155);
                *v123 = __PAIR64__(v82, v81);
                v123 += 2;
                ++v122;
              }

              while (v38 != v122);
            }
          }
        }

        a9 = (a9 + a10);
        v34 += a8;
      }

      while (v34 + a3[7].u32[0] < v27);
    }
  }

  return result;
}

unint64_t CompressedInterleave2<unsigned short,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, __int16 *a9, uint64_t a10)
{
  if (a7)
  {
    v169 = v10;
    v170 = v11;
    v17 = result;
    v18 = *(a2 + 56);
    v19 = HIDWORD(v18);
    v168 = 2;
    v20 = *(a4 + 8);
    v21 = a3[3];
    v166 = v21.i32[0];
    v164 = v20;
    v162[1] = result;
    v165 = a3[6].i32[1] + v21.i32[1] * HIDWORD(v18);
    v22 = a3[7].u32[1];
    v163 = vmin_u32(vmls_s32(*(*(*&v20[5] + 8 * v22) + 16), v20[6], v21), v20[6]).u32[0];
    v167 = v22;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v162);
    v161 = 2;
    v23 = *(a5 + 8);
    v24 = a3[3];
    v159 = v24.i32[0];
    v157 = v23;
    v155[1] = v17;
    v158 = a3[6].i32[1] + v24.i32[1] * HIDWORD(v18);
    v25 = a3[7].u32[1];
    v156 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v160 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v155);
    v26 = a3[6].u32[1];
    if (a3[7].u32[0] + v26 < HIDWORD(v18))
    {
      v28 = a3[3].i32[1] * *(a2 + 60);
      v29 = a3[5].u32[1];
      v30 = v29 + a7;
      do
      {
        v165 = v28 + v26;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v162);
        v158 = v28 + v26;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v155);
        v34.i64[0] = 0xFFFFFFFF00000000;
        v34.i64[1] = 0xFFFFFFFF00000000;
        v35 = v162[0];
        if (v162[0])
        {
          v36 = v155[0];
          if (v155[0])
          {
            if (v29 >= 0x20)
            {
              v40 = 0;
              v38 = 0;
              v37 = 0;
              v41 = v163 + v162[0];
              v42 = v156 + v155[0];
              do
              {
                v44 = *(v162[0] + v40);
                v43 = *(v162[0] + v40 + 16);
                v46 = *(v41 + v40);
                v45 = *(v41 + v40 + 16);
                v47 = vzip1q_s8(v46, v44);
                v48 = vzip2q_s8(v46, v44);
                v49 = vzip1q_s8(v45, v43);
                v50 = vzip2q_s8(v45, v43);
                v51 = vaddq_s16(vshlq_n_s32(v47, 0x10uLL), v47);
                v52 = vaddq_s16(vshlq_n_s32(v48, 0x10uLL), v48);
                v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
                v54 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
                v55 = vaddq_s16(vandq_s8(vqtbl1q_s8(v54, xmmword_296B8F090), v34), v54);
                v56 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v34), v53);
                v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v52, xmmword_296B8F090), v34), v52);
                v58 = vaddq_s16(vandq_s8(vqtbl1q_s8(v51, xmmword_296B8F090), v34), v51);
                v60 = *(v155[0] + v40);
                v59 = *(v155[0] + v40 + 16);
                v62 = *(v42 + v40);
                v61 = *(v42 + v40 + 16);
                v63 = vzip1q_s8(v62, v60);
                v64 = vzip2q_s8(v62, v60);
                v65 = vzip1q_s8(v61, v59);
                v66 = vzip2q_s8(v61, v59);
                v67 = vaddq_s16(vshlq_n_s32(v63, 0x10uLL), v63);
                v68 = vaddq_s16(vshlq_n_s32(v64, 0x10uLL), v64);
                v69 = vaddq_s16(vshlq_n_s32(v65, 0x10uLL), v65);
                v70 = vaddq_s16(vshlq_n_s32(v66, 0x10uLL), v66);
                v71 = vaddq_s16(vandq_s8(vqtbl1q_s8(v70, xmmword_296B8F090), v34), v70);
                v72 = vaddq_s16(vandq_s8(vqtbl1q_s8(v69, xmmword_296B8F090), v34), v69);
                v73 = vaddq_s16(vandq_s8(vqtbl1q_s8(v68, xmmword_296B8F090), v34), v68);
                v74 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v58.i8, 3), v58), vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57));
                v33 = vaddq_s16(vandq_s8(vqtbl1q_s8(v67, xmmword_296B8F090), v34), v67);
                v75 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v56, 3), v56), vaddq_s16(vdupq_lane_s16(*&v55, 3), v55)), v74).u16[7];
                v32 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v72.i8, 3), v72), vaddq_s16(vdupq_lane_s16(*v71.i8, 3), v71));
                v31 = vaddq_s16(v32, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v33.i8, 3), v33), vaddq_s16(vdupq_lane_s16(*v73.i8, 3), v73)));
                v38 += v75;
                v37 += v31.u16[7];
                v76 = v40 + 64;
                v40 += 32;
              }

              while (v76 <= v29);
              v39 = v29 & 0xFFFFFFE0;
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
            }

            if ((v39 | 8) <= v29)
            {
              do
              {
                v31.i64[0] = *(v162[0] + v39);
                v32.i64[0] = *(v163 + v162[0] + v39);
                v78 = vzip1q_s8(v32, v31);
                v79 = vaddq_s16(vshlq_n_s32(v78, 0x10uLL), v78);
                v80 = vextq_s8(v79, v79, 0xCuLL);
                v81 = vaddq_s16(v80, v79);
                v82 = v81.u16[3];
                v81.i64[0] = *(v155[0] + v39);
                v38 += v81.u16[7] + v82;
                v80.i64[0] = *(v156 + v155[0] + v39);
                v83 = vzip1q_s8(v80, v81);
                v84 = vaddq_s16(vshlq_n_s32(v83, 0x10uLL), v83);
                v32 = vextq_s8(v84, v84, 0xCuLL);
                v31 = vaddq_s16(v32, v84);
                v37 += v31.u16[7] + v31.u16[3];
                v77 = v39 + 8;
                v85 = v39 + 16;
                v39 += 8;
              }

              while (v85 <= v29);
            }

            else
            {
              v77 = v39;
            }

            v86 = v29 - v77;
            if (v29 > v77)
            {
              v87 = (v77 + v162[0] + v163);
              v88 = (v162[0] + v77);
              v89 = (v77 + v155[0] + v156);
              v90 = (v155[0] + v77);
              do
              {
                v92 = *v88++;
                v91 = v92;
                v93 = *v87++;
                v94 = v93 | (v91 << 8);
                v95 = *v90++;
                result = v95;
                v38 += v94;
                v96 = *v89++;
                v37 += v96 | (result << 8);
                --v86;
              }

              while (v86);
              v77 = v29;
            }

            if (v77 + 32 <= v30)
            {
              v99 = v163 + v162[0];
              v100 = v156 + v155[0];
              v101 = a9;
              do
              {
                v103 = *(v35 + v77);
                v102 = *(v35 + v77 + 16);
                v105 = *(v99 + v77);
                v104 = *(v99 + v77 + 16);
                v106 = vzip2q_s8(v105, v103);
                v107 = vzip2q_s8(v104, v102);
                v108 = vzip1q_s8(v104, v102);
                v109 = vzip1q_s8(v105, v103);
                v110 = vaddq_s16(vshlq_n_s32(v106, 0x10uLL), v106);
                v111 = vaddq_s16(vshlq_n_s32(v107, 0x10uLL), v107);
                v112 = vaddq_s16(vshlq_n_s32(v108, 0x10uLL), v108);
                v113 = vaddq_s16(vshlq_n_s32(v109, 0x10uLL), v109);
                v114 = vaddq_s16(vandq_s8(vqtbl1q_s8(v113, xmmword_296B8F090), v34), v113);
                v115 = vaddq_s16(vandq_s8(vqtbl1q_s8(v112, xmmword_296B8F090), v34), v112);
                v116 = vaddq_s16(vandq_s8(vqtbl1q_s8(v111, xmmword_296B8F090), v34), v111);
                v117 = vaddq_s16(vandq_s8(vqtbl1q_s8(v110, xmmword_296B8F090), v34), v110);
                v118 = vdupq_n_s16(v38);
                v120 = *(v36 + v77);
                v119 = *(v36 + v77 + 16);
                v122 = *(v100 + v77);
                v121 = *(v100 + v77 + 16);
                v123 = vzip2q_s8(v122, v120);
                v124 = vzip2q_s8(v121, v119);
                v125 = vzip1q_s8(v121, v119);
                v126 = vzip1q_s8(v122, v120);
                v127 = vaddq_s16(vshlq_n_s32(v123, 0x10uLL), v123);
                v128 = vaddq_s16(vshlq_n_s32(v124, 0x10uLL), v124);
                v129 = vaddq_s16(vshlq_n_s32(v125, 0x10uLL), v125);
                v130 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v115.i8, 3), xmmword_296B8F0A0), v115);
                v131 = vaddq_s16(vshlq_n_s32(v126, 0x10uLL), v126);
                v132 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v114.i8, 3), xmmword_296B8F0A0), v114);
                v133 = vaddq_s16(vandq_s8(vqtbl1q_s8(v129, xmmword_296B8F090), v34), v129);
                v134 = vaddq_s16(vandq_s8(vqtbl1q_s8(v127, xmmword_296B8F090), v34), v127);
                v135 = vaddq_s16(vandq_s8(vqtbl1q_s8(v128, xmmword_296B8F090), v34), v128);
                v136 = vaddq_s16(vandq_s8(vqtbl1q_s8(v131, xmmword_296B8F090), v34), v131);
                v137 = vaddq_s16(vdupq_laneq_s16(v132, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v117.i8, 3), xmmword_296B8F0A0), v117));
                v138 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v133.i8, 3), xmmword_296B8F0A0), v133);
                v139 = vdupq_laneq_s16(v137, 7);
                v140 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v136.i8, 3), xmmword_296B8F0A0), v136);
                v141 = vaddq_s16(vdupq_laneq_s16(v140, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v134.i8, 3), xmmword_296B8F0A0), v134));
                v142 = vdupq_laneq_s16(v141, 7);
                v172.val[0] = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v130, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v116.i8, 3), xmmword_296B8F0A0), v116)), v118), v139);
                v33 = vdupq_n_s16(v37);
                v143 = vaddq_s16(v130, v118);
                v172.val[1] = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v138, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v135.i8, 3), xmmword_296B8F0A0), v135)), v33), v142);
                v173.val[0] = vaddq_s16(v132, v118);
                v173.val[1] = vaddq_s16(v140, v33);
                v144 = v101 + 32;
                v145 = v101 + 48;
                v146 = v101;
                v31 = vaddq_s16(v137, v118);
                vst2q_s16(v146, v173);
                v146 += 16;
                v171.val[0] = vaddq_s16(v143, v139);
                v32 = vaddq_s16(v141, v33);
                vst2q_s16(v146, *v31.i8);
                v171.val[1] = vaddq_s16(vaddq_s16(v138, v33), v142);
                v38 = v172.val[0].u16[7];
                vst2q_s16(v144, v171);
                v37 = v172.val[1].u16[7];
                vst2q_s16(v145, v172);
                v97 = v101 + 64;
                v98 = v77 + 32;
                result = v77 + 64;
                v77 += 32;
                v101 += 64;
              }

              while (result <= v30);
            }

            else
            {
              v97 = a9;
              v98 = v77;
            }

            v147 = v98 + 8;
            while (v147 <= v30)
            {
              v31.i64[0] = *(v162[0] + v98);
              v32.i64[0] = *(v162[0] + v98 + v163);
              v148 = vzip1q_s8(v32, v31);
              v149 = vaddq_s16(vshlq_n_s32(v148, 0x10uLL), v148);
              v150 = vaddq_s16(vandq_s8(vqtbl1q_s8(v149, xmmword_296B8F090), v34), v149);
              v151 = vdupq_n_s16(v38);
              v31 = vaddq_s16(vaddq_s16(v150, v151), vandq_s8(vdupq_lane_s16(*v150.i8, 3), xmmword_296B8F0A0));
              v151.i64[0] = *(v155[0] + v98);
              v33.i64[0] = *(v155[0] + v98 + v156);
              v152 = vzip1q_s8(v33, v151);
              v153 = vaddq_s16(vshlq_n_s32(v152, 0x10uLL), v152);
              v154 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v34), v153);
              v33 = vandq_s8(vdupq_lane_s16(*v154.i8, 3), xmmword_296B8F0A0);
              v32 = vaddq_s16(vaddq_s16(v154, vdupq_n_s16(v37)), v33);
              v38 = v31.u16[7];
              vst2q_s16(v97, *v31.i8);
              v97 += 16;
              v37 = v32.u16[7];
              v147 = v98 + 16;
              v98 += 8;
            }

            if (v98 < v30)
            {
              do
              {
                v38 += *(v162[0] + v98 + v163) | (*(v162[0] + v98) << 8);
                v37 += *(v155[0] + v98 + v156) | (*(v155[0] + v98) << 8);
                v97[1] = v37;
                *v97 = v38;
                v97 += 2;
                ++v98;
              }

              while (v30 != v98);
            }
          }
        }

        a9 = (a9 + a10);
        v26 += a8;
      }

      while (v26 + a3[7].u32[0] < v19);
    }
  }

  return result;
}

unint64_t CompressedInterleave2<float,(StreamType)1,(StreamType)1>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float *a9, uint64_t a10)
{
  if (a7)
  {
    v186 = v19;
    v187 = v18;
    v188 = v17;
    v189 = v16;
    v190 = v15;
    v191 = v14;
    v192 = v13;
    v193 = v12;
    v194 = v10;
    v195 = v11;
    v25 = result;
    v26 = *(a2 + 56);
    v27 = HIDWORD(v26);
    v185 = 3;
    v28 = *(a4 + 8);
    v29 = a3[3];
    v183 = v29.i32[0];
    v181 = v28;
    v179[1] = result;
    v182 = a3[6].i32[1] + v29.i32[1] * HIDWORD(v26);
    v30 = a3[7].u32[1];
    v180 = vmin_u32(vmls_s32(*(*(*&v28[5] + 8 * v30) + 16), v28[6], v29), v28[6]).u32[0];
    v184 = v30;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v179);
    v178 = 3;
    v31 = *(a5 + 8);
    v32 = a3[3];
    v176 = v32.i32[0];
    v174 = v31;
    v172[1] = v25;
    v175 = a3[6].i32[1] + v32.i32[1] * HIDWORD(v26);
    v33 = a3[7].u32[1];
    v173 = vmin_u32(vmls_s32(*(*(*&v31[5] + 8 * v33) + 16), v31[6], v32), v31[6]).u32[0];
    v177 = v33;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v172);
    v34 = a3[6].u32[1];
    if (a3[7].u32[0] + v34 < HIDWORD(v26))
    {
      v36 = a3[3].i32[1] * *(a2 + 60);
      v37 = a3[5].u32[1];
      v38 = v37 + a7;
      do
      {
        v182 = v36 + v34;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v179);
        v175 = v36 + v34;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v172);
        v44 = v179[0];
        if (v179[0])
        {
          v45 = v172[0];
          if (v172[0])
          {
            if (v37 >= 0x20)
            {
              v58 = 0;
              v59 = v179[0] + 2 * v180;
              v60 = v180 + v179[0];
              v61 = v172[0] + 2 * v173;
              v62 = v173 + v172[0];
              v48.i64[0] = 0;
              v47.i64[0] = 0;
              v50 = xmmword_296B8F0B0;
              v49 = xmmword_296B8F050;
              v52 = xmmword_296B8F000;
              v51 = xmmword_296B8F020;
              v54 = xmmword_296B8F0D0;
              v53 = xmmword_296B8F0C0;
              v56 = xmmword_296B8F070;
              v55 = xmmword_296B8F0E0;
              v57 = xmmword_296B8F030;
              do
              {
                v196.val[1] = *(v179[0] + v58);
                v198.val[1] = *(v179[0] + v58 + 16);
                v196.val[0] = *(v59 + v58);
                v198.val[0] = *(v59 + v58 + 16);
                v200.val[1] = vqtbl2q_s8(v196, xmmword_296B8F050);
                v64 = *(v60 + v58);
                v63 = *(v60 + v58 + 16);
                v200.val[0] = vqtbl1q_s8(v64, xmmword_296B8F0B0);
                v200.val[0] = vqtbl2q_s8(v200, xmmword_296B8F020);
                v204.val[1] = vqtbl2q_s8(v198, xmmword_296B8F050);
                v204.val[0] = vqtbl1q_s8(v63, xmmword_296B8F0B0);
                v200.val[1] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v204.val[1] = vqtbl2q_s8(v198, xmmword_296B8F000);
                v204.val[0] = vqtbl1q_s8(v63, v53);
                v204.val[0] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v65 = vqtbl2q_s8(v196, v56);
                v204.val[1] = vqtbl1q_s8(v64, v54);
                v204.val[1] = vqtbl2q_s8(*(&v204 + 16), xmmword_296B8F020);
                v206.val[1] = vqtbl2q_s8(v196, xmmword_296B8F000);
                v206.val[0] = vqtbl1q_s8(v64, v53);
                v206.val[0] = vqtbl2q_s8(v206, xmmword_296B8F020);
                v196.val[1] = vqtbl2q_s8(v196, v57);
                v196.val[0] = vqtbl1q_s8(v64, v55);
                v66 = vqtbl2q_s8(v196, xmmword_296B8F020);
                v196.val[1] = vqtbl2q_s8(v198, v56);
                v196.val[0] = vqtbl1q_s8(v63, v54);
                v206.val[1] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v196.val[1] = vqtbl2q_s8(v198, v57);
                v196.val[0] = vqtbl1q_s8(v63, v55);
                v198.val[1] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v196.val[0] = vaddq_s32(vshlq_n_s64(v200.val[0], 0x20uLL), v200.val[0]);
                v196.val[1] = vaddq_s32(vshlq_n_s64(v200.val[1], 0x20uLL), v200.val[1]);
                v198.val[0] = vaddq_s32(vshlq_n_s64(v204.val[0], 0x20uLL), v204.val[0]);
                v204.val[1] = vaddq_s32(vshlq_n_s64(v204.val[1], 0x20uLL), v204.val[1]);
                v67 = vaddq_s32(vshlq_n_s64(v66, 0x20uLL), v66);
                v200.val[1] = vaddq_s32(vshlq_n_s64(v206.val[1], 0x20uLL), v206.val[1]);
                v198.val[1] = vaddq_s32(vshlq_n_s64(v198.val[1], 0x20uLL), v198.val[1]);
                v206.val[0] = vaddq_s32(vshlq_n_s64(v206.val[0], 0x20uLL), v206.val[0]);
                v208.val[1] = *(v172[0] + v58);
                v210.val[1] = *(v172[0] + v58 + 16);
                v69 = *(v62 + v58);
                v68 = *(v62 + v58 + 16);
                v208.val[0] = *(v61 + v58);
                v210.val[0] = *(v61 + v58 + 16);
                v212.val[1] = vqtbl2q_s8(v208, xmmword_296B8F050);
                v212.val[0] = vqtbl1q_s8(v69, xmmword_296B8F0B0);
                v206.val[1] = vdupq_lane_s32(*v198.val[0].i8, 1);
                v212.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v201.val[1] = vqtbl2q_s8(v210, xmmword_296B8F050);
                v201.val[0] = vqtbl1q_s8(v68, xmmword_296B8F0B0);
                v212.val[1] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v201.val[1] = vqtbl2q_s8(v210, xmmword_296B8F000);
                v201.val[0] = vqtbl1q_s8(v68, xmmword_296B8F0C0);
                v70 = vqtbl2q_s8(v201, xmmword_296B8F020);
                v201.val[1] = vqtbl2q_s8(v208, v56);
                v201.val[0] = vqtbl1q_s8(v69, xmmword_296B8F0D0);
                v201.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v71 = vqtbl2q_s8(v208, xmmword_296B8F000);
                v201.val[1] = vqtbl1q_s8(v69, xmmword_296B8F0C0);
                v72 = vqtbl2q_s8(*(&v201 + 16), xmmword_296B8F020);
                v201.val[1] = vdupq_lane_s32(*v196.val[1].i8, 1);
                v208.val[1] = vqtbl2q_s8(v208, xmmword_296B8F030);
                v56 = xmmword_296B8F070;
                v208.val[0] = vqtbl1q_s8(v69, xmmword_296B8F0E0);
                v204.val[0] = vqtbl2q_s8(v208, xmmword_296B8F020);
                v208.val[1] = vqtbl2q_s8(v210, xmmword_296B8F070);
                v208.val[0] = vqtbl1q_s8(v68, xmmword_296B8F0D0);
                v73 = vqtbl2q_s8(v208, xmmword_296B8F020);
                v208.val[1] = vqtbl2q_s8(v210, xmmword_296B8F030);
                v208.val[0] = vqtbl1q_s8(v68, xmmword_296B8F0E0);
                v210.val[0] = vdupq_lane_s32(*v196.val[0].i8, 1);
                v210.val[0].i64[0] = 0;
                v201.val[1].i64[0] = 0;
                v206.val[1].i64[0] = 0;
                v200.val[0] = vqtbl2q_s8(v208, xmmword_296B8F020);
                v208.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v208.val[1] = vaddq_s32(vshlq_n_s64(v212.val[1], 0x20uLL), v212.val[1]);
                v54 = xmmword_296B8F0D0;
                v53 = xmmword_296B8F0C0;
                v74 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v67.i8, 1), v67), vaddq_s32(vdupq_lane_s32(*v206.val[0].i8, 1), v206.val[0]));
                v206.val[0] = vaddq_s32(vshlq_n_s64(v70, 0x20uLL), v70);
                v210.val[1] = vaddq_s32(vshlq_n_s64(v201.val[0], 0x20uLL), v201.val[0]);
                v198.val[0] = vaddq_s32(v206.val[1], v198.val[0]);
                v206.val[1] = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
                v75 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                v196.val[1] = vaddq_s32(v201.val[1], v196.val[1]);
                v55 = xmmword_296B8F0E0;
                v57 = xmmword_296B8F030;
                v200.val[0] = vaddq_s32(vshlq_n_s64(v200.val[0], 0x20uLL), v200.val[0]);
                v204.val[0] = vaddq_s32(vshlq_n_s64(v204.val[0], 0x20uLL), v204.val[0]);
                v76 = vdupq_lane_s32(*v206.val[0].i8, 1);
                v196.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v204.val[1].i8, 1), v204.val[1]), vaddq_s32(v210.val[0], v196.val[0]));
                v76.i64[0] = 0;
                v204.val[1] = vaddq_s32(v76, v206.val[0]);
                v206.val[0] = vdupq_lane_s32(*v208.val[1].i8, 1);
                v196.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v200.val[1].i8, 1), v200.val[1]), 3), v196.val[1]);
                v206.val[0].i64[0] = 0;
                v43 = vaddq_s32(v206.val[0], v208.val[1]);
                v208.val[1] = vdupq_lane_s32(*v208.val[0].i8, 1);
                v208.val[1].i64[0] = 0;
                v196.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v198.val[1].i8, 1), v198.val[1]), 3), v198.val[0]), v196.val[1]), vaddq_s32(v196.val[0], v74));
                v41 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v210.val[1].i8, 1), v210.val[1]), vaddq_s32(v208.val[1], v208.val[0]));
                v42 = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v200.val[0].i8, 1), v200.val[0]), 3), v204.val[1]);
                v48 = vaddq_s32(v196.val[0], vdupq_lane_s32(*v48.i8, 0));
                v40 = vaddq_s32(v41, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v204.val[0].i8, 1), v204.val[0]), vaddq_s32(vdupq_lane_s32(*v206.val[1].i8, 1), v206.val[1])));
                v77 = v58 + 64;
                v48.i32[0] = v48.i32[3];
                v39 = vaddq_s32(vaddq_s32(v42, vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v75.i8, 1), v75), 3), v43)), v40);
                v58 += 32;
                v47 = vaddq_s32(v39, vdupq_lane_s32(*v47.i8, 0));
                v47.i32[0] = v47.i32[3];
              }

              while (v77 <= v37);
              v46 = v37 & 0xFFFFFFE0;
            }

            else
            {
              v46 = 0;
              v47.i64[0] = 0;
              v48.i64[0] = 0;
              v50 = xmmword_296B8F0B0;
              v49 = xmmword_296B8F050;
              v52 = xmmword_296B8F000;
              v51 = xmmword_296B8F020;
              v54 = xmmword_296B8F0D0;
              v53 = xmmword_296B8F0C0;
              v56 = xmmword_296B8F070;
              v55 = xmmword_296B8F0E0;
              v57 = xmmword_296B8F030;
            }

            if ((v46 | 8) <= v37)
            {
              do
              {
                v39.i64[0] = *(v179[0] + v46);
                v40.i64[0] = *(v180 + v179[0] + v46);
                v41.i64[0] = *(v179[0] + 2 * v180 + v46);
                v79 = vzip1q_s8(0, v40);
                v80 = vzip1q_s8(v41, v39);
                v81 = vzip1q_s8(v79, v80);
                v82 = vzip2q_s8(v79, v80);
                v83 = vaddq_s32(vshlq_n_s64(v82, 0x20uLL), v82);
                v84 = vdupq_lane_s32(*v83.i8, 1);
                v85 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                v86 = vaddq_s32(vdupq_lane_s32(*v85.i8, 1), v85);
                v48 = vaddq_s32(v84, vaddq_s32(v83, vdupq_lane_s32(*v48.i8, 0)));
                v83.i64[0] = *(v172[0] + v46);
                v84.i64[0] = *(v173 + v172[0] + v46);
                v48.i32[0] = v48.i32[3] + v86.i32[3];
                v86.i64[0] = *(v172[0] + 2 * v173 + v46);
                v87 = vzip1q_s8(0, v84);
                v88 = vzip1q_s8(v86, v83);
                v89 = vzip1q_s8(v87, v88);
                v90 = vzip2q_s8(v87, v88);
                v39 = vaddq_s32(vshlq_n_s64(v90, 0x20uLL), v90);
                v40 = vdupq_lane_s32(*v39.i8, 1);
                v91 = vaddq_s32(vshlq_n_s64(v89, 0x20uLL), v89);
                v41 = vaddq_s32(vdupq_lane_s32(*v91.i8, 1), v91);
                v47 = vaddq_s32(v40, vaddq_s32(v39, vdupq_lane_s32(*v47.i8, 0)));
                v47.i32[0] = v47.i32[3] + v41.i32[3];
                v78 = v46 + 8;
                v92 = v46 + 16;
                v46 += 8;
              }

              while (v92 <= v37);
            }

            else
            {
              v78 = v46;
            }

            if (v78 <= v37)
            {
              v93 = v37;
            }

            else
            {
              v93 = v78;
            }

            if (v93 + 32 <= v38)
            {
              v96 = v179[0] + 2 * v180;
              v97 = v180 + v179[0];
              v98 = v172[0] + 2 * v173;
              v99 = v173 + v172[0];
              v100 = a9;
              do
              {
                v197.val[1] = *(v44 + v93);
                v199.val[1] = *(v44 + v93 + 16);
                v102 = *(v97 + v93);
                v101 = *(v97 + v93 + 16);
                v197.val[0] = *(v96 + v93);
                v199.val[0] = *(v96 + v93 + 16);
                v203.val[1] = vqtbl2q_s8(v197, v56);
                v203.val[0] = vqtbl1q_s8(v102, v54);
                v103 = vqtbl2q_s8(v203, v51);
                v203.val[1] = vqtbl2q_s8(v197, v57);
                v203.val[0] = vqtbl1q_s8(v102, v55);
                v205.val[1] = vqtbl2q_s8(v199, v56);
                v203.val[0] = vqtbl2q_s8(v203, v51);
                v205.val[0] = vqtbl1q_s8(v101, v54);
                v203.val[1] = vqtbl2q_s8(v205, v51);
                v205.val[1] = vqtbl2q_s8(v199, v57);
                v205.val[0] = vqtbl1q_s8(v101, v55);
                v207.val[1] = vqtbl2q_s8(v199, v52);
                v205.val[0] = vqtbl2q_s8(v205, v51);
                v207.val[0] = vqtbl1q_s8(v101, v53);
                v205.val[1] = vqtbl2q_s8(v207, v51);
                v199.val[1] = vqtbl2q_s8(v199, v49);
                v199.val[0] = vqtbl1q_s8(v101, v50);
                v207.val[1] = vqtbl2q_s8(v197, v52);
                v199.val[1] = vqtbl2q_s8(v199, v51);
                v207.val[0] = vqtbl1q_s8(v102, v53);
                v207.val[0] = vqtbl2q_s8(v207, v51);
                v197.val[1] = vqtbl2q_s8(v197, v49);
                v197.val[0] = vqtbl1q_s8(v102, v50);
                v197.val[0] = vqtbl2q_s8(v197, v51);
                v199.val[0] = vaddq_s32(vshlq_n_s64(v203.val[0], 0x20uLL), v203.val[0]);
                v104 = vaddq_s32(vshlq_n_s64(v203.val[1], 0x20uLL), v203.val[1]);
                v197.val[1] = vaddq_s32(vshlq_n_s64(v205.val[0], 0x20uLL), v205.val[0]);
                v105 = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v106 = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v199.val[1] = vaddq_s32(vshlq_n_s64(v207.val[0], 0x20uLL), v207.val[0]);
                v197.val[0] = vaddq_s32(vshlq_n_s64(v197.val[0], 0x20uLL), v197.val[0]);
                v203.val[1] = vdupq_lane_s32(*v197.val[0].i8, 1);
                v205.val[0] = vdupq_lane_s32(*v199.val[1].i8, 1);
                v207.val[0] = vdupq_lane_s32(*v106.i8, 1);
                v107 = vdupq_lane_s32(*v105.i8, 1);
                v108 = vdupq_lane_s32(*v197.val[1].i8, 1);
                v203.val[0] = vdupq_lane_s32(*v104.i8, 1);
                v109 = vdupq_lane_s32(*v199.val[0].i8, 1);
                v107.i64[0] = 0;
                v207.val[0].i64[0] = 0;
                v205.val[0].i64[0] = 0;
                v203.val[1].i64[0] = 0;
                v110 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
                v205.val[1] = vaddq_s32(v203.val[1], v197.val[0]);
                v199.val[1] = vaddq_s32(v205.val[0], v199.val[1]);
                v111 = vaddq_s32(v207.val[0], v106);
                v205.val[0] = *(v45 + v93);
                v112 = *(v45 + v93 + 16);
                v207.val[0] = *(v99 + v93);
                v113 = *(v99 + v93 + 16);
                v197.val[0] = vaddq_s32(v107, v105);
                v203.val[1] = *(v98 + v93);
                v207.val[1] = *(v98 + v93 + 16);
                v211.val[1] = vqtbl2q_s8(*(&v203 + 16), v56);
                v211.val[0] = vqtbl1q_s8(v207.val[0], v54);
                v211.val[1] = vqtbl2q_s8(v211, v51);
                v211.val[0] = vdupq_lane_s32(*v110.i8, 1);
                v211.val[0].i64[0] = 0;
                v109.i64[0] = 0;
                v203.val[0].i64[0] = 0;
                v108.i64[0] = 0;
                v114 = vdupq_lane_s32(*v48.i8, 0);
                v197.val[1] = vaddq_s32(v108, v197.val[1]);
                v115 = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v211.val[1] = vdupq_lane_s32(*v115.i8, 1);
                v211.val[1].i64[0] = 0;
                v116 = vaddq_s32(v211.val[0], v110);
                v117 = vaddq_s32(v211.val[1], v115);
                v118 = vdupq_lane_s32(*v47.i8, 0);
                v211.val[0] = vaddq_s32(v116, v114);
                v211.val[1] = vaddq_s32(v117, v118);
                v119 = v100;
                vst2q_f32(v119, v211);
                v119 += 8;
                v120 = vaddq_s32(v203.val[0], v104);
                v211.val[1] = vqtbl2q_s8(*(&v203 + 16), v57);
                v211.val[0] = vqtbl1q_s8(v207.val[0], v55);
                v203.val[0] = vqtbl2q_s8(v211, v51);
                v211.val[1] = vqtbl2q_s8(*(&v207 + 16), v56);
                v199.val[0] = vaddq_s32(v109, v199.val[0]);
                v211.val[0] = vqtbl1q_s8(v113, v54);
                v121 = vqtbl2q_s8(v211, v51);
                v211.val[1] = vqtbl2q_s8(*(&v203 + 16), v49);
                v211.val[0] = vqtbl1q_s8(v207.val[0], v50);
                v211.val[0] = vqtbl2q_s8(v211, v51);
                v203.val[0] = vaddq_s32(vshlq_n_s64(v203.val[0], 0x20uLL), v203.val[0]);
                v211.val[0] = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v205.val[1] = vaddq_s32(vdupq_laneq_s32(v116, 3), v205.val[1]);
                v122 = vdupq_lane_s32(*v211.val[0].i8, 1);
                v211.val[1] = vdupq_lane_s32(*v203.val[0].i8, 1);
                v211.val[1].i64[0] = 0;
                v122.i64[0] = 0;
                v123 = vaddq_s32(v122, v211.val[0]);
                v203.val[0] = vaddq_s32(v211.val[1], v203.val[0]);
                v211.val[0] = vdupq_laneq_s32(v205.val[1], 3);
                v124 = vaddq_s32(vdupq_laneq_s32(v117, 3), v123);
                v125 = vdupq_laneq_s32(v124, 3);
                v211.val[1] = vaddq_s32(v205.val[1], v114);
                v126 = vaddq_s32(v124, v118);
                vst2q_f32(v119, *(&v211 + 16));
                v211.val[1] = vaddq_s32(vaddq_s32(v199.val[0], v114), v211.val[0]);
                v127 = vaddq_s32(vaddq_s32(v203.val[0], v118), v125);
                v128 = v100 + 16;
                vst2q_f32(v128, *(&v211 + 16));
                v129 = vqtbl2q_s8(*(&v207 + 16), v57);
                v199.val[0] = vaddq_s32(vdupq_laneq_s32(v199.val[0], 3), v199.val[1]);
                v211.val[1] = vqtbl1q_s8(v113, v55);
                v199.val[1] = vqtbl2q_s8(*(&v211 + 16), v51);
                v130 = vqtbl2q_s8(*(&v207 + 16), v52);
                v211.val[1] = vqtbl1q_s8(v113, v53);
                v205.val[1] = vqtbl2q_s8(*(&v211 + 16), v51);
                v131 = vqtbl2q_s8(*(&v207 + 16), v49);
                v207.val[1] = vqtbl1q_s8(v113, v50);
                v207.val[1] = vqtbl2q_s8(*(&v207 + 16), v51);
                v205.val[0] = vqtbl2q_s8(*(&v203 + 16), v52);
                v203.val[1] = vqtbl1q_s8(v207.val[0], v53);
                v203.val[1] = vqtbl2q_s8(*(&v203 + 16), v51);
                v132 = vaddq_s32(vshlq_n_s64(v121, 0x20uLL), v121);
                v203.val[1] = vaddq_s32(vshlq_n_s64(v203.val[1], 0x20uLL), v203.val[1]);
                v205.val[0] = vdupq_lane_s32(*v203.val[1].i8, 1);
                v199.val[0] = vaddq_s32(v199.val[0], v211.val[0]);
                v207.val[0] = vdupq_lane_s32(*v132.i8, 1);
                v207.val[0].i64[0] = 0;
                v205.val[0].i64[0] = 0;
                v203.val[1] = vaddq_s32(v205.val[0], v203.val[1]);
                v133 = vaddq_s32(v207.val[0], v132);
                v205.val[0] = vdupq_laneq_s32(v199.val[0], 3);
                v134 = v100 + 24;
                v203.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v203.val[0], 3), v203.val[1]), v125);
                v203.val[1] = vdupq_laneq_s32(v203.val[0], 3);
                v209.val[0] = vaddq_s32(v199.val[0], v114);
                v209.val[1] = vaddq_s32(v203.val[0], v118);
                vst2q_f32(v134, v209);
                v209.val[0] = vaddq_s32(vaddq_s32(v120, v114), v205.val[0]);
                v209.val[1] = vaddq_s32(vaddq_s32(v133, v118), v203.val[1]);
                v135 = v100 + 32;
                v199.val[0] = vdupq_laneq_s32(v120, 3);
                vst2q_f32(v135, v209);
                v199.val[1] = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v203.val[0] = vaddq_s32(vshlq_n_s64(v205.val[1], 0x20uLL), v205.val[1]);
                v136 = vaddq_s32(vshlq_n_s64(v207.val[1], 0x20uLL), v207.val[1]);
                v205.val[1] = vdupq_lane_s32(*v136.i8, 1);
                v207.val[0] = vdupq_lane_s32(*v203.val[0].i8, 1);
                v137 = vaddq_s32(v199.val[0], v111);
                v199.val[0] = vdupq_lane_s32(*v199.val[1].i8, 1);
                v199.val[0].i64[0] = 0;
                v205.val[1].i64[0] = 0;
                v207.val[0].i64[0] = 0;
                v199.val[0] = vaddq_s32(v199.val[0], v199.val[1]);
                v199.val[1] = vaddq_s32(vdupq_laneq_s32(v199.val[0], 3), vaddq_s32(v207.val[0], v203.val[0]));
                v203.val[0] = vdupq_laneq_s32(v137, 3);
                v43 = vaddq_s32(vdupq_laneq_s32(v133, 3), vaddq_s32(v205.val[1], v136));
                v138 = vdupq_laneq_s32(v43, 3);
                v42 = vaddq_s32(v199.val[1], v138);
                v199.val[0] = vaddq_s32(v199.val[0], v138);
                v139 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v197.val[1], 3), v197.val[0]), v203.val[0]), v114), v205.val[0]);
                v197.val[1] = vaddq_s32(vaddq_s32(v197.val[1], v203.val[0]), v114);
                v203.val[0] = vaddq_s32(vaddq_s32(v42, v118), v203.val[1]);
                v40 = vaddq_s32(v197.val[1], v205.val[0]);
                v41 = vaddq_s32(vaddq_s32(v199.val[0], v118), v203.val[1]);
                v47 = vaddq_s32(v43, v118);
                v48 = vaddq_s32(vaddq_s32(v137, v114), v205.val[0]);
                v39 = vaddq_s32(v47, v203.val[1]);
                v140 = v100 + 40;
                vst2q_f32(v140, *(&v39 - 1));
                v141 = v100 + 48;
                vst2q_f32(v141, *v40.i8);
                v142 = v100 + 56;
                v48.i32[0] = v139.i32[3];
                vst2q_f32(v142, v203);
                v47.i32[0] = v203.val[0].i32[3];
                v94 = v100 + 64;
                v95 = v93 + 32;
                result = v93 + 64;
                v93 += 32;
                v100 += 64;
              }

              while (result <= v38);
            }

            else
            {
              v94 = a9;
              v95 = v93;
            }

            if (v95 + 8 <= v38)
            {
              v145 = v44 + 2 * v180;
              v146 = v180 + v44;
              v147 = v45 + 2 * v173;
              v148 = v173 + v45;
              do
              {
                v39.i64[0] = *(v44 + v95);
                v40.i64[0] = *(v146 + v95);
                v41.i64[0] = *(v145 + v95);
                v149 = vzip1q_s8(0, v40);
                v150 = vzip1q_s8(v41, v39);
                v151 = vzip1q_s8(v149, v150);
                v152 = vzip2q_s8(v149, v150);
                v153 = vshlq_n_s64(v152, 0x20uLL);
                v154 = vaddq_s32(vshlq_n_s64(v151, 0x20uLL), v151);
                v155 = vaddq_s32(v153, v152);
                v156 = vdupq_lane_s32(*v48.i8, 0);
                v153.i64[0] = *(v45 + v95);
                v157 = vdupq_lane_s32(*v155.i8, 1);
                v42.i64[0] = *(v148 + v95);
                v43.i64[0] = *(v147 + v95);
                v158 = vdupq_lane_s32(*v154.i8, 1);
                v159 = vzip1q_s8(0, v42);
                v160 = vzip1q_s8(v43, v153);
                v161 = vzip1q_s8(v159, v160);
                v158.i64[0] = 0;
                v162 = vaddq_s32(vshlq_n_s64(v161, 0x20uLL), v161);
                v163 = vdupq_lane_s32(*v162.i8, 1);
                v157.i64[0] = 0;
                v164 = vaddq_s32(v158, v154);
                v163.i64[0] = 0;
                v47 = vdupq_lane_s32(*v47.i8, 0);
                v43 = vaddq_s32(v163, v162);
                v39 = vaddq_s32(v157, vaddq_s32(v155, v156));
                v165 = vzip2q_s8(v159, v160);
                v42 = vdupq_laneq_s32(v164, 3);
                v166 = vaddq_s32(vshlq_n_s64(v165, 0x20uLL), v165);
                v167 = vdupq_lane_s32(*v166.i8, 1);
                v167.i64[0] = 0;
                v202.val[0] = vaddq_s32(v164, v156);
                v48 = vdupq_laneq_s32(v43, 3);
                v40 = vaddq_s32(v167, vaddq_s32(v166, v47));
                v144 = v94 + 16;
                v202.val[1] = vaddq_s32(v43, v47);
                vst2q_f32(v94, v202);
                v168 = v94 + 8;
                v41 = vaddq_s32(v39, v42);
                v169 = vaddq_s32(v40, v48);
                v48.i32[0] = v41.i32[3];
                vst2q_f32(v168, *v41.i8);
                v47.i32[0] = v169.i32[3];
                v143 = v95 + 8;
                result = v95 + 16;
                v95 += 8;
                v94 = v144;
              }

              while (result <= v38);
            }

            else
            {
              v143 = v95;
              v144 = v94;
            }

            if (v143 < v38)
            {
              v170 = v47.i32[0];
              do
              {
                LODWORD(v171) = ((*(v179[0] + v143) << 24) | (*(v179[0] + v143 + v180) << 16) | (*(v179[0] + v143 + 2 * v180) << 8)) + v48.i32[0];
                HIDWORD(v171) = ((*(v172[0] + v143) << 24) | (*(v172[0] + v143 + v173) << 16) | (*(v172[0] + v143 + 2 * v173) << 8)) + v170;
                *v144 = v171;
                v144 += 2;
                ++v143;
              }

              while (v38 != v143);
            }
          }
        }

        a9 = (a9 + a10);
        v34 += a8;
      }

      while (v34 + a3[7].u32[0] < v27);
    }
  }

  return result;
}

void CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    if (*(*a5 + 24))
    {
      v13 = **a5;
    }

    v16 = *(a2 + 60);
    if (*(*a6 + 24))
    {
      v14 = **a6;
    }

    if (*(*a7 + 24))
    {
      v15 = **a7;
    }

    v17 = a3[13];
    if (a3[14] + v17 < v16)
    {
      v19 = a3[11];
      *&v23 = __PAIR64__(v13, v12);
      *&v21 = __PAIR64__(v14, v12);
      v20 = v19 + a9;
      *(&v21 + 1) = __PAIR64__(v14, v12);
      *&v22 = __PAIR64__(v15, v13);
      *(&v22 + 1) = __PAIR64__(v15, v13);
      *(&v23 + 1) = __PAIR64__(v15, v14);
      v24 = v19 & 0xFFFFFFE0 | 8;
      if (v24 <= v19 + 1)
      {
        v24 = v19 + 1;
      }

      v25 = (v19 & 0xFFFFFFE0) + ((v24 + ~(v19 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      if (v25 <= v19)
      {
        v25 = a3[11];
      }

      do
      {
        v26 = a11;
        v27 = v25;
        if (v25 + 32 <= v20)
        {
          do
          {
            v28 = v26;
            vst2q_f32(v28, *&v21);
            v28 += 8;
            vst2q_f32(v28, *&v21);
            v29 = v26 + 16;
            vst2q_f32(v29, *&v21);
            v30 = v26 + 24;
            vst2q_f32(v30, *&v21);
            v31 = v26 + 32;
            vst2q_f32(v31, *&v21);
            v32 = v26 + 40;
            vst2q_f32(v32, *&v21);
            v33 = v26 + 48;
            vst2q_f32(v33, *&v21);
            v34 = v26 + 56;
            vst2q_f32(v34, *&v21);
            v35 = v26 + 64;
            vst2q_f32(v35, *&v21);
            v36 = v26 + 72;
            vst2q_f32(v36, *&v21);
            v37 = v26 + 80;
            vst2q_f32(v37, *&v21);
            v38 = v26 + 88;
            vst2q_f32(v38, *&v21);
            v39 = v26 + 96;
            vst2q_f32(v39, *&v21);
            v40 = v26 + 104;
            vst2q_f32(v40, *&v21);
            v41 = v26 + 112;
            vst2q_f32(v41, *&v21);
            v42 = v26 + 120;
            v43 = v27 + 64;
            v27 += 32;
            v26 += 128;
            vst2q_f32(v42, *&v21);
          }

          while (v43 <= v20);
        }

        v44 = v27 + 8;
        while (v44 <= v20)
        {
          v45 = v26;
          vst2q_f32(v45, *&v21);
          v45 += 8;
          vst2q_f32(v45, *&v21);
          v46 = v26 + 16;
          vst2q_f32(v46, *&v21);
          v47 = v26 + 24;
          vst2q_f32(v47, *&v21);
          v26 += 32;
          v44 = v27 + 16;
          v27 += 8;
        }

        if (v27 < v20)
        {
          v48 = v20 - v27;
          do
          {
            *v26 = v23;
            v26 += 4;
            --v48;
          }

          while (v48);
        }

        a11 = (a11 + a12);
        v17 += a10;
      }

      while (v17 + a3[14] < v16);
    }
  }
}

void CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v17 = _D0;
    }

    else
    {
      v17 = 32256;
    }

    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v19 = _D0;
    }

    else
    {
      v19 = 32256;
    }

    v20 = *(a2 + 60);
    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v22 = _D0;
    }

    else
    {
      v22 = 32256;
    }

    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v24 = _D0;
    }

    else
    {
      v24 = 32256;
    }

    v25 = a3[13];
    if (a3[14] + v25 < v20)
    {
      v27 = a3[11];
      v48.val[1] = vdupq_n_s16(v22);
      v28 = v27 + a9;
      v48.val[0] = vdupq_n_s16(v17);
      v29 = vqtbl2q_s8(v48, xmmword_296B6EDD0);
      v49.val[1] = vdupq_n_s16(v24);
      v49.val[0] = vdupq_n_s16(v19);
      v30 = vqtbl2q_s8(v49, xmmword_296B6EDD0);
      LOWORD(v31) = v17;
      WORD1(v31) = v19;
      WORD2(v31) = v22;
      HIWORD(v31) = v24;
      v32 = v27 & 0xFFFFFFE0 | 8;
      if (v32 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      v33 = (v27 & 0xFFFFFFE0) + ((v32 + ~(v27 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      if (v33 <= v27)
      {
        v33 = a3[11];
      }

      do
      {
        v34 = a11;
        v35 = v33;
        if (v33 + 32 <= v28)
        {
          do
          {
            v36 = v34;
            vst2q_s16(v36, *v29.i8);
            v36 += 16;
            vst2q_s16(v36, *v29.i8);
            v37 = v34 + 32;
            vst2q_s16(v37, *v29.i8);
            v38 = v34 + 48;
            vst2q_s16(v38, *v29.i8);
            v39 = v34 + 64;
            vst2q_s16(v39, *v29.i8);
            v40 = v34 + 80;
            vst2q_s16(v40, *v29.i8);
            v41 = v34 + 96;
            vst2q_s16(v41, *v29.i8);
            v42 = v34 + 112;
            v43 = v35 + 64;
            v35 += 32;
            v34 += 128;
            vst2q_s16(v42, *v29.i8);
          }

          while (v43 <= v28);
        }

        if (v35 + 8 <= v28)
        {
          do
          {
            v44 = v34 + 32;
            vst2q_s16(v34, *v29.i8);
            v45 = v34 + 16;
            vst2q_s16(v45, *v29.i8);
            v46 = v35 + 16;
            v35 += 8;
            v34 = v44;
          }

          while (v46 <= v28);
        }

        if (v35 < v28)
        {
          v47 = v28 - v35;
          do
          {
            *v34 = v31;
            v34 += 4;
            --v47;
          }

          while (v47);
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[14] < v20);
    }
  }
}

void CompressedInterleave4<float,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    if (*(*a4 + 24))
    {
      *&v12 = **a4;
    }

    else
    {
      LODWORD(v12) = 2143289344;
    }

    if (*(*a5 + 24))
    {
      v13 = **a5;
    }

    else
    {
      v13 = NAN;
    }

    v14 = *(a2 + 60);
    if (*(*a6 + 24))
    {
      v15 = **a6;
    }

    else
    {
      v15 = NAN;
    }

    if (*(*a7 + 24))
    {
      v16 = **a7;
    }

    else
    {
      v16 = NAN;
    }

    v17 = a3[13];
    if (a3[14] + v17 < v14)
    {
      v19 = a3[11];
      *&v21 = __PAIR64__(LODWORD(v15), v12);
      v20 = v19 + a9;
      *(&v21 + 1) = __PAIR64__(LODWORD(v15), v12);
      *&v22 = __PAIR64__(LODWORD(v16), LODWORD(v13));
      *(&v22 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v13));
      *(&v12 + 1) = v13;
      *(&v12 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
      v23 = v19 & 0xFFFFFFE0 | 8;
      if (v23 <= v19 + 1)
      {
        v23 = v19 + 1;
      }

      if ((v19 & 0xFFFFFFE0) + ((v23 + ~(v19 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8) > v19)
      {
        v19 = (v19 & 0xFFFFFFE0) + ((v23 + ~(v19 & 0xFFFFFFE0)) & 0xFFFFFFFFFFFFFFF8);
      }

      do
      {
        v24 = a11;
        v25 = v19;
        if (v19 + 32 <= v20)
        {
          do
          {
            v26 = v24;
            vst2q_f32(v26, *&v21);
            v26 += 8;
            vst2q_f32(v26, *&v21);
            v27 = v24 + 16;
            vst2q_f32(v27, *&v21);
            v28 = v24 + 24;
            vst2q_f32(v28, *&v21);
            v29 = v24 + 32;
            vst2q_f32(v29, *&v21);
            v30 = v24 + 40;
            vst2q_f32(v30, *&v21);
            v31 = v24 + 48;
            vst2q_f32(v31, *&v21);
            v32 = v24 + 56;
            vst2q_f32(v32, *&v21);
            v33 = v24 + 64;
            vst2q_f32(v33, *&v21);
            v34 = v24 + 72;
            vst2q_f32(v34, *&v21);
            v35 = v24 + 80;
            vst2q_f32(v35, *&v21);
            v36 = v24 + 88;
            vst2q_f32(v36, *&v21);
            v37 = v24 + 96;
            vst2q_f32(v37, *&v21);
            v38 = v24 + 104;
            vst2q_f32(v38, *&v21);
            v39 = v24 + 112;
            vst2q_f32(v39, *&v21);
            v40 = v24 + 120;
            v41 = v25 + 64;
            v25 += 32;
            v24 += 128;
            vst2q_f32(v40, *&v21);
          }

          while (v41 <= v20);
        }

        v42 = v25 + 8;
        while (v42 <= v20)
        {
          v43 = v24;
          vst2q_f32(v43, *&v21);
          v43 += 8;
          vst2q_f32(v43, *&v21);
          v44 = v24 + 16;
          vst2q_f32(v44, *&v21);
          v45 = v24 + 24;
          vst2q_f32(v45, *&v21);
          v24 += 32;
          v42 = v25 + 16;
          v25 += 8;
        }

        if (v25 < v20)
        {
          v46 = v20 - v25;
          do
          {
            *v24 = v12;
            v24 += 4;
            --v46;
          }

          while (v46);
        }

        a11 = (a11 + a12);
        v17 += a10;
      }

      while (v17 + a3[14] < v14);
    }
  }
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = HIDWORD(*(a2 + 56));
    v129 = 4;
    v18 = *(a4 + 8);
    v19 = a3[3];
    v127 = v19.i32[0];
    v125 = v18;
    v123[1] = result;
    v126 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v124 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v128 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
    if (*(*a5 + 24))
    {
      LODWORD(a5) = **a5;
    }

    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v22 = a3[6].u32[1];
    if (a3[7].u32[0] + v22 < v17)
    {
      v24 = a3[3].i32[1] * *(a2 + 60);
      v25 = a3[5].u32[1];
      v27.i64[0] = __PAIR64__(a7, a5);
      v26 = v25 + a9;
      v27.i64[1] = __PAIR64__(a7, a5);
      v120 = vdupq_n_s32(a6);
      do
      {
        v121 = v21;
        v122 = v27;
        v126 = v24 + v22;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
        v21 = v121;
        v27 = v122;
        v32 = v123[0];
        if (v123[0])
        {
          if (v25 >= 0x20)
          {
            v44 = 0;
            v33 = 0;
            v45 = v124 + v123[0];
            v46 = v124 + v123[0] + 2 * v124;
            v47 = v123[0] + 2 * v124;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v39 = xmmword_296B8F050;
            v40 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
            do
            {
              v133.val[1] = *(v123[0] + v44);
              v130.val[1] = *(v123[0] + v44 + 16);
              v137.val[1] = *(v45 + v44);
              v135.val[1] = *(v45 + v44 + 16);
              v133.val[0] = *(v47 + v44);
              v130.val[0] = *(v47 + v44 + 16);
              v137.val[0] = *(v46 + v44);
              v135.val[0] = *(v46 + v44 + 16);
              v139.val[1] = vqtbl2q_s8(v130, xmmword_296B8F000);
              v139.val[0] = vqtbl2q_s8(v135, xmmword_296B8F010);
              v139.val[0] = vqtbl2q_s8(v139, xmmword_296B8F020);
              v48 = vqtbl2q_s8(v130, xmmword_296B8F030);
              v139.val[1] = vqtbl2q_s8(v135, xmmword_296B8F040);
              v141.val[1] = vqtbl2q_s8(v130, xmmword_296B8F050);
              v141.val[0] = vqtbl2q_s8(v135, xmmword_296B8F060);
              v139.val[1] = vqtbl2q_s8(*(&v139 + 16), xmmword_296B8F020);
              v49 = vqtbl2q_s8(v141, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v130, xmmword_296B8F070);
              v130.val[0] = vqtbl2q_s8(v135, xmmword_296B8F080);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F050);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F060);
              v130.val[0] = vqtbl2q_s8(v130, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F070);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F080);
              v141.val[1] = vqtbl2q_s8(v133, xmmword_296B8F000);
              v141.val[0] = vqtbl2q_s8(v137, xmmword_296B8F010);
              v135.val[0] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v133.val[1] = vqtbl2q_s8(v133, xmmword_296B8F030);
              v133.val[0] = vqtbl2q_s8(v137, xmmword_296B8F040);
              v133.val[0] = vqtbl2q_s8(v133, xmmword_296B8F020);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vaddq_s32(vshlq_n_s64(v139.val[1], 0x20uLL), v139.val[1]);
              v50 = vaddq_s32(vshlq_n_s64(v49, 0x20uLL), v49);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v130.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v135.val[1] = vaddq_s32(vshlq_n_s64(v135.val[1], 0x20uLL), v135.val[1]);
              v133.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v30 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v133.val[0].i8, 1), v133.val[0]), vaddq_s32(vdupq_lane_s32(*v135.val[1].i8, 1), v135.val[1]));
              v31 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v139.val[1].i8, 1), v139.val[1]), vaddq_s32(vdupq_lane_s32(*v139.val[0].i8, 1), v139.val[0]));
              v29 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[0].i8, 1), v135.val[0]), vaddq_s32(vdupq_lane_s32(*v130.val[1].i8, 1), v130.val[1])), v30);
              v28 = vaddq_s32(vaddq_s32(v31, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v130.val[0].i8, 1), v130.val[0]), vaddq_s32(vdupq_lane_s32(*v50.i8, 1), v50))), v29);
              v33 += v28.u32[3];
              v51 = v44 + 64;
              v44 += 32;
            }

            while (v51 <= v25);
            v34 = v25 & 0xFFFFFFE0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v39 = xmmword_296B8F050;
            v40 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
          }

          if ((v34 | 8) <= v25)
          {
            do
            {
              v28.i64[0] = *(v123[0] + v34);
              v29.i64[0] = *(v124 + v123[0] + v34);
              v30.i64[0] = *(v123[0] + 2 * v124 + v34);
              v31.i64[0] = *(v124 + v123[0] + 2 * v124 + v34);
              v53 = vzip1q_s8(v31, v29);
              v54 = vzip1q_s8(v30, v28);
              v55 = vzip1q_s8(v53, v54);
              v56 = vzip2q_s8(v53, v54);
              v57 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v58 = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
              v29 = vdupq_lane_s32(*v58.i8, 1);
              v31 = vdupq_lane_s32(*v57.i8, 1);
              v30 = vaddq_s32(v31, v57);
              v28 = vaddq_s32(v29, v58);
              v33 += v28.i32[3] + v30.i32[3];
              v52 = v34 + 8;
              v59 = v34 + 16;
              v34 += 8;
            }

            while (v59 <= v25);
          }

          else
          {
            v52 = v34;
          }

          v60 = v25 - v52;
          if (v25 > v52)
          {
            v61 = (v52 + v123[0]);
            v62 = &v61[2 * v124];
            v63 = &v61[v124];
            do
            {
              v64 = *v61++;
              v65 = v64 << 24;
              v66 = *v63++;
              v67 = v65 | (v66 << 16);
              v68 = *v62++;
              v33 += v67 | (v68 << 8) | v68;
              --v60;
            }

            while (v60);
            v52 = v25;
          }

          if (v52 + 32 <= v26)
          {
            v71 = v124 + v123[0];
            v72 = v124 + v123[0] + 2 * v124;
            v73 = v123[0] + 2 * v124;
            v74 = a11;
            do
            {
              v131.val[1] = *(v32 + v52);
              v134.val[1] = *(v32 + v52 + 16);
              v136.val[1] = *(v71 + v52);
              v138.val[1] = *(v71 + v52 + 16);
              v131.val[0] = *(v73 + v52);
              v134.val[0] = *(v73 + v52 + 16);
              v136.val[0] = *(v72 + v52);
              v138.val[0] = *(v72 + v52 + 16);
              v140.val[1] = vqtbl2q_s8(v131, v42);
              v140.val[0] = vqtbl2q_s8(v136, v43);
              v140.val[0] = vqtbl2q_s8(v140, v37);
              v75 = vqtbl2q_s8(v131, v38);
              v140.val[1] = vqtbl2q_s8(v136, v40);
              v142.val[1] = vqtbl2q_s8(v134, v42);
              v142.val[0] = vqtbl2q_s8(v138, v43);
              v140.val[1] = vqtbl2q_s8(*(&v140 + 16), v37);
              v76 = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v134, v38);
              v142.val[0] = vqtbl2q_s8(v138, v40);
              v143.val[1] = vqtbl2q_s8(v134, v35);
              v143.val[0] = vqtbl2q_s8(v138, v36);
              v142.val[0] = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v143, v37);
              v134.val[1] = vqtbl2q_s8(v134, v39);
              v134.val[0] = vqtbl2q_s8(v138, v41);
              v138.val[1] = vqtbl2q_s8(v131, v35);
              v138.val[0] = vqtbl2q_s8(v136, v36);
              v134.val[0] = vqtbl2q_s8(v134, v37);
              v134.val[1] = vqtbl2q_s8(v138, v37);
              v131.val[1] = vqtbl2q_s8(v131, v39);
              v131.val[0] = vqtbl2q_s8(v136, v41);
              v131.val[0] = vqtbl2q_s8(v131, v37);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v140.val[1], 0x20uLL), v140.val[1]);
              v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v134.val[0] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v134.val[1] = vaddq_s32(vshlq_n_s64(v134.val[1], 0x20uLL), v134.val[1]);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v131.val[1] = vdupq_lane_s32(*v131.val[0].i8, 1);
              v136.val[0] = vdupq_lane_s32(*v134.val[1].i8, 1);
              v136.val[1] = vdupq_lane_s32(*v134.val[0].i8, 1);
              v142.val[0] = vdupq_lane_s32(*v138.val[0].i8, 1);
              v142.val[1] = vdupq_lane_s32(*v138.val[1].i8, 1);
              v143.val[0] = vdupq_lane_s32(*v77.i8, 1);
              v143.val[1] = vdupq_lane_s32(*v140.val[0].i8, 1);
              v131.val[1].i64[0] = 0;
              v131.val[1] = vaddq_s32(v131.val[1], v131.val[0]);
              v136.val[0].i64[0] = 0;
              v134.val[1] = vaddq_s32(v136.val[0], v134.val[1]);
              v136.val[0] = vdupq_lane_s32(*v140.val[1].i8, 1);
              v143.val[1].i64[0] = 0;
              v143.val[0].i64[0] = 0;
              v136.val[0].i64[0] = 0;
              v142.val[1].i64[0] = 0;
              v142.val[0].i64[0] = 0;
              v136.val[1].i64[0] = 0;
              v134.val[0] = vaddq_s32(v136.val[1], v134.val[0]);
              v136.val[1] = vaddq_s32(v142.val[0], v138.val[0]);
              v131.val[0] = vaddq_s32(v142.val[1], v138.val[1]);
              v138.val[0] = vaddq_s32(v143.val[0], v77);
              v78 = vaddq_s32(v143.val[1], v140.val[0]);
              v140.val[0] = vaddq_s32(v136.val[0], v140.val[1]);
              v136.val[0] = vaddq_s32(vdupq_laneq_s32(v138.val[0], 3), v134.val[0]);
              v142.val[0] = vaddq_s32(vdupq_laneq_s32(v78, 3), v131.val[1]);
              v140.val[1] = vdupq_laneq_s32(v142.val[0], 3);
              v138.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v140.val[0], 3), v134.val[1]), v140.val[1]);
              v134.val[1] = vdupq_laneq_s32(v136.val[0], 3);
              v131.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v131.val[0], 3), v136.val[1]), v134.val[1]);
              v134.val[0] = vdupq_laneq_s32(v138.val[1], 3);
              v136.val[1] = vdupq_n_s32(v33);
              v29 = vaddq_s32(vaddq_s32(v131.val[1], v136.val[1]), v134.val[0]);
              v142.val[0] = vaddq_s32(v142.val[0], v136.val[1]);
              v79 = vaddq_s32(v78, v136.val[1]);
              v21 = vzip2q_s32(v29, v120);
              v142.val[1] = vzip1q_s32(v79, v120);
              v80 = v74 + 16;
              v143.val[0] = v122;
              v81 = v74;
              vst2q_f32(v81, *(&v142 + 16));
              v81 += 8;
              v142.val[1] = vzip1q_s32(v142.val[0], v120);
              v143.val[0] = v122;
              vst2q_f32(v80, *(&v142 + 16));
              v82 = v74 + 24;
              v83 = v74 + 32;
              v140.val[0] = vaddq_s32(vaddq_s32(v140.val[0], v136.val[1]), v140.val[1]);
              v142.val[0] = vzip2q_s32(v142.val[0], v120);
              v142.val[1] = v122;
              vst2q_f32(v82, v142);
              v142.val[0] = vzip1q_s32(v140.val[0], v120);
              v142.val[1] = v122;
              vst2q_f32(v83, v142);
              v84 = v74 + 40;
              v85 = v74 + 48;
              v138.val[1] = vaddq_s32(v138.val[1], v136.val[1]);
              v140.val[0] = vzip2q_s32(v140.val[0], v120);
              v140.val[1] = v122;
              vst2q_f32(v84, v140);
              v140.val[0] = vzip1q_s32(v138.val[1], v120);
              v140.val[1] = v122;
              vst2q_f32(v85, v140);
              v140.val[0] = vzip2q_s32(v79, v120);
              v140.val[1] = v122;
              vst2q_f32(v81, v140);
              v86 = v74 + 56;
              v87 = v74 + 64;
              v138.val[0] = vaddq_s32(vaddq_s32(v138.val[0], v136.val[1]), v134.val[0]);
              v140.val[0] = vzip2q_s32(v138.val[1], v120);
              v140.val[1] = v122;
              vst2q_f32(v86, v140);
              v140.val[0] = vzip1q_s32(v138.val[0], v120);
              v140.val[1] = v122;
              vst2q_f32(v87, v140);
              v88 = v74 + 72;
              v89 = v74 + 80;
              v136.val[0] = vaddq_s32(vaddq_s32(v136.val[0], v136.val[1]), v134.val[0]);
              v138.val[0] = vzip2q_s32(v138.val[0], v120);
              v138.val[1] = v122;
              vst2q_f32(v88, v138);
              v138.val[0] = vzip1q_s32(v136.val[0], v120);
              v138.val[1] = v122;
              vst2q_f32(v89, v138);
              v90 = v74 + 88;
              v91 = v74 + 96;
              v28 = vaddq_s32(vaddq_s32(vaddq_s32(v131.val[0], v134.val[1]), v136.val[1]), v134.val[0]);
              v134.val[0] = vzip2q_s32(v136.val[0], v120);
              v134.val[1] = v122;
              vst2q_f32(v90, v134);
              v134.val[0] = vzip1q_s32(v28, v120);
              v134.val[1] = v122;
              vst2q_f32(v91, v134);
              v92 = v74 + 104;
              v93 = v74 + 112;
              v134.val[0] = vzip2q_s32(v28, v120);
              v134.val[1] = v122;
              vst2q_f32(v92, v134);
              v30 = vzip1q_s32(v29, v120);
              v31 = v122;
              vst2q_f32(v93, *v30.i8);
              v33 = v29.u32[3];
              v94 = v74 + 120;
              vst2q_f32(v94, *v21.i8);
              v69 = v74 + 128;
              v70 = v52 + 32;
              v95 = v52 + 64;
              v52 += 32;
              v74 += 128;
            }

            while (v95 <= v26);
          }

          else
          {
            v69 = a11;
            v70 = v52;
          }

          if (v70 + 8 <= v26)
          {
            v98 = v124 + v32;
            v99 = v124 + v32 + 2 * v124;
            v100 = v32 + 2 * v124;
            do
            {
              v28.i64[0] = *(v32 + v70);
              v29.i64[0] = *(v98 + v70);
              v30.i64[0] = *(v100 + v70);
              v31.i64[0] = *(v99 + v70);
              v101 = vzip1q_s8(v31, v29);
              v102 = vzip1q_s8(v30, v28);
              v103 = vzip1q_s8(v101, v102);
              v104 = vzip2q_s8(v101, v102);
              v105 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
              v106 = vaddq_s32(vshlq_n_s64(v104, 0x20uLL), v104);
              v107 = vdupq_lane_s32(*v106.i8, 1);
              v108 = vdupq_lane_s32(*v105.i8, 1);
              v108.i64[0] = 0;
              v107.i64[0] = 0;
              v109 = vaddq_s32(v108, v105);
              v110 = vdupq_laneq_s32(v109, 3);
              v111 = vdupq_n_s32(v33);
              v112 = vaddq_s32(v109, v111);
              v113 = vaddq_s32(vaddq_s32(v107, vaddq_s32(v106, v111)), v110);
              v33 = v113.u32[3];
              v31 = vzip1q_s32(v112, v120);
              v114 = v122;
              v115 = v69 + 16;
              v116 = v69 + 24;
              v117 = v69;
              vst2q_f32(v117, *v31.i8);
              v117 += 8;
              v132.val[0] = vzip2q_s32(v112, v120);
              v132.val[1] = v122;
              vst2q_f32(v117, v132);
              v132.val[0] = vzip1q_s32(v113, v120);
              v30 = v122;
              vst2q_f32(v115, *(&v30 - 1));
              v28 = vzip2q_s32(v113, v120);
              v29 = v122;
              vst2q_f32(v116, *v28.i8);
              v96 = v69 + 32;
              v97 = v70 + 8;
              v118 = v70 + 16;
              v70 += 8;
              v69 += 32;
            }

            while (v118 <= v26);
          }

          else
          {
            v96 = v69;
            v97 = v70;
          }

          if (v97 < v26)
          {
            do
            {
              v33 += (*(v123[0] + v97) << 24) | (*(v123[0] + v97 + v124) << 16) | (*(v123[0] + v97 + 2 * v124) << 8) | *(v123[0] + v97 + 2 * v124);
              *&v119 = __PAIR64__(a5, v33);
              *(&v119 + 1) = __PAIR64__(a7, a6);
              *v96 = v119;
              v96 += 4;
              ++v97;
            }

            while (v26 != v97);
          }
        }

        a11 = (a11 + a12);
        v22 += a10;
      }

      while (v22 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t **a5, uint64_t **a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = HIDWORD(*(a2 + 56));
    v129 = 2;
    v18 = *(a4 + 8);
    v19 = a3[3];
    v127 = v19.i32[0];
    v125 = v18;
    v123[1] = result;
    v126 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v124 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v128 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
    if (*(*a5 + 24))
    {
      _D0 = **a5;
      __asm { FCVT            H0, D0 }

      v27 = _D0;
    }

    else
    {
      v27 = 32256;
    }

    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v29 = _D0;
    }

    else
    {
      v29 = 32256;
    }

    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v31 = _D0;
    }

    else
    {
      v31 = 32256;
    }

    v32 = a3[6].u32[1];
    if (a3[7].u32[0] + v32 < v17)
    {
      v34 = a3[3].i32[1] * *(a2 + 60);
      v35 = a3[5].u32[1];
      v130.val[1] = vdupq_n_s16(v31);
      v36 = v35 + a9;
      v130.val[0] = vdupq_n_s16(v27);
      v37 = vqtbl2q_s8(v130, xmmword_296B6EDD0);
      v120 = vdupq_n_s16(v29);
      do
      {
        v121 = v21;
        v122 = v37;
        v126 = v34 + v32;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
        v40.i64[0] = 0xFFFFFFFF00000000;
        v40.i64[1] = 0xFFFFFFFF00000000;
        v21 = v121;
        v37 = v122;
        v41 = v123[0];
        if (v123[0])
        {
          if (v35 >= 0x20)
          {
            v44 = 0;
            v42 = 0;
            v45 = v124 + v123[0];
            do
            {
              v47 = *(v123[0] + v44);
              v46 = *(v123[0] + v44 + 16);
              v49 = *(v45 + v44);
              v48 = *(v45 + v44 + 16);
              v50 = vzip1q_s8(v49, v47);
              v51 = vzip2q_s8(v49, v47);
              v52 = vzip1q_s8(v48, v46);
              v53 = vzip2q_s8(v48, v46);
              v54 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
              v55 = vaddq_s16(vshlq_n_s32(v51, 0x10uLL), v51);
              v56 = vaddq_s16(vshlq_n_s32(v52, 0x10uLL), v52);
              v57 = vaddq_s16(vshlq_n_s32(v53, 0x10uLL), v53);
              v58 = vaddq_s16(vandq_s8(vqtbl1q_s8(v56, xmmword_296B8F090), v40), v56);
              v59 = vaddq_s16(vandq_s8(vqtbl1q_s8(v55, xmmword_296B8F090), v40), v55);
              v60 = vaddq_s16(vandq_s8(vqtbl1q_s8(v54, xmmword_296B8F090), v40), v54);
              v61 = vaddq_s16(vandq_s8(vqtbl1q_s8(v57, xmmword_296B8F090), v40), v57);
              v39 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v60.i8, 3), v60), vaddq_s16(vdupq_lane_s16(*v59.i8, 3), v59));
              v38 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v58.i8, 3), v58), vaddq_s16(vdupq_lane_s16(*v61.i8, 3), v61)), v39);
              v42 += v38.u16[7];
              v62 = v44 + 64;
              v44 += 32;
            }

            while (v62 <= v35);
            v43 = v35 & 0xFFFFFFE0;
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          if ((v43 | 8) <= v35)
          {
            do
            {
              v38.i64[0] = *(v123[0] + v43);
              v39.i64[0] = *(v124 + v123[0] + v43);
              v64 = vzip1q_s8(v39, v38);
              v65 = vaddq_s16(vshlq_n_s32(v64, 0x10uLL), v64);
              v39 = vextq_s8(v65, v65, 0xCuLL);
              v38 = vaddq_s16(v39, v65);
              v42 += v38.u16[7] + v38.u16[3];
              v63 = v43 + 8;
              v66 = v43 + 16;
              v43 += 8;
            }

            while (v66 <= v35);
          }

          else
          {
            v63 = v43;
          }

          v67 = v35 - v63;
          if (v35 > v63)
          {
            v68 = (v63 + v123[0] + v124);
            v69 = (v123[0] + v63);
            do
            {
              v71 = *v69++;
              v70 = v71;
              v72 = *v68++;
              v42 += v72 | (v70 << 8);
              --v67;
            }

            while (v67);
            v63 = v35;
          }

          if (v63 + 32 <= v36)
          {
            v75 = v124 + v123[0];
            v76 = a11;
            do
            {
              v78 = *(v41 + v63);
              v77 = *(v41 + v63 + 16);
              v80 = *(v75 + v63);
              v79 = *(v75 + v63 + 16);
              v81 = vzip2q_s8(v80, v78);
              v82 = vzip2q_s8(v79, v77);
              v83 = vzip1q_s8(v80, v78);
              v84 = vzip1q_s8(v79, v77);
              v85 = vaddq_s16(vshlq_n_s32(v81, 0x10uLL), v81);
              v86 = vaddq_s16(vshlq_n_s32(v82, 0x10uLL), v82);
              v87 = vaddq_s16(vshlq_n_s32(v84, 0x10uLL), v84);
              v88 = vaddq_s16(vshlq_n_s32(v83, 0x10uLL), v83);
              v89 = vaddq_s16(vandq_s8(vqtbl1q_s8(v87, xmmword_296B8F090), v40), v87);
              v90 = vaddq_s16(vandq_s8(vqtbl1q_s8(v86, xmmword_296B8F090), v40), v86);
              v91 = vaddq_s16(vandq_s8(vqtbl1q_s8(v85, xmmword_296B8F090), v40), v85);
              v92 = vaddq_s16(vandq_s8(vqtbl1q_s8(v88, xmmword_296B8F090), v40), v88);
              v93 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v92.i8, 3), xmmword_296B8F0A0), v92);
              v94 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v89.i8, 3), xmmword_296B8F0A0), v89);
              v95 = vaddq_s16(vdupq_laneq_s16(v93, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v91.i8, 3), xmmword_296B8F0A0), v91));
              v96 = vdupq_laneq_s16(v95, 7);
              v97 = vaddq_s16(vdupq_laneq_s16(v94, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v90.i8, 3), xmmword_296B8F0A0), v90));
              v98 = vdupq_n_s16(v42);
              v99 = vaddq_s16(v95, v98);
              v38 = vaddq_s16(vaddq_s16(v97, v98), v96);
              v100 = vaddq_s16(vaddq_s16(v94, v98), v96);
              v101 = vaddq_s16(v93, v98);
              v133.val[0] = vzip1q_s16(v101, v120);
              v102 = v76 + 32;
              v21 = vzip2q_s16(v38, v120);
              v103 = v76 + 48;
              v104 = v76 + 64;
              v105 = v76 + 80;
              v106 = v76 + 96;
              v107 = v76 + 112;
              v133.val[1] = v122;
              v108 = v76;
              vst2q_s16(v108, v133);
              result = v108 + 16;
              v133.val[0] = vzip1q_s16(v99, v120);
              v133.val[1] = v122;
              vst2q_s16(v102, v133);
              v132.val[0] = vzip2q_s16(v99, v120);
              v132.val[1] = v122;
              vst2q_s16(v103, v132);
              v132.val[0] = vzip1q_s16(v100, v120);
              v132.val[1] = v122;
              vst2q_s16(v104, v132);
              v132.val[0] = vzip2q_s16(v100, v120);
              v132.val[1] = v122;
              vst2q_s16(v105, v132);
              v132.val[0] = vzip1q_s16(v38, v120);
              v132.val[1] = v122;
              vst2q_s16(v106, v132);
              v39 = vzip2q_s16(v101, v120);
              v132.val[0] = v122;
              vst2q_s16(result, *v39.i8);
              v42 = v38.u16[7];
              vst2q_s16(v107, *v21.i8);
              v73 = v76 + 128;
              v74 = v63 + 32;
              v109 = v63 + 64;
              v63 += 32;
              v76 += 128;
            }

            while (v109 <= v36);
          }

          else
          {
            v73 = a11;
            v74 = v63;
          }

          if (v74 + 8 <= v36)
          {
            v112 = v124 + v41;
            do
            {
              v38.i64[0] = *(v41 + v74);
              v39.i64[0] = *(v112 + v74);
              v113 = vzip1q_s8(v39, v38);
              v114 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
              v115 = vaddq_s16(vandq_s8(vqtbl1q_s8(v114, xmmword_296B8F090), v40), v114);
              v116 = vaddq_s16(vaddq_s16(v115, vdupq_n_s16(v42)), vandq_s8(vdupq_lane_s16(*v115.i8, 3), xmmword_296B8F0A0));
              v42 = v116.u16[7];
              v131.val[0] = vzip1q_s16(v116, v120);
              v131.val[1] = v122;
              v110 = v73 + 32;
              vst2q_s16(v73, v131);
              v117 = v73 + 16;
              v38 = vzip2q_s16(v116, v120);
              v39 = v122;
              vst2q_s16(v117, *v38.i8);
              v111 = v74 + 8;
              v118 = v74 + 16;
              v74 += 8;
              v73 = v110;
            }

            while (v118 <= v36);
          }

          else
          {
            v110 = v73;
            v111 = v74;
          }

          if (v111 < v36)
          {
            do
            {
              v42 += *(v123[0] + v111 + v124) | (*(v123[0] + v111) << 8);
              LOWORD(v119) = v42;
              WORD1(v119) = v27;
              WORD2(v119) = v29;
              HIWORD(v119) = v31;
              *v110 = v119;
              v110 += 4;
              ++v111;
            }

            while (v36 != v111);
          }
        }

        a11 = (a11 + a12);
        v32 += a10;
      }

      while (v32 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = HIDWORD(*(a2 + 56));
    v136 = 3;
    v18 = *(a4 + 8);
    v19 = a3[3];
    v134 = v19.i32[0];
    v132 = v18;
    v130[1] = result;
    v133 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v131 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v135 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v130);
    if (*(*a5 + 24))
    {
      v23 = **a5;
    }

    else
    {
      v23 = NAN;
    }

    if (*(*a6 + 24))
    {
      *v21.i32 = **a6;
    }

    else
    {
      v21.i32[0] = 2143289344;
    }

    if (*(*a7 + 24))
    {
      v24 = **a7;
    }

    else
    {
      v24 = NAN;
    }

    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v17)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = v28 + a9;
      v30.i64[0] = __PAIR64__(LODWORD(v24), LODWORD(v23));
      v30.i64[1] = __PAIR64__(LODWORD(v24), LODWORD(v23));
      v126 = v21.i32[0];
      v127 = v23;
      v124 = vdupq_lane_s32(v21, 0);
      v125 = v24;
      do
      {
        v128 = v22;
        v129 = v30;
        v133 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v130);
        v22 = v128;
        v30 = v129;
        v34 = v130[0];
        if (v130[0])
        {
          if (v28 >= 0x20)
          {
            v46 = 0;
            v47 = v130[0] + 2 * v131;
            v48 = v131 + v130[0];
            v36.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v37 = xmmword_296B8F050;
            v40 = xmmword_296B8F000;
            v39 = xmmword_296B8F020;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F0C0;
            v44 = xmmword_296B8F030;
            v43 = xmmword_296B8F0D0;
            v45 = xmmword_296B8F0E0;
            do
            {
              v137.val[1] = *(v130[0] + v46);
              v140.val[1] = *(v130[0] + v46 + 16);
              v50 = *(v48 + v46);
              v49 = *(v48 + v46 + 16);
              v137.val[0] = *(v47 + v46);
              v140.val[0] = *(v47 + v46 + 16);
              v143.val[1] = vqtbl2q_s8(v137, xmmword_296B8F050);
              v143.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0B0);
              v51 = vqtbl2q_s8(v143, xmmword_296B8F020);
              v143.val[1] = vqtbl2q_s8(v140, xmmword_296B8F050);
              v143.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0B0);
              v143.val[0] = vqtbl2q_s8(v143, xmmword_296B8F020);
              v52 = vqtbl2q_s8(v140, xmmword_296B8F000);
              v143.val[1] = vqtbl1q_s8(v49, xmmword_296B8F0C0);
              v143.val[1] = vqtbl2q_s8(*(&v143 + 16), xmmword_296B8F020);
              v145.val[1] = vqtbl2q_s8(v137, xmmword_296B8F070);
              v145.val[0] = vqtbl1q_s8(v50, xmmword_296B8F0D0);
              v145.val[0] = vqtbl2q_s8(v145, xmmword_296B8F020);
              v53 = vqtbl2q_s8(v137, xmmword_296B8F000);
              v145.val[1] = vqtbl1q_s8(v50, xmmword_296B8F0C0);
              v137.val[1] = vqtbl2q_s8(v137, xmmword_296B8F030);
              v137.val[0] = vqtbl1q_s8(v50, v45);
              v148.val[1] = vqtbl2q_s8(v140, xmmword_296B8F070);
              v54 = vqtbl2q_s8(*(&v145 + 16), xmmword_296B8F020);
              v148.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0D0);
              v145.val[1] = vqtbl2q_s8(v148, xmmword_296B8F020);
              v140.val[1] = vqtbl2q_s8(v140, xmmword_296B8F030);
              v140.val[0] = vqtbl1q_s8(v49, v45);
              v140.val[0] = vqtbl2q_s8(v140, xmmword_296B8F020);
              v137.val[0] = vqtbl2q_s8(v137, xmmword_296B8F020);
              v55 = vaddq_s32(vshlq_n_s64(v51, 0x20uLL), v51);
              v143.val[0] = vaddq_s32(vshlq_n_s64(v143.val[0], 0x20uLL), v143.val[0]);
              v143.val[1] = vaddq_s32(vshlq_n_s64(v143.val[1], 0x20uLL), v143.val[1]);
              v145.val[0] = vaddq_s32(vshlq_n_s64(v145.val[0], 0x20uLL), v145.val[0]);
              v56 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
              v137.val[0] = vaddq_s32(vshlq_n_s64(v137.val[0], 0x20uLL), v137.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v145.val[1], 0x20uLL), v145.val[1]);
              v137.val[1] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v148.val[1] = vdupq_lane_s32(*v143.val[1].i8, 1);
              v57 = vdupq_lane_s32(*v143.val[0].i8, 1);
              v58 = vdupq_lane_s32(*v55.i8, 1);
              v58.i64[0] = 0;
              v57.i64[0] = 0;
              v148.val[1].i64[0] = 0;
              v140.val[0] = vaddq_s32(v58, v55);
              v45 = xmmword_296B8F0E0;
              v33 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v145.val[0].i8, 1), v145.val[0]), v140.val[0]);
              v32 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v137.val[1].i8, 1), v137.val[1]), 3), vaddq_s32(v148.val[1], v143.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v140.val[1].i8, 1), v140.val[1]), 3), vaddq_s32(v57, v143.val[0])));
              v31 = vaddq_s32(v32, vaddq_s32(v33, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v137.val[0].i8, 1), v137.val[0]), vaddq_s32(vdupq_lane_s32(*v56.i8, 1), v56))));
              v36 = vaddq_s32(v31, vdupq_lane_s32(*v36.i8, 0));
              v36.i32[0] = v36.i32[3];
              v59 = v46 + 64;
              v46 += 32;
            }

            while (v59 <= v28);
            v35 = v28 & 0xFFFFFFE0;
          }

          else
          {
            v35 = 0;
            v36.i64[0] = 0;
            v38 = xmmword_296B8F0B0;
            v37 = xmmword_296B8F050;
            v40 = xmmword_296B8F000;
            v39 = xmmword_296B8F020;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F0C0;
            v44 = xmmword_296B8F030;
            v43 = xmmword_296B8F0D0;
            v45 = xmmword_296B8F0E0;
          }

          if ((v35 | 8) <= v28)
          {
            do
            {
              v31.i64[0] = *(v130[0] + v35);
              v32.i64[0] = *(v131 + v130[0] + v35);
              v33.i64[0] = *(v130[0] + 2 * v131 + v35);
              v61 = vzip1q_s8(0, v32);
              v62 = vzip1q_s8(v33, v31);
              v63 = vzip1q_s8(v61, v62);
              v64 = vzip2q_s8(v61, v62);
              v31 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
              v32 = vdupq_lane_s32(*v31.i8, 1);
              v65 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
              v33 = vaddq_s32(vdupq_lane_s32(*v65.i8, 1), v65);
              v36 = vaddq_s32(v32, vaddq_s32(v31, vdupq_lane_s32(*v36.i8, 0)));
              v36.i32[0] = v36.i32[3] + v33.i32[3];
              v60 = v35 + 8;
              v66 = v35 + 16;
              v35 += 8;
            }

            while (v66 <= v28);
          }

          else
          {
            v60 = v35;
          }

          if (v60 <= v28)
          {
            v67 = v28;
          }

          else
          {
            v67 = v60;
          }

          if (v67 + 32 <= v29)
          {
            v70 = v130[0] + 2 * v131;
            v71 = v131 + v130[0];
            v72 = a11;
            do
            {
              v138.val[1] = *(v34 + v67);
              v141.val[1] = *(v34 + v67 + 16);
              v74 = *(v71 + v67);
              v73 = *(v71 + v67 + 16);
              v138.val[0] = *(v70 + v67);
              v141.val[0] = *(v70 + v67 + 16);
              v144.val[1] = vqtbl2q_s8(v138, v42);
              v144.val[0] = vqtbl1q_s8(v74, v43);
              v75 = vqtbl2q_s8(v144, v39);
              v144.val[1] = vqtbl2q_s8(v138, v44);
              v144.val[0] = vqtbl1q_s8(v74, v45);
              v146.val[1] = vqtbl2q_s8(v141, v42);
              v146.val[0] = vqtbl1q_s8(v73, v43);
              v144.val[0] = vqtbl2q_s8(v144, v39);
              v144.val[1] = vqtbl2q_s8(v146, v39);
              v146.val[1] = vqtbl2q_s8(v141, v44);
              v146.val[0] = vqtbl1q_s8(v73, v45);
              v147.val[1] = vqtbl2q_s8(v141, v40);
              v147.val[0] = vqtbl1q_s8(v73, v41);
              v146.val[0] = vqtbl2q_s8(v146, v39);
              v146.val[1] = vqtbl2q_s8(v147, v39);
              v141.val[1] = vqtbl2q_s8(v141, v37);
              v141.val[0] = vqtbl1q_s8(v73, v38);
              v147.val[1] = vqtbl2q_s8(v138, v40);
              v147.val[0] = vqtbl1q_s8(v74, v41);
              v141.val[0] = vqtbl2q_s8(v141, v39);
              v141.val[1] = vqtbl2q_s8(v147, v39);
              v138.val[1] = vqtbl2q_s8(v138, v37);
              v138.val[0] = vqtbl1q_s8(v74, v38);
              v138.val[0] = vqtbl2q_s8(v138, v39);
              v76 = vaddq_s32(vshlq_n_s64(v75, 0x20uLL), v75);
              v144.val[0] = vaddq_s32(vshlq_n_s64(v144.val[0], 0x20uLL), v144.val[0]);
              v144.val[1] = vaddq_s32(vshlq_n_s64(v144.val[1], 0x20uLL), v144.val[1]);
              v146.val[0] = vaddq_s32(vshlq_n_s64(v146.val[0], 0x20uLL), v146.val[0]);
              v146.val[1] = vaddq_s32(vshlq_n_s64(v146.val[1], 0x20uLL), v146.val[1]);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v138.val[0], 0x20uLL), v138.val[0]);
              v138.val[1] = vdupq_lane_s32(*v138.val[0].i8, 1);
              v77 = vdupq_lane_s32(*v141.val[1].i8, 1);
              v78 = vdupq_lane_s32(*v141.val[0].i8, 1);
              v147.val[0] = vdupq_lane_s32(*v146.val[1].i8, 1);
              v147.val[1] = vdupq_lane_s32(*v146.val[0].i8, 1);
              v79 = vdupq_lane_s32(*v144.val[1].i8, 1);
              v80 = vdupq_lane_s32(*v76.i8, 1);
              v138.val[1].i64[0] = 0;
              v138.val[1] = vaddq_s32(v138.val[1], v138.val[0]);
              v77.i64[0] = 0;
              v81 = vaddq_s32(v77, v141.val[1]);
              v141.val[1] = vdupq_lane_s32(*v144.val[0].i8, 1);
              v80.i64[0] = 0;
              v79.i64[0] = 0;
              v141.val[1].i64[0] = 0;
              v147.val[1].i64[0] = 0;
              v147.val[0].i64[0] = 0;
              v78.i64[0] = 0;
              v141.val[0] = vaddq_s32(v78, v141.val[0]);
              v138.val[0] = vaddq_s32(v147.val[1], v146.val[0]);
              v82 = vaddq_s32(v79, v144.val[1]);
              v146.val[0] = vaddq_s32(v80, v76);
              v144.val[0] = vaddq_s32(v141.val[1], v144.val[0]);
              v146.val[1] = vaddq_s32(vdupq_laneq_s32(v138.val[0], 3), vaddq_s32(v147.val[0], v146.val[1]));
              v141.val[1] = vaddq_s32(vdupq_laneq_s32(v82, 3), v141.val[0]);
              v147.val[0] = vaddq_s32(vdupq_laneq_s32(v146.val[0], 3), v138.val[1]);
              v144.val[1] = vdupq_laneq_s32(v147.val[0], 3);
              v83 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v144.val[0], 3), v81), v144.val[1]);
              v141.val[0] = vdupq_laneq_s32(v141.val[1], 3);
              v138.val[1] = vdupq_laneq_s32(v83, 3);
              v84 = vdupq_lane_s32(*v36.i8, 0);
              v36 = vaddq_s32(vaddq_s32(vaddq_s32(v146.val[1], v141.val[0]), v84), v138.val[1]);
              v146.val[1] = vaddq_s32(v147.val[0], v84);
              v146.val[0] = vaddq_s32(v146.val[0], v84);
              v22 = vzip2q_s32(v36, v124);
              v147.val[0] = vzip1q_s32(v146.val[0], v124);
              v85 = v72 + 16;
              v147.val[1] = v129;
              v86 = v72;
              vst2q_f32(v86, v147);
              v86 += 8;
              v147.val[0] = vzip1q_s32(v146.val[1], v124);
              v147.val[1] = v129;
              vst2q_f32(v85, v147);
              v87 = v72 + 24;
              v88 = v72 + 32;
              v144.val[0] = vaddq_s32(vaddq_s32(v144.val[0], v84), v144.val[1]);
              v146.val[1] = vzip2q_s32(v146.val[1], v124);
              v147.val[0] = v129;
              vst2q_f32(v87, *(&v146 + 16));
              v146.val[1] = vzip1q_s32(v144.val[0], v124);
              v147.val[0] = v129;
              vst2q_f32(v88, *(&v146 + 16));
              v89 = v72 + 40;
              v90 = v72 + 48;
              v91 = vaddq_s32(v83, v84);
              v144.val[0] = vzip2q_s32(v144.val[0], v124);
              v144.val[1] = v129;
              vst2q_f32(v89, v144);
              v144.val[0] = vzip1q_s32(v91, v124);
              v144.val[1] = v129;
              vst2q_f32(v90, v144);
              v144.val[0] = vzip2q_s32(v146.val[0], v124);
              v144.val[1] = v129;
              vst2q_f32(v86, v144);
              v92 = v72 + 56;
              v93 = v72 + 64;
              v94 = vaddq_s32(vaddq_s32(v82, v84), v138.val[1]);
              v144.val[0] = vzip2q_s32(v91, v124);
              v144.val[1] = v129;
              vst2q_f32(v92, v144);
              v144.val[0] = vzip1q_s32(v94, v124);
              v144.val[1] = v129;
              vst2q_f32(v93, v144);
              v95 = v72 + 72;
              v96 = v72 + 80;
              v141.val[1] = vaddq_s32(vaddq_s32(v141.val[1], v84), v138.val[1]);
              v142.val[0] = vzip2q_s32(v94, v124);
              v142.val[1] = v129;
              vst2q_f32(v95, v142);
              v142.val[0] = vzip1q_s32(v141.val[1], v124);
              v142.val[1] = v129;
              vst2q_f32(v96, v142);
              v97 = v72 + 88;
              v98 = v72 + 96;
              v138.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v138.val[0], v141.val[0]), v84), v138.val[1]);
              v138.val[1] = vzip2q_s32(v141.val[1], v124);
              v141.val[0] = v129;
              vst2q_f32(v97, *(&v138 + 16));
              v138.val[1] = vzip1q_s32(v138.val[0], v124);
              v33 = v129;
              vst2q_f32(v98, *(&v33 - 1));
              v99 = v72 + 104;
              v100 = v72 + 112;
              v138.val[0] = vzip2q_s32(v138.val[0], v124);
              v138.val[1] = v129;
              vst2q_f32(v99, v138);
              v31 = vzip1q_s32(v36, v124);
              v32 = v129;
              vst2q_f32(v100, *v31.i8);
              v68 = v72 + 128;
              v101 = v72 + 120;
              vst2q_f32(v101, *v22.i8);
              v36.i32[0] = v36.i32[3];
              v69 = v67 + 32;
              v102 = v67 + 64;
              v67 += 32;
              v72 = v68;
            }

            while (v102 <= v29);
          }

          else
          {
            v68 = a11;
            v69 = v67;
          }

          if (v69 + 8 <= v29)
          {
            v105 = v34 + 2 * v131;
            v106 = v131 + v34;
            do
            {
              v31.i64[0] = *(v34 + v69);
              v32.i64[0] = *(v106 + v69);
              v33.i64[0] = *(v105 + v69);
              v107 = vzip1q_s8(0, v32);
              v108 = vzip1q_s8(v33, v31);
              v109 = vzip1q_s8(v107, v108);
              v110 = vzip2q_s8(v107, v108);
              v111 = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
              v112 = vaddq_s32(vshlq_n_s64(v110, 0x20uLL), v110);
              v113 = vdupq_lane_s32(*v112.i8, 1);
              v114 = vdupq_lane_s32(*v111.i8, 1);
              v114.i64[0] = 0;
              v113.i64[0] = 0;
              v115 = vaddq_s32(v114, v111);
              v116 = vdupq_laneq_s32(v115, 3);
              v117 = vdupq_lane_s32(*v36.i8, 0);
              v33 = vaddq_s32(v115, v117);
              v36 = vaddq_s32(vaddq_s32(v113, vaddq_s32(v112, v117)), v116);
              v139.val[0] = vzip1q_s32(v33, v124);
              v139.val[1] = v129;
              v103 = v68 + 32;
              v118 = v68 + 16;
              v119 = v68 + 24;
              vst2q_f32(v68, v139);
              v120 = v68 + 8;
              v139.val[0] = vzip2q_s32(v33, v124);
              v139.val[1] = v129;
              vst2q_f32(v120, v139);
              v139.val[0] = vzip1q_s32(v36, v124);
              v139.val[1] = v129;
              vst2q_f32(v118, v139);
              v31 = vzip2q_s32(v36, v124);
              v32 = v129;
              vst2q_f32(v119, *v31.i8);
              v36.i32[0] = v36.i32[3];
              v104 = v69 + 8;
              v121 = v69 + 16;
              v69 += 8;
              v68 = v103;
            }

            while (v121 <= v29);
          }

          else
          {
            v103 = v68;
            v104 = v69;
          }

          if (v104 < v29)
          {
            v122 = v36.i32[0];
            do
            {
              LODWORD(v123) = ((*(v130[0] + v104) << 24) | (*(v130[0] + v104 + v131) << 16) | (*(v130[0] + v104 + 2 * v131) << 8)) + v122;
              *(&v123 + 1) = v127;
              *(&v123 + 1) = __PAIR64__(LODWORD(v125), v126);
              *v103 = v123;
              v103 += 4;
              ++v104;
            }

            while (v29 != v104);
          }
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      v12 = **a4;
    }

    v129 = 4;
    v18 = *(a5 + 8);
    v19 = a3[3];
    v127 = v19.i32[0];
    v125 = v18;
    v123[1] = result;
    v126 = a3[6].i32[1] + v19.i32[1] * v17;
    v20 = a3[7].u32[1];
    v124 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v128 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v22 = a3[6].u32[1];
    if (a3[7].u32[0] + v22 < v17)
    {
      v24 = a3[3].i32[1] * *(a2 + 60);
      v25 = a3[5].u32[1];
      v27.i64[0] = __PAIR64__(a6, v12);
      v26 = v25 + a9;
      v27.i64[1] = __PAIR64__(a6, v12);
      v120 = vdupq_n_s32(a7);
      do
      {
        v121 = v27;
        v122 = v21;
        v126 = v24 + v22;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v123);
        v27 = v121;
        v21 = v122;
        v32 = v123[0];
        if (v123[0])
        {
          if (v25 >= 0x20)
          {
            v44 = 0;
            v33 = 0;
            v45 = v124 + v123[0];
            v46 = v124 + v123[0] + 2 * v124;
            v47 = v123[0] + 2 * v124;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
            do
            {
              v133.val[1] = *(v123[0] + v44);
              v130.val[1] = *(v123[0] + v44 + 16);
              v137.val[1] = *(v45 + v44);
              v135.val[1] = *(v45 + v44 + 16);
              v133.val[0] = *(v47 + v44);
              v130.val[0] = *(v47 + v44 + 16);
              v137.val[0] = *(v46 + v44);
              v135.val[0] = *(v46 + v44 + 16);
              v139.val[1] = vqtbl2q_s8(v130, xmmword_296B8F000);
              v139.val[0] = vqtbl2q_s8(v135, xmmword_296B8F010);
              v139.val[0] = vqtbl2q_s8(v139, xmmword_296B8F020);
              v48 = vqtbl2q_s8(v130, xmmword_296B8F030);
              v139.val[1] = vqtbl2q_s8(v135, xmmword_296B8F040);
              v141.val[1] = vqtbl2q_s8(v130, xmmword_296B8F050);
              v141.val[0] = vqtbl2q_s8(v135, xmmword_296B8F060);
              v139.val[1] = vqtbl2q_s8(*(&v139 + 16), xmmword_296B8F020);
              v49 = vqtbl2q_s8(v141, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v130, xmmword_296B8F070);
              v130.val[0] = vqtbl2q_s8(v135, xmmword_296B8F080);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F050);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F060);
              v130.val[0] = vqtbl2q_s8(v130, xmmword_296B8F020);
              v130.val[1] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v133, xmmword_296B8F070);
              v135.val[0] = vqtbl2q_s8(v137, xmmword_296B8F080);
              v141.val[1] = vqtbl2q_s8(v133, xmmword_296B8F000);
              v141.val[0] = vqtbl2q_s8(v137, xmmword_296B8F010);
              v135.val[0] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v135.val[1] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v133.val[1] = vqtbl2q_s8(v133, xmmword_296B8F030);
              v133.val[0] = vqtbl2q_s8(v137, xmmword_296B8F040);
              v133.val[0] = vqtbl2q_s8(v133, xmmword_296B8F020);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vaddq_s32(vshlq_n_s64(v139.val[1], 0x20uLL), v139.val[1]);
              v50 = vaddq_s32(vshlq_n_s64(v49, 0x20uLL), v49);
              v130.val[0] = vaddq_s32(vshlq_n_s64(v130.val[0], 0x20uLL), v130.val[0]);
              v130.val[1] = vaddq_s32(vshlq_n_s64(v130.val[1], 0x20uLL), v130.val[1]);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v135.val[1] = vaddq_s32(vshlq_n_s64(v135.val[1], 0x20uLL), v135.val[1]);
              v133.val[0] = vaddq_s32(vshlq_n_s64(v133.val[0], 0x20uLL), v133.val[0]);
              v30 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v133.val[0].i8, 1), v133.val[0]), vaddq_s32(vdupq_lane_s32(*v135.val[1].i8, 1), v135.val[1]));
              v31 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v139.val[1].i8, 1), v139.val[1]), vaddq_s32(vdupq_lane_s32(*v139.val[0].i8, 1), v139.val[0]));
              v29 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[0].i8, 1), v135.val[0]), vaddq_s32(vdupq_lane_s32(*v130.val[1].i8, 1), v130.val[1])), v30);
              v28 = vaddq_s32(vaddq_s32(v31, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v130.val[0].i8, 1), v130.val[0]), vaddq_s32(vdupq_lane_s32(*v50.i8, 1), v50))), v29);
              v33 += v28.u32[3];
              v51 = v44 + 64;
              v44 += 32;
            }

            while (v51 <= v25);
            v34 = v25 & 0xFFFFFFE0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v36 = xmmword_296B8F010;
            v35 = xmmword_296B8F000;
            v38 = xmmword_296B8F030;
            v37 = xmmword_296B8F020;
            v40 = xmmword_296B8F050;
            v39 = xmmword_296B8F040;
            v42 = xmmword_296B8F070;
            v41 = xmmword_296B8F060;
            v43 = xmmword_296B8F080;
          }

          if ((v34 | 8) <= v25)
          {
            do
            {
              v28.i64[0] = *(v123[0] + v34);
              v29.i64[0] = *(v124 + v123[0] + v34);
              v30.i64[0] = *(v123[0] + 2 * v124 + v34);
              v31.i64[0] = *(v124 + v123[0] + 2 * v124 + v34);
              v53 = vzip1q_s8(v31, v29);
              v54 = vzip1q_s8(v30, v28);
              v55 = vzip1q_s8(v53, v54);
              v56 = vzip2q_s8(v53, v54);
              v57 = vaddq_s32(vshlq_n_s64(v55, 0x20uLL), v55);
              v58 = vaddq_s32(vshlq_n_s64(v56, 0x20uLL), v56);
              v29 = vdupq_lane_s32(*v58.i8, 1);
              v31 = vdupq_lane_s32(*v57.i8, 1);
              v30 = vaddq_s32(v31, v57);
              v28 = vaddq_s32(v29, v58);
              v33 += v28.i32[3] + v30.i32[3];
              v52 = v34 + 8;
              v59 = v34 + 16;
              v34 += 8;
            }

            while (v59 <= v25);
          }

          else
          {
            v52 = v34;
          }

          v60 = v25 - v52;
          if (v25 > v52)
          {
            v61 = (v52 + v123[0]);
            v62 = &v61[2 * v124];
            v63 = &v61[v124];
            do
            {
              v64 = *v61++;
              v65 = v64 << 24;
              v66 = *v63++;
              v67 = v65 | (v66 << 16);
              v68 = *v62++;
              v33 += v67 | (v68 << 8) | v68;
              --v60;
            }

            while (v60);
            v52 = v25;
          }

          if (v52 + 32 <= v26)
          {
            v71 = v124 + v123[0];
            v72 = v124 + v123[0] + 2 * v124;
            v73 = v123[0] + 2 * v124;
            v74 = a11;
            do
            {
              v131.val[1] = *(v32 + v52);
              v134.val[1] = *(v32 + v52 + 16);
              v136.val[1] = *(v71 + v52);
              v138.val[1] = *(v71 + v52 + 16);
              v131.val[0] = *(v73 + v52);
              v134.val[0] = *(v73 + v52 + 16);
              v136.val[0] = *(v72 + v52);
              v138.val[0] = *(v72 + v52 + 16);
              v140.val[1] = vqtbl2q_s8(v131, v42);
              v140.val[0] = vqtbl2q_s8(v136, v43);
              v140.val[0] = vqtbl2q_s8(v140, v37);
              v75 = vqtbl2q_s8(v131, v38);
              v140.val[1] = vqtbl2q_s8(v136, v39);
              v142.val[1] = vqtbl2q_s8(v134, v42);
              v142.val[0] = vqtbl2q_s8(v138, v43);
              v140.val[1] = vqtbl2q_s8(*(&v140 + 16), v37);
              v76 = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v134, v38);
              v142.val[0] = vqtbl2q_s8(v138, v39);
              v143.val[1] = vqtbl2q_s8(v134, v35);
              v143.val[0] = vqtbl2q_s8(v138, v36);
              v142.val[0] = vqtbl2q_s8(v142, v37);
              v142.val[1] = vqtbl2q_s8(v143, v37);
              v134.val[1] = vqtbl2q_s8(v134, v40);
              v134.val[0] = vqtbl2q_s8(v138, v41);
              v138.val[1] = vqtbl2q_s8(v131, v35);
              v138.val[0] = vqtbl2q_s8(v136, v36);
              v134.val[0] = vqtbl2q_s8(v134, v37);
              v134.val[1] = vqtbl2q_s8(v138, v37);
              v131.val[1] = vqtbl2q_s8(v131, v40);
              v131.val[0] = vqtbl2q_s8(v136, v41);
              v131.val[0] = vqtbl2q_s8(v131, v37);
              v140.val[0] = vaddq_s32(vshlq_n_s64(v140.val[0], 0x20uLL), v140.val[0]);
              v140.val[1] = vaddq_s32(vshlq_n_s64(v140.val[1], 0x20uLL), v140.val[1]);
              v77 = vaddq_s32(vshlq_n_s64(v76, 0x20uLL), v76);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v138.val[0] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v134.val[0] = vaddq_s32(vshlq_n_s64(v134.val[0], 0x20uLL), v134.val[0]);
              v134.val[1] = vaddq_s32(vshlq_n_s64(v134.val[1], 0x20uLL), v134.val[1]);
              v131.val[0] = vaddq_s32(vshlq_n_s64(v131.val[0], 0x20uLL), v131.val[0]);
              v131.val[1] = vdupq_lane_s32(*v131.val[0].i8, 1);
              v136.val[0] = vdupq_lane_s32(*v134.val[1].i8, 1);
              v136.val[1] = vdupq_lane_s32(*v134.val[0].i8, 1);
              v142.val[0] = vdupq_lane_s32(*v138.val[0].i8, 1);
              v142.val[1] = vdupq_lane_s32(*v138.val[1].i8, 1);
              v143.val[0] = vdupq_lane_s32(*v77.i8, 1);
              v143.val[1] = vdupq_lane_s32(*v140.val[0].i8, 1);
              v131.val[1].i64[0] = 0;
              v131.val[1] = vaddq_s32(v131.val[1], v131.val[0]);
              v136.val[0].i64[0] = 0;
              v134.val[1] = vaddq_s32(v136.val[0], v134.val[1]);
              v136.val[0] = vdupq_lane_s32(*v140.val[1].i8, 1);
              v143.val[1].i64[0] = 0;
              v143.val[0].i64[0] = 0;
              v136.val[0].i64[0] = 0;
              v142.val[1].i64[0] = 0;
              v142.val[0].i64[0] = 0;
              v136.val[1].i64[0] = 0;
              v134.val[0] = vaddq_s32(v136.val[1], v134.val[0]);
              v136.val[1] = vaddq_s32(v142.val[0], v138.val[0]);
              v131.val[0] = vaddq_s32(v142.val[1], v138.val[1]);
              v138.val[0] = vaddq_s32(v143.val[0], v77);
              v78 = vaddq_s32(v143.val[1], v140.val[0]);
              v140.val[0] = vaddq_s32(v136.val[0], v140.val[1]);
              v136.val[0] = vaddq_s32(vdupq_laneq_s32(v138.val[0], 3), v134.val[0]);
              v142.val[0] = vaddq_s32(vdupq_laneq_s32(v78, 3), v131.val[1]);
              v140.val[1] = vdupq_laneq_s32(v142.val[0], 3);
              v138.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v140.val[0], 3), v134.val[1]), v140.val[1]);
              v134.val[1] = vdupq_laneq_s32(v136.val[0], 3);
              v131.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v131.val[0], 3), v136.val[1]), v134.val[1]);
              v134.val[0] = vdupq_laneq_s32(v138.val[1], 3);
              v136.val[1] = vdupq_n_s32(v33);
              v29 = vaddq_s32(vaddq_s32(v131.val[1], v136.val[1]), v134.val[0]);
              v142.val[0] = vaddq_s32(v142.val[0], v136.val[1]);
              v79 = vaddq_s32(v78, v136.val[1]);
              v21 = vzip2q_s32(v29, v120);
              v143.val[0] = vzip1q_s32(v79, v120);
              v80 = v74 + 16;
              v142.val[1] = v121;
              v81 = v74;
              vst2q_f32(v81, *(&v142 + 16));
              v81 += 8;
              v143.val[0] = vzip1q_s32(v142.val[0], v120);
              v142.val[1] = v121;
              vst2q_f32(v80, *(&v142 + 16));
              v82 = v74 + 24;
              v83 = v74 + 32;
              v140.val[0] = vaddq_s32(vaddq_s32(v140.val[0], v136.val[1]), v140.val[1]);
              v142.val[1] = vzip2q_s32(v142.val[0], v120);
              v142.val[0] = v121;
              vst2q_f32(v82, v142);
              v142.val[1] = vzip1q_s32(v140.val[0], v120);
              v142.val[0] = v121;
              vst2q_f32(v83, v142);
              v84 = v74 + 40;
              v85 = v74 + 48;
              v138.val[1] = vaddq_s32(v138.val[1], v136.val[1]);
              v140.val[1] = vzip2q_s32(v140.val[0], v120);
              v140.val[0] = v121;
              vst2q_f32(v84, v140);
              v140.val[1] = vzip1q_s32(v138.val[1], v120);
              v140.val[0] = v121;
              vst2q_f32(v85, v140);
              v140.val[1] = vzip2q_s32(v79, v120);
              v140.val[0] = v121;
              vst2q_f32(v81, v140);
              v86 = v74 + 56;
              v87 = v74 + 64;
              v138.val[0] = vaddq_s32(vaddq_s32(v138.val[0], v136.val[1]), v134.val[0]);
              v140.val[1] = vzip2q_s32(v138.val[1], v120);
              v140.val[0] = v121;
              vst2q_f32(v86, v140);
              v140.val[1] = vzip1q_s32(v138.val[0], v120);
              v140.val[0] = v121;
              vst2q_f32(v87, v140);
              v88 = v74 + 72;
              v89 = v74 + 80;
              v136.val[0] = vaddq_s32(vaddq_s32(v136.val[0], v136.val[1]), v134.val[0]);
              v138.val[1] = vzip2q_s32(v138.val[0], v120);
              v138.val[0] = v121;
              vst2q_f32(v88, v138);
              v138.val[1] = vzip1q_s32(v136.val[0], v120);
              v138.val[0] = v121;
              vst2q_f32(v89, v138);
              v90 = v74 + 88;
              v91 = v74 + 96;
              v28 = vaddq_s32(vaddq_s32(vaddq_s32(v131.val[0], v134.val[1]), v136.val[1]), v134.val[0]);
              v134.val[1] = vzip2q_s32(v136.val[0], v120);
              v134.val[0] = v121;
              vst2q_f32(v90, v134);
              v134.val[1] = vzip1q_s32(v28, v120);
              v134.val[0] = v121;
              vst2q_f32(v91, v134);
              v92 = v74 + 104;
              v93 = v74 + 112;
              v134.val[1] = vzip2q_s32(v28, v120);
              v134.val[0] = v121;
              vst2q_f32(v92, v134);
              v31 = vzip1q_s32(v29, v120);
              v30 = v121;
              vst2q_f32(v93, *v30.i8);
              v33 = v29.u32[3];
              v94 = v74 + 120;
              vst2q_f32(v94, *(&v21 - 1));
              v69 = v74 + 128;
              v70 = v52 + 32;
              v95 = v52 + 64;
              v52 += 32;
              v74 += 128;
            }

            while (v95 <= v26);
          }

          else
          {
            v69 = a11;
            v70 = v52;
          }

          if (v70 + 8 <= v26)
          {
            v98 = v124 + v32;
            v99 = v124 + v32 + 2 * v124;
            v100 = v32 + 2 * v124;
            do
            {
              v28.i64[0] = *(v32 + v70);
              v29.i64[0] = *(v98 + v70);
              v30.i64[0] = *(v100 + v70);
              v31.i64[0] = *(v99 + v70);
              v101 = vzip1q_s8(v31, v29);
              v102 = vzip1q_s8(v30, v28);
              v103 = vzip1q_s8(v101, v102);
              v104 = vzip2q_s8(v101, v102);
              v105 = vaddq_s32(vshlq_n_s64(v103, 0x20uLL), v103);
              v106 = vaddq_s32(vshlq_n_s64(v104, 0x20uLL), v104);
              v107 = vdupq_lane_s32(*v106.i8, 1);
              v108 = vdupq_lane_s32(*v105.i8, 1);
              v108.i64[0] = 0;
              v107.i64[0] = 0;
              v109 = vaddq_s32(v108, v105);
              v110 = vdupq_laneq_s32(v109, 3);
              v111 = vdupq_n_s32(v33);
              v112 = vaddq_s32(v109, v111);
              v113 = vaddq_s32(vaddq_s32(v107, vaddq_s32(v106, v111)), v110);
              v33 = v113.u32[3];
              v114 = vzip1q_s32(v112, v120);
              v31 = v121;
              v115 = v69 + 16;
              v116 = v69 + 24;
              v117 = v69;
              vst2q_f32(v117, *v31.i8);
              v117 += 8;
              v132.val[1] = vzip2q_s32(v112, v120);
              v132.val[0] = v121;
              vst2q_f32(v117, v132);
              v30 = vzip1q_s32(v113, v120);
              v132.val[0] = v121;
              vst2q_f32(v115, *(&v30 - 1));
              v29 = vzip2q_s32(v113, v120);
              v28 = v121;
              vst2q_f32(v116, *v28.i8);
              v97 = v69 + 32;
              v96 = v70 + 8;
              v118 = v70 + 16;
              v70 += 8;
              v69 += 32;
            }

            while (v118 <= v26);
          }

          else
          {
            v96 = v70;
            v97 = v69;
          }

          if (v96 < v26)
          {
            do
            {
              v33 += (*(v123[0] + v96) << 24) | (*(v123[0] + v96 + v124) << 16) | (*(v123[0] + v96 + 2 * v124) << 8) | *(v123[0] + v96 + 2 * v124);
              *&v119 = __PAIR64__(v33, v12);
              *(&v119 + 1) = __PAIR64__(a7, a6);
              *v97 = v119;
              v97 += 4;
              ++v96;
            }

            while (v26 != v96);
          }
        }

        a11 = (a11 + a12);
        v22 += a10;
      }

      while (v22 + a3[7].u32[0] < v17);
    }
  }

  return result;
}

__int16 *CompressedInterleave4<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(__int16 *result, uint64_t a2, int32x2_t *a3, uint64_t **a4, uint64_t a5, uint64_t **a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = HIDWORD(*(a2 + 56));
    if (*(*a4 + 24))
    {
      _D0 = **a4;
      __asm { FCVT            H0, D0 }

      v17 = _D0;
    }

    else
    {
      v17 = 32256;
    }

    v128 = 2;
    v23 = *(a5 + 8);
    v24 = a3[3];
    v126 = v24.i32[0];
    v124 = v23;
    v122[1] = result;
    v125 = a3[6].i32[1] + v24.i32[1] * v16;
    v25 = a3[7].u32[1];
    v123 = vmin_u32(vmls_s32(*(*(*&v23[5] + 8 * v25) + 16), v23[6], v24), v23[6]).u32[0];
    v127 = v25;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v122);
    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v28 = _D0;
    }

    else
    {
      v28 = 32256;
    }

    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v30 = _D0;
    }

    else
    {
      v30 = 32256;
    }

    v31 = a3[6].u32[1];
    if (a3[7].u32[0] + v31 < v16)
    {
      v33 = a3[3].i32[1] * *(a2 + 60);
      v34 = a3[5].u32[1];
      v35 = v34 + a9;
      v129.val[1] = vdupq_n_s16(v28);
      v129.val[0] = vdupq_n_s16(v17);
      v36 = vqtbl2q_s8(v129, xmmword_296B6EDD0);
      v119 = vdupq_n_s16(v30);
      do
      {
        v120 = v36;
        v121 = v26;
        v125 = v33 + v31;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v122);
        v39.i64[0] = 0xFFFFFFFF00000000;
        v39.i64[1] = 0xFFFFFFFF00000000;
        v36 = v120;
        v26 = v121;
        v40 = v122[0];
        if (v122[0])
        {
          if (v34 >= 0x20)
          {
            v43 = 0;
            v41 = 0;
            v44 = v123 + v122[0];
            do
            {
              v46 = *(v122[0] + v43);
              v45 = *(v122[0] + v43 + 16);
              v48 = *(v44 + v43);
              v47 = *(v44 + v43 + 16);
              v49 = vzip1q_s8(v48, v46);
              v50 = vzip2q_s8(v48, v46);
              v51 = vzip1q_s8(v47, v45);
              v52 = vzip2q_s8(v47, v45);
              v53 = vaddq_s16(vshlq_n_s32(v49, 0x10uLL), v49);
              v54 = vaddq_s16(vshlq_n_s32(v50, 0x10uLL), v50);
              v55 = vaddq_s16(vshlq_n_s32(v51, 0x10uLL), v51);
              v56 = vaddq_s16(vshlq_n_s32(v52, 0x10uLL), v52);
              v57 = vaddq_s16(vandq_s8(vqtbl1q_s8(v55, xmmword_296B8F090), v39), v55);
              v58 = vaddq_s16(vandq_s8(vqtbl1q_s8(v54, xmmword_296B8F090), v39), v54);
              v59 = vaddq_s16(vandq_s8(vqtbl1q_s8(v53, xmmword_296B8F090), v39), v53);
              v60 = vaddq_s16(vandq_s8(vqtbl1q_s8(v56, xmmword_296B8F090), v39), v56);
              v38 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v59.i8, 3), v59), vaddq_s16(vdupq_lane_s16(*v58.i8, 3), v58));
              v37 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*v57.i8, 3), v57), vaddq_s16(vdupq_lane_s16(*v60.i8, 3), v60)), v38);
              v41 += v37.u16[7];
              v61 = v43 + 64;
              v43 += 32;
            }

            while (v61 <= v34);
            v42 = v34 & 0xFFFFFFE0;
          }

          else
          {
            v41 = 0;
            v42 = 0;
          }

          if ((v42 | 8) <= v34)
          {
            do
            {
              v37.i64[0] = *(v122[0] + v42);
              v38.i64[0] = *(v123 + v122[0] + v42);
              v63 = vzip1q_s8(v38, v37);
              v64 = vaddq_s16(vshlq_n_s32(v63, 0x10uLL), v63);
              v38 = vextq_s8(v64, v64, 0xCuLL);
              v37 = vaddq_s16(v38, v64);
              v41 += v37.u16[7] + v37.u16[3];
              v62 = v42 + 8;
              v65 = v42 + 16;
              v42 += 8;
            }

            while (v65 <= v34);
          }

          else
          {
            v62 = v42;
          }

          v66 = v34 - v62;
          if (v34 > v62)
          {
            v67 = (v62 + v122[0] + v123);
            v68 = (v122[0] + v62);
            do
            {
              v70 = *v68++;
              v69 = v70;
              v71 = *v67++;
              v41 += v71 | (v69 << 8);
              --v66;
            }

            while (v66);
            v62 = v34;
          }

          if (v62 + 32 <= v35)
          {
            v74 = v123 + v122[0];
            v75 = a11;
            do
            {
              v77 = *(v40 + v62);
              v76 = *(v40 + v62 + 16);
              v79 = *(v74 + v62);
              v78 = *(v74 + v62 + 16);
              v80 = vzip2q_s8(v79, v77);
              v81 = vzip2q_s8(v78, v76);
              v82 = vzip1q_s8(v79, v77);
              v83 = vzip1q_s8(v78, v76);
              v84 = vaddq_s16(vshlq_n_s32(v80, 0x10uLL), v80);
              v85 = vaddq_s16(vshlq_n_s32(v81, 0x10uLL), v81);
              v86 = vaddq_s16(vshlq_n_s32(v83, 0x10uLL), v83);
              v87 = vaddq_s16(vshlq_n_s32(v82, 0x10uLL), v82);
              v88 = vaddq_s16(vandq_s8(vqtbl1q_s8(v86, xmmword_296B8F090), v39), v86);
              v89 = vaddq_s16(vandq_s8(vqtbl1q_s8(v85, xmmword_296B8F090), v39), v85);
              v90 = vaddq_s16(vandq_s8(vqtbl1q_s8(v84, xmmword_296B8F090), v39), v84);
              v91 = vaddq_s16(vandq_s8(vqtbl1q_s8(v87, xmmword_296B8F090), v39), v87);
              v92 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v91.i8, 3), xmmword_296B8F0A0), v91);
              v93 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v88.i8, 3), xmmword_296B8F0A0), v88);
              v94 = vaddq_s16(vdupq_laneq_s16(v92, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v90.i8, 3), xmmword_296B8F0A0), v90));
              v95 = vdupq_laneq_s16(v94, 7);
              v96 = vdupq_n_s16(v41);
              v97 = vaddq_s16(v93, v96);
              v37 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v93, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v89.i8, 3), xmmword_296B8F0A0), v89)), v96), v95);
              v98 = vaddq_s16(v97, v95);
              v99 = vaddq_s16(v94, v96);
              v100 = vaddq_s16(v92, v96);
              v132.val[1] = vzip1q_s16(v100, v119);
              v101 = v75 + 32;
              v26 = vzip2q_s16(v37, v119);
              v102 = v75 + 48;
              v103 = v75 + 64;
              v104 = v75 + 80;
              v105 = v75 + 96;
              v106 = v75 + 112;
              v132.val[0] = v120;
              v107 = v75;
              vst2q_s16(v107, v132);
              result = v107 + 16;
              v132.val[1] = vzip1q_s16(v99, v119);
              v132.val[0] = v120;
              vst2q_s16(v101, v132);
              v132.val[1] = vzip2q_s16(v99, v119);
              v132.val[0] = v120;
              vst2q_s16(v102, v132);
              v132.val[1] = vzip1q_s16(v98, v119);
              v132.val[0] = v120;
              vst2q_s16(v103, v132);
              v131.val[1] = vzip2q_s16(v98, v119);
              v131.val[0] = v120;
              vst2q_s16(v104, v131);
              v131.val[1] = vzip1q_s16(v37, v119);
              v131.val[0] = v120;
              vst2q_s16(v105, v131);
              v131.val[0] = vzip2q_s16(v100, v119);
              v38 = v120;
              vst2q_s16(result, *v38.i8);
              v41 = v37.u16[7];
              vst2q_s16(v106, *(&v26 - 1));
              v72 = v75 + 128;
              v73 = v62 + 32;
              v108 = v62 + 64;
              v62 += 32;
              v75 += 128;
            }

            while (v108 <= v35);
          }

          else
          {
            v72 = a11;
            v73 = v62;
          }

          if (v73 + 8 <= v35)
          {
            v111 = v123 + v40;
            do
            {
              v37.i64[0] = *(v40 + v73);
              v38.i64[0] = *(v111 + v73);
              v112 = vzip1q_s8(v38, v37);
              v113 = vaddq_s16(vshlq_n_s32(v112, 0x10uLL), v112);
              v114 = vaddq_s16(vandq_s8(vqtbl1q_s8(v113, xmmword_296B8F090), v39), v113);
              v115 = vaddq_s16(vaddq_s16(v114, vdupq_n_s16(v41)), vandq_s8(vdupq_lane_s16(*v114.i8, 3), xmmword_296B8F0A0));
              v41 = v115.u16[7];
              v130.val[1] = vzip1q_s16(v115, v119);
              v110 = v72 + 32;
              v130.val[0] = v120;
              vst2q_s16(v72, v130);
              v116 = v72 + 16;
              v38 = vzip2q_s16(v115, v119);
              v37 = v120;
              vst2q_s16(v116, *v37.i8);
              v109 = v73 + 8;
              v117 = v73 + 16;
              v73 += 8;
              v72 = v110;
            }

            while (v117 <= v35);
          }

          else
          {
            v109 = v73;
            v110 = v72;
          }

          if (v109 < v35)
          {
            do
            {
              v41 += *(v122[0] + v109 + v123) | (*(v122[0] + v109) << 8);
              LOWORD(v118) = v17;
              WORD1(v118) = v41;
              WORD2(v118) = v28;
              HIWORD(v118) = v30;
              *v110 = v118;
              v110 += 4;
              ++v109;
            }

            while (v35 != v109);
          }
        }

        a11 = (a11 + a12);
        v31 += a10;
      }

      while (v31 + a3[7].u32[0] < v16);
    }
  }

  return result;
}

uint64_t CompressedInterleave4<float,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v16 = HIDWORD(*(a2 + 56));
    v17 = *(*a4 + 24) ? **a4 : NAN;
    v127 = v17;
    v134 = 3;
    v18 = *(a5 + 8);
    v19 = a3[3];
    v132 = v19.i32[0];
    v130 = v18;
    v128[1] = result;
    v131 = a3[6].i32[1] + v19.i32[1] * v16;
    v20 = a3[7].u32[1];
    v129 = vmin_u32(vmls_s32(*(*(*&v18[5] + 8 * v20) + 16), v18[6], v19), v18[6]).u32[0];
    v133 = v20;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v128);
    if (*(*a6 + 24))
    {
      v23 = **a6;
    }

    else
    {
      v23 = NAN;
    }

    if (*(*a7 + 24))
    {
      *v21.i32 = **a7;
    }

    else
    {
      v21.i32[0] = 2143289344;
    }

    v24 = a3[6].u32[1];
    if (a3[7].u32[0] + v24 < v16)
    {
      v26 = a3[3].i32[1] * *(a2 + 60);
      v27 = a3[5].u32[1];
      v28 = v27 + a9;
      v29.i64[0] = __PAIR64__(LODWORD(v23), LODWORD(v127));
      v29.i64[1] = __PAIR64__(LODWORD(v23), LODWORD(v127));
      v123 = v21.i32[0];
      v124 = v23;
      v122 = vdupq_lane_s32(v21, 0);
      do
      {
        v125 = v29;
        v126 = v22;
        v131 = v26 + v24;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v128);
        v29 = v125;
        v22 = v126;
        v33 = v128[0];
        if (v128[0])
        {
          if (v27 >= 0x20)
          {
            v45 = 0;
            v46 = v128[0] + 2 * v129;
            v47 = v129 + v128[0];
            v35.i64[0] = 0;
            v37 = xmmword_296B8F0B0;
            v36 = xmmword_296B8F050;
            v39 = xmmword_296B8F000;
            v38 = xmmword_296B8F020;
            v41 = xmmword_296B8F070;
            v40 = xmmword_296B8F0C0;
            v43 = xmmword_296B8F030;
            v42 = xmmword_296B8F0D0;
            v44 = xmmword_296B8F0E0;
            do
            {
              v135.val[1] = *(v128[0] + v45);
              v138.val[1] = *(v128[0] + v45 + 16);
              v49 = *(v47 + v45);
              v48 = *(v47 + v45 + 16);
              v135.val[0] = *(v46 + v45);
              v138.val[0] = *(v46 + v45 + 16);
              v141.val[1] = vqtbl2q_s8(v135, xmmword_296B8F050);
              v141.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0B0);
              v50 = vqtbl2q_s8(v141, xmmword_296B8F020);
              v141.val[1] = vqtbl2q_s8(v138, xmmword_296B8F050);
              v141.val[0] = vqtbl1q_s8(v48, xmmword_296B8F0B0);
              v141.val[0] = vqtbl2q_s8(v141, xmmword_296B8F020);
              v51 = vqtbl2q_s8(v138, xmmword_296B8F000);
              v141.val[1] = vqtbl1q_s8(v48, xmmword_296B8F0C0);
              v141.val[1] = vqtbl2q_s8(*(&v141 + 16), xmmword_296B8F020);
              v143.val[1] = vqtbl2q_s8(v135, xmmword_296B8F070);
              v143.val[0] = vqtbl1q_s8(v49, xmmword_296B8F0D0);
              v143.val[0] = vqtbl2q_s8(v143, xmmword_296B8F020);
              v52 = vqtbl2q_s8(v135, xmmword_296B8F000);
              v143.val[1] = vqtbl1q_s8(v49, xmmword_296B8F0C0);
              v135.val[1] = vqtbl2q_s8(v135, xmmword_296B8F030);
              v135.val[0] = vqtbl1q_s8(v49, v44);
              v146.val[1] = vqtbl2q_s8(v138, xmmword_296B8F070);
              v53 = vqtbl2q_s8(*(&v143 + 16), xmmword_296B8F020);
              v146.val[0] = vqtbl1q_s8(v48, xmmword_296B8F0D0);
              v143.val[1] = vqtbl2q_s8(v146, xmmword_296B8F020);
              v138.val[1] = vqtbl2q_s8(v138, xmmword_296B8F030);
              v138.val[0] = vqtbl1q_s8(v48, v44);
              v138.val[0] = vqtbl2q_s8(v138, xmmword_296B8F020);
              v135.val[0] = vqtbl2q_s8(v135, xmmword_296B8F020);
              v54 = vaddq_s32(vshlq_n_s64(v50, 0x20uLL), v50);
              v141.val[0] = vaddq_s32(vshlq_n_s64(v141.val[0], 0x20uLL), v141.val[0]);
              v141.val[1] = vaddq_s32(vshlq_n_s64(v141.val[1], 0x20uLL), v141.val[1]);
              v143.val[0] = vaddq_s32(vshlq_n_s64(v143.val[0], 0x20uLL), v143.val[0]);
              v55 = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
              v135.val[0] = vaddq_s32(vshlq_n_s64(v135.val[0], 0x20uLL), v135.val[0]);
              v138.val[1] = vaddq_s32(vshlq_n_s64(v143.val[1], 0x20uLL), v143.val[1]);
              v135.val[1] = vaddq_s32(vshlq_n_s64(v138.val[0], 0x20uLL), v138.val[0]);
              v146.val[1] = vdupq_lane_s32(*v141.val[1].i8, 1);
              v56 = vdupq_lane_s32(*v141.val[0].i8, 1);
              v57 = vdupq_lane_s32(*v54.i8, 1);
              v57.i64[0] = 0;
              v56.i64[0] = 0;
              v146.val[1].i64[0] = 0;
              v138.val[0] = vaddq_s32(v57, v54);
              v44 = xmmword_296B8F0E0;
              v32 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v143.val[0].i8, 1), v143.val[0]), v138.val[0]);
              v31 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[1].i8, 1), v135.val[1]), 3), vaddq_s32(v146.val[1], v141.val[1])), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v138.val[1].i8, 1), v138.val[1]), 3), vaddq_s32(v56, v141.val[0])));
              v30 = vaddq_s32(v31, vaddq_s32(v32, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v135.val[0].i8, 1), v135.val[0]), vaddq_s32(vdupq_lane_s32(*v55.i8, 1), v55))));
              v35 = vaddq_s32(v30, vdupq_lane_s32(*v35.i8, 0));
              v35.i32[0] = v35.i32[3];
              v58 = v45 + 64;
              v45 += 32;
            }

            while (v58 <= v27);
            v34 = v27 & 0xFFFFFFE0;
          }

          else
          {
            v34 = 0;
            v35.i64[0] = 0;
            v37 = xmmword_296B8F0B0;
            v36 = xmmword_296B8F050;
            v39 = xmmword_296B8F000;
            v38 = xmmword_296B8F020;
            v41 = xmmword_296B8F070;
            v40 = xmmword_296B8F0C0;
            v43 = xmmword_296B8F030;
            v42 = xmmword_296B8F0D0;
            v44 = xmmword_296B8F0E0;
          }

          if ((v34 | 8) <= v27)
          {
            do
            {
              v30.i64[0] = *(v128[0] + v34);
              v31.i64[0] = *(v129 + v128[0] + v34);
              v32.i64[0] = *(v128[0] + 2 * v129 + v34);
              v60 = vzip1q_s8(0, v31);
              v61 = vzip1q_s8(v32, v30);
              v62 = vzip1q_s8(v60, v61);
              v63 = vzip2q_s8(v60, v61);
              v30 = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
              v31 = vdupq_lane_s32(*v30.i8, 1);
              v64 = vaddq_s32(vshlq_n_s64(v62, 0x20uLL), v62);
              v32 = vaddq_s32(vdupq_lane_s32(*v64.i8, 1), v64);
              v35 = vaddq_s32(v31, vaddq_s32(v30, vdupq_lane_s32(*v35.i8, 0)));
              v35.i32[0] = v35.i32[3] + v32.i32[3];
              v59 = v34 + 8;
              v65 = v34 + 16;
              v34 += 8;
            }

            while (v65 <= v27);
          }

          else
          {
            v59 = v34;
          }

          if (v59 <= v27)
          {
            v66 = v27;
          }

          else
          {
            v66 = v59;
          }

          if (v66 + 32 <= v28)
          {
            v69 = v128[0] + 2 * v129;
            v70 = v129 + v128[0];
            v71 = a11;
            do
            {
              v136.val[1] = *(v33 + v66);
              v139.val[1] = *(v33 + v66 + 16);
              v73 = *(v70 + v66);
              v72 = *(v70 + v66 + 16);
              v136.val[0] = *(v69 + v66);
              v139.val[0] = *(v69 + v66 + 16);
              v142.val[1] = vqtbl2q_s8(v136, v41);
              v142.val[0] = vqtbl1q_s8(v73, v42);
              v74 = vqtbl2q_s8(v142, v38);
              v142.val[1] = vqtbl2q_s8(v136, v43);
              v142.val[0] = vqtbl1q_s8(v73, v44);
              v144.val[1] = vqtbl2q_s8(v139, v41);
              v144.val[0] = vqtbl1q_s8(v72, v42);
              v142.val[0] = vqtbl2q_s8(v142, v38);
              v142.val[1] = vqtbl2q_s8(v144, v38);
              v144.val[1] = vqtbl2q_s8(v139, v43);
              v144.val[0] = vqtbl1q_s8(v72, v44);
              v145.val[1] = vqtbl2q_s8(v139, v39);
              v145.val[0] = vqtbl1q_s8(v72, v40);
              v144.val[0] = vqtbl2q_s8(v144, v38);
              v144.val[1] = vqtbl2q_s8(v145, v38);
              v139.val[1] = vqtbl2q_s8(v139, v36);
              v139.val[0] = vqtbl1q_s8(v72, v37);
              v145.val[1] = vqtbl2q_s8(v136, v39);
              v145.val[0] = vqtbl1q_s8(v73, v40);
              v139.val[0] = vqtbl2q_s8(v139, v38);
              v139.val[1] = vqtbl2q_s8(v145, v38);
              v136.val[1] = vqtbl2q_s8(v136, v36);
              v136.val[0] = vqtbl1q_s8(v73, v37);
              v136.val[0] = vqtbl2q_s8(v136, v38);
              v75 = vaddq_s32(vshlq_n_s64(v74, 0x20uLL), v74);
              v142.val[0] = vaddq_s32(vshlq_n_s64(v142.val[0], 0x20uLL), v142.val[0]);
              v142.val[1] = vaddq_s32(vshlq_n_s64(v142.val[1], 0x20uLL), v142.val[1]);
              v144.val[0] = vaddq_s32(vshlq_n_s64(v144.val[0], 0x20uLL), v144.val[0]);
              v144.val[1] = vaddq_s32(vshlq_n_s64(v144.val[1], 0x20uLL), v144.val[1]);
              v139.val[0] = vaddq_s32(vshlq_n_s64(v139.val[0], 0x20uLL), v139.val[0]);
              v139.val[1] = vaddq_s32(vshlq_n_s64(v139.val[1], 0x20uLL), v139.val[1]);
              v136.val[0] = vaddq_s32(vshlq_n_s64(v136.val[0], 0x20uLL), v136.val[0]);
              v136.val[1] = vdupq_lane_s32(*v136.val[0].i8, 1);
              v76 = vdupq_lane_s32(*v139.val[1].i8, 1);
              v77 = vdupq_lane_s32(*v139.val[0].i8, 1);
              v145.val[0] = vdupq_lane_s32(*v144.val[1].i8, 1);
              v145.val[1] = vdupq_lane_s32(*v144.val[0].i8, 1);
              v78 = vdupq_lane_s32(*v142.val[1].i8, 1);
              v79 = vdupq_lane_s32(*v75.i8, 1);
              v136.val[1].i64[0] = 0;
              v136.val[1] = vaddq_s32(v136.val[1], v136.val[0]);
              v76.i64[0] = 0;
              v80 = vaddq_s32(v76, v139.val[1]);
              v139.val[1] = vdupq_lane_s32(*v142.val[0].i8, 1);
              v79.i64[0] = 0;
              v78.i64[0] = 0;
              v139.val[1].i64[0] = 0;
              v145.val[1].i64[0] = 0;
              v145.val[0].i64[0] = 0;
              v77.i64[0] = 0;
              v139.val[0] = vaddq_s32(v77, v139.val[0]);
              v136.val[0] = vaddq_s32(v145.val[1], v144.val[0]);
              v81 = vaddq_s32(v78, v142.val[1]);
              v144.val[0] = vaddq_s32(v79, v75);
              v142.val[0] = vaddq_s32(v139.val[1], v142.val[0]);
              v144.val[1] = vaddq_s32(vdupq_laneq_s32(v136.val[0], 3), vaddq_s32(v145.val[0], v144.val[1]));
              v139.val[1] = vaddq_s32(vdupq_laneq_s32(v81, 3), v139.val[0]);
              v145.val[0] = vaddq_s32(vdupq_laneq_s32(v144.val[0], 3), v136.val[1]);
              v142.val[1] = vdupq_laneq_s32(v145.val[0], 3);
              v82 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v142.val[0], 3), v80), v142.val[1]);
              v139.val[0] = vdupq_laneq_s32(v139.val[1], 3);
              v136.val[1] = vdupq_laneq_s32(v82, 3);
              v83 = vdupq_lane_s32(*v35.i8, 0);
              v35 = vaddq_s32(vaddq_s32(vaddq_s32(v144.val[1], v139.val[0]), v83), v136.val[1]);
              v144.val[1] = vaddq_s32(v145.val[0], v83);
              v144.val[0] = vaddq_s32(v144.val[0], v83);
              v22 = vzip2q_s32(v35, v122);
              v145.val[1] = vzip1q_s32(v144.val[0], v122);
              v84 = v71 + 16;
              v145.val[0] = v125;
              v85 = v71;
              vst2q_f32(v85, v145);
              v85 += 8;
              v145.val[1] = vzip1q_s32(v144.val[1], v122);
              v145.val[0] = v125;
              vst2q_f32(v84, v145);
              v86 = v71 + 24;
              v87 = v71 + 32;
              v142.val[0] = vaddq_s32(vaddq_s32(v142.val[0], v83), v142.val[1]);
              v145.val[0] = vzip2q_s32(v144.val[1], v122);
              v144.val[1] = v125;
              vst2q_f32(v86, *(&v144 + 16));
              v145.val[0] = vzip1q_s32(v142.val[0], v122);
              v144.val[1] = v125;
              vst2q_f32(v87, *(&v144 + 16));
              v88 = v71 + 40;
              v89 = v71 + 48;
              v90 = vaddq_s32(v82, v83);
              v142.val[1] = vzip2q_s32(v142.val[0], v122);
              v142.val[0] = v125;
              vst2q_f32(v88, v142);
              v142.val[1] = vzip1q_s32(v90, v122);
              v142.val[0] = v125;
              vst2q_f32(v89, v142);
              v142.val[1] = vzip2q_s32(v144.val[0], v122);
              v142.val[0] = v125;
              vst2q_f32(v85, v142);
              v91 = v71 + 56;
              v92 = v71 + 64;
              v93 = vaddq_s32(vaddq_s32(v81, v83), v136.val[1]);
              v142.val[1] = vzip2q_s32(v90, v122);
              v142.val[0] = v125;
              vst2q_f32(v91, v142);
              v142.val[1] = vzip1q_s32(v93, v122);
              v142.val[0] = v125;
              vst2q_f32(v92, v142);
              v94 = v71 + 72;
              v95 = v71 + 80;
              v139.val[1] = vaddq_s32(vaddq_s32(v139.val[1], v83), v136.val[1]);
              v140.val[1] = vzip2q_s32(v93, v122);
              v140.val[0] = v125;
              vst2q_f32(v94, v140);
              v140.val[1] = vzip1q_s32(v139.val[1], v122);
              v140.val[0] = v125;
              vst2q_f32(v95, v140);
              v96 = v71 + 88;
              v97 = v71 + 96;
              v136.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v136.val[0], v139.val[0]), v83), v136.val[1]);
              v139.val[0] = vzip2q_s32(v139.val[1], v122);
              v136.val[1] = v125;
              vst2q_f32(v96, *(&v136 + 16));
              v32 = vzip1q_s32(v136.val[0], v122);
              v136.val[1] = v125;
              vst2q_f32(v97, *(&v32 - 1));
              v98 = v71 + 104;
              v99 = v71 + 112;
              v136.val[1] = vzip2q_s32(v136.val[0], v122);
              v136.val[0] = v125;
              vst2q_f32(v98, v136);
              v31 = vzip1q_s32(v35, v122);
              v30 = v125;
              vst2q_f32(v99, *v30.i8);
              v67 = v71 + 128;
              v100 = v71 + 120;
              vst2q_f32(v100, *(&v22 - 1));
              v35.i32[0] = v35.i32[3];
              v68 = v66 + 32;
              v101 = v66 + 64;
              v66 += 32;
              v71 = v67;
            }

            while (v101 <= v28);
          }

          else
          {
            v67 = a11;
            v68 = v66;
          }

          if (v68 + 8 <= v28)
          {
            v104 = v33 + 2 * v129;
            v105 = v129 + v33;
            do
            {
              v30.i64[0] = *(v33 + v68);
              v31.i64[0] = *(v105 + v68);
              v32.i64[0] = *(v104 + v68);
              v106 = vzip1q_s8(0, v31);
              v107 = vzip1q_s8(v32, v30);
              v108 = vzip1q_s8(v106, v107);
              v109 = vzip2q_s8(v106, v107);
              v110 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
              v111 = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
              v112 = vdupq_lane_s32(*v111.i8, 1);
              v113 = vdupq_lane_s32(*v110.i8, 1);
              v113.i64[0] = 0;
              v112.i64[0] = 0;
              v114 = vaddq_s32(v113, v110);
              v115 = vdupq_laneq_s32(v114, 3);
              v116 = vdupq_lane_s32(*v35.i8, 0);
              v32 = vaddq_s32(v114, v116);
              v35 = vaddq_s32(vaddq_s32(v112, vaddq_s32(v111, v116)), v115);
              v137.val[1] = vzip1q_s32(v32, v122);
              v103 = v67 + 32;
              v137.val[0] = v125;
              v117 = v67 + 16;
              v118 = v67 + 24;
              vst2q_f32(v67, v137);
              v119 = v67 + 8;
              v137.val[1] = vzip2q_s32(v32, v122);
              v137.val[0] = v125;
              vst2q_f32(v119, v137);
              v137.val[1] = vzip1q_s32(v35, v122);
              v137.val[0] = v125;
              vst2q_f32(v117, v137);
              v31 = vzip2q_s32(v35, v122);
              v30 = v125;
              vst2q_f32(v118, *v30.i8);
              v35.i32[0] = v35.i32[3];
              v102 = v68 + 8;
              v120 = v68 + 16;
              v68 += 8;
              v67 = v103;
            }

            while (v120 <= v28);
          }

          else
          {
            v102 = v68;
            v103 = v67;
          }

          if (v102 < v28)
          {
            do
            {
              *&v121 = v127;
              DWORD1(v121) = ((*(v128[0] + v102) << 24) | (*(v128[0] + v102 + v129) << 16) | (*(v128[0] + v102 + 2 * v129) << 8)) + v35.i32[0];
              *(&v121 + 1) = __PAIR64__(v123, LODWORD(v124));
              *v103 = v121;
              v103 += 4;
              ++v102;
            }

            while (v28 != v102);
          }
        }

        a11 = (a11 + a12);
        v24 += a10;
      }

      while (v24 + a3[7].u32[0] < v16);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v193 = 4;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v191 = v20.i32[0];
    v189 = v19;
    v187[1] = result;
    v190 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v188 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v192 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v187);
    v186 = 4;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v184 = v23.i32[0];
    v182 = v22;
    v180[1] = v17;
    v183 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v181 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v185 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
    if (*(*a6 + 24))
    {
      LODWORD(a6) = **a6;
    }

    if (*(*a7 + 24))
    {
      LODWORD(a7) = **a7;
    }

    v25 = a3[6].u32[1];
    if (a3[7].u32[0] + v25 < v18)
    {
      v27 = a3[3].i32[1] * *(a2 + 60);
      v28 = a3[5].u32[1];
      v29 = v28 + a9;
      v174 = vdupq_n_s32(a7);
      v175 = vdupq_n_s32(a6);
      do
      {
        v190 = v27 + v25;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v187);
        v183 = v27 + v25;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v180);
        v38 = v174;
        v37 = v175;
        v39 = v187[0];
        if (v187[0])
        {
          v40 = v180[0];
          if (v180[0])
          {
            if (v28 >= 0x20)
            {
              v44 = v188 + v187[0];
              v45 = v188 + v187[0] + 2 * v188;
              v46 = v187[0] + 2 * v188;
              v47 = v181 + v180[0];
              v48 = v181 + v180[0] + 2 * v181;
              v49 = v180[0] + 2 * v181;
              v42 = 0uLL;
              v50 = 32;
              v51 = xmmword_296B8F040;
              v43 = xmmword_296B8F060;
              do
              {
                v179 = v42;
                result = v44 + v50;
                v206.val[1] = *(v187[0] + v50 - 32);
                v216.val[1] = *(v187[0] + v50 - 16);
                v209.val[1] = *(v44 + v50 - 32);
                v214.val[1] = *(v44 + v50 - 16);
                v206.val[0] = *(v46 + v50 - 32);
                v216.val[0] = *(v46 + v50 - 16);
                v209.val[0] = *(v45 + v50 - 32);
                v214.val[0] = *(v45 + v50 - 16);
                v178.val[0] = vqtbl2q_s8(v209, v51);
                v178.val[1] = vqtbl2q_s8(v206, xmmword_296B8F030);
                v177.val[0] = vqtbl2q_s8(v209, xmmword_296B8F010);
                v177.val[1] = vqtbl2q_s8(v206, xmmword_296B8F000);
                v176.val[0] = vqtbl2q_s8(v209, xmmword_296B8F080);
                v176.val[1] = vqtbl2q_s8(v206, xmmword_296B8F070);
                v206.val[1] = vqtbl2q_s8(v206, xmmword_296B8F050);
                v206.val[0] = vqtbl2q_s8(v209, v43);
                v209.val[1] = vqtbl2q_s8(v216, xmmword_296B8F000);
                v209.val[0] = vqtbl2q_s8(v214, xmmword_296B8F010);
                v211.val[1] = vqtbl2q_s8(v216, xmmword_296B8F050);
                v211.val[0] = vqtbl2q_s8(v214, v43);
                v213.val[1] = vqtbl2q_s8(v216, xmmword_296B8F070);
                v213.val[0] = vqtbl2q_s8(v214, xmmword_296B8F080);
                v216.val[1] = vqtbl2q_s8(v216, xmmword_296B8F030);
                v218.val[1] = *(v180[0] + v50 - 32);
                v220.val[1] = *(v180[0] + v50 - 16);
                v204.val[1] = *(v47 + v50 - 32);
                v205.val[1] = *(v47 + v50 - 16);
                v216.val[0] = vqtbl2q_s8(v214, xmmword_296B8F040);
                v218.val[0] = *(v49 + v50 - 32);
                v220.val[0] = *(v49 + v50 - 16);
                v204.val[0] = *(v48 + v50 - 32);
                v205.val[0] = *(v48 + v50 - 16);
                v214.val[1] = vqtbl2q_s8(v218, xmmword_296B8F030);
                v214.val[0] = vqtbl2q_s8(v204, xmmword_296B8F040);
                v202.val[1] = vqtbl2q_s8(v218, xmmword_296B8F000);
                v202.val[0] = vqtbl2q_s8(v204, xmmword_296B8F010);
                v200.val[1] = vqtbl2q_s8(v218, xmmword_296B8F070);
                v200.val[0] = vqtbl2q_s8(v204, xmmword_296B8F080);
                v218.val[1] = vqtbl2q_s8(v218, xmmword_296B8F050);
                v218.val[0] = vqtbl2q_s8(v204, xmmword_296B8F060);
                v204.val[1] = vqtbl2q_s8(v220, xmmword_296B8F000);
                v204.val[0] = vqtbl2q_s8(v205, xmmword_296B8F010);
                v196.val[1] = vqtbl2q_s8(v220, xmmword_296B8F050);
                v196.val[0] = vqtbl2q_s8(v205, xmmword_296B8F060);
                v194.val[1] = vqtbl2q_s8(v220, xmmword_296B8F070);
                v194.val[0] = vqtbl2q_s8(v205, xmmword_296B8F080);
                v220.val[1] = vqtbl2q_s8(v220, xmmword_296B8F030);
                v220.val[0] = vqtbl2q_s8(v205, xmmword_296B8F040);
                v51 = xmmword_296B8F040;
                v52 = vqtbl2q_s8(v178, xmmword_296B8F020);
                v205.val[0] = vqtbl2q_s8(v177, xmmword_296B8F020);
                v53 = vqtbl2q_s8(v176, xmmword_296B8F020);
                v54 = vqtbl2q_s8(v206, xmmword_296B8F020);
                v206.val[0] = vqtbl2q_s8(v209, xmmword_296B8F020);
                v211.val[0] = vqtbl2q_s8(v211, xmmword_296B8F020);
                v211.val[1] = vqtbl2q_s8(v213, xmmword_296B8F020);
                v213.val[0] = vqtbl2q_s8(v216, xmmword_296B8F020);
                v206.val[1] = vaddq_s32(vshlq_n_s64(v52, 0x20uLL), v52);
                v209.val[0] = vaddq_s32(vshlq_n_s64(v205.val[0], 0x20uLL), v205.val[0]);
                v209.val[1] = vaddq_s32(vshlq_n_s64(v53, 0x20uLL), v53);
                v55 = vaddq_s32(vshlq_n_s64(v54, 0x20uLL), v54);
                v56 = vaddq_s32(vshlq_n_s64(v206.val[0], 0x20uLL), v206.val[0]);
                v57 = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v206.val[0] = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v211.val[0] = vqtbl2q_s8(v214, xmmword_296B8F020);
                v211.val[1] = vqtbl2q_s8(v202, xmmword_296B8F020);
                v213.val[0] = vaddq_s32(vshlq_n_s64(v213.val[0], 0x20uLL), v213.val[0]);
                v213.val[1] = vqtbl2q_s8(v200, xmmword_296B8F020);
                v214.val[0] = vqtbl2q_s8(v218, xmmword_296B8F020);
                v214.val[1] = vqtbl2q_s8(v204, xmmword_296B8F020);
                v196.val[0] = vqtbl2q_s8(v196, xmmword_296B8F020);
                v194.val[0] = vqtbl2q_s8(v194, xmmword_296B8F020);
                v194.val[1] = vqtbl2q_s8(v220, xmmword_296B8F020);
                v43 = xmmword_296B8F060;
                v33 = vaddq_s32(vshlq_n_s64(v211.val[0], 0x20uLL), v211.val[0]);
                v211.val[0] = vaddq_s32(vshlq_n_s64(v211.val[1], 0x20uLL), v211.val[1]);
                v211.val[1] = vaddq_s32(vshlq_n_s64(v213.val[1], 0x20uLL), v213.val[1]);
                v213.val[1] = vaddq_s32(vshlq_n_s64(v214.val[0], 0x20uLL), v214.val[0]);
                v214.val[0] = vaddq_s32(vshlq_n_s64(v214.val[1], 0x20uLL), v214.val[1]);
                v196.val[0] = vaddq_s32(vshlq_n_s64(v196.val[0], 0x20uLL), v196.val[0]);
                v194.val[0] = vaddq_s32(vshlq_n_s64(v194.val[0], 0x20uLL), v194.val[0]);
                v194.val[1] = vaddq_s32(vshlq_n_s64(v194.val[1], 0x20uLL), v194.val[1]);
                v194.val[0] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v194.val[0].i8, 1), v194.val[0]), 3);
                v30 = vextq_s8(v194.val[0], v194.val[0], 8uLL);
                *v30.i8 = vadd_s32(*v30.i8, vadd_s32(vdup_lane_s32(*v196.val[0].i8, 1), *&vextq_s8(v196.val[0], v196.val[0], 8uLL)));
                v32 = vextq_s8(v211.val[1], v211.val[1], 8uLL);
                v194.val[1] = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v194.val[1].i8, 1), v194.val[1]), 3);
                *v32.i8 = vadd_s32(vadd_s32(vadd_s32(*v211.val[1].i8, *v32.i8), vadd_s32(*v213.val[1].i8, *&vextq_s8(v213.val[1], v213.val[1], 8uLL))), vadd_s32(vadd_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), vadd_s32(*v211.val[0].i8, *&vextq_s8(v211.val[0], v211.val[0], 8uLL))));
                v36 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v206.val[0].i8, 1), v206.val[0]), 3);
                *v33.i8 = vadd_s32(*&vextq_s8(v36, v36, 8uLL), vadd_s32(vdup_lane_s32(*v57.i8, 1), *&vextq_s8(v57, v57, 8uLL)));
                v58 = vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v213.val[0].i8, 1), v213.val[0]), 3);
                *v56.i8 = vadd_s32(*&vextq_s8(v58, v58, 8uLL), vadd_s32(vdup_lane_s32(*v56.i8, 1), *&vextq_s8(v56, v56, 8uLL)));
                v42.i64[1] = v179.i64[1];
                *v30.i8 = vadd_s32(vadd_s32(*&vextq_s8(v194.val[1], v194.val[1], 8uLL), vadd_s32(vdup_lane_s32(*v214.val[0].i8, 1), *&vextq_s8(v214.val[0], v214.val[0], 8uLL))), *v30.i8);
                v31 = vextq_s8(v55, v55, 8uLL);
                *v31.i8 = vadd_s32(vadd_s32(*v209.val[1].i8, *&vextq_s8(v209.val[1], v209.val[1], 8uLL)), vadd_s32(*v55.i8, *v31.i8));
                *v33.i8 = vadd_s32(*v56.i8, *v33.i8);
                v34 = vextq_s8(v209.val[0], v209.val[0], 8uLL);
                v35 = vextq_s8(v206.val[1], v206.val[1], 8uLL);
                *v31.i8 = vadd_s32(*v33.i8, vadd_s32(*v31.i8, vadd_s32(vadd_s32(*v206.val[1].i8, *v35.i8), vadd_s32(*v209.val[0].i8, *v34.i8))));
                *v30.i8 = vzip2_s32(*v31.i8, vadd_s32(*v30.i8, *v32.i8));
                *v42.i8 = vadd_s32(*v30.i8, *v179.i8);
                v50 += 32;
              }

              while (v50 <= v28);
              v41 = v28 & 0xFFFFFFE0;
              v38 = v174;
              v37 = v175;
            }

            else
            {
              v41 = 0;
              v42 = 0uLL;
              v43 = xmmword_296B8F060;
            }

            v60 = xmmword_296B8F000;
            v59 = xmmword_296B8F030;
            v61 = xmmword_296B8F020;
            v62 = xmmword_296B8F010;
            if ((v41 | 8) <= v28)
            {
              do
              {
                v30.i64[0] = *(v187[0] + v41);
                v31.i64[0] = *(v188 + v187[0] + v41);
                v32.i64[0] = *(v187[0] + 2 * v188 + v41);
                v33.i64[0] = *(v188 + v187[0] + 2 * v188 + v41);
                v64 = vzip1q_s8(v33, v31);
                v65 = vzip1q_s8(v32, v30);
                v66 = vzip1q_s8(v64, v65);
                v67 = vzip2q_s8(v64, v65);
                v68 = vshlq_n_s64(v67, 0x20uLL);
                v69 = vshlq_n_s64(v66, 0x20uLL);
                v32 = vaddq_s32(v69, v66);
                v30 = vaddq_s32(v68, v67);
                v68.i64[0] = *(v180[0] + v41);
                v69.i64[0] = *(v181 + v180[0] + v41);
                v34.i64[0] = *(v180[0] + 2 * v181 + v41);
                v35.i64[0] = *(v181 + v180[0] + 2 * v181 + v41);
                v70 = vzip1q_s8(v35, v69);
                v71 = vzip1q_s8(v34, v68);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v35 = vshlq_n_s64(v72, 0x20uLL);
                v34 = vaddq_s32(v35, v72);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                *v30.i8 = vadd_s32(vzip2_s32(vadd_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), vadd_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL))), *v42.i8);
                v31 = vextq_s8(v34, v34, 8uLL);
                v33 = vextq_s8(v32, v32, 8uLL);
                *v31.i8 = vzip2_s32(vadd_s32(*v32.i8, *v33.i8), vadd_s32(*v34.i8, *v31.i8));
                *v42.i8 = vadd_s32(*v30.i8, *v31.i8);
                v63 = v41 + 8;
                result = v41 + 16;
                v41 += 8;
              }

              while (result <= v28);
            }

            else
            {
              v63 = v41;
            }

            if (v63 < v28)
            {
              do
              {
                result = v180[0] + v63;
                v30.i8[0] = *(v188 + v187[0] + v63);
                v30.i8[4] = *(v180[0] + v63);
                v31.i8[0] = *(v187[0] + v63);
                v31.i8[4] = *(v181 + v180[0] + v63);
                v75 = vshl_u32(vand_s8(*v31.i8, 0xFF000000FFLL), 0x1000000018);
                v76 = vorr_s8(v75, vshl_u32(vand_s8(*v30.i8, 0xFF000000FFLL), 0x1800000010));
                v75.i8[0] = *(v187[0] + 2 * v188 + v63);
                v75.i8[4] = *(v180[0] + 2 * v181 + v63);
                v77 = vand_s8(v75, 0xFF000000FFLL);
                *v31.i8 = vorr_s8(vshl_n_s32(v77, 8uLL), v77);
                *v30.i8 = vorr_s8(v76, *v31.i8);
                *v42.i8 = vadd_s32(*v30.i8, *v42.i8);
                ++v63;
              }

              while (v28 != v63);
              v63 = v28;
            }

            if (v63 + 32 <= v29)
            {
              v81 = v188 + v187[0];
              v82 = v188 + v187[0] + 2 * v188;
              v83 = v187[0] + 2 * v188;
              v84 = v181 + v180[0];
              v85 = v181 + v180[0] + 2 * v181;
              v86 = v180[0] + 2 * v181;
              v80 = a11;
              v87 = xmmword_296B8F080;
              v88 = xmmword_296B8F070;
              v89 = xmmword_296B8F050;
              do
              {
                v207.val[1] = *(v39 + v63);
                v198.val[1] = *(v39 + v63 + 16);
                v210.val[1] = *(v81 + v63);
                v195.val[1] = *(v81 + v63 + 16);
                v207.val[0] = *(v83 + v63);
                v198.val[0] = *(v83 + v63 + 16);
                v90 = *v42.i8;
                v199.val[1] = vqtbl2q_s8(v207, v88);
                v210.val[0] = *(v82 + v63);
                v195.val[0] = *(v82 + v63 + 16);
                v199.val[0] = vqtbl2q_s8(v210, v87);
                v212.val[1] = vqtbl2q_s8(v207, v59);
                v91 = vqtbl2q_s8(v199, v61);
                v212.val[0] = vqtbl2q_s8(v210, xmmword_296B8F040);
                v92 = vqtbl2q_s8(v212, xmmword_296B8F020);
                v199.val[1] = vqtbl2q_s8(v198, v88);
                v199.val[0] = vqtbl2q_s8(v195, v87);
                v212.val[1] = vqtbl2q_s8(v198, v89);
                v199.val[0] = vqtbl2q_s8(v199, xmmword_296B8F020);
                v212.val[0] = vqtbl2q_s8(v195, v43);
                v199.val[1] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v212.val[1] = vqtbl2q_s8(v207, v60);
                v212.val[0] = vqtbl2q_s8(v210, v62);
                v207.val[1] = vqtbl2q_s8(v207, v89);
                v93 = vqtbl2q_s8(v212, xmmword_296B8F020);
                v207.val[0] = vqtbl2q_s8(v210, v43);
                v210.val[1] = vqtbl2q_s8(v207, xmmword_296B8F020);
                v94 = vaddq_s32(vshlq_n_s64(v91, 0x20uLL), v91);
                v215.val[1] = *(v40 + v63);
                v207.val[1] = *(v40 + v63 + 16);
                v95 = vaddq_s32(vshlq_n_s64(v92, 0x20uLL), v92);
                v217.val[1] = *(v84 + v63);
                v210.val[0] = *(v84 + v63 + 16);
                v215.val[0] = *(v86 + v63);
                v217.val[0] = *(v85 + v63);
                v96 = vaddq_s32(vshlq_n_s64(v210.val[1], 0x20uLL), v210.val[1]);
                v219.val[1] = vqtbl2q_s8(v215, v88);
                v219.val[0] = vqtbl2q_s8(v217, v87);
                v201.val[1] = vqtbl2q_s8(v215, xmmword_296B8F030);
                v201.val[0] = vqtbl2q_s8(v217, xmmword_296B8F040);
                v210.val[1] = vdupq_lane_s32(*v96.i8, 1);
                v212.val[1] = vqtbl2q_s8(v215, xmmword_296B8F000);
                v212.val[0] = vqtbl2q_s8(v217, xmmword_296B8F010);
                v203.val[1] = vqtbl2q_s8(v215, xmmword_296B8F050);
                v203.val[0] = vqtbl2q_s8(v217, xmmword_296B8F060);
                v215.val[1] = vdupq_lane_s32(*v95.i8, 1);
                v217.val[0] = vdupq_lane_s32(*v94.i8, 1);
                v217.val[0].i64[0] = 0;
                v210.val[1].i64[0] = 0;
                v97 = vaddq_s32(v210.val[1], v96);
                v217.val[1] = vqtbl2q_s8(v219, xmmword_296B8F020);
                v210.val[1] = vdupq_lane_s32(v90, 0);
                v215.val[1].i64[0] = 0;
                v215.val[0] = vqtbl2q_s8(v201, xmmword_296B8F020);
                v219.val[0] = vqtbl2q_s8(v203, xmmword_296B8F020);
                v217.val[1] = vaddq_s32(vshlq_n_s64(v217.val[1], 0x20uLL), v217.val[1]);
                v98 = vaddq_s32(v215.val[1], v95);
                v219.val[0] = vaddq_s32(vshlq_n_s64(v219.val[0], 0x20uLL), v219.val[0]);
                v219.val[1] = vdupq_lane_s32(*v219.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v217.val[1].i8, 1);
                v100 = vaddq_s32(v217.val[0], v94);
                v99.i64[0] = 0;
                v219.val[1].i64[0] = 0;
                v215.val[1] = vaddq_s32(v100, v210.val[1]);
                v217.val[0] = vaddq_s32(v219.val[1], v219.val[0]);
                v219.val[0] = vaddq_s32(v99, v217.val[1]);
                v217.val[1] = vdupq_laneq_s32(v219.val[0], 3);
                v101 = vaddq_s32(vdupq_laneq_s32(v100, 3), v97);
                v102 = vdupq_lane_s32(v90, 1);
                v219.val[0] = vaddq_s32(v219.val[0], v102);
                v219.val[1] = vzip2q_s32(v215.val[1], v37);
                v103 = vzip2q_s32(v219.val[0], v38);
                v217.val[0] = vaddq_s32(v217.val[1], v217.val[0]);
                v201.val[0] = vzip1q_s32(v215.val[1], v37);
                v201.val[1] = vzip1q_s32(v219.val[0], v38);
                v207.val[0] = *(v86 + v63 + 16);
                v104 = *(v85 + v63 + 16);
                v105 = v80;
                vst2q_f32(v105, v201);
                v105 += 8;
                v215.val[1] = vaddq_s32(v101, v210.val[1]);
                v217.val[1] = vaddq_s32(v217.val[0], v102);
                vst2q_f32(v105, *(&v219 + 16));
                v219.val[0] = vzip1q_s32(v215.val[1], v37);
                v219.val[1] = vzip1q_s32(v217.val[1], v38);
                v106 = v80 + 16;
                vst2q_f32(v106, v219);
                v215.val[0] = vaddq_s32(vshlq_n_s64(v215.val[0], 0x20uLL), v215.val[0]);
                v219.val[0] = vdupq_lane_s32(*v215.val[0].i8, 1);
                v107 = vdupq_laneq_s32(v101, 3);
                v219.val[0].i64[0] = 0;
                v217.val[0] = vdupq_laneq_s32(v217.val[0], 3);
                v219.val[1] = vaddq_s32(vaddq_s32(v98, v210.val[1]), v107);
                v215.val[0] = vaddq_s32(v219.val[0], v215.val[0]);
                v201.val[0] = vzip2q_s32(v215.val[1], v37);
                v201.val[1] = vzip2q_s32(v217.val[1], v38);
                v108 = v80 + 24;
                v215.val[1] = vaddq_s32(vaddq_s32(v215.val[0], v102), v217.val[0]);
                vst2q_f32(v108, v201);
                v88 = xmmword_296B8F070;
                v89 = xmmword_296B8F050;
                v87 = xmmword_296B8F080;
                v217.val[1] = vzip1q_s32(v219.val[1], v37);
                v219.val[0] = vzip1q_s32(v215.val[1], v38);
                v109 = v80 + 32;
                vst2q_f32(v109, *(&v217 + 16));
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v110 = vaddq_s32(vshlq_n_s64(v93, 0x20uLL), v93);
                v217.val[1] = vdupq_lane_s32(*v110.i8, 1);
                v199.val[1] = vaddq_s32(vshlq_n_s64(v199.val[1], 0x20uLL), v199.val[1]);
                v219.val[0] = vdupq_lane_s32(*v199.val[1].i8, 1);
                v217.val[1].i64[0] = 0;
                v111 = vaddq_s32(v217.val[1], v110);
                v217.val[1] = vdupq_lane_s32(*v199.val[0].i8, 1);
                v217.val[1].i64[0] = 0;
                v219.val[0].i64[0] = 0;
                v219.val[0] = vaddq_s32(v219.val[0], v199.val[1]);
                v217.val[1] = vaddq_s32(v217.val[1], v199.val[0]);
                v199.val[0] = vqtbl2q_s8(v212, xmmword_296B8F020);
                v199.val[1] = vaddq_s32(vdupq_laneq_s32(v98, 3), v111);
                v199.val[0] = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v112 = vdupq_lane_s32(*v199.val[0].i8, 1);
                v112.i64[0] = 0;
                v199.val[1] = vaddq_s32(v199.val[1], v107);
                v212.val[0] = vzip2q_s32(v219.val[1], v37);
                v212.val[1] = vzip2q_s32(v215.val[1], v38);
                v113 = vaddq_s32(v199.val[1], v210.val[1]);
                v114 = v80 + 40;
                vst2q_f32(v114, v212);
                v115 = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v215.val[0], 3), vaddq_s32(v112, v199.val[0])), v217.val[0]);
                v212.val[0] = vaddq_s32(v115, v102);
                v116 = vzip1q_s32(v113, v37);
                v117 = v80 + 48;
                v215.val[0] = vzip1q_s32(v212.val[0], v38);
                vst2q_f32(v117, v215);
                v215.val[0] = vqtbl2q_s8(v207, xmmword_296B8F070);
                v118 = vqtbl2q_s8(v210, xmmword_296B8F080);
                v43 = xmmword_296B8F060;
                v199.val[0] = vqtbl2q_s8(v215, xmmword_296B8F020);
                v119 = vaddq_s32(vshlq_n_s64(v199.val[0], 0x20uLL), v199.val[0]);
                v35 = vdupq_laneq_s32(v199.val[1], 3);
                v199.val[1] = vdupq_lane_s32(*v119.i8, 1);
                v199.val[1].i64[0] = 0;
                v120 = vaddq_s32(v199.val[1], v119);
                v212.val[1] = vaddq_s32(vaddq_s32(v217.val[1], v210.val[1]), v35);
                v42 = vdupq_laneq_s32(v115, 3);
                v215.val[0] = vzip2q_s32(v113, v37);
                v215.val[1] = vzip2q_s32(v212.val[0], v38);
                v121 = vaddq_s32(vaddq_s32(v120, v102), v42);
                v122 = v80 + 56;
                vst2q_f32(v122, v215);
                v215.val[0] = vzip1q_s32(v212.val[1], v37);
                v215.val[1] = vzip1q_s32(v121, v38);
                v123 = v80 + 64;
                vst2q_f32(v123, v215);
                v215.val[1] = vqtbl2q_s8(v207, xmmword_296B8F050);
                v215.val[0] = vqtbl2q_s8(v210, xmmword_296B8F060);
                v212.val[0] = vqtbl2q_s8(v215, xmmword_296B8F020);
                v124 = vaddq_s32(vdupq_laneq_s32(v217.val[1], 3), v219.val[0]);
                v212.val[0] = vaddq_s32(vshlq_n_s64(v212.val[0], 0x20uLL), v212.val[0]);
                v215.val[0] = vdupq_lane_s32(*v212.val[0].i8, 1);
                v215.val[0].i64[0] = 0;
                v212.val[0] = vaddq_s32(v215.val[0], v212.val[0]);
                v215.val[0] = vzip2q_s32(v212.val[1], v37);
                v215.val[1] = vzip2q_s32(v121, v38);
                v125 = vaddq_s32(vaddq_s32(v124, v210.val[1]), v35);
                v126 = v80 + 72;
                vst2q_f32(v126, v215);
                v60 = xmmword_296B8F000;
                v59 = xmmword_296B8F030;
                v212.val[0] = vaddq_s32(vdupq_laneq_s32(v120, 3), v212.val[0]);
                v212.val[1] = vaddq_s32(vaddq_s32(v212.val[0], v102), v42);
                v127 = vzip1q_s32(v125, v37);
                v128 = v80 + 80;
                v215.val[0] = vzip1q_s32(v212.val[1], v38);
                vst2q_f32(v128, v215);
                v215.val[0] = vqtbl2q_s8(v198, xmmword_296B8F030);
                v129 = vqtbl2q_s8(v195, xmmword_296B8F040);
                v130 = vqtbl2q_s8(v215, xmmword_296B8F020);
                v62 = xmmword_296B8F010;
                v198.val[1] = vqtbl2q_s8(v198, xmmword_296B8F000);
                v131 = vaddq_s32(vshlq_n_s64(v130, 0x20uLL), v130);
                v215.val[0] = vdupq_lane_s32(*v131.i8, 1);
                v198.val[0] = vqtbl2q_s8(v195, xmmword_296B8F010);
                v195.val[1] = vqtbl2q_s8(v207, xmmword_296B8F030);
                v195.val[0] = vqtbl2q_s8(v210, xmmword_296B8F040);
                v207.val[1] = vqtbl2q_s8(v207, xmmword_296B8F000);
                v215.val[0].i64[0] = 0;
                v207.val[0] = vqtbl2q_s8(v210, xmmword_296B8F010);
                v132 = vaddq_s32(v215.val[0], v131);
                v210.val[0] = vdupq_laneq_s32(v124, 3);
                v195.val[0] = vqtbl2q_s8(v195, xmmword_296B8F020);
                v195.val[0] = vaddq_s32(vshlq_n_s64(v195.val[0], 0x20uLL), v195.val[0]);
                v195.val[1] = vdupq_lane_s32(*v195.val[0].i8, 1);
                v133 = vaddq_s32(vaddq_s32(vaddq_s32(v132, v210.val[0]), v210.val[1]), v35);
                v195.val[1].i64[0] = 0;
                v195.val[0] = vaddq_s32(v195.val[1], v195.val[0]);
                v195.val[1] = vdupq_laneq_s32(v212.val[0], 3);
                v134 = vzip2q_s32(v125, v37);
                v215.val[0] = vzip2q_s32(v212.val[1], v38);
                v135 = v80 + 88;
                vst2q_f32(v135, v215);
                v136 = vaddq_s32(vaddq_s32(vaddq_s32(v195.val[0], v195.val[1]), v102), v42);
                v212.val[0] = vzip1q_s32(v133, v37);
                v137 = v80 + 96;
                v212.val[1] = vzip1q_s32(v136, v38);
                vst2q_f32(v137, v212);
                v212.val[0] = vzip2q_s32(v133, v37);
                v212.val[1] = vzip2q_s32(v136, v38);
                v138 = v80 + 104;
                vst2q_f32(v138, v212);
                v198.val[0] = vqtbl2q_s8(v198, xmmword_296B8F020);
                v198.val[0] = vaddq_s32(vshlq_n_s64(v198.val[0], 0x20uLL), v198.val[0]);
                v198.val[1] = vdupq_lane_s32(*v198.val[0].i8, 1);
                v198.val[1].i64[0] = 0;
                v198.val[0] = vaddq_s32(v198.val[1], v198.val[0]);
                v198.val[1] = vdupq_laneq_s32(v132, 3);
                v61 = xmmword_296B8F020;
                v198.val[0] = vaddq_s32(v198.val[1], v198.val[0]);
                v198.val[1] = vqtbl2q_s8(v207, xmmword_296B8F020);
                v198.val[1] = vaddq_s32(vshlq_n_s64(v198.val[1], 0x20uLL), v198.val[1]);
                v36 = vdupq_lane_s32(*v198.val[1].i8, 1);
                v36.i64[0] = 0;
                v198.val[1] = vaddq_s32(vdupq_laneq_s32(v195.val[0], 3), vaddq_s32(v36, v198.val[1]));
                v31 = vaddq_s32(vaddq_s32(vaddq_s32(v198.val[0], v210.val[0]), v210.val[1]), v35);
                v32 = vaddq_s32(vaddq_s32(vaddq_s32(v198.val[1], v195.val[1]), v102), v42);
                v198.val[0] = vzip1q_s32(v31, v37);
                v139 = v80 + 112;
                v198.val[1] = vzip1q_s32(v32, v38);
                vst2q_f32(v139, v198);
                v198.val[0] = vzip2q_s32(v31, v37);
                v198.val[1] = vzip2q_s32(v32, v38);
                v140 = v80 + 120;
                vst2q_f32(v140, v198);
                v30 = vextq_s8(v32, v32, 8uLL);
                v33 = vextq_s8(v31, v31, 8uLL);
                *v42.i8 = vzip2_s32(*v33.i8, *v30.i8);
                v80 += 128;
                result = v63 + 64;
                v63 += 32;
              }

              while (result <= v29);
              v79 = v32.u32[3];
              v78 = v31.u32[3];
            }

            else
            {
              v78 = v42.i32[0];
              v79 = v42.u32[1];
              v80 = a11;
            }

            if (v63 + 8 <= v29)
            {
              v143 = v188 + v39;
              v144 = v188 + v39 + 2 * v188;
              v145 = v39 + 2 * v188;
              v146 = v181 + v40;
              result = v181 + v40 + 2 * v181;
              v147 = v40 + 2 * v181;
              do
              {
                v30.i64[0] = *(v39 + v63);
                v31.i64[0] = *(v143 + v63);
                v32.i64[0] = *(v145 + v63);
                v33.i64[0] = *(v144 + v63);
                v148 = vzip1q_s8(v33, v31);
                v149 = vzip1q_s8(v32, v30);
                v150 = vzip1q_s8(v148, v149);
                v151 = vzip2q_s8(v148, v149);
                v152 = vaddq_s32(vshlq_n_s64(v150, 0x20uLL), v150);
                v153 = vaddq_s32(vshlq_n_s64(v151, 0x20uLL), v151);
                v154 = vdupq_lane_s32(*v153.i8, 1);
                v155 = vdupq_lane_s32(*v152.i8, 1);
                v155.i64[0] = 0;
                v156 = vdupq_n_s32(v78);
                v154.i64[0] = 0;
                v35.i64[0] = *(v40 + v63);
                v42.i64[0] = *(v146 + v63);
                v157 = vaddq_s32(v155, v152);
                v155.i64[0] = *(v147 + v63);
                v36.i64[0] = *(result + v63);
                v158 = vzip1q_s8(v36, v42);
                v159 = vaddq_s32(v154, vaddq_s32(v153, v156));
                v160 = vzip1q_s8(v155, v35);
                v161 = vzip1q_s8(v158, v160);
                v162 = vaddq_s32(vshlq_n_s64(v161, 0x20uLL), v161);
                v35 = vdupq_laneq_s32(v157, 3);
                v163 = vdupq_lane_s32(*v162.i8, 1);
                v163.i64[0] = 0;
                v164 = vaddq_s32(v163, v162);
                v165 = vaddq_s32(v157, v156);
                v166 = vdupq_n_s32(v79);
                v36 = vaddq_s32(v164, v166);
                v208.val[0] = vzip1q_s32(v165, v37);
                v167 = v80 + 16;
                v208.val[1] = vzip1q_s32(v36, v38);
                v168 = v80;
                vst2q_f32(v168, v208);
                v168 += 8;
                v169 = vzip2q_s8(v158, v160);
                v170 = vaddq_s32(vshlq_n_s64(v169, 0x20uLL), v169);
                v42 = vdupq_lane_s32(*v170.i8, 1);
                v30 = vaddq_s32(v159, v35);
                v42.i64[0] = 0;
                v78 = v30.u32[3];
                v171 = v80 + 24;
                v31 = vaddq_s32(vaddq_s32(v42, vaddq_s32(v170, v166)), vdupq_laneq_s32(v164, 3));
                v79 = v31.u32[3];
                v197.val[0] = vzip2q_s32(v165, v37);
                v197.val[1] = vzip2q_s32(v36, v38);
                vst2q_f32(v168, v197);
                v197.val[0] = vzip1q_s32(v30, v37);
                v197.val[1] = vzip1q_s32(v31, v38);
                vst2q_f32(v167, v197);
                v32 = vzip2q_s32(v30, v37);
                v33 = vzip2q_s32(v31, v38);
                vst2q_f32(v171, *v32.i8);
                v142 = v80 + 32;
                v141 = v63 + 8;
                v172 = v63 + 16;
                v63 += 8;
                v80 += 32;
              }

              while (v172 <= v29);
            }

            else
            {
              v141 = v63;
              v142 = v80;
            }

            if (v141 < v29)
            {
              do
              {
                v78 += (*(v187[0] + v141) << 24) | (*(v187[0] + v141 + v188) << 16) | (*(v187[0] + v141 + 2 * v188) << 8) | *(v187[0] + v141 + 2 * v188);
                v79 += (*(v180[0] + v141) << 24) | (*(v180[0] + v141 + v181) << 16) | (*(v180[0] + v141 + 2 * v181) << 8) | *(v180[0] + v141 + 2 * v181);
                *&v173 = __PAIR64__(v79, v78);
                *(&v173 + 1) = __PAIR64__(a7, a6);
                *v142 = v173;
                v142 += 4;
                ++v141;
              }

              while (v29 != v141);
            }
          }
        }

        a11 = (a11 + a12);
        v25 += a10;
      }

      while (v25 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t **a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v201 = 2;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v199 = v20.i32[0];
    v197 = v19;
    v195[1] = result;
    v198 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v196 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v200 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
    v194 = 2;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v192 = v23.i32[0];
    v190 = v22;
    v188[1] = v17;
    v191 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v189 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v193 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
    if (*(*a6 + 24))
    {
      _D0 = **a6;
      __asm { FCVT            H0, D0 }

      v30 = _D0;
    }

    else
    {
      v30 = 32256;
    }

    if (*(*a7 + 24))
    {
      _D0 = **a7;
      __asm { FCVT            H0, D0 }

      v32 = _D0;
    }

    else
    {
      v32 = 32256;
    }

    v33 = a3[6].u32[1];
    if (a3[7].u32[0] + v33 < v18)
    {
      v35 = a3[3].i32[1] * *(a2 + 60);
      v36 = a3[5].u32[1];
      v37 = v36 + a9;
      v186 = vdupq_n_s16(v32);
      v187 = vdupq_n_s16(v30);
      do
      {
        v198 = v35 + v33;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v195);
        v191 = v35 + v33;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v188);
        v40.i64[0] = 0xFFFFFFFF00000000;
        v40.i64[1] = 0xFFFFFFFF00000000;
        v41 = v195[0];
        if (v195[0])
        {
          v42 = v188[0];
          if (v188[0])
          {
            if (v36 >= 0x20)
            {
              v46 = 0;
              v44 = 0;
              v43 = 0;
              v47 = v196 + v195[0];
              v48 = v189 + v188[0];
              do
              {
                v50 = *(v195[0] + v46);
                v49 = *(v195[0] + v46 + 16);
                v52 = *(v47 + v46);
                v51 = *(v47 + v46 + 16);
                v53 = vzip1q_s8(v52, v50);
                v54 = vzip2q_s8(v52, v50);
                v55 = vzip1q_s8(v51, v49);
                v56 = vzip2q_s8(v51, v49);
                v57 = vaddq_s16(vshlq_n_s32(v53, 0x10uLL), v53);
                v58 = vaddq_s16(vshlq_n_s32(v54, 0x10uLL), v54);
                v59 = vaddq_s16(vshlq_n_s32(v55, 0x10uLL), v55);
                v60 = vaddq_s16(vshlq_n_s32(v56, 0x10uLL), v56);
                v61 = vaddq_s16(vandq_s8(vqtbl1q_s8(v60, xmmword_296B8F090), v40), v60);
                v62 = vaddq_s16(vandq_s8(vqtbl1q_s8(v59, xmmword_296B8F090), v40), v59);
                v63 = vaddq_s16(vandq_s8(vqtbl1q_s8(v58, xmmword_296B8F090), v40), v58);
                v64 = vaddq_s16(vandq_s8(vqtbl1q_s8(v57, xmmword_296B8F090), v40), v57);
                v66 = *(v188[0] + v46);
                v65 = *(v188[0] + v46 + 16);
                v68 = *(v48 + v46);
                v67 = *(v48 + v46 + 16);
                v69 = vzip1q_s8(v68, v66);
                v70 = vzip2q_s8(v68, v66);
                v71 = vzip1q_s8(v67, v65);
                v72 = vzip2q_s8(v67, v65);
                v73 = vaddq_s16(vshlq_n_s32(v69, 0x10uLL), v69);
                v74 = vaddq_s16(vshlq_n_s32(v70, 0x10uLL), v70);
                v75 = vaddq_s16(vshlq_n_s32(v71, 0x10uLL), v71);
                v76 = vaddq_s16(vshlq_n_s32(v72, 0x10uLL), v72);
                v77 = vaddq_s16(vandq_s8(vqtbl1q_s8(v76, xmmword_296B8F090), v40), v76);
                v78 = vaddq_s16(vandq_s8(vqtbl1q_s8(v75, xmmword_296B8F090), v40), v75);
                v79 = vaddq_s16(vandq_s8(vqtbl1q_s8(v74, xmmword_296B8F090), v40), v74);
                v80 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v64.i8, 3), v64), vaddq_s16(vdupq_lane_s16(*v63.i8, 3), v63));
                v81 = vaddq_s16(vandq_s8(vqtbl1q_s8(v73, xmmword_296B8F090), v40), v73);
                v82 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_lane_s16(*&v62, 3), v62), vaddq_s16(vdupq_lane_s16(*&v61, 3), v61)), v80).u16[7];
                v39 = vaddq_s16(vaddq_s16(vdupq_lane_s16(*v78.i8, 3), v78), vaddq_s16(vdupq_lane_s16(*v77.i8, 3), v77));
                v38 = vaddq_s16(v39, vaddq_s16(vaddq_s16(vdupq_lane_s16(*v81.i8, 3), v81), vaddq_s16(vdupq_lane_s16(*v79.i8, 3), v79)));
                v44 += v82;
                v43 += v38.u16[7];
                v83 = v46 + 64;
                v46 += 32;
              }

              while (v83 <= v36);
              v45 = v36 & 0xFFFFFFE0;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              v45 = 0;
            }

            if ((v45 | 8) <= v36)
            {
              do
              {
                v38.i64[0] = *(v195[0] + v45);
                v39.i64[0] = *(v196 + v195[0] + v45);
                v85 = vzip1q_s8(v39, v38);
                v86 = vaddq_s16(vshlq_n_s32(v85, 0x10uLL), v85);
                v87 = vextq_s8(v86, v86, 0xCuLL);
                v88 = vaddq_s16(v87, v86);
                v89 = v88.u16[3];
                v88.i64[0] = *(v188[0] + v45);
                v44 += v88.u16[7] + v89;
                v87.i64[0] = *(v189 + v188[0] + v45);
                v90 = vzip1q_s8(v87, v88);
                v91 = vaddq_s16(vshlq_n_s32(v90, 0x10uLL), v90);
                v39 = vextq_s8(v91, v91, 0xCuLL);
                v38 = vaddq_s16(v39, v91);
                v43 += v38.u16[7] + v38.u16[3];
                v84 = v45 + 8;
                v92 = v45 + 16;
                v45 += 8;
              }

              while (v92 <= v36);
            }

            else
            {
              v84 = v45;
            }

            v93 = v36 - v84;
            if (v36 > v84)
            {
              v94 = (v84 + v195[0] + v196);
              v95 = (v195[0] + v84);
              v96 = (v84 + v188[0] + v189);
              v97 = (v188[0] + v84);
              do
              {
                v99 = *v95++;
                v98 = v99;
                v100 = *v94++;
                v101 = v100 | (v98 << 8);
                v102 = *v97++;
                result = v102;
                v44 += v101;
                v103 = *v96++;
                v43 += v103 | (result << 8);
                --v93;
              }

              while (v93);
              v84 = v36;
            }

            if (v84 + 32 <= v37)
            {
              v106 = v196 + v195[0];
              v107 = v189 + v188[0];
              v108 = a11;
              do
              {
                v110 = *(v41 + v84);
                v109 = *(v41 + v84 + 16);
                v112 = *(v106 + v84);
                v111 = *(v106 + v84 + 16);
                v113 = vzip2q_s8(v112, v110);
                v114 = vzip2q_s8(v111, v109);
                v115 = vzip1q_s8(v111, v109);
                v116 = vzip1q_s8(v112, v110);
                v117 = vaddq_s16(vshlq_n_s32(v113, 0x10uLL), v113);
                v118 = vaddq_s16(vshlq_n_s32(v114, 0x10uLL), v114);
                v119 = vaddq_s16(vshlq_n_s32(v115, 0x10uLL), v115);
                v120 = vaddq_s16(vshlq_n_s32(v116, 0x10uLL), v116);
                v121 = vaddq_s16(vandq_s8(vqtbl1q_s8(v120, xmmword_296B8F090), v40), v120);
                v122 = vaddq_s16(vandq_s8(vqtbl1q_s8(v119, xmmword_296B8F090), v40), v119);
                v123 = vaddq_s16(vandq_s8(vqtbl1q_s8(v118, xmmword_296B8F090), v40), v118);
                v124 = vaddq_s16(vandq_s8(vqtbl1q_s8(v117, xmmword_296B8F090), v40), v117);
                v125 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v122.i8, 3), xmmword_296B8F0A0), v122);
                v126 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v121.i8, 3), xmmword_296B8F0A0), v121);
                v127 = vdupq_n_s16(v44);
                v129 = *(v42 + v84);
                v128 = *(v42 + v84 + 16);
                v130 = vdupq_laneq_s16(v126, 7);
                v132 = *(v107 + v84);
                v131 = *(v107 + v84 + 16);
                v133 = vdupq_laneq_s16(v125, 7);
                v134 = vzip2q_s8(v132, v129);
                v135 = vzip1q_s8(v132, v129);
                v136 = vaddq_s16(vshlq_n_s32(v135, 0x10uLL), v135);
                v137 = vaddq_s16(v125, v127);
                v138 = vaddq_s16(vandq_s8(vqtbl1q_s8(v136, xmmword_296B8F090), v40), v136);
                v139 = vaddq_s16(v126, v127);
                v140 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v138.i8, 3), xmmword_296B8F0A0), v138);
                v141 = vdupq_n_s16(v43);
                v142 = vaddq_s16(v140, v141);
                v143 = v108 + 32;
                v207.val[0] = vzip1q_s16(v139, v187);
                v144 = v108 + 48;
                v145 = v108 + 64;
                v146 = v108 + 80;
                v147 = v108 + 96;
                v148 = v108 + 112;
                v207.val[1] = vzip1q_s16(v142, v186);
                v149 = v108;
                vst2q_s16(v149, v207);
                v149 += 16;
                v207.val[0] = vzip2q_s16(v139, v187);
                v207.val[1] = vzip2q_s16(v142, v186);
                vst2q_s16(v149, v207);
                v150 = vzip2q_s8(v131, v128);
                v151 = vzip1q_s8(v131, v128);
                v152 = vaddq_s16(v133, vaddq_s16(vandq_s8(vdupq_lane_s16(*v123.i8, 3), xmmword_296B8F0A0), v123));
                v153 = vaddq_s16(vshlq_n_s32(v134, 0x10uLL), v134);
                v154 = vaddq_s16(vshlq_n_s32(v150, 0x10uLL), v150);
                v155 = vaddq_s16(vshlq_n_s32(v151, 0x10uLL), v151);
                v156 = vaddq_s16(v130, vaddq_s16(vandq_s8(vdupq_lane_s16(*v124.i8, 3), xmmword_296B8F0A0), v124));
                v157 = vdupq_laneq_s16(v156, 7);
                v158 = vaddq_s16(vandq_s8(vqtbl1q_s8(v155, xmmword_296B8F090), v40), v155);
                v159 = vaddq_s16(vandq_s8(vqtbl1q_s8(v154, xmmword_296B8F090), v40), v154);
                v160 = vaddq_s16(vandq_s8(vqtbl1q_s8(v153, xmmword_296B8F090), v40), v153);
                v161 = vaddq_s16(v152, v127);
                v162 = vaddq_s16(v156, v127);
                v163 = vaddq_s16(vandq_s8(vdupq_lane_s16(*v158.i8, 3), xmmword_296B8F0A0), v158);
                v164 = vaddq_s16(v161, v157);
                v165 = vaddq_s16(v137, v157);
                v166 = vaddq_s16(vdupq_laneq_s16(v140, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v160.i8, 3), xmmword_296B8F0A0), v160));
                v167 = vdupq_laneq_s16(v166, 7);
                v168 = vaddq_s16(v166, v141);
                v39 = vaddq_s16(vaddq_s16(vaddq_s16(vdupq_laneq_s16(v163, 7), vaddq_s16(vandq_s8(vdupq_lane_s16(*v159.i8, 3), xmmword_296B8F0A0), v159)), v141), v167);
                v169 = vaddq_s16(v163, v141);
                v205.val[0] = vzip2q_s16(v162, v187);
                v205.val[1] = vzip2q_s16(v168, v186);
                v206.val[0] = vzip1q_s16(v162, v187);
                v206.val[1] = vzip1q_s16(v168, v186);
                v38 = vaddq_s16(v169, v167);
                vst2q_s16(v143, v206);
                v44 = v164.u16[7];
                vst2q_s16(v144, v205);
                v43 = v39.u16[7];
                v204.val[0] = vzip1q_s16(v165, v187);
                v204.val[1] = vzip1q_s16(v38, v186);
                vst2q_s16(v145, v204);
                v170 = vzip2q_s16(v165, v187);
                v204.val[0] = vzip2q_s16(v38, v186);
                vst2q_s16(v146, v204);
                v171 = vzip1q_s16(v164, v187);
                v204.val[0] = vzip1q_s16(v39, v186);
                vst2q_s16(v147, v204);
                v202.val[0] = vzip2q_s16(v164, v187);
                v202.val[1] = vzip2q_s16(v39, v186);
                vst2q_s16(v148, v202);
                v104 = v108 + 128;
                v105 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v108 += 128;
              }

              while (result <= v37);
            }

            else
            {
              v104 = a11;
              v105 = v84;
            }

            if (v105 + 8 <= v37)
            {
              v174 = v196 + v41;
              v175 = v189 + v42;
              do
              {
                v38.i64[0] = *(v41 + v105);
                v39.i64[0] = *(v174 + v105);
                v176 = vzip1q_s8(v39, v38);
                v177 = vaddq_s16(vshlq_n_s32(v176, 0x10uLL), v176);
                v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v177, xmmword_296B8F090), v40), v177);
                v179 = vandq_s8(vdupq_lane_s16(*v178.i8, 3), xmmword_296B8F0A0);
                v180 = vdupq_n_s16(v44);
                v38 = vaddq_s16(vaddq_s16(v178, v180), v179);
                v44 = v38.u16[7];
                v179.i64[0] = *(v42 + v105);
                v180.i64[0] = *(v175 + v105);
                v181 = vzip1q_s8(v180, v179);
                v182 = vaddq_s16(vshlq_n_s32(v181, 0x10uLL), v181);
                v183 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_296B8F090), v40), v182);
                v39 = vaddq_s16(vaddq_s16(v183, vdupq_n_s16(v43)), vandq_s8(vdupq_lane_s16(*v183.i8, 3), xmmword_296B8F0A0));
                v43 = v39.u16[7];
                v203.val[0] = vzip1q_s16(v38, v187);
                v203.val[1] = vzip1q_s16(v39, v186);
                v173 = v104 + 32;
                vst2q_s16(v104, v203);
                v184 = v104 + 16;
                v203.val[0] = vzip2q_s16(v38, v187);
                v203.val[1] = vzip2q_s16(v39, v186);
                vst2q_s16(v184, v203);
                v172 = v105 + 8;
                result = v105 + 16;
                v105 += 8;
                v104 = v173;
              }

              while (result <= v37);
            }

            else
            {
              v172 = v105;
              v173 = v104;
            }

            if (v172 < v37)
            {
              do
              {
                v44 += *(v195[0] + v172 + v196) | (*(v195[0] + v172) << 8);
                v43 += *(v188[0] + v172 + v189) | (*(v188[0] + v172) << 8);
                LOWORD(v185) = v44;
                WORD1(v185) = v43;
                WORD2(v185) = v30;
                HIWORD(v185) = v32;
                *v173 = v185;
                v173 += 4;
                ++v172;
              }

              while (v37 != v172);
            }
          }
        }

        a11 = (a11 + a12);
        v33 += a10;
      }

      while (v33 + a3[7].u32[0] < v18);
    }
  }

  return result;
}

unint64_t CompressedInterleave4<float,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(unint64_t result, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5, double **a6, double **a7, uint64_t a8, uint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (a9)
  {
    v17 = result;
    v18 = HIDWORD(*(a2 + 56));
    v222 = 3;
    v19 = *(a4 + 8);
    v20 = a3[3];
    v220 = v20.i32[0];
    v218 = v19;
    v216[1] = result;
    v219 = a3[6].i32[1] + v20.i32[1] * v18;
    v21 = a3[7].u32[1];
    v217 = vmin_u32(vmls_s32(*(*(*&v19[5] + 8 * v21) + 16), v19[6], v20), v19[6]).u32[0];
    v221 = v21;
    AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
    v215 = 3;
    v22 = *(a5 + 8);
    v23 = a3[3];
    v213 = v23.i32[0];
    v211 = v22;
    v209[1] = v17;
    v212 = a3[6].i32[1] + v23.i32[1] * v18;
    v24 = a3[7].u32[1];
    v210 = vmin_u32(vmls_s32(*(*(*&v22[5] + 8 * v24) + 16), v22[6], v23), v22[6]).u32[0];
    v214 = v24;
    result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
    v26 = *a6;
    if (*(*a6 + 24))
    {
      v25 = *v26;
      *&v25 = *v26;
    }

    else
    {
      LODWORD(v25) = 2143289344;
    }

    v206 = *&v25;
    v27 = *a7;
    if (*(*a7 + 24))
    {
      v25 = *v27;
      *&v25 = *v27;
    }

    else
    {
      LODWORD(v25) = 2143289344;
    }

    v205 = LODWORD(v25);
    v28 = a3[6].u32[1];
    if (a3[7].u32[0] + v28 < v18)
    {
      v30 = a3[3].i32[1] * *(a2 + 60);
      v31 = a3[5].u32[1];
      v32 = v31 + a9;
      v208 = vdupq_lane_s32(v206, 0);
      v204 = vdupq_lane_s32(*&v25, 0);
      do
      {
        v219 = v30 + v28;
        AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v216);
        v212 = v30 + v28;
        result = AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(v209);
        v37 = 0uLL;
        v38 = v216[0];
        if (v216[0])
        {
          v39 = v209[0];
          if (v209[0])
          {
            if (v31 >= 0x20)
            {
              v48 = 0;
              v49 = v216[0] + 2 * v217;
              v50 = v217 + v216[0];
              v51 = v209[0] + 2 * v210;
              v52 = v210 + v209[0];
              v42.i64[0] = 0;
              v41.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v46 = xmmword_296B8F0B0;
              v53 = xmmword_296B8F000;
              v47 = xmmword_296B8F030;
              v45 = xmmword_296B8F0C0;
              do
              {
                v223.val[1] = *(v216[0] + v48);
                v225.val[1] = *(v216[0] + v48 + 16);
                v223.val[0] = *(v49 + v48);
                v225.val[0] = *(v49 + v48 + 16);
                v227.val[1] = vqtbl2q_s8(v223, v43);
                v55 = *(v50 + v48);
                v54 = *(v50 + v48 + 16);
                v227.val[0] = vqtbl1q_s8(v55, v46);
                v227.val[0] = vqtbl2q_s8(v227, xmmword_296B8F020);
                v231.val[1] = vqtbl2q_s8(v225, v43);
                v231.val[0] = vqtbl1q_s8(v54, v46);
                v227.val[1] = vqtbl2q_s8(v231, xmmword_296B8F020);
                v231.val[1] = vqtbl2q_s8(v225, v53);
                v231.val[0] = vqtbl1q_s8(v54, v45);
                v231.val[0] = vqtbl2q_s8(v231, xmmword_296B8F020);
                v56 = vqtbl2q_s8(v223, xmmword_296B8F070);
                v231.val[1] = vqtbl1q_s8(v55, xmmword_296B8F0D0);
                v231.val[1] = vqtbl2q_s8(*(&v231 + 16), xmmword_296B8F020);
                v234.val[1] = vqtbl2q_s8(v223, v53);
                v234.val[0] = vqtbl1q_s8(v55, v45);
                v234.val[0] = vqtbl2q_s8(v234, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v223, v47);
                v223.val[0] = vqtbl1q_s8(v55, xmmword_296B8F0E0);
                v57 = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, xmmword_296B8F070);
                v223.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0D0);
                v234.val[1] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[1] = vqtbl2q_s8(v225, v47);
                v223.val[0] = vqtbl1q_s8(v54, xmmword_296B8F0E0);
                v225.val[1] = vqtbl2q_s8(v223, xmmword_296B8F020);
                v223.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v223.val[1] = vaddq_s32(vshlq_n_s64(v227.val[1], 0x20uLL), v227.val[1]);
                v225.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v231.val[1] = vaddq_s32(vshlq_n_s64(v231.val[1], 0x20uLL), v231.val[1]);
                v58 = vaddq_s32(vshlq_n_s64(v57, 0x20uLL), v57);
                v227.val[1] = vaddq_s32(vshlq_n_s64(v234.val[1], 0x20uLL), v234.val[1]);
                v225.val[1] = vaddq_s32(vshlq_n_s64(v225.val[1], 0x20uLL), v225.val[1]);
                v234.val[0] = vaddq_s32(vshlq_n_s64(v234.val[0], 0x20uLL), v234.val[0]);
                v236.val[1] = *(v209[0] + v48);
                v238.val[1] = *(v209[0] + v48 + 16);
                v60 = *(v52 + v48);
                v59 = *(v52 + v48 + 16);
                v236.val[0] = *(v51 + v48);
                v238.val[0] = *(v51 + v48 + 16);
                v240.val[1] = vqtbl2q_s8(v236, v43);
                v240.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0B0);
                v234.val[1] = vdupq_lane_s32(*v225.val[0].i8, 1);
                v240.val[0] = vqtbl2q_s8(v240, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, v43);
                v228.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0B0);
                v240.val[1] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v238, xmmword_296B8F000);
                v228.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0C0);
                v61 = vqtbl2q_s8(v228, xmmword_296B8F020);
                v228.val[1] = vqtbl2q_s8(v236, xmmword_296B8F070);
                v228.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0D0);
                v228.val[0] = vqtbl2q_s8(v228, xmmword_296B8F020);
                v62 = vqtbl2q_s8(v236, xmmword_296B8F000);
                v228.val[1] = vqtbl1q_s8(v60, xmmword_296B8F0C0);
                v63 = vqtbl2q_s8(*(&v228 + 16), xmmword_296B8F020);
                v43 = xmmword_296B8F050;
                v228.val[1] = vdupq_lane_s32(*v223.val[1].i8, 1);
                v236.val[1] = vqtbl2q_s8(v236, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v60, xmmword_296B8F0E0);
                v231.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F070);
                v236.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0D0);
                v64 = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[1] = vqtbl2q_s8(v238, xmmword_296B8F030);
                v236.val[0] = vqtbl1q_s8(v59, xmmword_296B8F0E0);
                v238.val[0] = vdupq_lane_s32(*v223.val[0].i8, 1);
                v238.val[0].i64[0] = 0;
                v228.val[1].i64[0] = 0;
                v234.val[1].i64[0] = 0;
                v227.val[0] = vqtbl2q_s8(v236, xmmword_296B8F020);
                v236.val[0] = vaddq_s32(vshlq_n_s64(v240.val[0], 0x20uLL), v240.val[0]);
                v47 = xmmword_296B8F030;
                v236.val[1] = vaddq_s32(vshlq_n_s64(v240.val[1], 0x20uLL), v240.val[1]);
                v65 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v58.i8, 1), v58), vaddq_s32(vdupq_lane_s32(*v234.val[0].i8, 1), v234.val[0]));
                v234.val[0] = vaddq_s32(vshlq_n_s64(v61, 0x20uLL), v61);
                v238.val[1] = vaddq_s32(vshlq_n_s64(v228.val[0], 0x20uLL), v228.val[0]);
                v225.val[0] = vaddq_s32(v234.val[1], v225.val[0]);
                v234.val[1] = vaddq_s32(vshlq_n_s64(v63, 0x20uLL), v63);
                v66 = vaddq_s32(vshlq_n_s64(v64, 0x20uLL), v64);
                v227.val[0] = vaddq_s32(vshlq_n_s64(v227.val[0], 0x20uLL), v227.val[0]);
                v231.val[0] = vaddq_s32(vshlq_n_s64(v231.val[0], 0x20uLL), v231.val[0]);
                v67 = vdupq_lane_s32(*v234.val[0].i8, 1);
                v223.val[0] = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[1].i8, 1), v231.val[1]), vaddq_s32(v238.val[0], v223.val[0]));
                v67.i64[0] = 0;
                v231.val[1] = vaddq_s32(v67, v234.val[0]);
                v234.val[0] = vdupq_lane_s32(*v236.val[1].i8, 1);
                v223.val[1] = vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[1].i8, 1), v227.val[1]), 3), vaddq_s32(v228.val[1], v223.val[1]));
                v234.val[0].i64[0] = 0;
                v36 = vaddq_s32(v234.val[0], v236.val[1]);
                v236.val[1] = vdupq_lane_s32(*v236.val[0].i8, 1);
                v223.val[1] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v225.val[1].i8, 1), v225.val[1]), 3), v225.val[0]), v223.val[1]);
                v236.val[1].i64[0] = 0;
                v225.val[0] = vaddq_s32(v236.val[1], v236.val[0]);
                v46 = xmmword_296B8F0B0;
                v53 = xmmword_296B8F000;
                v45 = xmmword_296B8F0C0;
                v35 = vaddq_s32(vaddq_s32(vdupq_lane_s32(*v238.val[1].i8, 1), v238.val[1]), v225.val[0]);
                v42 = vaddq_s32(vaddq_s32(v223.val[1], vaddq_s32(v223.val[0], v65)), vdupq_lane_s32(*v42.i8, 0));
                v34 = vaddq_s32(v35, vaddq_s32(vaddq_s32(vdupq_lane_s32(*v231.val[0].i8, 1), v231.val[0]), vaddq_s32(vdupq_lane_s32(*v234.val[1].i8, 1), v234.val[1])));
                v68 = v48 + 64;
                v42.i32[0] = v42.i32[3];
                v33 = vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v227.val[0].i8, 1), v227.val[0]), 3), v231.val[1]), vaddq_s32(vdupq_laneq_s32(vaddq_s32(vdupq_lane_s32(*v66.i8, 1), v66), 3), v36)), v34);
                v48 += 32;
                v41 = vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0));
                v41.i32[0] = v41.i32[3];
              }

              while (v68 <= v31);
              v40 = v31 & 0xFFFFFFE0;
              v37 = 0uLL;
            }

            else
            {
              v40 = 0;
              v41.i64[0] = 0;
              v42.i64[0] = 0;
              v44 = xmmword_296B8F020;
              v43 = xmmword_296B8F050;
              v45 = xmmword_296B8F0C0;
              v46 = xmmword_296B8F0B0;
              v47 = xmmword_296B8F030;
            }

            if ((v40 | 8) <= v31)
            {
              do
              {
                v33.i64[0] = *(v216[0] + v40);
                v34.i64[0] = *(v217 + v216[0] + v40);
                v35.i64[0] = *(v216[0] + 2 * v217 + v40);
                v70 = vzip1q_s8(v37, v34);
                v71 = vzip1q_s8(v35, v33);
                v72 = vzip1q_s8(v70, v71);
                v73 = vzip2q_s8(v70, v71);
                v74 = vaddq_s32(vshlq_n_s64(v73, 0x20uLL), v73);
                v75 = vdupq_lane_s32(*v74.i8, 1);
                v76 = vaddq_s32(vshlq_n_s64(v72, 0x20uLL), v72);
                v77 = vaddq_s32(vdupq_lane_s32(*v76.i8, 1), v76);
                v42 = vaddq_s32(v75, vaddq_s32(v74, vdupq_lane_s32(*v42.i8, 0)));
                v74.i64[0] = *(v209[0] + v40);
                v75.i64[0] = *(v210 + v209[0] + v40);
                v42.i32[0] = v42.i32[3] + v77.i32[3];
                v77.i64[0] = *(v209[0] + 2 * v210 + v40);
                v78 = vzip1q_s8(v37, v75);
                v79 = vzip1q_s8(v77, v74);
                v80 = vzip1q_s8(v78, v79);
                v81 = vzip2q_s8(v78, v79);
                v33 = vaddq_s32(vshlq_n_s64(v81, 0x20uLL), v81);
                v34 = vdupq_lane_s32(*v33.i8, 1);
                v82 = vaddq_s32(vshlq_n_s64(v80, 0x20uLL), v80);
                v35 = vaddq_s32(vdupq_lane_s32(*v82.i8, 1), v82);
                v41 = vaddq_s32(v34, vaddq_s32(v33, vdupq_lane_s32(*v41.i8, 0)));
                v41.i32[0] = v41.i32[3] + v35.i32[3];
                v69 = v40 + 8;
                v83 = v40 + 16;
                v40 += 8;
              }

              while (v83 <= v31);
            }

            else
            {
              v69 = v40;
            }

            if (v69 <= v31)
            {
              v84 = v31;
            }

            else
            {
              v84 = v69;
            }

            if (v84 + 32 <= v32)
            {
              v87 = v216[0] + 2 * v217;
              v88 = v217 + v216[0];
              v89 = v209[0] + 2 * v210;
              v90 = v210 + v209[0];
              v91 = a11;
              do
              {
                v226.val[1] = *(v38 + v84);
                v224.val[1] = *(v38 + v84 + 16);
                v92 = *(v88 + v84);
                v93 = *(v88 + v84 + 16);
                v226.val[0] = *(v87 + v84);
                v224.val[0] = *(v87 + v84 + 16);
                v230.val[1] = vqtbl2q_s8(v226, xmmword_296B8F070);
                v230.val[0] = vqtbl1q_s8(v92, xmmword_296B8F0D0);
                v230.val[0] = vqtbl2q_s8(v230, v44);
                v94 = vqtbl2q_s8(v226, v47);
                v230.val[1] = vqtbl1q_s8(v92, xmmword_296B8F0E0);
                v233.val[1] = vqtbl2q_s8(v224, xmmword_296B8F070);
                v230.val[1] = vqtbl2q_s8(*(&v230 + 16), v44);
                v233.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0D0);
                v95 = vqtbl2q_s8(v233, v44);
                v233.val[1] = vqtbl2q_s8(v224, v47);
                v233.val[0] = vqtbl1q_s8(v93, xmmword_296B8F0E0);
                v207 = v93;
                v235.val[1] = vqtbl2q_s8(v224, v43);
                v233.val[0] = vqtbl2q_s8(v233, v44);
                v235.val[0] = vqtbl1q_s8(v93, v46);
                v235.val[0] = vqtbl2q_s8(v235, v44);
                v96 = vqtbl2q_s8(v226, xmmword_296B8F000);
                v235.val[1] = vqtbl1q_s8(v92, v45);
                v226.val[1] = vqtbl2q_s8(v226, v43);
                v235.val[1] = vqtbl2q_s8(*(&v235 + 16), v44);
                v226.val[0] = vqtbl1q_s8(v92, v46);
                v226.val[0] = vqtbl2q_s8(v226, v44);
                v97 = vaddq_s32(vshlq_n_s64(v230.val[0], 0x20uLL), v230.val[0]);
                v98 = vaddq_s32(vshlq_n_s64(v230.val[1], 0x20uLL), v230.val[1]);
                v233.val[1] = vaddq_s32(vshlq_n_s64(v95, 0x20uLL), v95);
                v230.val[0] = vaddq_s32(vshlq_n_s64(v233.val[0], 0x20uLL), v233.val[0]);
                v230.val[1] = vaddq_s32(vshlq_n_s64(v235.val[0], 0x20uLL), v235.val[0]);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v235.val[1], 0x20uLL), v235.val[1]);
                v226.val[0] = vaddq_s32(vshlq_n_s64(v226.val[0], 0x20uLL), v226.val[0]);
                v226.val[1] = vdupq_lane_s32(*v226.val[0].i8, 1);
                v99 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v100 = vdupq_lane_s32(*v230.val[1].i8, 1);
                v101 = vdupq_lane_s32(*v230.val[0].i8, 1);
                v102 = vdupq_lane_s32(*v233.val[1].i8, 1);
                v103 = vdupq_lane_s32(*v98.i8, 1);
                v104 = vdupq_lane_s32(*v97.i8, 1);
                v104.i64[0] = 0;
                v101.i64[0] = 0;
                v100.i64[0] = 0;
                v99.i64[0] = 0;
                v226.val[1].i64[0] = 0;
                v105 = vaddq_s32(v226.val[1], v226.val[0]);
                v233.val[0] = *(v39 + v84);
                v37 = *(v39 + v84 + 16);
                v235.val[0] = *(v90 + v84);
                v36 = *(v90 + v84 + 16);
                v235.val[1] = vaddq_s32(v99, v235.val[1]);
                v106 = *(v89 + v84);
                v226.val[0] = *(v89 + v84 + 16);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F070);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0D0);
                v230.val[1] = vaddq_s32(v100, v230.val[1]);
                v107 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(v233, xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0E0);
                v108 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F070);
                v230.val[0] = vaddq_s32(v101, v230.val[0]);
                v229.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0D0);
                v109 = vqtbl2q_s8(v229, v44);
                v229.val[1] = vqtbl2q_s8(v233, v43);
                v229.val[0] = vqtbl1q_s8(v235.val[0], xmmword_296B8F0B0);
                v44 = xmmword_296B8F020;
                v103.i64[0] = 0;
                v229.val[0] = vqtbl2q_s8(v229, xmmword_296B8F020);
                v102.i64[0] = 0;
                v110 = vdupq_lane_s32(*v42.i8, 0);
                v233.val[1] = vaddq_s32(v102, v233.val[1]);
                v111 = vaddq_s32(vshlq_n_s64(v107, 0x20uLL), v107);
                v112 = vaddq_s32(vshlq_n_s64(v108, 0x20uLL), v108);
                v113 = vaddq_s32(v103, v98);
                v114 = vaddq_s32(vshlq_n_s64(v229.val[0], 0x20uLL), v229.val[0]);
                v115 = vdupq_lane_s32(*v114.i8, 1);
                v229.val[0] = vdupq_lane_s32(*v111.i8, 1);
                v116 = vaddq_s32(v104, v97);
                v229.val[0].i64[0] = 0;
                v115.i64[0] = 0;
                v117 = vaddq_s32(v116, v110);
                v118 = vaddq_s32(v115, v114);
                v119 = vaddq_s32(v229.val[0], v111);
                v120 = vaddq_s32(vdupq_laneq_s32(v116, 3), v105);
                v121 = vdupq_lane_s32(*v41.i8, 0);
                v122 = vaddq_s32(v119, v121);
                v229.val[0] = vzip2q_s32(v117, v208);
                v229.val[1] = vzip2q_s32(v122, v204);
                v123 = vaddq_s32(vdupq_laneq_s32(v119, 3), v118);
                v241.val[0] = vzip1q_s32(v117, v208);
                v241.val[1] = vzip1q_s32(v122, v204);
                v124 = v91 + 16;
                v125 = v91 + 24;
                v126 = v91 + 32;
                v127 = v91;
                vst2q_f32(v127, v241);
                v127 += 8;
                v128 = vaddq_s32(v120, v110);
                v129 = vaddq_s32(v123, v121);
                vst2q_f32(v127, v229);
                v241.val[0] = vzip1q_s32(v128, v208);
                v241.val[1] = vzip1q_s32(v129, v204);
                vst2q_f32(v124, v241);
                v241.val[1] = vdupq_lane_s32(*v112.i8, 1);
                v241.val[1].i64[0] = 0;
                v130 = vdupq_laneq_s32(v120, 3);
                v241.val[1] = vaddq_s32(v241.val[1], v112);
                v131 = vdupq_laneq_s32(v123, 3);
                v229.val[0] = vzip2q_s32(v128, v208);
                v229.val[1] = vzip2q_s32(v129, v204);
                v132 = vaddq_s32(vaddq_s32(v113, v110), v130);
                v47 = xmmword_296B8F030;
                vst2q_f32(v125, v229);
                v133 = vaddq_s32(vaddq_s32(v241.val[1], v121), v131);
                v229.val[0] = vzip1q_s32(v132, v208);
                v229.val[1] = vzip1q_s32(v133, v204);
                vst2q_f32(v126, v229);
                v229.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F030);
                v229.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0E0);
                v134 = vqtbl2q_s8(v229, xmmword_296B8F020);
                v233.val[0] = vqtbl2q_s8(v233, xmmword_296B8F000);
                v135 = vqtbl1q_s8(v235.val[0], xmmword_296B8F0C0);
                v136 = vqtbl2q_s8(v233, xmmword_296B8F020);
                v233.val[0] = vaddq_s32(vshlq_n_s64(v109, 0x20uLL), v109);
                v235.val[0] = vaddq_s32(vaddq_s32(vdupq_laneq_s32(v113, 3), v235.val[1]), v130);
                v137 = vaddq_s32(vshlq_n_s64(v136, 0x20uLL), v136);
                v235.val[1] = vdupq_lane_s32(*v137.i8, 1);
                v235.val[1].i64[0] = 0;
                v138 = v91 + 40;
                v139 = v91 + 48;
                v140 = v91 + 56;
                v141 = v91 + 64;
                v142 = vaddq_s32(vdupq_laneq_s32(v241.val[1], 3), vaddq_s32(v235.val[1], v137));
                v235.val[1] = vaddq_s32(v235.val[0], v110);
                v143 = vaddq_s32(v142, v131);
                v46 = xmmword_296B8F0B0;
                v239.val[0] = vzip2q_s32(v132, v208);
                v239.val[1] = vzip2q_s32(v133, v204);
                v144 = vaddq_s32(v143, v121);
                vst2q_f32(v138, v239);
                v239.val[0] = vzip1q_s32(v235.val[1], v208);
                v239.val[1] = vzip1q_s32(v144, v204);
                vst2q_f32(v139, v239);
                v239.val[1] = vdupq_lane_s32(*v233.val[0].i8, 1);
                v239.val[1].i64[0] = 0;
                v145 = vdupq_laneq_s32(v235.val[0], 3);
                v235.val[0] = vaddq_s32(v239.val[1], v233.val[0]);
                v233.val[0] = vdupq_laneq_s32(v143, 3);
                v235.val[1] = vzip2q_s32(v235.val[1], v208);
                v146 = vzip2q_s32(v144, v204);
                v147 = vaddq_s32(vaddq_s32(v233.val[1], v110), v145);
                vst2q_f32(v140, *(&v235 + 16));
                v235.val[1] = vaddq_s32(vaddq_s32(v235.val[0], v121), v233.val[0]);
                v239.val[0] = vzip1q_s32(v147, v208);
                v239.val[1] = vzip1q_s32(v235.val[1], v204);
                vst2q_f32(v141, v239);
                v239.val[1] = vqtbl2q_s8(*(&v37 - 1), v43);
                v239.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0B0);
                v148 = vqtbl2q_s8(v239, xmmword_296B8F020);
                v149 = vaddq_s32(vshlq_n_s64(v148, 0x20uLL), v148);
                v150 = v91 + 72;
                v151 = v91 + 80;
                v152 = v91 + 88;
                v153 = v91 + 96;
                v230.val[1] = vaddq_s32(vdupq_laneq_s32(v233.val[1], 3), v230.val[1]);
                v233.val[1] = vdupq_lane_s32(*v149.i8, 1);
                v233.val[1].i64[0] = 0;
                v233.val[1] = vaddq_s32(v233.val[1], v149);
                v154 = vaddq_s32(vaddq_s32(v230.val[1], v110), v145);
                v233.val[1] = vaddq_s32(vdupq_laneq_s32(v235.val[0], 3), v233.val[1]);
                v239.val[0] = vzip2q_s32(v147, v208);
                v239.val[1] = vzip2q_s32(v235.val[1], v204);
                v235.val[0] = vaddq_s32(vaddq_s32(v233.val[1], v121), v233.val[0]);
                vst2q_f32(v150, v239);
                v239.val[0] = vzip1q_s32(v154, v208);
                v239.val[1] = vzip1q_s32(v235.val[0], v204);
                vst2q_f32(v151, v239);
                v235.val[1] = vaddq_s32(vshlq_n_s64(v134, 0x20uLL), v134);
                v155 = vdupq_lane_s32(*v235.val[1].i8, 1);
                v230.val[1] = vdupq_laneq_s32(v230.val[1], 3);
                v155.i64[0] = 0;
                v233.val[1] = vdupq_laneq_s32(v233.val[1], 3);
                v235.val[1] = vaddq_s32(v155, v235.val[1]);
                v237.val[0] = vzip2q_s32(v154, v208);
                v237.val[1] = vzip2q_s32(v235.val[0], v204);
                v156 = vaddq_s32(vaddq_s32(vaddq_s32(v230.val[0], v230.val[1]), v110), v145);
                v235.val[0] = vaddq_s32(vaddq_s32(vaddq_s32(v235.val[1], v233.val[1]), v121), v233.val[0]);
                vst2q_f32(v152, v237);
                v237.val[0] = vzip1q_s32(v156, v208);
                v237.val[1] = vzip1q_s32(v235.val[0], v204);
                vst2q_f32(v153, v237);
                v45 = xmmword_296B8F0C0;
                v224.val[1] = vqtbl2q_s8(v224, xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v207, xmmword_296B8F0C0);
                v157 = vqtbl2q_s8(v224, xmmword_296B8F020);
                v158 = vaddq_s32(vshlq_n_s64(v157, 0x20uLL), v157);
                v224.val[0] = vdupq_lane_s32(*v158.i8, 1);
                v224.val[0].i64[0] = 0;
                v159 = vaddq_s32(vdupq_laneq_s32(v230.val[0], 3), vaddq_s32(v224.val[0], v158));
                v224.val[1] = vqtbl2q_s8(*(&v37 - 1), xmmword_296B8F000);
                v224.val[0] = vqtbl1q_s8(v36, xmmword_296B8F0C0);
                v224.val[0] = vqtbl2q_s8(v224, xmmword_296B8F020);
                v224.val[0] = vaddq_s32(vshlq_n_s64(v224.val[0], 0x20uLL), v224.val[0]);
                v35 = vdupq_lane_s32(*v224.val[0].i8, 1);
                v35.i64[0] = 0;
                v42 = vaddq_s32(vaddq_s32(vaddq_s32(v159, v230.val[1]), v110), v145);
                v41 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vdupq_laneq_s32(v235.val[1], 3), vaddq_s32(v35, v224.val[0])), v233.val[1]), v121), v233.val[0]);
                v160 = vzip2q_s32(v156, v208);
                v224.val[0] = vzip2q_s32(v235.val[0], v204);
                v161 = v91 + 104;
                v162 = v91 + 112;
                v163 = v91 + 120;
                vst2q_f32(v161, v224);
                v164 = vzip1q_s32(v42, v208);
                v224.val[0] = vzip1q_s32(v41, v204);
                vst2q_f32(v162, v224);
                v33 = vzip2q_s32(v42, v208);
                v34 = vzip2q_s32(v41, v204);
                vst2q_f32(v163, *v33.i8);
                v85 = v91 + 128;
                v86 = v84 + 32;
                result = v84 + 64;
                v84 += 32;
                v42.i32[0] = v42.i32[3];
                v91 += 128;
                v41.i32[0] = v41.i32[3];
              }

              while (result <= v32);
            }

            else
            {
              v85 = a11;
              v86 = v84;
            }

            if (v86 + 8 <= v32)
            {
              v167 = v38 + 2 * v217;
              v168 = v217 + v38;
              v169 = v39 + 2 * v210;
              v170 = v210 + v39;
              do
              {
                v33.i64[0] = *(v38 + v86);
                v34.i64[0] = *(v168 + v86);
                v35.i64[0] = *(v167 + v86);
                v171 = vzip1q_s8(0, v34);
                v172 = vzip1q_s8(v35, v33);
                v173 = vzip1q_s8(v171, v172);
                v174 = vzip2q_s8(v171, v172);
                v175 = vshlq_n_s64(v174, 0x20uLL);
                v176 = vaddq_s32(vshlq_n_s64(v173, 0x20uLL), v173);
                v177 = vaddq_s32(v175, v174);
                v178 = vdupq_lane_s32(*v42.i8, 0);
                v175.i64[0] = *(v39 + v86);
                v179 = vdupq_lane_s32(*v177.i8, 1);
                v37.i64[0] = *(v170 + v86);
                v36.i64[0] = *(v169 + v86);
                v180 = vdupq_lane_s32(*v176.i8, 1);
                v181 = vaddq_s32(v177, v178);
                v182 = vzip1q_s8(0, v37);
                v183 = vzip1q_s8(v36, v175);
                v184 = vzip1q_s8(v182, v183);
                v180.i64[0] = 0;
                v185 = vzip2q_s8(v182, v183);
                v186 = vaddq_s32(vshlq_n_s64(v184, 0x20uLL), v184);
                v179.i64[0] = 0;
                v187 = vaddq_s32(vshlq_n_s64(v185, 0x20uLL), v185);
                v188 = vdupq_lane_s32(*v187.i8, 1);
                v189 = vdupq_lane_s32(*v186.i8, 1);
                v190 = vaddq_s32(v180, v176);
                v189.i64[0] = 0;
                v188.i64[0] = 0;
                v191 = vdupq_laneq_s32(v190, 3);
                v36 = vaddq_s32(v189, v186);
                v192 = vdupq_laneq_s32(v36, 3);
                v193 = vdupq_lane_s32(*v41.i8, 0);
                v42 = vaddq_s32(v190, v178);
                v194 = vaddq_s32(v179, v181);
                v195 = vaddq_s32(v36, v193);
                v36.i64[1] = v208.i64[1];
                v196 = vzip2q_s32(v42, v208);
                v232.val[0] = vzip1q_s32(v42, v208);
                v232.val[1] = vzip1q_s32(v195, v204);
                v166 = v85 + 32;
                v197 = v85 + 16;
                v198 = v85 + 24;
                v199 = vaddq_s32(v194, v191);
                vst2q_f32(v85, v232);
                v200 = v85 + 8;
                v41 = vaddq_s32(vaddq_s32(v188, vaddq_s32(v187, v193)), v192);
                v37 = vzip2q_s32(v195, v204);
                vst2q_f32(v200, *(&v37 - 1));
                v42.i32[0] = v199.i32[3];
                v201 = vzip1q_s32(v199, v208);
                v35 = vzip1q_s32(v41, v204);
                vst2q_f32(v197, *(&v35 - 1));
                v33 = vzip2q_s32(v199, v208);
                v34 = vzip2q_s32(v41, v204);
                vst2q_f32(v198, *v33.i8);
                v41.i32[0] = v41.i32[3];
                v165 = v86 + 8;
                result = v86 + 16;
                v86 += 8;
                v85 = v166;
              }

              while (result <= v32);
            }

            else
            {
              v165 = v86;
              v166 = v85;
            }

            if (v165 < v32)
            {
              v202 = v41.i32[0];
              do
              {
                LODWORD(v203) = ((*(v216[0] + v165) << 24) | (*(v216[0] + v165 + v217) << 16) | (*(v216[0] + v165 + 2 * v217) << 8)) + v42.i32[0];
                DWORD1(v203) = ((*(v209[0] + v165) << 24) | (*(v209[0] + v165 + v210) << 16) | (*(v209[0] + v165 + 2 * v210) << 8)) + v202;
                *(&v203 + 1) = __PAIR64__(v205, v206.u32[0]);
                *v166 = v203;
                v166 += 4;
                ++v165;
              }

              while (v32 != v165);
            }
          }
        }

        a11 = (a11 + a12);
        v28 += a10;
      }

      while (v28 + a3[7].u32[0] < v18);
    }
  }

  return result;
}