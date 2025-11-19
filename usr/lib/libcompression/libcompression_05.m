uint64_t BrotliStoreMetaBlockTrivial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = MEMORY[0x2A1C7C4A8]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v41 = *MEMORY[0x29EDCA608];
  v29 = *(v23 + 72);
  StoreCompressedMetaBlockHeader(v14, v24, a10, a11);
  bzero(v34, 0x408uLL);
  v34[129] = 0x7FF0000000000000;
  bzero(v32, 0xB08uLL);
  v33 = 0x7FF0000000000000;
  bzero(v30, 0x888uLL);
  v31 = 0x7FF0000000000000;
  BuildHistograms(v21, v19, v17, v13, a9, v34, v32, v30);
  v25 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v25 + 13;
  result = BrotliAllocate(v22);
  if (!*(v22 + 24))
  {
    v27 = result;
    BuildAndStoreHuffmanTree(v34, 0x100uLL, 256, result, v40, v39, a10, a11);
    BuildAndStoreHuffmanTree(v32, 0x2C0uLL, 704, v27, v38, v37, a10, a11);
    BuildAndStoreHuffmanTree(v30, 0x8CuLL, v29, v27, v36, v35, a10, a11);
    BrotliFree(v22, v27);
    result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v40, v39, v38, v37, v36, v35, a10, a11);
    if (v15)
    {
      v28 = *a10 + 7;
      *a10 = v28 & 0xFFFFFFF8;
      *(a11 + (v28 >> 3)) = 0;
    }
  }

  return result;
}

uint64_t BuildHistograms(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 0;
    v9 = *(a7 + 2816);
    do
    {
      v10 = (a4 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      ++*(a7 + 4 * v13);
      *(a7 + 2816) = ++v9;
      if (v12)
      {
        v15 = *(a6 + 1024) + 1;
        do
        {
          ++*(a6 + 4 * *(result + (a2 & a3)));
          *(a6 + 1024) = v15;
          ++a2;
          ++v15;
          --v12;
        }

        while (v12);
      }

      v16 = v11 & 0x1FFFFFF;
      if (v16)
      {
        if (v13 >= 0x80)
        {
          ++*(a8 + 4 * (v14 & 0x3FF));
          ++*(a8 + 2176);
        }
      }

      a2 += v16;
      ++v8;
    }

    while (v8 != a5);
  }

  return result;
}

unint64_t BuildAndStoreHuffmanTree(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v14 = result;
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v42 = 0u;
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (*(result + 4 * v15))
      {
        if (v16 > 3)
        {
          if (v16 != 4)
          {
            break;
          }
        }

        else
        {
          *(&v41 + v16) = v15;
        }

        ++v16;
      }

      ++v15;
    }

    while (a2 != v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = 64 - __clz(a3 - 1);
  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 - 1;
  if (v16 <= 1)
  {
    v20 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v20 += 4;
    *a7 = v20;
    v21 = v41;
    *(a8 + (v20 >> 3)) = (v41 << (v20 & 7)) | *(a8 + (v20 >> 3));
    *a7 = v20 + v18;
    a5[v21] = 0;
    *(a6 + 2 * v21) = 0;
    return result;
  }

  bzero(a5, a2);
  BrotliCreateHuffmanTree(v14, a2, 15, a4, a5);
  result = BrotliConvertBitDepthsToSymbols(a5, a2, a6);
  if (v16 <= 4)
  {
    v22 = 0;
    v23 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    *a7 = v23 + 2;
    *(a8 + ((v23 + 2) >> 3)) = (v19 << ((v23 + 2) & 7)) | *(a8 + ((v23 + 2) >> 3));
    v24 = v23 + 4;
    *a7 = v24;
    v25 = &v41 + 8;
    do
    {
      v26 = v22 + 1;
      if (v22 + 1 < v16)
      {
        v27 = *(&v41 + v22);
        v28 = v25;
        v29 = v19;
        do
        {
          v30 = *v28;
          result = a5[v27];
          if (a5[*v28] < result)
          {
            *v28 = v27;
            *(&v41 + v22) = v30;
            v27 = v30;
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      --v19;
      v25 += 8;
      ++v22;
    }

    while (v26 != v16);
    v31 = v41;
    v32 = v24 >> 3;
    v33 = v41 << (v24 & 7);
    v34 = v24 + v18;
    if (v16 == 3)
    {
      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      v35 = v42;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
      v34 += v18;
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (v35 << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    else
    {
      if (v16 != 2)
      {
        *(a8 + v32) = v33 | *(a8 + v32);
        *a7 = v34;
        v37 = v42;
        *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
        v38 = v34 + v18;
        *a7 = v38;
        *(a8 + (v38 >> 3)) = (v37 << (v38 & 7)) | *(a8 + (v38 >> 3));
        v39 = v38 + v18;
        *a7 = v39;
        *(a8 + (v39 >> 3)) = (*(&v42 + 1) << (v39 & 7)) | *(a8 + (v39 >> 3));
        v40 = v39 + v18;
        *a7 = v40;
        *(a8 + (v40 >> 3)) = ((a5[v31] == 1) << (v40 & 7)) | *(a8 + (v40 >> 3));
        v36 = v40 + 1;
        goto LABEL_33;
      }

      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    v36 = v34 + v18;
LABEL_33:
    *a7 = v36;
    return result;
  }

  return BrotliStoreHuffmanTree(a5, a2, a4, a7, a8);
}

uint64_t StoreDataWithHuffmanCodes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
{
  if (a5)
  {
    v13 = 0;
    v14 = *a12;
    do
    {
      v15 = (a4 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v15 + 6);
      v20 = *(v15 + 7);
      v21 = *(a8 + v19);
      *(a13 + (v14 >> 3)) = (*(a9 + 2 * v19) << (v14 & 7)) | *(a13 + (v14 >> 3));
      v22 = v14 + v21;
      *a12 = v22;
      LOWORD(v23) = v16;
      if (v16 >= 6)
      {
        if (v16 > 0x81)
        {
          if (v16 > 0x841)
          {
            if (v16 >> 1 >= 0xC21)
            {
              if (v16 < 0x5842)
              {
                LOWORD(v23) = 22;
              }

              else
              {
                LOWORD(v23) = 23;
              }
            }

            else
            {
              LOWORD(v23) = 21;
            }
          }

          else
          {
            LODWORD(v23) = (__clz(v16 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v24 = (__clz(v16 - 2) ^ 0x1F) - 1;
          v23 = ((v16 - 2) >> v24) + 2 * v24 + 2;
        }
      }

      v25 = HIBYTE(v17) & 0x80 | (v17 >> 25);
      v26 = v17 & 0x1FFFFFF;
      v27 = (v26 + v25);
      if (v27 > 9)
      {
        if (v27 > 0x85)
        {
          v30 = (__clz(v27 - 70) ^ 0x1F) + 12;
          if (v27 <= 0x845)
          {
            LOWORD(v28) = v30;
          }

          else
          {
            LOWORD(v28) = 23;
          }
        }

        else
        {
          v29 = (__clz(v27 - 6) ^ 0x1F) - 1;
          v28 = ((v27 - 6) >> v29) + 2 * v29 + 4;
        }
      }

      else
      {
        LOWORD(v28) = v26 + v25 - 2;
      }

      v31 = 4 * v23;
      v32 = *(&kBrotliInsExtra + v31);
      v33 = 4 * v28;
      v34 = ((v27 - *(&kBrotliCopyBase + v33)) << v32) | (v16 - *(&kBrotliInsBase + v31));
      v35 = (*(&kBrotliCopyExtra + v33) + v32);
      *(a13 + (v22 >> 3)) = (v34 << (v22 & 7)) | *(a13 + (v22 >> 3));
      v14 = v22 + v35;
      *a12 = v14;
      if (v16)
      {
        do
        {
          v36 = *(result + (a2 & a3));
          v37 = *(a6 + v36);
          *(a13 + (v14 >> 3)) = (*(a7 + 2 * v36) << (v14 & 7)) | *(a13 + (v14 >> 3));
          v14 += v37;
          *a12 = v14;
          ++a2;
          --v16;
        }

        while (v16);
      }

      if (v26)
      {
        if (v19 >= 0x80)
        {
          v38 = *(a10 + (v20 & 0x3FF));
          *(a13 + (v14 >> 3)) = (*(a11 + 2 * (v20 & 0x3FF)) << (v14 & 7)) | *(a13 + (v14 >> 3));
          *a12 = v14 + v38;
          *(a13 + ((v14 + v38) >> 3)) = (v18 << ((v14 + v38) & 7)) | *(a13 + ((v14 + v38) >> 3));
          v14 += v38 + (v20 >> 10);
          *a12 = v14;
        }
      }

      a2 += v26;
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

uint64_t BrotliStoreMetaBlockFast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = MEMORY[0x2A1C7C4A8]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v51 = *MEMORY[0x29EDCA608];
  v24 = *(v23 + 72);
  StoreCompressedMetaBlockHeader(v14, v25, a10, a11);
  v26 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v26 + 13;
  if (a9 > 0x80)
  {
    bzero(v36, 0x408uLL);
    v38 = 0x7FF0000000000000;
    bzero(v48, 0xB08uLL);
    v50 = 0x7FF0000000000000;
    bzero(v45, 0x888uLL);
    v47 = 0x7FF0000000000000;
    BuildHistograms(v21, v19, v17, v13, a9, v36, v48, v45);
    result = BrotliBuildAndStoreHuffmanTreeFast(v22, v36, *v37, 8, v44, v43, a10, a11);
    if (!*(v22 + 24))
    {
      result = BrotliBuildAndStoreHuffmanTreeFast(v22, v48, *v49, 10, v42, v41, a10, a11);
      if (!*(v22 + 24))
      {
        result = BrotliBuildAndStoreHuffmanTreeFast(v22, v45, *v46, (__clz(v24 - 1) ^ 0x1F) + 1, v40, v39, a10, a11);
        if (!*(v22 + 24))
        {
          result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v44, v43, v42, v41, v40, v39, a10, a11);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    bzero(v48, 0x400uLL);
    if (a9)
    {
      v27 = 0;
      v28 = 0;
      v29 = v19;
      do
      {
        v30 = (v13 + 16 * v27);
        v31 = *v30;
        if (v31)
        {
          v32 = *v30;
          do
          {
            ++v48[*(v21 + (v29++ & v17))];
            --v32;
          }

          while (v32);
        }

        v28 += v31;
        v29 += v30[1] & 0x1FFFFFF;
        ++v27;
      }

      while (v27 != a9);
    }

    else
    {
      v28 = 0;
    }

    result = BrotliBuildAndStoreHuffmanTreeFast(v22, v48, v28, 8, v41, v45, a10, a11);
    if (!*(v22 + 24))
    {
      v34 = *a10;
      *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      *a10 = v34 + 56;
      *(a11 + ((v34 + 56) >> 3)) = *(a11 + ((v34 + 56) >> 3));
      *a10 = v34 + 59;
      *(a11 + ((v34 + 59) >> 3)) = (57269251 << ((v34 + 59) & 7)) | *(a11 + ((v34 + 59) >> 3));
      *a10 = v34 + 87;
      result = StoreDataWithHuffmanCodes(v21, v19, v17, v13, a9, v41, v45, &kStaticCommandCodeDepth, &kStaticCommandCodeBits, &kStaticDistanceCodeDepth, &kStaticDistanceCodeBits, a10, a11);
LABEL_16:
      if (v15)
      {
        v35 = *a10 + 7;
        *a10 = v35 & 0xFFFFFFF8;
        *(a11 + (v35 >> 3)) = 0;
      }
    }
  }

  return result;
}

void *BrotliStoreUncompressedMetaBlock(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = a5;
  v12 = a4 & a3;
  v13 = *a6;
  *(a7 + (*a6 >> 3)) = *(a7 + (*a6 >> 3));
  if (a5 == 1 || (v14 = __clz(a5 - 1) ^ 0x1F, v14 <= 0xE))
  {
    v15 = 4;
  }

  else
  {
    v15 = (v14 + 4) >> 2;
  }

  *(a7 + ((v13 + 1) >> 3)) = ((v15 - 4) << ((v13 + 1) & 7)) | *(a7 + ((v13 + 1) >> 3));
  v16 = v13 + 3;
  *(a7 + (v16 >> 3)) = ((a5 - 1) << (v16 & 7)) | *(a7 + (v16 >> 3));
  v17 = v16 + 4 * v15;
  *(a7 + (v17 >> 3)) = (1 << (v17 & 7)) | *(a7 + (v17 >> 3));
  v18 = v17 + 8;
  v19 = v18 & 0xFFFFFFF8;
  v20 = (a7 + (v19 >> 3));
  *v20 = 0;
  v21 = a4 + 1;
  if (v12 + a5 <= a4 + 1)
  {
    v23 = v18 >> 3;
  }

  else
  {
    v22 = v21 - v12;
    memcpy(v20, (a2 + v12), v21 - v12);
    v12 = 0;
    v19 += 8 * v22;
    v9 -= v22;
    v23 = v19 >> 3;
  }

  result = memcpy((a7 + v23), (a2 + v12), v9);
  v25 = v19 + 8 * v9;
  *a6 = v25;
  *(a7 + (v25 >> 3)) = 0;
  if (a1)
  {
    *(a7 + (v25 >> 3)) = 1 << (v19 & 7);
    *(a7 + ((v25 + 1) >> 3)) = (1 << ((v25 + 1) & 7)) | *(a7 + ((v25 + 1) >> 3));
    v26 = v25 + 9;
    *a6 = v26 & 0xFFFFFFF8;
    *(a7 + (v26 >> 3)) = 0;
  }

  return result;
}

uint64_t StoreVarLenUint8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v3 = __clz(result) ^ 0x1F;
    v4 = *a2;
    *(a3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(a3 + (*a2 >> 3));
    *a2 = v4 + 1;
    *(a3 + ((v4 + 1) >> 3)) = (v3 << ((v4 + 1) & 7)) | *(a3 + ((v4 + 1) >> 3));
    v4 += 4;
    *a2 = v4;
    *(a3 + (v4 >> 3)) = (((-1 << v3) + result) << (v4 & 7)) | *(a3 + (v4 >> 3));
    v5 = v4 + v3;
  }

  else
  {
    v6 = *a2;
    *(a3 + (*a2 >> 3)) = *(a3 + (*a2 >> 3));
    v5 = v6 + 1;
  }

  *a2 = v5;
  return result;
}

unint64_t smb_lz77_decode_buffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 15;
  if (a2 > 0xF)
  {
    v4 = a2;
  }

  if (a4 < 4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + v4 - 15;
  v10 = 1;
  v11 = 4;
  do
  {
    v12 = *(a3 + v7);
    v7 += 36;
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = v7 > a4;
    }

    v14 = v8 + 32;
    if (v13 || v14 > a2)
    {
      v16 = 1;
      while (1)
      {
        if (v12 < 0)
        {
          v7 = v11 + 2;
          if (v11 + 2 > a4)
          {
            if (v11 == a4)
            {
              return v8;
            }

            else
            {
              return 0;
            }
          }

          v17 = *(a3 + v11);
          v18 = v17 & 7;
          if ((v17 & 7) == 7)
          {
            if (v10 == 1)
            {
              if (v7 >= a4)
              {
                return 0;
              }

              v19 = *(a3 + v7);
              v7 = v11 + 3;
              v10 = v19 | 0x100;
            }

            v20 = v10 & 0xF;
            if (v20 == 15)
            {
              if (v7 >= a4)
              {
                return 0;
              }

              v21 = v7 + 1;
              v22 = *(a3 + v7);
              if (v22 == 255)
              {
                v23 = v7 + 3;
                if (v7 + 3 > a4)
                {
                  return 0;
                }

                v24 = *(a3 + v21);
                if (!*(a3 + v21))
                {
                  v25 = v7 + 7;
                  if (v25 > a4)
                  {
                    return 0;
                  }

                  v24 = *(a3 + v23);
                  v23 = v25;
                }

                v26 = v24 >= 0x16;
                v22 = v24 - 22;
                if (!v26)
                {
                  return 0;
                }
              }

              else
              {
                v23 = v7 + 1;
              }

              v20 = v22 + 15;
              v7 = v23;
            }

            v10 >>= 4;
            v18 = v20 + 7;
          }

          v27 = (v17 >> 3) + 1;
          if (v8 < v27)
          {
            return 0;
          }

          v28 = v18 + 3;
          v29 = (a1 + v8);
          v30 = a1 + v8 + v28;
          if (v17 < 0x78 || v30 > v9)
          {
            if (v28 > a2 - v8)
            {
              return 0;
            }

            do
            {
              *v29 = v29[-v27];
              ++v29;
            }

            while (v29 < v30);
          }

          else
          {
            do
            {
              *v29 = *&v29[-v27];
              v29 += 16;
            }

            while (v29 < v30);
          }

          v8 += v28;
        }

        else
        {
          v5 = 0;
          if (v11 >= a4 || a2 <= v8)
          {
            return v5;
          }

          v7 = v11 + 1;
          *(a1 + v8++) = *(a3 + v11);
        }

        v12 *= 2;
        ++v16;
        v11 = v7;
        if (v16 == 33)
        {
          goto LABEL_46;
        }
      }
    }

    v31 = *(a3 + v11 + 16);
    v32 = (a1 + v8);
    *v32 = *(a3 + v11);
    v32[1] = v31;
    v8 = v14;
LABEL_46:
    v5 = 0;
    v11 = v7 + 4;
  }

  while (v7 + 4 <= a4);
  return v5;
}

uint64_t smb_lz77_encode_buffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a4 <= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = a4;
  }

  bzero(a5, 0x10000uLL);
  if (a2 < 0x12)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = v10 - 7;
  v15 = a2 - 1;
  v16 = 256;
  v17 = 1;
  v18 = 4;
  while (2)
  {
    v19 = 8 - 8 * v12;
    for (result = v18; ; ++result)
    {
      if (HIDWORD(v17))
      {
        *(a1 + v13) = v17;
        v13 = result;
        result += 4;
        v17 = 1;
      }

      v17 *= 2;
      if (v12 + 4 <= a4)
      {
        break;
      }

      if (a4 == v12)
      {
        do
        {
          v47 = v17 | 1;
          v48 = HIDWORD(v17);
          v17 = 2 * (v17 | 1);
        }

        while (!v48);
        *(a1 + v13) = v47;
        do
        {
          v49 = v16;
          v16 *= 16;
        }

        while (v49 < 0x100);
        *(a1 + v15) = (v49 >> 4) | v16;
        return result;
      }

      v20 = *(a3 + v12++);
      *(a1 + result) = v20;
      v21 = result + 15;
      v19 -= 8;
      if (v21 > a2)
      {
        return 0;
      }
    }

    v22 = *(a3 + v12);
    v23 = v22 >> 8;
    v24 = (-1640531535 * (v22 & 0xFFFFFF)) >> 18;
    v25 = (-1640531535 * (v22 >> 8)) >> 18;
    v26 = *(a5 + v24);
    v27 = *(a5 + v25);
    v28 = v12 & 0xFFFFE000 | v26 & 0x1FFF;
    v29 = v12 & 0xFFFFE000 | v27 & 0x1FFF;
    if (v12 <= v28)
    {
      v28 = (v28 - 0x2000);
    }

    else
    {
      v28 = v28;
    }

    if (v12 < v29)
    {
      LODWORD(v29) = v29 - 0x2000;
    }

    *(a5 + v24) = v12 & 0x1FFF | (v22 << 13);
    if ((v22 & 0x7FFFF) != v26 >> 13 || (v12 > v28 ? (v30 = v12 >= v14) : (v30 = 1), v30))
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *(a3 + v35 + v12);
        v34 = *(a3 + v28 + v34);
        if (v36 != v34)
        {
          break;
        }

        v35 += 8;
        v34 = v35;
        if (v12 + v35 >= v14)
        {
          goto LABEL_26;
        }
      }

      LODWORD(v34) = v35 + (__clz(__rbit64(v34 ^ v36)) >> 3);
    }

LABEL_26:
    if (v27 >> 13 != ((v22 >> 8) & 0x7FFFF))
    {
      goto LABEL_46;
    }

    if (v12 + 1 >= v14)
    {
      LODWORD(v31) = 0;
LABEL_36:
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = *(a3 + v32 + v12 + 1);
        v31 = *(a3 + v29 + v31);
        if (v33 != v31)
        {
          break;
        }

        v32 += 8;
        v31 = v32;
        if (v12 + v32 + 1 >= v14)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v31) = v32 + (__clz(__rbit64(v31 ^ v33)) >> 3);
      if (!v29)
      {
        goto LABEL_44;
      }
    }

    v37 = v29 - 1;
    if (*(a3 + v12) == *(a3 + v37) && v34 <= v31)
    {
      LODWORD(v34) = v31 + 1;
      LOWORD(v28) = v37;
      goto LABEL_46;
    }

LABEL_44:
    if (v34 < v31)
    {
      v18 = result + 1;
      *(a1 + result) = *(a3 + v12++);
      goto LABEL_69;
    }

LABEL_46:
    if (v34 > 2)
    {
      v40 = v34 - 3;
      if ((v34 - 3) >= 7)
      {
        v41 = 7;
      }

      else
      {
        v41 = v34 - 3;
      }

      *(a5 + v25) = (v12 + 1) & 0x1FFF | (v23 << 13);
      *(a1 + result) = v41 - 8 * v28 - v19;
      v12 += v34;
      v18 = result + 2;
      v17 |= 1uLL;
      if (v40 >= 7)
      {
        if (v16 >= 0x100)
        {
          *(a1 + v15) = (16 * v16) | (v16 >> 4);
          v15 = result + 2;
          v18 = result + 3;
          v16 = 1;
        }

        v42 = v34 - 10;
        if ((v34 - 10) >= 0xF)
        {
          v42 = 15;
        }

        v16 = v42 | (16 * v16);
        if ((v34 - 10) >= 0xF)
        {
          v43 = v34 - 25;
          if ((v34 - 25) >= 0xFF)
          {
            v44 = -1;
          }

          else
          {
            v44 = v34 - 25;
          }

          *(a1 + v18) = v44;
          if (v43 >= 0xFF)
          {
            v45 = v43 >= 0xFFEA;
            if (v43 >= 0xFFEA)
            {
              v46 = 0;
            }

            else
            {
              v46 = v34 - 3;
            }

            *(a1 + v18 + 1) = v46;
            if (v45)
            {
              *(a1 + v18 + 3) = v40;
              v18 += 7;
            }

            else
            {
              v18 += 3;
            }
          }

          else
          {
            ++v18;
          }
        }
      }
    }

    else
    {
      v39 = *(a3 + v12++);
      v18 = result + 1;
      *(a1 + result) = v39;
    }

LABEL_69:
    result = 0;
    if (v18 + 14 <= a2)
    {
      continue;
    }

    return result;
  }
}

void BrotliPopulationCostLiteral(uint64_t a1)
{
  v35[5] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 1024);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 256; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v35[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v23 = v12 - v18;
        v24 = (v23 + 0.5);
        v15 = v15 + v19 * v23;
        if (v24 >= 0xF)
        {
          v24 = 15;
        }

        if (v24 > v16)
        {
          v16 = v24;
        }

        ++*(v33 + v24);
        ++v14;
      }

      else
      {
        if (v14 == 255)
        {
          goto LABEL_47;
        }

        v20 = 255 - v14;
        v21 = 1;
        do
        {
          if (*(a1 + 4 * v14 + 4 * v21))
          {
            break;
          }

          ++v21;
          --v20;
        }

        while (v20);
        v14 += v21;
        if (v14 == 256)
        {
LABEL_47:
          v25 = 0;
          v26 = 0;
          HIDWORD(v34) = v13;
          v27 = 0.0;
          do
          {
            v28 = *(v33 + v25);
            if (v28 > 0xFF)
            {
              v30 = v28;
              v29 = log2(v28);
            }

            else
            {
              v29 = kBrotliLog2Table[v28];
              v30 = v28;
            }

            v31 = *(v33 + v25 + 4);
            if (v31 > 0xFF)
            {
              v32 = log2(v31);
            }

            else
            {
              v32 = kBrotliLog2Table[v31];
            }

            v25 += 8;
            v26 += v28 + v31;
            v27 = v27 - v30 * v29 - v31 * v32;
          }

          while ((v25 - 8) < 0x40);
          if (v26 >= 0x100)
          {
            log2(v26);
          }

          return;
        }

        v22 = v21 - 2;
        if (v21 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v22 > 7;
            v22 >>= 3;
          }

          while (v5);
        }

        else
        {
          LODWORD(v33[0]) += v21;
        }
      }

      if (v14 >= 0x100)
      {
        goto LABEL_47;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v33 + j) = *(a1 + 4 * v35[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v33 + v8);
      v10 = v7;
      do
      {
        v11 = *(v33 + v10);
        if (v11 > v9)
        {
          *(v33 + v10) = v9;
          *(v33 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

void BrotliPopulationCostCommand(uint64_t a1)
{
  v37[5] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 2816);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 704; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v37[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v24 = v12 - v18;
        v25 = (v24 + 0.5);
        v15 = v15 + v19 * v24;
        if (v25 >= 0xF)
        {
          v25 = 15;
        }

        if (v25 > v16)
        {
          v16 = v25;
        }

        ++*(v35 + v25);
        ++v14;
        goto LABEL_50;
      }

      if (v14 > 0x2BE)
      {
        if (++v14 == 704)
        {
          goto LABEL_51;
        }

        v20 = 1;
      }

      else
      {
        v20 = 704 - v14;
        v21 = v14 - 703;
        v22 = 1;
        while (!*(a1 + 4 * v14 + 4 * v22))
        {
          ++v22;
          if (__CFADD__(v21++, 1))
          {
            goto LABEL_46;
          }
        }

        v20 = v22;
LABEL_46:
        v14 += v20;
        if (v14 == 704)
        {
LABEL_51:
          v27 = 0;
          v28 = 0;
          HIDWORD(v36) = v13;
          v29 = 0.0;
          do
          {
            v30 = *(v35 + v27);
            if (v30 > 0xFF)
            {
              v32 = v30;
              v31 = log2(v30);
            }

            else
            {
              v31 = kBrotliLog2Table[v30];
              v32 = v30;
            }

            v33 = *(v35 + v27 + 4);
            if (v33 > 0xFF)
            {
              v34 = log2(v33);
            }

            else
            {
              v34 = kBrotliLog2Table[v33];
            }

            v27 += 8;
            v28 += v30 + v33;
            v29 = v29 - v32 * v31 - v33 * v34;
          }

          while ((v27 - 8) < 0x40);
          if (v28 >= 0x100)
          {
            log2(v28);
          }

          return;
        }

        v26 = v20 - 2;
        if (v20 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v26 > 7;
            v26 >>= 3;
          }

          while (v5);
          goto LABEL_50;
        }
      }

      LODWORD(v35[0]) += v20;
LABEL_50:
      if (v14 >= 0x2C0)
      {
        goto LABEL_51;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v35 + j) = *(a1 + 4 * v37[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v35 + v8);
      v10 = v7;
      do
      {
        v11 = *(v35 + v10);
        if (v11 > v9)
        {
          *(v35 + v10) = v9;
          *(v35 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

void BrotliPopulationCostDistance(uint64_t a1)
{
  v37[5] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 2176);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 544; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v37[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v24 = v12 - v18;
        v25 = (v24 + 0.5);
        v15 = v15 + v19 * v24;
        if (v25 >= 0xF)
        {
          v25 = 15;
        }

        if (v25 > v16)
        {
          v16 = v25;
        }

        ++*(v35 + v25);
        ++v14;
        goto LABEL_50;
      }

      if (v14 > 0x21E)
      {
        if (++v14 == 544)
        {
          goto LABEL_51;
        }

        v20 = 1;
      }

      else
      {
        v20 = 544 - v14;
        v21 = v14 - 543;
        v22 = 1;
        while (!*(a1 + 4 * v14 + 4 * v22))
        {
          ++v22;
          if (__CFADD__(v21++, 1))
          {
            goto LABEL_46;
          }
        }

        v20 = v22;
LABEL_46:
        v14 += v20;
        if (v14 == 544)
        {
LABEL_51:
          v27 = 0;
          v28 = 0;
          HIDWORD(v36) = v13;
          v29 = 0.0;
          do
          {
            v30 = *(v35 + v27);
            if (v30 > 0xFF)
            {
              v32 = v30;
              v31 = log2(v30);
            }

            else
            {
              v31 = kBrotliLog2Table[v30];
              v32 = v30;
            }

            v33 = *(v35 + v27 + 4);
            if (v33 > 0xFF)
            {
              v34 = log2(v33);
            }

            else
            {
              v34 = kBrotliLog2Table[v33];
            }

            v27 += 8;
            v28 += v30 + v33;
            v29 = v29 - v32 * v31 - v33 * v34;
          }

          while ((v27 - 8) < 0x40);
          if (v28 >= 0x100)
          {
            log2(v28);
          }

          return;
        }

        v26 = v20 - 2;
        if (v20 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v26 > 7;
            v26 >>= 3;
          }

          while (v5);
          goto LABEL_50;
        }
      }

      LODWORD(v35[0]) += v20;
LABEL_50:
      if (v14 >= 0x220)
      {
        goto LABEL_51;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v35 + j) = *(a1 + 4 * v37[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v35 + v8);
      v10 = v7;
      do
      {
        v11 = *(v35 + v10);
        if (v11 > v9)
        {
          *(v35 + v10) = v9;
          *(v35 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

uint64_t cosmix_model_update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v77 = result;
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LODWORD(result) = 0;
    v8 = 0;
    v74 = *(v77 + 589824);
    v9 = 32;
    v73 = 32 - *(v77 + 589832);
    do
    {
      v78 = v9 << 8;
      v88 = v77 + 9 * (v9 << 8);
      v87 = v74 + 9 * (v8 >> v73);
      v86 = v74 + 9 * (result >> v73);
      v85 = v74 + 9 * (v7 >> v73);
      v10 = v74 + 9 * (v6 >> v73);
      v11 = v74 + 9 * (v5 >> v73);
      v12 = v74 + 9 * (v4 >> v73);
      v79 = v8;
      v80 = result;
      v13 = v8;
      v14 = result;
      v81 = v7;
      v82 = v6;
      v15 = v7;
      v16 = v6;
      v17 = v5;
      v83 = v4;
      v18 = v4;
      v19 = 1;
      v20 = 7;
      v84 = v3;
      v9 = *(a2 + v3);
      do
      {
        v21 = (v88 + 9 * v19);
        if (((*(v21 + 8) ^ v19) & 0xF) != 0)
        {
          LODWORD(v22) = *v21;
          LODWORD(v23) = v21[1];
          v24 = 8;
        }

        else
        {
          v22 = *v21;
          v23 = v21[1];
          v24 = tc_quant16[((v22 << 16) / v23) >> 11];
        }

        v25 = (v9 >> v20) & 1;
        v26 = v19;
        v27 = v23 >> 1;
        if (v23 <= 0xFFFF0000)
        {
          v27 = 0;
        }

        *v21 = (v22 >> (v23 > 0xFFFF0000)) + 4 * v25;
        v21[1] = v23 - v27 + 4;
        *(v21 + 8) = v19;
        v28 = 9 * v19;
        v29 = (v87 + v28);
        if (((*(v87 + v28 + 8) ^ v13) & 0xF) != 0)
        {
          LODWORD(v30) = *v29;
          LODWORD(v31) = v29[1];
          v32 = 8;
        }

        else
        {
          v30 = *v29;
          v31 = v29[1];
          v32 = tc_quant16[((v30 << 16) / v31) >> 11];
        }

        v33 = 4 * v25;
        v34 = v31 >> 1;
        if (v31 <= 0xFFFF0000)
        {
          v34 = 0;
        }

        *v29 = (v30 >> (v31 > 0xFFFF0000)) + v33;
        v29[1] = v31 - v34 + 4;
        *(v29 + 8) = v13;
        v35 = (v86 + v28);
        if (((*(v86 + v28 + 8) ^ v14) & 0xF) != 0)
        {
          LODWORD(v37) = *v35;
          LODWORD(v36) = v35[1];
          v38 = 8;
        }

        else
        {
          v37 = *v35;
          v36 = v35[1];
          v38 = tc_quant16[((v37 << 16) / v36) >> 11];
        }

        v39 = v36 >> 1;
        if (v36 <= 0xFFFF0000)
        {
          v39 = 0;
        }

        *v35 = (v37 >> (v36 > 0xFFFF0000)) + v33;
        v35[1] = v36 - v39 + 4;
        *(v35 + 8) = v14;
        v40 = (v85 + v28);
        if (((*(v85 + v28 + 8) ^ v15) & 0xF) != 0)
        {
          LODWORD(v41) = *v40;
          LODWORD(v42) = v40[1];
          v43 = 8;
        }

        else
        {
          v41 = *v40;
          v42 = v40[1];
          v43 = tc_quant16[((v41 << 16) / v42) >> 11];
        }

        v44 = v42 >> 1;
        if (v42 <= 0xFFFF0000)
        {
          v44 = 0;
        }

        *v40 = (v41 >> (v42 > 0xFFFF0000)) + v33;
        v40[1] = v42 - v44 + 4;
        *(v40 + 8) = v15;
        v45 = (v10 + v28);
        if (((*(v10 + v28 + 8) ^ v16) & 0xF) != 0)
        {
          LODWORD(v46) = *v45;
          LODWORD(v47) = v45[1];
          v48 = 8;
        }

        else
        {
          v46 = *v45;
          v47 = v45[1];
          v48 = tc_quant16[((v46 << 16) / v47) >> 11];
        }

        v49 = v47 >> 1;
        if (v47 <= 0xFFFF0000)
        {
          v49 = 0;
        }

        *v45 = (v46 >> (v47 > 0xFFFF0000)) + v33;
        v45[1] = v47 - v49 + 4;
        *(v45 + 8) = v16;
        v50 = (v11 + v28);
        if (((*(v11 + v28 + 8) ^ v17) & 0xF) != 0)
        {
          LODWORD(v51) = *v50;
          LODWORD(v52) = v50[1];
          v53 = 8;
        }

        else
        {
          v51 = *v50;
          v52 = v50[1];
          v53 = tc_quant16[((v51 << 16) / v52) >> 11];
        }

        v54 = v52 >> 1;
        if (v52 <= 0xFFFF0000)
        {
          v54 = 0;
        }

        *v50 = (v51 >> (v52 > 0xFFFF0000)) + v33;
        v50[1] = v52 - v54 + 4;
        *(v50 + 8) = v17;
        v55 = (v12 + v28);
        if (((*(v12 + v28 + 8) ^ v18) & 0xF) != 0)
        {
          LODWORD(v56) = *v55;
          LODWORD(v57) = v55[1];
          v58 = 8;
        }

        else
        {
          v56 = *v55;
          v57 = v55[1];
          v58 = tc_quant16[((v56 << 16) / v57) >> 11];
        }

        v59 = v57 >> 1;
        if (v57 <= 0xFFFF0000)
        {
          v59 = 0;
        }

        *v55 = (v56 >> (v57 > 0xFFFF0000)) + v33;
        v55[1] = v57 - v59 + 4;
        *(v55 + 8) = v18;
        v60 = (v77 + 589848 + 2304 * v32 + 144 * v38 + 9 * v43);
        if ((v60[2] & 0xF) != 0)
        {
          LODWORD(v62) = *v60;
          LODWORD(v61) = v60[1];
          v63 = 8;
        }

        else
        {
          v62 = *v60;
          v61 = v60[1];
          v63 = tc_quant16[((v62 << 16) / v61) >> 11];
        }

        v64 = v61 >> 1;
        if (v61 <= 0xFFFF0000)
        {
          v64 = 0;
        }

        *v60 = (v62 >> (v61 > 0xFFFF0000)) + v33;
        v60[1] = v61 - v64 + 4;
        *(v60 + 8) = 0;
        v65 = (v77 + 626712 + 2304 * v48 + 144 * v53 + 9 * v58);
        if ((v65[2] & 0xF) != 0)
        {
          LODWORD(v66) = *v65;
          LODWORD(v67) = v65[1];
          v68 = 8;
        }

        else
        {
          v66 = *v65;
          v67 = v65[1];
          v68 = tc_quant16[((v66 << 16) / v67) >> 11];
        }

        v69 = v67 >> 1;
        if (v67 <= 0xFFFF0000)
        {
          v69 = 0;
        }

        *v65 = (v66 >> (v67 > 0xFFFF0000)) + v33;
        v65[1] = v67 - v69 + 4;
        *(v65 + 8) = 0;
        v70 = v77 + 663576 + 2304 * v24 + 144 * v63 + 9 * v68;
        v71 = *(v70 + 4);
        v72 = v71 >> 1;
        if (v71 <= 0xFFFF0000)
        {
          v72 = 0;
        }

        *v70 = (*v70 >> (v71 > 0xFFFF0000)) + v33;
        *(v70 + 4) = v71 - v72 + 4;
        *(v70 + 8) = 0;
        v19 = v25 | (2 * v26);
        --v20;
      }

      while (v20 != -1);
      if (v9 >= 0x21)
      {
        v4 = -1640531535 * (v83 + v9);
      }

      else
      {
        v4 = 0;
      }

      v5 = -1640531535 * (v82 + v9);
      v6 = -1640531535 * (v81 + v9);
      v7 = -1640531535 * (v80 + v9);
      result = -1640531535 * (v79 + v9);
      v8 = -1640531535 * (v78 | v9);
      v3 = v84 + 1;
    }

    while (v84 + 1 != a3);
  }

  return result;
}

unint64_t cosmix_codec_encode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v6;
    v6 = v7;
    v7 += v8;
    v5 = (v5 + 1);
  }

  while (a5 - v6 >= v7);
  v9 = 1 << v5;
  if (v5)
  {
    v10 = v5 - 1;
    v11 = a5;
    do
    {
      v12 = 1 << v10;
      if (v11 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = 0;
      }

      if (v11 < v7)
      {
        v12 = 0;
      }

      v11 -= v13;
      v9 |= v12;
      v14 = v7 - v6;
      --v10;
      v7 = v6;
      v6 = v14;
    }

    while (v10 != -1);
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v130 = a5 + ((73 - __clz(v9)) >> 3);
  v17 = 1;
  do
  {
    v18 = v16;
    v16 = v17;
    v17 += v18;
    v15 = (v15 + 1);
  }

  while (a5 - v16 >= v17);
  v19 = 1 << v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  v20 = v15 - 1;
  v21 = a5;
  do
  {
    v22 = 1 << v20;
    if (v21 >= v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (v21 < v17)
    {
      v22 = 0;
    }

    v21 -= v23;
    v19 |= v22;
    v24 = v17 - v16;
    --v20;
    v17 = v16;
    v16 = v24;
  }

  while (v20 != -1);
  if (!v19)
  {
    v26 = 0;
    v25 = 0;
    v27 = -1;
  }

  else
  {
LABEL_23:
    v25 = 0;
    v26 = 0;
    v27 = -1;
    do
    {
      v28 = v25 + ((v27 - v25) >> 1);
      if (v19)
      {
        v29 = v25;
      }

      else
      {
        v29 = v28 + 1;
      }

      if ((v19 & 1) == 0)
      {
        v28 = v27;
      }

      if ((v28 ^ v29) >> 24)
      {
        v25 = v29;
        v27 = v28;
      }

      else
      {
        do
        {
          v25 = v29 << 8;
          if (v26 >= a3)
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

          *(a2 + v30) = HIBYTE(v29);
          v27 = (v28 << 8) | 0xFF;
          ++v26;
          v31 = ((v28 << 8) ^ (v29 << 8)) >> 24;
          v28 = v27;
          v29 <<= 8;
        }

        while (!v31);
      }

      v32 = v19 > 1;
      v19 >>= 1;
    }

    while (v32);
  }

  v34 = v25 + ((v27 - v25) >> 1);
  if ((v34 ^ v25) >> 24)
  {
    v35 = v25;
    v37 = v25 + ((v27 - v25) >> 1);
  }

  else
  {
    do
    {
      v35 = v25 << 8;
      if (v26 >= a3)
      {
        v36 = 0;
      }

      else
      {
        v36 = v26;
      }

      *(a2 + v36) = HIBYTE(v25);
      v37 = (v34 << 8) | 0xFF;
      ++v26;
      v38 = ((v34 << 8) ^ (v25 << 8)) >> 24;
      v34 = v37;
      v25 <<= 8;
    }

    while (!v38);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  LODWORD(v46) = 32;
  do
  {
    v47 = 32 - *(a1 + 16);
    v48 = *(a1 + 8);
    v142 = v48 + (v45 >> v47);
    v141 = v48 + (v44 >> v47);
    v140 = v48 + (v43 >> v47);
    v139 = v48 + (v42 >> v47);
    v138 = v48 + (v41 >> v47);
    v49 = v48 + (v40 >> v47);
    v133 = v46 << 8;
    v134 = v43;
    v135 = v42;
    v50 = v43;
    v51 = v42;
    v136 = v40;
    v52 = v40;
    v53 = *a1 + (v46 << 8);
    v54 = 1;
    v55 = 8;
    v137 = v39;
    v46 = *(a4 + v39);
    do
    {
      --v55;
      v56 = v46;
      v57 = v46 >> v55;
      v58 = *(v53 + v54);
      v59 = v58 ^ v54;
      LODWORD(v60) = v58 >> 4;
      if ((v59 & 0xF) != 0)
      {
        v60 = 8;
      }

      else
      {
        v60 = v60;
      }

      v61 = *(v142 + v54);
      v62 = v61 ^ v45;
      LODWORD(v63) = v61 >> 4;
      if ((v62 & 0xF) != 0)
      {
        v63 = 8;
      }

      else
      {
        v63 = v63;
      }

      v64 = *(v141 + v54);
      v65 = v64 ^ v44;
      v66 = v64 >> 4;
      if ((v65 & 0xF) != 0)
      {
        v66 = 8;
      }

      v67 = *(v140 + v54);
      v68 = v67 ^ v50;
      v69 = v67 >> 4;
      if ((v68 & 0xF) != 0)
      {
        v70 = 8;
      }

      else
      {
        v70 = v69;
      }

      v71 = *(v139 + v54);
      v72 = v71 ^ v51;
      LODWORD(v73) = v71 >> 4;
      if ((v72 & 0xF) != 0)
      {
        v73 = 8;
      }

      else
      {
        v73 = v73;
      }

      v74 = *(v138 + v54);
      v75 = v74 ^ v41;
      v76 = v74 >> 4;
      if ((v75 & 0xF) != 0)
      {
        v77 = 8;
      }

      else
      {
        v77 = v76;
      }

      v78 = *(v49 + v54);
      v79 = v78 ^ v52;
      v80 = v78 >> 4;
      if ((v79 & 0xF) != 0)
      {
        v80 = 8;
      }

      v81 = *(a1 + 32) + (v63 << 8);
      v82 = v57 & 1;
      v83 = v35 + ((*(*(a1 + 48) + (v60 << 8) + (*(v81 + 16 * v66 + v70) & 0xF0) + (*(*(a1 + 40) + (v73 << 8) + 16 * v77 + v80) >> 4)) * (v37 - v35)) >> 8);
      if (v57)
      {
        v84 = v35;
      }

      else
      {
        v84 = v83 + 1;
      }

      if (!v82)
      {
        v83 = v37;
      }

      if ((v83 ^ v84) >> 24)
      {
        v35 = v84;
        v37 = v83;
      }

      else
      {
        do
        {
          v35 = v84 << 8;
          if (v26 >= a3)
          {
            v85 = 0;
          }

          else
          {
            v85 = v26;
          }

          *(a2 + v85) = HIBYTE(v84);
          v37 = (v83 << 8) | 0xFF;
          ++v26;
          v86 = ((v83 << 8) ^ (v84 << 8)) >> 24;
          v83 = v37;
          v84 <<= 8;
        }

        while (!v86);
      }

      v54 = v82 | (2 * v54);
      v46 = v56;
    }

    while (v55);
    if (v56 >= 0x21)
    {
      v40 = -1640531535 * (v136 + v56);
    }

    else
    {
      v40 = 0;
    }

    v41 = -1640531535 * (v135 + v56);
    v42 = -1640531535 * (v134 + v56);
    v43 = -1640531535 * (v44 + v56);
    v44 = -1640531535 * (v45 + v56);
    v45 = -1640531535 * (v133 | v56);
    v39 = v137 + 1;
  }

  while (v137 + 1 != a5);
  while (1)
  {
    v92 = HIBYTE(v35) + 1;
    if (v92 != HIBYTE(v37))
    {
      break;
    }

    v87 = v35 | 0xFFFFFF;
    v88 = (v35 | 0xFFFFFF) - v35;
    if ((v37 & 0xFFFFFF) <= v88)
    {
      v89 = v35;
    }

    else
    {
      v89 = v37 & 0xFF000000;
    }

    if ((v37 & 0xFFFFFF) > v88)
    {
      v87 = v37;
    }

    if ((v87 ^ v89) >> 24)
    {
      v35 = v89;
      v37 = v87;
    }

    else
    {
      do
      {
        v35 = v89 << 8;
        if (v26 >= a3)
        {
          v90 = 0;
        }

        else
        {
          v90 = v26;
        }

        *(a2 + v90) = HIBYTE(v89);
        v37 = (v87 << 8) | 0xFF;
        ++v26;
        v91 = ((v87 << 8) ^ (v89 << 8)) >> 24;
        v87 = v37;
        v89 <<= 8;
      }

      while (!v91);
    }
  }

  if (v26 >= a3)
  {
    v93 = 0;
  }

  else
  {
    v93 = v26;
  }

  *(a2 + v93) = v92;
  if (v26 + 1 <= a3)
  {
    result = v26 + 1;
  }

  else
  {
    result = 0;
  }

  if (result > v130)
  {
    LODWORD(v94) = 0;
    v95 = 0;
    v96 = 1;
    do
    {
      v97 = v95;
      v95 = v96;
      v96 += v97;
      v94 = (v94 + 1);
    }

    while (a5 - v95 >= v96);
    v98 = 1 << v94;
    if (!v94)
    {
      goto LABEL_117;
    }

    v99 = v94 - 1;
    v100 = a5;
    do
    {
      v101 = 1 << v99;
      if (v100 >= v96)
      {
        v102 = v96;
      }

      else
      {
        v102 = 0;
      }

      if (v100 < v96)
      {
        v101 = 0;
      }

      v100 -= v102;
      v98 |= v101;
      v103 = v96 - v95;
      --v99;
      v96 = v95;
      v95 = v103;
    }

    while (v99 != -1);
    if (!v98)
    {
      v105 = 0;
      v104 = 0;
      v106 = -1;
    }

    else
    {
LABEL_117:
      v104 = 0;
      v105 = 0;
      v106 = -1;
      do
      {
        v107 = v104 + ((v106 - v104) >> 1);
        if (v98)
        {
          v108 = v104;
        }

        else
        {
          v108 = v107 + 1;
        }

        if ((v98 & 1) == 0)
        {
          v107 = v106;
        }

        if ((v107 ^ v108) >> 24)
        {
          v104 = v108;
          v106 = v107;
        }

        else
        {
          do
          {
            v104 = v108 << 8;
            if (v105 >= a3)
            {
              v109 = 0;
            }

            else
            {
              v109 = v105;
            }

            *(a2 + v109) = HIBYTE(v108);
            v106 = (v107 << 8) | 0xFF;
            ++v105;
            v110 = ((v107 << 8) ^ (v108 << 8)) >> 24;
            v107 = v106;
            v108 <<= 8;
          }

          while (!v110);
        }

        v32 = v98 > 1;
        v98 >>= 1;
      }

      while (v32);
    }

    v111 = v104 + ((v106 - v104) >> 1) + 1;
    if ((v106 ^ v111) >> 24)
    {
      v114 = v106;
      v112 = v111;
    }

    else
    {
      do
      {
        v112 = v111 << 8;
        if (v105 >= a3)
        {
          v113 = 0;
        }

        else
        {
          v113 = v105;
        }

        *(a2 + v113) = HIBYTE(v111);
        v114 = (v106 << 8) | 0xFF;
        ++v105;
        v115 = ((v106 << 8) ^ (v111 << 8)) >> 24;
        v106 = v114;
        v111 <<= 8;
      }

      while (!v115);
    }

    v116 = 0;
    do
    {
      v117 = *(a4 + v116) | 0x100;
      do
      {
        v118 = v112 + ((v114 - v112) >> 1);
        if ((v117 & 0x80) != 0)
        {
          v119 = v112;
        }

        else
        {
          v119 = v118 + 1;
        }

        if ((v117 & 0x80) == 0)
        {
          v118 = v114;
        }

        if ((v118 ^ v119) >> 24)
        {
          v112 = v119;
          v114 = v118;
        }

        else
        {
          do
          {
            v112 = v119 << 8;
            if (v105 >= a3)
            {
              v120 = 0;
            }

            else
            {
              v120 = v105;
            }

            *(a2 + v120) = HIBYTE(v119);
            v114 = (v118 << 8) | 0xFF;
            ++v105;
            v121 = ((v118 << 8) ^ (v119 << 8)) >> 24;
            v118 = v114;
            v119 <<= 8;
          }

          while (!v121);
        }

        v122 = v117 >= 0x8000;
        v117 *= 2;
      }

      while (!v122);
      ++v116;
    }

    while (v116 != a5);
    while (1)
    {
      v128 = HIBYTE(v112) + 1;
      if (v128 != HIBYTE(v114))
      {
        break;
      }

      v123 = v112 | 0xFFFFFF;
      v124 = (v112 | 0xFFFFFF) - v112;
      if ((v114 & 0xFFFFFF) <= v124)
      {
        v125 = v112;
      }

      else
      {
        v125 = v114 & 0xFF000000;
      }

      if ((v114 & 0xFFFFFF) > v124)
      {
        v123 = v114;
      }

      if ((v123 ^ v125) >> 24)
      {
        v112 = v125;
        v114 = v123;
      }

      else
      {
        do
        {
          v112 = v125 << 8;
          if (v105 >= a3)
          {
            v126 = 0;
          }

          else
          {
            v126 = v105;
          }

          *(a2 + v126) = HIBYTE(v125);
          v114 = (v123 << 8) | 0xFF;
          ++v105;
          v127 = ((v123 << 8) ^ (v125 << 8)) >> 24;
          v123 = v114;
          v125 <<= 8;
        }

        while (!v127);
      }
    }

    if (v105 >= a3)
    {
      v129 = 0;
    }

    else
    {
      v129 = v105;
    }

    *(a2 + v129) = v128;
    if (v105 + 1 <= a3)
    {
      return v105 + 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cosmix_codec_get_decoded_size(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    if ((v6 ^ v7) >> 24)
    {
      v9 = v7;
      v11 = v6;
    }

    else
    {
      do
      {
        v9 = v7 << 8;
        v10 = v6 << 8;
        v11 = (v6 << 8) | 0xFF;
        if (v8 >= a3)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8;
        }

        v5 = *(a2 + v12) | (v5 << 8);
        ++v8;
        v13 = (v10 ^ (v7 << 8)) >> 24;
        v6 = v11;
        v7 <<= 8;
      }

      while (!v13);
    }

    v14 = v9 + ((v11 - v9) >> 1);
    v4 |= (v5 <= v14) << v3;
    if ((2 * v4) >> v3 == 3)
    {
      break;
    }

    v6 = v5 > v14 ? v11 : v9 + ((v11 - v9) >> 1);
    v7 = v5 > v14 ? v14 + 1 : v9;
    ++v3;
  }

  while (v3 != 64);
  if (v4 < 2)
  {
    return 0;
  }

  result = 0;
  v16 = 1;
  v17 = 2;
  do
  {
    v18 = v17;
    result += ((v4 << 63) >> 63) & v16;
    v17 += v16;
    v16 = v18;
    v19 = v4 > 3;
    v4 >>= 1;
  }

  while (v19);
  return result;
}

unint64_t cosmix_codec_decode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if ((v8 ^ v9) >> 24)
    {
      v11 = v9;
      v13 = v8;
    }

    else
    {
      do
      {
        v11 = v9 << 8;
        v12 = v8 << 8;
        v13 = (v8 << 8) | 0xFF;
        if (v10 >= a5)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10;
        }

        v7 = *(a4 + v14) | (v7 << 8);
        ++v10;
        v15 = (v12 ^ (v9 << 8)) >> 24;
        v8 = v13;
        v9 <<= 8;
      }

      while (!v15);
    }

    v8 = v11 + ((v13 - v11) >> 1);
    v16 = v7 <= v8;
    if (v7 > v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v11;
    }

    if (v7 > v8)
    {
      v8 = v13;
    }

    v6 |= v16 << v5;
    if ((2 * v6) >> v5 == 3)
    {
      break;
    }

    ++v5;
  }

  while (v5 != 64);
  if (v6 < 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 1;
    v19 = 2;
    do
    {
      v20 = v19;
      v17 += ((v6 << 63) >> 63) & v18;
      v19 += v18;
      v18 = v20;
      v21 = v6 > 3;
      v6 >>= 1;
    }

    while (v21);
  }

  if (v17 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v17;
  }

  if ((v8 ^ v9) >> 24)
  {
    v23 = v9;
    v25 = v8;
  }

  else
  {
    do
    {
      v23 = v9 << 8;
      v24 = v8 << 8;
      v25 = (v8 << 8) | 0xFF;
      if (v10 >= a5)
      {
        v26 = 0;
      }

      else
      {
        v26 = v10;
      }

      v7 = *(a4 + v26) | (v7 << 8);
      ++v10;
      v27 = (v24 ^ (v9 << 8)) >> 24;
      v8 = v25;
      v9 <<= 8;
    }

    while (!v27);
  }

  v28 = v23 + ((v25 - v23) >> 1);
  if (v7 <= v28)
  {
    if (result)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 32;
      v91 = result;
      do
      {
        v99 = v40;
        v48 = 32 - *(a1 + 16);
        v49 = *(a1 + 8);
        v105 = v49 + (v46 >> v48);
        v104 = v49 + (v45 >> v48);
        v103 = v49 + (v44 >> v48);
        v102 = v49 + (v43 >> v48);
        v101 = v49 + (v42 >> v48);
        v100 = v49 + (v41 >> v48);
        v95 = v46;
        v96 = v45;
        v50 = v46;
        v51 = v45;
        v97 = v44;
        v98 = v43;
        v52 = v44;
        v53 = v43;
        v54 = *a1 + (v47 << 8);
        v55 = 8;
        v56 = 1;
        v94 = v47 << 8;
        do
        {
          v57 = *(v54 + v56);
          v58 = v57 ^ v56;
          v59 = v57 >> 4;
          if ((v58 & 0xF) != 0)
          {
            v60 = 8;
          }

          else
          {
            v60 = v59;
          }

          v61 = *(v105 + v56);
          v62 = v61 ^ v50;
          v63 = v61 >> 4;
          if ((v62 & 0xF) != 0)
          {
            v64 = 8;
          }

          else
          {
            v64 = v63;
          }

          v65 = *(v104 + v56);
          v66 = v65 ^ v51;
          v67 = v65 >> 4;
          if ((v66 & 0xF) != 0)
          {
            v68 = 8;
          }

          else
          {
            v68 = v67;
          }

          v69 = *(v103 + v56);
          v70 = v69 ^ v52;
          v71 = v69 >> 4;
          if ((v70 & 0xF) != 0)
          {
            v72 = 8;
          }

          else
          {
            v72 = v71;
          }

          v73 = *(v102 + v56);
          v74 = v73 ^ v53;
          v75 = v73 >> 4;
          if ((v74 & 0xF) != 0)
          {
            v76 = 8;
          }

          else
          {
            v76 = v75;
          }

          v77 = *(v101 + v56);
          v78 = v77 ^ v42;
          v79 = v77 >> 4;
          if ((v78 & 0xF) != 0)
          {
            v80 = 8;
          }

          else
          {
            v80 = v79;
          }

          v81 = *(v100 + v56);
          v82 = v81 ^ v41;
          v83 = v81 >> 4;
          if ((v82 & 0xF) != 0)
          {
            v84 = 8;
          }

          else
          {
            v84 = v83;
          }

          if ((v28 ^ v23) >> 24)
          {
            v85 = v23;
            v87 = v28;
          }

          else
          {
            do
            {
              v85 = v23 << 8;
              v86 = v28 << 8;
              v87 = (v28 << 8) | 0xFF;
              if (v10 >= a5)
              {
                v88 = 0;
              }

              else
              {
                v88 = v10;
              }

              v7 = *(a4 + v88) | (v7 << 8);
              ++v10;
              v89 = (v86 ^ (v23 << 8)) >> 24;
              v28 = v87;
              v23 <<= 8;
            }

            while (!v89);
          }

          v90 = v85 + ((*(*(a1 + 48) + (v60 << 8) + (*(*(a1 + 32) + (v64 << 8) + 16 * v68 + v72) & 0xF0) + (*(*(a1 + 40) + (v76 << 8) + 16 * v80 + v84) >> 4)) * (v87 - v85)) >> 8);
          if (v7 > v90)
          {
            v23 = v90 + 1;
          }

          else
          {
            v23 = v85;
          }

          if (v7 > v90)
          {
            v28 = v87;
          }

          else
          {
            v28 = v90;
          }

          v56 = (v7 <= v90) | (2 * v56);
          --v55;
        }

        while (v55);
        v47 = v56;
        if (v56 >= 0x21u)
        {
          v41 = -1640531535 * (v41 + v56);
        }

        else
        {
          v41 = 0;
        }

        v42 = -1640531535 * (v98 + v56);
        v43 = -1640531535 * (v97 + v56);
        v44 = -1640531535 * (v96 + v56);
        v45 = -1640531535 * (v95 + v56);
        v46 = -1640531535 * (v56 | v94);
        result = v91;
        *(a2 + v99) = v56;
        v40 = v99 + 1;
      }

      while (v99 + 1 != v91);
    }
  }

  else if (result)
  {
    v29 = 0;
    v30 = v28 + 1;
    do
    {
      v31 = 1;
      do
      {
        if ((v25 ^ v30) >> 24)
        {
          v32 = v30;
          v34 = v25;
        }

        else
        {
          do
          {
            v32 = v30 << 8;
            v33 = v25 << 8;
            v34 = (v25 << 8) | 0xFF;
            if (v10 >= a5)
            {
              v35 = 0;
            }

            else
            {
              v35 = v10;
            }

            v7 = *(a4 + v35) | (v7 << 8);
            ++v10;
            v36 = (v33 ^ (v30 << 8)) >> 24;
            v25 = v34;
            v30 <<= 8;
          }

          while (!v36);
        }

        v25 = v32 + ((v34 - v32) >> 1);
        v37 = v7 <= v25;
        if (v7 > v25)
        {
          v30 = v25 + 1;
        }

        else
        {
          v30 = v32;
        }

        if (v7 > v25)
        {
          v25 = v34;
        }

        v38 = v37 | (2 * v31);
        v39 = v31 >= 0x80;
        v31 = v37 | (2 * v31);
      }

      while (!v39);
      *(a2 + v29++) = v38;
    }

    while (v29 != result);
  }

  return result;
}

void **cosmix_model_create(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  v2 = calloc(1uLL, 0xAB020uLL);
  v3 = v2;
  if (!v2 || (*(v2 + 700440) = a1, (v4 = malloc((9437184 << a1) | 0x900u)) == 0))
  {
    cosmix_model_destroy(v3);
    return 0;
  }

  v3[73728] = v4;
  v3[73729] = (a1 + 20);
  v5 = ((0x100000 << a1) | 0x100u);
  v3[73730] = v5;
  do
  {
    *v4 = 0x200000001;
    v4[8] = 0;
    v4 += 9;
    --v5;
  }

  while (v5);
  do
  {
    v6 = &v5[v3];
    *v6 = 0x200000001;
    v6[8] = 0;
    v5 += 9;
  }

  while (v5 != 589824);
  for (i = 0; i != 36864; i += 9)
  {
    v8 = v3 + i + 589848;
    *v8 = 0x800000004;
    v8[8] = 0;
  }

  for (j = 0; j != 36864; j += 9)
  {
    v10 = v3 + j + 626712;
    *v10 = 0x800000004;
    v10[8] = 0;
  }

  for (k = 0; k != 36864; k += 9)
  {
    v12 = v3 + k + 663576;
    *v12 = 0x800000004;
    v12[8] = 0;
  }

  return v3;
}

void cosmix_model_destroy(void **a1)
{
  if (a1)
  {
    free(a1[73728]);

    free(a1);
  }
}

uint64_t cosmix_model_save_codec(uint64_t a1, const char *a2, int a3)
{
  v4 = *(a1 + 700440);
  v5 = 0x100000 << v4;
  if (v4 <= 5)
  {
    v6 = (0x100000 << v4) | 0x100;
  }

  else
  {
    v6 = 0;
  }

  if (v4 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = malloc((0x100000 << v4) | 0x100);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = fopen(a2, "wb");
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  __ptr_4 = 1;
  __ptr = a3;
  HIWORD(__ptr_4) = *(a1 + 700440);
  if (fwrite(&__ptr, 1uLL, 8uLL, v11) != 8)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = (a1 + 663580);
  v15 = (a1 + 626720);
  v16 = (*(a1 + 589824) + 4);
  do
  {
    v10[v13++] = v16[1] & 0xF | (16 * tc_quant16[((*(v16 - 1) << 16) / *v16) >> 11]);
    v16 = (v16 + 9);
  }

  while (v5 + 256 != v13);
  if (fwrite(v10, 1uLL, v6, v12) == v6)
  {
    v17 = 0;
    v18 = (a1 + 4);
    do
    {
      v10[v17++] = v18[1] & 0xF | (16 * tc_quant16[((*(v18 - 1) << 16) / *v18) >> 11]);
      v18 = (v18 + 9);
    }

    while (v17 != 0x10000);
    v19 = (a1 + 589856);
    v20 = 0x10000;
    v21 = 69632;
    do
    {
      v10[v20] = *v19 & 0xF | (16 * tc_quant16[((*(v19 - 2) << 16) / *(v19 - 1)) >> 11]);
      v19 += 9;
      ++v20;
    }

    while (v20 != 69632);
    v22 = 73728;
    do
    {
      v10[v21] = *v15 & 0xF | (16 * tc_quant16[((*(v15 - 2) << 16) / *(v15 - 1)) >> 11]);
      v15 += 9;
      ++v21;
    }

    while (v21 != 73728);
    do
    {
      v23 = (*(v14 - 1) << 16) / *v14;
      v10[v22] = (((v23 >> 8) - 1) < 0) + BYTE1(v23);
      v14 = (v14 + 9);
      ++v22;
    }

    while (v22 != 77824);
    if (fwrite(v10, 1uLL, 0x13000uLL, v12) == 77824)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_23:
    v24 = 0xFFFFFFFFLL;
  }

  free(v10);
  fclose(v12);
  return v24;
}

void *cosmix_codec_map(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  v2 = calloc(1uLL, 0x58uLL);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_3;
  }

  *(v2 + 20) = -1;
  if (stat(a1, &v12))
  {
    goto LABEL_3;
  }

  v3[9] = v12.st_size;
  v5 = open(a1, 0, *&v12.st_dev, *&v12.st_uid, *&v12.st_atimespec, *&v12.st_mtimespec, *&v12.st_ctimespec, *&v12.st_birthtimespec);
  *(v3 + 20) = v5;
  if (v5 < 0)
  {
    goto LABEL_3;
  }

  v6 = mmap(0, v3[9], 1, 2, v5, 0);
  v3[8] = v6;
  if (v6 == -1)
  {
    v3[8] = 0;
LABEL_3:
    cosmix_codec_unmap(v3);
    return 0;
  }

  v7 = v3[9];
  v3[7] = v6;
  if (v7 < 8)
  {
    goto LABEL_3;
  }

  if (v6[2] != 1)
  {
    goto LABEL_3;
  }

  v8 = v6[3];
  if (v8 > 5)
  {
    goto LABEL_3;
  }

  v9 = 0x100000 << v8;
  v10 = v8 + 20;
  v3[2] = v10;
  v3[3] = (1 << v10) | 0x100u;
  v11 = v6 + v9 + 8;
  *v3 = v11 + 256;
  v3[1] = v6 + 4;
  v3[4] = v11 + 65792;
  v3[5] = v11 + 69888;
  v3[6] = v11 + 73984;
  if (v11 + 78080 != v6 + v7)
  {
    goto LABEL_3;
  }

  return v3;
}

void cosmix_codec_unmap(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 20);
    if ((v2 & 0x80000000) == 0)
    {
      if (*(a1 + 8))
      {
        munmap(*(a1 + 8), *(a1 + 9));
        *(a1 + 8) = 0;
        v2 = *(a1 + 20);
      }

      close(v2);
    }
  }

  free(a1);
}

_BYTE *zlib_decode_buffer(const Bytef *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, int a6)
{
  if (a6)
  {
    v9 = a4 >= 2;
    a4 -= 2;
    if (!v9)
    {
      return 0;
    }

    v10 = *a3;
    v11 = a3[1];
    v12 = v11 | (v10 << 8);
    v13 = v11 & 0x20;
    v14 = v12 - 31 * ((138547333 * v12) >> 32);
    v15 = (v10 & 0xF) == 8 && v13 == 0;
    if (!v15 || v14 != 0)
    {
      return 0;
    }

    a3 += 2;
  }

  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 32) = 8 * a4;
  *(a5 + 40) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4;
  *(a5 + 24) = a3;
  *(a5 + 56) = &a1[a2];
  *(a5 + 64) = a1;
  if (a4 >= 9 && (*(a5 + 16) = a4 - 8, *(a5 + 32) = 8 * a4 - 64, v17 = zlibDecodeBuffer(a5), *(a5 + 16) += 8, *(a5 + 32) += 64, *(a5 + 48) == 11) && (v18 = v17) != 0 || (v18 = zlibDecodeBufferSafe(a5)) != 0)
  {
    v19 = (*(a5 + 40) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a5 + 40) = v19;
    if (a6)
    {
      v20 = *(a5 + 32);
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (!v9)
      {
        v21 = 0;
      }

      if (v21 >= 0x20)
      {
        v22 = adler32(0, 0, 0);
        if (bswap32(*(*(a5 + 24) + (*(a5 + 40) >> 3))) != adler32(v22, a1, v18))
        {
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t zlib_stream_get_state_size(uint64_t a1)
{
  if (**(a1 + 32))
  {
    return 459080;
  }

  else
  {
    return 0;
  }
}

unint64_t lzx_decode_buffer(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v5 = a2 + 0x7FFF;
  v6 = (a2 + 0x7FFF) >> 15;
  if (!v6)
  {
    return 0;
  }

  v7 = a4;
  v8 = (4 * v6 - 4);
  if (v8 >= a4)
  {
    return 0;
  }

  v9 = (v5 >> 15);
  if (!(v5 >> 15))
  {
    return 0;
  }

  v11 = a3;
  v13 = 0;
  v14 = 0;
  v112 = 4 * v6 - 4;
  v113 = a3 - 4;
  __n_4 = (a5 + 65792);
  v111 = v9;
  do
  {
    if (v14)
    {
      v15 = *(v113 + 4 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 + v8;
    if (v14 + 1 == v9)
    {
      v17 = v7 - v16;
    }

    else
    {
      v17 = *(v11 + 4 * v14) - v15;
    }

    if (v17 + v16 > v7)
    {
      return 0;
    }

    v114 = v14 + 1;
    __n = v17;
    v120 = (v11 + v16);
    v121 = v120 + v17;
    v18 = a2 - v13;
    v122 = 0;
    v123 = 0;
    lzx_decoder_init(a5);
    if (v13 + 0x8000 <= a2)
    {
      v18 = 0x8000;
    }

    v19 = v13;
    if (!v18)
    {
LABEL_140:
      if (v19 - v13 >= 11)
      {
        v101 = 0;
        do
        {
          v102 = (a1 + v13 + v101);
          if (*v102 == 232)
          {
            v103 = *(v102 + 1);
            v104 = -v101;
            v105 = v103 >= -v101 && v103 < 12000000;
            if (v105)
            {
              if (v103 < 0)
              {
                v104 = 12000000;
              }

              *(v102 + 1) = v104 + v103;
            }

            v106 = 5;
          }

          else
          {
            v106 = 1;
          }

          v101 += v106;
        }

        while ((v101 + 10) < v19 - v13);
      }

      goto LABEL_154;
    }

    v115 = 0;
    v19 = v13;
    v116 = v13;
    do
    {
      v20 = v19;
      LODWORD(v21) = __n;
      if (__n == v18)
      {
        v115 = 1;
        v22 = 4;
      }

      else
      {
        v23 = v123;
        if (v123 >= 49)
        {
          v24 = v122;
        }

        else
        {
          v24 = v122;
          v25 = (v120 + 1);
          v26 = 48 - v123;
          v27 = v123;
          while (v25 <= v121)
          {
            v28 = *(v25 - 2);
            v23 = v27 + 16;
            LODWORD(v123) = v27 + 16;
            v24 |= v28 << v26;
            v120 = v25;
            v122 = v24;
            v25 += 2;
            v26 -= 16;
            v105 = v27 < 33;
            v27 += 16;
            if (!v105)
            {
              goto LABEL_25;
            }
          }

          v23 = v27;
          if (v27 < 3)
          {
            return 0;
          }
        }

LABEL_25:
        v22 = v24 >> 61;
        v29 = 8 * v24;
        v122 = v29;
        v30 = v23 - 3;
        LODWORD(v123) = v23 - 3;
        if ((v22 - 1) > 2)
        {
          return 0;
        }

        if (v23 > 0x33)
        {
          goto LABEL_32;
        }

        v31 = v23 + 13;
        v32 = (v120 + 1);
        v33 = 51 - v23;
        while (v32 <= v121)
        {
          v34 = *(v32 - 2);
          LODWORD(v123) = v31;
          v29 |= v34 << v33;
          v120 = v32;
          v122 = v29;
          v35 = v31 + 16;
          v32 += 2;
          v36 = v31 - 16;
          v33 -= 16;
          v31 += 16;
          if (v36 >= 33)
          {
            v30 = v35 - 16;
            goto LABEL_32;
          }
        }

        v30 = v31 - 16;
        if ((v31 - 16) < 1)
        {
          return 0;
        }

LABEL_32:
        v37 = 2 * v29;
        v122 = 2 * v29;
        v38 = v30 - 1;
        LODWORD(v123) = v30 - 1;
        if (v29 < 0)
        {
          LODWORD(v21) = v18;
        }

        else
        {
          if (v30 > 0x31)
          {
            goto LABEL_40;
          }

          v39 = v30 + 15;
          v40 = (v120 + 1);
          v41 = 49 - v30;
          while (v40 <= v121)
          {
            v42 = *(v40 - 2);
            LODWORD(v123) = v39;
            v37 |= v42 << v41;
            v120 = v40;
            v122 = v37;
            v43 = v39 + 16;
            v40 += 2;
            v44 = v39 - 16;
            v41 -= 16;
            v39 += 16;
            if (v44 >= 33)
            {
              v38 = v43 - 16;
              goto LABEL_40;
            }
          }

          v38 = v39 - 16;
          if ((v39 - 16) < 16)
          {
            return 0;
          }

LABEL_40:
          v122 = v37 << 16;
          LODWORD(v123) = v38 - 16;
          if (v37 > 0x8000FFFFFFFFFFFFLL)
          {
            return 0;
          }

          v21 = HIWORD(v37);
        }
      }

      if (v18 < v21)
      {
        return 0;
      }

      v19 += v21;
      if (v19 > a2)
      {
        return 0;
      }

      v45 = v21;
      if (v22 != 3)
      {
        if (v22 == 4)
        {
          if ((v123 & 7) != 0)
          {
            return 0;
          }

          v46 = v120 - (v123 >> 3);
          v120 = v46;
          v122 = 0;
          LODWORD(v123) = 0;
          v47 = &v46[v21];
          if (v47 > v121)
          {
            return 0;
          }

          memcpy((a1 + v20), v46, v21);
          v120 = v47;
          goto LABEL_138;
        }

        if (!v21)
        {
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          v55 = 0;
          v56 = v123;
          v58 = v121;
          v57 = v122;
          v59 = v120;
          do
          {
            if (v56 > 48)
            {
              v61 = v59;
              v63 = v56;
            }

            else
            {
              v60 = 48 - v56;
              while (1)
              {
                v61 = v59 + 1;
                if ((v59 + 1) > v58)
                {
                  break;
                }

                v62 = *v59;
                v63 = v56 + 16;
                LODWORD(v123) = v56 + 16;
                v57 |= v62 << v60;
                v120 = v61;
                v122 = v57;
                v60 -= 16;
                v59 = v61;
                v105 = v56 < 33;
                v56 += 16;
                if (!v105)
                {
                  goto LABEL_66;
                }
              }

              v61 = v59;
              v63 = v56;
              if (v56 < 3)
              {
                return 0;
              }
            }

LABEL_66:
            v64 = v57 >> 61;
            v57 *= 8;
            v122 = v57;
            v56 = v63 - 3;
            LODWORD(v123) = v63 - 3;
            __n_4[v55++] = v64;
            v59 = v61;
          }

          while (v55 != 8);
          lzx_huffman_tree_compute_lookup_from_code_len(__n_4);
        }

        if (!lzx_huffman_tree_update_tree_using_pre_tree_encoding((a5 + 4), &v120, 0, 256, a5 + 49343) && !lzx_huffman_tree_update_tree_using_pre_tree_encoding((a5 + 4), &v120, 0x100uLL, 240, a5 + 49343) && !lzx_huffman_tree_compute_lookup_from_code_len(a5 + 16) && !lzx_huffman_tree_update_tree_using_pre_tree_encoding((a5 + 32898), &v120, 0, 249, a5 + 49343) && !lzx_huffman_tree_compute_lookup_from_code_len(a5 + 131592))
        {
          v65 = v45;
          while (1)
          {
            while (1)
            {
              v125 = 0;
              if (lzx_huffman_tree_read_code(&v125, &v120, (a5 + 4)))
              {
                return 0;
              }

              if (v125 > 0xFFu)
              {
                break;
              }

              *(a1 + v20++) = v125;
              if (!--v65)
              {
                goto LABEL_138;
              }
            }

            v66 = v125 & 7;
            if (v66 == 7)
            {
              v124 = 0;
              if (lzx_huffman_tree_read_code(&v124, &v120, (a5 + 32898)))
              {
                return 0;
              }

              v67 = v124 + 9;
            }

            else
            {
              v67 = v66 + 2;
            }

            v90 = v65 >= v67;
            v65 -= v67;
            if (!v90)
            {
              return 0;
            }

            v68 = (v125 - 256) >> 3;
            if (v68 == 2)
            {
              break;
            }

            if (v68 == 1)
            {
              v69 = a5[1];
              a5[1] = *a5;
              goto LABEL_91;
            }

            if (!v68)
            {
              v69 = *a5;
              if (*a5)
              {
                goto LABEL_120;
              }

LABEL_92:
              v70 = 0;
              goto LABEL_93;
            }

            v73 = position_slot_extra_bits[v68];
            v70 = position_slot_base_position[v68];
            v124 = 0;
            if (v22 == 2 && (v68 - 8) <= 0x15)
            {
              v74 = v73 - 3;
              if ((v73 - 3) > 0x30)
              {
                return 0;
              }

              v108 = v70;
              if (v73 == 3)
              {
                LODWORD(v71) = 0;
              }

              else
              {
                v75 = v123;
                if (v123 <= 48)
                {
                  v76 = v122;
                  v77 = (v120 + 1);
                  v78 = 48 - v123;
                  while (v77 <= v121)
                  {
                    v79 = *(v77 - 2);
                    v80 = v75 + 16;
                    LODWORD(v123) = v75 + 16;
                    v76 |= v79 << v78;
                    v120 = v77;
                    v122 = v76;
                    v77 += 2;
                    v78 -= 16;
                    v105 = v75 < 33;
                    v75 += 16;
                    if (!v105)
                    {
                      goto LABEL_111;
                    }
                  }
                }

                v80 = v75;
LABEL_111:
                if (v80 < v74)
                {
                  return 0;
                }

                v87 = v122 >> (67 - v73);
                v122 <<= v74;
                LODWORD(v123) = v80 - v74;
                LODWORD(v71) = 8 * v87;
              }

              v88 = lzx_huffman_tree_read_code(&v124, &v120, __n_4);
              v70 = v108;
              if (v88)
              {
                return 0;
              }

              v72 = v124 - 2;
              goto LABEL_119;
            }

            if (v68 >= 4)
            {
              v81 = v123;
              if (v123 <= 48)
              {
                v82 = v122;
                v83 = (v120 + 1);
                v84 = 48 - v123;
                while (v83 <= v121)
                {
                  v85 = *(v83 - 2);
                  v86 = v81 + 16;
                  LODWORD(v123) = v81 + 16;
                  v82 |= v85 << v84;
                  v120 = v83;
                  v122 = v82;
                  v83 += 2;
                  v84 -= 16;
                  v105 = v81 < 33;
                  v81 += 16;
                  if (!v105)
                  {
                    goto LABEL_114;
                  }
                }
              }

              v86 = v81;
LABEL_114:
              if (v86 < v73)
              {
                return 0;
              }

              v71 = v122 >> -v73;
              v122 <<= v73;
              LODWORD(v123) = v86 - v73;
              goto LABEL_94;
            }

LABEL_93:
            LODWORD(v71) = 0;
LABEL_94:
            v72 = -2;
LABEL_119:
            v69 = v72 + v70 + v71;
            *(a5 + 1) = *a5;
            *a5 = v69;
LABEL_120:
            v89 = v69;
            if (v69)
            {
              v90 = v20 >= v69;
            }

            else
            {
              v90 = 0;
            }

            if (!v90)
            {
              return 0;
            }

            v91 = -v20;
            v92 = (a1 + v20);
            v93 = -v89;
            do
            {
              *v92 = v92[v93];
              ++v92;
              --v91;
              --v67;
            }

            while (v67);
            v20 = -v91;
            if (!v65)
            {
              goto LABEL_138;
            }
          }

          v69 = a5[2];
          a5[2] = *a5;
LABEL_91:
          *a5 = v69;
          if (v69)
          {
            goto LABEL_120;
          }

          goto LABEL_92;
        }

        return 0;
      }

      v48 = v123;
      v49 = v123 & 0xF;
      if ((v123 & 0xF) == 0)
      {
        v49 = 16;
      }

      if (v123 <= 48)
      {
        v50 = v122;
        v51 = (v120 + 1);
        v52 = 48 - v123;
        while (v51 <= v121)
        {
          v53 = *(v51 - 2);
          v54 = v48 + 16;
          LODWORD(v123) = v48 + 16;
          v50 |= v53 << v52;
          v120 = v51;
          v122 = v50;
          v51 += 2;
          v52 -= 16;
          v105 = v48 < 33;
          v48 += 16;
          if (!v105)
          {
            goto LABEL_130;
          }
        }
      }

      v54 = v48;
LABEL_130:
      v94 = __OFSUB__(v54, v49);
      v95 = v54 - v49;
      if (v95 < 0 != v94)
      {
        return 0;
      }

      if ((v95 & 7) != 0)
      {
        return 0;
      }

      v96 = v121;
      v97 = (v120 - (v95 >> 3));
      v120 = v97;
      v122 = 0;
      LODWORD(v123) = 0;
      v98 = (v97 + 6);
      if ((v97 + 6) > v121)
      {
        return 0;
      }

      v99 = *(v97 + 2);
      *a5 = *v97;
      a5[2] = v99;
      v120 = v97 + 6;
      v122 = 0;
      LODWORD(v123) = 0;
      v100 = &v98[v45];
      if (&v98[v45] > v96)
      {
        return 0;
      }

      memcpy((a1 + v20), v98, v45);
      v120 = v100;
      if ((v45 & 1) != 0 && v96 != v100)
      {
        v122 = 0;
        LODWORD(v123) = 0;
        if ((v100 + 1) > v96)
        {
          return 0;
        }

        v120 = (v100 + 1);
      }

LABEL_138:
      v18 -= v45;
      v13 = v116;
    }

    while (v18);
    v11 = a3;
    v7 = a4;
    if (!v115)
    {
      goto LABEL_140;
    }

LABEL_154:
    v13 = v19;
    v14 = v114;
    v9 = v111;
    LODWORD(v8) = v112;
  }

  while (v114 != v111);
  return v19;
}

unint64_t BrotliCreateBackwardReferences(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, double a5, int32x4_t a6, double a7, double a8, double a9, int32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, unint64_t *a15, _DWORD *a16, void *a17, void *a18)
{
  v18 = *(a12 + 40);
  if (v18 > 39)
  {
    if (v18 > 53)
    {
      switch(v18)
      {
        case '6':
          return CreateBackwardReferencesNH54(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case '7':
          return CreateBackwardReferencesNH55(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case 'A':
          return CreateBackwardReferencesNH65(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    else
    {
      switch(v18)
      {
        case '(':
          return CreateBackwardReferencesNH40(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case ')':
          return CreateBackwardReferencesNH41(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
        case '*':
          return CreateBackwardReferencesNH42(result, a2, a3, a4, a12, a13, a14, a15, a5, a6, a7, a8, a9, a10, a16, a17, a18);
      }
    }
  }

  else if (v18 > 4)
  {
    switch(v18)
    {
      case 5:
        return CreateBackwardReferencesNH5(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 6:
        return CreateBackwardReferencesNH6(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 35:
        return CreateBackwardReferencesNH35(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  else
  {
    switch(v18)
    {
      case 2:
        return CreateBackwardReferencesNH2(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 3:
        return CreateBackwardReferencesNH3(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
      case 4:
        return CreateBackwardReferencesNH4(result, a2, a3, a4, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  return result;
}

unint64_t CreateBackwardReferencesNH2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  if (result <= 7)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 + result - 7;
  }

  v144 = v15;
  if (*(a5 + 4) >= 9)
  {
    v16 = 512;
  }

  else
  {
    v16 = 64;
  }

  if (a2 + 8 >= v13)
  {
    v148 = a9;
    v98 = a2;
    goto LABEL_224;
  }

  v141 = v16;
  v17 = (1 << *(a5 + 8)) - 16;
  v151 = *(a5 + 16);
  v18 = v16 + a2;
  v150 = a2 + result;
  v147 = 4 * v16;
  v148 = a9;
  v19 = *(a6 + 56);
  v146 = a7;
  v149 = a6;
  v142 = a2 + result - 7;
  do
  {
    v20 = v13 - v11;
    if (v11 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v11;
    }

    v22 = v11 + v151;
    if (v11 + v151 >= v17)
    {
      v22 = v17;
    }

    v23 = *(a5 + 80);
    v24 = (a3 + (v11 & a4));
    v25 = *v24;
    v26 = (0xBD1E35A7BD000000 * *v24) >> 48;
    v27 = *a7;
    if (v11 < v27)
    {
      goto LABEL_25;
    }

    v28 = (a3 + (a4 & (v11 - v27)));
    if (v25 != *v28)
    {
      goto LABEL_25;
    }

    if (v20 < 8)
    {
      v31 = 0;
      v32 = (a3 + (v11 & a4));
LABEL_212:
      v136 = v20 & 7;
      if ((v20 & 7) != 0)
      {
        v137 = v31 | v136;
        while (v28[v31] == *v32)
        {
          ++v32;
          ++v31;
          if (!--v136)
          {
            v31 = v137;
            break;
          }
        }
      }
    }

    else
    {
      v29 = 0;
      v30 = v20 >> 3;
      v31 = v20 & 0xFFFFFFFFFFFFFFF8;
      v32 = v24 + (v20 & 0xFFFFFFFFFFFFFFF8);
      while (1)
      {
        v33 = v24[v29];
        v34 = *&v28[v29 * 8];
        if (v33 != v34)
        {
          break;
        }

        ++v29;
        if (!--v30)
        {
          goto LABEL_212;
        }
      }

      v31 = v29 * 8 + (__clz(__rbit64(v34 ^ v33)) >> 3);
    }

    if (v31 >= 4 && (v35 = 135 * v31 + 1935, v35 >= 0x7E5))
    {
      v145 = *(a5 + 80);
      v36 = 0;
      *(v19 + 4 * v26) = v11;
    }

    else
    {
LABEL_25:
      v37 = *(v19 + 4 * v26);
      *(v19 + 4 * v26) = v11;
      v27 = v11 - v37;
      result = a3 + (v37 & a4);
      if (v25 != *result || v11 == v37 || v27 > v21)
      {
        goto LABEL_118;
      }

      if (v20 < 8)
      {
        v31 = 0;
        v42 = (a3 + (v11 & a4));
LABEL_204:
        v134 = v20 & 7;
        if ((v20 & 7) != 0)
        {
          v135 = v31 | v134;
          while (*(result + v31) == *v42)
          {
            ++v42;
            ++v31;
            if (!--v134)
            {
              v31 = v135;
              break;
            }
          }
        }
      }

      else
      {
        v40 = 0;
        v41 = v20 >> 3;
        v31 = v20 & 0xFFFFFFFFFFFFFFF8;
        v42 = v24 + (v20 & 0xFFFFFFFFFFFFFFF8);
        while (1)
        {
          v43 = v24[v40];
          v44 = *(result + v40 * 8);
          if (v43 != v44)
          {
            break;
          }

          ++v40;
          if (!--v41)
          {
            goto LABEL_204;
          }
        }

        v31 = v40 * 8 + (__clz(__rbit64(v44 ^ v43)) >> 3);
      }

      if (v31 < 4 || (v35 = 135 * v31 - 30 * (__clz(v27) ^ 0x1F) + 1920, v35 <= 0x7E4))
      {
        v93 = *(a6 + 48);
        v95 = *(v93 + 8);
        v94 = *(v93 + 16);
        if (v94 < v95 >> 7)
        {
          goto LABEL_118;
        }

        v96 = ((506832829 * *v24) >> 17) & 0x7FFELL;
        v97 = *(a5 + 120);
        *(v93 + 8) = v95 + 1;
        result = *(v97 + v96);
        if (!*(v97 + v96) || v20 < result)
        {
          goto LABEL_118;
        }

        v111 = *(*(a5 + 112) + 2 * v96);
        v112 = *(a5 + 88);
        v113 = *(v112 + 4 * result + 32);
        v114 = *(v112 + 168) + v111 * result;
        v115 = (v114 + v113);
        if (result < 8)
        {
          v31 = 0;
LABEL_218:
          v138 = result & 7;
          if ((result & 7) != 0)
          {
            v139 = v31 | v138;
            while (*(v24 + v31) == *v115)
            {
              ++v115;
              ++v31;
              if (!--v138)
              {
                v31 = v139;
                break;
              }
            }
          }
        }

        else
        {
          v116 = 0;
          v31 = result & 0xF8;
          v117 = (v114 + v31 + v113);
          while (1)
          {
            v118 = *&v115[v116];
            v119 = v24[v116 / 8];
            if (v118 != v119)
            {
              break;
            }

            v116 += 8;
            if (v31 == v116)
            {
              v115 = v117;
              goto LABEL_218;
            }
          }

          v31 = v116 + (__clz(__rbit64(v119 ^ v118)) >> 3);
        }

        if (!v31 || v31 + *(a5 + 100) <= result || (v27 = v22 + 1 + v111 + ((((*(a5 + 104) >> (6 * (result - v31))) & 0x3FLL) + 4 * (result - v31)) << *(v112 + result)), v27 > v23) || (v35 = 135 * v31 - 30 * (__clz(v27) ^ 0x1F) + 1920, v35 < 0x7E4) || (*(v93 + 16) = v94 + 1, v35 == 2020))
        {
LABEL_118:
          ++v12;
          v98 = v11 + 1;
          if (v11 + 1 > v18)
          {
            if (v98 <= v18 + v147)
            {
              v100 = v11 + 9;
              if (v11 + 9 >= v14)
              {
                v100 = v14;
              }

              while (v98 < v100)
              {
                *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v98 & a4))) >> 46) & 0x3FFFC)) = v98;
                v12 += 2;
                v98 += 2;
              }
            }

            else
            {
              v99 = v11 + 17;
              if (v11 + 17 >= v14)
              {
                v99 = v14;
              }

              while (v98 < v99)
              {
                *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v98 & a4))) >> 46) & 0x3FFFC)) = v98;
                v12 += 4;
                v98 += 4;
              }
            }
          }

          goto LABEL_199;
        }

        v145 = v23;
        v36 = result - v31;
      }

      else
      {
        v145 = v23;
        v36 = 0;
      }
    }

    result = 0;
    v45 = *v146;
    while (1)
    {
      --v20;
      v46 = v31 - 1;
      if (v31 - 1 >= v20)
      {
        v46 = v20;
      }

      if (*(a5 + 4) >= 5)
      {
        v47 = 0;
      }

      else
      {
        v47 = v46;
      }

      v48 = v11 + 1;
      if (v11 + 1 < v17)
      {
        v49 = v11 + 1;
      }

      else
      {
        v49 = v17;
      }

      v50 = v48 + v151;
      v51 = (a3 + (v48 & a4));
      v52 = *(v51 + v47);
      if (v48 + v151 >= v17)
      {
        v50 = v17;
      }

      v53 = (0xBD1E35A7BD000000 * *v51) >> 48;
      if (v48 >= v45)
      {
        v54 = a3 + (a4 & (v48 - v45));
        if (v52 == *(v54 + v47))
        {
          if (v20 < 8)
          {
            v61 = 0;
            v58 = (a3 + (v48 & a4));
LABEL_105:
            v90 = v20 & 7;
            if ((v20 & 7) != 0)
            {
              do
              {
                if (*(v54 + v61) != *v58)
                {
                  break;
                }

                v58 = (v58 + 1);
                ++v61;
                --v90;
              }

              while (v90);
            }
          }

          else
          {
            v55 = 0;
            v56 = v20 >> 3;
            v57 = (a3 + (a4 & (v48 - v45)));
            v58 = (a3 + (v48 & a4));
            while (1)
            {
              v60 = *v57++;
              v59 = v60;
              if (*v58 != v60)
              {
                break;
              }

              ++v58;
              v55 -= 8;
              if (!--v56)
              {
                v61 = -v55;
                v13 = v150;
                goto LABEL_105;
              }
            }

            v61 = (__clz(__rbit64(v59 ^ *v58)) >> 3) - v55;
            v13 = v150;
          }

          if (v61 >= 4)
          {
            v62 = 135 * v61 + 1935;
            if (v62 >= 0x7E5)
            {
              v63 = 0;
              *(v19 + 4 * v53) = v48;
              v64 = v45;
              goto LABEL_84;
            }
          }
        }
      }

      v65 = *(v19 + 4 * v53);
      *(v19 + 4 * v53) = v48;
      v66 = (a3 + (v65 & a4));
      if (v52 != *(v66 + v47) || ((v64 = v48 - v65, v48 != v65) ? (v67 = v64 > v49) : (v67 = 1), v67))
      {
        v64 = 0;
        v63 = 0;
        v61 = v47;
        v62 = 2020;
        goto LABEL_84;
      }

      if (v20 < 8)
      {
        v61 = 0;
        v71 = (a3 + (v48 & a4));
LABEL_100:
        v89 = v20 & 7;
        if ((v20 & 7) != 0)
        {
          do
          {
            if (*(v66 + v61) != *v71)
            {
              break;
            }

            v71 = (v71 + 1);
            ++v61;
            --v89;
          }

          while (v89);
        }
      }

      else
      {
        v68 = 0;
        v69 = v20 >> 3;
        v70 = v66;
        v71 = (a3 + (v48 & a4));
        while (1)
        {
          v73 = *v70++;
          v72 = v73;
          if (*v71 != v73)
          {
            break;
          }

          ++v71;
          v68 -= 8;
          if (!--v69)
          {
            v61 = -v68;
            goto LABEL_100;
          }
        }

        v61 = (__clz(__rbit64(v72 ^ *v71)) >> 3) - v68;
      }

      if (v61 >= 4)
      {
        v62 = 135 * v61 - 30 * (__clz(v64) ^ 0x1F) + 1920;
        if (v62 > 0x7E4)
        {
          v63 = 0;
          goto LABEL_84;
        }
      }

      v74 = *(v149 + 48);
      v75 = *(v74 + 8);
      v76 = *(v74 + 16);
      if (v76 >= v75 >> 7)
      {
        v77 = ((506832829 * *v51) >> 17) & 0x7FFELL;
        v78 = *(a5 + 120);
        *(v74 + 8) = v75 + 1;
        v79 = *(v78 + v77);
        if (*(v78 + v77))
        {
          if (v20 >= v79)
          {
            v81 = *(a5 + 88);
            v82 = *(v81 + 4 * v79 + 32);
            v143 = *(*(a5 + 112) + 2 * v77);
            v83 = *(v81 + 168) + v143 * *(v78 + v77);
            v84 = (v83 + v82);
            if (v79 < 8)
            {
              v61 = 0;
LABEL_110:
              v91 = v79 & 7;
              if ((v79 & 7) != 0)
              {
                v92 = v61 | v91;
                while (*(v51 + v61) == *v84)
                {
                  ++v84;
                  ++v61;
                  if (!--v91)
                  {
                    v61 = v92;
                    break;
                  }
                }
              }
            }

            else
            {
              v85 = 0;
              v61 = v79 & 0xF8;
              v86 = (v83 + v61 + v82);
              while (1)
              {
                v87 = *&v84[v85];
                v88 = v51[v85 / 8];
                if (v87 != v88)
                {
                  break;
                }

                v85 += 8;
                if (v61 == v85)
                {
                  v84 = v86;
                  goto LABEL_110;
                }
              }

              v61 = v85 + (__clz(__rbit64(v88 ^ v87)) >> 3);
            }

            v63 = 0;
            v64 = 0;
            if (!v61 || v61 + *(a5 + 100) <= v79)
            {
              goto LABEL_82;
            }

            v64 = v50 + 1 + v143 + ((((*(a5 + 104) >> (6 * (v79 - v61))) & 0x3FLL) + 4 * (v79 - v61)) << *(v81 + v79));
            if (v64 <= v145)
            {
              v62 = 135 * v61 - 30 * (__clz(v64) ^ 0x1F) + 1920;
              if (v62 >= 0x7E4)
              {
                v63 = v79 - v61;
                *(v74 + 16) = v76 + 1;
                goto LABEL_83;
              }
            }
          }
        }
      }

      v64 = 0;
      v63 = 0;
LABEL_82:
      v61 = v47;
      v62 = 2020;
LABEL_83:
      v13 = v150;
LABEL_84:
      if (v62 < v35 + 175)
      {
        break;
      }

      ++v12;
      if (result <= 2)
      {
        v80 = v11 + 9;
        result = (result + 1);
        v27 = v64;
        v35 = v62;
        v36 = v63;
        v31 = v61;
        ++v11;
        if (v80 < v13)
        {
          continue;
        }
      }

      goto LABEL_131;
    }

    v50 = v11 + v151;
    if (v11 + v151 >= v17)
    {
      v50 = v17;
    }

    v64 = v27;
    v63 = v36;
    v61 = v31;
    v48 = v11;
LABEL_131:
    a7 = v146;
    if (v64 > v50)
    {
LABEL_132:
      v101 = v64 + 15;
      goto LABEL_133;
    }

    v102 = *v146;
    if (v64 == v102)
    {
      v101 = 0;
      goto LABEL_138;
    }

    v120 = v146[1];
    if (v64 == v120)
    {
      v101 = 1;
    }

    else
    {
      v121 = v64 + 3 - v102;
      if (v121 > 6)
      {
        v124 = v64 + 3 - v120;
        if (v124 > 6)
        {
          if (v64 == v146[2])
          {
            v101 = 2;
          }

          else
          {
            if (v64 != v146[3])
            {
              goto LABEL_132;
            }

            v101 = 3;
          }

          goto LABEL_133;
        }

        v122 = 4 * v124;
        v123 = 266017486;
      }

      else
      {
        v122 = 4 * v121;
        v123 = 158663784;
      }

      v101 = (v123 >> v122) & 0xF;
    }

LABEL_133:
    if (v64 <= v50 && v101)
    {
      v146[3] = v146[2];
      *(v146 + 1) = *v146;
      *v146 = v64;
    }

LABEL_138:
    *v148 = v12;
    *(v148 + 4) = v61 | (v63 << 25);
    v103 = *(a5 + 68);
    v104 = v103 + 16;
    if (v103 + 16 <= v101)
    {
      v106 = *(a5 + 64);
      v107 = v101 - v103 + (4 << v106) - 16;
      v108 = (__clz(v107) ^ 0x1F) - 1;
      result = ((v107 >> v108) & 1 | 2) << v108;
      v101 = ((v107 & ~(-1 << v106)) + v104 + ((((v107 >> v108) & 1 | (2 * (v108 - v106))) + 65534) << v106)) | ((v108 - v106) << 10);
      v105 = (v107 - result) >> v106;
    }

    else
    {
      LODWORD(v105) = 0;
    }

    *(v148 + 14) = v101;
    *(v148 + 8) = v105;
    if (v12 > 5)
    {
      if (v12 > 0x81)
      {
        if (v12 > 0x841)
        {
          if (v12 >> 1 >= 0xC21)
          {
            if (v12 < 0x5842)
            {
              LOWORD(v109) = 22;
            }

            else
            {
              LOWORD(v109) = 23;
            }
          }

          else
          {
            LOWORD(v109) = 21;
          }
        }

        else
        {
          v109 = (__clz(v12 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v110 = (__clz(v12 - 2) ^ 0x1F) - 1;
        v109 = ((v12 - 2) >> v110) + 2 * v110 + 2;
      }
    }

    else
    {
      LOWORD(v109) = v12;
    }

    v125 = v63 + v61;
    if ((v63 + v61) > 9)
    {
      if (v125 > 0x85)
      {
        if (v125 > 0x845)
        {
          LOWORD(v125) = 23;
        }

        else
        {
          v125 = (__clz(v125 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v126 = v125 - 6;
        v127 = __clz(v126);
        v125 = (v126 >> ((v127 ^ 0x1F) - 1)) + 2 * ((v127 ^ 0x1F) - 1) + 4;
      }
    }

    else
    {
      LOWORD(v125) = v125 - 2;
    }

    v128 = v125 & 7 | (8 * (v109 & 7));
    if ((v101 & 0x3FF) != 0 || v109 > 7u || v125 > 0xFu)
    {
      v130 = 3 * (v109 >> 3) + ((v125 & 0xFFF8) >> 3);
      v129 = ((((0x520D40u >> (2 * v130)) & 0xC0) + (v130 << 6)) | v128) + 64;
    }

    else
    {
      LOWORD(v129) = v128 | 0x40;
      if ((v125 & 0xFFF8) == 0)
      {
        LOWORD(v129) = v128;
      }
    }

    *(v148 + 12) = v129;
    *a11 += v12;
    v131 = v48 + 2;
    v98 = v48 + v61;
    if (v48 + v61 >= v144)
    {
      v132 = v144;
    }

    else
    {
      v132 = v48 + v61;
    }

    if (v64 < v61 >> 2)
    {
      v133 = v98 - 4 * v64;
      if (v131 > v133)
      {
        v133 = v48 + 2;
      }

      if (v132 >= v133)
      {
        v131 = v133;
      }

      else
      {
        v131 = v132;
      }
    }

    v18 = v141 + 2 * v61 + v48;
    v148 += 16;
    if (v131 >= v132)
    {
      v12 = 0;
      a6 = v149;
      v14 = v142;
    }

    else
    {
      a6 = v149;
      v14 = v142;
      do
      {
        *(v19 + (((0xBD1E35A7BD000000 * *(a3 + (v131 & a4))) >> 46) & 0x3FFFC)) = v131;
        ++v131;
      }

      while (v132 != v131);
      v12 = 0;
    }

LABEL_199:
    v11 = v98;
  }

  while (v98 + 8 < v13);
LABEL_224:
  *a8 = v12 + v13 - v98;
  *a10 += (v148 - a9) >> 4;
  return result;
}

unint64_t CreateBackwardReferencesNH3(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v128[1] = *MEMORY[0x29EDCA608];
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v114 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v117 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (a2 + 8 < v13)
  {
    v124 = (1 << *(a5 + 8)) - 16;
    v115 = *(a5 + 16);
    v16 = v15 + a2;
    v120 = a2 + result;
    v17 = *(a6 + 56);
    v116 = v15;
    v113 = 4 * v15;
    v118 = a7;
    v119 = a9;
    v121 = a5;
    while (1)
    {
      v122 = v16;
      v18 = v13 - a2;
      if (a2 >= v124)
      {
        v19 = v124;
      }

      else
      {
        v19 = a2;
      }

      v20 = (a3 + (a2 & a4));
      v21 = *v20;
      v22 = *a7;
      v126 = v12;
      if (a2 < v22)
      {
        goto LABEL_22;
      }

      v23 = (a3 + (a4 & (a2 - v22)));
      if (v21 != *v23)
      {
        goto LABEL_22;
      }

      if (v18 < 8)
      {
        v25 = 0;
        v26 = (a3 + (a2 & a4));
LABEL_181:
        v110 = v18 & 7;
        if ((v18 & 7) != 0)
        {
          v111 = v25 | v110;
          while (1)
          {
            result = *v26;
            if (v23[v25] != result)
            {
              break;
            }

            ++v26;
            ++v25;
            if (!--v110)
            {
              v25 = v111;
              break;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v25 = v18 & 0xFFFFFFFFFFFFFFF8;
        v26 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
        v27 = v18 >> 3;
        while (1)
        {
          v28 = v20[v24];
          result = *&v23[v24 * 8];
          if (v28 != result)
          {
            break;
          }

          ++v24;
          if (!--v27)
          {
            goto LABEL_181;
          }
        }

        v25 = v24 * 8 + (__clz(__rbit64(result ^ v28)) >> 3);
      }

      if (v25 >= 4 && (v29 = 135 * v25 + 1935, v29 >= 0x7E5))
      {
        v125 = *a7;
        v21 = *(v20 + v25);
      }

      else
      {
LABEL_22:
        v125 = 0;
        v25 = 0;
        v29 = 2020;
      }

      v127 = (0xBD1E35A7BD000000 * *v20) >> 48;
      v128[0] = (v127 + 8);
      v30 = &v127;
      v31 = 1;
      do
      {
        v32 = v31;
        v33 = *(v17 + 4 * *v30);
        v34 = a2 - v33;
        v35 = a3 + (v33 & a4);
        if (v21 == *(v35 + v25) && a2 != v33 && v34 <= v19)
        {
          if (v18 < 8)
          {
            v42 = 0;
            v43 = (a3 + (a2 & a4));
LABEL_43:
            if ((v18 & 7) != 0)
            {
              v44 = v18 & 7 | v42;
              v45 = v18 & 7;
              while (1)
              {
                result = *(v35 + v42);
                if (result != *v43)
                {
                  break;
                }

                ++v43;
                ++v42;
                if (!--v45)
                {
                  v42 = v44;
                  break;
                }
              }
            }
          }

          else
          {
            v38 = 0;
            v39 = v18 >> 3;
            while (1)
            {
              v40 = v20[v38];
              v41 = *(v35 + v38 * 8);
              if (v40 != v41)
              {
                break;
              }

              ++v38;
              if (!--v39)
              {
                v42 = v18 & 0xFFFFFFFFFFFFFFF8;
                v43 = v20 + (v18 & 0xFFFFFFFFFFFFFFF8);
                goto LABEL_43;
              }
            }

            v42 = v38 * 8 + (__clz(__rbit64(v41 ^ v40)) >> 3);
          }

          if (v42 >= 4)
          {
            result = 30 * (__clz(v34) ^ 0x1F);
            if (v29 < 135 * v42 - result + 1920)
            {
              v21 = *(v20 + v42);
              v125 = v34;
              v29 = 135 * v42 - result + 1920;
              v25 = v42;
            }
          }
        }

        v31 = 0;
        v30 = v128;
      }

      while ((v32 & 1) != 0);
      *(v17 + 4 * *(&v128[-1] + (a2 & 8))) = a2;
      if (v29 < 0x7E5)
      {
        ++v12;
        v82 = a2 + 1;
        v16 = v122;
        if (a2 + 1 > v122)
        {
          if (v82 <= v122 + v113)
          {
            v96 = a2 + 9;
            if (a2 + 9 >= v114)
            {
              v96 = v114;
            }

            while (v82 < v96)
            {
              *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v82 & a4))) >> 48) + (v82 & 8))) = v82;
              v12 += 2;
              v82 += 2;
            }
          }

          else
          {
            v83 = a2 + 17;
            if (a2 + 17 >= v114)
            {
              v83 = v114;
            }

            while (v82 < v83)
            {
              *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v82 & a4))) >> 48) + (v82 & 8))) = v82;
              v12 += 4;
              v82 += 4;
            }
          }
        }

        goto LABEL_174;
      }

      v46 = 0;
      v123 = *a7;
      while (1)
      {
        --v18;
        v47 = v25 - 1;
        if (v25 - 1 >= v18)
        {
          v47 = v18;
        }

        v48 = *(a5 + 4) >= 5 ? 0 : v47;
        v49 = a2 + 1;
        v50 = a2 + 1 < v124 ? a2 + 1 : v124;
        v51 = (a3 + (v49 & a4));
        v52 = *(v51 + v48);
        if (v49 < v123)
        {
          v61 = 0;
          v62 = 2020;
        }

        else
        {
          v53 = a3 + (a4 & (v49 - v123));
          if (v52 != *(v53 + v48))
          {
            goto LABEL_71;
          }

          if (v18 < 8)
          {
            v60 = 0;
            v57 = (a3 + (v49 & a4));
LABEL_102:
            v81 = v18 & 7;
            if ((v18 & 7) != 0)
            {
              do
              {
                if (*(v53 + v60) != *v57)
                {
                  break;
                }

                v57 = (v57 + 1);
                ++v60;
                --v81;
              }

              while (v81);
            }
          }

          else
          {
            v54 = 0;
            v55 = (a3 + (a4 & (v49 - v123)));
            v56 = v18 >> 3;
            v57 = (a3 + (v49 & a4));
            while (1)
            {
              v59 = *v55++;
              v58 = v59;
              if (*v57 != v59)
              {
                break;
              }

              ++v57;
              v54 -= 8;
              if (!--v56)
              {
                v60 = -v54;
                goto LABEL_102;
              }
            }

            v60 = (__clz(__rbit64(v58 ^ *v57)) >> 3) - v54;
          }

          if (v60 >= 4 && (v62 = 135 * v60 + 1935, v62 >= 0x7E5))
          {
            v52 = *(v51 + v60);
            v48 = v60;
            v61 = v123;
          }

          else
          {
LABEL_71:
            v61 = 0;
            v62 = 2020;
          }
        }

        v127 = (0xBD1E35A7BD000000 * *v51) >> 48;
        v128[0] = (v127 + 8);
        v63 = &v127;
        v64 = 1;
        do
        {
          v65 = v64;
          v66 = *(v17 + 4 * *v63);
          v67 = v49 - v66;
          v68 = a3 + (v66 & a4);
          if (v52 == *(v68 + v48) && v49 != v66 && v67 <= v50)
          {
            if (v18 < 8)
            {
              v77 = 0;
              v74 = (a3 + (v49 & a4));
LABEL_92:
              if ((v18 & 7) != 0)
              {
                v79 = v18 & 7;
                do
                {
                  if (*(v68 + v77) != *v74)
                  {
                    break;
                  }

                  v74 = (v74 + 1);
                  ++v77;
                  --v79;
                }

                while (v79);
              }
            }

            else
            {
              v71 = 0;
              v72 = (a3 + (v66 & a4));
              v73 = v18 >> 3;
              v74 = (a3 + (v49 & a4));
              while (1)
              {
                v76 = *v72++;
                v75 = v76;
                if (*v74 != v76)
                {
                  break;
                }

                ++v74;
                v71 -= 8;
                if (!--v73)
                {
                  v77 = -v71;
                  goto LABEL_92;
                }
              }

              v77 = (__clz(__rbit64(v75 ^ *v74)) >> 3) - v71;
            }

            if (v77 >= 4)
            {
              v78 = __clz(v67) ^ 0x1F;
              if (v62 < 135 * v77 - 30 * v78 + 1920)
              {
                v52 = *(v51 + v77);
                v48 = v77;
                v61 = v67;
                v62 = 135 * v77 - 30 * v78 + 1920;
              }
            }
          }

          v64 = 0;
          v63 = v128;
        }

        while ((v65 & 1) != 0);
        *(v17 + 4 * *(&v128[-1] + (v49 & 8))) = v49;
        if (v62 < v29 + 175)
        {
          break;
        }

        ++v126;
        v13 = v120;
        a5 = v121;
        if (v46 <= 2)
        {
          v80 = a2 + 9;
          ++v46;
          v125 = v61;
          v29 = v62;
          v25 = v48;
          ++a2;
          if (v80 < v120)
          {
            continue;
          }
        }

        goto LABEL_113;
      }

      v61 = v125;
      v48 = v25;
      v49 = a2;
      v13 = v120;
      a5 = v121;
LABEL_113:
      if (v49 + v115 >= v124)
      {
        v84 = v124;
      }

      else
      {
        v84 = v49 + v115;
      }

      if (v61 > v84)
      {
        goto LABEL_117;
      }

      v89 = *v118;
      if (v61 != v89)
      {
        break;
      }

      LOWORD(v85) = 0;
      LODWORD(v88) = 0;
      *v119 = v126;
      *(v119 + 4) = v48;
LABEL_126:
      *(v119 + 14) = v85;
      *(v119 + 8) = v88;
      if (v126 > 5)
      {
        if (v126 > 0x81)
        {
          if (v126 > 0x841)
          {
            if (v126 >> 1 >= 0xC21)
            {
              if (v126 < 0x5842)
              {
                LOWORD(v94) = 22;
              }

              else
              {
                LOWORD(v94) = 23;
              }
            }

            else
            {
              LOWORD(v94) = 21;
            }
          }

          else
          {
            v94 = (__clz(v126 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v95 = __clz(v126 - 2);
          v94 = ((v126 - 2) >> ((v95 ^ 0x1F) - 1)) + 2 * ((v95 ^ 0x1F) - 1) + 2;
        }
      }

      else
      {
        LOWORD(v94) = v126;
      }

      if (v48 > 9)
      {
        if (v48 > 0x85)
        {
          if (v48 > 0x845)
          {
            LOWORD(v102) = 23;
          }

          else
          {
            v102 = (__clz(v48 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v103 = v48 - 6;
          v104 = __clz(v103);
          v102 = (v103 >> ((v104 ^ 0x1F) - 1)) + 2 * ((v104 ^ 0x1F) - 1) + 4;
        }
      }

      else
      {
        LOWORD(v102) = v48 - 2;
      }

      v105 = v102 & 7 | (8 * (v94 & 7));
      if ((v85 & 0x3FF) != 0 || v94 > 7u || v102 > 0xFu)
      {
        v107 = 3 * (v94 >> 3) + ((v102 & 0xFFF8) >> 3);
        v106 = ((((0x520D40u >> (2 * v107)) & 0xC0) + (v107 << 6)) | v105) + 64;
      }

      else
      {
        LOWORD(v106) = v105 | 0x40;
        if ((v102 & 0xFFF8) == 0)
        {
          LOWORD(v106) = v102 & 7 | (8 * (v94 & 7));
        }
      }

      *(v119 + 12) = v106;
      *a11 += v126;
      v108 = v49 + 2;
      v82 = v49 + v48;
      v109 = v117;
      if (v49 + v48 < v117)
      {
        v109 = v49 + v48;
      }

      if (v61 < v48 >> 2)
      {
        if (v108 <= v82 - 4 * v61)
        {
          v108 = v82 - 4 * v61;
        }

        if (v109 < v108)
        {
          v108 = v109;
        }
      }

      v16 = v116 + 2 * v48 + v49;
      result = v119 + 16;
      v119 += 16;
      if (v108 >= v109)
      {
        v12 = 0;
        a7 = v118;
      }

      else
      {
        a7 = v118;
        do
        {
          *(v17 + 4 * (((0xBD1E35A7BD000000 * *(a3 + (v108 & a4))) >> 48) + (v108 & 8))) = v108;
          ++v108;
        }

        while (v109 != v108);
        v12 = 0;
      }

LABEL_174:
      a2 = v82;
      if (v82 + 8 >= v13)
      {
        goto LABEL_187;
      }
    }

    v97 = v118[1];
    if (v61 == v97)
    {
      v85 = 1;
      goto LABEL_118;
    }

    v98 = v61 + 3;
    v99 = v61 + 3 - v89;
    if (v99 > 6)
    {
      if (v98 - v97 > 6)
      {
        if (v61 == v118[2])
        {
          v85 = 2;
        }

        else if (v61 == v118[3])
        {
          v85 = 3;
        }

        else
        {
LABEL_117:
          v85 = v61 + 15;
        }

LABEL_118:
        if (v61 <= v84 && v85)
        {
          v118[3] = v118[2];
          *(v118 + 1) = *v118;
          *v118 = v61;
        }

        *v119 = v126;
        *(v119 + 4) = v48;
        v86 = *(a5 + 68);
        v87 = v86 + 16;
        if (v86 + 16 <= v85)
        {
          v90 = *(a5 + 64);
          v91 = v85 - v86 + (4 << v90) - 16;
          v92 = (__clz(v91) ^ 0x1F) - 1;
          v93 = ((v91 >> v92) & 1 | 2) << v92;
          v85 = ((v91 & ~(-1 << v90)) + v87 + ((((v91 >> v92) & 1 | (2 * (v92 - v90))) + 65534) << v90)) | ((v92 - v90) << 10);
          v88 = (v91 - v93) >> v90;
        }

        else
        {
          LODWORD(v88) = 0;
        }

        goto LABEL_126;
      }

      v100 = 4 * (v98 - v97);
      v101 = 266017486;
    }

    else
    {
      v100 = 4 * v99;
      v101 = 158663784;
    }

    v85 = (v101 >> v100) & 0xF;
    goto LABEL_118;
  }

  v119 = a9;
  v82 = a2;
LABEL_187:
  *a8 = v12 + v13 - v82;
  *a10 += (v119 - a9) >> 4;
  return result;
}

unint64_t CreateBackwardReferencesNH4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *i, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a2;
  v176 = *MEMORY[0x29EDCA608];
  v12 = *a8;
  v13 = a2 + result;
  v14 = a2 + result - 7;
  v161 = v14;
  if (result <= 7)
  {
    v14 = a2;
  }

  v159 = v14;
  if (*(a5 + 4) >= 9)
  {
    v15 = 512;
  }

  else
  {
    v15 = 64;
  }

  if (a2 + 8 >= v13)
  {
    v162 = a9;
    v114 = a2;
    goto LABEL_244;
  }

  v158 = v15;
  v170 = *(a5 + 16);
  v171 = (1 << *(a5 + 8)) - 16;
  v16 = v15 + a2;
  v17 = *(a6 + 56);
  v160 = 4 * v15;
  v18 = vdupq_n_s64(0x1FFFFuLL);
  v162 = a9;
  v164 = i;
  v166 = a2 + result;
  v172 = a5;
  do
  {
    v19 = v13 - v11;
    if (v11 >= v171)
    {
      v20 = v171;
    }

    else
    {
      v20 = v11;
    }

    if (v11 + v170 >= v171)
    {
      v21 = v171;
    }

    else
    {
      v21 = v11 + v170;
    }

    v22 = (a3 + (v11 & a4));
    v23 = *v22;
    v24 = *i;
    result = v19 >> 3;
    if (v11 < v24)
    {
      goto LABEL_25;
    }

    v25 = (a3 + (a4 & (v11 - v24)));
    if (v23 != *v25)
    {
      goto LABEL_25;
    }

    v173 = *i;
    if (v19 < 8)
    {
      v27 = 0;
      v28 = (a3 + (v11 & a4));
LABEL_232:
      v153 = v19 & 7;
      if ((v19 & 7) != 0)
      {
        v154 = v27 | v153;
        while (v25[v27] == *v28)
        {
          ++v28;
          ++v27;
          if (!--v153)
          {
            v27 = v154;
            break;
          }
        }
      }
    }

    else
    {
      v26 = 0;
      v27 = v19 & 0xFFFFFFFFFFFFFFF8;
      v28 = v22 + (v19 & 0xFFFFFFFFFFFFFFF8);
      v29 = v19 >> 3;
      while (1)
      {
        v30 = v22[v26];
        v31 = *&v25[v26 * 8];
        if (v30 != v31)
        {
          break;
        }

        ++v26;
        if (!--v29)
        {
          goto LABEL_232;
        }
      }

      v27 = v26 * 8 + (__clz(__rbit64(v31 ^ v30)) >> 3);
    }

    if (v27 >= 4 && (v32 = 135 * v27 + 1935, v32 >= 0x7E5))
    {
      v23 = *(v22 + v27);
    }

    else
    {
LABEL_25:
      v173 = 0;
      v27 = 0;
      v32 = 2020;
    }

    v33 = 0;
    v163 = *(a5 + 80);
    v34 = vdupq_n_s64((0xBD1E35A7BD000000 * *v22) >> 47);
    v174 = vandq_s8(vaddq_s64(v34, xmmword_2986826B0), v18);
    v175 = vandq_s8(vaddq_s64(v34, xmmword_2986826C0), v18);
    v35 = *(v174.i64 + (v11 & 0x18));
    do
    {
      v36 = *(v17 + 4 * v174.i64[v33]);
      v37 = v11 - v36;
      v38 = a3 + (v36 & a4);
      if (v23 == *(v38 + v27) && v11 != v36 && v37 <= v20)
      {
        if (v19 < 8)
        {
          v45 = 0;
          v46 = (a3 + (v11 & a4));
LABEL_46:
          if ((v19 & 7) != 0)
          {
            v48 = v19 & 7 | v45;
            v49 = v19 & 7;
            while (*(v38 + v45) == *v46)
            {
              ++v46;
              ++v45;
              if (!--v49)
              {
                v45 = v48;
                break;
              }
            }

            v13 = v166;
          }
        }

        else
        {
          v41 = 0;
          v42 = v19 >> 3;
          while (1)
          {
            v43 = v22[v41];
            v44 = *(v38 + v41 * 8);
            if (v43 != v44)
            {
              break;
            }

            ++v41;
            if (!--v42)
            {
              v45 = v19 & 0xFFFFFFFFFFFFFFF8;
              v46 = v22 + (v19 & 0xFFFFFFFFFFFFFFF8);
              goto LABEL_46;
            }
          }

          v45 = v41 * 8 + (__clz(__rbit64(v44 ^ v43)) >> 3);
        }

        if (v45 >= 4)
        {
          v47 = __clz(v37) ^ 0x1F;
          if (v32 < 135 * v45 - 30 * v47 + 1920)
          {
            v23 = *(v22 + v45);
            v173 = v37;
            v32 = 135 * v45 - 30 * v47 + 1920;
            v27 = v45;
          }
        }
      }

      ++v33;
    }

    while (v33 != 4);
    if (v32 == 2020)
    {
      v50 = *(a6 + 48);
      v51 = *(v50 + 8);
      v52 = *(v50 + 16);
      a5 = v172;
      if (v52 < v51 >> 7)
      {
        goto LABEL_56;
      }

      v53 = ((506832829 * *v22) >> 17) & 0x7FFELL;
      v54 = *(v172 + 120);
      *(v50 + 8) = v51 + 1;
      v55 = *(v54 + v53);
      if (!*(v54 + v53) || v19 < v55)
      {
        goto LABEL_56;
      }

      v129 = *(*(v172 + 112) + 2 * v53);
      v130 = *(v172 + 88);
      v131 = *(v130 + 4 * v55 + 32);
      v132 = *(v130 + 168) + v129 * *(v54 + v53);
      result = v132 + v131;
      if (v55 < 8)
      {
        v27 = 0;
LABEL_238:
        v155 = v55 & 7;
        if ((v55 & 7) != 0)
        {
          v156 = v27 | v155;
          while (*(v22 + v27) == *result)
          {
            ++result;
            ++v27;
            if (!--v155)
            {
              v27 = v156;
              break;
            }
          }
        }
      }

      else
      {
        v133 = 0;
        v27 = v55 & 0xF8;
        v134 = v132 + v27 + v131;
        while (1)
        {
          v135 = *(result + v133);
          v136 = v22[v133 / 8];
          if (v135 != v136)
          {
            break;
          }

          v133 += 8;
          if (v27 == v133)
          {
            result = v134;
            goto LABEL_238;
          }
        }

        v27 = v133 + (__clz(__rbit64(v136 ^ v135)) >> 3);
      }

      if (!v27 || v27 + *(v172 + 100) <= v55 || (result = (*(v172 + 104) >> (6 * (v55 - v27))) & 0x3FLL, v137 = v21 + 1 + v129 + ((result + 4 * (v55 - v27)) << *(v130 + v55)), v137 > v163) || (v32 = 135 * v27 - 30 * (__clz(v137) ^ 0x1F) + 1920, v32 < 0x7E4))
      {
LABEL_56:
        *(v17 + 4 * v35) = v11;
LABEL_144:
        ++v12;
        v114 = v11 + 1;
        if (v11 + 1 <= v16)
        {
          i = v164;
        }

        else if (v114 <= v16 + v160)
        {
          v116 = v11 + 9;
          if (v11 + 9 >= v161)
          {
            v116 = v161;
          }

          for (i = v164; v114 < v116; v114 += 2)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v114 & a4))) >> 32) >> 15) + (v114 & 0x18)) & 0x1FFFF)) = v114;
            v12 += 2;
          }
        }

        else
        {
          v115 = v11 + 17;
          if (v11 + 17 >= v161)
          {
            v115 = v161;
          }

          for (i = v164; v114 < v115; v114 += 4)
          {
            *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v114 & a4))) >> 32) >> 15) + (v114 & 0x18)) & 0x1FFFF)) = v114;
            v12 += 4;
          }
        }

        goto LABEL_225;
      }

      v173 = v137;
      v138 = v52 + 1;
      v56 = v55 - v27;
      *(v50 + 16) = v138;
    }

    else
    {
      v56 = 0;
      a5 = v172;
    }

    *(v17 + 4 * v35) = v11;
    if (v32 < 0x7E5)
    {
      goto LABEL_144;
    }

    result = 0;
    v168 = *v164;
    while (1)
    {
      --v19;
      v57 = v27 - 1;
      if (v27 - 1 >= v19)
      {
        v57 = v19;
      }

      v58 = *(a5 + 4) >= 5 ? 0 : v57;
      v59 = v11 + 1;
      v60 = v11 + 1 < v171 ? v11 + 1 : v171;
      v61 = v59 + v170 >= v171 ? v171 : v59 + v170;
      v62 = (a3 + (v59 & a4));
      v63 = *(v62 + v58);
      v169 = v61;
      v167 = v56;
      if (v59 < v168)
      {
        goto LABEL_82;
      }

      v64 = a3 + (a4 & (v59 - v168));
      if (v63 != *(v64 + v58))
      {
        goto LABEL_82;
      }

      if (v19 < 8)
      {
        v71 = 0;
        v68 = (a3 + (v59 & a4));
LABEL_134:
        v111 = v19 & 7;
        if ((v19 & 7) != 0)
        {
          do
          {
            if (*(v64 + v71) != *v68)
            {
              break;
            }

            v68 = (v68 + 1);
            ++v71;
            --v111;
          }

          while (v111);
        }
      }

      else
      {
        v65 = 0;
        v66 = (a3 + (a4 & (v59 - v168)));
        v67 = v19 >> 3;
        v68 = (a3 + (v59 & a4));
        while (1)
        {
          v70 = *v66++;
          v69 = v70;
          if (*v68 != v70)
          {
            break;
          }

          ++v68;
          v65 -= 8;
          if (!--v67)
          {
            v71 = -v65;
            goto LABEL_134;
          }
        }

        v71 = (__clz(__rbit64(v69 ^ *v68)) >> 3) - v65;
      }

      if (v71 >= 4 && (v72 = 135 * v71 + 1935, v72 >= 0x7E5))
      {
        v63 = *(v62 + v71);
        v58 = v71;
        v73 = v168;
      }

      else
      {
LABEL_82:
        v73 = 0;
        v72 = 2020;
      }

      v74 = 0;
      v75 = vdupq_n_s64((0xBD1E35A7BD000000 * *v62) >> 47);
      v76 = vdupq_n_s64(0x1FFFFuLL);
      v174 = vandq_s8(vaddq_s64(v75, xmmword_2986826B0), v76);
      v175 = vandq_s8(vaddq_s64(v75, xmmword_2986826C0), v76);
      v77 = *(v174.i64 + (v59 & 0x18));
      do
      {
        v78 = *(v17 + 4 * v174.i64[v74]);
        v79 = v59 - v78;
        v80 = a3 + (v78 & a4);
        if (v63 == *(v80 + v58) && v59 != v78 && v79 <= v60)
        {
          if (v19 < 8)
          {
            v89 = 0;
            v86 = (a3 + (v59 & a4));
LABEL_103:
            if ((v19 & 7) != 0)
            {
              v91 = v19 & 7;
              do
              {
                if (*(v80 + v89) != *v86)
                {
                  break;
                }

                v86 = (v86 + 1);
                ++v89;
                --v91;
              }

              while (v91);
            }
          }

          else
          {
            v83 = 0;
            v84 = (a3 + (v78 & a4));
            v85 = v19 >> 3;
            v86 = (a3 + (v59 & a4));
            while (1)
            {
              v88 = *v84++;
              v87 = v88;
              if (*v86 != v88)
              {
                break;
              }

              ++v86;
              v83 -= 8;
              if (!--v85)
              {
                v89 = -v83;
                goto LABEL_103;
              }
            }

            v89 = (__clz(__rbit64(v87 ^ *v86)) >> 3) - v83;
          }

          if (v89 >= 4)
          {
            v90 = __clz(v79) ^ 0x1F;
            if (v72 < 135 * v89 - 30 * v90 + 1920)
            {
              v63 = *(v62 + v89);
              v58 = v89;
              v73 = v79;
              v72 = 135 * v89 - 30 * v90 + 1920;
            }
          }
        }

        ++v74;
      }

      while (v74 != 4);
      if (v72 == 2020)
      {
        v92 = *(a6 + 48);
        v94 = *(v92 + 8);
        v93 = *(v92 + 16);
        a5 = v172;
        if (v93 < v94 >> 7 || (v95 = ((506832829 * *v62) >> 17) & 0x7FFELL, v96 = *(v172 + 120), *(v92 + 8) = v94 + 1, v97 = *(v96 + v95), !*(v96 + v95)) || v19 < v97)
        {
          v98 = 0;
LABEL_113:
          v72 = 2020;
          goto LABEL_116;
        }

        v100 = *(*(v172 + 112) + 2 * v95);
        v101 = *(v172 + 88);
        v102 = *(v101 + 4 * v97 + 32);
        v103 = *(v101 + 168) + v100 * *(v96 + v95);
        v104 = (v103 + v102);
        if (v97 < 8)
        {
          v106 = 0;
LABEL_139:
          v112 = v97 & 7;
          if ((v97 & 7) != 0)
          {
            v113 = v106 | v112;
            while (*(v62 + v106) == *v104)
            {
              ++v104;
              ++v106;
              if (!--v112)
              {
                v106 = v113;
                break;
              }
            }
          }
        }

        else
        {
          v105 = 0;
          v106 = v97 & 0xF8;
          v107 = (v103 + v106 + v102);
          while (1)
          {
            v108 = *&v104[v105];
            v109 = v62[v105 / 8];
            if (v108 != v109)
            {
              break;
            }

            v105 += 8;
            if (v106 == v105)
            {
              v104 = v107;
              goto LABEL_139;
            }
          }

          v106 = v105 + (__clz(__rbit64(v109 ^ v108)) >> 3);
        }

        v98 = 0;
        if (v106)
        {
          a5 = v172;
          if (v106 + *(v172 + 100) <= v97)
          {
            goto LABEL_113;
          }

          v110 = v169 + 1 + v100 + ((((*(v172 + 104) >> (6 * (v97 - v106))) & 0x3FLL) + 4 * (v97 - v106)) << *(v101 + v97));
          if (v110 <= v163)
          {
            v72 = 135 * v106 - 30 * (__clz(v110) ^ 0x1F) + 1920;
            if (v72 >= 0x7E4)
            {
              v98 = v97 - v106;
              *(v92 + 16) = v93 + 1;
              v58 = v106;
              v73 = v110;
              goto LABEL_115;
            }
          }

          v98 = 0;
        }

        v72 = 2020;
      }

      else
      {
        v98 = 0;
      }

LABEL_115:
      a5 = v172;
LABEL_116:
      *(v17 + 4 * v77) = v59;
      if (v72 < v32 + 175)
      {
        break;
      }

      ++v12;
      v13 = v166;
      if (result <= 2)
      {
        v99 = v11 + 9;
        result = (result + 1);
        v173 = v73;
        v32 = v72;
        v56 = v98;
        v27 = v58;
        ++v11;
        if (v99 < v166)
        {
          continue;
        }
      }

      goto LABEL_160;
    }

    v117 = v11 + v170;
    if (v11 + v170 >= v171)
    {
      v117 = v171;
    }

    v169 = v117;
    v73 = v173;
    v98 = v167;
    v58 = v27;
    v59 = v11;
    v13 = v166;
LABEL_160:
    i = v164;
    if (v73 > v169)
    {
LABEL_161:
      v118 = v73 + 15;
      goto LABEL_162;
    }

    v119 = *v164;
    if (v73 == v119)
    {
      v118 = 0;
      goto LABEL_167;
    }

    v139 = v164[1];
    if (v73 == v139)
    {
      v118 = 1;
    }

    else
    {
      v140 = v73 + 3 - v119;
      if (v140 > 6)
      {
        v143 = v73 + 3 - v139;
        if (v143 > 6)
        {
          if (v73 == v164[2])
          {
            v118 = 2;
          }

          else
          {
            if (v73 != v164[3])
            {
              goto LABEL_161;
            }

            v118 = 3;
          }

          goto LABEL_162;
        }

        v141 = 4 * v143;
        v142 = 266017486;
      }

      else
      {
        v141 = 4 * v140;
        v142 = 158663784;
      }

      v118 = (v142 >> v141) & 0xF;
    }

LABEL_162:
    if (v73 <= v169 && v118)
    {
      v164[3] = v164[2];
      *(v164 + 1) = *v164;
      *v164 = v73;
    }

LABEL_167:
    *v162 = v12;
    *(v162 + 4) = v58 | (v98 << 25);
    v120 = *(a5 + 68);
    v121 = v120 + 16;
    if (v120 + 16 <= v118)
    {
      v123 = *(a5 + 64);
      v124 = v118 - v120 + (4 << v123) - 16;
      v125 = (__clz(v124) ^ 0x1F) - 1;
      v126 = ((v124 >> v125) & 1 | 2) << v125;
      result = 65534;
      v118 = ((v124 & ~(-1 << v123)) + v121 + ((((v124 >> v125) & 1 | (2 * (v125 - v123))) + 65534) << v123)) | ((v125 - v123) << 10);
      v122 = (v124 - v126) >> v123;
    }

    else
    {
      LODWORD(v122) = 0;
    }

    *(v162 + 14) = v118;
    *(v162 + 8) = v122;
    if (v12 > 5)
    {
      if (v12 > 0x81)
      {
        if (v12 > 0x841)
        {
          if (v12 >> 1 >= 0xC21)
          {
            if (v12 < 0x5842)
            {
              LOWORD(v127) = 22;
            }

            else
            {
              LOWORD(v127) = 23;
            }
          }

          else
          {
            LOWORD(v127) = 21;
          }
        }

        else
        {
          v127 = (__clz(v12 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v128 = (__clz(v12 - 2) ^ 0x1F) - 1;
        v127 = ((v12 - 2) >> v128) + 2 * v128 + 2;
      }
    }

    else
    {
      LOWORD(v127) = v12;
    }

    v144 = v98 + v58;
    if (v144 > 9)
    {
      if (v144 > 0x85)
      {
        if (v144 > 0x845)
        {
          LOWORD(v144) = 23;
        }

        else
        {
          v144 = (__clz(v144 - 70) ^ 0x1F) + 12;
        }
      }

      else
      {
        v145 = v144 - 6;
        v146 = (__clz(v145) ^ 0x1F) - 1;
        v144 = (v145 >> v146) + 2 * v146 + 4;
      }
    }

    else
    {
      LOWORD(v144) = v144 - 2;
    }

    v147 = v144 & 7 | (8 * (v127 & 7));
    if ((v118 & 0x3FF) != 0 || v127 > 7u || v144 > 0xFu)
    {
      v149 = 3 * (v127 >> 3) + ((v144 & 0xFFF8) >> 3);
      v148 = ((((0x520D40u >> (2 * v149)) & 0xC0) + (v149 << 6)) | v147) + 64;
    }

    else
    {
      LOWORD(v148) = v147 | 0x40;
      if ((v144 & 0xFFF8) == 0)
      {
        LOWORD(v148) = v147;
      }
    }

    *(v162 + 12) = v148;
    *a11 += v12;
    v150 = v59 + 2;
    v114 = v59 + v58;
    if (v59 + v58 >= v159)
    {
      v151 = v159;
    }

    else
    {
      v151 = v59 + v58;
    }

    if (v73 < v58 >> 2)
    {
      v152 = v114 - 4 * v73;
      if (v150 > v152)
      {
        v152 = v59 + 2;
      }

      if (v151 >= v152)
      {
        v150 = v152;
      }

      else
      {
        v150 = v151;
      }
    }

    v16 = v158 + 2 * v58 + v59;
    v162 += 16;
    if (v150 < v151)
    {
      do
      {
        *(v17 + 4 * (((((0xBD1E35A7BD000000 * *(a3 + (v150 & a4))) >> 32) >> 15) + (v150 & 0x18)) & 0x1FFFF)) = v150;
        ++v150;
      }

      while (v151 != v150);
    }

    v12 = 0;
LABEL_225:
    v11 = v114;
  }

  while (v114 + 8 < v13);
LABEL_244:
  *a8 = v12 + v13 - v114;
  *a10 += (v162 - a9) >> 4;
  return result;
}

unint64_t CreateBackwardReferencesNH5(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v11 = a5;
  v12 = a2;
  v232 = *(a5 + 16);
  v13 = *a8;
  v14 = a2 + result;
  v218 = a2 + result - 3;
  if (result <= 3)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2 + result - 3;
  }

  v16 = *(a5 + 8);
  v17 = 512;
  if (*(a5 + 4) < 9)
  {
    v17 = 64;
  }

  v220 = v15;
  v221 = v17;
  v18 = *(a6 + 76);
  if (v18 >= 5)
  {
    v19 = vld1q_dup_f32(a7);
    *(a7 + 1) = vaddq_s32(v19, xmmword_2986826D0);
    *(a7 + 4) = vadd_s32(*v19.i8, 0x3FFFFFFFDLL);
    if (v18 >= 0xB)
    {
      v20 = (a7 + 1);
      v21 = vld1q_dup_f32(v20);
      *(a7 + 10) = vaddq_s32(v21, xmmword_2986826D0);
      *(a7 + 7) = vadd_s32(*v21.i8, 0x3FFFFFFFDLL);
    }
  }

  if (a2 + 4 < v14)
  {
    v22 = v17 + a2;
    v231 = (1 << v16) - 16;
    v23 = *(a6 + 88);
    v233 = *(a6 + 96);
    v219 = 4 * v17;
    v217 = v14 - 4;
    v222 = a9;
    v239 = v23;
    v223 = v14;
    while (1)
    {
      v242 = v22;
      v240 = v13;
      v24 = v14 - v12;
      if (v12 >= v231)
      {
        v25 = v231;
      }

      else
      {
        v25 = v12;
      }

      v26 = v12 + v232;
      if (v12 + v232 >= v231)
      {
        v26 = v231;
      }

      v237 = v26;
      v27 = v12 & a4;
      v28 = *(a6 + 76);
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        result = 2020;
        v241 = 2020;
        do
        {
          v33 = a7[v30];
          v34 = v12 - v33;
          v35 = v25 < v33 || v34 >= v12;
          v36 = v34 & a4;
          v37 = v29 + v27;
          v38 = v35 || v37 > a4;
          v39 = v36 + v29;
          v40 = v38 || v39 > a4;
          if (!v40 && *(a3 + v37) == *(a3 + v39))
          {
            v41 = a3 + v36;
            if (v24 < 8)
            {
              v46 = 0;
              v47 = (a3 + v27);
LABEL_52:
              if ((v24 & 7) != 0)
              {
                v50 = v24 & 7 | v46;
                v51 = v24 & 7;
                while (*(v41 + v46) == *v47)
                {
                  ++v47;
                  ++v46;
                  if (!--v51)
                  {
                    v46 = v50;
                    break;
                  }
                }

                v23 = v239;
              }
            }

            else
            {
              v42 = 0;
              v43 = v24 >> 3;
              while (1)
              {
                v44 = *(a3 + v27 + v42);
                v45 = *(v41 + v42);
                if (v44 != v45)
                {
                  break;
                }

                v42 += 8;
                if (!--v43)
                {
                  v46 = v24 & 0xFFFFFFFFFFFFFFF8;
                  v47 = (a3 + v27 + (v24 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_52;
                }
              }

              v46 = v42 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            if (v46 > 2 || v30 <= 1 && v46 == 2)
            {
              v48 = 135 * v46 + 1935;
              if (result < v48)
              {
                if (v30)
                {
                  v48 -= ((0x1CA10u >> (v30 & 0xE)) & 0xE) + 39;
                }

                if (result < v48)
                {
                  v32 = a7[v30];
                }

                v49 = v241;
                if (result < v48)
                {
                  v49 = v48;
                }

                v241 = v49;
                if (result < v48)
                {
                  v31 = v46;
                  v29 = v46;
                  result = v48;
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v29 = 0;
        v241 = 2020;
        result = 2020;
      }

      v236 = *(v11 + 80);
      v52 = (a3 + v27);
      v53 = *(a6 + 68);
      v54 = (506832829 * *(a3 + v27)) >> *(a6 + 64);
      v55 = v233 + 4 * (v54 << *(a6 + 72));
      v56 = *(v23 + 2 * v54);
      v230 = *(a6 + 56);
      if (v56 >= v230)
      {
        v57 = v56 - v230;
      }

      else
      {
        v57 = 0;
      }

      if (v57 < v56)
      {
        v58 = *(v23 + 2 * v54);
        do
        {
          v59 = *(v55 + 4 * (--v58 & v53));
          v60 = v12 - v59;
          if (v12 - v59 > v25)
          {
            break;
          }

          if (v29 + v27 <= a4)
          {
            v61 = v59 & a4;
            if (v61 + v29 <= a4 && *(a3 + v29 + v27) == *(a3 + v61 + v29))
            {
              v62 = a3 + v61;
              if (v24 < 8)
              {
                v67 = 0;
                v68 = (a3 + v27);
LABEL_80:
                if ((v24 & 7) != 0)
                {
                  v234 = v24 & 7 | v67;
                  v70 = v24 & 7;
                  while (*(v62 + v67) == *v68)
                  {
                    ++v68;
                    ++v67;
                    if (!--v70)
                    {
                      v67 = v234;
                      break;
                    }
                  }

                  v14 = v223;
                }
              }

              else
              {
                v63 = 0;
                v64 = v24 >> 3;
                while (1)
                {
                  v65 = *&v52[v63];
                  v66 = *(v62 + v63 * 4);
                  if (v65 != v66)
                  {
                    break;
                  }

                  v63 += 2;
                  if (!--v64)
                  {
                    v67 = v24 & 0xFFFFFFFFFFFFFFF8;
                    v68 = v52 + (v24 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_80;
                  }
                }

                v67 = v63 * 4 + (__clz(__rbit64(v66 ^ v65)) >> 3);
              }

              if (v67 >= 4)
              {
                v69 = __clz(v60) ^ 0x1F;
                if (result < 135 * v67 - 30 * v69 + 1920)
                {
                  v32 = v60;
                  v241 = 135 * v67 - 30 * v69 + 1920;
                  v31 = v67;
                  v29 = v67;
                  result = v241;
                }
              }
            }
          }
        }

        while (v58 > v57);
      }

      *(v55 + 4 * (v53 & v56)) = v12;
      v23 = v239;
      *(v239 + 2 * v54) = v56 + 1;
      if (v241 == 2020)
      {
        v71 = *(a6 + 80);
        v73 = *(v71 + 8);
        v72 = *(v71 + 16);
        v11 = a5;
        if (v72 < v73 >> 7)
        {
          goto LABEL_220;
        }

        v229 = 0;
        v74 = ((506832829 * *v52) >> 17) & 0x7FFE;
        v75 = *(a5 + 120);
        v76 = 1;
        v77 = v31;
        v241 = 2020;
        v78 = v32;
        do
        {
          v79 = v76;
          *(v71 + 8) = ++v73;
          v80 = *(v75 + v74);
          if (!*(v75 + v74) || v24 < v80)
          {
            goto LABEL_91;
          }

          v82 = *(a5 + 88);
          v83 = *(v82 + 4 * v80 + 32);
          v84 = *(v82 + 168) + *(*(a5 + 112) + 2 * v74) * *(v75 + v74);
          v85 = (v84 + v83);
          if (v80 < 8)
          {
            v81 = 0;
LABEL_106:
            v91 = v80 & 7;
            if ((v80 & 7) != 0)
            {
              v92 = v81 | v91;
              while (*(v52 + v81) == *v85)
              {
                ++v85;
                ++v81;
                if (!--v91)
                {
                  v81 = v92;
                  break;
                }
              }
            }
          }

          else
          {
            v86 = 0;
            v87 = (v84 + (v80 & 0xF8) + v83);
            while (1)
            {
              v88 = *&v85[v86];
              v89 = *&v52[v86 / 4];
              if (v88 != v89)
              {
                break;
              }

              v86 += 8;
              if ((v80 & 0xF8) == v86)
              {
                v85 = v87;
                v81 = v80 & 0xF8;
                goto LABEL_106;
              }
            }

            v81 = v86 + (__clz(__rbit64(v89 ^ v88)) >> 3);
          }

          if (v81 && v81 + *(a5 + 100) > v80 && (result = v237 + 1 + *(*(a5 + 112) + 2 * v74) + ((((*(a5 + 104) >> (6 * (v80 - v81))) & 0x3FLL) + 4 * (v80 - v81)) << *(v82 + v80)), result <= v236) && (v90 = 135 * v81 - 30 * (__clz(result) ^ 0x1F) + 1920, v90 >= v241))
          {
            v229 = v80 - v81;
            *(v71 + 16) = ++v72;
            v241 = v90;
          }

          else
          {
LABEL_91:
            result = v78;
            v81 = v77;
          }

          v76 = 0;
          ++v74;
          v77 = v81;
          v78 = result;
        }

        while ((v79 & 1) != 0);
      }

      else
      {
        v229 = 0;
        v11 = a5;
        v81 = v31;
        result = v32;
      }

      v228 = result;
      if (v241 < 0x7E5)
      {
LABEL_220:
        v13 = v240 + 1;
        v168 = v12 + 1;
        v22 = v242;
        if (v12 + 1 > v242)
        {
          if (v168 <= v242 + v219)
          {
            v191 = v12 + 9;
            if (v12 + 9 >= v218)
            {
              v191 = v218;
            }

            if (v168 < v191)
            {
              v192 = *(a6 + 64);
              v193 = *(a6 + 68);
              v194 = *(a6 + 72);
              result = v233;
              do
              {
                v195 = (506832829 * *(a3 + (v168 & a4))) >> v192;
                v196 = *(v239 + 2 * v195);
                *(v233 + 4 * (v193 & v196) + 4 * (v195 << v194)) = v168;
                *(v239 + 2 * v195) = v196 + 1;
                v13 += 2;
                v168 += 2;
              }

              while (v168 < v191);
            }
          }

          else
          {
            v169 = v12 + 17;
            if (v12 + 17 >= v217)
            {
              v169 = v217;
            }

            if (v168 < v169)
            {
              v170 = *(a6 + 64);
              v171 = *(a6 + 68);
              v172 = *(a6 + 72);
              result = v233;
              do
              {
                v173 = (506832829 * *(a3 + (v168 & a4))) >> v170;
                v174 = *(v239 + 2 * v173);
                *(v233 + 4 * (v171 & v174) + 4 * (v173 << v172)) = v168;
                *(v239 + 2 * v173) = v174 + 1;
                v13 += 4;
                v168 += 4;
              }

              while (v168 < v169);
            }
          }
        }

        goto LABEL_293;
      }

      v93 = 0;
      v94 = *(a6 + 76);
      v225 = *(a6 + 64);
      v226 = *(a6 + 72);
      v95 = *(a6 + 68);
      while (1)
      {
        v238 = v93;
        --v24;
        v224 = v81;
        v96 = v81 - 1;
        if (v81 - 1 >= v24)
        {
          v96 = v24;
        }

        if (*(v11 + 4) >= 5)
        {
          v97 = 0;
        }

        else
        {
          v97 = v96;
        }

        v98 = v12 + 1;
        if (v12 + 1 < v231)
        {
          v99 = v12 + 1;
        }

        else
        {
          v99 = v231;
        }

        v100 = v98 + v232;
        if (v98 + v232 >= v231)
        {
          v100 = v231;
        }

        v235 = v100;
        v101 = v98 & a4;
        if (v94)
        {
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 2020;
          v106 = 2020;
          do
          {
            v107 = a7[v102];
            v108 = v98 - v107;
            v109 = v99 < v107 || v108 >= v98;
            v110 = v108 & a4;
            v111 = v97 + v101;
            v112 = v109 || v111 > a4;
            v113 = v110 + v97;
            v114 = v112 || v113 > a4;
            if (!v114 && *(a3 + v111) == *(a3 + v113))
            {
              v115 = a3 + v110;
              if (v24 < 8)
              {
                v122 = 0;
                v119 = (a3 + v101);
LABEL_157:
                if ((v24 & 7) != 0)
                {
                  v124 = v24 & 7;
                  do
                  {
                    if (*(v115 + v122) != *v119)
                    {
                      break;
                    }

                    v119 = (v119 + 1);
                    ++v122;
                    --v124;
                  }

                  while (v124);
                }
              }

              else
              {
                v116 = 0;
                v117 = (a3 + v110);
                v118 = v24 >> 3;
                v119 = (a3 + v101);
                while (1)
                {
                  v121 = *v117++;
                  v120 = v121;
                  if (*v119 != v121)
                  {
                    break;
                  }

                  ++v119;
                  v116 -= 8;
                  if (!--v118)
                  {
                    v122 = -v116;
                    goto LABEL_157;
                  }
                }

                v122 = (__clz(__rbit64(v120 ^ *v119)) >> 3) - v116;
              }

              if (v122 > 2 || v102 <= 1 && v122 == 2)
              {
                v123 = 135 * v122 + 1935;
                if (v105 < v123)
                {
                  if (v102)
                  {
                    v123 -= ((0x1CA10u >> (v102 & 0xE)) & 0xE) + 39;
                  }

                  if (v105 < v123)
                  {
                    v104 = v122;
                    v103 = a7[v102];
                    v106 = v123;
                    v97 = v122;
                    v105 = v123;
                  }
                }
              }
            }

            ++v102;
          }

          while (v102 != v94);
        }

        else
        {
          v104 = 0;
          v103 = 0;
          v106 = 2020;
          v105 = 2020;
        }

        v125 = (a3 + v101);
        v126 = (506832829 * *(a3 + v101)) >> v225;
        v127 = v233 + 4 * (v126 << v226);
        v128 = *(v239 + 2 * v126);
        if (v128 >= v230)
        {
          v129 = v128 - v230;
        }

        else
        {
          v129 = 0;
        }

        if (v129 < v128)
        {
          v130 = *(v239 + 2 * v126);
          do
          {
            v131 = *(v127 + 4 * (--v130 & v95));
            v132 = v98 - v131;
            if (v98 - v131 > v99)
            {
              break;
            }

            if (v97 + v101 <= a4)
            {
              v133 = v131 & a4;
              if (v133 + v97 <= a4 && *(a3 + v97 + v101) == *(a3 + v133 + v97))
              {
                v134 = a3 + v133;
                if (v24 < 8)
                {
                  v141 = 0;
                  v138 = (a3 + v101);
LABEL_185:
                  v143 = v24 & 7;
                  if ((v24 & 7) != 0)
                  {
                    do
                    {
                      if (*(v134 + v141) != *v138)
                      {
                        break;
                      }

                      v138 = (v138 + 1);
                      ++v141;
                      --v143;
                    }

                    while (v143);
                  }
                }

                else
                {
                  v135 = 0;
                  v136 = (a3 + v133);
                  v137 = v24 >> 3;
                  v138 = (a3 + v101);
                  while (1)
                  {
                    v140 = *v136++;
                    v139 = v140;
                    if (*v138 != v140)
                    {
                      break;
                    }

                    ++v138;
                    v135 -= 8;
                    if (!--v137)
                    {
                      v141 = -v135;
                      goto LABEL_185;
                    }
                  }

                  v141 = (__clz(__rbit64(v139 ^ *v138)) >> 3) - v135;
                }

                if (v141 < 4)
                {
                  v11 = a5;
                }

                else
                {
                  v142 = __clz(v132) ^ 0x1F;
                  v11 = a5;
                  if (v105 < 135 * v141 - 30 * v142 + 1920)
                  {
                    v104 = v141;
                    v103 = v132;
                    v106 = 135 * v141 - 30 * v142 + 1920;
                    v97 = v141;
                    v105 = v106;
                  }
                }
              }
            }
          }

          while (v130 > v129);
        }

        *(v127 + 4 * (v95 & v128)) = v98;
        *(v239 + 2 * v126) = v128 + 1;
        if (v106 == 2020)
        {
          v144 = *(a6 + 80);
          v146 = *(v144 + 8);
          v145 = *(v144 + 16);
          if (v145 >= v146 >> 7)
          {
            v147 = 0;
            v149 = ((506832829 * *v125) >> 17) & 0x7FFE;
            v150 = *(v11 + 120);
            v151 = 1;
            v106 = 2020;
            v152 = v103;
            v153 = v104;
            do
            {
              v154 = v151;
              *(v144 + 8) = ++v146;
              v155 = *(v150 + v149);
              if (!*(v150 + v149) || v24 < v155)
              {
                goto LABEL_200;
              }

              v156 = *(*(v11 + 112) + 2 * v149);
              v157 = *(v11 + 88);
              v158 = *(v157 + 4 * v155 + 32);
              v159 = *(v157 + 168) + v156 * *(v150 + v149);
              v160 = (v159 + v158);
              if (v155 < 8)
              {
                v104 = 0;
LABEL_215:
                v166 = v155 & 7;
                if ((v155 & 7) != 0)
                {
                  v167 = v104 | v166;
                  while (*(v125 + v104) == *v160)
                  {
                    ++v160;
                    ++v104;
                    if (!--v166)
                    {
                      v104 = v167;
                      break;
                    }
                  }
                }
              }

              else
              {
                v161 = 0;
                v104 = v155 & 0xF8;
                v162 = (v159 + v104 + v158);
                while (1)
                {
                  v163 = *&v160[v161];
                  v164 = *&v125[v161 / 4];
                  if (v163 != v164)
                  {
                    break;
                  }

                  v161 += 8;
                  if (v104 == v161)
                  {
                    v160 = v162;
                    goto LABEL_215;
                  }
                }

                v104 = v161 + (__clz(__rbit64(v164 ^ v163)) >> 3);
              }

              v11 = a5;
              if (v104 && v104 + *(a5 + 100) > v155 && (v103 = v235 + 1 + v156 + ((((*(a5 + 104) >> (6 * (v155 - v104))) & 0x3FLL) + 4 * (v155 - v104)) << *(v157 + v155)), v103 <= v236) && (v165 = 135 * v104 - 30 * (__clz(v103) ^ 0x1F) + 1920, v165 >= v106))
              {
                v147 = v155 - v104;
                *(v144 + 16) = ++v145;
                v106 = v165;
              }

              else
              {
LABEL_200:
                v104 = v153;
                v103 = v152;
              }

              v151 = 0;
              ++v149;
              v152 = v103;
              v153 = v104;
            }

            while ((v154 & 1) != 0);
          }

          else
          {
            v147 = 0;
            v106 = 2020;
          }
        }

        else
        {
          v147 = 0;
        }

        if (v106 < v241 + 175)
        {
          break;
        }

        ++v240;
        v14 = v223;
        if (v238 <= 2)
        {
          v148 = v12 + 5;
          v93 = v238 + 1;
          v228 = v103;
          v241 = v106;
          v229 = v147;
          v81 = v104;
          ++v12;
          if (v148 < v223)
          {
            continue;
          }
        }

        goto LABEL_231;
      }

      v175 = v12 + v232;
      if (v12 + v232 >= v231)
      {
        v175 = v231;
      }

      v235 = v175;
      v103 = v228;
      v147 = v229;
      v14 = v223;
      v104 = v224;
      v98 = v12;
LABEL_231:
      result = v233;
      v23 = v239;
      if (v103 > v235)
      {
        goto LABEL_232;
      }

      v181 = *a7;
      if (v103 != v181)
      {
        break;
      }

      v176 = 0;
LABEL_240:
      *v222 = v240;
      *(v222 + 4) = v104 | (v147 << 25);
      v182 = *(v11 + 68);
      v183 = v182 + 16;
      if (v182 + 16 <= v176)
      {
        v185 = *(v11 + 64);
        v186 = v176 - v182 + (4 << v185) - 16;
        v187 = (__clz(v186) ^ 0x1F) - 1;
        v188 = ((v186 >> v187) & 1 | 2) << v187;
        v176 = ((v186 & ~(-1 << v185)) + v183 + ((((v186 >> v187) & 1 | (2 * (v187 - v185))) + 65534) << v185)) | ((v187 - v185) << 10);
        v184 = (v186 - v188) >> v185;
      }

      else
      {
        LODWORD(v184) = 0;
      }

      *(v222 + 14) = v176;
      *(v222 + 8) = v184;
      if (v240 > 5)
      {
        if (v240 > 0x81)
        {
          if (v240 > 0x841)
          {
            if (v240 >> 1 >= 0xC21)
            {
              if (v240 < 0x5842)
              {
                LOWORD(v189) = 22;
              }

              else
              {
                LOWORD(v189) = 23;
              }
            }

            else
            {
              LOWORD(v189) = 21;
            }
          }

          else
          {
            v189 = (__clz(v240 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v190 = (__clz(v240 - 2) ^ 0x1F) - 1;
          v189 = ((v240 - 2) >> v190) + 2 * v190 + 2;
        }
      }

      else
      {
        LOWORD(v189) = v240;
      }

      v202 = v147 + v104;
      if ((v147 + v104) > 9)
      {
        if (v202 > 0x85)
        {
          if (v202 > 0x845)
          {
            LOWORD(v202) = 23;
          }

          else
          {
            v202 = (__clz(v202 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v203 = v202 - 6;
          v204 = (__clz(v203) ^ 0x1F) - 1;
          v202 = (v203 >> v204) + 2 * v204 + 4;
        }
      }

      else
      {
        LOWORD(v202) = v202 - 2;
      }

      v205 = v202 & 7 | (8 * (v189 & 7));
      if ((v176 & 0x3FF) != 0 || v189 > 7u || v202 > 0xFu)
      {
        v207 = 3 * (v189 >> 3) + ((v202 & 0xFFF8) >> 3);
        v206 = ((((0x520D40u >> (2 * v207)) & 0xC0) + (v207 << 6)) | v205) + 64;
      }

      else
      {
        LOWORD(v206) = v205 | 0x40;
        if ((v202 & 0xFFF8) == 0)
        {
          LOWORD(v206) = v202 & 7 | (8 * (v189 & 7));
        }
      }

      *(v222 + 12) = v206;
      v208 = v220;
      *a11 += v240;
      v209 = v98 + 2;
      v168 = v98 + v104;
      if (v98 + v104 < v220)
      {
        v208 = v98 + v104;
      }

      if (v103 < v104 >> 2)
      {
        v210 = v168 - 4 * v103;
        if (v209 > v210)
        {
          v210 = v98 + 2;
        }

        if (v208 >= v210)
        {
          v209 = v210;
        }

        else
        {
          v209 = v208;
        }
      }

      v22 = v221 + 2 * v104 + v98;
      v222 += 16;
      if (v209 < v208)
      {
        v211 = *(a6 + 64);
        v212 = *(a6 + 68);
        v213 = *(a6 + 72);
        do
        {
          v214 = (506832829 * *(a3 + (v209 & a4))) >> v211;
          v215 = *(v239 + 2 * v214);
          *(v233 + 4 * (v212 & v215) + 4 * (v214 << v213)) = v209;
          *(v239 + 2 * v214) = v215 + 1;
          ++v209;
        }

        while (v208 != v209);
      }

      v13 = 0;
LABEL_293:
      v12 = v168;
      if (v168 + 4 >= v14)
      {
        goto LABEL_300;
      }
    }

    v197 = a7[1];
    if (v103 == v197)
    {
      v176 = 1;
      goto LABEL_233;
    }

    v198 = v103 + 3 - v181;
    if (v198 > 6)
    {
      v201 = v103 + 3 - v197;
      if (v201 > 6)
      {
        if (v103 == a7[2])
        {
          v176 = 2;
        }

        else if (v103 == a7[3])
        {
          v176 = 3;
        }

        else
        {
LABEL_232:
          v176 = v103 + 15;
        }

LABEL_233:
        if (v103 <= v235)
        {
          if (v176)
          {
            a7[3] = a7[2];
            v177 = *a7;
            *(a7 + 1) = *a7;
            *a7 = v103;
            v178 = *(a6 + 76);
            if (v178 >= 5)
            {
              v179 = vdupq_n_s32(v103);
              *(a7 + 1) = vaddq_s32(v179, xmmword_2986826D0);
              *(a7 + 4) = vadd_s32(*v179.i8, 0x3FFFFFFFDLL);
              if (v178 >= 0xB)
              {
                v180 = vdupq_lane_s32(v177, 0);
                *(a7 + 10) = vaddq_s32(v180, xmmword_2986826D0);
                *(a7 + 7) = vadd_s32(*v180.i8, 0x3FFFFFFFDLL);
              }
            }
          }
        }

        goto LABEL_240;
      }

      v199 = 4 * v201;
      v200 = 266017486;
    }

    else
    {
      v199 = 4 * v198;
      v200 = 158663784;
    }

    v176 = (v200 >> v199) & 0xF;
    goto LABEL_233;
  }

  v222 = a9;
  v168 = a2;
LABEL_300:
  *a8 = v13 + v14 - v168;
  *a10 += (v222 - a9) >> 4;
  return result;
}

unint64_t CreateBackwardReferencesNH6(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, _DWORD *a9, void *a10, void *a11)
{
  v11 = a5;
  v237 = *(a5 + 16);
  v12 = *a8;
  v13 = a2 + result;
  v224 = a2 + result - 7;
  if (result <= 7)
  {
    v14 = a2;
  }

  else
  {
    v14 = a2 + result - 7;
  }

  v15 = *(a5 + 8);
  v16 = 512;
  if (*(a5 + 4) < 9)
  {
    v16 = 64;
  }

  v225 = v14;
  v226 = v16;
  v17 = *(a6 + 88);
  if (v17 >= 5)
  {
    v18 = vld1q_dup_f32(a7);
    *(a7 + 1) = vaddq_s32(v18, xmmword_2986826D0);
    *(a7 + 4) = vadd_s32(*v18.i8, 0x3FFFFFFFDLL);
    if (v17 >= 0xB)
    {
      v19 = (a7 + 1);
      v20 = vld1q_dup_f32(v19);
      *(a7 + 10) = vaddq_s32(v20, xmmword_2986826D0);
      *(a7 + 7) = vadd_s32(*v20.i8, 0x3FFFFFFFDLL);
    }
  }

  if (a2 + 8 < v13)
  {
    v21 = 1 << v15;
    v22 = v16 + a2;
    v236 = v21 - 16;
    v23 = *(a6 + 104);
    v223 = 4 * v16;
    v227 = a9;
    v228 = a2 + result;
    v244 = v23;
    v238 = *(a6 + 72);
    v239 = *(a6 + 112);
    while (1)
    {
      v248 = v22;
      v245 = v12;
      v24 = v13 - a2;
      if (a2 >= v236)
      {
        v25 = v236;
      }

      else
      {
        v25 = a2;
      }

      if (a2 + v237 >= v236)
      {
        v26 = v236;
      }

      else
      {
        v26 = a2 + v237;
      }

      v27 = a2 & a4;
      v28 = *(a6 + 88);
      result = v24 >> 3;
      v242 = v26;
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 2020;
        v246 = 2020;
        do
        {
          v34 = a7[v30];
          v35 = a2 - v34;
          v36 = v25 < v34 || v35 >= a2;
          v37 = v35 & a4;
          v38 = v29 + v27;
          v39 = v36 || v38 > a4;
          v40 = v37 + v29;
          v41 = v39 || v40 > a4;
          if (!v41 && *(a3 + v38) == *(a3 + v40))
          {
            v42 = a3 + v37;
            if (v24 < 8)
            {
              v47 = 0;
              v48 = (a3 + v27);
LABEL_53:
              if ((v24 & 7) != 0)
              {
                v51 = v24 & 7 | v47;
                v52 = v24 & 7;
                while (*(v42 + v47) == *v48)
                {
                  ++v48;
                  ++v47;
                  if (!--v52)
                  {
                    v47 = v51;
                    break;
                  }
                }

                v11 = a5;
              }
            }

            else
            {
              v43 = 0;
              v44 = v24 >> 3;
              while (1)
              {
                v45 = *(a3 + v27 + v43);
                v46 = *(v42 + v43);
                if (v45 != v46)
                {
                  break;
                }

                v43 += 8;
                if (!--v44)
                {
                  v47 = v24 & 0xFFFFFFFFFFFFFFF8;
                  v48 = (a3 + v27 + (v24 & 0xFFFFFFFFFFFFFFF8));
                  goto LABEL_53;
                }
              }

              v47 = v43 + (__clz(__rbit64(v46 ^ v45)) >> 3);
            }

            if (v47 > 2 || v30 <= 1 && v47 == 2)
            {
              v49 = 135 * v47 + 1935;
              if (v33 < v49)
              {
                if (v30)
                {
                  v49 -= ((0x1CA10u >> (v30 & 0xE)) & 0xE) + 39;
                }

                if (v33 < v49)
                {
                  v32 = a7[v30];
                }

                v50 = v246;
                if (v33 < v49)
                {
                  v50 = v49;
                }

                v246 = v50;
                if (v33 < v49)
                {
                  v31 = v47;
                  v29 = v47;
                  v33 = v49;
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v28);
      }

      else
      {
        v32 = 0;
        v31 = 0;
        v29 = 0;
        v246 = 2020;
        v33 = 2020;
      }

      v241 = *(v11 + 80);
      v53 = (a3 + v27);
      v54 = (0x1FE35A7BD3579BD3 * (*(a3 + v27) & v238)) >> *(a6 + 64);
      v55 = *(a6 + 80);
      v56 = v239 + 4 * (v54 << *(a6 + 84));
      v57 = *(v23 + 2 * v54);
      v235 = *(a6 + 56);
      if (v57 >= v235)
      {
        v58 = v57 - v235;
      }

      else
      {
        v58 = 0;
      }

      if (v58 < v57)
      {
        v59 = *(v23 + 2 * v54);
        do
        {
          v60 = *(v56 + 4 * (--v59 & v55));
          v61 = a2 - v60;
          if (a2 - v60 > v25)
          {
            break;
          }

          if (v29 + v27 <= a4)
          {
            v62 = v60 & a4;
            if (v62 + v29 <= a4 && *(a3 + v29 + v27) == *(a3 + v62 + v29))
            {
              v63 = a3 + v62;
              if (v24 < 8)
              {
                v68 = 0;
                v69 = (a3 + v27);
LABEL_81:
                if ((v24 & 7) != 0)
                {
                  v71 = v24 & 7 | v68;
                  v72 = v24 & 7;
                  while (*(v63 + v68) == *v69)
                  {
                    ++v69;
                    ++v68;
                    if (!--v72)
                    {
                      v68 = v71;
                      break;
                    }
                  }

                  v13 = v228;
                }
              }

              else
              {
                v64 = 0;
                v65 = v24 >> 3;
                while (1)
                {
                  v66 = *&v53[v64];
                  v67 = *(v63 + v64 * 4);
                  if (v66 != v67)
                  {
                    break;
                  }

                  v64 += 2;
                  if (!--v65)
                  {
                    v68 = v24 & 0xFFFFFFFFFFFFFFF8;
                    v69 = v53 + (v24 & 0xFFFFFFFFFFFFFFF8);
                    goto LABEL_81;
                  }
                }

                v68 = v64 * 4 + (__clz(__rbit64(v67 ^ v66)) >> 3);
              }

              if (v68 >= 4)
              {
                v70 = __clz(v61) ^ 0x1F;
                if (v33 < 135 * v68 - 30 * v70 + 1920)
                {
                  v32 = v61;
                  v246 = 135 * v68 - 30 * v70 + 1920;
                  v31 = v68;
                  v29 = v68;
                  v33 = v246;
                }
              }
            }
          }
        }

        while (v59 > v58);
      }

      *(v56 + 4 * (v55 & v57)) = a2;
      v23 = v244;
      *(v244 + 2 * v54) = v57 + 1;
      if (v246 == 2020)
      {
        v73 = *(a6 + 96);
        result = *(v73 + 8);
        v74 = *(v73 + 16);
        v11 = a5;
        if (v74 < result >> 7)
        {
          goto LABEL_222;
        }

        v234 = 0;
        v75 = ((506832829 * *v53) >> 17) & 0x7FFE;
        v76 = *(a5 + 120);
        v77 = 1;
        v78 = v31;
        v246 = 2020;
        v79 = v32;
        do
        {
          v80 = v77;
          *(v73 + 8) = ++result;
          v81 = *(v76 + v75);
          if (!*(v76 + v75) || v24 < v81)
          {
            goto LABEL_92;
          }

          v84 = *(a5 + 88);
          v85 = *(v84 + 4 * v81 + 32);
          v86 = *(v84 + 168) + *(*(a5 + 112) + 2 * v75) * *(v76 + v75);
          v87 = (v86 + v85);
          if (v81 < 8)
          {
            v83 = 0;
LABEL_107:
            v93 = v81 & 7;
            if ((v81 & 7) != 0)
            {
              v94 = v83 | v93;
              while (*(v53 + v83) == *v87)
              {
                ++v87;
                ++v83;
                if (!--v93)
                {
                  v83 = v94;
                  break;
                }
              }
            }
          }

          else
          {
            v88 = 0;
            v89 = (v86 + (v81 & 0xF8) + v85);
            while (1)
            {
              v90 = *&v87[v88];
              v91 = *&v53[v88 / 4];
              if (v90 != v91)
              {
                break;
              }

              v88 += 8;
              if ((v81 & 0xF8) == v88)
              {
                v87 = v89;
                v83 = v81 & 0xF8;
                goto LABEL_107;
              }
            }

            v83 = v88 + (__clz(__rbit64(v91 ^ v90)) >> 3);
          }

          if (v83 && v83 + *(a5 + 100) > v81 && (v82 = v242 + 1 + *(*(a5 + 112) + 2 * v75) + ((((*(a5 + 104) >> (6 * (v81 - v83))) & 0x3FLL) + 4 * (v81 - v83)) << *(v84 + v81)), v82 <= v241) && (v92 = 135 * v83 - 30 * (__clz(v82) ^ 0x1F) + 1920, v92 >= v246))
          {
            v234 = v81 - v83;
            *(v73 + 16) = ++v74;
            v246 = v92;
          }

          else
          {
LABEL_92:
            v82 = v79;
            v83 = v78;
          }

          v77 = 0;
          ++v75;
          v78 = v83;
          v79 = v82;
        }

        while ((v80 & 1) != 0);
      }

      else
      {
        v234 = 0;
        v11 = a5;
        v83 = v31;
        v82 = v32;
      }

      v233 = v82;
      if (v246 < 0x7E5)
      {
LABEL_222:
        v12 = v245 + 1;
        v174 = a2 + 1;
        v22 = v248;
        if (a2 + 1 > v248)
        {
          result = v239;
          if (v174 <= v248 + v223)
          {
            v198 = a2 + 9;
            if (a2 + 9 >= v224)
            {
              v198 = v224;
            }

            if (v174 < v198)
            {
              v199 = *(a6 + 64);
              v200 = *(a6 + 80);
              v201 = *(a6 + 84);
              do
              {
                v202 = (0x1FE35A7BD3579BD3 * (*(a3 + (v174 & a4)) & v238)) >> v199;
                v203 = *(v244 + 2 * v202);
                *(v244 + 2 * v202) = v203 + 1;
                *(v239 + 4 * (v200 & v203) + 4 * (v202 << v201)) = v174;
                v12 += 2;
                v174 += 2;
              }

              while (v174 < v198);
            }
          }

          else
          {
            v175 = a2 + 17;
            if (a2 + 17 >= v224)
            {
              v175 = v224;
            }

            if (v174 < v175)
            {
              v176 = *(a6 + 64);
              v177 = *(a6 + 80);
              v178 = *(a6 + 84);
              do
              {
                v179 = (0x1FE35A7BD3579BD3 * (*(a3 + (v174 & a4)) & v238)) >> v176;
                v180 = *(v244 + 2 * v179);
                *(v244 + 2 * v179) = v180 + 1;
                *(v239 + 4 * (v177 & v180) + 4 * (v179 << v178)) = v174;
                v12 += 4;
                v174 += 4;
              }

              while (v174 < v175);
            }
          }
        }

        goto LABEL_297;
      }

      v95 = 0;
      v231 = *(a6 + 64);
      v96 = *(a6 + 88);
      v230 = *(a6 + 84);
      v97 = *(a6 + 80);
      v98 = a3;
      while (1)
      {
        v243 = v95;
        --v24;
        v229 = v83;
        v99 = v83 - 1;
        if (v83 - 1 >= v24)
        {
          v99 = v24;
        }

        if (*(v11 + 4) >= 5)
        {
          v100 = 0;
        }

        else
        {
          v100 = v99;
        }

        v101 = a2 + 1;
        if (a2 + 1 < v236)
        {
          v102 = a2 + 1;
        }

        else
        {
          v102 = v236;
        }

        v103 = v101 + v237;
        if (v101 + v237 >= v236)
        {
          v103 = v236;
        }

        v240 = v103;
        v104 = v101 & a4;
        if (v96)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          v108 = 2020;
          v109 = 2020;
          do
          {
            v110 = a7[v105];
            v111 = v101 - v110;
            v112 = v102 < v110 || v111 >= v101;
            v113 = v111 & a4;
            v114 = v100 + v104;
            v115 = v112 || v114 > a4;
            v116 = v113 + v100;
            v117 = v115 || v116 > a4;
            if (!v117 && *(v98 + v114) == *(v98 + v116))
            {
              v118 = v98 + v113;
              if (v24 < 8)
              {
                v125 = 0;
                v122 = (v98 + v104);
LABEL_158:
                if ((v24 & 7) != 0)
                {
                  v127 = v24 & 7;
                  do
                  {
                    if (*(v118 + v125) != *v122)
                    {
                      break;
                    }

                    v122 = (v122 + 1);
                    ++v125;
                    --v127;
                  }

                  while (v127);
                }
              }

              else
              {
                v119 = 0;
                v120 = (v98 + v113);
                v121 = v24 >> 3;
                v122 = (v98 + v104);
                while (1)
                {
                  v124 = *v120++;
                  v123 = v124;
                  if (*v122 != v124)
                  {
                    break;
                  }

                  ++v122;
                  v119 -= 8;
                  if (!--v121)
                  {
                    v125 = -v119;
                    goto LABEL_158;
                  }
                }

                v125 = (__clz(__rbit64(v123 ^ *v122)) >> 3) - v119;
              }

              if (v125 > 2 || v105 <= 1 && v125 == 2)
              {
                v126 = 135 * v125 + 1935;
                if (v108 < v126)
                {
                  if (v105)
                  {
                    v126 -= ((0x1CA10u >> (v105 & 0xE)) & 0xE) + 39;
                  }

                  if (v108 < v126)
                  {
                    v107 = v125;
                    v106 = a7[v105];
                    v109 = v126;
                    v100 = v125;
                    v108 = v126;
                  }
                }
              }

              v11 = a5;
            }

            ++v105;
          }

          while (v105 != v96);
        }

        else
        {
          v107 = 0;
          v106 = 0;
          v109 = 2020;
          v108 = 2020;
        }

        v128 = (v98 + v104);
        v129 = (0x1FE35A7BD3579BD3 * (*(v98 + v104) & v238)) >> v231;
        v130 = v239 + 4 * (v129 << v230);
        v131 = *(v244 + 2 * v129);
        if (v131 >= v235)
        {
          v132 = v131 - v235;
        }

        else
        {
          v132 = 0;
        }

        if (v132 < v131)
        {
          v133 = v24 & 7;
          v134 = *(v244 + 2 * v129);
          do
          {
            v135 = *(v130 + 4 * (--v134 & v97));
            v136 = v101 - v135;
            if (v101 - v135 > v102)
            {
              break;
            }

            if (v100 + v104 <= a4)
            {
              v137 = v135 & a4;
              if (v137 + v100 <= a4 && *(v98 + v100 + v104) == *(v98 + v137 + v100))
              {
                v138 = (v98 + v137);
                if (v24 < 8)
                {
                  v147 = 0;
                  v144 = v128;
LABEL_186:
                  if (v133)
                  {
                    v149 = v133;
                    do
                    {
                      if (*(v138 + v147) != *v144)
                      {
                        break;
                      }

                      v144 = (v144 + 1);
                      ++v147;
                      --v149;
                    }

                    while (v149);
                  }
                }

                else
                {
                  v139 = v109;
                  v140 = v133;
                  v141 = 0;
                  v142 = v138;
                  v143 = v24 >> 3;
                  v144 = v128;
                  while (1)
                  {
                    v146 = *v142++;
                    v145 = v146;
                    if (*v144 != v146)
                    {
                      break;
                    }

                    ++v144;
                    v141 -= 8;
                    if (!--v143)
                    {
                      v147 = -v141;
                      v133 = v140;
                      v109 = v139;
                      v98 = a3;
                      goto LABEL_186;
                    }
                  }

                  v147 = (__clz(__rbit64(v145 ^ *v144)) >> 3) - v141;
                  v133 = v140;
                  v109 = v139;
                  v98 = a3;
                }

                if (v147 < 4)
                {
                  v11 = a5;
                }

                else
                {
                  v148 = __clz(v136) ^ 0x1F;
                  v11 = a5;
                  if (v108 < 135 * v147 - 30 * v148 + 1920)
                  {
                    v107 = v147;
                    v106 = v136;
                    v109 = 135 * v147 - 30 * v148 + 1920;
                    v100 = v147;
                    v108 = v109;
                  }
                }
              }
            }
          }

          while (v134 > v132);
        }

        *(v130 + 4 * (v97 & v131)) = v101;
        *(v244 + 2 * v129) = v131 + 1;
        if (v109 == 2020)
        {
          v150 = *(a6 + 96);
          v151 = *(v150 + 8);
          v152 = *(v150 + 16);
          if (v152 >= v151 >> 7)
          {
            v153 = 0;
            v155 = ((506832829 * *v128) >> 17) & 0x7FFE;
            v156 = *(v11 + 120);
            v157 = 1;
            v109 = 2020;
            v158 = v106;
            v159 = v107;
            do
            {
              v160 = v157;
              *(v150 + 8) = ++v151;
              v161 = *(v156 + v155);
              if (!*(v156 + v155) || v24 < v161)
              {
                goto LABEL_202;
              }

              v162 = *(*(v11 + 112) + 2 * v155);
              v163 = *(v11 + 88);
              v164 = *(v163 + 4 * v161 + 32);
              v165 = *(v163 + 168) + v162 * *(v156 + v155);
              v166 = (v165 + v164);
              if (v161 < 8)
              {
                v107 = 0;
LABEL_217:
                v172 = v161 & 7;
                if ((v161 & 7) != 0)
                {
                  v173 = v107 | v172;
                  while (*(v128 + v107) == *v166)
                  {
                    ++v166;
                    ++v107;
                    if (!--v172)
                    {
                      v107 = v173;
                      break;
                    }
                  }
                }
              }

              else
              {
                v167 = 0;
                v107 = v161 & 0xF8;
                v168 = (v165 + v107 + v164);
                while (1)
                {
                  v169 = *&v166[v167];
                  v170 = *&v128[v167 / 4];
                  if (v169 != v170)
                  {
                    break;
                  }

                  v167 += 8;
                  if (v107 == v167)
                  {
                    v166 = v168;
                    goto LABEL_217;
                  }
                }

                v107 = v167 + (__clz(__rbit64(v170 ^ v169)) >> 3);
              }

              v11 = a5;
              if (v107 && v107 + *(a5 + 100) > v161 && (v106 = v240 + 1 + v162 + ((((*(a5 + 104) >> (6 * (v161 - v107))) & 0x3FLL) + 4 * (v161 - v107)) << *(v163 + v161)), v106 <= v241) && (v171 = __clz(v106) ^ 0x1F, 135 * v107 - 30 * v171 + 1920 >= v109))
              {
                v153 = v161 - v107;
                *(v150 + 16) = ++v152;
                v109 = 135 * v107 - 30 * v171 + 1920;
              }

              else
              {
LABEL_202:
                v107 = v159;
                v106 = v158;
              }

              v157 = 0;
              ++v155;
              v158 = v106;
              v159 = v107;
            }

            while ((v160 & 1) != 0);
          }

          else
          {
            v153 = 0;
            v109 = 2020;
          }
        }

        else
        {
          v153 = 0;
        }

        if (v109 < v246 + 175)
        {
          break;
        }

        ++v245;
        v13 = v228;
        if (v243 <= 2)
        {
          v154 = a2 + 9;
          v95 = v243 + 1;
          v233 = v106;
          v246 = v109;
          v234 = v153;
          v83 = v107;
          ++a2;
          if (v154 < v228)
          {
            continue;
          }
        }

        goto LABEL_233;
      }

      v181 = a2 + v237;
      if (a2 + v237 >= v236)
      {
        v181 = v236;
      }

      v240 = v181;
      v106 = v233;
      v153 = v234;
      v13 = v228;
      v107 = v229;
      v101 = a2;
LABEL_233:
      result = v239;
      v182 = v227;
      if (v106 > v240)
      {
        goto LABEL_234;
      }

      v188 = *a7;
      if (v106 != v188)
      {
        break;
      }

      v183 = 0;
LABEL_242:
      *v227 = v245;
      v227[1] = v107 | (v153 << 25);
      v189 = *(v11 + 68);
      v190 = v189 + 16;
      if (v189 + 16 <= v183)
      {
        v192 = *(v11 + 64);
        v193 = v183 - v189 + (4 << v192) - 16;
        v194 = (__clz(v193) ^ 0x1F) - 1;
        v195 = ((v193 >> v194) & 1 | 2) << v194;
        v182 = v227;
        v183 = ((v193 & ~(-1 << v192)) + v190 + ((((v193 >> v194) & 1 | (2 * (v194 - v192))) + 65534) << v192)) | ((v194 - v192) << 10);
        v191 = (v193 - v195) >> v192;
      }

      else
      {
        LODWORD(v191) = 0;
      }

      *(v182 + 7) = v183;
      v182[2] = v191;
      if (v245 > 5)
      {
        if (v245 > 0x81)
        {
          if (v245 > 0x841)
          {
            if (v245 >> 1 >= 0xC21)
            {
              if (v245 < 0x5842)
              {
                LOWORD(v196) = 22;
              }

              else
              {
                LOWORD(v196) = 23;
              }
            }

            else
            {
              LOWORD(v196) = 21;
            }
          }

          else
          {
            v196 = (__clz(v245 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v197 = __clz(v245 - 2);
          v196 = ((v245 - 2) >> ((v197 ^ 0x1F) - 1)) + 2 * ((v197 ^ 0x1F) - 1) + 2;
        }
      }

      else
      {
        LOWORD(v196) = v245;
      }

      v209 = v153 + v107;
      if ((v153 + v107) > 9)
      {
        if (v209 > 0x85)
        {
          if (v209 > 0x845)
          {
            LOWORD(v209) = 23;
          }

          else
          {
            v209 = (__clz(v209 - 70) ^ 0x1F) + 12;
          }
        }

        else
        {
          v210 = v209 - 6;
          v211 = (__clz(v210) ^ 0x1F) - 1;
          v209 = (v210 >> v211) + 2 * v211 + 4;
        }
      }

      else
      {
        LOWORD(v209) = v209 - 2;
      }

      v212 = v209 & 7 | (8 * (v196 & 7));
      if ((v183 & 0x3FF) != 0 || v196 > 7u || v209 > 0xFu)
      {
        v213 = 3 * (v196 >> 3) + ((v209 & 0xFFF8) >> 3);
        v209 = ((((0x520D40u >> (2 * v213)) & 0xC0) + (v213 << 6)) | v212) + 64;
      }

      else if ((v209 & 0xFFF8) != 0)
      {
        LOWORD(v209) = v212 | 0x40;
      }

      else
      {
        LOWORD(v209) = v209 & 7 | (8 * (v196 & 7));
      }

      *(v182 + 6) = v209;
      *a11 += v245;
      v214 = v101 + 2;
      v174 = v101 + v107;
      if (v101 + v107 >= v225)
      {
        v215 = v225;
      }

      else
      {
        v215 = v101 + v107;
      }

      if (v106 < v107 >> 2)
      {
        v216 = v174 - 4 * v106;
        if (v214 > v216)
        {
          v216 = v101 + 2;
        }

        if (v215 >= v216)
        {
          v214 = v216;
        }

        else
        {
          v214 = v215;
        }
      }

      v22 = v226 + 2 * v107 + v101;
      v227 = v182 + 4;
      if (v214 >= v215)
      {
        v12 = 0;
        v23 = v244;
      }

      else
      {
        v217 = *(a6 + 64);
        v218 = *(a6 + 80);
        v219 = *(a6 + 84);
        v23 = v244;
        do
        {
          v220 = (0x1FE35A7BD3579BD3 * (*(a3 + (v214 & a4)) & v238)) >> v217;
          v221 = *(v244 + 2 * v220);
          *(v244 + 2 * v220) = v221 + 1;
          *(v239 + 4 * (v218 & v221) + 4 * (v220 << v219)) = v214++;
        }

        while (v215 != v214);
        v12 = 0;
      }

LABEL_297:
      a2 = v174;
      if (v174 + 8 >= v13)
      {
        goto LABEL_304;
      }
    }

    v204 = a7[1];
    if (v106 == v204)
    {
      v183 = 1;
      goto LABEL_235;
    }

    v205 = v106 + 3 - v188;
    if (v205 > 6)
    {
      v208 = v106 + 3 - v204;
      if (v208 > 6)
      {
        if (v106 == a7[2])
        {
          v183 = 2;
        }

        else if (v106 == a7[3])
        {
          v183 = 3;
        }

        else
        {
LABEL_234:
          v183 = v106 + 15;
        }

LABEL_235:
        if (v106 <= v240)
        {
          if (v183)
          {
            a7[3] = a7[2];
            v184 = *a7;
            *(a7 + 1) = *a7;
            *a7 = v106;
            v185 = *(a6 + 88);
            if (v185 >= 5)
            {
              v186 = vdupq_n_s32(v106);
              *(a7 + 1) = vaddq_s32(v186, xmmword_2986826D0);
              *(a7 + 4) = vadd_s32(*v186.i8, 0x3FFFFFFFDLL);
              if (v185 >= 0xB)
              {
                v187 = vdupq_lane_s32(v184, 0);
                *(a7 + 10) = vaddq_s32(v187, xmmword_2986826D0);
                *(a7 + 7) = vadd_s32(*v187.i8, 0x3FFFFFFFDLL);
              }
            }
          }
        }

        goto LABEL_242;
      }

      v206 = 4 * v208;
      v207 = 266017486;
    }

    else
    {
      v206 = 4 * v205;
      v207 = 158663784;
    }

    v183 = (v207 >> v206) & 0xF;
    goto LABEL_235;
  }

  v227 = a9;
  v174 = a2;
LABEL_304:
  *a8 = v12 + v13 - v174;
  *a10 += (v227 - a9) >> 4;
  return result;
}

unint64_t CreateBackwardReferencesNH40(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, unint64_t *a8, uint64_t a9, void *a10, void *a11)
{
  v12 = a9;
  v13 = *a8;
  v14 = a2 + result;
  v15 = a2 + result - 3;
  v223 = v15;
  if (result <= 3)
  {
    v15 = a2;
  }

  v226 = v15;
  v16 = 64;
  if (*(a5 + 4) >= 9)
  {
    v16 = 512;
  }

  if (a2 + 4 < v14)
  {
    v246 = (1 << *(a5 + 8)) - 16;
    v225 = v16;
    v17 = v16 + a2;
    v231 = a2 + result;
    v232 = *(a5 + 16);
    v224 = 4 * v16;
    v222 = v14 - 4;
    v227 = a9;
    v242 = a6;
    v234 = a5;
    v249 = a3;
    while (1)
    {
      v240 = v17;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = v14 - a2;
      if (a2 >= v246)
      {
        v23 = v246;
      }

      else
      {
        v23 = a2;
      }

      v24 = a2 + v232;
      v243 = *(a5 + 80);
      v245 = v13;
      v25 = a6;
      v26 = *(a6 + 64);
      v27 = v26 + 196608;
      v28 = a2 & a4;
      v29 = (a3 + (a2 & a4));
      v30 = (506832829 * *v29) >> 17;
      result = v22 >> 3;
      v247 = v22 & 7;
      v31 = 2020;
      v32 = 2020;
      v33 = a2;
      do
      {
        v34 = a7[v19];
        v35 = a2 - v34;
        if ((!v19 || *(v27 + (a2 - v34)) == v30) && v23 >= v34 && v35 < a2)
        {
          v37 = a3 + (v35 & a4);
          if (v22 < 8)
          {
            v42 = v32;
            v43 = 0;
            v44 = v29;
LABEL_32:
            v46 = v22 & 7;
            if ((v22 & 7) != 0)
            {
              v47 = v247 | v43;
              while (*(v37 + v43) == *v44)
              {
                ++v44;
                ++v43;
                if (!--v46)
                {
                  v43 = v47;
                  break;
                }
              }

              a2 = v33;
            }

            else
            {
              a2 = v33;
            }

            v32 = v42;
          }

          else
          {
            v38 = 0;
            v39 = v22 >> 3;
            while (1)
            {
              v40 = *&v29[v38];
              v41 = *(v37 + v38);
              if (v40 != v41)
              {
                break;
              }

              v38 += 8;
              if (!--v39)
              {
                v42 = v32;
                v44 = &v29[v22 & 0xFFFFFFFFFFFFFFF8];
                v43 = v22 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_32;
              }
            }

            v43 = v38 + (__clz(__rbit64(v41 ^ v40)) >> 3);
          }

          if (v43 >= 2)
          {
            v45 = 135 * v43 + 1935;
            if (v31 < v45)
            {
              if (v19)
              {
                v45 -= ((0x1CA10u >> (v19 & 2)) & 4) + 39;
              }

              if (v31 < v45)
              {
                v21 = a7[v19];
                v32 = v45;
                v20 = v43;
                v18 = v43;
                v31 = v45;
              }
            }
          }
        }

        ++v19;
      }

      while (v19 != 4);
      v48 = v246;
      if (v24 < v246)
      {
        v48 = v24;
      }

      v238 = v48;
      v49 = v26 + 0x40000;
      v50 = *(v25 + 56);
      v51 = a2 - *(v26 + 4 * v30);
      v52 = *(v26 + 0x20000 + 2 * v30);
      if (v50)
      {
        v53 = 0;
        v54 = *(v26 + 0x20000 + 2 * v30);
        v55 = a2 - *(v26 + 4 * v30);
        do
        {
          v53 += v55;
          if (v53 > v23)
          {
            break;
          }

          if (v18 + v28 <= a4)
          {
            v56 = (a2 - v53) & a4;
            if (v56 + v18 <= a4 && *(v249 + v18 + v28) == *(v249 + v56 + v18))
            {
              v57 = v249 + v56;
              if (v22 < 8)
              {
                v62 = v32;
                v64 = 0;
                v63 = v29;
LABEL_84:
                v72 = v22 & 7;
                if ((v22 & 7) != 0)
                {
                  v235 = v247 | v64;
                  while (*(v57 + v64) == *v63)
                  {
                    ++v63;
                    ++v64;
                    if (!--v72)
                    {
                      v64 = v235;
                      break;
                    }
                  }
                }
              }

              else
              {
                v58 = 0;
                v59 = v22 >> 3;
                while (1)
                {
                  v60 = *&v29[v58];
                  v61 = *(v57 + v58);
                  if (v60 != v61)
                  {
                    break;
                  }

                  v58 += 8;
                  if (!--v59)
                  {
                    v62 = v32;
                    v63 = &v29[v22 & 0xFFFFFFFFFFFFFFF8];
                    v64 = v22 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_84;
                  }
                }

                v62 = v32;
                v64 = v58 + (__clz(__rbit64(v61 ^ v60)) >> 3);
              }

              v65 = 135 * v64 - 30 * (__clz(v53) ^ 0x1F) + 1920;
              if (v31 < v65)
              {
                v66 = v53;
              }

              else
              {
                v66 = v21;
              }

              if (v31 < v65)
              {
                v67 = v65;
              }

              else
              {
                v67 = v62;
              }

              if (v31 < v65)
              {
                v68 = v64;
              }

              else
              {
                v68 = v20;
              }

              if (v31 < v65)
              {
                v69 = v64;
              }

              else
              {
                v69 = v18;
              }

              if (v31 >= v65)
              {
                v65 = v31;
              }

              v70 = v64 >= 4;
              if (v64 < 4)
              {
                v32 = v62;
              }

              else
              {
                v21 = v66;
                v32 = v67;
              }

              if (v70)
              {
                v20 = v68;
              }

              if (v70)
              {
                v18 = v69;
              }

              if (v70)
              {
                v31 = v65;
              }

              a2 = v33;
            }
          }

          v71 = (v49 + 4 * v54);
          v54 = v71[1];
          v55 = *v71;
          --v50;
        }

        while (v50);
      }

      a6 = v242;
      v73 = *(v242 + 48);
      *(v242 + 48) = v73 + 1;
      *(v27 + a2) = v30;
      v74 = -1;
      if (v51 < 0xFFFF)
      {
        v74 = v51;
      }

      v75 = (v49 + 4 * v73);
      *v75 = v74;
      v75[1] = v52;
      *(v26 + 4 * v30) = a2;
      *(v26 + 0x20000 + 2 * v30) = v73;
      v248 = v32;
      if (v32 == 2020)
      {
        v76 = *(v242 + 72);
        v78 = *(v76 + 8);
        v77 = *(v76 + 16);
        a5 = v234;
        a3 = v249;
        if (v77 < v78 >> 7)
        {
          goto LABEL_223;
        }

        v79 = v242;
        v80 = 0;
        v81 = ((506832829 * *v29) >> 17) & 0x7FFE;
        v82 = *(v234 + 120);
        v83 = 1;
        result = v20;
        v248 = 2020;
        v84 = v21;
        do
        {
          v85 = v83;
          *(v76 + 8) = ++v78;
          v86 = *(v82 + v81);
          if (!*(v82 + v81) || v22 < v86)
          {
            goto LABEL_96;
          }

          v87 = *(v234 + 88);
          v88 = *(v87 + 4 * v86 + 32);
          v89 = *(v87 + 168) + *(*(v234 + 112) + 2 * v81) * *(v82 + v81);
          v90 = (v89 + v88);
          if (v86 < 8)
          {
            v20 = 0;
LABEL_111:
            v96 = v86 & 7;
            if ((v86 & 7) != 0)
            {
              v97 = v20 | v96;
              while (v29[v20] == *v90)
              {
                ++v90;
                ++v20;
                if (!--v96)
                {
                  v20 = v97;
                  break;
                }
              }
            }
          }

          else
          {
            v91 = 0;
            v20 = v86 & 0xF8;
            v92 = (v89 + v20 + v88);
            while (1)
            {
              v93 = *&v90[v91];
              v94 = *&v29[v91];
              if (v93 != v94)
              {
                break;
              }

              v91 += 8;
              if (v20 == v91)
              {
                v90 = v92;
                goto LABEL_111;
              }
            }

            v20 = v91 + (__clz(__rbit64(v94 ^ v93)) >> 3);
          }

          if (v20 && v20 + *(v234 + 100) > v86 && (v21 = v238 + 1 + *(*(v234 + 112) + 2 * v81) + ((((*(v234 + 104) >> (6 * (v86 - v20))) & 0x3FLL) + 4 * (v86 - v20)) << *(v87 + v86)), v21 <= v243) && (v95 = 135 * v20 - 30 * (__clz(v21) ^ 0x1F) + 1920, v95 >= v248))
          {
            v80 = v86 - v20;
            *(v76 + 16) = ++v77;
            v248 = v95;
          }

          else
          {
LABEL_96:
            v21 = v84;
            v20 = result;
          }

          v83 = 0;
          ++v81;
          result = v20;
          v84 = v21;
        }

        while ((v85 & 1) != 0);
      }

      else
      {
        v80 = 0;
        v79 = v242;
        a5 = v234;
        a3 = v249;
      }

      a6 = v79;
      if (v248 >= 0x7E5)
      {
        v228 = v80;
        v229 = v21;
        v98 = 0;
        v99 = *(v79 + 48);
        v100 = v33;
        v101 = v20;
        while (1)
        {
          v239 = v99;
          v241 = v100;
          v236 = v98;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          --v22;
          v230 = v101;
          v105 = v101 - 1;
          if (v101 - 1 >= v22)
          {
            v105 = v22;
          }

          v106 = *(a5 + 4) >= 5 ? 0 : v105;
          v107 = v100 + 1;
          v108 = v100 + 1 < v246 ? v100 + 1 : v246;
          v244 = *(a5 + 80);
          v109 = *(a6 + 64);
          v110 = v109 + 196608;
          v111 = v107 & a4;
          v112 = (a3 + (v107 & a4));
          v113 = (506832829 * *v112) >> 17;
          v114 = 2020;
          v115 = 2020;
          do
          {
            v116 = a7[v102];
            v117 = v107 - v116;
            if ((!v102 || *(v110 + (v107 - v116)) == v113) && v108 >= v116 && v117 < v107)
            {
              v119 = a3 + (v117 & a4);
              if (v22 < 8)
              {
                v126 = 0;
                v123 = (a3 + (v107 & a4));
LABEL_149:
                v128 = v22 & 7;
                if ((v22 & 7) != 0)
                {
                  do
                  {
                    if (*(v119 + v126) != *v123)
                    {
                      break;
                    }

                    v123 = (v123 + 1);
                    ++v126;
                    --v128;
                  }

                  while (v128);
                }
              }

              else
              {
                v120 = 0;
                v121 = (a3 + (v117 & a4));
                v122 = v22 >> 3;
                v123 = (a3 + (v107 & a4));
                while (1)
                {
                  v125 = *v121++;
                  v124 = v125;
                  if (*v123 != v125)
                  {
                    break;
                  }

                  ++v123;
                  v120 -= 8;
                  if (!--v122)
                  {
                    v126 = -v120;
                    goto LABEL_149;
                  }
                }

                v126 = (__clz(__rbit64(v124 ^ *v123)) >> 3) - v120;
              }

              if (v126 >= 2)
              {
                v127 = 135 * v126 + 1935;
                if (v114 < v127)
                {
                  if (v102)
                  {
                    v127 -= ((0x1CA10u >> (v102 & 2)) & 4) + 39;
                  }

                  if (v114 < v127)
                  {
                    v104 = v126;
                    v103 = a7[v102];
                    v115 = v127;
                    v106 = v126;
                    v114 = v127;
                  }
                }
              }
            }

            ++v102;
          }

          while (v102 != 4);
          v129 = v246;
          if (v107 + v232 < v246)
          {
            v129 = v107 + v232;
          }

          v233 = v129;
          result = v109 + 0x40000;
          v130 = *(v242 + 56);
          v131 = *(v109 + 4 * v113);
          v132 = v107 - v131;
          v133 = *(v109 + 0x20000 + 2 * v113);
          v237 = *(v109 + 0x20000 + 2 * v113);
          if (v130)
          {
            v134 = 0;
            v135 = v107 - v131;
            do
            {
              v134 += v135;
              if (v134 > v108)
              {
                break;
              }

              if (v106 + v111 <= a4)
              {
                v136 = (v107 - v134) & a4;
                if (v136 + v106 <= a4 && *(a3 + v106 + v111) == *(a3 + v136 + v106))
                {
                  v137 = a3 + v136;
                  if (v22 < 8)
                  {
                    v144 = 0;
                    v141 = v112;
LABEL_186:
                    v151 = v22 & 7;
                    if ((v22 & 7) != 0)
                    {
                      do
                      {
                        if (*(v137 + v144) != *v141)
                        {
                          break;
                        }

                        v141 = (v141 + 1);
                        ++v144;
                        --v151;
                      }

                      while (v151);
                    }
                  }

                  else
                  {
                    v138 = 0;
                    v139 = (a3 + v136);
                    v140 = v22 >> 3;
                    v141 = v112;
                    while (1)
                    {
                      v143 = *v139++;
                      v142 = v143;
                      if (*v141 != v143)
                      {
                        break;
                      }

                      ++v141;
                      v138 -= 8;
                      if (!--v140)
                      {
                        v144 = -v138;
                        a5 = v234;
                        a3 = v249;
                        goto LABEL_186;
                      }
                    }

                    v144 = (__clz(__rbit64(v142 ^ *v141)) >> 3) - v138;
                    a5 = v234;
                    a3 = v249;
                  }

                  v145 = 135 * v144 - 30 * (__clz(v134) ^ 0x1F) + 1920;
                  if (v114 < v145)
                  {
                    v146 = v144;
                  }

                  else
                  {
                    v146 = v104;
                  }

                  if (v114 < v145)
                  {
                    v147 = v134;
                  }

                  else
                  {
                    v147 = v103;
                  }

                  if (v114 < v145)
                  {
                    v148 = v145;
                  }

                  else
                  {
                    v148 = v115;
                  }

                  if (v114 < v145)
                  {
                    v149 = v144;
                  }

                  else
                  {
                    v149 = v106;
                  }

                  if (v114 >= v145)
                  {
                    v145 = v114;
                  }

                  if (v144 >= 4)
                  {
                    v104 = v146;
                    v103 = v147;
                    v115 = v148;
                    v106 = v149;
                    v114 = v145;
                  }
                }
              }

              v150 = (result + 4 * v133);
              v133 = v150[1];
              v135 = *v150;
              --v130;
            }

            while (v130);
          }

          *(v242 + 48) = v239 + 1;
          *(v110 + (v100 + 1)) = v113;
          v152 = -1;
          if (v132 < 0xFFFF)
          {
            v152 = v132;
          }

          v153 = (result + 4 * v239);
          *v153 = v152;
          v153[1] = v237;
          *(v109 + 4 * v113) = v107;
          *(v109 + 0x20000 + 2 * v113) = v239;
          if (v115 == 2020)
          {
            v154 = *(v242 + 72);
            v156 = *(v154 + 8);
            v155 = *(v154 + 16);
            a6 = v242;
            v157 = 0;
            if (v155 >= v156 >> 7)
            {
              v158 = ((506832829 * *v112) >> 17) & 0x7FFE;
              v159 = *(a5 + 120);
              result = v233 + 1;
              v160 = 1;
              v115 = 2020;
              v161 = v103;
              v162 = v104;
              do
              {
                v163 = v160;
                *(v154 + 8) = ++v156;
                v164 = *(v159 + v158);
                if (!*(v159 + v158) || v22 < v164)
                {
                  goto LABEL_203;
                }

                v165 = *(a5 + 88);
                v166 = *(v165 + 4 * v164 + 32);
                v167 = *(v165 + 168) + *(*(a5 + 112) + 2 * v158) * *(v159 + v158);
                v168 = (v167 + v166);
                if (v164 < 8)
                {
                  v104 = 0;
LABEL_218:
                  v174 = v164 & 7;
                  if ((v164 & 7) != 0)
                  {
                    v175 = v104 | v174;
                    while (*(v112 + v104) == *v168)
                    {
                      ++v168;
                      ++v104;
                      if (!--v174)
                      {
                        v104 = v175;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v169 = 0;
                  v104 = v164 & 0xF8;
                  v170 = (v167 + v104 + v166);
                  while (1)
                  {
                    v171 = *&v168[v169];
                    v172 = *&v112[v169 / 4];
                    if (v171 != v172)
                    {
                      break;
                    }

                    v169 += 8;
                    if (v104 == v169)
                    {
                      v168 = v170;
                      goto LABEL_218;
                    }
                  }

                  v104 = v169 + (__clz(__rbit64(v172 ^ v171)) >> 3);
                }

                if (v104 && v104 + *(a5 + 100) > v164 && (v103 = result + *(*(a5 + 112) + 2 * v158) + ((((*(a5 + 104) >> (6 * (v164 - v104))) & 0x3FLL) + 4 * (v164 - v104)) << *(v165 + v164)), v103 <= v244) && (v173 = __clz(v103) ^ 0x1F, 135 * v104 - 30 * v173 + 1920 >= v115))
                {
                  v157 = v164 - v104;
                  *(v154 + 16) = ++v155;
                  v115 = 135 * v104 - 30 * v173 + 1920;
                }

                else
                {
LABEL_203:
                  v104 = v162;
                  v103 = v161;
                }

                v160 = 0;
                ++v158;
                v161 = v103;
                v162 = v104;
              }

              while ((v163 & 1) != 0);
            }

            else
            {
              v115 = 2020;
            }
          }

          else
          {
            v157 = 0;
            a6 = v242;
          }

          if (v115 < v248 + 175)
          {
            break;
          }

          ++v245;
          a3 = v249;
          if (v236 <= 2)
          {
            v98 = v236 + 1;
            v99 = v239 + 1;
            v229 = v103;
            v248 = v115;
            v228 = v157;
            v101 = v104;
            ++v100;
            if (v241 + 5 < v231)
            {
              continue;
            }
          }

          goto LABEL_237;
        }

        v107 = v100;
        v184 = v100 + v232;
        if (v100 + v232 >= v246)
        {
          v184 = v246;
        }

        v233 = v184;
        v103 = v229;
        v104 = v230;
        v157 = v228;
        a3 = v249;
LABEL_237:
        v14 = v231;
        if (v103 > v233)
        {
LABEL_238:
          v185 = v103 + 15;
          goto LABEL_239;
        }

        v186 = *a7;
        if (v103 == v186)
        {
          v185 = 0;
LABEL_244:
          *v227 = v245;
          *(v227 + 4) = v104 | (v157 << 25);
          v187 = *(a5 + 68);
          v188 = v187 + 16;
          if (v187 + 16 <= v185)
          {
            v190 = *(a5 + 64);
            v191 = v185 - v187 + (4 << v190) - 16;
            v192 = (__clz(v191) ^ 0x1F) - 1;
            v193 = ((v191 >> v192) & 1 | 2) << v192;
            v185 = ((v191 & ~(-1 << v190)) + v188 + ((((v191 >> v192) & 1 | (2 * (v192 - v190))) + 65534) << v190)) | ((v192 - v190) << 10);
            v189 = (v191 - v193) >> v190;
          }

          else
          {
            LODWORD(v189) = 0;
          }

          *(v227 + 14) = v185;
          *(v227 + 8) = v189;
          if (v245 > 5)
          {
            if (v245 > 0x81)
            {
              if (v245 > 0x841)
              {
                if (v245 >> 1 >= 0xC21)
                {
                  if (v245 < 0x5842)
                  {
                    LOWORD(v194) = 22;
                  }

                  else
                  {
                    LOWORD(v194) = 23;
                  }
                }

                else
                {
                  LOWORD(v194) = 21;
                }
              }

              else
              {
                v194 = (__clz(v245 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v195 = (__clz(v245 - 2) ^ 0x1F) - 1;
              v194 = ((v245 - 2) >> v195) + 2 * v195 + 2;
            }
          }

          else
          {
            LOWORD(v194) = v245;
          }

          v207 = v157 + v104;
          if (v207 > 9)
          {
            if (v207 > 0x85)
            {
              if (v207 > 0x845)
              {
                LOWORD(v207) = 23;
              }

              else
              {
                v207 = (__clz(v207 - 70) ^ 0x1F) + 12;
              }
            }

            else
            {
              v208 = v207 - 6;
              v209 = (__clz(v208) ^ 0x1F) - 1;
              v207 = (v208 >> v209) + 2 * v209 + 4;
            }
          }

          else
          {
            LOWORD(v207) = v207 - 2;
          }

          v210 = v207 & 7 | (8 * (v194 & 7));
          if ((v185 & 0x3FF) != 0 || v194 > 7u || v207 > 0xFu)
          {
            v212 = 3 * (v194 >> 3) + ((v207 & 0xFFF8) >> 3);
            v211 = ((((0x520D40u >> (2 * v212)) & 0xC0) + (v212 << 6)) | v210) + 64;
          }

          else
          {
            LOWORD(v211) = v210 | 0x40;
            if ((v207 & 0xFFF8) == 0)
            {
              LOWORD(v211) = v207 & 7 | (8 * (v194 & 7));
            }
          }

          *(v227 + 12) = v211;
          *a11 += v245;
          v213 = v107 + 2;
          v176 = v107 + v104;
          if (v107 + v104 >= v226)
          {
            v214 = v226;
          }

          else
          {
            v214 = v107 + v104;
          }

          if (v103 < v104 >> 2)
          {
            v215 = v176 - 4 * v103;
            if (v213 > v215)
            {
              v215 = v107 + 2;
            }

            if (v214 >= v215)
            {
              v213 = v215;
            }

            else
            {
              v213 = v214;
            }
          }

          v17 = v225 + 2 * v104 + v107;
          v227 += 16;
          if (v213 >= v214)
          {
            v13 = 0;
LABEL_304:
            v12 = a9;
            goto LABEL_305;
          }

          v216 = *(a6 + 64);
          v217 = v216 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v218 = (506832829 * *(a3 + (v213 & a4))) >> 17;
            *(v216 + 196608 + v213) = v218;
            v219 = (v216 + 0x40000 + 4 * v180);
            result = *(v217 + 2 * v218);
            *(v217 + 2 * v218) = v180++;
            v220 = v213 - *(v216 + 4 * v218);
            if (v220 >= 0xFFFF)
            {
              LOWORD(v220) = -1;
            }

            *v219 = v220;
            v219[1] = result;
            *(v216 + 4 * v218) = v213++;
          }

          while (v214 != v213);
          v13 = 0;
          v12 = a9;
          a6 = v242;
          goto LABEL_302;
        }

        v202 = a7[1];
        if (v103 == v202)
        {
          v185 = 1;
        }

        else
        {
          v203 = v103 + 3 - v186;
          if (v203 > 6)
          {
            v206 = v103 + 3 - v202;
            if (v206 > 6)
            {
              if (v103 == a7[2])
              {
                v185 = 2;
              }

              else
              {
                if (v103 != a7[3])
                {
                  goto LABEL_238;
                }

                v185 = 3;
              }

              goto LABEL_239;
            }

            v204 = 4 * v206;
            v205 = 266017486;
          }

          else
          {
            v204 = 4 * v203;
            v205 = 158663784;
          }

          v185 = (v205 >> v204) & 0xF;
        }

LABEL_239:
        if (v103 <= v233 && v185)
        {
          a7[3] = a7[2];
          *(a7 + 1) = *a7;
          *a7 = v103;
        }

        goto LABEL_244;
      }

LABEL_223:
      v13 = v245 + 1;
      v176 = v33 + 1;
      v17 = v240;
      if (v33 + 1 > v240)
      {
        v14 = v231;
        if (v176 <= v240 + v224)
        {
          v196 = v223;
          if (v33 + 9 < v223)
          {
            v196 = v33 + 9;
          }

          if (v176 >= v196)
          {
            goto LABEL_304;
          }

          v197 = *(a6 + 64);
          v198 = v197 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v199 = (506832829 * *(a3 + (v176 & a4))) >> 17;
            v200 = (v197 + 0x40000 + 4 * v180);
            v201 = *(v198 + 2 * v199);
            *(v198 + 2 * v199) = v180++;
            *(v197 + 196608 + v176) = v199;
            result = v176 - *(v197 + 4 * v199);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v200 = result;
            v200[1] = v201;
            *(v197 + 4 * v199) = v176;
            v13 += 2;
            v176 += 2;
          }

          while (v176 < v196);
        }

        else
        {
          v177 = v222;
          if (v33 + 17 < v222)
          {
            v177 = v33 + 17;
          }

          if (v176 >= v177)
          {
            goto LABEL_304;
          }

          v178 = *(a6 + 64);
          v179 = v178 + 0x20000;
          v180 = *(a6 + 48);
          do
          {
            v181 = (506832829 * *(a3 + (v176 & a4))) >> 17;
            v182 = (v178 + 0x40000 + 4 * v180);
            v183 = *(v179 + 2 * v181);
            *(v179 + 2 * v181) = v180++;
            *(v178 + 196608 + v176) = v181;
            result = v176 - *(v178 + 4 * v181);
            if (result >= 0xFFFF)
            {
              result = 0xFFFFLL;
            }

            *v182 = result;
            v182[1] = v183;
            *(v178 + 4 * v181) = v176;
            v13 += 4;
            v176 += 4;
          }

          while (v176 < v177);
        }

        v12 = a9;
LABEL_302:
        *(a6 + 48) = v180;
        goto LABEL_305;
      }

      v12 = a9;
      v14 = v231;
LABEL_305:
      a2 = v176;
      if (v176 + 4 >= v14)
      {
        goto LABEL_312;
      }
    }
  }

  v227 = a9;
  v176 = a2;
LABEL_312:
  *a8 = v13 + v14 - v176;
  *a10 += (v227 - v12) >> 4;
  return result;
}