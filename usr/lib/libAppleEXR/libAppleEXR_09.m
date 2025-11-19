uint64_t CompressedPlanar<unsigned short,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, char *a8, uint64_t a9)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v15 = HIDWORD(v10);
    result = AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(v33, result, a2, a4, a3);
    v16 = a3[13];
    if (a3[14] + v16 < v15)
    {
      v17 = a3[7] * *(a2 + 60);
      do
      {
        v34 = v17 + v16;
        result = AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(v33);
        if (a6 >= 0x20)
        {
          v20 = 0;
          v21 = v33[0];
          v22 = v35 + v33[0];
          v23 = a8;
          do
          {
            v38.val[0] = *(v21 + v20);
            v37.val[0] = *(v21 + v20 + 16);
            v38.val[1] = *(v22 + v20);
            v37.val[1] = *(v22 + v20 + 16);
            v19 = v23 + 64;
            vst2q_s8(v23, v38);
            v24 = v23 + 32;
            vst2q_s8(v24, v37);
            v18 = v20 + 32;
            v25 = v20 + 64;
            v20 += 32;
            v23 = v19;
          }

          while (v25 <= a6);
        }

        else
        {
          v18 = 0;
          v19 = a8;
        }

        v26 = v18 | 8;
        while (v26 <= a6)
        {
          v36.val[0] = *(v18 + v33[0]);
          v36.val[1] = *(v18 + v35 + v33[0]);
          vst2_s8(v19, v36);
          v19 += 16;
          v26 = v18 + 16;
          v18 += 8;
        }

        v27 = a6 - v18;
        if (a6 > v18)
        {
          v28 = (v18 + v33[0]);
          v29 = &v28[v35];
          do
          {
            v31 = *v28++;
            v30 = v31;
            v32 = *v29++;
            v19[1] = v32;
            *v19 = v30;
            v19 += 2;
            --v27;
          }

          while (v27);
        }

        a8 += a9;
        v16 += a7;
      }

      while (v16 + a3[14] < v15);
    }
  }

  return result;
}

uint64_t CompressedPlanar<unsigned int,(StreamType)1>(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, char *a8, uint64_t a9)
{
  v10 = *(a2 + 56);
  if (v10)
  {
    v15 = HIDWORD(v10);
    result = AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(v40, result, a2, a4, a3);
    v16 = a3[13];
    if (a3[14] + v16 < v15)
    {
      v17 = a3[7] * *(a2 + 60);
      do
      {
        v41 = v17 + v16;
        result = AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(v40);
        if (a6 >= 0x20)
        {
          v22 = 0;
          v23 = v40[0];
          v24 = v42 + v40[0];
          v25 = a8;
          do
          {
            v43.val[0] = *(v23 + 32);
            v18 = *(v23 + 48);
            v43.val[1] = *(v24 + 32);
            v19 = *(v24 + 48);
            v45.val[0] = *v23;
            v44.val[0] = *(v23 + 16);
            v23 += 64;
            v45.val[1] = *v24;
            v44.val[1] = *(v24 + 16);
            v24 += 64;
            v26 = v25;
            vst2q_s8(v26, v45);
            v26 += 32;
            vst2q_s8(v26, v44);
            v21 = v25 + 128;
            v27 = v25 + 64;
            vst2q_s8(v27, v43);
            v28 = v25 + 96;
            v20 = v22 + 32;
            v29 = v22 + 64;
            v22 += 32;
            vst2q_s8(v28, *v18.i8);
            v25 = v21;
          }

          while (v29 <= a6);
        }

        else
        {
          v20 = 0;
          v21 = a8;
        }

        if ((v20 | 8) <= a6)
        {
          v31 = 2 * v20;
          do
          {
            v18 = *(v31 + v40[0]);
            v19 = *(v31 + v42 + v40[0]);
            vst2q_s8(v21, *v18.i8);
            v21 += 32;
            v30 = v20 + 8;
            v31 += 16;
            v32 = v20 + 16;
            v20 += 8;
          }

          while (v32 <= a6);
        }

        else
        {
          v30 = v20;
        }

        v33 = a6 - v30;
        if (a6 > v30)
        {
          v34 = (v40[0] + 2 * v30);
          v35 = &v34[v42];
          do
          {
            v36 = (v34 + 1);
            v37 = (v35 + 1);
            v38 = *v35;
            v35 += 2;
            v18.i32[0] = v38;
            v18.i8[4] = *v37;
            v39 = *v34;
            v34 += 2;
            v19.i32[0] = v39;
            v19.i8[4] = *v36;
            v18 = vtrn1q_s16(v19, v18);
            *v18.i8 = vmovn_s16(v18);
            *v21 = v18.i32[0];
            v21 += 4;
            --v33;
          }

          while (v33);
        }

        a8 += a9;
        v16 += a7;
      }

      while (v16 + a3[14] < v15);
    }
  }

  return result;
}

void TileDecoder_Zips::Decompress(size_t *this@<X1>, TileDecoder *a2@<X0>, uint64_t a3@<X2>, size_t *a4@<X3>, void **a5@<X8>)
{
  AXRBufferPool::allocate(this, a5);
  if (!*a5)
  {
    *a4 = 0;
    exception = __cxa_allocate_exception(8uLL);
    *exception = -5;
  }

  v9 = *(a2 + 3);
  v10 = *(*(*(*(v9 + 280) + 8 * *(a3 + 60)) + 8) + 8 * *(a3 + 32));
  if (!v10)
  {
    *a4 = 0;
    v24 = __cxa_allocate_exception(8uLL);
    *v24 = -4;
  }

  v11 = __CFADD__(v10, 1);
  v12 = (v10 + 1) >> 1;
  v13 = 0x80000000;
  if (v11)
  {
    v12 = 0x80000000;
  }

  v14 = *(a3 + 16);
  v11 = __CFADD__(v14, 1);
  v15 = (v14 + 1) >> 1;
  if (!v11)
  {
    v13 = v15;
  }

  v16 = v13 + v12;
  if (v16 >= *a4)
  {
    v17 = *a4;
  }

  else
  {
    v17 = v16;
  }

  *a4 = v17;
  CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a3, *(v9 + 208), v17);
  if (!CompressedDataPtr)
  {
    v25 = __cxa_allocate_exception(8uLL);
    *v25 = -4;
  }

  v19 = compression_decode_buffer(*a5, *a4, CompressedDataPtr, *(a3 + 8), 0, 0x505u);
  v20 = v19;
  if (!v19)
  {
    v21 = uncompress(*a5, a4, CompressedDataPtr, *(a3 + 8));
    if (v21 == -5 || v21 == 0)
    {
      v20 = *a4;
      if (*a4)
      {
        goto LABEL_19;
      }

      v26 = -4;
    }

    else
    {
      v26 = -6;
    }

    v27 = __cxa_allocate_exception(8uLL);
    *v27 = v26;
  }

  *a4 = v19;
LABEL_19:
  TileDecoder::RemovePrefixSumPredictor(a2, *a5, v20);
}

void sub_296B435EC(_Unwind_Exception *exception_object)
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

void TileDecoder_RLE::Decompress(size_t *this@<X1>, TileDecoder *a2@<X0>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void **a5@<X8>)
{
  AXRBufferPool::allocate(this, a5);
  if (!*a5)
  {
    *a4 = 0;
    exception = __cxa_allocate_exception(8uLL);
    *exception = -5;
  }

  v9 = *(a2 + 3);
  v10 = *(*(*(*(v9 + 280) + 8 * *(a3 + 60)) + 8) + 8 * *(a3 + 32));
  v11 = *(a3 + 8);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    *a4 = 0;
    if (!v11 || (v15 = 0, !v10))
    {
      if (v11)
      {
        v13 = -6;
      }

      else
      {
        v13 = -4;
      }

      v14 = __cxa_allocate_exception(8uLL);
      *v14 = v13;
    }
  }

  else
  {
    v15 = *a4;
  }

  v16 = __CFADD__(v10, 1);
  v17 = (v10 + 1) >> 1;
  v18 = 0x80000000;
  if (v16)
  {
    v17 = 0x80000000;
  }

  v19 = *(a3 + 16);
  v16 = __CFADD__(v19, 1);
  v20 = (v19 + 1) >> 1;
  if (!v16)
  {
    v18 = v20;
  }

  v21 = v18 + v17;
  if (v18 + v17 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v18 + v17;
  }

  *a4 = v22;
  CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a3, *(v9 + 208), v22);
  if (!CompressedDataPtr)
  {
    v33 = __cxa_allocate_exception(8uLL);
    *v33 = -4;
  }

  if (v11 < 2)
  {
    *a4 = 0;
    goto LABEL_42;
  }

  v24 = *a5;
  do
  {
    v25 = *CompressedDataPtr;
    if (v25 < 0)
    {
      if (v21 >= -v25)
      {
        v29 = -v25;
      }

      else
      {
        v29 = v21;
      }

      if (v29 >= v11 - 1)
      {
        v27 = v11 - 1;
      }

      else
      {
        v27 = v29;
      }

      v28 = v27 + 1;
      v11 -= v27 + 1;
      memcpy(v24, CompressedDataPtr + 1, v27);
    }

    else
    {
      v26 = v25 + 1;
      if (v21 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v21;
      }

      v11 -= 2;
      memset(v24, CompressedDataPtr[1], v27);
      v28 = 2;
    }

    v24 += v27;
    if (v11 < 2)
    {
      break;
    }

    CompressedDataPtr += v28;
    v21 -= v27;
  }

  while (v21);
  v30 = *a5;
  v31 = v24 - *a5;
  v12 = v24 == *a5;
  *a4 = v31;
  if (v12)
  {
LABEL_42:
    v34 = __cxa_allocate_exception(8uLL);
    *v34 = -4;
  }

  TileDecoder::RemovePrefixSumPredictor(a2, v30, v31);
}

void sub_296B43844(_Unwind_Exception *exception_object)
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

void TileDecoder_Zips::~TileDecoder_Zips(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

void TileDecoder_RLE::~TileDecoder_RLE(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

uint64_t AXRSplitStream<unsigned short,(StreamType)1>::AXRSplitStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 60);
  *(a1 + 16) = *(a4 + 8);
  *(a1 + 32) = *(a5 + 24);
  *(a1 + 8) = a2;
  *(a1 + 36) = *(a5 + 60);
  v9 = *(a5 + 44);
  *(a1 + 24) = *(a5 + 52) + *(a5 + 28) * v8;
  *(a1 + 28) = v9;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(a1);
  v10 = *(*(*(*(*(a3 + 24) + 280) + 8 * *(a5 + 60)) + 8) + 8 * *(a5 + 32));
  v11 = __CFADD__(v10, 1);
  v12 = (v10 + 1) >> 1;
  if (v11)
  {
    v12 = 0x80000000;
  }

  *(a1 + 40) = v12;
  AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(a1);
  return a1;
}

uint64_t AXRSplitStream<unsigned int,(StreamType)1>::AXRSplitStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 60);
  *(a1 + 16) = *(a4 + 8);
  *(a1 + 32) = *(a5 + 24);
  *(a1 + 8) = a2;
  *(a1 + 36) = *(a5 + 60);
  v9 = *(a5 + 44);
  *(a1 + 24) = *(a5 + 52) + *(a5 + 28) * v8;
  *(a1 + 28) = v9;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(a1);
  v10 = *(*(*(*(*(a3 + 24) + 280) + 8 * *(a5 + 60)) + 8) + 8 * *(a5 + 32));
  v11 = __CFADD__(v10, 1);
  v12 = (v10 + 1) >> 1;
  if (v11)
  {
    v12 = 0x80000000;
  }

  *(a1 + 40) = v12;
  AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(a1);
  return a1;
}

void TileDecoder_PIZ::InitLookupTable(int8x8_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = *a3;
  if (a5 >= 0x2000)
  {
    v9 = 0x2000;
  }

  else
  {
    v9 = a5;
  }

  if (0x2000 - v9 >= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = 0x2000 - v9;
  }

  if (v10)
  {
    *v8 = 0;
    v11 = a5 != 0;
    a1.i32[0] = (*a4 | (a5 == 0));
    v12 = vaddlv_u8(vcnt_s8(a1));
    v13 = vdupq_n_s16(8 * v9);
    v14 = v12;
    v15 = vaddw_u8(v13, *(a7 + 8 * (*a4 | (a5 == 0))));
    v16 = v10 - 1;
    if (v16)
    {
      v17 = a4 + 1;
      v18.i64[0] = 0x8000800080008;
      v18.i64[1] = 0x8000800080008;
      do
      {
        *&v8[v11] = v15;
        v11 += v14;
        v13 = vaddq_s16(v13, v18);
        v19 = *v17++;
        v14 = vaddlv_u8(vcnt_s8(v19));
        v15 = vaddw_u8(v13, *(a7 + 8 * v19));
        --v16;
      }

      while (v16);
    }

    *&v8[v11] = v15;
    v20 = v11 + v14;
    bzero(&v8[v20], 0x20000 - 2 * v20);
    v21 = v20 - 1;
  }

  else
  {
    bzero(v8, 0x4000uLL);
    v21 = 0;
  }

  *(a3 + 48) = v21;
}

void TileDecoder_PIZ::Decompress(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void **a5@<X8>)
{
  CompressedDataPtr = AXRChunkHeader::GetCompressedDataPtr(*a3, *(*(a1 + 24) + 208), *(a3 + 8));
  v11 = *(a3 + 8);
  AXRBufferPool::allocate(a2, a5);
  v12 = *a5;
  if (!*a5)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -5;
  }

  TileDecoder_PIZ::InitPoolInfo(a1, *a5, *(a1 + 48));
  *v12[4] = 0;
  v47 = HIDWORD(*(a3 + 24));
  v13 = *(a1 + 60);
  ImageSize = Part::GetImageSize(*(a1 + 24), *(a3 + 60), *(a1 + 8), v14, v15, v16, v17, v18);
  v20 = v13 + v13 * v47;
  if (v20 >= HIDWORD(ImageSize))
  {
    v20 = HIDWORD(ImageSize);
  }

  v21 = v20 != 0;
  LODWORD(v22) = v20 - 1;
  if (v21)
  {
    v22 = v22;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = 0;
    v25 = *(a3 + 24);
    v26 = *(a1 + 64) + 8;
    v27 = -1;
    do
    {
      v28 = *(v26 - 8);
      if (!*(v28 + 24))
      {
        ImageSize = *v26;
        v29 = *(*(*v26 + 40) + 8 * *(a3 + 60));
        if (*(v29 + 12) - 1 >= v22)
        {
          v30 = v22;
        }

        else
        {
          v30 = *(v29 + 12) - 1;
        }

        v31 = v29 + 8 * v25.u32[0];
        if (*(ImageSize + 104) == 1)
        {
          v32 = (*(v31 + 24) + 8 * v30);
        }

        else
        {
          ImageSize = (v30 * *(ImageSize + 108)) >> *(ImageSize + 112);
          v33 = *(v29 + 20) - 1;
          if (ImageSize < v33)
          {
            v33 = ImageSize;
          }

          v32 = (*(v31 + 24) + 8 * v33);
        }

        v34 = *v28;
        v36 = *v32;
        v35 = v32[1];
        if (v27 <= v34)
        {
          v27 = v34;
        }

        if (v24 <= (v35 + v36))
        {
          v24 = (v35 + v36);
        }
      }

      v26 += 16;
      --v23;
    }

    while (v23);
    if (v27 != -1)
    {
      *a4 = v24;
      if (v11 <= 3)
      {
        *a4 = 0;
        v45 = __cxa_allocate_exception(8uLL);
        *v45 = -4;
      }

      v37 = *CompressedDataPtr;
      v38 = CompressedDataPtr[1];
      v39 = v11 - 4;
      v21 = v38 >= v37;
      v40 = v38 - v37 + 1;
      if (v21)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      if (v39 < v41)
      {
        *a4 = 0;
        v46 = __cxa_allocate_exception(8uLL);
        *v46 = -4;
      }

      v42 = CompressedDataPtr + 2;
      TileDecoder_PIZ::InitLookupTable(v25, ImageSize, v12, v42, v37, v41, &TileDecoder_PIZ::kLookupDecodeTable);
      if (v39 - v41 >= 5)
      {
        v43 = *&v42[v41];
        v48 = v39 - v41 - 4;
        TileDecoder_PIZ::HuffmanDecompress(a1, v12, &v42[v41 + 4], v43, &v48, a4);
      }
    }
  }
}

void sub_296B43DCC(_Unwind_Exception *exception_object)
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

uint64_t TileDecoder_PIZ::InitPoolInfo(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 72);
  if (v3)
  {
    v4 = *(result + 64) + 8;
    v5 = *(result + 72);
    v6 = 2;
    do
    {
      if (!*(*(v4 - 8) + 24) && *v4)
      {
        v7 = *(*v4 + 72) == 1 ? 2 : 4;
        if (v6 <= v7)
        {
          v6 = v7;
        }
      }

      v4 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 2;
  }

  v8 = (v3 + 119) & 0x1FFFFFFC0;
  v9 = (a3 + 63) & 0xFFFFFFFFFFFFFFC0;
  v10 = ((v6 * (*(result + 56) * *(result + 60)) + 63) & 0xFFFFFFFFFFFFFFC0) + v9;
  if (v10 <= 0x80040)
  {
    v10 = 524352;
  }

  v11 = a2 + v8 + 0x20000;
  *a2 = a2 + v8;
  a2[1] = v11;
  a2[2] = v11 + v9;
  a2[3] = v11;
  a2[5] = v8 + v10 + 0x20000;
  a2[6] = 0;
  a2[4] = a2 + 7;
  return result;
}

uint64_t Part::GetImageSize(Part *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 73) * *(this + 72) <= a2)
  {
    v10 = a3;
    v9 = a2;
    if (GetFlagsOnceToken != -1)
    {
      goto LABEL_7;
    }

    while (1)
    {
      if (((kDefaultAXRLogFlags | v10) & 2) != 0)
      {
        AXRLogError("Error: mip level index %lu to large [0, %u]", a2, a3, a4, a5, a6, a7, a8, v9);
      }

      __break(1u);
LABEL_7:
      Part::GetImageSize();
    }
  }

  return *(*(*(this + 35) + 8 * a2) + 24);
}

void TileDecoder_PIZ::HuffmanDecompress(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, unint64_t *a5, void *a6)
{
  v11 = a3;
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = -6;
  }

  v9 = TileDecoder_PIZ::HuffmanUnpackDecodingTable(a1, a2, &v11, a5);
  TileDecoder_PIZ::HuffmanDecode(v9, v11, a5, *(a2 + 8), v9, a6);

  DestroyHuffmanDecodeTable(v9);
}

uint64_t TileDecoder_PIZ::HuffmanUnpackDecodingTable(uint64_t a1, uint64_t a2, unsigned int **a3, unint64_t *a4)
{
  v104 = *MEMORY[0x29EDCA608];
  if (*a4 <= 0x13)
  {
    exception = __cxa_allocate_exception(8uLL);
    v92 = -4;
LABEL_122:
    *exception = v92;
  }

  v4 = a3;
  v5 = 65537;
  v6 = *a3;
  v7 = **a3;
  if (v7 > 0x10001 || (v8 = *(v6 + 4), v8 > 0x10000))
  {
LABEL_121:
    exception = __cxa_allocate_exception(8uLL);
    v92 = -6;
    goto LABEL_122;
  }

  *a4 -= 20;
  v10 = *(a2 + 24);
  bzero(v10, 0x80008uLL);
  memset(v103, 0, 236);
  v13 = (v6 + 20);
  v98 = v7;
  v99 = 0x1000100000000;
  v100 = v8;
  v101 = 0x1000100000000;
  v102 = v8;
  v14 = v10 + 524296;
  v15 = *a4;
  if (v7 <= v8)
  {
    v93 = v4;
    v18 = 0;
    v19 = v8 + 1;
    v20 = 8 * v7;
    v21.i64[0] = 0x3F003F003F003FLL;
    v21.i64[1] = 0x3F003F003F003FLL;
    v22.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
    v22.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
    v23 = v7;
    v17 = v10;
    while (1)
    {
      if (v15 < 0xD)
      {
LABEL_96:
        v16 = (v18 + 7) >> 3;
        v4 = v93;
        goto LABEL_97;
      }

      v11.i64[0] = *v13;
      v12.i64[0] = *(v13 + 5);
      v24 = vshlq_u64(vqtbl2q_s8(*v11.i8, xmmword_296B8F1D0), vdupq_n_s64(v18));
      v12 = vandq_s8(vshlq_u16(vqtbl1q_s8(v24, xmmword_296B8F1F0), xmmword_296B8F200), v21);
      v25 = vqmovn_u16(vandq_s8(vshlq_u16(vqtbl1q_s8(v24, xmmword_296B8F1E0), xmmword_296B8F200), v21));
      v11 = vqmovn_high_u16(v25, v12);
      v26 = vcgtq_u8(v22, v11);
      v27 = vorrq_s8(vandq_s8(vmovl_s8(*v26.i8), xmmword_296B8F220), vandq_s8(vmovl_high_s8(v26), xmmword_296B8F210));
      v27.i16[0] = vaddvq_s16(v27);
      v28 = v19 - v23;
      v29 = v27.i16[0] == -1 && v28 >= 0x10;
      if (v29)
      {
        v45 = 0;
        v46 = &v10[v20];
        v47 = vmovl_u8(v25);
        v48 = vmovl_u16(*v47.i8);
        *&v49 = v48.u32[0];
        *(&v49 + 1) = v48.u32[1];
        v50 = v49;
        *&v49 = v48.u32[2];
        *(&v49 + 1) = v48.u32[3];
        v51 = v49;
        v52 = vmovl_high_u16(v47);
        *&v49 = v52.u32[0];
        *(&v49 + 1) = v52.u32[1];
        v53 = v49;
        *&v49 = v52.u32[2];
        *(&v49 + 1) = v52.u32[3];
        *(v46 + 2) = v53;
        *(v46 + 3) = v49;
        *v46 = v50;
        *(v46 + 1) = v51;
        v54 = vmovl_u8(vqmovn_u16(v12));
        v55 = vmovl_u16(*v54.i8);
        *&v49 = v55.u32[0];
        *(&v49 + 1) = v55.u32[1];
        v56 = v49;
        *&v49 = v55.u32[2];
        *(&v49 + 1) = v55.u32[3];
        v57 = v49;
        v12 = vmovl_high_u16(v54);
        *&v49 = v12.u32[0];
        *(&v49 + 1) = v12.u32[1];
        v58 = v49;
        *&v49 = v12.u32[2];
        v12.i64[1] = v12.u32[3];
        *(&v49 + 1) = v12.i64[1];
        *(v46 + 6) = v58;
        *(v46 + 7) = v49;
        *(v46 + 4) = v56;
        *(v46 + 5) = v57;
        v59 = v20 + 128;
        v15 = *a4 - 12;
        if (*a4 < 0xC)
        {
          v15 = 0;
        }

        *a4 = v15;
        do
        {
          v94 = v11;
          ++*(v103 + *(&v94 | v45++ & 0xF));
        }

        while (v45 != 16);
        v23 += 16;
        v13 = (v13 + 12);
        if (v14 >= v46)
        {
          v60 = &v10[v20];
        }

        else
        {
          v60 = v14;
        }

        v61 = v46 + 120;
        if (v17 > (v46 + 120))
        {
          v61 = v17;
        }

        if (v20 > 262024)
        {
          v14 = v10 + 262152;
          v61 = v10 + 0x40000;
        }

        if (v20 <= 0x40000)
        {
          v17 = v61;
        }

        else
        {
          v14 = v60;
        }

        goto LABEL_95;
      }

      v30 = v28 >= 0x10 ? 16 : v19 - v23;
      v31 = v19 != v23;
      v32 = 0;
      if (v19 > v23)
      {
        break;
      }

      v62 = 0;
LABEL_54:
      v13 = (v13 + (v18 >> 3));
      v29 = v15 >= v18 >> 3;
      v15 -= v18 >> 3;
      v18 &= 7u;
      if (!v29)
      {
        v15 = 0;
      }

      *a4 = v15;
      if (v31)
      {
        if (!v62)
        {
          goto LABEL_96;
        }

        goto LABEL_62;
      }

LABEL_94:
      v59 = v20;
LABEL_95:
      v20 = v59;
      if (v23 >= v19)
      {
        goto LABEL_96;
      }
    }

    v33 = v27.i32[0] << 16;
    while (1)
    {
      v97 = v11;
      v34 = *(&v97 | v32 & 0xF);
      if (v34 >= 0x3F)
      {
        break;
      }

      v35 = __clz(~v33);
      if (v35 >= v30 - v32)
      {
        v35 = v30 - v32;
      }

      if (v35 >= v19 - v23)
      {
        v36 = (v19 - v23);
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        v37 = v36;
        v38 = v32;
        v39 = v10;
        v40 = v36;
        do
        {
          v96 = v11;
          v41 = *(&v96 | v38 & 0xF);
          ++*(v103 + v41);
          *&v39[v20] = v41;
          v39 += 8;
          ++v38;
          --v40;
        }

        while (v40);
        if (v20 <= 0x40000)
        {
          v44 = v20 + 8 * (v36 - 1);
          if (v17 <= &v10[v44])
          {
            v17 = &v10[v44];
          }

          if (v44 > 0x40000)
          {
            v14 = v10 + 262152;
            v17 = (v10 + 0x40000);
          }
        }

        else if (v14 >= &v10[v20])
        {
          v14 = &v10[v20];
        }

        v43 = (6 * v36);
        v42 = v36;
      }

      else
      {
        v37 = v34 - 57;
        v42 = 1;
        v43 = 6;
        LOBYTE(v36) = 1;
      }

      v32 += v42;
      v18 += v43;
      v23 += v37;
      v20 += 8 * v37;
      v62 = v23 < v19;
      v31 = v32 < v30;
      if (v32 < v30)
      {
        v33 <<= v36;
        if (v23 < v19)
        {
          continue;
        }
      }

      goto LABEL_54;
    }

    v13 = (v13 + (v18 >> 3));
    v29 = v15 >= v18 >> 3;
    v15 -= v18 >> 3;
    v18 &= 7u;
    if (!v29)
    {
      v15 = 0;
    }

    *a4 = v15;
LABEL_62:
    v95 = v11;
    if (*(&v95 | v32 & 0xF) != 63)
    {
      goto LABEL_121;
    }

    if (v23 + 1044 <= v19 && v15 >= 8)
    {
      do
      {
        if (bswap64(*v13) << v18 < 0xFFFFFFFFFFFFFF00)
        {
          break;
        }

        v20 += 8352;
        v15 -= 7;
        *a4 = v15;
        v13 = (v13 + 7);
        v63 = v23 + 2088;
        v23 += 1044;
        if (v63 > v19)
        {
          break;
        }
      }

      while (v15 > 7);
    }

    while (v23 < v19 && v18 + 14 <= 8 * v15)
    {
      v69 = v18 + 6;
      v70 = (0xFFu >> v18) & *v13;
      if (v15 >= (v18 + 6) >> 3)
      {
        v71 = v15 - ((v18 + 6) >> 3);
      }

      else
      {
        v71 = 0;
      }

      *a4 = v71;
      if (v18 < 3)
      {
        LOBYTE(v73) = v18 + 6;
      }

      else
      {
        v72 = v13 + 1;
        v73 = v18 + 6;
        do
        {
          v74 = *v72++;
          v70 = v74 | (v70 << 8);
          v73 -= 8;
        }

        while (v73 > 8);
      }

      if (v70 >> (8 - v73) != 63 || v15 <= v69 >> 3)
      {
        *a4 = v15;
        goto LABEL_94;
      }

      v18 = v69 & 7;
      v13 = (v13 + (v69 >> 3));
      v64 = v69 | 8;
      if ((v69 | 8) <= 8 * v71)
      {
        v66 = *v13;
        v13 = (v13 + 1);
        v67 = (0xFFu >> v18) & v66;
        v15 = v71 - 1;
        if (!v71)
        {
          v15 = 0;
        }

        *a4 = v15;
        if ((v69 & 7) != 0)
        {
          v67 = *v13 | (v67 << 8);
          v64 = v69 & 7;
        }

        v65 = (v67 >> (8 - v64)) + 6;
      }

      else
      {
        v15 = 0;
        *a4 = 0;
        v65 = 6;
      }

      v68 = v19 - v23;
      if (v65 < v19 - v23)
      {
        v68 = v65;
      }

      v23 += v68;
      v20 += 8 * v68;
    }

    goto LABEL_94;
  }

  v16 = 0;
  v17 = v10;
LABEL_97:
  LODWORD(v76) = 0;
  v77 = 0;
  *v4 = v13 + v16;
  v78 = (v17 - v10) >> 3;
  v79 = (v14 - v10) >> 3;
  v99 = __PAIR64__(v79, v78);
  v80 = v15 - v16;
  if (v15 < v16)
  {
    v80 = 0;
  }

  *a4 = v80;
  v81 = 58;
  do
  {
    if (v76)
    {
      goto LABEL_121;
    }

    v82 = *(v103 + v81);
    *(v103 + v81) = v76 >> 1;
    v76 = v82 + (v76 >> 1);
    if (1 << v81 < v76)
    {
      goto LABEL_121;
    }

    if (v77 <= v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = v77;
    }

    if (v5 >= v81)
    {
      v84 = v81;
    }

    else
    {
      v84 = v5;
    }

    if (v82)
    {
      v5 = v84;
      v77 = v83;
    }

    --v81;
  }

  while (v81);
  v101 = __PAIR64__(v5, v77);
  if (v7 <= v78)
  {
    do
    {
      v85 = *&v10[8 * v7];
      v86 = v7;
      if (v85)
      {
        v87 = *(v103 + v85);
        *(v103 + v85) = v87 + 1;
        *&v10[8 * v7] = v85 | (v87 << 6);
      }

      LODWORD(v7) = v7 + 1;
    }

    while (v86 + 1 <= v78);
  }

  for (; v79 <= v8; LODWORD(v79) = v79 + 1)
  {
    v88 = *&v10[8 * v79];
    if (v88)
    {
      v89 = *(v103 + v88);
      *(v103 + v88) = v89 + 1;
      *&v10[8 * v79] = v88 | (v89 << 6);
    }
  }

  if (v77 < v5)
  {
    goto LABEL_121;
  }

  return AllocateHuffmanTable(&v98, v10);
}

void TileDecoder_PIZ::HuffmanDecode(uint64_t a1, unint64_t *a2, uint64_t *a3, char *a4, uint64_t a5, void *a6)
{
  if (!*a6)
  {
    return;
  }

  v7 = &a4[*a6];
  v8 = *a3;
  v9 = (a2 + *a3);
  v10 = *(a5 + 36);
  if (v10)
  {
    if (v8 < 8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v11 = 0;
        if (v8)
        {
          v14 = 56;
          v15 = *a3;
          v16 = a2;
          do
          {
            v17 = *v16;
            v16 = (v16 + 1);
            v11 |= v17 << v14;
            v14 -= 8;
            --v15;
          }

          while (v15);
        }

        LODWORD(v12) = 8 * v8;
        v13 = (a2 + *a3);
        goto LABEL_13;
      }

      LODWORD(v12) = 0;
      v11 = 0;
    }

    else
    {
      v11 = bswap64(*a2);
      LODWORD(v12) = 64;
    }

    v13 = a2;
  }

  else
  {
    LODWORD(v12) = 0;
    v11 = 0;
    v13 = a2 - 1;
  }

LABEL_13:
  if (v7 <= a4)
  {
    goto LABEL_93;
  }

  v67 = a2;
  v68 = a3;
  v18 = 64 - v10;
  v19 = a5 + 40;
  v69 = a6;
  v70 = a5 + 40;
  while (1)
  {
    v20 = v11 >> v18;
    v21 = *(v19 + (v11 >> v18));
    v22 = v10 - (v21 & 0xF);
    if (v12 < v22)
    {
      v22 = v12;
    }

    LODWORD(v12) = v12 - v22;
    v11 <<= v22;
    if ((v21 & 0xF0) == 0x20)
    {
      v23 = a5;
      do
      {
        v23 = *(*v23 + 8 * *(*(v23 + 8) + 4 * v20));
        v24 = *(v23 + 36);
        if (v12 < v24)
        {
          v25 = (64 - v12);
          v26 = (64 - v12) & 7;
          v13 = (v13 + (v25 >> 3));
          v27 = v9 - v13;
          if (v9 - v13 < 8)
          {
            v28 = 8 * v27;
            if ((8 * v27) >= v12)
            {
              if (v9 == v13)
              {
                v29 = 0;
              }

              else
              {
                v29 = 0;
                if (v27 <= 1)
                {
                  v27 = 1;
                }

                v30 = 56;
                do
                {
                  v31 = *v13;
                  v13 = (v13 + 1);
                  v29 |= v31 << v30;
                  v30 -= 8;
                  --v27;
                }

                while (v27);
              }

              v11 = v29 << v26;
              LODWORD(v12) = (v28 - v26) & ~((v28 - v26) >> 63);
              v13 = v9;
            }
          }

          else
          {
            v11 = bswap64(*v13) << v26;
            LODWORD(v12) = (v25 & 0xFFFFFFF8) + v12;
          }
        }

        v20 = v11 >> -v24;
        v21 = *(v23 + v20 + 40);
        v32 = v24 - (v21 & 0xF);
        if (v12 < v32)
        {
          v32 = v12;
        }

        LODWORD(v12) = v12 - v32;
        v11 <<= v32;
      }

      while ((v21 & 0xF0) == 0x20);
    }

    else
    {
      v23 = a5;
    }

    v33 = v7 - a4;
    if ((v21 & 0x30) != 0x20)
    {
      if ((v21 & 0x20) == 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = -6;
      }

      if (v12 <= 7)
      {
        v37 = (64 - v12) & 7;
        v13 = (v13 + ((64 - v12) >> 3));
        v38 = v9 - v13;
        if (v9 - v13 < 8)
        {
          v43 = 8 * v38;
          if ((8 * v38) >= v12)
          {
            if (v9 == v13)
            {
              v44 = 0;
            }

            else
            {
              v44 = 0;
              if (v38 <= 1)
              {
                v38 = 1;
              }

              v45 = 56;
              do
              {
                v46 = *v13;
                v13 = (v13 + 1);
                v44 |= v46 << v45;
                v45 -= 8;
                --v38;
              }

              while (v38);
            }

            v11 = v44 << v37;
            LODWORD(v12) = (v43 - v37) & ~((v43 - v37) >> 63);
            v13 = v9;
          }
        }

        else
        {
          v11 = bswap64(*v13) << v37;
          LODWORD(v12) = (64 - v12) & 0x78 | v12;
        }
      }

      if (v12 >= 8)
      {
        v48 = 8;
      }

      else
      {
        v48 = v12;
      }

      v12 = (v12 - v48);
      v49 = v11 << v48;
      if (v12 < v10)
      {
        v50 = (64 - v12);
        v51 = (64 - v12) & 7;
        v13 = (v13 + (v50 >> 3));
        v52 = v9 - v13;
        if (v9 - v13 < 8)
        {
          v53 = 8 * v52;
          if ((8 * v52) >= v12)
          {
            if (v9 == v13)
            {
              v54 = 0;
            }

            else
            {
              v54 = 0;
              if (v52 <= 1)
              {
                v52 = 1;
              }

              v55 = 56;
              do
              {
                v56 = *v13;
                v13 = (v13 + 1);
                v54 |= v56 << v55;
                v55 -= 8;
                --v52;
              }

              while (v52);
            }

            v49 = v54 << v51;
            LODWORD(v12) = (v53 - v51) & ~((v53 - v51) >> 63);
            v13 = v9;
          }
        }

        else
        {
          v49 = bswap64(*v13) << v51;
          LODWORD(v12) = (v50 & 0xFFFFFFF8) + v12;
        }
      }

      v57 = (*(v23 + 8) + 4 * v20);
      if (v21 >= 0x40)
      {
        v58 = a4;
      }

      else
      {
        v58 = a4 - 2;
      }

      if (v21 >= 0x40)
      {
        v59 = v7 - a4;
      }

      else
      {
        v57 = (a4 - 2);
        v59 = v33 + 2;
      }

      __pattern16 = 0u;
      v60 = vld1q_dup_s16(v57);
      __pattern16 = v60;
      v61 = ((v11 >> 55) & 0x1FE) + 2;
      if (v61 >= v59)
      {
        v62 = v59;
      }

      else
      {
        v62 = v61;
      }

      memset_pattern16(v58, &__pattern16, v62);
      a4 = &v58[v62];
      v11 = v49;
      v19 = v70;
      v18 = 64 - v10;
      goto LABEL_89;
    }

    if (v12 < v10)
    {
      v34 = (64 - v12);
      v35 = (64 - v12) & 7;
      v13 = (v13 + (v34 >> 3));
      v36 = v9 - v13;
      if (v9 - v13 < 8)
      {
        v39 = 8 * v36;
        if ((8 * v36) >= v12)
        {
          if (v9 == v13)
          {
            v40 = 0;
          }

          else
          {
            v40 = 0;
            if (v36 <= 1)
            {
              v36 = 1;
            }

            v41 = 56;
            do
            {
              v42 = *v13;
              v13 = (v13 + 1);
              v40 |= v42 << v41;
              v41 -= 8;
              --v36;
            }

            while (v36);
          }

          v11 = v40 << v35;
          LODWORD(v12) = (v39 - v35) & ~((v39 - v35) >> 63);
          v13 = v9;
        }
      }

      else
      {
        v11 = bswap64(*v13) << v35;
        LODWORD(v12) = (v34 & 0xFFFFFFF8) + v12;
      }
    }

    v47 = *(*(v23 + 8) + 4 * v20);
    if (v33 < 4)
    {
      break;
    }

    *a4 = v47;
    a4 += 2 * (v21 >> 6);
LABEL_89:
    if (a4 >= v7)
    {
      goto LABEL_92;
    }
  }

  *a4 = v47;
  a4 = v7;
LABEL_92:
  a3 = v68;
  a6 = v69;
  v8 = *v68;
  a2 = v67;
LABEL_93:
  v63 = v13 + (((64 - v12) + 7) >> 3) - a2;
  v64 = v8 >= v63;
  v65 = v8 - v63;
  if (!v64)
  {
    v65 = 0;
  }

  *a3 = v65;
  *a6 += a4 - v7;
}

void DestroyHuffmanDecodeTable(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (a1[2])
      {
        v3 = 0;
        do
        {
          DestroyHuffmanDecodeTable(*(*a1 + v3++));
        }

        while (v3 < a1[2]);
        v2 = *a1;
      }

      free(v2);
    }

    free(a1);
  }
}

uint64_t AllocateHuffmanTable(unsigned int *a1, uint64_t a2)
{
  v4 = a1[4] << (a2 != 0);
  if (v4 >= 0xE)
  {
    v5 = 14;
  }

  else
  {
    v5 = v4;
  }

  v6 = 1 << v5;
  v7 = ((1 << v5) + 3) & 0x1FFFC;
  v8 = malloc_type_calloc(1uLL, (4 << v5) + v7 + 40, 0x109004045B4B395uLL);
  v9 = v8;
  if (v8)
  {
    v10 = (v8 + 10);
    v8[8] = a1[4];
    v8[9] = v5;
    *v8 = 0;
    *(v8 + 1) = v8 + v7 + 40;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    memset(v8 + 10, 15, ((1 << v5) + 3) & 0x1FFFC);
    if (a2)
    {
      v12 = *a1;
      v11 = a1[1];
      if (v12 <= v11)
      {
        do
        {
          if (v12 != a1[6] && (*(a2 + 8 * v12) & 0x3F) != 0)
          {
            AddHuffmanTableEntry(v9, *(a2 + 8 * v12) >> 6, *(a2 + 8 * v12) & 0x3FLL, v12, a1);
            v11 = a1[1];
          }
        }

        while (v12++ < v11);
      }

      v15 = a1[2];
      v14 = a1[3];
      while (v15 < v14)
      {
        if (v15 != a1[6] && (*(a2 + 8 * v15) & 0x3F) != 0)
        {
          AddHuffmanTableEntry(v9, *(a2 + 8 * v15) >> 6, *(a2 + 8 * v15) & 0x3FLL, v15, a1);
          v14 = a1[3];
        }

        ++v15;
      }

      v16 = *(a2 + 8 * a1[6]) & 0x3FLL;
      v17 = *(a2 + 8 * a1[6]) >> 6;
      if (v16 <= v5)
      {
        LODWORD(v19) = v5;
        v18 = v9;
      }

      else
      {
        v18 = v9;
        v19 = v5;
        do
        {
          v16 -= v19;
          v20 = v17 >> v16;
          v17 &= 0xFFFFFFFFFFFFFFFFLL >> -v16;
          v18 = *(*v18 + 8 * *(*(v18 + 8) + 4 * v20));
          v19 = *(v18 + 36);
        }

        while (v16 > v19);
      }

      v21 = v19 - v16;
      v22 = v17 << (v19 - v16);
      memset((v18 + v22 + 40), (v19 - v16) & 0xF | 0x30, 1 << (v19 - v16));
      __pattern4 = -559038737;
      memset_pattern4((*(v18 + 8) + 4 * v22), &__pattern4, 4 << v21);
      if (v5 >= 2 * a1[5])
      {
        v23 = malloc_type_malloc(1 << v5, 0x100004077774924uLL);
        v24 = (v9 + 40);
        if (v23)
        {
          memcpy(v23, (v9 + 40), 1 << v5);
          v24 = v23;
        }

        v25 = 0;
        do
        {
          v26 = v10[v25];
          if ((v26 & 0xC0) == 0x40)
          {
            v27 = (v25 << (v5 - (v26 & 0xFu))) & (v6 - 1);
            v28 = v24[v27];
            if ((v28 & 0x20) != 0 && v5 <= (v28 & 0xF) + (v26 & 0xF))
            {
              if (v28 > 0x3F)
              {
                *(*(v9 + 8) + 4 * v25 + 2) = *(*(v9 + 8) + 4 * v27);
                v29 = v26 & 0x3F | 0x80;
              }

              else
              {
                v29 = v26 | 0x10;
              }

              v10[v25] = v29 & 0xF0 | (v28 - v5 + v29) & 0xF;
            }
          }

          ++v25;
        }

        while (v6 != v25);
        if (v24 != v10)
        {
          free(v24);
        }
      }
    }
  }

  return v9;
}

void TileDecoder_PIZ::WaveDecode(int8x16_t a1, int16x8_t a2, int8x16_t a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, _WORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14)
{
  if (a1.i32[0] >= a1.i32[1])
  {
    v14 = a1.u32[1];
  }

  else
  {
    v14 = a1.u32[0];
  }

  v15 = 0x8000000000000000 >> __clz(v14);
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 >= 2)
  {
    if (a13 >> 14)
    {
      if (a14 == 2)
      {
        WaveDecodeRecurse<unsigned short,false>(a7, a9, 1uLL, v16, a1.u32[0], a1.u32[1], a8);
      }

      else
      {
        WaveDecodeRecurse<unsigned int,false>(a7, a9, 1uLL, v16, a1.u32[0], a1.u32[1], a8, a1, *a2.i64, a3, a4);
      }
    }

    else if (a14 == 2)
    {
      WaveDecodeRecurse<unsigned short,true>(a7, a9, 1uLL, v16, a1.u32[0], a1.u32[1], a8);
    }

    else
    {
      WaveDecodeRecurse<unsigned int,true>(a7, a9, 1uLL, v16, a1.u32[0], a1.u32[1], a8, a1, a2, a3, a4.n128_f64[0], a5);
    }
  }
}

uint64_t WaveDecodeRecurse<unsigned short,true>(uint64_t result, _WORD *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v9 = a5;
  v11 = a2;
  v12 = result;
  if (a3 <= a6)
  {
    v13 = a7 * a3;
    v14 = a3;
    v15 = result;
    v16 = a2;
    do
    {
      if (a5 >= 0x20)
      {
        v17 = 0;
        v20 = v15;
        do
        {
          v21 = v20 + 4;
          v104 = vld2q_s16(v20);
          v22 = &v20[2];
          v107 = vld2q_s16(v22);
          v23 = (v15 + v17);
          v24 = &v16[v17 / 2];
          v20 = v21;
          *v23 = v104.val[0];
          v23[1] = v107.val[0];
          *v24 = v104.val[1];
          v24[1] = v107.val[1];
          v25 = v17 + 64;
          v17 += 32;
        }

        while (v25 <= a5);
        v19 = (v15 + v17);
        v18 = &v16[v17 / 2];
      }

      else
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v15;
      }

      v26 = v17 | 8;
      while (v26 <= a5)
      {
        v100 = vld2_s16(v20++);
        *v19 = v100;
        v19 = (v19 + 8);
        v18 += 4;
        v26 = v17 + 16;
        v17 += 8;
      }

      v27 = v17 + 2;
      while (v27 <= a5)
      {
        v19->val[0].i16[0] = v20->val[0].i16[0];
        v19 = (v19 + 2);
        *v18++ = v20->val[0].i16[1];
        v20 = (v20 + 4);
        v27 = v17 + 4;
        v17 += 2;
      }

      if (v17 < a5)
      {
        v19->val[0].i16[0] = v20->val[0].i16[0];
      }

      v15 = (v15 + v13);
      v16 = (v16 + v13);
      v14 += a3;
    }

    while (v14 <= a6);
  }

  v28 = a5 >> 1;
  v29 = 2 * a3;
  if (2 * a3 < a4)
  {
    result = WaveDecodeRecurse<unsigned short,true>(result, &a2[v28], 2 * a3);
  }

  v30 = v9 - (v9 >> 1);
  if (v29 <= a6)
  {
    v31 = a7 * a3;
    v32 = 2 * a3;
    v33 = v29 * a7;
    do
    {
      v34 = v12 + 2 * v30;
      v35 = v31 + v34;
      v36 = (v12 + 2 * v9);
      v37 = (v36 + v31);
      if (v9)
      {
        v40 = *(v34 - 2);
        v34 -= 2;
        v39 = v40;
        v41 = *(v35 - 2);
        v35 -= 2;
        v42 = v39 - (v41 >> 1);
        *--v36 = v42 + v41;
        *--v37 = v42;
        v38 = v9 - 1;
      }

      else
      {
        v38 = v9;
      }

      result = &v11[v28];
      v43 = v31 + result;
      if ((v38 & 7) != 0)
      {
        v44 = 0;
        do
        {
          v45 = *(v35 + v44 - 2);
          v46 = *(v43 + v44 - 2);
          v47 = *(v34 + v44 - 2) - (v45 >> 1);
          v48 = *(result + v44 - 2) - (v46 >> 1);
          LOWORD(v46) = v48 + v46;
          v49 = v47 + v45 - (v46 >> 1);
          v50 = v47 - (v48 >> 1);
          *(v36 - 2) = v49 + v46;
          v36 -= 2;
          v36[1] = v49;
          *(v37 - 2) = v50 + v48;
          v37 -= 2;
          v37[1] = v50;
          LOBYTE(v50) = v38 + v44 - 2;
          v44 -= 2;
        }

        while ((v50 & 7) != 0);
        v38 += v44;
        v34 += v44;
        v43 += v44;
        v35 += v44;
        result += v44;
      }

      if ((v38 & 0x1F) != 0)
      {
        v51 = 0;
        do
        {
          v52 = *(v35 + v51 - 8);
          v53 = *(v43 + v51 - 8);
          v54 = vsub_s16(*(v34 + v51 - 8), vshr_n_s16(v52, 1uLL));
          v55 = vsub_s16(*(result + v51 - 8), vshr_n_s16(v53, 1uLL));
          v56 = vadd_s16(v55, v53);
          v103.val[1] = vsub_s16(vadd_s16(v54, v52), vshr_n_s16(v56, 1uLL));
          v103.val[0] = vadd_s16(v103.val[1], v56);
          v101.val[1] = vsub_s16(v54, vshr_n_s16(v55, 1uLL));
          v101.val[0] = vadd_s16(v101.val[1], v55);
          v36 -= 8;
          vst2_s16(v36, v103);
          v37 -= 8;
          vst2_s16(v37, v101);
          v57 = v38 + v51 - 8;
          v51 -= 8;
        }

        while ((v57 & 0x1F) != 0);
        v38 += v51;
        v43 += v51;
        v35 += v51;
        result += v51;
        v34 += v51;
      }

      if (v38)
      {
        v58 = v37 - 32;
        v59 = v36 - 32;
        v60 = (v43 - 32);
        v61 = (v35 - 32);
        v62 = (result - 32);
        v63 = (v34 - 32);
        do
        {
          v65 = *v63;
          v64 = v63[1];
          v63 -= 2;
          v66 = *v62;
          v67 = v62[1];
          v62 -= 2;
          v68 = *v61;
          v69 = v61[1];
          v61 -= 2;
          v71 = *v60;
          v70 = v60[1];
          v60 -= 2;
          v72 = vsubq_s16(v65, vshrq_n_s16(v68, 1uLL));
          v73 = vsubq_s16(v64, vshrq_n_s16(v69, 1uLL));
          v74 = vsubq_s16(v67, vshrq_n_s16(v70, 1uLL));
          v75 = vsubq_s16(v66, vshrq_n_s16(v71, 1uLL));
          v76 = vaddq_s16(v75, v71);
          v77 = vaddq_s16(v74, v70);
          v110.val[1] = vsubq_s16(vaddq_s16(v72, v68), vshrq_n_s16(v76, 1uLL));
          v108.val[1] = vsubq_s16(vaddq_s16(v73, v69), vshrq_n_s16(v77, 1uLL));
          v108.val[0] = vaddq_s16(v108.val[1], v77);
          v110.val[0] = vaddq_s16(v110.val[1], v76);
          v111.val[1] = vsubq_s16(v72, vshrq_n_s16(v75, 1uLL));
          result = (v59 - 32);
          vst2q_s16(v59, v110);
          v78 = v59 + 16;
          v105.val[1] = vsubq_s16(v73, vshrq_n_s16(v74, 1uLL));
          v111.val[0] = vaddq_s16(v111.val[1], v75);
          vst2q_s16(v78, v108);
          v79 = v58 - 32;
          vst2q_s16(v58, v111);
          v80 = v58 + 16;
          v105.val[0] = vaddq_s16(v105.val[1], v74);
          vst2q_s16(v80, v105);
          v59 = result;
          v58 = v79;
          v38 -= 32;
        }

        while (v38);
      }

      v12 += v33;
      v11 = (v11 + v33);
      v32 += v29;
    }

    while (v32 <= a6);
  }

  if ((a6 & a3) != 0)
  {
    v81 = v12 + 2 * v30;
    v82 = (v12 + 2 * v9);
    if (v9)
    {
      v83 = *(v81 - 2);
      v81 -= 2;
      *--v82 = v83;
      --v9;
    }

    v84 = &v11[v28];
    if ((v9 & 7) != 0)
    {
      v85 = 0;
      do
      {
        v86 = v84[v85 / 2 - 1];
        v87 = *(v81 + v85 - 2) - (v86 >> 1);
        *(v82 - 2) = v87 + v86;
        v82 -= 2;
        v82[1] = v87;
        LOBYTE(v87) = v9 + v85 - 2;
        v85 -= 2;
      }

      while ((v87 & 7) != 0);
      v9 += v85;
      v84 = (v84 + v85);
      v81 += v85;
    }

    while ((v9 & 0x1F) != 0)
    {
      v88 = *(v81 - 8);
      v81 -= 8;
      v89 = v88;
      v90 = *(v84 - 4);
      v84 -= 4;
      v102.val[1] = vsub_s16(v89, vshr_n_s16(v90, 1uLL));
      v102.val[0] = vadd_s16(v102.val[1], v90);
      v82 -= 8;
      vst2_s16(v82, v102);
      v9 -= 8;
    }

    if (v9)
    {
      v91 = v82 - 32;
      v92 = (v84 - 16);
      v93 = (v81 - 32);
      do
      {
        v95 = *v93;
        v94 = v93[1];
        v93 -= 2;
        v96 = *v92;
        v97 = v92[1];
        v92 -= 2;
        v109.val[1] = vsubq_s16(v95, vshrq_n_s16(v96, 1uLL));
        v109.val[0] = vaddq_s16(v109.val[1], v96);
        v98 = v91 - 32;
        vst2q_s16(v91, v109);
        v99 = v91 + 16;
        v106.val[1] = vsubq_s16(v94, vshrq_n_s16(v97, 1uLL));
        v106.val[0] = vaddq_s16(v106.val[1], v97);
        vst2q_s16(v99, v106);
        v91 = v98;
        v9 -= 32;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t WaveDecodeRecurse<unsigned int,true>(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, int16x8_t a8, int16x8_t a9, __n128 a10, double a11, __n128 a12)
{
  v14 = a5;
  v16 = a2;
  v17 = result;
  if (a3 <= a6)
  {
    v18 = a7 * a3;
    v19 = a3;
    v20 = result;
    v21 = a2;
    do
    {
      if (a5 >= 0x20)
      {
        v26 = 0;
        v25 = v20;
        v24 = v20;
        v23 = v21;
        do
        {
          v27 = v25;
          *a8.i8 = vld2q_f32(v27);
          v27 += 8;
          *a10.n128_u64 = vld2q_f32(v27);
          v28 = (v25 + 64);
          *a12.n128_u64 = vld2q_f32(v28);
          v29 = (v25 + 96);
          v122 = vld2q_f32(v29);
          v25 += 128;
          *(v24 + 32) = a12;
          *(v24 + 48) = v122.val[0];
          *v24 = a8;
          *(v24 + 16) = a10;
          v24 += 64;
          *(v23 + 32) = v30;
          *(v23 + 48) = v122.val[1];
          *v23 = a9;
          *(v23 + 16) = v31;
          v23 += 64;
          v22 = v26 + 32;
          v32 = v26 + 64;
          v26 += 32;
        }

        while (v32 <= a5);
      }

      else
      {
        v22 = 0;
        v23 = v21;
        v24 = v20;
        v25 = v20;
      }

      v33 = v22 | 8;
      while (v33 <= a5)
      {
        *a8.i8 = vld2q_f32(v25);
        v25 += 32;
        *v24 = a8;
        v24 += 16;
        *v23 = a9;
        v23 += 16;
        v33 = v22 + 16;
        v22 += 8;
      }

      v34 = v22 + 2;
      while (v34 <= a5)
      {
        *v24 = *v25;
        v24 += 4;
        *v23 = *(v25 + 4);
        v23 += 4;
        v25 += 8;
        v34 = v22 + 4;
        v22 += 2;
      }

      if (v22 < a5)
      {
        *v24 = *v25;
      }

      v20 += v18;
      v21 += v18;
      v19 += a3;
    }

    while (v19 <= a6);
  }

  v35 = a5 >> 1;
  v36 = 2 * a3;
  if (2 * a3 < a4)
  {
    result = WaveDecodeRecurse<unsigned int,true>(result, a2 + 4 * v35, 2 * a3);
  }

  v37 = v14 - (v14 >> 1);
  if (v36 <= a6)
  {
    v38 = a7 * a3;
    v39 = 2 * a3;
    v40 = v36 * a7;
    do
    {
      v41 = v17 + 4 * v37;
      v42 = v38 + v41;
      v43 = (v17 + 4 * v14);
      v44 = (v43 + v38);
      if (v14)
      {
        v46 = *(v41 - 4);
        v41 -= 4;
        a8.i32[0] = v46;
        a8.i16[2] = *(v41 + 2);
        v47 = *(v42 - 4);
        v42 -= 4;
        a9.i32[0] = v47;
        a9.i16[2] = *(v42 + 2);
        a10.n128_u64[0] = vshr_n_s32(vshr_n_s32(vshl_n_s32(*a9.i8, 0x10uLL), 0x10uLL), 1uLL);
        v48 = vsub_s32(*a8.i8, a10.n128_u64[0]);
        *a9.i8 = vadd_s32(v48, *a9.i8);
        v49 = vuzp1_s16(v48, v48);
        v50 = v49.i32[0];
        *a8.i8 = vuzp1_s16(*a9.i8, v49);
        *--v43 = *a8.i32;
        *(v44-- - 1) = v50;
        v45 = v14 - 1;
      }

      else
      {
        v45 = v14;
      }

      result = v16 + 4 * v35;
      v51 = v38 + result;
      if ((v45 & 7) != 0)
      {
        v52 = 0;
        do
        {
          a8.i16[0] = *(v41 + v52 - 4);
          a8.i16[2] = *(v41 + v52 - 2);
          a9.i16[0] = *(result + v52 - 4);
          a9.i16[2] = *(result + v52 - 2);
          a10.n128_u16[0] = *(v42 + v52 - 4);
          a10.n128_u16[2] = *(v42 + v52 - 2);
          a12.n128_u16[0] = *(v51 + v52 - 4);
          a12.n128_u16[2] = *(v51 + v52 - 2);
          v53 = vsub_s32(*a8.i8, vshr_n_s32(vshr_n_s32(vshl_n_s32(a10.n128_u64[0], 0x10uLL), 0x10uLL), 1uLL));
          v54 = vsub_s32(*a9.i8, vshr_n_s32(vshr_n_s32(vshl_n_s32(a12.n128_u64[0], 0x10uLL), 0x10uLL), 1uLL));
          v55 = vadd_s32(v54, a12.n128_u64[0]);
          v56 = vsub_s32(vadd_s32(v53, a10.n128_u64[0]), vshr_n_s32(vshr_n_s32(vshl_n_s32(v55, 0x10uLL), 0x10uLL), 1uLL));
          a12.n128_u64[0] = vadd_s32(v56, v55);
          v57 = vsub_s32(v53, vshr_n_s32(vshr_n_s32(vshl_n_s32(v54, 0x10uLL), 0x10uLL), 1uLL));
          *a9.i8 = vadd_s32(v57, v54);
          a10.n128_u64[0] = vuzp1_s16(a12.n128_u64[0], v56);
          *(v43 - 1) = a10.n128_u64[0];
          v43 -= 2;
          *a8.i8 = vuzp1_s16(*a9.i8, v57);
          *(v44 - 1) = a8.i64[0];
          v44 -= 2;
          v45 -= 2;
          v52 -= 4;
        }

        while ((v45 & 7) != 0);
        v51 += v52;
        v42 += v52;
        result += v52;
        v41 += v52;
      }

      if ((v45 & 0x1F) != 0)
      {
        v58 = 0;
        do
        {
          v59 = *(v42 + v58 - 16);
          v60 = *(v51 + v58 - 16);
          a8 = vsubq_s16(*(v41 + v58 - 16), vshrq_n_s16(v59, 1uLL));
          a9 = vsubq_s16(*(result + v58 - 16), vshrq_n_s16(v60, 1uLL));
          v61 = vaddq_s16(a9, v60);
          v62 = vsubq_s16(vaddq_s16(a8, v59), vshrq_n_s16(v61, 1uLL));
          a12 = vaddq_s16(v62, v61);
          v63 = vsubq_s16(a8, vshrq_n_s16(a9, 1uLL));
          v43 -= 8;
          vst2q_f32(v43, *a12.n128_u64);
          a10 = vaddq_s16(v63, a9);
          v44 -= 8;
          vst2q_f32(v44, *a10.n128_u64);
          v45 -= 8;
          v58 -= 16;
        }

        while ((v45 & 0x1F) != 0);
        v51 += v58;
        v42 += v58;
        result += v58;
        v41 += v58;
      }

      if (v45)
      {
        v64 = v44 - 32;
        v65 = v43 - 32;
        v66 = (v51 - 64);
        v67 = (v42 - 64);
        result -= 64;
        v68 = (v41 - 64);
        do
        {
          v69 = v67[2];
          v70 = v67[3];
          v71 = *v67;
          v72 = v67[1];
          v67 -= 4;
          v73 = vsubq_s16(*v68, vshrq_n_s16(v71, 1uLL));
          v74 = vsubq_s16(v68[1], vshrq_n_s16(v72, 1uLL));
          v75 = vsubq_s16(v68[2], vshrq_n_s16(v69, 1uLL));
          a8 = vsubq_s16(v68[3], vshrq_n_s16(v70, 1uLL));
          v76 = vaddq_s16(v75, v69);
          v77 = v66[1];
          v79 = v66[2];
          v78 = v66[3];
          a9 = vsubq_s16(*(result + 48), vshrq_n_s16(v78, 1uLL));
          v80 = vsubq_s16(*(result + 32), vshrq_n_s16(v79, 1uLL));
          v81 = *result;
          v82 = *(result + 16);
          result -= 64;
          v83 = vsubq_s16(v82, vshrq_n_s16(v77, 1uLL));
          v84 = vsubq_s16(v81, vshrq_n_s16(*v66, 1uLL));
          v85 = vaddq_s16(v84, *v66);
          v86 = vaddq_s16(v83, v77);
          v87 = vaddq_s16(v80, v79);
          v88 = vaddq_s16(a9, v78);
          v127.val[1] = vsubq_s16(vaddq_s16(v73, v71), vshrq_n_s16(v85, 1uLL));
          v121.val[1] = vsubq_s16(vaddq_s16(v74, v72), vshrq_n_s16(v86, 1uLL));
          v126.val[1] = vsubq_s16(v76, vshrq_n_s16(v87, 1uLL));
          v128.val[1] = vsubq_s16(vaddq_s16(a8, v70), vshrq_n_s16(v88, 1uLL));
          v128.val[0] = vaddq_s16(v128.val[1], v88);
          v126.val[0] = vaddq_s16(v126.val[1], v87);
          v121.val[0] = vaddq_s16(v121.val[1], v86);
          v127.val[0] = vaddq_s16(v127.val[1], v85);
          v89 = v65;
          vst2q_f32(v89, v127);
          v89 += 8;
          v124.val[1] = vsubq_s16(v73, vshrq_n_s16(v84, 1uLL));
          vst2q_f32(v89, v121);
          v121.val[1] = vsubq_s16(v74, vshrq_n_s16(v83, 1uLL));
          v90 = v65 + 16;
          vst2q_f32(v90, v126);
          v124.val[0] = vaddq_s16(v124.val[1], v84);
          v91 = v65 + 24;
          vst2q_f32(v91, v128);
          v92 = v64;
          vst2q_f32(v92, v124);
          v92 += 8;
          v118.val[1] = vsubq_s16(v75, vshrq_n_s16(v80, 1uLL));
          a12 = vaddq_s16(v121.val[1], v83);
          vst2q_f32(v92, *a12.n128_u64);
          v118.val[0] = vaddq_s16(v118.val[1], v80);
          v93 = v64 + 16;
          vst2q_f32(v93, v118);
          v94 = v64 + 24;
          v64 -= 32;
          v65 -= 32;
          v66 -= 4;
          v68 -= 4;
          v118.val[1] = vsubq_s16(a8, vshrq_n_s16(a9, 1uLL));
          a10 = vaddq_s16(v118.val[1], a9);
          vst2q_f32(v94, *a10.n128_u64);
          v45 -= 32;
        }

        while (v45);
      }

      v17 += v40;
      v16 += v40;
      v39 += v36;
    }

    while (v39 <= a6);
  }

  if ((a6 & a3) != 0)
  {
    v95 = v17 + 4 * v37;
    v96 = (v17 + 4 * v14);
    if (v14)
    {
      v97 = *(v95 - 4);
      v95 -= 4;
      *(v96-- - 1) = v97;
      --v14;
    }

    v98 = v16 + 4 * v35;
    if ((v14 & 7) != 0)
    {
      v99 = 0;
      do
      {
        a8.i16[0] = *(v95 + v99 - 4);
        a8.i16[2] = *(v95 + v99 - 2);
        a9.i16[0] = *(v98 + v99 - 4);
        a9.i16[2] = *(v98 + v99 - 2);
        v100 = vsub_s32(*a8.i8, vshr_n_s32(vshr_n_s32(vshl_n_s32(*a9.i8, 0x10uLL), 0x10uLL), 1uLL));
        *a9.i8 = vadd_s32(v100, *a9.i8);
        *a8.i8 = vuzp1_s16(*a9.i8, v100);
        *(v96 - 1) = a8.i64[0];
        v96 -= 2;
        v14 -= 2;
        v99 -= 4;
      }

      while ((v14 & 7) != 0);
      v98 += v99;
      v95 += v99;
    }

    while ((v14 & 0x1F) != 0)
    {
      v101 = *(v95 - 16);
      v95 -= 16;
      v102 = v101;
      v103 = *(v98 - 16);
      v98 -= 16;
      v119.val[1] = vsubq_s16(v102, vshrq_n_s16(v103, 1uLL));
      v119.val[0] = vaddq_s16(v119.val[1], v103);
      v96 -= 8;
      vst2q_f32(v96, v119);
      v14 -= 8;
    }

    if (v14)
    {
      v104 = v96 - 32;
      v105 = (v98 - 64);
      v106 = (v95 - 64);
      do
      {
        v108 = v106[2];
        v107 = v106[3];
        v110 = *v106;
        v109 = v106[1];
        v106 -= 4;
        v111 = v105[1];
        v112 = v105[2];
        v113 = v105[3];
        v125.val[1] = vsubq_s16(v110, vshrq_n_s16(*v105, 1uLL));
        v120.val[1] = vsubq_s16(v109, vshrq_n_s16(v111, 1uLL));
        v123.val[1] = vsubq_s16(v108, vshrq_n_s16(v112, 1uLL));
        v125.val[0] = vaddq_s16(v125.val[1], *v105);
        v114 = v104;
        vst2q_f32(v114, v125);
        v114 += 8;
        v117.val[1] = vsubq_s16(v107, vshrq_n_s16(v113, 1uLL));
        v120.val[0] = vaddq_s16(v120.val[1], v111);
        vst2q_f32(v114, v120);
        v123.val[0] = vaddq_s16(v123.val[1], v112);
        v115 = v104 + 16;
        vst2q_f32(v115, v123);
        v117.val[0] = vaddq_s16(v117.val[1], v113);
        v116 = v104 + 24;
        vst2q_f32(v116, v117);
        v104 -= 32;
        v105 -= 4;
        v14 -= 32;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t WaveDecodeRecurse<unsigned short,false>(uint64_t result, _WORD *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v9 = a5;
  v11 = a2;
  v12 = result;
  if (a3 <= a6)
  {
    v13 = a7 * a3;
    v14 = a3;
    v15 = result;
    v16 = a2;
    do
    {
      if (a5 >= 0x20)
      {
        v17 = 0;
        v20 = v15;
        do
        {
          v21 = v20 + 4;
          v106 = vld2q_s16(v20);
          v22 = &v20[2];
          v108 = vld2q_s16(v22);
          v23 = (v15 + v17);
          v24 = &v16[v17 / 2];
          v20 = v21;
          *v23 = v106.val[0];
          v23[1] = v108.val[0];
          *v24 = v106.val[1];
          v24[1] = v108.val[1];
          v25 = v17 + 64;
          v17 += 32;
        }

        while (v25 <= a5);
        v19 = (v15 + v17);
        v18 = &v16[v17 / 2];
      }

      else
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v15;
      }

      v26 = v17 | 8;
      while (v26 <= a5)
      {
        v102 = vld2_s16(v20++);
        *v19 = v102;
        v19 = (v19 + 8);
        v18 += 4;
        v26 = v17 + 16;
        v17 += 8;
      }

      v27 = v17 + 2;
      while (v27 <= a5)
      {
        v19->val[0].i16[0] = v20->val[0].i16[0];
        v19 = (v19 + 2);
        *v18++ = v20->val[0].i16[1];
        v20 = (v20 + 4);
        v27 = v17 + 4;
        v17 += 2;
      }

      if (v17 < a5)
      {
        v19->val[0].i16[0] = v20->val[0].i16[0];
      }

      v15 = (v15 + v13);
      v16 = (v16 + v13);
      v14 += a3;
    }

    while (v14 <= a6);
  }

  v28 = a5 >> 1;
  v29 = 2 * a3;
  if (2 * a3 < a4)
  {
    result = WaveDecodeRecurse<unsigned short,false>(result, &a2[v28], 2 * a3);
  }

  v30 = v9 - (v9 >> 1);
  if (v29 <= a6)
  {
    v31 = a7 * a3;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = 2 * a3;
    v34 = v29 * a7;
    do
    {
      v35 = v12 + 2 * v30;
      v36 = v31 + v35;
      v37 = (v12 + 2 * v9);
      v38 = (v37 + v31);
      if (v9)
      {
        v41 = *(v35 - 2);
        v35 -= 2;
        v40 = v41;
        v42 = *(v36 - 2);
        v36 -= 2;
        v43 = v40 - (v42 >> 1);
        *--v37 = (v43 + v42) ^ 0x8000;
        *--v38 = v43;
        v39 = v9 - 1;
      }

      else
      {
        v39 = v9;
      }

      result = &v11[v28];
      v44 = v31 + result;
      if ((v39 & 7) != 0)
      {
        v45 = 0;
        do
        {
          v46 = *(v36 + v45 - 2);
          v47 = *(v44 + v45 - 2);
          v48 = *(v35 + v45 - 2) - (v46 >> 1);
          v49 = *(result + v45 - 2) - (v47 >> 1);
          LOWORD(v47) = (v49 + v47) ^ 0x8000;
          v50 = ((v48 + v46) ^ 0xFFFF8000) - ((v47 & 0xFFFE) >> 1);
          v51 = v48 - ((v49 & 0xFFFE) >> 1);
          *(v37 - 2) = (v50 + v47) ^ 0x8000;
          v37 -= 2;
          v37[1] = v50;
          *(v38 - 2) = (v51 + v49) ^ 0x8000;
          v38 -= 2;
          v38[1] = v51;
          LOBYTE(v51) = v39 + v45 - 2;
          v45 -= 2;
        }

        while ((v51 & 7) != 0);
        v39 += v45;
        v35 += v45;
        v44 += v45;
        v36 += v45;
        result += v45;
      }

      if ((v39 & 0x1F) != 0)
      {
        v52 = 0;
        do
        {
          v53 = *(v36 + v52 - 8);
          v54 = *(v44 + v52 - 8);
          v55 = vsub_s16(*(v35 + v52 - 8), vshr_n_u16(v53, 1uLL));
          v56 = vsub_s16(*(result + v52 - 8), vshr_n_u16(v54, 1uLL));
          v57 = veor_s8(vadd_s16(v56, v54), 0x8000800080008000);
          v105.val[1] = vsub_s16(veor_s8(vadd_s16(v55, v53), 0x8000800080008000), vshr_n_u16(v57, 1uLL));
          v105.val[0] = veor_s8(vadd_s16(v105.val[1], v57), 0x8000800080008000);
          v104.val[1] = vsub_s16(v55, vshr_n_u16(v56, 1uLL));
          v104.val[0] = veor_s8(vadd_s16(v104.val[1], v56), 0x8000800080008000);
          v37 -= 8;
          vst2_s16(v37, v105);
          v38 -= 8;
          vst2_s16(v38, v104);
          v58 = v39 + v52 - 8;
          v52 -= 8;
        }

        while ((v58 & 0x1F) != 0);
        v39 += v52;
        v44 += v52;
        v36 += v52;
        result += v52;
        v35 += v52;
      }

      if (v39)
      {
        v59 = v38 - 32;
        v60 = v37 - 32;
        v61 = (v44 - 32);
        v62 = (v36 - 32);
        v63 = (result - 32);
        v64 = (v35 - 32);
        do
        {
          v66 = *v64;
          v65 = v64[1];
          v64 -= 2;
          v67 = *v63;
          v68 = v63[1];
          v63 -= 2;
          v69 = *v62;
          v70 = v62[1];
          v62 -= 2;
          v72 = *v61;
          v71 = v61[1];
          v61 -= 2;
          v73 = vsubq_s16(v66, vshrq_n_u16(v69, 1uLL));
          v74 = vsubq_s16(v65, vshrq_n_u16(v70, 1uLL));
          v75 = vsubq_s16(v68, vshrq_n_u16(v71, 1uLL));
          v76 = vsubq_s16(v67, vshrq_n_u16(v72, 1uLL));
          v77 = veorq_s8(vaddq_s16(v75, v71), v32);
          v78 = veorq_s8(vaddq_s16(v76, v72), v32);
          v113.val[1] = vsubq_s16(veorq_s8(vaddq_s16(v74, v70), v32), vshrq_n_u16(v77, 1uLL));
          v110.val[1] = vsubq_s16(veorq_s8(vaddq_s16(v73, v69), v32), vshrq_n_u16(v78, 1uLL));
          v113.val[0] = veorq_s8(vaddq_s16(v113.val[1], v77), v32);
          v110.val[0] = veorq_s8(vaddq_s16(v110.val[1], v78), v32);
          v112.val[1] = vsubq_s16(v74, vshrq_n_u16(v75, 1uLL));
          v109.val[1] = vsubq_s16(v73, vshrq_n_u16(v76, 1uLL));
          result = (v60 - 32);
          vst2q_s16(v60, v110);
          v79 = v60 + 16;
          v109.val[0] = veorq_s8(vaddq_s16(v109.val[1], v76), v32);
          vst2q_s16(v79, v113);
          v80 = v59 - 32;
          vst2q_s16(v59, v109);
          v81 = v59 + 16;
          v112.val[0] = veorq_s8(vaddq_s16(v112.val[1], v75), v32);
          vst2q_s16(v81, v112);
          v60 = result;
          v59 = v80;
          v39 -= 32;
        }

        while (v39);
      }

      v12 += v34;
      v11 = (v11 + v34);
      v33 += v29;
    }

    while (v33 <= a6);
  }

  if ((a6 & a3) != 0)
  {
    v82 = v12 + 2 * v30;
    v83 = (v12 + 2 * v9);
    if (v9)
    {
      v84 = *(v82 - 2);
      v82 -= 2;
      *--v83 = v84;
      --v9;
    }

    v85 = &v11[v28];
    if ((v9 & 7) != 0)
    {
      v86 = 0;
      do
      {
        v87 = v85[v86 / 2 - 1];
        v88 = *(v82 + v86 - 2) - (v87 >> 1);
        *(v83 - 2) = (v88 + v87) ^ 0x8000;
        v83 -= 2;
        v83[1] = v88;
        LOBYTE(v88) = v9 + v86 - 2;
        v86 -= 2;
      }

      while ((v88 & 7) != 0);
      v9 += v86;
      v85 = (v85 + v86);
      v82 += v86;
    }

    for (; (v9 & 0x1F) != 0; v9 -= 8)
    {
      v89 = *(v82 - 8);
      v82 -= 8;
      v90 = v89;
      v91 = *(v85 - 4);
      v85 -= 4;
      v103.val[1] = vsub_s16(v90, vshr_n_u16(v91, 1uLL));
      v103.val[0] = veor_s8(vadd_s16(v103.val[1], v91), 0x8000800080008000);
      v83 -= 8;
      vst2_s16(v83, v103);
    }

    if (v9)
    {
      v92 = v83 - 32;
      v93 = (v85 - 16);
      v94 = (v82 - 32);
      v95.i64[0] = 0x8000800080008000;
      v95.i64[1] = 0x8000800080008000;
      do
      {
        v96 = *v94;
        v97 = v94[1];
        v94 -= 2;
        v99 = *v93;
        v98 = v93[1];
        v93 -= 2;
        v111.val[1] = vsubq_s16(v97, vshrq_n_u16(v98, 1uLL));
        v107.val[1] = vsubq_s16(v96, vshrq_n_u16(v99, 1uLL));
        v107.val[0] = veorq_s8(vaddq_s16(v107.val[1], v99), v95);
        v100 = v92 - 32;
        vst2q_s16(v92, v107);
        v101 = v92 + 16;
        v111.val[0] = veorq_s8(vaddq_s16(v111.val[1], v98), v95);
        vst2q_s16(v101, v111);
        v92 = v100;
        v9 -= 32;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t WaveDecodeRecurse<unsigned int,false>(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, int8x16_t a8, double a9, int8x16_t a10, __n128 a11)
{
  v13 = a5;
  v15 = a2;
  v16 = result;
  if (a3 <= a6)
  {
    v17 = a7 * a3;
    v18 = a3;
    v19 = result;
    v20 = a2;
    do
    {
      if (a5 >= 0x20)
      {
        v25 = 0;
        v24 = v19;
        v23 = v19;
        v22 = v20;
        do
        {
          v26 = v24;
          *a8.i8 = vld2q_f32(v26);
          v26 += 8;
          *a10.i8 = vld2q_f32(v26);
          v27 = (v24 + 64);
          v127 = vld2q_f32(v27);
          v28 = (v24 + 96);
          v130 = vld2q_f32(v28);
          v24 += 128;
          *(v23 + 32) = v127.val[0];
          *(v23 + 48) = v130.val[0];
          *v23 = a8;
          *(v23 + 16) = a10;
          v23 += 64;
          *(v22 + 32) = v127.val[1];
          *(v22 + 48) = v130.val[1];
          *v22 = v29;
          *(v22 + 16) = a11;
          v22 += 64;
          v21 = v25 + 32;
          v30 = v25 + 64;
          v25 += 32;
        }

        while (v30 <= a5);
      }

      else
      {
        v21 = 0;
        v22 = v20;
        v23 = v19;
        v24 = v19;
      }

      v31 = v21 | 8;
      while (v31 <= a5)
      {
        *a8.i8 = vld2q_f32(v24);
        v24 += 32;
        *v23 = a8;
        v23 += 16;
        *v22 = v32;
        v22 += 16;
        v31 = v21 + 16;
        v21 += 8;
      }

      v33 = v21 + 2;
      while (v33 <= a5)
      {
        *v23 = *v24;
        v23 += 4;
        *v22 = *(v24 + 4);
        v22 += 4;
        v24 += 8;
        v33 = v21 + 4;
        v21 += 2;
      }

      if (v21 < a5)
      {
        *v23 = *v24;
      }

      v19 += v17;
      v20 += v17;
      v18 += a3;
    }

    while (v18 <= a6);
  }

  v34 = a5 >> 1;
  v35 = 2 * a3;
  if (2 * a3 < a4)
  {
    result = WaveDecodeRecurse<unsigned int,false>(result, a2 + 4 * v34, 2 * a3);
  }

  v36 = v13 - (v13 >> 1);
  if (v35 <= a6)
  {
    v37 = a7 * a3;
    a8.i32[0] = -2147450880;
    a8.i16[2] = 0x8000;
    a8.i16[3] = 0x8000;
    a8.i16[4] = 0x8000;
    a8.i16[5] = 0x8000;
    a8.i16[6] = 0x8000;
    a8.i16[7] = 0x8000;
    v38 = 2 * a3;
    v39 = v35 * a7;
    do
    {
      v40 = v16 + 4 * v36;
      v41 = v37 + v40;
      v42 = v16 + 4 * v13;
      result = v37 + v42;
      if (v13)
      {
        v44 = *(v40 - 4);
        v40 -= 4;
        a10.i32[0] = v44;
        a10.i16[2] = *(v40 + 2);
        v45 = *(v41 - 4);
        v41 -= 4;
        v46.i32[0] = v45;
        v46.i32[1] = *(v41 + 2);
        v47 = vsub_s32(*a10.i8, vshr_n_u32(v46, 1uLL));
        a11.n128_u64[0] = vadd_s32(v47, v46);
        v48 = vuzp1_s16(v47, *a8.i8).u32[0];
        *a10.i8 = vuzp1_s16(a11.n128_u64[0], *a8.i8);
        *(v42 - 4) = a10.i32[0] ^ 0x80008000;
        v42 -= 4;
        *(result - 4) = v48;
        result -= 4;
        v43 = v13 - 1;
      }

      else
      {
        v43 = v13;
      }

      v49 = v15 + 4 * v34;
      v50 = v37 + v49;
      if ((v43 & 7) != 0)
      {
        v51 = 0;
        do
        {
          a10.i16[0] = *(v40 + v51 - 4);
          a11.n128_u16[0] = *(v49 + v51 - 4);
          a11.n128_u16[2] = *(v49 + v51 - 2);
          v52.i32[0] = *(v41 + v51 - 4);
          v53.i32[0] = *(v50 + v51 - 4);
          v52.i32[1] = *(v41 + v51 - 2);
          v53.i32[1] = *(v50 + v51 - 2);
          a10.i16[2] = *(v40 + v51 - 2);
          v54 = vshr_n_u32(v52, 1uLL);
          v55 = vsub_s32(*a10.i8, v54);
          v56 = vsub_s32(a11.n128_u64[0], vshr_n_u32(v53, 1uLL));
          v57 = vuzp1_s16(vadd_s32(v56, v53), *a8.i8);
          v58 = v57.i32[0] ^ 0x80008000;
          v57.i32[0] = vuzp1_s16(vadd_s32(v55, v52), *a8.i8).u32[0] ^ 0x80008000;
          v54.i32[0] = v58;
          v59 = vmovl_u16(v57);
          *v59.i8 = vsub_s32(*v59.i8, vshr_n_u32(vand_s8(*&vmovl_u16(v54), 0xFFFF0000FFFFLL), 1uLL));
          v60 = vsub_s32(v55, vshr_n_u32(vand_s8(v56, 0xFFFF0000FFFFLL), 1uLL));
          v61 = vadd_s32(v60, v56);
          *a10.i8 = vuzp1_s16(v60, *a8.i8);
          a11.n128_u64[0] = vuzp1_s16(v61, *a8.i8);
          *(v42 - 8) = vuzp1_s16(*&vaddw_u16(v59, v54), *a8.i8).u32[0] ^ 0x80008000;
          v42 -= 8;
          *(v42 + 4) = vuzp1_s16(*v59.i8, *a8.i8).u32[0];
          *(result - 8) = a11.n128_u32[0] ^ 0x80008000;
          result -= 8;
          *(result + 4) = a10.i32[0];
          v43 -= 2;
          v51 -= 4;
        }

        while ((v43 & 7) != 0);
        v40 += v51;
        v50 += v51;
        v41 += v51;
        v49 += v51;
      }

      if ((v43 & 0x1F) != 0)
      {
        v62 = 0;
        do
        {
          v63 = *(v41 + v62 - 16);
          v64 = *(v50 + v62 - 16);
          v65 = vsubq_s16(*(v40 + v62 - 16), vshrq_n_u16(v63, 1uLL));
          a11 = vsubq_s16(*(v49 + v62 - 16), vshrq_n_u16(v64, 1uLL));
          v66 = veorq_s8(vaddq_s16(a11, v64), a8);
          v131.val[1] = vsubq_s16(veorq_s8(vaddq_s16(v65, v63), a8), vshrq_n_u16(v66, 1uLL));
          v131.val[0] = veorq_s8(vaddq_s16(v131.val[1], v66), a8);
          v128.val[1] = vsubq_s16(v65, vshrq_n_u16(a11, 1uLL));
          a10 = vaddq_s16(v128.val[1], a11);
          v42 -= 32;
          vst2q_f32(v42, v131);
          v128.val[0] = veorq_s8(a10, a8);
          result -= 32;
          vst2q_f32(result, v128);
          v43 -= 8;
          v62 -= 16;
        }

        while ((v43 & 0x1F) != 0);
        v50 += v62;
        v41 += v62;
        v49 += v62;
        v40 += v62;
      }

      if (v43)
      {
        result -= 128;
        v67 = (v42 - 128);
        v68 = v50 - 64;
        v69 = (v41 - 64);
        v70 = (v49 - 64);
        v71 = (v40 - 64);
        do
        {
          v72 = v69[2];
          v73 = v69[3];
          v74 = *v69;
          v75 = v69[1];
          v69 -= 4;
          v76 = vsubq_s16(*v71, vshrq_n_u16(v74, 1uLL));
          v77 = vsubq_s16(v71[1], vshrq_n_u16(v75, 1uLL));
          v78 = vsubq_s16(v71[2], vshrq_n_u16(v72, 1uLL));
          v79 = vsubq_s16(v71[3], vshrq_n_u16(v73, 1uLL));
          v80 = vaddq_s16(v79, v73);
          v81 = vaddq_s16(v78, v72);
          v82 = vaddq_s16(v76, v74);
          v83 = *(v68 + 16);
          v85 = *(v68 + 32);
          v84 = *(v68 + 48);
          a11 = vsubq_s16(v70[3], vshrq_n_u16(v84, 1uLL));
          v86 = vsubq_s16(v70[2], vshrq_n_u16(v85, 1uLL));
          v87 = *v70;
          v88 = v70[1];
          v70 -= 4;
          v89 = vsubq_s16(v88, vshrq_n_u16(v83, 1uLL));
          v90 = vsubq_s16(v87, vshrq_n_u16(*v68, 1uLL));
          v91 = veorq_s8(vaddq_s16(a11, v84), a8);
          v92 = veorq_s8(vaddq_s16(v86, v85), a8);
          v93 = veorq_s8(vaddq_s16(v89, v83), a8);
          v94 = veorq_s8(vaddq_s16(v90, *v68), a8);
          v139.val[1] = vsubq_s16(veorq_s8(v80, a8), vshrq_n_u16(v91, 1uLL));
          v134.val[1] = vsubq_s16(veorq_s8(v81, a8), vshrq_n_u16(v92, 1uLL));
          v138.val[1] = vsubq_s16(veorq_s8(vaddq_s16(v77, v75), a8), vshrq_n_u16(v93, 1uLL));
          v133.val[1] = vsubq_s16(veorq_s8(v82, a8), vshrq_n_u16(v94, 1uLL));
          v139.val[0] = veorq_s8(vaddq_s16(v139.val[1], v91), a8);
          v134.val[0] = veorq_s8(vaddq_s16(v134.val[1], v92), a8);
          v138.val[0] = veorq_s8(vaddq_s16(v138.val[1], v93), a8);
          v133.val[0] = veorq_s8(vaddq_s16(v133.val[1], v94), a8);
          v137.val[1] = vsubq_s16(v77, vshrq_n_u16(v89, 1uLL));
          v132.val[1] = vsubq_s16(v76, vshrq_n_u16(v90, 1uLL));
          v95 = v67;
          vst2q_f32(v95, v133);
          v95 += 8;
          vst2q_f32(v95, v138);
          v137.val[0] = veorq_s8(vaddq_s16(v137.val[1], v89), a8);
          v96 = v67 + 16;
          vst2q_f32(v96, v134);
          v132.val[0] = veorq_s8(vaddq_s16(v132.val[1], v90), a8);
          v97 = v67 + 24;
          vst2q_f32(v97, v139);
          v98 = result;
          vst2q_f32(v98, v132);
          v98 += 8;
          vst2q_f32(v98, v137);
          v99 = (result + 64);
          v132.val[1] = vsubq_s16(v78, vshrq_n_u16(v86, 1uLL));
          v132.val[0] = veorq_s8(vaddq_s16(v132.val[1], v86), a8);
          vst2q_f32(v99, v132);
          v100 = (result + 96);
          result -= 128;
          v129.val[1] = vsubq_s16(v79, vshrq_n_u16(a11, 1uLL));
          v67 -= 32;
          v68 -= 64;
          v71 -= 4;
          a10 = vaddq_s16(v129.val[1], a11);
          v129.val[0] = veorq_s8(a10, a8);
          vst2q_f32(v100, v129);
          v43 -= 32;
        }

        while (v43);
      }

      v16 += v39;
      v15 += v39;
      v38 += v35;
    }

    while (v38 <= a6);
  }

  if ((a6 & a3) != 0)
  {
    v101 = v16 + 4 * v36;
    v102 = v16 + 4 * v13;
    if (v13)
    {
      v103 = *(v101 - 4);
      v101 -= 4;
      *(v102 - 4) = v103;
      v102 -= 4;
      --v13;
    }

    v104 = v15 + 4 * v34;
    if ((v13 & 7) != 0)
    {
      v105 = 0;
      do
      {
        a8.i16[0] = *(v101 + v105 - 4);
        a8.i16[2] = *(v101 + v105 - 2);
        v106.i32[0] = *(v104 + v105 - 4);
        v106.i32[1] = *(v104 + v105 - 2);
        v107 = vsub_s32(*a8.i8, vshr_n_u32(v106, 1uLL));
        v108 = vadd_s32(v107, v106);
        *a8.i8 = vuzp1_s16(v107, v107);
        *(v102 - 8) = vuzp1_s16(v108, *a8.i8).u32[0] ^ 0x80008000;
        v102 -= 8;
        *(v102 + 4) = a8.i32[0];
        v13 -= 2;
        v105 -= 4;
      }

      while ((v13 & 7) != 0);
      v104 += v105;
      v101 += v105;
    }

    if ((v13 & 0x1F) != 0)
    {
      v109.i64[0] = 0x8000800080008000;
      v109.i64[1] = 0x8000800080008000;
      do
      {
        v110 = *(v101 - 16);
        v101 -= 16;
        v111 = v110;
        v112 = *(v104 - 16);
        v104 -= 16;
        v125.val[1] = vsubq_s16(v111, vshrq_n_u16(v112, 1uLL));
        v125.val[0] = veorq_s8(vaddq_s16(v125.val[1], v112), v109);
        v102 -= 32;
        vst2q_f32(v102, v125);
        v13 -= 8;
      }

      while ((v13 & 0x1F) != 0);
    }

    if (v13)
    {
      v113 = (v102 - 128);
      v114 = (v104 - 64);
      v115 = (v101 - 64);
      v116.i64[0] = 0x8000800080008000;
      v116.i64[1] = 0x8000800080008000;
      do
      {
        v118 = v114[2];
        v117 = v114[3];
        v120 = *v114;
        v119 = v114[1];
        v114 -= 4;
        v136.val[1] = vsubq_s16(v115[3], vshrq_n_u16(v117, 1uLL));
        v126.val[1] = vsubq_s16(v115[2], vshrq_n_u16(v118, 1uLL));
        v135.val[1] = vsubq_s16(v115[1], vshrq_n_u16(v119, 1uLL));
        v124.val[1] = vsubq_s16(*v115, vshrq_n_u16(v120, 1uLL));
        v124.val[0] = veorq_s8(vaddq_s16(v124.val[1], v120), v116);
        v121 = v113;
        vst2q_f32(v121, v124);
        v121 += 8;
        v135.val[0] = veorq_s8(vaddq_s16(v135.val[1], v119), v116);
        vst2q_f32(v121, v135);
        v126.val[0] = veorq_s8(vaddq_s16(v126.val[1], v118), v116);
        v122 = v113 + 16;
        vst2q_f32(v122, v126);
        v136.val[0] = veorq_s8(vaddq_s16(v136.val[1], v117), v116);
        v123 = v113 + 24;
        vst2q_f32(v123, v136);
        v113 -= 32;
        v115 -= 4;
        v13 -= 32;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t TileDecoder_PIZ::Interleave(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44[0] = 0;
  v44[1] = 0;
  v46 = 0;
  v45 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a4, a5, a6, v44);
  if (HIDWORD(v45))
  {
    v23 = v46 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = a9;
    v25 = *(*(*(a1 + 64) + 8) + 72);
    if (v25 == 1)
    {
      v26 = 2;
    }

    else
    {
      v26 = 4;
    }

    if (!*(a1 + 72))
    {
      goto LABEL_30;
    }

    v43 = a7;
    v27 = 0;
    v28 = 0;
    v29 = v25 == 1 ? 1 : 2;
    do
    {
      v30 = *(a1 + 64);
      if (!*(*(v30 + 16 * v28) + 24))
      {
        if (v28)
        {
          v31 = 0;
          while (1)
          {
            result = ChannelInfo::operator==((*(a1 + 64) + v31), (*(a1 + 64) + 16 * v28));
            if (result)
            {
              break;
            }

            v31 += 16;
            if (v27 == v31)
            {
              v30 = *(a1 + 64);
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          v32 = *(v30 + 16 * v28 + 8);
          v18.i64[0] = *(a4 + 24);
          v33 = *(*(v32 + 40) + 8 * *(a4 + 60));
          v34 = v33[1].u32[1] - 1;
          if (v34 >= (v18.i32[1] * *(a1 + 60)))
          {
            v34 = (HIDWORD(*(a4 + 24)) * *(a1 + 60));
          }

          v35 = &v33[v18.u32[0]];
          if (*(v32 + 104) == 1)
          {
            v36 = (*&v35[3] + 8 * v34);
          }

          else
          {
            v37 = (v34 * *(v32 + 108)) >> *(v32 + 112);
            if (v37 >= v33[2].i32[1] - 1)
            {
              LODWORD(v37) = v33[2].i32[1] - 1;
            }

            v36 = (*&v35[3] + 8 * v37);
          }

          v19.i64[0] = *(v32 + 48);
          *v20.i8 = vmls_s32(v33[2], *v19.i8, *v18.i8);
          *v18.i8 = vmin_u32(*v20.i8, *v19.i8);
          TileDecoder_PIZ::WaveDecode(v18, v19, v20, v21, v22, result, *v36 + a2[1], v18.u32[0] << v29, a2[2], v15, v16, v17, *(a2 + 12), v26);
        }
      }

      ++v28;
      v38 = *(a1 + 72);
      v27 += 16;
    }

    while (v28 < v38);
    v24 = a9;
    a7 = v43;
    if (v38 == 2)
    {
      v39 = *(a1 + 64);
      if (v39)
      {
        v40 = 2 * (*(v39 + 8) != 0);
      }

      else
      {
        v40 = 0;
      }

      if (v25 != 1)
      {
        ++v40;
      }

      return (*(TileDecoder_PIZ::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable + ((8 * v40) | (32 * (*(v39 + 24) != 0)))))(a2[1], a1, a4, v39, v39 + 16, LODWORD(v44[0]), HIDWORD(v45), a6, v43, a9, *a2);
    }

    else
    {
LABEL_30:
      v41 = *(a1 + 64);
      if (v41)
      {
        v42 = 2 * (v41[1] != 0);
      }

      else
      {
        v42 = 0;
      }

      if (v25 != 1)
      {
        ++v42;
      }

      return (*(TileDecoder_PIZ::Interleave(void const*,unsigned long,TileInfo const&,unsigned int,unsigned int,void *,unsigned long,long)const::funcTable + ((8 * v42) | (32 * (v41[3] != 0)) | ((v41[5] != 0) << 6) | ((v41[7] != 0) << 7))))(a2[1], a1, a4, v41, v41 + 2, v41 + 4, v41 + 6, LODWORD(v44[0]), HIDWORD(v45), a6, a7, v24, *a2);
    }
  }

  return result;
}

BOOL ChannelInfo::operator==(uint64_t *a1, uint64_t *a2)
{
  result = ReadChannel::operator==(*a1, *a2);
  if (result)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = (v5 | v6) == 0;
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return **(**(v5 + 40) + 24) == **(**(v6 + 40) + 24);
    }
  }

  return result;
}

void Read2_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t a6, unint64_t a7, unsigned int a8, int8x16_t *a9, uint64_t a10)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v15 = _D0;
  }

  else
  {
    v15 = 32256;
  }

  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v17 = _D0;
  }

  else
  {
    v17 = 32256;
  }

  v18 = *(a3 + 52);
  if (*(a3 + 56) + v18 < *(a2 + 60))
  {
    v30.val[1] = vdupq_n_s16(v17);
    v30.val[0] = vdupq_n_s16(v15);
    v20 = xmmword_296B6EDD0;
    v21 = vqtbl2q_s8(v30, xmmword_296B6EDD0);
    LODWORD(v20) = v17;
    v30.val[1].i32[0] = v15;
    v22 = vqtbl2q_s8(*(&v30 + 16), xmmword_296B8F230);
    do
    {
      if (a7 >= 0x10)
      {
        v25 = 0;
        v26 = a9;
        do
        {
          v24 = v26 + 4;
          *v26 = v21;
          v26[1] = v21;
          v26[2] = v21;
          v26[3] = v21;
          v23 = v25 + 16;
          v27 = v25 + 32;
          v25 += 16;
          v26 += 4;
        }

        while (v27 <= a7);
      }

      else
      {
        v23 = 0;
        v24 = a9;
      }

      v28 = v23 | 4;
      while (v28 <= a7)
      {
        *v24++ = v22;
        v28 = v23 + 8;
        v23 += 4;
      }

      _CF = a7 >= v23;
      v29 = a7 - v23;
      if (v29 != 0 && _CF)
      {
        do
        {
          v24->i16[1] = v17;
          v24->i16[0] = v15;
          v24 = (v24 + 4);
          --v29;
        }

        while (v29);
      }

      a9 = (a9 + a10);
      v18 += a8;
    }

    while (v18 + *(a3 + 56) < *(a2 + 60));
  }
}

void Read2_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10)
{
  if (*(*a4 + 24))
  {
    v10 = **a4;
    v11 = v10;
  }

  else
  {
    v11 = NAN;
  }

  if (*(*a5 + 24))
  {
    v12 = **a5;
    v13 = v12;
  }

  else
  {
    v13 = NAN;
  }

  v14 = *(a3 + 52);
  if (*(a3 + 56) + v14 < *(a2 + 60))
  {
    *&v16 = __PAIR64__(LODWORD(v13), LODWORD(v11));
    *(&v16 + 1) = __PAIR64__(LODWORD(v13), LODWORD(v11));
    v17 = __PAIR64__(LODWORD(v13), LODWORD(v11));
    do
    {
      if (a7 >= 0x10)
      {
        v20 = 0;
        v21 = a9;
        do
        {
          v19 = v21 + 8;
          *v21 = v16;
          v21[1] = v16;
          v21[2] = v16;
          v21[3] = v16;
          v21[4] = v16;
          v21[5] = v16;
          v18 = v20 + 16;
          v22 = v20 + 32;
          v20 += 16;
          v21[6] = v16;
          v21[7] = v16;
          v21 += 8;
        }

        while (v22 <= a7);
      }

      else
      {
        v18 = 0;
        v19 = a9;
      }

      v23 = v18 | 4;
      while (v23 <= a7)
      {
        *v19 = v16;
        v19[1] = v16;
        v19 += 2;
        v23 = v18 + 8;
        v18 += 4;
      }

      v24 = a7 >= v18;
      v25 = a7 - v18;
      if (v25 != 0 && v24)
      {
        do
        {
          *v19 = v17;
          v19 = (v19 + 8);
          --v25;
        }

        while (v25);
      }

      a9 = (a9 + a10);
      v14 += a8;
    }

    while (v14 + *(a3 + 56) < *(a2 + 60));
  }
}

__int16 *Read2_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6, unint64_t a7, unsigned int a8, int8x16_t *a9, uint64_t a10, uint64_t a11)
{
  v16 = *(a2 + 60);
  v17 = *(a4 + 8);
  v18 = *(a3 + 24);
  v71 = v18;
  v68[1] = a1;
  v68[2] = v17;
  LODWORD(v17) = *(a3 + 44);
  v69 = *(a3 + 52) + HIDWORD(v18) * v16;
  v70 = v17;
  v72 = a11;
  v73 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v68);
  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v26 = _D0;
  }

  else
  {
    v26 = 32256;
  }

  v27 = *(a2 + 56);
  v28 = *(a3 + 52);
  if (*(a3 + 56) + v28 < HIDWORD(v27))
  {
    v30 = vdupq_n_s16(v26);
    v31 = *(a3 + 28) * HIDWORD(v27);
    do
    {
      v66 = v20;
      v67 = v30;
      v69 = v31 + v28;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v68);
      v20 = v66;
      v30 = v67;
      if (v68[0])
      {
        if (a7 >= 0x10)
        {
          v37 = 0;
          v38 = v72;
          v39 = (v68[0] + 30);
          v40 = a9;
          do
          {
            v41 = *(v39 - 15);
            v42 = (v38 + 2 * *(v39 - 14));
            v43 = (v38 + 2 * *(v39 - 13));
            v44 = (v38 + 2 * *(v39 - 12));
            v45 = *(v39 - 11);
            v46 = (v38 + 2 * *(v39 - 10));
            result = (v38 + 2 * *(v39 - 9));
            v47 = (v38 + 2 * *(v39 - 8));
            v48 = *(v39 - 7);
            v49 = (v38 + 2 * *(v39 - 6));
            v50 = (v38 + 2 * *(v39 - 5));
            v51 = (v38 + 2 * *(v39 - 4));
            v52 = *(v39 - 3);
            v53 = (v38 + 2 * *(v39 - 2));
            v54 = (v38 + 2 * *(v39 - 1));
            v55 = *v39;
            v39 += 16;
            v32.i16[0] = *(v38 + 2 * v52);
            v32.i16[2] = *v53;
            v32.i16[4] = *v54;
            v32.i16[6] = *(v38 + 2 * v55);
            v33.i16[0] = *(v38 + 2 * v48);
            v33.i16[2] = *v49;
            v33.i16[4] = *v50;
            v33.i16[6] = *v51;
            v34.i16[0] = *(v38 + 2 * v45);
            v34.i16[2] = *v46;
            v34.i16[4] = *result;
            v34.i16[6] = *v47;
            LOWORD(v20) = *(v38 + 2 * v41);
            WORD2(v20) = *v42;
            WORD4(v20) = *v43;
            WORD6(v20) = *v44;
            v56 = v67;
            v34 = vqtbl2q_s8(*v34.i8, xmmword_296B6EE80);
            v57 = v67;
            v33 = vqtbl2q_s8(*v33.i8, xmmword_296B6EE60);
            v58 = v67;
            v32 = vqtbl2q_s8(*v32.i8, xmmword_296B6EE80);
            v36 = v40 + 4;
            v40[2] = v33;
            v40[3] = v32;
            v35 = v37 + 16;
            v59 = v37 + 32;
            *v40 = vqtbl2q_s8(*&v20, xmmword_296B6EE60);
            v40[1] = v34;
            v37 += 16;
            v40 += 4;
          }

          while (v59 <= a7);
        }

        else
        {
          v35 = 0;
          v36 = a9;
        }

        if ((v35 | 4) <= a7)
        {
          v61 = 2 * v35 + 4;
          do
          {
            v62 = (v68[0] + 2 * v35);
            v32.i16[0] = *(v72 + 2 * *v62);
            v32.i16[2] = *(v72 + 2 * v62[1]);
            v32.i16[4] = *(v72 + 2 * *(v68[0] + v61));
            v32.i16[6] = *(v72 + 2 * *(v68[0] + v61 + 2));
            v63 = v67;
            v32 = vqtbl2q_s8(*v32.i8, xmmword_296B6EE60);
            *v36++ = v32;
            v60 = v35 + 4;
            v61 += 8;
            v64 = v35 + 8;
            v35 += 4;
          }

          while (v64 <= a7);
        }

        else
        {
          v60 = v35;
        }

        if (v60 < a7)
        {
          do
          {
            v65 = *(v72 + 2 * *(v68[0] + 2 * v60));
            v36->i16[1] = v26;
            v36->i16[0] = v65;
            v36 = (v36 + 4);
            ++v60;
          }

          while (a7 != v60);
        }
      }

      a9 = (a9 + a10);
      v28 += a8;
    }

    while (v28 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

void Read2_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6, unint64_t a7, int a8, int32x4_t *a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v11) = a8;
  v15 = a2;
  v16 = *(a2 + 60);
  v17 = *(a4 + 8);
  v18 = *(a3 + 24);
  v57 = v18;
  v54[1] = a1;
  v54[2] = v17;
  LODWORD(v17) = *(a3 + 44);
  v55 = *(a3 + 52) + HIDWORD(v18) * v16;
  v56 = v17;
  v58 = a11;
  v59 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v54);
  v20 = *a5;
  if (*(*a5 + 24))
  {
    v19.i64[0] = *v20;
    *v19.i32 = *v20;
    v21 = v19.i32[0];
  }

  else
  {
    v21 = 2143289344;
  }

  v22 = *(v15 + 56);
  v23 = *(a3 + 52);
  if (*(a3 + 56) + v23 < HIDWORD(v22))
  {
    v25 = *(a3 + 28) * HIDWORD(v22);
    v19.i32[0] = v21;
    v11 = v11;
    v49 = v19;
    v48 = vdupq_lane_s32(*v19.i8, 0);
    v46 = vdupq_n_s32(v21);
    v47 = v15;
    do
    {
      v55 = v25 + v23;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v54);
      if (v54[0])
      {
        v28 = v11;
        if (a7 >= 0x10)
        {
          v31 = 0;
          v32 = a9;
          do
          {
            AXRLUTStream<unsigned int,(StreamType)1>::load16(v54, v31, &v50);
            v33 = vzip1q_s32(v50, v49);
            v33.i32[3] = v49.i32[0];
            v34 = vzip1q_s32(v51, v49);
            v34.i32[3] = v49.i32[0];
            v35 = vzip1q_s32(v52, v49);
            v35.i32[3] = v49.i32[0];
            v36 = vzip1q_s32(v53, v49);
            v36.i32[3] = v49.i32[0];
            v37 = vzip2q_s32(v50, v48);
            v38 = vzip2q_s32(v51, v48);
            v27 = vzip2q_s32(v52, v48);
            v26 = vzip2q_s32(v53, v48);
            v30 = v32 + 8;
            v32[6] = v36;
            v32[7] = v26;
            v32[4] = v35;
            v32[5] = v27;
            v32[2] = v34;
            v32[3] = v38;
            *v32 = v33;
            v32[1] = v37;
            v29 = v31 + 16;
            v39 = v31 + 32;
            v31 += 16;
            v32 += 8;
          }

          while (v39 <= a7);
        }

        else
        {
          v29 = 0;
          v30 = a9;
        }

        if ((v29 | 4uLL) <= a7)
        {
          v42 = 4 * v29 + 12;
          v11 = v28;
          do
          {
            v43 = v54[0] + 4 * v29;
            v26.i32[0] = *(v58 + 2 * *(v43 + 8)) | (*(v58 + ((*(v43 + 8) >> 15) & 0x1FFFE)) << 16);
            v26.i32[2] = *(v58 + 2 * *(v54[0] + v42)) | (*(v58 + ((*(v54[0] + v42) >> 15) & 0x1FFFE)) << 16);
            v27.i32[0] = *(v58 + 2 * *(v54[0] + v42 - 12)) | (*(v58 + ((*(v54[0] + v42 - 12) >> 15) & 0x1FFFE)) << 16);
            v27.i32[2] = *(v58 + 2 * *(v43 + 4)) | (*(v58 + ((*(v43 + 4) >> 15) & 0x1FFFE)) << 16);
            v27 = vzip1q_s32(vuzp1q_s32(v27, v27), v46);
            v26 = vzip2q_s32(vuzp1q_s32(v26, v26), v46);
            v41 = v30 + 2;
            *v30 = v27;
            v30[1] = v26;
            v40 = v29 + 4;
            v42 += 16;
            v44 = v29 + 8;
            v29 += 4;
            v30 += 2;
          }

          while (v44 <= a7);
        }

        else
        {
          v40 = v29;
          v41 = v30;
          v11 = v28;
        }

        v15 = v47;
        if (v40 < a7)
        {
          do
          {
            LODWORD(v45) = *(v58 + 2 * *(v54[0] + 4 * v40)) | (*(v58 + ((*(v54[0] + 4 * v40) >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v45) = v21;
            v41->i64[0] = v45;
            v41 = (v41 + 8);
            ++v40;
          }

          while (a7 != v40);
        }
      }

      a9 = (a9 + a10);
      v23 += v11;
    }

    while (v23 + *(a3 + 56) < *(v15 + 60));
  }
}

_WORD *Read2_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, int8x16_t *a9, uint64_t a10, uint64_t a11)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v15 = _D0;
  }

  else
  {
    v15 = 32256;
  }

  v21 = *(a2 + 60);
  v22 = *(a5 + 8);
  v23 = *(a3 + 24);
  v75 = v23;
  v72[1] = a1;
  v72[2] = v22;
  LODWORD(v22) = *(a3 + 44);
  v73 = *(a3 + 52) + HIDWORD(v23) * v21;
  v74 = v22;
  v76 = a11;
  v77 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v72);
  v27 = *(a2 + 56);
  v28 = *(a3 + 52);
  if (*(a3 + 56) + v28 < HIDWORD(v27))
  {
    v30 = *(a3 + 28) * HIDWORD(v27);
    v25.i32[0] = v15;
    v31 = vdupq_n_s16(v15);
    v69 = vmovl_u16(v25).u16[0];
    do
    {
      v70 = v31;
      v71 = v26;
      v73 = v30 + v28;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v72);
      v31 = v70;
      v26 = v71;
      if (v72[0])
      {
        if (a7 >= 0x10)
        {
          v35 = 0;
          v36 = v76;
          v37 = (v72[0] + 30);
          v38 = a9;
          do
          {
            v39 = *(v37 - 15);
            v40 = (v36 + 2 * *(v37 - 14));
            v41 = (v36 + 2 * *(v37 - 13));
            v42 = (v36 + 2 * *(v37 - 12));
            v43 = (v36 + 2 * *(v37 - 11));
            v44 = (v36 + 2 * *(v37 - 10));
            result = (v36 + 2 * *(v37 - 9));
            v45 = (v36 + 2 * *(v37 - 8));
            v46 = *(v37 - 7);
            v47 = (v36 + 2 * *(v37 - 6));
            v48 = (v36 + 2 * *(v37 - 5));
            v49 = (v36 + 2 * *(v37 - 4));
            v50 = (v36 + 2 * *(v37 - 3));
            v51 = (v36 + 2 * *(v37 - 2));
            v52 = (v36 + 2 * *(v37 - 1));
            v53 = *v37;
            v37 += 16;
            v54 = *(v36 + 2 * v46);
            v55 = *v47;
            v56 = *v48;
            v57 = *v49;
            LOWORD(v32) = *v50;
            WORD1(v32) = *v51;
            WORD2(v32) = *v52;
            HIWORD(v32) = *(v36 + 2 * v53);
            LOWORD(v26) = *(v36 + 2 * v39);
            WORD1(v26) = *v40;
            WORD2(v26) = *v41;
            WORD3(v26) = *v42;
            WORD4(v26) = *v43;
            WORD5(v26) = *v44;
            WORD6(v26) = *result;
            HIWORD(v26) = *v45;
            v58 = v70;
            v34 = v38 + 4;
            v38[2] = vqtbl2q_s8(*(&v32 - 3), xmmword_296B6EE60);
            v38[3] = vqtbl2q_s8(*(&v32 - 3), xmmword_296B6EE80);
            v33 = v35 + 16;
            v59 = v35 + 32;
            *v38 = vqtbl2q_s8(*(&v26 - 1), xmmword_296B6EE60);
            v38[1] = vqtbl2q_s8(*(&v26 - 1), xmmword_296B6EE80);
            v35 += 16;
            v38 += 4;
          }

          while (v59 <= a7);
        }

        else
        {
          v33 = 0;
          v34 = a9;
        }

        if ((v33 | 4) <= a7)
        {
          v61 = 2 * v33 + 4;
          do
          {
            v62 = (v72[0] + 2 * v33);
            v63 = *(v76 + 2 * *v62);
            v64 = *(v76 + 2 * v62[1]);
            v65 = *(v76 + 2 * *(v72[0] + v61));
            v66 = *(v76 + 2 * *(v72[0] + v61 + 2));
            v67 = v70;
            *v34++ = vqtbl2q_s8(*(&v32 - 3), xmmword_296B6EE60);
            v60 = v33 + 4;
            v61 += 8;
            v68 = v33 + 8;
            v33 += 4;
          }

          while (v68 <= a7);
        }

        else
        {
          v60 = v33;
        }

        if (v60 < a7)
        {
          do
          {
            v34->i16[1] = *(v76 + 2 * *(v72[0] + 2 * v60));
            v34->i16[0] = v69;
            v34 = (v34 + 4);
            ++v60;
          }

          while (a7 != v60);
        }
      }

      a9 = (a9 + a10);
      v28 += a8;
    }

    while (v28 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

void Read2_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, int32x4_t *a9, uint64_t a10, uint64_t a11)
{
  if (*(*a4 + 24))
  {
    *&v16 = **a4;
    v15 = v16;
  }

  else
  {
    v15 = 2143289344;
  }

  v17 = *(a2 + 60);
  v18 = *(a5 + 8);
  v19 = *(a3 + 24);
  v60 = v19;
  v57[1] = a1;
  v57[2] = v18;
  LODWORD(v18) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v19) * v17;
  v59 = v18;
  v61 = a11;
  v62 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v57);
  v21 = *(a2 + 56);
  v22 = *(a3 + 52);
  if (*(a3 + 56) + v22 < HIDWORD(v21))
  {
    v24 = *(a3 + 28) * HIDWORD(v21);
    v25 = vdupq_n_s32(v15);
    v20.i32[0] = v15;
    v26 = v15;
    v27 = a8;
    v51 = vdupq_lane_s32(*v20.i8, 0);
    v52 = v20;
    v49 = vuzp1q_s32(v25, v25);
    v50 = v26;
    do
    {
      v58 = v24 + v22;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v57);
      if (v57[0])
      {
        if (a7 >= 0x10)
        {
          v30 = 0;
          v31 = a9;
          do
          {
            AXRLUTStream<unsigned int,(StreamType)1>::load16(v57, v30, &v53);
            v32 = vzip1q_s32(v52, v53);
            v32.i32[2] = v52.i32[0];
            v33 = vzip1q_s32(v52, v54);
            v33.i32[2] = v52.i32[0];
            v34 = vzip1q_s32(v52, v55);
            v34.i32[2] = v52.i32[0];
            v35 = vzip1q_s32(v52, v56);
            v35.i32[2] = v52.i32[0];
            v36 = vzip2q_s32(v51, v53);
            v37 = vzip2q_s32(v51, v54);
            v38 = vzip2q_s32(v51, v55);
            v39 = vzip2q_s32(v51, v56);
            v29 = v31 + 8;
            v31[6] = v35;
            v31[7] = v39;
            v31[4] = v34;
            v31[5] = v38;
            v31[2] = v33;
            v31[3] = v37;
            *v31 = v32;
            v31[1] = v36;
            v28 = v30 + 16;
            v40 = v30 + 32;
            v30 += 16;
            v31 += 8;
          }

          while (v40 <= a7);
        }

        else
        {
          v28 = 0;
          v29 = a9;
        }

        if ((v28 | 4uLL) <= a7)
        {
          v44 = 4 * v28 + 12;
          v43 = v50;
          do
          {
            v45 = v57[0] + 4 * v28;
            v46.i16[0] = *(v61 + 2 * *(v57[0] + v44 - 12));
            v46.i16[1] = *(v61 + ((*(v57[0] + v44 - 12) >> 15) & 0x1FFFE));
            v46.i16[2] = *(v61 + 2 * *(v45 + 4));
            v46.i16[3] = *(v61 + ((*(v45 + 4) >> 15) & 0x1FFFE));
            v46.i16[4] = *(v61 + 2 * *(v45 + 8));
            v46.i16[5] = *(v61 + ((*(v45 + 8) >> 15) & 0x1FFFE));
            v46.i16[6] = *(v61 + 2 * *(v57[0] + v44));
            v46.i16[7] = *(v61 + ((*(v57[0] + v44) >> 15) & 0x1FFFE));
            v42 = v29 + 2;
            *v29 = vzip1q_s32(v49, v46);
            v29[1] = vzip2q_s32(v49, v46);
            v41 = v28 + 4;
            v44 += 16;
            v47 = v28 + 8;
            v28 += 4;
            v29 += 2;
          }

          while (v47 <= a7);
        }

        else
        {
          v41 = v28;
          v42 = v29;
          v43 = v50;
        }

        if (v41 < a7)
        {
          do
          {
            LODWORD(v48) = v43;
            HIDWORD(v48) = *(v61 + 2 * *(v57[0] + 4 * v41)) | (*(v61 + ((*(v57[0] + 4 * v41) >> 15) & 0x1FFFE)) << 16);
            v42->i64[0] = v48;
            v42 = (v42 + 8);
            ++v41;
          }

          while (a7 != v41);
        }
      }

      a9 = (a9 + a10);
      v22 += v27;
    }

    while (v22 + *(a3 + 56) < *(a2 + 60));
  }
}

uint64_t Read2_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v17 = *(a2 + 60);
  v18 = *(a4 + 8);
  v19 = *(a3 + 24);
  v61 = v19;
  v58[1] = a1;
  v58[2] = v18;
  LODWORD(v18) = *(a3 + 44);
  v59 = *(a3 + 52) + HIDWORD(v19) * v17;
  v60 = v18;
  v62 = a11;
  v63 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
  v20 = *(a2 + 60);
  v21 = *(a5 + 8);
  v22 = *(a3 + 24);
  v55 = v22;
  v52[1] = a1;
  v52[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v53 = *(a3 + 52) + HIDWORD(v22) * v20;
  v54 = v21;
  v56 = a11;
  v57 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v52);
  v24 = *(a2 + 56);
  v25 = *(a3 + 52);
  if (*(a3 + 56) + v25 < HIDWORD(v24))
  {
    v27 = *(a3 + 28) * HIDWORD(v24);
    do
    {
      v59 = v27 + v25;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
      v53 = v27 + v25;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v52);
      if (v58[0] && v52[0])
      {
        if (a7 >= 0x10)
        {
          v30 = 0;
          v31 = v62;
          v32 = v56;
          v33 = (v52[0] + 16);
          v34 = (v58[0] + 30);
          v35 = a9;
          do
          {
            LOWORD(v36) = *(v31 + 2 * *(v34 - 15));
            WORD1(v36) = *(v32 + 2 * *(v33 - 8));
            WORD2(v36) = *(v31 + 2 * *(v34 - 14));
            WORD3(v36) = *(v32 + 2 * *(v33 - 7));
            WORD4(v36) = *(v31 + 2 * *(v34 - 13));
            WORD5(v36) = *(v32 + 2 * *(v33 - 6));
            WORD6(v36) = *(v31 + 2 * *(v34 - 12));
            HIWORD(v36) = *(v32 + 2 * *(v33 - 5));
            LOWORD(v37) = *(v31 + 2 * *(v34 - 11));
            WORD1(v37) = *(v32 + 2 * *(v33 - 4));
            WORD2(v37) = *(v31 + 2 * *(v34 - 10));
            WORD3(v37) = *(v32 + 2 * *(v33 - 3));
            WORD4(v37) = *(v31 + 2 * *(v34 - 9));
            WORD5(v37) = *(v32 + 2 * *(v33 - 2));
            WORD6(v37) = *(v31 + 2 * *(v34 - 8));
            HIWORD(v37) = *(v32 + 2 * *(v33 - 1));
            LOWORD(v38) = *(v31 + 2 * *(v34 - 7));
            WORD1(v38) = *(v32 + 2 * *v33);
            WORD2(v38) = *(v31 + 2 * *(v34 - 6));
            WORD3(v38) = *(v32 + 2 * v33[1]);
            WORD4(v38) = *(v31 + 2 * *(v34 - 5));
            WORD5(v38) = *(v32 + 2 * v33[2]);
            v39 = (v31 + 2 * *(v34 - 2));
            WORD6(v38) = *(v31 + 2 * *(v34 - 4));
            HIWORD(v38) = *(v32 + 2 * v33[3]);
            v40 = (v31 + 2 * *(v34 - 1));
            LOWORD(v41) = *(v31 + 2 * *(v34 - 3));
            WORD1(v41) = *(v32 + 2 * v33[4]);
            v42 = *v34;
            v34 += 16;
            WORD2(v41) = *v39;
            WORD3(v41) = *(v32 + 2 * v33[5]);
            WORD4(v41) = *v40;
            WORD5(v41) = *(v32 + 2 * v33[6]);
            WORD6(v41) = *(v31 + 2 * v42);
            HIWORD(v41) = *(v32 + 2 * v33[7]);
            v29 = v35 + 4;
            v28 = v30 + 16;
            v43 = v30 + 32;
            v35[2] = v38;
            v35[3] = v41;
            v33 += 16;
            v30 += 16;
            *v35 = v36;
            v35[1] = v37;
            v35 += 4;
          }

          while (v43 <= a7);
        }

        else
        {
          v28 = 0;
          v29 = a9;
        }

        if ((v28 | 4) <= a7)
        {
          v45 = 2 * v28 + 4;
          do
          {
            v46 = (v58[0] + 2 * v28);
            v47 = (v52[0] + 2 * v28);
            v48 = (v56 + 2 * *v47);
            result = v47[1];
            LOWORD(v49) = *(v62 + 2 * *v46);
            WORD1(v49) = *v48;
            WORD2(v49) = *(v62 + 2 * v46[1]);
            WORD3(v49) = *(v56 + 2 * result);
            WORD4(v49) = *(v62 + 2 * *(v58[0] + v45));
            WORD5(v49) = *(v56 + 2 * *(v52[0] + v45));
            WORD6(v49) = *(v62 + 2 * *(v58[0] + v45 + 2));
            HIWORD(v49) = *(v56 + 2 * *(v52[0] + v45 + 2));
            *v29++ = v49;
            v44 = v28 + 4;
            v45 += 8;
            v50 = v28 + 8;
            v28 += 4;
          }

          while (v50 <= a7);
        }

        else
        {
          v44 = v28;
        }

        if (v44 < a7)
        {
          do
          {
            v51 = *(v62 + 2 * *(v58[0] + 2 * v44));
            *(v29 + 1) = *(v56 + 2 * *(v52[0] + 2 * v44));
            *v29 = v51;
            v29 = (v29 + 4);
            ++v44;
          }

          while (a7 != v44);
        }
      }

      a9 = (a9 + a10);
      v25 += a8;
    }

    while (v25 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

void Read2_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v17 = *(a2 + 60);
  v18 = *(a4 + 8);
  v19 = *(a3 + 24);
  v61 = v19;
  v58[1] = a1;
  v58[2] = v18;
  LODWORD(v18) = *(a3 + 44);
  v59 = *(a3 + 52) + HIDWORD(v19) * v17;
  v60 = v18;
  v62 = a11;
  v63 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v58);
  v20 = *(a2 + 60);
  v21 = *(a5 + 8);
  v22 = *(a3 + 24);
  v55 = v22;
  v52[1] = a1;
  v52[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v53 = *(a3 + 52) + HIDWORD(v22) * v20;
  v54 = v21;
  v56 = a11;
  v57 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v52);
  v23 = *(a2 + 56);
  v24 = *(a3 + 52);
  if (*(a3 + 56) + v24 < HIDWORD(v23))
  {
    v26 = *(a3 + 28) * HIDWORD(v23);
    v27 = a8;
    do
    {
      v59 = v26 + v24;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v58);
      v53 = v26 + v24;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v52);
      if (v58[0])
      {
        v28 = v52[0] == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        if (a7 >= 0x10)
        {
          v31 = 0;
          v32 = a9;
          do
          {
            AXRLUTStream<unsigned int,(StreamType)1>::load16(v58, v31, v51);
            v49 = v51[0];
            v48 = v51[1];
            v47 = v51[2];
            v46 = v51[3];
            AXRLUTStream<unsigned int,(StreamType)1>::load16(v52, v31, v50);
            v64.val[0] = v46;
            v65.val[0] = v47;
            v65.val[1] = v50[2];
            v64.val[1] = v50[3];
            v66.val[0] = v48;
            v67.val[0] = v49;
            v67.val[1] = v50[0];
            v66.val[1] = v50[1];
            v33 = v32;
            vst2q_f32(v33, v67);
            v33 += 8;
            vst2q_f32(v33, v66);
            v34 = (v32 + 4);
            vst2q_f32(v34, v65);
            v35 = (v32 + 6);
            vst2q_f32(v35, v64);
            v30 = v32 + 8;
            v29 = v31 + 16;
            v36 = v31 + 32;
            v31 += 16;
            v32 += 8;
          }

          while (v36 <= a7);
        }

        else
        {
          v29 = 0;
          v30 = a9;
        }

        if ((v29 | 4uLL) <= a7)
        {
          v39 = 4 * v29 + 12;
          do
          {
            v40 = v58[0] + 4 * v29;
            v41 = v52[0] + 4 * v29;
            LODWORD(v42) = *(v62 + 2 * *(v58[0] + v39 - 12)) | (*(v62 + ((*(v58[0] + v39 - 12) >> 15) & 0x1FFFE)) << 16);
            DWORD1(v42) = *(v56 + 2 * *(v52[0] + v39 - 12)) | (*(v56 + ((*(v52[0] + v39 - 12) >> 15) & 0x1FFFE)) << 16);
            LODWORD(v43) = *(v62 + 2 * *(v40 + 8)) | (*(v62 + ((*(v40 + 8) >> 15) & 0x1FFFE)) << 16);
            *(&v42 + 1) = __PAIR64__(*(v56 + 2 * *(v41 + 4)) | (*(v56 + ((*(v41 + 4) >> 15) & 0x1FFFE)) << 16), *(v62 + 2 * *(v40 + 4)) | (*(v62 + ((*(v40 + 4) >> 15) & 0x1FFFE)) << 16));
            DWORD1(v43) = *(v56 + 2 * *(v41 + 8)) | (*(v56 + ((*(v41 + 8) >> 15) & 0x1FFFE)) << 16);
            DWORD2(v43) = *(v62 + 2 * *(v58[0] + v39)) | (*(v62 + ((*(v58[0] + v39) >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v43) = *(v56 + 2 * *(v52[0] + v39)) | (*(v56 + ((*(v52[0] + v39) >> 15) & 0x1FFFE)) << 16);
            v38 = v30 + 2;
            *v30 = v42;
            v30[1] = v43;
            v37 = v29 + 4;
            v39 += 16;
            v44 = v29 + 8;
            v29 += 4;
            v30 += 2;
          }

          while (v44 <= a7);
        }

        else
        {
          v37 = v29;
          v38 = v30;
        }

        if (v37 < a7)
        {
          do
          {
            LODWORD(v45) = *(v62 + 2 * *(v58[0] + 4 * v37)) | (*(v62 + ((*(v58[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v45) = *(v56 + 2 * *(v52[0] + 4 * v37)) | (*(v56 + ((*(v52[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            *v38++ = v45;
            ++v37;
          }

          while (a7 != v37);
        }
      }

      a9 = (a9 + a10);
      v24 += v27;
    }

    while (v24 + *(a3 + 56) < *(a2 + 60));
  }
}

void Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(__n128 _Q0, __n128 a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11, unint64_t **a12, unint64_t **a13, unint64_t **a14, uint64_t a15, unint64_t a16, unsigned int a17, __int16 *a18, uint64_t a19)
{
  if (*(*a11 + 24))
  {
    _Q0.n128_u64[0] = **a11;
    __asm { FCVT            H0, D0 }

    v23 = _Q0.n128_u32[0];
  }

  else
  {
    v23 = 32256;
  }

  if (*(*a12 + 24))
  {
    _Q0.n128_u64[0] = **a12;
    __asm { FCVT            H0, D0 }

    v24 = _Q0.n128_u32[0];
  }

  else
  {
    v24 = 32256;
  }

  if (*(*a13 + 24))
  {
    _Q0.n128_u64[0] = **a13;
    __asm { FCVT            H0, D0 }

    v25 = _Q0.n128_u32[0];
  }

  else
  {
    v25 = 32256;
  }

  if (*(*a14 + 24))
  {
    _Q0.n128_u64[0] = **a14;
    __asm { FCVT            H0, D0 }

    v26 = _Q0.n128_u32[0];
  }

  else
  {
    v26 = 32256;
  }

  v27 = *(a10 + 52);
  if (*(a10 + 56) + v27 < *(a9 + 60))
  {
    a2.n128_u32[0] = v25;
    _Q0.n128_u32[0] = v23;
    v29 = vqtbl2q_s8(*_Q0.n128_u64, xmmword_296B8F230);
    a7.n128_u32[0] = v26;
    a6.n128_u32[0] = v24;
    v30 = vqtbl2q_s8(*a6.n128_u64, xmmword_296B8F230);
    WORD1(v31) = v24;
    WORD2(v31) = v25;
    HIWORD(v31) = v26;
    do
    {
      if (a16 >= 4)
      {
        v34 = 0;
        v33 = a18;
        do
        {
          vst2q_s16(v33, *v29.i8);
          v33 += 16;
          v32 = v34 + 4;
          v35 = v34 + 8;
          v34 += 4;
        }

        while (v35 <= a16);
      }

      else
      {
        v32 = 0;
        v33 = a18;
      }

      _CF = a16 >= v32;
      v36 = a16 - v32;
      if (v36 != 0 && _CF)
      {
        do
        {
          *v33 = v31;
          v33 += 4;
          --v36;
        }

        while (v36);
      }

      a18 = (a18 + a19);
      v27 += a17;
    }

    while (v27 + *(a10 + 56) < *(a9 + 60));
  }
}

void Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12)
{
  if (*(*a4 + 24))
  {
    v12 = **a4;
    v13 = v12;
  }

  else
  {
    v13 = NAN;
  }

  if (*(*a5 + 24))
  {
    v14 = **a5;
    v15 = v14;
  }

  else
  {
    v15 = NAN;
  }

  if (*(*a6 + 24))
  {
    v16 = **a6;
    v17 = v16;
  }

  else
  {
    v17 = NAN;
  }

  if (*(*a7 + 24))
  {
    v18 = **a7;
    v19 = v18;
  }

  else
  {
    v19 = NAN;
  }

  v20 = *(a3 + 52);
  if (*(a3 + 56) + v20 < *(a2 + 60))
  {
    *&v24 = __PAIR64__(LODWORD(v15), LODWORD(v13));
    *&v22 = __PAIR64__(LODWORD(v17), LODWORD(v13));
    *(&v22 + 1) = __PAIR64__(LODWORD(v17), LODWORD(v13));
    *&v23 = __PAIR64__(LODWORD(v19), LODWORD(v15));
    *(&v23 + 1) = __PAIR64__(LODWORD(v19), LODWORD(v15));
    *(&v24 + 1) = __PAIR64__(LODWORD(v19), LODWORD(v17));
    do
    {
      if (a9 >= 4)
      {
        v27 = 0;
        v28 = a11;
        do
        {
          v26 = v28 + 16;
          vst2q_f32(v28, *&v22);
          v29 = v28 + 8;
          vst2q_f32(v29, *&v22);
          v25 = v27 + 4;
          v30 = v27 + 8;
          v27 += 4;
          v28 = v26;
        }

        while (v30 <= a9);
      }

      else
      {
        v25 = 0;
        v26 = a11;
      }

      v31 = a9 >= v25;
      v32 = a9 - v25;
      if (v32 != 0 && v31)
      {
        do
        {
          *v26 = v24;
          v26 += 4;
          --v32;
        }

        while (v32);
      }

      a11 = (a11 + a12);
      v20 += a10;
    }

    while (v20 + *(a3 + 56) < *(a2 + 60));
  }
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t **a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a2 + 60);
  v19 = *(a4 + 8);
  v20 = *(a3 + 24);
  v59 = v20;
  v56[1] = a1;
  v56[2] = v19;
  LODWORD(v19) = *(a3 + 44);
  v57 = *(a3 + 52) + HIDWORD(v20) * v18;
  v58 = v19;
  v60 = a13;
  v61 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v32 = _D0;
  }

  else
  {
    v32 = 32256;
  }

  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v34 = _D0;
  }

  else
  {
    v34 = 32256;
  }

  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v36 = _D0;
  }

  else
  {
    v36 = 32256;
  }

  v37 = *(a2 + 56);
  v38 = *(a3 + 52);
  if (*(a3 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a3 + 28) * HIDWORD(v37);
    v41 = vdupq_n_s16(v34);
    v42 = v36;
    v23.i32[0] = v32;
    v43 = vqtbl2q_s8(*v23.i8, xmmword_296B8F230);
    v23.i16[1] = v36;
    v51 = v23;
    do
    {
      v52 = v26;
      v53 = v43;
      v54 = v22;
      v55 = v41;
      v57 = v40 + v38;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
      v26 = v52;
      v43 = v53;
      if (v56[0])
      {
        if (a9 >= 4)
        {
          v48 = 0;
          v45 = a11;
          v46 = v54;
          v47 = v55;
          do
          {
            v49 = (v56[0] + 2 * v48);
            LOWORD(v46) = *(v60 + 2 * *v49);
            WORD2(v46) = *(v60 + 2 * v49[1]);
            WORD4(v46) = *(v60 + 2 * v49[2]);
            WORD6(v46) = *(v60 + 2 * v49[3]);
            v26 = vqtbl2q_s8(*&v46, xmmword_296B6EE60);
            vst2q_s16(v45, *v26.i8);
            v45 += 16;
            v44 = v48 + 4;
            v50 = v48 + 8;
            v48 += 4;
          }

          while (v50 <= a9);
        }

        else
        {
          v44 = 0;
          v45 = a11;
          v46 = v54;
          v47 = v55;
        }

        v54 = v46;
        v55 = v47;
        if (v44 < a9)
        {
          do
          {
            LOWORD(v46) = *(v60 + 2 * *(v56[0] + 2 * v44));
            WORD2(v46) = v34;
            *&v46 = vzip1_s16(vuzp1_s16(*&v46, *&v46), v51);
            *v45 = v46;
            v45 += 4;
            ++v44;
          }

          while (a9 != v44);
        }
      }

      a11 = (a11 + a12);
      v38 += a10;
      v22 = v54;
      v41 = v55;
    }

    while (v38 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a2 + 60);
  v19 = *(a4 + 8);
  v20 = *(a3 + 24);
  v56 = v20;
  v53[1] = a1;
  v53[2] = v19;
  LODWORD(v19) = *(a3 + 44);
  v54 = *(a3 + 52) + HIDWORD(v20) * v18;
  v55 = v19;
  v57 = a13;
  v58 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v53);
  if (*(*a5 + 24))
  {
    v24 = **a5;
    v25 = v24;
  }

  else
  {
    v25 = NAN;
  }

  if (*(*a6 + 24))
  {
    *&v26 = **a6;
    v27 = v26;
  }

  else
  {
    v27 = 2143289344;
  }

  if (*(*a7 + 24))
  {
    v28 = **a7;
    v29 = v28;
  }

  else
  {
    v29 = NAN;
  }

  v30 = *(a2 + 56);
  v31 = *(a3 + 52);
  if (*(a3 + 56) + v31 < HIDWORD(v30))
  {
    v22.i64[0] = __PAIR64__(LODWORD(v29), LODWORD(v25));
    v33 = *(a3 + 28) * HIDWORD(v30);
    v34.i64[0] = __PAIR64__(LODWORD(v29), LODWORD(v25));
    v34.i64[1] = __PAIR64__(LODWORD(v29), LODWORD(v25));
    v49 = v22;
    v50 = vdupq_n_s32(v27);
    do
    {
      v51 = v23;
      v52 = v34;
      v54 = v33 + v31;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v53);
      v23 = v51;
      v34 = v52;
      if (v53[0])
      {
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v57;
          v41 = (v53[0] + 8);
          v42 = a11;
          do
          {
            v43 = *(v40 + 2 * *(v41 - 2)) | (*(v40 + ((*(v41 - 2) >> 15) & 0x1FFFE)) << 16);
            v44 = *(v40 + 2 * *(v41 - 1)) | (*(v40 + ((*(v41 - 1) >> 15) & 0x1FFFE)) << 16);
            v45 = *v41;
            v46 = v41[1];
            v41 += 4;
            v35.i32[0] = v43;
            v35.i32[2] = v44;
            v36.i32[0] = *(v40 + 2 * v45) | (*(v40 + ((v45 >> 15) & 0x1FFFE)) << 16);
            v36.i32[2] = *(v40 + 2 * v46) | (*(v40 + ((v46 >> 15) & 0x1FFFE)) << 16);
            v23 = vzip2q_s32(vuzp1q_s32(v36, v36), v50);
            v35 = vzip1q_s32(vuzp1q_s32(v35, v35), v50);
            v36 = v52;
            v38 = (v42 + 16);
            vst2q_f32(v42, *v35.i8);
            v47 = v42 + 8;
            vst2q_f32(v47, *v23.i8);
            v37 = v39 + 4;
            v48 = v39 + 8;
            v39 += 4;
            v42 = v38;
          }

          while (v48 <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 < a9)
        {
          do
          {
            v35.i32[0] = *(v57 + 2 * *(v53[0] + 4 * v37)) | (*(v57 + ((*(v53[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v35.i32[2] = v27;
            v35 = vzip1q_s32(vuzp1q_s32(v35, v35), v49);
            *v38++ = v35;
            ++v37;
          }

          while (a9 != v37);
        }
      }

      a11 = (a11 + a12);
      v31 += a10;
    }

    while (v31 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, int16x4_t **a6, int16x4_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
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

  v23 = *(a2 + 60);
  v24 = *(a5 + 8);
  v25 = *(a3 + 24);
  v58 = v25;
  v55[1] = a1;
  v55[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v56 = *(a3 + 52) + HIDWORD(v25) * v23;
  v57 = v24;
  v59 = a13;
  v60 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v55);
  if ((*a6)[3].i8[0])
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v32 = _D0.i32[0];
  }

  else
  {
    v32 = 32256;
  }

  if ((*a7)[3].i8[0])
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v33 = _D0.i32[0];
  }

  else
  {
    v33 = 32256;
  }

  v34 = *(a2 + 56);
  v35 = *(a3 + 52);
  if (*(a3 + 56) + v35 < HIDWORD(v34))
  {
    v37 = *(a3 + 28) * HIDWORD(v34);
    v38 = v32;
    _D0.i32[0] = v17;
    v39 = vdupq_n_s16(v33);
    v40 = vqtbl2q_s8(*_D0.i8, xmmword_296B8F230);
    _D0.i16[2] = v32;
    v41 = vuzp1_s16(_D0, _D0);
    do
    {
      v51 = v40;
      v52 = v31;
      v53 = v30;
      v54 = v39;
      v56 = v37 + v35;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v55);
      if (v55[0])
      {
        if (a9 >= 4)
        {
          v48 = 0;
          v43 = a11;
          v44 = v53;
          v45 = v54;
          v46 = v51;
          do
          {
            v49 = (v55[0] + 2 * v48);
            LOWORD(v44) = *(v59 + 2 * *v49);
            WORD2(v44) = *(v59 + 2 * v49[1]);
            WORD4(v44) = *(v59 + 2 * v49[2]);
            WORD6(v44) = *(v59 + 2 * v49[3]);
            v47 = vqtbl2q_s8(*&v44, xmmword_296B6EE60);
            vst2q_s16(v43, *v46.i8);
            v43 += 16;
            v42 = v48 + 4;
            v50 = v48 + 8;
            v48 += 4;
          }

          while (v50 <= a9);
        }

        else
        {
          v42 = 0;
          v43 = a11;
          v44 = v53;
          v45 = v54;
          v46 = v51;
          v47 = v52;
        }

        v51 = v46;
        v52 = v47;
        v53 = v44;
        v54 = v45;
        if (v42 < a9)
        {
          do
          {
            LOWORD(v44) = *(v59 + 2 * *(v55[0] + 2 * v42));
            WORD1(v44) = v33;
            *&v44 = vzip1_s16(v41, *&v44);
            *v43 = v44;
            v43 += 4;
            ++v42;
          }

          while (a9 != v42);
        }
      }

      a11 = (a11 + a12);
      v35 += a10;
      v30 = v53;
      v39 = v54;
      v40 = v51;
      v31 = v52;
    }

    while (v35 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    v18 = **a4;
    v17 = v18;
  }

  else
  {
    v17 = NAN;
  }

  v19 = *(a2 + 60);
  v20 = *(a5 + 8);
  v21 = *(a3 + 24);
  v56 = v21;
  v53[1] = a1;
  v53[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v54 = *(a3 + 52) + HIDWORD(v21) * v19;
  v55 = v20;
  v57 = a13;
  v58 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v53);
  v25 = *a6;
  if (*(*a6 + 24))
  {
    v23.i64[0] = *v25;
    *v23.i32 = *v25;
    v26 = v23.i32[0];
  }

  else
  {
    v26 = 2143289344;
  }

  v27 = *a7;
  if (*(*a7 + 24))
  {
    v23.i64[0] = *v27;
    *v23.i32 = *v27;
    v28 = v23.i32[0];
  }

  else
  {
    v28 = 2143289344;
  }

  v29 = *(a2 + 56);
  v30 = *(a3 + 52);
  if (*(a3 + 56) + v30 < HIDWORD(v29))
  {
    *v23.i32 = v17;
    v32.i64[0] = __PAIR64__(v26, LODWORD(v17));
    v32.i64[1] = __PAIR64__(v26, LODWORD(v17));
    v33 = *(a3 + 28) * HIDWORD(v29);
    v23.i32[2] = v26;
    v49 = vuzp1q_s32(v23, v23);
    v50 = vdupq_n_s32(v28);
    do
    {
      v51 = v32;
      v52 = v24;
      v54 = v33 + v30;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v53);
      v32 = v51;
      v24 = v52;
      if (v53[0])
      {
        if (a9 >= 4)
        {
          v38 = 0;
          v39 = v57;
          v40 = (v53[0] + 8);
          v41 = a11;
          do
          {
            v42 = *(v39 + 2 * *(v40 - 2)) | (*(v39 + ((*(v40 - 2) >> 15) & 0x1FFFE)) << 16);
            v43 = *(v39 + 2 * *(v40 - 1)) | (*(v39 + ((*(v40 - 1) >> 15) & 0x1FFFE)) << 16);
            v44 = *v40;
            v45 = v40[1];
            v40 += 4;
            v34.i32[0] = *(v39 + 2 * v44) | (*(v39 + ((v44 >> 15) & 0x1FFFE)) << 16);
            v34.i32[2] = *(v39 + 2 * v45) | (*(v39 + ((v45 >> 15) & 0x1FFFE)) << 16);
            v35.i32[0] = v42;
            v35.i32[2] = v43;
            v46 = vzip1q_s32(vuzp1q_s32(v35, v35), v50);
            v34 = vuzp1q_s32(v34, v34);
            v24 = vzip2q_s32(v34, v50);
            v37 = (v41 + 16);
            v35 = v51;
            vst2q_f32(v41, *v35.i8);
            v47 = v41 + 8;
            vst2q_f32(v47, *(&v24 - 1));
            v36 = v38 + 4;
            v48 = v38 + 8;
            v38 += 4;
            v41 = v37;
          }

          while (v48 <= a9);
        }

        else
        {
          v36 = 0;
          v37 = a11;
        }

        if (v36 < a9)
        {
          do
          {
            v34.i32[0] = *(v57 + 2 * *(v53[0] + 4 * v36)) | (*(v57 + ((*(v53[0] + 4 * v36) >> 15) & 0x1FFFE)) << 16);
            v34.i32[1] = v28;
            v34 = vzip1q_s32(v49, v34);
            *v37++ = v34;
            ++v36;
          }

          while (a9 != v36);
        }
      }

      a11 = (a11 + a12);
      v30 += a10;
    }

    while (v30 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v63 = v21;
  v60[1] = a1;
  v60[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v61 = *(a3 + 52) + HIDWORD(v21) * v19;
  v62 = v20;
  v64 = a13;
  v65 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v60);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v57 = v24;
  v54[1] = a1;
  v54[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v55 = *(a3 + 52) + HIDWORD(v24) * v22;
  v56 = v23;
  v58 = a13;
  v59 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v54);
  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v32 = _D0;
  }

  else
  {
    v32 = 32256;
  }

  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v34 = _D0;
  }

  else
  {
    v34 = 32256;
  }

  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v39 = vdupq_n_s16(v32);
    v40 = vdupq_n_s16(v34);
    do
    {
      v50 = v27;
      v51 = v40;
      v52 = v26;
      v53 = v39;
      v61 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v60);
      v55 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v54);
      v27 = v50;
      v40 = v51;
      v26 = v52;
      v39 = v53;
      if (v60[0])
      {
        _ZF = v54[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v44 = 0;
          v45 = 4;
          v43 = a11;
          do
          {
            v46 = (v60[0] + 2 * v44);
            LOWORD(v26) = *(v64 + 2 * *v46);
            WORD2(v26) = *(v64 + 2 * v46[1]);
            WORD4(v26) = *(v64 + 2 * *(v60[0] + v45));
            WORD6(v26) = *(v64 + 2 * *(v60[0] + v45 + 2));
            v47 = (v54[0] + 2 * v44);
            LOWORD(v27) = *(v58 + 2 * *v47);
            WORD2(v27) = *(v58 + 2 * v47[1]);
            WORD4(v27) = *(v58 + 2 * *(v54[0] + v45));
            WORD6(v27) = *(v58 + 2 * *(v54[0] + v45 + 2));
            v66.val[0] = vqtbl2q_s8(*&v26, xmmword_296B6EE60);
            v66.val[1] = vqtbl2q_s8(*&v27, xmmword_296B6EE60);
            vst2q_s16(v43, v66);
            v43 += 16;
            v42 = v44 + 4;
            v45 += 8;
            v48 = v44 + 8;
            v44 += 4;
          }

          while (v48 <= a9);
        }

        else
        {
          v42 = 0;
          v43 = a11;
        }

        if (v42 < a9)
        {
          do
          {
            LOWORD(v49) = *(v64 + 2 * *(v60[0] + 2 * v42));
            WORD1(v49) = *(v58 + 2 * *(v54[0] + 2 * v42));
            WORD2(v49) = v32;
            HIWORD(v49) = v34;
            *v43 = v49;
            v43 += 4;
            ++v42;
          }

          while (a9 != v42);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v68 = v21;
  v65[1] = a1;
  v65[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v66 = *(a3 + 52) + HIDWORD(v21) * v19;
  v67 = v20;
  v69 = a13;
  v70 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v62 = v24;
  v59[1] = a1;
  v59[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v60 = *(a3 + 52) + HIDWORD(v24) * v22;
  v61 = v23;
  v63 = a13;
  v64 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v59);
  if (*(*a6 + 24))
  {
    *&v26 = **a6;
    v27 = v26;
  }

  else
  {
    v27 = 2143289344;
  }

  if (*(*a7 + 24))
  {
    *&v28 = **a7;
    v29 = v28;
  }

  else
  {
    v29 = 2143289344;
  }

  v30 = *(a2 + 56);
  v31 = *(a3 + 52);
  if (*(a3 + 56) + v31 < HIDWORD(v30))
  {
    v33 = *(a3 + 28) * HIDWORD(v30);
    v57 = vdupq_n_s32(v29);
    v58 = vdupq_n_s32(v27);
    do
    {
      v66 = v33 + v31;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
      v60 = v33 + v31;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v59);
      if (v65[0] && v59[0])
      {
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v69;
          v42 = v63;
          v43 = (v59[0] + 8);
          v44 = (v65[0] + 8);
          v45 = a11;
          do
          {
            v46 = *(v41 + 2 * *(v44 - 2)) | (*(v41 + ((*(v44 - 2) >> 15) & 0x1FFFE)) << 16);
            v47 = *(v41 + 2 * *(v44 - 1)) | (*(v41 + ((*(v44 - 1) >> 15) & 0x1FFFE)) << 16);
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v34.i32[0] = v46;
            v34.i32[2] = v47;
            v35.i32[0] = *(v41 + 2 * v48) | (*(v41 + ((v48 >> 15) & 0x1FFFE)) << 16);
            v35.i32[2] = *(v41 + 2 * v49) | (*(v41 + ((v49 >> 15) & 0x1FFFE)) << 16);
            v50 = *(v42 + 2 * *(v43 - 2)) | (*(v42 + ((*(v43 - 2) >> 15) & 0x1FFFE)) << 16);
            v51 = *(v42 + 2 * *(v43 - 1)) | (*(v42 + ((*(v43 - 1) >> 15) & 0x1FFFE)) << 16);
            v52 = *v43;
            v53 = v43[1];
            v43 += 4;
            result = *(v42 + 2 * v53);
            v36.i32[0] = v50;
            v36.i32[2] = v51;
            v37.i32[0] = *(v42 + 2 * v52) | (*(v42 + ((v52 >> 15) & 0x1FFFE)) << 16);
            v37.i32[2] = result | (*(v42 + ((v53 >> 15) & 0x1FFFE)) << 16);
            v71.val[0] = vzip1q_s32(vuzp1q_s32(v34, v34), v58);
            v71.val[1] = vzip1q_s32(vuzp1q_s32(v36, v36), v57);
            v34 = vzip2q_s32(vuzp1q_s32(v35, v35), v58);
            v36 = vuzp1q_s32(v37, v37);
            v39 = v45 + 16;
            vst2q_f32(v45, v71);
            v54 = v45 + 8;
            v35 = vzip2q_s32(v36, v57);
            vst2q_f32(v54, *v34.i8);
            v38 = v40 + 4;
            v55 = v40 + 8;
            v40 += 4;
            v45 = v39;
          }

          while (v55 <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        if (v38 < a9)
        {
          do
          {
            LODWORD(v56) = *(v69 + 2 * *(v65[0] + 4 * v38)) | (*(v69 + ((*(v65[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD1(v56) = *(v63 + 2 * *(v59[0] + 4 * v38)) | (*(v63 + ((*(v59[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            *(&v56 + 1) = __PAIR64__(v29, v27);
            *v39 = v56;
            v39 += 4;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v31 += a10;
    }

    while (v31 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
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

    v22 = _D0;
  }

  else
  {
    v22 = 32256;
  }

  v24 = *(a2 + 60);
  v25 = *(a6 + 8);
  v26 = *(a3 + 24);
  v62 = v26;
  v59[1] = a1;
  v59[2] = v25;
  LODWORD(v25) = *(a3 + 44);
  v60 = *(a3 + 52) + HIDWORD(v26) * v24;
  v61 = v25;
  v63 = a13;
  v64 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v59);
  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v35 = _D0;
  }

  else
  {
    v35 = 32256;
  }

  v36 = *(a2 + 56);
  v37 = *(a3 + 52);
  if (*(a3 + 56) + v37 < HIDWORD(v36))
  {
    v39 = *(a3 + 28) * HIDWORD(v36);
    v28.i32[0] = v16;
    v40 = vdupq_n_s16(v16);
    v41 = v35;
    v30.i32[0] = v22;
    v42 = vqtbl2q_s8(*v30.i8, xmmword_296B8F230);
    v30.i16[1] = v35;
    v54 = v28;
    v53 = v30;
    do
    {
      v55 = v33;
      v56 = v42;
      v57 = v40;
      v58 = v29;
      v60 = v39 + v37;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v59);
      if (v59[0])
      {
        if (a9 >= 4)
        {
          v49 = 0;
          v44 = a11;
          v45 = v57;
          *(&v46 + 1) = *(&v58 + 1);
          v48 = v56;
          do
          {
            v50 = (v59[0] + 2 * v49);
            LOWORD(v46) = *(v63 + 2 * *v50);
            WORD1(v46) = *(v63 + 2 * v50[1]);
            WORD2(v46) = *(v63 + 2 * v50[2]);
            WORD3(v46) = *(v63 + 2 * v50[3]);
            v47 = vqtbl2q_s8(*v45.i8, xmmword_296B6EE60);
            vst2q_s16(v44, *v47.i8);
            v44 += 16;
            v43 = v49 + 4;
            v51 = v49 + 8;
            v49 += 4;
          }

          while (v51 <= a9);
        }

        else
        {
          v43 = 0;
          v44 = a11;
          v45 = v57;
          v46 = v58;
          v47 = v55;
          v48 = v56;
        }

        v55 = v47;
        v56 = v48;
        v57 = v45;
        v58 = v46;
        if (v43 < a9)
        {
          do
          {
            v52 = v54;
            v52.i16[2] = *(v63 + 2 * *(v59[0] + 2 * v43));
            *v44 = vzip1_s16(vuzp1_s16(v52, v52), v53);
            v44 += 4;
            ++v43;
          }

          while (a9 != v43);
        }
      }

      a11 = (a11 + a12);
      v37 += a10;
      v40 = v57;
      v29 = v58;
      v33 = v55;
      v42 = v56;
    }

    while (v37 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    *&v17 = **a4;
    v16 = v17;
  }

  else
  {
    v16 = 2143289344;
  }

  if (*(*a5 + 24))
  {
    v19 = **a5;
    v18 = v19;
  }

  else
  {
    v18 = NAN;
  }

  v20 = *(a2 + 60);
  v21 = *(a6 + 8);
  v22 = *(a3 + 24);
  v58 = v22;
  v55[1] = a1;
  v55[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v56 = *(a3 + 52) + HIDWORD(v22) * v20;
  v57 = v21;
  v59 = a13;
  v60 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v55);
  if (*(*a7 + 24))
  {
    v27 = **a7;
    v28 = v27;
  }

  else
  {
    v28 = NAN;
  }

  v29 = *(a2 + 56);
  v30 = *(a3 + 52);
  if (*(a3 + 56) + v30 < HIDWORD(v29))
  {
    v32 = *(a3 + 28) * HIDWORD(v29);
    v24.i32[0] = v16;
    v33 = vdupq_n_s32(v16);
    v25.i64[0] = __PAIR64__(LODWORD(v28), LODWORD(v18));
    v34.i64[0] = __PAIR64__(LODWORD(v28), LODWORD(v18));
    v34.i64[1] = __PAIR64__(LODWORD(v28), LODWORD(v18));
    v51 = v25;
    v52 = v24;
    v50 = vuzp1q_s32(v33, v33);
    do
    {
      v53 = v26;
      v54 = v34;
      v56 = v32 + v30;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v55);
      v26 = v53;
      v34 = v54;
      if (v55[0])
      {
        if (a9 >= 4)
        {
          v37 = 0;
          v38 = v59;
          v39 = (v55[0] + 8);
          v40 = a11;
          do
          {
            v41 = *(v38 + 2 * *(v39 - 1));
            v42 = *(v38 + ((*(v39 - 1) >> 15) & 0x1FFFE));
            v43 = *(v38 + 2 * *(v39 - 2)) | (*(v38 + ((*(v39 - 2) >> 15) & 0x1FFFE)) << 16);
            v44 = *v39;
            v45 = v39[1];
            v39 += 4;
            v46.i32[0] = v43;
            v46.i32[1] = v41 | (v42 << 16);
            v46.i16[4] = *(v38 + 2 * v44);
            v46.i16[5] = *(v38 + ((v44 >> 15) & 0x1FFFE));
            v46.i16[6] = *(v38 + 2 * v45);
            v46.i16[7] = *(v38 + ((v45 >> 15) & 0x1FFFE));
            v26 = vzip2q_s32(v50, v46);
            v61.val[0] = vzip1q_s32(v50, v46);
            v61.val[1] = v54;
            v36 = (v40 + 16);
            vst2q_f32(v40, v61);
            v47 = v40 + 8;
            vst2q_f32(v47, *v26.i8);
            v35 = v37 + 4;
            v48 = v37 + 8;
            v37 += 4;
            v40 = v36;
          }

          while (v48 <= a9);
        }

        else
        {
          v35 = 0;
          v36 = a11;
        }

        if (v35 < a9)
        {
          do
          {
            v49 = v52;
            v49.i32[2] = *(v59 + 2 * *(v55[0] + 4 * v35)) | (*(v59 + ((*(v55[0] + 4 * v35) >> 15) & 0x1FFFE)) << 16);
            *v36++ = vzip1q_s32(vuzp1q_s32(v49, v49), v51);
            ++v35;
          }

          while (a9 != v35);
        }
      }

      a11 = (a11 + a12);
      v30 += a10;
    }

    while (v30 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

_WORD *Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v67 = v21;
  v64[1] = a1;
  v64[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v65 = *(a3 + 52) + HIDWORD(v21) * v19;
  v66 = v20;
  v68 = a13;
  v69 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v22 = _D0;
  }

  else
  {
    v22 = 32256;
  }

  v27 = *(a2 + 60);
  v28 = *(a6 + 8);
  v29 = *(a3 + 24);
  v61 = v29;
  v58[1] = a1;
  v58[2] = v28;
  LODWORD(v28) = *(a3 + 44);
  v59 = *(a3 + 52) + HIDWORD(v29) * v27;
  v60 = v28;
  v62 = a13;
  v63 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v36 = _D0;
  }

  else
  {
    v36 = 32256;
  }

  v37 = *(a2 + 56);
  v38 = *(a3 + 52);
  if (*(a3 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a3 + 28) * HIDWORD(v37);
    v41 = v36;
    v31.i32[0] = v22;
    v42 = vqtbl2q_s8(*v31.i8, xmmword_296B8F230);
    v31.i16[1] = v36;
    v55 = v31;
    do
    {
      v56 = v34;
      v57 = v42;
      v65 = v40 + v38;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v59 = v40 + v38;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
      if (v64[0])
      {
        _ZF = v58[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v49 = 0;
          v50 = 4;
          v46 = a11;
          v48 = v57;
          do
          {
            v51 = (v64[0] + 2 * v49);
            v52 = (v58[0] + 2 * v49);
            v53 = (v62 + 2 * *v52);
            result = (v62 + 2 * v52[1]);
            LOWORD(v47) = *(v68 + 2 * *v51);
            WORD1(v47) = *v53;
            WORD2(v47) = *(v68 + 2 * v51[1]);
            WORD3(v47) = *result;
            WORD4(v47) = *(v68 + 2 * *(v64[0] + v50));
            WORD5(v47) = *(v62 + 2 * *(v58[0] + v50));
            WORD6(v47) = *(v68 + 2 * *(v64[0] + v50 + 2));
            HIWORD(v47) = *(v62 + 2 * *(v58[0] + v50 + 2));
            vst2q_s16(v46, *&v47);
            v46 += 16;
            v45 = v49 + 4;
            v50 += 8;
            v54 = v49 + 8;
            v49 += 4;
          }

          while (v54 <= a9);
        }

        else
        {
          v45 = 0;
          v46 = a11;
          v47 = v56;
          v48 = v57;
        }

        v56 = v47;
        v57 = v48;
        if (v45 < a9)
        {
          do
          {
            v43.i16[0] = *(v68 + 2 * *(v64[0] + 2 * v45));
            v43.i16[2] = *(v62 + 2 * *(v58[0] + 2 * v45));
            v43 = vzip1_s16(vuzp1_s16(v43, v43), v55);
            *v46 = v43;
            v46 += 4;
            ++v45;
          }

          while (a9 != v45);
        }
      }

      a11 = (a11 + a12);
      v38 += a10;
      v34 = v56;
      v42 = v57;
    }

    while (v38 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v69 = v21;
  v66[1] = a1;
  v66[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v67 = *(a3 + 52) + HIDWORD(v21) * v19;
  v68 = v20;
  v70 = a13;
  v71 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v66);
  if (*(*a5 + 24))
  {
    v23 = **a5;
    v22 = v23;
  }

  else
  {
    v22 = NAN;
  }

  v24 = *(a2 + 60);
  v25 = *(a6 + 8);
  v26 = *(a3 + 24);
  v63 = v26;
  v60[1] = a1;
  v60[2] = v25;
  LODWORD(v25) = *(a3 + 44);
  v61 = *(a3 + 52) + HIDWORD(v26) * v24;
  v62 = v25;
  v64 = a13;
  v65 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v60);
  if (*(*a7 + 24))
  {
    v30 = **a7;
    v31 = v30;
  }

  else
  {
    v31 = NAN;
  }

  v32 = *(a2 + 56);
  v33 = *(a3 + 52);
  if (*(a3 + 56) + v33 < HIDWORD(v32))
  {
    v28.i64[0] = __PAIR64__(LODWORD(v31), LODWORD(v22));
    v35 = *(a3 + 28) * HIDWORD(v32);
    *&v36 = __PAIR64__(LODWORD(v31), LODWORD(v22));
    *(&v36 + 1) = __PAIR64__(LODWORD(v31), LODWORD(v22));
    v57 = v28;
    do
    {
      v58 = v29;
      v59 = v36;
      v67 = v35 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v66);
      v61 = v35 + v33;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v60);
      v29 = v58;
      v36 = v59;
      if (v66[0] && v60[0])
      {
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v70;
          v42 = v64;
          v43 = (v60[0] + 8);
          v44 = (v66[0] + 8);
          v45 = a11;
          do
          {
            v46 = *(v41 + 2 * *(v44 - 2)) | (*(v41 + ((*(v44 - 2) >> 15) & 0x1FFFE)) << 16);
            v47 = *(v41 + 2 * *(v44 - 1)) | (*(v41 + ((*(v44 - 1) >> 15) & 0x1FFFE)) << 16);
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v50 = *(v41 + 2 * v48) | (*(v41 + ((v48 >> 15) & 0x1FFFE)) << 16);
            LODWORD(v48) = *(v41 + 2 * v49) | (*(v41 + ((v49 >> 15) & 0x1FFFE)) << 16);
            v51 = *(v43 - 1);
            LODWORD(v49) = *(v42 + 2 * *(v43 - 2)) | (*(v42 + ((*(v43 - 2) >> 15) & 0x1FFFE)) << 16);
            v52 = *v43;
            v53 = v43[1];
            v43 += 4;
            LODWORD(v29) = v50;
            result = *(v42 + 2 * v53);
            DWORD1(v29) = *(v42 + 2 * v52) | (*(v42 + ((v52 >> 15) & 0x1FFFE)) << 16);
            DWORD2(v29) = v48;
            HIDWORD(v29) = result | (*(v42 + ((v53 >> 15) & 0x1FFFE)) << 16);
            v37.i64[0] = __PAIR64__(v49, v46);
            v37.i32[2] = v47;
            v37.i32[3] = *(v42 + 2 * v51) | (*(v42 + ((v51 >> 15) & 0x1FFFE)) << 16);
            v54 = v59;
            v39 = (v45 + 16);
            vst2q_f32(v45, *v37.i8);
            v55 = v45 + 8;
            vst2q_f32(v55, *&v29);
            v38 = v40 + 4;
            v56 = v40 + 8;
            v40 += 4;
            v45 = v39;
          }

          while (v56 <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        if (v38 < a9)
        {
          do
          {
            v37.i32[0] = *(v70 + 2 * *(v66[0] + 4 * v38)) | (*(v70 + ((*(v66[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            v37.i32[2] = *(v64 + 2 * *(v60[0] + 4 * v38)) | (*(v64 + ((*(v60[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            v37 = vzip1q_s32(vuzp1q_s32(v37, v37), v57);
            *v39++ = v37;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v33 += a10;
    }

    while (v33 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v18 = _D0;
  }

  else
  {
    v18 = 32256;
  }

  v23 = *(a2 + 60);
  v24 = *(a5 + 8);
  v25 = *(a3 + 24);
  v66 = v25;
  v63[1] = a1;
  v63[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v25) * v23;
  v65 = v24;
  v67 = a13;
  v68 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v26 = *(a2 + 60);
  v27 = *(a6 + 8);
  v28 = *(a3 + 24);
  v60 = v28;
  v57[1] = a1;
  v57[2] = v27;
  LODWORD(v27) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v28) * v26;
  v59 = v27;
  v61 = a13;
  v62 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v34 = _D0;
  }

  else
  {
    v34 = 32256;
  }

  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v30.i32[0] = v18;
    v39 = vdupq_n_s16(v18);
    v40 = vdupq_n_s16(v34);
    v52 = v30;
    do
    {
      v53 = v32;
      v54 = v40;
      v55 = v39;
      v56 = v31;
      v64 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v58 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
      v32 = v53;
      v40 = v54;
      v39 = v55;
      v31 = v56;
      if (v63[0])
      {
        _ZF = v57[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v45 = 0;
          v46 = 4;
          v44 = a11;
          do
          {
            v47 = (v63[0] + 2 * v45);
            LOWORD(v32) = *(v67 + 2 * *v47);
            WORD2(v32) = *(v67 + 2 * v47[1]);
            WORD4(v32) = *(v67 + 2 * *(v63[0] + v46));
            WORD6(v32) = *(v67 + 2 * *(v63[0] + v46 + 2));
            v48 = (v57[0] + 2 * v45);
            LOWORD(v31) = *(v61 + 2 * *v48);
            WORD1(v31) = *(v61 + 2 * v48[1]);
            WORD2(v31) = *(v61 + 2 * *(v57[0] + v46));
            WORD3(v31) = *(v61 + 2 * *(v57[0] + v46 + 2));
            v49 = vqtbl2q_s8(*(&v31 - 1), xmmword_296B6EE60);
            v41 = vqtbl2q_s8(*&v32, xmmword_296B6EE60);
            vst2q_s16(v44, *(&v41 - 1));
            v44 += 16;
            v43 = v45 + 4;
            v46 += 8;
            v50 = v45 + 8;
            v45 += 4;
          }

          while (v50 <= a9);
        }

        else
        {
          v43 = 0;
          v44 = a11;
        }

        if (v43 < a9)
        {
          do
          {
            v51 = v52;
            v51.i16[2] = *(v61 + 2 * *(v57[0] + 2 * v43));
            v41.i16[0] = *(v67 + 2 * *(v63[0] + 2 * v43));
            v41.i16[1] = v34;
            *v44 = vzip1_s16(vuzp1_s16(v51, v51), *v41.i8);
            v44 += 4;
            ++v43;
          }

          while (a9 != v43);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    *&v19 = **a4;
    v18 = v19;
  }

  else
  {
    v18 = 2143289344;
  }

  v20 = *(a2 + 60);
  v21 = *(a5 + 8);
  v22 = *(a3 + 24);
  v72 = v22;
  v69[1] = a1;
  v69[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v70 = *(a3 + 52) + HIDWORD(v22) * v20;
  v71 = v21;
  v73 = a13;
  v74 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
  v23 = *(a2 + 60);
  v24 = *(a6 + 8);
  v25 = *(a3 + 24);
  v66 = v25;
  v63[1] = a1;
  v63[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v25) * v23;
  v65 = v24;
  v67 = a13;
  v68 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v63);
  if (*(*a7 + 24))
  {
    *&v28 = **a7;
    v29 = v28;
  }

  else
  {
    v29 = 2143289344;
  }

  v30 = *(a2 + 56);
  v31 = *(a3 + 52);
  if (*(a3 + 56) + v31 < HIDWORD(v30))
  {
    v33 = *(a3 + 28) * HIDWORD(v30);
    v27.i32[0] = v18;
    v34 = vdupq_n_s32(v18);
    v61 = vdupq_n_s32(v29);
    v62 = v27;
    v60 = vuzp1q_s32(v34, v34);
    do
    {
      v70 = v33 + v31;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
      v64 = v33 + v31;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v63);
      if (v69[0] && v63[0])
      {
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v73;
          v41 = v67;
          v42 = (v63[0] + 8);
          v43 = (v69[0] + 8);
          v44 = a11;
          do
          {
            v45 = *(v40 + 2 * *(v43 - 2));
            v46 = *(v40 + 2 * *(v43 - 1));
            v47 = *(v40 + ((*(v43 - 2) >> 15) & 0x1FFFE));
            v48 = (*(v43 - 1) >> 15) & 0x1FFFE;
            v49 = *v43;
            v50 = v43[1];
            v43 += 4;
            v51 = v45 | (v47 << 16);
            LODWORD(v48) = v46 | (*(v40 + v48) << 16);
            v52 = *(v40 + 2 * v50) | (*(v40 + ((v50 >> 15) & 0x1FFFE)) << 16);
            v53 = *(v41 + 2 * *(v42 - 2)) | (*(v41 + ((*(v42 - 2) >> 15) & 0x1FFFE)) << 16);
            LODWORD(v50) = *(v41 + 2 * *(v42 - 1)) | (*(v41 + ((*(v42 - 1) >> 15) & 0x1FFFE)) << 16);
            v55 = *v42;
            v54 = v42[1];
            v42 += 4;
            v35.i32[0] = v51;
            v36.i32[0] = *(v40 + 2 * v49) | (*(v40 + ((v49 >> 15) & 0x1FFFE)) << 16);
            result = *(v41 + 2 * v54);
            v35.i32[2] = v48;
            v56.i64[0] = __PAIR64__(v50, v53);
            v36.i32[2] = v52;
            v56.i16[4] = *(v41 + 2 * v55);
            v56.i16[5] = *(v41 + ((v55 >> 15) & 0x1FFFE));
            v56.i32[3] = result | (*(v41 + ((v54 >> 15) & 0x1FFFE)) << 16);
            v36 = vuzp1q_s32(v36, v36);
            v75.val[0] = vzip1q_s32(v60, v56);
            v35 = vuzp1q_s32(v35, v35);
            v75.val[1] = vzip1q_s32(v35, v61);
            v76.val[0] = vzip2q_s32(v60, v56);
            v38 = (v44 + 16);
            vst2q_f32(v44, v75);
            v57 = v44 + 8;
            v76.val[1] = vzip2q_s32(v36, v61);
            v37 = v39 + 4;
            vst2q_f32(v57, v76);
            v58 = v39 + 8;
            v39 += 4;
            v44 = v38;
          }

          while (v58 <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 < a9)
        {
          do
          {
            v59 = v62;
            v59.i32[2] = *(v67 + 2 * *(v63[0] + 4 * v37)) | (*(v67 + ((*(v63[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36.i32[0] = *(v73 + 2 * *(v69[0] + 4 * v37)) | (*(v73 + ((*(v69[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36.i32[1] = v29;
            *v38++ = vzip1q_s32(vuzp1q_s32(v59, v59), v36);
            ++v37;
          }

          while (a9 != v37);
        }
      }

      a11 = (a11 + a12);
      v31 += a10;
    }

    while (v31 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

__int16 *Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v65 = v21;
  v62[1] = a1;
  v62[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v63 = *(a3 + 52) + HIDWORD(v21) * v19;
  v64 = v20;
  v66 = a13;
  v67 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v62);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v59 = v24;
  v56[1] = a1;
  v56[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v57 = *(a3 + 52) + HIDWORD(v24) * v22;
  v58 = v23;
  v60 = a13;
  v61 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
  v25 = *(a2 + 60);
  v26 = *(a6 + 8);
  v27 = *(a3 + 24);
  v53 = v27;
  v50[1] = a1;
  v50[2] = v26;
  LODWORD(v26) = *(a3 + 44);
  v51 = *(a3 + 52) + HIDWORD(v27) * v25;
  v52 = v26;
  v54 = a13;
  v55 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v50);
  if (*(*a7 + 24))
  {
    _D0 = **a7;
    __asm { FCVT            H0, D0 }

    v34 = _D0;
  }

  else
  {
    v34 = 32256;
  }

  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v39 = vdupq_n_s16(v34);
    do
    {
      v48 = v29;
      v49 = v39;
      v63 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v62);
      v57 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
      v51 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v50);
      v29 = v48;
      v39 = v49;
      if (v62[0])
      {
        _ZF = v56[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF && v50[0] != 0)
      {
        if (a9 >= 4)
        {
          v44 = 0;
          v45 = 6;
          v43 = a11;
          do
          {
            LOWORD(v29) = *(v60 + 2 * *(v56[0] + v45 - 6));
            WORD2(v29) = *(v60 + 2 * *(v56[0] + v45 - 4));
            WORD4(v29) = *(v60 + 2 * *(v56[0] + v45 - 2));
            WORD6(v29) = *(v60 + 2 * *(v56[0] + v45));
            result = (v54 + 2 * *(v50[0] + v45 - 6));
            v68.val[0].i16[0] = *(v66 + 2 * *(v62[0] + v45 - 6));
            v68.val[0].i16[1] = *result;
            v68.val[0].i16[2] = *(v66 + 2 * *(v62[0] + v45 - 4));
            v68.val[0].i16[3] = *(v54 + 2 * *(v50[0] + v45 - 4));
            v68.val[0].i16[4] = *(v66 + 2 * *(v62[0] + v45 - 2));
            v68.val[0].i16[5] = *(v54 + 2 * *(v50[0] + v45 - 2));
            v68.val[0].i16[6] = *(v66 + 2 * *(v62[0] + v45));
            v68.val[0].i16[7] = *(v54 + 2 * *(v50[0] + v45));
            v68.val[1] = vqtbl2q_s8(*&v29, xmmword_296B6EE60);
            vst2q_s16(v43, v68);
            v43 += 16;
            v42 = v44 + 4;
            v45 += 8;
            v46 = v44 + 8;
            v44 += 4;
          }

          while (v46 <= a9);
        }

        else
        {
          v42 = 0;
          v43 = a11;
        }

        if (v42 < a9)
        {
          do
          {
            LOWORD(v47) = *(v66 + 2 * *(v62[0] + 2 * v42));
            WORD1(v47) = *(v60 + 2 * *(v56[0] + 2 * v42));
            WORD2(v47) = *(v54 + 2 * *(v50[0] + 2 * v42));
            HIWORD(v47) = v34;
            *v43 = v47;
            v43 += 4;
            ++v42;
          }

          while (a9 != v42);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

unint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v94 = v21;
  v91[1] = a1;
  v91[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v92 = *(a3 + 52) + HIDWORD(v21) * v19;
  v93 = v20;
  v95 = a13;
  v96 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v91);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v88 = v24;
  v85[1] = a1;
  v85[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v86 = *(a3 + 52) + HIDWORD(v24) * v22;
  v87 = v23;
  v89 = a13;
  v90 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v85);
  v25 = *(a2 + 60);
  v26 = *(a6 + 8);
  v27 = *(a3 + 24);
  v82 = v27;
  v79[1] = a1;
  v79[2] = v26;
  LODWORD(v26) = *(a3 + 44);
  v80 = *(a3 + 52) + HIDWORD(v27) * v25;
  v81 = v26;
  v83 = a13;
  v84 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v79);
  if (*(*a7 + 24))
  {
    *&v29 = **a7;
    v30 = v29;
  }

  else
  {
    v30 = 2143289344;
  }

  v31 = *(a2 + 56);
  v32 = *(a3 + 52);
  if (*(a3 + 56) + v32 < HIDWORD(v31))
  {
    v35 = *(a3 + 28) * HIDWORD(v31);
    v78 = vdupq_n_s32(v30);
    do
    {
      v92 = v35 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v91);
      v86 = v35 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v85);
      v80 = v35 + v32;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v79);
      if (v91[0] && v85[0] && v79[0])
      {
        v77 = a12;
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v95;
          v42 = v89;
          v43 = (v79[0] + 8);
          v44 = (v91[0] + 8);
          v45 = (v85[0] + 8);
          v46 = a11;
          v47 = v83;
          do
          {
            v48 = *(v41 + 2 * *(v44 - 2));
            v49 = (*(v44 - 2) >> 15) & 0x1FFFE;
            v50 = *(v41 + 2 * *(v44 - 1));
            v51 = *(v44 - 1) >> 15;
            v52 = *v44;
            v53 = v44[1];
            v44 += 4;
            v54 = *(v41 + 2 * v52);
            v55 = *(v41 + 2 * v53);
            v56 = *(v41 + (v51 & 0x1FFFE));
            v57 = (v52 >> 15) & 0x1FFFE;
            v58 = (v53 >> 15) & 0x1FFFE;
            v59 = *(v41 + v57);
            v60 = *(v42 + 2 * *(v45 - 2));
            LODWORD(v53) = *(v42 + ((*(v45 - 2) >> 15) & 0x1FFFE));
            LODWORD(v57) = v48 | (*(v41 + v49) << 16);
            LODWORD(v49) = v50 | (v56 << 16);
            v61 = *(v42 + 2 * *(v45 - 1));
            v62 = v54 | (v59 << 16);
            v63 = *(v42 + ((*(v45 - 1) >> 15) & 0x1FFFE));
            v64 = *v45;
            v65 = v45[1];
            v45 += 4;
            v66 = v55 | (*(v41 + v58) << 16);
            LODWORD(v53) = v60 | (v53 << 16);
            v67 = *(v42 + 2 * v65);
            LODWORD(v58) = v61 | (v63 << 16);
            v68 = *(v42 + ((v65 >> 15) & 0x1FFFE));
            v69 = *(v42 + 2 * v64) | (*(v42 + ((v64 >> 15) & 0x1FFFE)) << 16);
            v70 = *(v43 - 1);
            LODWORD(v65) = *(v47 + 2 * *(v43 - 2));
            v71 = v67 | (v68 << 16);
            v72 = *(v47 + ((*(v43 - 2) >> 15) & 0x1FFFE));
            v74 = *v43;
            v73 = v43[1];
            v43 += 4;
            v36.i32[0] = v53;
            v37.i32[0] = v69;
            v97.val[0].i32[0] = v62;
            v36.i32[2] = v58;
            v37.i32[2] = v71;
            v97.val[0].i16[2] = *(v47 + 2 * v74);
            v97.val[0].i16[3] = *(v47 + ((v74 >> 15) & 0x1FFFE));
            v97.val[0].i32[2] = v66;
            v97.val[0].i16[6] = *(v47 + 2 * v73);
            v97.val[0].i16[7] = *(v47 + ((v73 >> 15) & 0x1FFFE));
            v37 = vuzp1q_s32(v37, v37);
            v98.val[0].i32[0] = v57;
            v98.val[0].i32[1] = v65 | (v72 << 16);
            v97.val[1] = vzip2q_s32(v37, v78);
            v98.val[0].i32[2] = v49;
            v98.val[0].i16[6] = *(v47 + 2 * v70);
            v98.val[0].i16[7] = *(v47 + ((v70 >> 15) & 0x1FFFE));
            v36 = vuzp1q_s32(v36, v36);
            v98.val[1] = vzip1q_s32(v36, v78);
            v39 = v46 + 16;
            vst2q_f32(v46, v98);
            v75 = v46 + 8;
            v38 = v40 + 4;
            result = v40 + 8;
            vst2q_f32(v75, v97);
            v40 += 4;
            v46 = v39;
          }

          while (result <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        a12 = v77;
        if (v38 < a9)
        {
          do
          {
            LODWORD(v76) = *(v95 + 2 * *(v91[0] + 4 * v38)) | (*(v95 + ((*(v91[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD1(v76) = *(v89 + 2 * *(v85[0] + 4 * v38)) | (*(v89 + ((*(v85[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD2(v76) = *(v83 + 2 * *(v79[0] + 4 * v38)) | (*(v83 + ((*(v79[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v76) = v30;
            *v39 = v76;
            v39 += 4;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v32 += a10;
    }

    while (v32 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v15 = _D0;
  }

  else
  {
    v15 = 32256;
  }

  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v21 = _D0;
  }

  else
  {
    v21 = 32256;
  }

  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v23 = _D0;
  }

  else
  {
    v23 = 32256;
  }

  v25 = *(a2 + 60);
  v26 = *(a7 + 8);
  v27 = *(a3 + 24);
  v62 = v27;
  v59[1] = a1;
  v59[2] = v26;
  LODWORD(v26) = *(a3 + 44);
  v60 = *(a3 + 52) + HIDWORD(v27) * v25;
  v61 = v26;
  v63 = a13;
  v64 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v59);
  v36 = *(a2 + 56);
  v37 = *(a3 + 52);
  if (*(a3 + 56) + v37 < HIDWORD(v36))
  {
    v39 = *(a3 + 28) * HIDWORD(v36);
    v33.i32[0] = v21;
    v40 = vdupq_n_s16(v21);
    v41 = v23;
    v29.i32[0] = v15;
    v42 = vqtbl2q_s8(*v29.i8, xmmword_296B8F230);
    v29.i16[2] = v23;
    v43 = vuzp1_s16(v29, v29);
    v54 = v33;
    do
    {
      v55 = v42;
      v56 = v35;
      v57 = v40;
      v58 = v34;
      v60 = v39 + v37;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v59);
      if (v59[0])
      {
        if (a9 >= 4)
        {
          v50 = 0;
          v45 = a11;
          v46 = v57;
          *(&v47 + 1) = *(&v58 + 1);
          v48 = v55;
          do
          {
            v51 = (v59[0] + 2 * v50);
            LOWORD(v47) = *(v63 + 2 * *v51);
            WORD1(v47) = *(v63 + 2 * v51[1]);
            WORD2(v47) = *(v63 + 2 * v51[2]);
            WORD3(v47) = *(v63 + 2 * v51[3]);
            v49 = vqtbl2q_s8(*v46.i8, xmmword_296B6EE60);
            vst2q_s16(v45, *v48.i8);
            v45 += 16;
            v44 = v50 + 4;
            v52 = v50 + 8;
            v50 += 4;
          }

          while (v52 <= a9);
        }

        else
        {
          v44 = 0;
          v45 = a11;
          v46 = v57;
          v47 = v58;
          v48 = v55;
          v49 = v56;
        }

        v55 = v48;
        v56 = v49;
        v57 = v46;
        v58 = v47;
        if (v44 < a9)
        {
          do
          {
            v53 = v54;
            v53.i16[1] = *(v63 + 2 * *(v59[0] + 2 * v44));
            *v45 = vzip1_s16(v43, v53);
            v45 += 4;
            ++v44;
          }

          while (a9 != v44);
        }
      }

      a11 = (a11 + a12);
      v37 += a10;
      v40 = v57;
      v34 = v58;
      v42 = v55;
      v35 = v56;
    }

    while (v37 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    v16 = **a4;
    v15 = v16;
  }

  else
  {
    v15 = NAN;
  }

  if (*(*a5 + 24))
  {
    *&v18 = **a5;
    v17 = v18;
  }

  else
  {
    v17 = 2143289344;
  }

  if (*(*a6 + 24))
  {
    v20 = **a6;
    v19 = v20;
  }

  else
  {
    v19 = NAN;
  }

  v21 = *(a2 + 60);
  v22 = *(a7 + 8);
  v23 = *(a3 + 24);
  v57 = v23;
  v54[1] = a1;
  v54[2] = v22;
  LODWORD(v22) = *(a3 + 44);
  v55 = *(a3 + 52) + HIDWORD(v23) * v21;
  v56 = v22;
  v58 = a13;
  v59 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v54);
  v28 = *(a2 + 56);
  v29 = *(a3 + 52);
  if (*(a3 + 56) + v29 < HIDWORD(v28))
  {
    v31 = *(a3 + 28) * HIDWORD(v28);
    v26.i32[0] = v17;
    v32 = vdupq_n_s32(v17);
    *v25.i32 = v15;
    v33.i64[0] = __PAIR64__(LODWORD(v19), LODWORD(v15));
    v33.i64[1] = __PAIR64__(LODWORD(v19), LODWORD(v15));
    *&v25.i32[2] = v19;
    v50 = vuzp1q_s32(v25, v25);
    v51 = v26;
    v49 = vuzp1q_s32(v32, v32);
    do
    {
      v52 = v33;
      v53 = v27;
      v55 = v31 + v29;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v54);
      v33 = v52;
      v27 = v53;
      if (v54[0])
      {
        if (a9 >= 4)
        {
          v36 = 0;
          v37 = v58;
          v38 = (v54[0] + 8);
          v39 = a11;
          do
          {
            v40 = *(v37 + 2 * *(v38 - 1));
            v41 = *(v37 + ((*(v38 - 1) >> 15) & 0x1FFFE));
            v42 = *(v37 + 2 * *(v38 - 2)) | (*(v37 + ((*(v38 - 2) >> 15) & 0x1FFFE)) << 16);
            v43 = *v38;
            v44 = v38[1];
            v38 += 4;
            v45.i32[0] = v42;
            v45.i32[1] = v40 | (v41 << 16);
            v45.i16[4] = *(v37 + 2 * v43);
            v45.i16[5] = *(v37 + ((v43 >> 15) & 0x1FFFE));
            v45.i16[6] = *(v37 + 2 * v44);
            v45.i16[7] = *(v37 + ((v44 >> 15) & 0x1FFFE));
            v27 = vzip2q_s32(v49, v45);
            v35 = (v39 + 16);
            v60.val[1] = vzip1q_s32(v49, v45);
            v60.val[0] = v52;
            vst2q_f32(v39, v60);
            v46 = v39 + 8;
            vst2q_f32(v46, *(&v27 - 1));
            v34 = v36 + 4;
            v47 = v36 + 8;
            v36 += 4;
            v39 = v35;
          }

          while (v47 <= a9);
        }

        else
        {
          v34 = 0;
          v35 = a11;
        }

        if (v34 < a9)
        {
          do
          {
            v48 = v51;
            v48.i32[1] = *(v58 + 2 * *(v54[0] + 4 * v34)) | (*(v58 + ((*(v54[0] + 4 * v34) >> 15) & 0x1FFFE)) << 16);
            *v35++ = vzip1q_s32(v50, v48);
            ++v34;
          }

          while (a9 != v34);
        }
      }

      a11 = (a11 + a12);
      v29 += a10;
    }

    while (v29 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t **a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v67 = v21;
  v64[1] = a1;
  v64[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v65 = *(a3 + 52) + HIDWORD(v21) * v19;
  v66 = v20;
  v68 = a13;
  v69 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v22 = _D0;
  }

  else
  {
    v22 = 32256;
  }

  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v27 = _D0;
  }

  else
  {
    v27 = 32256;
  }

  v29 = *(a2 + 60);
  v30 = *(a7 + 8);
  v31 = *(a3 + 24);
  v61 = v31;
  v58[1] = a1;
  v58[2] = v30;
  LODWORD(v30) = *(a3 + 44);
  v59 = *(a3 + 52) + HIDWORD(v31) * v29;
  v60 = v30;
  v62 = a13;
  v63 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
  v36 = *(a2 + 56);
  v37 = *(a3 + 52);
  if (*(a3 + 56) + v37 < HIDWORD(v36))
  {
    v39 = *(a3 + 28) * HIDWORD(v36);
    v33.i32[0] = v22;
    v40 = vdupq_n_s16(v22);
    v41 = vdupq_n_s16(v27);
    v53 = v33;
    do
    {
      v54 = v35;
      v55 = v41;
      v56 = v40;
      v57 = v34;
      v65 = v39 + v37;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v59 = v39 + v37;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
      v35 = v54;
      v41 = v55;
      v40 = v56;
      v34 = v57;
      if (v64[0])
      {
        _ZF = v58[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v46 = 0;
          v47 = 4;
          v45 = a11;
          do
          {
            v48 = (v64[0] + 2 * v46);
            LOWORD(v35) = *(v68 + 2 * *v48);
            WORD2(v35) = *(v68 + 2 * v48[1]);
            WORD4(v35) = *(v68 + 2 * *(v64[0] + v47));
            WORD6(v35) = *(v68 + 2 * *(v64[0] + v47 + 2));
            v42 = vqtbl2q_s8(*&v35, xmmword_296B6EE60);
            v49 = (v58[0] + 2 * v46);
            LOWORD(v34) = *(v62 + 2 * *v49);
            WORD1(v34) = *(v62 + 2 * v49[1]);
            WORD2(v34) = *(v62 + 2 * *(v58[0] + v47));
            WORD3(v34) = *(v62 + 2 * *(v58[0] + v47 + 2));
            v50 = vqtbl2q_s8(*(&v34 - 1), xmmword_296B6EE60);
            vst2q_s16(v45, *v42.i8);
            v45 += 16;
            v44 = v46 + 4;
            v47 += 8;
            v51 = v46 + 8;
            v46 += 4;
          }

          while (v51 <= a9);
        }

        else
        {
          v44 = 0;
          v45 = a11;
        }

        if (v44 < a9)
        {
          do
          {
            v42.i16[0] = *(v68 + 2 * *(v64[0] + 2 * v44));
            v42.i16[2] = v27;
            v52 = v53;
            v52.i16[1] = *(v62 + 2 * *(v58[0] + 2 * v44));
            *v42.i8 = vzip1_s16(vuzp1_s16(*v42.i8, *v42.i8), v52);
            *v45 = v42.i64[0];
            v45 += 4;
            ++v44;
          }

          while (a9 != v44);
        }
      }

      a11 = (a11 + a12);
      v37 += a10;
    }

    while (v37 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v74 = v21;
  v71[1] = a1;
  v71[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v72 = *(a3 + 52) + HIDWORD(v21) * v19;
  v73 = v20;
  v75 = a13;
  v76 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v71);
  if (*(*a5 + 24))
  {
    *&v23 = **a5;
    v22 = v23;
  }

  else
  {
    v22 = 2143289344;
  }

  if (*(*a6 + 24))
  {
    *&v25 = **a6;
    v24 = v25;
  }

  else
  {
    v24 = 2143289344;
  }

  v26 = *(a2 + 60);
  v27 = *(a7 + 8);
  v28 = *(a3 + 24);
  v68 = v28;
  v65[1] = a1;
  v65[2] = v27;
  LODWORD(v27) = *(a3 + 44);
  v66 = *(a3 + 52) + HIDWORD(v28) * v26;
  v67 = v27;
  v69 = a13;
  v70 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v31 = *(a2 + 56);
  v32 = *(a3 + 52);
  if (*(a3 + 56) + v32 < HIDWORD(v31))
  {
    v34 = *(a3 + 28) * HIDWORD(v31);
    v30.i32[0] = v22;
    v35 = vdupq_n_s32(v22);
    v63 = vdupq_n_s32(v24);
    v64 = v30;
    v62 = vuzp1q_s32(v35, v35);
    do
    {
      v72 = v34 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v71);
      v66 = v34 + v32;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
      if (v71[0] && v65[0])
      {
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v75;
          v42 = v69;
          v43 = (v65[0] + 8);
          v44 = (v71[0] + 8);
          v45 = a11;
          do
          {
            v46 = *(v41 + 2 * *(v44 - 2));
            v47 = *(v41 + 2 * *(v44 - 1));
            v48 = *(v41 + ((*(v44 - 2) >> 15) & 0x1FFFE));
            v49 = (*(v44 - 1) >> 15) & 0x1FFFE;
            v50 = *v44;
            v51 = v44[1];
            v44 += 4;
            v52 = v46 | (v48 << 16);
            LODWORD(v49) = v47 | (*(v41 + v49) << 16);
            v53 = *(v42 + 2 * *(v43 - 1));
            v54 = *(v41 + 2 * v51) | (*(v41 + ((v51 >> 15) & 0x1FFFE)) << 16);
            v55 = *(v42 + 2 * *(v43 - 2)) | (*(v42 + ((*(v43 - 2) >> 15) & 0x1FFFE)) << 16);
            LODWORD(v51) = *(v42 + ((*(v43 - 1) >> 15) & 0x1FFFE));
            v36.i32[0] = v52;
            v57 = *v43;
            v56 = v43[1];
            v43 += 4;
            v37.i32[0] = *(v41 + 2 * v50) | (*(v41 + ((v50 >> 15) & 0x1FFFE)) << 16);
            v36.i32[2] = v49;
            result = *(v42 + 2 * v56);
            v37.i32[2] = v54;
            v58.i32[0] = v55;
            v58.i32[1] = v53 | (v51 << 16);
            v58.i16[4] = *(v42 + 2 * v57);
            v58.i16[5] = *(v42 + ((v57 >> 15) & 0x1FFFE));
            v77.val[0] = vzip2q_s32(vuzp1q_s32(v37, v37), v63);
            v58.i32[3] = result | (*(v42 + ((v56 >> 15) & 0x1FFFE)) << 16);
            v36 = vzip1q_s32(vuzp1q_s32(v36, v36), v63);
            v37 = vzip1q_s32(v62, v58);
            v39 = (v45 + 16);
            vst2q_f32(v45, *v36.i8);
            v59 = v45 + 8;
            v77.val[1] = vzip2q_s32(v62, v58);
            v38 = v40 + 4;
            vst2q_f32(v59, v77);
            v60 = v40 + 8;
            v40 += 4;
            v45 = v39;
          }

          while (v60 <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        if (v38 < a9)
        {
          do
          {
            v36.i32[0] = *(v75 + 2 * *(v71[0] + 4 * v38)) | (*(v75 + ((*(v71[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            v36.i32[2] = v24;
            v61 = v64;
            v61.i32[1] = *(v69 + 2 * *(v65[0] + 4 * v38)) | (*(v69 + ((*(v65[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            v36 = vzip1q_s32(vuzp1q_s32(v36, v36), v61);
            *v39++ = v36;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v32 += a10;
    }

    while (v32 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

_WORD *Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t **a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v18 = _D0;
  }

  else
  {
    v18 = 32256;
  }

  v23 = *(a2 + 60);
  v24 = *(a5 + 8);
  v25 = *(a3 + 24);
  v66 = v25;
  v63[1] = a1;
  v63[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v25) * v23;
  v65 = v24;
  v67 = a13;
  v68 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v26 = _D0;
  }

  else
  {
    v26 = 32256;
  }

  v28 = *(a2 + 60);
  v29 = *(a7 + 8);
  v30 = *(a3 + 24);
  v60 = v30;
  v57[1] = a1;
  v57[2] = v29;
  LODWORD(v29) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v30) * v28;
  v59 = v29;
  v61 = a13;
  v62 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
  v37 = *(a2 + 56);
  v38 = *(a3 + 52);
  if (*(a3 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a3 + 28) * HIDWORD(v37);
    v41 = v26;
    v32.i32[0] = v18;
    v42 = vqtbl2q_s8(*v32.i8, xmmword_296B8F230);
    v32.i16[2] = v26;
    v43 = vuzp1_s16(v32, v32);
    do
    {
      v55 = v42;
      v56 = v36;
      v64 = v40 + v38;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v58 = v40 + v38;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
      if (v63[0])
      {
        _ZF = v57[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v49 = 0;
          v50 = 4;
          v46 = a11;
          v47 = v55;
          do
          {
            v51 = (v63[0] + 2 * v49);
            v52 = (v57[0] + 2 * v49);
            v53 = (v61 + 2 * *v52);
            result = (v61 + 2 * v52[1]);
            LOWORD(v48) = *(v67 + 2 * *v51);
            WORD1(v48) = *v53;
            WORD2(v48) = *(v67 + 2 * v51[1]);
            WORD3(v48) = *result;
            WORD4(v48) = *(v67 + 2 * *(v63[0] + v50));
            WORD5(v48) = *(v61 + 2 * *(v57[0] + v50));
            WORD6(v48) = *(v67 + 2 * *(v63[0] + v50 + 2));
            HIWORD(v48) = *(v61 + 2 * *(v57[0] + v50 + 2));
            vst2q_s16(v46, *v47.i8);
            v46 += 16;
            v45 = v49 + 4;
            v50 += 8;
            v54 = v49 + 8;
            v49 += 4;
          }

          while (v54 <= a9);
        }

        else
        {
          v45 = 0;
          v46 = a11;
          v47 = v55;
          v48 = v56;
        }

        v55 = v47;
        v56 = v48;
        if (v45 < a9)
        {
          do
          {
            v47.i16[0] = *(v67 + 2 * *(v63[0] + 2 * v45));
            v47.i16[1] = *(v61 + 2 * *(v57[0] + 2 * v45));
            *v47.i8 = vzip1_s16(v43, *v47.i8);
            *v46 = v47.i64[0];
            v46 += 4;
            ++v45;
          }

          while (a9 != v45);
        }
      }

      a11 = (a11 + a12);
      v38 += a10;
      v42 = v55;
      v36 = v56;
    }

    while (v38 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    v19 = **a4;
    v18 = v19;
  }

  else
  {
    v18 = NAN;
  }

  v20 = *(a2 + 60);
  v21 = *(a5 + 8);
  v22 = *(a3 + 24);
  v70 = v22;
  v67[1] = a1;
  v67[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v68 = *(a3 + 52) + HIDWORD(v22) * v20;
  v69 = v21;
  v71 = a13;
  v72 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v67);
  if (*(*a6 + 24))
  {
    v24 = **a6;
    v23 = v24;
  }

  else
  {
    v23 = NAN;
  }

  v25 = *(a2 + 60);
  v26 = *(a7 + 8);
  v27 = *(a3 + 24);
  v64 = v27;
  v61[1] = a1;
  v61[2] = v26;
  LODWORD(v26) = *(a3 + 44);
  v62 = *(a3 + 52) + HIDWORD(v27) * v25;
  v63 = v26;
  v65 = a13;
  v66 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v61);
  v31 = *(a2 + 56);
  v32 = *(a3 + 52);
  if (*(a3 + 56) + v32 < HIDWORD(v31))
  {
    *v29.i32 = v18;
    v34.i64[0] = __PAIR64__(LODWORD(v23), LODWORD(v18));
    v34.i64[1] = __PAIR64__(LODWORD(v23), LODWORD(v18));
    v35 = *(a3 + 28) * HIDWORD(v31);
    *&v29.i32[2] = v23;
    v58 = vuzp1q_s32(v29, v29);
    do
    {
      v59 = v34;
      v60 = v30;
      v68 = v35 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v67);
      v62 = v35 + v32;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v61);
      v34 = v59;
      v30 = v60;
      if (v67[0] && v61[0])
      {
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v71;
          v41 = v65;
          v42 = (v61[0] + 8);
          v43 = (v67[0] + 8);
          v44 = a11;
          do
          {
            v45 = *(v40 + 2 * *(v43 - 2)) | (*(v40 + ((*(v43 - 2) >> 15) & 0x1FFFE)) << 16);
            v46 = *(v40 + 2 * *(v43 - 1)) | (*(v40 + ((*(v43 - 1) >> 15) & 0x1FFFE)) << 16);
            v47 = *v43;
            v48 = v43[1];
            v43 += 4;
            result = *(v41 + 2 * *(v42 - 2)) | (*(v41 + ((*(v42 - 2) >> 15) & 0x1FFFE)) << 16);
            v49 = *(v41 + 2 * *(v42 - 1)) | (*(v41 + ((*(v42 - 1) >> 15) & 0x1FFFE)) << 16);
            v50 = *v42;
            v51 = v42[1];
            v42 += 4;
            v52 = v45;
            v53 = result;
            v54 = v46;
            v55 = v49;
            LODWORD(v30) = *(v40 + 2 * v47) | (*(v40 + ((v47 >> 15) & 0x1FFFE)) << 16);
            DWORD1(v30) = *(v41 + 2 * v50) | (*(v41 + ((v50 >> 15) & 0x1FFFE)) << 16);
            DWORD2(v30) = *(v40 + 2 * v48) | (*(v40 + ((v48 >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v30) = *(v41 + 2 * v51) | (*(v41 + ((v51 >> 15) & 0x1FFFE)) << 16);
            v38 = (v44 + 16);
            v36 = v59;
            vst2q_f32(v44, *v36.i8);
            v56 = v44 + 8;
            vst2q_f32(v56, *(&v30 - 1));
            v37 = v39 + 4;
            v57 = v39 + 8;
            v39 += 4;
            v44 = v38;
          }

          while (v57 <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 < a9)
        {
          do
          {
            v36.i32[0] = *(v71 + 2 * *(v67[0] + 4 * v37)) | (*(v71 + ((*(v67[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36.i32[1] = *(v65 + 2 * *(v61[0] + 4 * v37)) | (*(v65 + ((*(v61[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36 = vzip1q_s32(v58, v36);
            *v38++ = v36;
            ++v37;
          }

          while (a9 != v37);
        }
      }

      a11 = (a11 + a12);
      v32 += a10;
    }

    while (v32 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

__int16 *Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v65 = v21;
  v62[1] = a1;
  v62[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v63 = *(a3 + 52) + HIDWORD(v21) * v19;
  v64 = v20;
  v66 = a13;
  v67 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v62);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v59 = v24;
  v56[1] = a1;
  v56[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v57 = *(a3 + 52) + HIDWORD(v24) * v22;
  v58 = v23;
  v60 = a13;
  v61 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
  if (*(*a6 + 24))
  {
    _D0 = **a6;
    __asm { FCVT            H0, D0 }

    v25 = _D0;
  }

  else
  {
    v25 = 32256;
  }

  v30 = *(a2 + 60);
  v31 = *(a7 + 8);
  v32 = *(a3 + 24);
  v53 = v32;
  v50[1] = a1;
  v50[2] = v31;
  LODWORD(v31) = *(a3 + 44);
  v51 = *(a3 + 52) + HIDWORD(v32) * v30;
  v52 = v31;
  v54 = a13;
  v55 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v50);
  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v39 = vdupq_n_s16(v25);
    do
    {
      v48 = v34;
      v49 = v39;
      v63 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v62);
      v57 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v56);
      v51 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v50);
      v34 = v48;
      v39 = v49;
      if (v62[0])
      {
        _ZF = v56[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF && v50[0] != 0)
      {
        if (a9 >= 4)
        {
          v44 = 0;
          v45 = 6;
          v43 = a11;
          do
          {
            LOWORD(v34) = *(v66 + 2 * *(v62[0] + v45 - 6));
            WORD2(v34) = *(v66 + 2 * *(v62[0] + v45 - 4));
            WORD4(v34) = *(v66 + 2 * *(v62[0] + v45 - 2));
            WORD6(v34) = *(v66 + 2 * *(v62[0] + v45));
            v68.val[0] = vqtbl2q_s8(*&v34, xmmword_296B6EE60);
            result = (v54 + 2 * *(v50[0] + v45 - 6));
            v68.val[1].i16[0] = *(v60 + 2 * *(v56[0] + v45 - 6));
            v68.val[1].i16[1] = *result;
            v68.val[1].i16[2] = *(v60 + 2 * *(v56[0] + v45 - 4));
            v68.val[1].i16[3] = *(v54 + 2 * *(v50[0] + v45 - 4));
            v68.val[1].i16[4] = *(v60 + 2 * *(v56[0] + v45 - 2));
            v68.val[1].i16[5] = *(v54 + 2 * *(v50[0] + v45 - 2));
            v68.val[1].i16[6] = *(v60 + 2 * *(v56[0] + v45));
            v68.val[1].i16[7] = *(v54 + 2 * *(v50[0] + v45));
            vst2q_s16(v43, v68);
            v43 += 16;
            v42 = v44 + 4;
            v45 += 8;
            v46 = v44 + 8;
            v44 += 4;
          }

          while (v46 <= a9);
        }

        else
        {
          v42 = 0;
          v43 = a11;
        }

        if (v42 < a9)
        {
          do
          {
            LOWORD(v47) = *(v66 + 2 * *(v62[0] + 2 * v42));
            WORD1(v47) = *(v60 + 2 * *(v56[0] + 2 * v42));
            WORD2(v47) = v25;
            HIWORD(v47) = *(v54 + 2 * *(v50[0] + 2 * v42));
            *v43 = v47;
            v43 += 4;
            ++v42;
          }

          while (a9 != v42);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

unint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v84 = v21;
  v81[1] = a1;
  v81[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v82 = *(a3 + 52) + HIDWORD(v21) * v19;
  v83 = v20;
  v85 = a13;
  v86 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v81);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v78 = v24;
  v75[1] = a1;
  v75[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v76 = *(a3 + 52) + HIDWORD(v24) * v22;
  v77 = v23;
  v79 = a13;
  v80 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v75);
  if (*(*a6 + 24))
  {
    *&v26 = **a6;
    v25 = v26;
  }

  else
  {
    v25 = 2143289344;
  }

  v27 = *(a2 + 60);
  v28 = *(a7 + 8);
  v29 = *(a3 + 24);
  v72 = v29;
  v69[1] = a1;
  v69[2] = v28;
  LODWORD(v28) = *(a3 + 44);
  v70 = *(a3 + 52) + HIDWORD(v29) * v27;
  v71 = v28;
  v73 = a13;
  v74 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
  v31 = *(a2 + 56);
  v32 = *(a3 + 52);
  if (*(a3 + 56) + v32 < HIDWORD(v31))
  {
    v35 = *(a3 + 28) * HIDWORD(v31);
    v68 = vdupq_n_s32(v25);
    do
    {
      v82 = v35 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v81);
      v76 = v35 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v75);
      v70 = v35 + v32;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
      if (v81[0] && v75[0] && v69[0])
      {
        v67 = a12;
        if (a9 >= 4)
        {
          v40 = 0;
          v41 = v85;
          v42 = v79;
          v43 = (v69[0] + 8);
          v44 = (v81[0] + 8);
          v45 = (v75[0] + 8);
          v46 = a11;
          v47 = v73;
          do
          {
            v48 = *(v41 + 2 * *(v44 - 2));
            v49 = *(v41 + 2 * *(v44 - 1));
            v50 = (*(v44 - 2) >> 15) & 0x1FFFE;
            v51 = (*(v44 - 1) >> 15) & 0x1FFFE;
            v52 = *v44;
            v53 = v44[1];
            v44 += 4;
            v54 = *(v45 - 1);
            v55 = *(v42 + 2 * *(v45 - 2));
            v56 = *(v42 + ((*(v45 - 2) >> 15) & 0x1FFFE));
            v57 = v48 | (*(v41 + v50) << 16);
            v58 = v49 | (*(v41 + v51) << 16);
            LODWORD(v51) = *(v42 + 2 * *(v45 - 1));
            v60 = *v45;
            v59 = v45[1];
            v45 += 4;
            v36.i32[0] = v57;
            v37.i32[0] = *(v41 + 2 * v52) | (*(v41 + ((v52 >> 15) & 0x1FFFE)) << 16);
            v36.i32[2] = v58;
            v37.i32[2] = *(v41 + 2 * v53) | (*(v41 + ((v53 >> 15) & 0x1FFFE)) << 16);
            v37 = vzip2q_s32(vuzp1q_s32(v37, v37), v68);
            v61 = *(v42 + 2 * v60) | (*(v42 + ((v60 >> 15) & 0x1FFFE)) << 16);
            v36 = vuzp1q_s32(v36, v36);
            v87.val[0] = vzip1q_s32(v36, v68);
            v62 = *(v47 + 2 * *v43) | (*(v47 + ((*v43 >> 15) & 0x1FFFE)) << 16);
            v87.val[1].i32[0] = v55 | (v56 << 16);
            v87.val[1].i16[2] = *(v47 + 2 * *(v43 - 2));
            v87.val[1].i16[3] = *(v47 + ((*(v43 - 2) >> 15) & 0x1FFFE));
            v63 = *(v42 + 2 * v59) | (*(v42 + ((v59 >> 15) & 0x1FFFE)) << 16);
            v87.val[1].i32[2] = v51 | (*(v42 + ((v54 >> 15) & 0x1FFFE)) << 16);
            v87.val[1].i16[6] = *(v47 + 2 * *(v43 - 1));
            v87.val[1].i16[7] = *(v47 + ((*(v43 - 1) >> 15) & 0x1FFFE));
            v64 = *(v47 + 2 * v43[1]) | (*(v47 + ((v43[1] >> 15) & 0x1FFFE)) << 16);
            v39 = v46 + 16;
            vst2q_f32(v46, v87);
            v65 = v46 + 8;
            v38 = v40 + 4;
            result = v40 + 8;
            vst2q_f32(v65, *v37.i8);
            v43 += 4;
            v40 += 4;
            v46 = v39;
          }

          while (result <= a9);
        }

        else
        {
          v38 = 0;
          v39 = a11;
        }

        a12 = v67;
        if (v38 < a9)
        {
          do
          {
            LODWORD(v66) = *(v85 + 2 * *(v81[0] + 4 * v38)) | (*(v85 + ((*(v81[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD1(v66) = *(v79 + 2 * *(v75[0] + 4 * v38)) | (*(v79 + ((*(v75[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD2(v66) = v25;
            HIDWORD(v66) = *(v73 + 2 * *(v69[0] + 4 * v38)) | (*(v73 + ((*(v69[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            *v39 = v66;
            v39 += 4;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v32 += a10;
    }

    while (v32 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
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

    v22 = _D0;
  }

  else
  {
    v22 = 32256;
  }

  v24 = *(a2 + 60);
  v25 = *(a6 + 8);
  v26 = *(a3 + 24);
  v66 = v26;
  v63[1] = a1;
  v63[2] = v25;
  LODWORD(v25) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v26) * v24;
  v65 = v25;
  v67 = a13;
  v68 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v27 = *(a2 + 60);
  v28 = *(a7 + 8);
  v29 = *(a3 + 24);
  v60 = v29;
  v57[1] = a1;
  v57[2] = v28;
  LODWORD(v28) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v29) * v27;
  v59 = v28;
  v61 = a13;
  v62 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v39 = vdupq_n_s16(v17);
    v32.i32[0] = v17;
    v33.i32[0] = v22;
    v40 = vdupq_n_s16(v22);
    v51 = v33;
    v52 = v32;
    do
    {
      v53 = v40;
      v54 = v34;
      v55 = v39;
      v56 = v31;
      v64 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v58 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
      v40 = v53;
      v34 = v54;
      v39 = v55;
      v31 = v56;
      if (v63[0])
      {
        _ZF = v57[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        if (a9 >= 4)
        {
          v44 = 0;
          v45 = 4;
          v43 = a11;
          do
          {
            v46 = (v63[0] + 2 * v44);
            LOWORD(v31) = *(v67 + 2 * *v46);
            WORD1(v31) = *(v67 + 2 * v46[1]);
            WORD2(v31) = *(v67 + 2 * *(v63[0] + v45));
            WORD3(v31) = *(v67 + 2 * *(v63[0] + v45 + 2));
            v69.val[0] = vqtbl2q_s8(*(&v31 - 1), xmmword_296B6EE60);
            v47 = (v57[0] + 2 * v44);
            LOWORD(v34) = *(v61 + 2 * *v47);
            WORD1(v34) = *(v61 + 2 * v47[1]);
            WORD2(v34) = *(v61 + 2 * *(v57[0] + v45));
            WORD3(v34) = *(v61 + 2 * *(v57[0] + v45 + 2));
            v69.val[1] = vqtbl2q_s8(*(&v34 - 1), xmmword_296B6EE60);
            vst2q_s16(v43, v69);
            v43 += 16;
            v42 = v44 + 4;
            v45 += 8;
            v48 = v44 + 8;
            v44 += 4;
          }

          while (v48 <= a9);
        }

        else
        {
          v42 = 0;
          v43 = a11;
        }

        if (v42 < a9)
        {
          do
          {
            v49 = v52;
            v49.i16[2] = *(v67 + 2 * *(v63[0] + 2 * v42));
            v50 = v51;
            v50.i16[1] = *(v61 + 2 * *(v57[0] + 2 * v42));
            *v43 = vzip1_s16(vuzp1_s16(v49, v49), v50);
            v43 += 4;
            ++v42;
          }

          while (a9 != v42);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    *&v18 = **a4;
    v17 = v18;
  }

  else
  {
    v17 = 2143289344;
  }

  if (*(*a5 + 24))
  {
    *&v20 = **a5;
    v19 = v20;
  }

  else
  {
    v19 = 2143289344;
  }

  v21 = *(a2 + 60);
  v22 = *(a6 + 8);
  v23 = *(a3 + 24);
  v74 = v23;
  v71[1] = a1;
  v71[2] = v22;
  LODWORD(v22) = *(a3 + 44);
  v72 = *(a3 + 52) + HIDWORD(v23) * v21;
  v73 = v22;
  v75 = a13;
  v76 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v71);
  v24 = *(a2 + 60);
  v25 = *(a7 + 8);
  v26 = *(a3 + 24);
  v68 = v26;
  v65[1] = a1;
  v65[2] = v25;
  LODWORD(v25) = *(a3 + 44);
  v66 = *(a3 + 52) + HIDWORD(v26) * v24;
  v67 = v25;
  v69 = a13;
  v70 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v30 = *(a2 + 56);
  v31 = *(a3 + 52);
  if (*(a3 + 56) + v31 < HIDWORD(v30))
  {
    v33 = *(a3 + 28) * HIDWORD(v30);
    v34 = vdupq_n_s32(v17);
    v28.i32[0] = v17;
    v29.i32[0] = v19;
    v35 = vdupq_n_s32(v19);
    v63 = v29;
    v64 = v28;
    v61 = vuzp1q_s32(v35, v35);
    v62 = vuzp1q_s32(v34, v34);
    do
    {
      v72 = v33 + v31;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v71);
      v66 = v33 + v31;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v65);
      if (v71[0] && v65[0])
      {
        if (a9 >= 4)
        {
          v38 = 0;
          v39 = v75;
          v40 = v69;
          v41 = (v65[0] + 8);
          v42 = (v71[0] + 8);
          v43 = a11;
          do
          {
            v44 = *(v39 + 2 * *(v42 - 2));
            v45 = (*(v42 - 2) >> 15) & 0x1FFFE;
            v46 = *(v39 + 2 * *(v42 - 1));
            v47 = (*(v42 - 1) >> 15) & 0x1FFFE;
            v48 = *v42;
            v49 = v42[1];
            v42 += 4;
            LODWORD(v45) = v44 | (*(v39 + v45) << 16);
            LODWORD(v47) = v46 | (*(v39 + v47) << 16);
            v50 = *(v40 + 2 * *(v41 - 1));
            v51 = *(v40 + ((*(v41 - 1) >> 15) & 0x1FFFE));
            v52 = *(v40 + 2 * *(v41 - 2)) | (*(v40 + ((*(v41 - 2) >> 15) & 0x1FFFE)) << 16);
            v54 = *v41;
            v53 = v41[1];
            v41 += 4;
            v55.i64[0] = __PAIR64__(v47, v45);
            v55.i16[4] = *(v39 + 2 * v48);
            v55.i16[5] = *(v39 + ((v48 >> 15) & 0x1FFFE));
            result = *(v40 + ((v53 >> 15) & 0x1FFFE));
            v55.i16[6] = *(v39 + 2 * v49);
            v55.i16[7] = *(v39 + ((v49 >> 15) & 0x1FFFE));
            v56.i32[0] = v52;
            v56.i32[1] = v50 | (v51 << 16);
            v77.val[0] = vzip2q_s32(v62, v55);
            v56.i16[4] = *(v40 + 2 * v54);
            v56.i16[5] = *(v40 + ((v54 >> 15) & 0x1FFFE));
            v56.i16[6] = *(v40 + 2 * v53);
            v56.i16[7] = *(v40 + ((v53 >> 15) & 0x1FFFE));
            v78.val[0] = vzip1q_s32(v62, v55);
            v78.val[1] = vzip1q_s32(v61, v56);
            v37 = (v43 + 16);
            vst2q_f32(v43, v78);
            v57 = v43 + 8;
            v77.val[1] = vzip2q_s32(v61, v56);
            v36 = v38 + 4;
            vst2q_f32(v57, v77);
            v58 = v38 + 8;
            v38 += 4;
            v43 = v37;
          }

          while (v58 <= a9);
        }

        else
        {
          v36 = 0;
          v37 = a11;
        }

        if (v36 < a9)
        {
          do
          {
            v59 = v64;
            v59.i32[2] = *(v75 + 2 * *(v71[0] + 4 * v36)) | (*(v75 + ((*(v71[0] + 4 * v36) >> 15) & 0x1FFFE)) << 16);
            v60 = v63;
            v60.i32[1] = *(v69 + 2 * *(v65[0] + 4 * v36)) | (*(v69 + ((*(v65[0] + 4 * v36) >> 15) & 0x1FFFE)) << 16);
            *v37++ = vzip1q_s32(vuzp1q_s32(v59, v59), v60);
            ++v36;
          }

          while (a9 != v36);
        }
      }

      a11 = (a11 + a12);
      v31 += a10;
    }

    while (v31 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

__int16 *Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v73 = v21;
  v70[1] = a1;
  v70[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v71 = *(a3 + 52) + HIDWORD(v21) * v19;
  v72 = v20;
  v74 = a13;
  v75 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v70);
  if (*(*a5 + 24))
  {
    _D0 = **a5;
    __asm { FCVT            H0, D0 }

    v22 = _D0;
  }

  else
  {
    v22 = 32256;
  }

  v27 = *(a2 + 60);
  v28 = *(a6 + 8);
  v29 = *(a3 + 24);
  v67 = v29;
  v64[1] = a1;
  v64[2] = v28;
  LODWORD(v28) = *(a3 + 44);
  v65 = *(a3 + 52) + HIDWORD(v29) * v27;
  v66 = v28;
  v68 = a13;
  v69 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
  v30 = *(a2 + 60);
  v31 = *(a7 + 8);
  v32 = *(a3 + 24);
  v61 = v32;
  v58[1] = a1;
  v58[2] = v31;
  LODWORD(v31) = *(a3 + 44);
  v59 = *(a3 + 52) + HIDWORD(v32) * v30;
  v60 = v31;
  v62 = a13;
  v63 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
  v36 = *(a2 + 56);
  v37 = *(a3 + 52);
  if (*(a3 + 56) + v37 < HIDWORD(v36))
  {
    v39 = *(a3 + 28) * HIDWORD(v36);
    v34.i32[0] = v22;
    v40 = vdupq_n_s16(v22);
    v55 = v34;
    do
    {
      v56 = v40;
      v57 = v35;
      v71 = v39 + v37;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v70);
      v65 = v39 + v37;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v59 = v39 + v37;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v58);
      v40 = v56;
      v35 = v57;
      if (v70[0])
      {
        _ZF = v64[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF && v58[0] != 0)
      {
        if (a9 >= 4)
        {
          v46 = 0;
          v47 = 6;
          v45 = a11;
          do
          {
            result = (v68 + 2 * *(v64[0] + v47 - 6));
            v41.i16[0] = *(v74 + 2 * *(v70[0] + v47 - 6));
            v41.i16[1] = *result;
            v41.i16[2] = *(v74 + 2 * *(v70[0] + v47 - 4));
            v41.i16[3] = *(v68 + 2 * *(v64[0] + v47 - 4));
            v48 = *(v74 + 2 * *(v70[0] + v47 - 2));
            v49 = *(v68 + 2 * *(v64[0] + v47 - 2));
            v50 = *(v74 + 2 * *(v70[0] + v47));
            v51 = *(v68 + 2 * *(v64[0] + v47));
            LOWORD(v35) = *(v62 + 2 * *(v58[0] + v47 - 6));
            WORD1(v35) = *(v62 + 2 * *(v58[0] + v47 - 4));
            WORD2(v35) = *(v62 + 2 * *(v58[0] + v47 - 2));
            WORD3(v35) = *(v62 + 2 * *(v58[0] + v47));
            v52 = vqtbl2q_s8(*(&v35 - 1), xmmword_296B6EE60);
            vst2q_s16(v45, *v41.i8);
            v45 += 16;
            v44 = v46 + 4;
            v47 += 8;
            v53 = v46 + 8;
            v46 += 4;
          }

          while (v53 <= a9);
        }

        else
        {
          v44 = 0;
          v45 = a11;
        }

        if (v44 < a9)
        {
          do
          {
            v41.i16[0] = *(v74 + 2 * *(v70[0] + 2 * v44));
            v41.i16[2] = *(v68 + 2 * *(v64[0] + 2 * v44));
            v54 = v55;
            v54.i16[1] = *(v62 + 2 * *(v58[0] + 2 * v44));
            v41 = vzip1_s16(vuzp1_s16(v41, v41), v54);
            *v45 = v41;
            v45 += 4;
            ++v44;
          }

          while (a9 != v44);
        }
      }

      a11 = (a11 + a12);
      v37 += a10;
    }

    while (v37 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

unint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v91 = v21;
  v88[1] = a1;
  v88[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v89 = *(a3 + 52) + HIDWORD(v21) * v19;
  v90 = v20;
  v92 = a13;
  v93 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v88);
  if (*(*a5 + 24))
  {
    *&v23 = **a5;
    v22 = v23;
  }

  else
  {
    v22 = 2143289344;
  }

  v24 = *(a2 + 60);
  v25 = *(a6 + 8);
  v26 = *(a3 + 24);
  v85 = v26;
  v82[1] = a1;
  v82[2] = v25;
  LODWORD(v25) = *(a3 + 44);
  v83 = *(a3 + 52) + HIDWORD(v26) * v24;
  v84 = v25;
  v86 = a13;
  v87 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v82);
  v27 = *(a2 + 60);
  v28 = *(a7 + 8);
  v29 = *(a3 + 24);
  v79 = v29;
  v76[1] = a1;
  v76[2] = v28;
  LODWORD(v28) = *(a3 + 44);
  v77 = *(a3 + 52) + HIDWORD(v29) * v27;
  v78 = v28;
  v80 = a13;
  v81 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v76);
  v32 = *(a2 + 56);
  v33 = *(a3 + 52);
  if (*(a3 + 56) + v33 < HIDWORD(v32))
  {
    v36 = *(a3 + 28) * HIDWORD(v32);
    v31.i32[0] = v22;
    v37 = vdupq_n_s32(v22);
    v74 = vuzp1q_s32(v37, v37);
    v75 = v31;
    do
    {
      v89 = v36 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v88);
      v83 = v36 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v82);
      v77 = v36 + v33;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v76);
      if (v88[0] && v82[0] && v76[0])
      {
        v72 = v36;
        v73 = a12;
        if (a9 >= 4)
        {
          v41 = 0;
          v42 = v92;
          v43 = v86;
          v44 = (v76[0] + 8);
          v45 = (v88[0] + 8);
          v46 = (v82[0] + 8);
          v47 = a11;
          v48 = v80;
          do
          {
            v49 = *(v42 + 2 * *(v45 - 2));
            v50 = (*(v45 - 2) >> 15) & 0x1FFFE;
            v51 = *(v42 + 2 * *(v45 - 1));
            v52 = (*(v45 - 1) >> 15) & 0x1FFFE;
            v53 = *v45;
            v54 = v45[1];
            v45 += 4;
            v55 = *(v43 + 2 * *(v46 - 2));
            v56 = *(v43 + 2 * *(v46 - 1));
            v57 = (*(v46 - 2) >> 15) & 0x1FFFE;
            v58 = (*(v46 - 1) >> 15) & 0x1FFFE;
            v60 = *v46;
            v59 = v46[1];
            v46 += 4;
            LODWORD(v50) = v49 | (*(v42 + v50) << 16);
            v61 = v51 | (*(v42 + v52) << 16);
            v62 = *(v42 + 2 * v53) | (*(v42 + ((v53 >> 15) & 0x1FFFE)) << 16);
            v63 = *(v43 + 2 * v59);
            v64 = *(v42 + 2 * v54) | (*(v42 + ((v54 >> 15) & 0x1FFFE)) << 16);
            LODWORD(v54) = *(v43 + ((v59 >> 15) & 0x1FFFE));
            LODWORD(v53) = v55 | (*(v43 + v57) << 16);
            LODWORD(v52) = v56 | (*(v43 + v58) << 16);
            LODWORD(v59) = *(v48 + 2 * *(v44 - 1));
            LODWORD(v54) = v63 | (v54 << 16);
            v65 = *(v48 + ((*(v44 - 1) >> 15) & 0x1FFFE));
            LODWORD(v57) = *(v48 + 2 * *(v44 - 2)) | (*(v48 + ((*(v44 - 2) >> 15) & 0x1FFFE)) << 16);
            v66 = *v44;
            v67 = v44[1];
            v44 += 4;
            v38.i32[0] = v62;
            v68.i32[0] = v57;
            v38.i32[1] = *(v43 + 2 * v60) | (*(v43 + ((v60 >> 15) & 0x1FFFE)) << 16);
            v38.i64[1] = __PAIR64__(v54, v64);
            v68.i32[1] = v59 | (v65 << 16);
            v68.i16[4] = *(v48 + 2 * v66);
            v68.i16[5] = *(v48 + ((v66 >> 15) & 0x1FFFE));
            v94.val[0].i64[0] = __PAIR64__(v53, v50);
            v68.i16[6] = *(v48 + 2 * v67);
            v68.i16[7] = *(v48 + ((v67 >> 15) & 0x1FFFE));
            v69 = vzip2q_s32(v74, v68);
            v94.val[0].i64[1] = __PAIR64__(v52, v61);
            v94.val[1] = vzip1q_s32(v74, v68);
            v40 = (v47 + 16);
            vst2q_f32(v47, v94);
            v70 = v47 + 8;
            v39 = v41 + 4;
            result = v41 + 8;
            vst2q_f32(v70, *v38.i8);
            v41 += 4;
            v47 = v40;
          }

          while (result <= a9);
        }

        else
        {
          v39 = 0;
          v40 = a11;
        }

        a12 = v73;
        v36 = v72;
        if (v39 < a9)
        {
          do
          {
            v38.i32[0] = *(v92 + 2 * *(v88[0] + 4 * v39)) | (*(v92 + ((*(v88[0] + 4 * v39) >> 15) & 0x1FFFE)) << 16);
            v38.i32[2] = *(v86 + 2 * *(v82[0] + 4 * v39)) | (*(v86 + ((*(v82[0] + 4 * v39) >> 15) & 0x1FFFE)) << 16);
            v71 = v75;
            v71.i32[1] = *(v80 + 2 * *(v76[0] + 4 * v39)) | (*(v80 + ((*(v76[0] + 4 * v39) >> 15) & 0x1FFFE)) << 16);
            v38 = vzip1q_s32(vuzp1q_s32(v38, v38), v71);
            *v40++ = v38;
            ++v39;
          }

          while (a9 != v39);
        }
      }

      a11 = (a11 + a12);
      v33 += a10;
    }

    while (v33 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

__int16 *Read4_NoCompressionLUT<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    _D0 = **a4;
    __asm { FCVT            H0, D0 }

    v18 = _D0;
  }

  else
  {
    v18 = 32256;
  }

  v23 = *(a2 + 60);
  v24 = *(a5 + 8);
  v25 = *(a3 + 24);
  v72 = v25;
  v69[1] = a1;
  v69[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v70 = *(a3 + 52) + HIDWORD(v25) * v23;
  v71 = v24;
  v73 = a13;
  v74 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v69);
  v26 = *(a2 + 60);
  v27 = *(a6 + 8);
  v28 = *(a3 + 24);
  v66 = v28;
  v63[1] = a1;
  v63[2] = v27;
  LODWORD(v27) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v28) * v26;
  v65 = v27;
  v67 = a13;
  v68 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v29 = *(a2 + 60);
  v30 = *(a7 + 8);
  v31 = *(a3 + 24);
  v60 = v31;
  v57[1] = a1;
  v57[2] = v30;
  LODWORD(v30) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v31) * v29;
  v59 = v30;
  v61 = a13;
  v62 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
  v35 = *(a2 + 56);
  v36 = *(a3 + 52);
  if (*(a3 + 56) + v36 < HIDWORD(v35))
  {
    v38 = *(a3 + 28) * HIDWORD(v35);
    v33.i32[0] = v18;
    v39 = vdupq_n_s16(v18);
    v54 = v33;
    do
    {
      v55 = v39;
      v56 = v34;
      v70 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v69);
      v64 = v38 + v36;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v58 = v38 + v36;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
      v39 = v55;
      v34 = v56;
      if (v69[0])
      {
        _ZF = v63[0] == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF && v57[0] != 0)
      {
        if (a9 >= 4)
        {
          v45 = 0;
          v46 = 6;
          v44 = a11;
          do
          {
            LOWORD(v34) = *(v67 + 2 * *(v63[0] + v46 - 6));
            WORD1(v34) = *(v67 + 2 * *(v63[0] + v46 - 4));
            WORD2(v34) = *(v67 + 2 * *(v63[0] + v46 - 2));
            WORD3(v34) = *(v67 + 2 * *(v63[0] + v46));
            v47 = vqtbl2q_s8(*(&v34 - 1), xmmword_296B6EE60);
            result = (v61 + 2 * *(v57[0] + v46 - 6));
            v40.i16[0] = *(v73 + 2 * *(v69[0] + v46 - 6));
            v40.i16[1] = *result;
            v40.i16[2] = *(v73 + 2 * *(v69[0] + v46 - 4));
            v40.i16[3] = *(v61 + 2 * *(v57[0] + v46 - 4));
            v48 = *(v73 + 2 * *(v69[0] + v46 - 2));
            v49 = *(v61 + 2 * *(v57[0] + v46 - 2));
            v50 = *(v73 + 2 * *(v69[0] + v46));
            v51 = *(v61 + 2 * *(v57[0] + v46));
            vst2q_s16(v44, *(&v40 - 2));
            v44 += 16;
            v43 = v45 + 4;
            v46 += 8;
            v52 = v45 + 8;
            v45 += 4;
          }

          while (v52 <= a9);
        }

        else
        {
          v43 = 0;
          v44 = a11;
        }

        if (v43 < a9)
        {
          do
          {
            v53 = v54;
            v53.i16[2] = *(v67 + 2 * *(v63[0] + 2 * v43));
            v40.i16[0] = *(v73 + 2 * *(v69[0] + 2 * v43));
            v40.i16[1] = *(v61 + 2 * *(v57[0] + 2 * v43));
            *v44 = vzip1_s16(vuzp1_s16(v53, v53), v40);
            v44 += 4;
            ++v43;
          }

          while (a9 != v43);
        }
      }

      a11 = (a11 + a12);
      v36 += a10;
    }

    while (v36 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

unint64_t Read4_NoCompressionLUT<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  if (*(*a4 + 24))
  {
    *&v19 = **a4;
    v18 = v19;
  }

  else
  {
    v18 = 2143289344;
  }

  v20 = *(a2 + 60);
  v21 = *(a5 + 8);
  v22 = *(a3 + 24);
  v81 = v22;
  v78[1] = a1;
  v78[2] = v21;
  LODWORD(v21) = *(a3 + 44);
  v79 = *(a3 + 52) + HIDWORD(v22) * v20;
  v80 = v21;
  v82 = a13;
  v83 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v78);
  v23 = *(a2 + 60);
  v24 = *(a6 + 8);
  v25 = *(a3 + 24);
  v75 = v25;
  v72[1] = a1;
  v72[2] = v24;
  LODWORD(v24) = *(a3 + 44);
  v73 = *(a3 + 52) + HIDWORD(v25) * v23;
  v74 = v24;
  v76 = a13;
  v77 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v72);
  v26 = *(a2 + 60);
  v27 = *(a7 + 8);
  v28 = *(a3 + 24);
  v69 = v28;
  v66[1] = a1;
  v66[2] = v27;
  LODWORD(v27) = *(a3 + 44);
  v67 = *(a3 + 52) + HIDWORD(v28) * v26;
  v68 = v27;
  v70 = a13;
  v71 = *(a3 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v66);
  v31 = *(a2 + 56);
  v32 = *(a3 + 52);
  if (*(a3 + 56) + v32 < HIDWORD(v31))
  {
    v34 = *(a3 + 28) * HIDWORD(v31);
    v30.i32[0] = v18;
    v35 = vdupq_n_s32(v18);
    v64 = vuzp1q_s32(v35, v35);
    v65 = v30;
    do
    {
      v79 = v34 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v78);
      v73 = v34 + v32;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v72);
      v67 = v34 + v32;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v66);
      if (v78[0] && v72[0] && v66[0])
      {
        if (a9 >= 4)
        {
          v39 = 0;
          v40 = v82;
          v41 = v76;
          v42 = (v66[0] + 8);
          v43 = (v78[0] + 8);
          v44 = (v72[0] + 8);
          v45 = a11;
          v46 = v70;
          do
          {
            v47 = *(v40 + 2 * *(v43 - 2));
            v48 = (*(v43 - 2) >> 15) & 0x1FFFE;
            v49 = *(v40 + 2 * *(v43 - 1));
            v50 = (*(v43 - 1) >> 15) & 0x1FFFE;
            v51 = *v43;
            v52 = v43[1];
            v43 += 4;
            v53 = *(v41 + 2 * *(v44 - 2)) | (*(v41 + ((*(v44 - 2) >> 15) & 0x1FFFE)) << 16);
            v54 = *(v41 + 2 * *(v44 - 1)) | (*(v41 + ((*(v44 - 1) >> 15) & 0x1FFFE)) << 16);
            v55 = *v44;
            v56 = v44[1];
            v44 += 4;
            v57.i64[0] = __PAIR64__(v54, v53);
            v57.i16[4] = *(v41 + 2 * v55);
            v57.i16[5] = *(v41 + ((v55 >> 15) & 0x1FFFE));
            v57.i16[6] = *(v41 + 2 * v56);
            v57.i16[7] = *(v41 + ((v56 >> 15) & 0x1FFFE));
            v36 = vzip2q_s32(v64, v57);
            v58 = *(v40 + 2 * v51) | (*(v40 + ((v51 >> 15) & 0x1FFFE)) << 16);
            v84.val[0] = vzip1q_s32(v64, v57);
            v59 = *(v46 + 2 * *v42) | (*(v46 + ((*v42 >> 15) & 0x1FFFE)) << 16);
            v84.val[1].i32[0] = v47 | (*(v40 + v48) << 16);
            v84.val[1].i16[2] = *(v46 + 2 * *(v42 - 2));
            v84.val[1].i16[3] = *(v46 + ((*(v42 - 2) >> 15) & 0x1FFFE));
            v60 = *(v40 + 2 * v52) | (*(v40 + ((v52 >> 15) & 0x1FFFE)) << 16);
            v84.val[1].i32[2] = v49 | (*(v40 + v50) << 16);
            v84.val[1].i16[6] = *(v46 + 2 * *(v42 - 1));
            v84.val[1].i16[7] = *(v46 + ((*(v42 - 1) >> 15) & 0x1FFFE));
            v61 = *(v46 + 2 * v42[1]) | (*(v46 + ((v42[1] >> 15) & 0x1FFFE)) << 16);
            v38 = (v45 + 16);
            vst2q_f32(v45, v84);
            v62 = v45 + 8;
            v37 = v39 + 4;
            result = v39 + 8;
            vst2q_f32(v62, *v36.i8);
            v42 += 4;
            v39 += 4;
            v45 = v38;
          }

          while (result <= a9);
        }

        else
        {
          v37 = 0;
          v38 = a11;
        }

        if (v37 < a9)
        {
          do
          {
            v63 = v65;
            v63.i32[2] = *(v76 + 2 * *(v72[0] + 4 * v37)) | (*(v76 + ((*(v72[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36.i32[0] = *(v82 + 2 * *(v78[0] + 4 * v37)) | (*(v82 + ((*(v78[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            v36.i32[1] = *(v70 + 2 * *(v66[0] + 4 * v37)) | (*(v70 + ((*(v66[0] + 4 * v37) >> 15) & 0x1FFFE)) << 16);
            *v38++ = vzip1q_s32(vuzp1q_s32(v63, v63), v36);
            ++v37;
          }

          while (a9 != v37);
        }
      }

      a11 = (a11 + a12);
      v32 += a10;
    }

    while (v32 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

uint64_t Read4_NoCompressionLUT<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, __int16 *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v66 = v21;
  v63[1] = a1;
  v63[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v64 = *(a3 + 52) + HIDWORD(v21) * v19;
  v65 = v20;
  v67 = a13;
  v68 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v22 = *(a2 + 60);
  v23 = *(a5 + 8);
  v24 = *(a3 + 24);
  v60 = v24;
  v57[1] = a1;
  v57[2] = v23;
  LODWORD(v23) = *(a3 + 44);
  v58 = *(a3 + 52) + HIDWORD(v24) * v22;
  v59 = v23;
  v61 = a13;
  v62 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
  v25 = *(a2 + 60);
  v26 = *(a6 + 8);
  v27 = *(a3 + 24);
  v54 = v27;
  v51[1] = a1;
  v51[2] = v26;
  LODWORD(v26) = *(a3 + 44);
  v52 = *(a3 + 52) + HIDWORD(v27) * v25;
  v53 = v26;
  v55 = a13;
  v56 = *(a3 + 60);
  AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v51);
  v28 = *(a2 + 60);
  v29 = *(a7 + 8);
  v30 = *(a3 + 24);
  v48 = v30;
  v45[1] = a1;
  v45[2] = v29;
  LODWORD(v29) = *(a3 + 44);
  v46 = *(a3 + 52) + HIDWORD(v30) * v28;
  v47 = v29;
  v49 = a13;
  v50 = *(a3 + 60);
  result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v45);
  v32 = *(a2 + 56);
  v33 = *(a3 + 52);
  if (*(a3 + 56) + v33 < HIDWORD(v32))
  {
    v35 = *(a3 + 28) * HIDWORD(v32);
    do
    {
      v64 = v35 + v33;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v58 = v35 + v33;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v57);
      v52 = v35 + v33;
      AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v51);
      v46 = v35 + v33;
      result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v45);
      if (v63[0])
      {
        v36 = v57[0] == 0;
      }

      else
      {
        v36 = 1;
      }

      if (!v36 && v51[0] != 0 && v45[0] != 0)
      {
        if (a9 >= 4)
        {
          v41 = 0;
          v42 = 6;
          v40 = a11;
          do
          {
            v69.val[0].i16[0] = *(v67 + 2 * *(v63[0] + v42 - 6));
            v69.val[0].i16[1] = *(v55 + 2 * *(v51[0] + v42 - 6));
            v69.val[0].i16[2] = *(v67 + 2 * *(v63[0] + v42 - 4));
            v69.val[0].i16[3] = *(v55 + 2 * *(v51[0] + v42 - 4));
            v69.val[0].i16[4] = *(v67 + 2 * *(v63[0] + v42 - 2));
            v69.val[0].i16[5] = *(v55 + 2 * *(v51[0] + v42 - 2));
            v69.val[0].i16[6] = *(v67 + 2 * *(v63[0] + v42));
            result = v45[0] + v42;
            v69.val[0].i16[7] = *(v55 + 2 * *(v51[0] + v42));
            v69.val[1].i16[0] = *(v61 + 2 * *(v57[0] + v42 - 6));
            v69.val[1].i16[1] = *(v49 + 2 * *(v45[0] + v42 - 6));
            v69.val[1].i16[2] = *(v61 + 2 * *(v57[0] + v42 - 4));
            v69.val[1].i16[3] = *(v49 + 2 * *(v45[0] + v42 - 4));
            v69.val[1].i16[4] = *(v61 + 2 * *(v57[0] + v42 - 2));
            v69.val[1].i16[5] = *(v49 + 2 * *(v45[0] + v42 - 2));
            v69.val[1].i16[6] = *(v61 + 2 * *(v57[0] + v42));
            v69.val[1].i16[7] = *(v49 + 2 * *(v45[0] + v42));
            vst2q_s16(v40, v69);
            v40 += 16;
            v39 = v41 + 4;
            v42 += 8;
            v43 = v41 + 8;
            v41 += 4;
          }

          while (v43 <= a9);
        }

        else
        {
          v39 = 0;
          v40 = a11;
        }

        if (v39 < a9)
        {
          do
          {
            LOWORD(v44) = *(v67 + 2 * *(v63[0] + 2 * v39));
            WORD1(v44) = *(v61 + 2 * *(v57[0] + 2 * v39));
            WORD2(v44) = *(v55 + 2 * *(v51[0] + 2 * v39));
            HIWORD(v44) = *(v49 + 2 * *(v45[0] + 2 * v39));
            *v40 = v44;
            v40 += 4;
            ++v39;
          }

          while (a9 != v39);
        }
      }

      a11 = (a11 + a12);
      v33 += a10;
    }

    while (v33 + *(a3 + 56) < *(a2 + 60));
  }

  return result;
}

float *Read4_NoCompressionLUT<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned int a10, float *a11, uint64_t a12, uint64_t a13)
{
  v16 = a3;
  v17 = a2;
  v19 = *(a2 + 60);
  v20 = *(a4 + 8);
  v21 = *(a3 + 24);
  v90 = v21;
  v87[1] = a1;
  v87[2] = v20;
  LODWORD(v20) = *(a3 + 44);
  v88 = *(a3 + 52) + HIDWORD(v21) * v19;
  v89 = v20;
  v91 = a13;
  v92 = *(a3 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v87);
  v22 = *(v17 + 60);
  v23 = *(a5 + 8);
  v24 = *(v16 + 24);
  v84 = v24;
  v81[1] = a1;
  v81[2] = v23;
  LODWORD(v23) = *(v16 + 44);
  v82 = *(v16 + 52) + HIDWORD(v24) * v22;
  v83 = v23;
  v85 = a13;
  v86 = *(v16 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v81);
  v25 = *(v17 + 60);
  v26 = *(a6 + 8);
  v27 = *(v16 + 24);
  v78 = v27;
  v75[1] = a1;
  v75[2] = v26;
  LODWORD(v26) = *(v16 + 44);
  v76 = *(v16 + 52) + HIDWORD(v27) * v25;
  v77 = v26;
  v79 = a13;
  v80 = *(v16 + 60);
  AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v75);
  v28 = *(v17 + 60);
  v29 = *(a7 + 8);
  v30 = *(v16 + 24);
  v72 = v30;
  v69[1] = a1;
  v69[2] = v29;
  LODWORD(v29) = *(v16 + 44);
  v70 = *(v16 + 52) + HIDWORD(v30) * v28;
  v71 = v29;
  v73 = a13;
  v74 = *(v16 + 60);
  result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
  v32 = *(v17 + 56);
  v33 = *(v16 + 52);
  if (*(v16 + 56) + v33 < HIDWORD(v32))
  {
    v36 = a10;
    v37 = *(v16 + 28) * HIDWORD(v32);
    do
    {
      v88 = v37 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v87);
      v82 = v37 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v81);
      v76 = v37 + v33;
      AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v75);
      v70 = v37 + v33;
      result = AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(v69);
      if (v87[0] && v81[0] && v75[0] && v69[0])
      {
        v62 = v37;
        v63 = v36;
        v64 = a12;
        v65 = v17;
        v66 = v16;
        if (a9 >= 4)
        {
          v39 = 0;
          v67 = v91;
          v40 = v85;
          v41 = (v69[0] + 8);
          v42 = (v87[0] + 8);
          v43 = v79;
          v44 = (v75[0] + 8);
          v45 = (v81[0] + 8);
          v46 = a11;
          v47 = v73;
          do
          {
            v68 = v39;
            v48 = *(v40 + 2 * *(v45 - 2));
            v49 = (*(v45 - 2) >> 15) & 0x1FFFE;
            v50 = *(v40 + 2 * *(v45 - 1));
            v51 = (*(v45 - 1) >> 15) & 0x1FFFE;
            v53 = *v45;
            v52 = v45[1];
            v45 += 4;
            v54 = *(v43 + 2 * *(v44 - 2));
            v55 = *(v43 + ((*(v44 - 2) >> 15) & 0x1FFFE));
            v56 = *(v43 + 2 * *(v44 - 1));
            v57 = *(v43 + ((*(v44 - 1) >> 15) & 0x1FFFE));
            v58 = *v44;
            v59 = v44[1];
            v44 += 4;
            v93.val[0].i16[0] = *(v67 + 2 * *v42);
            v93.val[0].i16[1] = *(v67 + ((*v42 >> 15) & 0x1FFFE));
            v93.val[0].i16[2] = *(v43 + 2 * v58);
            v93.val[0].i16[3] = *(v43 + ((v58 >> 15) & 0x1FFFE));
            v93.val[0].i16[4] = *(v67 + 2 * v42[1]);
            v93.val[0].i16[5] = *(v67 + ((v42[1] >> 15) & 0x1FFFE));
            v94.val[0].i16[0] = *(v67 + 2 * *(v42 - 2));
            v94.val[0].i16[1] = *(v67 + ((*(v42 - 2) >> 15) & 0x1FFFE));
            v94.val[0].i32[1] = v54 | (v55 << 16);
            v94.val[0].i16[4] = *(v67 + 2 * *(v42 - 1));
            v94.val[0].i16[5] = *(v67 + ((*(v42 - 1) >> 15) & 0x1FFFE));
            v93.val[0].i16[6] = *(v43 + 2 * v59);
            v93.val[0].i16[7] = *(v43 + ((v59 >> 15) & 0x1FFFE));
            v94.val[0].i32[3] = v56 | (v57 << 16);
            v93.val[1].i16[0] = *(v40 + 2 * v53);
            v93.val[1].i16[1] = *(v40 + ((v53 >> 15) & 0x1FFFE));
            v93.val[1].i16[2] = *(v47 + 2 * *v41);
            v93.val[1].i16[3] = *(v47 + ((*v41 >> 15) & 0x1FFFE));
            v93.val[1].i16[4] = *(v40 + 2 * v52);
            v93.val[1].i16[5] = *(v40 + ((v52 >> 15) & 0x1FFFE));
            v94.val[1].i32[0] = v48 | (*(v40 + v49) << 16);
            v94.val[1].i16[2] = *(v47 + 2 * *(v41 - 2));
            v94.val[1].i16[3] = *(v47 + ((*(v41 - 2) >> 15) & 0x1FFFE));
            v93.val[1].i16[6] = *(v47 + 2 * v41[1]);
            v93.val[1].i16[7] = *(v47 + ((v41[1] >> 15) & 0x1FFFE));
            v94.val[1].i32[2] = v50 | (*(v40 + v51) << 16);
            v94.val[1].i16[6] = *(v47 + 2 * *(v41 - 1));
            v94.val[1].i16[7] = *(v47 + ((*(v41 - 1) >> 15) & 0x1FFFE));
            result = v46 + 16;
            v38 = v68 + 4;
            vst2q_f32(v46, v94);
            v60 = v46 + 8;
            v41 += 4;
            vst2q_f32(v60, v93);
            v42 += 4;
            v39 = v68 + 4;
            v46 = result;
          }

          while (v68 + 8 <= a9);
        }

        else
        {
          v38 = 0;
          result = a11;
        }

        v17 = v65;
        v16 = v66;
        a12 = v64;
        v36 = v63;
        v37 = v62;
        if (v38 < a9)
        {
          do
          {
            LODWORD(v61) = *(v91 + 2 * *(v87[0] + 4 * v38)) | (*(v91 + ((*(v87[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD1(v61) = *(v85 + 2 * *(v81[0] + 4 * v38)) | (*(v85 + ((*(v81[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            DWORD2(v61) = *(v79 + 2 * *(v75[0] + 4 * v38)) | (*(v79 + ((*(v75[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            HIDWORD(v61) = *(v73 + 2 * *(v69[0] + 4 * v38)) | (*(v73 + ((*(v69[0] + 4 * v38) >> 15) & 0x1FFFE)) << 16);
            *result = v61;
            result += 4;
            ++v38;
          }

          while (a9 != v38);
        }
      }

      a11 = (a11 + a12);
      v33 += v36;
    }

    while (v33 + *(v16 + 56) < *(v17 + 60));
  }

  return result;
}

_WORD *TileDecoder_PIZ::ExtractPlane(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int32x2_t *a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a4 + 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 104);
  v75[0] = 0;
  v75[1] = 0;
  v77 = 0;
  v76 = 0;
  result = TileDecoder::GetChannelTileInfo(a1, a5, v15, v16, v75);
  v23 = *(a4 + 8);
  v24 = *(v23 + 72);
  if (v24 == 1)
  {
    v25 = 2;
  }

  else
  {
    v25 = 4;
  }

  v26 = HIDWORD(v76);
  if (HIDWORD(v76) && v77)
  {
    v27 = a5[3];
    v28 = v27.i32[1];
    v29 = (v27.i32[1] * *(a1 + 60));
    v30 = v27.i32[0];
    v31 = a5[7].u32[1];
    v32 = *(*(v23 + 40) + 8 * v31);
    v33 = v32[1].u32[1] - 1;
    if (v33 >= v29)
    {
      v33 = (v27.i32[1] * *(a1 + 60));
    }

    if (*(v23 + 104) == 1)
    {
      v34 = (*&v32[v27.u32[0] + 3] + 8 * v33);
    }

    else
    {
      v35 = (v33 * *(v23 + 108)) >> *(v23 + 112);
      if (v35 >= v32[2].i32[1] - 1)
      {
        LODWORD(v35) = v32[2].i32[1] - 1;
      }

      v34 = (*&v32[v27.u32[0] + 3] + 8 * v35);
    }

    v36 = *(a1 + 72);
    if (v36)
    {
      v37 = 0;
      v38 = *v34;
      v39 = *v34;
      v40 = *(a1 + 64) + 8;
      while (1)
      {
        if (!*(*(v40 - 8) + 24))
        {
          v41 = *v40;
          v42 = *(*(*v40 + 40) + 8 * v31);
          v43 = *(v42 + 12) - 1 >= v29 ? (v27.i32[1] * *(a1 + 60)) : *(v42 + 12) - 1;
          v44 = *(v41 + 104);
          v45 = v42 + 8 * v27.u32[0];
          if (v44 == 1)
          {
            v46 = (*(v45 + 24) + 8 * v43);
          }

          else
          {
            v44 = *(v41 + 108);
            v43 *= v44;
            v41 = v43 >> *(v41 + 112);
            v47 = *(v42 + 20) - 1;
            if (v41 < v47)
            {
              v47 = v41;
            }

            v46 = (*(v45 + 24) + 8 * v47);
          }

          if (*v46 == v38)
          {
            break;
          }
        }

        ++v37;
        v40 += 16;
        if (v36 == v37)
        {
          goto LABEL_27;
        }
      }

      if (!*(a2[4] + v37))
      {
        v19.i64[0] = *(v23 + 48);
        *v20.i8 = vmls_s32(v32[2], *v19.i8, v27);
        *v18.i8 = vmin_u32(*v20.i8, *v19.i8);
        if (v24 == 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = 2;
        }

        TileDecoder_PIZ::WaveDecode(v18, v19, v20, v21, v22, v38, v39 + a2[1], v18.u32[0] << v74, a2[2], v41, v43, v44, *(a2 + 12), v25);
        *(a2[4] + v37) = 1;
        v26 = HIDWORD(v76);
        v23 = *(a4 + 8);
        v31 = a5[7].u32[1];
        v28 = HIDWORD(*&a5[3]);
        v30 = a5[3];
      }
    }

LABEL_27:
    v48 = *a2;
    v49 = *(a1 + 60);
    v78[1] = a2[1];
    v78[2] = v23;
    v50 = a5[6].i32[1] + v28 * v49;
    v51 = a5[5].i32[1];
    v79 = v50;
    v80 = v51;
    v81 = v30;
    v82 = v48;
    v83 = v31;
    result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v78);
    v52 = *(a1 + 56);
    v53 = a5[6].u32[1];
    if (a5[7].u32[0] + v53 < HIDWORD(v52))
    {
      v54 = v26;
      v55 = a5[3].i32[1] * HIDWORD(v52);
      do
      {
        v79 = v55 + v53;
        result = AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(v78);
        if (v78[0])
        {
          if (v54 >= 0x10)
          {
            v58 = 0;
            v59 = 16;
            v60 = a6;
            do
            {
              v61 = (v78[0] + 2 * v58);
              result = (v82 + 2 * *(v78[0] + v59 - 6));
              LOWORD(v62) = *(v82 + 2 * *v61);
              WORD1(v62) = *(v82 + 2 * *(v78[0] + v59 - 14));
              WORD2(v62) = *(v82 + 2 * *(v78[0] + v59 - 12));
              WORD3(v62) = *(v82 + 2 * *(v78[0] + v59 - 10));
              WORD4(v62) = *(v82 + 2 * v61[4]);
              WORD5(v62) = *result;
              WORD6(v62) = *(v82 + 2 * *(v78[0] + v59 - 4));
              HIWORD(v62) = *(v82 + 2 * *(v78[0] + v59 - 2));
              LOWORD(v63) = *(v82 + 2 * *(v78[0] + v59));
              WORD1(v63) = *(v82 + 2 * *(v78[0] + v59 + 2));
              WORD2(v63) = *(v82 + 2 * *(v78[0] + v59 + 4));
              WORD3(v63) = *(v82 + 2 * *(v78[0] + v59 + 6));
              WORD4(v63) = *(v82 + 2 * *(v78[0] + v59 + 8));
              WORD5(v63) = *(v82 + 2 * *(v78[0] + v59 + 10));
              WORD6(v63) = *(v82 + 2 * *(v78[0] + v59 + 12));
              HIWORD(v63) = *(v82 + 2 * *(v78[0] + v59 + 14));
              v57 = v60 + 2;
              v56 = v58 + 16;
              v64 = v58 + 32;
              *v60 = v62;
              v60[1] = v63;
              v59 += 32;
              v58 += 16;
              v60 += 2;
            }

            while (v64 <= v54);
          }

          else
          {
            v56 = 0;
            v57 = a6;
          }

          if ((v56 | 4) <= v54)
          {
            v66 = 2 * v56 + 4;
            do
            {
              v67 = (v78[0] + 2 * v56);
              LOWORD(v68) = *(v82 + 2 * *v67);
              WORD1(v68) = *(v82 + 2 * v67[1]);
              WORD2(v68) = *(v82 + 2 * *(v78[0] + v66));
              HIWORD(v68) = *(v82 + 2 * *(v78[0] + v66 + 2));
              *v57++ = v68;
              v65 = v56 + 4;
              v66 += 8;
              v69 = v56 + 8;
              v56 += 4;
            }

            while (v69 <= v54);
          }

          else
          {
            v65 = v56;
          }

          v70 = v54 - v65;
          if (v54 > v65)
          {
            v71 = v82;
            v72 = (v78[0] + 2 * v65);
            do
            {
              v73 = *v72++;
              *v57 = *(v71 + 2 * v73);
              v57 = (v57 + 2);
              --v70;
            }

            while (v70);
          }
        }

        a6 = (a6 + a8);
        v53 += v16;
      }

      while (v53 + a5[7].u32[0] < *(a1 + 60));
    }
  }

  return result;
}

void TileDecoder_PIZ::~TileDecoder_PIZ(void **this)
{
  TileDecoder::~TileDecoder(this);

  JUMPOUT(0x29C25E8F0);
}

uint64_t AddHuffmanTableEntry(uint64_t a1, unint64_t a2, unint64_t a3, int a4, _OWORD *a5)
{
  while (1)
  {
    v10 = *(a1 + 36);
    v11 = v10 - a3;
    if (v10 >= a3)
    {
      v22 = a2 << v11;
      v23 = 1 << v11;
      memset((a1 + v22 + 40), v11 & 0xF | 0x60, 1 << v11);
      *__pattern4 = a4 | (a4 << 16);
      memset_pattern4((*(a1 + 8) + 4 * v22), __pattern4, 4 * v23);
      return 0;
    }

    v12 = a3 - v10;
    v13 = a2 >> (a3 - v10);
    if (*(a1 + 40 + v13) != 15)
    {
      v21 = *a1;
      goto LABEL_13;
    }

    v14 = *(a1 + 24);
    if (v14 < *(a1 + 16) + 1)
    {
      break;
    }

LABEL_8:
    *(a1 + 40 + v13) = 32;
    v17 = v13;
    *(*(a1 + 8) + 4 * v13) = *(a1 + 16);
    *&__pattern4[12] = *(a5 + 12);
    *__pattern4 = *a5;
    v18 = *&__pattern4[20] - v10;
    if (*&__pattern4[20] <= v10)
    {
      v18 = 1;
    }

    *&__pattern4[16] -= v10;
    *&__pattern4[20] = v18;
    HuffmanTable = AllocateHuffmanTable(__pattern4, 0);
    v20 = *(a1 + 16);
    *(*a1 + 8 * v20) = HuffmanTable;
    v21 = *a1;
    if (!*(*a1 + 8 * v20))
    {
      return -5;
    }

    *(a1 + 16) = v20 + 1;
    v12 = a3 - v10;
    v13 = v17;
LABEL_13:
    a2 &= ~(-1 << a3) >> v10;
    a1 = v21[*(*(a1 + 8) + 4 * v13)];
    a3 = v12;
  }

  v15 = 2 * v14;
  if (v15 <= 4)
  {
    v15 = 4;
  }

  v25 = v15;
  v16 = reallocf(*a1, 8 * v15);
  *a1 = v16;
  if (v16)
  {
    v13 = a2 >> (a3 - v10);
    *(a1 + 24) = v25;
    goto LABEL_8;
  }

  return -5;
}

BOOL ReadChannel::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (!*(a1 + 24))
    {
      return *a1 == *a2;
    }

    if (*a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

__n128 AXRLUTStream<unsigned int,(StreamType)1>::load16@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (*a1 + 4 * a2);
  v4 = a1[5];
  result.n128_u32[0] = *(v4 + 2 * *v3) | (*(v4 + ((*v3 >> 15) & 0x1FFFE)) << 16);
  result.n128_u32[1] = *(v4 + 2 * v3[1]) | (*(v4 + ((v3[1] >> 15) & 0x1FFFE)) << 16);
  result.n128_u64[1] = __PAIR64__(*(v4 + 2 * v3[3]) | (*(v4 + ((v3[3] >> 15) & 0x1FFFE)) << 16), *(v4 + 2 * v3[2]) | (*(v4 + ((v3[2] >> 15) & 0x1FFFE)) << 16));
  LODWORD(v6) = *(v4 + 2 * v3[4]) | (*(v4 + ((v3[4] >> 15) & 0x1FFFE)) << 16);
  DWORD1(v6) = *(v4 + 2 * v3[5]) | (*(v4 + ((v3[5] >> 15) & 0x1FFFE)) << 16);
  *(&v6 + 1) = __PAIR64__(*(v4 + 2 * v3[7]) | (*(v4 + ((v3[7] >> 15) & 0x1FFFE)) << 16), *(v4 + 2 * v3[6]) | (*(v4 + ((v3[6] >> 15) & 0x1FFFE)) << 16));
  LODWORD(v7) = *(v4 + 2 * v3[8]) | (*(v4 + ((v3[8] >> 15) & 0x1FFFE)) << 16);
  DWORD1(v7) = *(v4 + 2 * v3[9]) | (*(v4 + ((v3[9] >> 15) & 0x1FFFE)) << 16);
  *(&v7 + 1) = __PAIR64__(*(v4 + 2 * v3[11]) | (*(v4 + ((v3[11] >> 15) & 0x1FFFE)) << 16), *(v4 + 2 * v3[10]) | (*(v4 + ((v3[10] >> 15) & 0x1FFFE)) << 16));
  LODWORD(v8) = *(v4 + 2 * v3[12]) | (*(v4 + ((v3[12] >> 15) & 0x1FFFE)) << 16);
  DWORD1(v8) = *(v4 + 2 * v3[13]) | (*(v4 + ((v3[13] >> 15) & 0x1FFFE)) << 16);
  DWORD2(v8) = *(v4 + 2 * v3[14]) | (*(v4 + ((v3[14] >> 15) & 0x1FFFE)) << 16);
  HIDWORD(v8) = *(v4 + 2 * v3[15]) | (*(v4 + ((v3[15] >> 15) & 0x1FFFE)) << 16);
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

const char *__cdecl axr_error_get_name(axr_error_t error)
{
  if (-error <= 0xE)
  {
    return axr_error_get_name_kErrorNames[-error];
  }

  else
  {
    return "<Unknown axr_error_t>";
  }
}

size_t axr_flags_get_name(char *buf, size_t len, axr_flags_t flags)
{
  if (flags == axr_flags_default)
  {
    return snprintf(buf, len, "%s", "axr_flags_default");
  }

  v6 = 0;
  v7 = 1;
  v8 = 1u;
  while (1)
  {
    if ((v7 & flags) != 0)
    {
      if (v6)
      {
        v6 += snprintf(&buf[v6], len - v6, " | %s", axr_flags_get_name_kFlagNames[v8]);
      }

      else
      {
        v6 = snprintf(buf, len, "%s", axr_flags_get_name_kFlagNames[v8]);
      }

      if (v6 >= len)
      {
        break;
      }
    }

    v7 *= 2;
    if (++v8 == 4)
    {
      if ((flags & 0xFFFFFFFFFFFFFFF0) != 0)
      {
        v6 += snprintf(&buf[v6], len - v6, "  Error: <Unknown axr_flags_t> 0x%llx", flags & 0xFFFFFFFFFFFFFFF0);
      }

      return v6;
    }
  }

  return v6;
}

const char *__cdecl axr_compression_get_name(axr_compression_t compressionType)
{
  if (compressionType <= axr_compression_b44a)
  {
    return axr_compression_get_name_kCompressionMethodNames[compressionType];
  }

  else
  {
    return "<Invalid compression style>";
  }
}

const char *__cdecl axr_type_get_name(axr_type_t type)
{
  if (type <= axr_type_float)
  {
    return kSampleTypeNames[type];
  }

  else
  {
    return "<invalid axr_type_t>";
  }
}

const char *__cdecl axr_property_flags_get_name(axr_property_flags_t flags)
{
  if (flags <= axr_property_flags_part_info_v1 && (flags & 0xFF00) <= 0x100)
  {
    return kPropertiesFlagsNames[flags | ((flags & 0xFF00) >> 7)];
  }

  else
  {
    return "<invalid axr_property_flags_t>";
  }
}