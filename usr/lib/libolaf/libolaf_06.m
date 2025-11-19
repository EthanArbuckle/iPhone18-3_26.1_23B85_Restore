void PERSetBitToBitField(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *MEMORY[0x29EDCA608];
  *(*(a1 + 1088) + *a2) |= a3 << *(a2 + 8);
  v3 = *(a2 + 8);
  if (!v3)
  {
    v7 = *a2 + 1;
    *a2 = v7;
    *(a2 + 8) = 7;
    v4 = (a2 + 16);
    v13 = *(a2 + 16) - 1;
    *(a2 + 16) = v13;
    if (!v13)
    {
      goto LABEL_6;
    }

LABEL_24:
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = (a2 + 16);
  v5 = *(a2 + 16);
  *(a2 + 8) = v3 - 1;
  *(a2 + 16) = --v5;
  if (v5)
  {
    goto LABEL_24;
  }

  v6 = (v3 - 1);
  v7 = *a2;
  if ((v3 - 1) != 7)
  {
    v8 = 0;
    v9 = *(a1 + 1088);
    v10 = *(v9 + v7) << (8 - v3);
    v11 = v7 + 1;
    *a2 = v11;
    v12 = (*(v9 + v11) >> v3) | v10;
    goto LABEL_7;
  }

LABEL_6:
  v9 = *(a1 + 1088);
  LOBYTE(v12) = *(v9 + v7);
  v11 = v7 + 1;
  *a2 = v11;
  LOBYTE(v6) = 7;
  v8 = 1;
LABEL_7:
  if (v12 > 0xC2u)
  {
    if (v12 == 195)
    {
      v14 = 49152;
      goto LABEL_23;
    }

    if (v12 == 196)
    {
      v14 = 0x10000;
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == 193)
    {
      v14 = 0x4000;
      goto LABEL_23;
    }

    if (v12 == 194)
    {
      v14 = 0x8000;
LABEL_23:
      *v4 = v14;
      goto LABEL_24;
    }
  }

  if ((v12 & 0xC0) == 0x80)
  {
    v15 = (v12 & 0x3F) << 8;
    *v4 = v15;
    v16 = *(v9 + v11);
    if (v8)
    {
      *a2 = v11 + 1;
    }

    else
    {
      v17 = v11 + 1;
      *a2 = v17;
      v16 = (*(v9 + v17) >> (v6 + 1)) | (v16 << (7 - v6));
    }

    v14 = v16 | v15;
    goto LABEL_23;
  }

  if ((v12 & 0x80) == 0)
  {
    *v4 = v12;
    goto LABEL_24;
  }

  v19 = *MEMORY[0x29EDCA608];

  EPErrorHandler(a1, 26);
}

void *PEREncodeOPENTypeField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 1105);
  v7 = v6;
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v7 = 7;
    if (v6 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v6;
      *(a1 + 1105) = 7;
    }
  }

  v8 = *(a1 + 1096) - *(a1 + 1088);
  PERSkipBytes(a1, 1uLL);
  PEREncVal(a1, a2, a3);
  v9 = *(a1 + 1096);
  v10 = v9 - *(a1 + 1088);
  v11 = *(a1 + 1105);
  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (v12)
  {
    v15 = v10 + ~v8;
    if (!v15)
    {
      goto LABEL_12;
    }

    result = PERPutBits(a1, 0, v13);
  }

  else
  {
    result = PERPutBits(a1, 0, (v13 + 8));
    v15 = v10 - v8;
    if (!v15)
    {
      v9 = *(a1 + 1096);
LABEL_12:
      *(a1 + 1096) = v9 - 1;
      v18 = *MEMORY[0x29EDCA608];

      return PERPutBits(a1, 0x100uLL, 0x10u);
    }
  }

  if (v15 > 0x7F)
  {
    if (*(a1 + 1105) == 7)
    {
      v19 = *MEMORY[0x29EDCA608];

      return PEROctetsFragmentation(a1, v15);
    }

    else
    {
      v21 = *MEMORY[0x29EDCA608];

      return PEROctetsFragmentationWithOffset(a1, v15);
    }
  }

  else
  {
    v16 = (*(a1 + 1088) + v8);
    v17 = *(a1 + 1105);
    if (v17 == 7)
    {
      *v16 = v15;
    }

    else
    {
      *v16 |= v15 >> (7 - v17);
      v16[1] |= v15 << (*(a1 + 1105) + 1);
    }

    v20 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void PERGetConsBitField(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v4 = *(a1 + 1105);
    if (v4 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v4;
      *(a1 + 1105) = 7;
    }
  }

  v5 = 0;
  *(a2 + 16) = 0;
  do
  {
    v6 = PERGetByte(a1);
    if ((v6 + 63) >= 4u)
    {
      v7 = v6;
      if ((v6 & 0xC0) == 0x80)
      {
        v8 = PERGetByte(a1);
        v5 = v8 & 0xFFFFC0FF | ((v7 & 0x3F) << 8);
        if (!*(a2 + 16))
        {
          *a2 = *(a1 + 1096);
          *(a2 + 8) = *(a1 + 1105);
          *(a2 + 16) = v5;
        }

        PERGetBits(a1, v8 & 7);
      }

      else if ((v6 & 0x80) != 0)
      {
        EPErrorHandler(a1, 26);
      }

      else
      {
        if (!*(a2 + 16))
        {
          *a2 = *(a1 + 1096);
          *(a2 + 8) = *(a1 + 1105);
          *(a2 + 16) = v6;
        }

        PERGetBits(a1, v6 & 7);
        v5 = v7 >> 3;
      }
    }

    else
    {
      v5 = ((v6 + 63) << 11) + 2048;
    }

    if (!*(a2 + 16))
    {
      *a2 = *(a1 + 1096);
      *(a2 + 8) = *(a1 + 1105);
      *(a2 + 9) = 1;
      *(a2 + 16) = 8 * v5;
    }

    PERGetSkipBytes(a1, v5);
  }

  while (v5 > 0x7FF);
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t PERInitAbsentStructExtAdd(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = result;
  v13 = *MEMORY[0x29EDCA608];
  v8 = (a2[4] - 32 * a3 + 32 * a2[8] + 24);
  do
  {
    v9 = *(v8 - 8);
    if (v9 < 3)
    {
      *(a4 + **(*(a2[1] + 24) + 24 * *v8 + 16)) = 0;
    }

    else if (v9 - 4 >= 2)
    {
      if (v9 == 3)
      {
        v10 = a2[1];
        *(a4 + **(*(v10 + 24) + 24 * *v8 + 16)) = 0;
        v11 = *(v10 + 24) + 24 * *v8;
        result = GenericAssignSort((a4 + *(v11 + 8)), *(*(v11 + 16) + 8), 10, *v11);
      }

      else
      {
        result = CUCFErrorHandler(v7, 15);
      }
    }

    v8 += 4;
    --v5;
  }

  while (v5);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 **PERSetBitFieldLength(unsigned __int8 **result)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(result + 8);
  if (v1 == 7)
  {
    v2 = *result + 1;
    LOBYTE(v3) = **result;
    *result = v2;
  }

  else
  {
    v4 = **result << (7 - v1);
    v2 = *result + 1;
    *result = v2;
    v3 = (*v2 >> (v1 + 1)) | v4;
  }

  if (v3 > 0xC2u)
  {
    if (v3 == 195)
    {
      v5 = 49152;
      goto LABEL_16;
    }

    if (v3 == 196)
    {
      v5 = 0x10000;
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 193)
    {
      v5 = 0x4000;
      goto LABEL_16;
    }

    if (v3 == 194)
    {
      v5 = 0x8000;
LABEL_16:
      result[2] = v5;
      goto LABEL_17;
    }
  }

  if ((v3 & 0xC0) == 0x80)
  {
    v6 = (v3 & 0x3F) << 8;
    result[2] = v6;
    if (v1 == 7)
    {
      LOBYTE(v7) = *v2;
      *result = v2 + 1;
    }

    else
    {
      v10 = *v2 << (7 - v1);
      *result = v2 + 1;
      v7 = (v2[1] >> (v1 + 1)) | v10;
    }

    v9 = (v7 | v6);
  }

  else
  {
    v9 = (v3 & 0x7F);
  }

  result[2] = v9;
  *(result + 9) = 0;
LABEL_17:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodeOPENTypeField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 1056) & 0x40) != 0)
  {
    v8 = *(a1 + 1105);
    if (v8 != 7)
    {
      *(*(a1 + 1096))++ &= 510 << v8;
      *(a1 + 1105) = 7;
    }
  }

  v9 = PERGetByte(a1);
  if (v9 >= 0xC1)
  {
    --*(a1 + 1096);
    v10 = *(a1 + 1105);
    if (v10 == 7)
    {
      v11 = PEROctetsDefragmentation(a1);
      PERDecVal(a1, a2, a3, a4);
      if (*(a1 + 1105) <= 6u)
      {
        ++*(a1 + 1096);
        *(a1 + 1105) = 7;
      }

      v12 = *MEMORY[0x29EDCA608];

      PEROctetsFragmentation(a1, v11);
    }

    else
    {
      v14 = PEROctetsDefragmentationWithOffset(a1);
      PERDecVal(a1, a2, a3, a4);
      if (*(a1 + 1105) < v10)
      {
        ++*(a1 + 1096);
      }

      *(a1 + 1105) = v10;
      v15 = *MEMORY[0x29EDCA608];

      PEROctetsFragmentationWithOffset(a1, v14);
    }

    return;
  }

  if ((v9 & 0xC0) == 0x80)
  {
    v13 = *(a1 + 1096) + (PERGetByte(a1) & 0xFFFFC0FF | ((v9 & 0x3F) << 8));
LABEL_20:
    v16 = *(a1 + 1105);
    PERDecVal(a1, a2, a3, a4);
    *(a1 + 1096) = v13;
    *(a1 + 1105) = v16;
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

  if ((v9 & 0x80) == 0)
  {
    v13 = *(a1 + 1096) + v9;
    goto LABEL_20;
  }

  v18 = *MEMORY[0x29EDCA608];

  EPErrorHandler(a1, 26);
}

void PERSkipOPENTypeField(uint64_t a1)
{
  v2 = 0;
  v8 = *MEMORY[0x29EDCA608];
  while (1)
  {
    if ((*(a1 + 1056) & 0x40) != 0)
    {
      v3 = *(a1 + 1105);
      if (v3 != 7)
      {
        *(*(a1 + 1096))++ &= 510 << v3;
        *(a1 + 1105) = 7;
      }
    }

    v4 = PERGetByte(a1);
    if ((v4 + 63) >= 4u)
    {
      break;
    }

    v2 = ((v4 + 63) << 14) + 0x4000;
LABEL_10:
    PERGetSkipBytes(a1, v2);
    if (!(v2 >> 14))
    {
      v5 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if ((v4 & 0xC0) == 0x80)
  {
    v6 = PERGetByte(a1) & 0xFFFFC0FF | ((v4 & 0x3F) << 8);
    goto LABEL_14;
  }

  if (v4 < 0)
  {
    EPErrorHandler(a1, 26);
    goto LABEL_10;
  }

  v6 = v4;
LABEL_14:
  v7 = *MEMORY[0x29EDCA608];

  PERGetSkipBytes(a1, v6);
}

uint64_t PEREncodePrimSEQUENCE_OF(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  if (v5 < v5 + a2)
  {
    v7 = result;
    do
    {
      v8 = *(a3 + 32);
      v9 = *(v8 + 8);
      if (*v9 == 181)
      {
        v11 = **a3;
        if (v11)
        {
          v12 = v5 + 1;
          while (--v12)
          {
            v11 = *v11;
            if (!v11)
            {
              goto LABEL_10;
            }
          }

          v10 = v11 + *(v9 + 36);
        }

        else
        {
LABEL_10:
          v10 = 0;
        }
      }

      else if (*v9 == 182)
      {
        v10 = (*a3 + *(v9 + 36) + v5 * *(*(v9 + 24) + 8));
      }

      else
      {
        CUCFErrorHandler(v7, 15);
        v10 = 0;
        v8 = *(a3 + 32);
      }

      result = PEREncVal(v7, *(v8 + 24), v10);
      v5 = *(a3 + 24) + 1;
      *(a3 + 24) = v5;
    }

    while (v5 < v6);
  }

  *(a3 + 8) -= a2;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodePrimSEQUENCE_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  v7 = *(a3 + 40);
  if (v7)
  {
    v28 = 0;
    v27 = *v7;
    if (v5 < v6)
    {
      do
      {
        v8 = *(*(a3 + 32) + 8);
        if (*v8 == 181)
        {
          v11 = gnssOsa_Calloc("posp_alloc", 18, 1, *(v8 + 32));
          *v11 = 0;
          v12 = *(*(v8 + 24) + 8);
          memset_s(v11 + *(v8 + 36), v12, 0, v12);
          v13 = *a3;
          if (**a3)
          {
            *v13[1] = v11;
            ++*(v13 + 4);
          }

          else
          {
            *v13 = v11;
            *(v13 + 4) = 1;
          }

          v13[1] = v11;
          v10 = v11 + *(v8 + 36);
          *(v13 + 20) = 8;
        }

        else if (*v8 == 182)
        {
          v9 = *a3;
          *v9 = **a3 + 1;
          v10 = v9 + *(v8 + 36) + v5 * *(*(v8 + 24) + 8);
        }

        else
        {
          CUCFErrorHandler(a1, 15);
          v10 = 0;
        }

        PERDecVal(a1, *(*(a3 + 32) + 24), v10, &v27);
        while (1)
        {
          v14 = v27;
          v15 = *(a3 + 40);
          if (v27 == *v15)
          {
            break;
          }

          v27 = *(v27 + 2);
          MMSFree(a1, v14, 0x18);
        }

        v5 = *(a3 + 24) + 1;
        *(a3 + 24) = v5;
      }

      while (v5 < v6);
      if (v28)
      {
        v18 = *(v15 + 8);
        v16 = (v15 + 8);
        v17 = v18;
        if (v18)
        {
          do
          {
            v19 = v17;
            v17 = *(v17 + 32);
          }

          while (v17);
          v16 = (v19 + 32);
        }

        *v16 = v28;
      }
    }
  }

  else
  {
    for (; v5 < v6; *(a3 + 24) = v5)
    {
      v20 = *(*(a3 + 32) + 8);
      if (*v20 == 181)
      {
        v23 = gnssOsa_Calloc("posp_alloc", 18, 1, *(v20 + 32));
        *v23 = 0;
        v24 = *(*(v20 + 24) + 8);
        memset_s(v23 + *(v20 + 36), v24, 0, v24);
        v25 = *a3;
        if (**a3)
        {
          *v25[1] = v23;
          ++*(v25 + 4);
        }

        else
        {
          *v25 = v23;
          *(v25 + 4) = 1;
        }

        v25[1] = v23;
        v22 = v23 + *(v20 + 36);
        *(v25 + 20) = 8;
      }

      else if (*v20 == 182)
      {
        v21 = *a3;
        *v21 = **a3 + 1;
        v22 = v21 + *(v20 + 36) + v5 * *(*(v20 + 24) + 8);
      }

      else
      {
        CUCFErrorHandler(a1, 15);
        v22 = 0;
      }

      PERDecVal(a1, *(*(a3 + 32) + 24), v22, 0);
      v5 = *(a3 + 24) + 1;
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

uint64_t PEREncodePrimSET_OF(uint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  if (v5 < v5 + a2)
  {
    v7 = result;
    do
    {
      v8 = *(a3 + 32);
      v9 = **a3;
      if (v9)
      {
        v10 = 0;
        while (1)
        {
          v11 = v9[1];
          if (v11 >= 1)
          {
            break;
          }

LABEL_10:
          v9 = *v9;
          if (!v9)
          {
            goto LABEL_11;
          }
        }

        v12 = v11 + v10;
        v13 = v5 - v10;
        while (v13)
        {
          --v13;
          if (!--v11)
          {
            v10 = v12;
            goto LABEL_10;
          }
        }

        v14 = v9 + *(*(v8 + 8) + 36);
      }

      else
      {
LABEL_11:
        v14 = 0;
      }

      result = PEREncVal(v7, *(v8 + 24), v14);
      v5 = *(a3 + 24) + 1;
      *(a3 + 24) = v5;
    }

    while (v5 < v6);
  }

  *(a3 + 8) -= a2;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void PERDecodePrimSET_OF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  v6 = v5 + a2;
  v7 = *(a3 + 40);
  if (v7)
  {
    v26 = 0;
    v25 = *v7;
    if (v5 < v6)
    {
      do
      {
        v8 = *(*(a3 + 32) + 8);
        v9 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(v8 + 24) + 8) + 20);
        *v9 = 0;
        v9[1] = 1;
        v10 = *(*(v8 + 24) + 8);
        memset_s(v9 + *(v8 + 36), v10, 0, v10);
        v11 = *a3;
        if (**a3)
        {
          *v11[1] = v9;
          ++*(v11 + 4);
        }

        else
        {
          *v11 = v9;
          *(v11 + 4) = 1;
        }

        v11[1] = v9;
        PERDecVal(a1, *(*(a3 + 32) + 24), v9 + *(v8 + 36), &v25);
        while (1)
        {
          v12 = v25;
          v13 = *(a3 + 40);
          if (v25 == *v13)
          {
            break;
          }

          v25 = *(v25 + 2);
          MMSFree(a1, v12, 0x18);
        }

        v14 = *(a3 + 24) + 1;
        *(a3 + 24) = v14;
      }

      while (v14 < v6);
      if (v26)
      {
        v17 = *(v13 + 8);
        v15 = (v13 + 8);
        v16 = v17;
        if (v17)
        {
          do
          {
            v18 = v16;
            v16 = *(v16 + 32);
          }

          while (v16);
          v15 = (v18 + 32);
        }

        *v15 = v26;
      }
    }
  }

  else if (v5 < v6)
  {
    do
    {
      v19 = *(*(a3 + 32) + 8);
      v20 = gnssOsa_Calloc("posp_alloc", 18, 1, *(*(v19 + 24) + 8) + 20);
      *v20 = 0;
      v20[1] = 1;
      v21 = *(*(v19 + 24) + 8);
      memset_s(v20 + *(v19 + 36), v21, 0, v21);
      v22 = *a3;
      if (**a3)
      {
        *v22[1] = v20;
        ++*(v22 + 4);
      }

      else
      {
        *v22 = v20;
        *(v22 + 4) = 1;
      }

      v22[1] = v20;
      PERDecVal(a1, *(*(a3 + 32) + 24), v20 + *(v19 + 36), 0);
      v23 = *(a3 + 24) + 1;
      *(a3 + 24) = v23;
    }

    while (v23 < v6);
  }

  v24 = *MEMORY[0x29EDCA608];
}

void Gnm14_03SendPosEstimateReq(void)
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm14_03SendPosEstimateReq", 64, 1, 0xCuLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_REQ =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_03SendPosEstimateReq");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(128, 130, 8521216, v1);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm14_11HandleStartPosResp(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_11HandleStartPosResp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm14_11HandleStartPosResp", 517);
    v13 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    goto LABEL_25;
  }

  v4 = *(a1 + 14);
  v5 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm14_11HandleStartPosResp", v5, *(a1 + 14));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
  if (!InstnFromInstnId)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm14_11HandleStartPosResp", 2052, v5);
    v13 = 2;
    goto LABEL_16;
  }

  v9 = InstnFromInstnId;
  if (!*(InstnFromInstnId + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", v19);
LABEL_23:
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 2, 1);
    }

LABEL_24:
    Gnm02_21DeleteInstn(v9);
    goto LABEL_25;
  }

  v10 = *(InstnFromInstnId + 2);
  if (v10 == 1)
  {
    Gnm11_07StartPosResp(InstnFromInstnId, v4 == 255);
    goto LABEL_25;
  }

  if (v10 == 3)
  {
    Gnm51_05StartPosResp(InstnFromInstnId, v4 == 255);
    goto LABEL_25;
  }

  if (v10 != 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v20 = *(v9 + 2);
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v16));
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  Gnm13_15StartPosResp(InstnFromInstnId, v4 == 255);
LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm14_12HandleStopPosResp(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_12HandleStopPosResp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm14_12HandleStopPosResp", 517);
    v13 = 0;
LABEL_16:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    goto LABEL_26;
  }

  v4 = *(a1 + 14);
  v5 = *(a1 + 12);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm14_12HandleStopPosResp", v5, *(a1 + 14));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
  if (!InstnFromInstnId)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_26;
    }

    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v5);
    v13 = 2;
    goto LABEL_16;
  }

  v9 = InstnFromInstnId;
  if (*(InstnFromInstnId + 1))
  {
    v10 = *(InstnFromInstnId + 2);
    switch(v10)
    {
      case 1:
        Gnm11_08StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      case 3:
        Gnm51_06StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      case 2:
        Gnm13_16StopPosResp(InstnFromInstnId, v4 == 255);
        break;
      default:
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 87, "Gnm14_12HandleStopPosResp", 770, *(v9 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v18, 2, 1);
        }

        Gnm02_21DeleteInstn(v9);
        break;
    }

    gnssOsa_flushNv();
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v5);
      LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
    }

    Gnm02_21DeleteInstn(v9);
  }

LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm14_13HandleClearGNSSRsp(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_13HandleClearGNSSRsp");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 12);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 78;
      if (v4)
      {
        v6 = 89;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%c,Mask0x%X\n", v5, "GNM", 73, "Gnm14_13HandleClearGNSSRsp", v6, *(a1 + 16));
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    if (v4 && ((Gnm13_17SendClearCacheInd(*(a1 + 16)), (*(a1 + 17) & 0x401) == 0) || (Gnm53_26ClearVarMENv() & 1) != 0))
    {
      if (byte_2A1938EB9 == 1)
      {
        byte_2A1938EB9 = 0;
        v8 = 0;
LABEL_15:
        Gnm11_00ApiStatusCB(v8, 0, 0, 16);
      }
    }

    else if (byte_2A1938EB9 == 1)
    {
      byte_2A1938EB9 = 0;
      v8 = 11;
      goto LABEL_15;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm14_13HandleClearGNSSRsp", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t gnssdbg_GetLogSeverityCP(int a1, int a2)
{
  if (a2 != 1)
  {
    goto LABEL_34;
  }

  result = 0;
  if (a1 <= 1791)
  {
    if (a1 <= 1051)
    {
      if ((a1 - 768) <= 0x31)
      {
        if (((1 << a1) & 0x287A00404FFFFLL) != 0)
        {
          goto LABEL_35;
        }

        if (((1 << a1) & 0x404188000000) != 0)
        {
          goto LABEL_7;
        }
      }

      v5 = (a1 - 258);
      if (v5 <= 0x27)
      {
        if (((1 << (a1 - 2)) & 0x363FA6A8F7) != 0)
        {
          goto LABEL_35;
        }

        if (v5 == 39)
        {
          goto LABEL_7;
        }
      }

      v6 = a1 - 512;
      if (v6 <= 0xA)
      {
        v7 = 1 << v6;
        if ((v7 & 0x7C6) != 0)
        {
          goto LABEL_35;
        }

        if ((v7 & 0x11) != 0)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      if ((a1 - 1280) <= 0x19)
      {
        if (((1 << a1) & 0x22C01F7) != 0)
        {
          goto LABEL_35;
        }

        if (a1 == 1283)
        {
          goto LABEL_7;
        }
      }

      v4 = a1 - 7;
      if ((a1 - 1543) <= 0x34)
      {
        if (((1 << v4) & 0xCC0400000101) != 0)
        {
LABEL_7:
          result = 1;
          goto LABEL_35;
        }

        if (((1 << v4) & 0x18204000C00000) != 0)
        {
          goto LABEL_35;
        }
      }

      v8 = a1 - 1052;
      if (v8 <= 0x1E)
      {
        if (((1 << v8) & 0x70020081) != 0)
        {
          goto LABEL_35;
        }

        if (v8 == 19)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_34:
    result = 2;
    goto LABEL_35;
  }

  if (a1 <= 1900)
  {
    if ((a1 - 1792) < 0x54)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (((a1 - 1901) > 0x16 || ((1 << (a1 - 109)) & 0x620001) == 0) && a1 != 2048 && a1 != 2057)
  {
    goto LABEL_34;
  }

LABEL_35:
  v9 = *MEMORY[0x29EDCA608];
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void Comp_AzEl(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5, void *a6, void *a7)
{
  v35[3] = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v28 = 0;
  v29 = 0u;
  v30 = 0u;
  if (*(a3 + 120))
  {
    for (i = 0; i != 3; ++i)
    {
      *&v35[i] = *(a3 + 8 + i * 8) - *(a1 + i * 8);
    }

    v12 = 0.0;
    v13 = 2;
    do
    {
      v12 = v12 + *&v35[v13] * *&v35[v13];
      v14 = v13-- + 1;
    }

    while (v14 > 1);
    v15 = 0;
    v16 = sqrt(v12);
    do
    {
      *&v35[v15] = *&v35[v15] / v16;
      ++v15;
    }

    while (v15 != 3);
    v17 = 0;
    v18 = *v35;
    v19 = *&v35[1];
    v20 = (a2 + 16);
    v21 = *&v35[2];
    do
    {
      v22 = *(v20 - 1) * v19 + *(v20 - 2) * v18;
      v23 = *v20;
      v20 += 3;
      v34[v17++] = v22 + v23 * v21;
    }

    while (v17 != 3);
    AzEl_SinCos(v34, &v28, &v31);
    AzEl_RadDeg(&v28, &v31);
    v24 = v28;
    if ((v28 & 0x80000000) != 0)
    {
      v25 = -360 - v28;
      if (v28 > 0xFFFFFE98)
      {
        v25 = 0;
      }

      v26 = ((__PAIR64__(v25, v28) - 4294966936u) >> 32) / 0x168;
      if (v28 < 0xFFFFFE98)
      {
        LOWORD(v26) = v26 + 1;
      }

      v24 = v28 + 360 * v26 + 360;
    }

    *a4 = v31;
    *a5 = v24;
    *a6 = v33;
    *a7 = v30;
  }

  v27 = *MEMORY[0x29EDCA608];
}

int8x8_t Decode_GPS_Health_From_AS_Subfr(const unsigned int *a1, int8x8_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = a1[8];
  v3 = a1[9];
  v4.i8[0] = a1[7] & 0x1F;
  v4.i8[1] = (v2 >> 18) & 0x1F;
  v4.i8[2] = (v2 >> 12) & 0x1F;
  v4.i8[3] = (v2 >> 6) & 0x1F;
  v4.i8[4] = v2 & 0x1F;
  v4.i8[5] = (v3 >> 18) & 0x1F;
  v4.i8[6] = (v3 >> 12) & 0x1F;
  v4.i8[7] = (v3 >> 6) & 0x1F;
  v5 = vmovl_u8(v4);
  v6 = vmovl_high_u16(v5);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = v7;
  v9 = vmovl_u16(*v5.i8);
  v7.i64[0] = v9.u32[0];
  v7.i64[1] = v9.u32[1];
  v10 = vdupq_n_s64(0xE4FE7F3uLL);
  result = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v7)), vshlq_u64(v10, vsubw_high_u32(0, v9))), vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v8)), vshlq_u64(v10, vsubw_high_u32(0, v6))))), 0x101010101010101);
  *a2 = result;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Comp_AGNSS_PR_Sigma(unsigned int a1)
{
  if (a1 <= 0x1116FF)
  {
    if (a1 >> 3 < 0x271)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v2 = 9375;
      if (a1 >= 0x249F)
      {
        v3 = 0;
        do
        {
          v2 *= 2;
          ++v3;
        }

        while (v2 <= a1);
      }

      else
      {
        v3 = 0;
      }

      v1 = 8 * v3 - (v2 - a1) / (625 << v3) + 7;
    }
  }

  else
  {
    LOBYTE(v1) = 63;
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return v1;
}

double *Comp_Track_velLOS(double a1, double a2, double *result, double *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 57.2957795 / (a1 * a1 + a2 * a2);
    *a4 = v10 * (result[3] * a1 - *result * a2);
    a4[1] = v10 * (result[4] * a1 - result[1] * a2);
    v9 = v10 * -(result[2] * a2);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_ABDS_Set_Eph_El(unsigned __int16 *a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_Eph_El"))
  {
    goto LABEL_32;
  }

  if (g_Enable_Event_Log >= 5u)
  {
    EvLog_ABDS_Eph_El(a1);
  }

  v2 = *a1;
  if (v2 >= 0x2000)
  {
    v29 = *a1;
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: Week = %d >=8191, Out of range!");
LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  v3 = *(a1 + 1);
  if (v3 > 0x1274F)
  {
    v30 = *(a1 + 1);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: toc = %d > 75599, Out of range!");
    goto LABEL_32;
  }

  v4 = *(a1 + 2);
  if (v4 > 0x1274F)
  {
    v31 = *(a1 + 2);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: toe = %d > 75599, Out of range!");
    goto LABEL_32;
  }

  v5 = *(a1 + 12);
  if (v5 >= 0x20)
  {
    v32 = *(a1 + 12);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: AODE = %d >31, Out of range!");
    goto LABEL_32;
  }

  v6 = *(a1 + 13);
  if (v6 >= 0x20)
  {
    v33 = *(a1 + 13);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: AODC = %d >31, Out of range!");
    goto LABEL_32;
  }

  if (*(a1 + 14) - 38 <= 0xFFFFFFDA)
  {
    v34 = *(a1 + 14);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: SVid = %d < 1 or >37, Out of range!");
    goto LABEL_32;
  }

  v7 = *(a1 + 15);
  if (v7 >= 0x10)
  {
    v35 = *(a1 + 15);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: URA = %d >15, Out of range!");
    goto LABEL_32;
  }

  v8 = a1[22];
  if (((v8 - 0x2000) >> 14) <= 2u)
  {
    v36 = a1[22];
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: IDot = %d < -2^13 or >= 2^13, Out of range!");
    goto LABEL_32;
  }

  v9 = *(a1 + 12);
  if ((v9 - 0x800000) >> 24 != 255)
  {
    v37 = *(a1 + 12);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_32;
  }

  v10 = *(a1 + 19);
  if ((v10 - 0x800000) >> 24 != 255)
  {
    v38 = *(a1 + 19);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af0 = %d <-2^23 or >=2^23, Out of range!");
    goto LABEL_32;
  }

  v11 = *(a1 + 20);
  if ((v11 - 0x200000) >> 22 != 1023)
  {
    v39 = *(a1 + 20);
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af1 = %d <-2^21 or >=2^21, Out of range!");
    goto LABEL_32;
  }

  v12 = a1[42];
  if (((v12 - 1024) >> 11) <= 0x1Eu)
  {
    v40 = a1[42];
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: af2 = %d <-2^10 or >=2^10, Out of range!");
    goto LABEL_32;
  }

  v13 = a1[43];
  if (((v13 - 512) >> 10) <= 0x3Eu)
  {
    v41 = a1[43];
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: TGD1 = %d <-2^9 or >=2^9, Out of range!");
    goto LABEL_32;
  }

  v43 = *(a1 + 14);
  v14 = a1[44];
  if (((v14 - 512) >> 10) <= 0x3Eu)
  {
    v42 = a1[44];
    EvCrt_v("GN_ABDS_Set_Eph: FAILED: TGD2 = %d <-2^9 or >=2^9, Out of range!");
    goto LABEL_32;
  }

  v18 = *(a1 + 14);
  v19 = (v43 - 1);
  v20 = p_NA;
  v21 = p_NA + 9884;
  if (*(a1 + 90))
  {
    v22 = 5;
  }

  else
  {
    v22 = 3;
  }

  v23 = v21 + 100 * v19;
  *(v23 + 8) = v3;
  *(v23 + 12) = v4;
  *(v23 + 16) = v2;
  *(v23 + 18) = v5;
  *(v23 + 19) = v6;
  *(v23 + 20) = v43;
  *(v23 + 21) = v7;
  *(v23 + 22) = *(a1 + 16);
  *(v23 + 24) = *(a1 + 10);
  *(v23 + 40) = *(a1 + 18);
  *(v23 + 48) = v8;
  *(v23 + 50) = a1[23];
  *(v23 + 52) = v9;
  *(v23 + 56) = *(a1 + 26);
  *(v23 + 72) = *(a1 + 34);
  *(v23 + 80) = v10;
  *(v23 + 84) = v11;
  *(v23 + 88) = v12;
  *(v23 + 90) = v13;
  *(v23 + 92) = v14;
  *(v23 + 4) = v22;
  if (v43 <= 5)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0x7FFFFFF;
  }

  *(v23 + 96) = v24;
  *(v20 + v19 + 223) = 1;
  v25 = *(p_api + 48);
  if (*(v25 + 5) == 1 && *v25 >= 3)
  {
    v26 = *(v25 + 24) + 604800 * *(v25 + 16);
  }

  else
  {
    v26 = 0;
  }

  v27 = (v21 + 100 * v19);
  *v27 = v26;
  v15 = 1;
  Debug_Log_BDS_Eph(1, v27);
  if (g_Enable_Event_Log >= 3u)
  {
    EvLog_nd("GN_ABDS_Set_Eph: ", 2, v28, v43, *(p_NA + 100 * v19 + 9884));
  }

LABEL_33:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t GN_ABDS_Set_BGTO(__int16 *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_BGTO"))
  {
    goto LABEL_10;
  }

  v3 = *a1;
  if (v3 != 0x7FFF && ((*a1 - 0x2000) >> 14) <= 2u)
  {
    v18 = *a1;
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0G = %d < -2^13 or >= 2^13, Out of range!");
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  LODWORD(v5) = a1[4];
  if (v5 != 0x7FFF && ((v5 - 0x2000) >> 14) <= 2u)
  {
    v17 = a1[4];
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0R = %d < -2^13 or >= 2^13, Out of range!");
    goto LABEL_10;
  }

  v9 = a1[2];
  if (v9 != 0x7FFF && ((v9 - 0x2000) >> 14) <= 2u)
  {
    v19 = a1[2];
    EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0E = %d < -2^13 or >= 2^13, Out of range!");
    goto LABEL_10;
  }

  v10 = *a1;
  v11 = *(p_api + 48);
  if (*(v11 + 5) == 1 && *v11 >= 3)
  {
    v12 = *(v11 + 24) + 604800 * *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = p_NA;
  v14 = (p_NA + 0x2000);
  *(p_NA + 9864) = v12;
  if (v10 != 0x7FFF)
  {
    v15 = a1[1];
    if (v15 != 0x7FFF)
    {
      v14[840] = v3;
      v5 = 9874;
      goto LABEL_29;
    }
  }

  if (v9 != 0x7FFF)
  {
    v15 = a1[3];
    if (v15 != 0x7FFF)
    {
      v14[842] = v9;
      v5 = 9878;
      goto LABEL_29;
    }
  }

  if (v5 != 0x7FFF)
  {
    v15 = a1[5];
    if (v15 == 0x7FFF)
    {
      goto LABEL_30;
    }

    v14[844] = v5;
    v5 = 9882;
LABEL_29:
    *(v13 + v5) = v15;
    LOWORD(v9) = a1[2];
    LOWORD(v5) = a1[4];
    goto LABEL_30;
  }

  LOWORD(v5) = 0x7FFF;
LABEL_30:
  if (*(a1 + 12))
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  *(v13 + 9868) = v16;
  v6 = 1;
  *(v13 + 222) = 1;
  EvLog_nd("GN_ABDS_Set_BGTO: ", 6, v2, v3, a1[1], v9, a1[3], v5, a1[5]);
LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t stphiu(uint64_t result, unsigned int a2, const double *a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, const unsigned __int8 *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2 >= 2 && a5)
  {
    v7 = 0;
    v8 = result - 8;
    v9 = a3 - 1;
    v10 = a4 - 1;
    v11 = a6 - 1;
    v12 = a7 - 1;
    if ((a5 + 1) > 2)
    {
      v13 = (a5 + 1);
    }

    else
    {
      v13 = 2;
    }

    v14 = 1;
    do
    {
      v15 = v12[v14];
      if (v12[v14])
      {
        result = v11[v14];
        v16 = 1;
        v17 = v7;
        do
        {
          v18 = v9[++v17];
          v19 = v10[v17];
          v20 = (v19 - 1) * v19;
          v21 = result + (v20 >> 1);
          *(v8 + 8 * v21) = v18 + *(v8 + 8 * v21);
          if (v19 < a2)
          {
            v22 = (v20 >> 1) + v19;
            do
            {
              v21 += v19;
              v22 += v19;
              *(v8 + 8 * v21) = *(v8 + 8 * v21) + v18 * *(v8 + 8 * v22);
              ++v19;
            }

            while (a2 != v19);
          }
        }

        while (v16++ != v15);
      }

      v7 += v15;
      ++v14;
    }

    while (v14 != v13);
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplProvider::GetInstance(SuplProvider *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SuplProvider::GetInstance(void)::pred_suplProvider != -1)
  {
    dispatch_once(&SuplProvider::GetInstance(void)::pred_suplProvider, &__block_literal_global_0);
  }

  result = SuplProvider::m_supl_provider;
  if (!SuplProvider::m_supl_provider)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplProvider.cpp", 60, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

char *___ZN12SuplProvider11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x40uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = &unk_2A1F88340;
    *(result + 1) = &unk_2A1F88388;
    *(result + 2) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 7) = 0;
  }

  SuplProvider::m_supl_provider = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplProvider::AbortLocationReq(SuplUtils *a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 4);
  if (v5)
  {
    while (*v5 != *(a3 + 4))
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    SuplSession::ProcessAbortRequest((v5 - 8), a4);
  }

  else
  {
LABEL_4:
    Instance = SuplUtils::GetInstance(a1);
    v7 = SuplUtils::DeleteSuplInitRecd(Instance, *(a3 + 4));
    v8 = SuplPosPayloadHandler::GetInstance(v7);
    v9 = *(a3 + 4);
    v10 = LcsSuplGlueLayer::GetInstance(v8);
    (*(*v10 + 8))(v10, v9, 3, 0);
    v11 = SuplPosPayloadHandler::ResetLppParams(v8);
    v12 = LcsSuplGlueLayer::GetInstance(v11);
    if (v12)
    {
      v13 = v12 + 8;
    }

    else
    {
      v13 = 0;
    }

    (*(*v13 + 8))(v13, *(a3 + 4));
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "AbortLocationReq", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t SuplProvider::InitSessionNode(uint64_t a1, int a2, int a3, uint64_t *a4, int a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v10 = operator new(0x218uLL, MEMORY[0x29EDC9418]);
  if (v10)
  {
    v11 = v10;
    SuplSession::SuplSession(v10, a2, a3, a4);
    v12 = (v11 + 8);
    v13 = *(a1 + 32);
    while (v13)
    {
      v14 = v13;
      v13 = *(v13 + 8);
      if (!v13)
      {
        *(v14 + 8) = v12;
        *(v11 + 2) = 0;
        if (!a5)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    *(v11 + 2) = *(a1 + 32);
    *(a1 + 32) = v12;
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_11:
    SuplSession::InitializeResources(v11);
    SuplSession::ProcessSuplRequest(v11);
LABEL_12:
    v17 = 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "InitSessionNode", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    v17 = -2;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t SuplProvider::DeleteSessionInfo(SuplProvider *this, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 4);
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v8 = v3 - 8;
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    LcsLinkedList::Remove(this + 16, v2);
LABEL_13:
    v9 = *(*v8 + 8);
    v10 = *MEMORY[0x29EDCA608];

    return v9(v8);
  }

  else
  {
LABEL_5:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "DeleteSessionInfo", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t SuplProvider::ConnectInd(uint64_t result, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(result + 32);
  if (!v3)
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "ConnectInd", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }

    goto LABEL_9;
  }

  while (*v3 != a2)
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  if (a3 == 6 && *(v3 + 48))
  {
    *(v3 + 520) = 6;
LABEL_9:
    v6 = *MEMORY[0x29EDCA608];
    return result;
  }

  v7 = *MEMORY[0x29EDCA608];

  return SuplSession::ConnectInd((v3 - 8), a3);
}

uint64_t non-virtual thunk toSuplProvider::ConnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 - 8;

  return SuplProvider::ConnectInd(v4, a2, a3);
}

uint64_t SuplProvider::DisconnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v8 = *MEMORY[0x29EDCA608];

    return SuplSession::DisconnectInd(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "DisconnectInd", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t non-virtual thunk toSuplProvider::DisconnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 - 8;

  return SuplProvider::DisconnectInd(v4, a2, a3);
}

void SuplProvider::ReceiveDataInd(uint64_t a1, int a2, char **a3)
{
  v57 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v7 = *a3;
    v8 = a3[1];
    v9 = *a3;
    if (v9 == v8)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ReceiveDataInd", 514);
        LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
      }
    }

    else
    {
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a1 + 40, *(a1 + 48), v9, v8, v8 - v9);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      if ((v11 - v10) >= 2)
      {
        v26 = 0;
        SuplProvider::DecodeMessageLength(v10, v11, &v26);
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = v13 - v12;
        if (v13 - v12 >= v26)
        {
          if (v14 < 0xBB9)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, v12, v13, v14);
            SuplProvider::DecodeMessageLength(v27, v28, &v30);
            v31[0] = &v27;
            v31[1] = 5;
            v32 = 0;
            ASN1T_SessionID::ASN1T_SessionID(__str);
            v19 = asn1PD_SessionID(v31, __str);
            v20 = __str[0];
            if (v19)
            {
              v21 = 0;
            }

            else
            {
              v21 = v34;
            }

            if (v55)
            {
              v56 = v55;
              operator delete(v55);
            }

            if (v53)
            {
              v54 = v53;
              operator delete(v53);
            }

            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }

            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            if (v47)
            {
              v48 = v47;
              operator delete(v47);
            }

            if (v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            if (v43)
            {
              v44 = v43;
              operator delete(v43);
            }

            if (v41)
            {
              v42 = v41;
              operator delete(v41);
            }

            if (v39)
            {
              v40 = v39;
              operator delete(v39);
            }

            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }

            if (v27)
            {
              v28 = v27;
              operator delete(v27);
            }

            if (!v19 && v20)
            {
              v22 = *(a1 + 32);
              if (v22)
              {
                while (*v22 != v21)
                {
                  v22 = *(v22 + 8);
                  if (!v22)
                  {
                    goto LABEL_46;
                  }
                }

                v3 = v22;
              }

              else
              {
LABEL_46:
                if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v23 = mach_continuous_time();
                  v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "SPL", 69, "ReceiveDataInd", 513);
                  LbsOsaTrace_WriteLog(0x12u, __str, v24, 0, 1);
                }
              }
            }

            SuplSession::ReceiveDataInd(v3 - 8, (a1 + 40));
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v15 = mach_continuous_time();
            v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "ReceiveDataInd", 514);
            LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
          }

          *(a1 + 48) = *(a1 + 40);
        }
      }
    }
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ReceiveDataInd", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_299542CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  ASN1T_SessionID::~ASN1T_SessionID(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SuplProvider::DecodeMessageLength(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1, a2, a2 - a1);
  v8[0] = &__p;
  v8[1] = 0;
  v9 = 0;
  Asn1Coder::DecodeInteger(v8, 0, 0xFFFFu, a3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_299542D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSuplProvider::ReceiveDataInd(uint64_t a1, int a2, char **a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 - 8;

  SuplProvider::ReceiveDataInd(v4, a2, a3);
}

void SuplProvider::OnTimerEvent(SuplProvider *this, unsigned int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  LcsUtils::GetInstance(this);
  if (a2 > 0xFFFE)
  {
    __str[0] = 0;
    v10 = a2 - 0xFFFF;
    (**this)(this, 0, __str, 1);
LABEL_8:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = *(this + 4);
  if (!v4)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "OnTimerEvent", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    goto LABEL_8;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v8 = *MEMORY[0x29EDCA608];

  SuplSession::OnTimerEvent((v4 - 8));
}

void non-virtual thunk toSuplProvider::OnTimerEvent(SuplProvider *this, unsigned int a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = (this - 8);

  SuplProvider::OnTimerEvent(v3, a2);
}

LcsSuplGlueLayer *SuplProvider::SuplEndIndication(LcsSuplGlueLayer *result, uint64_t a2, int a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(result + 4);
  if (v3)
  {
    v4 = result;
    while (*v3 != a3)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v5 = *LcsSuplGlueLayer::GetInstance(result);
    result = (*v5)();
    *(v4 + 6) = *(v4 + 5);
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplProvider::Connect(SuplProvider *this, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v22[0] = 0;
    memset(&v23, 0, sizeof(v23));
    v24 = 7275;
    Instance = SimUtils::GetInstance(this);
    if (SimUtils::GetSlpFqdn(Instance, v22, a2, *(v4 + 524)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "Connect", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
      }

      SuplProvider::SuplEndIndication(this, 0xFFFFFFFFLL, a2);
      SuplProvider::DeleteSessionInfo(this, a2);
      v7 = 0;
    }

    else
    {
      v19[0] = 0;
      v21 = 0;
      memset(__p, 0, sizeof(__p));
      if ((v22[0] - 1) >= 4u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "Connect", 515);
          LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
        }

        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = 0x2030301u >> (8 * ((v22[0] - 1) & 0x1F));
      }

      v19[0] = v11;
      v14 = std::string::operator=(__p, &v23);
      *&__p[24] = v24;
      __p[26] = 0;
      v21 = *(v4 + 524);
      v15 = LcsSuplGlueLayer::GetInstance(v14);
      if (v15)
      {
        v16 = (v15 + 8);
      }

      else
      {
        v16 = 0;
      }

      v7 = (**v16)(v16, a2, v19);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "Connect", 2305);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    SuplProvider::SuplEndIndication(this, 4294967279, a2);
    SuplProvider::DeleteSessionInfo(this, a2);
    v7 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_299543460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplProvider::Disconnect(SuplProvider *this, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    v7 = SuplProvider::DeleteSessionInfo(this, *(v2 + 368));
    v8 = SuplVersionNegotiation::Instance::Reset(v7);
    Instance = LcsSuplGlueLayer::GetInstance(v8);
    if (Instance)
    {
      v10 = Instance + 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*v10 + 8);
    v12 = *MEMORY[0x29EDCA608];

    return v11();
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "Disconnect", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }

    v6 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t SuplProvider::SendSuplPdu(LcsSuplGlueLayer *a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 4);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    Instance = LcsSuplGlueLayer::GetInstance(a1);
    if (Instance)
    {
      v8 = Instance + 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(*v8 + 16);
    v10 = *MEMORY[0x29EDCA608];

    return v9();
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SendSuplPdu", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }

    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t SuplProvider::UpdateAidMask(SuplProvider *this, int a2, const SuplAsstDataNeededInfo *a3)
{
  __p[125] = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v14 = 0u;
    memset(__p, 0, 25);
    *v13 = 0u;
    if (a3)
    {
      *__str = *a3;
      v8 = *(a3 + 1);
      v13[0] = v8;
      if (__str != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v13[1], *(a3 + 2), *(a3 + 3), *(a3 + 3) - *(a3 + 2));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *(a3 + 5), *(a3 + 6), *(a3 + 6) - *(a3 + 5));
        LODWORD(v8) = v13[0];
      }

      LOBYTE(__p[3]) = *(a3 + 64);
      v9 = v8 | 1;
    }

    else
    {
      v9 = 1;
    }

    *__str = 1;
    LODWORD(v13[0]) = v9;
    SuplSession::SetAidMask((v3 - 8), __str);
    SuplSession::InitializeResources((v3 - 8));
    SuplSession::ProcessSuplRequest((v3 - 8));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13[1])
    {
      *&v14 = v13[1];
      operator delete(v13[1]);
    }

    v7 = 0;
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "UpdateAidMask", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    v7 = -3;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

void SuplProvider::ProcessRRLPResponse(SuplPosPayloadHandler *a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = 515;
      goto LABEL_9;
    }

LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = 513;
LABEL_9:
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v4, "SPL", 69, "ProcessRRLPResponse", v5);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  while (*v2 != *(a2 + 28))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  *(v2 + 400) = *(a2 + 32);
  Instance = SuplPosPayloadHandler::GetInstance(a1);
  v9 = *(a2 + 24);
  v10 = *MEMORY[0x29EDCA608];

  SuplPosPayloadHandler::ProcessPosResponse(Instance, a2, v9, (v2 - 8));
}

LcsSuplGlueLayer *SuplProvider::AbortAllSessionsOnPriority(SuplProvider *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(this + 4);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      v7[0] = 0;
      v8 = *(v1 + 368);
      this = (**v2)(v2, 0, v7, 0);
      v1 = v3;
    }

    while (v3);
  }

  Instance = SuplUtils::GetInstance(this);
  result = SuplUtils::AbortAllStoredSuplInits(Instance);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void ASN1T_SessionID::~ASN1T_SessionID(ASN1T_SessionID *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 24));
  v6 = *MEMORY[0x29EDCA608];
}

void ASN1T_SETId::U::~U(ASN1T_SETId::U *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v17 = *MEMORY[0x29EDCA608];
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(SuplAsstDataNeededInfo *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  v4 = *MEMORY[0x29EDCA608];
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v41 = *MEMORY[0x29EDCA608];
  if (a5 < 1)
  {
    goto LABEL_33;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        goto LABEL_33;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    goto LABEL_33;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v5 = v26;
LABEL_33:
  v39 = *MEMORY[0x29EDCA608];
  return v5;
}

void Debug_Log_ApxTime(unsigned __int16 *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_15[v4++];
    }

    while (v4 != 6);
    v5 = *a1;
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = a1[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = a1[4];
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = a1[5];
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = a1[6];
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 4);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = *(a1 + 5);
    v21 = g_CB_GDbg++;
    *v21 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v20);
    v22 = g_CB_GDbg++;
    *v22 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v23 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v24 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NonVol(int a1, uint64_t a2)
{
  v152 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = *(a2 + 4);
    v5 = *(a2 + 22936);
    v6 = *(a2 + 22848);
    v7 = *(a2 + 22856);
    v8 = 36;
    v9 = *(a2 + 22860);
    v10 = *(a2 + 22864);
    v11 = g_CB_GDbg;
    do
    {
      g_CB_GDbg = (v11 + 1);
      *v11 = v8;
      v11 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v11 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = aNg[++v3];
    }

    while (v3 != 4);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v4);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
    if (a1)
    {
      memset(v151, 0, 71);
      v150 = 0;
      v148 = 0u;
      v149 = 0u;
      memset(v147, 0, 108);
      v145 = 0u;
      memset(v146, 0, 28);
      v142 = 0uLL;
      v143 = 0;
      v21 = 1;
      v141 = 0uLL;
      do
      {
        if (Core_Load_GPS_Eph(v21, v147) && SLODWORD(v147[0]) >= 1)
        {
          *v151 = *&v147[0];
          LOBYTE(v151[2]) = BYTE8(v147[0]);
          *(&v151[2] + 1) = *(v147 + 9);
          v22 = 21;
          v23 = 11;
          v24 = &v147[1] + 8;
          do
          {
            v25 = v151 + v23;
            *v25 = *v24;
            *(v25 + 1) = *(v24 + 1);
            v24 += 4;
            --v22;
            v23 += 3;
          }

          while (v22 > 1);
          Debug_Log_GPS_Eph(0, v21, v151);
        }

        if (Core_Load_GPS_Alm(v21, &v145) && v145 >= 1)
        {
          *&v148 = v145;
          WORD4(v148) = WORD5(v145);
          v26 = 9;
          v27 = 10;
          v28 = &v145 | 0xC;
          do
          {
            v29 = &v148 + v27;
            *v29 = *v28;
            *(v29 + 1) = *(v28 + 1);
            v28 += 4;
            --v26;
            v27 += 3;
          }

          while (v26 > 1);
          Debug_Log_GPS_Alm(0, v21, &v148);
        }

        ++v21;
      }

      while (v21 != 33);
      v30 = 0;
      v31 = p_NV;
      v32 = 55665;
      for (i = 88; i != 128; ++i)
      {
        v34 = *(p_NV + i) ^ BYTE1(v32);
        v32 = 52845 * (v32 + v34) + 22719;
        v30 += v34;
      }

      if (*(p_NV + 80) == v30)
      {
        v35 = *(p_NV + 108);
        v144[0] = *(p_NV + 92);
        v144[1] = v35;
        Debug_Log_GNSS_Health(0, 1, v144);
        v31 = p_NV;
      }

      v36 = 0;
      v37 = 55665;
      for (j = 160; j != 184; ++j)
      {
        v39 = *(v31 + j) ^ BYTE1(v37);
        v37 = 52845 * (v37 + v39) + 22719;
        v36 += v39;
      }

      if (*(v31 + 152) == v36)
      {
        v142 = *(v31 + 160);
        v143 = *(v31 + 176);
        if (v142 >= 1)
        {
          Debug_Log_GPS_UTC(0, &v142);
          v31 = p_NV;
        }
      }

      v40 = 0;
      v41 = 0;
      v42 = 55665;
      do
      {
        v43 = *(v31 + 136 + v40) ^ BYTE1(v42);
        v42 = 52845 * (v42 + v43) + 22719;
        v41 += v43;
        ++v40;
      }

      while (v40 != 16);
      if (*(v31 + 128) == v41)
      {
        v141 = *(v31 + 136);
        if (v141 >= 1)
        {
          Debug_Log_GPS_Klob(0, &v141);
        }
      }

      memset(&v151[2], 0, 63);
      *(&v148 + 1) = 0;
      v149 = 0uLL;
      v150 = 0;
      memset(v147, 0, 108);
      v44 = 193;
      v145 = 0u;
      memset(v146, 0, 28);
      do
      {
        if (Core_Load_QZSS_Eph(v44, v147) && SLODWORD(v147[0]) >= 1)
        {
          *v151 = *&v147[0];
          LOBYTE(v151[2]) = BYTE8(v147[0]);
          *(&v151[2] + 1) = *(v147 + 9);
          v45 = 21;
          v46 = 11;
          v47 = &v147[1] + 8;
          do
          {
            v48 = v151 + v46;
            *v48 = *v47;
            *(v48 + 1) = *(v47 + 1);
            v47 += 4;
            --v45;
            v46 += 3;
          }

          while (v45 > 1);
          Debug_Log_GPS_Eph(0, v44, v151);
        }

        if (Core_Load_QZSS_Alm(v44, &v145) && v145 >= 1)
        {
          *&v148 = v145;
          WORD4(v148) = WORD5(v145);
          v49 = 9;
          v50 = 10;
          v51 = &v145 | 0xC;
          do
          {
            v52 = &v148 + v50;
            *v52 = *v51;
            *(v52 + 1) = *(v51 + 1);
            v51 += 4;
            --v49;
            v50 += 3;
          }

          while (v49 > 1);
          Debug_Log_GPS_Alm(0, v44, &v148);
        }

        ++v44;
      }

      while (v44 != 203);
      v53 = 0;
      v54 = 0;
      v55 = 55665;
      do
      {
        v56 = *(p_NV + 5824 + v53) ^ BYTE1(v55);
        v55 = 52845 * (v55 + v56) + 22719;
        v54 += v56;
        ++v53;
      }

      while (v53 != 16);
      if (*(p_NV + 5816) == v54)
      {
        WORD4(v144[0]) = *(p_NV + 5836);
        *&v144[0] = *(p_NV + 5828);
        Debug_Log_GNSS_Health(0, 3, v144);
      }

      memset(v147, 0, 62);
      *v151 = 0;
      LOWORD(v151[2]) = 0;
      memset(&v151[3], 0, 24);
      for (k = 1; k != 25; ++k)
      {
        if (Core_Load_GLON_Eph(k, v147) && SLODWORD(v147[0]) >= 1)
        {
          Debug_Log_GLO_Eph(0, k, v147);
        }

        if (Core_Load_GLON_Alm(k, v151) && v151[0] >= 1)
        {
          Debug_Log_GLO_Alm(0, k, v151);
        }
      }

      v58 = 0;
      v59 = 0;
      v60 = p_NV;
      v61 = 55665;
      do
      {
        v62 = *(p_NV + 19168 + v58) ^ BYTE1(v61);
        v61 = 52845 * (v61 + v62) + 22719;
        v59 += v62;
        ++v58;
      }

      while (v58 != 32);
      if (*(p_NV + 19160) == v59)
      {
        v145 = *(p_NV + 19172);
        *&v146[0] = *(p_NV + 19188);
        Debug_Log_GNSS_Health(0, 2, &v145);
        v60 = p_NV;
      }

      v63 = 0;
      v64 = 0;
      v65 = 55665;
      do
      {
        v66 = *(v60 + 19208 + v63) ^ BYTE1(v65);
        v65 = 52845 * (v65 + v66) + 22719;
        v64 += v66;
        ++v63;
      }

      while (v63 != 32);
      if (*(v60 + 19200) == v64)
      {
        v67 = *(v60 + 19208);
        if (v67 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v140 = *(v60 + 19212);
            v68 = *(v60 + 19216);
            v69 = *(v60 + 19220);
            v70 = *(v60 + 19224);
            v71 = *(v60 + 19228);
            v72 = *(v60 + 19232);
            sprintf_NA_x_header(0, "C-");
            v73 = g_CB_GDbg++;
            *v73 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v67);
            v74 = g_CB_GDbg++;
            *v74 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v68);
            v75 = g_CB_GDbg++;
            *v75 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v69);
            v76 = g_CB_GDbg++;
            *v76 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v70);
            v77 = g_CB_GDbg++;
            *v77 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v71);
            v78 = g_CB_GDbg++;
            *v78 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v72);
            sprintf_sp1d(&g_CB_GDbg, v140);
            v79 = g_CB_GDbg++;
            *v79 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      memset(v147, 0, 87);
      v80 = 1;
      memset(v151, 0, 35);
      do
      {
        if (Core_Load_GAL_Eph(v80, v147) && SLODWORD(v147[0]) >= 1)
        {
          Debug_Log_GAL_Eph(0, v147);
        }

        if (Core_Load_GAL_Alm(v80, v151) && v151[0] >= 1)
        {
          Debug_Log_GAL_Alm(0, v151);
        }

        ++v80;
      }

      while (v80 != 37);
      v81 = 0;
      v82 = 0;
      v83 = p_NV;
      v84 = 55665;
      do
      {
        v85 = *(p_NV + 7608 + v81) ^ BYTE1(v84);
        v84 = 52845 * (v84 + v85) + 22719;
        v82 += v85;
        ++v81;
      }

      while (v81 != 40);
      if (*(p_NV + 7600) == v82)
      {
        LODWORD(v146[1]) = *(p_NV + 7644);
        v86 = *(p_NV + 7628);
        v145 = *(p_NV + 7612);
        v146[0] = v86;
        Debug_Log_GNSS_Health(0, 6, &v145);
        v83 = p_NV;
      }

      v87 = 0;
      v88 = 0;
      v89 = 55665;
      do
      {
        v90 = *(v83 + 7656 + v87) ^ BYTE1(v89);
        v89 = 52845 * (v89 + v90) + 22719;
        v88 += v90;
        ++v87;
      }

      while (v87 != 16);
      if (*(v83 + 7648) == v88)
      {
        v91 = *(v83 + 7656);
        if (v91 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v92 = *(v83 + 7660);
            v93 = *(v83 + 7664);
            v94 = *(v83 + 7666);
            v95 = *(v83 + 7668);
            v96 = *(v83 + 7669);
            sprintf_NA_x_header(0, "OE");
            v97 = g_CB_GDbg++;
            *v97 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v91);
            v98 = g_CB_GDbg++;
            *v98 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v93);
            v99 = g_CB_GDbg++;
            *v99 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v94);
            v100 = g_CB_GDbg++;
            *v100 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v95);
            v101 = g_CB_GDbg++;
            *v101 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v96);
            sprintf_sp1d(&g_CB_GDbg, v92);
            v102 = g_CB_GDbg++;
            *v102 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      LODWORD(v147[6]) = 0;
      memset(v147, 0, 23);
      memset(&v147[1] + 8, 0, 64);
      *(&v147[5] + 6) = 0;
      v103 = 1;
      memset(v151, 0, 44);
      do
      {
        if (Core_Load_BDS_Eph(v103, v147) && SLODWORD(v147[0]) >= 1)
        {
          Debug_Log_BDS_Eph(0, v147);
        }

        if (Core_Load_BDS_Alm(v103, v151) && v151[0] >= 1)
        {
          Debug_Log_BDS_Alm(0, v151);
        }

        ++v103;
      }

      while (v103 != 38);
      v104 = 0;
      v105 = 0;
      v106 = p_NV;
      v107 = 55665;
      do
      {
        v108 = *(p_NV + 12864 + v104) ^ BYTE1(v107);
        v107 = 52845 * (v107 + v108) + 22719;
        v105 += v108;
        ++v104;
      }

      while (v104 != 48);
      if (*(p_NV + 12856) == v105)
      {
        v109 = *(p_NV + 12884);
        v145 = *(p_NV + 12868);
        v146[0] = v109;
        *(v146 + 13) = *(p_NV + 12897);
        Debug_Log_GNSS_Health(0, 5, &v145);
        v106 = p_NV;
      }

      v110 = 0;
      v111 = 0;
      v112 = 55665;
      do
      {
        v113 = *(v106 + 12920 + v110) ^ BYTE1(v112);
        v112 = 52845 * (v112 + v113) + 22719;
        v111 += v113;
        ++v110;
      }

      while (v110 != 24);
      if (*(v106 + 12912) == v111)
      {
        v114 = *(v106 + 12920);
        if (v114 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v115 = *(v106 + 12924);
            v116 = *(v106 + 12928);
            v117 = *(v106 + 12930);
            v118 = *(v106 + 12932);
            v119 = *(v106 + 12934);
            v120 = *(v106 + 12936);
            v121 = *(v106 + 12938);
            sprintf_NA_x_header(0, "OB");
            v122 = g_CB_GDbg++;
            *v122 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v114);
            v123 = g_CB_GDbg++;
            *v123 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v116);
            v124 = g_CB_GDbg++;
            *v124 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v117);
            v125 = g_CB_GDbg++;
            *v125 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v118);
            v126 = g_CB_GDbg++;
            *v126 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v119);
            v127 = g_CB_GDbg++;
            *v127 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v120);
            v128 = g_CB_GDbg++;
            *v128 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v121);
            sprintf_sp1d(&g_CB_GDbg, v115);
            v129 = g_CB_GDbg++;
            *v129 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      DWORD2(v147[0]) = 0;
      *&v147[0] = 0;
      v130 = 120;
      v151[0] = 0;
      do
      {
        if (Core_Load_SBAS_Apx(v130, v151, v147) && v151[0] >= 1)
        {
          Debug_Log_SBA_Alm(0, v130, v151[0], v147);
        }

        ++v130;
      }

      while (v130 != 159);
      v151[0] = 0;
      *&v147[0] = 0;
      if (Core_Load_Clk_Drift(v151, v147) && g_Enable_GNB_Debug)
      {
        v131 = 0;
        v132 = *v147;
        v133 = v151[0];
        v134 = 36;
        v135 = g_CB_GDbg;
        do
        {
          g_CB_GDbg = (v135 + 1);
          *v135 = v134;
          v135 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v135 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v134 = aNd[++v131];
        }

        while (v131 != 4);
        g_CB_GDbg = (v135 + 1);
        *v135 = 32;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        sprintf_2d(&g_CB_GDbg, v133);
        v136 = g_CB_GDbg++;
        *v136 = 32;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        sprintf_11f9(&g_CB_GDbg, v132 * 1000000.0);
        v137 = g_CB_GDbg++;
        *v137 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
      }
    }

    v138 = *MEMORY[0x29EDCA608];

    Debug_Log_NV_End();
  }

  else
  {
    v139 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_NV_End(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v0 = g_CB_GDbg;
    v1 = 36;
    v2 = 1u;
    do
    {
      g_CB_GDbg = (v0 + 1);
      *v0 = v1;
      v0 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v0 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v1 = aN[v2++];
    }

    while (v2 != 6);
    g_CB_GDbg = (v0 + 1);
    *v0 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v3 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Eph(uint64_t a1, signed int a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_E_header(a1, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    for (i = 0; i != 63; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + 8 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v11 = g_CB_GDbg++;
    *v11 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v12 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v13 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Alm(uint64_t a1, signed int a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_A_header(a1, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a3 + 8);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    for (i = 0; i != 24; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + 10 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v13 = g_CB_GDbg++;
    *v13 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v14 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v15 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GNSS_Health(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!g_Enable_GNB_Debug)
  {
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  sprintf_NA_x_header(a1, "H");
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v5 = 71;
      v6 = 32;
      goto LABEL_14;
    }

    if (a2 == 2)
    {
      v5 = 82;
      v6 = 24;
      goto LABEL_14;
    }

LABEL_30:
    v8 = 0;
    v6 = 0;
    v5 = 88;
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v5 = 81;
    v6 = 10;
    goto LABEL_14;
  }

  if (a2 == 5)
  {
    v5 = 66;
    v6 = 37;
    goto LABEL_14;
  }

  if (a2 != 6)
  {
    goto LABEL_30;
  }

  v5 = 69;
  v6 = 36;
LABEL_14:
  v8 = 1;
LABEL_15:
  v9 = g_CB_GDbg++;
  *v9 = v5;
  v10 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v10 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v10 + 1);
  *v10 = 32;
  v11 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v11 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  if (v8)
  {
    if (v6 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6;
    }

    do
    {
      v13 = *a3++;
      sprintf1da(&g_CB_GDbg, v13, v15, 0, 0);
      --v12;
    }

    while (v12);
    v11 = g_CB_GDbg;
  }

  g_CB_GDbg = (v11 + 1);
  *v11 = 10;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  v14 = *MEMORY[0x29EDCA608];

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_UTC(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_x_header(a1, "UG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 17);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 18);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 19);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 21);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v22 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v23 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_Klob(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_x_header(a1, "KG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 11);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 13);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 14);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 15);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v22 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v23 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GLO_Eph(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(a1, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a3 + 60);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    for (i = 12; i != 60; i += 4)
    {
      v13 = g_CB_GDbg++;
      *v13 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_08x(&g_CB_GDbg, *(a3 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v15 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v16 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GLO_Alm(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(a1, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    for (i = 0; i != 24; i += 4)
    {
      v11 = g_CB_GDbg++;
      *v11 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_08x(&g_CB_GDbg, *(a3 + 12 + i));
    }

    sprintf_sp1d(&g_CB_GDbg, *(a3 + 4));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GAL_Eph(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(a1, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 14);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 15);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 18);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 24));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 28));
    v19 = *(a2 + 32);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a2 + 36);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a2 + 40);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 44);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 48);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 50);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 52);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a2 + 54);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a2 + 56);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    v37 = *(a2 + 58);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v37);
    v39 = *(a2 + 60);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v39);
    v41 = *(a2 + 62);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v41);
    v43 = *(a2 + 64);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v43);
    v45 = *(a2 + 68);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v45);
    v47 = *(a2 + 72);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v47);
    v49 = *(a2 + 74);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v49);
    v51 = *(a2 + 76);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v51);
    v53 = *(a2 + 78);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v53);
    v55 = *(a2 + 80);
    v56 = g_CB_GDbg++;
    *v56 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v55);
    v57 = *(a2 + 81);
    v58 = g_CB_GDbg++;
    *v58 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v57);
    v59 = *(a2 + 82);
    v60 = g_CB_GDbg++;
    *v60 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v59);
    v61 = *(a2 + 83);
    v62 = g_CB_GDbg++;
    *v62 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v61);
    v63 = *(a2 + 84);
    v64 = g_CB_GDbg++;
    *v64 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v63);
    v65 = *(a2 + 85);
    v66 = g_CB_GDbg++;
    *v66 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v65);
    v67 = *(a2 + 86);
    v68 = g_CB_GDbg++;
    *v68 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v67);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v69 = g_CB_GDbg++;
    *v69 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v70 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v71 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GAL_Alm(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(a1, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 12);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 14);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 16);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 18);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 20);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a2 + 22);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a2 + 24);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 26);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 28);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 30);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 32);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a2 + 33);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a2 + 34);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v38 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v39 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_BDS_Eph(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(a1, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 18);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 19);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 20);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 21);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 22);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a2 + 24);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 28));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 32));
    v23 = *(a2 + 36);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 40);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 44);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 48);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 50);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a2 + 52);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a2 + 56);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    v37 = *(a2 + 60);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v37);
    v39 = *(a2 + 64);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v39);
    v41 = *(a2 + 68);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v41);
    v43 = *(a2 + 72);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v43);
    v45 = *(a2 + 76);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v45);
    v47 = *(a2 + 80);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v47);
    v49 = *(a2 + 84);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v49);
    v51 = *(a2 + 88);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v51);
    v53 = *(a2 + 90);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v53);
    v55 = *(a2 + 92);
    v56 = g_CB_GDbg++;
    *v56 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v55);
    v57 = *(a2 + 96);
    v58 = g_CB_GDbg++;
    *v58 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v57);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v59 = g_CB_GDbg++;
    *v59 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v60 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v61 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_BDS_Alm(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(a1, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 10);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 11);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 12);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 16);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 20);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 24);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 28);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a2 + 32);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a2 + 36);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 38);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 40);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 42);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 43);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 4));
    v33 = g_CB_GDbg++;
    *v33 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v34 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v35 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_SBA_Alm(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(a1, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = a4[1];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = a4[2];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v16 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v17 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sprintf_NA_x_header(uint64_t result, _BYTE *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      g_CB_GDbg = (v5 + 1);
      *v5 = v6;
      v5 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v5 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sprintf_NA_E_header(uint64_t result, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result == 1)
  {
    v4 = 65;
  }

  else
  {
    v4 = 69;
  }

  if (!result)
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 69;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v6 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Debug_Log_SBA_Eph(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(a1, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a4 + 8);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a4 + 10);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a4 + 12);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a4 + 16);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a4 + 20);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a4 + 24);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a4 + 28);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a4 + 32);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a4 + 36);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a4 + 40);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a4 + 44);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a4 + 48);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a4 + 52);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, *(a4 + 4));
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v38 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v39 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sprintf_NA_A_header(uint64_t result, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 65;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v6 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Debug_Log_TM_FCP_OS_Time_ms(unsigned int a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_8_1[++v3];
    }

    while (v3 != 4);
    sprintf_sp1u(&g_CB_GDbg, a1);
    sprintf_sp1u(&g_CB_GDbg, a2);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_Ref_Time(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_9_5[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a1 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 10);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_EFSP_Time(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_10_3[v4++];
    }

    while (v4 != 6);
    sprintf_11f9(&g_CB_GDbg, *a1);
    v5 = *(a1 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a1 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a1 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a1 + 20);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a1 + 24);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v16 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v17 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_TOW_Assist(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = *(a1 + 4);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      if (v2 >= 0xD)
      {
        v5 = 12;
      }

      else
      {
        v5 = *(a1 + 4);
      }

      if (v2 < 0xD)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_11_2[++v7];
        }

        while (v7 != 4);
        ++v4;
        sprintf_sp1d(&g_CB_GDbg, v6);
        sprintf_sp1d(&g_CB_GDbg, v4);
        sprintf_sp1d(&g_CB_GDbg, *a1);
        sprintf_sp1d(&g_CB_GDbg, *(a1 + 4));
        v10 = v5 - v3;
        if (v5 > v3)
        {
          v11 = (a1 + 11 + 6 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf1da(&g_CB_GDbg, *(v11 - 1), v15, 0, 0);
            v12 = *v11;
            v11 += 6;
            sprintf1da(&g_CB_GDbg, v12, v15, 0, 0);
            --v10;
          }

          while (v10);
          v3 = v5;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        v5 = *(a1 + 4);
      }

      while (v4 != v6);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void Debug_Log_AGPS_Ref_Pos(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_13_1[v4++];
    }

    while (v4 != 6);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 24));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 32));
    v5 = *(a1 + 40);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a1 + 42);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 64));
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 68));
    sprintf_sp1d(&g_CB_GDbg, *a1);
    v9 = g_CB_GDbg;
    v10 = 32;
    v11 = 1u;
    do
    {
      g_CB_GDbg = (v9 + 1);
      *v9 = v10;
      v9 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v9 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v10 = str_14_1[v11++];
    }

    while (v11 != 4);
    sprintf_1X(&g_CB_GDbg, *(a1 + 72));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGPS_Acq_Ass(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = *(a1 + 4);
    if (*(a1 + 4))
    {
      v3 = 0;
      v4 = 0;
      v5 = (v2 - 1) >> 2;
      if (v2 >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = *(a1 + 4);
      }

      v16 = a1 + 18;
      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_15_1[++v7];
        }

        while (v7 != 4);
        sprintf_sp1d(&g_CB_GDbg, v5 + 1);
        sprintf_sp1d(&g_CB_GDbg, v4 + 1);
        sprintf_sp1d(&g_CB_GDbg, *a1);
        sprintf_sp1d(&g_CB_GDbg, *(a1 + 4));
        v10 = v6 - v3;
        if (v6 > v3)
        {
          v11 = (v16 + 14 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 12));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 8));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 7));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 2));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 1));
            v12 = *v11;
            v11 += 14;
            sprintf_sp1d(&g_CB_GDbg, v12);
            --v10;
          }

          while (v10);
          v3 = v6;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        if (v6 + 4 >= *(a1 + 4))
        {
          v6 = *(a1 + 4);
        }

        else
        {
          v6 += 4;
        }
      }

      while (v4++ != v5);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void Debug_Log_AGNSS_Ref_Time(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_16_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a1 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 12);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(a1 + 16);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v15 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v16 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_Time_Model(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_18_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a1 + 8);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 12);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(a1 + 16);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(a1 + 20);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(a1 + 21);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 24);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    sprintf_sp1d(&g_CB_GDbg, *(a1 + 28));
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v21 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v22 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_Acq_Ass(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = *(a1 + 13);
    if (*(a1 + 13))
    {
      v3 = 0;
      v4 = 0;
      v5 = (v2 - 1) >> 2;
      if (v2 >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = *(a1 + 13);
      }

      v16 = a1 + 32;
      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_19_0[++v7];
        }

        while (v7 != 4);
        sprintf_sp1d(&g_CB_GDbg, v5 + 1);
        sprintf_sp1d(&g_CB_GDbg, v4 + 1);
        sprintf_sp1d(&g_CB_GDbg, *a1);
        sprintf_sp1d(&g_CB_GDbg, *(a1 + 4));
        sprintf_sp1d(&g_CB_GDbg, *(a1 + 8));
        sprintf_sp1d(&g_CB_GDbg, *(a1 + 13));
        v10 = v6 - v3;
        if (v6 > v3)
        {
          v11 = (v16 + 20 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 12));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 8));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 7));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 1));
            v12 = *v11;
            v11 += 20;
            sprintf_sp1d(&g_CB_GDbg, v12);
            --v10;
          }

          while (v10);
          v3 = v6;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        if (v6 + 4 >= *(a1 + 13))
        {
          v6 = *(a1 + 13);
        }

        else
        {
          v6 += 4;
        }
      }

      while (v4++ != v5);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void Debug_Log_AGNSS_Bad_SV_List(unsigned int a1, int *a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_20_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, a1);
    if (a1)
    {
      for (i = a1; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 <= 7)
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 69;
              break;
            case 4:
              v13 = 83;
              break;
            default:
              goto LABEL_23;
          }
        }

        else if (v12 > 31)
        {
          if (v12 == 32)
          {
            v13 = 82;
            goto LABEL_27;
          }

          if (v12 != 64)
          {
            goto LABEL_23;
          }

          v13 = 66;
        }

        else
        {
          if (v12 == 8)
          {
            v13 = 77;
            goto LABEL_27;
          }

          if (v12 != 16)
          {
LABEL_23:
            EvCrt_Illegal_Default("Debug_Log_AGNSS_Bad_SV_List", 0x6E8u);
            v11 = g_CB_GDbg;
            v13 = 88;
            goto LABEL_27;
          }

          v13 = 81;
        }

LABEL_27:
        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v18, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v16 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v17 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGNSS_Not_Brd_SV_List(unsigned int a1, int *a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_21_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, a1);
    if (a1)
    {
      for (i = a1; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 <= 7)
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 69;
              break;
            case 4:
              v13 = 83;
              break;
            default:
              goto LABEL_23;
          }
        }

        else if (v12 > 31)
        {
          if (v12 == 32)
          {
            v13 = 82;
            goto LABEL_27;
          }

          if (v12 != 64)
          {
            goto LABEL_23;
          }

          v13 = 66;
        }

        else
        {
          if (v12 == 8)
          {
            v13 = 77;
            goto LABEL_27;
          }

          if (v12 != 16)
          {
LABEL_23:
            EvCrt_Illegal_Default("Debug_Log_AGNSS_Not_Brd_SV_List", 0x71Au);
            v11 = g_CB_GDbg;
            v13 = 88;
            goto LABEL_27;
          }

          v13 = 81;
        }

LABEL_27:
        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v18, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v16 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v17 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_RTI_Bad_SV_List(unsigned int a1, int *a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_22_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, a1);
    if (a1)
    {
      for (i = a1; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 > 7)
        {
          switch(v12)
          {
            case 8:
              v13 = 83;
              break;
            case 32:
              v13 = 66;
              break;
            case 16:
              v13 = 69;
              break;
            default:
              goto LABEL_21;
          }
        }

        else
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 82;
              break;
            case 4:
              v13 = 81;
              break;
            default:
LABEL_21:
              EvCrt_Illegal_Default("Debug_Log_GPS_RTI_Bad_SV_List", 0x74Bu);
              v11 = g_CB_GDbg;
              v13 = 88;
              break;
          }
        }

        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v18, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v16 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v17 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_GPS_EE_Start_Time(unsigned int a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_23_1[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v8 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_AGLON_ChanNum(unsigned int a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_24[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v8 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v9 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_DMS(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_25_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_UAC(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_26_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_FIV(unsigned int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_27_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = a1[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a1[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v11 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_SES(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_28_1[++v1];
    }

    while (v1 != 4);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a1);
    v4 = g_CB_GDbg++;
    *v4 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v5 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Alt(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_29_2[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = *(a1 + 24);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v9 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_MapV(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_30_2[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    for (i = 8; i != 32; i += 8)
    {
      v7 = g_CB_GDbg++;
      *v7 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_11f9(&g_CB_GDbg, *(a1 + i));
    }

    v8 = *(a1 + 32);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 40));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    v10 = *(a1 + 64);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(a1 + 65);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(a1 + 66);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(a1 + 67);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(a1 + 68);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v21 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v22 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_SpdC(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_31_1[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(a1 + 4);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v9 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_AT_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_32_2[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_V_Vel(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_33_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Heading(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_34_0[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 8));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 16));
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v7 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
  }
}

void Debug_Log_ExtA_Tunnel_End_Point(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_35_1[++v2];
    }

    while (v2 != 4);
    v5 = *a1;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_11f9(&g_CB_GDbg, *(a1 + 8));
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_11f9(&g_CB_GDbg, *(a1 + 16));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 24));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 32));
    v8 = *(a1 + 40);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a1 + 42);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    sprintf_gR8(&g_CB_GDbg, *(a1 + 48));
    sprintf_gR8(&g_CB_GDbg, *(a1 + 56));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    v13 = *MEMORY[0x29EDCA608];

    GNB_Debug_Flush_Check();
  }

  else
  {
    v14 = *MEMORY[0x29EDCA608];
  }
}

void SB_SBAS_PrePos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = *MEMORY[0x29EDCA608];
  v10 = (a6 + 4096);
  if (*(a3 + 34))
  {
    if (*(a2 + 176) == *(a3 + 1064))
    {
      *(a1 + 48) = 0;
    }

    v11 = (a6 + 6232);
    *(a6 + 6343) = 0u;
    *(a6 + 6312) = 0u;
    *(a6 + 6328) = 0u;
    v12 = (a6 + 6238);
    *(a6 + 6280) = 0u;
    *(a6 + 6296) = 0u;
    *(a6 + 6248) = 0u;
    *(a6 + 6264) = 0u;
    *(a6 + 6232) = 0u;
    memset(v65, 0, 39);
    memset(v64, 0, 39);
    memset(v63, 0, 39);
    v13 = 6;
    do
    {
      *(a6 + 3737) = 0uLL;
      *(a6 + 3708) = 0uLL;
      *(a6 + 3724) = 0uLL;
      --v13;
    }

    while (v13);
    v52 = a6 + 6277;
    *(a6 + 4166) = -1;
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *(a6 + 4135) = v14;
    *(a6 + 4151) = v14;
    v49 = a7 + 178;
    v46 = a7 + 1960;
    v47 = a7 + 536;
    v15 = a5 + 26688;
    v16 = 10;
    do
    {
      if (v10[2259] > 5u)
      {
        break;
      }

      if (*(v15 + 184) == 1)
      {
        v17 = *(v15 + 180);
        v18 = v17 - 120;
        if ((v17 - 120) <= 0x26)
        {
          v60 = 0;
          v61 = 0;
          memset(v54, 0, sizeof(v54));
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          memset(v59, 0, 30);
          if (Comp_CurrState(0x93A80u, *(a1 + 6), v15, v54, *(a1 + 16), 42290000.0))
          {
            v19 = v17 + 19;
            DWORD2(v59[1]) = 1;
            v20 = *(a7 + v17 + 19);
            if (v20 == 157 || v18 == *(a1 + 48))
            {
              Comp_AzEl(a1 + 24, a2 + 104, v54, (a7 + v19), (v49 + 2 * v19), (v47 + 8 * v19), (v46 + 8 * v19));
              LOBYTE(v20) = *(a7 + v19);
            }

            if (v20 < 1)
            {
              ++v10[2262];
              v21 = v64;
            }

            else
            {
              Comp_AA(v54, v20, *(v49 + 2 * v19), a1, a2, a6, v17);
              v21 = v65;
            }

            v21[v18] = 1;
          }

          else
          {
            EvLog_d("SBAS_PrePos: SBAS ephemeris timed-out: ", *(v15 + 180));
            *(v15 + 184) = 0;
            *(v15 + 180) = 0;
            *(v15 + 176) = 0;
          }
        }
      }

      v15 += 192;
      --v16;
    }

    while (v16);
    v22 = 0;
    v23 = 0;
    v24 = 456;
    do
    {
      if (v10[2259] > 5u)
      {
        break;
      }

      if ((v65[v23] & 1) == 0 && (v64[v23] & 1) == 0 && Core_Load_SBAS_Apx((v23 + 120), &v53, v62))
      {
        v61 = 0;
        *&v54[0] = 0;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        memset(v59, 0, 30);
        v25.i64[0] = v62[0];
        v25.i64[1] = v62[1];
        *(v54 + 8) = vcvtq_f64_s64(v25);
        v60 = 0;
        DWORD2(v59[1]) = 2;
        *(&v54[1] + 1) = v62[2];
        v26 = *(a7 + v23 + 139);
        if (v26 == 157 || v23 == *(a1 + 48))
        {
          Comp_AzEl(a1 + 24, a2 + 104, v54, (a7 + v23 + 139), (a7 + v24), (a7 + v22 + 1648), (a7 + v22 + 3072));
          LOBYTE(v26) = *(a7 + v23 + 139);
        }

        if (v26 < 1)
        {
          v64[v23] = 1;
          ++v10[2262];
        }

        else
        {
          Comp_AA(v54, v26, *(a7 + 2 * v23 + 456), a1, a2, a6, (v23 + 120));
          v65[v23] = 1;
        }
      }

      ++v23;
      v22 += 8;
      v24 += 2;
    }

    while (v23 != 39);
    v27 = 0;
    v28 = (a3 + 392);
    do
    {
      if (*(a9 + 33744 + v27) != 1 || *v28 == 1)
      {
        if (v28[227] == 1)
        {
          ++v10[2262];
          v29 = v64;
        }

        else
        {
          *(v52 + v10[2261]++) = v27 + 120;
          v29 = v63;
        }

        v29[v27] = 1;
      }

      if ((v64[v27] & 1) != 0 || v63[v27] == 1)
      {
        SB_SBAS_Remove_SV_in_List((v27 + 120), v10 + 2259, v11, 6u);
        SB_SBAS_Remove_SV_in_List((v27 + 120), v10 + 2260, v12, 0x27u);
      }

      ++v27;
      ++v28;
    }

    while (v27 != 39);
    if (*(a3 + 47) < 3u)
    {
      if ((*(a2 + 176) - *(a3 + 1064)) >> 6 >= 0x753)
      {
        for (i = 0; i != 39; ++i)
        {
          if ((v65[i] & 1) == 0 && (v64[i] & 1) == 0 && (v63[i] & 1) == 0)
          {
            v12[v10[2260]++] = i + 120;
          }
        }
      }

      else
      {
        v36 = v10[2259];
        v37 = v10[2260];
        if ((v37 + v36) <= 0x13)
        {
          v38 = 0;
          do
          {
            v39 = SBAS_PRIORITY[v38];
            v40 = v39 - 120;
            if ((v65[v39 - 120] & 1) == 0 && (v64[v40] & 1) == 0 && (v63[v40] & 1) == 0)
            {
              v12[v37] = v39;
              LOBYTE(v37) = v10[2260] + 1;
              v10[2260] = v37;
              v36 = v10[2259];
            }

            if (v38 > 0x12)
            {
              break;
            }

            ++v38;
          }

          while (v36 + v37 < 0x14);
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = (a8 + 2720);
      v10[2260] = 0;
      v32 = 48;
      do
      {
        if (*v31 == 6)
        {
          v33 = *v31;
          if (Is_Legal(*v31) && GM_Gen_SV_Meas_QI(v31) >= 0xB)
          {
            v34 = BYTE2(v33) - 120;
            if (BYTE2(v33) >= 0x78u && v30 <= 0x26u && (v65[v34] & 1) == 0 && (v64[v34] & 1) == 0 && (v63[v34] & 1) == 0)
            {
              v12[v30] = BYTE2(v33);
              v30 = v10[2260] + 1;
              v10[2260] = v30;
            }
          }
        }

        v31 += 9;
        --v32;
      }

      while (v32);
    }

    v42 = (*(a1 + 48) + 1);
    if (v42 >= 0x27)
    {
      LOBYTE(v42) = 39;
    }

    *(a1 + 48) = v42;
    v43 = *MEMORY[0x29EDCA608];
  }

  else
  {
    *(a6 + 6355) = 0;
    *(a7 + 147) = -25187;
    *(a7 + 139) = 0x9D9D9D9D9D9D9D9DLL;
    v35 = *MEMORY[0x29EDCA608];

    memset_pattern16((a7 + 456), &unk_299728F50, 0x14uLL);
  }
}

void Comp_AA(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v40 = *MEMORY[0x29EDCA608];
  v13 = *(a1 + 120);
  v14 = v13 == 1;
  v15 = v13 != 1 && v13 == 2;
  v16 = *(a6 + 6355) + 76;
  v17 = Comp_SVrange_Sag_Corr(&v39, v38, (a4 + 24), (a1 + 8));
  v18 = 0;
  v19 = ((*(a5 + 64) - *(a1 + 56)) * 299792458.0);
  do
  {
    v38[v18 + 2] = *(a1 + 48 + 8 * v18) - *(a5 + 16 + 8 * v18);
    v20 = v18 + 3;
    --v18;
  }

  while (v20 > 1);
  v21 = 0;
  v22 = v17;
  v23 = 0.0;
  do
  {
    v23 = v23 + v39.f64[v21] * v38[v21];
    ++v21;
  }

  while (v21 != 3);
  v24 = a6 + 60 + 48 * v16;
  v25 = (v23 + (*(a5 + 72) - *(a1 + 64)) * 299792458.0) / -0.190293673;
  v26 = (v19 + v22) / 299792458.0;
  v27 = *(a5 + 96) - v26;
  *v24 = *(a5 + 176);
  *(v24 + 4) = 1;
  *(v24 + 10) = a7;
  *(v24 + 8) = 6;
  *(v24 + 12) = v14;
  *(v24 + 13) = v15;
  *(v24 + 14) = 256;
  *(v24 + 16) = (v26 * 2000.0 + 0.5);
  v28 = (v26 * 1000000000.0);
  *(v24 + 18) = 200;
  v29 = -0.5;
  if (v25 > 0.0)
  {
    v29 = 0.5;
  }

  v30 = v25 + v29;
  v31 = v30;
  if (v30 < -2147483650.0)
  {
    LOWORD(v31) = 0;
  }

  if (v30 <= 2147483650.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -1;
  }

  *(v24 + 22) = v32;
  v33 = v27 / 1.5;
  if (v27 / 1.5 <= 0.0)
  {
    v33 = v27 / 1.5 + -1.0;
  }

  *(v24 + 24) = 33562616;
  *(v24 + 28) = v33;
  *(v24 + 32) = ((v27 + v33 * -1.5) * 1023000.0);
  *(v24 + 36) = v28;
  if (v33 < 0)
  {
    *(v24 + 28) = v33 + 403200;
  }

  *(v24 + 40) = 0;
  *(v24 + 42) = -1;
  *(v24 + 43) = a2;
  v34 = a3 >> 1;
  if (a3 >= 0x169)
  {
    LOBYTE(v34) = -1;
  }

  *(v24 + 44) = v34;
  if (a7 >= 0x78)
  {
    if (v14)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    *(a6 + a7 - 120 + 6316) += v35;
    v36 = *(a6 + 6355);
    *(a6 + v36 + 6232) = a7;
    *(a6 + a7 + 4015) = v36 + 76;
    ++*(a6 + 6355);
  }

  v37 = *MEMORY[0x29EDCA608];
}

uint64_t SB_SBAS_Remove_SV_in_List(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v4 = *a2;
    if (*a2 && v4 <= a4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        while (a3[v6] == result)
        {
          a3[v6] = 0;
          v8 = *a2;
          ++v6;
          v7 = 1;
          LOBYTE(v4) = *a2;
          if (v6 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v6;
      }

      while (v6 < v4);
      LOBYTE(v8) = v4;
      if ((v7 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_14:
      if (v8)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = v8;
        do
        {
          if (a3[v9])
          {
            a3[v10] = a3[v9];
            LODWORD(v10) = v10 + 1;
            v11 = *a2;
          }

          ++v9;
        }

        while (v9 < v11);
      }

      else
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      if (v10 < v11)
      {
        v10 = v10;
        do
        {
          if (a3[v10])
          {
            a3[v10] = 0;
            v11 = *a2;
          }

          ++v10;
        }

        while (v10 < v11);
      }

      *a2 = v11 - 1;
    }
  }

LABEL_27:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t asn1PE_Status(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    v8 = *a2;
    if (v8 >= 3)
    {
      v4 = 4;
      *(a1 + 16) = 4;
      SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
    }

    else
    {
      v4 = Asn1Coder::EncodeInteger(a1, 0, 2, v8);
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_UARFCN(uint64_t a1, unsigned __int16 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 0x3FFF, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_FrequencyInfo(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    Asn1Coder::AddBitToBuffer(a1, 0);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
      LODWORD(v10) = *(a1 + 16);
    }

    else
    {
      v10 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2);
      if (v10)
      {
        v4 = v10;
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
      }

      else
      {
        if (*a2 == 1)
        {
          Asn1Coder::AddBitToBuffer(a1, 0);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
            LODWORD(v13) = *(a1 + 16);
          }

          else
          {
            v13 = asn1PE_UARFCN(a1, *(a2 + 4));
            v4 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }

            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
          }
        }

        else if (*a2)
        {
          v4 = 4;
          *(a1 + 16) = 4;
          v11 = *(a1 + 8);
          v12 = *(a1 + 12);
          LODWORD(v13) = 4;
        }

        else
        {
          Asn1Coder::AddBitToBuffer(a1, 0);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
            LODWORD(v13) = *(a1 + 16);
          }

          else
          {
            Asn1Coder::AddBitToBuffer(a1, a2[2]);
            v4 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
              LODWORD(v13) = *(a1 + 16);
            }

            else if (a2[2] && (v13 = asn1PE_UARFCN(a1, *(a2 + 2)), v13))
            {
              v4 = v13;
              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
            }

            else
            {
              v13 = asn1PE_UARFCN(a1, *(a2 + 3));
              v4 = v13;
              if (!v13)
              {
                goto LABEL_17;
              }

              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
            }
          }
        }

        SuplAsn1Logger::TraceError(v13, v11, v12);
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
        LODWORD(v10) = v4;
      }
    }

    SuplAsn1Logger::TraceError(v10, v8, v9);
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_17:
  v14 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_CPICH_Ec_N0(uint64_t a1, unsigned __int16 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 63, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_CPICH_RSCP(uint64_t a1, unsigned __int16 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_Pathloss(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 46, 173, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_CellParametersID(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_TGSN(uint64_t a1, unsigned __int8 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 14, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_PrimaryCCPCH_RSCP(uint64_t a1, unsigned __int16 a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_TimeslotISCP_List(uint64_t a1, _DWORD *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 1, 14, a2[2] - *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v8 = *a2;
    if (*(a2 + 1) == *a2)
    {
LABEL_8:
      v5 = 0;
      goto LABEL_9;
    }

    v9 = 0;
    while (1)
    {
      v10 = Asn1Coder::EncodeInteger(a1, 0, 127, *(v8 + v9));
      if (v10)
      {
        break;
      }

      ++v9;
      v8 = *a2;
      if (v9 >= *(a2 + 1) - *a2)
      {
        goto LABEL_8;
      }
    }

    v5 = v10;
    SuplAsn1Logger::TraceError(v10, *(a1 + 8), *(a1 + 12));
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
  }

  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_9:
  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_MeasuredResultsList(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 1, 8, -858993459 * ((a2[1] - *a2) >> 3));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_84;
  }

  v8 = *a2;
  if (a2[1] == *a2)
  {
    v5 = 0;
    goto LABEL_85;
  }

  v9 = 0;
  while (1)
  {
    v10 = (v8 + 40 * v9);
    Asn1Coder::AddBitToBuffer(a1, *v10);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    Asn1Coder::AddBitToBuffer(a1, v10[1]);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    Asn1Coder::AddBitToBuffer(a1, v10[2]);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    if (*v10)
    {
      v11 = asn1PE_FrequencyInfo(a1, v10 + 4);
      if (v11)
      {
        v5 = v11;
        v34 = *(a1 + 8);
        v35 = *(a1 + 12);
        goto LABEL_83;
      }
    }

    if (v10[1])
    {
      v12 = Asn1Coder::EncodeInteger(a1, 0, 127, v10[14]);
      if (v12)
      {
        v5 = v12;
        SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
        v34 = *(a1 + 8);
        v35 = *(a1 + 12);
        LODWORD(v11) = v5;
        goto LABEL_83;
      }
    }

    if (v10[2])
    {
      v13 = Asn1Coder::EncodeInteger(a1, 1, 32, 954437177 * ((*(v10 + 3) - *(v10 + 2)) >> 3));
      if (v13)
      {
        v5 = v13;
        v36 = *(a1 + 8);
        v37 = *(a1 + 12);
        goto LABEL_82;
      }

      v14 = *(v10 + 2);
      if (*(v10 + 3) != v14)
      {
        break;
      }
    }

LABEL_53:
    v5 = 0;
    ++v9;
    v8 = *a2;
    if (v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
    {
      goto LABEL_85;
    }
  }

  v15 = 0;
  v16 = 24;
  while (1)
  {
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 24));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v30 = *(a1 + 8);
      v31 = *(a1 + 12);
      LODWORD(v17) = *(a1 + 16);
      goto LABEL_81;
    }

    if (*(v14 + v16 - 24))
    {
      v17 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFFFFF, *(v14 + v16 - 20));
      if (v17)
      {
        v5 = v17;
        v30 = *(a1 + 8);
        v31 = *(a1 + 12);
        goto LABEL_81;
      }
    }

    v18 = v14 + v16;
    v19 = Asn1Coder::EncodeInteger(a1, 0, 1, *(v14 + v16 - 16));
    if (v19)
    {
      v5 = v19;
      v32 = *(a1 + 8);
      v33 = *(a1 + 12);
      goto LABEL_80;
    }

    v20 = *(v18 - 16);
    if (!*(v18 - 16))
    {
      v25 = v14 + v16;
      Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 8));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v40 = *(a1 + 8);
        v41 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      Asn1Coder::AddBitToBuffer(a1, *(v25 - 7));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v40 = *(a1 + 8);
        v41 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      v26 = v14 + v16;
      Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 6));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v40 = *(a1 + 8);
        v41 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      v27 = Asn1Coder::EncodeInteger(a1, 0, 511, *(v26 - 4));
      if (v27)
      {
        v5 = v27;
        SuplAsn1Logger::TraceError(v27, *(a1 + 8), *(a1 + 12));
        v40 = *(a1 + 8);
        v41 = *(a1 + 12);
        LODWORD(v24) = v5;
        goto LABEL_78;
      }

      if (*(v25 - 8))
      {
        v24 = asn1PE_CPICH_Ec_N0(a1, *(v14 + v16 - 2));
        if (v24)
        {
          v5 = v24;
          v40 = *(a1 + 8);
          v41 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      if (*(v25 - 7))
      {
        v24 = asn1PE_CPICH_RSCP(a1, *(v14 + v16));
        if (v24)
        {
          v5 = v24;
          v40 = *(a1 + 8);
          v41 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      if (*(v26 - 6))
      {
        v24 = asn1PE_Pathloss(a1, *(v14 + v16 + 2));
        if (v24)
        {
          v5 = v24;
          v40 = *(a1 + 8);
          v41 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      goto LABEL_52;
    }

    if (v20 != 1)
    {
      break;
    }

    v21 = v14 + v16;
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 + 8));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v40 = *(a1 + 8);
      v41 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v21 + 9));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v40 = *(a1 + 8);
      v41 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    v22 = v14 + v16;
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 + 10));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v40 = *(a1 + 8);
      v41 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v22 + 11));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v40 = *(a1 + 8);
      v41 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    v23 = asn1PE_CellParametersID(a1, *(v14 + v16 + 12));
    v5 = v23;
    if (v23 || !*(v21 + 8))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_TGSN(a1, *(v14 + v16 + 13));
    v5 = v23;
    if (v23 || !*(v21 + 9))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_PrimaryCCPCH_RSCP(a1, *(v14 + v16 + 14));
    v5 = v23;
    if (v23 || !*(v22 + 10))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_Pathloss(a1, *(v14 + v16 + 16));
    v5 = v23;
    if (v23 || !*(v22 + 11))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
LABEL_51:
      SuplAsn1Logger::TraceError(v23, v28, v29);
      if (v5)
      {
        goto LABEL_79;
      }

      goto LABEL_52;
    }

    v24 = asn1PE_TimeslotISCP_List(a1, (v14 + v16 + 24));
    if (v24)
    {
      v5 = v24;
      v40 = *(a1 + 8);
      v41 = *(a1 + 12);
      goto LABEL_78;
    }

LABEL_52:
    ++v15;
    v14 = *(v10 + 2);
    v16 += 72;
    if (v15 >= 0x8E38E38E38E38E39 * ((*(v10 + 3) - v14) >> 3))
    {
      goto LABEL_53;
    }
  }

  if (v20 == 255)
  {
    v5 = 1;
    *(a1 + 16) = 1;
    v40 = *(a1 + 8);
    v41 = *(a1 + 12);
    LODWORD(v24) = 1;
  }

  else
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v40 = *(a1 + 8);
    v41 = *(a1 + 12);
    LODWORD(v24) = 4;
  }

LABEL_78:
  SuplAsn1Logger::TraceError(v24, v40, v41);
LABEL_79:
  v32 = *(a1 + 8);
  v33 = *(a1 + 12);
  LODWORD(v19) = v5;
LABEL_80:
  SuplAsn1Logger::TraceError(v19, v32, v33);
  v30 = *(a1 + 8);
  v31 = *(a1 + 12);
  LODWORD(v17) = v5;
LABEL_81:
  SuplAsn1Logger::TraceError(v17, v30, v31);
  v36 = *(a1 + 8);
  v37 = *(a1 + 12);
  LODWORD(v13) = v5;
LABEL_82:
  SuplAsn1Logger::TraceError(v13, v36, v37);
  v34 = *(a1 + 8);
  v35 = *(a1 + 12);
  LODWORD(v11) = v5;
LABEL_83:
  SuplAsn1Logger::TraceError(v11, v34, v35);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  LODWORD(v4) = v5;
LABEL_84:
  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_85:
  v38 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_WcdmaCellInformation(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_16;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 3));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFFFFF, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = asn1PE_FrequencyInfo(a1, a2 + 12);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (a2[1])
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 511, *(a2 + 11));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!a2[2])
  {
    v4 = 0;
    goto LABEL_16;
  }

  v7 = asn1PE_MeasuredResultsList(a1, a2 + 3);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_NMR(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 1, 15, -1431655765 * ((a2[1] - *a2) >> 2));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_16:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_17;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        LODWORD(v11) = *(a1 + 16);
        goto LABEL_15;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 1023, *(v8 + v9));
      if (v11)
      {
        v5 = v11;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        goto LABEL_15;
      }

      v12 = v8 + v9;
      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v12 + 4));
      if (v11)
      {
        v5 = v11;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        goto LABEL_15;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v12 + 8));
      if (v11)
      {
        break;
      }

      ++v10;
      v8 = *a2;
      v9 += 12;
      if (v10 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2))
      {
        goto LABEL_10;
      }
    }

    v5 = v11;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
LABEL_15:
    SuplAsn1Logger::TraceError(v11, v13, v14);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_16;
  }

LABEL_10:
  v5 = 0;
LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_GsmCellInformation(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_16;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 1));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *(a2 + 3));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *(a2 + 4));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = asn1PE_NMR(a1, a2 + 2);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!*(a2 + 1))
  {
    v4 = 0;
    goto LABEL_16;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 255, *(a2 + 40));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

void ASN1T_CellInfo::~ASN1T_CellInfo(ASN1T_CellInfo *this)
{
  v9[1] = *MEMORY[0x29EDCA608];
  if (*this == 4)
  {
    v2 = *(this + 16);
    if (v2)
    {
      v9[0] = (v2 + 136);
      std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](v9);
      v3 = *(v2 + 104);
      if (v3)
      {
        *(v2 + 112) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 72);
      if (v4)
      {
        *(v2 + 80) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 48);
      if (v5)
      {
        *(v2 + 56) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 24);
      if (v6)
      {
        *(v2 + 32) = v6;
        operator delete(v6);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40AD30468BLL);
      *(this + 16) = 0;
    }
  }

  v9[0] = (this + 80);
  std::vector<ASN1T_MeasuredResults>::__destroy_vector::operator()[abi:ne200100](v9);
  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t asn1PE_CellInfo(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  Asn1Coder::AddBitToBuffer(a1, v4 == 4);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_3;
  }

  if (v4 != 4)
  {
    v8 = Asn1Coder::EncodeInteger(a1, 0, 2, *a2 - 1);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v11 = *a2;
    if (v11 <= 1)
    {
      if (!*a2)
      {
        v5 = 1;
        *(a1 + 16) = 1;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        v15 = 1;
        goto LABEL_26;
      }

      if (v11 != 1)
      {
LABEL_25:
        v5 = 4;
        *(a1 + 16) = 4;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        v15 = 4;
        goto LABEL_26;
      }

      v12 = asn1PE_GsmCellInformation(a1, a2 + 1);
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 != 3)
        {
          if (v11 == 4)
          {
            v5 = 0;
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        v5 = 1;
        *(a1 + 16) = 1;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        v15 = 1;
LABEL_26:
        SuplAsn1Logger::TraceError(v15, v13, v14);
LABEL_27:
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v8) = v5;
        goto LABEL_3;
      }

      v12 = asn1PE_WcdmaCellInformation(a1, a2 + 56);
    }

    v5 = v12;
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if (*(a2 + 16))
  {
    v8 = asn1PE_CellInfo_VER2(a1, a2);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v5 = 1;
    LODWORD(v8) = 1;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_LocationId(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_8;
  }

  v7 = asn1PE_CellInfo(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = asn1PE_Status(a1, a2 + 136);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

LABEL_8:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ASN1T_LocationId::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v67 = *MEMORY[0x29EDCA608];
  if (*a1 == 4)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      *__str = v4 + 17;
      std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](__str);
      v5 = v4[13];
      if (v5)
      {
        v4[14] = v5;
        operator delete(v5);
      }

      v6 = v4[9];
      if (v6)
      {
        v4[10] = v6;
        operator delete(v6);
      }

      v7 = v4[6];
      if (v7)
      {
        v4[7] = v7;
        operator delete(v7);
      }

      v8 = v4[3];
      if (v8)
      {
        v4[4] = v8;
        operator delete(v8);
      }

      MEMORY[0x29C29EB20](v4, 0x1030C40AD30468BLL);
      *(a1 + 128) = 0;
    }
  }

  v9 = *a2;
  *a1 = v9;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        goto LABEL_81;
      }

      goto LABEL_64;
    }

    v26 = *(a2 + 1);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 8) = v26;
    if (a1 != a2)
    {
      v27 = *(a1 + 24);
      v28 = *(a2 + 3);
      v29 = *(a2 + 4);
      v30 = v29 - v28;
      v31 = *(a1 + 40);
      if (v31 - v27 < (v29 - v28))
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
        if (v27)
        {
          *(a1 + 32) = v27;
          operator delete(v27);
          v31 = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
        }

        if (v32 <= 0x1555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2);
          v34 = 2 * v33;
          if (2 * v33 <= v32)
          {
            v34 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
          }

          if (v33 >= 0xAAAAAAAAAAAAAAALL)
          {
            v35 = 0x1555555555555555;
          }

          else
          {
            v35 = v34;
          }

          if (v35 <= 0x1555555555555555)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(a1 + 24, v35);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
      }

      v54 = *(a1 + 32);
      v55 = v54 - v27;
      if (v54 - v27 >= v30)
      {
        if (v29 != v28)
        {
          memmove(*(a1 + 24), *(a2 + 3), v29 - v28);
        }

        v57 = &v27[v30];
      }

      else
      {
        v56 = &v28[v55];
        if (v54 != v27)
        {
          memmove(*(a1 + 24), *(a2 + 3), v55);
          v54 = *(a1 + 32);
        }

        if (v29 != v56)
        {
          memmove(v54, v56, v29 - v56);
        }

        v57 = &v54[v29 - v56];
      }

      *(a1 + 32) = v57;
    }

    *(a1 + 48) = a2[48];
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v10 = operator new(0xA0uLL, MEMORY[0x29EDC9418]);
          if (v10)
          {
            v11 = v10;
            *(v10 + 2) = 0;
            v10[16] = 0;
            *(v10 + 24) = 0u;
            v12 = v10 + 24;
            *(v11 + 18) = 0;
            *(v11 + 19) = 0;
            *(v11 + 17) = 0;
            *(v11 + 40) = 0u;
            *(v11 + 56) = 0u;
            *(v11 + 72) = 0u;
            *(v11 + 82) = 0u;
            *(v11 + 14) = 0;
            *(v11 + 15) = 0;
            *(v11 + 13) = 0;
            *(v11 + 32) = 0;
            *v11 = -1;
            *(a1 + 128) = v11;
            v13 = *(a2 + 16);
            if (v13)
            {
              *v11 = *v13;
              *(v11 + 2) = *(v13 + 8);
              v11[16] = *(v13 + 16);
              if (v11 != v13)
              {
                std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v12, *(v13 + 24), *(v13 + 32), *(v13 + 32) - *(v13 + 24));
                std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v11 + 6, *(v13 + 48), *(v13 + 56), *(v13 + 56) - *(v13 + 48));
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v11 + 9, *(v13 + 72), *(v13 + 80), *(v13 + 80) - *(v13 + 72));
                v13 = *(a2 + 16);
                v11 = *(a1 + 128);
              }

              *(v11 + 48) = *(v13 + 96);
              if (v11 != v13)
              {
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v11 + 13, *(v13 + 104), *(v13 + 112), *(v13 + 112) - *(v13 + 104));
                v13 = *(a2 + 16);
                v11 = *(a1 + 128);
              }

              v11[128] = *(v13 + 128);
              v14 = *(a2 + 16);
              v15 = *(a1 + 128);
              *(v15 + 130) = *(v14 + 130);
              if (v15 != v14)
              {
                v17 = (v15 + 136);
                v16 = *(v15 + 136);
                v19 = *(v14 + 136);
                v18 = *(v14 + 144);
                v20 = v18 - v19;
                v21 = *(v15 + 152);
                if (v21 - v16 < (v18 - v19))
                {
                  v22 = 0xEEEEEEEEEEEEEEEFLL * (v20 >> 3);
                  if (v16)
                  {
                    std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v15 + 136, *(v15 + 136));
                    operator delete(*v17);
                    v21 = 0;
                    *v17 = 0;
                    *(v15 + 144) = 0;
                    *(v15 + 152) = 0;
                  }

                  if (v22 <= 0x222222222222222)
                  {
                    v23 = 0xEEEEEEEEEEEEEEEFLL * (v21 >> 3);
                    v24 = 2 * v23;
                    if (2 * v23 <= v22)
                    {
                      v24 = v22;
                    }

                    if (v23 >= 0x111111111111111)
                    {
                      v25 = 0x222222222222222;
                    }

                    else
                    {
                      v25 = v24;
                    }

                    if (v25 <= 0x222222222222222)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(v15 + 136, v25);
                    }

                    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                  }

                  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                }

                v64 = *(v15 + 144) - v16;
                if (v64 >= v20)
                {
                  v65 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(v19, v18, v16);
                  std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v15 + 136, v65);
                }

                else
                {
                  std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(v19, v19 + v64, v16);
                  *(v15 + 144) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*>(v15 + 136, v19 + v64, v18, *(v15 + 144));
                }
              }
            }
          }

          else
          {
            *(a1 + 128) = 0;
          }
        }

        goto LABEL_81;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        goto LABEL_81;
      }

LABEL_64:
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 69, "operator=", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v53, 0, 1);
      goto LABEL_81;
    }

    v36 = *(a2 + 28);
    v37 = a2[58];
    *(a1 + 58) = v37;
    *(a1 + 56) = v36;
    *(a1 + 60) = *(a2 + 15);
    *(a1 + 64) = *(a2 + 16);
    v38 = *(a2 + 68);
    *(a1 + 76) = *(a2 + 38);
    *(a1 + 68) = v38;
    *(a1 + 78) = *(a2 + 39);
    if (a1 != a2 && v37 == 1)
    {
      v39 = (a1 + 80);
      v40 = *(a1 + 80);
      v42 = *(a2 + 10);
      v41 = *(a2 + 11);
      v43 = v41 - v42;
      v44 = *(a1 + 96);
      if (v44 - v40 < (v41 - v42))
      {
        v45 = 0xCCCCCCCCCCCCCCCDLL * (v43 >> 3);
        if (v40)
        {
          v46 = *(a1 + 88);
          v47 = *(a1 + 80);
          if (v46 != v40)
          {
            do
            {
              v48 = v46 - 40;
              *__str = v46 - 24;
              std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
              v46 = v48;
            }

            while (v48 != v40);
            v47 = *v39;
          }

          *(a1 + 88) = v40;
          operator delete(v47);
          v44 = 0;
          *v39 = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        if (v45 <= 0x666666666666666)
        {
          v49 = 0xCCCCCCCCCCCCCCCDLL * (v44 >> 3);
          v50 = 2 * v49;
          if (2 * v49 <= v45)
          {
            v50 = v45;
          }

          if (v49 >= 0x333333333333333)
          {
            v51 = 0x666666666666666;
          }

          else
          {
            v51 = v50;
          }

          if (v51 <= 0x666666666666666)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(a1 + 80, v51);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
      }

      v58 = *(a1 + 88) - v40;
      if (v58 >= v43)
      {
        v61 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(v42, v41, *(a1 + 80));
        v62 = *(a1 + 88);
        if (v62 != v61)
        {
          do
          {
            v63 = v62 - 5;
            *__str = v62 - 3;
            std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
            v62 = v63;
          }

          while (v63 != v61);
        }

        *(a1 + 88) = v61;
      }

      else
      {
        std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(v42, (v42 + v58), *(a1 + 80));
        *(a1 + 88) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*>(a1 + 80, (v42 + v58), v41, *(a1 + 88));
      }
    }
  }

LABEL_81:
  v59 = *MEMORY[0x29EDCA608];
  return a1;
}